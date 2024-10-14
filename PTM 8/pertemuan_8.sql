
https://livesql.oracle.com/ords/f?p=590:1000


-- creating table 

CREATE TABLE bricks (
    brick_id NUMBER PRIMARY KEY,
    brick_type VARCHAR2(50),
    length NUMBER,
    width NUMBER,
    height NUMBER,
    color VARCHAR2(20),
    strength NUMBER,
    price NUMBER,
    quantity_in_stock NUMBER,
    manufacturer VARCHAR2(100),
    supplier VARCHAR2(100),
    image_url VARCHAR2(255)
);


INSERT ALL 
INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (1,'Clay', 20, 10, 5, 'Red', 100, 10.00, 100, 'Acme Brick Company', 'ABC Supply', 'images/clay_brick_red.jpg')

INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (2,'Concrete', 15, 10, 7, 'Gray', 120, 12.00, 200, 'XYZ Construction Materials', 'Home Depot', 'images/concrete_brick_gray.jpg')

INTO bricks (brick_id,brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (3,'Glass', 10, 5, 5, 'Clear', 80, 20.00, 50, 'Glassworks Inc.', 'Lowes', 'images/glass_brick_clear.jpg')

INTO bricks (brick_id, brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (4,'Clay', 20, 10, 5, 'Brown', 100, 10.50, 80, 'Acme Brick Company', 'ABC Supply', 'images/clay_brick_brown.jpg')

INTO bricks (brick_id, brick_type, length, width, height, color, strength, price, quantity_in_stock, manufacturer, supplier, image_url)
VALUES (5,'Concrete', 15, 10, 7, 'Gray', 120, 12.50, 150, 'XYZ Construction Materials', 'Home Depot', 'images/concrete_brick_gray.jpg')
select 1 from dual;

-- 

select * from bricks;



SELECT kelas, count(kelas) jumlah_mahasiswa
FROM T_MAHASISWA tm 
GROUP BY KELAS




SELECT *
FROM  BRICKS b 

SELECT KELAS, count(KELAS)
FROM T_MAHASISWA tm 
GROUP BY KELAS 
ORDER BY count(kelas) desc

-- Aggregate Functions

SELECT * FROM BRICKS b 

select count ( COLOR  ) from bricks;



select sum ( WIDTH  ), min ( WIDTH ), max ( WIDTH ), 
       avg ( WIDTH )
from   bricks;







--Distinct vs. All

SELECT * FROM BRICKS b 

select 
	count ( all color ) total_number_of_rows, 
    count ( distinct color ) number_of_different_colours, 
    count ( unique color ) number_of_unique_colours
from   bricks;

5	4	4

SELECT count(COLOR), count(DISTINCT color)
FROM BRICKS b 



select sum ( WIDTH ) total_width
	, sum ( distinct WIDTH ) sum_of_unique_widths
	, avg ( WIDTH ) overall_mean
	, avg ( distinct WIDTH ) mean_of_unique_widths
from   bricks;

--Grouping Aggregates
select color, count (*) 
from   bricks
group  by color;


select BRICK_TYPE, color 
	, count (*)
from   bricks
group  by BRICK_TYPE, color;


--Filtering Aggregates

select color, count (*) 
from   bricks
where  WIDTH > 1
group  by color;
-- ----
select color, count (*) 
from   bricks
where  WIDTH > 1
group  by color
HAVING count(*)>1

SELECT KELAS, count(nim)
FROM T_MAHASISWA tm 
GROUP BY KELAS 



ORDER BY ...


SELECT * FROM BRICKS b 

