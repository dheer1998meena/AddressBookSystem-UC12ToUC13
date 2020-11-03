--UC12 : Implemetation of E-R concept.
--Invoking the address book database.
use AddressBook_System;
--Display all the data.
select* from Address_Book;
--Create contact type table for the basic rdbms layout
create table contact_type
( addressContactType varchar(50),
contactId int not null);
--Insert into the contact type table
insert into contact_type(contactId, addressContactType)
values (1000, 'Family'), (1001, 'Friends'),
(1002, 'Profession'), (1003, 'Profession'),
(1004, 'Friends');
--Displaying the columns from the contact type table .
 select * from contact_type;

 --Create address Detail table for the basic rdbms layout
create table Address_Details
( contactId int, City varchar(100) not null, 
StateName varchar(100) not null, AddressDetails varchar(100) not null);
--Adding a primary key as Contact id auto generated
alter table Address_Book add contactId int not null identity(1000,1) primary key;
--Insert into the address detail table 
insert into Address_details (contactId, City, StateName,AddressDetails)
values (1000, 'Kanpur', 'UP', 'Sec-3'), (1001, 'Delhi', 'Delhi', 'Sec-6'),
(1002, 'Agra', 'UP', 'Sec-1'), (1003, 'Patna', 'Bihar', 'Sec-5'),
(1004, 'Delhi', 'Delhi', 'Sec-6');
-- Create address Book table for the basic rdbms layout.
create table AddressBook
( addressBookName varchar(50),
 contactId int not null);
 /*Insert into the address book table */
insert into AddressBook(contactId, addressBookName)
values (1000, 'DheerRecords'), (1001, 'DheerRecords'),
(1002, 'DheerRecords'), (1003, 'DheerRecords'),
(1004, 'DheerRecords');
select*from AddressBook;
