SELECT 
    u.UrunAdi,           -- Urunler tablosundan geliyor
    sd.Adet,             -- SiparisDetay tablosundan geliyor
    r.RestoranAdi,       -- Restoranlar tablosundan geliyor
    -- MusteriID NULL ise 'Gizli Baðýþçý' yazar, deðilse ad soyad birleþtirir
    CASE 
        WHEN s.MusteriID IS NULL THEN 'Gizli Baðýþçý (Hayýrsever)'
        ELSE m.Ad + ' ' + m.Soyad 
    END AS BagisciKimligi
FROM Siparisler s
-- 1. Sipariþ detaylarýna gitmek için ara tabloyu baðlýyoruz
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
-- 2. Ürün adýna ulaþmak için ürünler tablosunu baðlýyoruz
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
-- 3. Restoran adýna ulaþmak için restoranlar tablosunu baðlýyoruz
INNER JOIN Restoranlar r ON u.RestoranID = r.RestoranID
-- 4. Gizlilik için müþterileri LEFT JOIN ile baðlýyoruz (NULL deðerleri kaçýrmamak için)
LEFT JOIN Musteriler m ON s.MusteriID = m.MusteriID
-- 5. Sadece askýdaki (yani henüz bir ihtiyaç sahibi tarafýndan alýnmamýþ) yemekleri listelemek için filtre:
WHERE s.MusteriID IS NULL;


INSERT INTO Siparisler (MusteriID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (NULL, GETDATE(), 150.00, 'Hazýrlanýyor');

INSERT INTO Musteriler (Ad, Soyad, Telefon, Email)
VALUES ('Gizli', 'Baðýþçý (Hayýrsever)', '0000000000', 'anonim@sistem.com');

-- Buradaki '5' yerine bir önceki adýmda oluþan sanal MusteriID'ni yazmalýsýn.
INSERT INTO Siparisler (MusteriID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, GETDATE(), 150.00, 'Hazýrlanýyor');

SELECT * FROM Adresler; -- Eðer tablonun adý Adres ise 'Adresler' yerine 'Adres' yaz.

-- NOT: '5' yerine kendi sanal MusteriID'ni, '1' yerine tablodaki gerçek bir AdresID'yi yaz!
INSERT INTO Siparisler (MusteriID, AdresID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, GETDATE(), 150.00, 'Hazýrlanýyor');

SELECT * FROM Restoranlar;

-- NOT: 5, 1, 1 sayýlarýný kendi veritabanýndaki gerçek ID deðerlerine göre güncelleyebilirsin
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (5, 1, 4, GETDATE(), 150.00, 'Hazýrlanýyor');

-- UrunID olarak Urunler tablondaki geçerli bir ID'yi (Örn: 1) yaz.
INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet)
VALUES (IDENT_CURRENT('Siparisler'), 1, 2);

-- UrunID olarak Urunler tablondaki geçerli bir ID'yi (Örn: 1) yaz.
INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 1, 2, 75.00);


SELECT 
    u.UrunAdi,           
    sd.Adet,             
    sd.BirimFiyat,       -- Detay tablosundaki gerçek fiyat sütunu
    r.RestoranAdi,       
    (m.Ad + ' ' + m.Soyad) AS BagisciKimligi
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
INNER JOIN Restoranlar r ON u.RestoranID = r.RestoranID
INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID
-- NOT: Buradaki 5 sayýsýný kendi sanal MusteriID'nle deðiþtirmeyi unutma!
WHERE s.MusteriID = 38;

SELECT * FROM Siparisler WHERE SiparisID = IDENT_CURRENT('Siparisler');

SELECT 
    u.UrunAdi,           
    sd.Adet,             
    sd.BirimFiyat,       
    r.RestoranAdi,       
    (m.Ad + ' ' + m.Soyad) AS BagisciKimligi
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
INNER JOIN Restoranlar r ON u.RestoranID = r.RestoranID
INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID;


