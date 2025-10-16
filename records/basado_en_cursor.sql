DECLARE
    CURSOR customer_cursor IS SELECT * FROM customers;
    customer_rec customers%rowtype;
BEGIN
    OPEN customer_cursor;
        LOOP
            FETCH customer_cursor INTO customer_rec;
            EXIT WHEN customer_cursor%NOTFOUND;
            DBMS_OUTPUT.PUT_LINE('id: ' || customer_rec.id ||', name: ' || customer_rec.name||', age: ' || customer_rec.age);
        END LOOP;
    CLOSE customer_cursor;
END;
/