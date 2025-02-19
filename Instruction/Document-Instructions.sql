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
