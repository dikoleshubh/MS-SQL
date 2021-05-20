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
----------UC3-Ability to insert new contacts to addressbooK-------
USE ADDRESS_BOOK;
INSERT INTO ADDRESS_BOOKS (FirstName,LastName,Address,City,State,Zip,PhoneNo,Email)	
('EDUGAWA', 'CONAN','Sec-3','PUNE', 'MAHARASTRA', 452586,941144552, 'EDUGAWA@gmail.com'),
('HERO', 'NAN','Sec-3','PUNE', 'MAHARASTRA', 452546,941144232, 'EDUGA@gmail.com'),
('SARVES', 'S3ES','Sec-3','PUNE', 'MAHARASTRA', 452586,941144552, 'EDUGAWA@gmail.com'),
('EDUGAWSADA', 'COASDNAN','Sec-3','PUNE', 'MAHARASTRA', 452586,941144552, 'EDUGAWA@gmail.com');
select * from ADDRESS_BOOKS;

--UC4 Ability to edit existing contact person using their name----
use AddressBook_System;
update Address_Book set City='MUMBAI' where FirstName='Hero' and LastName='NAN';
select * from Address_Book;
