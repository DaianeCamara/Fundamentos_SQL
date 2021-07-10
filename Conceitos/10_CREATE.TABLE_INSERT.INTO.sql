-- CREATE TABLE: Criação de Tabelas

CREATE DATABASE YouTube;

USE YouTube

CREATE TABLE Canal (
	IdCanal INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	ContagemInscritos INT DEFAULT 0,
	DataCriacao DATETIME NOT NULL
);

SELECT *
FROM Canal

CREATE TABLE Video (
	IdVideo INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Visualizacoes INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0,
	Duracao INT NOT NULL,
	IdCanal INT FOREIGN KEY REFERENCES Canal(IdCanal)
);

SELECT *
FROM Video

-- INSERT INTO: Inserir dados em uma tabela ou criar uma tabela a partir de uma tabela existente

CREATE TABLE Aula (
	Id INT PRIMARY KEY,
	Nome VARCHAR(200)
)

SELECT *
FROM Aula

INSERT INTO Aula (Id, Nome)
VALUES (1, 'Aula 1');

INSERT INTO Aula (Id, Nome)
VALUES
(2, 'Aula 2'),
(3, 'Aula 3'),
(4, 'Aula 4'),
(5, 'Aula 5');

-- CRIAR UMA TABELA A PARTIR DE UMA TABELA EXISTENTE
SELECT * INTO tabelaNova FROM Aula

SELECT *
FROM tabelaNova