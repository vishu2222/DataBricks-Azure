-- Databricks notebook source


-- COMMAND ----------

Create database if not exists db_gold;
create or replace table db_gold.Address(
AddressID int,
 AddressLine1 string,
 AddressLine2 string,
 city string,
 StateProvinceID int,
 PostalCode string,
 SpatialLocation string,
 addressModifiedDate timestamp,
 StateProvinceCode string,
 CountryRegionCode string,
 IsOnlyStateProvinceFlag boolean,
 Name string,
 TerritoryID int,
 stateProvinceModifidedDate timestamp
)
using delta location 'abfss://gold@vishu.dfs.core.windows.net/address/'

-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------


