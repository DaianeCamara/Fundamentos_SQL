-- COUNT: Retorna o n�mero de linhas de acordo com a condi��o dada
/*
	SELECT COUNT(*)
	FROM tabela
	SELECT COUNT(DISTINCT coluna1) // Conta todos os valores distintos e diferentes de nulo
	FROM tabela
*/

SELECT *
FROM Person.Person;

SELECT COUNT(*)
FROM Person.Person;

SELECT COUNT(Title)
FROM Person.Person;

SELECT COUNT(DISTINCT Title)
FROM Person.Person;


-- TOP: Limita a quantidade retornada de uma consulta.

SELECT TOP 10 *
FROM Production.Product;


-- ORDER BY: Ordena os resultados em ordem crescente ou decrescente.
-- Default: asc

-- Ordenar por ordem crescente.
SELECT *
FROM Person.Person
ORDER BY FirstName asc

-- Ordenar por ordem decrescente.
SELECT *
FROM Person.Person
ORDER BY LastName desc

-- Ordenar uma coluna por ordem crescente e outra por ordem decrescente.
SELECT *
FROM Person.Person
ORDER BY FirstName asc, LastName desc

SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName asc, LastName desc

SELECT FirstName, LastName, MiddleName
FROM Person.Person
ORDER BY MiddleName asc

-- Ordenar por uma coluna que n�o aparece na consulta (n�o recomend�vel).
SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName asc