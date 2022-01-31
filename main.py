import psycopg2 as pg
import json as js
from operations import insert, select, delete, update

if __name__ == '__main__':

    config = js.load(open("pg_config.json", "r"))

    conn = pg.connect(user     = config["user"],
                      password = config["password"],
                      host     = config["host"],
                      port     = config["port"],
                      database = config["database"])

    cur = conn.cursor()
    
    ## arquivo => parametros
    ## modo => insert, update, delete , select 
    
    ## INSERT -> funcionando
    #cur.execute(insert.aluno("jorge", "abs.example@google.uk", "meunomenaoehjohnny","(88) 910291029", 14))
    #conn.commit()

    ## UPDATE -> funcionando
    #cur.execute("UPDATE aluno SET senha = 'm3u_n0me_eh_jorg3' WHERE id = 21")
    #conn.commit()

    ## DELETE
    #cur.execute("DELETE FROM aluno WHERE id = 21")
    #conn.commit()

    cur.execute(select.all("aluno"))
    rows = cur.fetchall()
    
    for x in rows:
        print(x)
    
    conn.commit()

    cur.close()
    conn.close()