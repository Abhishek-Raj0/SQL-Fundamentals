CREATE TABLE employees (name TEXT, salary INTEGER);
INSERT INTO employees VALUES
    ('Ada', 95000),
    ('Bob', 50000),
    ('Carol', 80000),
    ('Dan', 55000);

-- TODO: raise Bob's salary to 90000 (his row only)
-- TODO: remove Carol's row
-- TODO: report the name and salary of everyone still here, ordered by name
UPDATE employees SET salary = 90000 WHERE name = 'Bob';
DELETE FROM employees WHERE name = 'Carol';
SELECT name, salary FROM employees ORDER BY name;