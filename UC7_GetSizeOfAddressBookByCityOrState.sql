--UC7 Ability to understand the size of address book by City and State
--Invoking the Address Book Database
use AddressBook_System;
select * from Address_Book;
--Inserting more data into table
-- displaying the count of contacts by city
 select City,count(*) as 'Number of Contacts'
  from Address_Book
  group by City;
 --displaying the count of contacts by state
 select StateName,count(*) as 'Number of Contacts'
  from Address_Book 
  group by StateName;