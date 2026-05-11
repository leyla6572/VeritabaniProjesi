USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  Trigger [dbo].[trg_KuryeDurumGuncelle]    Script Date: 11.05.2026 16:33:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_KuryeDurumGuncelle]
ON [dbo].[Siparisler]
AFTER INSERT -- Sipariş eklendikten sonra çalış
AS
BEGIN
    DECLARE @AtananKuryeID INT;

    -- Yeni eklenen siparişteki KuryeID'yi sanal 'inserted' tablosundan alıyoruz
    SELECT @AtananKuryeID = KuryeID FROM inserted;

    -- Kuryeler tablosuna git ve o kuryeyi meşgul yap
    UPDATE Kuryeler
    SET Durum = 0 -- 0: Meşgul / Teslimatta
    WHERE KuryeID = @AtananKuryeID;

    PRINT 'Kurye durumu otomatik olarak Meşgul (0) olarak güncellendi.';
END;   
--yeni bir sipariş oluşturulduğunda ilgili kuryenin durumunu otomatik olarak
--"Meşgul" yaparak aynı kuryeye mükerrer sipariş atanmasını engelleyen otomasyon tetikleyicisidir.


USE [Çevrimiçi Yemek Sipariş Platformu]
GO
/****** Object:  Trigger [dbo].[trg_RestoranCiroEkle]    Script Date: 11.05.2026 16:39:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[trg_RestoranCiroEkle]
ON [dbo].[Siparisler]
AFTER UPDATE -- Sipariş durumu güncellendiğinde çalış
AS
BEGIN
    -- Sadece 'Durum' sütunu güncellendiyse işlem yap
    IF UPDATE(SiparisDurumu)
    BEGIN
        DECLARE @YeniDurum INT, @RestID INT, @Tutar DECIMAL(18,2);

        -- Güncellenen kaydın yeni bilgilerini alıyoruz
        SELECT @YeniDurum =SiparisDurumu, @RestID = RestoranID, @Tutar = ToplamTutar 
        FROM inserted;

        -- Eğer sipariş 'Teslim Edildi' (3) aşamasına geldiyse
        IF @YeniDurum = 3
        BEGIN
            UPDATE Restoranlar
            SET ToplamCiro = ISNULL(ToplamCiro, 0) + @Tutar
            WHERE RestoranID = @RestID;

            PRINT 'Restoran cirosu sipariş tutarı kadar artırıldı.';
        END
    END
END;
--Bir siparişin durumu "Teslim Edildi" olarak güncellendiğinde,
--sipariş tutarını ilgili restoranın toplam cirosuna anlık olarak ekleyerek
--finansal takibi otomatize eden tetikleyicidir.


















