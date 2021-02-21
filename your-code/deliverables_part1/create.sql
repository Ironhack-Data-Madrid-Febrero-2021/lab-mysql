-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema cars_database
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema cars_database
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cars_database` DEFAULT CHARACTER SET utf8 ;
USE `cars_database` ;

-- -----------------------------------------------------
-- Table `cars_database`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars_database`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NOT NULL,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` YEAR(4) NOT NULL,
  `Color` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars_database`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars_database`.`Customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Customer_id` INT NULL,
  `Name` VARCHAR(45) NULL,
  `phone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `addres` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars_database`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars_database`.`salesperson` (
  `id_sales` INT NOT NULL AUTO_INCREMENT,
  `sttadd_id` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `store` VARCHAR(45) NULL,
  PRIMARY KEY (`id_sales`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `cars_database`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cars_database`.`invoices` (
  `idinvoices` INT NOT NULL AUTO_INCREMENT,
  `invoice_number` INT NULL,
  `date` YEAR(4) NULL,
  `Customers_id` INT NOT NULL,
  `Cars_idCars` INT NOT NULL,
  `salesperson_id_sales` INT NOT NULL,
  PRIMARY KEY (`idinvoices`),
  INDEX `fk_invoices_Customers_idx` (`Customers_id` ASC) VISIBLE,
  INDEX `fk_invoices_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_invoices_salesperson1_idx` (`salesperson_id_sales` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_Customers`
    FOREIGN KEY (`Customers_id`)
    REFERENCES `cars_database`.`Customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `cars_database`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salesperson1`
    FOREIGN KEY (`salesperson_id_sales`)
    REFERENCES `cars_database`.`salesperson` (`id_sales`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
