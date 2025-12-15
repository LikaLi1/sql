CREATE TABLE readers(
    reader_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reader_name TEXT NOT NULL,
    registration_date TEXT NOT NULL
);

CREATE TABLE books(
    book_id INTEGER PRIMARY KEY AUTOINCREMENT,
    book_title TEXT NOT NULL,
    author TEXT NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE book_issues(
    issue_id INTEGER PRIMARY KEY AUTOINCREMENT,
    reader_id INTEGER NOT NULL,
    book_id INTEGER NOT NULL,
    issue_date TEXT NOT NULL,
    return_date TEXT NOT NULL,
    FOREIGN KEY (reader_id) REFERENCES readers (reader_id),
    FOREIGN KEY (book_id) REFERENCES books (book_id)
);

INSERT INTO readers (reader_name, registration_date)
VALUES 
('Иван', '2023-01-10'),
('Мария', '2023-02-15'),
('Алексей', '2023-03-20'),
('Ольга', '2023-04-05'),
('Дмитрий', '2023-05-12');

INSERT INTO books (book_title, author, year)
VALUES 
('Человек недостойный', 'Лев Толстой', 1869),
('Сумерки', 'Фёдор Достоевский', 1866),
('Сказать жизни ДА!', 'Михаил Булгаков', 1967),
('Солнце полуночи', 'Иван Тургенев', 1862),
('Бегущий в Лабиринте', 'Александр Пушкин', 1833);

INSERT INTO book_issues (reader_id, book_id, issue_date, return_date)
VALUES 
(1, 2, '2023-06-01', '2023-06-15'),
(3, 1, '2023-06-05', '2023-06-20'),
(2, 4, '2023-06-10', '2023-06-25');

SELECT reader_id, reader_name FROM readers;

SELECT book_title, author FROM books;

SELECT issue_id, reader_id, book_id, issue_date, return_date FROM book_issues;

SELECT book_title, issue_date FROM book_issues
JOIN books ON book_issues.book_id = book_id;




Выполните следующие запросы:

Показать, какие книги были выданы (названия книг и даты выдачи)

Показать, кому были выданы книги (имена читателей и даты выдачи)

Показать полную информацию о выдачах: имя читателя, название книги, дата выдачи

Найти все книги, которые были выданы читателю с номером билета 5

Найти всех читателей, которые брали книгу с номером 3

Показать книги, которые были выданы в январе 2024 года

Показать читателей, зарегистрированных в 2023 году


К работе прикрепить не менее  7 скриншотов, с таблицами и результатами запросов.
