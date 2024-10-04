-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 04, 2024 at 11:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jumiya`
--

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_desc` text DEFAULT NULL,
  `product_cost` decimal(10,2) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  `product_image_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'Deluxe Memory Foam Mattress', 'Experience ultimate comfort with our Deluxe Memory Foam Mattress, designed to contour to your body for a restful night’s sleep.', 899.99, 'Beds & Mattresses', 'bed1.jpg'),
(2, 'Classic Wooden Bed Frame', 'A timeless piece, this Classic Wooden Bed Frame adds elegance to any bedroom with its sturdy design and rich finish.', 599.99, 'Bed Frames', 'bed2.jpg'),
(3, 'Adjustable Bed Base', 'Enhance your sleep experience with our Adjustable Bed Base, featuring multiple positions for personalized comfort and support.', 749.99, 'Adjustable Beds', 'bed3.jpg'),
(4, 'Luxury Silk Bed Linen Set', 'Indulge in the softness of our Luxury Silk Bed Linen Set, perfect for adding a touch of luxury to your bedding collection.', 299.99, 'Bedding Accessories', 'bed4.jpg'),
(5, 'Modern Upholstered Bed', 'This Modern Upholstered Bed combines contemporary style with comfort, featuring plush upholstery and a sleek design.', 749.99, 'Upholstered Beds', 'bed5.jpg'),
(6, 'Rustic Farmhouse Bed', 'Bring a cozy feel to your bedroom with our Rustic Farmhouse Bed, crafted from reclaimed wood.', 899.99, 'Farmhouse Beds', 'bed6.jpg'),
(7, 'Sleek Metal Bed Frame', 'A minimalist design, this Sleek Metal Bed Frame is perfect for modern and industrial-style rooms.', 499.99, 'Metal Beds', 'bed7.jpg'),
(8, 'Kids Bunk Bed', 'Maximize space with our Kids Bunk Bed, featuring safety rails and a sturdy ladder.', 399.99, 'Kids Beds', 'bed8jpg'),
(9, 'Platform Bed with Storage', 'This Platform Bed features built-in storage drawers, ideal for keeping your bedroom organized.', 799.99, 'Platform Beds', 'bed9.jpg'),
(10, 'Gel-Infused Memory Foam Mattress', 'Stay cool and comfortable with our Gel-Infused Memory Foam Mattress, perfect for all sleeping positions.', 949.99, 'Beds & Mattresses', 'bed10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_desc` text NOT NULL,
  `product_cost` int(50) NOT NULL,
  `product_category` text NOT NULL,
  `product_image_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_desc`, `product_cost`, `product_category`, `product_image_name`) VALUES
