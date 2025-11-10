CREATE TABLE employess (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NULL,
    salary REAL NOT NULL,
    hire_date TEXT NOT NULL,
    email TEXT UNIQUE NOT NULL
);

INSERT INTO employess VALUES
(1, 'IVAN', 'IVANOV', 'IT', 50000 , '2025-05-11', 'ivan@ya.ru'),
(2, 'OLGA', 'IVANOVA', 'HR', 45000 , '2024-10-12', 'ola@rambler.ru'),
(3, 'ALEXEY', 'PETROV', 'IT', 50000 , '2024-12-12', 'petrov@gmail.ru'),
(4, 'MICHAIL', 'DUSHKIN', 'Sales', 40000 , '2025-09-30', 'miha@ya.ru'),
(5, 'TATIANA', 'PETROV', 'Sales', 40000 , '2025-09-27', 'tata@inbox.ru');

UPDATE employess SET salary = 85000 WHERE department = 'IT';

UPDATE employess SET salary = 90000 WHERE salary BETWEEN 50000 AND 85000;

DROP TABLE employess;
