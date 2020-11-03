--UC Ability to identify each Address Book with name and Type
--Invoking the Address Book Database
use AddressBook_System;
select * from Address_Book;
--Altering address_book to add new columns, addressbookName and Type of contacts
alter table Address_Book add addressBookType varchar(30), addressBookName varchar(40);
--Updating the new columns
update Address_Book set addressBookType = 'Friends' where City ='Agra';
update Address_Book set addressBookName = 'DheerRecords';
update Address_Book set addressBookType = 'Family' where LastName ='Nehra';
update Address_Book set addressBookType = 'Profession' where addressBookType is null;
--Retrieving all the data from table
select * from Address_Book;