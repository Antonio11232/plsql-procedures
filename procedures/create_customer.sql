CREATE OR REPLACE PROCEDURE save_customer(
    c_id IN customers.id%TYPE,
    c_name IN customers.name%TYPE,
    c_age IN customers.age%TYPE,
    c_address IN customers.address%TYPE,
    c_salary IN customers.salary%TYPE)
IS
BEGIN

    INSERT INTO customers(id,name,age,address,salary) VALUES(c_id,c_name,c_age,c_address,c_salary);
    COMMIT;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        RAISE_APPLICATION_ERROR(-20001, 'Error intertar guardar el empleado' || SQLERRM);

END save_customer;
/