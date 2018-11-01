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

-- Genero
INSERT INTO GENERO (NOME_GENERO)
VALUES ('Rock'),
('Blues'),
('Pop'),
('Funk'),
('Sertanejo');


-- -- Artista
INSERT INTO ARTISTA (NOME_ARTISTA, DATA_DE_FUNDACAO)
VALUES ('Metallica', "1981-01-01"),
('Megadeth', "1983-01-01"),
('Linkin Park', "1996-01-01"),
('Bee Gees', "1958-01-01"),
('Black Sabbath', "1968-01-01"),
('Iron Maiden',"1965-01-01"),
('Jorge Ben Jor',"1963-01-01"),
('Chitaozinho e Xororo',"1969-01-01"),
('Led Zeppelin',"1968-01-01"),
('Of Monsters and Men',"2010-01-01"),
('Phoenix',"1999-01-01");

INSERT INTO ALBUM(ID_ARTISTA,NOME_ALBUM,DURACAO,DATA_LANCAMENTO,ID_GENERO)
VALUES (1,"Ride the Lightning","00:47:00","1984-01-01",1),
	(1,"...And Justice For All","01:05:00","1988-01-01",1),
	(2,"Rust in Peace","00:40:00","1990-01-01",1),
	(4,"Children of The World","00:39:00","1976-01-01",1);

INSERT INTO MUSICA(ID_ALBUM,NOME_MUSICA,DURACAO,ORDEM)
VALUES (1,'Fight Fire With Fire',"00:04:45",1),
(1,"Ride the Lightning","00:06:37",2),
(1,"For Whom the Bell Tolls","00:05:10",3),
(1,"Fade To Black","00:06:57",4),
(1,"Trapped Under Ice","00:04:04",5),
(1,"Escape","00:04:24",6),
(1,"Creeping Death","00:06:36",7),
(1,"The Call of Ktulu","00:08:53",8),
(2,"Blackened","00:06:41",1),
(2,"...And Justice For All","00:09:47",2),
(2,"Eye of The Beholder","00:06:30",3),
(2,"One","00:07:27",4),
(2,"The Shortest Straw","00:06:36",5),
(2,"Harvester of Sorrow","00:05:46",6),
(2,"The Frayed Ends of Sanity","00:07:44",7),
(2,"To Live is To Die","00:09:49",8),
(2,"Dyers Eve","00:05:13",9),
(3,"Holy Wars...The Punishment Due","00:06:36",1),
(3,"Hangar 18","00:05:15",2),
(3,"Take No Prisoners","00:03:29",3),
(3,"Five Magics","00:05:43",4),
(3,"Poison Was The Cure","00:02:58",5),
(3,"Lucretia","00:03:58",6),
(3,"Tornado Of Souls","00:05:23",7),
(3,"Dawn Patrol","00:01:51",8),
(3,"Rust in Peace...Polaris","00:05:37",9),
(4,"You Should Be Dancing","00:04:19",1),
(4,"You Stepped Into My Life","00:03:27",2),
(4,"Love So Right","00:03:38",3),
(4,"Lovers","00:03:40",4),
(4,"Can't Keep A Good Man Down","00:04:47",5),
(4,"Boogie Child","00:04:15",6),
(4,"Love Me","00:04:03",7),
(4,"Subway","00:04:26",8),
(4,"The Way it Was","00:03:22",9),
(4,"Children of The World","00:03:10",10);

INSERT INTO PLAYLIST (NOME_PLAYLIST,ID_USUARIO)
VALUES ('PL1',1),
('PL2',2),
('PL3',3),
('PL4',4),
('PL5',1);


-- Musica Salva
INSERT INTO MUSICA_SALVA (ID_USUARIO)
VALUES (1),
(2),
(3),
(4);

