from operations import *

class functions:    
    def listar_alunos(id_turma):
        # Metodo utilizando as operações padrões
        # condition = "aluno.id IN ({0})".format(select.where("vinculacao_aluno",
        #                                                     "id_aluno",
        #                                                     f"vinculacao_aluno.id_turma = {turma}"))
        # return select.where("aluno", "*", condition)

        # Metodo utilizando uma função do SQL
        sql_str = f"alunos_da_turma({id_turma})"
        return select.all(sql_str)
    
    
    #Consultar todas as informações de todas as turmas relacionadas a todos os orientadores
    def vinculos_ori_turmas(id_ori = None):
        if(id_ori != None):
            condition = f"id_orientador = {id_ori}"
            return select.where("ori_turmas", "id_turma, nivel_turma", ) # uso da 1a visão
        else:
            return select.all("ori_turmas")

    #Consultar todas as questões vinculadas a todas as atividades
    def vinculo_quest_atv(id_atv = None):
        if(id_atv != None):
            condition = f"id_atividade = {id_atv}"
            return select.where("atividade_questoes", 
                                "id_atividade , id_questao, resposta_correta",
                                condition)
        else:
            return select.params("atividade_questoes",
                                 "id_atividade , id_questao, resposta_correta")

    def contar_alunos(id_turma = None):
        if(id_turma != None):
            condition = f"id_turma = {id_turma}"
            return select.where("turma_count", "*", condition)
        else:
            return select.all("turma_count")
