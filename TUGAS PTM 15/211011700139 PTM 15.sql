create table t_mahasiswa_211011700139 (
	nim NUMBER(20) Primary key,
	nama VARCHAR2(100) ,
	jurusan VARCHAR2(50) ,
	fakultas VARCHAR2(50)
);

ALTER TABLE t_mahasiswa_211011700139 ADD kelas varchar2(10);

COMMIT

CREATE TABLE t_dosen_211011700139 (
	nidos VARCHAR2(10) Primary key,
	nama VARCHAR2(100)
);
COMMIT

CREATE TABLE T_MATA_KULIAH_211011700139 (
	kode_mk VARCHAR2(10) Primary key,
	nama_mk VARCHAR2(100) ,
	sks NUMBER(2)
);

ALTER TABLE T_MATA_KULIAH_211011700139 ADD semester int;
COMMIT

CREATE TABLE t_perkuliahan_211011700139(
	id_perkuliahan NUMBER Primary key,
	tanggal DATE ,
	jam_mulai TIMESTAMP ,
	jam_selesai TIMESTAMP ,
	ruangan VARCHAR2(20) ,
	kode_mk VARCHAR2(10) ,
	dosen_pengampu VARCHAR2(10) ,
	CONSTRAINT fk_t_perkuliahan_211011700139_t_mk 
		FOREIGN KEY (kode_mk) 
		REFERENCES T_MATA_KULIAH_211011700139(kode_mk)  ,
	CONSTRAINT fk_t_perkuliahan_211011700139_t_dosen_211011700139 
		FOREIGN KEY (dosen_pengampu) 
		REFERENCES t_dosen_211011700139(nidos)
);

ALTER TABLE t_perkuliahan_211011700139 ADD pertemuan integer;
ALTER TABLE t_perkuliahan_211011700139 ADD kelas varchar2(10);


-- or
--ALTER TABLE t_perkuliahan_211011700139
--  ADD CONSTRAINT fk_t_perkuliahan_211011700139_t_mk FOREIGN KEY (kode_mk) REFERENCES T_MATA_KULIAH_211011700139(kode_mk)  ,
--  ADD CONSTRAINT fk_t_perkuliahan_211011700139_t_dosen_211011700139 FOREIGN KEY (dosen_pengampu) REFERENCES t_dosen_211011700139(nidos)

-- end or  
  
  
CREATE TABLE t_absensi_211011700139(
	id_perkuliahan NUMBER ,
	nim NUMBER(20) ,
	jam_masuk TIMESTAMP ,
	status VARCHAR2(10) ,
	CONSTRAINT fk_t_absensi_211011700139_t_perkuliahan_211011700139 
		FOREIGN KEY (id_perkuliahan) 
		REFERENCES t_perkuliahan_211011700139(id_perkuliahan)  ,
	CONSTRAINT fk_t_absensi_211011700139_t_mahasiswa_211011700139 
		FOREIGN KEY (nim) 
		REFERENCES t_mahasiswa_211011700139(nim)
);

CREATE TABLE t_nilai_211011700139 (
	kode_mk VARCHAR2(10) ,
	dosen_pengampu VARCHAR2(10) ,
	nim NUMBER ,
	absensi FLOAT ,
	tugas FLOAT ,
	uts FLOAT ,
	uas FLOAT ,
	nilai_akhir FLOAT ,
	nilai_mutu VARCHAR2(10) ,
	CONSTRAINT fk_t_nilai_211011700139_mk FOREIGN KEY (kode_mk) REFERENCES T_MATA_KULIAH_211011700139(kode_mk)  ,
	CONSTRAINT fk_t_nilai_211011700139_dosen FOREIGN KEY (dosen_pengampu) REFERENCES t_dosen_211011700139(nidos)  ,
	CONSTRAINT fk_t_nilai_211011700139_mahasiswa FOREIGN KEY (nim) REFERENCES t_mahasiswa_211011700139(nim)
);

COMMIT


