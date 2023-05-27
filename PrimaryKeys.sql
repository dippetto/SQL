
1
CREATE TABLE CUSTOMERS (
  ID INT NOT NULL AUTO_INCREMENT,
  NAME VARCHAR(40),
  SURNAME VARCHAR(40),
  UNIQUE (ID)
);
2
INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Roberto','certosino');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Giovanni','Rossi');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Mario','Rossi');

INSERT INTO CUSTOMERS (NAME,SURNAME)
VALUES ('Gianluigi','Caldarella');
3
UPDATE CUSTOMERS
SET NAME = 'Mba Mario'
WHERE ID = 3;
4
DELETE FROM CUSTOMERS
WHERE ID = 4;
5
TRUNCATE TABLE CUSTOMERS;

6
La colonna customer_id verrà utilizzata come chiave primaria perchè univoca per ogni riga

CREATE TABLE Customers (
 customer_id INT NOT NULL AUTO_INCREMENT,
 first_name VARCHAR(255) NOT NULL,
 last_name VARCHAR(255) NOT NULL,
 email VARCHAR(255) NOT NULL,
);

7
Tutte le colonne dovrebbero essere chiavi primarie perchè nessuna può essere considerata univoca

CREATE TABLE Products (
 product_name VARCHAR(255) NOT NULL,
 product_description VARCHAR(255) NOT NULL,
 product_price DECIMAL(10, 2) NOT NULL,
 product_quantity INT NOT NULL
);

8
La colonna order_id verrà utilizzata come chiave primaria perchè univoca per ogni riga

CREATE TABLE Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 customer_id INT NOT NULL,
 expected_arrival_time DATE
);

9
Le colonne product_name e total_revenue insieme perchè order_id verrà utilizzata come foreign key

CREATE TABLE Product_Orders (
 order_id INT NOT NULL AUTO_INCREMENT,
 product_name VARCHAR(255) NOT NULL,
 total_revenue DOUBLE
);
