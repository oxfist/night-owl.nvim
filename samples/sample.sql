-- SQL script: foobar.sql

-- Creating a table
CREATE TABLE foobar (
    foo VARCHAR(255),
    bar INT
);

-- Inserting data
INSERT INTO foobar (foo, bar) VALUES ('Lorem Ipsum', 123);

-- Selecting data
SELECT * FROM foobar;

-- Updating data
UPDATE foobar SET foo = 'Baz' WHERE bar = 123;

-- Deleting data
DELETE FROM foobar WHERE foo = 'Baz';

-- Using a conditional statement
SELECT * FROM foobar WHERE bar > 100;

-- Using a join
CREATE TABLE baz (
    foo VARCHAR(255),
    qux INT
);

INSERT INTO baz (foo, qux) VALUES ('Lorem Ipsum', 456);

SELECT * FROM foobar INNER JOIN baz ON foobar.foo = baz.foo;

-- Using a function
SELECT COUNT(*) FROM foobar;

-- Dropping a table
DROP TABLE foobar;
DROP TABLE baz;
