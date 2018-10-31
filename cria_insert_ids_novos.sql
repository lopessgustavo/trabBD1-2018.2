-- Usuario(__idUsuario__,nome,email,senha).
INSERT INTO USUARIO (NOME_USUARIO, EMAIL, SENHA)
VALUES ('Felipe', 'felipe@email', '123'),
('Gustavo', 'gustavo@email', '321'),
('Nayara', 'nayara@email', '456'),
('Carlos', 'carlos@email', '654'),
('Andre', 'andre@email', '789'),
('Plastino', 'plastino@email', '987');


-- -- UsuarioPremium(__idUsuario__,num_cartao,cvv).
INSERT INTO USUARIO_PREMIUM (ID_USUARIO, NUM_CARTAO, CVV)
VALUES (1, 123, 111),
(3, 321, 222),
(6, 456, 333);


-- -- Artista
INSERT INTO ARTISTA (NOME_ARTISTA, DATA_DE_FUNDACAO)
VALUES ('Xablito', "2000-10-21"),
('Flip Flop Boys', "1999-10-10"),
('Churrasqueira com controle', "2011-01-10"),
('Banda da cidade', "2014-08-08"),
('Banda do Chaves', "2015-02-23");

-- Album
INSERT INTO ALBUM (ID_ARTISTA, NOME_ALBUM, DURACAO, DATA_LANCAMENTO)
VALUES (1, 'Xablitinhos', '12:01:01', NULL),
(2, 'Chinelos', '12:01:01', NULL),
(3, 'Apaga o fogo', '12:01:01', NULL),
(4, 'Músicas bairristas', '12:01:01', NULL),
(5, 'Jovem ainda', '12:01:01', NULL);

-- Musica
INSERT INTO MUSICA (ID_ALBUM, NOME_MUSICA, DURACAO, ORDEM)
VALUES (1, 'Xabluto', '12:01:01', NULL),
(1, 'Descalso', '12:01:01', NULL),
(1, 'Apaga o fogo', '12:01:01', NULL),
(1, 'Bairro', '12:01:01', NULL),
(1, 'Quico', '12:01:01', NULL);

-- -- Genero
-- INSERT INTO GENERO (NOME_GENERO)
-- VALUES ('Rock'),
-- ('Blues'),
-- ('Pop'),
-- ('Funk'),
-- ('Sertanejo');

-- -- Playlist
-- INSERT INTO PLAYLIST (NOME)
-- VALUES ('Playlist Cheirosa'),
-- ('Playlist Bonita'),
-- ('Playlist Elegante'),
-- ('Playlist Sarrante'),
-- ('Playlist da Meia Noite');

-- -- Musica Salva
-- INSERT INTO MUSICA_SALVA (ID_USUARIO)
-- VALUES (1),
-- (3),
-- (6);