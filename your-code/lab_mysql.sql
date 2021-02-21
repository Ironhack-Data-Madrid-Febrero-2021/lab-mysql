-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Car_Store
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Car_Store
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Car_Store` DEFAULT CHARACTER SET utf8 ;
USE `Car_Store` ;

-- -----------------------------------------------------
-- Table `Car_Store`.`SalesPersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Store`.`SalesPersons` (
  `Staff_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Store_Company` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Staff_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_Store`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Store`.`Customers` (
  `Customer_ID` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Phone_Number` INT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `State/Province` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NOT NULL,
  `Zip/Postal` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Customer_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_Store`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Store`.`Cars` (
  `VIN` INT NOT NULL AUTO_INCREMENT,
  `Manufacturer` VARCHAR(45) NOT NULL,
  `Model` VARCHAR(45) NOT NULL,
  `Year` DATETIME(45) NOT NULL,
  `Color_Cars` VARCHAR(45) NOT NULL,
  `SalesPersons_Staff_ID` INT NOT NULL,
  `Customers_Customer_ID` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  INDEX `fk_Cars_SalesPersons1_idx` (`SalesPersons_Staff_ID` ASC) VISIBLE,
  INDEX `fk_Cars_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_SalesPersons1`
    FOREIGN KEY (`SalesPersons_Staff_ID`)
    REFERENCES `Car_Store`.`SalesPersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `Car_Store`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Car_Store`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Car_Store`.`Invoices` (
  `Invoices_Number` INT NOT NULL AUTO_INCREMENT,
  `Date` DATETIME NOT NULL,
  `Car` VARCHAR(45) NOT NULL,
  `Customer` VARCHAR(45) NOT NULL,
  `SalesPerson_Each_Car` VARCHAR(45) NOT NULL,
  `SalesPersons_Staff_ID` INT NOT NULL,
  `Customers_Customer_ID` INT NOT NULL,
  PRIMARY KEY (`Invoices_Number`),
  INDEX `fk_Invoices_SalesPersons1_idx` (`SalesPersons_Staff_ID` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_Customer_ID` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_SalesPersons1`
    FOREIGN KEY (`SalesPersons_Staff_ID`)
    REFERENCES `Car_Store`.`SalesPersons` (`Staff_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_Customer_ID`)
    REFERENCES `Car_Store`.`Customers` (`Customer_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
