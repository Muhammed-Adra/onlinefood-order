-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 أغسطس 2021 الساعة 17:08
-- إصدار الخادم: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefoodorder`
--

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', 'E10ADC3949BA59ABBE56E057F20F883E'),
(13, 'محمد', 'admin1', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'وجبات سريعة', 'Food_Category_579.jpeg', 'Yes', 'Yes'),
(9, 'وجبات كبيرة', 'Food_Category_262.jpg', 'Yes', 'Yes'),
(10, 'مشروبات', 'Food_Category_548.jpeg', 'No', 'Yes'),
(11, 'حلويات', 'Food_Category_677.jpg', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'همبركر لحم', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '8.00', 'Food-Name-6340.jpg', 4, 'Yes', 'Yes'),
(5, 'بيتزا على الحطب', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '9.00', 'Food-Name-8298.jpg', 4, 'Yes', 'Yes'),
(10, 'همبركر جبن', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '10.00', 'Food-Name-433.jpeg', 4, 'No', 'Yes'),
(70, 'لحم بعجين', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '5.00', 'aaa123.jpg', 4, 'Yes', 'Yes'),
(71, 'اسكندر تركي', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '6.00', 'Food-Name-7959.jpg', 4, 'Yes', 'Yes'),
(72, 'كبسة لحم سعودية', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '20.00', 'Food-Name-4234.jpg', 9, 'Yes', 'Yes'),
(73, 'فلافل', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '3.00', 'Food-Name-7095.jpg', 4, 'Yes', 'Yes'),
(74, 'كبة سراي', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '2.00', 'Food-Name-5700.jpg', 4, 'No', 'Yes'),
(75, 'دولمة عراقية', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '25.00', 'Food-Name-1721.jpg', 9, 'Yes', 'Yes'),
(76, 'مندي يمني', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '20.00', 'Food-Name-9983.jpg', 9, 'Yes', 'Yes'),
(77, 'كباب عراقي', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '8.00', 'Food-Name-2990.jpg', 4, 'Yes', 'Yes'),
(78, 'وجبة سريعة كاملة', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '12.00', 'Food-Name-4594.jpg', 4, 'No', 'Yes'),
(79, 'منسف اردني', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '25.00', 'Food-Name-8546.jpeg', 9, 'Yes', 'Yes'),
(80, 'كشري مصري', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '4.00', 'Food-Name-2474.jpg', 9, 'No', 'Yes'),
(81, 'شاورما سورية', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '4.00', 'Food-Name-7726.jpg', 4, 'No', 'Yes'),
(82, 'كبة حلب', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '3.00', 'Food-Name-5162.jpg', 4, 'No', 'Yes'),
(83, 'فانتا', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '1.00', 'Food-Name-3541.jpg', 10, 'No', 'Yes'),
(84, 'قطايف', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '1.00', 'Food-Name-9378.jpg', 11, 'No', 'Yes'),
(85, 'كيك', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '8.00', 'Food-Name-9877.jpg', 11, 'No', 'Yes'),
(86, 'حلويات سورية مشكل', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '15.00', 'Food-Name-563.jpg', 11, 'No', 'Yes'),
(87, 'كوكتيل فواكه', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '2.00', 'Food-Name-1842.jpg', 10, 'No', 'Yes'),
(88, 'بقلاوة', 'يمكنك تغير الوصف بكل سهولة هذا الوصف مجرد وصف تجريبي لا اكثر', '1.00', 'Food-Name-1847.jpg', 11, 'No', 'Yes');

-- --------------------------------------------------------

--
-- بنية الجدول `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- إرجاع أو استيراد بيانات الجدول `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(12, 'لحم بعجين', '5.00', 10, '50.00', '2021-08-29 01:51:08', 'Delivered', 'محمد', '07705445247', 'admin@gmail.com', 'العراق /بغداد الموصل'),
(13, 'كبسة لحم سعودية', '20.00', 1, '20.00', '2021-08-29 04:46:14', 'Delivered', 'محمد', '07701254875', 'admin@gmail.com', 'العراق /بغداد '),
(14, 'لحم بعجين', '5.00', 6, '30.00', '2021-08-29 04:47:43', 'Delivered', 'حسين', '02541245741', 'admin@admin.com', 'بغداد/ الكرادة');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
