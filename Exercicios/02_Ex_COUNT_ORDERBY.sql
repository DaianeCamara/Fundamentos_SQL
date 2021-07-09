-- Exercício 6:
-- Quantos produtos temos cadastrados em nossa tabela de produtos.

SELECT COUNT(*)
FROM Production.Product;


-- Exercício 7:
-- Quantos tamanhos de produtos temos cadastrados em nossa tabela.

SELECT COUNT(Size)
FROM Production.Product;


-- Exercício 8:
-- Quantos tamanhos diferentes de produtos eu tenho cadastrado em nossa tabela.

SELECT COUNT(DISTINCT Size)
FROM Production.Product;


-- Exercício 9:
/*
	Obter o ProductId dos 10 produtos mais caros cadastrados no sistema, listando do mais caro
	para o mais barato.
*/

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc


-- Exercício 9:
-- Obter o nome e número do produto dos produtos que tem o ProductId entre 1~4

SELECT TOP 4 Name, ProductNumber
FROM Production.Product
ORDER BY ProductID asc