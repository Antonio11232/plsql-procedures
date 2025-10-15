CREATE OR REPLACE FUNCTION total_clientes
    RETURN NUMBER IS
    totalClientes NUMBER(2);
BEGIN
    SELECT COUNT(*) INTO totalClientes FROM customers;
    RETURN totalClientes;


END total_clientes;
/
