CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY IDENTITY(1,1),
    RestaurantName NVARCHAR(100) NOT NULL,
    Address NVARCHAR(255) NOT NULL,
    Rating DECIMAL(2,1) DEFAULT 1 
        CHECK (Rating BETWEEN 1 AND 5),      
    IsActive BIT DEFAULT 1 
);
