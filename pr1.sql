-- UPDATE - обновление записей
-- UPDATE table_name 
-- SET column_1 = value
-- WHERE condition

CREATE TABLE IF NOT EXISTS employees(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    department TEXT NULL,
    salary REAL NULL,
    hire_date TEXT NOT NULL,
    email TEXT UNIQUE
);

INSERT INTO employees (first_name, last_name, department, salary, hire_date, email)
VALUES
('Petr', 'Petrov', 'IT', 45000, '2025-09-25', 'petr@ya.ru'),
('Beth', 'Mischenko', 'IT', 10000000, '2023-10-13', 'bet@ya.ru'),
('Lusine', 'Kazarian', 'IT', 10000000, '1956-02-08', 'lusic@mail.ru'),
('Denis', 'Litvinov', 'IT', 10000000, '2014-04-04', 'den4k@google.com'),
('Katia', 'Petrova', 'IT', 35000, '2023-12-22', 'KAte@mail.ru');

UPDATE employees
SET salary = 80000
WHERE id = 5;
