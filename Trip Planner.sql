--CREATE DATABASE TripPlanner

--GO

--USE TripPlanner

--GO

--CREATE TABLE [User](
--Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--FirstName NVARCHAR(20) NOT NULL,
--LastName NVARCHAR(40) NOT NULL,
--DOB DATE NOT NULL,
--[Address] NVARCHAR(100) NOT NULL,
--Phone NVARCHAR(20)
--);

--CREATE TABLE Passport(
--Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--PassportNumber NVARCHAR(20) NOT NULL,
--CountryOfOrigin NVARCHAR(40) NOT NULL,
--ExpDate DATE NOT NULL
--);

--CREATE TABLE Trip(
--Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--Budget Decimal,
--StartDate DATE NOT NULL,
--EndDate DATE NOT NULL,
--StartDestination NVARCHAR(20) NOT NULL,
--EndDestination NVARCHAR(40) NOT NULL,
--ModeOfTransportation NVARCHAR(50) NOT NULL
--);

--CREATE TABLE Hotel(
--Id INT PRIMARY KEY IDENTITY(1,1) NOT NULL,
--[Name] NVARCHAR(50) NOT NULL,
--[State] NVARCHAR(25) NOT NULL,
--City NVARCHAR(25) NOT NULL,
--CheckIn DATE NOT NULL,
--CheckOut DATE NOT NULL,
--CostPerNight DECIMAL NOT NULL,
--PhoneNumber NVARCHAR NOT NULL
--);

--ALTER TABLE [User]
--ADD PassportId INT FOREIGN KEY REFERENCES Passport(Id)

--GO

--ALTER TABLE Passport
--ADD UserId INT FOREIGN KEY REFERENCES [User](Id)

--ALTER TABLE Trip
--ADD UserId INT FOREIGN KEY REFERENCES [User](Id)

--GO

--ALTER TABLE [User]
--ADD TripId INT FOREIGN KEY REFERENCES Trip(Id)

--ALTER TABLE Hotel
--ADD UserId INT FOREIGN KEY REFERENCES [User](Id)

--GO

--ALTER TABLE [User]
--ADD HotelId INT FOREIGN KEY REFERENCES Hotel(Id)