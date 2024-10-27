CREATE TABLE t_211011700139_author (
    AUTHOR_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100),
    EMAIL VARCHAR2(100),
    BIO VARCHAR2(255)
);

CREATE TABLE t_211011700139_category (
    CATEGORY_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100)
);

CREATE TABLE t_211011700139_article (
    ARTICLE_ID NUMBER PRIMARY KEY,
    TITLE VARCHAR2(200),
    CONTENT VARCHAR2(100),
    AUTHOR_ID NUMBER,
    CATEGORY_ID NUMBER,
    CREATED_AT DATE,
    PUBLISHED_AT DATE,
    STATUS VARCHAR2(20),
    FOREIGN KEY (AUTHOR_ID) REFERENCES t_211011700139_author(AUTHOR_ID),
    FOREIGN KEY (CATEGORY_ID) REFERENCES t_211011700139_category(CATEGORY_ID)
);

-- insert ke t_author
INSERT ALL
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (1, 'John Doe', 'johndoe@gmail.com', 'Pemrogram dan penulis lepas')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (2, 'Jane Smith', 'janesmith@gmail.com', 'Tech enthusiast dan reviewer gadget')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (3, 'Alex Lee', 'alexlee@gmail.com', 'Pengamat startup dan investor')
SELECT * FROM dual;

-- insert ke t_category
INSERT ALL
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (1, 'Pemrograman')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (2, 'Gadget')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (3, 'Startup')
SELECT * FROM dual;

-- insert ke t_article
INSERT ALL
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (1, 'Belajar Python Dasar', 'Artikel tentang dasar-dasar pemrograman Python', 1, 1, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (2, 'Review Smartphone Terbaru', 'Menguji spesifikasi dan fitur terbaru smartphone X', 2, 2, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (3, 'Teknologi yang Sedang Tren', 'Membahas teknologi terbaru yang sedang berkembang pesat', 3, 3, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
SELECT * FROM dual;


select * from t_211011700139_author;
select * from t_211011700139_category;
select * from t_211011700139_article;CREATE TABLE t_211011700139 (
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
-- Insert data mahasiswa ke t_author (Forum Diskusi 2 Nomor 1)
INSERT INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO)
VALUES (4, 'Ghilman Faza', 'ghilmanfz@gmail.com', 'Mahasiswa Sistem Informasi Semester 7');
select * from t_211011700139_author


-- Insert data artikel ke t_article (Forum Diskusi 2 Nomor 2)
INSERT INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
VALUES (4, 'Belajar Basis Data Oracle', 'Artikel tentang dasar-dasar penggunaan Oracle Database untuk pemula', 4, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'published');
select * from t_211011700139_article


-- (Forum Diskusi 3 Nomor 1)
SELECT 
    a.TITLE,
    a.CONTENT,
    c.NAME AS CATEGORY_NAME,
    au.NAME AS AUTHOR_NAME
FROM 
    t_211011700139_article a
JOIN 
    t_211011700139_category c ON a.CATEGORY_ID = c.CATEGORY_ID
JOIN 
    t_211011700139_author au ON a.AUTHOR_ID = au.AUTHOR_ID
ORDER BY 
    au.NAME;
    
    

-- (Forum Diskusi 3 Nomor 2)
SELECT 
    au.NAME AS AUTHOR_NAME,
    COUNT(a.ARTICLE_ID) AS COUNT_ARTICLE
FROM 
    t_211011700139_author au
LEFT JOIN 
    t_211011700139_article a ON au.AUTHOR_ID = a.AUTHOR_ID
GROUP BY 
    au.NAME
ORDER BY 
    COUNT_ARTICLE DESC;

SELECT
    CONCAT('Basis Data ', 'ORACLE') AS concat,  -- Basis Data ORACLE
    'Basis' || ' ' || 'Data' || ' ' || 'Oracle' AS concat2
    , LOWER('Basis Data') AS lower
    , INITCAP('basis data') AS initcap
    , SUBSTR('Basis Data', 3, 3) AS substr
FROM 
    dual;

select tg. * 
, nvl(JURUSAN, '--') AS jurusan2
, nvl(JURUSAN, 'N/A') AS jurusan3
, nvl(JURUSAN, 'SI') AS jurusan4
, 'F' || LPAD('110', 4, '0') AS lpad
, 'F' || RPAD('110', 4, '0') AS lpad
from t_ghilman tg

select tg. * 
, nvl(JURUSAN, '--') AS jurusan2
, case
    when 
from t_ghilman tg

SELECT
    ROUND(5.765, 2) AS round,    -- 5.77
    TRUNC(5.765, 1) AS trunc,    -- 5.7
    CEIL(5.765) AS ceil,         -- 6
    FLOOR(5.765) AS floor,       -- 5
    MOD(5, 2) AS mod,            -- 1
    POWER(5, 2) AS power,        -- 25
    SQRT(9) AS sqrt,             -- 3
    ABS(-2) AS abs               -- 2
FROM dual;

SELECT
    ROUND(5.764, 2)
FROM dual;

SELECT
    SYSDATE,  -- Menampilkan tanggal dan waktu saat ini
    TO_CHAR(SYSDATE, 'DD-MM-YYYY') AS date_format,  -- 07-10-2024
    TO_DATE('20240101', 'YYYYMMDD') AS to_date,     -- Mengkonversi string ke tanggal
    SYSDATE + 2 z,   -- Tanggal sekarang ditambah 2 hari
    ADD_MONTHS(SYSDATE, 1) AS plus_1_bln,  -- Menambah 1 bulan ke tanggal sekarang
    MONTHS_BETWEEN(SYSDATE, TO_DATE('20240101', 'YYYYMMDD')) AS month_betwe  -- Selisih bulan antara dua tanggal
FROM
    dual;






SELECT
    CONCAT('Basis ', 'Data ORACLE') AS concat_result, 
    'Basis' || ' ' || 'Data' || ' ' || 'Oracle' AS concat2,
    LOWER('Basis Data') AS lower_result,
    UPPER('Basis Data') AS upper_result,
    INITCAP('basis data') AS initcap_result,
    SUBSTR('Basis Data', 6, 3) AS substr_result,
    REPLACE('Basis Data', 'Data', 'Data Oracle') AS replace_result,
    NVL('Basis Data', 'TI') AS nvl_result,
    LPAD('118', 4, '8') AS lpad_result,
    RPAD('118', 4, '0') AS rpad_result,
    LTRIM('Basis Data') AS ltrim_result,
    LTRIM('Basis Data', 'B') AS ltrim_custom_result,
    RTRIM('Basis Data') AS rtrim_result,
    TRIM('Basis Data') AS trim_result,
    ROWNUM AS rownum_result,
    ROWID AS rowid_result
FROM 
    dual;
    
    

create table t_Ghilman (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)    
);

INSERT ALL
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700139, 'Ghilman Faza', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700000, 'ghz', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700001, 'manusia', 'Sistem Informasi', 'Ilmu Komputer')
SELECT * FROM dual;

SELECT * 
FROM t_Ghilman;

SELECT NIM, Nama 
FROM t_Ghilman;

SELECT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;

SELECT DISTINCT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;




select * from t_ghilmancreate table t_Ghilman (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)    
);

