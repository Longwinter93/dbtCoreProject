WITH final AS (

SELECT [InvoiceID]
      ,[CustomerID]
      ,[BillToCustomerID]
      ,[OrderID]
      ,[DeliveryMethodID]
      ,[ContactPersonID]
      ,[AccountsPersonID]
      ,[SalespersonPersonID]
      ,[PackedByPersonID]
      ,[InvoiceDate]
      ,[CustomerPurchaseOrderNumber]
      ,[IsCreditNote]
      ,[CreditNoteReason]
      ,[DeliveryInstructions]
      ,[TotalDryItems]
      ,[TotalChillerItems]
      ,[DeliveryRun]
      ,[RunPosition]
      ,[ReturnedDeliveryData]
FROM {{ source('WideWorldImporters','Invoices') }}
)
SELECT *
FROM final
