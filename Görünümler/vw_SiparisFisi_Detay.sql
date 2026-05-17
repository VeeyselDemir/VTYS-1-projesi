CREATE VIEW vw_SiparisFisi_Detay 
AS
SELECT 
    o.OrderID,
    u.FullName AS MusteriAdi,
    r.RestaurantName AS RestoranAdi,
    p.ProductName AS Yemek,
    oi.Quantity AS Adet,
    oi.UnitPrice AS BirimFiyat,
    (oi.Quantity * oi.UnitPrice) AS ToplamTutar,
    o.OrderDate AS SiparisTarihi
FROM Orders o
INNER JOIN Users u ON o.UserID = u.UserID
INNER JOIN Restaurants r ON o.RestaurantID = r.RestaurantID
INNER JOIN OrderItems oi ON o.OrderID = oi.OrderID
INNER JOIN Products p ON oi.ProductId = p.ProductID;
