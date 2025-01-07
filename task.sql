CREATE DATABASE ShopDB;
USE ShopDB;

-- Створення таблиці для зберігання країн
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

CREATE TABLE GeoIPCache (
    ID INT,
    IPRange VARCHAR(50),
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=MEMORY;

-- Create ProductDescription table with InnoDB engine
CREATE TABLE ProductDescription (
    ID INT,
    Description TEXT,
    ProductID INT,
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Create Logs table with BLACKHOLE engine
CREATE TABLE Logs (
    ID INT,
    Timestamp TIMESTAMP,
    Message TEXT,
    PRIMARY KEY (ID)
) ENGINE=BLACKHOLE;

-- Create ProductReporting table with CSV engine
CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(255),
    Orders INT,
    PRIMARY KEY (Date, ProductName)
) ENGINE=CSV;