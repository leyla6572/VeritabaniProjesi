USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  Table [dbo].[Musteriler]    Script Date: 4.05.2026 23:56:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Musteriler](
	[MusteriID] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NULL,
	[Soyad] [nvarchar](50) NULL,
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
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Musteril__A9D1053431497902]    Script Date: 4.05.2026 23:56:02 ******/
ALTER TABLE [dbo].[Musteriler] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Musteri_Email]    Script Date: 4.05.2026 23:56:02 ******/
ALTER TABLE [dbo].[Musteriler] ADD  CONSTRAINT [UQ_Musteri_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Musteriler] ADD  DEFAULT (getdate()) FOR [KayitTarihi]
GO
ALTER TABLE [dbo].[Musteriler] ADD  DEFAULT ((1)) FOR [Durum]
GO
