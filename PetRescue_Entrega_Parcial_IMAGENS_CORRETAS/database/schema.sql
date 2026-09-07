CREATE DATABASE IF NOT EXISTS pet_rescue
  CHARACTER SET utf8mb4
  COLLATE utf8mb4_unicode_ci;

USE pet_rescue;

CREATE TABLE administrador (
    id_administrador INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    email VARCHAR(160) NOT NULL UNIQUE,
    senha_hash VARCHAR(255) NOT NULL
);

CREATE TABLE animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especie VARCHAR(60) NOT NULL,
    raca VARCHAR(100),
    idade VARCHAR(40),
    porte ENUM('pequeno', 'medio', 'grande') NOT NULL,
    status ENUM('disponivel', 'em_processo', 'adotado') NOT NULL DEFAULT 'disponivel',
    data_resgate DATE,
    descricao TEXT,
    foto_url VARCHAR(255)
);

CREATE TABLE solicitacao_adocao (
    id_solicitacao INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    nome_interessado VARCHAR(120) NOT NULL,
    email_interessado VARCHAR(160) NOT NULL,
    telefone VARCHAR(30),
    mensagem TEXT,
    data_solicitacao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    status_solicitacao ENUM('pendente', 'aprovada', 'rejeitada') NOT NULL DEFAULT 'pendente',
    CONSTRAINT fk_solicitacao_animal
      FOREIGN KEY (id_animal) REFERENCES animal(id_animal)
      ON UPDATE CASCADE
      ON DELETE RESTRICT
);
