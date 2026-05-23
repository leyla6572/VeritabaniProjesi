
--ürün kategorilerine göre en yüksek ve en düşük üürün yani yemeği listeleyen kod
SELECT 
    Kategori,
    MIN(Fiyat) AS EnDusukFiyat,
    MAX(Fiyat) AS EnYuksekFiyat,
    COUNT(UrunID) AS KategoridekiToplamUrunSayisi
FROM Urunler
GROUP BY Kategori;


--her ürün kategorisi için toplam satışı hesaplayan kodu
SELECT 
    u.Kategori,
    COUNT(DISTINCT s.SiparisID) AS ToplamSiparisSayisi,
    SUM(sd.Adet) AS ToplamSatilanUrunAdedi,
    SUM(sd.Adet * sd.BirimFiyat) AS KategoriToplamCirosu
FROM Urunler u
INNER JOIN SiparisDetaylari sd ON u.UrunID = sd.UrunID
INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece başarıyla tamamlanan satışları sayar
GROUP BY u.Kategori
ORDER BY KategoriToplamCirosu DESC; -- En çok kazandıran kategoriyi en üstte listeler



--Her ürün için satılan toplam miktarı ve ortalama satış
--miktarını hesaplayan sorgu
SELECT 
    u.UrunID,
    u.UrunAdi,
    u.Kategori,
    SUM(sd.Adet) AS ToplamSatilanMiktar,
    AVG(sd.Adet * 1.0) AS OrtalamaSiparisMiktarı, -- 1.0 ile çarparak küsuratlı (ondalıklı) sonucu garanti ediyoruz
    COUNT(sd.SiparisID) AS BuUrununGectigiToplamSiparisSayisi
FROM Urunler u
INNER JOIN SiparisDetaylari sd ON u.UrunID = sd.UrunID
INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece başarıyla tamamlanan siparişleri analize dahil ediyoruz
GROUP BY u.UrunID, u.UrunAdi, u.Kategori
ORDER BY ToplamSatilanMiktar DESC; -- En çok satılan üründen en aza doğru sıralar



--Her ürün kategorisinde en yüksek ve en düşük fiyatlı
--ürünlerin fiyatlarini listeleyen kod
SELECT 
    Kategori,
    MIN(Fiyat) AS EnDusukFiyat,
    MAX(Fiyat) AS EnYuksekFiyat,
    COUNT(UrunID) AS KategoridekiToplamUrunSayisi
FROM Urunler
GROUP BY Kategori
ORDER BY EnYuksekFiyat DESC; -- En pahalı ürüne sahip kategoriyi en üstte gösterir



--Ortalama Sipariş Değerinden Fazlasını Satın Alan
--Müşterileri Elde Edin
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
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece tamamlanan siparişleri sayıyoruz
GROUP BY m.MusteriID, m.Ad, m.Soyad, m.Email, m.Bakiye
HAVING AVG(s.ToplamTutar) > (
    -- Alt Sorgu (Subquery): Tüm sistemin genel sipariş ortalamasını hesaplar
    SELECT AVG(ToplamTutar) 
    FROM Siparisler 
    WHERE SiparisDurumu = 'Teslim Edildi'
)
ORDER BY MusterininKendiSiparisOrtalamasi DESC; -- En çok harcayan müşteriyi en üstte listeler


--En Çok Ürünü Satın Alan İlk 3 Müşteriyi Bul
SELECT TOP 3
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    SUM(sd.Adet) AS ToplamSatınAlınanPorsiyonAdedi,
    COUNT(DISTINCT s.SiparisID) AS ToplamVerdiğiSiparişSayısı,
    SUM(s.ToplamTutar) AS ToplamHarcamaTutarı
FROM Musteriler m
INNER JOIN Siparisler s ON m.MusteriID = s.MusteriID
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece başarıyla tamamlanan siparişleri sayar
GROUP BY m.MusteriID, m.Ad, m.Soyad, m.Email
ORDER BY ToplamSatınAlınanPorsiyonAdedi DESC; -- En çok ürün tüketen kişiyi en üstte listeler


--tüm kuryeleri teslim ettiği sipariş sayısına göre azdan çoğa doğru sıralayan kod
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
ORDER BY ToplamTeslimEttigiSiparisSayisi ASC; -- En az sipariş teslim edenden en çok teslim edene doğru sıralar


--Son 2 Yılda Hiçbir Şey Satın Almamış Müşterileriler kimler?
SELECT 
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    m.Bakiye,
    m.KayitTarihi
