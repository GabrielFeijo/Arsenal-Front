
-- $2a$10$DCqrvsn7WsABdoaE4HW3GOstUPEpCBtmhEEsW4R.slFSGRSNAvfNW
-- Senha: Teste


--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `phonenumber`, `CPF`, `birthdate`, `schooling`, `gender`, `admin`, `lastlogin`) VALUES
(1, '2', '2@2.COM', '$2a$10$27rl0Qo3JKkPJ/p9Rw7oZeATEE4qNlN2IYoLyLe5WExKO9a/8uePO', '(12', '12', '2022-09-08', 'Superior Completo', 'masculino', 0, '2022-09-19 09:28:49'),
(2, 'Gabriel da SIlva Feijó', 'mototeste33@gmail.com', '$2a$10$9YE1S1s.yTYCfJTr8Sd1f.HloTVJiL/yjVSO0ivI81Pmaiht/ZVP2', '(11) 1 1111-1111', '222.222.222-23', '2022-09-07', 'Superior Completo', 'masculino', 0, '2022-09-19 09:29:44'),
(3, 'Alana pinherio', 'alana@hotmail.com', '$2a$10$QpfUPoia42M7VGKhoLBN4.iJ.dWZjWZG0mzgnBdEdTj6WY3pjd31S', '(12', '122', '2022-09-06', 'Superior Completo', 'masculino', 0, '2022-09-19 09:38:58'),
(4, 'Gabriel ', 'gabriel@gg.com', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(12) 3', '123', '2022-08-31', 'Superior Completo', 'masculino', 5, '2022-09-19 09:28:49'),
(5, 'teste', 'gabrielteste@gg.com', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(12', '124.44', '2022-09-08', 'Superior Completo', 'masculino', 0, '2022-09-19 09:28:49'),
(6, 'Jao Carlos', 'jota@gg.com', '$2a$10$S3quCrSKM.broAodTH25aucVw6cM9JsrOyqOi1QYzngUZRnGZM..C', '(11) 1 1111-1111', '421', '2022-08-31', 'Superior Completo', 'masculino', 0, '2022-09-25 16:57:13'),
(7, 'Jao Carlos', 'jota@gg.com', '$2a$10$S3quCrSKM.broAodTH25aucVw6cM9JsrOyqOi1QYzngUZRnGZM..C', '(11) 1 1111-1111', '421', '2022-08-31', 'Superior Completo', 'masculino', 0, '2022-09-25 16:57:13'),
(8, 'Jao Carlos', 'jota@gg.com', '$2a$10$S3quCrSKM.broAodTH25aucVw6cM9JsrOyqOi1QYzngUZRnGZM..C', '(11) 1 1111-1111', '421', '2022-08-31', 'Superior Completo', 'masculino', 0, '2022-09-25 16:57:13'),
(9, 'Jao Carlos', 'jota@gg.com', '$2a$10$S3quCrSKM.broAodTH25aucVw6cM9JsrOyqOi1QYzngUZRnGZM..C', '(11) 1 1111-1111', '421', '2022-08-31', 'Superior Completo', 'masculino', 0, '2022-09-25 16:57:13'),
(10, 'Jao Carlos', 'jota@gg.com', '$2a$10$S3quCrSKM.broAodTH25aucVw6cM9JsrOyqOi1QYzngUZRnGZM..C', '(11) 1 1111-1111', '421', '2022-08-31', 'Superior Completo', 'masculino', 0, '2022-09-25 16:57:13');


--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id`, `ownerid`, `city`, `UF`, `streetaddress`, `number`, `CEP`, `complement`) VALUES
(1, 1, '21', 'AP', '21', 21, '21', '21'),
(2, 2, 'Recife', 'PE', '22', 11, '1', '1'),
(3, 3, 'Recife', 'PE', 'a', 1, '1', '1'),
(4, 4, '123', 'AL', '123', 123, '123', '123'),
(5, 5, 'Recife', 'AL', '22', 21, '21', '22'),
(6, 6, '21', 'AL', '21', 1, '21', '2'),
(7, 7, '21', 'AL', '21', 1, '21', '2'),
(8, 8, '21', 'AL', '21', 1, '21', '2'),
(9, 9, '21', 'AL', '21', 1, '21', '2'),
(10, 10, '21', 'AL', '21', 1, '21', '2');

--
-- Extraindo dados da tabela `trilha`
--

INSERT INTO `trilha` (`id`, `userid`, `nivel`, `modulo`) VALUES
(1, 1, 'Prototipo', 'Trilha a partir da Proposta de Valor'),
(2, 2, 'Ideação', 'Trilha a partir da Persona'),
(3, 3, 'Gabriel', 'Trilha a partir do descobrimento do problema'),
(4, 4, 'Protótipo', 'Trilha a partir da Prototipação'),
(5, 5, 'Protótipo', 'Trilha de produto'),
(6, 6, 'Estaca Zero', 'Trilha a partir do descobrimento do problema'),
(7, 7, 'Estaca Zero', 'Trilha a partir do descobrimento do problema'),
(8, 8, 'Estaca Zero', 'Trilha a partir do descobrimento do problema'),
(9, 9, 'Estaca Zero', 'Trilha a partir do descobrimento do problema'),
(10, 10, 'Estaca Zero', 'Trilha a partir do descobrimento do problema');




--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `trilha`, `url`, `name`) VALUES
(1, 'Trilha a partir da Persona', 'wUC3WitxjGE', 'O que é Persona?'),
(2, 'Trilha a partir da Proposta de Valor', 'ukSBRtsyiYs', 'PROPOSTA DE VALOR: O Que é?'),
(3, 'Trilha a partir da Prototipação', 'wAlWUYvqUdI', 'O que é prototipação?'),
(4, 'Trilha a partir de MVP', '0JNoeQr0Z8s', 'O que é MVP e como fazer em uma empresa?'),
(5, 'Trilha de Validação', 'NAWM6BK1Qc0', 'Como validar uma ideia de negócio?'),
(6, 'Trilha de produto', 'Z9OiS9xv_iY', 'Como apresentar seu Produto?'),
(7, 'Trilha a partir do descobrimento do problema', '_r0VX-aU_T8', 'O processo de Design Thinking'),
(8, 'Trilha a partir de validação da ideia', 'vHvpcs7aTDo', 'Como validar uma ideia de negócio?'),
(9, 'Trilha a partir da ideação', '6Czy58263RE', 'Design Thinking - Ideação');

--
-- Extraindo dados da tabela `questions`
--

INSERT INTO `questions` (`id`, `question`, `answers`, `nextid`) VALUES
(1, 'Em que nível você acredita que se encontra?', 'null', '0'),
(2, 'Você sabe dizer se sua ideia resolve um problema real do mercado?', '[\"Sim, e posso provar!\",\"Não\"]', '[\"3\",\"12\"]'),
(3, 'Você já definiu seu segmento de cliente que sente esse problema?', '[\"Sim\",\"Não\",\"Não sei dizer\"]', '[4,\"Persona\",\"Persona\"]'),
(4, 'Você já desenvolveu uma persona que represente esse segmento de cliente?', '[\"Sim\",\"Não\"]', '[5,\"Persona\"]'),
(5, 'Você já tem uma proposta de valor para essa persona usar sua ideia?', '[\"Sim\",\"Não\"]', '[6,\"Proposta de valor\"]'),
(6, 'Você já consegue desenhar um esboço da solução, pensando em funcionalidades dessa ideia?', '[\"Sim\",\"Não\"]', '[7,\"Prototipação\"]'),
(7, 'Você considera que já possui um protótipo?', '[\"Sim\",\"Não\"]', '[8,\"Prototipação\"]'),
(8, 'Esse prototipo já pode ser comercializado??', '[\"Sim\",\"Não\"]', '[9,\"MVP\"]'),
(9, 'Você conseguiu validar a sua ideia de produto/servico final com ele?', '[\"Sim\",\"Não\"]', '[10,\"Validação\"]'),
(10, 'Já existem algumas funcionalidades no produto/serviço?', '[\"Sim\",\"Não\"]', '[\"Produto\",\"MVP\"]'),
(11, 'Você já identificou um problema/desafio que quer resolver?', '[\"Sim\",\"Não\"]', '[12,\"Descobrimento do problema\"]'),
(12, 'Qual tamanho do problema/desafio?', '[\"Impacta menos de cem pessoas\",\"Impacta centenas pessoas\",\"Impacta milhares de pessoas\",\"Impacta bilhões de pessoas\"]', '[\"Descobrimento do problema\",13,13,13]'),
(13, 'Você tem dados de fontes seguras que comprovam a relevância desse problema ou desafio?', '[\"Sim\",\"Não\",\"Não tenho certeza\"]', '[14,\"Descobrimento do problema\",\"Descobrimento do problema\"]'),
(14, 'Você já consolidou esses dados sobre o desafio/problema da sua ideia, realizou pesquisas e entrevistou pessoas impactadas por ele?', '[\"Sim\",\"Não\",\"Não tenho certeza\"]', '[\"15\",\"Descobrimento do problema\",\"Descobrimento do problema\"]'),
(15, 'Você já tem uma ideia de solução para esse desafio/ problema?', '[\"Sim\",\"Não\"]', '[\"Validação da ideia\",\"Ideação\"]');



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
