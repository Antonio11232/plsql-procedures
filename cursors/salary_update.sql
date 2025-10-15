set SERVEROUTPUT on;
DECLARE
    filasAfectadas number;
BEGIN
    UPDATE customers SET SALARY = 100.0; -- Se crea un cursor implicito 'SQL'

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No se encontraron coincidencias.');
    ELSE
        filasAfectadas := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE('FILAS AFECTADAS: ' || filasAfectadas);
    END IF;
END;
/