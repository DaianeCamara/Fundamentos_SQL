-- MANIPULA��O DE STRING

-- CONCATENAR
SELECT FirstName, LastName, CONCAT(FirstName, ' ' ,LastName) AS NOME_E_SOBRENOME
FROM Person.Person

-- MAI�SCULAS E MIN�SCULAS
SELECT FirstName, UPPER(FirstName) AS MAI�SCULA
FROM Person.Person

SELECT FirstName, LOWER(FirstName) AS MIN�SCULA
FROM Person.Person

-- TAMANHO
SELECT FirstName, LEN(FirstName) AS TAMANHO
FROM Person.Person

-- SUBSTRING
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS REMOVENDO -- Come�ando do �ndice 1 e pegando 3 letras
FROM Person.Person

-- REPLACE
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#') AS SUBSTITUIR
FROM Production.Product
-----------------------------------------------//------------------------------------------------------------------
-- OPERA��ES MATEM�TICAS

-- SOMA
SELECT UnitPrice, (UnitPrice + UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail

-- SUBTRA��O
SELECT UnitPrice, (UnitPrice - UnitPrice) AS SUBTRA��O
FROM Sales.SalesOrderDetail

-- MULTIPLICA��O
SELECT UnitPrice, (UnitPrice * UnitPrice) AS MULTIPLICA��O
FROM Sales.SalesOrderDetail

-- DIVIS�O
SELECT UnitPrice, (UnitPrice / UnitPrice) AS DIVIS�O
FROM Sales.SalesOrderDetail

-- M�DIA
SELECT AVG(UnitPrice) AS M�DIA
FROM Sales.SalesOrderDetail

-- SOMA
SELECT SUM(UnitPrice) AS SOMA
FROM Sales.SalesOrderDetail

-- MAIOR VALOR
SELECT MAX(UnitPrice) AS MAIOR
FROM Sales.SalesOrderDetail

-- MENOR VALOR
SELECT MIN(UnitPrice) AS MENOR
FROM Sales.SalesOrderDetail

-- PRECIS�O DECIMAL
SELECT LineTotal, ROUND(LineTotal, 2) AS ARREDONDAMENTO
FROM Sales.SalesOrderDetail

-- RAIZ QUADRADA
SELECT LineTotal, SQRT(LineTotal) AS RAIZ_QUADRADA
FROM Sales.SalesOrderDetail