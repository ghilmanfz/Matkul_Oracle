SET SERVEROUTPUT ON 

DECLARE
	teks VARCHAR2 (50) :='Contoh Penggunaan ARRAY';
	TYPE SISWA IS TABLE OF VARCHAR2(25) INDEX BY BINARY_INTEGER; 
	NAMA SISWA;
	I INTEGER; 
BEGIN
	NAMA(1) := 'Arista Destriana'; 
	NAMA(2) := 'Yandri Gunawan'; 
	NAMA(3) := 'Herry Wahyudinata'; 
	NAMA(4) := 'Budi Raharjo'; 
	NAMA(5) := 'Noni Sutrisna';
	DBMS_OUTPUT.PUT_LINE( teks );
	FOR I IN 1..5 LOOP
		DBMS_OUTPUT.PUT_LINE('Nama siswa ke-' || TO_CHAR(I) 
		|| ' : ' || NAMA(I));
	END LOOP; 
END;


DECLARE
	X INTEGER;
	Y NUMBER;
BEGIN
	X := 0;
	Y := 1 / X;
	DBMS_OUTPUT.PUT_LINE('Nilai Y = ' || TO_CHAR(Y));
EXCEPTION
	WHEN ZERO_DIVIDE THEN
		DBMS_OUTPUT.PUT_LINE(
			'Terjadi kesalahan karena terdapat ' 
		|| 'pembagian dengan 0 (NOL) '
		);
END;



DECLARE
    namadosen VARCHAR2(50);
    vnidos varchar2(50);
BEGIN
    SELECT nama, NIDOS
        INTO namadosen, vnidos
    FROM T_DOSEN
    WHERE nidos=411099202;
    
		DBMS_OUTPUT.PUT_LINE('NIDOS : '||VNIDOS);
		DBMS_OUTPUT.PUT_LINE('Nama Dosen : '||namadosen);        
end;



DECLARE
    namamk VARCHAR2(100);
    sksmk NUMBER;
BEGIN
    SELECT NAMA_MK, SKS INTO namamk, sksmk
    FROM T_MATA_KULIAH
    WHERE KODE_MK = 'KB1207';
    DBMS_OUTPUT.PUT_LINE(RPAD('=',100,'='));
    DBMS_OUTPUT.PUT_LINE('Nama Mata Kuliah : '||namamk);
    DBMS_OUTPUT.PUT_LINE('SKS : '||sksmk);
    DBMS_OUTPUT.PUT_LINE(RPAD('=',100,'='));
END;

