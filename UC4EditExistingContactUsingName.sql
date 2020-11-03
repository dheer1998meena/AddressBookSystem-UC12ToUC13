--UC4 Ability to edit existing contact person using their name 
use AddressBook_System;
select * from Address_Book;
--Edit and Update data of an existing contact
update Address_Book set City='Jhansi' where FirstName='Shubham' and LastName='Nehra';
--Retrieving all the data from table
select * from Address_Book;