INSERT ALL
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700139, 'Ghilman Faza', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700000, 'ghz', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700001, 'manusia', 'Sistem Informasi', 'Ilmu Komputer')
SELECT * FROM dual;

SELECT * 
FROM t_Ghilman;

SELECT NIM, Nama 
FROM t_Ghilman;

SELECT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;

SELECT DISTINCT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;




select * from t_ghilmanCREATE TABLE t_211011700139_author (
    AUTHOR_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100),
    EMAIL VARCHAR2(100),
    BIO VARCHAR2(255)
);

CREATE TABLE t_211011700139_category (
    CATEGORY_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100)
);

CREATE TABLE t_211011700139_article (
    ARTICLE_ID NUMBER PRIMARY KEY,
    TITLE VARCHAR2(200),
    CONTENT VARCHAR2(100),
    AUTHOR_ID NUMBER,
    CATEGORY_ID NUMBER,
    CREATED_AT DATE,
    PUBLISHED_AT DATE,
    STATUS VARCHAR2(20),
    FOREIGN KEY (AUTHOR_ID) REFERENCES t_211011700139_author(AUTHOR_ID),
    FOREIGN KEY (CATEGORY_ID) REFERENCES t_211011700139_category(CATEGORY_ID)
);

-- insert ke t_author
INSERT ALL
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (1, 'John Doe', 'johndoe@gmail.com', 'Pemrogram dan penulis lepas')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (2, 'Jane Smith', 'janesmith@gmail.com', 'Tech enthusiast dan reviewer gadget')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (3, 'Alex Lee', 'alexlee@gmail.com', 'Pengamat startup dan investor')
SELECT * FROM dual;

-- insert ke t_category
INSERT ALL
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (1, 'Pemrograman')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (2, 'Gadget')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (3, 'Startup')
SELECT * FROM dual;

