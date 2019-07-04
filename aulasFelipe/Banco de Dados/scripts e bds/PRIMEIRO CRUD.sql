-- do CRUD, o INSERT é o "C" (Create)
INSERT INTO aluno
    (rg, escolaridade, email, nome, endereco)
VALUES
    ('22.555.666-0', 'cursando ensino médio', 'fulano@provedor.com', 'Fulano', 'Rua dos bolos');

INSERT INTO aluno
    (rg, escolaridade, email, nome, endereco)
VALUES
    ('33.666.777-1',
    'ensino fundamental completo',
    'beltrano@provedor.com',
    'Beltrano',
    'Rua dos alfinetes');
    
-- do CRUD, o SELECT é o "R" (Read)
SELECT * FROM aluno;

--do CRUD, o UPDATE é o "U" (Update)
UPDATE aluno
SET escolaridade = 'ensino médio completo'
--WHERE ra = 1; Atualizar somente uma linha
WHERE ra in (1,3,5); -- Atualizar mais de uma linha

-- do CRUD, DELETE é o "D" (Delete)
DELETE FROM aluno
WHERE nome = 'Beltrano';