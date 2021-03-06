CREATE SCHEMA `agencia` ;

Use agencia;

CREATE TABLE pessoa(
    id_pessoa INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sexo enum('M','F') NULL,
    data_nascimento date NULL,
    endereco VARCHAR(45) NULL,
    email VARCHAR(45) NULL,
    id_viagem INT NOT NULL,
    PRIMARY KEY(id_pessoa)
    );
    
CREATE TABLE telefone_pessoa (
	id_tel_pessoa INT NOT NULL,
    telefone VARCHAR(45) NOT NULL,   
    PRIMARY KEY (id_tel_pessoa, telefone)
     );
     
  
CREATE TABLE viagem (
    id_viagem INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NULL,
    data_inicial date NOT NULL,
    data_final date NOT NULL,
    PRIMARY KEY (id_viagem)
     );
     
CREATE TABLE local (
    id_local INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    id_viagem INT NOT NULL,
    PRIMARY KEY (id_local)
     );
     
CREATE TABLE pontos_turisticos (
    id_pontos INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(45) NOT NULL,
    horario VARCHAR(45) NULL,
    custo VARCHAR(45) NULL,
    faixa VARCHAR(45) NULL, 
    id_tipo_pontos INT NOT NULL,
    id_local INT NOT NULL,
    PRIMARY KEY (id_pontos)
     );
     
CREATE TABLE tipo_pontos (
    id_tipo_pontos INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_tipo_pontos)
     );
     
              
CREATE TABLE telefone_ponto (
    id_tel_pontos INT NOT NULL,
    telefone VARCHAR(45) NOT NULL,
    PRIMARY KEY (id_tel_pontos, telefone)
     );
   
CREATE TABLE calendario (
    id_calendario INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    data_inicial DATETIME NULL,
    data_final DATETIME NULL,
    id_viagem INT NOT NULL,
    id_pontos INT NOT NULL,
    PRIMARY KEY (id_calendario)
     );
     
CREATE TABLE despesa (
    id_despesa INT NOT NULL AUTO_INCREMENT,
    data_hora DATETIME NULL,
    link VARCHAR(100) NULL,
    email VARCHAR(100) NULL,
    local_armazenar VARCHAR(100) NULL,
    custo DECIMAL(6,2) NULL,
    id_viagem INT NOT NULL,
    id_tipo_despesa INT NOT NULL,
    PRIMARY KEY (id_despesa)
     );
     
CREATE TABLE tipo_despesa (
    id_tipo_despesa INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    PRIMARY KEY (id_tipo_despesa)
     );
     
CREATE TABLE necessidade (
    id_necessidade INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(100) NULL,
    PRIMARY KEY (id_necessidade)
     );     
     
CREATE TABLE necessidade_has_pessoa (
    id_necessidade INT NOT NULL,
    id_pessoa INT NOT NULL,
    PRIMARY KEY (id_necessidade, id_pessoa)
     );   
     
CREATE TABLE necessidade_has_pontos_turisticos (
    id_necessidade INT NOT NULL,
    id_pontos INT NOT NULL,
    PRIMARY KEY (id_necessidade, id_pontos)
     );   

ALTER TABLE pessoa
ADD FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem);

ALTER TABLE telefone_pessoa
ADD FOREIGN KEY (id_tel_pessoa) REFERENCES pessoa(id_pessoa);

ALTER TABLE local
ADD FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem);

ALTER TABLE pontos_turisticos
ADD FOREIGN KEY (id_tipo_pontos) REFERENCES tipo_pontos(id_tipo_pontos),
ADD FOREIGN KEY (id_local) REFERENCES local(id_local);

ALTER TABLE telefone_ponto
ADD FOREIGN KEY (id_tel_pontos) REFERENCES pontos_turisticos(id_pontos);

ALTER TABLE calendario
ADD FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem),
ADD FOREIGN KEY (id_pontos) REFERENCES pontos_turisticos(id_pontos);

ALTER TABLE despesa
ADD FOREIGN KEY (id_viagem) REFERENCES viagem(id_viagem),
ADD FOREIGN KEY (id_tipo_despesa) REFERENCES tipo_despesa(id_tipo_despesa);

ALTER TABLE necessidade_has_pessoa
ADD FOREIGN KEY (id_necessidade) REFERENCES necessidade(id_necessidade),
ADD FOREIGN KEY (id_pessoa) REFERENCES pessoa(id_pessoa);

ALTER TABLE necessidade_has_pontos_turisticos
ADD FOREIGN KEY (id_necessidade) REFERENCES necessidade(id_necessidade),
ADD FOREIGN KEY (id_pontos) REFERENCES pontos_turisticos(id_pontos);

ALTER TABLE pessoa
AUTO_INCREMENT=1000;

ALTER TABLE viagem
AUTO_INCREMENT=1000;

ALTER TABLE local
AUTO_INCREMENT=1000;

ALTER TABLE pontos_turisticos
AUTO_INCREMENT=1000;

ALTER TABLE tipo_pontos
AUTO_INCREMENT=1000;

ALTER TABLE despesa
AUTO_INCREMENT=1000;

ALTER TABLE tipo_despesa
AUTO_INCREMENT=1000;

ALTER TABLE necessidade
AUTO_INCREMENT=1000;
