--------Category--------

USE TelecomShoppingDB;

INSERT INTO Category (CategoryId, Name, Description)
VALUES
    (1, 'Smartphones', 'Mobile phones with advanced features and functionalities.'),
    (2, 'Accessories', 'Various accessories for mobile phones, such as cases, chargers, and headphones.'),
    (3, 'Telecom Plans', 'Different telecom plans and packages for voice, data, and messaging services.'),
    (4, 'Tablets', 'Portable computing devices with touchscreens and similar functionalities to smartphones.'),
    (5, 'Laptops', 'Portable computing devices with a keyboard and display.'),
    (6, 'Bluetooth Devices', 'Devices that use Bluetooth technology for wireless communication.'),
    (7, 'Smartwatches', 'Wearable devices with features like fitness tracking and notifications.'),
    (8, 'Headsets', 'Audio devices for listening to music or making phone calls.'),
    (9, 'Power Banks', 'Portable chargers for recharging mobile devices on the go.'),
    (10, 'VR Headsets', 'Virtual Reality headsets for immersive experiences.');

	Go

--------Product---------

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ('iPhone 13 Pro', 'Latest iPhone with advanced camera and performance.', 130000.99, 1),
    ('Samsung Galaxy S21', 'Powerful Android smartphone with a stunning display.', 90000.00, 1),
    ('Google Pixel 6', 'Flagship Google smartphone with excellent camera capabilities.', 45000.99, 1),
    ('OnePlus 9', 'High-performance Android phone with a smooth user experience.', 60000.00, 1),
    ('Xiaomi Mi 11', 'Feature-packed smartphone with a competitive price.', 22000.00, 1),
	('Sony Xperia 1 III', 'Premium smartphone with a 4K OLED display and pro-level camera features.', 100000.00, 1),
    ('LG Velvet 2 Pro', 'Stylish smartphone with a sleek design and versatile camera system.', 35000.99, 1),
    ('Motorola Moto G Power', 'Long-lasting battery and budget-friendly smartphone.', 18000.00, 1),
    ('Realme GT 5G', 'Powerful 5G smartphone with a high-refresh-rate display.', 15000.00, 1),
    ( 'Asus ROG Phone 5', 'Gaming-focused smartphone with advanced cooling and performance.', 55000.00, 1);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Phone Case - Clear', 'Transparent phone case to showcase your phone design.', 1200.99, 2),
    ( 'Wireless Earbuds', 'Bluetooth earbuds for a wire-free music experience.', 4900.99, 2),
    ( 'Fast Charging Cable', 'USB-C fast charging cable for quick device charging.', 500.00, 2),
    ( 'Power Bank - 10000mAh', 'Portable charger to keep your devices powered on the go.', 2900.99, 2),
    ( 'Screen Protector', 'Tempered glass screen protector for added display protection.', 100.99, 2),
    ( 'Car Mount Holder', 'Universal car mount for easy phone navigation while driving.', 1000.99, 2),
    ( 'Phone Stand', 'Adjustable phone stand for comfortable media viewing.', 800.95, 2),
    ( 'Wireless Charging Pad', 'Qi-enabled wireless charging pad for easy charging.', 700.95, 2),
    ( 'Phone Camera Lens Kit', 'Clip-on lens kit to enhance your phone camera capabilities.', 3400.99, 2),
    ( 'Portable Bluetooth Speaker', 'Compact speaker for on-the-go music and calls.', 3900.99, 2);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Unlimited Talk & Text', 'Basic plan with unlimited talk and text messages.', 299.99, 3),
    ( '2GB Data Plan', 'Data plan with 2GB high-speed data per month.', 399.99, 3),
    ( 'Family Plan - 4 Lines', 'Shared family plan with 4 lines and shared data.', 1499.99, 3),
    ( 'Unlimited Data & Entertainment', 'Unlimited data plan with video streaming and entertainment perks.', 799.99, 3),
    ( 'Business Essentials', 'Telecom plan tailored for small businesses with essential features.', 490.99, 3),
    ( 'International Roaming', 'Add-on plan for international data and call roaming.', 750.99, 3),
    ( 'Data Only Plan - 10GB', 'Data-only plan for tablets and hotspots with 10GB data.', 499.99, 3),
    ( 'Senior Citizen Plan', 'Discounted plan for senior citizens with essential features.', 340.99, 3),
    ( '5G Data Upgrade', 'Upgrade your existing plan to include 5G data access.', 100.00, 3),
    ( 'Student Plan - Unlimited', 'Special plan for students with unlimited talk, text, and data.', 340.99, 3);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Apple iPad Air', 'Powerful tablet with a large Retina display.', 30000.00, 4),
    ( 'Samsung Galaxy Tab S7', 'Android tablet with a high-refresh-rate display.', 45000.99, 4),
    ( 'Microsoft Surface Pro 7', 'Versatile 2-in-1 tablet with a detachable keyboard.', 80000.00, 4),
    ( 'Amazon Fire HD 10', 'Affordable tablet for media consumption and casual use.', 14000.99, 4),
    ( 'Lenovo Tab P11 Pro', 'Premium tablet with OLED display and quad speakers.', 4900.99, 4),
    ( 'Huawei MatePad Pro', 'Sleek tablet with a powerful Kirin chipset and stylus support.', 5490.00, 4),
    ( 'Google Pixel Slate', 'Google Chrome OS tablet with a sharp display.', 9000.00, 4),
    ( 'Sony Xperia Z4 Tablet', 'Waterproof tablet with a crisp display and powerful performance.', 8500.00, 4),
    ( 'Asus ZenPad 3S 10', 'Slim and lightweight tablet with good battery life.', 12990.00, 4),
    ( 'Xiaomi Mi Pad 5', 'Android tablet with a large screen and Snapdragon processor.', 6500.99, 4);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Dell XPS 15', 'Premium laptop with a stunning 4K InfinityEdge display.', 85000.99, 5),
    ( 'Apple MacBook Pro 13', 'Powerful laptop with Retina display and M1 chip.', 70000.00, 5),
    ( 'HP Spectre x360', 'Convertible laptop with a sleek design and excellent battery life.', 60000.00, 5),
    ( 'Lenovo ThinkPad X1 Carbon', 'Business-oriented laptop with durable construction and security features.', 32000.00, 5),
    ( 'Asus ROG Zephyrus G14', 'Gaming laptop with powerful Ryzen processor and RTX graphics.', 55000.00, 5),
    ( 'Microsoft Surface Laptop 4', 'Slim and lightweight laptop with a touch-enabled display.', 60000.00, 5),
    ( 'Acer Swift 5', 'Ultra-portable laptop with a lightweight magnesium-alloy build.', 45000.99, 5),
    ( 'LG Gram 17', 'Large-screen laptop with long battery life and a durable build.', 37000.00, 5),
    ( 'Razer Blade 15', 'Gaming laptop with a sleek design and high-refresh-rate display.', 28000.99, 5),
    ( 'Samsung Galaxy Book Pro 360', '2-in-1 laptop with a Super AMOLED touch display and S Pen support.', 67000.99, 5);

	Go


INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ('Apple AirPods Pro', 'Wireless earbuds with active noise cancellation.', 249.00, 6),
    ( 'Sony WH-1000XM4', 'Over-ear headphones with industry-leading noise cancellation.', 349.99, 6),
    ( 'JBL Flip 5', 'Portable Bluetooth speaker with powerful sound.', 119.95, 6),
    ( 'Bose SoundLink Revolve+', '360-degree Bluetooth speaker with deep, immersive sound.', 299.00, 6),
    ( 'Samsung Galaxy Buds+', 'Wireless earbuds with clear sound and long battery life.', 129.99, 6),
    ( 'Anker Soundcore Liberty Air 2 Pro', 'True wireless earbuds with customizable sound.', 129.99, 6),
    ( 'Beats Solo Pro', 'On-ear headphones with active noise cancellation.', 299.95, 6),
    ( 'UE BOOM 3', 'Rugged and waterproof Bluetooth speaker with 360-degree sound.', 149.99, 6),
    ( 'Jabra Elite 75t', 'Compact and durable true wireless earbuds.', 179.99, 6),
    ( 'Bose Frames Audio Sunglasses', 'Sunglasses with built-in open-ear speakers for music and calls.', 199.00, 6);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Apple Watch Series 7', 'Latest Apple smartwatch with larger display and new features.', 39990.00, 7),
    ( 'Samsung Galaxy Watch 4', 'Feature-packed smartwatch with comprehensive health tracking.', 34900.99, 7),
    ( 'Fitbit Sense', 'Advanced health-focused smartwatch with stress and ECG tracking.', 29900.95, 7),
    ( 'Garmin Forerunner 945', 'GPS smartwatch designed for runners and athletes.', 59900.99, 7),
    ( 'Fossil Gen 6', 'Stylish Wear OS smartwatch with various customization options.', 2990.00, 7),
    ( 'Amazfit GTR 3', 'Long-lasting smartwatch with AMOLED display and health monitoring.', 2290.99, 7),
    ( 'Huawei Watch GT 3', 'Fitness-oriented smartwatch with extended battery life.', 2490.00, 7),
    ( 'TicWatch Pro 3', 'Dual-display smartwatch with great battery performance.', 2990.99, 7),
    ( 'Garmin Venu 2', 'Versatile smartwatch with AMOLED display and extensive sports modes.', 3490.99, 7),
    ( 'Withings ScanWatch', 'Hybrid smartwatch with ECG and SpO2 monitoring.', 2490.95, 7);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Sony WH-1000XM4', 'Premium wireless headphones with excellent sound quality.', 34900.99, 8),
    ( 'Apple AirPods Pro', 'Wireless earbuds with active noise cancellation.', 24900.00, 8),
    ( 'Bose Noise Cancelling Headphones 700', 'Over-ear headphones with adaptive noise cancellation.', 3790.00, 8),
    ( 'Jabra Elite 85t', 'True wireless earbuds with adjustable noise cancellation.', 2290.99, 8),
    ( 'Sennheiser HD 660 S', 'Open-back headphones for audiophiles with high-quality sound.', 4999.95, 8),
    ( 'SteelSeries Arctis Pro Wireless', 'Gaming headset with lossless audio and dual wireless technology.', 3290.99, 8),
    ( 'AKG K240 Studio', 'Professional studio headphones with semi-open design.', 6900.00, 8),
    ( 'Plantronics Voyager 5200', 'Bluetooth headset with noise-canceling microphone for calls.', 1199.99, 8),
    ( 'Beats Solo3 Wireless', 'On-ear headphones with Apple W1 chip for easy pairing.', 1990.95, 8),
    ( 'Corsair Virtuoso RGB Wireless', 'Gaming headset with high-fidelity audio and customizable lighting.', 1799.99, 8);

	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Anker PowerCore 10000', 'Portable power bank with a capacity of 10000mAh.', 2900.99, 9),
    ( 'RAVPower 20000mAh Power Bank', 'High-capacity power bank with multiple charging ports.', 3999.99, 9),
    ( 'Aukey 10000mAh Slim Power Bank', 'Slim and pocket-friendly power bank for on-the-go charging.', 2400.99, 9),
    ( 'Anker PowerCore 26800 PD', 'Powerful power bank with Power Delivery support.', 2890.99, 9),
    ( 'Samsung Wireless Power Bank', 'Wireless charging power bank compatible with Qi-enabled devices.', 1499.99, 9),
    ( 'Xiaomi Mi Power Bank 3', 'Fast-charging power bank with USB-C and USB-A ports.', 1290.99, 9),
    ( 'Zendure SuperTank', 'High-capacity power bank with 100W USB-C PD output.', 1999.95, 9),
    ( 'RAVPower 30000mAh Solar Power Bank', 'Solar-powered power bank with a rugged design.', 849.99, 9),
    ( 'Anker PowerCore Slim 10000 PD', 'Slim and lightweight power bank with Power Delivery support.', 939.99, 9),
    ( 'MAXOAK 50000mAh Power Bank', 'Ultra-high capacity power bank for charging multiple devices.', 1135.99, 9);


	Go

