-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 09, 2024 at 10:54 PM
-- Server version: 10.3.39-MariaDB-log-cll-lve
-- PHP Version: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `deityng_vtu`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtime`
--

CREATE TABLE `airtime` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aBuyDiscount` float NOT NULL DEFAULT 96,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL,
  `aType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtime`
--

INSERT INTO `airtime` (`aId`, `aNetwork`, `aBuyDiscount`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`, `aType`) VALUES
(1, '1', 98, 98, 98, 98, 'VTU'),
(2, '2', 95.5, 96.5, 96, 96, 'VTU'),
(3, '3', 96.5, 98.5, 98, 97.8, 'VTU'),
(4, '4', 98, 99.5, 99.2, 99, 'VTU'),
(5, '1', 98, 99.6, 99.2, 99, 'Share And Sell'),
(6, '2', 93.5, 95, 95, 94, 'Share And Sell'),
(7, '3', 87, 94, 93, 92, 'Share And Sell'),
(8, '4', 88, 91, 90, 89, 'Share And Sell');

-- --------------------------------------------------------

--
-- Table structure for table `airtimepinprice`
--

CREATE TABLE `airtimepinprice` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtimepinprice`
--

INSERT INTO `airtimepinprice` (`aId`, `aNetwork`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`) VALUES
(1, '1', 99, 98, 97),
(2, '2', 99, 98, 97),
(3, '3', 99, 98, 97),
(4, '4', 99, 98, 97);

-- --------------------------------------------------------

--
-- Table structure for table `alphatopupprice`
--

CREATE TABLE `alphatopupprice` (
  `alphaId` int(200) NOT NULL,
  `buyingPrice` int(100) NOT NULL,
  `sellingPrice` int(100) NOT NULL,
  `agent` int(100) NOT NULL,
  `vendor` int(100) NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apiconfigs`
--

CREATE TABLE `apiconfigs` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apiconfigs`
--

INSERT INTO `apiconfigs` (`aId`, `name`, `value`) VALUES
(1, 'monifyCharges', '1.8'),
(2, 'monifyApi', 'MK_PROD_2GSQ3JUJFJ'),
(3, 'monifySecrete', 'CCDS3NK2ZJD47UCNUV3HJJ8J'),
(4, 'monifyContract', '873309372131'),
(5, 'monifyWeStatus', 'Off'),
(6, 'monifyMoStatus', 'Off'),
(7, 'monifyFeStatus', 'On'),
(8, 'monifySaStatus', 'Off'),
(9, 'monifyStatus', 'Off'),
(10, 'paystackCharges', '7'),
(11, 'paystackApi', 'sk_live_b38ead3ba731b018376c40aa6e00bc17debd2f95'),
(12, 'paystackStatus', 'Off'),
(13, 'mtnVtuKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(14, 'mtnVtuProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(15, 'mtnSharesellKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(16, 'mtnSharesellProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(17, 'airtelVtuKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(18, 'airtelVtuProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(19, 'airtelSharesellKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(20, 'airtelSharesellProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(21, 'gloVtuKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(22, 'gloVtuProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(23, 'gloSharesellKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(24, 'gloSharesellProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(25, '9mobileVtuKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(26, '9mobileVtuProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(27, '9mobileSharesellKey', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(28, '9mobileSharesellProvider', 'https://goocredit.mwb.ng/api/airtime/'),
(29, 'mtnSmeApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(30, 'mtnSmeProvider', 'https://goocredit.mwb.ng/api/data/'),
(31, 'mtnGiftingApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(32, 'mtnGiftingProvider', 'https://goocredit.mwb.ng/api/data/'),
(33, 'mtnCorporateApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(34, 'mtnCorporateProvider', 'https://goocredit.mwb.ng/api/data/'),
(35, 'airtelSmeApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(36, 'airtelSmeProvider', 'https://goocredit.mwb.ng/api/data/'),
(37, 'airtelGiftingApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(38, 'airtelGiftingProvider', 'https://goocredit.mwb.ng/api/data/'),
(39, 'airtelCorporateApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(40, 'airtelCorporateProvider', 'https://goocredit.mwb.ng/api/data/'),
(41, 'gloSmeApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(42, 'gloSmeProvider', 'https://goocredit.mwb.ng/api/data/'),
(43, 'gloGiftingApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(44, 'gloGiftingProvider', 'https://goocredit.mwb.ng/api/data/'),
(45, 'gloCorporateApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(46, 'gloCorporateProvider', 'https://goocredit.mwb.ng/api/data/'),
(47, '9mobileSmeApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(48, '9mobileSmeProvider', 'https://goocredit.mwb.ng/api/data/'),
(49, '9mobileGiftingApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(50, '9mobileGiftingProvider', 'https://goocredit.mwb.ng/api/data/'),
(51, '9mobileCorporateApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(52, '9mobileCorporateProvider', 'https://goocredit.mwb.ng/api/data/'),
(53, 'cableVerificationApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(54, 'cableVerificationProvider', 'https://goocredit.mwb.ng/api/cabletv/verify/'),
(55, 'cableApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(56, 'cableProvider', 'https://goocredit.mwb.ng/api/cabletv/'),
(57, 'meterVerificationApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(58, 'meterVerificationProvider', 'https://goocredit.mwb.ng/api/electricity/verify/'),
(59, 'meterApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(60, 'meterProvider', 'https://goocredit.mwb.ng/api/electricity/'),
(61, 'examApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(62, 'examProvider', 'https://goocredit.mwb.ng/api/exam/'),
(63, 'rechargePinApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(64, 'rechargePinProvider', 'https://goocredit.mwb.ng/api/user/'),
(65, 'walletOneApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(66, 'walletOneProvider', 'https://goocredit.mwb.ng/api/user/'),
(67, 'walletOneProviderName', 'GooCredit'),
(68, 'walletTwoApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(69, 'walletTwoProvider', 'https://goocredit.mwb.ng/api/user/'),
(70, 'walletTwoProviderName', 'GooCredit'),
(71, 'walletThreeApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzCvkaf'),
(72, 'walletThreeProvider', 'https://goocredit.mwb.ng/api/user/'),
(73, 'walletThreeProviderName', 'GooCredit'),
(74, 'dataPinApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(75, 'dataPinProvider', 'https://goocredit.mwb.ng/api/datapin/'),
(76, 'alphaApi', 'dGcbIAxxCACB1xFA2840J2ADA5CrzC'),
(77, 'alphaProvider', 'https://goocredit.mwb.ng/api/user/');

-- --------------------------------------------------------

--
-- Table structure for table `apilinks`
--

CREATE TABLE `apilinks` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apilinks`
--

INSERT INTO `apilinks` (`aId`, `name`, `value`, `type`) VALUES
(1, 'GooCredit', 'https://goocredit.mwb.ng/api/exam/', 'Exam'),
(2, 'GooCredit', 'https://goocredit.mwb.ng/api/user/', 'Wallet'),
(3, 'GooCredit', 'https://goocredit.mwb.ng/api/airtime/', 'Airtime'),
(4, 'GooCredit', 'https://goocredit.mwb.ng/api/data/', 'Data'),
(5, 'GooCredit', 'https://goocredit.mwb.ng/api/cabletv/verify/', 'CableVer'),
(6, 'GooCredit', 'https://goocredit.mwb.ng/api/cabletv/', 'Cable'),
(7, 'GooCredit', 'https://goocredit.mwb.ng/api/electricity/verify/', 'ElectricityVer'),
(8, 'GooCredit', 'https://goocredit.mwb.ng/api/electricity/', 'Electricity'),
(9, 'GooCredit', 'https://goocredit.mwb.ng/alphatopup', 'Alpha Topup'),
(10, 'GooCredit', 'https://goocredit.mwb.ng/api/datapin/', 'Data Pin');

-- --------------------------------------------------------

--
-- Table structure for table `cableid`
--

CREATE TABLE `cableid` (
  `cId` int(11) NOT NULL,
  `cableid` varchar(10) DEFAULT NULL,
  `provider` varchar(10) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableid`
--

INSERT INTO `cableid` (`cId`, `cableid`, `provider`, `providerStatus`) VALUES
(1, '1', 'GOTV', 'On'),
(2, '2', 'DSTV', 'On'),
(3, '3', 'STARTIMES', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `cableplans`
--

CREATE TABLE `cableplans` (
  `cpId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cableprovider` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableplans`
--

INSERT INTO `cableplans` (`cpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `cableprovider`, `day`) VALUES
(1, 'Gotv Smallie', '1295', '1320', '1310', '1300', '1', NULL, 1, '30'),
(2, 'Gotv Jinja', '2682', '2700', '2695', '2690', '2', NULL, 1, '30'),
(3, 'Gotv Jolli', '3923', '3950', '3940', '3930', '3', NULL, 1, '30'),
(4, 'Gotv Max', '5658', '5690', '4840', '4830', '4', NULL, 1, '30'),
(5, 'Gotv Supa', '7550', '7600', '6380', '6365', '5', NULL, 1, '30'),
(6, 'Dstv Padi', '2938', '2950', '2490', '2485', '6', NULL, 2, '30'),
(7, 'Dstv Yanga', '4170', '4200', '3485', '3480', '7', NULL, 2, '30'),
(8, 'Dstv Confam', '7345', '7400', '7360', '7350', '8', NULL, 2, '30'),
(9, 'Dstv Compact', '12410', '12450', '12430', '12420', '9', NULL, 2, '30'),
(10, 'Dstv Compact Plus', '19700', '19785', '19735', '19715', '10', NULL, 2, '30'),
(11, 'Dstv Premiun', '29330', '29430', '29390', '29360', '11', NULL, 2, '30'),
(12, 'Dstv Premiun Asia', '32636', '32750', '32725', '32700', '12', NULL, 2, '30'),
(13, 'Nova 1', '1488', '1500', '1495', '1490', '13', NULL, 3, '30'),
(14, 'Basic (Antenna)', '2578', '2598', '2597', '2596', '14', NULL, 3, '30'),
(15, 'Smart (Dish)', '3470', '3500', '3480', '3490', '15', NULL, 3, '30'),
(16, 'Classic (Antenna)', '3768', '3796', '3794', '3792', '16', NULL, 3, '30'),
(17, 'Super (Dish)', '6445', '6500', '6485', '6465', '17', NULL, 3, '30'),
(18, 'Gotv Smallie', '3425', '3500', '3445', '3435', '18', NULL, 1, '90');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `msgId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto`
--

CREATE TABLE `crypto` (
  `type` varchar(255) NOT NULL,
  `network` tinyint(255) NOT NULL,
  `agentrate` varchar(255) NOT NULL,
  `userrate` varchar(255) NOT NULL,
  `vendorrate` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datapins`
--

CREATE TABLE `datapins` (
  `dpId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `datapins`
--

INSERT INTO `datapins` (`dpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(1, '1.5GB', '200', '300', '300', '300', '1', 'Gifting', 1, '30'),
(2, '500 MB', '108', '120', '120', '120', '2', 'SME', 1, '30'),
(3, '1GB', '215', '220', '220', '220', '3', 'SME', 1, '30'),
(4, '2GB', '430', '450', '450', '450', '4', 'SME', 1, '30'),
(5, '3GB', '645', '650', '650', '650', '5', 'SME', 1, '30'),
(6, '5GB', '1075', '1090', '1090', '1090', '6', 'SME', 1, '30'),
(7, '10GB', '2150', '2200', '2200', '2200', '7', 'SME', 1, '30'),
(8, '500 MB', '100', '120', '120', '120', '8', 'Corporate', 2, '30'),
(9, '1GB', '200', '220', '220', '220', '9', 'Corporate', 2, '30'),
(10, '2GB', '400', '420', '420', '420', '10', 'Corporate', 2, '30'),
(11, '5GB', '1000', '1200', '1200', '1200', '11', 'Corporate', 2, '30'),
(12, '10GB', '2000', '2200', '2200', '2200', '12', 'Corporate', 2, '30');

-- --------------------------------------------------------

--
-- Table structure for table `dataplans`
--

CREATE TABLE `dataplans` (
  `pId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dataplans`
--

INSERT INTO `dataplans` (`pId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(1, '500 MB', '127', '128', '128', '128', '1', 'SME', 1, '30'),
(2, '1GB', '255', '256', '256', '256', '2', 'SME', 1, '30'),
(3, '2GB', '508', '510', '509', '509', '3', 'SME', 1, '30'),
(4, '3GB', '765', '766', '766', '766', '4', 'SME', 1, '30'),
(5, '5GB', '1270', '1276', '1277', '1275', '5', 'SME', 1, '30'),
(6, '10GB', '2540', '2545', '2544', '2542', '6', 'SME', 1, '30'),
(7, '50MB', '26', '35', '33', '30', '7', 'Corporate', 1, '7'),
(8, '150 MB', '52', '70', '65', '60', '8', 'Corporate', 1, '7'),
(9, '250 MB', '62', '80', '75', '70', '9', 'Corporate', 1, '7'),
(10, '500 MB', '128', '130', '130', '129', '10', 'Corporate', 1, '30'),
(11, '1 GB', '255', '256', '256', '256', '11', 'Corporate', 1, '30'),
(12, '2 GB', '510', '513', '513', '512', '12', 'Corporate', 1, '30'),
(13, '2.95 GB', '765', '766', '766', '766', '13', 'Corporate', 1, '30'),
(14, '5 GB', '1275', '1278', '1277', '1276', '14', 'Corporate', 1, '30'),
(15, '10 GB', '2550', '2556', '2554', '2552', '15', 'Corporate', 1, '30'),
(16, '500 MB SME 2', '127', '130', '129', '128', '16', 'Gifting', 1, '30'),
(17, '1 GB SME 2', '253', '254', '254', '254', '17', 'Gifting', 1, '30'),
(18, '2 GB sME2', '506', '509', '508', '507', '18', 'Gifting', 1, '30'),
(19, '3 GB SME 2', '759', '769', '762', '760', '19', 'Gifting', 1, '30'),
(20, '5 GB SME 2', '1265', '1274', '1273', '1270', '20', 'Gifting', 1, '30'),
(21, '10GB SME 2', '2530', '2540', '2537', '2536', '21', 'Gifting', 1, '30'),
(22, '500 MB', '113', '116', '114', '113', '22', 'Corporate', 2, '30'),
(23, '1 GB', '221', '229', '227', '224', '23', 'Corporate', 2, '30'),
(24, '2 GB', '442', '448', '446', '444', '24', 'Corporate', 2, '30'),
(25, '3 GB', '663', '670', '668', '666', '25', 'Corporate', 2, '30'),
(26, '5 GB', '1105', '1114', '1111', '1109', '26', 'Corporate', 2, '30'),
(27, '10 GB', '2210', '2230', '2225', '2220', '27', 'Corporate', 2, '30'),
(28, '500 MB', '101', '104', '103', '103', '28', 'Corporate', 4, '30'),
(29, '1 GB', '199', '200', '200', '200', '29', 'Corporate', 4, '30'),
(30, '2 GB', '398', '399', '399', '399', '30', 'Corporate', 4, '30'),
(31, '100MB', '33', '55', '52', '48', '31', 'Corporate', 4, '30'),
(32, '5 GB', '995', '997', '996', '996', '32', 'Corporate', 4, '30'),
(33, '10 GB', '1990', '2020', '2010', '2000', '33', 'Corporate', 4, '30'),
(34, '500 MB', '71', '95', '90', '87', '34', 'Corporate', 3, '30'),
(35, '1 GB', '130', '180', '178', '175', '35', 'Corporate', 3, '30'),
(36, '2 GB', '260', '275', '270', '265', '36', 'Corporate', 3, '30'),
(37, '3 GB', '390', '400', '398', '395', '37', 'Corporate', 3, '30'),
(38, '300MB', '63', '73', '72', '70', '38', 'Corporate', 4, '14'),
(40, '10GB', '1300', '1330', '1320', '1310', '39', 'Corporate', 3, '30'),
(41, '1.8GB', '467', '478', '477', '475', '41', 'Gifting', 2, '14'),
(42, '3.9GB', '935', '948', '947', '945', '42', 'Gifting', 2, '30'),
(43, '9.2GB', '1867', '1898', '1895', '1890', '43', 'Gifting', 2, '30'),
(44, '14GB', '2790', '2850', '2830', '2820', '44', 'Gifting', 2, '30'),
(45, '10.8GB', '2325', '2370', '2365', '2360', '45', 'Gifting', 2, '30'),
(46, '650MB', '170', '185', '182', '180', '46', 'Gifting', 3, '30'),
(47, '1500', '822', '839', '838', '835', '47', 'Gifting', 3, '30'),
(48, '4500MB', '1640', '1668', '1665', '1660', '48', 'Gifting', 3, '30'),
(49, '11GB', '3275', '3318', '3315', '3310', '49', 'Gifting', 3, '30'),
(50, '200MB', '52', '60', '59', '58', '50', 'Corporate', 2, '30'),
(51, '15GB', '3780', '3830', '3810', '3800', '64', 'Corporate', 1, '30'),
(52, '20GB', '5040', '5100', '5070', '5060', '65', 'Corporate', 1, '30'),
(53, '40GB', '10080', '10200', '10150', '10100', '66', 'Corporate', 1, '30'),
(54, '20GB', '2600', '2695', '2650', '2630', '69', 'Corporate', 3, '30');

-- --------------------------------------------------------

--
-- Table structure for table `datatokens`
--

CREATE TABLE `datatokens` (
  `tId` int(100) NOT NULL,
  `sId` int(100) NOT NULL,
  `tRef` varchar(255) NOT NULL,
  `business` varchar(30) NOT NULL,
  `network` varchar(30) NOT NULL,
  `datasize` varchar(30) NOT NULL,
  `quantity` int(100) NOT NULL,
  `serial` text NOT NULL,
  `tokens` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `electricityid`
--

CREATE TABLE `electricityid` (
  `eId` int(11) NOT NULL,
  `electricityid` varchar(50) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `electricityid`
--

INSERT INTO `electricityid` (`eId`, `electricityid`, `provider`, `abbreviation`, `providerStatus`) VALUES
(1, '1', 'Ikeja Electric', 'IE', 'On'),
(2, '2', 'Eko Electric', 'EKEDC', 'On'),
(3, '3', 'Kano Electric', 'KEDCO', 'On'),
(4, '4', 'Port Harcourt Electric', 'PHEDC', 'On'),
(5, '5', 'Jos Electric', 'JED', 'On'),
(6, '6', 'Ibadan Electric', 'IBEDC', 'On'),
(7, '7', 'Kaduna Electric', 'KEDC', 'On'),
(8, '8', 'Abuja Electric', 'AEDC', 'On'),
(9, '9', 'Enugu Electric', 'ENUGU', 'On'),
(10, '10', 'Benin Electric', 'BENIN', 'On'),
(11, '11', 'Yola Electric', 'YOLA', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `examid`
--

CREATE TABLE `examid` (
  `eId` int(11) NOT NULL,
  `examid` varchar(10) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `price` int(20) NOT NULL DEFAULT 0,
  `buying_price` int(20) NOT NULL DEFAULT 0,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examid`
--

INSERT INTO `examid` (`eId`, `examid`, `provider`, `price`, `buying_price`, `providerStatus`) VALUES
(1, '1', 'WAEC', 3380, 3400, 'On'),
(2, '2', 'NECO', 1180, 1200, 'On'),
(3, '3', 'NABTEB', 715, 800, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `networkid`
--

CREATE TABLE `networkid` (
  `nId` int(11) NOT NULL,
  `networkid` varchar(10) NOT NULL,
  `smeId` varchar(10) NOT NULL,
  `giftingId` varchar(10) NOT NULL,
  `corporateId` varchar(10) NOT NULL,
  `vtuId` varchar(10) NOT NULL,
  `sharesellId` varchar(10) NOT NULL,
  `network` varchar(20) NOT NULL,
  `networkStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `vtuStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `sharesellStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `airtimepinStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `smeStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `giftingStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `corporateStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `datapinStatus` varchar(10) NOT NULL DEFAULT 'Off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `networkid`
--

INSERT INTO `networkid` (`nId`, `networkid`, `smeId`, `giftingId`, `corporateId`, `vtuId`, `sharesellId`, `network`, `networkStatus`, `vtuStatus`, `sharesellStatus`, `airtimepinStatus`, `smeStatus`, `giftingStatus`, `corporateStatus`, `datapinStatus`) VALUES
(1, '1', '1', '1', '1', '1', '1', 'MTN', 'On', 'On', 'On', 'On', 'On', 'On', 'On', 'On'),
(2, '2', '2', '2', '2', '2', '2', 'GLO', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On'),
(3, '3', '3', '3', '3', '3', '3', '9MOBILE', 'On', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(4, '4', '4', '4', '4', '4', '4', 'AIRTEL', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `msgId` int(200) NOT NULL,
  `msgfor` tinyint(4) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `sId` int(200) NOT NULL,
  `sitename` varchar(20) DEFAULT NULL,
  `siteurl` varchar(100) DEFAULT NULL,
  `agentupgrade` varchar(20) DEFAULT NULL,
  `vendorupgrade` varchar(20) DEFAULT NULL,
  `apidocumentation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `whatsappgroup` varchar(100) DEFAULT NULL,
  `facebook` varchar(10) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `referalupgradebonus` float NOT NULL DEFAULT 100,
  `referalairtimebonus` float NOT NULL DEFAULT 1,
  `referaldatabonus` float NOT NULL DEFAULT 1,
  `referalwalletbonus` float NOT NULL DEFAULT 1,
  `referalcablebonus` float NOT NULL DEFAULT 1,
  `referalexambonus` float NOT NULL DEFAULT 1,
  `referalmeterbonus` float NOT NULL DEFAULT 1,
  `wallettowalletcharges` float NOT NULL DEFAULT 50,
  `sitecolor` varchar(10) NOT NULL DEFAULT '#0000e6',
  `logindesign` varchar(10) NOT NULL DEFAULT '5',
  `homedesign` varchar(10) NOT NULL DEFAULT '5',
  `notificationStatus` varchar(5) NOT NULL DEFAULT 'Off',
  `accountname` varchar(50) DEFAULT NULL,
  `accountno` varchar(15) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  `electricitycharges` varchar(5) DEFAULT NULL,
  `airtimemin` varchar(10) NOT NULL DEFAULT '50',
  `airtimemax` varchar(10) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`sId`, `sitename`, `siteurl`, `agentupgrade`, `vendorupgrade`, `apidocumentation`, `phone`, `email`, `whatsapp`, `whatsappgroup`, `facebook`, `twitter`, `instagram`, `telegram`, `referalupgradebonus`, `referalairtimebonus`, `referaldatabonus`, `referalwalletbonus`, `referalcablebonus`, `referalexambonus`, `referalmeterbonus`, `wallettowalletcharges`, `sitecolor`, `logindesign`, `homedesign`, `notificationStatus`, `accountname`, `accountno`, `bankname`, `electricitycharges`, `airtimemin`, `airtimemax`) VALUES
(1, 'GooCredit', 'https://goocredit.mwb.ng/', '10000', '5000', 'https://goocredit.mwb.ng/mobile/home/pricing', '08101820177', 'vtu@mwb.ng', '8101820177', 'https://chat.whatsapp.com/FEjg9M0DvCk2hquv3z0ZMF', 'http://fac', 'http://twitter.com/MulticomsB', 'http://instagram.com/multicomsng', '', 2000, 0.2, 1, 1, 1, 1, 1, 10, '#000012', '3', '5', 'On', 'GooCredit (Stw)', '9620977152', 'Providus Bank', '45', '50', '15000');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `sId` int(200) NOT NULL,
  `sApiKey` varchar(200) NOT NULL,
  `sFname` varchar(50) NOT NULL,
  `sLname` varchar(50) NOT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sPhone` varchar(20) NOT NULL,
  `sPass` varchar(150) NOT NULL,
  `sState` varchar(50) NOT NULL,
  `sPin` int(10) NOT NULL DEFAULT 1234,
  `sPinStatus` tinyint(3) DEFAULT 0,
  `sType` tinyint(10) NOT NULL DEFAULT 1,
  `sWallet` float NOT NULL DEFAULT 0,
  `sRefWallet` float NOT NULL DEFAULT 0,
  `sBankNo` varchar(20) DEFAULT NULL,
  `sRolexBank` varchar(20) DEFAULT NULL,
  `sSterlingBank` varchar(20) DEFAULT NULL,
  `sFidelityBank` varchar(20) DEFAULT NULL,
  `sBankName` varchar(30) DEFAULT NULL,
  `sRegStatus` tinyint(5) NOT NULL DEFAULT 3,
  `sVerCode` smallint(20) NOT NULL DEFAULT 0,
  `sRegDate` datetime NOT NULL DEFAULT current_timestamp(),
  `sLastActivity` datetime DEFAULT NULL,
  `sReferal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`sId`, `sApiKey`, `sFname`, `sLname`, `sEmail`, `sPhone`, `sPass`, `sState`, `sPin`, `sPinStatus`, `sType`, `sWallet`, `sRefWallet`, `sBankNo`, `sRolexBank`, `sSterlingBank`, `sFidelityBank`, `sBankName`, `sRegStatus`, `sVerCode`, `sRegDate`, `sLastActivity`, `sReferal`) VALUES
(4, 'xd3oeBtF0BBCcA4b51C7CCBcCH9fizk1DAC7dBChJ33vmA5822AyAx6AErCA1707193598', 'Henry', 'Okonkwo', 'example@gmail.com', '08101820111', '511b5fb66b', 'Oyo', 2024, 0, 1, 37964.9, 26.6, '9701833276', '6519236052', '9001602229', '9701833276', 'Providus Bank Nig', 0, 6592, '2024-02-06 05:26:38', '2024-03-07 14:46:02', '1984');

-- --------------------------------------------------------

--
-- Table structure for table `sysusers`
--

CREATE TABLE `sysusers` (
  `sysId` int(100) NOT NULL,
  `sysName` varchar(50) NOT NULL,
  `sysRole` tinyint(2) NOT NULL,
  `sysUsername` varchar(20) NOT NULL,
  `sysToken` varchar(30) NOT NULL,
  `sysStatus` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sysusers`
--

INSERT INTO `sysusers` (`sysId`, `sysName`, `sysRole`, `sysUsername`, `sysToken`, `sysStatus`) VALUES
(1, 'GooCredit', 1, 'goocredit', '08012345678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `transref` varchar(255) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `servicedesc` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `oldbal` varchar(100) NOT NULL,
  `newbal` varchar(100) NOT NULL,
  `profit` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `uservisits`
--

CREATE TABLE `uservisits` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `visitTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtime`
--
ALTER TABLE `airtime`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  ADD PRIMARY KEY (`alphaId`);

--
-- Indexes for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `apilinks`
--
ALTER TABLE `apilinks`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `cableid`
--
ALTER TABLE `cableid`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `cableplans`
--
ALTER TABLE `cableplans`
  ADD PRIMARY KEY (`cpId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `datapins`
--
ALTER TABLE `datapins`
  ADD PRIMARY KEY (`dpId`);

--
-- Indexes for table `dataplans`
--
ALTER TABLE `dataplans`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `datatokens`
--
ALTER TABLE `datatokens`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `electricityid`
--
ALTER TABLE `electricityid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `examid`
--
ALTER TABLE `examid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `networkid`
--
ALTER TABLE `networkid`
  ADD PRIMARY KEY (`nId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`sId`),
  ADD UNIQUE KEY `sApiKey` (`sApiKey`),
  ADD UNIQUE KEY `sPhone` (`sPhone`),
  ADD UNIQUE KEY `sEmail` (`sEmail`);

--
-- Indexes for table `sysusers`
--
ALTER TABLE `sysusers`
  ADD PRIMARY KEY (`sysId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tId`),
  ADD UNIQUE KEY `transref` (`transref`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservisits`
--
ALTER TABLE `uservisits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airtime`
--
ALTER TABLE `airtime`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  MODIFY `alphaId` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `apilinks`
--
ALTER TABLE `apilinks`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `cableid`
--
ALTER TABLE `cableid`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cableplans`
--
ALTER TABLE `cableplans`
  MODIFY `cpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `datapins`
--
ALTER TABLE `datapins`
  MODIFY `dpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dataplans`
--
ALTER TABLE `dataplans`
  MODIFY `pId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `datatokens`
--
ALTER TABLE `datatokens`
  MODIFY `tId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `electricityid`
--
ALTER TABLE `electricityid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `examid`
--
ALTER TABLE `examid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `networkid`
--
ALTER TABLE `networkid`
  MODIFY `nId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `sysusers`
--
ALTER TABLE `sysusers`
  MODIFY `sysId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=413;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT for table `uservisits`
--
ALTER TABLE `uservisits`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
