-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 02, 2025 at 09:17 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lsl_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_accounts_catogery`
--

CREATE TABLE `tbl_accounts_catogery` (
  `acc_id` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL,
  `account_type` varchar(100) NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `create_date` date NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(100) NOT NULL,
  `modified_date` date NOT NULL,
  `status` varchar(15) NOT NULL DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_accounts_catogery`
--

INSERT INTO `tbl_accounts_catogery` (`acc_id`, `Description`, `account_type`, `created_by`, `create_date`, `modified_by`, `modified_date`, `status`) VALUES
(1, 'Bank Charge', 'expenses', 'admin', '2024-11-17', 'admin', '0000-00-00', 'Active'),
(2, 'Test', 'income', 'admin', '2024-11-19', '', '0000-00-00', 'Active'),
(3, 'Loan Interest Pay', 'expenses', 'admin', '2024-11-29', '', '0000-00-00', 'Active'),
(4, 'Loan Repay', 'expenses', 'admin', '2024-11-29', '', '0000-00-00', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `membership_number` varchar(12) NOT NULL,
  `name_with_initials` varchar(255) NOT NULL,
  `nic_no` varchar(12) NOT NULL,
  `namesinhala` varchar(500) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `postal_address` text NOT NULL,
  `job_position` varchar(255) DEFAULT NULL,
  `job_address` text DEFAULT NULL,
  `fixed_phone` varchar(15) DEFAULT NULL,
  `mobile_phone` varchar(15) DEFAULT NULL,
  `marital_status` enum('Single','Married') NOT NULL,
  `spouse_name` varchar(255) DEFAULT NULL,
  `spouse_job` varchar(255) DEFAULT NULL,
  `spouse_phone` varchar(15) DEFAULT NULL,
  `nic_document` varchar(255) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `created_by` int(11) DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` int(11) DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `full_name`, `membership_number`, `name_with_initials`, `nic_no`, `namesinhala`, `gender`, `postal_address`, `job_position`, `job_address`, `fixed_phone`, `mobile_phone`, `marital_status`, `spouse_name`, `spouse_job`, `spouse_phone`, `nic_document`, `status`, `created_by`, `created_date`, `modified_by`, `modified_date`) VALUES
(1, 'Lahiru', 'LSLC000001', 'A B C Dasun', '12332323', 'ලහිරු ', '', '23 sdsd', NULL, 'sadasd', '12323123', '232323', 'Married', 'asdad dasd', 'adsadad', '23424234', NULL, 'active', 0, '2024-10-20 21:26:41', 0, '2024-12-30 17:52:04'),
(2, 'ads asd dasd', 'LSLC000002', 'D C D MEL', '3424424', '', '', '3242', '2 rer', '34 f edf', '3434', '3434', 'Married', '3434', '3434', '343ds', 'nic.jpg', 'active', 0, '2024-10-20 21:34:27', 0, '2024-10-22 22:37:50'),
(3, 'asanka gayan sampath', 'LSLC000003', 'A G Sampath', '485632222', '', '', 'asdasd', 'Dasa', 'asdadsad', '', '77159852', 'Married', 'abc', 'hd', '78456222', NULL, 'active', 0, '2024-10-22 22:40:57', NULL, '2024-10-22 22:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses`
--

CREATE TABLE `tbl_expenses` (
  `exp_id` int(10) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `billType` varchar(10) NOT NULL,
  `payto` varchar(250) NOT NULL,
  `bill_no` varchar(10) DEFAULT NULL,
  `exp_cat` varchar(10) DEFAULT NULL,
  `exp_desc` varchar(250) NOT NULL,
  `amount` double(10,2) NOT NULL,
  `sup_id` varchar(10) DEFAULT NULL,
  `pay_id` varchar(10) NOT NULL,
  `cheque_no` varchar(10) DEFAULT NULL,
  `realize_date` date DEFAULT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  `expenseremark` varchar(500) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_expenses`
--

INSERT INTO `tbl_expenses` (`exp_id`, `loan_id`, `billType`, `payto`, `bill_no`, `exp_cat`, `exp_desc`, `amount`, `sup_id`, `pay_id`, `cheque_no`, `realize_date`, `create_by`, `create_date`, `modified_by`, `modified_date`, `expenseremark`, `status`) VALUES
(70, 1, '', '', NULL, NULL, 'Interest reduction approved by manager: lasitha - Original Amount: 4000, Reduced to: 3000', 1000.00, NULL, '', NULL, NULL, '', '2024-12-30 18:13:02', '', '0000-00-00 00:00:00', NULL, 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expenses_details`
--

CREATE TABLE `tbl_expenses_details` (
  `detail_id` int(11) NOT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `exp_cat` varchar(100) DEFAULT NULL,
  `exp_desc` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income`
--

CREATE TABLE `tbl_income` (
  `income_id` int(10) NOT NULL,
  `billType` varchar(10) NOT NULL,
  `froms` varchar(250) NOT NULL,
  `Inv_no` varchar(10) DEFAULT NULL,
  `inc_cat` varchar(10) DEFAULT NULL,
  `inc_desc` varchar(250) NOT NULL,
  `amount` double NOT NULL,
  `cust_ID` varchar(10) DEFAULT NULL,
  `pay_id` varchar(10) NOT NULL,
  `create_by` varchar(20) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(11) NOT NULL,
  `modified_date` datetime NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_installments`
--

CREATE TABLE `tbl_installments` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `installment_amount` decimal(10,2) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `status` enum('Pending','Paid') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_st_date` date DEFAULT NULL,
  `payment_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_installments`
--

INSERT INTO `tbl_installments` (`id`, `loan_id`, `installment_amount`, `due_date`, `status`, `created_at`, `payment_st_date`, `payment_end_date`) VALUES
(18, 1, '0.00', '2024-10-23', 'Paid', '2024-12-26 17:42:55', '2024-10-23', '2024-11-22'),
(19, 1, '1666.67', '2024-11-22', 'Pending', '2024-12-26 17:42:55', '2024-11-22', '2024-12-22'),
(20, 1, '1666.67', '2024-12-22', 'Pending', '2024-12-26 17:42:55', '2024-12-22', '2025-01-21'),
(81, 2, '0.00', '2024-10-23', 'Paid', '2024-12-26 17:42:55', '2024-10-23', '2024-11-22'),
(82, 2, '1666.67', '2024-11-22', 'Pending', '2024-12-26 17:42:55', '2024-11-22', '2024-12-22'),
(83, 2, '1666.67', '2024-12-22', 'Pending', '2024-12-26 17:42:55', '2024-12-22', '2025-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lender`
--

CREATE TABLE `tbl_lender` (
  `id` int(11) NOT NULL,
  `lender_name` varchar(255) NOT NULL,
  `lender_address` text NOT NULL,
  `lender_phone` varchar(15) NOT NULL,
  `lender_email` varchar(255) DEFAULT NULL,
  `created_by` varchar(50) NOT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` datetime DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active',
  `lender_nic_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lender`
--

INSERT INTO `tbl_lender` (`id`, `lender_name`, `lender_address`, `lender_phone`, `lender_email`, `created_by`, `created_date`, `modified_by`, `modified_date`, `status`, `lender_nic_no`) VALUES
(1, 'Damith', 'Athurugiriya', '0777247547', 'damith@mail.com', 'admin', '2024-11-20 02:55:13', NULL, NULL, 'Active', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lender_interest`
--

CREATE TABLE `tbl_lender_interest` (
  `id` int(11) NOT NULL,
  `lender_loan_id` int(11) NOT NULL,
  `interest_amount` decimal(15,2) NOT NULL,
  `interest_date` date NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'unpaid'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lender_interest`
--

INSERT INTO `tbl_lender_interest` (`id`, `lender_loan_id`, `interest_amount`, `interest_date`, `created_date`, `status`) VALUES
(1, 1, '2000.00', '2024-10-21', '2024-11-28 20:23:14', 'unpaid'),
(2, 1, '2040.00', '2024-11-20', '2024-11-28 20:26:05', 'unpaid'),
(6, 1, '2000.00', '2024-12-20', '2024-12-25 20:59:15', 'unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lender_loan`
--

CREATE TABLE `tbl_lender_loan` (
  `id` int(11) NOT NULL,
  `lender_id` int(11) NOT NULL,
  `monthly_interest_rate` decimal(10,2) NOT NULL,
  `requested_amount` decimal(10,2) NOT NULL,
  `repay_duration` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `loan_type` enum('Business','Personal','Gold Loan','Housing Loan') NOT NULL,
  `agreed_monthly_payment` decimal(10,2) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `balance` decimal(15,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_lender_loan`
--

INSERT INTO `tbl_lender_loan` (`id`, `lender_id`, `monthly_interest_rate`, `requested_amount`, `repay_duration`, `purpose`, `loan_type`, `agreed_monthly_payment`, `created_by`, `create_date`, `balance`) VALUES
(1, 1, '2.00', '100000.00', 24, 's', 'Business', '5000.00', 'admin', '2024-09-26 23:51:13', '110040.00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan`
--

CREATE TABLE `tbl_loan` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `monthly_interest_rate` decimal(5,2) NOT NULL,
  `requested_amount` decimal(10,2) NOT NULL,
  `repay_duration` int(11) NOT NULL,
  `purpose` varchar(255) NOT NULL,
  `agreed_monthly_payment` decimal(10,2) NOT NULL,
  `loan_type` enum('Business','Personal','Gold Loan','Housing Loan') NOT NULL,
  `guarantee_1` int(11) DEFAULT NULL,
  `guarantee_2` int(11) DEFAULT NULL,
  `guarantee_type` enum('Land','Vehicle') NOT NULL,
  `land_address` varchar(255) DEFAULT NULL,
  `land_size` varchar(50) DEFAULT NULL,
  `land_empty` enum('Yes','No') DEFAULT 'Yes',
  `nearest_landmark` varchar(255) DEFAULT NULL,
  `nearest_city` varchar(255) DEFAULT NULL,
  `lawyer_name` varchar(255) DEFAULT NULL,
  `lawyer_office` varchar(255) DEFAULT NULL,
  `lawyer_address` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_payment_date` date DEFAULT NULL,
  `modified_by` varchar(255) DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'active',
  `loan_balance` decimal(10,2) DEFAULT 0.00,
  `last_installment_date` date DEFAULT NULL,
  `last_installment_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `letter_count` int(11) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_loan`
--

INSERT INTO `tbl_loan` (`id`, `customer_id`, `monthly_interest_rate`, `requested_amount`, `repay_duration`, `purpose`, `agreed_monthly_payment`, `loan_type`, `guarantee_1`, `guarantee_2`, `guarantee_type`, `land_address`, `land_size`, `land_empty`, `nearest_landmark`, `nearest_city`, `lawyer_name`, `lawyer_office`, `lawyer_address`, `created_by`, `create_date`, `last_payment_date`, `modified_by`, `modified_date`, `status`, `loan_balance`, `last_installment_date`, `last_installment_amount`, `letter_count`) VALUES
(1, 1, '4.00', '100000.00', 60, 'personal', '1666.67', 'Personal', 3, 2, '', 'adasd', 'asdad', 'No', 'asdd', 'asd', 'asdad', 'asdad', 'asdad', 'admin', '2024-09-22 22:52:17', '2024-12-30', NULL, '2024-12-30 21:01:32', 'active', '106819.73', '0000-00-00', '3666.67', 3),
(2, 1, '4.00', '100000.00', 60, 'personal', '1666.67', 'Personal', 3, 2, '', 'adasd', 'asdad', 'No', 'asdd', 'asd', 'asdad', 'asdad', 'asdad', 'admin', '2024-09-22 22:52:17', '2024-12-27', NULL, '2024-12-31 08:17:42', 'active', '112486.00', '0000-00-00', '3000.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_interest`
--

CREATE TABLE `tbl_loan_interest` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `interest_amount` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(10) DEFAULT NULL,
  `modified_date` datetime NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Pending',
  `balance_interest` decimal(10,2) DEFAULT 0.00,
  `payment_st_date` date DEFAULT NULL,
  `payment_end_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_loan_interest`
--

INSERT INTO `tbl_loan_interest` (`id`, `loan_id`, `interest_amount`, `payment_date`, `created_by`, `created_date`, `modified_by`, `modified_date`, `status`, `balance_interest`, `payment_st_date`, `payment_end_date`) VALUES
(48, 1, '4000.00', '2024-10-23', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Paid', '0.00', '2024-10-23', '2024-11-22'),
(49, 1, '4160.00', '2024-11-22', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Pending', '4160.00', '2024-11-22', '2024-12-22'),
(50, 1, '4326.40', '2024-12-22', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Pending', '4326.00', '2024-12-22', '2025-01-21'),
(111, 2, '4000.00', '2024-10-23', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Paid', '0.00', '2024-10-23', '2024-11-22'),
(112, 2, '4160.00', '2024-11-22', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Pending', '4160.00', '2024-11-22', '2024-12-22'),
(113, 2, '4326.40', '2024-12-22', 0, '2024-12-26 15:51:26', NULL, '0000-00-00 00:00:00', 'Pending', '4326.00', '2024-12-22', '2025-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payments`
--

CREATE TABLE `tbl_payments` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount_paid` decimal(10,2) NOT NULL,
  `interest_paid` decimal(10,2) NOT NULL,
  `remaining_interest` decimal(10,2) DEFAULT NULL,
  `payment_method` enum('Cash','Bank Deposit') NOT NULL,
  `manager_approval` tinyint(1) DEFAULT 0,
  `created_by` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_payments`
--

INSERT INTO `tbl_payments` (`id`, `loan_id`, `customer_id`, `amount_paid`, `interest_paid`, `remaining_interest`, `payment_method`, `manager_approval`, `created_by`, `create_date`, `status`) VALUES
(90, 1, 1, '1000.00', '0.00', NULL, 'Cash', 0, '0', '2024-12-29 12:42:36', 'Paid'),
(91, 1, 1, '3666.67', '0.00', NULL, 'Cash', 0, '0', '2024-12-30 12:43:05', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment_types`
--

CREATE TABLE `tbl_payment_types` (
  `Pay_id` int(11) NOT NULL,
  `pay_desc` varchar(100) NOT NULL,
  `Cash_Bank` varchar(10) NOT NULL,
  `Credit_Debit` varchar(20) DEFAULT NULL,
  `Card_Type` varchar(10) DEFAULT NULL,
  `Created_by` varchar(50) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified_by` varchar(50) DEFAULT NULL,
  `modified_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_payment_types`
--

INSERT INTO `tbl_payment_types` (`Pay_id`, `pay_desc`, `Cash_Bank`, `Credit_Debit`, `Card_Type`, `Created_by`, `create_date`, `modified_by`, `modified_date`, `status`) VALUES
(1, 'Cash', 'cash', NULL, NULL, 'Admin', '2023-08-12 16:59:43', NULL, '2023-08-12 21:22:18', 'active'),
(2, 'Credit', 'credit', NULL, NULL, 'Admin', '2023-08-12 17:03:21', NULL, '2023-08-12 21:23:01', 'active'),
(3, 'NTB', 'bank', 'credit', 'visa', 'Admin', '2023-08-12 19:51:18', NULL, '2024-07-31 06:56:53', 'inactive'),
(4, 'AMEX', 'bank', 'debit', 'amex', 'Admin', '2023-08-12 21:30:34', NULL, '2024-07-31 06:54:05', 'active'),
(5, 'Visa Card', 'bank', 'credit', 'visa', 'Admin', '2023-08-12 21:30:50', NULL, '2024-07-31 06:49:51', 'active'),
(6, 'Master Card', 'bank', 'debit', 'master', 'Admin', '2023-08-12 21:30:59', NULL, '2024-07-31 06:54:11', 'active'),
(7, 'Mint Pay', 'other', NULL, NULL, 'Admin', '2023-08-12 21:31:19', NULL, '2023-08-12 21:31:19', 'active'),
(8, 'Gift Voucher', 'GV', NULL, NULL, 'Admin', '2023-09-07 20:53:31', NULL, '2023-11-20 20:08:09', 'inactive'),
(10, 'Advance', 'other', NULL, NULL, 'Admin', '2023-09-24 22:06:06', NULL, '2023-09-24 22:06:06', 'active'),
(11, 'Online', 'Online', NULL, NULL, 'Admin', '2023-10-30 21:32:17', NULL, '2023-10-30 21:32:38', 'active'),
(12, 'Bank', 'other', NULL, NULL, 'Admin', '2024-02-14 06:27:51', NULL, '2024-02-14 06:27:51', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sms`
--

CREATE TABLE `tbl_sms` (
  `SMS_ID` int(11) NOT NULL,
  `Message` text NOT NULL,
  `SMS_type` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date_time` datetime DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `phoneNo` varchar(20) NOT NULL,
  `refno` varchar(20) NOT NULL,
  `ser_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_sms`
--

INSERT INTO `tbl_sms` (`SMS_ID`, `Message`, `SMS_type`, `status`, `date_time`, `send_date_time`, `phoneNo`, `refno`, `ser_Id`) VALUES
(25, 'Dear A B C Dasun, Thank you for your payment of Rs. 1,666.67. We appreciate your prompt payment.', 'payment', 'pending', '2024-12-30 18:03:27', NULL, '232323', '', 0),
(26, 'Dear A B C Dasun, Thank you for your payment of Rs. 1,000.00. We appreciate your prompt payment.', 'payment', 'pending', '2024-12-30 18:03:53', NULL, '232323', '', 0),
(27, 'Dear A B C Dasun, Thank you for your payment of Rs. 2,500.00. We appreciate your prompt payment.', 'payment', 'pending', '2024-12-30 18:04:53', NULL, '232323', '', 0),
(28, 'Dear A B C Dasun, Thank you for your payment of Rs. 1,000.00. We appreciate your prompt payment.', 'payment', 'pending', '2024-12-30 18:12:36', NULL, '232323', '', 0),
(29, 'Dear A B C Dasun, Thank you for your payment of Rs. 3,666.67. We appreciate your prompt payment.', 'payment', 'pending', '2024-12-30 18:13:05', NULL, '232323', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(10) NOT NULL,
  `username` varchar(60) NOT NULL,
  `user_type` varchar(10) NOT NULL,
  `name` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` int(20) NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'Active',
  `create_date` datetime NOT NULL DEFAULT current_timestamp(),
  `created_by` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `user_type`, `name`, `password`, `email`, `phone`, `status`, `create_date`, `created_by`) VALUES
(1, 'admin', 'admin', 'sys admin', '8cb2237d0679ca88db6464eac60da96345513964', 'admin@lsl.lk', 779492602, 'Active', '2024-10-15 02:33:26', 'admin'),
(2, 'lasitha', 'Manager', 'Lasitha', '8cb2237d0679ca88db6464eac60da96345513964', 'lasitha@lsl.lk', 71458962, 'Active', '2024-10-20 04:44:20', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_warning_letters`
--

CREATE TABLE `tbl_warning_letters` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `warning_type` enum('first','second','final') NOT NULL,
  `issued_date` date NOT NULL,
  `sent_by` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(10) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_warning_letters`
--

INSERT INTO `tbl_warning_letters` (`id`, `customer_id`, `loan_id`, `message`, `warning_type`, `issued_date`, `sent_by`, `created_date`, `status`) VALUES
(90, 1, 1, '2024-12-31\nඅවසන් සිහිකැදවීමයි\nනම  : ලහිරු \nජා. හැ. අ:  12332323\nසා. මා. අ : LSLC000001\n\nණය වාරික ගෙවීම පැහැර හැරීම සම්බන්ධවයි.\nලහිරු  යන අය ඒල්. එස්. ඒල්. ක්‍රෙඩිටි ඇන්ඩ් ඉන්වෙස්මන්ටි (ප්‍රයිවට්) ලිමිටඩ් ආයතනය මගින් ණය මුදලක් ලබාගෙන ඇති අතර, මේ වන විට එම ණය මුදල ආපසු ගෙවිම ප්‍රමාදවී ඇත, මීට පෙර ඹබ වෙත සිහි කැදවීම් ලිපි යොමුකලත් ඒ සම්බන්දයෙන් ආයතනය කිසිදු දැනුවත් කිරීමක් ඔබ විසින් සිදු කළ නොමැත. ආයතනික ක්‍රියාමාර්ග සියල්ල අවසාන සිහිකැඳවීම මගින් අවසන් වන අතර අපගේ නීතීඥ මණ්ඩලයේ නීතීඥ මහතෙකු විසින් ඔබට එන්තරවාසියක් ලැබීමට සලස්වන අතර එහිදී නීතීඥ උපදෙස් අනුව නඩු පැවරීම සිදු කරනු ලබයි. මෙය ආයතනය ලෙස දැනුවත් කරන අවසාන ලිපිය වෙයි.\n\nමුල් ණය මුදල: රු. 100,000.00\nමාසික වාරික මුදල: රු. 1,666.67\nහිඟ වාරික මුදල: රු. 3,333.34\nහිඟ පොලී මුදල: රු. 8,486.00\nමුළු හිඟ මුදල: රු. 11,819.34\n\nමීට ,\nඅධ්‍යක්ෂක.\n\n( මෙම එක් සිහිකැදවීීම් ලිපියක් සදහා රැපියල් 250.00 මුදලක් අයවෙන බවද මෙයින් දන්වා සිටී. )', 'final', '2024-12-31', 1, '2024-12-31 08:22:10', 'Pending'),
(91, 1, 2, '2024-12-31\nඅවසන් සිහිකැදවීමයි\nනම  : ලහිරු \nජා. හැ. අ:  12332323\nසා. මා. අ : LSLC000001\n\nණය වාරික ගෙවීම පැහැර හැරීම සම්බන්ධවයි.\nලහිරු  යන අය ඒල්. එස්. ඒල්. ක්‍රෙඩිටි ඇන්ඩ් ඉන්වෙස්මන්ටි (ප්‍රයිවට්) ලිමිටඩ් ආයතනය මගින් ණය මුදලක් ලබාගෙන ඇති අතර, මේ වන විට එම ණය මුදල ආපසු ගෙවිම ප්‍රමාදවී ඇත, මීට පෙර ඹබ වෙත සිහි කැදවීම් ලිපි යොමුකලත් ඒ සම්බන්දයෙන් ආයතනය කිසිදු දැනුවත් කිරීමක් ඔබ විසින් සිදු කළ නොමැත. ආයතනික ක්‍රියාමාර්ග සියල්ල අවසාන සිහිකැඳවීම මගින් අවසන් වන අතර අපගේ නීතීඥ මණ්ඩලයේ නීතීඥ මහතෙකු විසින් ඔබට එන්තරවාසියක් ලැබීමට සලස්වන අතර එහිදී නීතීඥ උපදෙස් අනුව නඩු පැවරීම සිදු කරනු ලබයි. මෙය ආයතනය ලෙස දැනුවත් කරන අවසාන ලිපිය වෙයි.\n\nමුල් ණය මුදල: රු. 100,000.00\nමාසික වාරික මුදල: රු. 1,666.67\nහිඟ වාරික මුදල: රු. 3,333.34\nහිඟ පොලී මුදල: රු. 8,486.00\nමුළු හිඟ මුදල: රු. 11,819.34\n\nමීට ,\nඅධ්‍යක්ෂක.\n\n( මෙම එක් සිහිකැදවීීම් ලිපියක් සදහා රැපියල් 250.00 මුදලක් අයවෙන බවද මෙයින් දන්වා සිටී. )', 'final', '2024-12-31', 1, '2024-12-31 08:22:10', 'Pending');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_accounts_catogery`
--
ALTER TABLE `tbl_accounts_catogery`
  ADD PRIMARY KEY (`acc_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `membership_number` (`membership_number`),
  ADD UNIQUE KEY `nic_no` (`nic_no`);

--
-- Indexes for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `tbl_expenses_details`
--
ALTER TABLE `tbl_expenses_details`
  ADD PRIMARY KEY (`detail_id`);

--
-- Indexes for table `tbl_income`
--
ALTER TABLE `tbl_income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `tbl_installments`
--
ALTER TABLE `tbl_installments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `tbl_lender`
--
ALTER TABLE `tbl_lender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_lender_interest`
--
ALTER TABLE `tbl_lender_interest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lender_loan_id` (`lender_loan_id`);

--
-- Indexes for table `tbl_lender_loan`
--
ALTER TABLE `tbl_lender_loan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lender_id` (`lender_id`);

--
-- Indexes for table `tbl_loan`
--
ALTER TABLE `tbl_loan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_loan_interest`
--
ALTER TABLE `tbl_loan_interest`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`);

--
-- Indexes for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `tbl_payment_types`
--
ALTER TABLE `tbl_payment_types`
  ADD PRIMARY KEY (`Pay_id`);

--
-- Indexes for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  ADD PRIMARY KEY (`SMS_ID`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `tbl_warning_letters`
--
ALTER TABLE `tbl_warning_letters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loan_id` (`loan_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_accounts_catogery`
--
ALTER TABLE `tbl_accounts_catogery`
  MODIFY `acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_expenses`
--
ALTER TABLE `tbl_expenses`
  MODIFY `exp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `tbl_expenses_details`
--
ALTER TABLE `tbl_expenses_details`
  MODIFY `detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_income`
--
ALTER TABLE `tbl_income`
  MODIFY `income_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `tbl_installments`
--
ALTER TABLE `tbl_installments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `tbl_lender`
--
ALTER TABLE `tbl_lender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_lender_interest`
--
ALTER TABLE `tbl_lender_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_lender_loan`
--
ALTER TABLE `tbl_lender_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_loan`
--
ALTER TABLE `tbl_loan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_loan_interest`
--
ALTER TABLE `tbl_loan_interest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `tbl_payment_types`
--
ALTER TABLE `tbl_payment_types`
  MODIFY `Pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_sms`
--
ALTER TABLE `tbl_sms`
  MODIFY `SMS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_warning_letters`
--
ALTER TABLE `tbl_warning_letters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_installments`
--
ALTER TABLE `tbl_installments`
  ADD CONSTRAINT `tbl_installments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`id`);

--
-- Constraints for table `tbl_lender_interest`
--
ALTER TABLE `tbl_lender_interest`
  ADD CONSTRAINT `tbl_lender_interest_ibfk_1` FOREIGN KEY (`lender_loan_id`) REFERENCES `tbl_lender_loan` (`id`);

--
-- Constraints for table `tbl_lender_loan`
--
ALTER TABLE `tbl_lender_loan`
  ADD CONSTRAINT `tbl_lender_loan_ibfk_1` FOREIGN KEY (`lender_id`) REFERENCES `tbl_lender` (`id`);

--
-- Constraints for table `tbl_loan_interest`
--
ALTER TABLE `tbl_loan_interest`
  ADD CONSTRAINT `tbl_loan_interest_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`id`);

--
-- Constraints for table `tbl_payments`
--
ALTER TABLE `tbl_payments`
  ADD CONSTRAINT `tbl_payments_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`id`),
  ADD CONSTRAINT `tbl_payments_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);

--
-- Constraints for table `tbl_warning_letters`
--
ALTER TABLE `tbl_warning_letters`
  ADD CONSTRAINT `tbl_warning_letters_ibfk_1` FOREIGN KEY (`loan_id`) REFERENCES `tbl_loan` (`id`),
  ADD CONSTRAINT `tbl_warning_letters_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `tbl_customer` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
