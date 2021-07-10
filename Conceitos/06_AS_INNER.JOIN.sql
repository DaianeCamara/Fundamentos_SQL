-- AS: Nomear uma coluna ou uma consulta.

SELECT TOP 10 ListPrice AS PREÇO
FROM Production.Product

SELECT TOP 10 ListPrice AS "PREÇO DO PRODUTO"
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "MÉDIA DE PREÇO"
FROM Production.Product

-- INNER JOIN: Une informações de diferentes tabelas

-- Trazer as seguintes colunas: BusinessEntityId, FirstName, LastName, EmailAddress
SELECT Person.BusinessEntityID, Person.FirstName, Person.LastName, Email.EmailAddress
FROM Person.Person Person
INNER JOIN Person.EmailAddress Email
	ON Email.BusinessEntityID = Person.BusinessEntityID

-- Nome dos produtos e as informações de suas subcategorias
SELECT Product.Name, SubCategory.Name, Product.ListPrice
FROM Production.Product Product
INNER JOIN Production.ProductSubcategory SubCategory 
	ON Product.ProductSubcategoryID = SubCategory.ProductSubcategoryID

-- Juntar todas as colunas
SELECT *
FROM Person.BusinessEntityAddress BEA
INNER JOIN Person.Address PA 
	ON BEA.AddressID = PA.AddressID
