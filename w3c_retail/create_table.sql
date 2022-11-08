use database dev_db;
use schema w3c;

--create table Customers
create table Customers if not exists(
CustomerID int,	
CustomerName string,	
ContactName string,
Address string,	
City string,
PostalCode string,
Country string);

select * from customers;

--create table Categories

create table Categories(
CategoryID int,
CategoryName string,
Description string);


create table Employees(
EmployeeID	int,
LastName string,	
FirstName string,
BirthDate date,	
Photo string,	
Notes  string);

create table OrderDetails(
OrderDetailID int,
OrderID int,
ProductID int,
Quantity int
);


create table Orders(
OrderID	int, CustomerID int,	EmployeeID int,	OrderDate	date ,ShipperID  int);

create table Products(
ProductID int,	ProductName string,	SupplierID int,
CategoryID int,	Unit string,	Price float);

create table Shippers(
ShipperID int	,ShipperName string	,Phone string
);


create table Suppliers(
SupplierID int,	SupplierName string,	ContactName string,	Address string,	City string,	PostalCode string,	Country string,	Phone string);

select * from Suppliers limit 12;



