-- EXERC�CIO 10:
-- Quantas pessoas temos com o sobrenome que inicia com a letra P?

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'

-- EXERC�CIO 11:
-- Quantos produtos vermelhos t�m pre�o entre 500 e 1000 d�lares?

SELECT COUNT(*)
FROM Production.Product
WHERE Color = 'red'
AND ListPrice BETWEEN 500 AND 1000


-- EXERC�CIO 12:
-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?

SELECT COUNT(Name)
FROM Production.Product
WHERE Name LIKE '%road%'