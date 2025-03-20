## Database Project for **Nice-Shoes Shop**
The scope of this project is to use all the SQL knowledge gained throught the Software Testing course and apply them in practice.

**Application** under test: Nice-Shoes Shop

**Tools** used: MySQL Workbench

**Database description:** The bookstore online has the purpose to sell books content on electronic format. There are so many books categories such : Books for kids, Personal development, IT. All the books are able to be ordered starting from Monday to saturday at every hour. The orders placed on a non working day it will be processed in the first working day.

## Database Schema 

You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them.

*

The tables are connected in the following way:
- **  is connected with ** through a ** relationship which was implemented through ** as a primary key and ** as a foreign key
- **  is connected with ** through a ** relationship which was implemented through ** as a primary key and ** as a foreign key
- **  is connected with ** through a ** relationship which was implemented through ** as a primary key and ** as a foreign key
- **  is connected with ** through a ** relationship which was implemented through ** as a primary key and ** as a foreign key

*

## Database Queries

### DDL (Data Definition Language)

The following instructions were written in the scope of CREATING the structure of the database:


*


***After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:


*


### DML (Data Manipulation Language)

In order to be able to use the database I populated the tables with various data necessary in order to perform queries and manipulate the data. 
In the testing process, this necessary data is identified in the Test Design phase and created in the Test Implementation phase. 

Below you can find all the insert instructions that were created in the scope of this project:


*


*****After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:


*


*****After the testing process, I deleted the data that was no longer relevant in order to preserve the database clean: 


*


### DQL (Data Query Language)


In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:

*********


## Conclusions

In conclusion, I realized that I like working with databases. In this regard, I will publish new projects or solved exercises related to working with databases in the future. In order to develop my database skills, it is necessary to participate in similar projects that belong to other people or groups of people or even work within a company (in this case, I turn my engines to maximum speed to be able to learn as quickly as possible).
