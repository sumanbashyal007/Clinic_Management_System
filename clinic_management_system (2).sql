-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2020 at 09:58 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clinic_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_credentials`
--

CREATE TABLE `admin_credentials` (
  `id` int(11) NOT NULL,
  `admin_username` varchar(100) DEFAULT NULL,
  `admin_password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_credentials`
--

INSERT INTO `admin_credentials` (`id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin1234');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_credentials`
--

CREATE TABLE `doctor_credentials` (
  `id` int(11) NOT NULL,
  `Doctor_Name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Doctor_Age` varchar(100) DEFAULT NULL,
  `Doctor_Gender` varchar(100) DEFAULT NULL,
  `Doctor_Address` varchar(100) DEFAULT NULL,
  `Doctor_Qualification` varchar(100) DEFAULT NULL,
  `Doctor_University` varchar(100) DEFAULT NULL,
  `Doctor_Speciality` varchar(100) DEFAULT NULL,
  `Doctor_Email` varchar(100) DEFAULT NULL,
  `Admin_Approval` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor_credentials`
--

INSERT INTO `doctor_credentials` (`id`, `Doctor_Name`, `username`, `password`, `Doctor_Age`, `Doctor_Gender`, `Doctor_Address`, `Doctor_Qualification`, `Doctor_University`, `Doctor_Speciality`, `Doctor_Email`, `Admin_Approval`) VALUES
(1, 'suman', 'suman07', 'suman123', '20', 'Male', 'Butwal', 'M.B.B.S', 'Coventry', 'Surgeon', 'suman@gmail.com', 'Yes'),
(3, 'aashrit', 'aashrit07', 'aashrit1234', '22', 'Male', 'Patan', 'B.P.T', 'P.U', 'Phisiotherapist', 'aashrit@gmail.com', 'Yes'),
(4, 'sunil', 'sunil07', 'sunil123', '23', 'Male', 'Bhaktapur', 'M.D', 'K.U', 'Surgeon', 'sunil@gmail.com', 'Yes'),
(5, 'suraj', 'suraj07', 'suraj123', '19', 'Male', 'Gorkha', 'M.B.B.S', 'Harvard', 'E.N.T', 'suraj@gmail.com', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `Medicine_name` varchar(100) DEFAULT NULL,
  `Medicine_type` varchar(100) DEFAULT NULL,
  `Medicine_price` varchar(100) DEFAULT NULL,
  `Medicine_dose` varchar(100) DEFAULT NULL,
  `Medicine_company` varchar(100) DEFAULT NULL,
  `Medicine_expiry` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id`, `Medicine_name`, `Medicine_type`, `Medicine_price`, `Medicine_dose`, `Medicine_company`, `Medicine_expiry`) VALUES
(1, 'Nims', 'Painkiller', '10', '500', 'Nepal Pharma Ltd', '2021 Nov'),
(2, 'Rabra', 'Antiulcer', '120', '80', 'Nepal Pharma Ltd', '2021 Nov'),
(3, 'Dolopar', 'Olflaxin', '300', '100', 'Deurali Pharma Ltd', '2022 Jun'),
(4, 'Paracetamol', 'PainKiller', '15', '500', 'Standardmed Pharma Ltd', '2022 Jun'),
(5, 'Pantraprajol', 'Antacid', '20', '200', 'Hamro Pharma Ltd', '2022 Dec');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `Patient_Name` varchar(100) DEFAULT NULL,
  `Patient_Age` varchar(100) DEFAULT NULL,
  `Patient_Gender` varchar(100) DEFAULT NULL,
  `Patient_weight` varchar(100) DEFAULT NULL,
  `Patient_Height` varchar(100) DEFAULT NULL,
  `Patient_Adderess` varchar(100) DEFAULT NULL,
  `Patient_Contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `Patient_Name`, `Patient_Age`, `Patient_Gender`, `Patient_weight`, `Patient_Height`, `Patient_Adderess`, `Patient_Contact`) VALUES
(1, 'Sajeena', '20', 'Female', '45', '5\"7', 'Butwal', '123456789'),
(2, 'Anisha', '19', 'Female', '43', '5\"6', 'Butwal', '123126789'),
(3, 'Abhiskar', '19', 'Male', '52', '5\"10', 'Kathmandu', '123125639'),
(4, 'Aayam', '19', 'Male', '57', '6\"0', 'Patan', '433125639'),
(5, 'Sandip', '21', 'Male', '59', '5\'7', 'Bhaktapur', '226897431'),
(6, 'Ganga', '22', 'Female', '50', '5\'7', 'Bhaktapur', '554612783'),
(7, 'Rahar', '19', 'Male', '61', '5\"10', 'Bhirahawa', '778364125'),
(8, 'Bibek', '23', 'Male', '65', '6\"1', 'Palpa', '45231987'),
(9, 'Kaveeta', '19', 'Female', '52', '5\"8', 'Parbat', '578961234'),
(10, 'Arjun', '25', 'Male', '55', '5\'9\"', 'Manang', '556321798');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `medicine_id` int(11) DEFAULT NULL,
  `med_quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `patient_id`, `service_id`, `medicine_id`, `med_quantity`) VALUES
