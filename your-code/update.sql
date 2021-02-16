USE lab_mysql;
SHOW TABLES;
SELECT * FROM staff;

UPDATE staff
SET corporate_email = "nuevoemail@estoesunejemplo.com"
WHERE staff_idstaff = 1;

UPDATE staff
SET corporate_email = "lospicapiedra@nuevoemail.com"
WHERE staff_idstaff = 2;

UPDATE staff
SET corporate_email = "joseph@gmail.com"
WHERE staff_idstaff = 4;