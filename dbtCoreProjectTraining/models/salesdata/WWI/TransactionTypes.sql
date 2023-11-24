WITH final AS (
SELECT [TransactionTypeID]
      ,[TransactionTypeName]
FROM {{ source('WideWorldImporters','TransactionTypes') }}

)
SELECT *
FROM final