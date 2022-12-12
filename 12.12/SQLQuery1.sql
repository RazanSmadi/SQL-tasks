CREATE TABLE Persons (
    ID int primary key,
    Name varchar(20) NOT NULL,
    phone numeric
);

create table orders (
Id int primary key,
price FLOAT,
orderDate date,
);


create table Products (
Id int primary key,
price FLOAT,
nameOfProduct char(30),
);

create table Employees (
Id int primary key,
fName char (20) not null,
lName char(20),
salary FLOAT,
numOfHour int not null,
);


