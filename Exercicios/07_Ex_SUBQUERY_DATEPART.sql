-- EXERC�CIO 26:
-- Encontre os endere�os que est�o no Estado de 'Alberta'. Pode trazer todas as informa��es.

SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
	SELECT StateProvinceID
	FROM Person.StateProvince
	WHERE Name = 'Alberta'
)

SELECT *
FROM Person.Address PA
INNER JOIN Person.StateProvince PSP ON PA.StateProvinceID = PSP.StateProvinceID
WHERE PSP.Name = 'Alberta'

-- EXERC�CIO 27:
-- Encontrar qualquer tabela no banco que possua colunas com datas, e extrair m�s e ano dessa coluna.

-- Total de Produtos que come�aram a ser vendidos, agrupados por ano.
SELECT COUNT(Name) AS Total_Produtos, DATEPART(YEAR, SellStartDate) Ano_Inicio
FROM Production.Product
GROUP BY DATEPART(YEAR, SellStartDate)
ORDER BY Ano_Inicio

-- Total de Produtos que come�aram a ser vendidos, agrupados por m�s.
SELECT COUNT(Name) AS Total_Produtos, DATEPART(MONTH, SellStartDate) Mes_Inicio
FROM Production.Product
GROUP BY DATEPART(MONTH, SellStartDate)
ORDER BY Mes_Inicio