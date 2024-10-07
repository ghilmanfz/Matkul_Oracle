CREATE TABLE t_211011700139 (
    Employee_ID    NUMBER PRIMARY KEY,   -- Employee ID
    First_Name     VARCHAR2(50),             -- First Name
    Last_Name      VARCHAR2(50),             -- Last Name
    Email          VARCHAR2(50),            -- Email
    Phone_Number   VARCHAR2(20),             -- Phone Number
    Hire_Date      DATE,                     -- Hire Date
    Job_Name       VARCHAR2(50),             -- Job Name
    Salary         FLOAT              -- Salary with 2 decimal places
);

-- Insert employee data
INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1002, 'Sri', 'Mulyati', 'Sri@gmail.com', '081277766601', TO_DATE('08/20/2019', 'MM/DD/YYYY'), 'Admin1', 3500000.90);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1003, 'Ana', 'Rohimah', 'ana@gmail.com', '081277766602', TO_DATE('07/21/2020', 'MM/DD/YYYY'), 'Programer BE', 6500000.20);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1004, 'Dovel', 'Firmanto', 'dovel@gmail.com', '081277766603', TO_DATE('08/22/2019', 'MM/DD/YYYY'), 'Programer FE', 6500000.90);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1005, 'Rizky', 'Febian', 'Rizky@gmail.com', '081277766604', TO_DATE('08/23/2019', 'MM/DD/YYYY'), 'Satpam', 6500000.59);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1006, 'Anya', 'Geraldien', 'ANYA@gmail.com', '081277766605', TO_DATE('08/24/2019', 'MM/DD/YYYY'), 'Administrator', 10500000.60);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1007, 'Ahmad', 'Akbar', 'Ahmad@gmail.com', '081277766606', TO_DATE('08/25/2019', 'MM/DD/YYYY'), 'Business Analyst', 9500000.60);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1008, 'Barkah', 'Zidah', 'Barkah@gmail.com', '081277766607', TO_DATE('08/26/2019', 'MM/DD/YYYY'), 'SQA', 8500000.20);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1009, 'Nani', 'Yulia', 'nani@gmail.com', '081277766608', TO_DATE('08/27/2019', 'MM/DD/YYYY'), 'Office Boy', 8000000.60);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (1010, 'Yuni', 'Triani', 'yuni@gmail.com', '081277766609', TO_DATE('08/28/2019', 'MM/DD/YYYY'), 'Admin2', 4500000.60);

INSERT INTO t_211011700139 (Employee_ID, First_Name, Last_Name, Email, Phone_Number, Hire_Date, Job_Name, Salary)
VALUES (211011700139, 'Ghilman', 'Faza', 'ghilmanfz@gmail.com', '081289102568', TO_DATE('10/07/2024', 'MM/DD/YYYY'), 'Mahasiswa', 4500000.60);


SELECT * FROM t_211011700139;

UPDATE t_211011700139
SET Salary = Salary + 2000000
WHERE Employee_ID = (SELECT Employee_ID FROM t_211011700139 WHERE First_Name = 'Ghilman');

SELECT 
    Employee_ID AS "No.", 
    INITCAP(First_Name) || ' ' || LOWER(Last_Name) || ' adalah seorang ' || UPPER(Job_Name) AS "IT TEAM"
FROM 
    t_211011700139;

