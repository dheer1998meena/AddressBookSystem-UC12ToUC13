--UC12 : Implemetation of E-R concept.
--Invoking the address book database.
use AddressBook_System;
--Display all the data.
select* from Address_Book;
--Creating contact table
create table contact(
FirstName varchar(100) not null,
LastName varchar(100),
Address varchar(500) not null,
City varchar(50) not null,
State varchar(50) not null,
Zip int not null,
PhoneNo bigint not null,
Email varchar(250) not null,
primary key(FirstName,LastName)
);
--Adding data into the contact table
insert into contact values
('Navya', 'Upadhyay','Sec-3','Kanpurpur', 'UP', 214336,941144552, 'Navya@gmail.com'),
 ('Dheer', 'Meena', 'Sec-2', 'karauli', 'Rajasthan', 211136, 991144552, 'dheer@gmail.com'),
 ('Shubham', 'Nehra', 'Sec-1', 'Agra', 'UP', 217336, 954684552, 'shubham@gmail.com'),
 ('Rajat', 'Baisla', 'Sec-5', 'Patna', 'Bihar', 217336, 969684552 ,'rajat@gmail.com');
 Select * from contact;
 --Creating table contact_type
create table type(
SrNo int not null,
addressContactType varchar(100) not null,
primary key(SrNo,addressContactType)
);
--Adding data into the table type
insert into type values
(1,'FRIENDS'),
(2,'PROFESSION'),
(3,'FAMILY'),
(4,'EMERGENCY');
select*from type;
--Creating table contact_type
create table contact_type(
FirstName varchar(100) not null,
LastName varchar(100),
addressContactType varchar(100) not null
);
--Adding data into the table contact_type
insert into contact_type values
('Navya','Upadhyay','FRIENDS'),
('Shubham','Nehra','FAMILY');
select *from contact_type;
--Creating table addressbook
create table addressbook(
SrNo int not null,
addressBookName varchar(100) not null,
primary key(SrNo,addressBookName)
);
--Adding values into table
insert into addressbook values
(1,'Navya'),
(2,'Radha'),
(3,'Shubham'),
(4,'Rajat');
select*from addressbook;
--Creating table addressbookname storing bookname for each contact
create table Addressbookname(
FirstName varchar(100) not null,
LastName varchar(100),
addressBookName varchar(100) not null
);
--Adding data into table
insert into Addressbookname values
('Radha','Yadav','Radha'),
('Navya','Upadhyay','Radha');
select*from Addressbookname;