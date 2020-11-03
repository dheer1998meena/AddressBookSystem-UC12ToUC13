--UC10 Ability to get number of contact persons i.e. count by type.
 --Invoking the Address Book Database
use AddressBook_System;
select * from Address_Book;
 --Getting number of contact persons for each ContactType
select addressBookType,Count(addressBookType) as NumberOfContacts from Address_Book group by addressBookType;