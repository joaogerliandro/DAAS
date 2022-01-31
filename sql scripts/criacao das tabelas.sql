----------------------------------- ENTIDADES ----------------------------------

-- Nivel (IDNivel, Nome)

CREATE TABLE nivel
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR (30) NOT NULL UNIQUE
);

-- Formação (IDFormação, Nome)
CREATE TABLE formacao
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR (15)
);

-- Atuacao (IDAtuacao, Nome)

CREATE TABLE atuacao 
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(30) NOT NULL
);

-- Materia (IDMat, Nome)

CREATE TABLE materia
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(20) NOT NULL
);

-- TipoQuestao (IDTipoQ, Nome)

CREATE TABLE tipo_questao
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR(25) NOT NULL UNIQUE
);

-- TipoAtividade (IDTipoA, Nome)

CREATE TABLE tipo_atividade
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR (30) NOT NULL
);

-- Aluno (IDAluno, Nome, Email, Senha, Telefone, NivelEnsino)

CREATE TABLE aluno
(
    id           BIGSERIAL NOT NULL PRIMARY KEY,
    nome         VARCHAR(100) NOT NULL,
    email        VARCHAR(50) NOT NULL UNIQUE,
    senha        VARCHAR(20) NOT NULL,
    telefone     VARCHAR(15) NOT NULL UNIQUE,
    nivel_ensino BIGINT NOT NULL REFERENCES nivel(id) ON DELETE RESTRICT
);

-- Orientador (IDOri, Nome, Email, Senha, Telefone, Formacao, Instituicao)

CREATE TABLE orientador
(
    id          BIGSERIAL NOT NULL PRIMARY KEY,
    nome        VARCHAR(100) NOT NULL,
    email       VARCHAR(50) NOT NULL UNIQUE,
    senha       VARCHAR(20) NOT NULL,
    telefone    VARCHAR(15) NOT NULL UNIQUE,
    instituicao VARCHAR(50) NOT NULL,
    formacao    BIGINT NOT NULL REFERENCES formacao(id) ON DELETE RESTRICT,
    atuacao     BIGINT NOT NULL REFERENCES atuacao(id) ON DELETE RESTRICT
);

-- Autor (IDAutor, Nome)

CREATE TABLE autor
(
    id   BIGSERIAL NOT NULL PRIMARY KEY,
    nome VARCHAR (100) NOT NULL
);

-- Turma (IDTurma, GrauEnsino)

CREATE TABLE turma
(
    id           BIGSERIAL NOT NULL PRIMARY KEY,
    nivel_ensino BIGINT NOT NULL REFERENCES nivel(id) ON DELETE RESTRICT
);

-- Questao (IDQuestao, IDAutor, Enunciado, RespCorreta, IDTipoQ, IDNivel, IDMat) 
/*
    IDAutor referencia Autor
    IDTipoQ referencia TipoQuestao
    IDNivel referencia Nivel
    IDMat referencia Materia
*/

CREATE TABLE questao
(
    id               BIGSERIAL NOT NULL PRIMARY KEY,
    enunciado        TEXT NOT NULL,
    resposta_correta VARCHAR(3) NOT NULL,
    id_autor         BIGINT          REFERENCES autor(id) ON DELETE SET NULL,
    id_tipo_qst      BIGINT NOT NULL REFERENCES tipo_questao(id) ON DELETE RESTRICT,
    nivel_ensino     BIGINT NOT NULL REFERENCES nivel(id) ON DELETE RESTRICT,
    id_materia       BIGINT NOT NULL REFERENCES materia(id) ON DELETE RESTRICT
);

-- Atividade (IDAtividade, NoTentativas, IDTipoA, IDTurma, PontuacaoTotal)
/*
    Atividade (IDAtividade, NoTentativas, IDTipoA, IDTurma, PontuacaoTotal)
    IDTipoA referencia Tipo de Atividade
    IDTurma referencia Turma
*/

CREATE TABLE atividade
(
    id                BIGSERIAL NOT NULL PRIMARY KEY,   
    numero_tentativas SMALLINT NOT NULL,
    pontuacao_total   REAL NOT NULL,
    id_tipo_atv       BIGINT NOT NULL REFERENCES tipo_atividade(id) ON DELETE RESTRICT,
    id_turma          BIGINT NOT NULL REFERENCES turma(id) ON DELETE CASCADE
);

-- Boletim (IDAluno, IDMat, Media) 
/*
    IDAluno referencia 
    Aluno IDMat referencia Matéria
*/

CREATE TABLE boletim -- entidade fraca
(
    media      REAL NOT NULL,
    id_aluno   BIGINT NOT NULL REFERENCES aluno(id) ON DELETE CASCADE,
    id_materia BIGINT NOT NULL REFERENCES materia(id) ON DELETE RESTRICT,

    PRIMARY KEY(id_aluno, id_materia)
);

-------------------------------- RELACIONAMENTOS -------------------------------

/*
    VinculacaoMat (IDMat, IDTurma) - Relacionamento
    IDMat referencia Materia
    IDTurma referencia Turma
*/

CREATE TABLE vinculacao_materia
(
    id_materia   BIGINT NOT NULL REFERENCES materia(id),
    id_turma     BIGINT NOT NULL REFERENCES turma(id),
    
    PRIMARY KEY(id_materia, id_turma)
);
  
-- VinculacaoOri (IDOri, IDTurma) - Relacionamento
/*
    IDOri referencia Orientador
    IDTurma referencia Turma
*/

CREATE TABLE vinculacao_orientador
(
    id_orientador BIGINT NOT NULL REFERENCES orientador(id),
    id_turma      BIGINT NOT NULL REFERENCES turma(id),

    PRIMARY KEY(id_orientador, id_turma)
);

  
-- VinculacaoAluno (IDAluno, IDTurma) - Relacionamento
/*
    IDAluno referencia Aluno
    IDTurma referencia Turma
*/

CREATE TABLE vinculacao_aluno
(
    id_aluno BIGINT NOT NULL REFERENCES aluno(id),
    id_turma BIGINT NOT NULL REFERENCES turma(id),
    
    PRIMARY KEY(id_aluno, id_turma)
);

-- VincAtivQuestao (IDAtividade, IDQuestao) - Relacionamento
/*
    IDAtividade referencia Atividade
    IDQuestao referencia Questao
*/

CREATE TABLE vinculacao_atv_questao
(
    id_atividade BIGINT NOT NULL REFERENCES atividade(id),
    id_questao   BIGINT NOT NULL REFERENCES questao(id),

    PRIMARY KEY(id_atividade, id_questao)
);