-- insert ke t_article
INSERT ALL
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (1, 'Belajar Python Dasar', 'Artikel tentang dasar-dasar pemrograman Python', 1, 1, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (2, 'Review Smartphone Terbaru', 'Menguji spesifikasi dan fitur terbaru smartphone X', 2, 2, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (3, 'Teknologi yang Sedang Tren', 'Membahas teknologi terbaru yang sedang berkembang pesat', 3, 3, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
SELECT * FROM dual;


select * from t_211011700139_author;
select * from t_211011700139_category;
select * from t_211011700139_article;CREATE TABLE t_211011700139 (
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
-- Insert data mahasiswa ke t_author (Forum Diskusi 2 Nomor 1)
INSERT INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO)
VALUES (4, 'Ghilman Faza', 'ghilmanfz@gmail.com', 'Mahasiswa Sistem Informasi Semester 7');
select * from t_211011700139_author


-- Insert data artikel ke t_article (Forum Diskusi 2 Nomor 2)
INSERT INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
VALUES (4, 'Belajar Basis Data Oracle', 'Artikel tentang dasar-dasar penggunaan Oracle Database untuk pemula', 4, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'published');
select * from t_211011700139_article


-- (Forum Diskusi 3 Nomor 1)
SELECT 
    a.TITLE,
    a.CONTENT,
    c.NAME AS CATEGORY_NAME,
    au.NAME AS AUTHOR_NAME
FROM 
    t_211011700139_article a
JOIN 
    t_211011700139_category c ON a.CATEGORY_ID = c.CATEGORY_ID
JOIN 
    t_211011700139_author au ON a.AUTHOR_ID = au.AUTHOR_ID
ORDER BY 
    au.NAME;
    
    

-- (Forum Diskusi 3 Nomor 2)
SELECT 
    au.NAME AS AUTHOR_NAME,
    COUNT(a.ARTICLE_ID) AS COUNT_ARTICLE
FROM 
    t_211011700139_author au
LEFT JOIN 
    t_211011700139_article a ON au.AUTHOR_ID = a.AUTHOR_ID
GROUP BY 
    au.NAME
ORDER BY 
    COUNT_ARTICLE DESC;

SELECT
    CONCAT('Basis Data ', 'ORACLE') AS concat,  -- Basis Data ORACLE
    'Basis' || ' ' || 'Data' || ' ' || 'Oracle' AS concat2
    , LOWER('Basis Data') AS lower
    , INITCAP('basis data') AS initcap
    , SUBSTR('Basis Data', 3, 3) AS substr
FROM 
    dual;

select tg. * 
, nvl(JURUSAN, '--') AS jurusan2
, nvl(JURUSAN, 'N/A') AS jurusan3
, nvl(JURUSAN, 'SI') AS jurusan4
, 'F' || LPAD('110', 4, '0') AS lpad
, 'F' || RPAD('110', 4, '0') AS lpad
from t_ghilman tg

select tg. * 
, nvl(JURUSAN, '--') AS jurusan2
, case
    when 
from t_ghilman tg

SELECT
    ROUND(5.765, 2) AS round,    -- 5.77
    TRUNC(5.765, 1) AS trunc,    -- 5.7
    CEIL(5.765) AS ceil,         -- 6
    FLOOR(5.765) AS floor,       -- 5
    MOD(5, 2) AS mod,            -- 1
    POWER(5, 2) AS power,        -- 25
    SQRT(9) AS sqrt,             -- 3
    ABS(-2) AS abs               -- 2
FROM dual;

SELECT
    ROUND(5.764, 2)
FROM dual;

SELECT
    SYSDATE,  -- Menampilkan tanggal dan waktu saat ini
    TO_CHAR(SYSDATE, 'DD-MM-YYYY') AS date_format,  -- 07-10-2024
    TO_DATE('20240101', 'YYYYMMDD') AS to_date,     -- Mengkonversi string ke tanggal
    SYSDATE + 2 z,   -- Tanggal sekarang ditambah 2 hari
    ADD_MONTHS(SYSDATE, 1) AS plus_1_bln,  -- Menambah 1 bulan ke tanggal sekarang
    MONTHS_BETWEEN(SYSDATE, TO_DATE('20240101', 'YYYYMMDD')) AS month_betwe  -- Selisih bulan antara dua tanggal
FROM
    dual;






SELECT
    CONCAT('Basis ', 'Data ORACLE') AS concat_result, 
    'Basis' || ' ' || 'Data' || ' ' || 'Oracle' AS concat2,
    LOWER('Basis Data') AS lower_result,
    UPPER('Basis Data') AS upper_result,
    INITCAP('basis data') AS initcap_result,
    SUBSTR('Basis Data', 6, 3) AS substr_result,
    REPLACE('Basis Data', 'Data', 'Data Oracle') AS replace_result,
    NVL('Basis Data', 'TI') AS nvl_result,
    LPAD('118', 4, '8') AS lpad_result,
    RPAD('118', 4, '0') AS rpad_result,
    LTRIM('Basis Data') AS ltrim_result,
    LTRIM('Basis Data', 'B') AS ltrim_custom_result,
    RTRIM('Basis Data') AS rtrim_result,
    TRIM('Basis Data') AS trim_result,
    ROWNUM AS rownum_result,
    ROWID AS rowid_result
FROM 
    dual;
    
    

create table t_Ghilman (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)    
);

INSERT ALL
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700139, 'Ghilman Faza', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700000, 'ghz', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700001, 'manusia', 'Sistem Informasi', 'Ilmu Komputer')
SELECT * FROM dual;

SELECT * 
FROM t_Ghilman;

SELECT NIM, Nama 
FROM t_Ghilman;

SELECT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;

SELECT DISTINCT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;




select * from t_ghilmancreate table t_Ghilman (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)    
);

