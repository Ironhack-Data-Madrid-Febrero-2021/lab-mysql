USE lab_mysql;
SHOW TABLES;

DESCRIBE cars;
INSERT INTO cars (vin,manufacturer, model, year_of_fab, color) VALUES 
("3K096I98581DHSNUP", "Volkswagen", "Tiguan", "2019", "Blue"),
("ZM8G7BEUQZ97IH46V	", "Peugeot", "Rifter", "2019", "red"),
("RKXVNNIHLVVZOUB4M", "Ford", "Fusion", "2018", "White"), 
("HKNDGS7CU31E9Z7JW", "Toyota", "Rav4", "2018", "Silver"), 
("DAM41UDN3CHU2WVF6", "Volvo", "v60", "2019", "grey");
SELECT * FROM cars;

DESCRIBE customers;
INSERT INTO customers (custumer_number, `name`, phone, address, city, province, country, postal_code) VALUES
("10001", "Pablo Picasso", "+34 365 256 985", "Paseo de la chopera 14", "Madrid", "Madrid", "Spain", "28045"), 
("20002", "Abraham Lincoln", "+1 254 862 823", "120 sw 8th", "Miami", "Florida", "USA", "33130"),
("30001", "Napoleon Bonaparte", "+33 152 153 415", "via pinturicchio", "perugia", "umbria", "italy", "051026");

DESCRIBE staff;
INSERT INTO staff (staff_number, first_name, last_name, store, department, corporate_email) VALUES
("0001", "peter", "cruiser", "Madrid", "hr", "p.cruiser@estaempresa.com"),
("0002", "pedro", "picapiedra", "boston", "finance", "p.pica@mismaempresa.com"),
("0003", "gustavo", "larana", "miimagination", "sales", "glarana@verdesoy.com"),
("0004", "joey", "tribbiani", "new york", "actor", "j.tribbiani@friends.com"),
("0005", "bart", "simpson", "springfiel", "sales", "b.simpson@aja.com");

DESCRIBE invoices;
INSERT INTO invoices (invoice_number, price, discount) VALUES
("675157414", "7525", "10"),
("584566235", "32759", "3"),
("574896584", "14526", "6");

SELECT * FROM invoices