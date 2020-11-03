--UC5 Ability to delete existing contact person using their name
use AddressBook_System;
select * from Address_Book;
--Edit and Update data of an existing contact
delete from Address_Book  where FirstName='Dheer' and LastName='Meena';
--Retrieving all the data from table
select * from Address_Book;