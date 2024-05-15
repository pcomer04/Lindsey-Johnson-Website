use [Lindsey-Website-Database];

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY,
    Username NVARCHAR(50) NOT NULL,
    PasswordHash NVARCHAR(100) NOT NULL,
    IsArtist BIT NOT NULL DEFAULT 0, -- 0 for regular user, 1 for artist
    CONSTRAINT Unique_Username UNIQUE (Username)
);

CREATE TABLE Emails (
    EmailID INT PRIMARY KEY IDENTITY,
    UserID INT NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_UserID_Emails FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
    CONSTRAINT Unique_Email UNIQUE (UserID, Email)
);

CREATE TABLE Addresses (
    AddressID INT PRIMARY KEY IDENTITY,
    UserID INT NOT NULL,
    AddressLine1 NVARCHAR(100) NOT NULL,
    AddressLine2 NVARCHAR(100),
    City NVARCHAR(100) NOT NULL,
    State NVARCHAR(100) NOT NULL,
    ZipCode NVARCHAR(20) NOT NULL,
    Country NVARCHAR(100) NOT NULL,
    CONSTRAINT FK_UserID_Addresses FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY,
    Name NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2) NOT NULL,
    Category NVARCHAR(50),
    ImageURL NVARCHAR(MAX),
    CONSTRAINT Unique_ProductName UNIQUE (Name)
);
