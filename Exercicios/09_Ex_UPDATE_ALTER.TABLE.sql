-- EXERCICIO 29:
-- Altere o nome de duas linhas diferentes.

SELECT *
FROM PrimeiraTabela

UPDATE PrimeiraTabela 
SET NomePrimeiraTabela = 'EDITADO'
WHERE IdPrimeiraTabela = 5 OR
IdPrimeiraTabela = 3

-- EXERCÍCIO 30:
/*
	Criar uma tabela nova com 3 colunas e depois:
	1. Alterar o tipo de uma coluna.
	2. Renomear o nome de uma coluna.
	3. Renomear o nome da tabela criada.
*/

CREATE TABLE CanalYouTube (
	IdCanal INT PRIMARY KEY,
	NomeCanal VARCHAR(50) NOT NULL UNIQUE,
	DescricaoCanal VARCHAR(200),
	DataCriacao DATETIME DEFAULT GETDATE(),
	Premium BIT DEFAULT 0,
	Inscritos INT DEFAULT 0,
	Likes INT DEFAULT 0,
	Dislikes INT DEFAULT 0
)

SELECT *
FROM CanalYouTube

ALTER TABLE CanalYouTube
ALTER COLUMN DescricaoCanal VARCHAR(300)

EXEC SP_RENAME 'CanalYouTube.Inscritos', 'InscritosCanal', 'COLUMN'

EXEC SP_RENAME 'CanalYouTube', 'PerfilCanalYouTube'

SELECT *
FROM PerfilCanalYouTube

-- EXERCÍCIO 31:
-- Criar 2 tabelas novas e 1 restrição para cada tabela.

USE YouTube

CREATE TABLE EstadosBrasileiros(
	Id INT PRIMARY KEY,
	Nome VARCHAR(50) NOT NULL,
	Sigla VARCHAR(2) CHECK (LEN(Sigla) = 2)
)

INSERT INTO EstadosBrasileiros
VALUES (1, 'São Paulo', 'SP')

SELECT *
FROM EstadosBrasileiros

CREATE TABLE DisciplinasFaculdade(
	Id INT PRIMARY KEY,
	Nome VARCHAR(100) NOT NULL,
	CargaHoraria INT NOT NULL CHECK (CargaHoraria >= 45 AND CargaHoraria <= 60),
	Professor VARCHAR(50) NOT NULL
)

INSERT INTO DisciplinasFaculdade
VALUES (1, 'Lógica de Programação', 60, 'João Sebastião')

SELECT *
FROM DisciplinasFaculdade