-- FUN합ES DE AGREGA플O (MIN MAX SUM AVG): Agregam ou combinam dados de uma tabela

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

-- FUN플O SUM
SELECT TOP 10 SUM(LineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail

-- FUN플O MIN
SELECT TOP 10 MIN(LineTotal) AS "MENOR"
FROM Sales.SalesOrderDetail

-- FUN플O MAX
SELECT TOP 10 MAX(LineTotal) AS "MAIOR"
FROM Sales.SalesOrderDetail

-- FUN플O AVG
SELECT TOP 10 AVG(LineTotal) AS "M?DIA"
FROM Sales.SalesOrderDetail