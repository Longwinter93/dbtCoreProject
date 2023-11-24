WITH Final AS (
    SELECT
       [InventoryKey]
      ,[DateKey]
      ,[StoreKey]
      ,[ProductKey]
      ,[CurrencyKey]
      ,[OnHandQuantity]
      ,[OnOrderQuantity]
      ,[SafetyStockQuantity]
      ,[UnitCost]
      ,[DaysInStock]
      ,[MinDayInStock]
      ,[MaxDayInStock]
      ,[Aging]
    FROM {{ source('ContosoRetailDW','FactInventory') }}
)
SELECT *
FROM Final