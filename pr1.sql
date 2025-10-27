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
