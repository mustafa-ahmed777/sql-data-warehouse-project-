/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/
USE master;
Go 
-- drop and ercreate 'DataWarehouse' database 
IF EXISTS(SELECT 1 FROM sys.databases where name = 'DataWarehouse' )
BEGIN 
     ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	 DROP DATABASE DataWarehouse;
END;
Go

--create the 'DataWarehouse' database 
CREATE database DataWarehouse;
Go 

USE DataWarehouse;
GO
-- create schemas
CREATE SCHEMA bronze;
Go 
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
