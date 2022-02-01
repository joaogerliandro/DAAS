-- Consultar todas as informações de todas as turmas relacionadas a todos os orientadores
CREATE OR REPLACE VIEW ori_turmas AS
SELECT vinculacao_orientador.id_orientador, orientador.nome, turma.id AS id_turma,
turma.nivel_ensino AS nivel_turma 
FROM vinculacao_orientador
JOIN turma ON vinculacao_orientador.id_turma=turma.id
JOIN  orientador ON vinculacao_orientador.id_orientador=orientador.id ORDER BY orientador.id;

-- Consultar todas as questões vinculadas a uma atividade
CREATE OR REPLACE VIEW atividade_questoes AS
SELECT atividade.id AS id_atividade, atividade.id_tipo_atv, questao.id AS id_questao, questao.enunciado, questao.resposta_correta FROM vinculacao_atv_questao
JOIN atividade ON vinculacao_atv_questao.id_atividade = atividade.id
JOIN questao ON vinculacao_atv_questao.id_questao = questao.id;

-- Consultar a quantidade de alunos de cada turma
CREATE OR REPLACE VIEW turma_count AS
SELECT vinculacao_aluno.id_turma, COUNT(*) AS quantidade_alunos FROM vinculacao_aluno
JOIN turma ON vinculacao_aluno.id_turma=turma.id
GROUP BY vinculacao_aluno.id_turma ORDER BY id_turma;