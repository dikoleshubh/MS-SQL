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
USE ADDRESS_BOOK;
update ADDRESS_BOOKS set City='MUMBAI' where FirstName='Hero' and LastName='NAN';
select * from ADDRESS_BOOKS
--UC5 Ability to delete existing contact person using their name----

USE ADDRESS_BOOK;
DELETE  FROM ADDRESS_BOOKS where FirstName='Hero' and LastName='NAN';
select * from ADDRESS_BOOKS
--UC6 Ability to FIND existing contact person using their STATE----
USE ADDRESS_BOOK;
select * from ADDRESS_BOOKS WHERE City='PUNE' ORDER BY FirstName+LastName
--UC7 Ability to understand the size of address book by City and State

use  ADDRESS_BOOK;

-- displaying the count of contacts by city
 select City,count(*) as 'Number of Contacts'
  from ADDRESS_BOOKS;
  group by City;
 --displaying the count of contacts by state
 select State,count(*) as 'Number of Contacts'
  from ADDRESS_BOOKS 
  group by State;

--UC8 Ability to retrieve entries sorted alphabetically by Person’s name for a given city

use ADDRESS_BOOK;
--Retrieve entries sorted alphabetically by name for PUNE
select * from  ADDRESS_BOOKS where City='PUNE' order by FirstName+LastName; 
--UC9 Ability to identify each Address Book with name and Type
use ADDRESS_BOOK;
select * from ADDRESS_BOOKS;

alter table ADDRESS_BOOKS add ADDRESS_BOOKSType varchar(30),  ADDRESS_BOOKSName varchar(40);

update ADDRESS_BOOKS set ADDRESS_BOOKSType = 'SADASHIV PETH' where City ='MUMBAI';
update ADDRESS_BOOKS set ADDRESS_BOOKSName = 'PROFILES';
update ADDRESS_BOOKS set ADDRESS_BOOKSType = 'PERSON' where LastName ='CONAN';
update ADDRESS_BOOKS set ADDRESS_BOOKSType = 'Profession' where ADDRESS_BOOKSType is null;
use ADDRESS_BOOK;
--Adding the same person to both friend and family types
insert into ADDRESS_BOOKS(FirstName,LastName,Address,City,State,Zip,PhoneNo,Email, ADDRESS_BOOKSType, ADDRESS_BOOKSName)
values('RWER', 'YWES','Sec-6','DGYR', 'DASDG', 214566,954646554333, 'ASDCa@gmail.com','PERSON','PROFILES');
--Retrieving details of the duplicated contact
select * from ADDRESS_BOOKS where FirstName='RWER' and LastName='YWES';
