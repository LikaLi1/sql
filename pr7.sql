CREATE TABLE employees(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    phone TEXT NULL,
    mail TEXT NULL,
    passport TEXT UNIQUE NOT NULL,
    salary INTEGER NOT NULL,
    date_of_employment TEXT NOT NULL
);

INSERT TABLE employees (first_name, last_name, age, phone, mail, passport, salary, date_of_employment)
VALUES 
('Ivan', 'Ivanov', 30, '+7 912 345-67-89', 'ivanov@gmail.com', '11-00-091481', 50000, '2020-01-15'),
('Maria', 'Petrova', 28, '+7 923 456-78-90', 'petrova@mail.ru', '95-94-843182', 55000, '2019-03-10'),
('Alexey', 'Sidorov', 35, '+7 934 567-89-01', 'sidorov@gmail.com', '32-42-822399', 60000, '2018-07-20'),
('Elena', 'Kuznetsova', 40, '+7 945 678-90-12', 'kuznetsova@mail.ru', '01-75-835992', 65000, '2017-11-05'),
('Dmitry', 'Novikov', 27, '+7 956 789-01-23', 'novikov@ya.ru', '84-21-922454', 48000, '2021-06-13'),
('Anna', 'Morozova', 33, '+7 967 890-12-34', 'morozova@mail.ru', '54-97-310015', 53000, '2019-09-01'),
('Sergey', 'Lebedev', 45, '+7 978 901-23-45', 'lebedev@gmail.com', '23-42-334185', 70000, '2015-05-25'),
('Olga', 'Vasilyeva', 29, '+7 989 012-34-56', 'vasilyeva@ya.ru', '12-43-524852', 52000, '2020-02-14');

SELECT MIN(age) FROM employees;

SELECT MAX(age) FROM employees;

SELECT AVG(salary) FROM employees;

SELECT SUM(salary) FROM employees;

SELECT COUNT(*) FROM employees WHERE = 55000;

SELECT age, COUNT(*) FROM employees
GROUP BY age
HAVING COUNT(*) > 1;