INSERT ALL
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700139, 'Ghilman Faza', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700000, 'ghz', 'Sistem Informasi', 'Ilmu Komputer')
    INTO t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS) VALUES (211011700001, 'manusia', 'Sistem Informasi', 'Ilmu Komputer')
SELECT * FROM dual;

SELECT * 
FROM t_Ghilman;

SELECT NIM, Nama 
FROM t_Ghilman;

SELECT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;

SELECT DISTINCT tg.NIM AS "Nomor Induk", tg.Nama AS "Nama Lengkap", tg.Jurusan AS "Program Studi"
FROM t_Ghilman tg;




select * from t_ghilmanCREATE TABLE t_211011700139_author (
    AUTHOR_ID NUMBER PRI

-- show table -----------------

SELECT *
FROM ALL_ALL_TABLES 
WHERE owner = 'USR_07SIFE001'


-- CREATE TABLE ------------------------------------

create table t_mahasiswa (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)
);

ALTER TABLE T_MAHASISWA ADD kelas varchar2(10);

CREATE TABLE t_dosen (
	nidos VARCHAR2(10) Primary key,
	nama VARCHAR2(100)
);

CREATE TABLE t_mata_kuliah (
	kode_mk VARCHAR2(10) Primary key,
	nama_mk VARCHAR2(100) ,
	sks NUMBER(2)
);

ALTER TABLE T_MATA_KULIAH ADD semester int;


CREATE TABLE t_perkuliahan(
	id_perkuliahan NUMBER Primary key,
	tanggal DATE ,
	jam_mulai TIMESTAMP ,
	jam_selesai TIMESTAMP ,
	ruangan VARCHAR2(20) ,
	kode_mk VARCHAR2(10) ,
	dosen_pengampu VARCHAR2(10) ,
	CONSTRAINT fk_t_perkuliahan_t_mk 
		FOREIGN KEY (kode_mk) 
		REFERENCES t_mata_kuliah(kode_mk)  ,
	CONSTRAINT fk_t_perkuliahan_t_dosen 
		FOREIGN KEY (dosen_pengampu) 
		REFERENCES t_dosen(nidos)
);

ALTER TABLE T_PERKULIAHAN ADD pertemuan integer;
ALTER TABLE T_PERKULIAHAN ADD kelas varchar2(10);


-- or
ALTER TABLE t_perkuliahan
  ADD CONSTRAINT fk_t_perkuliahan_t_mk FOREIGN KEY (kode_mk) REFERENCES t_mata_kuliah(kode_mk)  ,
  ADD CONSTRAINT fk_t_perkuliahan_t_dosen FOREIGN KEY (dosen_pengampu) REFERENCES t_dosen(nidos)

-- end or  
  
  
CREATE TABLE t_absensi(
	id_perkuliahan NUMBER ,
	nim NUMBER(20) ,
	jam_masuk TIMESTAMP ,
	status VARCHAR2(10) ,
	CONSTRAINT fk_t_absensi_t_perkuliahan 
		FOREIGN KEY (id_perkuliahan) 
		REFERENCES t_perkuliahan(id_perkuliahan)  ,
	CONSTRAINT fk_t_absensi_t_mahasiswa 
		FOREIGN KEY (nim) 
		REFERENCES t_mahasiswa(nim)
);

CREATE TABLE t_nilai (
	kode_mk VARCHAR2(10) ,
	dosen_pengampu VARCHAR2(10) ,
	nim NUMBER ,
	absensi FLOAT ,
	tugas FLOAT ,
	uts FLOAT ,
	uas FLOAT ,
	nilai_akhir FLOAT ,
	nilai_mutu VARCHAR2(10) ,
	CONSTRAINT fk_t_nilai_mk FOREIGN KEY (kode_mk) REFERENCES t_mata_kuliah(kode_mk)  ,
	CONSTRAINT fk_t_nilai_dosen FOREIGN KEY (dosen_pengampu) REFERENCES t_dosen(nidos)  ,
	CONSTRAINT fk_t_nilai_mahasiswa FOREIGN KEY (nim) REFERENCES t_mahasiswa(nim)
);



