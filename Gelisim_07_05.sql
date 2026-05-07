USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  Table [dbo].[AskidaHavuz]    Script Date: 7.05.2026 18:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AskidaHavuz](
	[AskidaID] [int] IDENTITY(1,1) NOT NULL,
	[BagisciMusteriID] [int] NULL,
	[UrunID] [int] NOT NULL,
	[BagisTarihi] [datetime] NULL,
	[KullanimDurumu] [bit] NULL,
	[KullananMusteriID] [int] NULL,
	[KullanimTarihi] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[AskidaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kuryeler]    Script Date: 7.05.2026 18:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kuryeler](
	[KuryeID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
	[Telefon] [nvarchar](15) NULL,
	[AracTuru] [nvarchar](20) NULL,
	[Durum] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[KuryeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SiparisDetaylari]    Script Date: 7.05.2026 18:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SiparisDetaylari](
	[SiparisDetayID] [int] IDENTITY(1,1) NOT NULL,
	[SiparisID] [int] NOT NULL,
	[UrunID] [int] NOT NULL,
	[Adet] [int] NOT NULL,
	[BirimFiyat] [decimal](18, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisDetayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Siparisler]    Script Date: 7.05.2026 18:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Siparisler](
	[SiparisID] [int] IDENTITY(1,1) NOT NULL,
	[MusteriID] [int] NOT NULL,
	[AdresID] [int] NOT NULL,
	[RestoranID] [int] NOT NULL,
	[SiparisTarihi] [datetime] NULL,
	[ToplamTutar] [decimal](18, 2) NULL,
	[SiparisDurumu] [nvarchar](50) NULL,
	[KuryeID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SiparisID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AskidaHavuz] ON 

INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (1, 3, 5, CAST(N'2026-05-07T18:24:18.970' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (2, 3, 5, CAST(N'2026-05-07T18:31:50.653' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (3, NULL, 12, CAST(N'2026-05-07T18:31:50.653' AS DateTime), 1, 5, CAST(N'2026-05-07T18:35:42.467' AS DateTime))
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (4, 1, 2, CAST(N'2026-05-07T18:31:50.653' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (5, 1, 2, CAST(N'2026-05-07T18:38:10.920' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (6, NULL, 5, CAST(N'2026-05-07T18:38:10.980' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (7, 5, 8, CAST(N'2026-05-07T18:38:10.980' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (8, NULL, 5, CAST(N'2026-05-07T18:38:10.980' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (9, 10, 10, CAST(N'2026-05-07T18:38:10.983' AS DateTime), 0, NULL, NULL)
INSERT [dbo].[AskidaHavuz] ([AskidaID], [BagisciMusteriID], [UrunID], [BagisTarihi], [KullanimDurumu], [KullananMusteriID], [KullanimTarihi]) VALUES (10, NULL, 2, CAST(N'2026-05-07T18:38:10.983' AS DateTime), 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AskidaHavuz] OFF
GO
SET IDENTITY_INSERT [dbo].[Kuryeler] ON 

INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (1, N'Ahmet', N'Yılmaz', N'05551112233', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (2, N'Mehmet', N'Kaya', N'05552223344', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (3, N'Can', N'Demir', N'05553334455', N'Bisiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (4, N'Buse', N'Aydın', N'05554445566', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (5, N'Murat', N'Çelik', N'05555556677', N'Elektrikli Scooter', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (6, N'Selin', N'Yıldız', N'05556667788', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (7, N'Emre', N'Koç', N'05557778899', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (8, N'Zeynep', N'Aras', N'05558889900', N'Bisiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (9, N'Burak', N'Öztürk', N'05559990011', N'Motosiklet', 1)
INSERT [dbo].[Kuryeler] ([KuryeID], [Ad], [Soyad], [Telefon], [AracTuru], [Durum]) VALUES (10, N'Deniz', N'Kurt', N'05550001122', N'Elektrikli Scooter', 1)
SET IDENTITY_INSERT [dbo].[Kuryeler] OFF
GO
SET IDENTITY_INSERT [dbo].[SiparisDetaylari] ON 

INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (1, 100, 16, 2, CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (2, 99, 17, 3, CAST(230.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (3, 98, 7, 1, CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (4, 97, 33, 2, CAST(420.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (5, 96, 20, 3, CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (6, 95, 13, 1, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (7, 94, 3, 2, CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (8, 93, 9, 3, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (9, 92, 35, 1, CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (10, 91, 9, 2, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (11, 90, 16, 3, CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (12, 89, 40, 1, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (13, 88, 39, 2, CAST(105.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (14, 87, 6, 3, CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (15, 86, 32, 1, CAST(340.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (16, 85, 41, 2, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (17, 84, 36, 3, CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (18, 83, 48, 1, CAST(290.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (19, 82, 46, 2, CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (20, 81, 11, 3, CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (21, 80, 48, 1, CAST(290.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (22, 79, 18, 2, CAST(190.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (23, 78, 25, 3, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (24, 77, 4, 1, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (25, 76, 26, 2, CAST(240.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (26, 75, 44, 3, CAST(170.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (27, 74, 7, 1, CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (28, 73, 42, 2, CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (29, 72, 8, 3, CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (30, 71, 10, 1, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (31, 70, 4, 2, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (32, 69, 33, 3, CAST(420.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (33, 68, 7, 1, CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (34, 67, 21, 2, CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (35, 66, 37, 3, CAST(95.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (36, 65, 12, 1, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (37, 64, 9, 2, CAST(120.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (38, 63, 11, 3, CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (39, 62, 5, 1, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (40, 61, 10, 2, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (41, 60, 40, 3, CAST(25.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (42, 59, 10, 1, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (43, 58, 27, 2, CAST(260.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (44, 57, 41, 3, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (45, 56, 24, 1, CAST(320.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (46, 55, 49, 2, CAST(60.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (47, 54, 15, 3, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (48, 53, 14, 1, CAST(50.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (49, 52, 11, 2, CAST(110.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (50, 51, 17, 3, CAST(230.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (51, 50, 22, 1, CAST(420.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (52, 49, 4, 2, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (53, 48, 16, 3, CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (54, 47, 16, 1, CAST(210.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (55, 46, 2, 2, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (56, 45, 5, 3, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (57, 44, 24, 1, CAST(320.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (58, 43, 4, 2, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (59, 42, 41, 3, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (60, 41, 3, 1, CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (61, 40, 8, 2, CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (62, 39, 25, 3, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (63, 38, 46, 1, CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (64, 37, 29, 2, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (65, 36, 10, 3, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (66, 35, 44, 1, CAST(170.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (67, 34, 25, 2, CAST(35.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (68, 33, 33, 3, CAST(420.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (69, 32, 10, 1, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (70, 31, 1, 2, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (71, 30, 2, 3, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (72, 29, 43, 1, CAST(140.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (73, 28, 35, 2, CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (74, 27, 21, 3, CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (75, 26, 8, 1, CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (76, 25, 3, 2, CAST(250.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (77, 24, 28, 3, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (78, 23, 34, 1, CAST(150.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (79, 22, 2, 2, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (80, 21, 13, 3, CAST(70.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (81, 20, 23, 1, CAST(280.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (82, 19, 6, 2, CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (83, 18, 46, 3, CAST(160.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (84, 17, 2, 1, CAST(75.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (85, 16, 29, 2, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (86, 15, 5, 3, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (87, 14, 15, 1, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (88, 13, 21, 2, CAST(450.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (89, 12, 10, 3, CAST(40.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (90, 11, 5, 1, CAST(30.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (91, 10, 41, 2, CAST(180.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (92, 9, 29, 3, CAST(90.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (93, 8, 19, 1, CAST(80.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (94, 7, 27, 2, CAST(260.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (95, 6, 30, 3, CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (96, 5, 32, 1, CAST(340.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (97, 4, 35, 2, CAST(45.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (98, 3, 30, 3, CAST(310.00 AS Decimal(18, 2)))
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (99, 2, 18, 1, CAST(190.00 AS Decimal(18, 2)))
GO
INSERT [dbo].[SiparisDetaylari] ([SiparisDetayID], [SiparisID], [UrunID], [Adet], [BirimFiyat]) VALUES (100, 1, 44, 2, CAST(170.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[SiparisDetaylari] OFF
GO
SET IDENTITY_INSERT [dbo].[Siparisler] ON 

INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (1, 1, 1, 1, CAST(N'2026-05-07T17:10:55.853' AS DateTime), CAST(340.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (2, 2, 2, 2, CAST(N'2026-05-07T16:50:55.857' AS DateTime), CAST(190.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (3, 3, 3, 3, CAST(N'2026-05-07T16:30:55.857' AS DateTime), CAST(930.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (4, 4, 4, 4, CAST(N'2026-05-07T16:10:55.857' AS DateTime), CAST(90.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (5, 5, 5, 5, CAST(N'2026-05-07T15:50:55.857' AS DateTime), CAST(340.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (6, 6, 6, 6, CAST(N'2026-05-07T15:30:55.857' AS DateTime), CAST(930.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (7, 7, 7, 7, CAST(N'2026-05-07T15:10:55.857' AS DateTime), CAST(520.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (8, 8, 8, 8, CAST(N'2026-05-07T14:50:55.860' AS DateTime), CAST(80.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (9, 9, 9, 9, CAST(N'2026-05-07T14:30:55.860' AS DateTime), CAST(270.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (10, 10, 10, 10, CAST(N'2026-05-07T14:10:55.860' AS DateTime), CAST(360.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (11, 11, 11, 1, CAST(N'2026-05-07T13:50:55.860' AS DateTime), CAST(30.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (12, 21, 12, 2, CAST(N'2026-05-07T13:30:55.860' AS DateTime), CAST(120.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (13, 22, 13, 3, CAST(N'2026-05-07T13:10:55.860' AS DateTime), CAST(900.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (14, 31, 14, 4, CAST(N'2026-05-07T12:50:55.860' AS DateTime), CAST(40.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (15, 32, 15, 5, CAST(N'2026-05-07T12:30:55.860' AS DateTime), CAST(90.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (16, 33, 16, 6, CAST(N'2026-05-07T12:10:55.860' AS DateTime), CAST(180.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (17, 34, 17, 7, CAST(N'2026-05-07T11:50:55.860' AS DateTime), CAST(75.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (18, 35, 18, 8, CAST(N'2026-05-07T11:30:55.860' AS DateTime), CAST(480.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (19, 36, 19, 9, CAST(N'2026-05-07T11:10:55.863' AS DateTime), CAST(440.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (20, 37, 20, 10, CAST(N'2026-05-07T10:50:55.863' AS DateTime), CAST(280.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (21, 1, 1, 1, CAST(N'2026-05-07T10:30:55.863' AS DateTime), CAST(210.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (22, 2, 2, 2, CAST(N'2026-05-07T10:10:55.863' AS DateTime), CAST(150.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (23, 3, 3, 3, CAST(N'2026-05-07T09:50:55.863' AS DateTime), CAST(150.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (24, 4, 4, 4, CAST(N'2026-05-07T09:30:55.863' AS DateTime), CAST(540.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (25, 5, 5, 5, CAST(N'2026-05-07T09:10:55.863' AS DateTime), CAST(500.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (26, 6, 6, 6, CAST(N'2026-05-07T08:50:55.863' AS DateTime), CAST(310.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (27, 7, 7, 7, CAST(N'2026-05-07T08:30:55.867' AS DateTime), CAST(1350.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (28, 8, 8, 8, CAST(N'2026-05-07T08:10:55.867' AS DateTime), CAST(90.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (29, 9, 9, 9, CAST(N'2026-05-07T07:50:55.867' AS DateTime), CAST(140.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (30, 10, 10, 10, CAST(N'2026-05-07T07:30:55.870' AS DateTime), CAST(225.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (31, 11, 11, 1, CAST(N'2026-05-07T07:10:55.873' AS DateTime), CAST(150.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (32, 21, 12, 2, CAST(N'2026-05-07T06:50:55.873' AS DateTime), CAST(40.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (33, 22, 13, 3, CAST(N'2026-05-07T06:30:55.873' AS DateTime), CAST(1260.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (34, 31, 14, 4, CAST(N'2026-05-07T06:10:55.873' AS DateTime), CAST(70.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (35, 32, 15, 5, CAST(N'2026-05-07T05:50:55.877' AS DateTime), CAST(170.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (36, 33, 16, 6, CAST(N'2026-05-07T05:30:55.877' AS DateTime), CAST(120.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (37, 34, 17, 7, CAST(N'2026-05-07T05:10:55.877' AS DateTime), CAST(180.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (38, 35, 18, 8, CAST(N'2026-05-07T04:50:55.880' AS DateTime), CAST(160.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (39, 36, 19, 9, CAST(N'2026-05-07T04:30:55.880' AS DateTime), CAST(105.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (40, 37, 20, 10, CAST(N'2026-05-07T04:10:55.880' AS DateTime), CAST(620.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (41, 1, 1, 1, CAST(N'2026-05-07T03:50:55.880' AS DateTime), CAST(250.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (42, 2, 2, 2, CAST(N'2026-05-07T03:30:55.880' AS DateTime), CAST(540.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (43, 3, 3, 3, CAST(N'2026-05-07T03:10:55.880' AS DateTime), CAST(180.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (44, 4, 4, 4, CAST(N'2026-05-07T02:50:55.880' AS DateTime), CAST(320.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (45, 5, 5, 5, CAST(N'2026-05-07T02:30:55.880' AS DateTime), CAST(90.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (46, 6, 6, 6, CAST(N'2026-05-07T02:10:55.880' AS DateTime), CAST(150.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (47, 7, 7, 7, CAST(N'2026-05-07T01:50:55.883' AS DateTime), CAST(210.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (48, 8, 8, 8, CAST(N'2026-05-07T01:30:55.883' AS DateTime), CAST(630.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (49, 9, 9, 9, CAST(N'2026-05-07T01:10:55.883' AS DateTime), CAST(180.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (50, 10, 10, 10, CAST(N'2026-05-07T00:50:55.883' AS DateTime), CAST(420.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (51, 11, 11, 1, CAST(N'2026-05-07T00:30:55.883' AS DateTime), CAST(690.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (52, 21, 12, 2, CAST(N'2026-05-07T00:10:55.883' AS DateTime), CAST(220.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (53, 22, 13, 3, CAST(N'2026-05-06T23:50:55.883' AS DateTime), CAST(50.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (54, 31, 14, 4, CAST(N'2026-05-06T23:30:55.883' AS DateTime), CAST(120.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (55, 32, 15, 5, CAST(N'2026-05-06T23:10:55.887' AS DateTime), CAST(120.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (56, 33, 16, 6, CAST(N'2026-05-06T22:50:55.887' AS DateTime), CAST(320.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (57, 34, 17, 7, CAST(N'2026-05-06T22:30:55.887' AS DateTime), CAST(540.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (58, 35, 18, 8, CAST(N'2026-05-06T22:10:55.887' AS DateTime), CAST(520.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (59, 36, 19, 9, CAST(N'2026-05-06T21:50:55.887' AS DateTime), CAST(40.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (60, 37, 20, 10, CAST(N'2026-05-06T21:30:55.887' AS DateTime), CAST(75.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (61, 1, 1, 1, CAST(N'2026-05-06T21:10:55.887' AS DateTime), CAST(80.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (62, 2, 2, 2, CAST(N'2026-05-06T20:50:55.890' AS DateTime), CAST(30.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (63, 3, 3, 3, CAST(N'2026-05-06T20:30:55.890' AS DateTime), CAST(330.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (64, 4, 4, 4, CAST(N'2026-05-06T20:10:55.890' AS DateTime), CAST(240.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (65, 5, 5, 5, CAST(N'2026-05-06T19:50:55.890' AS DateTime), CAST(60.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (66, 6, 6, 6, CAST(N'2026-05-06T19:30:55.890' AS DateTime), CAST(285.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (67, 7, 7, 7, CAST(N'2026-05-06T19:10:55.890' AS DateTime), CAST(900.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (68, 8, 8, 8, CAST(N'2026-05-06T18:50:55.890' AS DateTime), CAST(280.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (69, 9, 9, 9, CAST(N'2026-05-06T18:30:55.890' AS DateTime), CAST(1260.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (70, 10, 10, 10, CAST(N'2026-05-06T18:10:55.893' AS DateTime), CAST(180.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (71, 11, 11, 1, CAST(N'2026-05-06T17:50:55.893' AS DateTime), CAST(40.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (72, 21, 12, 2, CAST(N'2026-05-06T17:30:55.893' AS DateTime), CAST(930.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (73, 22, 13, 3, CAST(N'2026-05-06T17:10:55.893' AS DateTime), CAST(320.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (74, 31, 14, 4, CAST(N'2026-05-06T16:50:55.893' AS DateTime), CAST(280.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (75, 32, 15, 5, CAST(N'2026-05-06T16:30:55.893' AS DateTime), CAST(510.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (76, 33, 16, 6, CAST(N'2026-05-06T16:10:55.893' AS DateTime), CAST(480.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (77, 34, 17, 7, CAST(N'2026-05-06T15:50:55.893' AS DateTime), CAST(90.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (78, 35, 18, 8, CAST(N'2026-05-06T15:30:55.893' AS DateTime), CAST(105.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (79, 36, 19, 9, CAST(N'2026-05-06T15:10:55.897' AS DateTime), CAST(380.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (80, 37, 20, 10, CAST(N'2026-05-06T14:50:55.897' AS DateTime), CAST(290.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (81, 1, 1, 1, CAST(N'2026-05-06T14:30:55.897' AS DateTime), CAST(330.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (82, 2, 2, 2, CAST(N'2026-05-06T14:10:55.897' AS DateTime), CAST(320.00 AS Decimal(18, 2)), N'Teslim Edildi', 6)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (83, 3, 3, 3, CAST(N'2026-05-06T13:50:55.897' AS DateTime), CAST(290.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (84, 4, 4, 4, CAST(N'2026-05-06T13:30:55.897' AS DateTime), CAST(660.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (85, 5, 5, 5, CAST(N'2026-05-06T13:10:55.897' AS DateTime), CAST(360.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (86, 6, 6, 6, CAST(N'2026-05-06T12:50:55.900' AS DateTime), CAST(340.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (87, 7, 7, 7, CAST(N'2026-05-06T12:30:55.900' AS DateTime), CAST(660.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (88, 8, 8, 8, CAST(N'2026-05-06T12:10:55.900' AS DateTime), CAST(210.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (89, 9, 9, 9, CAST(N'2026-05-06T11:50:55.900' AS DateTime), CAST(25.00 AS Decimal(18, 2)), N'Teslim Edildi', 5)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (90, 10, 10, 10, CAST(N'2026-05-06T11:30:55.900' AS DateTime), CAST(630.00 AS Decimal(18, 2)), N'Teslim Edildi', 1)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (91, 11, 11, 1, CAST(N'2026-05-06T11:10:55.900' AS DateTime), CAST(240.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (92, 21, 12, 2, CAST(N'2026-05-06T10:50:55.900' AS DateTime), CAST(45.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (93, 22, 13, 3, CAST(N'2026-05-06T10:30:55.900' AS DateTime), CAST(360.00 AS Decimal(18, 2)), N'Teslim Edildi', 8)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (94, 31, 14, 4, CAST(N'2026-05-06T10:10:55.900' AS DateTime), CAST(500.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (95, 32, 15, 5, CAST(N'2026-05-06T09:50:55.900' AS DateTime), CAST(70.00 AS Decimal(18, 2)), N'Teslim Edildi', 2)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (96, 33, 16, 6, CAST(N'2026-05-06T09:30:55.900' AS DateTime), CAST(330.00 AS Decimal(18, 2)), N'Teslim Edildi', 9)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (97, 34, 17, 7, CAST(N'2026-05-06T09:10:55.903' AS DateTime), CAST(840.00 AS Decimal(18, 2)), N'Teslim Edildi', 10)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (98, 35, 18, 8, CAST(N'2026-05-06T08:50:55.903' AS DateTime), CAST(280.00 AS Decimal(18, 2)), N'Teslim Edildi', 7)
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (99, 36, 19, 9, CAST(N'2026-05-06T08:30:55.903' AS DateTime), CAST(690.00 AS Decimal(18, 2)), N'Teslim Edildi', 4)
GO
INSERT [dbo].[Siparisler] ([SiparisID], [MusteriID], [AdresID], [RestoranID], [SiparisTarihi], [ToplamTutar], [SiparisDurumu], [KuryeID]) VALUES (100, 37, 20, 10, CAST(N'2026-05-06T08:10:55.903' AS DateTime), CAST(420.00 AS Decimal(18, 2)), N'Teslim Edildi', 3)
SET IDENTITY_INSERT [dbo].[Siparisler] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Kuryeler__92EB416935D70A4D]    Script Date: 7.05.2026 18:55:27 ******/
ALTER TABLE [dbo].[Kuryeler] ADD UNIQUE NONCLUSTERED 
(
	[Telefon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AskidaHavuz] ADD  DEFAULT (getdate()) FOR [BagisTarihi]
GO
ALTER TABLE [dbo].[AskidaHavuz] ADD  DEFAULT ((0)) FOR [KullanimDurumu]
GO
ALTER TABLE [dbo].[Kuryeler] ADD  DEFAULT ((1)) FOR [Durum]
GO
ALTER TABLE [dbo].[SiparisDetaylari] ADD  DEFAULT ((1)) FOR [Adet]
GO
ALTER TABLE [dbo].[Siparisler] ADD  DEFAULT (getdate()) FOR [SiparisTarihi]
GO
ALTER TABLE [dbo].[Siparisler] ADD  DEFAULT ((0)) FOR [ToplamTutar]
GO
ALTER TABLE [dbo].[Siparisler] ADD  DEFAULT ('Hazırlanıyor') FOR [SiparisDurumu]
GO
ALTER TABLE [dbo].[AskidaHavuz]  WITH CHECK ADD  CONSTRAINT [FK_Bagisci] FOREIGN KEY([BagisciMusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[AskidaHavuz] CHECK CONSTRAINT [FK_Bagisci]
GO
ALTER TABLE [dbo].[AskidaHavuz]  WITH CHECK ADD  CONSTRAINT [FK_Kullanan] FOREIGN KEY([KullananMusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[AskidaHavuz] CHECK CONSTRAINT [FK_Kullanan]
GO
ALTER TABLE [dbo].[AskidaHavuz]  WITH CHECK ADD  CONSTRAINT [FK_Urun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[AskidaHavuz] CHECK CONSTRAINT [FK_Urun]
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_DetaySiparis] FOREIGN KEY([SiparisID])
REFERENCES [dbo].[Siparisler] ([SiparisID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [FK_DetaySiparis]
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [FK_DetayUrun] FOREIGN KEY([UrunID])
REFERENCES [dbo].[Urunler] ([UrunID])
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [FK_DetayUrun]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_SiparisAdres] FOREIGN KEY([AdresID])
REFERENCES [dbo].[Adresler] ([AdresID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_SiparisAdres]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_SiparisKurye] FOREIGN KEY([KuryeID])
REFERENCES [dbo].[Kuryeler] ([KuryeID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_SiparisKurye]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_SiparisMusteri] FOREIGN KEY([MusteriID])
REFERENCES [dbo].[Musteriler] ([MusteriID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_SiparisMusteri]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [FK_SiparisRestoran] FOREIGN KEY([RestoranID])
REFERENCES [dbo].[Restoranlar] ([RestoranID])
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [FK_SiparisRestoran]
GO
ALTER TABLE [dbo].[SiparisDetaylari]  WITH CHECK ADD  CONSTRAINT [CHK_Adet] CHECK  (([Adet]>(0)))
GO
ALTER TABLE [dbo].[SiparisDetaylari] CHECK CONSTRAINT [CHK_Adet]
GO
ALTER TABLE [dbo].[Siparisler]  WITH CHECK ADD  CONSTRAINT [CHK_SiparisDurumu] CHECK  (([SiparisDurumu]='İptal Edildi' OR [SiparisDurumu]='Teslim Edildi' OR [SiparisDurumu]='Yolda' OR [SiparisDurumu]='Hazırlanıyor'))
GO
ALTER TABLE [dbo].[Siparisler] CHECK CONSTRAINT [CHK_SiparisDurumu]
GO
/****** Object:  StoredProcedure [dbo].[AskidanYemekAl]    Script Date: 7.05.2026 18:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AskidanYemekAl]
    @MusteriID INT,
    @IstenenUrunID INT
AS
BEGIN
    -- 1. Kullanıcı gerçekten ihtiyaç sahibi mi?
    IF EXISTS (SELECT 1 FROM Musteriler WHERE MusteriID = @MusteriID AND IsIhtiyacSahibi = 1)
    BEGIN
        -- 2. Havuzda bu üründen müsait var mı?
        IF EXISTS (SELECT 1 FROM AskidaHavuz WHERE UrunID = @IstenenUrunID AND KullanimDurumu = 0)
        BEGIN
            -- 3. Havuzdaki ilk müsait yemeği rezerve et (Bakiye düşme/Eşleşme mantığı)
            UPDATE TOP (1) AskidaHavuz
            SET KullanimDurumu = 1,
                KullananMusteriID = @MusteriID,
                KullanimTarihi = GETDATE()
            WHERE UrunID = @IstenenUrunID AND KullanimDurumu = 0;

            PRINT 'Afiyet olsun! Yemek askıdan başarıyla alındı.';
        END
        ELSE
            PRINT 'Üzgünüz, havuzda bu üründen şu an bulunmuyor.';
    END
    ELSE
        PRINT 'Sistemde ihtiyaç sahibi olarak tanımlı değilsiniz.';
END;
GO
/****** Object:  StoredProcedure [dbo].[BagisYap]    Script Date: 7.05.2026 18:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[BagisYap]
    @MusteriID INT, -- Bağış yapan kişi
    @UrunID INT,    -- Bağışlanan yemek
    @AnonimMi BIT   -- 1 ise kimlik gizlenir, 0 ise görünür
AS
BEGIN
    -- Eğer anonim bağışsa, tabloda bağışçı kısmını NULL bırakıyoruz
    IF (@AnonimMi = 1)
    BEGIN
        INSERT INTO AskidaHavuz (BagisciMusteriID, UrunID, KullanimDurumu)
        VALUES (NULL, @UrunID, 0);
        PRINT 'Bağışınız anonim olarak başarıyla kabul edildi. Teşekkürler!';
    END
    ELSE
    BEGIN
        INSERT INTO AskidaHavuz (BagisciMusteriID, UrunID, KullanimDurumu)
        VALUES (@MusteriID, @UrunID, 0);
        PRINT 'Bağışınız isminizle birlikte başarıyla kabul edildi. Teşekkürler!';
    END
END;
GO
