CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    email TEXT NOT NULL UNIQUE,
    age INTEGER CHECK (age >= 0 AND age < 150),
    role TEXT NOT NULL DEFAULT 'member'
);

INSERT INTO users (id, email, age) VALUES (1, 'ada@x.io', 36);
INSERT INTO users (id, email, age, role) VALUES (2, 'bob@x.io', 50, 'admin');

SELECT id, email, age, role FROM users ORDER BY id;