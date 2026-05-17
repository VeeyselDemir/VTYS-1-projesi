CREATE TABLE Orders (
    OrderId INT IDENTITY(1,1) PRIMARY KEY,
    UserId INT NOT NULL,
    OrderDate DATETIME DEFAULT GETDATE(),
    TotalAmount DECIMAL(10,2) NOT NULL CONSTRAINT CHK_Orders_TotalAmount CHECK (TotalAmount >= 0),
    OrderStatus NVARCHAR(20) DEFAULT 'Pending', -- Pending, Preparing, Shipped, Completed, Cancelled
    IsActive BIT DEFAULT 1, 
    CONSTRAINT FK_Orders_Users FOREIGN KEY (UserId) REFERENCES Users(UserId)
);