-- end CREATE TABLE ------------------------------------

-- INSERT TABLE ----------------------------------------
--T_MAHASISWA
SELECT * FROM T_MAHASISWA tm ;

--insert single row
insert into t_mahasiswa(nim, nama) 
values 
(211011700249,'ABDUL GANI FATTAH');

COMMIT;

-- insert multiple row 
INSERT ALL 
	into t_mahasiswa(nim, nama) values (211011700021,'DHAFIN ARRAHIM KOESWIDAYANTO')
	into t_mahasiswa(nim, nama) values (211011700025,'ANGKEU REYZA')
SELECT 1 FROM dual; 

UPDATE T_MAHASISWA SET JURUSAN = 'SI', FAKULTAS = 'FIK', kelas = 'SIFE001' 
WHERE kelas IS NULL;

--T_DOSEN
insert into t_dosen (nidos, nama) 
values 
('426079401','Liestiani Hasan')


INSERT ALL
into t_dosen (nidos,nama) values ('426079401','Liestiani Hasan')
into t_dosen (nidos,nama) values ('421118803','Noprianto')
into t_dosen (nidos,nama) values ('403119603','Wulan Pahira')
into t_dosen (nidos,nama) values ('411019403','Ananda Syarif Hidayatullah')
into t_dosen (nidos,nama) values ('411099202','Ahmad Asep Suhendi')
into t_dosen (nidos,nama) values ('407079403','Annah Juliana')
SELECT 1 FROM dual;


--T_MATA_KULIAH
insert into t_mata_kuliah (kode_mk,nama_mk,sks) values ('22SIF0442','Testing dan Implementasi Sistem',2);

INSERT all
 into t_mata_kuliah (kode_mk,nama_mk,sks) values ('22SIF0482','Audit Sistem Informasi',2)
 into t_mata_kuliah (kode_mk,nama_mk,sks) values ('22SIF0412','Customer Relationship Management (CRM)',2)
SELECT 1 FROM dual;

UPDATE T_MATA_KULIAH SET semester = 7 WHERE SEMESTER IS NULL;


SELECT *
FROM T_MATA_KULIAH tmk 
-- update T_MATA_KULIAH set semester = 3
WHERE SUBSTR(KODE_MK,1,5) = '22SIF'


--T_PERKULIAHAN
insert into t_perkuliahan (id_perkuliahan,tanggal,jam_mulai,jam_selesai,ruangan,kode_mk)
VALUES (
	1
	,TO_DATE('2024-09-30','YYYY-MM-DD')
	, TO_TIMESTAMP('2024-09-30 08:50:00', 'YYYY-MM-DD HH24:MI:SS')
	, TO_TIMESTAMP('2024-09-30 10:30:00', 'YYYY-MM-DD HH24:MI:SS')
	, 'V.931'
	, '22SIF0482'
);


-- or use CURRENT_TIMESTAMP

--T_ABSENSI
-- status = (Hadir, Izin, Sakit, Alfa)

INSERT INTO T_ABSENSI (id_perkuliahan, nim, jam_masuk, status) 
VALUES (
	1
	,211011700020
	, TO_TIMESTAMP('2024-09-30 08:50:00', 'YYYY-MM-DD HH24:MI:SS')
	, 'Hadir'
);

SELECT * FROM T_ABSENSI ta 

-- end INSERT TABLE ------------------------------------


-- view table ----------------------------------------------

SELECT
	CONCAT('Basis Data ','ORACLE') AS concat
	, LOWER('Basis Data ')  as lower
	, UPPER('Basis Data ') as upper
	, INITCAP('Basis Data ') as initcap
	, SUBSTR('Basis Data ',3,3) as substr
	, REPLACE('Basis Data','Data','Data Oracle') as replace
	, NVL('Basis Data ','TI') as nvl
	, LPAD('10',4,'0') AS lpad
	, RPAD('10',4,'0') AS rpad
	, LTRIM(' Basis Data ')
	, RTRIM(' Basis Data ')
	, rownum
	, rowid
FROM dual;








-- end view table ------------------------------------------







192.168.1.117
USR_07SIFE003
qwerty
ORCLPDB1


https://livesql.oracle.com/ords/f?p=590:1000

