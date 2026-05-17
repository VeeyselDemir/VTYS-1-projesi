CREATE TABLE OrderItems (
    OrderItemId INT IDENTITY(1,1) PRIMARY KEY,
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL CONSTRAINT CHK_OrderItems_Quantity CHECK (Quantity > 0),
    UnitPrice DECIMAL(10,2) NOT NULL CONSTRAINT CHK_OrderItems_UnitPrice CHECK (UnitPrice >= 0),
    IsDonation BIT DEFAULT 0, 
    CONSTRAINT FK_OrderItems_Orders FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    CONSTRAINT FK_OrderItems_Products FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
);  
