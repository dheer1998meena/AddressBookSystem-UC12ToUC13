--UC11 Ability to add person to both Friend and Family
--Invoking the address book database.
use AddressBook_System;
--Display all the data.
select* from Address_Book;
--Adding the same person to both friend and family types
insert into Address_Book(FirstName,LastName,AddressDetails,City,StateName,Zip,PhoneNo,Email,addressBookType,addressBookName)
values('Radha', 'Yadav','Sec-6','Delhi', 'Delhi', 214566,941144333, 'Radha@gmail.com','Family','DheerRecords');
--Retrieving details of the duplicated contact
select * from Address_Book where FirstName='Navya' and LastName='Upadhyay';
