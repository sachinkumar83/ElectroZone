---------------------------------Database--------------------------------------------------

CREATE DATABASE TelecomShoppingDB;


GO

USE TelecomShoppingDB;
GO


-------------User--------------


CREATE TABLE [UserTBL] (
    UserId INT PRIMARY KEY Identity(1,1),
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Password VARCHAR(100) NOT NULL,
    Role VARCHAR(20) NOT NULL
);
--select * from [UserTBL]
GO
-- insert Admins --

-------------Category------------

CREATE TABLE Category (
    CategoryId INT PRIMARY KEY ,
    Name VARCHAR(50) NOT NULL,
    Description VARCHAR(200) NOT NULL
);




--------------Product------------
CREATE TABLE Product (
    ProductId INT PRIMARY KEY Identity(1,1),
    Name VARCHAR(100) NOT NULL,
    Description VARCHAR(200) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    CategoryId INT NOT NULL,
	ImagePath varchar(max),
    FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId)
);

Select * from Product
GO

---------------Order-------------
CREATE TABLE [Order] (
    OrderId INT PRIMARY KEY Identity(1,1),
    UserId INT NOT NULL,
    OrderDate DATETIME NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (UserId) REFERENCES [UserTBL](UserId)
);



----------------OrderItem ------------------
CREATE TABLE OrderItem (
    OrderItemId INT PRIMARY KEY Identity(1,1),
    OrderId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES [Order](OrderId),
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
);

GO

---------------Cart------------------


CREATE TABLE Cart (
    CartId INT PRIMARY KEY Identity(1,1),
    UserId INT NOT NULL,

    FOREIGN KEY (UserId) REFERENCES [UserTBL](UserId)
);



select * from Cart


---------------CartItem------------------


CREATE TABLE CartItem (
    CartItemId INT PRIMARY KEY Identity(1,1),
    CartId INT NOT NULL,
    ProductId INT NOT NULL,
    Quantity INT NOT NULL,
    FOREIGN KEY (CartId) REFERENCES Cart(CartId),
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
);

GO

-----------------Payment------------------


CREATE TABLE Payment (
    PaymentId INT PRIMARY KEY,
    UserId INT NOT NULL,
    OrderId INT NOT NULL,
    PaymentDate DATETIME NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (UserId) REFERENCES [UserTBL](UserId),
    FOREIGN KEY (OrderId) REFERENCES [Order](OrderId)
);

GO
-------------------CategoryProduct------------------------


CREATE TABLE CategoryProduct (
    CategoryId INT NOT NULL,
    ProductId INT NOT NULL,
    PRIMARY KEY (CategoryId, ProductId),
    FOREIGN KEY (CategoryId) REFERENCES Category(CategoryId),
    FOREIGN KEY (ProductId) REFERENCES Product(ProductId)
);




drop table OrderTBL
-----------------------------------------------------------------
CREATE TABLE OrderTBL (
    OrderItemId INT PRIMARY KEY Identity(1,1),
    Name nVarchar(20),
	Address nVARCHAR(100),
	Email nVARCHAR(50),
	MobileNo bigint,
    PaymentOption NVARCHAR(50),
	CardNumber NVARCHAR(50),
	ExpiryDate Date,
);
select * from OrderTBL
drop table OrderTBL
Create proc PlaceOrder
@Name varchar(20),
@address varchar(100),
@email varchar(50),
@MobileNo bigint,
@paymentOption nvarchar(50),
@cardNumber nvarchar(50),
@expiryDate date
as
	begin
		Insert into PlaceOrder(Name,Address,Email,MobileNo,PaymentOption,CardNumber,ExpiryDate)
		Values(@Name,@address,@email,@MobileNo,@paymentOption,@cardNumber,@expiryDate)
	end



-- inserting values --
delete Product
-- Inserting data into the Product table
 


INSERT INTO Product ( Name, Description, Price, CategoryId, ImagePath) 
VALUES( 'NVIDIA Shield TV Pro', 'Powerful streaming device for gamers and media enthusiasts.', 699.99, 10, '~/Image/NVIDIA Shield TV Pro2318860593.jpg'),
       ( 'Chromecast with Google TV', 'Google TV streaming device with a voice remote.', 599.99, 10, '~/Image/Chromecast with Google TV2318987602.jpg'),
       ( 'Sony PlayStation 5', 'Next-gen gaming console with ultra-fast SSD and DualSense controller.', 2499.00, 11, '~/Image/Sony PlayStation 52319024105.jpg'),
       ( 'Microsoft Xbox Series X', 'Powerful gaming console with backward compatibility and Xbox Game Pass.', 2399.00, 11, '~/Image/Microsoft Xbox Series X23192115653.jpg'),
       ( 'Nintendo Switch OLED Model', 'Upgraded Nintendo Switch with OLED display and enhanced audio.', 1999.00, 11, '~/Image/Nintendo Switch OLED Model2319314385.jpg'),
       ( 'Sony DualSense Wireless Controller', 'Wireless controller with haptic feedback for PlayStation 5.', 499.99, 11, '~/Image/Sony DualSense Wireless Controller2319425080.jpg'),
       ( 'Microsoft Xbox Wireless Controller', 'Wireless controller with textured grips and custom button mapping.', 499.99, 11, '~/Image/Microsoft Xbox Wireless Controller2319560754.jpg'),
       ( 'Nintendo Switch Pro Controller', 'Nintendo s official controller for the Switch with motion controls.', 799.00, 11, '~/Image/Nintendo Switch Pro Controller2319673091.jpg');

-- The data insertion into the Product table is complete.

     


