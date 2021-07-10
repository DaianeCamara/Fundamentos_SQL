-- GROUP BY: Divide o resultado da pesquisa em grupos.

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

--  Quanto de cada produto foi vendido até hoje?
SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos nomes de cada nome temos cadastrados em nosso banco de dados?
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
GROUP BY FirstName

-- Na tabela Production.Product, saber a média de preço para os produtos que são prata.
SELECT Color, AVG(ListPrice) AS MEDIA
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color


-- HAVING: Usado em junção com o group by para filtrar resultados de um agrupamento ('um WHERE para dados agrupados').
-- Diferença entre WHERE e HAVING: O HAVING é aplicado depois que os dados foram agrupados, e o WHERE é aplicado antes dos dados serem agrupados.

-- Dizer quais nomes no sistema tem uma ocorrência maior que 10 vezes.
SELECT FirstName, COUNT(FirstName) AS "OCORRENCIA"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Saber quais produtos que no total de vendas estão entre 162k a 500k.
SELECT ProductID, SUM(LineTotal) AS TOTAL
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quais nomes no sistema tem ocorrência maior que 10 vezes, porém somente onde o título é 'Mr.'.
SELECT FirstName, COUNT(FirstName) AS TOTAL
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10