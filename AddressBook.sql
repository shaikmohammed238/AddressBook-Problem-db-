--- UC1:- Ability to create a Address Book Service DB.
--- Use SQL Client to create DB and DB Records.

CREATE DATABASE AddressBookDB;
USE AddressBookDB;

---UC2:- Ability to create a Address Book Table with first and last names, address, city, state, zip, phone number and email as its attributes.

CREATE TABLE AddressBook
(
firstName varchar(20) not null,
lastName varChar(20) not null,
address varchar(100) not null,
city varchar(20) not null,
state varchar(20) not null,
zip int not null,
phoneNumber varchar(12),
email varchar(50) not null
);
select * from AddressBook;

--- UC3:- Ability to insert new Contacts to Address Book.

insert into AddressBook (firstName,lastName,address,city,state,zip,phoneNumber,email) values('shaik','mohammed','Aagar','kadapa','andhra','516001','7780531408','shiakmohammedghouse@gmail.com');
select * from AddressBook;

insert into AddressBook values('shaik','ghouse','almaspet','kadapa','andhrapradesh','123456','87673249','moham@gmail.com');

insert into AddressBook values('shaik','azam','asnh','kadapa','andhrapradesh','516001','7780531408','shouse@gmail.com');


--- UC4:- Ability to edit existing contact person using their name

update AddressBook set zip=514260 where firstName = 'shaik';
select *from AddressBook;

update AddressBook set address=7658 where lastName = 'azam';
select *from AddressBook;

update AddressBook set firstName ='patan' where lastName = 'azam';
select *from AddressBook;