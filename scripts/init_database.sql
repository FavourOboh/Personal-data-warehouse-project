/*
============================================================================
Create Database and Schemas 
============================================================================
Scrip purpose:
   Creating new database "MyFirstWarehouse" after checking its existence .
   If it exits, it is dropped and recreated. 
   the script sets up the schemas gold, silver and bronze.
*/
USE master;
GO

--Drop and recreate the "MyFirstWarehouse" database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = "MyFirstWarehouse")
  BEGIN
    ALTER DATABASE MyFirstWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MyFirstWarehouse
  END;
GO
  
----create the "MyFirstWarehouse" database
CREATE DATABASE MyFirstWarehouse;
GO

USE MyFirstWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
