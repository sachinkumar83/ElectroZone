--------Category--------

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

--------Product---------

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (1, 'iPhone 13 Pro', 'Latest iPhone with advanced camera and performance.', 130000.99, 1),
    (2, 'Samsung Galaxy S21', 'Powerful Android smartphone with a stunning display.', 90000.00, 1),
    (3, 'Google Pixel 6', 'Flagship Google smartphone with excellent camera capabilities.', 45000.99, 1),
    (4, 'OnePlus 9', 'High-performance Android phone with a smooth user experience.', 60000.00, 1),
    (5, 'Xiaomi Mi 11', 'Feature-packed smartphone with a competitive price.', 22000.00, 1),
	(6, 'Sony Xperia 1 III', 'Premium smartphone with a 4K OLED display and pro-level camera features.', 100000.00, 1),
    (7, 'LG Velvet 2 Pro', 'Stylish smartphone with a sleek design and versatile camera system.', 35000.99, 1),
    (8, 'Motorola Moto G Power', 'Long-lasting battery and budget-friendly smartphone.', 18000.00, 1),
    (9, 'Realme GT 5G', 'Powerful 5G smartphone with a high-refresh-rate display.', 15000.00, 1),
    (10, 'Asus ROG Phone 5', 'Gaming-focused smartphone with advanced cooling and performance.', 55000.00, 1);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (11, 'Phone Case - Clear', 'Transparent phone case to showcase your phone design.', 1200.99, 2),
    (12, 'Wireless Earbuds', 'Bluetooth earbuds for a wire-free music experience.', 4900.99, 2),
    (13, 'Fast Charging Cable', 'USB-C fast charging cable for quick device charging.', 500.00, 2),
    (14, 'Power Bank - 10000mAh', 'Portable charger to keep your devices powered on the go.', 2900.99, 2),
    (15, 'Screen Protector', 'Tempered glass screen protector for added display protection.', 100.99, 2),
    (16, 'Car Mount Holder', 'Universal car mount for easy phone navigation while driving.', 1000.99, 2),
    (17, 'Phone Stand', 'Adjustable phone stand for comfortable media viewing.', 800.95, 2),
    (18, 'Wireless Charging Pad', 'Qi-enabled wireless charging pad for easy charging.', 700.95, 2),
    (19, 'Phone Camera Lens Kit', 'Clip-on lens kit to enhance your phone camera capabilities.', 3400.99, 2),
    (20, 'Portable Bluetooth Speaker', 'Compact speaker for on-the-go music and calls.', 3900.99, 2);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (21, 'Unlimited Talk & Text', 'Basic plan with unlimited talk and text messages.', 299.99, 3),
    (22, '2GB Data Plan', 'Data plan with 2GB high-speed data per month.', 399.99, 3),
    (23, 'Family Plan - 4 Lines', 'Shared family plan with 4 lines and shared data.', 1499.99, 3),
    (24, 'Unlimited Data & Entertainment', 'Unlimited data plan with video streaming and entertainment perks.', 799.99, 3),
    (25, 'Business Essentials', 'Telecom plan tailored for small businesses with essential features.', 490.99, 3),
    (26, 'International Roaming', 'Add-on plan for international data and call roaming.', 750.99, 3),
    (27, 'Data Only Plan - 10GB', 'Data-only plan for tablets and hotspots with 10GB data.', 499.99, 3),
    (28, 'Senior Citizen Plan', 'Discounted plan for senior citizens with essential features.', 340.99, 3),
    (29, '5G Data Upgrade', 'Upgrade your existing plan to include 5G data access.', 100.00, 3),
    (30, 'Student Plan - Unlimited', 'Special plan for students with unlimited talk, text, and data.', 340.99, 3);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (31, 'Apple iPad Air', 'Powerful tablet with a large Retina display.', 30000.00, 4),
    (32, 'Samsung Galaxy Tab S7', 'Android tablet with a high-refresh-rate display.', 45000.99, 4),
    (33, 'Microsoft Surface Pro 7', 'Versatile 2-in-1 tablet with a detachable keyboard.', 80000.00, 4),
    (34, 'Amazon Fire HD 10', 'Affordable tablet for media consumption and casual use.', 14000.99, 4),
    (35, 'Lenovo Tab P11 Pro', 'Premium tablet with OLED display and quad speakers.', 4900.99, 4),
    (36, 'Huawei MatePad Pro', 'Sleek tablet with a powerful Kirin chipset and stylus support.', 5490.00, 4),
    (37, 'Google Pixel Slate', 'Google Chrome OS tablet with a sharp display.', 9000.00, 4),
    (38, 'Sony Xperia Z4 Tablet', 'Waterproof tablet with a crisp display and powerful performance.', 8500.00, 4),
    (39, 'Asus ZenPad 3S 10', 'Slim and lightweight tablet with good battery life.', 12990.00, 4),
    (40, 'Xiaomi Mi Pad 5', 'Android tablet with a large screen and Snapdragon processor.', 6500.99, 4);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (41, 'Apple MacBook Pro 13', 'Powerful laptop with Retina display and M1 chip.', 70000.00, 5),
    (42, 'Dell XPS 15', 'Premium laptop with a stunning 4K InfinityEdge display.', 85000.99, 5),
    (43, 'HP Spectre x360', 'Convertible laptop with a sleek design and excellent battery life.', 60000.00, 5),
    (44, 'Lenovo ThinkPad X1 Carbon', 'Business-oriented laptop with durable construction and security features.', 32000.00, 5),
    (45, 'Asus ROG Zephyrus G14', 'Gaming laptop with powerful Ryzen processor and RTX graphics.', 55000.00, 5),
    (46, 'Microsoft Surface Laptop 4', 'Slim and lightweight laptop with a touch-enabled display.', 60000.00, 5),
    (47, 'Acer Swift 5', 'Ultra-portable laptop with a lightweight magnesium-alloy build.', 45000.99, 5),
    (48, 'LG Gram 17', 'Large-screen laptop with long battery life and a durable build.', 37000.00, 5),
    (49, 'Razer Blade 15', 'Gaming laptop with a sleek design and high-refresh-rate display.', 28000.99, 5),
    (50, 'Samsung Galaxy Book Pro 360', '2-in-1 laptop with a Super AMOLED touch display and S Pen support.', 67000.99, 5);


INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (51, 'Apple AirPods Pro', 'Wireless earbuds with active noise cancellation.', 249.00, 6),
    (52, 'Sony WH-1000XM4', 'Over-ear headphones with industry-leading noise cancellation.', 349.99, 6),
    (53, 'JBL Flip 5', 'Portable Bluetooth speaker with powerful sound.', 119.95, 6),
    (54, 'Bose SoundLink Revolve+', '360-degree Bluetooth speaker with deep, immersive sound.', 299.00, 6),
    (55, 'Samsung Galaxy Buds+', 'Wireless earbuds with clear sound and long battery life.', 129.99, 6),
    (56, 'Anker Soundcore Liberty Air 2 Pro', 'True wireless earbuds with customizable sound.', 129.99, 6),
    (57, 'Beats Solo Pro', 'On-ear headphones with active noise cancellation.', 299.95, 6),
    (58, 'UE BOOM 3', 'Rugged and waterproof Bluetooth speaker with 360-degree sound.', 149.99, 6),
    (59, 'Jabra Elite 75t', 'Compact and durable true wireless earbuds.', 179.99, 6),
    (60, 'Bose Frames Audio Sunglasses', 'Sunglasses with built-in open-ear speakers for music and calls.', 199.00, 6);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (61, 'Apple Watch Series 7', 'Latest Apple smartwatch with larger display and new features.', 39990.00, 7),
    (62, 'Samsung Galaxy Watch 4', 'Feature-packed smartwatch with comprehensive health tracking.', 34900.99, 7),
    (63, 'Fitbit Sense', 'Advanced health-focused smartwatch with stress and ECG tracking.', 29900.95, 7),
    (64, 'Garmin Forerunner 945', 'GPS smartwatch designed for runners and athletes.', 59900.99, 7),
    (65, 'Fossil Gen 6', 'Stylish Wear OS smartwatch with various customization options.', 2990.00, 7),
    (66, 'Amazfit GTR 3', 'Long-lasting smartwatch with AMOLED display and health monitoring.', 2290.99, 7),
    (67, 'Huawei Watch GT 3', 'Fitness-oriented smartwatch with extended battery life.', 2490.00, 7),
    (68, 'TicWatch Pro 3', 'Dual-display smartwatch with great battery performance.', 2990.99, 7),
    (69, 'Garmin Venu 2', 'Versatile smartwatch with AMOLED display and extensive sports modes.', 3490.99, 7),
    (70, 'Withings ScanWatch', 'Hybrid smartwatch with ECG and SpO2 monitoring.', 2490.95, 7);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (71, 'Sony WH-1000XM4', 'Premium wireless headphones with excellent sound quality.', 34900.99, 8),
    (72, 'Apple AirPods Pro', 'Wireless earbuds with active noise cancellation.', 24900.00, 8),
    (73, 'Bose Noise Cancelling Headphones 700', 'Over-ear headphones with adaptive noise cancellation.', 3790.00, 8),
    (74, 'Jabra Elite 85t', 'True wireless earbuds with adjustable noise cancellation.', 2290.99, 8),
    (75, 'Sennheiser HD 660 S', 'Open-back headphones for audiophiles with high-quality sound.', 4999.95, 8),
    (76, 'SteelSeries Arctis Pro Wireless', 'Gaming headset with lossless audio and dual wireless technology.', 3290.99, 8),
    (77, 'AKG K240 Studio', 'Professional studio headphones with semi-open design.', 6900.00, 8),
    (78, 'Plantronics Voyager 5200', 'Bluetooth headset with noise-canceling microphone for calls.', 1199.99, 8),
    (79, 'Beats Solo3 Wireless', 'On-ear headphones with Apple W1 chip for easy pairing.', 1990.95, 8),
    (80, 'Corsair Virtuoso RGB Wireless', 'Gaming headset with high-fidelity audio and customizable lighting.', 1799.99, 8);

INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (81, 'Anker PowerCore 10000', 'Portable power bank with a capacity of 10000mAh.', 2900.99, 9),
    (82, 'RAVPower 20000mAh Power Bank', 'High-capacity power bank with multiple charging ports.', 3999.99, 9),
    (83, 'Aukey 10000mAh Slim Power Bank', 'Slim and pocket-friendly power bank for on-the-go charging.', 2400.99, 9),
    (84, 'Anker PowerCore 26800 PD', 'Powerful power bank with Power Delivery support.', 2890.99, 9),
    (85, 'Samsung Wireless Power Bank', 'Wireless charging power bank compatible with Qi-enabled devices.', 1499.99, 9),
    (86, 'Xiaomi Mi Power Bank 3', 'Fast-charging power bank with USB-C and USB-A ports.', 1290.99, 9),
    (87, 'Zendure SuperTank', 'High-capacity power bank with 100W USB-C PD output.', 1999.95, 9),
    (88, 'RAVPower 30000mAh Solar Power Bank', 'Solar-powered power bank with a rugged design.', 849.99, 9),
    (89, 'Anker PowerCore Slim 10000 PD', 'Slim and lightweight power bank with Power Delivery support.', 939.99, 9),
    (90, 'MAXOAK 50000mAh Power Bank', 'Ultra-high capacity power bank for charging multiple devices.', 1135.99, 9);


INSERT INTO Product (ProductId, Name, Description, Price, CategoryId)
VALUES
    (91, 'Oculus Quest 2', 'Standalone VR headset with advanced features and content library.', 14299.00, 10),
    (92, 'HTC Vive Cosmos', 'Premium PC VR headset with high-resolution display.', 26990.00, 10),
    (93, 'PlayStation VR', 'VR headset for use with PlayStation gaming consoles.', 12999.99, 10),
    (94, 'Valve Index', 'High-end PC VR headset with precise tracking and controllers.', 9999.00, 10),
    (95, 'Samsung Odyssey G7', 'Windows Mixed Reality VR headset with AMOLED display.', 14999.99, 10),
    (96, 'Pimax 8KX', 'Ultra-wide VR headset with 8K resolution support.', 8999.00, 10),
    (97, 'Oculus Rift S', 'PC VR headset with inside-out tracking and Touch controllers.', 23990.00, 10),
    (98, 'Sony PlayStation VR Bundle', 'PS VR bundle with games and accessories.', 14490.99, 10),
    (99, 'HP Reverb G2', 'High-resolution VR headset with comfortable design.', 15990.00, 10),
    (100, 'Xiaomi Mi VR Standalone', 'Affordable standalone VR headset with built-in content.', 11990.00, 10);


select * from Product