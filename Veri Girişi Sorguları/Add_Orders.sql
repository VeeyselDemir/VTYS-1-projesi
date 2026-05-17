INSERT INTO Orders (UserId, TotalAmount, OrderStatus, IsActive)
VALUES (1, 400.00, 'Completed', 1);

INSERT INTO OrderItems (OrderId, ProductId, Quantity, UnitPrice, IsDonation)
VALUES (1, 4, 1, 200.00, 0);

INSERT INTO OrderItems (OrderId, ProductId, Quantity, UnitPrice, IsDonation)
VALUES (1, 5, 2, 100.00, 1);
