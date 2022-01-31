----------- TABELAS DE APENAS-LEITURA ABAIXO ------------
--------(Não devem ser acessadas pela aplicação)---------

/*
    EB -> Ensino Básico (1 -> 5)
    EF -> Ensino Fundamental (6 -> 9)
    EM -> Ensino Medio
    ES -> Ensino Superior
    PG -> Pós Graduação
    CD -> Concursando
*/
INSERT INTO nivel (nome) VALUES 
('Ensino Básico-1')     , ('Ensino Básico-2')     , ('Ensino Básico-3')     ,
('Ensino Básico-4')     , ('Ensino Básico-5')     , ('Ensino Fundamental-6'),
('Ensino Fundamental-7'), ('Ensino Fundamental-8'), ('Ensino Fundamental-9'),
('Ensino Medio-1')      , ('Ensino Medio-2')      , ('Ensino Medio-3')      ,
('Ensino Superior')     , ('Pós Graduação')       , ('Concursando')         ;

/*
    LC -> LICENCIADO
    BC -> BACHAREL
    MS -> MESTRE
    ES -> ESPECIALISTA
    DR -> DOUTOR
    PS -> PESQUISADOR 
*/
INSERT INTO formacao (nome) VALUES
('LICENCIADO'), ('BACHAREL'), ('MESTRE'),
('ESPECIALISTA'), ('DOUTOR'), ('PESQUISADOR');

INSERT INTO atuacao (nome) VALUES
('Computação'), ('Matemática'), ('Engenharia'),
('Inglês')    , ('História')  , ('Física')    ,
('Química')   , ('Geografia') , ('Filosofia') ,
('Biologia')  , ('Pedagogia') , ('Sociologia');

INSERT INTO materia (nome) VALUES
('Matemática'), ('Direito Penal') , ('História')  ,
('Química')   , ('Geografia')     , ('Filosofia') ,
('Biologia')  , ('Espanhol')      , ('Sociologia'),
('Física')    , ('Inglês')        , ('Ética')     ,
('Cálculo 1') , ('Álgebra Linear'), ('Libras')    ;

INSERT INTO tipo_questao (nome) VALUES
('Múltipla Escolha')   , ('Única Escolha')     ,
('Verdadeiro ou Falso'), ('Escolha Ordenada')  ,
('Escolha Ligada')     , ('Completar Sentença');

INSERT INTO tipo_atividade (nome) VALUES
('Exame')   , ('Avaliação')  , ('Concurso')   ,
('Trabalho'), ('Recuperação'), ('Atividade')  ,
('Teste')   , ('Olimpiada')  , ('Diagnóstica');


----------- TABELAS DE LEITURA E ESCRITA ABAIXO ------------
-------(Podem e devem ser acessadas pela aplicação)---------

INSERT into orientador (nome, telefone, email, senha,
                        formacao, atuacao, instituicao) VALUES 
('Micki Ellery'   , '(674) 9071805', 'mellery0@arizona.edu'     , 'BTFhdr'      , 1, 7 ,'Universidade Federal do Espirito Santo' ),
('Megen Kingaby'  , '(679) 5095818', 'mkingaby1@miibeian.gov.cn', 'fV6vx1cI0Gwk', 1, 10,'Universidade dos Amigos Unidos'         ),
('Cherie Hefford' , '(967) 1436241', 'chefford2@behance.net'    , '3B3KuTDiGeR' , 2, 5 ,'Instituto Federal do Ceará'             ),
('Danielle Bear'  , '(433) 8998087', 'dbear3@theguardian.com'   , 'Nn16zbW'     , 2, 7 ,'Universidade Federal de São Paulo'      ),
('Ashley Duesbury', '(804) 1831682', 'aduesbury4@360.cn'        , 'zyEnbxONxcG4', 2, 6 ,'Universidade de Lisboa'                 ),
('Lanni Starmer'  , '(421) 1684695', 'lstarmer5@telegraph.co.uk', 'KesijHz'     , 3, 5 ,'Universidade Federal do Ceará'          ),
('Saloma Stokey'  , '(697) 7383145', 'sstokey6@soundcloud.com'  , '1nKmGt3qu'   , 2, 6 ,'Universidade Regional do Cariri'        ),
('Elston Sidney'  , '(325) 1682933', 'esidney7@fotki.com'       , '9mMGaaPm'    , 3, 4 ,'Universidade de Campinas'               ),
('Kailey Heathorn', '(191) 5680912', 'kheathorn8@ox.ac.uk'      , 'E5zbsBWoE'   , 2, 7 ,'Massachussets Institute of Tecnology'   ),
('Atlante Augar'  , '(872) 1158897', 'aaugar9@nasa.gov'         , 'DbX0tOqS7'   , 6, 3 ,'Harvard University'                     );

INSERT INTO aluno (nome, telefone, email,
                   senha, nivel_ensino) VALUES 
