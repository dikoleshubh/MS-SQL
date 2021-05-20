---UC1-----
CREATE DATABASE ADDRESS_BOOK;
---UC2-----
USE ADDRESS_BOOK;
CREATE TABLE ADDRESS_BOOKS
(FirstName varchar(50) not null,
LastName varchar(50),
Address varchar(200) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo int not null,
Email varchar(150) not null
);
---UC3-----

