-- função-tabela que recebe o ID da turma e retorna uma tabela com os alunos da turma com esse id
CREATE OR REPLACE FUNCTION alunos_da_turma(id_da_turma BIGINT)
RETURNS TABLE (id BIGINT, nome VARCHAR, email VARCHAR)
AS $$
BEGIN
    RETURN query
        SELECT aluno.id, aluno.nome, aluno.email FROM vinculacao_aluno
        JOIN aluno ON vinculacao_aluno.id_aluno = aluno.id
        WHERE vinculacao_aluno.id_turma = id_da_turma
        ORDER BY id_aluno;
END
$$ LANGUAGE plpgsql;

-- exemplo de uso da função
SELECT * FROM alunos_da_turma(3);


---------------- TRIGGERS E SEUS RESPECTIVOS PROCEDIMENTOS ---------------

CREATE OR REPLACE FUNCTION apaga_aluno_dos_relacionamentos()
RETURNS trigger
AS $$
BEGIN 
    DELETE FROM vinculacao_aluno WHERE id_aluno = OLD.id;
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER apagar_aluno_trigger
BEFORE DELETE ON aluno
FOR EACH ROW
EXECUTE PROCEDURE apaga_aluno_dos_relacionamentos();

----------------------------------------------------------
CREATE OR REPLACE FUNCTION apaga_turma_dos_relacionamentos()
RETURNS trigger
AS $$
BEGIN 
    DELETE FROM vinculacao_aluno WHERE id_turma = OLD.id;
    DELETE FROM vinculacao_materia WHERE id_turma = OLD.id;
    DELETE FROM vinculacao_orientador WHERE id_turma = OLD.id;
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER apagar_turma_trigger
BEFORE DELETE ON turma
FOR EACH ROW
EXECUTE PROCEDURE apaga_turma_dos_relacionamentos();

-----------------------------------------------------------
CREATE OR REPLACE FUNCTION apaga_atividade_dos_relacionamentos()
RETURNS trigger
AS $$
BEGIN 
    DELETE FROM vinculacao_atv_questao WHERE id_atividade = OLD.id;
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER apagar_atividade_trigger
BEFORE DELETE ON atividade
FOR EACH ROW
EXECUTE PROCEDURE apaga_atividade_dos_relacionamentos();

-----------------------------------------------------------
CREATE OR REPLACE FUNCTION apaga_questao_dos_relacionamentos()
RETURNS trigger
AS $$
BEGIN 
    DELETE FROM vinculacao_atv_questao WHERE id_questao = OLD.id;
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER apagar_questao_trigger
BEFORE DELETE ON questao
FOR EACH ROW
EXECUTE PROCEDURE apaga_questao_dos_relacionamentos();

------------------------------------------------------------
CREATE OR REPLACE FUNCTION apaga_orientador_dos_relacionamentos()
RETURNS trigger
AS $$
BEGIN 
    DELETE FROM vinculacao_orientador WHERE id_orientador = OLD.id;
    RETURN OLD;
END
$$ LANGUAGE plpgsql;

CREATE TRIGGER apagar_orientador_trigger
BEFORE DELETE ON orientador
FOR EACH ROW
EXECUTE PROCEDURE apaga_orientador_dos_relacionamentos();
