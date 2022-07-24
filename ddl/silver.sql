-- Databricks notebook source


-- COMMAND ----------

create database db_silver;
-- drop table db_bronze.person_address;
create table db_silver.person_address (
AddressID int		
,AddressLine1 string		
,AddressLine2 string		
,City string		
,StateProvinceID int		
,PostalCode string		
,SpatialLocation string		
,rowguid string		
,ModifiedDate timestamp		
,loadTimeStamp timestamp
,updateTimeStamp timestamp
,batchId int
)
using delta 
location 'abfss://silver@vishu.dfs.core.windows.net/Person/Address' 

-- COMMAND ----------

create table db_silver.person_stateprovince(
	StateProvinceID	int	,
	StateProvinceCode	string	,
	CountryRegionCode	string	,
	IsOnlyStateProvinceFlag	boolean,	
	Name	string	,
	TerritoryID	int	,
	rowguid	string	,
	ModifiedDate	timestamp
    ,loadTimeStamp timestamp
,updateTimeStamp timestamp
,batchId int
)
using delta 
location 'abfss://silver@vishu.dfs.core.windows.net/Person/StateProvince' 


-- COMMAND ----------



-- COMMAND ----------



-- COMMAND ----------


