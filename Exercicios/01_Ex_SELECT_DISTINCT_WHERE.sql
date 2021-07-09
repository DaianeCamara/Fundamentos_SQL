-- EXERCICIO 1:
-- A Equipe de Marketing precisa fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa
-- do nome e sobrenome de todos os clientes que est�o cadastrados no sistema.

SELECT FirstName, LastName
FROM Person.Person;

-- EXERCICIO 2:
-- Quantos sobrenomes �nicos temos em nossa tabela Person.Person?

SELECT DISTINCT LastName
FROM Person.Person;

-- EXERCICIO 3:
/*
	A Equipe de Produ��o de produtos precisa do nome de todas as pe�as que pesam mais de 500Kg, 
	mas n�o mais que 700kg, para inspe��o.
*/

SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700


-- EXERCICIO 4:
/*
	FOi pedido pelo marketing uma rela��o de todos os empregados que s�o casados e s�o assalariados.
*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1


-- EXERCICIO 5:
/*
	Um usu�rio chamado Peter Krebs est� devendo um pagamento, consiga o email dele 
	para que possamos enviar uma cobran�a!
*/

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;