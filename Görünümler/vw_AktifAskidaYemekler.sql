CREATE VIEW vw_AktifAskidaYemekler
AS
SELECT 
    dp.DonationId,
    p.ProductName AS AskidakiYemek,
    CASE 
        WHEN dp.IsAnonymous = 1 THEN 'Gizli Bağışçı'
        ELSE u.FullName 
    END AS BagisciAdi,
    dp.DonationDate AS BagisTarihi,
    dp.PoolStatus AS Durum
FROM DonationPool dp
INNER JOIN Products p ON dp.ProductId = p.ProductID
LEFT JOIN Users u ON dp.DonorUserId = u.UserID
WHERE dp.PoolStatus = 'Active'; 
