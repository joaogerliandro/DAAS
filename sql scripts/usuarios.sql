------------------criação dos usuários-------------------

-- usuário 1 -> acesso de apenas leitura --> NÃO ESTÁ FUNCIONANDO!
-- CREATE USER usuario1 WITH PASSWORD 'senha1';
-- GRANT CONNECT ON DATABASE fund_bd TO usuario1;
-- GRANT USAGE ON SCHEMA public TO usuario1;
-- GRANT SELECT ON DATABASE fund_bd TO usuario1;
-- GRANT SELECT ON ALL TABLES to usuario1;
-- GRANT SELECT ON ALL SEQUENCES to usuario1;

-- usuário 2 -> acesso de administrador
CREATE USER usr WITH PASSWORD 'usr';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO usr;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO usr;