-- SegueUsuario(__idUsuario__,__idUsuario__).

-- Escuta(__idUsuario__,__nomeArtista__,__nomeAlbum__,__nomeMusica__,Data,Hora).

-- PlaylistContemMusicas(__idPlaylist__,__nomeArtista__,__nomeAlbum__,__nomeMusica__).

-- MusicaÉDoGenero(__nomeArtista__,__nomeAlbum__,__nomeMusica__,__nomeGenero__).

-- SegueArtista(__idUsuario__,__nomeArtista__).


CREATE TABLE SEGUE_USUARIO(
	ID_SEGUIDOR INT NOT NULL,
	ID_SEGUIDO INT NOT NULL,

	
	CONSTRAINT CK1
		CHECK (ID_SEGUIDOR != ID_SEGUIDO),

	PRIMARY KEY(ID_SEGUIDOR,ID_SEGUIDO),
	CONSTRAINT FK1_SEGUE_USUARIO
		FOREIGN KEY(ID_SEGUIDO) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CONSTRAINT FK2_SEGUE_USUARIO
		FOREIGN KEY(ID_SEGUIDOR) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE ESCUTA(
	ID_USUARIO INT NOT NULL,
	ID_MUSICA INT NOT NULL,
	
	DATA DATE NOT NULL,
	HORA TIME NOT NULL,

	PRIMARY KEY(ID_USUARIO,ID_MUSICA,DATA,HORA),
	CONSTRAINT FK1_ESCUTA
		FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE,
	
	CONSTRAINT FK2_ESCUTA
		FOREIGN KEY(ID_MUSICA) REFERENCES MUSICA(ID_MUSICA) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE PLAYLIST_CONTEM_MUSICA(
	ID_PLAYLIST INT NOT NULL,
	ID_MUSICA INT NOT NULL,
	
	PRIMARY KEY(ID_PLAYLIST,ID_MUSICA),
	CONSTRAINT FK1_PLAYLIST_CONTEM_MUSICA
		FOREIGN KEY(ID_MUSICA) REFERENCES MUSICA(ID_MUSICA) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK2_PLAYLIST_CONTEM_MUSICA	
		FOREIGN KEY(ID_PLAYLIST) REFERENCES PLAYLIST(ID_PLAYLIST) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MUSICA_SALVA_CONTEM_MUSICA(
	ID_MUSICA_SALVA INT NOT NULL,
	ID_MUSICA INT NOT NULL,
	
	PRIMARY KEY(ID_MUSICA_SALVA,ID_MUSICA),
	CONSTRAINT FK1_MUSICA_SALVA_CONTEM_MUSICA
		FOREIGN KEY(ID_MUSICA) REFERENCES MUSICA(ID_MUSICA) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK2_MUSICA_SALVA_CONTEM_MUSICA
		FOREIGN KEY(ID_MUSICA_SALVA) REFERENCES MUSICA_SALVA(ID_MUSICA_SALVA) ON DELETE CASCADE ON UPDATE CASCADE
);


CREATE TABLE SEGUE_ARTISTA(
	ID_USUARIO INT NOT NULL,
	ID_ARTISTA INT NOT NULL,

	PRIMARY KEY(ID_USUARIO,ID_ARTISTA),

	CONSTRAINT FK1_SEGUE_ARTISTA
		FOREIGN KEY(ID_USUARIO) REFERENCES USUARIO(ID_USUARIO) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK2_SEGUE_ARTISTA
		FOREIGN KEY(ID_ARTISTA) REFERENCES ARTISTA(ID_ARTISTA) ON DELETE CASCADE ON UPDATE CASCADE
);