--START INSERT
-- INSERT TABLE ----------------------------------------
-- mahasiswa
-- Insert students from the image into t_mahasiswa
INSERT ALL
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700294, 'ABDUL GAFAR', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700318, 'ADE TRI SYAHRANI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700001, 'AKRAM DAFFA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700252, 'ALIF MULYA SYAPUTRA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700078, 'ALPIANTO', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700013, 'BOBBY KURNIA IBRAHIM', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700027, 'DINAR AULIA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700142, 'DWI NOFA RAMDANI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700357, 'DYLAN JIHAN RADIFA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700159, 'EFRT JAYA GULO', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700190, 'ELF KASIH CHRISTIANI LASE', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700029, 'EUIS NURHIDAYANTI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700067, 'FAHMI FEBRIYANTO', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700124, 'FIRDA NUR APRILIA KASTIANTI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700139, 'GHILMAN FAZA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700053, 'GLORIA AGUSTUS PUTRI TIARA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700121, 'HILYATIS SHOLIHAH', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700344, 'IKHWAN ABDI LEGIA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700064, 'INES MAHFIDA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700368, 'KADE RAHMAT YASSIN', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700183, 'KHOIRU NISA’ AMRIANI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700292, 'MUHAMMAD AZRIEL CHANIAGO', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700116, 'MUHAMMAD FADHLI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700016, 'MUHAMMAD FARZHA OCTAVARERA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700352, 'MUHAMMAD FIKRI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700057, 'MUHAMMAD HUSEN', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700002, 'NOVITA NURSANTI HAYAT', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700245, 'NURAENI LIANASARI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700339, 'PEGI MUSART AZANI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700098, 'RAMADHAN PERMANA PUTRA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700014, 'RIO DAVA DIRGA', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700248, 'ROBI RUSWANDI', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700275, 'SOPIANUS WARUWU', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700003, 'SUPRIYANDI TRAWAN', '07SIFM001')
INTO t_mahasiswa_211011700139(nim, nama, kelas) VALUES (211011700144, 'YOSUA VERREL ANDERSEN', '07SIFM001')
SELECT 1 FROM dual;


-- dosen 
INSERT ALL 
into t_dosen_211011700139 (nidos,nama) values ('426079401','Liestiani Hasan')
into t_dosen_211011700139 (nidos,nama) values ('421118803','Noprianto')
into t_dosen_211011700139 (nidos,nama) values ('403119603','Wulan Pahira')
into t_dosen_211011700139 (nidos,nama) values ('411019403','Ananda Syarif Hidayatullah')
into t_dosen_211011700139 (nidos,nama) values ('411099202','Ahmad Asep Suhendi')
into t_dosen_211011700139 (nidos,nama) values ('407079403','Annah Juliana')
SELECT 1 FROM dual;

-- matakuliah
INSERT ALL 
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0442','Testing dan Implementasi Sistem',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0482','Audit Sistem Informasi',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0412','Customer Relationship Management (CRM)',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0472','Optimasi Mesin Pencari',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0422','Kecakapan Antar Personal',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0432','Pendidikan Anti Korupsi',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0452','Sistem Pengelolaan Content',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('22SIF0462','Komputer dan Masyarakat',2,3)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KB1207','Basis Data Oracle',3,7)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KBMT01','Manajemen Perubahan IT',3,7)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KBMT02','Perencanaan Strategis IT',3,7)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KBMT03','Manajemen Resiko IT',3,7)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KBMT04','Audit IT',3,7)
into T_MATA_KULIAH_211011700139 (kode_mk,nama_mk,sks,semester) values ('KBMT05','Infrastruktur IT',3,7)
SELECT 1 FROM dual;

