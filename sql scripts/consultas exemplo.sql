
-- Consultar informações sobre os alunos que pertencem à turma 5

SELECT * FROM aluno WHERE aluno.id IN (SELECT id_aluno FROM vinculacao_aluno WHERE vinculacao_aluno.id_turma = 5);

SELECT id_aluno, aluno.nome FROM vinculacao_aluno
JOIN aluno ON vinculacao_aluno.id_aluno = aluno.id;

-- Consultar o nome do nivel de ensino de cada aluno

SELECT aluno.nome, aluno.email, nivel.nome FROM ALUNO
JOIN nivel ON aluno.nivel_ensino=nivel.id;

SELECT * FROM ori_turmas;

-- Consultar todas as informações de todas as turmas de um orientador de id 3

SELECT * FROM ori_turmas WHERE id_orientador = 3;

SELECT * FROM atividade_questoes WHERE id_atividade = 3;

-- Consultar a quantidade de alunos da turma de id 4

SELECT quantidade_alunos FROM turma_count WHERE id_turma = 4;