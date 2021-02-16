USE lab_mysql;
SHOW TABLES;
CREATE TABLE IF NOT EXISTS cars(
cars_idcars INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
vin VARCHAR (40) NOT NULL DEFAULT "no_items",
manufacturer VARCHAR (40) NOT NULL DEFAULT "no_items",
model VARCHAR(40) NOT NULL DEFAULT "no_items",
year_of_fab YEAR NOT NULL,
color VARCHAR(20) NOT NULL DEFAULT "no_items"
);
CREATE TABLE IF NOT EXISTS customers(
customers_idcustomers INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
custumer_number VARCHAR (40) NOT NULL DEFAULT "no_items",
name VARCHAR(40) NOT NULL DEFAULT "no_items",
phone VARCHAR(20),
email VARCHAR(30),
address VARCHAR(50),
city VARCHAR (15),
province VARCHAR(15),
country VARCHAR (15) NOT NULL DEFAULT "no_items",
postal_code VARCHAR (10) NOT NULL DEFAULT "no_items"
);
CREATE TABLE IF NOT EXISTS staff(
staff_idstaff INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
staff_number VARCHAR (40) NOT NULL DEFAULT "no_items",
first_name VARCHAR(20) NOT NULL DEFAULT "no_items",
last_name VARCHAR(40) NOT NULL DEFAULT "no_items",
store VARCHAR(25) NOT NULL DEFAULT "no_items",
department VARCHAR(20) NOT NULL DEFAULT "no_items",
corporate_email VARCHAR(30) NOT NULL DEFAULT "no_items"
);
CREATE TABLE IF NOT EXISTS invoices(
invoices_idinvoices INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
invoice_number VARCHAR (40) NOT NULL DEFAULT "no_items",
price INT NOT NULL,
discount INT,
FOREIGN KEY (cars_idcars) REFERENCES cars(cars_idcars),
FOREIGN KEY (staff_idstaff) REFERENCES staff(staff_idstaff),
FOREIGN KEY (customers_idcustomers) REFERENCES customers(customers_idcustomers)
) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS stores(
stores_idstores INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
store_number VARCHAR (40) NOT NULL DEFAULT "no_items",
director VARCHAR(40),
FOREIGN KEY (staff_idstaff) REFERENCES staff(staff_idstaff),
FOREIGN KEY (cars_idcars) REFERENCES cars (cars_idcars)
);


SHOW TABLES;
SELECT * FROM invoices;

