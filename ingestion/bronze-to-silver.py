# Databricks notebook source


# COMMAND ----------

from datetime import datetime
import pyspark.sql.functions as F

# COMMAND ----------

dbutils.widgets.text('source','')
dbutils.widgets.text('target','')
dbutils.widgets.text('target_path','') 

# COMMAND ----------

source = dbutils.widgets.get('source') 
target = dbutils.widgets.get('target')
target_path = dbutils.widgets.get('target_path')

print(source, target)

# COMMAND ----------

src_df = spark.sql(f"select * from {source}")\
.withColumn('loadTimeStamp',F.lit(datetime.now()))\
.withColumn('updateTimeStamp',F.lit(None))

display(src_df)

# COMMAND ----------

def cast_df(df,tbl):
    columns = spark.sql(f"select * from {target}").dtypes
    for column, type in columns:
        df = df.withColumn(column,df[column].cast(type))
    return df

# schema = spark.sql(f"select * from {target}").schema
tgt_df = cast_df(src_df,target)
display(tgt_df)

# COMMAND ----------

tgt_df.write.format('delta').mode('overwrite').save(target_path)

# COMMAND ----------



# COMMAND ----------



# COMMAND ----------



# COMMAND ----------



# COMMAND ----------


