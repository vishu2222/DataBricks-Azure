-- Databricks notebook source


-- COMMAND ----------

-- DBTITLE 1,person_address
create database if not exists db_bronze;
-- drop table db_bronze.person_address;
create or replace table db_bronze.person_address (
AddressID string		
,AddressLine1 string		
,AddressLine2 string		
,City string		
,StateProvinceID string		
,PostalCode string		
,SpatialLocation string		
,rowguid string		
,ModifiedDate string	
,batchId string
)
using csv 
options (inferSchema True, header True)
location 'abfss://bronze@vishu.dfs.core.windows.net/Person/Address' 

-- COMMAND ----------

-- DBTITLE 1,person_stateProvince
create or replace table db_bronze.person_stateProvince(
StateProvinceID  string,
StateProvinceCode string,
CountryRegionCode string,
IsOnlyStateProvinceFlag string,
Name string,
TerritoryID string,
rowguid string,
ModifiedDate string,
batchId string
)
using csv
options (inferSchema True, header True)
location 'abfss://bronze@vishu.dfs.core.windows.net/Person/StateProvince'

-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------


