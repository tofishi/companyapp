-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 30, 2023 at 10:54 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tofik`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `flag` varchar(255) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `sortname`, `name`, `slug`, `flag`, `phonecode`, `status`, `created_date`, `updated_date`) VALUES
(1, 'AF', 'Afghanistan', '', '', 93, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(2, 'AL', 'Albania', '', '', 355, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(3, 'DZ', 'Algeria', '', '', 213, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(4, 'AS', 'American Samoa', '', '', 1684, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(5, 'AD', 'Andorra', '', '', 376, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(6, 'AO', 'Angola', '', '', 244, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(7, 'AI', 'Anguilla', '', '', 1264, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(8, 'AQ', 'Antarctica', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(9, 'AG', 'Antigua And Barbuda', '', '', 1268, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(10, 'AR', 'Argentina', 'argentina', '', 54, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(11, 'AM', 'Armenia', '', '', 374, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(12, 'AW', 'Aruba', '', '', 297, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(13, 'AU', 'Australia', 'australia', '', 61, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(14, 'AT', 'Austria', 'austria', '', 43, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(15, 'AZ', 'Azerbaijan', '', '', 994, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(16, 'BS', 'Bahamas The', '', '', 1242, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(17, 'BH', 'Bahrain', '', '', 973, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(18, 'BD', 'Bangladesh', '', '', 880, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(19, 'BB', 'Barbados', '', '', 1246, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(20, 'BY', 'Belarus', '', '', 375, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(21, 'BE', 'Belgium', 'belgium', '', 32, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(22, 'BZ', 'Belize', '', '', 501, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(23, 'BJ', 'Benin', '', '', 229, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(24, 'BM', 'Bermuda', '', '', 1441, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(25, 'BT', 'Bhutan', '', '', 975, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(26, 'BO', 'Bolivia', '', '', 591, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(27, 'BA', 'Bosnia and Herzegovina', '', '', 387, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(28, 'BW', 'Botswana', '', '', 267, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(29, 'BV', 'Bouvet Island', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(30, 'BR', 'Brazil', '', '', 55, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(31, 'IO', 'British Indian Ocean Territory', '', '', 246, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(32, 'BN', 'Brunei', '', '', 673, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(33, 'BG', 'Bulgaria', '', '', 359, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(34, 'BF', 'Burkina Faso', '', '', 226, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(35, 'BI', 'Burundi', '', '', 257, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(36, 'KH', 'Cambodia', '', '', 855, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(37, 'CM', 'Cameroon', '', '', 237, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(38, 'CA', 'Canada', 'canada', '', 1, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(39, 'CV', 'Cape Verde', '', '', 238, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(40, 'KY', 'Cayman Islands', '', '', 1345, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(41, 'CF', 'Central African Republic', '', '', 236, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(42, 'TD', 'Chad', '', '', 235, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(43, 'CL', 'Chile', 'chile', '', 56, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(44, 'CN', 'China', 'china', '', 86, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(45, 'CX', 'Christmas Island', '', '', 61, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(46, 'CC', 'Cocos (Keeling) Islands', '', '', 672, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(47, 'CO', 'Colombia', '', '', 57, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(48, 'KM', 'Comoros', '', '', 269, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(49, 'CG', 'Republic Of The Congo', '', '', 242, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(50, 'CD', 'Democratic Republic Of The Congo', '', '', 242, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(51, 'CK', 'Cook Islands', '', '', 682, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(52, 'CR', 'Costa Rica', '', '', 506, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', '', '', 225, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(54, 'HR', 'Croatia (Hrvatska)', '', '', 385, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(55, 'CU', 'Cuba', '', '', 53, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(56, 'CY', 'Cyprus', '', '', 357, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(57, 'CZ', 'Czech Republic', '', '', 420, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(58, 'DK', 'Denmark', 'denmark', '', 45, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(59, 'DJ', 'Djibouti', '', '', 253, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(60, 'DM', 'Dominica', '', '', 1767, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(61, 'DO', 'Dominican Republic', '', '', 1809, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(62, 'TP', 'East Timor', '', '', 670, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(63, 'EC', 'Ecuador', '', '', 593, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(64, 'EG', 'Egypt', '', '', 20, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(65, 'SV', 'El Salvador', '', '', 503, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(66, 'GQ', 'Equatorial Guinea', '', '', 240, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(67, 'ER', 'Eritrea', '', '', 291, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(68, 'EE', 'Estonia', '', '', 372, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(69, 'ET', 'Ethiopia', '', '', 251, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(70, 'XA', 'External Territories of Australia', '', '', 61, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(71, 'FK', 'Falkland Islands', '', '', 500, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(72, 'FO', 'Faroe Islands', '', '', 298, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(73, 'FJ', 'Fiji Islands', '', '', 679, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(74, 'FI', 'Finland', '', '', 358, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(75, 'FR', 'France', 'france', '', 33, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(76, 'GF', 'French Guiana', '', '', 594, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(77, 'PF', 'French Polynesia', '', '', 689, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(78, 'TF', 'French Southern Territories', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(79, 'GA', 'Gabon', '', '', 241, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(80, 'GM', 'Gambia The', '', '', 220, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(81, 'GE', 'Georgia', '', '', 995, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(82, 'DE', 'Germany', 'germany', '', 49, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(83, 'GH', 'Ghana', '', '', 233, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(84, 'GI', 'Gibraltar', '', '', 350, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(85, 'GR', 'Greece', '', '', 30, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(86, 'GL', 'Greenland', '', '', 299, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(87, 'GD', 'Grenada', '', '', 1473, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(88, 'GP', 'Guadeloupe', '', '', 590, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(89, 'GU', 'Guam', '', '', 1671, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(90, 'GT', 'Guatemala', '', '', 502, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(91, 'XU', 'Guernsey and Alderney', '', '', 44, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(92, 'GN', 'Guinea', '', '', 224, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(93, 'GW', 'Guinea-Bissau', '', '', 245, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(94, 'GY', 'Guyana', '', '', 592, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(95, 'HT', 'Haiti', '', '', 509, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(96, 'HM', 'Heard and McDonald Islands', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(97, 'HN', 'Honduras', '', '', 504, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(98, 'HK', 'Hong Kong S.A.R.', '', '', 852, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(99, 'HU', 'Hungary', '', '', 36, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(100, 'IS', 'Iceland', '', '', 354, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(101, 'IN', 'India', '', '', 91, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(102, 'ID', 'Indonesia', '', '', 62, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(103, 'IR', 'Iran', '', '', 98, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(104, 'IQ', 'Iraq', '', '', 964, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(105, 'IE', 'Ireland', 'ireland', '', 353, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(107, 'IT', 'Italy', 'italy', '', 39, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(108, 'JM', 'Jamaica', 'jamaica', '', 1876, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(109, 'JP', 'Japan', 'japan', '', 81, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(110, 'XJ', 'Jersey', '', '', 44, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(111, 'JO', 'Jordan', '', '', 962, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(112, 'KZ', 'Kazakhstan', '', '', 7, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(113, 'KE', 'Kenya', '', '', 254, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(114, 'KI', 'Kiribati', '', '', 686, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(115, 'KP', 'Korea North', '', '', 850, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(116, 'KR', 'Korea South', '', '', 82, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(117, 'KW', 'Kuwait', '', '', 965, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(118, 'KG', 'Kyrgyzstan', '', '', 996, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(119, 'LA', 'Laos', '', '', 856, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(120, 'LV', 'Latvia', '', '', 371, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(121, 'LB', 'Lebanon', '', '', 961, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(122, 'LS', 'Lesotho', '', '', 266, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(123, 'LR', 'Liberia', '', '', 231, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(124, 'LY', 'Libya', '', '', 218, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(125, 'LI', 'Liechtenstein', '', '', 423, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(126, 'LT', 'Lithuania', '', '', 370, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(127, 'LU', 'Luxembourg', '', '', 352, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(128, 'MO', 'Macau S.A.R.', '', '', 853, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(129, 'MK', 'Macedonia', '', '', 389, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(130, 'MG', 'Madagascar', '', '', 261, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(131, 'MW', 'Malawi', '', '', 265, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(132, 'MY', 'Malaysia', '', '', 60, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(133, 'MV', 'Maldives', '', '', 960, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(134, 'ML', 'Mali', '', '', 223, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(135, 'MT', 'Malta', '', '', 356, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(136, 'XM', 'Man (Isle of)', '', '', 44, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(137, 'MH', 'Marshall Islands', '', '', 692, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(138, 'MQ', 'Martinique', '', '', 596, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(139, 'MR', 'Mauritania', '', '', 222, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(140, 'MU', 'Mauritius', '', '', 230, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(141, 'YT', 'Mayotte', '', '', 269, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(142, 'MX', 'Mexico', 'mexico', '', 52, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(143, 'FM', 'Micronesia', '', '', 691, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(144, 'MD', 'Moldova', '', '', 373, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(145, 'MC', 'Monaco', '', '', 377, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(146, 'MN', 'Mongolia', '', '', 976, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(147, 'MS', 'Montserrat', '', '', 1664, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(148, 'MA', 'Morocco', '', '', 212, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(149, 'MZ', 'Mozambique', '', '', 258, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(150, 'MM', 'Myanmar', '', '', 95, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(151, 'NA', 'Namibia', '', '', 264, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(152, 'NR', 'Nauru', '', '', 674, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(153, 'NP', 'Nepal', '', '', 977, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(154, 'AN', 'Netherlands Antilles', '', '', 599, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(155, 'NL', 'Netherlands The', '', '', 31, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(156, 'NC', 'New Caledonia', '', '', 687, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(157, 'NZ', 'New Zealand', 'new-zealand', '', 64, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(158, 'NI', 'Nicaragua', '', '', 505, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(159, 'NE', 'Niger', '', '', 227, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(160, 'NG', 'Nigeria', '', '', 234, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(161, 'NU', 'Niue', '', '', 683, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(162, 'NF', 'Norfolk Island', '', '', 672, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(163, 'MP', 'Northern Mariana Islands', '', '', 1670, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(164, 'NO', 'Norway', '', '', 47, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(165, 'OM', 'Oman', '', '', 968, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(166, 'PK', 'Pakistan', '', '', 92, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(167, 'PW', 'Palau', '', '', 680, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(168, 'PS', 'Palestinian Territory Occupied', '', '', 970, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(169, 'PA', 'Panama', '', '', 507, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(170, 'PG', 'Papua new Guinea', '', '', 675, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(171, 'PY', 'Paraguay', '', '', 595, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(172, 'PE', 'Peru', '', '', 51, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(173, 'PH', 'Philippines', '', '', 63, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(174, 'PN', 'Pitcairn Island', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(175, 'PL', 'Poland', 'poland', '', 48, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(176, 'PT', 'Portugal', '', '', 351, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(177, 'PR', 'Puerto Rico', '', '', 1787, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(178, 'QA', 'Qatar', '', '', 974, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(179, 'RE', 'Reunion', '', '', 262, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(180, 'RO', 'Romania', '', '', 40, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(181, 'RU', 'Russia', '', '', 70, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(182, 'RW', 'Rwanda', '', '', 250, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(183, 'SH', 'Saint Helena', '', '', 290, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(184, 'KN', 'Saint Kitts And Nevis', '', '', 1869, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(185, 'LC', 'Saint Lucia', '', '', 1758, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(186, 'PM', 'Saint Pierre and Miquelon', '', '', 508, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(187, 'VC', 'Saint Vincent And The Grenadines', '', '', 1784, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(188, 'WS', 'Samoa', '', '', 684, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(189, 'SM', 'San Marino', '', '', 378, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(190, 'ST', 'Sao Tome and Principe', '', '', 239, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(191, 'SA', 'Saudi Arabia', '', '', 966, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(192, 'SN', 'Senegal', '', '', 221, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(193, 'RS', 'Serbia', '', '', 381, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(194, 'SC', 'Seychelles', '', '', 248, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(195, 'SL', 'Sierra Leone', '', '', 232, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(196, 'SG', 'Singapore', 'singapore', '', 65, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(197, 'SK', 'Slovakia', '', '', 421, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(198, 'SI', 'Slovenia', '', '', 386, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(199, 'XG', 'Smaller Territories of the UK', '', '', 44, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(200, 'SB', 'Solomon Islands', '', '', 677, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(201, 'SO', 'Somalia', '', '', 252, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(202, 'ZA', 'South Africa', 'southafrica', '', 27, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(203, 'GS', 'South Georgia', '', '', 0, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(204, 'SS', 'South Sudan', '', '', 211, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(205, 'ES', 'Spain', 'spain', '', 34, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(206, 'LK', 'Sri Lanka', '', '', 94, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(207, 'SD', 'Sudan', '', '', 249, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(208, 'SR', 'Suriname', '', '', 597, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', '', '', 47, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(210, 'SZ', 'Swaziland', '', '', 268, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(211, 'SE', 'Sweden', '', '', 46, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(212, 'CH', 'Switzerland', '', '', 41, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(213, 'SY', 'Syria', '', '', 963, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(214, 'TW', 'Taiwan', '', '', 886, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(215, 'TJ', 'Tajikistan', '', '', 992, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(216, 'TZ', 'Tanzania', '', '', 255, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(217, 'TH', 'Thailand', '', '', 66, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(218, 'TG', 'Togo', '', '', 228, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(219, 'TK', 'Tokelau', '', '', 690, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(220, 'TO', 'Tonga', '', '', 676, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(221, 'TT', 'Trinidad And Tobago', '', '', 1868, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(222, 'TN', 'Tunisia', '', '', 216, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(223, 'TR', 'Turkey', '', '', 90, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(224, 'TM', 'Turkmenistan', '', '', 7370, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(225, 'TC', 'Turks And Caicos Islands', '', '', 1649, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(226, 'TV', 'Tuvalu', '', '', 688, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(227, 'UG', 'Uganda', '', '', 256, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(228, 'UA', 'Ukraine', '', '', 380, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(229, 'AE', 'United Arab Emirates', '', '', 971, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(230, 'GB', 'United Kingdom', '', '', 44, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(231, 'US', 'United States', 'united-states', '', 1, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(232, 'UM', 'United States Minor Outlying Islands', '', '', 1, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(233, 'UY', 'Uruguay', '', '', 598, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(234, 'UZ', 'Uzbekistan', '', '', 998, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(235, 'VU', 'Vanuatu', '', '', 678, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(236, 'VA', 'Vatican City State (Holy See)', '', '', 39, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(237, 'VE', 'Venezuela', '', '', 58, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(238, 'VN', 'Vietnam', '', '', 84, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(239, 'VG', 'Virgin Islands (British)', '', '', 1284, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(240, 'VI', 'Virgin Islands (US)', '', '', 1340, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(241, 'WF', 'Wallis And Futuna Islands', '', '', 681, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(242, 'EH', 'Western Sahara', '', '', 212, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(243, 'YE', 'Yemen', '', '', 967, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(244, 'YU', 'Yugoslavia', '', '', 38, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(245, 'ZM', 'Zambia', '', '', 260, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(246, 'ZW', 'Zimbabwe', '', '', 263, 0, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(247, '', 'Netherlands', 'netherlands', '', 0, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(248, '', 'United Kingdom', 'united-kingdom', '', 0, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(249, 'SK', 'South Korea', 'south-korea', '', 0, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(250, 'IS', 'Israel', 'israel', '', 0, 1, '2022-01-02 03:18:16', '0000-00-00 00:00:00'),
(251, '0Te', '0Test', '', '1641093515-checked.png', 0, 2, '2022-01-02 03:18:35', '2022-01-01 20:28:21'),
(252, '109', '10999Test', '10999test', 'mainlogo.png', 1999, 1, '2022-01-02 03:26:10', '2022-01-08 06:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verification_code` int(11) DEFAULT NULL,
  `email_verified` int(11) NOT NULL DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `profile_image` text DEFAULT NULL,
  `cover_image` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `instagram_threads` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `twiter` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `behance` varchar(255) DEFAULT NULL,
  `dribbble` varchar(255) DEFAULT NULL,
  `pinterest` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `phone_number`, `phonecode`, `bio`, `verification_code`, `email_verified`, `password`, `title`, `profile_image`, `cover_image`, `address`, `city`, `state`, `zipcode`, `country`, `facebook`, `instagram`, `instagram_threads`, `whatsapp`, `linkedin`, `twiter`, `youtube`, `behance`, `dribbble`, `pinterest`, `remember_token`, `created_at`, `status`, `updated_at`) VALUES
