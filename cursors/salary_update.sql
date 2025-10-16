set SERVEROUTPUT on;
DECLARE
    filasAfectadas number;
BEGIN
    UPDATE customers SET SALARY = 100.0; -- Se crea un cursor implicito 'SQL'

    IF SQL%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO SE ENCONTRARON COINCIDENCIAS.');
    ELSE
        filasAfectadas := SQL%ROWCOUNT;
        DBMS_OUTPUT.PUT_LINE('FILAS AFECTADAS: ' || filasAfectadas);
    END IF;
END;
/
  