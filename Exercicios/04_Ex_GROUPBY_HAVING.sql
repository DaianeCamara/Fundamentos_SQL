-- EXERC�CIO 13:
-- Saber quantas pessoas tem o mesmo MiddleName agrupadas por o Middlename.

SELECT MiddleName, COUNT(MiddleName) AS "TOTAL"
FROM Person.Person
GROUP BY MiddleName


-- EXERC�CIO 14:
-- Saber em m�dia qual a quantidade que cada produto � vendido na loja.

SELECT ProductID, AVG(OrderQty) AS MEDIA
FROM Sales.SalesOrderDetail
GROUP BY ProductID


-- EXERC�CIO 15:
/*
	Saber qual foram as 10 vendas que no total tiveram os maiores valores de venda por produto do maior
	valor para o menor.
*/

SELECT TOP 10 ProductID, SUM(LineTotal) AS "VENDA TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY [VENDA TOTAL] DESC


-- EXERC�CIO 16:
/*
	Saber quantos produtos e qual a quantidade m�dia de produtos temos cadastrados nas nossas
	ordens de servi�o, agrupados por ProductId.
*/

SELECT ProductID, 
COUNT(ProductID) AS CONTAGEM, AVG(OrderQty) AS MEDIA
FROM Production.WorkOrder
GROUP BY ProductID

-- EXERC�CIO 17:
/*
	Identificar as prov�ncias com o maior n�mero de cadastros no nosso sistema, ent�o � preciso encontrar
	quais prov�ncias est�o registradas no banco de dados mais que 1000 vezes.
*/

SELECT StateProvinceID, COUNT(StateProvinceID) AS TOTAL
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000


-- EXERC�CIO 18:
-- Os gerentes querem saber quais produtos n�o est�o trazendo em m�dia no m�nimo 1 milh�o em total de vendas

SELECT ProductID, AVG(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000