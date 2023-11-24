WITH Final AS  (   
    SELECT 
       [SalesKey]
      ,[DateKey]
      ,[channelKey]
      ,[StoreKey]
      ,[ProductKey]
      ,[PromotionKey]
      ,[CurrencyKey]
      ,[UnitCost]
      ,[UnitPrice]
      ,[SalesQuantity]
      ,[ReturnQuantity]
      ,[ReturnAmount]
      ,[DiscountQuantity]
      ,[DiscountAmount]
      ,[TotalCost]
      ,[SalesAmount]   
    FROM {{ source('ContosoRetailDW','FactSales') }}
)
SELECT *
FROM Final