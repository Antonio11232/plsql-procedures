
DECLARE
    c_id customers.ID%TYPE;
    c_name customers.NAME%TYPE;
    c_address customers.ADDRESS%TYPE;

    CURSOR customer_cursor IS
        SELECT id,name,address FROM customers;

BEGIN

    OPEN customer_cursor;
    LOOP 
        FETCH customer_cursor INTO c_id,c_name,c_address;
        EXIT WHEN customer_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(c_id || ' ' || c_name || ' ' ||c_address);
        
    END LOOP;
    CLOSE customer_cursor;
    
END;
/