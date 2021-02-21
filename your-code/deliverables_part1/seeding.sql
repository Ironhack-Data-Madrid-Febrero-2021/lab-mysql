INSERT INTO Cars VALUES (
DEFAULT,
"3K096I98581DHSNUP",
"Volkswagen",
"Tiguan",
2019,
"BLUE" 
);

INSERT INTO Cars (`idCars`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`)  VALUES 
(default, "ZM8G7BEUQZ97IH46V", "Peugeot", "Rifter", 2019, "Red");

INSERT INTO Cars (`idCars`, `VIN`, `Manufacturer`, `Model`, `Year`, `Color`)  VALUES 
(default, "RKXVNNIHLVVZOUB4M", "Ford", "Fusion", 2018, "White"),
(default, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(default, "HKNDGS7CU31E9Z7JW", "Toyota", "RAV4", 2018, "Silver"),
(default, "DAM41UDN3CHU2WVF6", "Volvo", "V60", 2019, "Gray"),
(default, "DAM41UDN3CHU2WVF6", "Volvo", "V60 Cross Country", 2019, "Gray");

INSERT INTO Customers (`id`, `Customer_id`, `Name`, `phone`, `email`, `addres`, `city`, `state`, `country`, `zip`) VALUES 
(default, 10001, "Pablo", "+34 636 17 63 82", "-", "Paseo de la Chopera, 14", "Madrid", "Madrid", "Spain", 28042),
(default, 20001, "Abraham", "+1 305 907 7086", "-", "120 SW 8th St", "Miami", "Florida","United States", 33130),
(default, 30001, "Napoléon", "+1 305 907 7086", "-", "40 Rue du Colisée", "Paris", "Paris", "France", 75008);

 
INSERT INTO salesperson (`id_sales`, `sttadd_id`, `name`, `store`) VALUES 
(default, "00001", "Petey Cruiser", "Madrid"),
(default, "00002", "Anna Sthesia", "Barcelona"),
(default, "00003", "Paul Molive", "Berlin"),
(default, "00004", "Paige Turner", "Madrid"),
(default, "00005", "Bob Frapples", "Paris"),
(default, "00006", "Walter", "Amsterdam");


INSERT INTO invoices (`idinvoices`, `invoice_number`, `date`, `Customers_id`, `Cars_idCars`, `salesperson_id_sales`) VALUES 

(default, 852399038, 2018, 0, 1, 3), 
(default, 731166526, 2018, 3, 1, 3), 
(default, 271135104, 2018, 2, 2, 7);








