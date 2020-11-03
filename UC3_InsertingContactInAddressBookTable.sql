--UC3 Ability to insert new contacts to addressbook 

use AddressBook_System;
--Creating address book table
create table Address_Book
(FirstName varchar(50) not null,
LastName varchar(50),
AddressDetail varchar(200) not null,
City varchar(50) not null,
StateName varchar(50) not null,
Zip int not null,
PhoneNo int not null,
Email varchar(150) not null
);
--Insert data into table
insert into Address_Book(FirstName,LastName,AddressDetails,City,StateName,Zip,PhoneNo,Email)
values
('Navya', 'Upadhyay','Sec-3','Kanpurpur', 'UP', 214336,941144552, 'Navya@gmail.com'),
 ('Dheer', 'Meena', 'Sec-2', 'karauli', 'Rajasthan', 211136, 991144552, 'dheer@gmail.com'),
 ('Shubham', 'Nehra', 'Sec-1', 'Agra', 'UP', 217336, 954684552, 'shubham@gmail.com'),
 ('Rajat', 'Baisla', 'Sec-5', 'Patna', 'Bihar', 217336, 969684552 ,'rajat@gmail.com');
--Retrieving all the data from table
select * from Address_Book;