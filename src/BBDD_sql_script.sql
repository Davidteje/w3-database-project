-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema proy_videoclub
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema proy_videoclub
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `proy_videoclub` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `proy_videoclub` ;

-- -----------------------------------------------------
-- Table `proy_videoclub`.`actor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`actor` (
  `actor_id` INT NOT NULL,
  `first_name` VARCHAR(45) NULL DEFAULT NULL,
  `last_name` VARCHAR(45) NULL DEFAULT NULL,
  `complete_name` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`actor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`category_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`language`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`language` (
  `language_id` INT NOT NULL,
  `name` VARCHAR(20) NULL DEFAULT NULL,
  PRIMARY KEY (`language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`film`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`film` (
  `film_id` INT NOT NULL,
  `title` VARCHAR(100) NULL DEFAULT NULL,
  `description` VARCHAR(150) NULL DEFAULT NULL,
  `language_id` INT NULL DEFAULT NULL,
  `rental_duration` INT NULL DEFAULT NULL,
  `rental_rate` FLOAT NULL DEFAULT NULL,
  `length` INT NULL DEFAULT NULL,
  `replacement_cost` FLOAT NULL DEFAULT NULL,
  `rating` VARCHAR(10) NULL DEFAULT NULL,
  `special_features` VARCHAR(80) NULL DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  INDEX `fk_film_language_idx` (`language_id` ASC) VISIBLE,
  CONSTRAINT `fk_film_language`
    FOREIGN KEY (`language_id`)
    REFERENCES `proy_videoclub`.`language` (`language_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`inventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`inventory` (
  `inventory_id` INT NOT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `store_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  INDEX `fk_inventory_film1_idx` (`film_id` ASC) VISIBLE,
  CONSTRAINT `fk_inventory_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `proy_videoclub`.`film` (`film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`old_hdd`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`old_hdd` (
  `first_name` VARCHAR(30) NULL DEFAULT NULL,
  `last_name` VARCHAR(100) NULL DEFAULT NULL,
  `title` VARCHAR(100) NULL DEFAULT NULL,
  `release_year` INT NULL DEFAULT NULL,
  `category_id` INT NULL DEFAULT NULL,
  `film_id` INT NULL DEFAULT NULL,
  `complete_name` VARCHAR(100) NULL DEFAULT NULL,
  `actor_id` INT NULL DEFAULT NULL,
  INDEX `fk_old_hdd_actor1_idx` (`actor_id` ASC) VISIBLE,
  INDEX `fk_old_hdd_category1_idx` (`category_id` ASC) VISIBLE,
  INDEX `fk_old_hdd_film1_idx` (`film_id` ASC) VISIBLE,
  CONSTRAINT `fk_old_hdd_actor1`
    FOREIGN KEY (`actor_id`)
    REFERENCES `proy_videoclub`.`actor` (`actor_id`),
  CONSTRAINT `fk_old_hdd_category1`
    FOREIGN KEY (`category_id`)
    REFERENCES `proy_videoclub`.`category` (`category_id`),
  CONSTRAINT `fk_old_hdd_film1`
    FOREIGN KEY (`film_id`)
    REFERENCES `proy_videoclub`.`film` (`film_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`rental`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`rental` (
  `rental_id` INT NOT NULL,
  `rental_date` DATETIME NULL DEFAULT NULL,
  `inventory_id` INT NULL DEFAULT NULL,
  `customer_id` INT NULL DEFAULT NULL,
  `return_date` DATETIME NULL DEFAULT NULL,
  `staff_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`rental_id`),
  INDEX `fk_rental_inventory1_idx` (`inventory_id` ASC) VISIBLE,
  CONSTRAINT `fk_rental_inventory1`
    FOREIGN KEY (`inventory_id`)
    REFERENCES `proy_videoclub`.`inventory` (`inventory_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `proy_videoclub`.`total_renting`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `proy_videoclub`.`total_renting` (
  `FILM_ID` INT NULL DEFAULT NULL,
  `TITLE` VARCHAR(100) NULL DEFAULT NULL,
  `TOTAL_RENTING_COST` DOUBLE NULL DEFAULT NULL)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
