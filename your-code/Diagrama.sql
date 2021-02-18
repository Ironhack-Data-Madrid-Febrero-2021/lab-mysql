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
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` INT NULL,
  `Manufacturer` VARCHAR(45) NULL,
  `Model` VARCHAR(45) NULL,
  `Year` YEAR(4) NULL,
  `Color` VARCHAR(45) NULL,
  `Shop_idShop` INT NOT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Store` VARCHAR(45) NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NULL,
  `Phone_Number` INT NULL,
  `Email` VARCHAR(45) NULL,
  `Address` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State/Province` INT NULL,
  `Country` VARCHAR(45) NULL,
  `Zip/postal_code` INT NULL,
  `Shop_idShop` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`idCustomers`),
  INDEX `fk_Customers_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Customers_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `mydb`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Date` VARCHAR(45) NULL,
  `Car` VARCHAR(45) NULL,
  `Customer` VARCHAR(45) NULL,
  `Salesperson_related` VARCHAR(45) NULL,
  `Shop_idShop` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`idInvoices`),
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `mydb`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars_has_Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars_has_Salespersons` (
  `Cars_idCars` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  PRIMARY KEY (`Cars_idCars`, `Salespersons_idSalespersons`),
  INDEX `fk_Cars_has_Salespersons_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Cars_has_Salespersons_Cars1_idx` (`Cars_idCars` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_has_Salespersons_Cars1`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `mydb`.`Cars` (`idCars`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_has_Salespersons_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `mydb`.`Salespersons` (`idSalespersons`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
