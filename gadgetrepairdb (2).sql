-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2026 at 06:24 AM
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
-- Database: `gadgetrepairdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int(11) NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `security_question` varchar(255) DEFAULT NULL,
  `security_answer` varchar(255) DEFAULT NULL,
  `is_first_login` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`account_id`, `username`, `password`, `role`, `is_active`, `security_question`, `security_answer`, `is_first_login`) VALUES
(1, 'admin', 'Jjaudian@123', 'Admin', 1, 'What city were you born in?', 'CDO', 0),
(2, 'jojos', 'gwapoko', 'Technician', 1, NULL, NULL, 1),
(4, 'mathi', '12345', 'Staff', 0, NULL, NULL, 1),
(6, 'jojoss', '12345', 'Staff', 0, NULL, NULL, 1),
(7, 'testtech', '12345', 'Technician', 1, NULL, NULL, 1),
(8, 'Jonathan', '12345', 'Technician', 1, NULL, NULL, 1),
(9, 'Khaleed', '54321', 'Staff', 1, NULL, NULL, 1),
(10, 'Jo', '2006', 'Technician', 1, NULL, NULL, 1),
(11, 'Nath', '2005', 'Staff', 1, NULL, NULL, 1),
(12, 'Tan', '1999', 'Admin', 1, NULL, NULL, 1),
(13, 'TANTAN', 'lolo', 'Technician', 1, NULL, NULL, 1),
(14, 'ezequel', '12345', 'Staff', 1, NULL, NULL, 1),
(15, 'Grock', '54321', 'Technician', 1, NULL, NULL, 1),
(16, 'Hilda', '9090', 'Staff', 1, NULL, NULL, 1),
(17, 'Ashton', '9090', 'Staff', 1, NULL, NULL, 1),
(18, 'Kiel', '9091', 'Technician', 1, NULL, NULL, 1),
(21, 'Loki', 'Loki@2026', 'Staff', 1, 'What is your favorite color?', 'Blue', 0),
(22, 'Thor', 'Lokiisalegend@20', 'Technician', 1, 'What is your favorite food?', 'Lechon', 0),
(23, 'Lukas', 'Jjaudian@123', 'Technician', 1, 'What is your favorite movie?', 'Avengers', 0),
(25, 'SSNA', 'Papatayinkosiwiselvl@4', 'Staff', 1, 'What is the name of your first pet?', 'Shark', 0),
(26, 'Saberlvl4', 'Jjaudian@20', 'Technician', 1, 'What is your favorite color?', 'red', 0),
(27, 'PAQUITO', 'Baboyramo@20', 'Staff', 1, 'What is the name of your first pet?', 'BABOY', 0),
(28, 'SABER', 'gwapoko@1234', 'Staff', 1, 'What is the name of your first pet?', 'rat', 0),
(31, 'tani', '12345', 'Staff', 1, NULL, NULL, 1),
(32, 'nata', '12345', 'Technician', 1, NULL, NULL, 1),
(37, 'Tani', '12345', 'Staff', 1, NULL, NULL, 1),
(38, 'Jojo', 'Walangkaninbusseng@20', 'Admin', 1, 'What is your favorite color?', 'Red', 0),
(39, 'Tenma', 'Firetornadodoubledrive@20', 'Technician', 1, 'What is your favorite color?', 'Red', 0),
(40, 'juan123', '12345', 'Staff', 1, NULL, NULL, 1),
(41, 'Than', 'Jjaudian@20', 'Technician', 1, 'What is the name of your first pet?', 'cat', 0),
(43, 'Tan2', 'Jjaudian@20', 'Technician', 1, 'What is your favorite color?', 'red', 0),
(45, 'Brian', 'Jjaudian@20', 'Technician', 1, 'What is your favorite color?', 'red', 0),
(46, 'Brianxd', 'Jjaudian@20', 'Technician', 1, 'What is your favorite color?', 'Green', 0);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `contact_number` varchar(20) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `contact_number`, `is_active`) VALUES
(1, 'jojo', 'jau', '09265696498', 1),
(2, 'loj', 'awa', '0999921212', 1),
(3, 'mathilda', 'flask', '3453454353', 1),
(4, 'mae', 'guess', '121211212', 1),
(5, 'floryn', 'mlbwew', '12453424', 1),
(6, 'novaria', 'sling', '356654645', 1),
(7, '121', '121', '12121', 1),
(8, 'JO', 'NATHAN', '090934324', 1),
(9, 'TJ', 'Relampagos', '092657894', 1),
(10, 'Fubuki', 'Shirou', '092656976498', 1),
(11, 'PAQUITO', 'ROAM', '09767721212', 1),
(12, 'rene', 'baterbonia', '09224244243424', 1),
(13, 'qwerty', 'rweq', '34935343', 1),
(14, 'Ashtons', 'Sison', '0923456789', 1),
(15, 'Tan', 'Who', '092323231212', 1),
(16, 'WOW', 'BUSSENG', '09123456789', 1),
(17, 'wewew', 'wewe', '09121212123', 1),
(18, 'oopp', 'wewew', '09342423423', 1),
(19, 'kuoui', 'ewrfwer', '09323231122', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gadgets`
--

