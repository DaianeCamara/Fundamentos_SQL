-- DROP TABLE
/*
	DROP TABLE nomeTabela
*/

CREATE TABLE TabelaASerExcluida (
	Id INT PRIMARY KEY,
	Descricao VARCHAR(50)
)

SELECT *
FROM TabelaASerExcluida

-- EXCLUI TODA A TABELA
DROP TABLE TabelaASerExcluida

CREATE TABLE TabelaComDadosASeremExcluidos (
	Id INT PRIMARY KEY,
	Descricao VARCHAR(50)
)

SELECT *
FROM TabelaComDadosASeremExcluidos

INSERT INTO TabelaComDadosASeremExcluidos
VALUES
(1, 'Linha 1'),
(2, 'Linha 2');

-- EXCLUI OS REGISTROS DE UMA TABELA
TRUNCATE TABLE TabelaComDadosASeremExcluidos

-- CHECK CONSTRAINT: Criar restrições de valores que podem ser inseridos em uma coluna na criação de uma tabela.

CREATE TABLE CarteiraMotorista (
	Id INT NOT NULL,
	Nome VARCHAR(255) NOT NULL,
	Idade INT CHECK (Idade >= 18)
);

SELECT *
FROM CarteiraMotorista

INSERT INTO CarteiraMotorista
VALUES
(1, 'José da Silva', 65)

-- NOT NULL CONSTRAINT
/*
	CREATE TABLE NomeTabela(
		coluna1 tipoDeDado NOT NULL,
		coluna2 tipoDeDado NOT NULL
	)
*/

-- UNIQUE CONSTRAINT

CREATE TABLE CarteiraDeMotorista(
		Id INT PRIMARY KEY,
		NomeCondutor VARCHAR(50) NOT NULL UNIQUE,
		Idade INT CHECK (Idade >= 18),
		CodigoCNH INT NOT NULL UNIQUE
)

INSERT INTO CarteiraDeMotorista (Id, NomeCondutor, Idade, CodigoCNH)
VALUES
(1, 'João Silva', 45, 987654321),
(2, 'Maria da Silva', 42, 123456789);

SELECT *
FROM CarteiraDeMotorista

-- VIEWS:

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT *
FROM [Pessoas Simplificado]