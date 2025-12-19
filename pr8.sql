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
('Мария', '2025-02-15'),
('Алексей', '2023-03-20'),
('Ольга', '2024-04-05'),
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
(1, 2, '2021-06-01', '2023-06-15'),
(3, 1, '2023-06-05', '2023-06-20'),
(2, 4, '2024-06-10', '2023-06-25');

SELECT reader_id, reader_name FROM readers;

SELECT book_title, author FROM books;

SELECT issue_id, reader_id, book_id, issue_date, return_date FROM book_issues;

SELECT books.book_title, book_issues.issue_date
FROM book_issues
JOIN books ON book_issues.book_id = books.book_id;

SELECT books.book_title, book_issues.issue_date 
FROM book_issues
JOIN books ON book_issues.book_id = books.book_id;

SELECT readers.reader_name, book_issues.issue_date 
FROM book_issues
JOIN readers ON book_issues.reader_id = readers.reader_id;

SELECT readers.reader_name, books.book_title, book_issues.issue_date 
FROM book_issues
JOIN readers ON book_issues.reader_id = readers.reader_id
JOIN books ON book_issues.book_id = books.book_id;

SELECT books.book_title FROM book_issues
JOIN books ON book_issues.book_id = books.book_id WHERE book_issues.reader_id = 5;

SELECT DISTINCT readers.reader_name FROM book_issues
JOIN readers ON book_issues.reader_id = readers.reader_id WHERE book_issues.book_id = 3;

SELECT books.book_title, book_issues.issue_date 
FROM book_issues
JOIN books ON book_issues.book_id = books.book_id 
WHERE strftime('%Y-%m', book_issues.issue_date) = '2024-01';

SELECT reader_name, registration_date FROM readers
WHERE strftime('%Y', registration_date) = '2023';
