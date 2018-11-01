--(a) Escolha uma chave definida e mostre que o SGBD não admite inserção de
-- valores duplicados. Ou seja, através de um INSERT, mostre que a inserção de um valor
-- duplicado gera um erro.
INSERT INTO USUARIO(ID_USUARIO,NOME_USUARIO,EMAIL,SENHA)
VALUES (1,'Felipe', 'felipe@email', '123'),
(2,'Gustavo', 'gustavo@email', '321'),
(3,'Nayara', 'nayara@email', '456'),
(4,'Carlos', 'carlos@email', '654');

-- (b) Escolha três chaves estrangeiras definidas e mostre o funcionamento das
-- opções adotadas (RESTRICT, CASCADE e SET NULL) para a operação de remoção e
-- atualização dos valores referenciados. Por exemplo, através de uma sequência SELECT,
-- DELETE, SELECT, mostre a propagação da operação de remoção de um valor
-- referenciado por uma chave estrangeira.


-- CASCADE
SELECT * FROM MUSICA;

DELETE FROM ARTISTA WHERE ID_ARTISTA = 1;

SELECT * FROM MUSICA;
-- SET NULL
SELECT * FROM ALBUM;

DELETE FROM GENERO WHERE ID_GENERO = 1;

SELECT * FROM ALBUM;

-- RESTRICT 
SELECT * FROM USUARIO

DELETE FROM USUARIO_PREMIUM WHERE ID = 1;

SELECT * FROM USUARIO;

-- (c) Escolha uma chave estrangeira definida e mostre, através de um comando
-- INSERT, que a tentativa de inserção, na chave estrangeira, de um valor não existente na
-- chave primária referenciada, gera um erro de integridade referencial.

INSERT INTO USUARIO_PREMIUM (ID_USUARIO,NUM_CARTAO,CVV)
VALUES (100,10,3);