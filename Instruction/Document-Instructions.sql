create database niceshoesshop;

use niceshoesshop;

CREATE TABLE PRODUCT_LIST (
	ID INT PRIMARY KEY AUTO_INCREMENT,
    PRODUCT_NAME VARCHAR(20),
    PRODUCT_CODE VARCHAR(10),
    PRODUCT_DESCRIPTION VARCHAR(40),
    GENDER CHAR(1)
);

CREATE TABLE COLORS (
COLOR_ID INT NOT NULL AUTO_INCREMENT,
COLOR VARCHAR(20),
PRIMARY KEY (COLOR_ID)
);

CREATE TABLE PRODUCT_COLORS (
	PRODUCT_ID INT,
    COLOR_ID INT,
    foreign key (PRODUCT_ID) references PRODUCT_LIST(ID),
    foreign key (COLOR_ID) references COLORS(COLOR_ID)
);

ALTER TABLE PRODUCT_LIST ADD COLUMN PRICE INT NOT NULL;

ALTER TABLE PRODUCT_LIST DROP COLUMN PRODUCT_DESCRIPTION;

CREATE TABLE SIZES (
SIZE_ID INT PRIMARY KEY AUTO_INCREMENT,
SIZE_TIPE CHAR(1),
SIZE_CODE  VARCHAR(6)
);

CREATE TABLE PRODUCT_SIZES (
PRODUCT_ID INT,
SIZE_ID INT,
foreign key (PRODUCT_ID) references PRODUCT_LIST(ID),
foreign key (SIZE_ID) references SIZES(SIZE_ID)
);

CREATE TABLE PAYMENT (
ID_PAYMENT_METHOD INT PRIMARY KEY AUTO_INCREMENT,
PAYMENT_METHOD VARCHAR(10)
);

CREATE TABLE PRODUCT_RETURN (
RETURN_ID INT PRIMARY KEY AUTO_INCREMENT,
RETURN_NR INT,
NR_DAYS_RETURN_PAYMENT INT,
COST_RETURN_TRANSPORT INT
);

CREATE TABLE ORDE (
ORDE_ID INT PRIMARY KEY AUTO_INCREMENT,
ORDE_CODE VARCHAR(10),
ORDE_DATE DATE,
NUME VARCHAR(20),
PRENUME VARCHAR(20),
ADRESA VARCHAR(40)
);

CREATE TABLE ORDE_PRODUCT (
ORDE_ID INT,
PRODUCT_ID INT,
QUANTITY INT,
DISCOUNT int,
foreign key (PRODUCT_ID) references PRODUCT_LIST(ID),
foreign key (ORDE_ID) references ORDE(ORDE_ID)
);

INSERT INTO PRODUCT_LIST (PRODUCT_NAME, PRODUCT_CODE, GENDER, PRICE) 
VALUES ('Nike Air Max', 'P189K', 'M', '400'),
('Adidas Ultraboost', 'P211L', 'M', '350'), 
('New Balance 574', 'P345B', 'M', '380'),
('Salomon Speedcross', 'P451W', 'M', '550'),
('Nike Pegasus', 'P195P', 'F', '450'),
('Puma RS-X', 'P555D', 'F', '300'),
('Reebok Club C', 'P623G', 'F', '350'),
('Adidas Superstar', 'P222L', 'F', '480');

SELECT * FROM PRODUCT_COLORS;

DELETE FROM PRODUCT_LIST WHERE ID='1';

ALTER TABLE PRODUCT_LIST DROP COLUMN PRODUCT_DESCRIPTION;

INSERT INTO COLORS VALUES (1, 'WHITE'), 
						(2, 'GRAY'),
                        (3, 'DARK GREEN'),
                        (4, 'ORANGE'),
                        (5, 'PURPLE');

INSERT INTO PRODUCT_COLORS VALUES (3, 1),
                                  (4, 3),
                                  (5, 4),
                                  (6, 5),
                                  (7, 1),
                                  (8, 2),
                                  (9, 1);

