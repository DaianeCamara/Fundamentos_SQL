-- OUTER JOIN ou LEFT JOIN 

-- Descobrir quais pessoas têm um cartão de crédito registrado.
SELECT *
FROM Person.Person PP
INNER JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID  = SPCC.BusinessEntityID
-- INNER JOIN: 19.118

SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID = SPCC.BusinessEntityID
-- LEFT JOIN: 19.972

-- LEFT JOIN - INNER JOIN = 19.972 - 19.118 = 854
SELECT *
FROM Person.Person PP
LEFT JOIN Sales.PersonCreditCard SPCC
ON PP.BusinessEntityID = SPCC.BusinessEntityID
WHERE SPCC.BusinessEntityID IS NULL

-- UNION: Combina dois ou mais resultados de um SELECT em um resultado apenas removendo os dados duplicados

-- Exemplo 1:
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Chain%'
UNION
SELECT [ProductID], [Name], [ProductNumber]
FROM Production.Product
WHERE Name LIKE '%Decal%'

-- Exemplo 2:
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE Title LIKE 'Mr.'
UNION
SELECT FirstName, Title, MiddleName
FROM Person.Person
WHERE MiddleName LIKE 'A'

-- SELF JOIN: É obrigatório o uso de alias.

-- Todos os clientes que moram na mesma região.
SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region

-- Encontrar nome e data de contratação de todos os funcionários que foram contratados no mesmo ano
SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)