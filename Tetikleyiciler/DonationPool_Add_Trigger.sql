CREATE TRIGGER TRG_OrderItems_AskidaYemekEkle
ON OrderItems
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    INSERT INTO DonationPool (OrderItemId, ProductId, DonorUserId, IsAnonymous, PoolStatus)
    SELECT 
        i.OrderItemId,
        i.ProductId,
        o.UserId,    
        0,          
        'Available' 
    FROM inserted i
    INNER JOIN Orders o ON i.OrderId = o.OrderId
    WHERE i.IsDonation = 1;
END;
