from distutils.util import execute
import psycopg2 as pg
import json as js
from functions import *
from operations import *

#Lendo o arquivo de configuração do banco de dados
config = js.load(open("pg_config.json", "r"))

#Conectando ao banco utilizando o arquivo de configuração
conn = pg.connect(user     = config["user"],
                  password = config["password"],
                  host     = config["host"],
                  port     = config["port"],
                  database = config["database"])

#Criando o cursor de execução a partir da conexão
cur = conn.cursor()

def execute_query(query, is_select = False):
    cur.execute(query)
    
    if(is_select):
        rows = cur.fetchall()
        for x in rows:
            print(x)
    else:
        conn.commit()
        
def connection_close():
    cur.close()
    conn.close()

if __name__ == '__main__':
    # Demonstração do uso do INSERT
    # execute_query(insert.aluno("jorge",
    #                            "abs.example@google.uk",
    #                            "meunomenaoehjohnny",
    #                            "(88) 910291029",
    #                            14))
    # Instrução SQL:  INSERT INTO aluno (nome, email, senha, telefone, nivel_ensino) 
    #                 VALUES ('jorge', 'abs.example@google.uk', 'meunomenaoehjohnny', '(88) 910291029', 14),

    ## Demonstração do uso do UPDATE
    # execute_query(update.by_id("aluno",
    #                            "senha",
    #                            "m3u_n0me_eh_jorg3",
    #                            34))
    # Instrução SQL: "UPDATE aluno SET senha = 'm3u_n0me_eh_jorg3' WHERE id = 21"
    
    ## Demonstração do uso do DELETE 
    # execute_query(delete.by_id("aluno", 34))
    # Instrução SQL: "DELETE FROM aluno WHERE id = 21"
    
    ## Demonstração do uso do SELECT 
    # print("SAIDA: (id, nome, email, senha, telefone, nivel_ensino)")
    # execute_query(select.all("aluno"), True)
    # Instrução SQL: "SELECT * FROM aluno"
    
    ## Exemplo de consulta usando a função listar_alunos
    # print("SAIDA: (id, nome, email)")
    # execute_query(functions.listar_alunos(5), True)

    ## Consulta usando a visao ori_turmas
    # print("SAIDA: (nome, id_turma, nivel_turma)")
    # execute_query(functions.vinculos_ori_turmas(), True)
    
    ## Consulta usando a visao atividade_questoes
    # print("SAIDA: (id_atividade, id_questao, resposta_correta)")
    # execute_query(functions.vinculo_quest_atv(), True)
    # execute_query(functions.vinculo_quest_atv(1), True)
    
    ## Consulta usando a visao turma_count 
    # print("SAIDA: (id_turma, quantidade_alunos)")
    # execute_query(functions.contar_alunos(), True)
    # execute_query(functions.contar_alunos(5), True)
    
    connection_close()

