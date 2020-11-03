--UC 6 : Ability to retrieve person belonging to a city or state from address book table
use AddressBook_System;
select * from Address_Book;
--Retrieve details of people belonging to either city Agra or state UP
select * from Address_Book where StateName='UP' or City='Kanpur';