-- UPDATE: Alterar linhas

SELECT *
FROM Aula

UPDATE Aula
SET Nome = 'Aulas - Essas linhas foram alteradas sem utilizar o WHERE'

UPDATE Aula
SET Nome = 'Aula 1 - Essa linha foi alterada usando o WHERE'
WHERE Id = 1


-- DELETE: Deletar algum dado da tabela

SELECT *
FROM Aula

DELETE FROM Aula
WHERE ID = 4

-- ALTER TABLE: Adicionar, remover ou alterar uma coluna; Alterar valores padrões para uma coluna; Adicionar ou remover restrições de colunas; Renomear tabelas e colunas.
CREATE TABLE YouTubeAlterado (
	Id INT PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL UNIQUE,
	Categoria VARCHAR(200) NOT NULL,
	DataCriacao DATETIME NOT NULL DEFAULT GETDATE()
)

SELECT *
FROM YouTubeAlterado

-- ADICIONAR COLUNA
ALTER TABLE YouTubeAlterado
ADD Ativo BIT

-- ALTERAR O TIPO DE UMA COLUNA
ALTER TABLE YouTubeAlterado
ALTER COLUMN Categoria VARCHAR(300) NOT NULL

-- ALTERAR O NOME DE UMA COLUNA
-- DEVE RODAR UMA PROCEDURE ESPECÍFICA PARA ISSO:
-- EXEC sp_RENAME 'nomeTabela.nomeColunaAtual', 'nomeColunaNova', 'COLUMN'
EXEC sp_RENAME 'YouTubeAlterado.Nome', 'nomeCanal', 'COLUMN'

-- ALTERAR O NOME DA TABELA
-- DEVE RODAR UMA PROCEDURE ESPEFÍCICA PARA ISSO:
-- EXEC sp_RENAME 'NomeTabelaAtual', 'nomeTabelaNova'
EXEC SP_RENAME 'YouTubeAlterado', 'YouTubeComNovoNome'

SELECT *
FROM YouTubeComNovoNome