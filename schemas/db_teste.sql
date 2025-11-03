CREATE DATABASE teste;

USE teste;

CREATE TABLE voluntarios(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL,
    idade BIGINT NOT NULL,
    funcao VARCHAR(255) NOT NULL
);

CREATE TABLE canteiros(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE plantas(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE colheitas(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_canteiro BIGINT NOT NULL,
    quantidade BIGINT NOT NULL
);

CREATE TABLE cultivos(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_voluntario BIGINT NOT NULL,
    id_planta BIGINT NOT NULL,
    id_canteiro BIGINT NOT NULL,
    created_at DATE NOT NULL
);

CREATE TABLE doacoes(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_colheita BIGINT NOT NULL,
    quantidade BIGINT NOT NULL
);

CREATE TABLE instituicoes(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE doacoes_instituicoes(
    id BIGINT  NOT NULL AUTO_INCREMENT PRIMARY KEY,
    id_doacao BIGINT NOT NULL,
    id_instituicao BIGINT NOT NULL,
    created_at DATE NOT NULL
);

ALTER TABLE
    doacoes_instituicoes ADD CONSTRAINT doacoes_instituicoes_id_doacao_foreign FOREIGN KEY(id_doacao) REFERENCES doacoes(id);

ALTER TABLE
    colheitas ADD CONSTRAINT colheitas_id_canteiro_foreign FOREIGN KEY(id_canteiro) REFERENCES canteiros(id);

ALTER TABLE
    cultivos ADD CONSTRAINT cultivos_id_planta_foreign FOREIGN KEY(id_planta) REFERENCES plantas(id);

ALTER TABLE
    cultivos ADD CONSTRAINT cultivos_id_voluntario_foreign FOREIGN KEY(id_voluntario) REFERENCES voluntarios(id);

ALTER TABLE
    doacoes_instituicoes ADD CONSTRAINT doacoes_instituicoes_id_instituicao_foreign FOREIGN KEY(id_instituicao) REFERENCES instituicoes(id);

ALTER TABLE
    doacoes ADD CONSTRAINT doacoes_id_colheita_foreign FOREIGN KEY(id_colheita) REFERENCES colheitas(id);

ALTER TABLE
    cultivos ADD CONSTRAINT cultivos_id_canteiro_foreign FOREIGN KEY(id_canteiro) REFERENCES canteiros(id);
