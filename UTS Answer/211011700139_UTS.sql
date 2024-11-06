-- Nomor 1

CREATE TABLE GHZ07SIFM001_211011700139_EMPLOYEE (
    EMPLOYEE_ID NUMBER(3) PRIMARY KEY,
    FIRST_NAME VARCHAR2(50),
    LAST_NAME VARCHAR2(50),
    PHONE_NUMBER VARCHAR2(15),
    HIRE_DATE DATE,
    JOB_ID VARCHAR2(10),
    SALARY NUMBER(8, 2)
);

INSERT ALL
  INTO GHZ07SIFM001_211011700139_EMPLOYEE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (101, 'John', 'Doe', '555-1234', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'AD_PRES', 20000)
  INTO GHZ07SIFM001_211011700139_EMPLOYEE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (102, 'Michael', 'Scott', '555-5678', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'AD_VP', 15000)
  INTO GHZ07SIFM001_211011700139_EMPLOYEE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (103, 'Dwight', 'Schrute', '555-9012', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'SA_MAN', 10000)
  INTO GHZ07SIFM001_211011700139_EMPLOYEE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (104, 'Jim', 'Halpert', '555-3456', TO_DATE('2023-01-04', 'YYYY-MM-DD'), 'SA_MAN', 10000)
  INTO GHZ07SIFM001_211011700139_EMPLOYEE (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY) VALUES (105, 'Pam', 'Beesly', '555-7890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'ST_CLERK', 5000)
SELECT * FROM dual;

select * from GHZ07SIFM001_211011700139_EMPLOYEE;


-- Nomor 2
SELECT 
    EMPLOYEE_ID,
    FIRST_NAME || ' ' || LAST_NAME AS FULL_NAME,
    LOWER(FIRST_NAME || LAST_NAME || '@unpam.ac.id') AS EMAIL,
    PHONE_NUMBER,
    HIRE_DATE,
    JOB_ID,
    SALARY
FROM 
    GHZ07SIFM001_211011700139_EMPLOYEE;
    
    
-- Nomor 3
ALTER TABLE GHZ07SIFM001_211011700139_EMPLOYEE
ADD DEPARTMENT_ID NUMBER(3);

UPDATE GHZ07SIFM001_211011700139_EMPLOYEE
SET DEPARTMENT_ID = 10
WHERE EMPLOYEE_ID = 101;

UPDATE GHZ07SIFM001_211011700139_EMPLOYEE
SET DEPARTMENT_ID = 20
WHERE EMPLOYEE_ID = 102;

UPDATE GHZ07SIFM001_211011700139_EMPLOYEE
SET DEPARTMENT_ID = 30
WHERE EMPLOYEE_ID = 103;

UPDATE GHZ07SIFM001_211011700139_EMPLOYEE
SET DEPARTMENT_ID = 30
WHERE EMPLOYEE_ID = 104;

UPDATE GHZ07SIFM001_211011700139_EMPLOYEE
SET DEPARTMENT_ID = 40
WHERE EMPLOYEE_ID = 105;

SELECT * FROM GHZ07SIFM001_211011700139_EMPLOYEE;


-- Nomor 
CREATE TABLE GHZ07SIFM001_211011700139_DEPT (
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50)
);

insert all
INTO GHZ07SIFM001_211011700139_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (10, 'Accounting')
INTO GHZ07SIFM001_211011700139_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (20, 'Research')
INTO GHZ07SIFM001_211011700139_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (30, 'Sales')
INTO GHZ07SIFM001_211011700139_DEPT (DEPARTMENT_ID, DEPARTMENT_NAME) VALUES (40, 'Operations')
select * from dual;

SELECT * FROM GHZ07SIFM001_211011700139_DEPT;


CREATE TABLE GHZ07SIFM001_211011700139_JOB (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary DECIMAL(10, 2)
);

insert all
INTO GHZ07SIFM001_211011700139_JOB (job_id, job_title, min_salary) VALUES ('AD_PRES', 'President', 20000)
INTO GHZ07SIFM001_211011700139_JOB (job_id, job_title, min_salary) VALUES ('AD_VP', 'Vice President', 15000)
INTO GHZ07SIFM001_211011700139_JOB (job_id, job_title, min_salary) VALUES ('SA_MAN', 'Sales Manager', 10000)
INTO GHZ07SIFM001_211011700139_JOB (job_id, job_title, min_salary) VALUES ('ST_CLERK', 'Salesperson', 4000)
select * from dual;

SELECT * FROM GHZ07SIFM001_211011700139_JOB;


-- Nomor 5
SELECT 
  tp.EMPLOYEE_ID AS EMPLOYEE_ID,
  tp.FIRST_NAME || ' ' || tp.LAST_NAME AS FULL_NAME,
  LOWER(tp.FIRST_NAME || '.' || tp.LAST_NAME) || '@unpam.ac.id' AS EMAIL,
  tp.PHONE_NUMBER AS PHONE_NUMBER,
  tp.JOB_ID AS JOB_ID,
  tj.JOB_TITLE AS JOB_TITLE,
  tp.SALARY AS SALARY,
  tp.DEPARTMENT_ID AS DEPARTMENT_ID,
  td.DEPARTMENT_NAME AS DEPARTMENT_NAME
FROM 
  GHZ07SIFM001_211011700139_EMPLOYEE tp
JOIN 
  GHZ07SIFM001_211011700139_JOB tj ON tp.JOB_ID = tj.JOB_ID
JOIN
  GHZ07SIFM001_211011700139_DEPT td ON tp.DEPARTMENT_ID = td.DEPARTMENT_ID
ORDER BY 
  tp.EMPLOYEE_ID;

  
-- Nomor 6  
SELECT 
  ROWNUM AS NO,
  tp.EMPLOYEE_ID AS EMPLOYEE_ID,
  tp.FIRST_NAME || ' ' || tp.LAST_NAME AS FULL_NAME,
  LOWER(tp.FIRST_NAME || '.' || tp.LAST_NAME) || '@unpam.ac.id' AS EMAIL,
  tp.PHONE_NUMBER AS PHONE_NUMBER,
  tj.JOB_TITLE AS JOB_TITLE,
  td.DEPARTMENT_NAME AS DEPARTMENT_NAME,
  tp.SALARY AS SALARY
FROM 
  GHZ07SIFM001_211011700139_EMPLOYEE tp
JOIN 
  GHZ07SIFM001_211011700139_JOB tj ON tp.JOB_ID = tj.JOB_ID
JOIN
  GHZ07SIFM001_211011700139_DEPT td ON tp.DEPARTMENT_ID = td.DEPARTMENT_ID
ORDER BY 
  tp.SALARY DESC;


SELECT tp.JOB_ID, tj.JOB_TITLE, tj.MIN_SALARY AS salary, count(tj.JOB_TITLE) AS count_employees 
FROM GHZ07SIFM001_211011700139_EMPLOYEE tp
JOIN GHZ07SIFM001_211011700139_JOB tj ON tp.JOB_ID = tj.JOB_ID 
GROUP BY tp.JOB_ID,tj.JOB_TITLE, tj.min_salary
ORDER BY count_employees DESC;


-- Nomor 7
SELECT tp.JOB_ID, tj.JOB_TITLE, tj.MIN_SALARY AS salary, count(tj.JOB_TITLE) AS count_employees 
FROM GHZ07SIFM001_211011700139_EMPLOYEE tp
JOIN GHZ07SIFM001_211011700139_JOB tj ON tp.JOB_ID = tj.JOB_ID 
GROUP BY tp.JOB_ID,tj.JOB_TITLE, tj.min_salary
ORDER BY count_employees DESC;