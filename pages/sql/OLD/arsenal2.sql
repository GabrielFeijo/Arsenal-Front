-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `arsenal`
--

CREATE SCHEMA IF NOT EXISTS `arsenal`;
USE `arsenal`;

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `phonenumber` varchar(50) NOT NULL,
  `CPF` varchar(20) NOT NULL,
  `birthdate` date NOT NULL,
  `schooling` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `users`
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `CPF` (`CPF`);

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `pass`, `phonenumber`, `CPF`, `birthdate`, `schooling`, `gender`) VALUES
(1, 'Gabriel da Silva Feijó', 'FEIJO123@GMAIL.COM', '$2y$10$nEhZ/N.yYD.7VzebMpDDU.t8Z29YVw1yRhw6VZ2RI7hvPkJGsrh1W', '(81) 9 8419-7937', '123.123.231-21', '2022-06-09', 'Médio Completo', 'Feminino'),
(2, 'Junior Silva', 'junior@gg.com', '$2y$10$2VGyJIcPQ0Gwq3XKXU9wYuwZrThPXChTViiZJiuz8dVyAsHhA.Zo2', '(88) 7 8787-8878', '213.412.412-42', '2022-05-31', 'Superior Incompleto', 'masculino'),
(3, 'Joana ', 'joana@gg.com', '$2y$10$pUTJ.f2OkCaUei.SGZPvn.qRsPajAQs3zQPGNNmNHfMq3k7NQVbg6', '(12) 3 2214-12', '214.312.421-42', '2022-05-31', 'Superior Completo', 'masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `city` varchar(255) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `streetaddress` varchar(255) NOT NULL,
  `number` int(50) NOT NULL,
  `CEP` varchar(20) NOT NULL,
  `complement` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `address`
--

INSERT INTO `address` (`id`, `city`, `UF`, `streetaddress`, `number`, `CEP`, `complement`) VALUES
(1, 'Maceió', 'AL', 'Rua Palmares', '2105', '12321-321', 'Casa'),
(2, 'Penedo', 'AL', 'Avenida Prazeres', '1450', '12321-339', 'Prédio B'),
(3, 'Manaus', 'AM', 'Rua 21 de Abril', '03', '12321-457', 'Casa Bloco C');

-- --------------------------------------------------------

--
-- Estrutura da tabela `trilha`
--

CREATE TABLE `trilha` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `nivel` varchar(40) NOT NULL,
  `modulo` varchar(100) DEFAULT 'NOT DEFINED'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `trilha`
--

INSERT INTO `trilha` (`id`, `userid`, `nivel`, `modulo`) VALUES
(3, 1, 'Prototipo', 'Trilha a partir da Proposta de Valor'),
(4, 2, 'Ideação', 'Trilha a partir da Persona'),
(5, 3, 'Ideação', 'Trilha a partir do descobrimento do problema');





--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `trilha` varchar(200) NOT NULL,
  `url` varchar(40) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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


-- --------------------------------------------------------
--
-- Estrutura da tabela `questions`
--


CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(300) NOT NULL,
  `answers` varchar(255) NOT NULL,
  `nextid` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--


--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

  
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Índices para tabela `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `trilha`
--
ALTER TABLE `trilha`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_userid` (`userid`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);


--
-- AUTO_INCREMENT de tabela `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `trilha`
--
ALTER TABLE `trilha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Limitadores para a tabela `trilha`
--
ALTER TABLE `trilha`
  ADD CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
