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




select * from t_ghilman