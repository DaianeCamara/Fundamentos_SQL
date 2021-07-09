-- EXERCICIO 1:
-- A Equipe de Marketing precisa fazer uma pesquisa sobre nomes mais comuns de seus clientes e precisa
-- do nome e sobrenome de todos os clientes que estão cadastrados no sistema.

SELECT FirstName, LastName
FROM Person.Person;

-- EXERCICIO 2:
-- Quantos sobrenomes únicos temos em nossa tabela Person.Person?

SELECT DISTINCT LastName
FROM Person.Person;

-- EXERCICIO 3:
/*
	A Equipe de Produção de produtos precisa do nome de todas as peças que pesam mais de 500Kg, 
	mas não mais que 700kg, para inspeção.
*/

SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight < 700


-- EXERCICIO 4:
/*
	FOi pedido pelo marketing uma relação de todos os empregados que são casados e são assalariados.
*/

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' AND SalariedFlag = 1


-- EXERCICIO 5:
/*
	Um usuário chamado Peter Krebs está devendo um pagamento, consiga o email dele 
	para que possamos enviar uma cobrança!
*/

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs';

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26;