('Maggi Dollen'      , '(680) 3792431', 'mdollen0@indiegogo.com'   , 'KAJHW2ao'    , 9 ),
('Evangelia Hawkey'  , '(755) 8795980', 'ehawkey1@nature.com'      , 'd9WtzLD'     , 13),
('Miran Kearney'     , '(684) 8707068', 'mkearney2@unesco.org'     , 'MfLuquTX5E'  , 12),
('Shrek Oliveira'    , '(260) 8930872', 'rschusterl3@taobao.com'   , 'JcXc4YNZP'   , 13),
('Geri Spare'        , '(827) 5289956', 'gspare4@vinaora.com'      , 'MLNnEd8B5eCD', 6 ),
('Meredeth Breslauer', '(187) 7879535', 'mbreslauer5@1und1.de'     , 'xW5I4HegJi'  , 8 ),
('Georgia Kanter'    , '(550) 6204215', 'gkanter6@posterous.com'   , 'vmuB79hqe'   , 3 ),
('Patsy Shadfourth'  , '(411) 3828775', 'pshadfourth7@dion.ne.jp'  , 'A0tpJ8Sy5Jpz', 4 ),
('Tabbitha Coster'   , '(451) 8736257', 'tcoster8@mysql.com'       , 'fsvLc7yKIJp' , 7 ),
('Shir Aspling'      , '(106) 3551114', 'saspling9@angelfire.com'  , 'hJRrfF87rG'  , 9 ),
('Daniel Reichhardt' , '(624) 1465481', 'dreichhardta@sun.com'     , 'AmjoAJpZ'    , 2 ),
('Vinita Tamplin'    , '(732) 1780560', 'vtamplinb@moonfruit.com'  , 'HUBCN7'      , 5 ),
('Fifine Dayly'      , '(272) 9636846', 'fdaylyc@deliciousdays.com', 'GhL9i7A3'    , 7 ),
('Gianna Deveraux'   , '(512) 2274925', 'gdeverauxd@prweb.com'     , '0nfnB1az'    , 11),
('Sharyl Khan'       , '(480) 2264718', 'skhane@blogger.com'       , 'FOLh8Q5JHj'  , 5 ),
('Flory Shorie'      , '(713) 7361329', 'fshorief@cloudflare.com'  , 'c5pK1k'      , 6 ),
('Ashlee Ewer'       , '(808) 6326357', 'aewerg@jugem.jp'          , 'wHVUWG21sWZ' , 12),
('Bern Madgin'       , '(343) 6080257', 'bmadginh@nps.gov'         , 'ctUYPPLPvItt', 9 ),
('Valerie Nesbeth'   , '(302) 2998300', 'vnesbethi@so-net.ne.jp'   , 'Y4GMrbGOoQo' , 14),
('Georgie Turfrey'   , '(955) 1532322', 'gturfreyj@columbia.edu'   , 'UdUJiEZBGnR' , 4 );

INSERT INTO autor (nome) VALUES 
('Gayler Hallatt')  , ('Lara Brito')     , ('João Augusto')    ,
('Tristam Godmar')  , ('Laetitia Semark'), ('Viviene Rickaert'),
('Aleen Kelmere')   , ('Zoe Dyer')       , ('Vanny Peele')     ,
('Hedvig O'' Brian'), ('Diannne Westley'), ('Roderigo Nussii') ;

INSERT INTO turma (nivel_ensino) VALUES 
(9 ), (10), (15), (3 ),
(9 ), (9 ), (10), (15),
(9 ), (2 ), (12), (11);

INSERT INTO questao (enunciado, resposta_correta, id_autor,
                     id_tipo_qst, nivel_ensino, id_materia) VALUES
('
Quanto é 10 + 10?

a) 4
b) 20
c) Flamengo
d) PostgreSQL
e) Lula 2022
', 'b', 2, 2, 1, 1),
('
Quantos anos vive um rinoceronte, em média?

a) 2
b) -2
c) 15
d) 1000
e) não sei
', 'c', 11, 2, 1, 7),
('
Quais das alternativas abaixo são práticas boas e saudáveis de ensino para adolescentes no ensino médio? 

I)   Dinâmicas participativas
II)  Provas orais
III) ENEM

