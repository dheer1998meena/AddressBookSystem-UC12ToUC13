--UC13 Retrieving data using new table structure 
--Invoking the address book database.
use AddressBook_System;
--Display all the data.
select* from Address_Book;
--UC6 Displaying the contact from the address book table matching the city OR state
select contact.FirstName,contact.LastName,contact.PhoneNo,contact.Email,
location.AddressDetails, location.City, location.StateName, book.addressBookName, type.addressContactType
from Address_Book contact,AddressBook book, Address_Details location,contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
and (location.StateName = 'UP' or location.City = 'Kanpur');
--UC7 displaying the count of contacts by city
select location.City, count(distinct(contact.FirstName)) as 'Count By City'
from Address_Book contact,AddressBook book, Address_Details location,contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
group by location.City;
--UC7 displaying the count of contacts by StateName
select location.StateName, count(distinct(contact.FirstName)) as 'Count By City'
from Address_Book contact,AddressBook book, Address_Details location,contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
group by location.StateName;
--UC8 Sorting alphabetically in ascending order by the name and belonging to a city say Delhi.
select contact.FirstName,contact.LastName,contact.PhoneNo,contact.Email,
location.AddressDetails, location.City, location.StateName, book.addressBookName, type.addressContactType
from Address_Book contact,AddressBook book, Address_Details location,contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
and location.City = 'Delhi'
order by contact.FirstName;
--UC10 Getting the contact count grouping by the contact type
select type.addressContactType, COUNT(*) as 'Number Of Contacts'
from Address_Book contact,AddressBook book, Address_Details location,contact_type type
where contact.contactId = book.contactId and book.contactId = location.contactId and location.contactId = type.contactId 
group by type.addressContactType;

