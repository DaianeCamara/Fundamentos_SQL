-- EXERCÍCIO 10:
-- Quantas pessoas temos com o sobrenome que inicia com a letra P?

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

-- EXERCÍCIO 11:
-- Quantos produtos vermelhos têm preço entre 500 e 1000 dólares?

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice BETWEEN 500 AND 1000


-- EXERCÍCIO 12:
-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%'