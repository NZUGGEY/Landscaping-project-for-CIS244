SELECT * FROM landscaping.jobservice;
CREATE DATABASE Landscaping;
USE Landscaping;

Create Table Jobservice(
CustomerID int UNSIGNED AUTO_INCREMENT, 
FirstName varchar(255) NOT NULL,
LastName varchar(255) NOT NULL,
Address varchar(255) NOT NULL,
PhoneNumber varchar(255) NOT NULL,
Email varchar(255) NOT NULL,
PRIMARY KEY (CustomerID)
);

CREATE TABLE Job (
JobID INT UNSIGNED AUTO_INCREMENT, 
CustomerID varchar(255), 
DateScheduled datetime,
StartTime datetime, 
EndTime datetime,
Notes varchar(255) NOT NULL,
TotalCost INT UNSIGNED,
PRIMARY KEY (CustomerID),
CONSTRAINT fk_Customers
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
ON UPDATE CASCADE ON DELETE SET NULL
);

CREATE TABLE Employee (
EmployeeID INT UNSIGNED AUTO_INCREMENT, 
FirstName varchar(255) NOT NULL, 
LastName varchar(255) NOT NULL,
JobTitle varchar(255) NOT NULL,
HourlyWage varchar(255) NOT NULL,
PRIMARY KEY (EmployeeID) 
);

CREATE TABLE Customer(
CustomerID INT UNSIGNED AUTO_INCREMENT,
FirstName varchar(255) NOT NULL,
LastName varchar(255) NOT NULL,
Address varchar(255) NOT NULL,
PhoneNumber varchar(255) NOT NULL,
Email varchar(255) NOT NULL,
PRIMARY KEY (CustomerID)
);

CREATE TABLE Equipment(
EquipmentID INT UNSIGNED AUTO_INCREMENT,
EquipmentName varchar(255) NOT NULL,
PurchaseDate datetime,
Conditon varchar(255),
PRIMARY KEY (EquipmentID)
);

CREATE TABLE Invoice(
InvoiceID INT UNSIGNED AUTO_INCREMENT, 
JobID INT UNSIGNED NOT NULL,
InvoiceDate datetime, 
AmountDate datetime,
PaymentDue varchar(255), 
PaymentStatus varchar(255),
PRIMARY KEY (InvoiceID),
FOREIGN KEY (JobID) REFERENCES Jobs(JobID)
ON UPDATE CASCADE ON DELETE CASCADE
);
