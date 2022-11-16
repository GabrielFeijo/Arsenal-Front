use arsenal2;
select * from usuarios; 
update usuarios set admin = 5 where id =1;
select * from endereco;

INSERT INTO `usuarios` (`id`,`nome`,`CPF`, `email`, `senha`, `telefone`, `data_nasc`, `escolaridade`, `genero`, `admin`) VALUES
(1,'Gabriel da Silva Feijó', '123.456.789-01', 'gabriel@gg.com', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(11) 1 1111-1111',  '2002-04-06', 'Superior Completo', 'masculino', 5),
(2,'Mateus Yuri Dias', '403.218.968-40', 'mateus_dias@corp.inf.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(95) 98240-5487', '1977-09-12', 'Superior Completo', 'masculino', 0),
(3,'Regina Betina Marlene Moreira', '314.497.877-97', 'regina-moreira90@betti.com.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(81) 98205-5413', '1963-07-26', 'Superior Completo', 'Feminino', 0),
(4,'Alexandre João Caldeira', '011.688.249-23', 'alexandre.joao.caldeira@startingfitness.com.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(96) 99911-7777', '1954-04-17', 'Superior Completo', 'Masculino', 0),
(5,'Vicente Julio Marcelo Ferreira', '796.417.507-63', 'vicente_ferreira@vilasites.com.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(61) 99772-6348', '1991-10-14', 'Superior Completo', 'Masculino', 0),
(6,'Liz Elza Araújo', '550.460.552-01', 'liz.elza.araujo@univap.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(83) 99903-0379', '1946-06-21', 'Superior Completo', 'Feminino', 0),
(7,'Fábio Osvaldo Anderson Nascimento', '292.158.444-14', 'fabioosvaldonascimento@novotempo.org.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(84) 98255-6013', '1976-09-19', 'Superior Completo', 'Masculino', 0),
(8,'Milena Andrea Isis Costa', '105.704.520-90', 'milena-costa78@athoscontabil.com.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(51) 98460-4850', '1993-01-05', 'Superior Completo', 'Feminino', 0),
(9,'Clarice Priscila Figueiredo', '851.002.842-77', 'claricepriscilafigueiredo@mpeventos.com.br', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(54) 99740-8686', '1951-07-08', 'Superior Completo', 'Feminino', 0),
(10,'Carlos Eduardo Yago Viana', '057.838.589-94', 'carlos_eduardo_viana@aprimor.com', '$2a$10$TqIuI9z/hEHJYlF/we2gTOUuOlaTJksZtBEk7ma8NioNr1Le.T7Qq', '(96) 99774-5583', '1983-06-08', 'Superior Completo', 'Masculino', 0)
;

INSERT INTO `endereco` (`usuario_id`, `cep`, `cidade`,  `UF`, `rua`,`numero`, `complemento`) VALUES
(1, '50751-125', 'Recife',  'PE', 'Rua adilson Santos Xavier', 4,null);


INSERT INTO `endereco` (`usuario_id`, `cep`, `cidade`,  `UF`, `rua`,`numero`, `complemento`) VALUES
(1, '50751-125', 'Recife',  'PE', 'Rua adilson Santos Xavier', 4,null),
(2, '69314-338', 'Boa Vista',  'RR', 'Rua Raimundo de Castro Barros', 721,null),
(3, '52050-970', 'Recife',  'PE', 'Rua José Clementino 106', 130,'Torre B'),
(4, '68903-881', 'Macapá',  'AP', 'Alameda Meridional do Norte', 167,null),
(5, '73081-685', 'Brasília',  'DF', 'Quadra QMS 11C Módulo B', 601,'Bloco A'),
(6, '58055-018', 'João Pessoa',  'PB', 'Avenida Hilton Souto Maior', 727,null),
(7, '59156-222', 'Parnamirim',  'RN', 'Rua Caminho da Lapa', 356,null),
(8, '94435-580', 'Viamão',  'RS', 'Rua Salto do Jacui', 517,"Apt. 05"),
(9, '99700-548', 'Erechim', 'RS', 'Rua José Pigozzo', 989,"Bloco C"),
(10, '68909-877', 'Macapá',  'AP', 'Travessa São Benedito', 120,"Bloco D")
;




INSERT INTO `perguntas` (`idpergunta`, `pergunta`, `alternativas`, `proximapergunta`) VALUES
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

INSERT INTO `trilha` (`idtrilha`, `nivel`, `modulo`) VALUES

(1, 'Trilha a partir da Persona',null),
(2, 'Trilha a partir da Proposta de Valor',null),
(3, 'Trilha a partir da Prototipação',null),
(4, 'Trilha a partir de MVP',null),
(5, 'Trilha de Validação',null),
(6, 'Trilha de produto',null),
(7, 'Trilha a partir do descobrimento do problema',null),
(8, 'Trilha a partir de validação da ideia',null),
(9, 'Trilha a partir da ideação',null);


INSERT INTO `videos` (`idvideo`,  `url`, `titulo`,`trilha_idtrilha`) VALUES
(1, 'wUC3WitxjGE', 'O que é Persona?',1),
(2, 'ukSBRtsyiYs', 'PROPOSTA DE VALOR: O Que é?',2),
(3, 'wAlWUYvqUdI', 'O que é prototipação?',3),
(4, '0JNoeQr0Z8s', 'O que é MVP e como fazer em uma empresa?',4),
(5, 'NAWM6BK1Qc0', 'Como validar uma ideia de negócio?',5),
(6, 'Z9OiS9xv_iY', 'Como apresentar seu Produto?',6),
(7, '_r0VX-aU_T8', 'O processo de Design Thinking',7),
(8,'vHvpcs7aTDo', 'Como validar uma ideia de negócio?',8),
(9, '6Czy58263RE', 'Design Thinking - Ideação',9);

use arsenal;
select * from usuarios;
select * from endereco;
select * from perguntas;
select * from trilha;
select * from videos;
