-- CREATE DATABASE pargus
CREATE TABLE Usuario(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    nome VARCHAR(50) NOT NULL,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR NOT NULL,
    cargo VARCHAR NOT NULL
);
CREATE TABLE mensagem(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    conteudo TEXT,
    topico VARCHAR(50),
    id_usuario_comum INTEGER,
    id_usuario_admin INTEGER,
    CONSTRAINT fk_usuario_comum
    FOREIGN KEY(id_usuario_comum) REFERENCES Usuario(id),
    CONSTRAINT fk_usuario_admin
    FOREIGN KEY(id_usuario_admin) REFERENCES Usuario(id)
);
CREATE TABLE notificacao(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    atualizacao VARCHAR(150),
    corpo_notificacao TEXT,
    horario DATE
);
CREATE TABLE notificacao_usuario(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    id_usuario INTEGER,
    id_notificacao INTEGER,
    C
    CONSTRAINT fk_notificacao
    FOREIGN KEY(id_notificacao) REFERENCES notificacao(id)
);
CREATE TABLE dashboard(
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
    tipo VARCHAR(50),
    nome VARCHAR(150)
);

--parte do calvo

CREATE TABLE graficos (
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	tipo VARCHAR(50),
	cidade VARCHAR(50),
	nome VARCHAR (50),
	legenda TEXT
);
CREATE TABLE dados (
    id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	json VARCHAR(50),
	id_graficos INTEGER,
	CONSTRAINT fk_graficos
    FOREIGN KEY(id_graficos) REFERENCES graficos(id)
);
CREATE table dashboard_graficos(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	id_graficos INTEGER,
	id_dashboard INTEGER,
	CONSTRAINT fk_dashboard
    FOREIGN KEY(id_dashboard) REFERENCES dashboard(id),
	CONSTRAINT fk_graficos
    FOREIGN KEY(id_graficos) REFERENCES graficos(id)
);
CREATE TABLE usuario_dashboard(
	id INTEGER PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
	id_usuario INTEGER,
	id_dashboard INTEGER,
	CONSTRAINT fk_usuario
    FOREIGN KEY(id_usuario) REFERENCES Usuario(id),
	CONSTRAINT fk_dashboard
    FOREIGN KEY(id_dashboard) REFERENCES dashboard(id)
);
