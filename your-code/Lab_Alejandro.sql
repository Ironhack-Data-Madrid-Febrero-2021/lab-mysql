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
-- Table `mydb`.`Invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Invoices` (
  `invoice_number` INT NOT NULL AUTO_INCREMENT,
  `date` DATETIME NOT NULL,
  `car` VARCHAR(45) NOT NULL,
  `customer` VARCHAR(45) NOT NULL,
  `salesperson` VARCHAR(45) NOT NULL,
  `Customer_customer_id` INT NOT NULL,
  PRIMARY KEY (`invoice_number`),
  INDEX `fk_Invoices_Customer1_idx` (`Customer_customer_id` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Customer1`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Salespersons` (
  `staff_id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `store` VARCHAR(45) NOT NULL,
  `Invoices_invoice_number` INT NOT NULL,
  PRIMARY KEY (`staff_id`),
  INDEX `fk_Salespersons_Invoices1_idx` (`Invoices_invoice_number` ASC) VISIBLE,
  CONSTRAINT `fk_Salespersons_Invoices1`
    FOREIGN KEY (`Invoices_invoice_number`)
    REFERENCES `mydb`.`Invoices` (`invoice_number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Customer` (
  `customer_id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `phone` INT NULL,
  `email` VARCHAR(45) NULL,
  `address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  `zip` INT NULL,
  `Salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`customer_id`),
  INDEX `fk_Customer_Salespersons1_idx` (`Salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_Customer_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_id`)
    REFERENCES `mydb`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cars` (
  `VIN` INT NOT NULL AUTO_INCREMENT,
  `manufacturer` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `year` DATETIME NOT NULL,
  `color` VARCHAR(45) NOT NULL,
  `Customer_customer_id` INT NOT NULL,
  `Salespersons_staff_id` INT NOT NULL,
  PRIMARY KEY (`VIN`),
  INDEX `fk_Cars_Customer_idx` (`Customer_customer_id` ASC) VISIBLE,
  INDEX `fk_Cars_Salespersons1_idx` (`Salespersons_staff_id` ASC) VISIBLE,
  CONSTRAINT `fk_Cars_Customer`
    FOREIGN KEY (`Customer_customer_id`)
    REFERENCES `mydb`.`Customer` (`customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Cars_Salespersons1`
    FOREIGN KEY (`Salespersons_staff_id`)
    REFERENCES `mydb`.`Salespersons` (`staff_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