INSERT INTO SIZES (SIZE_TPE, SIZE_CODE) VALUES ('P','36'), 
 			       		       ('P','37'),
                                               ('p','38'),
                                               ('P','39'),
                                               ('P','40'),
                                               ('P','41'),
                                               ('P','42'),
                                               ('P','43'),
                                               ('P','44'),
                                               ('P','45');

INSERT INTO PRODUCT_SIZES VALUES (2, 1), 
				 (2, 2),
				 (2, 3),
			         (2, 4),
			         (2, 5),
			         (2, 6),
			         (2, 7),
			         (2, 8),
			         (2, 9),
			         (2, 10),
			         (3, 4),
			         (3, 5),
		                 (3, 6),
			         (3, 9),
 			         (4, 2),                              
 			         (4, 3),                              
 			         (4, 4),                              
 			         (4, 5),
 		 	         (4, 6),                               
  				 (4, 9),                              
   				 (4, 10),                              
  				 (5, 4),                               
  				 (5, 5),                               
  				 (5, 6),                               
  				 (5, 7),
  				 (5, 8),                              
  			         (6, 3),                               
  				 (6, 5),                               
  				 (6, 6),                               
  				 (6, 7),                               
  				 (6, 8),                               
				 (6, 9),                            
				 (6, 10),                               
				 (7, 1),                               
 			         (7, 2),  
				 (7, 4),
 				 (7, 6),   
				 (7, 8),    
 				 (8, 1),   
  				 (8, 2),  
				 (8, 3),    
  				 (8, 4),  
				 (8, 5),
 				 (8, 6),                        
 				 (9, 1),				            
 				 (9, 2),
 				 (9, 3),
 				 (9, 4),
 				 (9, 5),
 				 (9, 6),
 				 (9, 7),
 				 (9, 8);

INSERT INTO PAYMENT (PAYMENT_METHOD) VALUES ('Cash'), ('Card');

INSERT INTO PRODUCT_RETURN (RETURN_NR, NR_DAYS_RETURN_PAYMENT, COST_RETURN_TRANSPORT) 
	VALUES (999, 10, 0), 
    	       (1000, 5, 25), 
   	       (2000, 2, 30);

INSERT INTO ORDE (ORDE_CODE, ORDE_DATE, FIRSTNAME, LASTNAME, ADDRESS)
	VALUES ('O1112', '2024-10-06', 'Marian', 'Chereches', 'str. Mihail Alexandrescu, nr. 287, GALATI'),                                
