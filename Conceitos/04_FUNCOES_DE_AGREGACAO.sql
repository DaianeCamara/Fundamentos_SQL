-- FUNÇÕES DE AGREGAÇÃO (MIN MAX SUM AVG): Agregam ou combinam dados de uma tabela

SELECT TOP 10 *
FROM Sales.SalesOrderDetail

-- FUNÇÃO SUM
SELECT TOP 10 SUM(LineTotal) AS "SOMA"
FROM Sales.SalesOrderDetail

-- FUNÇÃO MIN
SELECT TOP 10 MIN(LineTotal) AS "MENOR"
FROM Sales.SalesOrderDetail

-- FUNÇÃO MAX
SELECT TOP 10 MAX(LineTotal) AS "MAIOR"
FROM Sales.SalesOrderDetail

-- FUNÇÃO AVG
SELECT TOP 10 AVG(LineTotal) AS "MÉDIA"
FROM Sales.SalesOrderDetail