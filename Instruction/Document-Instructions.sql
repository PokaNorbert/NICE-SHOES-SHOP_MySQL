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















