Use agencia;

INSERT INTO viagem 
VALUES
    ('1','Natal no Sul','2020-12-25','2021-01-24'),
    ('2','Férias 2021','2021-07-01','2021-07-07'),
    ('3','Viagem a Grandes Cidades','2021-09-05','2021-09-12');
  
  
 INSERT INTO pessoa 
 VALUES
    ('1','Vitória Ribeiro.', 'F','1958-08-08','Rua Paulo Lacerda 1587', 'vitoriaferreira@hotmail.com','1'),
    ('2','Miriam Seng', 'F','1990-09-03','1804 Sycamore Street', 'miriamcseng@teleworm.us','1'),
    ('3','Kauan Fernandes', 'M','1989-10-25','Travessa Parapitinga 389', 'kauanmartins@hotmail.com','2'),
    ('4','Nicole Castro', 'F','1996-07-31','Rua Quinze-A 1531', 'nicolesouzacastro@hotmail.com','2'),
    ('5','Eduardo Pereira', 'M','1999-08-15','Rodovia BR-104 27', 'eduardo@hotmail.com','2');  
    
    
INSERT INTO telefone_pessoa
VALUES
    ('1','(81) 9222-7971'),
    ('2','(27) 6647-8954'), 
    ('3','(14) 7602-3292'),
    ('4','(11) 3438-8090'),
    ('5','(81) 9042-3550');
    
    
INSERT INTO local 
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
    
    
INSERT INTO pontos_turisticos
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
    ('21', 'Tori','11:00 - 17:00','R$ 50 - R$ 300','livre','1','6'),
    ('22', 'Pão de Açucar','08:00 - 21:00','R$ 40 - R$ 80', 'livre','2','6'),
    ('23', 'Banana Jack','22:00 - 03:00','R$ 50 - R$ 320', '18 anos','3','6'),
    ('24', 'Parque Lage','24h','gratuito', 'livre','4','6');  
    
    
INSERT INTO telefone_ponto
VALUES
    ('1', '(19) 6058-7867'),
    ('2', '(88) 2642-2146'),
    ('3', '(85) 3439-4582'),
    ('4', '(85) 3541-1224'),
    ('5', '(85) 2950-1618'),
    ('6', '(85) 2525-9475'),
    ('7', '(88) 3451-9153'),
    ('8', '(88) 2578-8492'),
    ('9', '(88) 2612-2475'),
    ('10', '(85) 3512-7584'),
    ('11', '(88) 2585-9615'),
    ('12', '(88) 3867-4437'), 
    ('13', '(85) 3512-1281'),
    ('14', '(85) 2812-8852'),
    ('15', '(88) 3046-4406'),
    ('16', '(88) 3737-7710'), 
    ('17', '(85) 3312-4845'),
    ('18', '(88) 2281-1671'),
    ('19', '(85) 2311-3397'),
    ('20', '(85) 3330-8648'),
    ('21', '(88) 2188-9837'),
    ('22', '(85) 3058-6704'),
    ('23', '(88) 3529-9870'),
    ('24', '(88) 3071-0328');  
    
    
INSERT INTO necessidade
VALUES
    ('1', 'Rampas'),
    ('2', 'Banheiro Especial'),
    ('3', 'Barras de Apoio'),
    ('4', 'Piso Antiderrapante');
    
    
INSERT INTO tipo_despesa
VALUES
    ('1', 'Passagem'),
    ('2', 'Hospedagem'),
    ('3', 'Alimentação'),
    ('4', 'Aluguel de Carro'),
    ('5', 'Ingresso');
    
    
INSERT INTO despesa
VALUES
    ('1', '2020-12-27','https://www.thefork.com.br/','thefork@gmail.com','celular','1800.89','1','3'),
    ('2', '2020-10-16','https://www.latamairlines.com/','contactlatam@latam.com','celular','1256.00','1','1'),
    ('3', '2020-10-16','https://www.gramadoparkshoteis.com','reservas.bellagramado@gramadoparks.com','computador','1500.00','1','2'),
    ('4', '2020-12-23','https://www.rentalcars.com/','rentalcars@gmail.com','computador','400.00','1','4'),
    ('5', '2020-11-05','https://www.gramadosuaviagem.com.br/','atendimento@gramadosuaviagem.com.br','celular','480.00','1','5'),
    ('6', '2021-05-01','https://www.thefork.com.br/','thefork@gmail.com','celular','2528.49','2','3'),
    ('7', '2020-05-25','https://www.latamairlines.com/','contactlatam@latam.com','celular','2586.00','2','1'),
    ('8', '2020-05-25','https://www.hoteis.com/','hoteis@hoteis.com','computador','1500.00','2','2'),
    ('9', '2020-07-01','https://www.rentalcars.com/','rentalcars@gmail.com','computador','800.00','2','4'),
    ('10', '2020-07-02','https://www.ingresso.com/','ingresso@gmail.com','celular','980.00','2','5'),
    ('11', '2021-09-05','https://www.thefork.com.br/','thefork@gmail.com','celular','800.90','3','3'),
    ('12', '2020-08-15','https://www.latamairlines.com/','contactlatam@latam.com','celular','1200.69','3','1'),
    ('13', '2020-07-26','https://www.hoteis.com/','hoteis@hoteis.com','computador','960.00','3','2'),
    ('14', '2020-09-06','https://www.rentalcars.com/','rentalcars@gmail.com','computador','250.00','3','4'),
    ('15', '2020-08-26','https://www.ingresso.com/','ingresso@gmail.com','celular','150.00','3','5');
    
    
INSERT INTO calendario
VALUES
    ('1', 'Jantar Top','2021-07-01','2021-07-01','2','5'),
    ('2', 'Visitando a Praia','2021-07-02','2021-07-02','2','6'),
    ('3', 'Noite no Bar','2021-07-02','2021-07-03','2','7'),
    ('4', 'Tarde no Parque','2021-07-03','2021-07-03','2','8'),
    ('5', 'Canoa Quebrada','2021-07-03','2021-07-04','2','9'),
    ('6', 'Por-do-Sol','2021-07-04','2021-07-04','2','12'),
    ('7', 'Visitando a Cidade','2021-07-04','2021-07-04','2','10'),
    ('8', 'Balada na Praia','2021-07-04','2021-07-05','2','11'),
    ('9', 'Almoço a Beira-Mar','2021-07-03','2021-07-03','2','9'),
    ('10', 'Jericoacoara','2021-07-03','2021-07-04','2','23'),
    ('11', 'Por-do-Sol em Jeri','2021-07-05','2021-07-05','2','16'),
    ('12', 'Comidinhas','2021-07-06','2021-07-06','2','13'),
    ('13', 'Última Balada','2021-07-06','2021-07-07','2','15');
    
    
INSERT INTO necessidade_has_pessoa
VALUES
    ('1','3'),
    ('1','4'),
    ('2','3'),
    ('2','4'),
    ('3','3'),
    ('3','1'),
    ('4','2');
    
    
INSERT INTO necessidade_has_pontos_turisticos
VALUES
    ('1','1'),
    ('1','2'),
    ('2','3'),
    ('3','14'),
    ('3','6'),
    ('4','7'),
    ('4','1'),
    ('1','9'),
    ('1','8'),
    ('2','9'),
    ('2','17'),
    ('3','5'),
    ('3','23'),
    ('4','14'),
    ('4','24'),
    ('4','22'),
    ('1','17'),
    ('1','16'),
    ('2','23'),
    ('3','11'),
    ('3','22'),
    ('4','15'),
    ('4','20');   