('O1113', '2024-10-06', 'Alin', 'Botezatu', 'str.1 DECEMBRIE 1918, nr. 20, BUCURESTI'),                                
('O1114', '2024-10-06', 'Alexandru', 'Bochis', 'str. Unirii, nr. 3, BUCURESTI'),                                 
('O1115', '2024-10-07', 'William', 'Windsor', 'str. 1 DECEMBRIE 1918, nr. 21, BUCURESTI'),                                 
('O1116', '2024-10-07', 'Ioan', 'Caciuc', 'str. Nicolae Balcescu, nr. 38, ORADEA'),                                
('O1117', '2024-10-08', 'Liviu', 'Vanghelie', 'str. 3 Dunari, nr. 288, TIMISOARA'),                                 
('O1118', '2024-10-08', 'Adrian', 'Basescu', 'str. Infratirii , nr. 98, TIMISOARA'), 
('O1119', '2024-10-08', 'Tiberiu', 'Ciolacu', 'str. Muritorului, nr. 65, IASI'), 
('O1120', '2024-10-11', 'Ioana', 'Toth', 'str. Iasiului, nr. 16, IASI'), 
('O1121', '2024-10-11', 'Silviu', 'Bozga', 'str. Ghiocelului, nr. 544, IASI'), 
('O1122', '2024-10-14', 'Alin', 'Armasu', 'str. Protectorului, nr. 2/A, SATU MARE'), 
('O1123', '2024-10-14', 'Felicia', 'Sabou', 'str. Oasului, nr. 37, ORADEA'), 
('O1124', '2024-10-14', 'Veronica', 'Rebeleanu', 'str. Nimanui, nr. 122, BUCURESTI'), 
('O1125', '2024-10-15', 'Stone', 'Johnson', 'str. Adrian Gheorghe, nr. 55, CLUJ-NAPOCA'), 
('O1126', '2024-10-16', 'Lucas', 'Hrebenciuc', 'str. Minunii, nr. 67, SIBIU'), 
('O1127', '2024-10-16', 'Nicolae', 'Bozga', 'str. Mirului, nr. 5/B, BUCURESTI'), 
('O1128', '2024-10-17', 'Elena', 'Gavris', 'str. Calea Floresti, nr. 12, CLUJ-NAPOCA'), 
('O1129', '2024-10-17', 'David', 'Floare', 'str. Hunyadi, nr. 88, MIERCUREA CIUC'), 
('O1130', '2024-10-17', 'Nemes', 'Nandor', 'str. Infratirii, nr. 111, VASLUI'), 
('O1131', '2024-10-18', 'Andrei', 'Virgil', 'str. Alesului, nr. 34, GIURGIU'), 
('O1132', '2024-10-22', 'Ovidiu', 'Savo', 'str. Siderurgica, nr. 143, GALATI'), 
('O1133', '2024-10-22', 'Veronika', 'Tekes', 'str. Petofi Sandor, nr. 35, MARGHITA'), 
('O1134', '2024-10-23', 'Alina', 'Popovici', 'str. Trandafirului, nr.49, PLOIESTI'), 
('O1135', '2024-10-23', 'Alexandru', 'Butean', 'nr. 20, BUCURESTI'),  
('O1136', '2024-10-25', 'Teodor', 'Lucas', 'str. Mihai Eminescu, nr. 71, BUCURESTI'), 
('O1137', '2024-11-02', 'Radu', 'Mihnea', 'str. Mihail Kogalniceanu, nr 48, ORADEA'), 
('O1138', '2024-11-02', 'Johanna', 'Kiraly', 'str. Calea Clujului, nr 8/A, ARAD'), 
('O1139', '2024-11-02', 'Petra', 'Fules', 'str. Iosia, nr. 29, ORADEA'), 
('O1140', '2024-11-07', 'Minerva', 'Catarca', 'str. Pastelului, nr. 61, BAIA MARE'), 
('O1141', '2024-11-07', 'Iuliu', 'Vreciu', 'str. Kakas Tarely, nr 55, SATU MARE'), 
('O1142', '2024-11-18', 'Gheorghe', 'Dej', 'str. Fagasului, nr. 29, CONSTANTA'), 
('O1143', '2024-11-18', 'Sebastian', 'Lenghel', 'str. Armand Pastieur, nr. 201, BUCURESTI'), 
('O1144', '2024-11-21', 'Alex', 'Dolcan', 'str. Fabricii, nr. 107, BOTOSANI'), 
('O1145', '2024-11-22', 'Leonard', 'Firechiu', 'str. Batozei, nr. 69, GIURGIU'), 
('O1146', '2024-11-25', 'Anelis', 'Nicolas', 'str. Batargului, nr. 22/C, VASLUI'), 
('O1147', '2024-11-25', 'Erno', 'Grosz', 'Str. Rozetei, nr. 20, MARGHITA'), 
('O1148', '2024-12-03', 'Costin', 'Fler', 'str. Ion Creanga, nr. 376, BUCURESTI'), 
('O1149', '2024-12-03', 'Albert', 'Cardos', 'str. Moldovei, nr. 77, GALATI'), 
('O1150', '2024-12-03', 'Athena', 'Faire', 'str. Eroilor, nr.1, TIMISOARA'), 
('O1151', '2024-12-12', 'Robert', 'Magelan', 'str. Pacificului, nr.44, IASI'), 
('O1152', '2024-12-12', 'Ionela', 'Sturzu', 'str. Aleea Laptelui, nr. 12, SIBIU');

