WITH final AS (
    SELECT [OrderID]
      ,[CustomerID]
      ,[SalespersonPersonID]
      ,[PickedByPersonID]
      ,[ContactPersonID]
      ,[BackorderOrderID]
      ,[OrderDate]
      ,[ExpectedDeliveryDate]
      ,[CustomerPurchaseOrderNumber]
FROM {{ source('WideWorldImporters','Orders') }}

)
SELECT *
FROM final