INSERT INTO Product ( Name, Description, Price, CategoryId)
VALUES
    ( 'Oculus Quest 2', 'Standalone VR headset with advanced features and content library.', 14299.00, 10),
    ( 'HTC Vive Cosmos', 'Premium PC VR headset with high-resolution display.', 26990.00, 10),
    ( 'PlayStation VR', 'VR headset for use with PlayStation gaming consoles.', 12999.99, 10),
    ( 'Valve Index', 'High-end PC VR headset with precise tracking and controllers.', 9999.00, 10),
    ( 'Samsung Odyssey G7', 'Windows Mixed Reality VR headset with AMOLED display.', 14999.99, 10),
    ( 'Pimax 8KX', 'Ultra-wide VR headset with 8K resolution support.', 8999.00, 10),
    ( 'Oculus Rift S', 'PC VR headset with inside-out tracking and Touch controllers.', 23990.00, 10),
    ( 'Sony PlayStation VR Bundle', 'PS VR bundle with games and accessories.', 14490.99, 10),
    ( 'HP Reverb G2', 'High-resolution VR headset with comfortable design.', 15990.00, 10),
    ( 'Xiaomi Mi VR Standalone', 'Affordable standalone VR headset with built-in content.', 11990.00, 10);

select * from Product

select * from Category

