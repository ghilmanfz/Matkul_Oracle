CREATE TABLE t_211011700139_author (
    AUTHOR_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100),
    EMAIL VARCHAR2(100),
    BIO VARCHAR2(255)
);

CREATE TABLE t_211011700139_category (
    CATEGORY_ID NUMBER PRIMARY KEY,
    NAME VARCHAR2(100)
);

CREATE TABLE t_211011700139_article (
    ARTICLE_ID NUMBER PRIMARY KEY,
    TITLE VARCHAR2(200),
    CONTENT VARCHAR2(100),
    AUTHOR_ID NUMBER,
    CATEGORY_ID NUMBER,
    CREATED_AT DATE,
    PUBLISHED_AT DATE,
    STATUS VARCHAR2(20),
    FOREIGN KEY (AUTHOR_ID) REFERENCES t_211011700139_author(AUTHOR_ID),
    FOREIGN KEY (CATEGORY_ID) REFERENCES t_211011700139_category(CATEGORY_ID)
);

-- insert ke t_author
INSERT ALL
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (1, 'John Doe', 'johndoe@gmail.com', 'Pemrogram dan penulis lepas')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (2, 'Jane Smith', 'janesmith@gmail.com', 'Tech enthusiast dan reviewer gadget')
    INTO t_211011700139_author (AUTHOR_ID, NAME, EMAIL, BIO) VALUES (3, 'Alex Lee', 'alexlee@gmail.com', 'Pengamat startup dan investor')
SELECT * FROM dual;

-- insert ke t_category
INSERT ALL
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (1, 'Pemrograman')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (2, 'Gadget')
    INTO t_211011700139_category (CATEGORY_ID, NAME) VALUES (3, 'Startup')
SELECT * FROM dual;

-- insert ke t_article
INSERT ALL
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (1, 'Belajar Python Dasar', 'Artikel tentang dasar-dasar pemrograman Python', 1, 1, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (2, 'Review Smartphone Terbaru', 'Menguji spesifikasi dan fitur terbaru smartphone X', 2, 2, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
    INTO t_211011700139_article (ARTICLE_ID, TITLE, CONTENT, AUTHOR_ID, CATEGORY_ID, CREATED_AT, PUBLISHED_AT, STATUS)
        VALUES (3, 'Teknologi yang Sedang Tren', 'Membahas teknologi terbaru yang sedang berkembang pesat', 3, 3, TO_DATE('2024-10-14', 'YYYY-MM-DD'), TO_DATE('2024-10-14', 'YYYY-MM-DD'), 'published')
SELECT * FROM dual;


select * from t_211011700139_author;
select * from t_211011700139_category;
select * from t_211011700139_article;