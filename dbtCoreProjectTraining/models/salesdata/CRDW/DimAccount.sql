WITH Final AS (
    SELECT 
       [AccountKey]
      ,[ParentAccountKey]
      ,[AccountLabel]
      ,[AccountName]
      ,[AccountDescription]
      ,[AccountType]
      ,[Operator]
      ,[CustomMembers]
      ,[ValueType]
      ,[CustomMemberOptions]
    FROM {{ source('ContosoRetailDW','DimAccount') }}
)
SELECT *
FROM Final