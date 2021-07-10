-- AS: Nomear uma coluna ou uma consulta.

SELECT TOP 10 ListPrice AS PRE�O
FROM Production.Product

SELECT TOP 10 ListPrice AS "PRE�O DO PRODUTO"
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "M�DIA DE PRE�O"
FROM Production.Product

-- INNER JOIN: Une informa��es de diferentes tabelas

-- Trazer as seguintes colunas: BusinessEntityId, FirstName, LastName, EmailAddress
SELECT Person.BusinessEntityID, Person.FirstName, Person.LastName, Email.EmailAddress
FROM Person.Person Person
INNER JOIN Person.EmailAddress Email
	ON Email.BusinessEntityID = Person.BusinessEntityID

-- Nome dos produtos e as informa��es de suas subcategorias
SELECT Product.Name, SubCategory.Name, Product.ListPrice
FROM Production.Product Product
INNER JOIN Production.ProductSubcategory SubCategory 
	ON Product.ProductSubcategoryID = SubCategory.ProductSubcategoryID

-- Juntar todas as colunas
SELECT *
FROM Person.BusinessEntityAddress BEA
INNER JOIN Person.Address PA 
	ON BEA.AddressID = PA.AddressID
