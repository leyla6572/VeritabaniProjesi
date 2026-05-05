USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  Table [dbo].[Adresler]    Script Date: 6.05.2026 00:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresler](
	[AdresID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NOT NULL,
	[AdresBasligi] [nvarchar](50) NULL,
	[Sehir] [nvarchar](50) NULL,
	[Ilce] [nvarchar](50) NULL,
	[TamAdres] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[AdresID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 6.05.2026 00:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](100) NULL,
	[Telefon] [nvarchar](20) NULL,
	[KayitTarihi] [datetime] NULL,
	[Cinsiyet] [nvarchar](10) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[MusteriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Restoranlar]    Script Date: 6.05.2026 00:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Restoranlar](
	[RestoranID] [int] IDENTITY(1,1) NOT NULL,
	[RestoranAdi] [nvarchar](100) NOT NULL,
	[MutfakTuru] [nvarchar](50) NULL,
	[MinPaketTutari] [decimal](18, 2) NULL,
	[OrtalamaPuan] [decimal](3, 2) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RestoranID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 6.05.2026 00:34:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunID] [int] IDENTITY(1,1) NOT NULL,
	[RestoranID] [int] NOT NULL,
	[UrunAdi] [nvarchar](100) NOT NULL,
	[Kategori] [nvarchar](50) NULL,
	[Fiyat] [decimal](18, 2) NOT NULL,
	[StokDurumu] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UrunID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Adresler] ON 

INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (1, 1, N'Ev', N'İstanbul', N'Beşiktaş', N'Yıldız Mah. Çırağan Cad. No:10')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (2, 2, N'İş', N'Ankara', N'Çankaya', N'Kızılay İş Merkezi Kat:5 No:502')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (3, 3, N'Ev', N'İzmir', N'Bornova', N'Ege Üniversitesi Lojmanları B Blok')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (4, 4, N'Ev', N'Antalya', N'Muratpaşa', N'Lara Sahil Yolu, Mavi Apt. No:12')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (5, 5, N'İş', N'Bursa', N'Nilüfer', N'Organize Sanayi Bölgesi 3. Cadde')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (6, 6, N'Ev', N'Adana', N'Seyhan', N'Baraj Yolu, Huzur Sitesi No:8')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (7, 7, N'Ev', N'Konya', N'Selçuklu', N'Mevlana Meydanı Yanı, No:45')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (8, 8, N'İş', N'Gaziantep', N'Şahinbey', N'Sanko Park Civarı, İş Hanı Kat:2')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (9, 9, N'Ev', N'Kayseri', N'Talas', N'Üniversite Cad. Erciyes Apt.')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (10, 10, N'Ev', N'Samsun', N'Atakum', N'Sahil Bulvarı No:155')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (11, 11, N'Ev', N'Diyarbakır', N'Kayapınar', N'75. Yol Üzeri, Güneş Sitesi A Blok')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (12, 21, N'Ev', N'Van', N'Edremit', N'Sahil Yolu Cad. Deniz Apt. No:4')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (13, 22, N'İş', N'İstanbul', N'Kadıköy', N'Moda Sahil Sokak No:12/2')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (14, 31, N'Ev', N'Ankara', N'Yenimahalle', N'Batıkent Konutları No:78')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (15, 32, N'Ev', N'Eskişehir', N'Odunpazarı', N'Tarihi Evler Sokak No:3')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (16, 33, N'İş', N'Mersin', N'Yenişehir', N'Marina Karşısı, Palmiye İş Merkezi')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (17, 34, N'Ev', N'Mardin', N'Artuklu', N'Eski Mardin Mah. Zeytin Sokak')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (18, 35, N'Ev', N'Batman', N'Merkez', N'Turgut Özal Bulvarı No:102')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (19, 36, N'İş', N'Şanlıurfa', N'Haliliye', N'Valilik Yanı, Emniyet Cad.')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (20, 37, N'Ev', N'Hakkari', N'Yüksekova', N'İpek Yolu Caddesi No:21')
INSERT [dbo].[Adresler] ([AdresID], [MusteriID], [AdresBasligi], [Sehir], [Ilce], [TamAdres]) VALUES (21, 21, N'İş', N'Diyarbakır', N'Sur', N'Gazi Caddesi, Vakıf İş Hanı Kat:2')
SET IDENTITY_INSERT [dbo].[Adresler] OFF
GO
SET IDENTITY_INSERT [dbo].[Musteriler] ON 

INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (1, N'Ahmet ', N'Yılmaz ', N'ahmet@email.com', N'5551112233', CAST(N'2024-03-01T00:00:00.000' AS DateTime), N'erkek ', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (2, N'Ayşe ', N'Demir', N'ayse@email.com', N'5554445566', CAST(N'2024-03-10T00:00:00.000' AS DateTime), N'kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (3, N'Mehmet', N'Kaya ', N'mehmet@email.com', N'5557778899', CAST(N'2024-03-20T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (4, N'Rojda ', N'Özlemez ', N'rojda@email.com', N'5556668899', CAST(N'2024-04-05T00:00:00.000' AS DateTime), N'kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (5, N'Selin ', N'Yıldız ', N'selin.yildiz@email.com', N'5054448899', CAST(N'2024-04-12T00:00:00.000' AS DateTime), N'kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (6, N'Murat ', N'Yavuz', N'murat.yavuz@email.com', N'5423336677', CAST(N'2024-04-25T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (7, N'Burak ', N'Aydın', N'burak.aydin@email.com', N'5305552233', CAST(N'2025-01-20T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (8, N'Gamze ', N'Kılıç ', N'gamze.kilic@email.com', N'5357771122', CAST(N'2025-12-03T00:00:00.000' AS DateTime), N'kadın', 0)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (9, N'Can ', N'Öztan ', N'can.ozturk@email.com', N'5321110011', CAST(N'2026-01-12T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (10, N'Zeynep ', N'Arslan', N'zeynep.arslan@email.com', N'5332224455', CAST(N'2026-05-01T00:00:00.000' AS DateTime), N'kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (11, N'Ruken', N'Yıldız', N'ruken.yildiz@email.com', N'5385556677', CAST(N'2025-02-18T00:00:00.000' AS DateTime), N'Kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (21, N'Azad', N'Yılmaz', N'azad.yilmaz@email.com', N'5321002030', CAST(N'2025-11-29T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (22, N'Roni ', N'Bakır', N'roni.bakir@email.com', N'5443004050', CAST(N'2025-11-28T00:00:00.000' AS DateTime), N'erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (31, N'Berfin', N'Çelik', N'berfin.celik@email.com', N'5055006070', CAST(N'2024-11-02T00:00:00.000' AS DateTime), N'Kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (32, N'Şilan', N'Demir', N'silan.demir@email.com', N'5337008090', CAST(N'2024-11-15T00:00:00.000' AS DateTime), N'Kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (33, N'Zana', N'Öztürk', N'zana.ozturk@email.com', N'5429001020', CAST(N'2024-12-01T00:00:00.000' AS DateTime), N'Erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (34, N'Hevin', N'Arslan', N'hevin.arslan@email.com', N'5301112233', CAST(N'2024-12-10T00:00:00.000' AS DateTime), N'Kadın', 0)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (35, N'Baran', N'Kaya', N'baran.kaya@email.com', N'5352223344', CAST(N'2025-01-05T00:00:00.000' AS DateTime), N'Erkek', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (36, N'Dilan', N'Aydın', N'dilan.aydin@email.com', N'5313334455', CAST(N'2025-01-20T00:00:00.000' AS DateTime), N'Kadın', 1)
INSERT [dbo].[Musteriler] ([MusteriID], [Ad], [Soyad], [Email], [Telefon], [KayitTarihi], [Cinsiyet], [Durum]) VALUES (37, N'Agit', N'Bulut', N'agit.bulut@email.com', N'5414445566', CAST(N'2025-02-05T00:00:00.000' AS DateTime), N'Erkek', 1)
SET IDENTITY_INSERT [dbo].[Musteriler] OFF
GO
SET IDENTITY_INSERT [dbo].[Restoranlar] ON 

INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (1, N'Diyar Lahmacun', N'Kebap & Lahmacun', CAST(150.00 AS Decimal(18, 2)), CAST(4.80 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (2, N'Pizza Portofino', N'İtalyan', CAST(250.00 AS Decimal(18, 2)), CAST(4.20 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (3, N'Anne Eli Ev Yemekleri', N'Ev Yemekleri', CAST(120.00 AS Decimal(18, 2)), CAST(4.90 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (4, N'Burger Sarayı', N'Fast Food', CAST(180.00 AS Decimal(18, 2)), CAST(3.90 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (5, N'Mavi Deniz Balıkçısı', N'Deniz Ürünleri', CAST(450.00 AS Decimal(18, 2)), CAST(4.50 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (6, N'Sushi Zen', N'Uzak Doğu', CAST(500.00 AS Decimal(18, 2)), CAST(4.70 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (7, N'Antep Sofrası', N'Yöresel', CAST(200.00 AS Decimal(18, 2)), CAST(4.60 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (8, N'Tatlı Dünyası', N'Tatlı & Pastane', CAST(100.00 AS Decimal(18, 2)), CAST(4.10 AS Decimal(3, 2)), 1)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (9, N'Veggie Garden', N'Vejetaryen', CAST(220.00 AS Decimal(18, 2)), CAST(4.40 AS Decimal(3, 2)), 0)
INSERT [dbo].[Restoranlar] ([RestoranID], [RestoranAdi], [MutfakTuru], [MinPaketTutari], [OrtalamaPuan], [Durum]) VALUES (10, N'Kıtır Döner', N'Döner', CAST(130.00 AS Decimal(18, 2)), CAST(4.30 AS Decimal(3, 2)), 1)
SET IDENTITY_INSERT [dbo].[Restoranlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (1, 1, N'Lahmacun', N'Ana Yemek', CAST(75.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (2, 1, N'Acılı Lahmacun', N'Ana Yemek', CAST(75.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (3, 1, N'Adana Kebap', N'Ana Yemek', CAST(250.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (4, 1, N'Gavurdağı Salatası', N'Salata', CAST(90.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (5, 1, N'Ayran', N'İçecek', CAST(30.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (6, 2, N'Margarita Pizza', N'Pizza', CAST(220.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (7, 2, N'Karışık Pizza', N'Pizza', CAST(280.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (8, 2, N'Dört Peynirli Pizza', N'Pizza', CAST(310.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (9, 2, N'Tiramisu', N'Tatlı', CAST(120.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (10, 2, N'Kola', N'İçecek', CAST(40.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (11, 3, N'Kuru Fasulye', N'Sulu Yemek', CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (12, 3, N'Pirinç Pilavı', N'Yan Lezzet', CAST(60.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (13, 3, N'Mercimek Çorbası', N'Çorba', CAST(70.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (14, 3, N'İçli Köfte', N'Ara Sıcak', CAST(50.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (15, 3, N'Cacık', N'Yan Lezzet', CAST(40.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (16, 4, N'Classic Burger', N'Burger', CAST(210.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (17, 4, N'Cheeseburger', N'Burger', CAST(230.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (18, 4, N'Chicken Burger', N'Burger', CAST(190.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (19, 4, N'Patates Kızartması', N'Yan Lezzet', CAST(80.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (20, 4, N'Milkshake', N'İçecek', CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (21, 5, N'Izgara Levrek', N'Balık', CAST(450.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (22, 5, N'Çipura', N'Balık', CAST(420.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (23, 5, N'Kalamar Tava', N'Ara Sıcak', CAST(280.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (24, 5, N'Karides Güveç', N'Ara Sıcak', CAST(320.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (25, 5, N'Şalgam Suyu', N'İçecek', CAST(35.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (26, 6, N'California Roll', N'Sushi', CAST(240.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (27, 6, N'Philadelphia Roll', N'Sushi', CAST(260.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (28, 6, N'Nigiri Somon', N'Sushi', CAST(180.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (29, 6, N'Miso Çorbası', N'Çorba', CAST(90.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (30, 6, N'Ebi Tempura', N'Ara Sıcak', CAST(310.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (31, 7, N'Beyran', N'Çorba', CAST(180.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (32, 7, N'Ali Nazik', N'Ana Yemek', CAST(340.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (33, 7, N'Kuşlemeli Kebap', N'Ana Yemek', CAST(420.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (34, 7, N'Künefe', N'Tatlı', CAST(150.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (35, 7, N'Meyan Şerbeti', N'İçecek', CAST(45.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (36, 8, N'Fıstıklı Baklava', N'Tatlı', CAST(220.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (37, 8, N'Sütlaç', N'Tatlı', CAST(95.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (38, 8, N'Magnolia', N'Tatlı', CAST(110.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (39, 8, N'Profiterol', N'Tatlı', CAST(105.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (40, 8, N'Çay', N'İçecek', CAST(25.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (41, 9, N'Sebze Köftesi', N'Vejetaryen', CAST(180.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (42, 9, N'Kinoa Salatası', N'Salata', CAST(160.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (43, 9, N'Falafel Dürüm', N'Ana Yemek', CAST(140.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (44, 9, N'Mantar Sote', N'Ana Yemek', CAST(170.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (45, 9, N'Detox Suyu', N'İçecek', CAST(85.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (46, 10, N'Et Döner Dürüm', N'Döner', CAST(160.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (47, 10, N'İskender', N'Döner', CAST(320.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (48, 10, N'Pilav Üstü Döner', N'Döner', CAST(290.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (49, 10, N'Süzme Yoğurt', N'Yan Lezzet', CAST(60.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[Urunler] ([UrunID], [RestoranID], [UrunAdi], [Kategori], [Fiyat], [StokDurumu]) VALUES (50, 10, N'Soda', N'İçecek', CAST(25.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Musteril__A9D1053431497902]    Script Date: 6.05.2026 00:34:27 ******/
ALTER TABLE [dbo].[Musteriler] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Musteri_Email]    Script Date: 6.05.2026 00:34:27 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [UQ_Musteri_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_MusteriEmail]    Script Date: 6.05.2026 00:34:27 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [UQ_MusteriEmail] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_MusteriTelefon]    Script Date: 6.05.2026 00:34:27 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [UQ_MusteriTelefon] UNIQUE NONCLUSTERED 
(
	[Telefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Musteriler] ADD  DEFAULT (getdate()) FOR [KayitTarihi]
GO
ALTER TABLE [dbo].[Musteriler] ADD  DEFAULT ((1)) FOR [Durum]
GO
ALTER TABLE [dbo].[Restoranlar] ADD  DEFAULT ((1)) FOR [Durum]
GO
ALTER TABLE [dbo].[Urunler] ADD  DEFAULT ((1)) FOR [StokDurumu]
GO
ALTER TABLE [dbo].[Adresler]  WITH CHECK ADD  CONSTRAINT [FK_MusteriAdres] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Adresler] CHECK CONSTRAINT [FK_MusteriAdres]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [FK_RestoranUrun] FOREIGN KEY([RestoranID])
REFERENCES [dbo].[Restoranlar] ([RestoranID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [FK_RestoranUrun]
GO
ALTER TABLE [dbo].[Musteriler]  WITH CHECK ADD  CONSTRAINT [CHK_EmailFormat] CHECK  (([Email] like '%@%'))
GO
ALTER TABLE [dbo].[Musteriler] CHECK CONSTRAINT [CHK_EmailFormat]
GO
ALTER TABLE [dbo].[Restoranlar]  WITH CHECK ADD  CONSTRAINT [CHK_MinPaket] CHECK  (([MinPaketTutari]>=(0)))
GO
ALTER TABLE [dbo].[Restoranlar] CHECK CONSTRAINT [CHK_MinPaket]
GO
ALTER TABLE [dbo].[Restoranlar]  WITH CHECK ADD  CONSTRAINT [CHK_RestoranPuan] CHECK  (([OrtalamaPuan]>=(0) AND [OrtalamaPuan]<=(5)))
GO
ALTER TABLE [dbo].[Restoranlar] CHECK CONSTRAINT [CHK_RestoranPuan]
GO
ALTER TABLE [dbo].[Urunler]  WITH CHECK ADD  CONSTRAINT [CHK_UrunFiyat] CHECK  (([Fiyat]>(0)))
GO
ALTER TABLE [dbo].[Urunler] CHECK CONSTRAINT [CHK_UrunFiyat]
GO
