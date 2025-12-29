CREATE TABLE "musteriler"(
    "musteri_id" INTEGER NOT NULL,
    "ad" VARCHAR(255) NOT NULL,
    "soyad" VARCHAR(255) NOT NULL,
    "email" VARCHAR(255) NOT NULL,
    "sehir" VARCHAR(255) NOT NULL,
    "ulke" VARCHAR(255) NOT NULL,
    "kayit_tarihi" DATE NOT NULL
);
ALTER TABLE
    "musteriler" ADD PRIMARY KEY("musteri_id");
CREATE TABLE "urunler"(
    "urun_id" BIGINT NOT NULL,
    "urun_adi" VARCHAR(255) NOT NULL,
    "kategori_id" INTEGER NOT NULL,
    "alis_fiyati" DECIMAL(8, 2) NOT NULL,
    "satis_fiyati" DECIMAL(8, 2) NOT NULL,
    "stok" INTEGER NOT NULL
);
ALTER TABLE
    "urunler" ADD PRIMARY KEY("urun_id");
CREATE TABLE "kategoriler"(
    "kategori_id" INTEGER NOT NULL,
    "kategori_adi" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "kategoriler" ADD PRIMARY KEY("kategori_id");
CREATE TABLE "siparisler"(
    "siparis_id" INTEGER NOT NULL,
    "musteri_id" INTEGER NOT NULL,
    "siparis_tarihi" DATE NOT NULL,
    "kargo_firmasi" VARCHAR(255) NOT NULL,
    "durum" VARCHAR(255) NOT NULL
);
ALTER TABLE
    "siparisler" ADD PRIMARY KEY("siparis_id");
CREATE TABLE "siparis_detayi"(
    "detay_id" INTEGER NOT NULL,
    "siparis_id" INTEGER NOT NULL,
    "urun_id" INTEGER NOT NULL,
    "miktar" INTEGER NOT NULL,
    "birim_fiyat" DECIMAL(8, 2) NOT NULL,
    "indirim" DECIMAL(8, 2) NOT NULL
);
ALTER TABLE
    "siparis_detayi" ADD PRIMARY KEY("detay_id");
ALTER TABLE
    "siparis_detayi" ADD CONSTRAINT "siparis_detayi_urun_id_foreign" FOREIGN KEY("urun_id") REFERENCES "urunler"("urun_id");
ALTER TABLE
    "urunler" ADD CONSTRAINT "urunler_kategori_id_foreign" FOREIGN KEY("kategori_id") REFERENCES "kategoriler"("kategori_id");
ALTER TABLE
    "siparisler" ADD CONSTRAINT "siparisler_musteri_id_foreign" FOREIGN KEY("musteri_id") REFERENCES "musteriler"("musteri_id");
ALTER TABLE
    "siparis_detayi" ADD CONSTRAINT "siparis_detayi_siparis_id_foreign" FOREIGN KEY("siparis_id") REFERENCES "siparisler"("siparis_id");


INSERT INTO kategoriler VALUES
(1,'Elektronik'),
(2,'Giyim'),
(3,'Ev & Yaşam'),
(4,'Kozmetik'),
(5,'Spor'),
(6,'Kitap'),
(7,'Oyuncak'),
(8,'Gıda'),
(9,'Ofis'),
(10,'Aksesuar');


INSERT INTO musteriler VALUES
(1,'Ayşe','Yılmaz','ayse1@mail.com','İstanbul','Türkiye','2023-01-05'),
(2,'Mehmet','Kaya','mehmet2@mail.com','Ankara','Türkiye','2023-01-10'),
(3,'Elif','Demir','elif3@mail.com','İzmir','Türkiye','2023-01-15'),
(4,'Can','Aydın','can4@mail.com','Bursa','Türkiye','2023-01-20'),
(5,'Zeynep','Şahin','zeynep5@mail.com','Antalya','Türkiye','2023-01-25'),
(6,'Ali','Çelik','ali6@mail.com','İstanbul','Türkiye','2023-02-01'),
(7,'Ece','Koç','ece7@mail.com','Ankara','Türkiye','2023-02-05'),
(8,'Burak','Arslan','burak8@mail.com','İzmir','Türkiye','2023-02-10'),
(9,'Seda','Öztürk','seda9@mail.com','Bursa','Türkiye','2023-02-15'),
(10,'Mert','Polat','mert10@mail.com','Antalya','Türkiye','2023-02-20'),

(11,'Deniz','Aksoy','deniz11@mail.com','İstanbul','Türkiye','2023-03-01'),
(12,'Buse','Güneş','buse12@mail.com','Ankara','Türkiye','2023-03-05'),
(13,'Emre','Yıldız','emre13@mail.com','İzmir','Türkiye','2023-03-10'),
(14,'Sinem','Eren','sinem14@mail.com','Bursa','Türkiye','2023-03-15'),
(15,'Okan','Karaca','okan15@mail.com','Antalya','Türkiye','2023-03-20'),
(16,'Melis','Doğan','melis16@mail.com','İstanbul','Türkiye','2023-04-01'),
(17,'Hakan','Taş','hakan17@mail.com','Ankara','Türkiye','2023-04-05'),
(18,'Derya','Keskin','derya18@mail.com','İzmir','Türkiye','2023-04-10'),
(19,'Serkan','Uslu','serkan19@mail.com','Bursa','Türkiye','2023-04-15'),
(20,'Pelin','Yavuz','pelin20@mail.com','Antalya','Türkiye','2023-04-20'),

(21,'Furkan','Özkan','furkan21@mail.com','İstanbul','Türkiye','2023-05-01'),
(22,'İrem','Toprak','irem22@mail.com','Ankara','Türkiye','2023-05-05'),
(23,'Onur','Sarı','onur23@mail.com','İzmir','Türkiye','2023-05-10'),
(24,'Cansu','Kurt','cansu24@mail.com','Bursa','Türkiye','2023-05-15'),
(25,'Tolga','Aslan','tolga25@mail.com','Antalya','Türkiye','2023-05-20'),
(26,'Yasemin','Bulut','yasemin26@mail.com','İstanbul','Türkiye','2023-06-01'),
(27,'Kerem','Işık','kerem27@mail.com','Ankara','Türkiye','2023-06-05'),
(28,'Selin','Kara','selin28@mail.com','İzmir','Türkiye','2023-06-10'),
(29,'Umut','Erdem','umut29@mail.com','Bursa','Türkiye','2023-06-15'),
(30,'Berk','Güler','berk30@mail.com','Antalya','Türkiye','2023-06-20'),

(31,'Nisa','Koç','nisa31@mail.com','İstanbul','Türkiye','2023-07-01'),
(32,'Batuhan','Acar','batuhan32@mail.com','Ankara','Türkiye','2023-07-05'),
(33,'Eylül','Arı','eylul33@mail.com','İzmir','Türkiye','2023-07-10'),
(34,'Kaan','Demirtaş','kaan34@mail.com','Bursa','Türkiye','2023-07-15'),
(35,'Sude','Akın','sude35@mail.com','Antalya','Türkiye','2023-07-20'),
(36,'Emir','Bozkurt','emir36@mail.com','İstanbul','Türkiye','2023-08-01'),
(37,'İlayda','Can','ilayda37@mail.com','Ankara','Türkiye','2023-08-05'),
(38,'Oğuz','Korkmaz','oguz38@mail.com','İzmir','Türkiye','2023-08-10'),
(39,'Naz','Yalçın','naz39@mail.com','Bursa','Türkiye','2023-08-15'),
(40,'Cem','Köse','cem40@mail.com','Antalya','Türkiye','2023-08-20'),

(41,'Mina','Özer','mina41@mail.com','İstanbul','Türkiye','2023-09-01'),
(42,'Kadir','Altun','kadir42@mail.com','Ankara','Türkiye','2023-09-05'),
(43,'Dilan','Çetin','dilan43@mail.com','İzmir','Türkiye','2023-09-10'),
(44,'Arda','Sevinç','arda44@mail.com','Bursa','Türkiye','2023-09-15'),
(45,'Leyla','Gür','leyla45@mail.com','Antalya','Türkiye','2023-09-20'),
(46,'Eren','Yüksel','eren46@mail.com','İstanbul','Türkiye','2023-10-01'),
(47,'Zehra','Mutlu','zehra47@mail.com','Ankara','Türkiye','2023-10-05'),
(48,'Baran','Yılmaz','baran48@mail.com','İzmir','Türkiye','2023-10-10'),
(49,'Ceyda','Sönmez','ceyda49@mail.com','Bursa','Türkiye','2023-10-15'),
(50,'Ahmet','Tekin','ahmet50@mail.com','Antalya','Türkiye','2023-10-20');

INSERT INTO urunler VALUES
(1,'Laptop',1,15000,18000,50),
(2,'Telefon',1,10000,13000,80),
(3,'Kulaklık',1,500,900,200),
(4,'Tişört',2,150,350,300),
(5,'Pantolon',2,400,850,150),
(6,'Mont',2,900,1900,110),
(7,'Koltuk',3,7000,9500,20),
(8,'Masa',3,2000,3200,40),
(9,'Sandalye',3,900,1500,60),
(10,'Halı',3,2500,4200,25),

(11,'Parfüm',4,600,1200,100),
(12,'Krem',4,120,300,250),
(13,'Makyaj Seti',4,800,1600,90),
(14,'Koşu Ayakkabısı',5,900,1600,90),
(15,'Dumbell Seti',5,1200,2000,60),
(16,'Yoga Matı',5,200,450,120),
(17,'Roman Kitap',6,80,150,500),
(18,'Çocuk Kitabı',6,60,120,400),
(19,'Defter',9,30,70,800),
(20,'Kalem',9,10,30,1500),

(21,'Oyuncak Araba',7,150,300,200),
(22,'Puzzle',7,90,180,180),
(23,'Tablet',1,7000,9500,60),
(24,'Saat',10,1200,2200,70),
(25,'Çanta',10,800,1600,90),
(26,'Bileklik',10,150,400,140),
(27,'Kahve',8,70,150,600),
(28,'Çikolata',8,20,45,1000),
(29,'Çay',8,40,90,700),
(30,'Protein Bar',8,25,60,500),

(31,'Ofis Sandalyesi',9,1500,2600,35),
(32,'Mouse',1,200,450,180),
(33,'Klavye',1,400,850,160),
(34,'Monitör',1,4500,6200,45),
(35,'Ceket',2,600,1400,95),
(36,'Elbise',2,500,1300,85),
(37,'Battaniye',3,400,850,70),
(38,'Yastık',3,200,450,120),
(39,'Gözlük',10,900,1800,55),
(40,'Cüzdan',10,350,750,110),

(41,'Spor Çanta',5,500,1100,80),
(42,'Tost Makinesi',1,1800,2900,40),
(43,'Blender',1,2200,3500,35),
(44,'Fön Makinesi',4,700,1400,75),
(45,'Saç Düzleştirici',4,800,1600,65),
(46,'Defter Seti',9,90,200,300),
(47,'Ajanda',9,120,280,260),
(48,'Akıllı Saat',1,5500,7800,50),
(49,'Kulaklık Pro',1,1200,2200,90),
(50,'Powerbank',1,600,1200,140);

INSERT INTO siparisler VALUES
(1,1,'2024-01-05','Yurtiçi Kargo','Teslim Edildi'),
(2,2,'2024-01-06','MNG Kargo','Teslim Edildi'),
(3,3,'2024-01-07','Aras Kargo','Kargoda'),
(4,4,'2024-01-08','Yurtiçi Kargo','Hazırlanıyor'),
(5,5,'2024-01-09','MNG Kargo','Teslim Edildi'),
(6,6,'2024-01-10','Aras Kargo','Teslim Edildi'),
(7,7,'2024-01-11','Yurtiçi Kargo','Kargoda'),
(8,8,'2024-01-12','MNG Kargo','Teslim Edildi'),
(9,9,'2024-01-13','Aras Kargo','İptal'),
(10,10,'2024-01-14','Yurtiçi Kargo','Teslim Edildi'),

(11,11,'2024-02-01','MNG Kargo','Teslim Edildi'),
(12,12,'2024-02-02','Aras Kargo','Kargoda'),
(13,13,'2024-02-03','Yurtiçi Kargo','Teslim Edildi'),
(14,14,'2024-02-04','MNG Kargo','Hazırlanıyor'),
(15,15,'2024-02-05','Aras Kargo','Teslim Edildi'),
(16,16,'2024-02-06','Yurtiçi Kargo','Teslim Edildi'),
(17,17,'2024-02-07','MNG Kargo','Kargoda'),
(18,18,'2024-02-08','Aras Kargo','Teslim Edildi'),
(19,19,'2024-02-09','Yurtiçi Kargo','İptal'),
(20,20,'2024-02-10','MNG Kargo','Teslim Edildi'),

(21,21,'2024-03-01','Aras Kargo','Teslim Edildi'),
(22,22,'2024-03-02','Yurtiçi Kargo','Kargoda'),
(23,23,'2024-03-03','MNG Kargo','Teslim Edildi'),
(24,24,'2024-03-04','Aras Kargo','Hazırlanıyor'),
(25,25,'2024-03-05','Yurtiçi Kargo','Teslim Edildi'),
(26,26,'2024-03-06','MNG Kargo','Teslim Edildi'),
(27,27,'2024-03-07','Aras Kargo','Kargoda'),
(28,28,'2024-03-08','Yurtiçi Kargo','Teslim Edildi'),
(29,29,'2024-03-09','MNG Kargo','İptal'),
(30,30,'2024-03-10','Aras Kargo','Teslim Edildi'),

(31,31,'2024-04-01','Yurtiçi Kargo','Teslim Edildi'),
(32,32,'2024-04-02','MNG Kargo','Kargoda'),
(33,33,'2024-04-03','Aras Kargo','Teslim Edildi'),
(34,34,'2024-04-04','Yurtiçi Kargo','Hazırlanıyor'),
(35,35,'2024-04-05','MNG Kargo','Teslim Edildi'),
(36,36,'2024-04-06','Aras Kargo','Teslim Edildi'),
(37,37,'2024-04-07','Yurtiçi Kargo','Kargoda'),
(38,38,'2024-04-08','MNG Kargo','Teslim Edildi'),
(39,39,'2024-04-09','Aras Kargo','İptal'),
(40,40,'2024-04-10','Yurtiçi Kargo','Teslim Edildi'),

(41,41,'2024-05-01','MNG Kargo','Teslim Edildi'),
(42,42,'2024-05-02','Aras Kargo','Kargoda'),
(43,43,'2024-05-03','Yurtiçi Kargo','Teslim Edildi'),
(44,44,'2024-05-04','MNG Kargo','Hazırlanıyor'),
(45,45,'2024-05-05','Aras Kargo','Teslim Edildi'),
(46,46,'2024-05-06','Yurtiçi Kargo','Teslim Edildi'),
(47,47,'2024-05-07','MNG Kargo','Kargoda'),
(48,48,'2024-05-08','Aras Kargo','Teslim Edildi'),
(49,49,'2024-05-09','Yurtiçi Kargo','İptal'),
(50,50,'2024-05-10','MNG Kargo','Teslim Edildi');


INSERT INTO siparis_detayi VALUES
(1,1,1,1,18000,0.10),
(2,1,3,2,900,0.05),
(3,2,4,3,350,0.00),
(4,2,5,1,850,0.10),
(5,3,2,1,13000,0.15),
(6,3,8,2,1200,0.05),
(7,4,6,1,9500,0.00),
(8,4,9,3,300,0.10),
(9,5,10,1,1600,0.00),
(10,5,12,2,150,0.00),

(11,6,14,1,300,0.05),
(12,6,16,5,45,0.00),
(13,7,18,4,70,0.00),
(14,7,19,6,30,0.00),
(15,8,21,1,2200,0.10),
(16,8,22,1,1600,0.10),
(17,9,11,1,2000,0.00),
(18,10,7,1,3200,0.05),
(19,10,13,2,120,0.00),
(20,11,23,1,9500,0.15),

(21,12,24,1,2200,0.10),
(22,13,25,1,1600,0.10),
(23,14,26,2,400,0.00),
(24,15,27,3,150,0.05),
(25,16,28,4,45,0.00),
(26,17,29,2,90,0.00),
(27,18,30,3,60,0.00),
(28,19,31,1,2600,0.10),
(29,20,32,2,450,0.05),
(30,21,33,1,850,0.00),

(31,22,34,1,6200,0.10),
(32,23,35,2,1400,0.05),
(33,24,36,1,1300,0.00),
(34,25,37,2,850,0.10),
(35,26,38,3,450,0.00),
(36,27,39,1,1800,0.15),
(37,28,40,2,750,0.05),
(38,29,41,1,1100,0.00),
(39,30,42,1,2900,0.10),
(40,31,43,1,3500,0.05),

(41,32,44,2,1400,0.10),
(42,33,45,1,1600,0.00),
(43,34,46,3,200,0.00),
(44,35,47,2,280,0.05),
(45,36,48,1,7800,0.15),
(46,37,49,2,2200,0.10),
(47,38,50,1,1200,0.00),
(48,39,1,1,18000,0.20),
(49,40,2,1,13000,0.10),
(50,41,3,3,900,0.05),

(51,42,4,2,350,0.00),
(52,43,5,1,850,0.10),
(53,44,6,1,9500,0.00),
(54,45,7,1,3200,0.05),
(55,46,8,2,1200,0.10),
(56,47,9,3,300,0.00),
(57,48,10,1,1600,0.00),
(58,49,11,1,2000,0.15),
(59,50,12,2,150,0.00),
(60,1,13,1,120,0.00),

(61,2,14,1,300,0.05),
(62,3,15,1,2000,0.10),
(63,4,16,4,45,0.00),
(64,5,17,2,150,0.00),
(65,6,18,3,120,0.05),
(66,7,19,5,30,0.00),
(67,8,20,1,2600,0.10),
(68,9,21,1,2200,0.05),
(69,10,22,1,1600,0.10),
(70,11,23,1,9500,0.15),

(71,12,24,1,2200,0.10),
(72,13,25,2,1600,0.05),
(73,14,26,1,400,0.00),
(74,15,27,3,150,0.05),
(75,16,28,4,45,0.00),
(76,17,29,2,90,0.00),
(77,18,30,3,60,0.00),
(78,19,31,1,2600,0.10),
(79,20,32,2,450,0.05),
(80,21,33,1,850,0.00),

(81,22,34,1,6200,0.10),
(82,23,35,1,1400,0.05),
(83,24,36,2,1300,0.00),
(84,25,37,1,850,0.10),
(85,26,38,2,450,0.00),
(86,27,39,1,1800,0.15),
(87,28,40,1,750,0.05),
(88,29,41,1,1100,0.00),
(89,30,42,1,2900,0.10),
(90,31,43,1,3500,0.05),

(91,32,44,1,1400,0.10),
(92,33,45,1,1600,0.00),
(93,34,46,2,200,0.00),
(94,35,47,2,280,0.05),
(95,36,48,1,7800,0.15),
(96,37,49,1,2200,0.10),
(97,38,50,1,1200,0.00),
(98,39,1,1,18000,0.20),
(99,40,2,1,13000,0.10),
(100,41,3,2,900,0.05);


CREATE OR REPLACE VIEW vw_satis_analizi AS
SELECT
    s.siparis_id,
    s.siparis_tarihi,
    DATE_TRUNC('month', s.siparis_tarihi) AS ay,
    
    u.urun_id,
    u.urun_adi,
    k.kategori_id,
    k.kategori_adi,

    sd.miktar,
    sd.birim_fiyat,
    sd.indirim,

    -- Ciro
    (sd.miktar * sd.birim_fiyat * (1 - sd.indirim)) AS ciro,

    -- Maliyet
    (sd.miktar * u.alis_fiyati) AS maliyet,

    -- Kar
    (sd.miktar * sd.birim_fiyat * (1 - sd.indirim)) 
    - (sd.miktar * u.alis_fiyati) AS kar

FROM siparis_detayi sd
JOIN siparisler s ON sd.siparis_id = s.siparis_id
JOIN urunler u ON sd.urun_id = u.urun_id
JOIN kategoriler k ON u.kategori_id = k.kategori_id
WHERE s.durum = 'Teslim Edildi';


CREATE OR REPLACE VIEW vw_sepet_analizi AS
SELECT
    s.siparis_id,
    s.siparis_tarihi,
    m.musteri_id,
    m.sehir,

    COUNT(sd.urun_id) AS urun_sayisi,
    SUM(sd.miktar) AS toplam_adet,

    SUM(sd.miktar * sd.birim_fiyat * (1 - sd.indirim)) AS sepet_tutari

FROM siparisler s
JOIN musteriler m ON s.musteri_id = m.musteri_id
JOIN siparis_detayi sd ON s.siparis_id = sd.siparis_id
WHERE s.durum = 'Teslim Edildi'
GROUP BY
    s.siparis_id,
    s.siparis_tarihi,
    m.musteri_id,
    m.sehir;

