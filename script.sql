CREATE SCHEMA `agencia` ;

Use agencia;

CREATE TABLE pessoa(
    idPessoa INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sexo enum('M','F') NULL,
    data_nascimento date NULL,
    endereco VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    viagem_idViagem INT NOT NULL,
    PRIMARY KEY(idPessoa)
    );
    
CREATE TABLE telefone_pessoa (
    telefone VARCHAR(45) NOT NULL,
    pessoa_idPessoa INT NOT NULL,
    PRIMARY KEY (telefone , pessoa_idPessoa)
     );
    
CREATE TABLE viagem (
    idViagem INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NULL,
    data_inicial date NOT NULL,
    data_final date NOT NULL,
    PRIMARY KEY (idViagem)
     );
     
CREATE TABLE local (
    idLocal INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    viagem_idViagem INT NOT NULL,
    PRIMARY KEY (idLocal)
     );
     
CREATE TABLE pontos_turisticos (
    idPontos INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    horario VARCHAR(45) NULL,
    custo DECIMAL(8,2) NULL,
    faixa INT NULL, 
    tipo_pontos_idTipo INT NOT NULL,
    local_idLocal INT NOT NULL,
    PRIMARY KEY (idPontos)
     );
     
CREATE TABLE tipo_pontos (
    idTipo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (idTipo)
     );
     
              
CREATE TABLE telefone_ponto (
    telefone VARCHAR(45) NOT NULL,
    pontos_turisticos_idPontos INT NOT NULL,
    PRIMARY KEY (telefone , pontos_turisticos_idPontos)
     );
   
CREATE TABLE calendario (
    idCalendario INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    data_inicial DATE NULL,
    data_final DATE NULL,
    viagem_idViagem INT NOT NULL,
    pontos_turisticos_idPontos INT NOT NULL,
    PRIMARY KEY (idCalendario)
     );
     
CREATE TABLE despesa (
    idDespesa INT NOT NULL AUTO_INCREMENT,
    data_hora DATETIME NULL,
    link VARCHAR(100) NULL,
    email VARCHAR(100) NULL,
    local_armazenar VARCHAR(100) NULL,
    viagem_idViagem INT NOT NULL,
    tipo_despesa_idTipo INT NOT NULL,
    PRIMARY KEY (idDespesa)
     );
     
CREATE TABLE tipo_despesa (
    idTipo INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    PRIMARY KEY (idTipo)
     );
     
CREATE TABLE necessidade (
    idNecessidade INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    PRIMARY KEY (idNecessidade)
     );     
     
CREATE TABLE necessidade_has_pessoa (
    necessidade_idNecessidade INT NOT NULL,
    pessoa_idPessoa INT NOT NULL,
    PRIMARY KEY (necessidade_idNecessidade, pessoa_idPessoa)
     );   
     
CREATE TABLE necessidade_has_pontos_turisticos (
    necessidade_idNecessidade INT NOT NULL,
    pessoa_turisticos_idPontos INT NOT NULL,
    PRIMARY KEY (necessidade_idNecessidade, pessoa_turisticos_idPontos)
     );   

ALTER TABLE pessoa
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem);

ALTER TABLE telefone_pessoa
ADD FOREIGN KEY (pessoa_idPessoa) REFERENCES pessoa(idPessoa);

ALTER TABLE local
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem);

ALTER TABLE pontos_turisticos
ADD FOREIGN KEY (tipo_pontos_idtipo) REFERENCES tipo_pontos(idTipo),
ADD FOREIGN KEY (local_idlocal) REFERENCES local(idlocal);

ALTER TABLE telefone_ponto
ADD FOREIGN KEY (pontos_turisticos_idpontos) REFERENCES pontos_turisticos(idPontos);

ALTER TABLE calendario
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem),
ADD FOREIGN KEY (pontos_turisticos_idPontos) REFERENCES pontos_turisticos(idPontos);

ALTER TABLE despesa
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem),
ADD FOREIGN KEY (tipo_despesa_idTipo) REFERENCES tipo_despesa(idTipo);

ALTER TABLE necessidade_has_pessoa
ADD FOREIGN KEY (necessidade_idNecessidade) REFERENCES necessidade(idNecessidade),
ADD FOREIGN KEY (pessoa_idPessoa) REFERENCES pessoa(idPessoa);

ALTER TABLE necessidade_has_pontos_turisticos
ADD FOREIGN KEY (necessidade_idNecessidade) REFERENCES necessidade(idNecessidade),
ADD FOREIGN KEY (pessoa_turisticos_idPontos) REFERENCES pontos_turisticos(idPontos);
