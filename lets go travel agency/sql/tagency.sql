-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2020 at 03:05 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tagency`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `user_id` int(10) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`user_id`, `user_email`, `user_pass`) VALUES
(2, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Business'),
(2, 'Economy'),
(3, 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_name` text NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_pass` varchar(100) NOT NULL,
  `c_passport` varchar(100) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_ip`, `customer_name`, `customer_email`, `customer_pass`, `c_passport`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`) VALUES
(7, '::1', 'Modric', 'm@.com', '1111', '******', 'Croatia', 'Madrid', '00*******', ' Madrid', 'modric.jpg'),
(8, '::1', ' Bale', 'b@.com', '2222', '####', 'England', 'Madrid', '******', ' Madrid', 'bale.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` int(100) NOT NULL,
  `emp_name` varchar(100) NOT NULL,
  `emp_email` varchar(100) NOT NULL,
  `emp_designation` varchar(100) NOT NULL,
  `emp_location` varchar(100) NOT NULL,
  `emp_address` varchar(255) NOT NULL,
  `emp_contact` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `emp_name`, `emp_email`, `emp_designation`, `emp_location`, `emp_address`, `emp_contact`) VALUES
(2, 'Kamal', '**@**.com', 'Local Agent', 'Bangladesh', 'Dhaka,Bangladesh', '*********'),
(5, 'Vijoy', '##@##.com', 'Local Agent', 'India', 'Mumbai,India', '*******'),
(6, 'Rohit', '***@*.com', 'Local Agent', 'Nepal', '987 xyz street, KathMandu, Nepal', '******');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `package_id` int(100) NOT NULL,
  `package_cat` int(100) NOT NULL,
  `package_type` int(100) NOT NULL,
  `package_title` varchar(255) NOT NULL,
  `package_price` int(100) NOT NULL,
  `package_desc` longtext NOT NULL,
  `package_image` text NOT NULL,
  `package_keywords` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`package_id`, `package_cat`, `package_type`, `package_title`, `package_price`, `package_desc`, `package_image`, `package_keywords`) VALUES
