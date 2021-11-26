Use agencia;

INSERT INTO viagem (`nome`,`data_inicial`,`data_final`)
VALUES
	('Natal no Sul','2021-12-25','2022-01-24'),
	('Férias 2021','2021-07-01','2021-07-24'),
	('Viagem a Grandes Cidades','2021-09-05','2021-09-12');
      
  INSERT INTO pessoa ( `nome`, `sexo`, `data_nascimento`, `endereco`, `email`,`id_viagem`)
  VALUES
    ('Vitória Ribeiro.', 'F','1958-08-08','Rua Paulo Lacerda 1587', 'vitoriaferreira@hotmail.com','1'),
    ('Miriam Seng', 'F','1990-09-03','1804 Sycamore Street', 'miriamcseng@teleworm.us','1'),
	('Kauan Fernandes', 'M','1989-10-25','Travessa Parapitinga 389', 'kauanmartins@hotmail.com','2'),
    ('Nicole Castro', 'F','1996-07-31','Rua Quinze-A 1531', 'nicolesouzacastro@hotmail.com','2'),
    ('Eduardo Pereira', 'M','1999-08-15','Rodovia BR-104 27', 'eduardo@hotmail.com','2');  
    
    INSERT INTO telefone_pessoa (`id_tel_pessoa`,`telefone`)
    VALUES
    ('1','(81) 9222-7971'),
    ('2','(27) 6647-8954'),
	('3','(14) 7602-3292'),
    ('4','(11) 3438-8090'),
    ('5','(81) 9042-3550');
    
	INSERT INTO local (`id_local`,`nome`,`id_viagem`)
    VALUES
    ('1','Gramado','1'),
    ('2','Fortaleza','2'),
    ('3','Canoa Quebrada','2'),
	('4','Jericoacoara','2'),
    ('5','São Paulo','3'),
    ('6','Rio de Janeiro','3');
    
	INSERT INTO tipo_pontos (`id_tipo_pontos`,`descricao`)
    VALUES
    ('1','Restaurante'),
    ('2','Monumento'),
    ('3','Boate'),
	('4','Parque');
    
    INSERT INTO pontos_turisticos ( `id_pontos`,`nome`, `horario`, `custo`, `faixa`,`id_tipo_pontos`,`id_local`)
	VALUES
    ('1', 'Abstrato Wine Bar','16:00 - 23:00','R$ 150 - R$ 500', 'livre','1','1'),
    ('2', 'Mini Mundo','09:00 - 17:00','R$ 25 - R$ 45', 'livre','2','1'),
    ('3', 'Must Gramado','22:00 - 03:00','R$ 30 - R$ 120', '18 anos','3','1'),
    ('4', 'Lago Negro','24h','gratuito', 'livre','4','1'),
    ('5', 'Coco Bambu','16:00 - 23:00','R$ 150 - R$ 500', 'livre','1','2'),
    ('6', 'Estatua de Iracema','24h','gratuito', 'livre','2','2'),
    ('7', 'Chop do Bexiga','22:00 - 03:00','R$ 30 - R$ 120', '18 anos','3','2'),
    ('8', 'Parque do Cocó','24h','gratuito', 'livre','4','2'),
   	('9', 'O Nain','11:00 - 17:00','R$ 50 - R$ 300', 'livre','1','3'),
    ('10', 'Arco de Canoa Quebrada','24h','gratuito', 'livre','2','3'),
    ('11', 'The Beat','22:00 - 03:00','R$ 15 - R$ 120', '18 anos','3','3'),
    ('12', 'Duna do Pôr-do-Sol','24h','gratuito', 'livre','4','3'), 
    ('13', 'Freddyssimo','17:00 - 23:00','R$ 50 - R$ 300', 'livre','1','4'),
    ('14', 'Pedra Furada','24h','gratuito', 'livre','2','4'),
    ('15', 'Café Jeri','22:00 - 03:00','R$ 50 - R$ 320', '18 anos','3','4'),
    ('16', 'Duna do Pôr-do-Sol','24h','gratuito', 'livre','4','4'), 
    ('17', 'Bela Paulista','24h','R$ 25 - R$ 100', 'livre','1','5'),
    ('18', 'Monumento à Independência','24h','gratuito', 'livre','2','5'),
    ('19', 'Tokyo SP','22:00 - 03:00','R$ 50 - R$ 320', '18 anos','3','5'),
    ('20', 'Parque Ibirapuera','24h','gratuito', 'livre','4','5'),
    ('21', 'Tori','11:00 - 17:00','R$ 50 - R$ 300','1','6'),
    ('22', 'Pão de Açucar','08:00 - 21:00','R$ 40 - R$ 80', 'livre','2','6'),
    ('23', 'Banana Jack','22:00 - 03:00','R$ 50 - R$ 320', '18 anos','3','6'),
    ('24', 'Parque Lage','24h','gratuito', 'livre','4','6');  
