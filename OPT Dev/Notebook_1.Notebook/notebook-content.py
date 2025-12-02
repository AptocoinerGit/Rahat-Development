# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "1774a4cc-d73c-446f-9884-eb2365fa4e3b",
# META       "default_lakehouse_name": "LK_1",
# META       "default_lakehouse_workspace_id": "2f1c0603-0152-47df-8538-a5b9c2fed106",
# META       "known_lakehouses": [
# META         {
# META           "id": "1774a4cc-d73c-446f-9884-eb2365fa4e3b"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# SETTINGS
spark.conf.set("spark.sql.parquet.vorder.enabled", "true")
spark.conf.set("spark.microsoft.delta.optimizewrite.enabled", "true")
spark.conf.set("spark.sql.parquet.filterPushdown", "true")
spark.conf.set("spark.sql.parquet.mergeSchema", "false")
spark.conf.set("spark.hadoop.mapreduce.fileoutputcommitter.algorithm.version", "2")
spark.conf.set("spark.sql.delta.commitProtocol.enabled", "true")
spark.conf.set("spark.sql.analyzer.maxIterations", 500)

spark.conf.set("spark.sql.adaptive.enabled", "true")
spark.conf.set("spark.sql.adaptive.coalescePartitions.enabled", "true")
spark.conf.set("spark.sql.adaptive.skewJoin.enabled", "true")
spark.conf.set("spark.sql.shuffle.partitions", 258)
spark.conf.set("spark.sql.files.maxPartitionBytes", 536870912)
spark.conf.set("spark.sql.files.openCostInBytes", 134217728)
spark.conf.set("spark.sql.files.ignoreMissingFiles", "true")

# IMPORTS
import os
import json
import glob
from pyspark.sql.types import *
from pyspark.sql.utils import AnalysisException
from pyspark.sql.functions import col, desc, when, lit
from delta.tables import DeltaTable

# PARAMETERS (without Lakehouse variable)
folder_path_spark = 'Files/deltas/'
folder_path_json = '/lakehouse/default/Files/'
folder_path_reset = '/lakehouse/default/Files/reset/'
folder_path = '/lakehouse/default/Files/deltas/'

workspace = '2f1c0603-0152-47df-8538-a5b9c2fed106'  
Remove_delta = True
Drop_table_if_mismatch = True
no_Partition = 258
DecimalFormat = 'float'
DateTimeFormat = 'timestamp'

# --- DROP TABLES ON RESET ---
if os.path.exists(folder_path_reset):
    for filename in os.listdir(folder_path_reset):
        table_name = filename.replace("-", "").replace(".txt", "")
        spark.sql(f"DROP TABLE IF EXISTS {table_name}")  # ✅ No schema
        try:
            os.remove(os.path.join(folder_path_reset, filename))
        except OSError as e:
            print(f"Error: {filename} : {e.strerror}")

# --- DROP TABLES IF SCHEMA MISMATCH (enhanced: name + type) ---
if Drop_table_if_mismatch:
    existing_tables = {t.name for t in spark.catalog.listTables()}  # ✅ No schema
    for filename in os.listdir(folder_path_json):
        if "manifest" in filename or not filename.endswith(".cdm.json"):
            continue
        raw = filename[:-9]
        table_name = raw.replace("-", "")  # TestTable-1 -> TestTable1
        if table_name not in existing_tables:
            continue

        # Load CDM schema
        json_path = os.path.join(folder_path_json, filename)
        with open(json_path) as f:
            cdm_schema = json.load(f)
        cdm_attrs = cdm_schema["definitions"][0]["hasAttributes"]
        cdm_columns = {}
        for attr in cdm_attrs:
            name = attr["name"]
            dtype = attr["dataFormat"]
            # Map CDM to Spark type
            if dtype in ["String", "Guid", "Option", "Code", "Time", "Duration"]:
                spark_type = "string"
            elif dtype == "Date":
                spark_type = "date"
            elif dtype == "DateTime":
                spark_type = DateTimeFormat
            elif dtype == "Decimal":
                spark_type = DecimalFormat
            elif dtype == "Boolean":
                spark_type = "boolean"
            elif dtype in ["Integer", "Int32", "Int64"]:
                spark_type = "int"
            else:
                spark_type = "string"
            # Special overrides
            if name == 'SystemModifiedAt-2000000003':
                spark_type = "timestamp"
            elif name == 'SystemModifiedBy-2000000004':
                spark_type = "string"  # ✅ FIXED: NOT timestamp
            cdm_columns[name] = spark_type

        # Get existing table schema
        try:
            existing_cols = {}
            for col_info in spark.catalog.listColumns(f"{table_name}"):  # ✅ No schema
                existing_cols[col_info.name] = col_info.dataType.typeName() if hasattr(col_info.dataType, 'typeName') else str(col_info.dataType).lower()
        except Exception:
            continue  # skip if table corrupted

        # Compare: names and types
        mismatch = False
        if set(cdm_columns.keys()) != set(existing_cols.keys()):
            mismatch = True
        else:
            for name, expected_type in cdm_columns.items():
                actual_type = existing_cols[name]
                # Normalize for comparison
                if expected_type == "float":
                    expected_spark = "double"
                elif expected_type.startswith("decimal"):
                    expected_spark = "decimal"
                else:
                    expected_spark = expected_type

                if expected_spark == "int" and actual_type in ["bigint", "long"]:
                    continue
                if actual_type != expected_spark and not (expected_spark == "double" and actual_type == "float"):
                    mismatch = True
                    break

        if mismatch:
            print(f"Dropping {table_name} due to schema mismatch.")
            spark.sql(f"DROP TABLE IF EXISTS {table_name}")  # ✅ No schema

