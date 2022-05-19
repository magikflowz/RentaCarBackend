-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 06:53 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cars_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `car_id` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `year` int(11) NOT NULL,
  `color` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`car_id`, `model`, `manufacturer`, `brand`, `year`, `color`) VALUES
(1, 'Civic', 'Honda Private Limited', 'Atlas Honda', 2021, 'Black'),
(2, 'Camry', 'Toyota Company', 'Toyota', 2018, 'Red'),
(3, 'City', 'Atlas Honda', 'Honda', 2017, 'grey'),
(4, 'City', 'Atlas Honda', 'Honda', 2021, 'grey'),
(5, 'Insight', 'Atlas Honda', 'Honda', 2019, 'White'),
(6, 'Hybrid', 'Toyota Limited', 'Toyota', 2019, 'Black'),
(7, 'Alswin', 'Changan', 'Chanan', 2019, 'grey'),
(8, 'A4', 'Audi', 'Audi', 2010, 'grey'),
(9, 'GT etron', 'Audi', 'Audi', 2019, 'White'),
(10, 'Revo', 'Toyota', 'Toyota', 2021, 'grey'),
(11, 'City', 'Atlas Honda', 'Honda', 2021, 'grey'),
(12, 'Insight', 'Atlas Honda', 'Honda', 2019, 'White'),
(13, 'Hybrid', 'Toyota Limited', 'Toyota', 2019, 'Black'),
(14, 'Alswin', 'Changan', 'Chanan', 2019, 'grey'),
(15, 'A4', 'Audi', 'Audi', 2010, 'grey'),
(16, 'GT etron', 'Audi', 'Audi', 2019, 'White'),
(17, 'GT etron', 'Audi', 'Audi', 2019, 'White'),
(18, 'Revo', 'Toyota', 'Toyota', 2021, 'grey'),
(19, 'Triumph DAYTONA 675 R', 'TRIUMPH', 'TRIUMPH', 2021, 'Blue'),
(20, 'Yamaha XP50 C3', 'YAMAHA', 'YAMAHA', 2013, 'White'),
(21, 'Freightliner CLASSIC XL', 'FREIGHTLINER', 'FREIGHTLINER', 2019, 'Black'),
(22, 'Maserati COUPE', ' MASERATI', ' MASERATI', 2014, 'Blue'),
(23, 'Sterling BULLET 55', 'Sterling', 'Sterling', 2015, 'grey'),
(24, 'Harley Davidson VRSCF V-ROD MUSCLE', 'HARLEY DAVIDSON', 'HARLEY DAVIDSON', 2016, 'Red'),
(25, 'Tm SMM450F', 'TM', 'TM', 2010, 'White'),
(26, 'Aprilia RSV4 R', 'Aprilia', 'Aprilia', 2012, 'Black'),
(27, 'Ford ECONOLINE VAN', 'Ford', 'Ford', 2019, 'Black'),
(28, 'Mitsubishi Fuso FM260', 'Mitsubishi', 'Mitsubishi', 2018, 'Black'),
(29, 'VAn', 'Ford', 'Ford', 2012, 'White'),
(30, 'BMW A3', 'BMW', 'BMW', 2018, 'Black');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(80) NOT NULL,
  `phone_num` varchar(20) NOT NULL,
  `feedback_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `phone_num`, `feedback_id`) VALUES
(1, 'Jacob Williams', '+134387845887', 2),
(2, 'John Newman', '+14354365565', 4),
(3, 'Wlliam Henly', '+138738764873', 5),
(4, 'Siren Malik', '+76767866', 7),
(5, 'Junion Volvits', '+76758757', 1),
(6, 'Nick Comm', '+656565', 9),
(7, 'Rio Mortel', '+5654656', 11),
(8, 'Lincon Kim', '+45465665', 3),
(9, 'Hank Pym', '+4534546', 10),
(10, 'Karen Nicolas', '+7676967697', 18),
(11, 'Julia Nick', '+6456456', 17),
(12, 'Junion Volvits', '+76758757', 13),
(13, 'Nick Comm', '+656565', 19),
(14, 'Rio Mortel', '+5654656', 10),
(15, 'Lincon Kim', '+45465665', 33),
(16, 'Hank Pym', '+4534546', 18),
(17, 'Hank Pym', '+4534546', 18),
(18, 'Karen Nicolas', '+7676967697', 20),
(19, 'Natasha Roman', '+76657657', 27),
(20, 'Kazi J', '+787686', 23),
(21, 'Jack Boseman', '+634356565', 29),
(22, 'Jacob N', '+43343453', 20),
(23, 'Mr. Tim', '+4354455', 23),
(24, 'larry Jack', '+4534232', 28),
(25, 'Katie Riz', '+43543254', 18),
(26, 'Sara Rins', '+4352435', 18),
(27, 'Sia kentucky', '+45464565', 20),
(28, 'Landon Watts', '+42354746', 27),
(29, 'Conor Torres', '+878436456', 23),
(30, 'Jerry Long', '+76886537', 29),
(31, 'Roman Foster', '+4337643453', 20),
(32, 'Palmer Hale', '+787684314', 23),
(33, 'Olivia Simpson', '+635746765', 28),
(34, 'Sebastian Green', '+635764765', 18),
(35, 'Juliana Watkins', '+874767657', 18),
(36, 'Isabella Thomas', '+864876477687', 20),
(37, 'Celia Riley', '+6576537', 27),
(38, 'Marco Farmer ', '+8657464', 23),
(39, 'Ben Mathis ', '+658757464', 29),
(40, 'Glen Miller ', '+87674565465', 20),
(41, 'Myron Brewer ', '+9879867856', 23),
(42, 'Jenna Sanchez ', '+734613465', 28),
(43, 'Brad Kelly ', '+432536654', 18),
(44, 'Ralph Higgins ', '+87676535', 18),
(45, 'Meghan Romero  ', '+6344566576', 18),
(46, 'Steven Powell ', '+623546456', 20),
(47, 'Jean Olson  ', '+564564567', 13),
(48, 'Clark Hardy  ', '+5643657', 12),
(49, 'Kent Pena   ', '+876845747', 11),
(50, 'Hope Graham  ', '+45765756', 7);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feedback_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feedback_id`, `description`) VALUES
(1, 'It was a good ride.');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inv_id` int(11) NOT NULL,
  `car_type` varchar(40) NOT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inv_id`, `car_type`, `car_id`) VALUES
