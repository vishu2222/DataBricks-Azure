# Databricks notebook source


# COMMAND ----------

query = ''' select  S.Name, S.TerritoryID, A.AddressID, A.AddressLine1, A.AddressLine2, A.city, A.StateProvinceID, A.PostalCode, A.SpatialLocation, A.ModifiedDate as addressModifiedDate,
S.StateProvinceCode, S.CountryRegionCode,  S.IsOnlyStateProvinceFlag, S.ModifiedDate as stateProvinceModifidedDate
from db_Silver.Person_Address A
Inner Join db_silver.person_stateprovince S
on A.StateProvinceID = S.StateProvinceID '''

src_df =  spark.sql(query)
src_df.write.format('delta').mode('overwrite').save('abfss://gold@vishu.dfs.core.windows.net/address/')

# COMMAND ----------



# COMMAND ----------



# COMMAND ----------


