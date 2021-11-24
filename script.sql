CREATE SCHEMA `agencia` ;

Use agencia;

CREATE TABLE pessoa(
    idPessoa INT NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Sexo VARCHAR(45) NULL,
    DataNascimento date NULL,
    Endereco VARCHAR(45) NULL,
    Email VARCHAR(45) NULL,
    viagem_idViagem INT NOT NULL,
    PRIMARY KEY(idPessoa)
    );
    
CREATE TABLE telefonepessoa (
    Telefone VARCHAR(45) NOT NULL,
    pessoa_idPessoa INT NOT NULL,
    PRIMARY KEY (Telefone , pessoa_idPessoa)
     );
    
CREATE TABLE viagem (
    idViagem INT NOT NULL,
    Nome VARCHAR(45) NULL,
    DataInicial datetime(6) NOT NULL,
    DataFinal datetime(6) NOT NULL,
    PRIMARY KEY (idViagem)
     );
     
CREATE TABLE local (
    idlocal INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    viagem_idViagem INT NOT NULL,
    PRIMARY KEY (idlocal)
     );
     
CREATE TABLE pontos_turisticos (
    idpontos INT NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Horario VARCHAR(45) NULL,
    Custo DECIMAL(8,2) NULL,
    Faixa INT NULL, 
    tipopontos_idtipoponto INT NOT NULL,
    local_idlocal INT NOT NULL,
    PRIMARY KEY (idpontos)
     );
     
CREATE TABLE tipopontos (
    idtipoponto INT NOT NULL,
    Descricao VARCHAR(45) NOT NULL,
    PRIMARY KEY (idtipoponto)
     );
     
              
CREATE TABLE telefoneponto (
    Telefone VARCHAR(45) NOT NULL,
    pontos_turisticos_idpontos INT NOT NULL,
    PRIMARY KEY (Telefone , pontos_turisticos_idpontos)
     );
   
CREATE TABLE calendario (
    idcalendario INT NOT NULL,
    Descricao VARCHAR(100) NULL,
    data_inicial DATETIME NULL,
    data_final DATETIME NULL,
    viagem_idViagem INT NOT NULL,
    pontos_turisticos_idpontos INT NOT NULL,
    PRIMARY KEY (idcalendario)
     );
     
CREATE TABLE despesa (
    iddespesa INT NOT NULL,
    data_hora DATETIME NULL,
    link VARCHAR(100) NULL,
    email VARCHAR(100) NULL,
    arquivo VARCHAR(100) NULL,
    viagem_idViagem INT NOT NULL,
    tipodespesa_idtipodespesa INT NOT NULL,
    PRIMARY KEY (iddespesa)
     );
     
CREATE TABLE tipodespesa (
    idtipodespesa INT NOT NULL,
    Descricao VARCHAR(100) NULL,
    PRIMARY KEY (idtipodespesa)
     );
     
CREATE TABLE necessidade (
    idnecessidade INT NOT NULL,
    Descricao VARCHAR(100) NULL,
    PRIMARY KEY (idnecessidade)
     );     
     
CREATE TABLE necessidade_has_pessoa (
    necessidade_idnecessidade INT NOT NULL,
    pessoa_idPessoa INT NOT NULL,
    PRIMARY KEY (necessidade_idnecessidade, pessoa_idPessoa)
     );   
     
CREATE TABLE necessidade_has_pontos_turisticos (
    necessidade_idnecessidade INT NOT NULL,
    pessoa_turisticos_idpontos INT NOT NULL,
    PRIMARY KEY (necessidade_idnecessidade, pessoa_turisticos_idpontos)
     );   

ALTER TABLE pessoa
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem);

ALTER TABLE telefonepessoa
ADD FOREIGN KEY (pessoa_idPessoa) REFERENCES pessoa(idPessoa);

ALTER TABLE local
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem);

ALTER TABLE pontos_turisticos
ADD FOREIGN KEY (tipopontos_idtipoponto) REFERENCES tipopontos(idtipoponto),
ADD FOREIGN KEY (local_idlocal) REFERENCES local(idlocal);

ALTER TABLE telefoneponto
ADD FOREIGN KEY (pontos_turisticos_idpontos) REFERENCES pontos_turisticos(idpontos);

ALTER TABLE calendario
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem),
ADD FOREIGN KEY (pontos_turisticos_idpontos) REFERENCES pontos_turisticos(idpontos);

ALTER TABLE despesa
ADD FOREIGN KEY (viagem_idViagem) REFERENCES viagem(idViagem),
ADD FOREIGN KEY (tipodespesa_idtipodespesa) REFERENCES tipodespesa(idtipodespesa);

ALTER TABLE necessidade_has_pessoa
ADD FOREIGN KEY (necessidade_idnecessidade) REFERENCES necessidade(idnecessidade),
ADD FOREIGN KEY (pessoa_idPessoa) REFERENCES pessoa(idPessoa);

ALTER TABLE necessidade_has_pontos_turisticos
ADD FOREIGN KEY (necessidade_idnecessidade) REFERENCES necessidade(idnecessidade),
ADD FOREIGN KEY (pessoa_turisticos_idpontos) REFERENCES pontos_turisticos(idpontos);

