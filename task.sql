CREATE DATABASE ShopDB;
USE ShopDB;

-- Створення таблиці для зберігання країн
CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Створення таблиці для кешування GeoIP даних (Колонки: ID, IP діапазон, CountryID)
CREATE TABLE GeoIPCache (
    ID INT,
    IPRange VARCHAR(100),
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=MEMORY;

-- Створення таблиці для зберігання описів продуктів для різних країн (Колонки: ID, CountryID, ProductID, Description)
CREATE TABLE ProductDescription (
    ID INT,
    Description TEXT,
    ProductID INT,
    CountryID INT,
    PRIMARY KEY (ID)
) ENGINE=InnoDB;

-- Створення таблиці для зберігання логів. Зараз ми не потребуємо їх зберігати, але потрібно реалізувати функціональність (Колонки: ID, Time, LogRecord)
CREATE TABLE Logs (
    ID INT,
    Timestamp DATETIME,
    Message TEXT
) ENGINE=BLACKHOLE;

-- Створення таблиці для зберігання звітних даних, які будуть відправлені в окремий додаток у форматі CSV для аналітики (Колонки: Date, ProductName, Orders)
CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(50),
    Orders INT,
    PRIMARY KEY (Date, ProductName)
) ENGINE=CSV;