INSERT INTO ORDE_PRODUCT VALUES (1, 3, 1, 0),
(2, 2, 1, 0),
(3, 7, 2, 2),
(4, 3, 1, 0),
(5, 4, 1, 0), 
(6, 9, 1, 0), 
(7, 4, 3, 0), 
(8, 2, 1, 0), 
(9, 2, 1, 0), 
(10, 2, 1, 0),
(11, 2, 1, 0),
(12, 6, 1, 0),
(13, 6, 2, 0),
(14, 4, 1, 0),
(15, 7, 1, 0),
(16, 9, 1, 0),
(17, 2, 2, 0),
(18, 4, 1, 0),
(19, 4, 1, 0),
(20, 3, 1, 0),
(21, 6, 2, 0),
(22, 5, 1, 0),
(23, 8, 1, 0),
(24, 8, 1, 0),
(25, 8, 1, 0),
(26, 5, 1, 0),
(27, 4, 1, 0),
(28, 2, 1, 0),
(29, 2, 1, 0),
(30, 7, 3, 0),
(31, 5, 1, 0),
(32, 2, 1, 0),
(33, 2, 1, 0),
(34, 9, 2, 0),
(35, 6, 1, 0),
(36, 7, 1, 0),
(37, 4, 1, 0),
(38, 3, 1, 0),
(39, 3, 4, 0),
(40, 9, 1, 0),
(41, 2, 1, 0);

# Displaying all columns in a table
SELECT * FROM PRODUCT_LIST;

# Displaying 3 columns in a table
SELECT PRODUCT_CODE, GENDER, PRICE FROM PRODUCT_LIST;

# Show product with ID

SELECT ID, PRODUCT_CODE, GENDER
FROM PRODUCT_LIST
WHERE ID = 2;

# Bonus, PRODUCT_CODE: >, <, =, >=, <=, !=

SELECT PRODUCT_CODE, PRICE 
FROM PRODUCT_LIST
WHERE PRICE > 400;

SELECT PRODUCT_CODE, PRICE 
FROM PRODUCT_LIST
WHERE PRICE < 400;

SELECT PRODUCT_CODE, PRICE 
FROM PRODUCT_LIST
WHERE PRICE >= 400;

SELECT PRODUCT_CODE, PRICE 
FROM PRODUCT_LIST
WHERE PRICE <= 400;

SELECT PRODUCT_CODE, PRICE 
FROM PRODUCT_LIST
WHERE PRICE != 400;      

# NUMERICAL SORTING, DESCENDING -- ORDER BY

SELECT * 
FROM PRODUCT_LIST
ORDER BY PRICE DESC;

# NUMERICAL SORTING, ASCENDING -- ORDER BY

SELECT * 
FROM PRODUCT_LIST
ORDER BY PRICE ASC;
        
# LIMITATION OF RETURNED REGISTRATIONS -- LIMIT

SELECT * 
FROM PRODUCT_LIST
LIMIT 5;

SELECT * 
FROM PRODUCT_LIST
WHERE GENDER LIKE 'M'
ORDER BY PRODUCT_CODE ASC
LIMIT 3;  

SELECT * 
FROM PRODUCT_LIST
WHERE GENDER = 'F'
ORDER BY PRODUCT_CODE ASC
LIMIT 2;  

                           
# Aggregate functions: AVG, SUM, COUNT, MIN, MAX

# Displaying the maximum price among all products

SELECT MAX(PRICE) 
FROM PRODUCT_LIST;

# Displaying the minimum price among all products

SELECT MIN(PRICE)
FROM PRODUCT_LIST;

# How many products do I have in my list/stock?

SELECT COUNT(*) 
FROM PRODUCT_LIST;

# What is the average price?

SELECT AVG(PRICE)
FROM PRODUCT_LIST;

# What is the minimum order date?

SELECT MIN(ORDE_DATE) 
FROM ORDE;

# What is the highest (most recent) date of an order? 

SELECT MAX(ORDE_DATE)
FROM ORDE;                                  
                           
# When was the first order placed by Alin Botezatu?

SELECT FIRSTNAME, LASTNAME, MIN(ORDE_DATE)
FROM ORDE
WHERE FIRSTNAME = 'ALIN'
AND LASTNAME = 'BOTEZATU';                           

# Bonus GROUP BY:    
                       
SELECT FIRSTNAME, LASTNAME, MIN(ORDE_DATE)
FROM ORDE
WHERE FIRSTNAME = 'ALIN'
GROUP BY FIRSTNAME, LASTNAME;       