-- fungsi karakter
SELECT
	CONCAT('Basis Data ','ORACLE') AS concat -- Basis Data ORACLE
	, 'Basis' || ' ' || 'Data' || ' ' || 'Oracle' concat2
	, LOWER('Basis Data ')  as lower		 -- basis data
	, UPPER('Basis Data ') as upper			 -- BASIS DATA 
	, INITCAP('basis data ') as initcap -- Basis Data 
	, SUBSTR('Basis Data ',3,3) as substr -- sis
	, REPLACE('Basis Data','Data','Data Oracle') as REPLACE -- Basis Data Oracle
	, NVL('Basis Data ','TI') as nvl
	, 'F'||LPAD('110',4,'0') AS lpad -- 0010 - 0110 F0110
	, RPAD('110',4,'0') AS rpad -- 1000 - 1100
	, LTRIM(' Basis Data ') -- 'Basis Data '
	, LTRIM('Basis Data ', 'B') -- asis Data 
	, RTRIM(' Basis Data ') -- 'Basis Data'
	, TRIM(' Basis Data ')
	, rownum
	, rowid
FROM dual;


-- ----------------------------------------------------

SELECT rownum, tm.*
FROM T_MAHASISWA tm 

-- ----------------------------------------------------

SELECT 
 'F'||LPAD('110',4,'0') AS lpad -- F0110
FROM dual;

-- ----------------------------------------------------

SELECT 
	LTRIM(' Basis Data ') -- 'Basis Data '
FROM dual;

-- ----------------------------------------------------

SELECT  ROWnum,  tm.*
	,NVL(JURUSAN ,'TI')
	, CASE 
		WHEN jurusan IS NULL THEN 'N/A'
		ELSE JURUSAN
	END
FROM T_MAHASISWA tm 




-- ----------------------------------------------------
-- fungsi numeric
SELECT 
	round(5.765,1) AS round -- 5.77
	, TRUNC(5.765,2) AS trunc -- 5.7
	, CEIL(5.765) AS CEIL -- 6
	, FLOOR(5.765) AS floor -- 5
	, MOD(5,2) AS mod
	, POWER(5,2) AS power -- 25
	, SQRT(9) AS sqrt 
	, ABS(-2) AS abs
FROM dual;

SELECT round(5.764,2)
FROM dual

-- ----------------------------------------------------

SELECT 
	round(3.456,2)
FROM dual;

-- ----------------------------------------------------

SELECT 
CEIL(5.3) AS CEIL
, CEIL(5.8) AS CEIL
-- 6
FROM dual

-- ----------------------------------------------------



-- fungsi tanggal
SELECT 
	SYSDATE -- 2024-10-10 01:50:58.000
	, TO_CHAR(SYSDATE,'DD-MM-YYYY') AS date_format -- 07-10-2024
	, TO_DATE('20240101','YYYYMMDD') -- 2024-01-01 00:00:00.000
	, SYSDATE + 2
	, ADD_MONTHS(SYSDATE,1) "+ 1 Bln" -- 2024-11-07 12:32:12.000
	, MONTHS_BETWEEN(SYSDATE,TO_DATE('20240101','YYYYMMDD')) AS month_between
FROM dual;




	






host 	 : 192.168.80.54
DATABASE : ORCLPDB1
USER 	 : USR_07SIFP003
pass	 : qwerty



SELECT *
FROM t_perkuliahan tp 

SELECT *
FROM T_MATA_KULIAH 



SELECT ID_PERKULIAHAN 
	, TANGGAL
	, tp.KODE_MK, tmk.NAMA_MK 
	, tp.DOSEN_PENGAMPU 
	, td.NAMA 
FROM t_perkuliahan tp 
	INNER JOIN T_MATA_KULIAH tmk
		ON tp.KODE_MK = tmk.KODE_MK 
	INNER JOIN T_DOSEN td 
		ON tp.DOSEN_PENGAMPU = td.NIDOS 


SELECT *
FROM T_DOSEN td 






-- ------------------------------------------------------------------


SELECT CEIL ((to_date(SYSDATE) - TO_DATE('20241001','YYYYMMDD'))/30 )
FROM dual;


SELECT tp.*
	, ta.nim
	, jam_masuk
	, status
FROM T_PERKULIAHAN tp
	INNER JOIN T_ABSENSI ta ON tp.ID_PERKULIAHAN  = ta.ID_PERKULIAHAN
WHERE tp.ID_PERKULIAHAN = 1
	
https://livesql.oracle.com/ords/f?p=590:1000



SELECT tp.ID_PERKULIAHAN, tp.TANGGAL 
	, tp.KODE_MK, tmk.NAMA_MK 
	, tp.DOSEN_PENGAMPU, td.NAMA 
FROM T_PERKULIAHAN tp
	INNER JOIN T_MATA_KULIAH tmk
		ON tp.KODE_MK = tmk.KODE_MK
	INNER JOIN T_DOSEN td 
		ON tp.DOSEN_PENGAMPU = td.NIDOS 
	
-- ---
SELECT tp.ID_PERKULIAHAN, tp.TANGGAL 
	, tp.KODE_MK, tmk.NAMA_MK 
