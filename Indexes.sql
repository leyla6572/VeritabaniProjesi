USE [Çevrimiçi Yemek Sipariş Platformu]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_MusteriTelefon]    Script Date: 11.05.2026 17:00:47 ******/
CREATE NONCLUSTERED INDEX [IX_MusteriTelefon] ON [dbo].[Musteriler]
(
	[Telefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
--Sistemde en sık kullanılan arama kriteri olan telefon numarası için 
-- B-Tree indeks yapısı oluşturulmuştur. Bu sayede müşteri doğrulama 
-- hızı milisaniyelere indirilmiştir.


USE [Çevrimiçi Yemek Sipariş Platformu]
GO

SET ANSI_PADDING ON
GO

/****** Object:  Index [IX_UrunKategoriFiyat]    Script Date: 11.05.2026 17:04:01 ******/
CREATE NONCLUSTERED INDEX [IX_UrunKategoriFiyat] ON [dbo].[Urunler]
(
	[Kategori] ASC,
	[Fiyat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO

  --Müşterilerin en sık kullandığı 'Kategoriye göre filtrele' ve 'Fiyata göre ucuzdan pahalıya sırala' 
  --sorgularını optimize eder. İki sütunlu yapısı sayesinde veritabanının tüm tabloyu taramasını 
  -- (Table Scan) engeller ve menü listeleme hızını artırır.