CREATE TABLE `gadgets` (
  `gadget_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `gadget_type_id` int(11) DEFAULT NULL,
  `brand_model` varchar(100) NOT NULL,
  `problem` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gadgets`
--

INSERT INTO `gadgets` (`gadget_id`, `customer_id`, `gadget_type_id`, `brand_model`, `problem`, `is_active`) VALUES
(1, 1, 1, 'POCO 7', 'Screen problem, busdak', 1),
(2, 4, 1, 'Iphone', 'RAM', 1),
(3, 5, 4, 'MSI', 'MONITOR', 1),
(4, 1, 3, 'ACER', 'MEMORY RAM', 1),
(5, 4, 1, 'Iphone 20', 'No power', 1),
(6, 1, 1, 'Infinix', 'Screen', 1),
(7, 2, 1, 'samsung', 'lcd', 1),
(8, 9, 1, 'Iphone', 'Screen', 1),
(9, 9, 1, 'Samsung', 'LCD', 1),
(10, 10, 1, 'Iphone 20 Pro max', 'Screen', 1),
(11, 12, 1, 'vivo iQoo z11 turpo pro', 'gos tats', 1),
(12, 3, 1, 'TECHNOS', 'BACKPANEL', 1),
(13, 13, 1, 'poco', 'ramm', 1),
(14, 14, 1, 'IOS', 'Screen issue', 1),
(15, 8, 1, 'CP', 'Screen/Display', 1),
(16, 15, 1, 'IOS', 'Battery | Speaker/Microphone | Software | Camera | Screen/Display | Charging Port', 1),
(17, 15, 2, 'POCO', 'Battery | Software | Camera | Screen/Display | Charging Port | Speaker', 1),
(18, 16, 3, 'Acer', 'Battery | Keyboard | Screen/Display', 1),
(19, 17, 6, 'PS5', 'HDMI Port | Power Problem | Controller Problem | Overheating', 1),
(20, 18, 1, 'POCO', 'Screen/Display', 1),
(21, 19, 3, 'ACER', 'Battery | Screen/Display', 1);

-- --------------------------------------------------------

--
-- Table structure for table `gadget_types`
--

CREATE TABLE `gadget_types` (
  `gadget_type_id` int(11) NOT NULL,
  `gadget_type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gadget_types`
--

INSERT INTO `gadget_types` (`gadget_type_id`, `gadget_type_name`) VALUES
(4, 'Desktop Computer'),
(6, 'Game Console'),
(3, 'Laptop'),
(1, 'Mobile Phone'),
(7, 'Other'),
(5, 'Smartwatch'),
(2, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `labor_prices`
--

CREATE TABLE `labor_prices` (
  `labor_price_id` int(11) NOT NULL,
  `gadget_type_id` int(11) DEFAULT NULL,
  `issue_name` varchar(150) NOT NULL,
  `labor_fee` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `labor_prices`
--

INSERT INTO `labor_prices` (`labor_price_id`, `gadget_type_id`, `issue_name`, `labor_fee`, `is_active`) VALUES
(1, 1, 'Screen/Display', 400.00, 1),
(2, 1, 'Battery', 250.00, 1),
(3, 2, 'Screen/Display', 450.00, 1),
(4, 3, 'Battery', 300.00, 1),
(12, 1, 'Charging Port', 300.00, 1),
(13, 1, 'Software', 150.00, 1),
(14, 3, 'Screen/Display', 600.00, 1),
(15, 3, 'Keyboard', 350.00, 1),
(18, 2, 'Battery', 300.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

CREATE TABLE `parts` (
  `part_id` int(11) NOT NULL,
  `gadget_type_id` int(11) DEFAULT NULL,
  `part_name` varchar(150) NOT NULL,
  `part_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `parts`
--

INSERT INTO `parts` (`part_id`, `gadget_type_id`, `part_name`, `part_price`, `is_active`) VALUES
(1, 1, 'LCD', 1000.00, 1),
(2, NULL, 'LCD', 1000.00, 1),
(3, 1, 'LCD', 1000.00, 1),
(4, 1, 'LCD', 1000.00, 1),
(5, 1, 'Replacement Screen', 1500.00, 1),
(6, 1, 'Battery', 500.00, 1),
(7, 6, 'HDMI', 500.00, 1),
(8, 1, 'Charging Port', 150.00, 1),
(9, 1, 'Charging Cable', 100.00, 1),
(10, 3, 'LCD', 2500.00, 1),
(11, 3, 'Keyboard', 800.00, 1),
(12, 3, 'Battery', 1200.00, 1),
(13, 2, 'LCD', 1200.00, 1),
(14, 2, 'Battery', 600.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE `repairs` (
  `repair_id` int(11) NOT NULL,
  `gadget_id` int(11) NOT NULL,
  `technician_id` int(11) DEFAULT NULL,
  `repair_status` enum('Pending','In Progress','Completed') DEFAULT 'Pending',
  `repair_description` varchar(255) NOT NULL,
  `date_brought` date NOT NULL,
  `date_returned` date DEFAULT NULL,
  `repair_cost` decimal(10,2) DEFAULT 0.00,
  `is_archived` tinyint(1) DEFAULT 0,
  `parts_used` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`repair_id`, `gadget_id`, `technician_id`, `repair_status`, `repair_description`, `date_brought`, `date_returned`, `repair_cost`, `is_archived`, `parts_used`) VALUES
(1, 1, 1, 'Completed', 'Screen problem, busdak', '2026-09-29', '2026-10-04', 5000.00, 1, NULL),
(2, 4, 1, 'Completed', 'MEMORY RAM', '2026-09-29', '2026-10-01', 10000.00, 1, NULL),
(3, 5, 2, 'Pending', 'No power', '2026-09-29', NULL, 0.00, 0, NULL),
(4, 6, 2, 'Pending', 'Screen', '2026-09-29', NULL, 0.00, 0, NULL),
(5, 8, 6, 'Completed', 'Screen', '2026-09-30', '2026-10-01', 500.00, 0, NULL),
(6, 9, 6, 'Completed', 'LCD', '2026-09-30', '2026-10-02', 5000.00, 1, NULL),
(7, 10, 7, 'Completed', 'Screen', '2026-10-02', NULL, 0.00, 1, NULL),
(8, 1, 8, 'Pending', 'Screen problem, busdak', '2026-10-04', NULL, 0.00, 0, NULL),
(9, 12, 11, 'Pending', 'BACKPANEL', '2026-10-06', NULL, 0.00, 0, NULL),
(10, 14, 11, 'Completed', 'Screen issue', '2026-10-07', NULL, 0.00, 1, NULL),
(11, 16, 14, 'In Progress', 'Battery | Speaker/Microphone | Software | Camera | Screen/Display | Charging Port', '2026-10-09', NULL, 0.00, 0, NULL),
(12, 18, 15, 'Completed', 'Battery | Keyboard | Screen/Display', '2026-10-09', NULL, 0.00, 0, NULL),
(13, 17, 13, 'In Progress', 'Battery | Software | Camera | Screen/Display | Charging Port | Speaker', '2026-10-10', NULL, 0.00, 0, '14,13'),
(14, 16, 13, 'Completed', 'Battery | Speaker/Microphone | Software | Camera | Screen/Display | Charging Port', '2026-10-10', NULL, 0.00, 0, '1'),
(15, 19, 13, 'Completed', 'HDMI Port | Power Problem | Controller Problem | Overheating', '2026-10-10', NULL, 0.00, 0, '7'),
(16, 20, 13, 'Completed', 'Screen/Display', '2026-10-10', '2026-10-12', 1400.00, 0, '1'),
(17, 21, 13, 'Completed', 'Battery | Screen/Display', '2026-10-10', '2026-10-11', 4600.00, 0, '10,12');

-- --------------------------------------------------------

--
-- Table structure for table `repair_issues`
--

CREATE TABLE `repair_issues` (
  `repair_issue_id` int(11) NOT NULL,
  `repair_id` int(11) NOT NULL,
  `labor_price_id` int(11) DEFAULT NULL,
  `issue_name` varchar(150) NOT NULL,
  `labor_fee` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repair_parts`
--

CREATE TABLE `repair_parts` (
  `repair_part_id` int(11) NOT NULL,
  `repair_id` int(11) NOT NULL,
  `part_id` int(11) DEFAULT NULL,
  `part_name` varchar(150) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `technicians`
--

CREATE TABLE `technicians` (
  `technician_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `technicians`
--

INSERT INTO `technicians` (`technician_id`, `account_id`) VALUES
(1, 7),
(2, 8),
(3, 10),
(4, 13),
(5, 15),
(6, 18),
(7, 22),
(8, 23),
(9, 26),
(14, 32),
(13, 39),
(12, 41),
(10, 43),
(11, 45),
(15, 46);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `account_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `account_id`, `first_name`, `last_name`) VALUES
(1, 1, '', ''),
(2, 2, '', ''),
(3, 4, '', ''),
(4, 6, '', ''),
(5, 7, '', ''),
(6, 8, '', ''),
(7, 9, '', ''),
(8, 10, '', ''),
(9, 11, '', ''),
(10, 12, '', ''),
(11, 13, '', ''),
(12, 14, '', ''),
(13, 15, '', ''),
(14, 16, '', ''),
(15, 17, '', ''),
(16, 18, '', ''),
(17, 21, '', ''),
(18, 22, '', ''),
(19, 23, '', ''),
(20, 25, '', ''),
(21, 26, '', ''),
(22, 27, '', ''),
(23, 28, '', ''),
(24, 31, 'Nath', 'Tan'),
(25, 32, 'Nath', 'Tan'),
(26, 37, 'Nath', 'Tan'),
(27, 38, 'Jo', 'Jau'),
(28, 39, 'Tenma', 'Matzukaze'),
(32, 40, 'Juan', 'Crus'),
(33, 41, 'jo', 'jauuu'),
(34, 43, 'jojo', 'jao'),
(35, 45, 'as', 'soon'),
(36, 46, 'TJ', 'Relampagos');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD PRIMARY KEY (`gadget_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `fk_gadgets_gadget_type` (`gadget_type_id`);

--
-- Indexes for table `gadget_types`
--
ALTER TABLE `gadget_types`
  ADD PRIMARY KEY (`gadget_type_id`),
  ADD UNIQUE KEY `gadget_type_name` (`gadget_type_name`);

--
-- Indexes for table `labor_prices`
--
ALTER TABLE `labor_prices`
  ADD PRIMARY KEY (`labor_price_id`),
  ADD UNIQUE KEY `uq_labor_gadget_issue` (`gadget_type_id`,`issue_name`);

--
-- Indexes for table `parts`
--
ALTER TABLE `parts`
  ADD PRIMARY KEY (`part_id`),
  ADD KEY `fk_parts_gadget_type` (`gadget_type_id`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`repair_id`),
  ADD KEY `gadget_id` (`gadget_id`),
  ADD KEY `technician_id` (`technician_id`);

--
-- Indexes for table `repair_issues`
--
ALTER TABLE `repair_issues`
  ADD PRIMARY KEY (`repair_issue_id`),
  ADD KEY `repair_id` (`repair_id`),
  ADD KEY `fk_repair_issues_labor_price` (`labor_price_id`);

--
-- Indexes for table `repair_parts`
--
ALTER TABLE `repair_parts`
  ADD PRIMARY KEY (`repair_part_id`),
  ADD KEY `repair_id` (`repair_id`),
  ADD KEY `part_id` (`part_id`);

--
-- Indexes for table `technicians`
--
ALTER TABLE `technicians`
  ADD PRIMARY KEY (`technician_id`),
  ADD KEY `fk_technician_account` (`account_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `account_id` (`account_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `gadgets`
--
ALTER TABLE `gadgets`
  MODIFY `gadget_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `gadget_types`
--
ALTER TABLE `gadget_types`
  MODIFY `gadget_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `labor_prices`
--
ALTER TABLE `labor_prices`
  MODIFY `labor_price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `parts`
--
ALTER TABLE `parts`
  MODIFY `part_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `repair_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `repair_issues`
--
ALTER TABLE `repair_issues`
  MODIFY `repair_issue_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repair_parts`
--
ALTER TABLE `repair_parts`
  MODIFY `repair_part_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technicians`
--
ALTER TABLE `technicians`
  MODIFY `technician_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gadgets`
--
ALTER TABLE `gadgets`
  ADD CONSTRAINT `fk_gadgets_gadget_type` FOREIGN KEY (`gadget_type_id`) REFERENCES `gadget_types` (`gadget_type_id`),
  ADD CONSTRAINT `gadgets_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE;

--
-- Constraints for table `labor_prices`
--
ALTER TABLE `labor_prices`
  ADD CONSTRAINT `fk_labor_prices_gadget_type` FOREIGN KEY (`gadget_type_id`) REFERENCES `gadget_types` (`gadget_type_id`),
  ADD CONSTRAINT `fk_lp_gadget_type` FOREIGN KEY (`gadget_type_id`) REFERENCES `gadget_types` (`gadget_type_id`);

--
-- Constraints for table `parts`
--
ALTER TABLE `parts`
  ADD CONSTRAINT `fk_parts_gadget_type` FOREIGN KEY (`gadget_type_id`) REFERENCES `gadget_types` (`gadget_type_id`);

--
-- Constraints for table `repairs`
--
ALTER TABLE `repairs`
  ADD CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`gadget_id`) REFERENCES `gadgets` (`gadget_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `repairs_ibfk_2` FOREIGN KEY (`technician_id`) REFERENCES `technicians` (`technician_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `repair_issues`
--
ALTER TABLE `repair_issues`
  ADD CONSTRAINT `fk_repair_issues_labor_price` FOREIGN KEY (`labor_price_id`) REFERENCES `labor_prices` (`labor_price_id`),
  ADD CONSTRAINT `repair_issues_ibfk_1` FOREIGN KEY (`repair_id`) REFERENCES `repairs` (`repair_id`) ON DELETE CASCADE;

--
-- Constraints for table `repair_parts`
--
ALTER TABLE `repair_parts`
  ADD CONSTRAINT `repair_parts_ibfk_1` FOREIGN KEY (`repair_id`) REFERENCES `repairs` (`repair_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `repair_parts_ibfk_2` FOREIGN KEY (`part_id`) REFERENCES `parts` (`part_id`) ON DELETE SET NULL;

--
-- Constraints for table `technicians`
--
ALTER TABLE `technicians`
  ADD CONSTRAINT `fk_technician_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_account` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