(2, 1, 12, 3, 2),
(3, 1, 12, 4, 2),
(6, 1, 12, 4, 2),
(9, 2, 8, 3, 2),
(10, 9, 5, 2, 2),
(11, 9, 5, 2, 2),
(12, 9, 12, 4, 3),
(13, 1, 2, 2, 5),
(14, 1, 3, 3, 2),
(15, 1, 3, 3, 2),
(16, 1, 3, 3, 2),
(17, 1, 3, 3, 2),
(18, 1, 1, 3, 2),
(19, 1, 1, 2, 2),
(20, 3, 3, 5, 3),
(21, 3, 5, 3, 2),
(22, 10, 5, 3, 3),
(23, 9, 3, 5, 2),
(24, 6, 2, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(11) NOT NULL,
  `Doctor_Name` varchar(100) DEFAULT NULL,
  `Time` varchar(100) DEFAULT NULL,
  `Doctor_availability` varchar(100) DEFAULT NULL,
  `Patient_name` varchar(100) DEFAULT NULL,
  `Appointed_by` varchar(100) DEFAULT NULL,
  `Booking_status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `Doctor_Name`, `Time`, `Doctor_availability`, `Patient_name`, `Appointed_by`, `Booking_status`) VALUES
(1, 'suman', '7 A.M', 'Available', 'Sajeena', 'suhana07', 'Approved'),
(2, 'suman', '2 A.M', 'Available', 'Anisha', 'suhana07', 'Approved'),
(3, 'aashrit', '8 A.M', 'Available', 'Abhiskar', 'suhana07', 'Pending'),
(4, 'aashrit', '11 A.M', 'Available', 'Aayam', 'suhana07', 'Pending'),
(5, 'sunil', '9 A.M', 'Available', 'Sandip', 'suhana07', 'Pending'),
(6, 'suraj', '8 A.M', 'Available', 'Ganga', 'suhana07', 'Approved'),
(7, 'suraj', '11 A.M', 'Available', 'Rahar', 'suhana07', 'Pending'),
(8, 'suraj', '7 A.M', 'Available', 'Arjun', 'suhana07', 'Approved'),
(9, 'suman', '8 A.M', 'Available', 'Kaveeta', 'suhana07', 'Approved'),
(10, 'suman', '11 A.M', 'Available', 'Abhiskar', 'suhana07', 'Approved'),
(11, 'suman', '3 A.M', 'Available', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `Service_name` varchar(100) DEFAULT NULL,
  `Service_type` varchar(100) DEFAULT NULL,
  `Service_price` varchar(100) DEFAULT NULL,
  `Service_availability` varchar(100) DEFAULT NULL,
  `Service_prescription` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `Service_name`, `Service_type`, `Service_price`, `Service_availability`, `Service_prescription`) VALUES
(1, 'Blood Test', 'WBC Count', '1100', 'Morning', 'Drink much water'),
(2, 'Blood Test', 'RBC Count', '1100', 'Morning', 'Drink much water'),
(3, 'Blood Test', 'Haemoglobin Count', '1100', 'Morning', 'Drink much water'),
(4, 'Blood Test', 'Platlets Count', '1100', 'Morning', 'Drink much water'),
(5, 'X-ray', 'Chest x-ray', '2500', 'Noon', 'Open Jewelleries'),
(6, 'X-ray', 'Leg x-ray', '2000', 'Noon', 'Open Jewelleries'),
(7, 'X-ray', 'Hand x-ray', '2000', 'Noon', 'Open Jewelleries'),
(8, 'Video X-ray', 'Abdomen', '3000', 'Noon', 'Open Jewelleries'),
(9, 'Widal test', 'Stool test', '800', 'Evening', 'Open Jewelleries'),
(10, 'Urine Test', 'Bacterial check', '750', 'Evening', 'Drink much water'),
(11, 'Widal test', 'Stool test', '700', 'Evening', 'Stay empty stomach'),
(12, '--/--', '--/--', '0', '--/--', '--/--'),
(17, 'test_item', 'test_type', '100', 'test_availability', 'test_prescription');

-- --------------------------------------------------------

--
-- Table structure for table `staff_credentials`
--

CREATE TABLE `staff_credentials` (
  `id` int(11) NOT NULL,
  `Staff_Name` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `Staff_Age` varchar(100) DEFAULT NULL,
  `Staff_Gender` varchar(100) DEFAULT NULL,
  `Staff_Address` varchar(100) DEFAULT NULL,
  `Staff_Qualification` varchar(100) DEFAULT NULL,
  `Staff_University` varchar(100) DEFAULT NULL,
  `Staff_Email` varchar(100) DEFAULT NULL,
  `Admin_approval` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_credentials`
--

INSERT INTO `staff_credentials` (`id`, `Staff_Name`, `username`, `password`, `Staff_Age`, `Staff_Gender`, `Staff_Address`, `Staff_Qualification`, `Staff_University`, `Staff_Email`, `Admin_approval`) VALUES
(1, 'Deepak', 'Deepak07', 'deepak123', '20', 'Male', 'Butwal', 'B.Pharma', 'coventry', 'deepak@gmail.com', 'Yes'),
(2, 'Shishir', 'Shishir07', 'shishir123', '22', 'Male', 'Chitwan', 'B.B.S', 'P.U', 'Shishir@hotmail.com', 'Yes'),
(3, 'prakriti', 'prakriti07', 'prakriti123', '19', 'Female', 'Kathmandu', 'B.Nursing', 'K.U', 'Prakriti@yahoo.com', 'Yes'),
(4, 'suhana', 'suhana07', 'suhana123', '22', 'Female', 'Kathmandu', 'BSc.Nursing', 'T.U', 'suhana@gmail.com', 'Yes');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor_credentials`
--
ALTER TABLE `doctor_credentials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `service_id` (`service_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_credentials`
--
ALTER TABLE `staff_credentials`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_credentials`
--
ALTER TABLE `admin_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_credentials`
--
ALTER TABLE `doctor_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `staff_credentials`
--
ALTER TABLE `staff_credentials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `prescription`
--
ALTER TABLE `prescription`
  ADD CONSTRAINT `prescription_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `prescription_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `prescription_ibfk_3` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
