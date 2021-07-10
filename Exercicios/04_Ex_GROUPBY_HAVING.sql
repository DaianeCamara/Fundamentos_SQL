-- EXERCÍCIO 13:
-- Saber quantas pessoas tem o mesmo MiddleName agrupadas por o Middlename.

SELECT MiddleName, COUNT(MiddleName) AS "TOTAL"
FROM Person.Person
GROUP BY MiddleName


-- EXERCÍCIO 14:
-- Saber em média qual a quantidade que cada produto é vendido na loja.

SELECT ProductID, AVG(OrderQty) AS MEDIA
FROM Sales.SalesOrderDetail
GROUP BY ProductID


-- EXERCÍCIO 15:
/*
	Saber qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior
	valor para o menor.
*/

SELECT TOP 10 ProductID, SUM(LineTotal) AS "VENDA TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [VENDA TOTAL] DESC


-- EXERCÍCIO 16:
/*
	Saber quantos produtos e qual a quantidade média de produtos temos cadastrados nas nossas
	ordens de serviço, agrupados por ProductId.
*/

SELECT ProductID, 
COUNT(ProductID) AS CONTAGEM, AVG(OrderQty) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID

-- EXERCÍCIO 17:
/*
	Identificar as províncias com o maior número de cadastros no nosso sistema, então é preciso encontrar
	quais províncias estão registradas no banco de dados mais que 1000 vezes.
*/

SELECT StateProvinceID, COUNT(StateProvinceID) AS TOTAL
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000


-- EXERCÍCIO 18:
-- Os gerentes querem saber quais produtos não estão trazendo em média no mínimo 1 milhão em total de vendas

SELECT ProductID, AVG(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000