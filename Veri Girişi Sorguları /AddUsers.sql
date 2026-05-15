CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE NOT NULL,     
    Phone NVARCHAR(11) UNIQUE NOT NULL,      
    PasswordHash NVARCHAR(255) NOT NULL,      
    UserType NVARCHAR(20) NOT NULL 
        CHECK (UserType IN ('Musteri', 'IhtiyacSahibi', 'Kurye', 'RestoranYetkilisi')),
    IsVerified BIT DEFAULT 0,                 
    IsActive BIT DEFAULT 1                    
);
