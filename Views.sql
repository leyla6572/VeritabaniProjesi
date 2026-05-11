USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  View [dbo].[vw_AktifRestoranMenuleri]    Script Date: 11.05.2026 16:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AktifRestoranMenuleri] AS
SELECT 
    R.RestoranAdi, 
    U.UrunAdi, 
    U.Fiyat, 
    U.Kategori
FROM Restoranlar R
JOIN Urunler U ON R.RestoranID = U.RestoranID
WHERE R.Durum = 1 AND U.Durum = 1; 
-- Burada 'Durum' sütununu eklemiştik,aktif/pasif kontrolü içindi.
--Restoranların sahip olduğu ürünleri kategorilerine ve fiyatlarına 
--göre eşleştirerek,menülerin kolayca filtrelenmesini sağlar.
GO



/****** Object:  View [dbo].[vw_AskidaYemekHavuzDurumu]    Script Date: 11.05.2026 16:12:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vw_AskidaYemekHavuzDurumu] AS
SELECT 
    A.AskidaID,
    U.UrunAdi,
    ISNULL(M.Ad + ' ' + M.Soyad, 'Anonim') AS Bagisci,
    A.BagisTarihi
FROM AskidaHavuz A
JOIN Urunler U ON A.UrunID = U.UrunID
LEFT JOIN Musteriler M ON A.BagisciMusteriID = M.MusteriID
WHERE A.KullanimDurumu = 0; -- Sadece henüz kimsenin almadığı yemekleri gösterir.
GO
--Hayırsever müşteriler tarafından bağışlanan ancak henüz bir ihtiyaç sahibiyle
--eşleşmemiş olan güncel yemek bağışlarını,restoran ve ürün detaylarıyla birlikte
--gösteren bir havuzdur.
