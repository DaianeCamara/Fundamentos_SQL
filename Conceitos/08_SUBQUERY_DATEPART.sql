/*
Apartir daqui, outro banco de dados foi utilizado para realizar as querys, 
o arquivo para restauração do banco de dados se encontra neste repositório
com o nome de NORTHWIND.bak
*/

-- SUBQUERY ou SUBSELECT

-- Relatório de todos os produtos cadastrados que têm preço de venda acima da média.
SELECT *
FROM Production.Product
WHERE ListPrice > (
	SELECT AVG(ListPrice)
	FROM Production.Product
)

-- Nome dos funcionários que têm o cargo de 'Design Engineer'
SELECT FirstName
FROM Person.Person
WHERE BusinessEntityID IN (
	SELECT BusinessEntityID
	FROM HumanResources.Employee
	WHERE JobTitle = 'Design Engineer'
)

SELECT PP.FirstName
FROM Person.Person PP
INNER JOIN HumanResources.Employee HRE ON PP.BusinessEntityID = HRE.BusinessEntityID
WHERE HRE.JobTitle = 'Design Engineer'


-- DATEPART

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader

-- Média de vencimentos por mês
SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mes

-- Média de vencimentos por ano
SELECT AVG(TotalDue) AS Media, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano

-- Média de vencimentos por dia
SELECT AVG(TotalDue) AS Media, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia