from distutils.command.config import config


class insert:
    query = "INSERT INTO {0} ({1}) VALUES ({2})"

    def aluno(nome, email, senha, telefone, nivel_ensino):
        config = "nome, email, senha, telefone, nivel_ensino"
        params = "'{0}', '{1}', '{2}', '{3}', {4}".format(
                  nome, email, senha, telefone, nivel_ensino)
        return insert.query.format("aluno", config, params)
    
    def orientador(nome, email, senha, telefone, instituicao, formacao, atuacao):
        config = "nome, email, senha, telefone, instituicao, formacao, atuacao"
        params = "'{0}', '{1}', '{2}', '{3}', '{4}', {5}, {6}".format(
                  nome, email, senha, telefone, instituicao, formacao, atuacao)
        return insert.query.format("aluno", config, params)    
    
    def turma(nivel_ensino):
        config = "nivel_ensino"
        params = "{0}".format(nivel_ensino)
        return insert.query.format("turma", config, params)
        
    def autor(nome):
        config = "nome"
        params = "'{0}'".format(nome)
        return insert.query.format("autor", config, params)
    
    def atividade(numero_tentativas, pontuacao_total, id_tipo_atividade, id_turma):
        config = "numero_tentativas, pontuacao_total, id_tipo_atividade, id_turma"
        params = "{0}, {1}, {2}, {3}".format(
                 numero_tentativas, pontuacao_total, id_tipo_atividade, id_turma)
        return insert.query.format("atividade", config, params)
    
    def questao(enunciado, resposta_correta, id_autor, id_tipo_qst, nivel_ensino, id_materia):
        config = "enunciado, resposta_correta, id_autor, id_tipo_qst, nivel_ensino, id_materia"
        params = "'{0}', '{1}', {2}, {3}, {4}, {5}".format(
                  enunciado, resposta_correta, id_autor, id_tipo_qst, nivel_ensino, id_materia)
        return insert.query.format("questao", config, params)
    
    
class delete:
    query = "DELETE FROM {0} WHERE {1} = {2}"
    
    def by_id(table, id):
        return delete.query.format(table, "id", id)

    def by_email(table, email):
        return delete.query.format(table, "email", f"'{email}'")
        
    def by_telefone(table, telefone):
       return delete.query.format(table, "email", f"'{telefone}'")

class update:

    query = "UPDATE {} SET {} = {} WHERE "
    
    def by_id(table, col, value, id):
        return delete.query.format(table, "id", id)

    def by_email(table, col, value, email):
        return delete.query.format(table, "email", f"'{email}'")
        
    def by_telefone(table, col, value, telefone):
       return delete.query.format(table, "email", f"'{telefone}'")

class select:
    query = "SELECT {0} FROM {1}"

    def all(table):
        return select.query.format("*", table)
    
    def params(table, keys):
        return select.query.format(keys, table)
     
    
    
