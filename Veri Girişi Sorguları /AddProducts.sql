CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    RestaurantID INT NOT NULL, 
    ProductName NVARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL 
        CHECK (Price > 0),                    
    IsActive BIT DEFAULT 1,                   
  
    -- Foreign Key: Referans Bütünlüğü 
    CONSTRAINT FK_Product_Restaurant FOREIGN KEY (RestaurantID) 
    REFERENCES Restaurants(RestaurantID)
