-- SELECTS que podem ser feitos no banco

--Trazer todos os lunos que começam o nome com a letra R
SELECT nome, email
FROM aluno
WHERE nome LIKE 'R%';

--Trazer quantos alunos estão cadastrados na tabela aluno
SELECT COUNT(ra) FROM aluno;

--Realizar a junção de duas ou mais tabelas
SELECT 