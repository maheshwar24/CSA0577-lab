USE dbms;

DROP TABLE IF EXISTS books;
CREATE TABLE books (
    book_id INT PRIMARY KEY,
    book_title VARCHAR(100) NOT NULL,
    author VARCHAR(50) NOT NULL
);

INSERT INTO books (book_id, book_title, author) VALUES
(1, 'The Alchemist', 'Paulo Coelho'),
(2, '1984', 'George Orwell'),
(3, 'To Kill a Mockingbird', 'Harper Lee');

SELECT * FROM books;

TRUNCATE TABLE books;

SELECT * FROM books;