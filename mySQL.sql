 /*
SET SQL_SAFE_UPDATES = 0;   ---->  untuk mematikan safe mode kalo ga bisa delete table

alter -> untuk mengedit table secara posisi
update -> ngedit table secara isi
insert into -> masukin data

CREATE DATABASE namadatabase  --->   buat database
USE namadatabase ----> buat open database
DROP DATABASE namadatabase----> delete database
ALTER DATABASE namadatabase READ ONLY = 1;   ---->  kita ga bisa edit cuma bisa liat
ALTER DATABASE namadatabase READ ONLY = 0;   ----> bisa edit lagi


TABLE ((NAMA COLOUMN TIDAK BISA SPASI))
CREATE TABLE namatable(column1 INT,
                       coloumn2 VARCHAR(10),  -----> total char
                       coloumn3 DECIMAL(5,2), ----> 5 ANGKA DAN 2 ANGKA DI BELAKANG KOMA
                       coloumn4 DATE);
                       
SELECT * FROM namatable;  ---> buat showing the table
RENAME TABLE namatable TO namatable2;   ----> rename table
DROP TABLE namatable;   ---->  delete table

ALTER TABLE namatable   ----> untuk ngedit yang ada di dalam table   ---> (/perintah ini diikutin perintah bawahnya)

ADD coloumn5 DATETIME;   ---->  untuk menambah coloumn
MODIFY COLOUMN coloumn5 VARCHAR(10);   ---->  ngedit jenis data di coloumn
MODIFY coloumn4 DATE
AFTER coloumn2;       ----->  coloumn 4 di pindah ke setelah coloumn2
FIRST;   ----->   pindahin coloumn4 ke coloumn1
RENAME COLOUMN coloumn4 To column_4;   ------>  rename column
DROP COLOUMN coloumn4   ----> delete coloumn4

(/ sampe sini)


INSERT ROW (memasukkan data)

INSERT INTO namatable (coloumn1)   ---->  di dalam kurung artinya yang wajib ada. selain yang ada di dalam kurung kalau tidak ada datanya bisa null
VALUES(1, "dara", 2.50, 2025-07-14);    ----> memasukkan data satu persatu sesuai urutan coloumn

SELECT DATA FROM A TABLE

SELECT coloumn1 
FROM namatable;    ---->  nanti keliatan cuma yang di coloumn 1
SELECT *
FROM namatable
WHERE coloumn1 = 1    ---->  keliatan yang ada di row 1 aja 
WHERE coloumn1 <= 10
WHERE coloumn1 != 1
WHERE coloumn4 >= 2025-07-14
WHERE coloumn4 IS NULL
WHERE coloumn4 IS NOT NULL

(/where itu untuk menentukan posisi data)


UPDATE TABLE   ----->   untuk mengisi yang null dan menghapus (ngedit data)

UPDATE namatable (/ perintah ini diikuti perintah di bawah ini)
SET coloumn1 = 10
SET coloumn1 = NULL
WHERE coloum2 = 2;    ----->  Kalo ga pake WHERE nanti yang ke update 1 coloumn dengan 1 nilai
(/sampe sini)


DELETE ROW
DELETE FROM namatable   ----->   menghapus semua table kalo ga pake where
where column1 = 6;     ---->  menghapus row 6 saja
WHERE columnname IN (value1, value2)  ---->  bisa langsung delete banyak
WHERE columname BETWEEN value1 AND value2   ---->  delete row dengan range

UNTUK NGESAVE

SET AUTOCOMMIT = OFF;    ----> untuk mematikan autosave
COMMIT;   --->  untuk ngesave hasil akhir
ROLLBACK   -->  Mengembalikan yang terakhir di save

SET TIME NOW

CURRENT DATE() --->  Date hari ini
CURRENT TIME()   ---> time sekarang
NOW ()  ----> date dan time sekarang

UNIQUE  ---->  Untuk memastikan data gaada yang double
((naruhnya setelah buat table))

CREATE TABLE nama table (coloumn1 VARCHAR(10) UNIQUE)    ---->    normal

ALTER TABLE namatable
ADD CONSTRAINT
UNIQUE(coloumn1);   ------>   existing table

NOT NULL ---->  constraint yang memastikan kalau coloumn itu ga boleh kosong

ALTER TABLE namatable
MODIFY coloumn 1 INT NOT NULL;   ---->  cara nambahin kalau lupa (existing table)

CHECK   ---->   Ngecek data sesuai syarat

CONSTRAINT nama_chk CHECK(coloum1 >= 10)   ----->  ditaruh dipaling akhir waktu create table

ALTER TABLE nama table
ADD CONSTRAINT nama_chk CHECK(coloumn1 >= 10);   ----> buat nambahin kalo kelupaan (existing table)

ALTER TABLE namatable
DROP CHECK nama_chk;   ---->  untuk menghapus contraint check

DEFAULT ---->  automatically filled kalo misal null dengan nilai default yang dipasang

CREATE TABLE namatable (coloumn 1 DATETIME DEFAULT NOW())   ----->   Automatically filled sesuai dengan datetime data masuk

ALTER TABLE namatable
ALTER coloumn1 SET DEFAULT NOW()    -----> setting existing table
((waktu INSERT INTO harus ada kurung setelah itu dengan menuliskan coloumn yang wajib diisi baru defaultnya kerja))


PRIMARY KEY   ---->   Harus unique(ga boleh double data) dan ga boleh null (hanya boleh ada 1 primary key di 1 tabel)
(termasuk constraint)

ALTER TABLE namatable
ADD CONSTRAINT             ----->  primary key EXISITING TABLE
PRIMARY KEY(coloumn1)

atau

ALTER TABLE namatable
MODIFY coloumn1 INT PRIMARY KEY;

AUTO_INCREMENT   ---> automatically count ((HARUS PRIMARY KEY))
(termasuk constraint)

CREATE TABLE namatable(coloumn1 PRIMARY KEY AUTO_INCREMENT);

ALTER TABLE namatable
AUTO_INCREMENT = 1000

ALTER namatable
MODIFY coloumn1 INT AUTO_INCREMENT;   ----->  ADD IN existing table


FOREIGN KEY ---->  Connected with primary key that in other table
((you make 2 tables))

ADD FOREIGN KEY (personID) REFERENCES namatable2(personID)   ---->   tanpa nama

ADD CONSTRAINT  nama_foreignkey;   ----> kalo mau dinamain kasih ini(opsional)

FOREIGN KEY(coloumn3) REFERENCES namatable2(column1); 

JOIN  ---> 1. INNER --> jika ditemukan ada foreign key yang null bakal diapus
           2. LEFT --> jika ditemukan ada foreign key yang null di kiri bakal tetep dikeliatanin null
           3. RIGHT --> jika ditemukan ada foreign key yang null di kanan bakal tetep dikeliatanin null

SELECT * 
FROM table1 INNER/LEFT/RIGHT JOIN table2
ON table1.column4 = table2.column1;

SELECT * column1, column2, column3, column2table2, column3table2   ----->  pake ini untuk menunjukkan data yang mau dikeluarkan
FROM table1 INNER/LEFT/RIGHT JOIN table2
ON table1.column4 = table2.column1table2;

FUNCTION
*SUM, AVG, MAX, MIN, COUNT, CONCAT, DLL 

SELECT SUM(column2) as "Total"
FROM table1;

SELECT CONCAT(column1, " ", column2) as "Gabungan"
FROM table1;

LOGICAL OPERATOR  ((FILTER GT))

ALTER table1 
SET column2 = "dara"
WHERE column1 = 1;      ----->  column 2 row 1 outputnya "dara"

AND//OR  --  WHERE NOT -- BETWEEN AND
ex: 
SELECT 
* FROM table1
WHERE column1 > 5  AND column2 = "dara";

IN   --->  AND TP LEBIH SINGKAT

SELECT 
* FROM table1
WHERE column2 IN ("dara", "fai", "oki");  

WILD CARD (LIKE)  ---->  mencari berdasarkan kata kunci (huruf awal, akhir, random huruf)

SELECT * FROM namatable
WHERE column1 LIKE "a%"

a%    ---->   first letter
%a    ---->   last letter
_ook  ---->   berdasarkan beberapa kata (kayak main tebak kata)
_a%   ---->   huruf pertama tidak diketahui, second letternya a, sertelahnya juga tidak diketahui

ORDER BY

SELECT * FROM 
ORDER BY column1 ASC, column2 DESC;

LIMIT

SELECT * FROM namatable
LIMIT 4;    ----->   hanya menampilkan 4 data
LIMIT 20,10;    ---->  21 - 30 (PAGE 3)

DISTINCT  ---->  SELECT GA BOLEH ADA YANG DOUBLE DATA

SELECT DISTINCT column1 FROM namatable1 

UNION   --->  menggabungkan 2 table menjadi 1 table dengan syarat jumlah column harus sama

SELECT * FROM table1
UNION  //  UNION ALL   ---> union = kalo ada data double bakal diapus salah satu.
SELECT * FROM table2

SELECT (column1, column2) FROM table2
UNION
SELECT (column1, column2) FROM table2
----> dipakai untuk yang jumlah columnya berbeda.

SELF JOIN --->  1 table yang sama lalu diclone dan menggunakan join
((jadi di column akhir di add column untuk dijadikan sebagai primary key di table clone. lalu dijadiin satu))

SELECT a.column1 a.column2    ---->  yang mau dikeliatanin
CONCAT(b.column2, b.column3)   ---->  add on
FROM table1 AS a
INNER JOIN table2 AS b    ---> copas table
ON a.column1 = b.column4

VIEW    ---->   table baru tapi ngga nyata (komponen dari table utama dan selalu update)

CREATE VIEW namatableview AS
SELECT columnnya
FROM namatable

SELECT * FROM namatableview

INDEX   ---->  filter syntax untuk data yang besar  (untuk tablle yang updatenya ga terlalu  cepet)

SHOW INDEXES FROM namatable;   ---->   untuk melihat index

ALTER TABLE namatable1 
DROP INDEX namaindex   ----->  delete index

CREATE INDEX namaindex
ON namatable1(column1);    ---> create index bisa create index 2 column tapi urutan di where juga harus sama

tetep pakai
SELECT *
FROM namatable1
WHERE column1 = "blablabla";

GROUP BY    ---->  menggunakan fungsi tapi dikelompokkan

SELECT SUM(amount), id_cust
FROM namatable 
GROUP BY id_cust
HAVING SUM(amount) > 10;   ---->  pengganti WHERE

ROLL UP  --->  Grand total

SELECT SUM(amount), id_cust
FROM namatable 
GROUP BY id_cust WITH ROLLUP     --->  jadi dia udah di totalin berdasarkan grup id cust trus bawahnya ada total semua

DELETE FOREIGN KEY  ---> 1. ON DELETE SET NULL -> FK NULL
                         2. ON DELETE CASCADE -> ROW DELETE IF FK DELETE
((di set di awal create atau pas nambahin foreign key, pokoknya harus barengan sama masang foreign key))


STORED PROCEDURE   ---->  bisa manggil function kayak void on cpp

DELIMITER $$   --->   agar sqlnya ngerti kalo endnnya sampai di END bukan di ; sebelum end
CREATE PROCEDURE Filter_Nama (IN Fname VARCHAR(20), IN Lname VARCHAR(20))
BEGIN
SELECT * FROM namatable
WHERE Nama_Depan = Fname AND Nama_Belakang = Lname;
END
DELIMITER ;


TRIGGER   -->  digunakan untuk mengubah data secara otomatis

BEFORE  ->  dieksekusi sebelum datanya dimasukkan, aeda operasi dahulu sebelum dimasukkan ke table
ex = create trigger untuk mengubah data ke huruf kecil semua, setelah diubah jadi huruf kecil semua baru dimasukkan ke table

AFTER -> dieksekusi setelah data dimasukkan  (data yang tidak perlu diedit lagi dan sudah fixed)
ex = record history perubahan

template : 
CREATE TRIGGER nama_trigger
BEFORE UPDATE ON table
FOR EACH ROW
SET NEW.Total = NEW.Harga_barang * New.Jumlah_Barang



*/