SELECT 
    u.UrunAdi,           
    sd.Adet,             
    sd.BirimFiyat,       
    r.RestoranAdi,       
    -- Eðer sipariþi veren bizim sanal gizli kullanýcýysa maskele, deðilse adýný yaz:
    CASE 
        WHEN s.MusteriID = 38 THEN 'Gizli Baðýþçý (Hayýrsever)'
        ELSE m.Ad + ' ' + m.Soyad 
    END AS BagisciKimligi
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
INNER JOIN Restoranlar r ON u.RestoranID = r.RestoranID
INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID
-- KRÝTÝK FÝLTRE: Sadece "Askýda Yemek Noktasý" (AdresID = 1) olan baðýþlarý getir!
-- Böylece insanlarýn kendilerine verdiði normal sipariþler elenir.
WHERE s.AdresID = 1;

-- Sipariþi sanal kullanýcý (5) üzerinden oluþturuyoruz
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 110.00, 'Hazýrlanýyor');

-- Sipariþ detayýný baðla (En son açýlan sipariþe 1 adet Kuru Fasulye ekleyelim mesela)
INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 1, 1, 110.00);

-- ====================================================================
-- 1. GÝZLÝ SÝPARÝÞ: Diyar Lahmacun'dan 4 Adet Lahmacun
-- ====================================================================
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 300.00, 'Hazýrlanýyor');

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 6, 4, 75.00);


-- ====================================================================
-- 2. GÝZLÝ SÝPARÝÞ: Pizza Portofino'dan 2 Adet Kola
-- ====================================================================
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 80.00, 'Hazýrlanýyor');

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 2, 2, 40.00);


-- ====================================================================
-- 3. GÝZLÝ SÝPARÝÞ: Veggie Garden'dan 3 Adet Mantar Sote
-- ====================================================================
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 510.00, 'Hazýrlanýyor');

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 5, 3, 170.00);


-- ====================================================================
-- 4. GÝZLÝ SÝPARÝÞ: Anne Eli Ev Yemekleri'nden 2 Adet Mercimek Çorbasý
-- ====================================================================
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 140.00, 'Hazýrlanýyor');

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 4, 2, 70.00);


-- ====================================================================
-- 5. GÝZLÝ SÝPARÝÞ: Diyar Lahmacun'dan 2 Adet Adana Kebap
-- ====================================================================
INSERT INTO Siparisler (MusteriID, AdresID, RestoranID, SiparisTarihi, ToplamTutar, SiparisDurumu)
VALUES (38, 1, 1, GETDATE(), 500.00, 'Hazýrlanýyor');

INSERT INTO SiparisDetaylari (SiparisID, UrunID, Adet, BirimFiyat)
VALUES (IDENT_CURRENT('Siparisler'), 3, 2, 250.00);


  SELECT 
    m.Ad + ' ' + m.Soyad AS MusteriAdSoyad,
    u.UrunAdi,           
    sd.Adet,             
    sd.BirimFiyat,       
    r.RestoranAdi,       
    s.SiparisTarihi,
    s.SiparisDurumu
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
INNER JOIN Restoranlar r ON u.RestoranID = r.RestoranID
INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID
-- KRÝTÝK FÝLTRE: AdresID'si 1 (Baðýþ Havuzu) OLMAYAN tüm normal sipariþleri getir!
WHERE s.AdresID <> 1;


SELECT TOP 1 * FROM Musteriler;

SELECT TOP 10 
    dest.text AS [Calistirilan SQL Kodu],
    deqs.last_execution_time AS [Calistirilma Zamani]
FROM sys.dm_exec_query_stats AS deqs
CROSS APPLY sys.dm_exec_sql_text(deqs.sql_handle) AS dest
WHERE dest.text LIKE '%BagisciKimligi%' -- Ýçinde bu kelime geçen sorgularý filtreler
ORDER BY deqs.last_execution_time DESC;