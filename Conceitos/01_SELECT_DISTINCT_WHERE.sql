-- SELECT: Selciona uma ou mais colunas desejadas da tabela:
SELECT *
FROM Person.Person;

SELECT Title
FROM Person.Person;

SELECT *
FROM Person.EmailAddress;

-- DISTINCT: Usado quando se deseja omitir dados duplicados.

SELECT FirstName
FROM Person.Person; -- 19.972 registros

SELECT DISTINCT FirstName
FROM Person.Person; -- 1.018 registros

-- WHERE: Condição para busca
/*
	SELECT coluna1, coluna2, coluna_N
	FROM tabela
	WHERE condicao
*/

/*
	OPERADOR	-	DESCRIÇÃO
	=				IGUAL
	>				MAIOR QUE
	<				MENOR QUE
	>=				MAIOR OU IGUAL QUE
	<=				MENOR OU IGUAL QUE
	<>				DIFERENTE DE
	AND				OPERADOR LÓGICO E
	OR				OPERADOR LÓGICO OU
*/

SELECT *
FROM Person.Person
WHERE LastName = 'Miller' AND FirstName = 'Anna';

SELECT *
From Production.Product
WHERE Color = 'blue' or Color = 'black';

SELECT *
FROM Production.Product
WHERE ListPrice > 1500 AND ListPrice < 5000

SELECT *
FROM Production.Product
WHERE Color <> 'Red'