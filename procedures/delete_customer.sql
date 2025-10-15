
set serveroutput on;
CREATE OR REPLACE PROCEDURE delete_customer(customer_id IN NUMBER)
IS
   contador NUMBER;
BEGIN

   SELECT COUNT(*) INTO contador
   FROM CUSTOMERS
   WHERE id = customer_id;

   DBMS_OUTPUT.PUT_LINE('CONTADOR: ' || contador);

   IF contador = 0 THEN
      DBMS_OUTPUT.PUT_LINE('RECURSO NO ENCONTRADO ID: ' || customer_id);
   ELSE
      DELETE FROM CUSTOMERS
      WHERE id = customer_id;
      COMMIT;
      DBMS_OUTPUT.PUT_LINE('RECURSO ELIMINADO EXITOSAMENTE ID: ' || customer_id);
   END IF;
EXCEPTION
   WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Error inesperado: ' || SQLERRM);
      ROLLBACK;
END;
/
