WITH Product AS (

SELECT * FROM {{ ref('DimProduct') }}

), 

FactInventory AS (
SELECT 
	*
FROM {{ ref('FactInventory') }}
), 

final as (
	SELECT P.ProductName,
		P.ProductLabel,
		FI.OnHandQuantity,
		FI.OnOrderQuantity,
		FI.SafetyStockQuantity,
		FI.UnitCost,
		FI.Aging
FROM FactInventory  AS FI
LEFT JOIN Product AS P ON FI.ProductKey = P.ProductKey 
)

select * from final 
