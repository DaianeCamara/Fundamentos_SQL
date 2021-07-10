-- GROUP BY: Divide o resultado da pesquisa em grupos.

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

--  Quanto de cada produto foi vendido at� hoje?
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de cada nome temos cadastrados em nosso banco de dados?
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY FirstName

-- Na tabela Production.Product, saber a m�dia de pre�o para os produtos que s�o prata.
SELECT Color, AVG(ListPrice) AS MEDIA
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color


-- HAVING: Usado em jun��o com o group by para filtrar resultados de um agrupamento ('um WHERE para dados agrupados').
-- Diferen�a entre WHERE e HAVING: O HAVING � aplicado depois que os dados foram agrupados, e o WHERE � aplicado antes dos dados serem agrupados.

-- Dizer quais nomes no sistema tem uma ocorr�ncia maior que 10 vezes.
SELECT FirstName, COUNT(FirstName) AS "OCORRENCIA"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Saber quais produtos que no total de vendas est�o entre 162k a 500k.
SELECT ProductID, SUM(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quais nomes no sistema tem ocorr�ncia maior que 10 vezes, por�m somente onde o t�tulo � 'Mr.'.
SELECT FirstName, COUNT(FirstName) AS TOTAL
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10