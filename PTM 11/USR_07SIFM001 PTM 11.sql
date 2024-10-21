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

