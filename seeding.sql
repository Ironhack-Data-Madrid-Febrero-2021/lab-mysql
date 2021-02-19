INSERT INTO Cars (ID, VIN, Manufacturer, Model, Year, Color)
VALUES ('0', '3K096I98581DHSNUP', 'Volksawagen', 'Tiguan', '2019', 'Blue'),
('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver'),
('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray'),
('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');

INSERT INTO Customers (`ID`, `Customer ID`, `Name`, `Phone`, `Email`, `Address`, `City`, `State/Province`, `Country`, `Postal`)
VALUES ('1', '10001', 'Pablo Picasso', '34 636 17 63 82', '-', 'Paseo de la Chopera 14', 'Madrid', 'Madrid', 'Spain', '28045'),
('2', '20001', 'Abraham Lincoln', '1 305 907 7086', '-', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
('3', '30001', 'Napoléon Bonaparte', '33 1 79 75 40 00', '-', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

INSERT INTO Salespersons (`ID`, `Staff ID`, `Name`, `Store`)
VALUES ('1', '0001', 'Petey Cruiser', 'Madrid'),
('2', '0002', 'Anna Sthesia', 'Barcelona'),
('3', '0003', 'Paul Molive', 'Berlin'),
('4', '0004', 'Gail Forcewind', 'Paris'),
('5', '0005', 'Paige Turner', 'Miami'),
('6', '0006', 'Bob Frapples', 'Mexico City'),
('7', '0007', 'Walter Melon', 'Amsterdam'),
('8', '0008', 'Shonda Leer', 'São Paulo');

INSERT INTO Invoices (`ID`, `Invoice Number`, `Date`, `Car`, `Customer`, `Salesperson`)
VALUES ('1', '852399038', '22-08-2018', '7', '2', '2'),
('2', '731166526', '31-12-2018', '7', '2', '2'),
('3', '271135104', '22-01-2019', '7', '2', '2');

INSERT INTO Invoices (`ID`,`Invoice Number`, `Date`, `Car`, `Customer`, `Cars_ID`, `Salespersons_ID`, `Customers_ID` )
VALUES ('1','852399038', '22-08-2018', 'Tiguan', ' Abraham Licoln', '7', '2', '4'),
('2','731166526', '31-12-2018', 'Toyota', 'Pablo Picasso' '3', '1', '6'),
('3','271135104', '22-01-2019',' Ford', 'Napoleón Bonaparte', '2', '3', '8');
