-- MySQL Script generated by MySQL Workbench
-- Wed Jul 20 12:42:56 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Categoria`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Categoria` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Categoria` (
  `id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Produto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Produto` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Produto` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `Categoria_id` INT NOT NULL,
  `preco` FLOAT NOT NULL,
  `descricao` VARCHAR(100) NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Produto_Categoria1`
    FOREIGN KEY (`Categoria_id`)
    REFERENCES `mydb`.`Categoria` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Produto_Categoria1_idx` ON `mydb`.`Produto` (`Categoria_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Cliente` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(30) NOT NULL,
  `sobrenome` VARCHAR(45) NOT NULL,
  `documento` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Ordem`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Ordem` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Ordem` (
  `id` INT NULL AUTO_INCREMENT,
  `data_pedido` TIMESTAMP NULL,
  `data_pagamento` TIMESTAMP NULL,
  `Cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Ordem_Cliente1`
    FOREIGN KEY (`Cliente_id`)
    REFERENCES `mydb`.`Cliente` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Ordem_Cliente1_idx` ON `mydb`.`Ordem` (`Cliente_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Item`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Item` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Item` (
  `id` INT NOT NULL,
  `quantidade` INT NOT NULL,
  `Ordem_id` INT NOT NULL,
  `Produto_id` INT NOT NULL,
  `valorUnitario` FLOAT NOT NULL,
  `subtotal` FLOAT NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_Item_Ordem1`
    FOREIGN KEY (`Ordem_id`)
    REFERENCES `mydb`.`Ordem` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Item_Produto1`
    FOREIGN KEY (`Produto_id`)
    REFERENCES `mydb`.`Produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Item_Ordem1_idx` ON `mydb`.`Item` (`Ordem_id` ASC) VISIBLE;

CREATE INDEX `fk_Item_Produto1_idx` ON `mydb`.`Item` (`Produto_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Estoque`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Estoque` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Estoque` (
  `data_entrada` DATETIME NOT NULL,
  `data_saida` DATETIME NOT NULL,
  `quantidade` INT NULL,
  `Produto_id` INT NOT NULL,
  CONSTRAINT `fk_Estoque_Produto1`
    FOREIGN KEY (`Produto_id`)
    REFERENCES `mydb`.`Produto` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Estoque_Produto1_idx` ON `mydb`.`Estoque` (`Produto_id` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
