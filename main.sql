CREATE TABLE authors (id INTEGER, name TEXT);
CREATE TABLE books (title TEXT, author_id INTEGER);

INSERT INTO authors VALUES (1, 'Asimov'), (2, 'Le Guin'), (3, 'Tolkien');
INSERT INTO books VALUES
    ('Foundation', 1),
    ('Lord of the Rings', 3),
    ('Hobbit', 3),
    ('Dispossessed', 2);

-- SELECT b.title, a.name FROM books b JOIN authors a ON ... ORDER BY ...
SELECT books.title, authors.name
FROM books
JOIN authors ON books.author_id = authors.id
ORDER BY books.title;