-- MySQL Script generated by MySQL Workbench
-- Sun May  1 23:51:49 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema producto
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `producto` ;

-- -----------------------------------------------------
-- Schema producto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `producto` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `producto` ;

-- -----------------------------------------------------
-- Table `producto`.`tipo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `producto`.`tipo` (
  `id_tipo` INT NOT NULL AUTO_INCREMENT,
  `nom_tip` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id_tipo`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `producto`.`productos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `producto`.`productos` (
  `id_produc` INT NOT NULL AUTO_INCREMENT,
  `nom_produc` VARCHAR(30) NOT NULL,
  `des_produc` VARCHAR(500) NOT NULL,
  `pre_produc` INT NOT NULL,
  `tipo_id_tipo` INT NOT NULL,
  PRIMARY KEY (`id_produc`),
  INDEX `productos_tipo_fk` (`tipo_id_tipo` ASC) VISIBLE,
  CONSTRAINT `productos_tipo_fk`
    FOREIGN KEY (`tipo_id_tipo`)
    REFERENCES `producto`.`tipo` (`id_tipo`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `producto`.`bodega`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `producto`.`bodega` (
  `id_bode` INT NOT NULL AUTO_INCREMENT,
  `stock` INT NOT NULL,
  `productos_id_produc` INT NOT NULL,
  PRIMARY KEY (`id_bode`),
  INDEX `fk_bodega_productos1_idx` (`productos_id_produc` ASC) VISIBLE,
  CONSTRAINT `fk_bodega_productos1`
    FOREIGN KEY (`productos_id_produc`)
    REFERENCES `producto`.`productos` (`id_produc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
