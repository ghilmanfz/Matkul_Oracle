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
    
    

