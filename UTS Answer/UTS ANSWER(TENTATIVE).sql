--Masih perubahan lagi, banyak petir
-- 1
CREATE TABLE employees (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    phone_number VARCHAR2(15),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER
);

INSERT INTO employees (employee_id, first_name, last_name, phone_number, hire_date, job_id, salary)
VALUES
    (101, 'John', 'Doe', '555-1234', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'AD_PRES', 20000),
    (102, 'Michael', 'Scott', '555-5678', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'AD_VP', 15000),
    (103, 'Dwight', 'Schrute', '555-9012', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'SA_MAN', 10000),
    (104, 'Jim', 'Halpert', '555-3456', TO_DATE('2023-01-04', 'YYYY-MM-DD'), 'SA_MAN', 10000),
    (105, 'Pam', 'Beesly', '555-7890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'ST_CLERK', 5000);



--2

CREATE TABLE employees_with_email (
    employee_id NUMBER PRIMARY KEY,
    full_name VARCHAR2(100),
    email VARCHAR2(100),
    phone_number VARCHAR2(15),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER
);

INSERT INTO employees_with_email (employee_id, full_name, email, phone_number, hire_date, job_id, salary)
VALUES
    (101, 'John Doe', 'johndoe@unpam.ac.id', '555-1234', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'AD_PRES', 20000),
    (102, 'Michael Scott', 'michaelscott@unpam.ac.id', '555-5678', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'AD_VP', 15000),
    (103, 'Dwight Schrute', 'dwightschrute@unpam.ac.id', '555-9012', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'SA_MAN', 10000),
    (104, 'Jim Halpert', 'jimhalpert@unpam.ac.id', '555-3456', TO_DATE('2023-01-04', 'YYYY-MM-DD'), 'SA_MAN', 10000),
    (105, 'Pam Beesly', 'pambeesly@unpam.ac.id', '555-7890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'ST_CLERK', 5000);


--3
CREATE TABLE employees_with_department (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    phone_number VARCHAR2(15),
    hire_date DATE,
    job_id VARCHAR2(10),
    salary NUMBER,
    department_id NUMBER
);


INSERT INTO employees_with_department (employee_id, first_name, last_name, phone_number, hire_date, job_id, salary, department_id)
VALUES
    (101, 'John', 'Doe', '555-1234', TO_DATE('2023-01-01', 'YYYY-MM-DD'), 'AD_PRES', 20000, 10),
    (102, 'Michael', 'Scott', '555-5678', TO_DATE('2023-01-02', 'YYYY-MM-DD'), 'AD_VP', 15000, 20),
    (103, 'Dwight', 'Schrute', '555-9012', TO_DATE('2023-01-03', 'YYYY-MM-DD'), 'SA_MAN', 10000, 30),
    (104, 'Jim', 'Halpert', '555-3456', TO_DATE('2023-01-04', 'YYYY-MM-DD'), 'SA_MAN', 10000, 30),
    (105, 'Pam', 'Beesly', '555-7890', TO_DATE('2023-01-05', 'YYYY-MM-DD'), 'ST_CLERK', 5000, 40);



--4
CREATE TABLE departments (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);


INSERT INTO departments (department_id, department_name)
VALUES
    (10, 'Accounting'),
    (20, 'Research'),
    (30, 'Sales'),
    (40, 'Operations');


CREATE TABLE jobs (
    job_id VARCHAR2(10) PRIMARY KEY,
    job_title VARCHAR2(50),
    min_salary NUMBER
);

INSERT INTO jobs (job_id, job_title, min_salary)
VALUES
    ('AD_PRES', 'President', 20000),
    ('AD_VP', 'Vice President', 15000),
    ('SA_MAN', 'Sales Manager', 10000),
    ('ST_CLERK', 'Salesperson', 4000);


--5
SELECT 
    e.employee_id,
    e.full_name,
    e.email,
    e.phone_number,
    e.job_id,
    j.job_title,
    e.salary,
    d.department_id,
    d.department_name
FROM 
    employees_with_email e
    JOIN jobs j ON e.job_id = j.job_id
    JOIN departments d ON e.job_id = j.job_id AND e.salary >= j.min_salary
ORDER BY e.employee_id;



SELECT 
    e.employee_id AS no,
    e.employee_id,
    e.full_name,
    e.email,
    e.phone_number,
    e.job_id,
    j.job_title,
    d.department_name,
    e.salary
FROM 
    employees_with_email e
    JOIN jobs j ON e.job_id = j.job_id
    JOIN departments d ON e.job_id = j.job_id AND e.salary >= j.min_salary
ORDER BY e.employee_id;