(1, 1, 2, 'Bali, Indonesia', 20000, 'Bali is a province of Indonesia and the westernmost of the Lesser Sunda Islands. East of Java and west of Lombok, the province includes the island of Bali and a few smaller offshore islands, notably Nusa Penida, Nusa Lembongan, and Nusa Ceningan to the southeast.', 'balitravel.jpg', 'bali Bali BALI tour Tour package Package PACKAGES packages tours TOURS travel TRAVEL travels TRAVELS Travel Travels Indonesia indonesia'),
(2, 2, 2, 'Bichanakandi', 5000, 'Bichnakandi, also known as Bisnakandi, is a village in Rustompur Union, Gowainghat Upazila of Bangladesh Sylhet District. In recent years, there has been an influx of tourists to its river.', 'bichanakandi02.jpg', 'bichanakandi sylhet regular family Regular Family REGULAR FAMILY Bichanakandi'),
(4, 2, 3, 'Sri Lanka', 7000, '<p>Sri Lanka, historically known as Ceylon and officially the Democratic Socialist Republic of Sri Lanka, is an island country in South Asia. It lies in the Indian Ocean, southwest of the Bay of Bengal, separated from the Indian peninsula by the Gulf of Mannar and the Palk Strait.</p>', 'srilanka01.jpg', 'srilanka SRILANKA Srilanka SriLanka Sri Lanka sri lanka tour travel Tour Travel TRAVEL TOUR'),
(6, 3, 2, 'Taj Mahal', 7000, 'The Taj Mahal is an ivory-white marble mausoleum on the right bank of the river Yamuna in Agra, Uttar Pradesh, India. It was commissioned in 1631 by the fifth Mughal emperor, Shah Jahan to house the tomb of his beloved wife, Mumtaz Mahal; it also houses the tomb of Shah Jahan himself.', 'taj01.jpg', 'tajmahal taj mahal TajMahal Taj Mahal TAJMAHAL TAJmahal tajMAHAL regular family Regular Family tour travel Tour Travel India india INDIA'),
(7, 2, 2, 'Kathmandu', 5000, 'Kathmandu, Nepal capital, is set in a valley surrounded by the Himalayan mountains. At the heart of the old city mazelike alleys is Durbar Square, which becomes frenetic during Indra Jatra, a religious festival featuring masked dances. Many of the city historic sites were damaged or destroyed by a 2015 earthquake. Durbar Square palace, Hanuman Dhoka, and Kasthamandap, a wooden Hindu temple, are being rebuilt.', 'nepal01.jpg', 'nepal kathmandu Nepal Kathmandu NEPAL KATHMANDU economy Economy ECONOMY family Family FAMILY'),
(8, 1, 3, 'Manali', 1400, 'Manali is a high-altitude Himalayan resort town in India northern Himachal Pradesh state. It has a reputation as a backpacking center and honeymoon destination.', 'manali01.jpg', 'manali Manali MANALI india India tour travel Tour TRAVEL TOUR Travel Business Couple business couple BUSINESS COUPLE'),
(9, 1, 3, 'Coxs Bazar', 2200, 'Cox Bazar is one of the longest sea beaches in the world. It a sandy beach with an unbroken 155 Km length. The sea beach is the main attraction of the Cox Bazar town. There are large number of hotels, resorts, guest houses, motels and restaurants have been established in the city.', 'coxs04.jpg', 'coxs bazar business Business Couple couple BUSINESS COUPLE tour sea beach'),
(10, 1, 1, 'Switzerland', 7000, 'Switzerland is a mountainous Central European country, home to numerous lakes, villages and the high peaks of the Alps. Its cities contain medieval quarters, with landmarks like capital Bern Zytglogge clock tower and Lucerne wooden chapel bridge. The country is also known for its ski resorts and hiking trails. Banking and finance are key industries, and Swiss watches and chocolate are world renowned. ', 'swiss.jpg', 'swiss switzerland Switzerland Europe Business Single business single europe'),
(11, 3, 2, 'Jaflong', 3000, 'Jaflong is a hill station and tourist destination in the Division of Sylhet, Bangladesh. It is located in Gowainghat Upazila of Sylhet District and situated at the border between Bangladesh and the Indian state of Meghalaya, overshadowed by subtropical mountains and rainforests.', 'jaflong.jpg', 'jaflong Jaflong JAFLONG regular Regular REGULAR FAMILY family Family sylhet Sylhet SYLHET'),
(12, 1, 1, 'Darjeeling', 2100, 'Darjeeling is a town in India West Bengal state, in the Himalayan foothills. Once a summer resort for the British Raj elite, it remains the terminus of the narrow-gauge Darjeeling Himalayan Railway, or Toy Train, completed in 1881. It famed for the distinctive black tea grown on plantations that dot its surrounding slopes. Its backdrop is Mt. Kanchenjunga, among the world highest peaks.', 'darjeeling.JPG', 'darjeeling Darjeeling DARJEELING india India INDIA business BUSINESS Business Single single SINGLE tour'),
(13, 2, 1, 'Tanguar Haor', 1000, 'Tanguar Haor, located in the Dharmapasha and Tahirpur upazilas of Sunamganj District in Bangladesh, is a unique wetland ecosystem of national importance and has come into international focus. The area of Tanguar Haor including 46 villages within the haor is about 100 square kilometres of which 2,802.', 'tanguar.jpg', 'tanguar haor economy Economy ECONOMY SINGLE single Single Tanguar Haor'),
(14, 3, 3, 'Rajasthan', 9000, 'Rajasthan is a state in northwestern India. It covers 342,239 square kilometres or 10.4 per cent of India total geographical area. It is the largest Indian state by area and the seventh largest by population.', 'rajasthan.jpg', 'rajasthan Rajasthan RAJASTHAN regular Regular REGULAR couple Couple Couple India india INDIA');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `type_id` int(100) NOT NULL,
  `type_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`type_id`, `type_title`) VALUES
(1, 'Single'),
(2, 'Family'),
(3, 'Couple');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `package_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `type_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
