-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 04:29 AM
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
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(2, 'Pawan', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'Pasindu', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(2, 1, 'Pawan', 'pawan@gmail.com', '0788602375', 'Hello!');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 2, 'Pasindu Malshan', '0770383862', 'pasindu@gmail.com', 'cash on delivery', 'padukka', 'Cheesy Fries (1690 x 1) - Chicken Spring Roll (1440 x 1) - Vegetable Spring Roll (1390 x 1) - ', 4520, '2024-03-17', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(1, 'Deep Fried Prawns Wonton', 'Appetizers', 1890, 'Deep Fried Prawns Wonton.jpg'),
(2, 'Cheesy Fries', 'Appetizers', 1690, 'Cheesy Fries.jpg'),
(3, 'Chicken Spring Roll', 'Appetizers', 1440, 'Chicken Spring Roll.jpg'),
(4, 'Vegetable Spring Roll', 'Appetizers', 1390, 'Vegetable Spring Roll.jpg'),
(5, 'Mixed Vegtable Salad', 'Appetizers', 990, 'Mixed Vegtable Salad.jpg'),
(6, 'Russian Cold Salad', 'Appetizers', 1590, 'Russian Cold Salad.jpg'),
(7, 'Steamed Rice', 'Mains', 740, 'Steamed Rice.jpg'),
(8, 'Nasi Goreng', 'Mains', 1790, 'Nasi Goreng.jpg'),
(9, 'Chicken Wok Fried Rice', 'Mains', 1090, 'Chicken Wok Fried Rice.jpg'),
(10, 'Mixed Rice', 'Mains', 1390, 'Mixed Rice.jpg'),
(11, 'Egg Fried Rice', 'Mains', 800, 'Egg Fried Rice.jpg'),
(12, 'Chicken Chopsuey rice', 'Mains', 1940, 'Chicken Chopsuey rice.jpg'),
(13, ' Vegetable Chopsuey rice', 'Mains', 1400, 'Vegetable Chopsuey rice.jpg'),
(14, ' Mixed Chopsuey rice', 'Mains', 2150, 'Mixed Seafood Chopsuey rice.jpg'),
(15, ' Fried Egg Noodles', 'Mains', 840, 'Fried Egg Noodles.jpg'),
(16, 'Vegetable Noodles', 'Mains', 800, 'Vegetable Noodles.jpg'),
(17, 'Fried Pork Noodles', 'Mains', 1090, 'Fried Pork Noodles.jpg'),
(18, 'Chicken Noodles', 'Mains', 930, 'Chicken Noodles.jpg'),
(19, 'Seafood Noodles', 'Mains', 1150, 'Seafood Noodles.jpg'),
(20, 'Chicken & Cheese Kottu', 'Mains', 1290, 'Chicken & Cheese Kottu.jpg'),
(21, 'Egg Kottu', 'Mains', 930, 'Egg Kottu.jpg'),
(22, 'Vegetable & cheese kottu', 'Mains', 1150, 'Vegetable & cheese kottu.jpg'),
(23, 'Chicken Kottu', 'Mains', 1140, 'Chicken Kottu.jpg'),
(24, 'Vegetable Kottu', 'Mains', 930, 'Vegetable Kottu.jpg'),
(25, 'Blueberry Iced Tea', 'Beverages', 700, 'Blueberry Iced Tea.jpg'),
(26, 'Blueberry Mojito', 'Beverages', 800, 'Blueberry Mojito.jpg'),
(27, 'Chocolate Milkshake', 'Beverages', 800, 'Chocolate Milkshake.jpg'),
(28, 'Classic Mojito', 'Beverages', 600, 'Classic Mojito.jpg'),
(29, 'Strawberry Mojito', 'Beverages', 850, 'Strawberry Mojito.jpg'),
(30, 'Strawberry Milkshake', 'Beverages', 850, 'Strawberry Milkshake.jpg'),
(31, 'Vanilla Milkshake', 'Beverages', 840, 'Vanilla Milkshake.jpg'),
(32, 'Chocolate Mousse', 'Desserts', 1090, 'Chocolate Mousse.jpg'),
(33, 'Cheese Cake', 'Desserts', 1190, 'Cheese Cake.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(1, 'Pawan Perera', 'pawan@gmail.com', '0788602374', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'Malabe'),
(2, 'Pasindu Malshan', 'pasindu@gmail.com', '0770383862', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'padukka'),
(3, 'Naveen', 'naveen@gmail.com', '0788602355', '4233137d1c510f2e55ba5cb220b864b11033f156', 'Kottawa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