(1, 'infinix', 'This is about infinix phone', 20000, 'phones', 'phone1.jpg'),
(2, '1. iPhone 14', 'The iPhone 14 features a 6.1-inch Super Retina XDR display, A15 Bionic chip, and advanced dual-camera system.', 400000, 'phones', 'phone2.jpg'),
(3, 'smartphones,', 'the Galaxy S23 boasts a 6.1-inch Dynamic AMOLED display, Snapdragon 8 Gen 2 processor, and triple-camera setup for stunning photos.', 60000, 'phones\r\n', 'phone3.jpg'),
(4, 'google Pixel 7', 'The Nord 2 features a 6.43-inch Fluid AMOLED display, MediaTek Dimensity 1200-AI, and a 50 MP main camera for high-quality photography.\r\nCost: $399', 70000, 'phones\r\n', 'phone4.jpg'),
(5, 'onePlus Nord 2', 'The Nord 2 features a 6.43-inch Fluid AMOLED display, MediaTek Dimensity 1200-AI, and a 50 MP main camera for high-quality photography.', 400000, ' phones', 'phone5.jpg'),
(6, 'xiaomi Redmi Note 11', 'the Redmi Note 11 includes a 6.43-inch AMOLED display, Snapdragon 680 processor, and a quad-camera system for versatility.', 50000, 'phones', 'phone6.jpg'),
(7, 'Google Pixel 7', 'The Nord 2 features a 6.43-inch Fluid AMOLED display, MediaTek Dimensity 1200-AI, and a 50 MP main camera for high-quality photography.', 600000, 'phones', 'phone2.jpg'),
(8, 'samsung Galaxy S23', 'The Galaxy S23 boasts a 6.1-inch Dynamic AMOLED display, Snapdragon 8 Gen 2 processor, and triple-camera setup for stunning photos.', 200000, 'phones', 'phone3.jpg'),
(9, 'Dell UltraSharp U2720Q', 'A 27-inch 4K UHD monitor with IPS technology, offering excellent color accuracy and USB-C connectivity.', 80000, 'monitors', 'screen1.jpg'),
(10, 'ASUS ROG Swift PG259QN', 'A 27-inch curved gaming monitor with QHD resolution, a 240Hz refresh rate, and HDR600 support for vibrant visuals.', 400000, 'monitors', 'screen2.jpg'),
(11, 'Samsung Odyssey G7', 'A 27-inch curved gaming monitor with QHD resolution, a 240Hz refresh rate, and HDR600 support for vibrant visuals.', 600000, 'monitors', 'screen3.jpg'),
(12, 'BenQ PD3200U', 'A 32-inch 4K UHD designer monitor with factory-calibrated color accuracy and a variety of display modes.', 800000, 'monitors', 'screen4.jpg'),
(13, 'nt34WN80C-B', ' a 34-inch ultrawide QHD monitor with HDR10 support, ideal for multitasking and immersive experiences.', 400000, ' monitors', 'screen5.jpg'),
(14, 'UltraSharp U2720Q', ' A 27-inch 4K UHD monitor with IPS technology, offering excellent color accuracy and USB-C connectivity.', 70000, 'monitors', 'screen6.jpg'),
(15, 'novo', 'gaming monitor with a 360Hz refresh rate, G-SYNC support, and a 1ms response time for ultra-smooth gameplay.', 400000, 'monitors', 'screen2.jpg'),
(16, 'Odyssey G7', 'A 27-inch curved gaming monitor with QHD resolution, a 240Hz refresh rate, and HDR600 support for vibrant visuals.\r\n', 400000, 'monitors', 'screen3.jpg'),
(17, 'Deluxe Memory Foam Mattress', 'Experience ultimate comfort with our Deluxe Memory Foam Mattress, designed to contour to your body for a restful night’s sleep.', 900, 'Beds ', 'bed1.jpg'),
(18, 'Classic Wooden Bed Frame', 'A timeless piece, this Classic Wooden Bed Frame adds elegance to any bedroom with its sturdy design and rich finish.', 600, 'Bed', 'bed2.jpg'),
(19, 'Adjustable Bed Base', 'Enhance your sleep experience with our Adjustable Bed Base, featuring multiple positions for personalized comfort and support.', 750, 'Beds', 'bed3.jpg'),
(20, 'Luxury Silk Bed Linen Set', 'Indulge in the softness of our Luxury Silk Bed Linen Set, perfect for adding a touch of luxury to your bedding collection.', 300, 'Beds', 'bed4.jpg'),
(21, 'Modern Upholstered Bed', 'This Modern Upholstered Bed combines contemporary style with comfort, featuring plush upholstery and a sleek design.', 750, 'Beds', 'bed5.jpg'),
(22, 'Rustic Farmhouse Bed', 'Bring a cozy feel to your bedroom with our Rustic Farmhouse Bed, crafted from reclaimed wood.', 900, 'Beds', 'bed6.jpg'),
(23, 'Sleek Metal Bed Frame', 'A minimalist design, this Sleek Metal Bed Frame is perfect for modern and industrial-style rooms.', 500, ' Beds', 'sleek_metal_bed_frame.jpg'),
(24, 'Kids Bunk Bed', 'Maximize space with our Kids Bunk Bed, featuring safety rails and a sturdy ladder.', 400, ' Beds', 'kids_bunk_bed.jpg'),
(25, 'Platform Bed with Storage', 'This Platform Bed features built-in storage drawers, ideal for keeping your bedroom organized.', 800, ' Beds', 'platform_bed_with_storage.jpg'),
(26, 'Gel-Infused Memory Foam Mattress', 'Stay cool and comfortable with our Gel-Infused Memory Foam Mattress, perfect for all sleeping positions.', 950, 'Beds & Mattresses', 'gel_memory_foam_mattress.jpg'),
(27, 'Deluxe Memory Foam Mattress', 'Experience ultimate comfort with our Deluxe Memory Foam Mattress, designed to contour to your body for a restful night’s sleep.', 900, 'Beds & Mattresses', 'bed1.jpg'),
(28, 'Classic Wooden Bed Frame', 'A timeless piece, this Classic Wooden Bed Frame adds elegance to any bedroom with its sturdy design and rich finish.', 600, 'Bed Frames', 'bed2.jpg'),
(29, 'Adjustable Bed Base', 'Enhance your sleep experience with our Adjustable Bed Base, featuring multiple positions for personalized comfort and support.', 750, 'Adjustable Beds', 'bed3.jpg'),
(30, 'Luxury Silk Bed Linen Set', 'Indulge in the softness of our Luxury Silk Bed Linen Set, perfect for adding a touch of luxury to your bedding collection.', 300, 'Bedding Accessories', 'bed4.jpg'),
(31, 'Modern Upholstered Bed', 'This Modern Upholstered Bed combines contemporary style with comfort, featuring plush upholstery and a sleek design.', 750, 'Upholstered Beds', 'bed5.jpg'),
(32, 'Rustic Farmhouse Bed', 'Bring a cozy feel to your bedroom with our Rustic Farmhouse Bed, crafted from reclaimed wood.', 900, 'Farmhouse Beds', 'bed6.jpg'),
(33, 'Sleek Metal Bed Frame', 'A minimalist design, this Sleek Metal Bed Frame is perfect for modern and industrial-style rooms.', 500, 'Metal Beds', 'bed6.jpg'),
(34, 'Kids Bunk Bed', 'Maximize space with our Kids Bunk Bed, featuring safety rails and a sturdy ladder.', 400, 'Kids Beds', 'bed7.jpg'),
(35, 'Platform Bed with Storage', 'This Platform Bed features built-in storage drawers, ideal for keeping your bedroom organized.', 800, 'Platform Beds', 'bed8.jpg'),
(36, 'Gel-Infused Memory Foam Mattress', 'Stay cool and comfortable with our Gel-Infused Memory Foam Mattress, perfect for all sleeping positions.', 950, 'Beds & Mattresses', 'bed9.jpg'),
(37, 'Lavender Bath Bomb', 'A relaxing lavender-scented bath bomb for a soothing bath experience.', 6, 'Bath Items', 'bath1.jpg'),
(38, 'Coconut Body Scrub', 'Exfoliating body scrub made with natural coconut and sugar.', 13, 'Bath Items', 'bath2.jpg'),
(39, 'Aloe Vera Gel', 'Soothing aloe vera gel for after-sun skin relief.', 9, 'Bath Items', 'bath3.jpg'),
(40, 'Rose Petal Bath Salts', 'Luxurious bath salts infused with rose petals and essential oils.', 9, 'Bath Items', 'bath4.jpg'),
(41, 'Vanilla Shower Gel', 'Creamy vanilla shower gel for a refreshing cleanse.', 8, 'Bath Items', 'bath5.jpg'),
(42, 'Mint Foot Soak', 'Revitalizing foot soak with mint for tired feet.', 6, 'Bath Items', 'bath6.jpg'),
(43, 'testing product', 'this is testing of product', 1234567, 'phones', 'scott-graham-5fNmWej4tAA-unsplash(1).jpg'),
(44, 'techno f1', 'this is the  best product in the market', 1234567, 'phones', 'jason-goodman-Oalh2MojUuk-unsplash.jpg'),
(45, 'tecno f1', 'this is the best', 2300000, 'phones', 'scott-graham-5fNmWej4tAA-unsplash(1).jpg'),
(46, ' Classic Little Black Dress', 'A timeless staple featuring a fitted silhouette and knee-length hem. Perfect for any occasion, from cocktail parties to formal events.', 1000, 'dresses', 'dress-preez-dlxLGIy-2VU-unsplash.jpg'),
(47, 'Floral Maxi Dress', 'Floral Maxi Dress', 1495, 'dresses', 'dress-onojeghuo-24vjqGCu0pI-unsplash.jpg'),
(48, 'Denim A-Line Dress', 'Casual and chic, this A-line denim dress features a button-down front and adjustable straps for comfort.', 15000, 'dresses', 'dress-komori-9ugEeqflo70-unsplash.jpg'),
(49, 'Bohemian Midi Dress', 'This relaxed-fit midi dress is crafted from lightweight fabric, perfect for a breezy day out. Features intricate embroidery and a tiered design.', 2000, 'dresses', 'dressfleur-fSN3Q_imqrA-unsplash.jpg'),
(50, ' Elegant Evening Gown', '  A stunning floor-length gown with a sweetheart neckline and delicate lace detailing. Perfect for formal occasions and galas.', 1400, 'dresses', 'dresses-1513073_640.jpg'),
(51, 'Off-Shoulder Cocktail Dress', 'A flirty off-shoulder dress with a fitted bodice and flared skirt. Great for cocktail parties or date nights.', 1200, 'dresses', 'dresses1487824_640.jpg'),
(52, 'Summer Wrap Dress', ' A lightweight wrap dress with short sleeves and a tie waist, perfect for warm-weather outings.', 1230, 'dresses', 'dress-du-preez-JGyRJlk3idE-unsplash.jpg'),
(53, 'Vintage Polka Dot Dress', 'Retro-inspired dress featuring a fitted bodice and flared skirt with playful polka dots. A great choice for a fun day out.', 20000, 'dresses', 'dress-du-preez-JGyRJlk3idE-unsplash.jpg'),
(54, 'Elegant Shift Dress', 'A minimalist shift dress with a sleek design and subtle color options. Perfect for work or casual outings.', 13000, 'dresses', 'dress-co-cp-VMJ-mdKs-unsplash.jpg'),
(55, 'Sporty Chic Active Dress', 'Versatile active dress made from moisture-wicking fabric, featuring a racerback and built-in shorts for comfort.', 2000, 'dresses', 'dress-aFpC8nCCJcs-unsplash.jpg'),
(56, ' Urban Explorer Backpack', 'A stylish and functional backpack with multiple compartments, padded straps, and water-resistant fabric—perfect for city adventures.\r\n', 196, 'handbags', 'bag-up-PtnXofJ0-dY-unsplash.jpg'),
(57, 'Classic Leather Tote', 'Timeless leather tote bag featuring a spacious interior and minimalist design, ideal for work or casual outings.', 1200, 'handbags', 'bag-up-6VkFxVrkE-o-unsplash.jpg'),
(58, 'Chic Crossbody Bag', 'Compact crossbody bag with a trendy quilted design and adjustable strap, perfect for hands-free convenience.', 400, 'handbags', 'bag-studio-EzzW1oNek-I-unsplash.jpg'),
(59, ' Sling Bag', 'A compact and functional sling bag with adjustable straps and zippered pockets. Great for travel or outdoor adventures.', 260, 'handbags', 'bag-fathullah-ZjWTjyBiiVA-unsplash.jpg'),
(60, ' Faux Leather Bucket Bag', ' A chic bucket bag with a drawstring closure and stylish tassel detailing. Perfect for everyday wear.', 500, 'handbags', 'bag-fathullah-ZjWTjyBiiVA-unsplash.jpg'),
(61, ' Travel Duffel Bag', 'Spacious duffle bag made from durable canvas, with a stylish striped pattern—ideal for weekend trips or gym sessions.', 4000, 'handbags', 'bag-company-BNJOH2epTwk-unsplash.jpg'),
(62, 'Quilted Mini Bag', 'A stylish mini bag with a quilted design and gold-tone hardware. Perfect for a night out or special occasions.', 1000, 'handbags', 'bag-1866582_640.jpg'),
(63, 'Eco-Friendly Tote Bag', ' Made from recycled materials, this tote bag is perfect for grocery shopping or everyday errands. Lightweight and sturdy.', 1200, 'handbags', 'bag-1478814_1280.jpg'),
(64, 'Classic Dad Cap', 'A relaxed-fit cotton dad cap with an adjustable strap and embroidered logo, perfect for casual outings.', 500, 'cap', 'cap_640.jpg'),
(65, 'Sporty Mesh Snapback', 'A timeless cotton baseball cap with an adjustable strap for a perfect fit. Ideal for casual outings or sunny days.', 400, 'cap', 'cap-6003984_640.webp'),
(66, 'Lightweight Sun Hat', 'A breathable sun hat with a wide brim to provide maximum sun protection. Great for outdoor activities.', 450, 'cap', 'cap-4610011_640.jpg'),
(67, ' Adjustable Trucker Hat', 'Breathable mesh back snapback cap with a structured front panel and bold graphics, ideal for outdoor activities.', 600, 'cap', 'cap-4326461_640.jpg'),
(68, 'Embroidered Beanie', 'A cozy knit beanie featuring an embroidered logo. Ideal for colder weather and casual wear.', 700, 'cap', 'cap-2525910_640.webp'),
(69, 'Sporty Visor Cap', ' Lightweight and breathable visor cap, perfect for sports or outdoor activities. Adjustable for comfort.', 560, 'cap', 'cap-304059_640.webp'),
(70, ': Faux Fur Bucket Hat', ' A stylish faux fur bucket hat that adds a touch of luxury to any outfit. Perfect for winter fashion.', 600, 'cap', 'cap-1625676_640.webp'),
(71, ' Neon Color Beanie', 'A bright and bold neon beanie that keeps you warm while making a statement. Great for casual outings.', 700, 'cap', 'cap-6345767_640.webp'),
(72, ' Classic Cotton Crew Socks', 'Comfortable and breathable cotton crew socks designed for everyday wear. Soft texture and ribbed top for a secure fit.', 120, 'socks', 'socks-1578652_640.jpg'),
(73, ' Athletic Performance Socks', 'Moisture-wicking athletic socks with arch support and cushioning for maximum comfort during workouts. Ideal for running and sports.', 140, 'socks', 'sock-7068273_640.jpg'),
(74, 'Fun Patterned Ankle Socks', 'Moisture-wicking athletic socks with arch support and cushioning for maximum comfort during workouts. Ideal for running and sports.', 200, 'socks', 'sock-1322489_640.jpg'),
(75, 'Merino Wool Dress Socks', 'Luxurious merino wool dress socks that provide warmth and breathability. Perfect for formal occasions or office wear.', 200, 'socks', 'sock-1260368_640.jpg'),
(76, 'Eco-Friendly Bamboo Socks', 'Sustainable bamboo socks that are soft, breathable, and moisture-wicking. Great for the environmentally conscious shopper.', 300, 'socks', 'sock-19562_640.jpg'),
(77, 'Novelty Holiday Socks', 'Festive holiday-themed socks featuring cheerful designs. Perfect for celebrating the season in style.', 300, 'socks', 'sock-1322489_640.jpg'),
(78, 'Athletic No-Show Socks', 'Low-cut no-show socks with silicone grips to prevent slipping. Ideal for wearing with sneakers during workouts.', 230, 'socks', 'sock-7068273_640.jpg'),
(79, ' Classic Leather Belt', 'Durable and lightweight canvas belt with a sturdy metal buckle. Ideal for everyday wear and outdoor activities.', 340, 'belt', 'belts-2735438_640.webp'),
(80, 'Woven Stretch Belt', ' A comfortable woven stretch belt that adjusts to fit various sizes. Perfect for a casual, laid-back look.', 450, 'belt', 'belts-1688135_640.jpg'),
(81, ' Stylish Suede Belt', 'A soft suede belt with a polished buckle, adding a touch of elegance to any outfit. Great for dressy occasions.', 500, 'belt', 'belt-buckle-5059_640.jpg'),
(82, 'Vintage Leather Braided Belt', 'A retro-inspired braided leather belt with a unique buckle design. Perfect for adding character to your wardrobe.', 2000, 'belt', 'belt-2172333_640.jpg'),
(83, 'Reversible Nylon Belt', ' versatile nylon belt that can be flipped for two different colors. Ideal for travel and everyday wear.', 3450, 'belt', 'belt-2146914_640.jpg'),
(84, ' Fashionable Studded Belt', 'A bold belt adorned with stylish studs, perfect for making a statement and adding flair to any outfit.', 4560, 'belt', 'belt-952836_640.jpg'),
(85, ' Tactical Web Belt', 'A heavy-duty web belt designed for durability and strength, perfect for outdoor activities and military-style looks.', 3450, 'belt', 'belt-924734_640.jpg'),
(86, 'Simple Buckle Dress Belt', 'A sleek dress belt with a minimalist buckle, suitable for formal occasions or business attire.', 500, 'belt', 'belt-210449_640.jpg'),
(87, 'Colorful Fabric Belt', 'A fun and vibrant fabric belt that adds a pop of color to your outfit. Great for casual wear in the summer.', 450, 'belt', 'belt-193226_640.jpg'),
(88, 'Compression Recovery Socks', 'Ideal for post-workout recovery, these compression socks promote blood circulation and reduce muscle fatigue. Lightweight and breathable, they’re perfect for both athletic and everyday wear. ', 450, 'socks', 'sock-5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `username` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
