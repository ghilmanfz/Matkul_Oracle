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
