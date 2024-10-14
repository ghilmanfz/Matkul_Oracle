

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





