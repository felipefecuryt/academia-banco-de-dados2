CREATE DATABASE academia;

USE academia;

CREATE TABLE plano (
    id_plano INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT NOT NULL,

    PRIMARY KEY (id_plano)
);

CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    especialidade VARCHAR(100),

    PRIMARY KEY (id_professor)
);

CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20),
    id_plano INT NOT NULL,

    PRIMARY KEY (id_aluno),

    FOREIGN KEY (id_plano)
        REFERENCES plano(id_plano)
);

CREATE TABLE treino (
    id_treino INT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    objetivo VARCHAR(200),
    data_criacao DATE NOT NULL,
    id_professor INT NOT NULL,

    PRIMARY KEY (id_treino),

    FOREIGN KEY (id_professor)
        REFERENCES professor(id_professor)
);

CREATE TABLE aluno_treino (
    id_aluno INT NOT NULL,
    id_treino INT NOT NULL,
    data_inicio DATE NOT NULL,

    PRIMARY KEY (id_aluno, id_treino),

    FOREIGN KEY (id_aluno)
        REFERENCES aluno(id_aluno),

    FOREIGN KEY (id_treino)
        REFERENCES treino(id_treino)
);