FROM T_PERKULIAHAN tp, T_MATA_KULIAH tmk
WHERE tp.KODE_MK = tmk.KODE_MK;



SELECT * FROM T_ABSENSI ta 
SELECT * FROM T_PERKULIAHAN tp 

-- contoh 2
SELECT tm.*
	, TO_CHAR(j.jam_masuk,'HH:MM:SS')
	, NVL2(j.jam_masuk,TO_CHAR(j.jam_masuk), 'ss')
	, j.status
	, NVL2(j.status,j.status,'belum presensi')
FROM T_MAHASISWA tm
	LEFT outer JOIN 
	( 
		SELECT tp.*
			, ta.nim
			, jam_masuk
			, status
		FROM T_PERKULIAHAN tp
			INNER JOIN T_ABSENSI ta ON tp.ID_PERKULIAHAN  = ta.ID_PERKULIAHAN
		WHERE tp.ID_PERKULIAHAN = 1
	) j ON tm.NIM = j.NIM
	
	
-- contoh 2
	
WITH absen AS (
	SELECT tp.*
		, ta.nim
		, jam_masuk
		, status
	FROM T_PERKULIAHAN tp
		INNER JOIN T_ABSENSI ta ON tp.ID_PERKULIAHAN  = ta.ID_PERKULIAHAN
	WHERE tp.ID_PERKULIAHAN = 1
)
SELECT * 
FROM T_MAHASISWA tm 
	LEFT OUTER JOIN absen a ON tm.NIM = a.NIM
	
	
https://livesql.oracle.com/ords/f?p=590:1000


-- creating table 

CREATE TABLE bricks (
    brick_id NUMBER PRIMARY KEY,
    brick_type VARCHAR2(50),
    length NUMBER,
    width NUMBER,
    height NUMBER,
    color VARCHAR2(20),
    strength NUMBER,
    price NUMBER,
    quantity_in_stock NUMBER,
    manufacturer VARCHAR2(100),
    supplier VARCHAR2(100),
    image_url VARCHAR2(255)
);


INSERT ALL 
INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (1,'Clay', 20, 10, 5, 'Red', 100, 10.00, 100, 'Acme Brick Company', 'ABC Supply', 'images/clay_brick_red.jpg')

INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (2,'Concrete', 15, 10, 7, 'Gray', 120, 12.00, 200, 'XYZ Construction Materials', 'Home Depot', 'images/concrete_brick_gray.jpg')

INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (3,'Glass', 10, 5, 5, 'Clear', 80, 20.00, 50, 'Glassworks Inc.', 'Lowes', 'images/glass_brick_clear.jpg')