a) I, II e II.
b) II e III.
c) III.
d) Definitivamente não a III.
', 'd', 10, 1, 5, 9),
('
Quantos quilos de cimento precisam ser misturados com 2 quilos de areia e 1 de água para fazer concreto armado?

a) 1
b) 3
c) 0,5
d) 300
e) depende do preço do cimento
', 'e', 9, 2, 1, 4),
('
Do you speak English?

a) Yes
b) Que?
c) Banana
d) Eu spico.
e) Why are you making me this question?! Do you think I am a terrorist?! I am not a paranoic, you are a paranoic!
', 'e', 11, 2, 14, 11),
('
Com quantos anos Napoleão descobriu a Argentina?

a) 3
b) 27
c) 32
d) Napoleão não descobriu a Argentina.
e) Quem é Napoleão?
', 'w', 9, 2, 3, 3),
('
Como se diz "dicas de inglês" em inglês?

a) English tips
b) English types
c) English dicks
d) Dicas de Inglés
e) English dikes
', 'a', 11, 2, 5, 11),
('
Eu não sei libras, então não consegui pensar em nenhuma questão na área de libras.

a) Queria saber Libras
b) Mas tipo, como seria uma prova de Libras?
c) A prova é oral?
d) Quer dizer, Prática, a prova é prática?
e) Acho que vou pegar uma cadeira de libras no futuro.
', 'e', 12, 2, 11, 15),
('
Quanto tempo dura a gestação do Homo sapiens sapiens?

a) 9 meses
b) 7 meses
c) 2 anos
d) 20 anos
e) a resposta correta não é a E. Espera, isso é um paradoxo?
', 'a', 3, 2, 3, 7),
('
Enunciado aleatório

a) a
b) b
c) c
d) d
e) e
', 'e', 9, 2, 9, 14),
('
HOje tem gol do ribamaar ribamaaar

a) c
b) d
c) e
d) s
e) a
', 'e', 6, 2, 5, 7),
('
sa se olhou no espelho. o que formou?

a) saas
b) suus
c) sees
d) siis
e) soos
', 'a', 2, 2, 2, 14),
('
como se pronuncia 22

a) a
b) vinte e dois
c) vinte e doiz
d) vinte e doies
e) vinte
', 'b', 5, 2, 6, 3),
('
quem descobriu o brasil foi pedro álvares ca:

a) bral
b) brel
c) bril
d) brel
e) stelo branco
', 'a', 9, 2, 11, 10),
('
questao exemplo

a) a
b) b
c) c
d) d
e) resposta correta
', 'e', 5, 2, 4, 2);

INSERT INTO atividade (numero_tentativas,pontuacao_total,
                       id_tipo_atv, id_turma) VALUES
(15, 5.23, 2, 1 ),
(11, 4.01, 9, 7 ),
(1 , 1.44, 8, 7 ),
(14, 3.42, 6, 9 ),
(4 , 1.80, 6, 10),
(3 , 6.13, 8, 12),
(2 , 4.40, 7, 7 ),
(8 , 7.08, 5, 1 ),
(9 , 2.54, 7, 4 ),
(5 , 2.7 , 1, 3 ),
(2 , 0.76, 1, 7 ),
(5 , 7.39, 5, 1 ),
(8 , 4.25, 5, 9 ),
(6 , 0.02, 7, 1 ),
(13, 5.17, 9, 8 );

INSERT INTO boletim (media,
                     id_aluno,
                     id_materia) VALUES
(0.99, 8 , 14), (2.29, 20, 12), (9.81, 6 , 2 ),
(8.13, 7 , 14), (7.96, 16, 8 ), (6.59, 20, 7 ),
(9.66, 20, 5 ), (3.74, 19, 13), (7.33, 19, 9 ),
(7.51, 12, 5 ), (3.83, 6 , 5 ), (3.21, 2 , 12);


------------------- RELACIONAMENTOS ---------------------

INSERT INTO vinculacao_materia (id_materia, id_turma) VALUES
(13, 9), (14, 8), (2 , 5 ), (7 , 2),
(9 , 9), (4 , 1), (6 , 10), (9 , 7),
(14, 5), (12, 5), (12, 3 ), (1 , 4),
(10, 8), (4 , 3), (3 , 6 ), (15, 2),
(12, 2), (2 , 7), (1 , 12), (13, 8);

INSERT INTO vinculacao_orientador (id_orientador, id_turma) VALUES
(1, 12), (2, 2 ), (10, 9 ), (6, 8),
(2, 9 ), (8, 4 ), (8 , 9 ), (7, 4),
(9, 7 ), (1, 2 ), (7 , 6 ), (2, 6),
(1, 6 ), (3, 10), (10, 8 ), (7, 5),
(4, 5 ), (1, 9 ), (8 , 11), (4, 2);

INSERT INTO vinculacao_aluno (id_aluno, id_turma) VALUES
(1 , 11), (6 , 2 ), (19, 1 ), (1 , 2),
(13, 5 ), (8 , 12), (2 , 11), (10, 2),
(10, 8 ), (11, 5 ), (19, 12), (18, 5),
(9 , 12), (17, 11), (15, 3 ), (10, 5),
(18, 9 ), (1 , 4 ), (10, 11), (2 , 5);

INSERT INTO vinculacao_atv_questao (id_atividade, id_questao) VALUES
(1 , 13), (1 , 4 ), (6 , 6 ), (8 , 7 ), (6 , 7 ),
(15, 4 ), (11, 3 ), (10, 3 ), (6 , 1 ), (1 , 6 ),
(15, 5 ), (13, 15), (6 , 14), (14, 15), (14, 4 ),
(3 , 10), (1 , 10), (7 , 2 ), (11, 6 ), (12, 7 ),
(11, 7 ), (12, 8 ), (11, 15), (2 , 10), (12, 6 ),
(8 , 9 ), (13, 4 ), (12, 11), (11, 13), (3 , 11),
(14, 13), (7 , 6 ), (6 , 11), (5 , 12), (7 , 1 ),
(14, 14), (11, 5 ), (8 , 14), (14, 3 ), (10, 6 );
