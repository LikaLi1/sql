CREATE TABLE movies (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT UNIQUE NOT NULL,
    genre TEXT NOT NULL,
    duration INTEGER NOT NULL,
    rating REAL NULL,
    ticket_sold INTEGER NOT NULL
);

INSERT INTO movies VALUES
(1, 'Alice in Wonderland', 'fantasy, adventure', 90, 3, 1000),
(2, 'Terrifying 3', 'horror', 124, 6, 15000),
(3, 'It', 'horror', 101, 7, 2000),
(4, 'Back to the Future', 'fantasy, adventure', 116, 9, 4000),
(5, 'Home Alone', 'comedy, family', 103, 9, 5000);

UPDATE movies SET ticket_sold = ticket_sold + 500;

UPDATE movies SET rating = '0';

UPDATE movies SET rating = REPLACE(rating, '6', '5')
WHERE rating LIKE '%6';

ALTER TABLE movies RENAME TO cinemaMovies;

UPDATE cinemaMovies SET duration = duration * 0.1 WHERE genre IN ('horror');

DELETE FROM cinemaMovies WHERE rating < 4;

DROP TABLE movies;
