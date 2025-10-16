CREATE OR REPLACE TRIGGER trg_salario_auditoria
AFTER INSERT OR UPDATE OR DELETE ON customers
FOR EACH ROW

DECLARE
    v_action VARCHAR2(20);
BEGIN
        
    IF INSERTING THEN
      v_action := 'INSERT';
    ELSIF UPDATING THEN
      v_action := 'UPDATE';
    ELSE
      v_action := 'DELETE';
    END IF;

    INSERT INTO salario_auditoria
        (
        customer_id,
        old_salary,
        new_salary,
        changed_by,
        changed_on,
        action_type
        )
        VALUES
        (
            NVL(:OLD.ID, :NEW.ID),
            :OLD.SALARY,
            :NEW.SALARY,
            USER,
            SYSDATE,
            v_action

        );

END;
/