--UC 2 : Ability to create address book table 
use AddressBook_System;
--Creating address book table
create table Address_Book
(FirstName varchar(50) not null,
LastName varchar(50),
Address varchar(200) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo int not null,
Email varchar(150) not null
);
--Retrieving all the data from table
select * from address_book;