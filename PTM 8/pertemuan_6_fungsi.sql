

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




	