-- perkuliahan
INSERT ALL 
into t_perkuliahan_211011700139 values (1,TO_DATE('2024-09-09','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-09 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-09 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',1,'07SIFM001')
into t_perkuliahan_211011700139 values (2,TO_DATE('2024-09-16','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-16 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-16 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',2,'07SIFM001')
into t_perkuliahan_211011700139 values (3,TO_DATE('2024-09-16','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-16 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-16 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',3,'07SIFM001')
into t_perkuliahan_211011700139 values (4,TO_DATE('2024-09-23','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-23 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-23 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',4,'07SIFM001')
into t_perkuliahan_211011700139 values (5,TO_DATE('2024-09-30','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-30 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-30 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',5,'07SIFM001')
into t_perkuliahan_211011700139 values (6,TO_DATE('2024-09-30','YYYY-MM-DD'),TO_TIMESTAMP('2024-09-30 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-09-30 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',6,'07SIFM001')
into t_perkuliahan_211011700139 values (7,TO_DATE('2024-10-07','YYYY-MM-DD'),TO_TIMESTAMP('2024-10-07 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-10-07 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',7,'07SIFM001')
into t_perkuliahan_211011700139 values (8,TO_DATE('2024-10-14','YYYY-MM-DD'),TO_TIMESTAMP('2024-10-14 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-10-14 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',8,'07SIFM001')
into t_perkuliahan_211011700139 values (9,TO_DATE('2024-10-14','YYYY-MM-DD'),TO_TIMESTAMP('2024-10-14 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-10-14 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',9,'07SIFM001')
into t_perkuliahan_211011700139 values (10,TO_DATE('2024-11-21','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-21 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-21 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',10,'07SIFM001')
into t_perkuliahan_211011700139 values (11,TO_DATE('2024-11-04','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-04 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-04 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',11,'07SIFM001')
into t_perkuliahan_211011700139 values (12,TO_DATE('2024-11-04','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-04 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-04 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',12,'07SIFM001')
into t_perkuliahan_211011700139 values (13,TO_DATE('2024-11-11','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-11 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-11 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',13,'07SIFM001')
into t_perkuliahan_211011700139 values (14,TO_DATE('2024-11-18','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-18 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-18 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',14,'07SIFM001')
into t_perkuliahan_211011700139 values (15,TO_DATE('2024-11-18','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-18 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-18 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',15,'07SIFM001')
into t_perkuliahan_211011700139 values (16,TO_DATE('2024-11-25','YYYY-MM-DD'),TO_TIMESTAMP('2024-11-25 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-11-25 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',16,'07SIFM001')
into t_perkuliahan_211011700139 values (17,TO_DATE('2024-12-02','YYYY-MM-DD'),TO_TIMESTAMP('2024-12-02 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-02 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',17,'07SIFM001')
into t_perkuliahan_211011700139 values (18,TO_DATE('2024-12-02','YYYY-MM-DD'),TO_TIMESTAMP('2024-12-02 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-02 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',18,'07SIFM001')
into t_perkuliahan_211011700139 values (19,TO_DATE('2024-12-09','YYYY-MM-DD'),TO_TIMESTAMP('2024-12-09 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-09 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',19,'07SIFM001')
into t_perkuliahan_211011700139 values (20,TO_DATE('2024-12-21','YYYY-MM-DD'),TO_TIMESTAMP('2024-12-21 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-21 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',20,'07SIFM001')
into t_perkuliahan_211011700139 values (21,TO_DATE('2024-12-21','YYYY-MM-DD'),TO_TIMESTAMP('2024-12-21 06:10', 'YYYY-MM-DD HH24:MI:SS'),TO_TIMESTAMP('2024-12-21 08:10', 'YYYY-MM-DD HH24:MI:SS'),'V.919','KB1207','411099202',21,'07SIFM001')
SELECT 1 FROM dual;

COMMIT;

-- insert absensi ---------------------------------------------
--INSERT INTO t_absensi_211011700139 
--SELECT ID_PERKULIAHAN
--	, tm.NIM
--	, a.JAM_MULAI AS JAM_MASUK, 'Hadir' AS STATUS
--FROM t_perkuliahan_211011700139 a
--	INNER JOIN t_mahasiswa_211011700139 tm  ON ltrim(a.KELAS,'07') = tm.KELAS
--WHERE ID_PERKULIAHAN = 1;

--SELECT ta.*, JAM_MASUK + INTERVAL '20' MINUTE  
--FROM t_absensi_211011700139 ta 

-- end insert absensi ---------------------------------------------


--  insert nilai dummy ---------------------------------------------

INSERT INTO t_nilai_211011700139 (KODE_MK, DOSEN_PENGAMPU, NIM
	, ABSENSI, TUGAS, UTS, UAS)
	
SELECT KODE_MK, DOSEN_PENGAMPU, NIM
	, round(dbms_random.value(15,22)) AS absensi
	, round(dbms_random.value(60,99)) AS tugas
	, round(dbms_random.value(60,99)) AS uts
	, round(dbms_random.value(60,99)) AS uas
FROM t_perkuliahan_211011700139 tp 
	INNER JOIN t_mahasiswa_211011700139 tm ON substr(tp.KELAS,3) = tm.KELAS 
WHERE ID_PERKULIAHAN = 1;














--CLEAR TABLE

drop table t_mahasiswa_211011700139;
drop TABLE t_dosen_211011700139;
drop table T_MATA_KULIAH_211011700139;
drop table t_absensi_211011700139;
drop table t_nilai_211011700139;
drop table t_perkuliahan_211011700139;

ALTER TABLE t_perkuliahan_211011700139 DROP CONSTRAINT fk_t_perkuliahan_211011700139_t_dosen_211011700139;
ALTER TABLE t_nilai_211011700139 DROP CONSTRAINT fk_t_nilai_211011700139_dosen;

















CREATE OR REPLACE PROCEDURE show_perkuliahan_details AS
    vID_PERKULIAHAN NUMBER := 9;
    vTANGGAL VARCHAR2(100);
    vKELAS VARCHAR2(100);
    vRUANGAN VARCHAR2(100);
    vJAM_MULAI VARCHAR2(100);
    vJAM_SELESAI VARCHAR2(100);
    vKODE_MK VARCHAR2(100);
    vNAMA_MK VARCHAR2(100);
    vPERTEMUAN NUMBER;

    CURSOR t_mahasiswa_curr IS 
        SELECT tm.nim, tm.nama 
        FROM t_perkuliahan_211011700139 tp
        INNER JOIN t_mahasiswa_211011700139 tm 
        ON tp.kelas = tm.kelas
        WHERE tp.id_perkuliahan = vID_PERKULIAHAN;

    t_mahasiswa_rec t_mahasiswa_curr%ROWTYPE;
BEGIN
    -- Retrieve class session details
    SELECT TO_CHAR(tp.tanggal, 'DD-MM-YYYY') AS tanggal, 
           tp.kelas, tp.ruangan,
           TO_CHAR(tp.jam_mulai, 'HH24:MI') AS jam_mulai, 
           TO_CHAR(tp.jam_selesai, 'HH24:MI') AS jam_selesai,
           tmk.kode_mk, tmk.nama_mk,
           tp.pertemuan
    INTO vTANGGAL, vKELAS, vRUANGAN, vJAM_MULAI, vJAM_SELESAI, vKODE_MK, vNAMA_MK, vPERTEMUAN
    FROM t_perkuliahan_211011700139 tp
    INNER JOIN t_mata_kuliah_211011700139 tmk ON tp.kode_mk = tmk.kode_mk
    WHERE tp.id_perkuliahan = vID_PERKULIAHAN;

    -- Print header
    DBMS_OUTPUT.PUT_LINE(RPAD('=', 100, '='));
    DBMS_OUTPUT.PUT_LINE('Pertemuan Ke-' || vPERTEMUAN);
    DBMS_OUTPUT.PUT_LINE(RPAD('=', 100, '='));
    DBMS_OUTPUT.PUT_LINE('Tanggal      : ' || vTANGGAL);
    DBMS_OUTPUT.PUT_LINE('Jam          : ' || vJAM_MULAI || ' - ' || vJAM_SELESAI);
    DBMS_OUTPUT.PUT_LINE('Kelas        : ' || vKELAS);
    DBMS_OUTPUT.PUT_LINE('Ruangan      : ' || vRUANGAN);
    DBMS_OUTPUT.PUT_LINE('Kode MK      : ' || vKODE_MK);
    DBMS_OUTPUT.PUT_LINE('Nama MK      : ' || vNAMA_MK);
    DBMS_OUTPUT.PUT_LINE(RPAD('=', 100, '='));
    DBMS_OUTPUT.PUT_LINE(RPAD('NIM', 20) || RPAD('Nama Mahasiswa', 50));
    DBMS_OUTPUT.PUT_LINE(RPAD('-', 100, '-'));

    -- Open cursor and print student list
    OPEN t_mahasiswa_curr;
    LOOP
        FETCH t_mahasiswa_curr INTO t_mahasiswa_rec;
        EXIT WHEN t_mahasiswa_curr%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(RPAD(t_mahasiswa_rec.nim, 20) || RPAD(t_mahasiswa_rec.nama, 50));
    END LOOP;
    CLOSE t_mahasiswa_curr;

    -- Print footer
    DBMS_OUTPUT.PUT_LINE(RPAD('=', 100, '='));
END;

-- Perbaikan, Ternyata Database nya salah kelas, jadi ga muncul pas dipanggil 
UPDATE t_mahasiswa_211011700139
SET kelas = '07SIFM001'
WHERE kelas = '07SIFP001';
COMMIT;



BEGIN
    show_perkuliahan_details;
END;


