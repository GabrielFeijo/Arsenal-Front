

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--
CREATE TABLE IF NOT EXISTS `users`(
    `id` int(11) NOT NULL,
    `name` varchar(255) NOT NULL,
    `email` varchar(255) NOT NULL,
    `pass` varchar(255) NOT NULL,
    `phonenumber` varchar(255) NOT NULL,
    `CPF` varchar(20) NOT NULL,
    `birthdate` date NOT NULL,
    `schooling` varchar(255) NOT NULL,
    `gender` varchar(255) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Estrutura para tabela `adress`
--
CREATE TABLE IF NOT EXISTS `adress`(
    `id` int(11) NOT NULL,
    `city` varchar(255) NOT NULL,
    `UF` varchar(2) NOT NULL,
    `streetAdress` varchar(255) NOT NULL,
    `number` varchar(255) NOT NULL,
    `CEP` varchar(20) NOT NULL,
    `complement` varchar(255) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
--
-- Estrutura para tabela `trilha`
--
CREATE TABLE IF NOT EXISTS `trilha`(
    `id` int(11) NOT NULL,
    `userid` int(11) NOT NULL,
    `nivel` varchar(40) NOT NULL,
    `modulo` varchar(100) NULL DEFAULT "NOT DEFINED"

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Estrutura para tabela `videos`
--

CREATE TABLE IF NOT EXISTS `videos`(
    `id` int(11) NOT NULL,
    `trilha` varchar(200) NOT NULL,
    `url` varchar(40) NOT NULL,
    `name` varchar(200) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Estrutura para tabela `questions`
--

CREATE TABLE IF NOT EXISTS `questions`(
    `id` int(11) NOT NULL,
    `question` varchar(300) NOT NULL,
    `answers` varchar(255) NOT NULL,
    `nextid` int(11) NOT NULL

) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



--
-- Índices para tabelas `users`,`adress`,`trilha`,`trilha`,`viodes`
--
ALTER TABLE `users` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);

ALTER TABLE `adress` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);

ALTER TABLE `trilha` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);

ALTER TABLE `videos` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);

ALTER TABLE `questions` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, ADD PRIMARY KEY (`id`);

ALTER TABLE `trilha` ADD CONSTRAINT `fk_userid` FOREIGN KEY (`userid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;




INSERT INTO `questions`( `question`, `answers`, `nextid`) VALUES 
('Em que nível você acredita que se encontra?','null',0),
('Você sabe dizer se sua ideia resolve um problema real do mercado?','null',0),
('Você já definiu seu segmento de cliente que sente esse problema?','null',0),
('Você já desenvolveu uma persona que represente esse segmento de cliente?','null',0),
('Você já tem uma proposta de valor para essa persona usar sua ideia?','null',0),
('Você já consegue desenhar um esboço da solução, pensando em funcionalidades dessa ideia?','null',0),
('Você considera que já possui um protótipo?','null',0),
('Esse prototipo já pode ser comercializado??','null',0),
('Você conseguiu validar a sua ideia de produto/servico final com ele?','null',0),
('Já existem algumas funcionalidades no produto/serviço?','null',0),


('Você já identificou um problema/desafio que quer resolver?','null',0),
('Qual tamanho do problema/desafio?','null',0),
('Você tem dados de fontes seguras que comprovam a relevância desse problema ou desafio?','null',0),
('Você já consolidou esses dados sobre o desafio/problema da sua ideia, realizou pesquisas e entrevistou pessoas impactadas por ele?','null',0),
('Você já tem uma ideia de solução para esse desafio/ problema?','null',0);

