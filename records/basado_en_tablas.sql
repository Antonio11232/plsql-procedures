DECLARE
    customer_rec customers%rowtype;
BEGIN
     SELECT * INTO customer_rec FROM customers WHERE id = 1;
     DBMS_OUTPUT.PUT_LINE('id: ' || customer_rec.id ||', name: ' || customer_rec.name||', age: ' || customer_rec.age);
END;
/