DECLARE 
    id_text VARCHAR2(2) := 'u';
    c_id customers.ID%TYPE;
   c_name customers.name%type;
   c_addr customers.address%type; 
BEGIN 
    c_id := TO_NUMBER(id_text);

   SELECT  name, address INTO  c_name, c_addr 
   FROM customers 
   WHERE id = c_id;  
   DBMS_OUTPUT.PUT_LINE ('Name: '||  c_name ||', Address: ' || c_addr); 
EXCEPTION 
   WHEN NO_DATA_FOUND THEN 
      dbms_output.put_line('Recurso no encontrado!'); 
    WHEN INVALID_NUMBER THEN 
      dbms_output.put_line('Favor de verificar el tipo de dato!'); 
   WHEN others THEN 
      dbms_output.put_line('Error inesperado!'); 
END; 
/