-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 05:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'admin', '2021-12-15 20:35:35', '2021-12-15 20:35:35');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'Horizontal notebook', 'Horizontal notebook', '2021-12-15 20:35:35', ''),
(2, 'Sewing book', 'Sewing book', '2021-12-15 20:15:26', ''),
(3, 'Panel notebook', 'Panel notebook', '2021-12-15 20:30:35', ''),
(4, 'Spring book', 'Spring book', '2021-12-15 20:15:25', ''),
(5, 'School things', 'School things', '2021-12-15 20:30:35', ''),
(6, 'Print paper, copy paper', 'Print papaer', '2021-12-15 20:15:25', ''),
(7, 'Leather book', 'Leather book', '2021-12-15 20:30:35', ''),
(8, 'Hardcover book', 'Hardcover book', '2021-12-15 20:15:25', ''),
(9, 'Pin book', 'Pin book', '2021-12-15 20:30:35', ''),
(10, 'Stationery Double A', 'Stationery Double A', '2021-12-15 20:15:25', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(3, 6, '18', 1, '2021-12-24 12:00:46', 'COD', 'Delivered'),
(4, 6, '18', 1, '2021-12-24 13:28:34', 'COD', 'in Process'),
(5, 6, '8', 1, '2021-12-24 13:29:57', 'COD', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int(11) NOT NULL,
  `orderId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordertrackhistory`
--

INSERT INTO `ordertrackhistory` (`id`, `orderId`, `status`, `remark`, `postingDate`) VALUES
(5, 3, 'Delivered', 'done', '2021-12-24 12:19:34'),
(6, 5, 'Delivered', 'done', '2021-12-24 13:30:24'),
(7, 4, 'in Process', 'processing', '2021-12-24 14:11:44');

-- --------------------------------------------------------

--
-- Table structure for table `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `quality` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` varchar(255) NOT NULL,
  `review` longtext NOT NULL,
  `reviewDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '0000-00-00 00:00:00'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '0000-00-00 00:00:00'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '0000-00-00 00:00:00'),
(5, 11, 4, 3, 5, 'tu', 'good', 'good', '2021-12-15 17:01:58');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subCategory` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `productCompany` varchar(255) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `productPriceBeforeDiscount` int(11) NOT NULL,
  `productDescription` longtext NOT NULL,
  `productImage1` varchar(255) NOT NULL,
  `productImage2` varchar(255) NOT NULL,
  `productImage3` varchar(255) NOT NULL,
  `shippingCharge` int(11) NOT NULL,
  `productAvailability` varchar(255) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(6, 1, 3, 'Hai Tien Horizontal dotted notebook Haplus - Chill 120 pages', 'Hai Tien', 3, 4, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Horizontal line with dots - Dimensions: 179x252 mm (B5) - Paper weight: 60 g/m2 - Whiteness: 90-92ISO - Modern multi-layer adhesive notebook</span>', 'haplusdot(1).jfif', 'haplusdot(2).jfif', 'haplusdot(3).jfif', 1, 'In Stock', '2021-12-15 15:46:29', ''),
(7, 1, 1, 'HAI TIEN Horizontal Haplus ', 'Hai Tien', 3, 4, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Product information: - Dimensions: 179x252 mm (B5) - Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Modern multi-layer glued notebook, square spine, easy to flip open </span><br>', 'Sp2(1).jfif', 'Sp2(2).jfif', 'Sp2(3).jfif', 0, 'In Stock', '2021-12-15 15:58:31', ''),
(8, 1, 2, 'Hai Tien Horizontal Haplus 80 pages', 'Hai Tien', 5, 10, '<div>Dimensions: 179x252 mm (B5) - Paper weight: 60 g/m2 - Whiteness: 90-92ISO - Modern multi-layer laminated notebook</div><div>, square spine, easy flip open - Delivered sample Smooth surface, smooth writing Haplus</div>', 'SP3_1.jfif', 'SP3_2.jfif', 'SP3_3.jfif', 0, 'In Stock', '2021-12-15 16:30:55', ''),
(9, 2, 4, 'HAI TIEN Sewing book A5- Personal Note 200 pages', 'Hai Tien', 6, 12, 'Product information: - Size: 150x210mm (A5) - Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Random sample delivery Smooth surface, smooth writing Hai Tien sewing book has smooth surface Smooth, smooth handwriting, beautiful handwriting<br>', 'Sp4_1.jfif', 'Sp4_2.jfif', 'Sp4_3.jfif', 0, 'In Stock', '2021-12-15 16:43:17', ''),
(10, 2, 5, 'Hai Tien Sewing book with A4 Rainbow 300 pages', 'Hai Tien', 3, 6, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Dimensions: 210x297mm (A4) - Paper weight: 60 g/m2 - Whiteness: 92-95ISO - Random delivery pattern - High quality, thick back cover Smooth surface, smooth writing Notebook Hai Tien A4 Rainbow has a smooth surface, smooth handwriting, and beautiful handwriting</span><br>', '5.1.jfif', '5.2.jfif', '5.3.jfif', 2, 'In Stock', '2021-12-15 16:53:56', ''),
(11, 2, 6, 'Hai Tien Sewing book A4 Sunshine 400 pages', 'Hai Tien', 8, 15, '<font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Size: 210x297mm (A4) - Paper weight: 60 g/m2 - Whiteness: 92-95ISO - Random sample delivery Smooth surface, smooth writing Hai Tien A4 Sunshine sewing book is available Smooth paper, smooth handwriting, beautiful handwriting. </font><font class=\"\" style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper does not smudge, does not absorb ink to the next page</font><br>', '6.1.jfif', '6.2.jfif', '6.3.jfif', 3, 'In Stock', '2021-12-15 16:59:48', ''),
(12, 3, 8, 'HAI TIEN 7 Stars High-class - Ban Mai 80 pages', 'Ban Mai', 3, 6, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">The notebook has clear and regular 4 squares (2.5x2.5)mm lines Paper with natural whiteness - anti-eye strain -Dimensions: 170x240 mm -Paper weight: 120 g/m2 -Whiteness: 95ISO - Random delivery of samples. Smooth surface, smooth handwriting, suitable for elementary school students to practice letters</span><br>', '7.1.jfif', '7.2.jfif', '7.3.jfif', 2, 'In Stock', '2021-12-15 17:09:33', ''),
(13, 3, 7, 'Hai Tien High-class 4-panel notebook - 48 pages', 'Hai Tien', 7, 10, 'The notebook has clear and regular lines - The paper has natural whiteness - prevents eye strain - Dimensions: 170x240 mm - Paper weight: 100 g/m2 - Whiteness: 95ISO - Random delivery sample - 4 cups 2 ,5x2.5mm Smooth surface, smooth handwriting, suitable for elementary school students to practice letters<br>', '8.1.jfif', '8.2.jfif', '8.3.jfif', 2, 'In Stock', '2021-12-15 17:16:12', ''),
(14, 3, 7, 'Hai Tien Advanced Smartkids - Anti-glare notebook 48 pages', 'Hai Tien', 9, 15, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Notebook with clear and regular 4 squares (2.5x2.5)mm lines Paper with natural whiteness - anti-eye strain - Dimensions: 170x240 mm - Paper weight: 100 g/m2 - Whiteness: 76ISO - Random delivery sample Smooth paper surface</span><br>', '9.1.jfif', '9.2.jfif', '9.3.jfif', 2, 'In Stock', '2021-12-15 17:22:31', ''),
(15, 4, 9, 'Hai Tien Business spring book A4 ', 'Hai Tien', 10, 15, 'Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Random sample delivery Smooth surface, smooth writing Notebook Spring has smooth paper surface, smooth handwriting, beautiful handwriting . Paper does not smudge, does not absorb ink to the next page. Paper material is dust-free, ensuring the health of users<br>', '10.1.jfif', '10.2.jfif', '10.3.jfif', 3, 'In Stock', '2021-12-15 17:27:41', ''),
(16, 4, 10, 'Hai Tien Home B5 premium spring book', 'Hai Tien', 8, 12, 'Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Random delivery pattern - High-grade thick back cover Smooth paper surface, smooth writing Notebook Spring high-grade back cover Home is present Smooth paper, smooth handwriting, beautiful handwriting.&nbsp;<br>', '11.1.jfif', '11.2.jfif', '11.3.jfif', 2, 'In Stock', '2021-12-15 17:33:19', ''),
(17, 5, 11, 'HAI TIEN Senior high school test paper', 'Hai Tien', 2, 3, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Premium test paper with clear, regular lines Paper with natural whiteness Dimensions: 175x250 mm Paper weight: 70 g/m2 Whiteness: 90-92ISO Convenient for students to use for testing Paper Good ink adhesion, waterproof, not smudge when writing.</span><br>', '12.1.jfif', '12.2.jfif', '12.3.jfif', 3, 'In Stock', '2021-12-15 17:37:37', ''),
(18, 5, 12, 'HAI TIEN A3 Drawing Book - 3 Volumes Glued Back', 'Hai Tien', 10, 15, 'Size: A3 - Paper weight: 100 g/m2 - Whiteness: 95ISO (White paper) or 76ISO (Yellow paper) - Random delivery sample Smooth surface, smooth handwriting, suitable for elementary students practice drawing<br>', '13.1.jfif', '13.2.jfif', '13.3.jfif', 2, 'In Stock', '2021-12-15 17:42:23', ''),
(19, 5, 13, 'Double A Tritouch Ballpoint Pen with 0.7mm', 'Double A', 1, 2, 'Brand: Double A Origin: Thailand - Makes the handwriting beautiful and clear. - When writing, the ball head rolls smoothly, the ink is not broken,<br>', '14.1.jfif', '14.3.jfif', '14.2.jfif', 2, 'In Stock', '2021-12-15 17:49:47', ''),
(20, 6, 14, 'Printing paper, photocopy paper Double A A4', 'Hai Tien', 3, 5, 'Paper weight 80 g/m2. - Paper surface has outstanding smoothness to minimize paper jams. Double A paper has been tested to run through a high-speed copier continuously for 24 hours with no paper jams.<br>', '15.1.jfif', '15.2.jfif', '15.3.jfif', 2, 'In Stock', '2021-12-15 17:57:34', ''),
(21, 6, 14, 'HAI TIEN Printing Paper Quality A4', 'Hai Tien', 20, 25, '<font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper weight 70 g/m2. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">- Paper surface has outstanding smoothness to minimize paper jams. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper Quality has been tested to run through a high-speed copier continuously for 24 hours with no paper jams.</font><br>', '16.1.jfif', '16.2.jfif', '16.3.jfif', 3, 'In Stock', '2021-12-15 18:01:40', ''),
(22, 7, 16, 'HAI TIEN Galaxy 8 Premium Notebook', 'Hai Tien', 7, 8, 'Product information: - KT: 175x250 (G8) - Paper weight: 70 g/m2 - Whiteness: 76ISO - Padded leather cover, magnetic snaps - Random delivery color/pattern The manual is manufactured and processed directly by the factory of Hai Tien Paper Company, with 30 years of experience in making notebooks and notebooks.<br>', '17.1.jfif', '17.2.jfif', '17.3.jfif', 2, 'In Stock', '2021-12-15 18:06:38', ''),
(23, 7, 16, 'HAI TIEN A4 Business Leather Book', 'Hai Tien', 2, 5, 'KT: BA4 (210x300) - Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Leather cover - Color/pattern random delivery Smooth surface, smooth writing Handbook Faux leather cover Business - Hai Tien has smooth paper surface, smooth handwriting, beautiful handwriting.<br>', '18.1.jfif', '18.2.jfif', '18.3.jfif', 1, 'In Stock', '2021-12-15 18:10:05', ''),
(24, 8, 17, 'HAI TIEN Hardcover Journal', 'Hai Tien', 2, 3, '<font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Dimensions: 135x190 (J5) - 150x210 (J6) - 165x240 (J8) - Paper weight: 70 g/m2 - Color/pattern random delivery. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Hardcover material, beautiful design Hai Tien Journal hardcover book has compact size, convenient, often used in office environment, office, student or hobbyist taking notes.</font><br>', '19.1.jfif', '19.2.jfif', '19.3.jfif', 2, 'In Stock', '2021-12-15 18:14:54', ''),
(25, 8, 18, 'HAI TIEN Melody book cover 6 ', 'Hai Tien', 2, 6, '<font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Size: 150x210 (MD6 - 240 pages) - Paper weight: 70 g/m2, whiteness 92ISO - Color/pattern random delivery. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Hardcover material, beautiful design Hai Tien Melody cover book has a compact and convenient size, often used in office environments, offices, students or people who have a hobby of taking notes.</font><br>', '20.1.jfif', '20.2.jfif', '20.3.jfif', 0, 'In Stock', '2021-12-15 18:18:21', ''),
(26, 9, 19, 'HAI TIEN LOT General Accounting Book', 'Hai Tien', 7, 10, '<font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Dimensions: 210x297mm (A4) - Paper weight: 60 g/m2 - Whiteness: 89-90ISO - Random sample delivery Smooth surface, smooth writing. Smooth hand, for beautiful handwriting. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper does not smudge, does not absorb ink to the next page. </font><font class=\"\" style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper material is dust-free, ensuring the health of users.</font><br>', '21.1.jfif', '21.2.jfif', '21.3.jfif', 0, 'In Stock', '2021-12-15 18:22:10', ''),
(27, 9, 19, 'HAI TIEN Lesson Plan Book ', 'Hai Tien', 9, 11, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Dimensions: 210x297mm (A4) - Paper weight: 60 g/m2 - Whiteness: 89-90ISO - Lines 4 cups 2.5x2.5mm - Number of pages: 200 pages - Manufacturer: Hai Tien Paper Joint Stock Company - Brand: Hai Tien - Randomly delivered sample Smooth paper surface, smooth writing The lesson book has a smooth surface, smooth handwriting, beautiful handwriting.</span><br>', '22.1.jfif', '22.2.jfif', '22.3.jfif', 0, 'In Stock', '2021-12-15 18:25:48', ''),
(28, 9, 19, 'HAI TIEN Harmony stapled notebook', 'Hai Tien', 9, 15, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Dimensions: 210x297mm (A4) - Paper weight: 60 g/m2 - Whiteness: 90-92ISO - Staple notebook, with margins - Random delivery Pattern Smooth surface, smooth writing Staple notebook Harmony A4 has smooth paper surface, smooth handwriting, beautiful handwriting.</span><br>', '23.1.jfif', '23.2.jfif', '23.3.jfif', 0, 'In Stock', '2021-12-15 18:29:21', ''),
(29, 10, 20, 'Double A File 11 holes A4 - 5 stacks', 'Double A', 8, 16, 'Double A hole cover with high transparency, can be copied directly 0.045mm thickness, A4 size<br>', '24.1.jfif', '24.2.jfif', '24.3.jfif', 0, 'In Stock', '2021-12-15 18:33:46', ''),
(30, 10, 20, 'Double A File 60 Bags 1 Pc Store up to 600 sheetsCover', 'Double A', 3, 6, '<font class=\"\" style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">The Double A file bag has a soft texture with tear-resistant interior pockets that help keep documents organized and neat. </font><font class=\"\" style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">?? Size: 240mm x 310mm, suitable for A4 documents</font><br>', '25.1.jfif', '25.2.jfif', '25.3.jfif', 2, 'In Stock', '2021-12-15 18:37:56', ''),
(31, 10, 21, 'Double A No. 10 Stapler', 'Double A', 1, 2, '<div>Compact design, fits comfortably in the palm of your hand for comfort and provides high performance when used. Light pressure, can press up to 20 sheets of 70gsm paper. The pin is firmly attached, the tip does not show out for absolute safety during use&nbsp;</div>', '26.1.jfif', '26.3.jfif', '26.2.jfif', 2, 'In Stock', '2021-12-15 18:42:36', ''),
(32, 10, 22, 'Double A Paper Clip', 'Double A', 10, 16, 'Premium Double A Butterfly Clip is manufactured by Thai technology with outstanding features: High-grade steel clamp body allows to hold documents more firmly, with good elasticity<br>', '27.2.jfif', '27.1.jfif', '27.3.jfif', 2, 'In Stock', '2021-12-15 18:46:33', ''),
(33, 10, 22, 'Double A 32mm Butterfly Clip', 'Double A', 11, 16, '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Premium Double A Butterfly Clip is manufactured by Thai technology with outstanding features: High-grade steel clamp body allows to hold documents more firmly, with good elasticity</span><br>', '28.1.jfif', '28.2.jfif', '28.3.jfif', 2, 'In Stock', '2021-12-15 18:50:03', ''),
(34, 10, 23, 'Double A Combo 2 Smart Paper Knife', 'Double A', 5, 10, 'Double A smart paper cutter blade is a high-class blade, made from high quality Japanese steel (SK2 + Cr) for smooth cutting experience, sharp.&nbsp;<br>', '29.1.jfif', '29.2.jfif', '29.3.jfif', 0, 'In Stock', '2021-12-15 18:54:05', ''),
(35, 10, 24, 'Double A Glue 8g', 'Double A', 1, 2, 'Double A Dry Lake is produced by modern Thai technology. Dry, smooth, non-sticky, does not wrinkle paper or other surfaces<br>', '30.1.jfif', '30.2.jfif', '30.3.jfif', 0, 'In Stock', '2021-12-15 18:58:59', ''),
(36, 1, 1, 'HAI TIEN Spring Summer Autumn Winter', 'Spring Summer Autumn Winter', 3, 5, 'Size: 175x250mm - Paper weight: 60 g/m2 - Whiteness: 92-95ISO - Random sample delivery Smooth surface, smooth writing Horizontal notebook Spring Summer Autumn Winter - Hai Tien is present Smooth paper, smooth handwriting, beautiful handwriting. Paper does not smudge, does not absorb ink to the next page.<br>', '31.1.jfif', '31.2.jfif', '31.3.jfif', 2, 'In Stock', '2021-12-24 09:55:11', ''),
(37, 1, 2, 'HAI TIEN Newway horizontal', 'New Way', 5, 6, '<font class=\"\" style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Size: 175x250mm - Paper weight: 70 g/m2 - Whiteness: 92-95ISO - Random sample delivery Smooth surface, smooth writing Newway - Hai Tien horizontal notebook with smooth surface , write smoothly, create beautiful handwriting. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper does not smudge, does not absorb ink to the next page. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">Paper material is dust-free, ensuring the health of users. </font><font style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, ?????, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;?? Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, ?????, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap; vertical-align: inherit;\">The inside of the notebook is scientifically and logically designed, making the most of the space.</font><br>', '32.1.jfif', '32.2.jfif', '32.3.jfif', 5, 'In Stock', '2021-12-24 10:04:34', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, '72 pages', '2021-12-15 16:29:09', ''),
(2, 1, '80 pages', '2021-12-15 16:29:09', ''),
(3, 1, '120 pages', '2021-12-15 16:29:09', ''),
(4, 2, '200 pages', '2021-12-15 16:29:09', ''),
(5, 2, '300 pages', '2021-12-15 16:29:09', ''),
(6, 2, '400 pages', '2021-12-15 16:29:09', ''),
(7, 3, '48 pages', '2021-12-15 16:29:09', ''),
(8, 3, '80 pages', '2021-12-15 16:29:09', ''),
(9, 4, 'A4 paper', '2021-12-15 16:29:09', ''),
(10, 4, 'B5 paper', '2021-12-15 16:29:09', ''),
(11, 5, 'Test paper', '2021-12-15 16:29:09', ''),
(12, 5, 'Drawing book', '2021-12-15 16:29:09', ''),
(13, 5, 'Pen', '2021-12-15 16:29:09', ''),
(14, 6, 'A4 paper', '2021-12-15 16:29:09', ''),
(16, 7, 'Handbook', '2021-12-15 16:29:09', ''),
(17, 8, '160 pages', '2021-12-15 16:29:09', ''),
(18, 8, '240 pages', '2021-12-15 16:29:09', ''),
(19, 9, 'Notebook', '2021-12-15 16:29:09', ''),
(20, 10, 'File bag', '2021-12-15 16:29:09', ''),
(21, 10, 'Stapler', '2021-12-15 16:29:09', ''),
(22, 10, 'Clip', '2021-12-15 16:29:09', ''),
(23, 10, 'Smart Paper Knife', '2021-12-15 18:51:12', ''),
(24, 10, 'Glue', '2021-12-15 18:55:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblinventory`
--

CREATE TABLE `tblinventory` (
  `INVENTORYID` int(11) NOT NULL,
  `PRODUCTID` int(11) NOT NULL,
  `IN_DATE` date NOT NULL,
  `STOCKIN` int(11) NOT NULL,
  `OUT_DATE` date NOT NULL,
  `STOCKOUT` int(11) NOT NULL,
  `REMAINING` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblinventory`
--

INSERT INTO `tblinventory` (`INVENTORYID`, `PRODUCTID`, `IN_DATE`, `STOCKIN`, `OUT_DATE`, `STOCKOUT`, `REMAINING`) VALUES
(7, 0, '2021-12-15', 100, '0000-00-00', 0, 100),
(8, 6, '2021-12-15', 100, '0000-00-00', 0, 100),
(9, 7, '2021-12-15', 80, '0000-00-00', 0, 80),
(10, 8, '2021-12-15', 50, '0000-00-00', 1, 49),
(11, 9, '2021-12-15', 70, '0000-00-00', 0, 70),
(12, 10, '2021-12-15', 70, '0000-00-00', 0, 70),
(13, 11, '2021-12-15', 120, '0000-00-00', 0, 120),
(14, 12, '2021-12-16', 1000, '0000-00-00', 0, 1000),
(15, 13, '2021-12-16', 90, '0000-00-00', 0, 90),
(16, 14, '2021-12-16', 70, '0000-00-00', 0, 70),
(17, 15, '2021-12-16', 70, '0000-00-00', 0, 70),
(18, 16, '2021-12-16', 150, '0000-00-00', 0, 150),
(19, 17, '2021-12-16', 200, '0000-00-00', 0, 200),
(20, 18, '2021-12-16', 60, '0000-00-00', 1, 59),
(21, 0, '2021-12-16', 2000, '0000-00-00', 0, 2000),
(22, 19, '2021-12-16', 2000, '0000-00-00', 0, 2000),
(23, 20, '2021-12-16', 2500, '0000-00-00', 0, 2500),
(24, 21, '2021-12-16', 2200, '0000-00-00', 0, 2200),
(25, 22, '2021-12-16', 100, '0000-00-00', 0, 100),
(26, 23, '2021-12-16', 100, '0000-00-00', 0, 100),
(27, 24, '2021-12-16', 50, '0000-00-00', 0, 50),
(28, 25, '2021-12-16', 130, '0000-00-00', 0, 130),
(29, 26, '2021-12-16', 300, '0000-00-00', 0, 300),
(30, 27, '2021-12-16', 500, '0000-00-00', 0, 500),
(31, 28, '2021-12-16', 200, '0000-00-00', 0, 200),
(32, 29, '2021-12-16', 200, '0000-00-00', 0, 200),
(33, 30, '2021-12-16', 150, '0000-00-00', 0, 150),
(34, 31, '2021-12-16', 50, '0000-00-00', 0, 50),
(35, 32, '2021-12-16', 150, '0000-00-00', 0, 150),
(36, 33, '2021-12-16', 200, '0000-00-00', 0, 200),
(37, 34, '2021-12-16', 70, '0000-00-00', 0, 70),
(38, 35, '2021-12-16', 100, '0000-00-00', 0, 100),
(39, 36, '2021-12-24', 150, '0000-00-00', 0, 150),
(40, 37, '2021-12-24', 200, '0000-00-00', 0, 200);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(28, 'tu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-15 15:36:53', '', 1),
(29, 'tu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-24 08:08:42', '', 1),
(30, 'tu@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-24 10:34:24', '', 1),
(31, 'phuong@gmail.com', 0x3a3a3100000000000000000000000000, '2021-12-26 04:26:51', '2021-12-26 11:29:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `shippingAddress` longtext NOT NULL,
  `shippingState` varchar(255) NOT NULL,
  `shippingCity` varchar(255) NOT NULL,
  `shippingPincode` int(11) NOT NULL,
  `billingAddress` longtext NOT NULL,
  `billingState` varchar(255) NOT NULL,
  `billingCity` varchar(255) NOT NULL,
  `billingPincode` int(11) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(6, 'tatu', 'tu@gmail.com', 987755766, 'c4ca4238a0b923820dcc509a6f75849b', 'tu', '', '', 0, 'tu', '', '', 0, '2021-12-15 15:36:27', ''),
(7, 'phuong', 'phuong@gmail.com', 12312312312, 'c4ca4238a0b923820dcc509a6f75849b', '', '', '', 0, '', '', '', 0, '2021-12-26 04:26:31', '');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblinventory`
--
ALTER TABLE `tblinventory`
  ADD PRIMARY KEY (`INVENTORYID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tblinventory`
--
ALTER TABLE `tblinventory`
  MODIFY `INVENTORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