(1, 'Reena', '', 'reenaprajapat1351@gmail.com', '1234567890', 91, '', NULL, 1, '$2y$12$9jxM4nqQoqCWO/lXFAYUa.jNb6psWM/6rjGcZHy6IH68LJssUE9gu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2023-12-20 14:21:15', 0, '2023-12-20 14:24:13'),
(6, 'Reena', '', 'reena3@gmail.com', '1234567890', 91, '', NULL, 1, '$2y$12$9jxM4nqQoqCWO/lXFAYUa.jNb6psWM/6rjGcZHy6IH68LJssUE9gu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2023-12-20 08:51:15', 1, '2023-12-30 04:21:53'),
(7, 'Reena', '', 'reena4@gmail.com', '1234567890', 91, '', NULL, 1, '$2y$12$9jxM4nqQoqCWO/lXFAYUa.jNb6psWM/6rjGcZHy6IH68LJssUE9gu', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, '2023-12-20 08:51:15', 0, '2023-12-20 08:54:13'),
(8, 'test', 'test', 'admin@heyram.ca', '9090909091', 91, 'test', NULL, 0, '$2y$12$LTU6bzQCSa4nhG8Zdj44OuWV7paP2y5kFpExudA4jSraKIfkcb2Em', 'test', 'public/uploads/APaaM3fzc9h4nstEQPapbtCpVsEBCgaSj5T7wicS.png', 'public/uploads/fh8SJ0yFyMJELH6MvaXAvRcXhGA0VSPSKVOD8zQJ.png', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:03:56', 1, '2023-12-30 04:22:18'),
(9, 'test', 'test', 'admin1@heyram.ca', '9090909091', 91, 'test', NULL, 0, '$2y$12$LkxuyKWhu8nASchpkYCwLO3MaztqrSi6nPKEOSj2C6gTCrX3jl8qG', 'test', 'public/uploads/HPyTlJDSb6P30AqfSpFVjG9OssUUxkopn0SMTxHs.png', 'public/uploads/UWaGIxGEH7zrUfSjNgXRq6rZknEFtClfw5PnPZAS.png', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:11:35', 0, '2023-12-21 13:11:35'),
(10, 'test', 'test', 'admin01@heyram.ca', '9090909091', 91, 'test', NULL, 0, '$2y$12$SkN5KdObnnu2.o69WNH8n.gDcJxf9fs3xjKw91n/Sw4h0TxayRHC6', 'test', 'public/uploads/D6mvQ3Pc3wSjqvjrquTMV0yDN40EBJU9phOzTTQi.png', 'public/uploads/xiDVZSjjIsjDiSK8tpAA0QLTQsmmUxYZ3y737bTL.png', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:16:42', 0, '2023-12-21 13:16:42'),
(11, 'test', 'test', 'admin001@heyram.ca', '9090909091', 91, 'test', NULL, 0, '$2y$12$/EeDI90j.EDKhqRsX6G72OE/9wRvef8FOKJraLOatiymP4brgaE8C', 'test', '1703184555_logo (1).png', '1703184555_logo (1).png', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:19:15', 1, '2023-12-30 04:22:51'),
(12, 'test', 'test', 'admin0001@heyram.ca', '9090909091', 91, 'test', NULL, 0, '$2y$12$AxCHfgnoN3l66zBmiyVrYeHXSLB2bnstnOsRuoOr42jhzFH34D0ey', 'test', '1703184665_logo (1).pngprofile', '1703184665_logo (1).pngcover', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:21:05', 0, '2023-12-21 13:21:05'),
(13, 'REEEE', 'test', 'admin00001@heyram.ca', '9090909091', 975, 'test', NULL, 0, '$2y$12$tXzsON8OxJ9RieKoy6lHGOy0P/FH25tb5I1gjtSNd5i5pvMz4u90.', 'test', 'profile1703928244_10.png', 'cover1703928244_4.jpg', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', 'test', NULL, '2023-12-21 13:21:49', 0, '2023-12-30 03:54:04'),
(14, 'Reena', NULL, 'reenaprajapat1352@gmail.com', '1234567890', 91, NULL, NULL, 1, '$2y$12$j9iEIeR5hCyiC6k3y/EkPOR9lvvik3pnVTy85BUz4.hmxd01wIiGO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 06:55:28', 0, '2023-12-22 06:55:48'),
(15, 'Reena', NULL, 'reenaprajapat135@gmail.com', '9090909090', 91, NULL, NULL, 1, '$2y$12$jXN3of2AnJ/ytPvQ3eo/Qe1RBKOzZeKajY.S92yVGucCb/oQhX58i', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-22 11:52:05', 0, '2023-12-30 02:50:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
