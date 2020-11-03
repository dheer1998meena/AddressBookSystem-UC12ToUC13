--UC8 Ability to retrieve entries sorted alphabetically by Person’s name for a given city
--Invoking the Address Book Database
use AddressBook_System;
select * from Address_Book;
--Retrieve entries sorted alphabetically by name for Agra
select * from Address_Book where City='Agra' order by FirstName+LastName;
