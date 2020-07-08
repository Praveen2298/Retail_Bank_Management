-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 12:32 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Customer_id` int(9) NOT NULL,
  `Account_id` int(9) NOT NULL,
  `Account_type` varchar(20) NOT NULL,
  `Balance` varchar(100) NOT NULL,
  `Acc_Cr_date` datetime NOT NULL,
  `Acc_ls_date` datetime NOT NULL,
  `Account_status` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Account of the customer';

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Customer_id`, `Account_id`, `Account_type`, `Balance`, `Acc_Cr_date`, `Acc_ls_date`, `Account_status`) VALUES
(222222221, 333333331, 'S', '5700', '2020-06-15 00:00:00', '2020-06-16 21:18:41', 'Active'),
(22222222, 333333332, 'S', '5800', '2020-06-16 20:13:06', '2020-06-17 14:05:18', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ssn` int(9) NOT NULL,
  `custid` int(9) NOT NULL,
  `name` varchar(25) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Customer  Table';

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ssn`, `custid`, `name`, `age`, `address`, `state`, `city`) VALUES
(111111111, 222222221, 'Rameshkumar', 21, '1,southstreet,pvm', 'Tn', 'VNR'),
(111111112, 222222222, 'rohith sharma', 31, '1,getstreet', 'Maharastra', 'mumbai'),
(111111113, 222222226, 'praveen', 21, '5615', 'Tamilnadu', 'madurai');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `t_no` int(9) NOT NULL,
  `customerid` int(9) NOT NULL,
  `s_accountid` int(9) NOT NULL,
  `s_accounttype` varchar(20) NOT NULL,
  `t_account_id` int(9) NOT NULL,
  `t_accounttype` varchar(20) NOT NULL,
  `dates` date NOT NULL,
  `amount` varchar(100) NOT NULL,
  `operation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Transaction table';

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`t_no`, `customerid`, `s_accountid`, `s_accounttype`, `t_account_id`, `t_accounttype`, `dates`, `amount`, `operation`) VALUES
(555555551, 222222221, 333333331, 'S', 333333332, 'S', '2020-06-12', '200', 'Transfer'),
(555555552, 222222222, 333333332, 'S', 333333331, 'S', '2020-06-11', '100', 'Transfer'),
(555555553, 222222221, 333333331, 'S', 333333331, 'S', '2020-06-16', '500', 'Deposit'),
(555555554, 222222221, 333333331, 'S', 333333331, 'S', '2020-06-16', '200', 'Withdraw'),
(555555555, 222222221, 333333331, 'S', 333333331, 'S', '2020-06-16', '200', 'Deposit'),
(555555556, 22222222, 333333332, 'S', 333333332, 'S', '2020-06-17', '100', 'Deposit'),
(555555557, 22222222, 333333332, 'S', 333333332, 'S', '2020-06-17', '100', 'Withdraw'),
(555555558, 22222222, 333333332, 'S', 333333331, 'S', '2020-06-17', '200', 'Transfer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Rameshkumar', 'rk@gmail.com', 'rk'),
(2, 'praveenn', 'a@gmail.com', 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`custid`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`t_no`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `custid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222222227;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `t_no` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=555555559;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
