

--
-- INSERINDO DADOS NA TABELA `videos`
--
START TRANSACTION;

INSERT INTO `videos`(`trilha`, `url`, `name`) VALUES 
('Trilha a partir da Persona','wUC3WitxjGE','O que é Persona?'),
('Trilha a partir da Proposta de Valor','ukSBRtsyiYs','PROPOSTA DE VALOR: O Que é?'),
('Trilha a partir da Prototipação','wAlWUYvqUdI','O que é prototipação?'),
('Trilha a partir de MVP','0JNoeQr0Z8s','O que é MVP e como fazer em uma empresa?'),
('Trilha de Validação','NAWM6BK1Qc0', 'Como validar uma ideia de negócio?'),
('Trilha de produto','Z9OiS9xv_iY','Como apresentar seu Produto?' ),
('Trilha a partir do descobrimento do problema','_r0VX-aU_T8', 'O processo de Design Thinking'),
('Trilha a partir de validação da ideia','vHvpcs7aTDo','Como validar uma ideia de negócio?'),
('Trilha a partir da ideação','6Czy58263RE','Design Thinking - Ideação');

COMMIT;