FROM Musteriler m
WHERE NOT EXISTS (
    -- Alt Sorgu: Müşterinin son 2 yıl içinde verdiği başarılı bir sipariş var mı diye bakar
    SELECT 1 
    FROM Siparisler s
    WHERE s.MusteriID = m.MusteriID
      AND s.SiparisDurumu = 'Teslim Edildi'
      AND s.SiparisTarihi >= DATEADD(YEAR, -2, GETDATE()) -- Günümüzden tam 2 yıl öncesine kadar olan süreç
)
ORDER BY m.KayitTarihi ASC; -- En eski üyelerden başlayarak sıralar



--hiç sipariş edilmemiş ürünler
SELECT 
    u.UrunID,
    u.UrunAdi,
    u.Kategori,
    u.Fiyat
FROM Urunler u
WHERE NOT EXISTS (
    -- Alt Sorgu (Subquery): Bu ürünün satış geçmişi var mı diye bakar
    SELECT 1 
    FROM SiparisDetaylari sd
    INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
    WHERE sd.UrunID = u.UrunID
      AND s.SiparisDurumu = 'Teslim Edildi' -- İptal edilen siparişleri satış saymıyoruz
)
ORDER BY u.Kategori, u.UrunAdi;




--2026 da verilen siparişler sorgusu
SELECT 
    s.SiparisID,
    s.SiparisTarihi,
    s.ToplamTutar,
    s.SiparisDurumu,
    m.Ad + ' ' + m.Soyad AS MusteriAdSoyad,
    r.RestoranAdi
FROM Siparisler s
INNER JOIN Musteriler m ON s.MusteriID = m.MusteriID
INNER JOIN Restoranlar r ON s.RestoranID = r.RestoranID
WHERE YEAR(s.SiparisTarihi) = 2026
  AND s.SiparisDurumu = 'Teslim Edildi' -- İptal edilen veya yolda olanları eliyoruz
ORDER BY s.SiparisTarihi ASC; -- Kronolojik olarak eskiden yeniye doğru sıralar



--Tüm ürün kategorilerinden en az bir kez alışveriş
--yapmış müşterileri belirlemek istiyoruz.
SELECT 
    m.MusteriID,
    m.Ad,
    m.Soyad,
    m.Email,
    COUNT(DISTINCT u.Kategori) AS DeneyimlendigiKategoriSayisi
FROM Musteriler m
INNER JOIN Siparisler s ON m.MusteriID = s.MusteriID
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
INNER JOIN Urunler u ON sd.UrunID = u.UrunID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece başarılı siparişleri sayıyoruz
GROUP BY m.MusteriID, m.Ad, m.Soyad, m.Email
HAVING COUNT(DISTINCT u.Kategori) = (
    -- Alt Sorgu: Sistemde toplam kaç farklı ürün kategorisi olduğunu dinamik olarak bulur
    SELECT COUNT(DISTINCT Kategori) 
    FROM Urunler
);



--Veritabanındaki hiçbir siparişte yer almamış ürünlerin adlarını ve kategorilerini listelemek istiyoruz.
--Boylelikle, stokta fazla bekleyen veya satılmayan ürünleri tespit edebiliriz.
SELECT 
    u.UrunAdi,
    u.Kategori,
    u.Fiyat,
    u.StokDurumu
FROM Urunler u
WHERE NOT EXISTS (
    -- Alt Sorgu (Subquery): Bu ürünün sipariş detaylarında herhangi bir kaydı var mı?
    SELECT 1 
    FROM SiparisDetaylari sd
    INNER JOIN Siparisler s ON sd.SiparisID = s.SiparisID
    WHERE sd.UrunID = u.UrunID
      AND s.SiparisDurumu = 'Teslim Edildi' -- İptal edilen siparişleri satıştan saymıyoruz
)
ORDER BY u.Kategori, u.UrunAdi;




--Her siparişin ürün kimlikleri ve sipariş miktarlarını tek bir
--sorguda listelemek istiyoruz.
SELECT 
    s.SiparisID,
    s.SiparisTarihi,
    sd.UrunID,
    sd.Adet AS SiparisMiktari,
    sd.BirimFiyat AS SatisAnindakiFiyat
FROM Siparisler s
INNER JOIN SiparisDetaylari sd ON s.SiparisID = sd.SiparisID
WHERE s.SiparisDurumu = 'Teslim Edildi' -- Sadece başarıyla tamamlanan siparişleri listeler
ORDER BY s.SiparisID ASC, sd.UrunID ASC; -- Önce sipariş numarasına, sonra ürün kimliğine göre sıralar
