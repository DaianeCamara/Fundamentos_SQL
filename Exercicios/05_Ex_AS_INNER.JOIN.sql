-- EXERCÍCIO 19:
-- Renomear o FirstName e LastName da tabela Person.Person

SELECT TOP 10 FirstName AS PrimeiroNome, LastName AS Sobrenome
FROM Person.Person


-- EXERCÍCIO 20:
-- Renomear ProductNumber da tabela Production.Product

SELECT TOP 10 ProductNumber AS CodigoProduto
FROM Production.Product


-- EXERCÍCIO 21:
-- Renomear UnitPrice da tabela Sales.SalesOrderDetail

SELECT TOP 10 UnitPrice AS PrecoUnitario
FROM Sales.SalesOrderDetail

-- EXERCÍCIO 22:
/*
	Trazer as colunas BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber das colunas
	PhoneNumberType e PersonPhone
*/

SELECT Phone.BusinessEntityID, Type.Name, Type.PhoneNumberTypeID, Phone.PhoneNumber
FROM Person.PhoneNumberType Type
INNER JOIN Person.PersonPhone Phone 
	ON Type.PhoneNumberTypeID = Phone.PhoneNumberTypeID


-- EXERCÍCIO 23:
/*
	Trazer as colunas AddressId, City, StateProvinceId, Name
	StateProvince e Address
*/

SELECT PA.AddressID, PA.City, PSP.StateProvinceID, PSP.Name
FROM Person.StateProvince PSP
INNER JOIN Person.Address PA ON PSP.StateProvinceID = PA.StateProvinceID