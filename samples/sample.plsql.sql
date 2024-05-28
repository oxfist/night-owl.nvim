CREATE TABLE foobar (
    foo VARCHAR2(255),
    bar NUMBER
);

-- Inserting data
INSERT INTO foobar (foo, bar) VALUES ('Lorem Ipsum', 123);

-- Selecting data
DECLARE
    myFoo foobar.foo%TYPE;
    myBar foobar.bar%TYPE;
BEGIN
    SELECT foo, bar INTO myFoo, myBar FROM foobar;
    DBMS_OUTPUT.PUT_LINE('Foo: ' || myFoo || ', Bar: ' || myBar);
END;
/

-- Updating data
UPDATE foobar SET foo = 'Baz' WHERE bar = 123;

-- Deleting data
DELETE FROM foobar WHERE foo = 'Baz';

-- Using a conditional statement
BEGIN
    IF (SELECT COUNT(*) FROM foobar WHERE bar > 100) > 0 THEN
        DBMS_OUTPUT.PUT_LINE('There are rows with bar > 100');
    ELSE
        DBMS_OUTPUT.PUT_LINE('There are no rows with bar > 100');
    END IF;
END;
/

-- Using a function
CREATE OR REPLACE FUNCTION getFooCount RETURN NUMBER IS
    fooCount NUMBER;
BEGIN
    SELECT COUNT(*) INTO fooCount FROM foobar;
    RETURN fooCount;
END;
/

-- Using a procedure
CREATE OR REPLACE PROCEDURE insertFooBar(myFoo IN VARCHAR2, myBar IN NUMBER) IS
BEGIN
    INSERT INTO foobar (foo, bar) VALUES (myFoo, myBar);
END;
/

-- Dropping a table
DROP TABLE foobar;
