-- Insert data mahasiswa ke t_author (Forum Diskusi 2 Nomor 1)
INSERT INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO)
VALUES (4, 'Ghilman Faza', 'ghilmanfz@gmail.com', 'Mahasiswa Sistem Informasi Semester 7');
select * from t_211011700139_author


-- Insert data artikel ke t_article (Forum Diskusi 2 Nomor 2)
INSERT INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
VALUES (4, 'Belajar Basis Data Oracle', 'Artikel tentang dasar-dasar penggunaan Oracle Database untuk pemula', 4, 1, TO_DATE('2024-10-15', 'YYYY-MM-DD'), TO_DATE('2024-10-15', 'YYYY-MM-DD'), 'published');
select * from t_211011700139_article


-- (Forum Diskusi 3 Nomor 1)
SELECT 
    a.TITLE,
    a.CONTENT,
    c.NAME AS CATEGORY_NAME,
    au.NAME AS AUTHOR_NAME
FROM 
    t_211011700139_article a
JOIN 
    t_211011700139_category c ON a.CATEGORY_ID = c.CATEGORY_ID
JOIN 
    t_211011700139_author au ON a.AUTHOR_ID = au.AUTHOR_ID
ORDER BY 
    au.NAME;
    
    

-- (Forum Diskusi 3 Nomor 2)
SELECT 
    au.NAME AS AUTHOR_NAME,
    COUNT(a.ARTICLE_ID) AS COUNT_ARTICLE
FROM 
    t_211011700139_author au
LEFT JOIN 
    t_211011700139_article a ON au.AUTHOR_ID = a.AUTHOR_ID
GROUP BY 
    au.NAME
ORDER BY 
    COUNT_ARTICLE DESC;

