-- Usuario(__idUsuario__,nome,email,senha).
CREATE TABLE USUARIO (
	ID_USUARIO INT NOT NULL AUTO_INCREMENT,
	
	NOME_USUARIO VARCHAR(255) NOT NULL,
	EMAIL VARCHAR(255) NOT NULL,
	SENHA VARCHAR(255) NOT NULL,
	
	UNIQUE(EMAIL),
	PRIMARY KEY(ID_USUARIO)
);

-- UsuarioPremium(__idUsuario__,num_cartao,cvv).
CREATE TABLE USUARIO_PREMIUM(
	ID_USUARIO INT NOT NULL,
	
	NUM_CARTAO INT(16) NOT NULL,
	CVV INT(3) NOT NULL,

	PRIMARY KEY(ID_USUARIO),

	CONSTRAINT FK_ID_USUARIO
		FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID_USUARIO)
			ON DELETE RESTRICT ON UPDATE RESTRICT
);

CREATE TABLE ARTISTA(
	ID_ARTISTA INT NOT NULL AUTO_INCREMENT,
	
	NOME_ARTISTA VARCHAR(255) NOT NULL,
	DATA_DE_FUNDACAO DATE,
	
	UNIQUE(NOME_ARTISTA),
	PRIMARY KEY(ID_ARTISTA)
);

CREATE TABLE GENERO(
	ID_GENERO INT NOT NULL AUTO_INCREMENT,
	
	NOME_GENERO VARCHAR(255) NOT NULL,
	
	PRIMARY KEY(ID_GENERO),
	UNIQUE(NOME_GENERO)
);

CREATE TABLE ALBUM(
	ID_ALBUM INT NOT NULL AUTO_INCREMENT,
	
	ID_ARTISTA INT NOT NULL,
	
	NOME_ALBUM VARCHAR(255) NOT NULL,
	DURACAO TIME NOT NULL,
	DATA_LANCAMENTO DATE,
	ID_GENERO INT,

	PRIMARY KEY(ID_ALBUM),

	UNIQUE(ID_ARTISTA,NOME_ALBUM),
	CONSTRAINT FK_ID_ARTISTA
		FOREIGN KEY(ID_ARTISTA) REFERENCES ARTISTA(ID_ARTISTA) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_GENERO
		FOREIGN KEY(ID_GENERO) REFERENCES GENERO(ID_GENERO) ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE MUSICA(
	ID_MUSICA INT NOT NULL AUTO_INCREMENT,
	
	ID_ALBUM INT NOT NULL,
	
	NOME_MUSICA VARCHAR(255) NOT NULL,
	DURACAO TIME NOT NULL,
	ORDEM INT,

	PRIMARY KEY(ID_MUSICA),

	UNIQUE(ID_ALBUM,NOME_MUSICA),
	CONSTRAINT FK_ID_ALBUM
		FOREIGN KEY(ID_ALBUM) REFERENCES ALBUM(ID_ALBUM) ON DELETE CASCADE ON UPDATE CASCADE
);



CREATE TABLE PLAYLIST(
	ID_PLAYLIST INT NOT NULL AUTO_INCREMENT,
	NOME_PLAYLIST VARCHAR(255) NOT NULL,
	ID_USUARIO INT NOT NULL,

	PRIMARY KEY (ID_PLAYLIST,ID_USUARIO),
	CONSTRAINT FK_PLAYLIST
		FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MUSICA_SALVA(
	ID_MUSICA_SALVA INT NOT NULL AUTO_INCREMENT,
	
	ID_USUARIO INT NOT NULL,
	
	PRIMARY KEY(ID_MUSICA_SALVA),

	CONSTRAINT FK_MUSICASALVA_ID_USUARIO
		FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE
);
