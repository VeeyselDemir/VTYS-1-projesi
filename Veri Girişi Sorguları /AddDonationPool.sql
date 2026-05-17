CREATE TABLE DonationPool (
    DonationId INT IDENTITY(1,1) PRIMARY KEY,
    OrderItemId INT NOT NULL, 
    ProductId INT NOT NULL,   
    DonorUserId INT NOT NULL, 
    IsAnonymous BIT DEFAULT 0,
    RecipientUserId INT NULL, 
    DonationDate DATETIME DEFAULT GETDATE(),
    ClaimedDate DATETIME NULL, 
    PoolStatus NVARCHAR(20) DEFAULT 'Available', 
    CONSTRAINT FK_DonationPool_OrderItems FOREIGN KEY (OrderItemId) REFERENCES OrderItems(OrderItemId),
    CONSTRAINT FK_DonationPool_Products FOREIGN KEY (ProductId) REFERENCES Products(ProductId),
    CONSTRAINT FK_DonationPool_Donor FOREIGN KEY (DonorUserId) REFERENCES Users(UserId),
    CONSTRAINT FK_DonationPool_Recipient FOREIGN KEY (RecipientUserId) REFERENCES Users(UserId)
);
