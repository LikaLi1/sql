CREATE TABLE Students (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name  TEXT NOT NULL,
    phone TEXT  NOT NULL
);

DROP TABLE Students;

CREATE TABLE Customers (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    phone TEXT UNIQUE
);

CREATE TABLE Orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Customer_id INTEGER,
    Orders_data TEXT,
    FOREIGN KEY (Customer_id) REFERENCES Customers (id)
);

INSERT INTO Customers (first_name, last_name, phone) 
VALUES
('Ivan', 'Sidorov', '+79897355842'),
('Petr', 'Ivanov', '+78236859472'),
('Olga', 'Semenova', '+71234567890');

INSERT INTO Orders (Customer_id, Orders_data) 
VALUES
(2, '2025-10-07'),
(2, '2025-12-30'),
(1, '2025-07-02');

DROP TABLE Orders;
DROP TABLE Customers;

SELECT * FROM Orders
JOIN Customers ON Orders.Customer_id = Customers.id;