# --- PROCESS EACH TABLE ---
for entry in os.scandir(folder_path):
    if not entry.is_dir():
        continue

    folder_glob = os.path.join(folder_path, entry.name, '*')
    folder_files = [p for p in glob.glob(folder_glob) if os.path.isfile(p)]
    if not folder_files:
        print(f"Skipping {entry.name}: no files found.")
        continue

    table_name = entry.name.replace("-", "")  # TestTable-1 -> TestTable1
    json_path = os.path.join(folder_path_json, entry.name + ".cdm.json")
    if not os.path.exists(json_path):
        print(f"Skipping {entry.name}: schema file not found.")
        continue

    # Read CSVs
    try:
        df_new = (
            spark.read
            .option("recursiveFileLookup", "true")
            .option("minPartitions", no_Partition)
            .format("csv")
            .option("header", "true")
            .load(os.path.join(folder_path_spark, entry.name, "*"))
        )
    except AnalysisException as e:
        if "PATH_NOT_FOUND" in str(e):
            print(f"Skipping {entry.name}: source path not found.")
            continue
        else:
            raise

    # Apply schema from CDM
    with open(json_path) as f:
        schema = json.load(f)

    column_names = [attr["name"] for attr in schema["definitions"][0]["hasAttributes"]]
    column_types = [attr['dataFormat'] for attr in schema["definitions"][0]["hasAttributes"]]
    ContainsCompany = '$Company' in column_names

    for col_name, col_type in zip(column_names, column_types):
        if col_type in ["String", "Guid", "Option", "Code"]:
            target_type = "string"
        elif col_type == "Date":
            target_type = "date"
        elif col_type == "Time" or col_type == "Duration":
            target_type = "string"
        elif col_type == "DateTime":
            target_type = DateTimeFormat
        elif col_type == "Decimal":
            target_type = DecimalFormat
        elif col_type == "Boolean":
            target_type = "boolean"
        elif col_type in ["Integer", "Int32", "Int64"]:
            target_type = "int"
        else:
            target_type = "string"

        # Special handling for system columns
        if col_name == 'SystemModifiedAt-2000000003':
            target_type = "timestamp"
        elif col_name == 'SystemModifiedBy-2000000004':
            target_type = "string"  # ✅ CORRECT TYPE

        # Cast column
        if col_name in df_new.columns:
            df_new = df_new.withColumn(col_name, col(col_name).cast(target_type))
        else:
            # Add missing column as null
            df_new = df_new.withColumn(col_name, lit(None).cast(target_type))

    # Ensure only expected columns (avoid extra CSV cols)
    df_new = df_new.select([col(c) for c in column_names])

    # MERGE or CREATE
    target_table = table_name  # ✅ No schema
    table_exists = table_name in [t.name for t in spark.catalog.listTables()]  # ✅ No schema

    if ContainsCompany:
        key_cols = ['$Company', 'systemId-2000000000']
    else:
        key_cols = ['systemId-2000000000']

    if table_exists:
        delta_table = DeltaTable.forName(spark, target_table)
        (
            delta_table.alias("target")
            .merge(
                df_new.alias("source"),
                condition=" AND ".join([f"target.`{k}` = source.`{k}`" for k in key_cols])
            )
            .whenMatchedUpdateAll(condition="source.`SystemCreatedAt-2000000001` IS NOT NULL AND source.`SystemModifiedAt-2000000003` >= target.`SystemModifiedAt-2000000003`")
            .whenMatchedDelete(condition="source.`SystemCreatedAt-2000000001` IS NULL")
            .whenNotMatchedInsertAll(condition="source.`SystemCreatedAt-2000000001` IS NULL")
            .execute()
        )
    else:
        # First-time write
        print(f"Creating new table: {table_name}")
        # Always use overwriteSchema for both new and existing tables
        df_new.write.mode("overwrite").option("overwriteSchema", "true").format("delta").saveAsTable(target_table)

    # Clean up CSV files
    if Remove_delta:
        for file_path in folder_files:
            try:
                os.remove(file_path)
            except OSError as e:
                print(f"Error deleting {file_path}: {e.strerror}")

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
