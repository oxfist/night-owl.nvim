-- PL/pgSQL script: foobar.sql

-- Creating a table
CREATE TABLE foobar (
    foo TEXT,
    bar INTEGER
);

-- Inserting data
INSERT INTO foobar (foo, bar) VALUES ('Lorem Ipsum', 123);

-- Selecting data
DO $$
DECLARE
    myFoo TEXT;
    myBar INTEGER;
BEGIN
    SELECT foo, bar INTO myFoo, myBar FROM foobar;
    RAISE NOTICE 'Foo: %, Bar: %', myFoo, myBar;
END $$;

-- Updating data
UPDATE foobar SET foo = 'Baz' WHERE bar = 123;

-- Deleting data
DELETE FROM foobar WHERE foo = 'Baz';

-- Using a conditional statement
DO $$
BEGIN
    IF (SELECT COUNT(*) FROM foobar WHERE bar > 100) > 0 THEN
        RAISE NOTICE 'There are rows with bar > 100';
    ELSE
        RAISE NOTICE 'There are no rows with bar > 100';
    END IF;
END $$;

-- Using a function
CREATE OR REPLACE FUNCTION getFooCount() RETURNS INTEGER AS $$
DECLARE
    fooCount INTEGER;
BEGIN
    SELECT COUNT(*) INTO fooCount FROM foobar;
    RETURN fooCount;
END $$ LANGUAGE plpgsql;

-- Using a procedure
CREATE OR REPLACE PROCEDURE insertFooBar(myFoo IN TEXT, myBar IN INTEGER) AS $$
BEGIN
    INSERT INTO foobar (foo, bar) VALUES (myFoo, myBar);
END $$ LANGUAGE plpgsql;

-- Dropping a table
DROP TABLE foobar;
