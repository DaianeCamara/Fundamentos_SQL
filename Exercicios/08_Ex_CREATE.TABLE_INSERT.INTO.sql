-- EXERCÍCIO 28:
/*
	1. Criar uma tabela nova.
	2. Inserir uma linha de dados nessa tabela.
	3. Inserir 3 linhas de dados de uma vez.
	4. Criar uma segunda tabela.
	5. Inserir uma linha nessa nova tabela.
	6. Copiar os dados da segunda tabela para a primeira.
*/

CREATE TABLE PrimeiraTabela (
	IdPrimeiraTabela INT PRIMARY KEY,
	NomePrimeiraTabela VARCHAR(50) NOT NULL,
	DataCriacao DATETIME DEFAULT GETDATE()
)

SELECT *
FROM PrimeiraTabela

INSERT INTO PrimeiraTabela(IdPrimeiraTabela, NomePrimeiraTabela)
VALUES (1, 'José Maria')


INSERT INTO PrimeiraTabela (IdPrimeiraTabela, NomePrimeiraTabela)
VALUES
(2, 'Carlos Alberto'),
(3, 'Maria de Nóbrega'),
(4, 'João da Silva');

CREATE TABLE SegundaTabela(
	IdSegundaTabela INT PRIMARY KEY,
	NomeSegundaTabela VARCHAR(50) NOT NULL
)

SELECT *
FROM SegundaTabela

INSERT INTO SegundaTabela(IdSegundaTabela, NomeSegundaTabela)
VALUES (5, 'Francisca Gertrudes')

INSERT INTO PrimeiraTabela (IdPrimeiraTabela, NomePrimeiraTabela)
SELECT IdSegundaTabela, NomeSegundaTabela
FROM SegundaTabela