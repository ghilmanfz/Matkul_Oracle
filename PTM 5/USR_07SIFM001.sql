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
