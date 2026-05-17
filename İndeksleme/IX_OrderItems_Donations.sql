CREATE NONCLUSTERED INDEX IX_OrderItems_Donations 
ON OrderItems(ProductId) 
WHERE IsDonation = 1;