(1, '4 Seat Family Car', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `card_name` varchar(20) NOT NULL,
  `card_num` int(20) NOT NULL,
  `expiry` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `card_name`, `card_num`, `expiry`) VALUES
(1, 'Mezzan', 4565676, '2021-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `pickups`
--

CREATE TABLE `pickups` (
  `pickup_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `inv_id` int(11) NOT NULL,
  `pickup_date` date NOT NULL,
  `duration_time_hour` int(11) NOT NULL,
  `location` varchar(255) NOT NULL,
  `car_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pickups`
--

INSERT INTO `pickups` (`pickup_id`, `customer_id`, `inv_id`, `pickup_date`, `duration_time_hour`, `location`, `car_id`) VALUES
(1, 1, 1, '2021-12-15', 5, 'Lahore', 1),
(2, 2, 2, '2021-12-06', 10, 'NY', 2),
(3, 3, 3, '2021-11-17', 5, 'Karachi', 3),
(4, 4, 4, '2021-11-01', 24, 'Nazmabad', 4),
(5, 5, 5, '2021-11-12', 48, 'Sialkot', 5),
(6, 6, 6, '2021-10-01', 10, 'Amritsar', 6),
(7, 7, 7, '2021-10-11', 4, 'Punjab', 7),
(8, 8, 8, '2021-09-01', 72, 'Delhi', 8),
(9, 9, 9, '2021-09-04', 24, 'Kotli', 9),
(10, 10, 10, '2021-11-25', 24, 'DC Colony', 10),
(11, 11, 11, '2021-09-22', 48, 'NIMS', 11),
(12, 12, 12, '2021-11-01', 24, 'Kati Pahari', 12),
(13, 13, 13, '2021-08-07', 24, 'Modal Town', 13),
(14, 14, 14, '2021-11-01', 24, 'Bahria Town Kaarchi', 14),
(15, 15, 15, '2021-06-06', 24, 'Bahawal Pur', 15),
(16, 16, 16, '2021-01-01', 24, 'Gujranwala', 16),
(17, 17, 17, '2021-11-02', 24, 'Chande Killa', 17),
(18, 18, 18, '2021-11-29', 24, 'Sialkot Road', 18),
(19, 19, 19, '2021-11-01', 24, 'Registrar Office', 19),
(20, 20, 20, '2021-11-05', 24, 'Baba Fareed', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`car_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inv_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`pickup_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `car_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `pickup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
