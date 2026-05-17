SELECT 
    u.FullName AS MusteriAdi,
    COUNT(o.OrderId) AS ToplamSiparisSayisi,
    SUM(o.TotalAmount) AS ToplamHarcama,
    AVG(o.TotalAmount) AS OrtalamaSiparisTutari
FROM Users u
INNER JOIN Orders o ON u.UserId = o.UserId
GROUP BY u.FullName
HAVING SUM(o.TotalAmount) > 500  
ORDER BY ToplamHarcama DESC;   
