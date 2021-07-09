-- BETWEEN: Usado para encontrar valor entre um valor mínimo e um valor máximo.

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 AND 1500;

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 AND 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate ASC

-- IN: Verificar se um valor corresponde com qualquer valor passado na lista de valores.
	
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2, 7, 13)

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2, 7, 13)

-- LIKE: Busca uma informação parcial

-- Conhece o início do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE 'ovi%'

-- Conhece o fim do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%to'

-- Conhece o meio do nome
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%essa%'

-- Substituição de apenas 1 caractere
SELECT *
FROM Person.Person
WHERE FirstName LIKE '%ro_'