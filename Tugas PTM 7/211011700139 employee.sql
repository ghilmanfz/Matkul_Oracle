CREATE TABLE t_211011700139 (
    Employee_ID NUMBER PRIMARY KEY,
    First_Name VARCHAR2(50),
    Last_Name VARCHAR2(50),
    Email VARCHAR2(50),
    Phone_Number VARCHAR2(20),
    Hire_Date DATE,
    Job_Name VARCHAR2(50),
    Salary FLOAT
);

INSERT ALL
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1002, 'Sri', 'Mulyati', 'Sri@gmail.com', '081277766601', TO_DATE('20/08/2019', 'DD/MM/YYYY'), 'Admin1', 3500000.98)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1003, 'Ana', 'Rohimah', 'Ana@gmail.com', '081277766602', TO_DATE('21/07/2020', 'DD/MM/YYYY'), 'Programer BE', 6500000.23)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1004, 'DoVEL', 'Firmanto', 'DoVEL@gmail.com', '081277766603', TO_DATE('22/08/2019', 'DD/MM/YYYY'), 'Programer FE', 6500000.98)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1005, 'Rizky', 'Febian', 'Rizky@gmail.com', '081277766604', TO_DATE('23/08/2019', 'DD/MM/YYYY'), 'Satpam', 6500000.54)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1006, 'ANYA', 'GeralDIEN', 'ANYA@gmail.com', '081277766605', TO_DATE('24/08/2019', 'DD/MM/YYYY'), 'Database Administrator', 10500000.64)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1007, 'Ahmad', 'AkBar', 'Ahmad@gmail.com', '081277766606', TO_DATE('25/08/2019', 'DD/MM/YYYY'), 'Business Analyst', 9500000.67)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1008, 'Barkah', 'Zidah', 'Barkah@gmail.com', '081277766607', TO_DATE('26/08/2019', 'DD/MM/YYYY'), 'SQA', 8500000.23)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1009, 'Nani', 'Yulia', 'Nani@gmail.com', '081277766608', TO_DATE('27/08/2019', 'DD/MM/YYYY'), 'Office Boy', 8000000.67)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1010, 'Yuni', 'Triani', 'Yuni@gmail.com', '081277766609', TO_DATE('28/08/2019', 'DD/MM/YYYY'), 'Admin2', 4500000.65)
  INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
    VALUES (1011, 'Ghilman', 'Faza', 'ghilmanfz@gmail.com', '0812345678', TO_DATE('14/10/2024', 'DD/MM/YYYY'), 'Mahasiswa', 10000000.00)
SELECT 1 FROM dual;


UPDATE t_211011700139
SET Salary = Salary + 2000000
WHERE Employee_ID = (SELECT Employee_ID FROM t_211011700139 WHERE First_Name = 'Ghilman');

--  Nomor 1
SELECT 
    Employee_ID, 
    UPPER(First_Name) || ' ' || LOWER(Last_Name) || ' adalah seorang ' || UPPER(Job_Name) AS "IT TEAM"
FROM t_211011700139
WHERE Job_Name IN ('Programer BE', 'Programer FE', 'Database Administrator', 'Business Analyst', 'SQA');

-- Nomor 2
SELECT 
    Employee_ID, 
    ROUND(MONTHS_BETWEEN(SYSDATE, Hire_Date), 0) AS "Sudah Bekerja Selama (Bulan)"
FROM 
    t_211011700139;

-- Nomor 3
SELECT 
    Employee_ID,
    INITCAP(First_Name) AS First_Name,
    'Rp' || TO_CHAR(CEIL(Salary), 'FM9G999G999') AS Salary,
    CASE 
        WHEN Salary = 6500000.23 THEN 200000
        WHEN Salary = 6500000.98 THEN 100000
        WHEN Salary = 10500000.64 THEN 400000
        WHEN Salary = 9500000.67 THEN 200000
        WHEN Salary = 8500000.23 THEN 300000
        ELSE 0
    END AS Bonus
FROM 
    t_211011700139;

-- Nomor 4
SELECT 
    First_Name,
    Job_Name,
    CASE 
        WHEN Job_Name = 'Programer BE' THEN 200000
        WHEN Job_Name = 'Programer FE' THEN 100000
        WHEN Job_Name = 'Database Administrator' THEN 400000
        WHEN Job_Name = 'Business Analyst' THEN 200000
        WHEN Job_Name = 'SQA' THEN 300000
        ELSE 0 
    END AS Bonus
FROM 
    t_211011700139;


-- Nomor 5
SELECT 
    Employee_ID,
    Salary,
    CASE 
        WHEN Salary > 5000000 THEN 'Bonus diberikan'
        ELSE 'Tidak dapat bonus'
    END AS Bonus_Status
FROM 
    t_211011700139;
