--DATABASE CREATION SECTION
use master
IF EXISTS (SELECT * FROM sys.databases WHERE name = 'VMSDB')
DROP DATABASE VMSDB
CREATE DATABASE VMSDB
use VMSDB

-- TABLE CREATION SECTION
CREATE TABLE Venue(
VenueID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
[Location] VARCHAR(10) UNIQUE NOT NULL,
[Name] VARCHAR(150) NOT NULL,
Capacity VARCHAR(10) NOT NULL,
ImageURL VARCHAR(MAX) NOT NULL
);

CREATE TABLE [Event](
EventID INT IDENTITY(1,1)  PRIMARY KEY NOT NULL,
[Name] VARCHAR(20) NOT NULL,
[Date] VARCHAR(150) NOT NULL,
[Description] VARCHAR(150) NOT NULL,
);

CREATE TABLE Booking(
BookingID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
VenueID INT FOREIGN KEY REFERENCES Venue(VenueID),
EventID INT FOREIGN KEY REFERENCES [Event](EventID) ,
[Date] VARCHAR(60) NOT NULL,
[Status] VARCHAR(60) NOT NULL
);

-- TABLE INSERTION SECTION
INSERT INTO Venue([Location], [Name], Capacity, ImageURL) 
VALUES ('London', 'Springs', '100', 'https://images.immediate.co.uk/production/volatile/sites/3/2016/07/113027.jpg'),
('Jamaica', 'Clats', '500', 'https://images.theconversation.com/files/625049/original/file-20241010-15-95v3ha.jpg?ixlib=rb-4.1.0&rect=12%2C96%2C2671%2C1335&q=45&auto=format&w=1356&h=668&fit=crop')

INSERT  INTO [Event]([Name], [Date], [Description])
VALUES('Birthday', '23 JAN 2025', 'Good'),
('Madness','16 June 2025', 'Black')

INSERT INTO Booking(VenueID, EventID, [Date], [Status] )
VALUES (1,1,3, 'Pending'),
(2,2,8, 'Ready')


--/-- TABLE ALTERATION SECTION

-- TABLE MANIPULATION SECTION
SELECT * FROM Venue
SELECT * FROM [Event]
SELECT * FROM Booking

-- STORED PROCEDURES