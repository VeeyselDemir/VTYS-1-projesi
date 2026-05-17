CREATE TRIGGER trg_CancelDonation
ON Orders
AFTER UPDATE
AS
BEGIN
    IF UPDATE(OrderStatus) 
    BEGIN
        -- Veriyi tamamen silmek yerine PoolStatus'u iptal durumuna çekiyoruz. 
        UPDATE DonationPool
        SET PoolStatus = 'Canceled' 
        WHERE OrderItemId IN (
            SELECT oi.OrderItemId 
            FROM OrderItems oi
            INNER JOIN inserted i ON oi.OrderID = i.OrderID
            INNER JOIN deleted d ON i.OrderID = d.OrderID
            WHERE i.OrderStatus = 'Canceled' AND d.OrderStatus != 'Canceled'
        );
    END
END;
