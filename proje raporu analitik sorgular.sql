--Proje Raporu 6.Bölüm :ANALÝTÝK SORGU SENARYO KODLARI 

--sipariþ fiþi
DECLARE @ArananSiparisID INT = 1; -- Burada 1 nolu sipariþi test ediyoruz

SELECT 
    s.SiparisID,
    s.SiparisTarihi,
    u.UrunAdi,
    sd.Adet,
    sd.BirimFiyat,
    (sd.Adet * sd.BirimFiyat) AS KalemTutari,
    s.ToplamTutar AS FaturaGenelToplamý
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
WHERE s.SiparisID = @ArananSiparisID;


--Yüksek Performans Gösteren Baþarýlý Restoranlar Raporu(cirosu 4000 tl den fazla olanlar)
SELECT 
    r.RestoranID,
    r.RestoranAdi,
    r.MutfakTuru,
    COUNT(s.SiparisID) AS ToplamAlinanSiparisSayisi,
    SUM(s.ToplamTutar) AS ToplamKazanilanCiro
FROM Restoranlar r
INNER JOIN Siparisler s ON r.RestoranID = s.RestoranID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece baþarýyla tamamlanan sipariþleri hesaba katar
GROUP BY r.RestoranID, r.RestoranAdi, r.MutfakTuru
HAVING SUM(s.ToplamTutar) > 4000 -- Toplam cirosu 4000 TL'den büyük olan baþarýlý restoranlarý filtreler
ORDER BY ToplamKazanilanCiro DESC; -- En çok ciro yapandan en aza doðru sýralar


--Sistemde üyeliði aktif olan ve bugüne kadar 
--Askýda Yemek Havuzuna en az bir kez baðýþ yapmýþ yardýmsever müþteriler
SELECT 
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    m.Bakiye
FROM Musteriler m
WHERE m.Durum = 'True' 
  AND EXISTS (
      -- Alt Sorgu (Subquery): Müþterinin askýda havuz tablosunda kaydý var mý kontrol eder
      SELECT 1 
      FROM AskidaHavuz ah
      WHERE ah.BagisciMusteriID = m.MusteriID
  )
ORDER BY m.Ad ASC;