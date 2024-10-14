

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
	
	