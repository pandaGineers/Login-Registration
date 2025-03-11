-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2025 at 07:00 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `product_data`
--

-- --------------------------------------------------------

--
-- Table structure for table `karukunjo`
--

CREATE TABLE `karukunjo` (
  `Product_Id` varchar(255) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Colour` varchar(100) NOT NULL,
  `Material` varchar(100) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Price` varchar(10000) NOT NULL,
  `Description` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `karukunjo`
--

INSERT INTO `karukunjo` (`Product_Id`, `Name`, `Colour`, `Material`, `Type`, `Price`, `Description`) VALUES
('Product_Id', 'Name', 'Colour ', 'Material ', 'Type', 'Price ', 'Description'),
('1', 'Beige Printed Jute Runner', 'Beige', 'Jute', 'Runner', '1700', 'ajdajdb'),
('', 'Jute Printed and Embroidered  Runner', 'Mullticolour', 'Jute', 'Runner', '', ''),
('', 'Red Printed Jute Runner', 'Red', 'Jute', 'Runner', '', ''),
('', 'Grey Cotton Runner', 'Gray', 'Cotton', 'Runner', '', ''),
('', 'Ivory Cotton Runner', 'Ivory', 'Cotton', 'Runner', '', ''),
('', ' Sage Green Cotton Runner', 'Sage Green', 'Cotton', 'Runner', '', ''),
('', ' Bottle Green Cotton Runner', 'Bottle Green', 'Cotton', 'Runner', '', ''),
('', 'Red Cotton Runner', 'Red', 'Cotton', 'Runner', '', ''),
('', ' Orange Cotton Runner', 'Orange', 'Cotton', 'Runner', '', ''),
('', 'Magenta Cotton Runner', 'Magenta', 'Cotton', 'Runner', '', ''),
('', 'Brown Cotton Runner', 'Brown', 'Cotton', 'Runner', '', ''),
('', ' Dark Brown Cotton Runner', 'Dark Brown', 'Cotton', 'Runner', '', ''),
('', 'Coffee Cotton Runner', 'Coffee', 'Cotton', 'Runner', '', ''),
('', ' Dark Magenta Woven Cotton Runner', 'Dark Magenta', 'Cotton', 'Runner', '', ''),
('', 'Cyan Printed Cotton Runner', 'Cyan', 'Cotton', 'Runner', '', ''),
('', ' Lime Green Woven Cotton Runner', 'Lime Green', 'Cotton', 'Runner', '', ''),
('', ' Rust Woven Cotton Runner', 'Rust', 'Cotton', 'Runner', '', ''),
('', ' Yellow Woven Cotton Runner', 'Yellow', 'Cotton', 'Runner', '', ''),
('', 'Navy Blue Woven Cotton Runner', 'Navy BLue', 'Cotton', 'Runner', '', ''),
('', ' Black Woven Cotton Runner', 'Black', 'Cotton', 'Runner', '', ''),
('', ' Plum Embroidered Cotton Runner', 'Plum', 'Cotton', 'Runner', '', ''),
('', ' Pastel Green Woven Cotton Runner', 'Pastle Green', 'Cotton', 'Runner', '', ''),
('', 'Maroon Cotton Runner', 'Maroon', 'Cotton', 'Runner', '', ''),
('', ' Mint Green Cotton Runner', 'Mint Green', 'Cotton', 'Runner', '', ''),
('', 'Light Yellow Woven Cotton Runner', 'Light Yellow', 'Cotton', 'Runner', '', ''),
('', 'Blue Woven Cotton Runner', 'Blue', 'Cotton', 'Runner', '', ''),
('', 'Red/Pink Cotton Runner Set', 'Red-Pink', 'Cotton', 'Runner', '', ''),
('', ' Purple/Green Cotton Runner Set', 'Purple-Green', 'Cotton', 'Runner', '', ''),
('', ' Blue/Pink Cotton Runner Set', 'Blue-Pink', 'Cotton', 'Runner', '', ''),
('', ' Red/Black Woven Cotton Runner', 'red-Black', 'Cotton', 'Runner', '', ''),
('', ' Pink/Mustard Woven Cotton Runner', 'Pink-Mustard', 'Cotton', 'Runner', '', ''),
('', 'Multicolor Cotton Runner', 'Multicolor', 'Cotton', 'Runner', '', ''),
('', 'Multicolor Cotton Runner Set', 'Multicolor', 'Cotton', 'Runner', '', ''),
('', 'Multicolor Cotton Runner With Placemat and Napkins', 'Mullticolor', 'Cotton', 'Runner', '', ''),
('', ' White Printed and Embroidered Woven Cotton Runner', 'White', 'Cotton', 'Runner', '', ''),
('', 'Grey Printed and Embroidered Cotton Runner', 'Grey', 'Cotton', 'Runner', '', ''),
('', 'Purple Printed and Embroidered Cotton Runner', 'Purple', 'Cotton', 'Runner', '', ''),
('', 'Grey-Blue Appliqued and Printed Dupioni Silk Runner', 'Grey-Blue', 'Cotton', 'Runner', '', ''),
('', 'Lavender Printed and Embroidered Woven Cotton Runner', 'Lavender', 'Cotton', 'Runner', '', ''),
('', 'Puzzle Design Printed Ceramic Cup and Saucer', '', 'Ceramic', 'Cup and Saucer', '', ''),
('', 'Barfi Design Ceramic Cup and Saucer', '', 'Ceramic', 'Cup and Saucer', '', ''),
('', 'Black Printed Ceramic Cup and Saucer', '', 'Ceramic', 'Cup and Saucer', '', ''),
('', 'Red Printed Ceramic Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'Rickshaw Painted Ceramic Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'Multicolour Printed Porcelain Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'White Printed Ceramic Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'Multicolour Printed Ceramic Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'White Ceramic Mug', '', 'Ceramic', 'Mug', '', ''),
('', 'Maple Leaf Printed Ceramic Dessert Plate - 24 CM', '', 'Ceramic', 'Plate', '', ''),
('', 'Maple Leaf Printed Ceramic Serving Plate - 28 CM', '', 'Ceramic', 'Plate', '', ''),
('', 'Maple Leaf Printed Ceramic Dinner Plate - 28 CM', '', 'Ceramic', 'Plate', '', ''),
('', 'White Printed Ceramic Half Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Barfi Design Ceramic Half Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Ceramic Half Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Barfi Design Ceramic Dinner Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Floral Ceramic Half Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Olive Lace Design Ceramic Finger Bowl - 16 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Pink Ceramic Bubble Bowl - 13 Cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Ceramic Bowl', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Ceramic Plate', '', 'Ceramic', 'Bowl', '', ''),
('', 'Clay Pot', '', 'Clay', 'Pot', '', ''),
('', 'Clay Casserole with Lid - Medium', '', 'Clay', 'Casserole', '', ''),
('', 'Clay Casserole with Lid - Big', '', 'Clay', 'Casserole', '', ''),
('', 'Clay Round Bowl- Small', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Mini Pot', '', 'Clay', 'Pot', '', ''),
('', 'Clay Mini Serving Bowl', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Bowl-Small', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Bowl-Medium', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Bowl-Big', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Deep Curve Nakshi Curry Bowl With Lid', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Deep Curve Round Curry Bowl With Lid', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Deep Curve Nakshi Curry Bowl- Small', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Quarter Plate', '', 'Clay', 'Plate', '', ''),
('', 'Clay Quarter Plate-Small', '', 'Clay', 'Plate', '', ''),
('', 'Clay Dinner Plate', '', 'Clay', 'Plate', '', ''),
('', 'Clay Rice Plate-Big', '', 'Clay', 'Plate', '', ''),
('', 'Clay Round Bowl-Big', '', 'Clay', 'Bowl', '', ''),
('', 'Clay Flower Shape Bowl - Big', '', 'Clay', 'Bowl', '', ''),
('', 'Wooden Square Snacks Plate- Big', '', '', 'Plate', '', ''),
('', 'Natural Wooden Tray', '', '', 'Tray', '', ''),
('', 'Wooden Mug', '', '', 'Mug', '', ''),
('', 'Wooden Tray', '', '', 'Tray', '', ''),
('', 'Bamboo Fiber Fruit Basket - Big ', '', 'Bamboo', 'Basket', '', ''),
('', 'Natural Date Leaf Fruit Basket - Small ', '', 'Date Leaf', 'Basket', '', ''),
('', 'Cane Fruit Basket ', '', 'Cane', 'Basket', '', ''),
('', 'Cane Fruit Basket ', '', 'Cane', 'Basket', '', ''),
('', 'Wooden Office Stationary Holder ', '', 'Wood', 'Stationary Holder', '', ''),
('', 'Wooden Pineapple Wall Hanger ', '', 'Wood', 'Wall Hanger', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool', '', 'Wood', 'Stool', '', ''),
('', 'Wooden Stool ', '', 'Wood', 'Stool', '', ''),
('', 'Mahogany Three Wheeler Car ', '', 'Wood', 'Toy', '', ''),
('', 'Wooden Cannon Toy ', '', 'Wood', 'Toy', '', ''),
('', 'Wooden Boat ', '', 'Wood', 'Toy', '', ''),
('', 'Wooden Fork and Spoon Set', '', 'Wood', 'Spoon', '', ''),
('', 'Wooden Salt Pot', '', 'Wood', 'Pot', '', ''),
('', 'Red Printed Ceramic Sugar Pot', '', '', 'Pot', '', ''),
('', 'White Nakshi Kantha Cotton Tea Cosy', '', 'Cotton', 'Tea Cosy', '', ''),
('', 'Clay Jug with Lid', '', 'Clay', 'Jug', '', ''),
('', 'Engraved Clay Glass', '', 'Clay', 'Glass', '', ''),
('', 'Cane Basket', '', 'Cane', 'Basket', '', ''),
('', 'Cane Fruit Basket', '', 'Cane', 'Basket', '', ''),
('', 'Wrought Iron Fruit Basket', '', 'Iron', 'Basket', '', ''),
('', 'Beige Embroidered Dupioni Cotton Cushion Cover', '', 'Cotton', 'Cushion Cover', '', ''),
('', 'Ivory Printed Ceramic Half Plate-21 cm', '', 'Ceramic', 'Plate', '', ''),
('', 'White Jamdani Printed Ceramic Dinner Plate - 27.5 cm', '', 'Ceramic', 'Plate', '', ''),
('', 'White Jamdani Printed Ceramic Half Plate - 19.75 cm', '', 'Ceramic', 'Plate', '', ''),
('', 'Mint Green Printed Half Plate - 21 cm', '', 'Ceramic', 'Plate', '', ''),
('', 'Yellow Ceramic Dinner Platter - 36 cm', '', 'Ceramic', 'Plater', '', ''),
('', 'Grey-Green Ceramic Dinner Platter - 36 cm', '', 'Ceramic', 'Plater', '', ''),
('', 'Blue Ceramic Dinner Plate', '', 'Ceramic', 'Plate', '', ''),
('', 'Ivory Ceramic Bowl - 16.5 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Ivory Stacking Ceramic Bowl-11 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Ivory Stacking Ceramic Bowl-20 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Red Printed Ceramic Curry Bowl-11 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Ivory Printed Ceramic Salad Bowl - 23 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Pastel Yellow Printed Ceramic Salad Bowl - 20 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Ceramic Flower Design Bowl - 20 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Green Ceramic Small Bowl - 14 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Olive Leaf Design Ceramic Small Bowl - 13.5 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Pink Small Glazed Ceramic Bowl - 15 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Printed Ceramic Small Bowl - 16.5 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Printed Ceramic Medium Bowl - 20 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Printed Ceramic Small Bowl - 19 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Jamdani Printed Ceramic Small Bowl-16.5 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Jamdani Printed Ceramic Medium Bowl-19 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Jamdani Printed Ceramic Medium Bowl-21 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'White Jamdani Printed Ceramic Big Bowl-23 cm', '', 'Ceramic', 'Bowl', '', ''),
('', 'Natural Jute Coaster', '', 'Jute', 'Coaster', '', ''),
('', 'Engraved Mahogany Wood Coaster', '', 'Wood', 'Coaster', '', ''),
('', 'Coconut Shell Coaster', '', 'Coconut Shell', 'Coaster', '', ''),
('', 'Carved Wooden Coaster', '', 'Wood', 'Coaster', '', ''),
('', 'Wooden Coaster', '', 'Wood', 'Coaster', '', ''),
('', 'Recycled Handmade Paper Greetings Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Paper Greetings Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Greetings Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Paper Greetings Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Greeting Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Paper Greetings Card ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Recycled Handmade Paper Greeting Card with Box ', '', 'Paper', 'Greeting Cards', '', ''),
('', 'Multicolour Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Charcoal Grey Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Multicolour Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'White Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Flower Design Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Multicolour Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown/Peach Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Yellow Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Grey Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Coffee Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'White Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Orange Woollen Carpet (4, 5, 6 & 7 Feet Sizes Available)', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Fuchsia Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Multicolour Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Dusty Pink Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Grey Woollen Jamdani Carpet (2.5 Ft x 4 Ft) ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Off White Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Ivory Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'White Woollen Carpet (5 x 3 Feet)', '', 'Wool ', 'Carpet', '', ''),
('', 'Off White Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Yellow Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Blue Woollen Carpet', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown Woollen Carpet (2.5 x 4 Feet) ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet (2.5 FT x 7 FT) ', '', 'Wool ', 'Carpet', '', ''),
('', 'White Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Maroon Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Grey Woollen Carpet (Multiple Sizes)', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Grey Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'White Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Deep Orange Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Grey Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Deep Green Woollen Carpet (4, 5 & 6 Feet Sizes Available)', '', 'Wool ', 'Carpet', '', ''),
('', 'Red Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Living Room Mat (2.5 Feet) ', '', 'Wool ', 'Carpet', '', ''),
('', 'Black Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Beige Woollen Carpet ', '', 'Wool ', 'Carpet', '', ''),
('', 'Brown Woollen Doormat ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Yellow Woollen Door Mat (2 Ft x 3 Ft)', '', 'Wool ', 'Door Mat', '', ''),
('', 'Charcoal Grey Woollen Door Mat (3 x 2 Feet) ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Teal Woollen Carpet (2 Ft x 3 Ft)', '', 'Wool ', 'Door Mat', '', ''),
('', 'Teal Woollen Bed Mat (2 Ft x 3 Ft)', '', 'Wool ', 'Door Mat', '', ''),
('', 'Light Grey Woollen Door Mat (2.5 x 1.5 Feet) ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Multicolour Woollen Door Mat ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Beige Woollen Door Mat (1.5 Ft x 2.5 Ft)', '', 'Wool ', 'Door Mat', '', ''),
('', 'Red Woollen Door Mat (3 FT x 2 FT) ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Black Woollen Door Mat (2 x 1.5 Feet)', '', 'Wool ', 'Door Mat', '', ''),
('', 'Beige Woollen Door Mat ', '', 'Wool ', 'Door Mat', '', ''),
('', 'Red Woollen Door Mat', '', 'Wool ', 'Door Mat', '', ''),
('', 'Brown Woollen Door Mat', '', 'Wool ', 'Door Mat', '', ''),
('', 'Pastel Green Embroidered Cotton Quilt', '', 'Cotton', 'Quilt', '', ''),
('', 'Purple Embroidered Cotton-Polyester Quilt ', '', 'Cotton', 'Quilt', '', ''),
('', 'Olive Green Embroidered Dupioni Silk & Cotton Quilt ', '', 'Cotton', 'Quilt', '', ''),
('', 'Midnight Blue Kids Playful Cotton Quilt', '', 'Cotton', 'Quilt', '', ''),
('', 'Ivory Cotton Kantha Embroidered Quilt ', '', 'Cotton', 'Quilt', '', ''),
('', 'Grey Erri Embroidered Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Carved Wooden Photo Frame 4x6 in', '', 'Wood', 'Photo Frame', '', ''),
('', 'Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Black Printed Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Brown Printed Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Brown Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Red Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Orange Embossed Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Dark Brown Gamari Wood Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Grey Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Maroon Appliqued Leather Photo Frame - Medium', '', 'Leather', 'Photo Frame', '', ''),
('', 'Golden Jamdani Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Brown Foldable Printed Recycled Handmade Paper Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Brown Printed Recycled Handmade Paper Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Wooden and Resin Photo Frame 4x4 In', '', 'Wood', 'Photo Frame', '', ''),
('', 'Red Wooden Photo Frame with Stand', '', 'Wood', 'Photo Frame', '', ''),
('', 'Beige Faux Embroidered Leather Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Carved Wooden Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Wooden Arch Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Golden Faux Leather Photo Frame 4 x 6 In', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Copper Embroidered Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Golden Embroidered Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Multi Panel Photoframe', '', '', 'Photo Frame', '', ''),
('', 'Wooden Sea Horse Design Hanging/Standing Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Blue Textured Plywood Wall Hanging Photo Frame (4 x 6 in)', '', '', 'Photo Frame', '', ''),
('', 'Burgundy Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'White Folding Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Funky Striped Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Pink Erri Embroidered Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Olive Erri Embroidered Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'White Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Bamboo Painted Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Peacock Blue Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Embroidered Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Red Printed Genuine Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Chocolate Leather Photo Frame-5 X 7 inch', '', 'Leather', 'Photo Frame', '', ''),
('', 'Maroon Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Tan Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Appliqued Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Red Jamdani Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Jute Embroidered Photo Frame - Big', '', 'Jute', 'Photo Frame', '', ''),
('', 'Orange Jute Photo Frame', '', 'Jute', 'Photo Frame', '', ''),
('', 'Purple Velvet Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Black Velvet Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Maroon Embroidered Mixed Silk Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Grey Erri Embroidered Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Black Printed and Embroidered Velvet Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Maroon Jamdani Embossed Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Brown Embossed Leather Photo Frame 3 x 3 in', '', 'Leather', 'Photo Frame', '', ''),
('', 'Tan Faux Leather Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Red and Black Embossed Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Orange Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Brown Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Brass and Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Deep Brown Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Green Wooden Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Blue Erri Embroidered Photo Frame', '', '', 'Photo Frame', '', ''),
('', 'Pyrographed Wood Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Light Brown Faux Leather Photo Frame', '', 'Leather', 'Photo Frame', '', ''),
('', 'Wooden Engraved Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Black Pyrographed and Carved Photo Frame', '', 'Wood', 'Photo Frame', '', ''),
('', 'Doll House Jute Rug & Plant Holder', '', 'Jute', 'Toy', '', ''),
('', 'Doll House Jute Rugs', '', 'Jute', 'Toy', '', ''),
('', 'Doll House Jute Rugs & Plant Holder', '', 'Jute', 'Toy', '', ''),
('', 'Magenta Printed Jute Toy Box ', '', 'Jute', 'Toy', '', ''),
('', 'Pink Jute Toy Storage ', '', 'Jute', 'Toy', '', ''),
('', 'Brass Kids Kitchen Utensils', '', 'Brass', 'Toy', '', ''),
('', 'Clay Terracotta Hari Patil Set (13 Pcs in a set) ', '', 'Clay', 'Toy', '', ''),
('', 'Clay Terracotta Hari Patil Set (12 Pcs in a set) ', '', 'Clay', 'Toy', '', ''),
('', 'Black Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Black Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Maroon Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Maroon Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Red Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Grey Tie-Dyed and Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'White Nakshi Kantha Embroidered Cotton Bed Cover ', '', 'Cotton', 'Nakshi Kantha', '', ''),
('', 'Maroon Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Peach Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Light Brown Nakshi Kantha Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Deep Green Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Blue-Grey Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'White Tie-Dyed Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Off White Nakshi Kantha Embroidered Dupioni Silk Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Light Pink Nakshi Kantha Embroidered Cotton Cushion Cover', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'White Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'White Nakshi Kantha Embroidered Cotton Cushion Cover ', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Light Pink Nakshi Kantha Embroidered Cotton Cushion Cover', '', 'Cotton', 'Cushin Cover', '', ''),
('', 'Recycled Handmade Paper Photo Frame', '', 'Paper', 'Photo Frame', '', ''),
('', 'Orange Recycled Handmade Paper Photo Frame', '', 'Paper', 'Photo Frame', '', ''),
('', 'Recycled Handmade Paper Jewellery Box ', '', 'Paper', 'Jewlery  Box', '', ''),
('', 'Recycled Handmade Paper Gift Box ', '', 'Paper', 'Gift Box', '', ''),
('', 'Recycled Handmade Paper Memo Pad Box ', '', 'Paper', 'Memo Pad Box', '', ''),
('', 'Recycled Handmade Paper Gift Box ', '', 'Paper', 'Gift Box', '', ''),
('', 'Beige/Red Wall Hanging Recycled Paper Bird', '', 'Paper', 'Toy', '', ''),
('', 'Turquoise Wall Hanging Recycled Paper Ball', '', 'Paper', 'Toy', '', ''),
('', 'Yellow Wall Hanging Recycled Paper Ball', '', 'Paper', 'Toy', '', ''),
('', 'Multicolour Brush Painted Recycle Handmade-Jute Ball Hanging ', '', 'Jute', 'Toy', '', ''),
('', 'Recycled Handmade Paper Mirror ', '', 'Paper', 'Mirror', '', ''),
('', 'Recycled Handmade Paper Mirror ', '', 'Paper', 'Mirror', '', ''),
('', 'Recycled Handmade Paper Mirror', '', 'Paper', 'Mirror', '', ''),
('', 'Recycled Handmade Paper Hatpakha (Hand Fan) ', '', 'Paper', 'Hatpakha', '', ''),
('', 'Aqua Soft Doll ', '', '', 'Toy', '', ''),
('', 'Stuffed Doll ', '', 'Cotton', 'Toy', '', ''),
('', 'Yellow Tuktuki Doll', '', 'Cotton', 'Toy', '', ''),
('', 'Red Cotton Toy ', '', 'Cotton', 'Toy', '', ''),
('', 'Magenta Printed Jute Toy Box ', '', 'Jute', 'Toy', '', ''),
('', 'Brass Kids Kitchen Utensils ', '', 'Brass', 'Toy', '', '');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