INTO bricks (brick_id, brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (4,'Clay', 20, 10, 5, 'Brown', 100, 10.50, 80, 'Acme Brick Company', 'ABC Supply', 'images/clay_brick_brown.jpg')

INTO bricks (brick_id, brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (5,'Concrete', 15, 10, 7, 'Gray', 120, 12.50, 150, 'XYZ Construction Materials', 'Home Depot', 'images/concrete_brick_gray.jpg')
select 1 from dual;

-- 

select * from bricks;



SELECT kelas, count(kelas) jumlah_mahasiswa
FROM T_MAHASISWA tm 
GROUP BY KELAS




SELECT *
FROM  BRICKS b 

SELECT KELAS, count(KELAS)
FROM T_MAHASISWA tm 
GROUP BY KELAS 
ORDER BY count(kelas) desc

-- Aggregate Functions

SELECT * FROM BRICKS b 

select count ( COLOR  ) from bricks;



select sum ( WIDTH  ), min ( WIDTH ), max ( WIDTH ), 
       avg ( WIDTH )
from   bricks;







--Distinct vs. All

SELECT * FROM BRICKS b 

select 
	count ( all color ) total_number_of_rows, 
    count ( distinct color ) number_of_different_colours, 
    count ( unique color ) number_of_unique_colours
from   bricks;

5	4	4

SELECT count(COLOR), count(DISTINCT color)
FROM BRICKS b 



select sum ( WIDTH ) total_width
	, sum ( distinct WIDTH ) sum_of_unique_widths
	, avg ( WIDTH ) overall_mean
	, avg ( distinct WIDTH ) mean_of_unique_widths
from   bricks;

--Grouping Aggregates
select color, count (*) 
from   bricks
group  by color;


select BRICK_TYPE, color 
	, count (*)
from   bricks
group  by BRICK_TYPE, color;


--Filtering Aggregates

select color, count (*) 
from   bricks
where  WIDTH > 1
group  by color;
-- ----
select color, count (*) 
from   bricks
where  WIDTH > 1
group  by color
HAVING count(*)>1

SELECT KELAS, count(nim)
FROM T_MAHASISWA tm 
GROUP BY KELAS 



ORDER BY ...


SELECT * FROM BRICKS b 

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

set serveroutput on
DECLARE
    Myname VARCHAR2(20);
begin
    DBMS_OUTPUT.PUT_LINE('MY NAME IS: ')||Myname);
    
end;





set serveroutput on
DECLARE
    Myname VARCHAR2(20);
begin
    Myname := 'Ghz';
    DBMS_OUTPUT.PUT_LINE('MY NAME IS: '||Myname);
    Myname := 'Ghilman Faza';
    DBMS_OUTPUT.PUT_LINE('MY NAME IS: '||Myname);
end;


set serveroutput on
DECLARE
    Myname VARCHAR2(20);
begin
    Myname := 'Ghz';
    DBMS_OUTPUT.PUT_LINE('MY NAME IS: '||Myname);
    Myname := Myname || ' and Ghilman';
    DBMS_OUTPUT.PUT_LINE('MY NAME IS: '||Myname);
end;



set serveroutput on
DECLARE
    angka integer;
begin
    angka := 5;
    DBMS_OUTPUT.PUT_LINE('angka sekarang: '||angka);
    angka := 75;
    DBMS_OUTPUT.PUT_LINE('angka sekarang: '||angka);
end;


set serveroutput on
DECLARE
    jari_jari integer;
    phi number := 22/7;
    keliling number;
begin
    jari_jari := 10;
    keliling:= 2 * phi * jari_jari;
    DBMS_OUTPUT.PUT_LINE('jari-jari: '||jari_jari);
    DBMS_OUTPUT.PUT_LINE('keliling: '||keliling);
    DBMS_OUTPUT.PUT_LINE('keliling 2: '||round(keliling,2));
end;


select 10.4444,2
from dual;


set serveroutput on
DECLARE
    nama varchar(40) := 'Universitas Pamulang';
    panjang int;
    kapital nama%type;
begin
    panjang := length(nama);
    DBMS_OUTPUT.PUT_LINE(
        'String Asli: '||nama||' dengan panjang '||panjang
    );
    kapital:=upper(nama);
    DBMS_OUTPUT.PUT_LINE('Kapital: '||kapital);
    nama:=lower(nama);
    DBMS_OUTPUT.PUT_LINE('Huruf Kecil: '||nama);
end;

select 
    tp.tanggal, tp.jam_mulai, tp.jam_selesai, tp.kode_mk
    , tmk.nama_mk
    , tp.dosen_pengampu
    , td.nama
-- select *
from t_perkuliahan tp
    inner join t_mata_kuliah tmk
        on tp.kode_mk = tmk.kode_mk
    inner join t_dosen td
        on tp.dosen_pengampu = td.nidos
        
--contoh subquery
select 
    tp.tanggal, tp.jam_mulai, tp.jam_selesai, tp.kode_mk
    , tmk.nama_mk
    , tp.dosen_pengampu
    , td.nama
-- select *
from t_perkuliahan tp
    inner join (select * from t_mata_kuliah) tmk -- contoh subquery disini
        on tp.kode_mk = tmk.kode_mk
    inner join t_dosen td
        on tp.dosen_pengampu = td.nidos
        
        
-- 1 statement
select td.*, tp.id_perkuliahan
from t_dosen td
    left outer join t_perkuliahan tp
        on td.nidos = tp.dosen_pengampu
        
select * from t_ghilman

-- tabel bricks
select * from bricks
select count(color) from bricks;
select sum(width), min (width), max (width)
    , avg (width), min(color)
from bricks;


-- distict vs all
select * from bricks b

select
    count(all color) total_number_of_rows,
    count(distinct color) number_of_different_colours,
    count(unique color) number_of_unique_colours
from bricks;

select count(color), count(distinct color)
from bricks b

select sum(width) total_width
    , sum(distinct width) sum_of_unique_widths
    , avg(width) overall mean
    , sum(distinct width) mean_of_unique_widths
from bricks;

-- grouping aggregates
select color, count(*)
from bricks
group by color;

select kelas, count(kelas) as jml_mahasiswa
from t_mahasiswa tm
group by kelas
having count(kelas)
order by kelas desc

select brick_type, color
    , count(*)
from bricks
group by bricks_type,color;

-- filter aggregates
create table t_Ghilman (
 nim number(20) primary key,
 nama varchar2(100),
 jurusan varchar2(50),
 fakultas varchar2(50)
 );


insert into t_mahasiswa(NIM, NAMA, JURUSAN, FAKULTAS)
VALUES
(211011700139, 'Ghilman', '','');

insert into t_Ghilman (NIM, NAMA, JURUSAN, FAKULTAS)
VALUES
(211011700139, 'Ghilman', '','');

SELECT nim||' '||nama as nama_full
FROM t_mahasiswa; 

commit
