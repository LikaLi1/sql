CREATE TABLE Book (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    autor TEXT NOT NULL,
    genre TEXT NOT NULL
);

CREATE TABLE Reader_ticket (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    Book_id INTEGER,
    Ticket_data TEXT,
    FOREIGN KEY (Book_id) REFERENCES Book (id)
);

INSERT INTO Book (title, autor, genre) 
VALUES
('Higher-dimensional quantum mechanics', 'Gogol', 'Scientific'),
('Kolobok', 'Pushkin', 'Fairy tale'),
('The History of Buddhism', 'Lermontov', 'Religious');

INSERT INTO Reader_ticket (Book_id, Ticket_data) 
VALUES
(2, '2025-10-07'),
(2, '2025-12-30'),
(1, '2025-07-02');

DROP TABLE Book;
DROP TABLE Reader_ticket;

SELECT * FROM Reader_ticket
JOIN Book ON Reader_ticket.Book_id = Book.id;
