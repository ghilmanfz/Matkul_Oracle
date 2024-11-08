-- 1

-- Create table
CREATE TABLE t_pgw_211011700139 (
    EMPLOYEE_ID NUMBER PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    PHONE_NUMBER VARCHAR2(15),
    HIRE_DATE DATE,
    JOB_ID VARCHAR2(10),
    SALARY NUMBER
);

-- Insert data
INSERT ALL 
INTO t_pgw_211011700139 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (101, 'John', 'Doe', '555-1234', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'AD_PRES', 20000)
INTO t_pgw_211011700139 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (102, 'Michael', 'Scott', '555-5678', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'AD_VP', 15000)
INTO t_pgw_211011700139 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (103, 'Dwight', 'Schrute', '555-9012', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'SA_MAN', 10000)
INTO t_pgw_211011700139 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (104, 'Jim', 'Halpert', '555-3456', TO_DATE('2023-01-04', 'YYYY-MM-DD'), 'SA_MAN', 10000)
INTO t_pgw_211011700139 (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (105, 'Pam', 'Beesly', '555-7890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'ST_CLERK', 5000)
SELECT * FROM dual;


--delete table
drop table t_pgw_211011700139;
-- Commit the transaction
COMMIT;
select * from t_pgw_211011700139;

-- Delete all rows
DELETE FROM t_pgw_211011700139;

-- Commit the transaction to finalize the deletion
COMMIT;


--2
-- Create Insert Procedure
CREATE OR REPLACE PROCEDURE insert_employee_record (
    p_employee_id IN NUMBER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_hire_date IN DATE,
    p_job_id IN VARCHAR2,
    p_salary IN NUMBER
) AS
BEGIN
    INSERT INTO t_pgw_211011700139 (
        EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY
    ) VALUES (
        p_employee_id, p_first_name, p_last_name, p_phone_number, p_hire_date, p_job_id, p_salary
    );
    COMMIT;
END insert_employee_record;

--run Insert Procedure
BEGIN
    insert_employee_record(
        106, 'Stanley', 'Hudson', '555-4321', TO_DATE('2023-01-06', 'YYYY-MM-DD'), 'SA_REP', 9000
    );
END;

Commit
select * from t_pgw_211011700139;






--3
--create procedure update
CREATE OR REPLACE PROCEDURE update_employee_record (
    p_employee_id IN NUMBER,
    p_first_name IN VARCHAR2,
    p_last_name IN VARCHAR2,
    p_phone_number IN VARCHAR2,
    p_hire_date IN DATE,
    p_job_id IN VARCHAR2,
    p_salary IN NUMBER
) AS
BEGIN
    UPDATE t_pgw_211011700139
    SET
        FIRST_NAME = p_first_name,
        LAST_NAME = p_last_name,
        PHONE_NUMBER = p_phone_number,
        HIRE_DATE = p_hire_date,
        JOB_ID = p_job_id,
        SALARY = p_salary
    WHERE
        EMPLOYEE_ID = p_employee_id;
    
    COMMIT;
END update_employee_record;
/

--run procedure update
BEGIN
    update_employee_record(
        104, 'Ghilman', 'Faza', '555-3456', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 'SA_MAN', 10000
    );
END;

select * from t_pgw_211011700139;

