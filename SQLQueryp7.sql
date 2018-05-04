CREATE PROCEDURE sp_addWarehouse 
				@spec varchar(50),
				@name varchar(50),
				@location varchar(50),
				@wh_geo varchar(50)
AS
INSERT INTO WAREHOUSES(warehouse_id, warehouse_spec, warehouse_name,location_id,wh_geo_location) 
VALUES(NEWID(), @spec, @name, @location,@wh_geo)

CREATE PROCEDURE sp_dropWarehouse
				@name as varchar(30)
AS
DELETE FROM WAREHOUSES WHERE warehouse_name = @name

CREATE PROCEDURE sp_dropProductInformation
				@name as varchar(50)
AS
DELETE FROM PRODUCT_INFORMATION WHERE product_name = @name

CREATE PROCEDURE sp_dropProductDescription
				@name as varchar(50)
AS
DELETE FROM PRODUCT_DESCRIPTIONS WHERE translated_name = @name

CREATE PROCEDURE sp_dropDepartament
				@departament as varchar(50)
AS
DELETE FROM DEPARTAMENTS WHERE department_name = @departament

CREATE FUNCTION dbo.stripWarehouse (@input VARCHAR(250))
RETURNS VARCHAR(250)
AS BEGIN
    DECLARE @name VARCHAR(250)

    SET @name = @Input

    SET @name = REPLACE(@name, 'a', '')
    SET @name = REPLACE(@name, 'z', '')

    RETURN @name
END

CREATE TRIGGER tr_Warehouse
      ON WAREHOUSES
      AFTER UPDATE
      AS
        BEGIN
         INSERT INTO WAREHOUSES
         (warehouse_id, warehouse_spec,warehouse_name, wh_geo_location)
         SELECT newid(),warehouse_spec, warehouse_name, wh_geo_location
         FROM INSERTED
        END