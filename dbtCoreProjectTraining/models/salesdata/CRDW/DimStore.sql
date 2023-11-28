WITH Final AS (  
    SELECT [StoreKey]
        ,[GeographyKey]
        ,[StoreManager]
        ,[StoreType]
        ,[StoreName]
        ,[StoreDescription]
        ,[Status]
        ,[OpenDate]
        ,[CloseDate]
        ,[EntityKey]
        ,[ZipCode]
        ,[ZipCodeExtension]
        ,[StorePhone]
        ,[StoreFax]
        ,[AddressLine1]
        ,[AddressLine2]
        ,[CloseReason]
        ,[EmployeeCount]
        ,[SellingAreaSize]
    FROM {{ source('ContosoRetailDW', 'DimStore')}}
)
SELECT *
FROM Final
