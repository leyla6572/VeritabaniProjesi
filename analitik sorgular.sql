
--ürün kategorilerine göre en yüksek ve en düþük üürün yani yemeði listeleyen kod
SELECT 
    Kategori,
    MIN(Fiyat) AS EnDusukFiyat,
    MAX(Fiyat) AS EnYuksekFiyat,
    COUNT(UrunID) AS KategoridekiToplamUrunSayisi
FROM Urunler
GROUP BY Kategori;


--her ürün kategorisi için toplam satýþý hesaplayan kodu
SELECT 
    u.Kategori,
    COUNT(DISTINCT s.SiparisID) AS ToplamSiparisSayisi,
    SUM(sd.Adet) AS ToplamSatilanUrunAdedi,
    SUM(sd.Adet * sd.BirimFiyat) AS KategoriToplamCirosu
FROM Urunler u
INNER JOIN SiparisDetaylari sd ON u.UrunID = sd.UrunID
INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece baþarýyla tamamlanan satýþlarý sayar
GROUP BY u.Kategori
ORDER BY KategoriToplamCirosu DESC; -- En çok kazandýran kategoriyi en üstte listeler



--Her ürün için satýlan toplam miktarý ve ortalama satýþ
--miktarýný hesaplayan sorgu
SELECT 
    u.UrunID,
    u.UrunAdi,
    u.Kategori,
    SUM(sd.Adet) AS ToplamSatilanMiktar,
    AVG(sd.Adet * 1.0) AS OrtalamaSiparisMiktarý, -- 1.0 ile çarparak küsuratlý (ondalýklý) sonucu garanti ediyoruz
    COUNT(sd.SiparisID) AS BuUrununGectigiToplamSiparisSayisi
FROM Urunler u
INNER JOIN SiparisDetaylari sd ON u.UrunID = sd.UrunID
INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece baþarýyla tamamlanan sipariþleri analize dahil ediyoruz
GROUP BY u.UrunID, u.UrunAdi, u.Kategori
ORDER BY ToplamSatilanMiktar DESC; -- En çok satýlan üründen en aza doðru sýralar



--Her ürün kategorisinde en yüksek ve en düþük fiyatlý
--ürünlerin fiyatlarini listeleyen kod
SELECT 
    Kategori,
    MIN(Fiyat) AS EnDusukFiyat,
    MAX(Fiyat) AS EnYuksekFiyat,
    COUNT(UrunID) AS KategoridekiToplamUrunSayisi
FROM Urunler
GROUP BY Kategori
ORDER BY EnYuksekFiyat DESC; -- En pahalý ürüne sahip kategoriyi en üstte gösterir



--Ortalama Sipariþ Deðerinden Fazlasýný Satýn Alan
--Müþterileri Elde Edin
SELECT 
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    m.Bakiye,
    COUNT(s.SiparisID) AS ToplamSiparisSayisi,
    SUM(s.ToplamTutar) AS ToplamYaptigiHarcama,
    AVG(s.ToplamTutar) AS MusterininKendiSiparisOrtalamasi
FROM Musteriler m
INNER JOIN Siparisler s ON m.MusteriID = s.MusteriID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece tamamlanan sipariþleri sayýyoruz
GROUP BY m.MusteriID, m.Ad, m.Soyad, m.Email, m.Bakiye
HAVING AVG(s.ToplamTutar) > (
    -- Alt Sorgu (Subquery): Tüm sistemin genel sipariþ ortalamasýný hesaplar
    SELECT AVG(ToplamTutar) 
    FROM Siparisler 
    WHERE SiparisDurumu = 'Teslim Edildi'
)
ORDER BY MusterininKendiSiparisOrtalamasi DESC; -- En çok harcayan müþteriyi en üstte listeler


--En Çok Ürünü Satýn Alan Ýlk 3 Müþteriyi Bul
SELECT TOP 3
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    SUM(sd.Adet) AS ToplamSatýnAlýnanPorsiyonAdedi,
    COUNT(DISTINCT s.SiparisID) AS ToplamVerdiðiSipariþSayýsý,
    SUM(s.ToplamTutar) AS ToplamHarcamaTutarý
FROM Musteriler m
INNER JOIN Siparisler s ON m.MusteriID = s.MusteriID
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece baþarýyla tamamlanan sipariþleri sayar
GROUP BY m.MusteriID, m.Ad, m.Soyad, m.Email
ORDER BY ToplamSatýnAlýnanPorsiyonAdedi DESC; -- En çok ürün tüketen kiþiyi en üstte listeler


--tüm kuryeleri teslim ettiði sipariþ sayýsýna göre azdan çoða doðru sýralayan kod
SELECT 
    k.KuryeID,
    k.Ad,
    k.Soyad,
    k.Telefon,
    k.Durum,
    COUNT(s.SiparisID) AS ToplamTeslimEttigiSiparisSayisi
FROM Kuryeler k
LEFT JOIN Siparisler s ON k.KuryeID = s.KuryeID AND s.SiparisDurumu = 'Teslim Edildi' --0 teslimat yapan kurye varsa da getiriyoruz.
GROUP BY k.KuryeID, k.Ad, k.Soyad, k.Telefon, k.Durum
ORDER BY ToplamTeslimEttigiSiparisSayisi ASC; -- En az sipariþ teslim edenden en çok teslim edene doðru sýralar


--Son 2 Yýlda Hiçbir Þey Satýn Almamýþ Müþterileriler kimler?
SELECT 
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    m.Bakiye,
    m.KayitTarihi
FROM Musteriler m
WHERE NOT EXISTS (
    -- Alt Sorgu: Müþterinin son 2 yýl içinde verdiði baþarýlý bir sipariþ var mý diye bakar
    SELECT 1 
    FROM Siparisler s
    WHERE s.MusteriID = m.MusteriID
      AND s.SiparisDurumu = 'Teslim Edildi'
      AND s.SiparisTarihi >= DATEADD(YEAR, -2, GETDATE()) -- Günümüzden tam 2 yýl öncesine kadar olan süreç
)
ORDER BY m.KayitTarihi ASC; -- En eski üyelerden baþlayarak sýralar



--hiç sipariþ edilmemiþ ürünler
SELECT 
    u.UrunID,
    u.UrunAdi,
    u.Kategori,
    u.Fiyat
FROM Urunler u
WHERE NOT EXISTS (
    -- Alt Sorgu (Subquery): Bu ürünün satýþ geçmiþi var mý diye bakar
    SELECT 1 
    FROM SiparisDetaylari sd
    INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
    WHERE sd.UrunID = u.UrunID
      AND s.SiparisDurumu = 'Teslim Edildi' -- Ýptal edilen sipariþleri satýþ saymýyoruz
)
ORDER BY u.Kategori, u.UrunAdi;