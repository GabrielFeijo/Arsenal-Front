-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema arsenal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema arsenal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `arsenal` DEFAULT CHARACTER SET utf8 ;
USE `arsenal` ;

-- -----------------------------------------------------
-- Table `arsenal`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`usuarios` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `CPF` VARCHAR(20) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `telefone` VARCHAR(50) NOT NULL,
  `dataNasc` DATE NOT NULL,
  `escolaridade` VARCHAR(50) NOT NULL,
  `genero` VARCHAR(50) NOT NULL,
  `admin` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `Email_UNIQUE` (`email` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`endereco`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`endereco` (
  `usuario_id` INT NOT NULL,
  `cep` VARCHAR(20) NOT NULL,
  `cidade` VARCHAR(255) NOT NULL,
  `bairro` VARCHAR(255) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `rua` VARCHAR(255) NOT NULL,
  `numero` INT NOT NULL,
  `complemento` VARCHAR(255) NULL,
  PRIMARY KEY (`usuario_id`),
  CONSTRAINT `fk_endereco_Usuários`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `arsenal`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`trilha`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`trilha` (
  `idtrilha` INT NOT NULL,
  `nivel` VARCHAR(50) NOT NULL,
  `modulo` VARCHAR(100) NULL,
  PRIMARY KEY (`idtrilha`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`assistir`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`assistir` (
  `id` INT NOT NULL,
  `usuario_id` INT NOT NULL,
  `trilha_idtrilha` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_assistir_Usuários1_idx` (`usuario_id` ASC) VISIBLE,
  INDEX `fk_assistir_trilha1_idx` (`trilha_idtrilha` ASC) VISIBLE,
  CONSTRAINT `fk_assistir_Usuários1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `arsenal`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_assistir_trilha1`
    FOREIGN KEY (`trilha_idtrilha`)
    REFERENCES `arsenal`.`trilha` (`idtrilha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`videos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`videos` (
  `idvideos` INT NOT NULL,
  `url` VARCHAR(255) NOT NULL,
  `titulo` VARCHAR(255) NOT NULL,
  `trilha_idtrilha` INT NOT NULL,
  PRIMARY KEY (`idvideos`, `trilha_idtrilha`),
  INDEX `fk_videos_trilha1_idx` (`trilha_idtrilha` ASC) VISIBLE,
  CONSTRAINT `fk_videos_trilha1`
    FOREIGN KEY (`trilha_idtrilha`)
    REFERENCES `arsenal`.`trilha` (`idtrilha`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`perguntas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`perguntas` (
  `idperguntas` INT NOT NULL,
  `pergunta` VARCHAR(255) NOT NULL,
  `alternativas` VARCHAR(255)  NULL,
  `proximapergunta` VARCHAR(255)  NULL,
  PRIMARY KEY (`idperguntas`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `arsenal`.`respostas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `arsenal`.`respostas` (
  `usuario_id` INT NOT NULL,
  `perguntas_idperguntas` INT NOT NULL,
  `resposta` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`usuario_id`, `perguntas_idperguntas`),
  INDEX `fk_Usuários_has_perguntas_perguntas1_idx` (`perguntas_idperguntas` ASC) VISIBLE,
  INDEX `fk_Usuários_has_perguntas_Usuários1_idx` (`usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Usuários_has_perguntas_Usuários1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `arsenal`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Usuários_has_perguntas_perguntas1`
    FOREIGN KEY (`perguntas_idperguntas`)
    REFERENCES `arsenal`.`perguntas` (`idperguntas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
