/*
Apartir daqui, outro banco de dados foi utilizado para realizar as querys, 
o arquivo para restaura��o do banco de dados se encontra neste reposit�rio
com o nome de NORTHWIND.bak
*/

-- SUBQUERY ou SUBSELECT

-- Relat�rio de todos os produtos cadastrados que t�m pre�o de venda acima da m�dia.
SELECT *
FROM Production.Product
WHERE ListPrice > (
	SELECT AVG(ListPrice)
	FROM Production.Product
)

-- Nome dos funcion�rios que t�m o cargo de 'Design Engineer'
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

SELECT SalesOrderID, DATEPART(MONTH, OrderDate) AS M�s
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader

-- M�dia de vencimentos por m�s
SELECT AVG(TotalDue) AS Media, DATEPART(MONTH, OrderDate) AS Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mes

-- M�dia de vencimentos por ano
SELECT AVG(TotalDue) AS Media, DATEPART(YEAR, OrderDate) AS Ano
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(YEAR, OrderDate)
ORDER BY Ano

-- M�dia de vencimentos por dia
SELECT AVG(TotalDue) AS Media, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(DAY, OrderDate)
ORDER BY Dia