-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Set-2022 às 03:37
-- Versão do servidor: 10.4.22-MariaDB
-- versão do PHP: 7.4.29

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
(15, 'Você já tem uma ideia de solução para esse desafio/ problema?', '[\"Sim\",\"Não\"]', '[\"Validação da ideia\",\"Ideação"]')


--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
