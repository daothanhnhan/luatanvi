-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 17, 2022 at 06:50 AM
-- Server version: 10.2.43-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lawanvi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_login` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_state` int(11) DEFAULT 1,
  `admin_role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_login`, `admin_password`, `admin_phone`, `admin_email`, `admin_note`, `admin_state`, `admin_role`) VALUES
(1, 'Admin', 'admin', '$2y$10$5xn9Ri83pYZIOwglCNPE1O77nvaCUPJJFUifoHtxyWgqM1EU34Yku', '', '', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role`
--

CREATE TABLE `admin_role` (
  `admin_role_id` int(11) NOT NULL,
  `admin_role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin_role`
--

INSERT INTO `admin_role` (`admin_role_id`, `admin_role_name`) VALUES
(1, 'Admin'),
(2, 'Mod');

-- --------------------------------------------------------

--
-- Table structure for table `bang_gia_1`
--

CREATE TABLE `bang_gia_1` (
  `id` int(11) NOT NULL,
  `khoahoc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chinhanh` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hocvien` int(11) NOT NULL,
  `namsinh` year(4) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bang_gia_1`
--

INSERT INTO `bang_gia_1` (`id`, `khoahoc`, `chinhanh`, `hocvien`, `namsinh`, `email`, `phone`, `name`, `notes`) VALUES
(43, 'Smart Reading Skills', 'AMERICAN SKILLS LONG BIÊN-HÀ NỘI', 0, 1995, 'viethung95cute@gmail.com', '1672523165', 'Nguyễn Việt Hưng', ''),
(44, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', ''),
(45, 'Smarth Kills', 'AMERICAN SKILLS GÒ VẤP - TPHCM', 1, 1998, 'viethung95cute@gmail.com', '1672523165', 'Việt Hưng', '');

-- --------------------------------------------------------

--
-- Table structure for table `bang_gia_2`
--

CREATE TABLE `bang_gia_2` (
  `id` int(11) NOT NULL,
  `name_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone_parent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `name_student` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `adress` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(300) NOT NULL,
  `hoan_thien_so_sach` varchar(300) NOT NULL,
  `quyet_toan_thue` varchar(300) NOT NULL,
  `tong_dich_vu` varchar(300) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bang_gia_2`
--

INSERT INTO `bang_gia_2` (`id`, `name_parent`, `phone_parent`, `name_student`, `birthday`, `adress`, `email`, `hoan_thien_so_sach`, `quyet_toan_thue`, `tong_dich_vu`, `time`) VALUES
(34, 'Việt Hưng', '01672523165', 'ABC', '2018-03-30', 'ĐH Mỏ - Địa chất', 'viethung95cute@gmail.com', '', '', '', '2018-03-28 04:54:52'),
(35, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:26'),
(36, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:10:33'),
(37, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:13'),
(38, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:12:19'),
(39, 'hưng', '01672523165', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 05:13:51'),
(40, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:20:52'),
(41, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:19'),
(42, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:21:22'),
(43, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:52'),
(44, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:22:55'),
(45, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:23:34'),
(46, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:46'),
(47, '', '', '', '0000-00-00', 'hà nội', 'viethung95cute@gmail.com', '', '', '', '2018-04-05 06:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `bang_khoa_hoc`
--

CREATE TABLE `bang_khoa_hoc` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngay` date NOT NULL,
  `thoi_luong` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `thoi_gian` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bang_khoa_hoc`
--

INSERT INTO `bang_khoa_hoc` (`id`, `name`, `ngay`, `thoi_luong`, `thoi_gian`, `price`) VALUES
(2, 'Khoá Học Đầu tư', '2019-11-03', 'Theo kèm 2 tháng\r\n', '18H30 - 21H00\r\nT2 - T4 - T6', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `cad_file`
--

CREATE TABLE `cad_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cad_file`
--

INSERT INTO `cad_file` (`id`, `name`) VALUES
(2, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `calculators_file`
--

CREATE TABLE `calculators_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calculators_file`
--

INSERT INTO `calculators_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `cam_nhan`
--

CREATE TABLE `cam_nhan` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tu` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cam_nhan`
--

INSERT INTO `cam_nhan` (`id`, `name`, `image`, `note`, `tu`) VALUES
(2, 'Phương Bùi', 'cn-01.jpg', 'Xin chào toàn thể đội ngũ nhân viên, luật sư Luật An Vi. Tôi viết thư này để cảm ơn quý công ty đã giúp đỡ tôi trong vấn đề thành lập và quản lý trung tâm đào tạo trong suốt 5 năm qua. Trước kia, mới bắt đầu có ý tưởng về mở trung tâm ngoại ngữ có khá nhiều thủ tục phức tạp bản thân tôi đã trực tiếp đi tìm hiểu và mất rất nhiều thời gian, nhưng vẫn không thực hiện được', 'CEO Trung tâm ngoại ngữ'),
(4, 'CEO Hệ Thống Nhà Hàng ', 'man-300x300-1.png', 'Tôi đã đúng đắn khi quyết định sử dụng dịch vụ của Luật An Vi. Cơ sở kinh doanh thực phẩm của tôi vừa mở ra, có rất nhiều vấn đề cần giải quyết, đặc biệt là việc xin giấy phép vệ sinh an toàn thực phẩm cho cơ sở kinh doanh tôi biết mình cần sự hỗ trợ và tư vấn của một công ty Luật. Trước hàng ngàn văn phòng luật, tôi đã được giới thiệu và quyết định sử dụng dịch vụ tư vấn, xin giấy phép của Luật An Vi.', 'Triều Nhật - Gia Viên');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` int(11) NOT NULL,
  `id_account` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `total_cart` int(11) DEFAULT NULL,
  `date_cart` date DEFAULT NULL,
  `id_orderState` int(11) DEFAULT NULL,
  `note_cart` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_buyer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `note_buyer` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

CREATE TABLE `cartdetail` (
  `id_cartDetail` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_product` double DEFAULT NULL,
  `qyt_product` int(11) DEFAULT NULL,
  `totalprice_product` double DEFAULT NULL,
  `subInfo1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_color` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_cart` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `color_id` bigint(20) NOT NULL,
  `color_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `color_price` double DEFAULT NULL,
  `color_stock` int(11) DEFAULT NULL,
  `color_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `config_id` int(11) NOT NULL,
  `web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_logo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `slideshow_home` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner2` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner1` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner3` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon_web` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`config_id`, `web_name`, `web_meta`, `web_des`, `web_keyword`, `web_logo`, `web_hotline`, `web_phone`, `web_email`, `content_home1`, `content_home2`, `content_home3`, `content_home4`, `content_home5`, `content_home6`, `content_home7`, `content_home8`, `content_home9`, `content_home10`, `slideshow_home`, `link1`, `link2`, `link3`, `banner2`, `banner1`, `banner3`, `icon_web`) VALUES
(1, 'Văn phòng luật sư AnVi', '', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', 'Văn phòng luật sư AnVi', 'logo_anvi.png', '', '', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', 'ĐT835B Ấp Xoài Đôi, Xã Long Trạch, Huyện Cần Đước, Long An ', 'anvi.lawfirm@gmail.com', '0704 871 868', '', '', '', '    <li><a href=\"\">TƯ VẤN PHÁP LUẬT</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">DOANH NGHIỆP</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">TRANH TỤNG</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">ĐỊNH CƯ</a>\r\n        \r\n    </li>\r\n\r\n', '7giờ 30 - 21h 30', '', '2021-12-08', '[\"{\\\"image\\\":\\\"anvi_sl_2_rs.png\\\"}\"]', 'avits-smart-readingbrphat-trien-ngon-ngu-tieng-viet-4-10-tuoi', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan', 'imgIntroPS.png', 'man-300x300-1.png', 'imgIntroPS.png', 'logo_anvi.png');

-- --------------------------------------------------------

--
-- Table structure for table `config_languages`
--

CREATE TABLE `config_languages` (
  `id` int(11) NOT NULL,
  `config_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_meta` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_hotline` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_web_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_content_home10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) DEFAULT 0,
  `lang_link1` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link2` text COLLATE utf8_unicode_ci NOT NULL,
  `lang_link3` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_languages`
--

INSERT INTO `config_languages` (`id`, `config_id`, `languages_code`, `lang_web_name`, `lang_web_meta`, `lang_web_des`, `lang_web_keyword`, `lang_web_hotline`, `lang_web_phone`, `lang_web_email`, `lang_content_home1`, `lang_content_home2`, `lang_content_home3`, `lang_content_home4`, `lang_content_home5`, `lang_content_home6`, `lang_content_home7`, `lang_content_home8`, `lang_content_home9`, `lang_content_home10`, `edit_state`, `lang_link1`, `lang_link2`, `lang_link3`) VALUES
(1, 1, 'vn', 'Văn phòng luật sư AnVi', '', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', 'Văn phòng luật sư AnVi', '', '', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', 'ĐT835B Ấp Xoài Đôi, Xã Long Trạch, Huyện Cần Đước, Long An ', 'anvi.lawfirm@gmail.com', '0704 871 868', '', '', '', '    <li><a href=\"\">TƯ VẤN PHÁP LUẬT</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">DOANH NGHIỆP</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">TRANH TỤNG</a>\r\n        \r\n    </li>\r\n    <li><a href=\"\">ĐỊNH CƯ</a>\r\n        \r\n    </li>\r\n\r\n', '7giờ 30 - 21h 30', '', '2021-12-08', 1, '0', 'avits-mathbrtu-duy-toan-my-ixl-4-14-tuoi', 'avits-mathbrtoan'),
(2, 1, 'en', '', '', '', '', '', '', '', 'WHY CHOOSE US?', 'With the operating experiences of plywood factory from 2012, we have supply Good quality Plywood for Packing and Furniture Industry as well as Construction. We are deserved to become your partner to help you have good materials for your production and your trading in plywood industry all over the world. \r\nWe have our team to control all processes of plywood Production very professionally such as Q&C, R&D, Technical team .Moreover, our market is widespread in many foreign countries like Thailand, Korea, Japan, Malaysia, Indonesia, Myamar, Taiwan and others.\r\nComing to us, you wil have many Priorities in Price, Early Delivery as well as in Quality: Strong Density, No Gap, straight side, smooth face....\r\n', '', 'HISTORY', 'Our factory start to operate in 2012, selling to trading companies to bring cargo to foreign countries. And in 2015, we establish our own company to export to customer directly. \r\nOur plywood is exported to Thailand, Indonesia, Korea, Malaysia, Taiwan and other countries.\r\n', 'MAIN PRODUCTS', 'Plywood, Core Veneer, Film faced plywood, Finger Joint , Sawn timber', 'CLIENTS - PARTNERS', 'TIMBER RELATED STORIES', '', 1, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_exchange_rate` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dang_ky_ngay`
--

CREATE TABLE `dang_ky_ngay` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `skype` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dang_ky_ngay`
--

INSERT INTO `dang_ky_ngay` (`id`, `name`, `email`, `phone`, `course`, `time`, `skype`) VALUES
(1, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Tiếng anh luyện thi', '2018-10-30 03:56:19', ''),
(2, 'Trương Quang Tuấn', 'tuan@gmail.com', '0987654321', 'Tiếng anh lễ tân khách sạn/ Nhà hàng', '2018-10-30 03:56:45', ''),
(3, 'Trương Quang Tuấn', 'tuan@gmail.com', '987654321', 'Tiếng anh cho trẻ em', '2018-11-09 01:26:39', 'tuan'),
(4, 'lê thanh hoài', 'hoaianhpq2021@gmail.com', '0335819972', 'Tiếng Hàn', '2019-01-15 12:14:03', 'ấp gạch hàm xã hàm ninh phú quốc kiên giang'),
(5, 'Tạ Thị Nga', 'ngasonvav@gmail.com', '0974216933', 'Tiếng Nhật', '2019-02-03 16:48:07', '16 tô ngọc vân, quận 12'),
(6, 'Ngô thị thu loan', 'Dtcthuloanctk@gmail.com', '0949332051', 'Tiếng Trung ', '2019-02-17 14:19:13', 'Châu thành kiên giang'),
(7, 'Nguyễn thị ngọc ánh', 'Anhlun12345@gmail.com', '0774871747', 'Tiếng Anh', '2019-02-23 00:45:27', 'Giồng Riềng-Kiên Giang'),
(8, 'Nguyễn thị ngọc ánh', 'Anhlun12345@gmail.com', '0774871747', 'Tiếng Anh', '2019-02-23 00:45:44', 'Giồng Riềng-Kiên Giang'),
(9, 'thuy nga', 'thuyngabkd@gmail.com', '0962071238', 'Hội thảo web(DK room bắn tín hiệu)', '2019-09-12 15:16:25', ''),
(10, 'Hứa Thanh Vũ ', 'huavu85@gmail.com', '0908049707', 'Hội thảo tài chính(offline)', '2019-10-05 01:43:35', ''),
(11, 'Truong Vinh Quy', 'vinhquy15121985@gmail.com', '0353506223', 'Hội thảo tài chính(offline)', '2019-10-31 05:45:58', ''),
(12, 'Nguyên Hoài Nam ', 'namnhoai@gmail.com', '0909619589', 'Hội thảo web(DK room bắn tín hiệu)', '2019-12-22 01:34:26', ''),
(13, 'Văn xuân hoài', 'vanxuanhoai1994@gmail.com', '0971694364', 'Hội thảo web(DK room bắn tín hiệu)', '2020-03-05 18:18:55', ''),
(14, 'Trần văn trung', 'trung.truongthinhhcm@gmail.com', '0774012235', 'Hội thảo web(DK room bắn tín hiệu)', '2020-03-24 17:15:38', ''),
(15, 'Tran tuan anh', 'anhkvx6@gmail.com', '0972110507', 'Hội thảo web(DK room bắn tín hiệu)', '2020-03-27 05:43:38', ''),
(16, 'Phạm thao', 'thaopham.nt@gmail.com', '0886838106', 'Hội thảo web(DK room bắn tín hiệu)', '2020-04-14 06:37:36', ''),
(17, 'Phạm thị thơm', 'thomtuan8784@gmail.com', '0989595927', 'Khoá chuyên sâu', '2020-04-17 16:07:13', ''),
(18, 'Đỗ Hải Nam', 'dohainam@gmail.com', '0983733754', 'Hội thảo web(DK room bắn tín hiệu)', '2020-05-14 14:51:34', ''),
(19, 'Congdungkhanh3', 'cuaco08052000@gmail.com', '0848835894', 'Hội thảo web(DK room bắn tín hiệu)', '2020-06-18 02:05:31', ''),
(20, 'viet duc', 'ndviet1201@gmail.com', '0904691393', 'Hội thảo web(DK room bắn tín hiệu)', '2020-08-06 05:36:09', ''),
(21, 'Quân', 'quanvo76@gmail.com', '0929440779', 'Hội thảo web(DK room bắn tín hiệu)', '2020-10-02 15:10:24', ''),
(22, 'Lại Hiền', 'laihien187@gmail.com', '0354414579', 'Khoá chuyên sâu', '2021-03-09 05:03:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `dang_ky_online`
--

CREATE TABLE `dang_ky_online` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `birthday` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `course` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `where` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `know` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `skype` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dang_ky_online`
--

INSERT INTO `dang_ky_online` (`id`, `name`, `birthday`, `sex`, `phone`, `email`, `course`, `address`, `where`, `note`, `know`, `time`, `skype`) VALUES
(1, 'Trương Quang Tuấn', '1-1-1989', 1, '987654321', 'tuan@gmail.com', 'Tiếng anh cho trẻ em', 'Hà Nội', '2', '1', 'Bạn bè/ Người quen giới thiệu', '2018-10-24 10:43:58', ''),
(2, 'Trương Quang Tuấn', '31-10-1990', 0, '987654321', 'tuan@gmail.com', 'Tiếng anh cho nguòi đi làm', 'Hà Nội', 'Thanh Xuân', '24-10', 'Bạn bè/ Người quen giới thiệu', '2018-10-24 10:46:06', ''),
(3, 'Trương Quang Tuấn', '4-4-1993', 0, '0987654321', 'tuan@gmail.com', 'Tiếng anh hè', 'Hà Nội', 'Thanh Xuân', '1', 'Diễn đàn/ Internet', '2018-11-09 01:35:33', 'tuan111'),
(4, 'Giang', '20-5-1994', 1, '02215465656', 'giangdoan@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', 'fafsdsd', 'sdgsđfs', '', 'Bạn bè/ Người quen giới thiệu', '2019-03-24 08:57:12', ''),
(5, 'trinh quoc huy phong', '1-8-1989', 1, '913719953', 'asiantimber@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', '129/2A ben van don, p6, q4, tphcm', '', '', 'Diễn đàn/ Internet', '2019-04-08 04:18:54', ''),
(6, 'hailong', '1-1-1989', 1, '0384376196', 'hailongjune@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', '237/nguyên lương bằng /đà nẳng', 'đại học bách khoa', '', 'Khác', '2019-04-12 21:44:59', ''),
(7, 'Nguyễn Thị Phương Diễm', '29-11-1989', 0, '939804207', 'diem.ntp@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', 'Đặng Tất', '', '', 'Khác', '2019-06-11 03:34:23', ''),
(8, 'Lưu Lê Đức Vinh', '22-8-1991', 1, '0934544383', 'luuleducvinh@gmail.com', 'Khoá chuyên sâu', '477/3/13 Âu Cơ', '', '', 'Diễn đàn/ Internet', '2019-07-24 16:30:50', ''),
(9, 'nguyen viet hung', '26-2-1996', 1, '931342246', '7622119a@gmail.com', 'Khoá chuyên sâu', '25a khu pho 2 p.tan phu quan 7', 'quan 7', 'chuc may man', 'Diễn đàn/ Internet', '2019-09-04 09:50:56', ''),
(10, 'nguyen viet hung', '26-2-1996', 1, '931342246', '7622119a@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', '25a khu pho 2 p.tan phu quan 7', 'quan 7', 'chuc may man', 'Diễn đàn/ Internet', '2019-09-04 09:51:32', ''),
(11, 'Khuyển', '6-9-1989', 1, '0982795756', 'khuyencau@gmail.com', 'Hội thảo web (DK room bắn tín hiệu)', 'Hồng Hà, Hà Nội', 'Cty Asian', '', 'Bạn bè/ Người quen giới thiệu', '2020-07-09 01:59:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `datasheets_file`
--

CREATE TABLE `datasheets_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datasheets_file`
--

INSERT INTO `datasheets_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `dat_mua`
--

CREATE TABLE `dat_mua` (
  `id` int(11) NOT NULL,
  `name_investors` varchar(200) CHARACTER SET utf8 NOT NULL,
  `professional_field` varchar(225) NOT NULL,
  `work_unit` varchar(225) NOT NULL,
  `phone` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `address` varchar(100) NOT NULL,
  `district` varchar(200) CHARACTER SET utf8 NOT NULL,
  `city` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chanel` varchar(200) NOT NULL,
  `aspiration` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(11) NOT NULL,
  `hour_id` int(11) NOT NULL,
  `mon` int(11) NOT NULL,
  `wed` int(11) NOT NULL,
  `tue` int(11) NOT NULL,
  `thu` int(11) NOT NULL,
  `fri` int(11) NOT NULL,
  `sat` int(11) NOT NULL,
  `sun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `day`
--

INSERT INTO `day` (`id`, `hour_id`, `mon`, `wed`, `tue`, `thu`, `fri`, `sat`, `sun`) VALUES
(1, 1, 2, 1, 0, 0, 0, 0, 0),
(2, 2, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 0, 0, 0, 0, 0),
(4, 4, 0, 0, 1, 0, 0, 0, 0),
(5, 5, 0, 0, 0, 0, 0, 1, 0),
(6, 6, 0, 0, 0, 0, 0, 0, 0),
(7, 7, 2, 0, 0, 0, 0, 0, 0),
(8, 8, 1, 0, 0, 0, 0, 0, 0),
(9, 9, 1, 0, 0, 0, 0, 0, 0),
(10, 10, 0, 0, 0, 0, 0, 0, 0),
(11, 11, 2, 0, 1, 0, 0, 0, 0),
(12, 12, 0, 0, 0, 0, 0, 0, 0),
(13, 13, 0, 0, 0, 0, 0, 2, 0),
(14, 14, 0, 0, 0, 0, 0, 0, 1),
(15, 15, 0, 0, 0, 0, 0, 0, 0),
(16, 16, 0, 0, 0, 0, 0, 0, 0),
(17, 17, 0, 0, 0, 0, 0, 0, 0),
(18, 18, 0, 0, 0, 0, 0, 0, 0),
(19, 19, 0, 0, 0, 0, 0, 0, 0),
(20, 20, 0, 0, 0, 0, 0, 0, 0),
(21, 21, 0, 0, 0, 0, 0, 0, 0),
(22, 22, 0, 0, 0, 0, 0, 0, 0),
(23, 23, 0, 0, 0, 0, 0, 0, 0),
(24, 24, 0, 0, 0, 0, 0, 0, 0),
(25, 25, 0, 0, 0, 0, 0, 0, 0),
(26, 26, 0, 0, 0, 0, 0, 0, 0),
(27, 27, 0, 0, 0, 0, 0, 0, 0),
(28, 28, 0, 0, 0, 0, 0, 0, 0),
(29, 29, 0, 0, 0, 0, 0, 0, 1),
(30, 30, 0, 0, 0, 0, 0, 0, 1),
(31, 31, 0, 0, 0, 0, 0, 0, 1),
(32, 32, 0, 0, 0, 0, 0, 0, 1),
(33, 33, 0, 0, 0, 0, 0, 0, 1),
(34, 34, 0, 0, 0, 0, 0, 0, 1),
(35, 35, 0, 0, 0, 0, 0, 0, 0),
(36, 36, 0, 0, 1, 0, 0, 0, 0),
(37, 37, 0, 0, 1, 0, 0, 0, 0),
(38, 38, 0, 0, 1, 0, 0, 0, 0),
(39, 39, 0, 0, 1, 0, 0, 0, 0),
(40, 40, 0, 0, 1, 0, 0, 0, 0),
(41, 41, 0, 0, 1, 0, 0, 0, 0),
(42, 42, 0, 0, 1, 0, 0, 0, 0),
(43, 43, 0, 0, 0, 0, 0, 0, 0),
(44, 44, 0, 0, 0, 0, 0, 0, 0),
(45, 45, 0, 0, 0, 0, 0, 0, 0),
(46, 46, 0, 0, 0, 0, 0, 0, 0),
(47, 47, 0, 0, 0, 0, 0, 0, 0),
(48, 48, 0, 0, 0, 0, 0, 0, 0),
(49, 49, 0, 0, 0, 0, 0, 0, 0),
(50, 50, 0, 0, 0, 0, 0, 0, 0),
(51, 51, 0, 0, 0, 0, 0, 0, 0),
(52, 52, 0, 0, 0, 0, 0, 0, 0),
(53, 53, 0, 0, 0, 0, 0, 0, 0),
(54, 54, 0, 0, 0, 0, 0, 0, 0),
(55, 55, 0, 0, 0, 0, 0, 0, 0),
(56, 56, 0, 0, 0, 0, 0, 0, 0),
(57, 57, 0, 0, 0, 0, 0, 0, 0),
(58, 58, 0, 0, 0, 0, 0, 0, 0),
(59, 59, 0, 0, 0, 0, 0, 0, 0),
(60, 60, 0, 0, 0, 0, 0, 0, 0),
(61, 61, 1, 0, 0, 1, 0, 1, 0),
(62, 62, 0, 0, 0, 0, 0, 0, 0),
(63, 63, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `declaration_file`
--

CREATE TABLE `declaration_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `declaration_file`
--

INSERT INTO `declaration_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `hour`
--

CREATE TABLE `hour` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hour`
--

INSERT INTO `hour` (`id`, `teacher_id`, `name`) VALUES
(1, 1, '18:30'),
(2, 1, '19:00'),
(3, 1, '19:30'),
(4, 1, '20:00'),
(5, 1, '20:30'),
(6, 1, '21:00'),
(7, 1, '21:30'),
(8, 2, '18:30'),
(9, 2, '19:00'),
(10, 2, '19:30'),
(11, 2, '20:00'),
(12, 2, '20:30'),
(13, 2, '21:00'),
(14, 2, '21:30'),
(15, 3, '18:30'),
(16, 3, '19:00'),
(17, 3, '19:30'),
(18, 3, '20:00'),
(19, 3, '20:30'),
(20, 3, '21:00'),
(21, 3, '21:30'),
(22, 4, '18:30'),
(23, 4, '19:00'),
(24, 4, '19:30'),
(25, 4, '20:00'),
(26, 4, '20:30'),
(27, 4, '21:00'),
(28, 4, '21:30'),
(29, 5, '18:30'),
(30, 5, '19:00'),
(31, 5, '19:30'),
(32, 5, '20:00'),
(33, 5, '20:30'),
(34, 5, '21:00'),
(35, 5, '21:30'),
(36, 6, '18:30'),
(37, 6, '19:00'),
(38, 6, '19:30'),
(39, 6, '20:00'),
(40, 6, '20:30'),
(41, 6, '21:00'),
(42, 6, '21:30'),
(43, 7, '18:30'),
(44, 7, '19:00'),
(45, 7, '19:30'),
(46, 7, '20:00'),
(47, 7, '20:30'),
(48, 7, '21:00'),
(49, 7, '21:30'),
(50, 8, '18:30'),
(51, 8, '19:00'),
(52, 8, '19:30'),
(53, 8, '20:00'),
(54, 8, '20:30'),
(55, 8, '21:00'),
(56, 8, '21:30'),
(57, 9, '18:30'),
(58, 9, '19:00'),
(59, 9, '19:30'),
(60, 9, '20:00'),
(61, 9, '20:30'),
(62, 9, '21:00'),
(63, 9, '21:30');

-- --------------------------------------------------------

--
-- Table structure for table `installation_file`
--

CREATE TABLE `installation_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `installation_file`
--

INSERT INTO `installation_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_name` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `languages_code`, `languages_name`) VALUES
(1, 'vn', 'Tiếng Việt'),
(2, 'en', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `lien_he`
--

CREATE TABLE `lien_he` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(500) CHARACTER SET utf8 NOT NULL,
  `comment` mediumtext CHARACTER SET utf8 NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `listings_certifications_file`
--

CREATE TABLE `listings_certifications_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `listings_certifications_file`
--

INSERT INTO `listings_certifications_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_sort_order` int(11) DEFAULT 0,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `news_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `menu_parent` int(11) NOT NULL DEFAULT 0,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `state_menuHeader` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_sort_order`, `menu_type_id`, `menu_url`, `productcat_id`, `newscat_id`, `product_id`, `page_id`, `news_id`, `state`, `menu_parent`, `servicecat_id`, `service_id`, `state_menuHeader`) VALUES
(114, 'Trang chủ', 1, 1, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL),
(155, 'Giới thiệu', 2, 13, '', 0, 0, 0, 36, 0, 1, 0, 0, 0, NULL),
(246, 'Thủ tục gia hạn', 0, 5, '', 0, 28, 0, 0, 0, 1, 207, 0, 0, NULL),
(247, 'Thủ tục sửa đổi', 0, 5, '', 0, 29, 0, 0, 0, 1, 207, 0, 0, NULL),
(248, 'Thủ tục chuyển nhượng', 0, 5, '', 0, 30, 0, 0, 0, 1, 207, 0, 0, NULL),
(249, 'Soạn thảo di chúc', 0, 5, '', 0, 31, 0, 0, 0, 1, 206, 0, 0, NULL),
(250, 'Giải quyết tranh chấp', 0, 5, '', 0, 32, 0, 0, 0, 1, 206, 0, 0, NULL),
(251, 'Tư vấn pháp luật thường xuyên ', 0, 5, '', 0, 33, 0, 0, 0, 1, 206, 0, 0, NULL),
(252, 'Tư vấn ly hôn ', 0, 5, '', 0, 34, 0, 0, 0, 1, 206, 0, 0, NULL),
(253, 'Tư vấn nội bộ chuyên sâu ', 0, 5, '', 0, 35, 0, 0, 0, 1, 206, 0, 0, NULL),
(254, 'Đại diện tố tụng ', 0, 5, '', 0, 36, 0, 0, 0, 1, 206, 0, 0, NULL),
(260, 'ĐẦU TƯ RA NƯỚC NGOÀI', 0, 5, '', 0, 42, 0, 0, 0, 1, 227, 0, 0, NULL),
(261, 'CÔNG TY LIÊN DOANH ', 0, 5, '', 0, 43, 0, 0, 0, 1, 227, 0, 0, NULL),
(262, 'GIA HẠN, SỬA ĐỔI CHỨNG NHẬN ĐẦU TƯ', 0, 5, '', 0, 44, 0, 0, 0, 1, 227, 0, 0, NULL),
(263, 'ĐIỀU CHỈNH CHỨNG NHẬN ĐẦU TƯ', 0, 5, '', 0, 45, 0, 0, 0, 1, 227, 0, 0, NULL),
(264, 'VĂN PHÒNG ĐẠI DIỆN NƯỚC NGOÀI', 0, 5, '', 0, 46, 0, 0, 0, 1, 227, 0, 0, NULL),
(265, 'DOANH NGHIỆP 100% VỐN NƯỚC NGOÀI', 0, 5, '', 0, 47, 0, 0, 0, 1, 227, 0, 0, NULL),
(266, 'Luật sư riêng ', 0, 5, '', 0, 48, 0, 0, 0, 1, 206, 0, 0, NULL),
(267, 'VISA, THẺ TẠM TRÚ, HỘ CHIẾU', 0, 5, '', 0, 49, 0, 0, 0, 1, 227, 0, 0, NULL),
(268, 'LUẬT SƯ CHO DOANH NGHIỆP NƯỚC NGOÀI ', 0, 5, '', 0, 50, 0, 0, 0, 1, 227, 0, 0, NULL),
(269, 'GIẤY PHÉP  KHÁC ', 999, 5, '', 0, 51, 0, 0, 0, 1, 147, 0, 0, NULL),
(270, 'Tư vấn dân sự, hành chính', 0, 5, '', 0, 52, 0, 0, 0, 1, 206, 0, 0, NULL),
(271, 'TƯ VẤN PHÁP LUẬT', 6, 5, '', 0, 53, 0, 0, 0, 1, 0, 0, 0, NULL),
(272, 'DOANH NGHIỆP', 4, 5, '', 0, 54, 0, 0, 0, 1, 0, 0, 0, NULL),
(273, 'TRANH TỤNG', 5, 5, '', 0, 55, 0, 0, 0, 1, 0, 0, 0, NULL),
(274, 'ĐỊNH CƯ', 6, 5, '', 0, 56, 0, 0, 0, 1, 0, 0, 0, NULL),
(275, 'BLOG TIN TỨC', 7, 5, '', 0, 57, 0, 0, 0, 1, 0, 0, 0, NULL),
(276, 'LIÊN HỆ', 8, 9, '', 0, 0, 0, 0, 0, 1, 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_languages`
--

CREATE TABLE `menu_languages` (
  `id` bigint(20) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lang_menu_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `urlFriendly_menu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_languages`
--

INSERT INTO `menu_languages` (`id`, `languages_code`, `lang_menu_name`, `edit_state`, `urlFriendly_menu`, `menu_id`) VALUES
(205, 'vn', 'Trang chủ', 1, '', 114),
(206, 'en', 'Trang chủ - vn', 1, '', 114),
(287, 'vn', 'Giới thiệu', 0, '', 155),
(288, 'en', 'Giới thiệu', 0, '', 155),
(469, 'vn', 'Thủ tục gia hạn', 0, '', 246),
(470, 'en', 'Thủ tục gia hạn', 0, '', 246),
(471, 'vn', 'Thủ tục sửa đổi', 0, '', 247),
(472, 'en', 'Thủ tục sửa đổi', 0, '', 247),
(473, 'vn', 'Thủ tục chuyển nhượng', 0, '', 248),
(474, 'en', 'Thủ tục chuyển nhượng', 0, '', 248),
(475, 'vn', 'Soạn thảo di chúc', 0, '', 249),
(476, 'en', 'Soạn thảo di chúc', 0, '', 249),
(477, 'vn', 'Giải quyết tranh chấp', 0, '', 250),
(478, 'en', 'Giải quyết tranh chấp', 0, '', 250),
(479, 'vn', 'Tư vấn pháp luật thường xuyên ', 0, '', 251),
(480, 'en', 'Tư vấn pháp luật thường xuyên ', 0, '', 251),
(481, 'vn', 'Tư vấn ly hôn ', 0, '', 252),
(482, 'en', 'Tư vấn ly hôn ', 0, '', 252),
(483, 'vn', 'Tư vấn nội bộ chuyên sâu ', 0, '', 253),
(484, 'en', 'Tư vấn nội bộ chuyên sâu ', 0, '', 253),
(485, 'vn', 'Đại diện tố tụng ', 0, '', 254),
(486, 'en', 'Đại diện tố tụng ', 0, '', 254),
(497, 'vn', 'ĐẦU TƯ RA NƯỚC NGOÀI', 0, '', 260),
(498, 'en', 'ĐẦU TƯ RA NƯỚC NGOÀI', 0, '', 260),
(499, 'vn', 'CÔNG TY LIÊN DOANH ', 0, '', 261),
(500, 'en', 'CÔNG TY LIÊN DOANH ', 0, '', 261),
(501, 'vn', 'GIA HẠN, SỬA ĐỔI CHỨNG NHẬN ĐẦU TƯ', 0, '', 262),
(502, 'en', 'GIA HẠN, SỬA ĐỔI CHỨNG NHẬN ĐẦU TƯ', 0, '', 262),
(503, 'vn', 'ĐIỀU CHỈNH CHỨNG NHẬN ĐẦU TƯ', 0, '', 263),
(504, 'en', 'ĐIỀU CHỈNH CHỨNG NHẬN ĐẦU TƯ', 0, '', 263),
(505, 'vn', 'VĂN PHÒNG ĐẠI DIỆN NƯỚC NGOÀI', 0, '', 264),
(506, 'en', 'VĂN PHÒNG ĐẠI DIỆN NƯỚC NGOÀI', 0, '', 264),
(507, 'vn', 'DOANH NGHIỆP 100% VỐN NƯỚC NGOÀI', 0, '', 265),
(508, 'en', 'DOANH NGHIỆP 100% VỐN NƯỚC NGOÀI', 0, '', 265),
(509, 'vn', 'Luật sư riêng ', 0, '', 266),
(510, 'en', 'Luật sư riêng ', 0, '', 266),
(511, 'vn', 'VISA, THẺ TẠM TRÚ, HỘ CHIẾU', 0, '', 267),
(512, 'en', 'VISA, THẺ TẠM TRÚ, HỘ CHIẾU', 0, '', 267),
(513, 'vn', 'LUẬT SƯ CHO DOANH NGHIỆP NƯỚC NGOÀI ', 0, '', 268),
(514, 'en', 'LUẬT SƯ CHO DOANH NGHIỆP NƯỚC NGOÀI ', 0, '', 268),
(515, 'vn', 'GIẤY PHÉP  KHÁC ', 0, '', 269),
(516, 'en', 'GIẤY PHÉP  KHÁC ', 0, '', 269),
(517, 'vn', 'Tư vấn dân sự, hành chính', 0, '', 270),
(518, 'en', 'Tư vấn dân sự, hành chính', 0, '', 270),
(519, 'vn', 'TƯ VẤN PHÁP LUẬT', 0, '', 271),
(520, 'en', 'TƯ VẤN PHÁP LUẬT', 0, '', 271),
(521, 'vn', 'DOANH NGHIỆP', 0, '', 272),
(522, 'en', 'DOANH NGHIỆP', 0, '', 272),
(523, 'vn', 'TRANH TỤNG', 0, '', 273),
(524, 'en', 'TRANH TỤNG', 0, '', 273),
(525, 'vn', 'ĐỊNH CƯ', 0, '', 274),
(526, 'en', 'ĐỊNH CƯ', 0, '', 274),
(527, 'vn', 'BLOG TIN TỨC', 0, '', 275),
(528, 'en', 'BLOG TIN TỨC', 0, '', 275),
(529, 'vn', 'LIÊN HỆ', 0, '', 276),
(530, 'en', 'LIÊN HỆ', 0, '', 276);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type`
--

CREATE TABLE `menu_type` (
  `menu_type_id` int(11) NOT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_type`
--

INSERT INTO `menu_type` (`menu_type_id`, `menu_type_name`, `first_url`) VALUES
(1, 'Trang chủ', ''),
(2, 'Tất cả sản phẩm', 'san-pham'),
(3, 'Danh mục sản phẩm', NULL),
(4, 'Sản phẩm cụ thể', NULL),
(5, 'Danh mục tin tức', NULL),
(6, 'Tất cả bài tin tức', ''),
(7, 'Bài viết tin tức', NULL),
(8, 'Địa chỉ web', NULL),
(9, 'Liên hệ', NULL),
(10, 'Tất cả dịch vụ', NULL),
(11, 'Bài viết dịch vụ', NULL),
(12, 'Danh mục dịch vụ', NULL),
(13, 'Page', NULL),
(14, 'Đăng ký', NULL),
(15, 'Đăng nhập', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_type_languages`
--

CREATE TABLE `menu_type_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_type_id` int(11) DEFAULT NULL,
  `menu_type_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_type_languages`
--

INSERT INTO `menu_type_languages` (`id`, `languages_code`, `menu_type_id`, `menu_type_name`, `friendly_url`) VALUES
(1, 'vn', 1, 'Trang chủ', ''),
(2, 'en', 1, 'Home', ''),
(3, 'vn', 2, 'Tất cả sản phẩm', 'san-pham'),
(4, 'en', 2, 'All products', 'products'),
(5, 'vn', 3, 'Danh mục sản phẩm', ''),
(6, 'en', 3, 'Catalog product', ''),
(7, 'vn', 4, 'Sản phẩm cụ thể', ''),
(8, 'en', 4, 'Product detail', ''),
(9, 'vn', 5, 'Danh mục tin tức', ''),
(10, 'en', 5, 'Catalog news', ''),
(11, 'vn', 6, 'Tất cả bài tin tức', 'tin-tuc'),
(12, 'en', 6, 'All News', 'news'),
(13, 'vn', 7, 'Bài viết tin tức', ''),
(14, 'en', 7, 'News detail', ''),
(15, 'vn', 8, 'Địa chỉ website', ''),
(16, 'en', 8, 'Website Address', ''),
(17, 'vn', 9, 'Liên hệ', 'lien-he'),
(18, 'en', 9, 'Contact', 'contact'),
(19, 'vn', 10, 'Tất cả dịch vụ', 'dich-vu'),
(20, 'en', 10, 'All Services', 'services'),
(21, 'vn', 11, 'Bài viết dịch vụ', ''),
(22, 'en', 11, 'Service detail', ''),
(23, 'vn', 12, 'Danh mục dịch vụ', ''),
(24, 'en', 12, 'Catalog service', ''),
(25, 'vn', 13, 'Trang nội dung', ''),
(26, 'en', 13, 'Page', ''),
(27, 'vn', 14, 'Đăng ký', 'dang-ky'),
(28, 'en', 14, 'Sign in', 'sign-in'),
(29, 'vn', 15, 'Đăng nhập', 'dang-nhap'),
(30, 'en', 15, 'Log in', 'log-in');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_views` int(11) DEFAULT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `news_author` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_created_date` datetime DEFAULT NULL,
  `news_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `news_img_sub` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`news_id`, `news_name`, `news_des`, `news_content`, `news_img`, `news_views`, `newscat_id`, `news_author`, `news_created_date`, `news_update_date`, `state`, `news_sub_info1`, `news_sub_info2`, `news_sub_info3`, `news_sub_info4`, `news_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`, `news_img_sub`) VALUES
(1974, 'Thành lập công ty trọn gói', '<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_dv_1.jpg', 0, 54, '', '2022-09-10 10:09:59', NULL, 1, '', '', '', '', '', 'Thành lập công ty trọn gói', '', 'thanh-lap-cong-ty-tron-goi', '', 1, ''),
(1975, 'Thay đổi đăng ký kinh doanh', '<p>C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_dv_2.jpg', 0, 54, '', '2022-09-10 10:09:32', '2022-09-10 10:09:00', 1, '', '', '', '', '', 'Thay đổi đăng ký kinh doanh', '', 'thay-doi-dang-ky-kinh-doanh', '', 1, ''),
(1976, 'Thủ tục mua bán sát nhập', '<p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_dv_1.jpg', 0, 54, '', '2022-09-10 10:09:47', '2022-09-10 11:09:51', 1, '', '', '', '', '', 'Thủ tục mua bán sát nhập', '', 'thu-tuc-mua-ban-sat-nhap', '', 1, ''),
(1977, 'Thủ tục định cư Mỹ', '<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_dv_3.jpg', 0, 56, '', '2022-09-10 10:09:38', NULL, 1, '', '', '', '', '', 'Thủ tục định cư Mỹ', '', 'thu-tuc-dinh-cu-my', '', 1, ''),
(1978, 'Tranh chấp quyền thừa kế', '<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_dv_2.jpg', 0, 55, '', '2022-09-10 10:09:04', NULL, 1, '', '', '', '', '', 'Tranh chấp quyền thừa kế', '', 'tranh-chap-quyen-thua-ke', '', 1, ''),
(1979, 'Tranh chấp quyền sử dụng đất', '<p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', 'anvi_hd_3.jpg', 0, 55, '', '2022-09-10 10:09:39', NULL, 1, '', '', '', '', '', 'Tranh chấp quyền sử dụng đất', '', 'tranh-chap-quyen-su-dung-dat', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `newscat`
--

CREATE TABLE `newscat` (
  `newscat_id` int(11) NOT NULL,
  `newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_parent` int(11) DEFAULT NULL,
  `newscat_sort_order` int(11) DEFAULT NULL,
  `newscat_created_date` datetime DEFAULT NULL,
  `newscat_update_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 0,
  `newscat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newscat`
--

INSERT INTO `newscat` (`newscat_id`, `newscat_name`, `newscat_des`, `newscat_content`, `newscat_parent`, `newscat_sort_order`, `newscat_created_date`, `newscat_update_date`, `state`, `newscat_img`, `newscat_sub_info1`, `newscat_sub_info2`, `newscat_sub_info3`, `newscat_sub_info4`, `newscat_sub_info5`, `title_seo`, `des_seo`, `friendly_url`, `keyword`, `created_id`) VALUES
(53, 'TƯ VẤN PHÁP LUẬT', '', '', 58, 0, '2022-09-10 11:09:32', NULL, 1, NULL, '', '', '', '', '', 'TƯ VẤN PHÁP LUẬT', '', 'tu-van-phap-luat', '', 1),
(54, 'DOANH NGHIỆP', '', '', 58, 0, '2022-09-10 11:09:38', NULL, 1, NULL, '', '', '', '', '', 'DOANH NGHIỆP', '', 'doanh-nghiep', '', 1),
(55, 'TRANH TỤNG', '', '', 58, 0, '2022-09-10 11:09:54', NULL, 1, NULL, '', '', '', '', '', 'TRANH TỤNG', '', 'tranh-tung', '', 1),
(56, 'ĐỊNH CƯ', '', '', 58, 0, '2022-09-10 11:09:45', NULL, 1, NULL, '', '', '', '', '', 'ĐỊNH CƯ', '', 'dinh-cu', '', 1),
(57, 'TIN TỨC', '', '', 0, 0, '2022-09-09 19:09:51', NULL, 1, '', '', '', '', '', '', 'TIN TỨC', '', 'tin-tuc', '', 1),
(58, 'DỊCH VỤ', '', '', 0, 0, '2022-09-10 11:09:24', NULL, 1, '', '', '', '', '', '', 'DỊCH VỤ', '', 'dich-vu', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newscat_languages`
--

CREATE TABLE `newscat_languages` (
  `id` int(11) NOT NULL,
  `newscat_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_newscat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newscat_languages`
--

INSERT INTO `newscat_languages` (`id`, `newscat_id`, `languages_code`, `lang_newscat_name`, `lang_newscat_des`, `lang_newscat_content`, `lang_newscat_sub_info1`, `lang_newscat_sub_info2`, `lang_newscat_sub_info3`, `lang_newscat_sub_info4`, `lang_newscat_sub_info5`, `edit_state`, `friendly_url`, `keyword`, `title_seo`, `des_seo`) VALUES
(105, 53, 'vn', 'TƯ VẤN PHÁP LUẬT', '', NULL, '', '', '', '', '', 0, 'tu-van-phap-luat', '', 'TƯ VẤN PHÁP LUẬT', ''),
(106, 53, 'en', 'english version TƯ VẤN PHÁP LUẬT', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tu-van-phap-luat', '', 'TƯ VẤN PHÁP LUẬT', ''),
(107, 54, 'vn', 'DOANH NGHIỆP', '', NULL, '', '', '', '', '', 0, 'doanh-nghiep', '', 'DOANH NGHIỆP', ''),
(108, 54, 'en', 'english version DOANH NGHIỆP', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-doanh-nghiep', '', 'DOANH NGHIỆP', ''),
(109, 55, 'vn', 'TRANH TỤNG', '', NULL, '', '', '', '', '', 0, 'tranh-tung', '', 'TRANH TỤNG', ''),
(110, 55, 'en', 'english version TRANH TỤNG', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tranh-tung', '', 'TRANH TỤNG', ''),
(111, 56, 'vn', 'ĐỊNH CƯ', '', NULL, '', '', '', '', '', 0, 'dinh-cu', '', 'ĐỊNH CƯ', ''),
(112, 56, 'en', 'english version ĐỊNH CƯ', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dinh-cu', '', 'ĐỊNH CƯ', ''),
(113, 57, 'vn', 'TIN TỨC', '', '', '', '', '', '', '', 0, 'tin-tuc', '', 'TIN TỨC', ''),
(114, 57, 'en', 'english version TIN TỨC', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-tin-tuc', '', 'TIN TỨC', ''),
(115, 58, 'vn', 'DỊCH VỤ', '', '', '', '', '', '', '', 0, 'dich-vu', '', 'DỊCH VỤ', ''),
(116, 58, 'en', 'english version DỊCH VỤ', 'english version ', 'english version ', '', '', '', '', '', 0, 'en-dich-vu', '', 'DỊCH VỤ', '');

-- --------------------------------------------------------

--
-- Table structure for table `news_languages`
--

CREATE TABLE `news_languages` (
  `id` bigint(20) NOT NULL,
  `news_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_news_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news_languages`
--

INSERT INTO `news_languages` (`id`, `news_id`, `languages_code`, `lang_news_name`, `lang_news_des`, `lang_news_content`, `lang_news_sub_info1`, `lang_news_sub_info2`, `lang_news_sub_info3`, `lang_news_sub_info4`, `lang_news_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `des_seo`, `keyword`) VALUES
(3947, 1974, 'vn', 'Thành lập công ty trọn gói', '<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'thanh-lap-cong-ty-tron-goi', 'Thành lập công ty trọn gói', '', ''),
(3948, 1974, 'en', 'english version Thành lập công ty trọn gói', 'english version <p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất.</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-thanh-lap-cong-ty-tron-goi', 'Thành lập công ty trọn gói', '', ''),
(3949, 1975, 'vn', 'Thay đổi đăng ký kinh doanh', '<p>C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'thay-doi-dang-ky-kinh-doanh', 'Thay đổi đăng ký kinh doanh', '', ''),
(3950, 1975, 'en', 'english version Thay đổi đăng ký kinh doanh', 'english version <p>C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-thay-doi-dang-ky-kinh-doanh', 'Thay đổi đăng ký kinh doanh', '', ''),
(3951, 1976, 'vn', 'Thủ tục mua bán sát nhập', '<p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'thu-tuc-mua-ban-sat-nhap', 'Thủ tục mua bán sát nhập', '', ''),
(3952, 1976, 'en', 'english version Thủ tục mua bán sát nhập', 'english version <p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-thu-tuc-mua-ban-sat-nhap', 'Thủ tục mua bán sát nhập', '', ''),
(3953, 1977, 'vn', 'Thủ tục định cư Mỹ', '<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'thu-tuc-dinh-cu-my', 'Thủ tục định cư Mỹ', '', ''),
(3954, 1977, 'en', 'english version Thủ tục định cư Mỹ', 'english version <p>Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-thu-tuc-dinh-cu-my', 'Thủ tục định cư Mỹ', '', ''),
(3955, 1978, 'vn', 'Tranh chấp quyền thừa kế', '<p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'tranh-chap-quyen-thua-ke', 'Tranh chấp quyền thừa kế', '', ''),
(3956, 1978, 'en', 'english version Tranh chấp quyền thừa kế', 'english version <p>Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-tranh-chap-quyen-thua-ke', 'Tranh chấp quyền thừa kế', '', ''),
(3957, 1979, 'vn', 'Tranh chấp quyền sử dụng đất', '<p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất</p>\r\n', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'tranh-chap-quyen-su-dung-dat', 'Tranh chấp quyền sử dụng đất', '', ''),
(3958, 1979, 'en', 'english version Tranh chấp quyền sử dụng đất', 'english version <p>Dựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất</p>\r\n', 'english version <p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'en-tranh-chap-quyen-su-dung-dat', 'Tranh chấp quyền sử dụng đất', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nhan_ban_tin`
--

CREATE TABLE `nhan_ban_tin` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_tai_lieu`
--

CREATE TABLE `nhan_tai_lieu` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nhan_tai_lieu_1`
--

CREATE TABLE `nhan_tai_lieu_1` (
  `id` int(11) NOT NULL,
  `name` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `obsolete_products_file`
--

CREATE TABLE `obsolete_products_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obsolete_products_file`
--

INSERT INTO `obsolete_products_file` (`id`, `name`) VALUES
(3, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `online_ngay`
--

CREATE TABLE `online_ngay` (
  `id` int(11) NOT NULL,
  `dem` int(11) NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_ngay`
--

INSERT INTO `online_ngay` (`id`, `dem`, `ngay`) VALUES
(1, 2, '2022-09-16');

-- --------------------------------------------------------

--
-- Table structure for table `online_total`
--

CREATE TABLE `online_total` (
  `id` int(11) NOT NULL,
  `dem` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `online_total`
--

INSERT INTO `online_total` (`id`, `dem`) VALUES
(1, 24292);

-- --------------------------------------------------------

--
-- Table structure for table `operating_file`
--

CREATE TABLE `operating_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operating_file`
--

INSERT INTO `operating_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ1`
--

CREATE TABLE `optionsQ1` (
  `optionsQ1_id` int(11) NOT NULL,
  `optionsQ1_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ1`
--

INSERT INTO `optionsQ1` (`optionsQ1_id`, `optionsQ1_value`) VALUES
(1, 'Đau rát'),
(2, 'Chảy máu khi đi vệ sinh'),
(3, 'Ngứa ngáy, khó chịu, ẩm ướt có mùi khó chịu'),
(4, 'Búi trĩ sa ra ngoài (nhìn hoặc sờ)'),
(5, 'Không có biểu hiện nào như trên');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ2`
--

CREATE TABLE `optionsQ2` (
  `optionsQ2_id` int(11) NOT NULL,
  `optionsQ2_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ2`
--

INSERT INTO `optionsQ2` (`optionsQ2_id`, `optionsQ2_value`) VALUES
(1, 'Có'),
(2, 'Không');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ3`
--

CREATE TABLE `optionsQ3` (
  `optionsQ3_id` int(11) NOT NULL,
  `optionsQ3_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ3`
--

INSERT INTO `optionsQ3` (`optionsQ3_id`, `optionsQ3_value`) VALUES
(1, 'Mới (đang bị)'),
(2, 'Lâu, tái đi tái lại'),
(3, 'Lâu, nhưng giờ đang bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ4`
--

CREATE TABLE `optionsQ4` (
  `optionsQ4_id` int(11) NOT NULL,
  `optionsQ4_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ4`
--

INSERT INTO `optionsQ4` (`optionsQ4_id`, `optionsQ4_value`) VALUES
(1, 'Máu dính trên giấy vệ sinh'),
(2, 'Máu dính trên phân hoặc nhỏ giọt'),
(3, 'Máu chảy thành tia'),
(4, 'Không thấy máu');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ5`
--

CREATE TABLE `optionsQ5` (
  `optionsQ5_id` int(11) NOT NULL,
  `optionsQ5_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ5`
--

INSERT INTO `optionsQ5` (`optionsQ5_id`, `optionsQ5_value`) VALUES
(1, 'Hơi đau, tức hậu môn, khó chịu'),
(2, 'Đau nhiều, rát. đỡ khi nằm'),
(3, 'Rất đau rát, đứng ngồi, nằm không yên'),
(4, 'Không đau, bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ6`
--

CREATE TABLE `optionsQ6` (
  `optionsQ6_id` int(11) NOT NULL,
  `optionsQ6_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ6`
--

INSERT INTO `optionsQ6` (`optionsQ6_id`, `optionsQ6_value`) VALUES
(1, 'Ít, lồi ra như hạt ngô'),
(2, 'Nhiều, lồi ra bằng 1/3 đốt ngón tay'),
(3, 'Rất nhiều, dài >2.5cm'),
(4, 'Không sa, bình thường');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ7`
--

CREATE TABLE `optionsQ7` (
  `optionsQ7_id` int(11) NOT NULL,
  `optionsQ7_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ7`
--

INSERT INTO `optionsQ7` (`optionsQ7_id`, `optionsQ7_value`) VALUES
(1, 'Không tự co vào được, ấn vào lại sa ra, hoặc rặn nhẹ là sa ra'),
(2, 'Tự co lên được sau khi ấn vào nhẹ');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ8`
--

CREATE TABLE `optionsQ8` (
  `optionsQ8_id` int(11) NOT NULL,
  `optionsQ8_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ8`
--

INSERT INTO `optionsQ8` (`optionsQ8_id`, `optionsQ8_value`) VALUES
(1, 'Khô, thoáng bình thường, không có dịch'),
(2, 'Hơi ẩm, ít mùi'),
(3, 'Ướt, có dịch vào đồ lót, mùi khó chịu');

-- --------------------------------------------------------

--
-- Table structure for table `optionsQ9`
--

CREATE TABLE `optionsQ9` (
  `optionsQ9_id` int(11) NOT NULL,
  `optionsQ9_value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `optionsQ9`
--

INSERT INTO `optionsQ9` (`optionsQ9_id`, `optionsQ9_value`) VALUES
(1, 'Có'),
(2, 'Không'),
(3, 'Có nhưng mức độ 3-4h/ngày');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_email` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_receiver_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `orders_total_price` float DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL,
  `orders_created_date` datetime DEFAULT NULL,
  `orders_state` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `order_detail_quantity` int(11) DEFAULT NULL,
  `order_detail_price` double DEFAULT NULL,
  `order_detail_note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_state`
--

CREATE TABLE `order_state` (
  `order_state_id` int(11) NOT NULL,
  `order_state_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `order_state`
--

INSERT INTO `order_state` (`order_state_id`, `order_state_name`, `state`) VALUES
(1, 'Chờ xác nhận', 0),
(2, 'Đã xác nhận', 0),
(3, 'Chờ thanh toán', 0),
(4, 'Đã thanh toán', 0),
(5, 'Chờ gửi hàng', 0),
(6, '	\r\nHủy đơn hàng', 0),
(7, '	\r\nĐã chuyển hàng', 0);

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `page_id` int(11) NOT NULL,
  `page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_created_date` datetime DEFAULT NULL,
  `page_update_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`page_id`, `page_name`, `page_des`, `page_content`, `page_img`, `page_created_date`, `page_update_date`, `state`, `page_sub_info1`, `page_sub_info2`, `page_sub_info3`, `page_sub_info4`, `page_sub_info5`, `keyword`, `title_seo`, `des_seo`, `friendly_url`, `created_id`) VALUES
(36, 'Giới thiệu', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', NULL, '2017-05-11 16:05:03', '2022-09-10 10:09:44', 1, '', '', '', '', '', '', 'Giới thiệu', '', 'gioi-thieu', 1);

-- --------------------------------------------------------

--
-- Table structure for table `page_languages`
--

CREATE TABLE `page_languages` (
  `id` bigint(20) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_page_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `page_languages`
--

INSERT INTO `page_languages` (`id`, `page_id`, `languages_code`, `lang_page_name`, `lang_page_des`, `lang_page_content`, `lang_page_sub_info1`, `lang_page_sub_info2`, `lang_page_sub_info3`, `lang_page_sub_info4`, `lang_page_sub_info5`, `edit_state`, `friendly_url`, `title_seo`, `keyword`, `des_seo`) VALUES
(37, 36, 'vn', 'Giới thiệu', 'Văn phòng Luật Sư AnVi | Tạo giá trị - Trọn niềm tin. Chúng tôi luôn đồng hành cùng quý khách hàng trong lĩnh vực tư vấn pháp luật, pháp lý tuân thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di trú định cư Mỹ - Úc - Canada...', '<p>Văn ph&ograve;ng Luật Sư AnVi | Tạo gi&aacute; trị - Trọn niềm tin. Ch&uacute;ng t&ocirc;i lu&ocirc;n đồng h&agrave;nh c&ugrave;ng qu&yacute; kh&aacute;ch h&agrave;ng trong lĩnh vực tư vấn ph&aacute;p luật, ph&aacute;p l&yacute; tu&acirc;n thủ doanh nghiệp, tranh tụng, khiếu kiện, hỗ trợ di tr&uacute; định cư Mỹ - &Uacute;c - Canada...</p>\r\n\r\n<p>Bằng sự chuy&ecirc;n nghiệp v&agrave; đạo đức, ch&uacute;ng t&ocirc;i lu&ocirc;n nỗ lực để cung cấp cho kh&aacute;ch h&agrave;ng dịch vụ chất lượng một c&aacute;ch xuất sắc nhất v&agrave; hiệu quả cao nhất. C&aacute;c Luật sư của ch&uacute;ng t&ocirc;i được đ&agrave;o tạo tại c&aacute;c cơ sở h&agrave;ng đầu tại Việt Nam v&agrave; t&iacute;ch luỹ bề d&agrave;y kinh nghiệm nhiều năm. Ch&uacute;ng t&ocirc;i lu&ocirc;n tự h&agrave;o về nh&acirc;n sự l&agrave; những con người c&oacute; đạo đức nghề nghiệp, c&oacute; kỹ năng chuy&ecirc;n nghiệp v&agrave; tư duy ph&aacute;p l&yacute; xuất sắc.<br />\r\n&nbsp;<br />\r\nDựa tr&ecirc;n gi&aacute; trị cốt l&otilde;i l&agrave; sự hiểu biết tường tận về hệ thống ph&aacute;p luật Việt Nam v&agrave; kinh nghiệm quốc tế của c&aacute;c Luật sư thế hệ mới, ch&uacute;ng t&ocirc;i tự tin đ&aacute;p ứng mọi nhu cầu của kh&aacute;ch trong nước v&agrave; quốc tế với thời gian nhanh nhất, chi ph&iacute; hợp l&yacute; chất v&agrave; chất lượng c&ocirc;ng việc tốt nhất trong c&aacute;c lĩnh vực Đất đai v&agrave; Bất động sản, Tranh tụng, Doanh nghiệp v&agrave; Đầu tư v&agrave; c&aacute;c Dịch vụ ph&aacute;p l&yacute; kh&aacute;c.</p>\r\n', '', '', '', '', '', 0, 'gioi-thieu', 'Giới thiệu', '', ''),
(38, 36, 'en', 'Báo giá', 'Bảng giá dịch thuật công chứng Giá tốt, chất lượng cao, dịch ngay\r\nHơn 8000 CTV Dịch thuật · Hơn 10 năm kinh nghiệm · 100% khách hàng hài lòng', '<h2><strong>PHƯƠNG THỨC GIAO DỊCH ĐỐI VỚI B&Aacute;O GI&Aacute; DỊCH THUẬT</strong></h2>\r\n\r\n<p>1. Ch&uacute;ng t&ocirc;i sẽ giao nhận t&agrave;i liệu tận nơi với những đơn đặt h&agrave;ng tr&ecirc;n 50 trang t&agrave;i liệu.<br />\r\n2. Để tiến h&agrave;nh c&ocirc;ng t&aacute;c dịch thuật v&agrave; phi&ecirc;n dịch Hợp đồng Qu&yacute; kh&aacute;ch cần đặt trước 30% gi&aacute; trị hợp đồng.<br />\r\n3. Nếu qu&yacute; kh&aacute;ch l&agrave; c&ocirc;ng ty c&oacute; nhu cầu dịch thuật dưới 10 trang, Qu&yacute; kh&aacute;ch chỉ cần fax x&aacute;c nhận y&ecirc;u cầu c&oacute; đầy đủ th&ocirc;ng tin li&ecirc;n quan k&egrave;m con dấu, ch&uacute;ng t&ocirc;i sẽ tiến h&agrave;nh thực hiện y&ecirc;u cầu dịch m&agrave; kh&ocirc;ng cần tiền đặt cọc hợp đồng.<br />\r\n4. Đối với kh&aacute;ch h&agrave;ng thường xuy&ecirc;n dịch tại C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i sẽ giao nhận tận nơi miễn ph&iacute;.</p>\r\n\r\n<p><strong>Phần ưu ti&ecirc;n kh&aacute;ch h&agrave;ng dịch với số lượng lớn</strong><br />\r\n1. Giảm 5% với số lượng từ 100 &ndash; 500 trang<br />\r\n2. Giảm 10% với số lượng từ 500 &ndash; 1000 trang<br />\r\n3. Giảm 15% với số lượng 1000 trang trở l&ecirc;n</p>\r\n\r\n<p><strong>Lưu &yacute; quan trọng:</strong></p>\r\n\r\n<ul>\r\n	<li>Gi&aacute; dịch chưa bao gồm VAT (10%).</li>\r\n	<li>Mức gi&aacute; tr&ecirc;n kh&ocirc;ng &aacute;p dụng đối với Kh&aacute;ch h&agrave;ng dịch chuy&ecirc;n ng&agrave;nh, dịch gấp, c&ocirc;ng chứng gấp.</li>\r\n	<li>Văn bản hiệu đ&iacute;nh: Hiệu đ&iacute;nh = 50% tiền dịch. Nếu t&agrave;i liệu hiệu đ&iacute;nh sai tr&ecirc;n 30% th&igrave; bản hiệu đ&iacute;nh đ&oacute; được t&iacute;nh bằng tiền dịch.</li>\r\n	<li>Số lượng từ tr&ecirc;n một trang được quy định dưới 300 từ (D&ugrave;ng hệ thống đếm từ tự động Word Count), trường hợp t&agrave;i liệu của qu&yacute; kh&aacute;ch l&agrave; bản cứng kh&ocirc;ng thể đếm từ được sẽ t&iacute;nh x&aacute;c xuất hoặc t&iacute;nh theo bản dịch l&uacute;c n&agrave;y số lượng từ tr&ecirc;n trang sản phẩm c&oacute; thể quy định lại, th&ocirc;ng thường sẽ giao động 10-20%.</li>\r\n	<li>Gi&aacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y sang tiếng nước ngo&agrave;i kh&aacute;c sẽ bằng chi ph&iacute; dịch từ tiếng nước ngo&agrave;i n&agrave;y ra tiếng Việt cộng với từ tiếng Việt sang tiếng nước ngo&agrave;i thứ hai hoặc sẽ t&iacute;nh ph&iacute; dịch trực tiếp nếu c&oacute; y&ecirc;u cầu người bản địa dịch thuật lại</li>\r\n	<li>Nếu qu&yacute; kh&aacute;ch y&ecirc;u cầu dịch gấp, dịch v&agrave;o ng&agrave;y nghỉ, ng&agrave;y lễ gi&aacute; dịch sẽ tăng 25 %, th&ocirc;ng thường đơn đặt h&agrave;ng tr&ecirc;n 20 trang lấy trong ng&agrave;y được coi l&agrave; gấp. Nếu l&agrave; kh&aacute;ch h&agrave;ng thường xuy&ecirc;n của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; qu&yacute; kh&aacute;ch sẽ được miễn ph&iacute; dịch vụ cộng th&ecirc;m n&agrave;y.</li>\r\n	<li>Đối với t&agrave;i liệu chuy&ecirc;n ng&agrave;nh như: Hợp đồng kinh tế, kỹ thuật, thương mại, t&agrave;i ch&iacute;nh,y học, dược phẩm... th&igrave; ngo&agrave;i tiền dịch + 30% tiền dịch chuy&ecirc;n ng&agrave;nh.</li>\r\n</ul>\r\n\r\n<h3>BẢNG GI&Aacute; DỊCH THUẬT N&Agrave;Y C&Oacute; THỂ THAY ĐỔI PHỤ THUỘC V&Agrave;O NHU CẦU THỰC TẾ CỦA DỰ &Aacute;N, HỢP ĐỒNG V&Agrave; SỰ THỎA THUẬN GIỮA HAI B&Ecirc;N !</h3>\r\n\r\n<p>Chuyển ngữ v&agrave; địa phương h&oacute;a t&agrave;i liệu rất quan trọng n&oacute; c&oacute; ảnh hưởng rất lớn đến c&ocirc;ng việc v&agrave; quyết định trong dự &aacute;n của bạn. Qu&yacute; kh&aacute;ch đang t&igrave;m một đơn vị&nbsp;<a href=\"https://www.dichthuatchaua.com/bien-phien-dich/dich-thuat/dich-thuat-cong-chung.html\" title=\"Dịch thuật công chứng\">Dịch Thuật</a>&nbsp;chuy&ecirc;n nghiệp v&agrave; gi&agrave;u kinh nghiệm trong việc Địa phương h&oacute;a t&agrave;i liệu, đảm bảo thời gian ch&iacute;nh x&aacute;c v&agrave; chất lượng tuyệt đối, chi ph&iacute; hợp l&yacute; nhất. H&atilde;y li&ecirc;n hệ ngay với&nbsp;<a href=\"https://www.dichthuatchaua.com/gioi-thieu-cong-ty-dich-thuat.html\" title=\"Công ty dịch thuật chuyên nghiệp\">C&ocirc;ng ty dịch thuật Ch&acirc;u &Aacute;</a>&nbsp;để được nhưng chuy&ecirc;n gia tư vấn chuy&ecirc;n nghiệp, gi&agrave;u kinh nghiệm gi&uacute;p Qu&yacute; kh&aacute;ch.</p>\r\n\r\n<p><img alt=\"\" src=\"/image/images/55e7557453f13-sierra-fig2.jpg\" style=\"height:800px; width:1600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Dự &aacute;n, Hợp đồng của Qu&yacute; kh&aacute;ch h&agrave;ng rất quan trọng, Qu&yacute; kh&aacute;ch h&agrave;ng đang muốn t&igrave;m một đơn vị Dịch thuật c&oacute; thể đảm bảo về thời gian, chất lượng v&agrave; cung cấp gi&aacute; cả tốt nhất, h&atilde;y li&ecirc;n lạc với số Hotline: 0932232318 (H&agrave; Nội) hoặc 0932237939 (TP HCM) của Dich thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute; sẽ l&agrave;m Qu&yacute; kh&aacute;ch h&agrave;i l&ograve;ng.</p>\r\n\r\n<p>Cảm ơn Qu&yacute; kh&aacute;ch đ&atilde; ngh&eacute; thăm website của Dịch thuật v&agrave; Phi&ecirc;n dịch Ch&acirc;u &Aacute;, ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết đưa ra mức gi&aacute; cạnh tranh v&agrave; chất lương v&agrave; bảo mật bảo đảm tuyệt đối.</p>\r\n', '', '', '', '', '', 0, 'bao-gia', 'Báo giá', '', 'thẻ mô tả của bài viết báo giá');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_price` float DEFAULT NULL,
  `product_price_sale` float DEFAULT NULL,
  `product_discount` float DEFAULT NULL,
  `product_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_created_date` datetime DEFAULT NULL,
  `product_update_date` datetime DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_hot` int(11) DEFAULT 0,
  `product_favorite` int(11) NOT NULL,
  `product_new` int(11) DEFAULT 0,
  `product_sale` int(11) DEFAULT 0,
  `product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `product_material` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_shape` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_expiration` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `product_producer` int(11) DEFAULT NULL,
  `product_review` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_ar` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcat`
--

CREATE TABLE `productcat` (
  `productcat_id` int(11) NOT NULL,
  `productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_parent` int(11) NOT NULL DEFAULT 0,
  `productcat_sort_order` int(11) NOT NULL DEFAULT 0,
  `productcat_img` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_created_date` datetime DEFAULT NULL,
  `productcat_update_date` datetime DEFAULT NULL,
  `productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0,
  `title_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcat_languages`
--

CREATE TABLE `productcat_languages` (
  `id` bigint(20) NOT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `lang_productcat_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_productcat_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_catalogs_file`
--

CREATE TABLE `product_catalogs_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_catalogs_file`
--

INSERT INTO `product_catalogs_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_languages`
--

CREATE TABLE `product_languages` (
  `id` bigint(20) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_des3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_content3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_original` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_size` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_package` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_delivery_time` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_payment_type` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_product_sub_info5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `edit_state` int(11) NOT NULL DEFAULT 0,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_producer`
--

CREATE TABLE `product_producer` (
  `producer_id` int(11) NOT NULL,
  `producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_sort_order` int(11) DEFAULT NULL,
  `producer_parent` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_producer`
--

INSERT INTO `product_producer` (`producer_id`, `producer_name`, `producer_sort_order`, `producer_parent`, `state`) VALUES
(3, 'Donaldson', 1, 0, 1),
(4, 'Komatsu', 2, 0, 1),
(5, 'Fleetguard', 3, 0, 1),
(6, 'Badwin', 4, 0, 1),
(7, 'Huyndai-Mobis', 5, 0, 1),
(8, 'Sakura', 6, 0, 1),
(9, 'Kobelco', 7, 0, 1),
(10, 'Hãng khác', 8, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product_producer_languages`
--

CREATE TABLE `product_producer_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_producer_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `producer_id` int(11) NOT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_producer_languages`
--

INSERT INTO `product_producer_languages` (`id`, `languages_code`, `lang_producer_name`, `producer_id`, `friendly_url`) VALUES
(34, 'vn', 'Donaldson', 3, 'donaldson'),
(35, 'en', 'Donaldson', 3, 'donaldson'),
(36, 'vn', 'Komatsu', 4, 'komatsu'),
(37, 'en', 'Komatsu', 4, 'komatsu'),
(38, 'vn', 'Fleetguard', 5, 'fleetguard'),
(39, 'en', 'Fleetguard', 5, 'fleetguard'),
(40, 'vn', 'Badwin', 6, 'badwin'),
(41, 'en', 'Badwin', 6, 'badwin'),
(42, 'vn', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(43, 'en', 'Huyndai-Mobis', 7, 'huyndai-mobis'),
(44, 'vn', 'Sakura', 8, 'sakura'),
(45, 'en', 'Sakura', 8, 'sakura'),
(46, 'vn', 'Kobelco', 9, 'kobelco'),
(47, 'en', 'Kobelco', 9, 'kobelco'),
(48, 'vn', 'Hãng khác', 10, 'hang-khac'),
(49, 'en', 'Hãng khác', 10, 'hang-khac');

-- --------------------------------------------------------

--
-- Table structure for table `pro_color`
--

CREATE TABLE `pro_color` (
  `id` int(11) NOT NULL,
  `color` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regInfor`
--

CREATE TABLE `regInfor` (
  `regInfor_id` int(11) NOT NULL,
  `regInfor_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_wasBorn` int(11) DEFAULT NULL,
  `regInfor_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regInfor_state` int(11) DEFAULT 1,
  `regInfor_createdDate` date DEFAULT NULL,
  `regInfor_answer1` int(11) DEFAULT 1,
  `regInfor_answer2` int(11) DEFAULT 1,
  `regInfor_answer3` int(11) DEFAULT 1,
  `regInfor_answer4` int(11) DEFAULT 1,
  `regInfor_answer5` int(11) DEFAULT 1,
  `regInfor_answer6` int(11) DEFAULT 1,
  `regInfor_answer7` int(11) DEFAULT 1,
  `regInfor_answer8` int(11) DEFAULT 1,
  `regInfor_answer9` int(11) DEFAULT 1,
  `regInfor_sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regInfor`
--

INSERT INTO `regInfor` (`regInfor_id`, `regInfor_name`, `regInfor_phone`, `regInfor_mail`, `regInfor_address`, `regInfor_wasBorn`, `regInfor_code`, `regInfor_state`, `regInfor_createdDate`, `regInfor_answer1`, `regInfor_answer2`, `regInfor_answer3`, `regInfor_answer4`, `regInfor_answer5`, `regInfor_answer6`, `regInfor_answer7`, `regInfor_answer8`, `regInfor_answer9`, `regInfor_sex`) VALUES
(25, 'fgsf', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(26, 'th', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(31, 'thuyhang', '0967878', NULL, NULL, 0, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(32, 'thuyhang2', '0967878', NULL, NULL, 1955, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 1, 1, 2, 'nữ'),
(34, 'thdfghgfh', 'dfasdfas', NULL, NULL, 1940, NULL, 1, '2017-06-21', 1, 1, 1, 1, 1, 1, 2, 1, 1, 'nam'),
(35, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(37, 'hh', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(38, '', '01669745858', NULL, NULL, 1982, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(39, 'hsdfansdf', '0967878', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(40, '', 'dsfdsfsfs', NULL, NULL, 1940, NULL, 1, '2017-06-22', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(41, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(43, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(44, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(45, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(46, '', '01669745858', NULL, NULL, 1940, NULL, 1, '2017-06-27', 1, 1, 1, 1, 1, 1, 1, 1, 1, 'nam'),
(47, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(48, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(49, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(50, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(51, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(52, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 1, 1, 1, 1, 1, 1, 1, 1, 1, NULL),
(53, 'erte', '5657', NULL, NULL, 2345, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(54, '', '', NULL, NULL, 0, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(55, 'dryrs', '3426546', NULL, NULL, 25346, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1'),
(56, 'hangpt', '0973378669', NULL, NULL, 1989, NULL, 1, '2017-07-10', 1, 1, 1, 1, 1, 1, 1, 1, 1, '4'),
(57, 'fhgh', 'fhfhfh', NULL, NULL, 0, NULL, 1, '2017-07-15', 1, 1, 1, 1, 1, 1, 1, 1, 1, '3'),
(58, 'tgsdfg', '', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(59, 'zxcv', 'sdf', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '0'),
(60, 'xzc', '35345', NULL, NULL, 0, NULL, 1, '2017-07-16', 1, 1, 1, 1, 1, 1, 1, 1, 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `regMember`
--

CREATE TABLE `regMember` (
  `regMember_id` int(11) NOT NULL,
  `regMember_mail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `regMember_createdDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `regMember`
--

INSERT INTO `regMember` (`regMember_id`, `regMember_mail`, `regMember_createdDate`) VALUES
(11, 'ádgf', '2017-07-16'),
(12, 'xvdfg', '2017-07-16'),
(13, '', '2017-07-30');

-- --------------------------------------------------------

--
-- Table structure for table `sale`
--

CREATE TABLE `sale` (
  `sale_id` int(11) NOT NULL,
  `sale_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_code` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sale_total_count` int(11) DEFAULT NULL,
  `sale_type` int(11) DEFAULT NULL,
  `sale_value` float DEFAULT NULL,
  `sale_apply` int(11) DEFAULT NULL,
  `productcat_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_start_date` datetime DEFAULT NULL,
  `sale_end_date` datetime DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_views` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL,
  `service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_create_date` date DEFAULT NULL,
  `service_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicecat`
--

CREATE TABLE `servicecat` (
  `servicecat_id` int(11) NOT NULL,
  `servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_parent` int(11) DEFAULT NULL,
  `servicecat_sort_order` int(11) DEFAULT NULL,
  `servicecat_created_date` date DEFAULT NULL,
  `servicecat_update_date` date DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `servicecat_img` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `servicecat_languages`
--

CREATE TABLE `servicecat_languages` (
  `id` int(11) NOT NULL,
  `lang_servicecat_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `lang_servicecat_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_servicecat_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `servicecat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_languages`
--

CREATE TABLE `service_languages` (
  `id` int(11) NOT NULL,
  `languages_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_des` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_service_author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT 1,
  `service_sub_infor1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `service_sub_infor5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_seo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `des_seo` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `friendly_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `size_id` bigint(20) NOT NULL,
  `size_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size_stock` int(11) DEFAULT NULL,
  `size_price` double DEFAULT NULL,
  `color_id` bigint(20) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `age` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `accede` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL,
  `experience` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `program` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `time` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `age`, `country`, `accede`, `sex`, `experience`, `program`, `introduce`, `image`, `time`) VALUES
(5, 'Tư vấn Doanh Nghiệp', '15 / 04 / 2019', 'Việt Nam', '2019-04-15', 0, '<p><strong>- Laptop/Tablet để thực h&agrave;nh vẽ biểu đồ gi&aacute;, nắm bắt xu hướng dễ d&agrave;ng</strong></p>\r\n\r\n<p><strong>- Giấy, b&uacute;t để ghi ch&eacute;p</strong></p>\r\n\r\n<p><strong>- Sắp xếp thời gian c&oacute; mặt đ&uacute;ng giờ (c&oacute; thể tới sớm hơn để giao lưu c&ugrave;ng cộng đồng)</strong></p>\r\n', '', '', 'gv-01.jpg', 1550724430),
(6, 'Luật Trong Ngành Luật', '15042019', 'Việt Nam', '2018-04-15', 0, '<p><span style=\"font-size:12px\"><strong>- Laptop/Tablet để thực h&agrave;nh vẽ biểu đồ gi&aacute;, nắm bắt xu hướng dễ d&agrave;ng</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>- Giấy, b&uacute;t để ghi ch&eacute;p</strong></span></p>\r\n\r\n<p><span style=\"font-size:12px\"><strong>- Sắp xếp thời gian c&oacute; mặt đ&uacute;ng giờ (c&oacute; thể tới sớm hơn để giao lưu c&ugrave;ng cộng đồng)</strong></span></p>\r\n', '', '', 'gv-02.jpg', 1550727125),
(7, 'Tư vẫn hỗ trợ riêng', '15032019', 'Việt Nam', '2019-12-04', 0, '<h2 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:18pt\"><span style=\"font-size:10.5pt\">- Laptop/Tablet để thực h&agrave;nh vẽ biểu đồ gi&aacute;, nắm bắt xu hướng dễ d&agrave;ng</span></span></h2>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:18pt\"><span style=\"font-size:10.5pt\">- Giấy, b&uacute;t để ghi ch&eacute;p</span></span></h2>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:18pt\"><span style=\"font-size:10.5pt\">- Sắp xếp thời gian c&oacute; mặt đ&uacute;ng giờ (c&oacute; thể tới sớm hơn để giao lưu c&ugrave;ng cộng đồng)</span></span></h2>\r\n', '<h2><span style=\"font-size:14px\">Tư vấn hỗ trợ ri&ecirc;ng d&agrave;nh cho kh&aacute;ch h&agrave;ng tổ chức v&agrave; học vi&ecirc;n c&oacute; vốn (Lớn hơn 1 tỷ)</span></h2>\r\n', '<h2 style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:16px\"><strong><strong>Nội dung Kh&oacute;a học Trade Thực chiến N&acirc;ng cao:</strong></strong></span></h2>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong>1. Vẽ thuần thục biểu đồ gi&aacute; với c&aacute;c đường trendline, chanel</strong></span></span></span></p>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">2. Nắm bắt xu hướng tăng giảm của gi&aacute; nhằm x&aacute;c định đầu tư ngắn hạn &ndash; trung hạn &ndash; d&agrave;i hạn</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">3. Hiểu biết về đường MA, BB, RSI</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">4. Price action</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">5. Ph&acirc;n t&iacute;ch volume v&agrave; c&aacute;c yếu tố g&acirc;y biến động thị trường</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">6. Đ&aacute;nh gi&aacute; tiềm năng ph&aacute;t triển của một đồng coin đ&uacute;ng đắn</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">7. Thủ thuật nhận diện &ldquo;c&aacute; mập&rdquo; v&agrave; bơi theo d&ograve;ng tiền</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">8. Ph&acirc;n t&iacute;ch kỹ thuật chuy&ecirc;n s&acirc;u với ứng dụng bản chất 3 v&agrave; 5 indicator</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">9. Hướng dẫn đầu tư d&agrave;i hạn v&agrave; x&aacute;c định tầm nh&igrave;n li&ecirc;n thị trường</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">10. Gợi &yacute; c&aacute;c chiến thuật giải ng&acirc;n hoặc chiến lược đầu tư đ&uacute;ng đắn d&agrave;nh cho từng học vi&ecirc;n cụ thể</span></strong></span></span></span></h3>\r\n\r\n<h2 style=\"margin-left:0in; margin-right:0in; text-align:center\"><span style=\"font-size:16px\"><strong><strong>Lợi &iacute;ch d&agrave;nh cho học vi&ecirc;n của Kh&oacute;a học Trade Thực chiến N&acirc;ng cao:</strong></strong></span></h2>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Được tiếp cận hệ thống đầu tư với hiệu quả lợi nhuận tối ưu trong thị trường từ giảng vi&ecirc;n (trader chuy&ecirc;n nghiệp)</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Được hỗ trợ tạo lập chiến lược hồi phục c&aacute;c khoản đầu tư thua lỗ v&agrave; chia sẻ kinh nghiệm qu&yacute; b&aacute;u</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Được nắm bắt phương thức lựa chọn coin đ&aacute;ng đầu tư</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Được cung cấp t&agrave;i liệu học tập</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Tự tin hơn trong thị trường tiền điện tử</span></strong></span></span></span></h3>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:12pt\"><span style=\"font-family:Calibri\"><span style=\"color:#4f81bd\"><strong><span style=\"font-size:10.5pt\">+ Biết c&aacute;ch tiết kiệm v&agrave; lập kế hoạch l&agrave;m gi&agrave;u bền vững</span></strong></span></span></span></h3>\r\n', 'GAU_8064 (1).jpg', 1550900608),
(9, 'Khoá học Chuyên sâu', '15042019', 'Việt Nam', '2018-01-01', 0, '<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b7b7b\">- Laptop/Tablet để thực h&agrave;nh vẽ biểu đồ gi&aacute;, nắm bắt xu hướng dễ d&agrave;ng</span></span></p>\r\n\r\n<p style=\"margin-left:0in; margin-right:0in\"><span style=\"font-size:10.5pt\"><span style=\"color:#7b7b7b\">- Giấy, b&uacute;t để ghi ch&eacute;p</span></span></p>\r\n\r\n<p><span style=\"font-size:10.5pt\"><span style=\"color:#7b7b7b\">- Sắp xếp thời gian c&oacute; mặt đ&uacute;ng giờ (c&oacute; thể tới sớm hơn để giao lưu c&ugrave;ng cộng đồng)</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n', '<p><strong>Kho&aacute; học chuy&ecirc;n s&acirc;u c&oacute; nhiều cấp độ để người học c&oacute; thể tiếp thu v&agrave; c&oacute; nền tảng kiến thức tốt</strong></p>\r\n\r\n<p>Chương tr&igrave;nh đ&agrave;o tạo gi&uacute;p học vi&ecirc;n nhận thấy cơ hội đầu tư từ&nbsp;c&aacute;c thị trường&nbsp;th&ocirc;ng qua ph&acirc;n t&iacute;ch. Hoc bộ quy tắc trong 4 buổi học v&agrave; theo k&egrave;m giao dịch trong tuần. Học xong kh&ocirc;ng nhận thấy gi&aacute; trị&nbsp;=&gt;&nbsp;ho&agrave;n lại tiền 100%.<br />\r\nTheo k&egrave;m nỗi sợ t&acirc;m l&yacute; sau khi học xong:&nbsp;Trong 1 th&aacute;ng theo k&egrave;m tư duy để chủ động được lệnh giao dịch v&agrave;&nbsp;kh&ocirc;ng hạn chế t&acirc;m l&yacute;&nbsp;&quot;ham gi&agrave;u&quot; dẫn đến rủi ro ch&aacute;y t&agrave;i khoản =&gt;&nbsp;<strong>Tự động ho&agrave;n 100% học ph&iacute;.&nbsp;</strong></p>\r\n', '<p><iframe frameborder=\"0\" height=\"315\" src=\"https://www.youtube.com/embed/AD-8VB-MFj8\" width=\"560\"></iframe></p>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:700px\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:14px\"><strong><strong>Nội dung Kh&oacute;a học Trade Thực chiến N&acirc;ng cao:</strong></strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:14px\"><strong><strong>Lợi &iacute;ch d&agrave;nh cho học vi&ecirc;n của Kh&oacute;a học Trade Thực chiến N&acirc;ng cao:</strong></strong></span></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><span style=\"font-size:12px\"><strong>1. Vẽ thuần thục biểu đồ gi&aacute; với c&aacute;c đường trendline, chanel</strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>2. Nắm bắt xu hướng tăng giảm của gi&aacute; nhằm x&aacute;c định đầu tư ngắn hạn &ndash; trung hạn &ndash; d&agrave;i hạn</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>3. Hiểu biết về đường MA, BB, RSI</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>4. Price action</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>5. Ph&acirc;n t&iacute;ch volume v&agrave; c&aacute;c yếu tố g&acirc;y biến động thị trường</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>6. Đ&aacute;nh gi&aacute; tiềm năng ph&aacute;t triển của một đồng coin đ&uacute;ng đắn</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>7. Thủ thuật nhận diện &ldquo;c&aacute; mập&rdquo; v&agrave; bơi theo d&ograve;ng tiền</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>8. Ph&acirc;n t&iacute;ch kỹ thuật chuy&ecirc;n s&acirc;u với ứng dụng bản chất 3 v&agrave; 5 indicator</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>9. Hướng dẫn đầu tư d&agrave;i hạn v&agrave; x&aacute;c định tầm nh&igrave;n li&ecirc;n thị trường</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>10. Gợi &yacute; c&aacute;c chiến thuật giải ng&acirc;n hoặc chiến lược đầu tư đ&uacute;ng đắn d&agrave;nh cho từng học vi&ecirc;n cụ thể</strong></strong></span></p>\r\n			</td>\r\n			<td>\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Được tiếp cận hệ thống đầu tư với hiệu quả lợi nhuận tối ưu trong thị trường từ giảng vi&ecirc;n (trader chuy&ecirc;n nghiệp)</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Được hỗ trợ tạo lập chiến lược hồi phục c&aacute;c khoản đầu tư thua lỗ v&agrave; chia sẻ kinh nghiệm qu&yacute; b&aacute;u</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Được nắm bắt phương thức lựa chọn coin đ&aacute;ng đầu tư</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Được cung cấp t&agrave;i liệu học tập</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Tự tin hơn trong thị trường tiền điện tử</strong></strong></span></p>\r\n\r\n			<p><span style=\"font-size:12px\"><strong><strong>+ Biết c&aacute;ch tiết kiệm v&agrave; lập kế hoạch l&agrave;m gi&agrave;u bền vững</strong></strong></span></p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<h3 style=\"margin-left:0in; margin-right:0in\">&nbsp;</h3>\r\n', 'gv-04.jpg', 1550917347);

-- --------------------------------------------------------

--
-- Table structure for table `technical_bulletin_file`
--

CREATE TABLE `technical_bulletin_file` (
  `id` int(11) NOT NULL,
  `name` varchar(600) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technical_bulletin_file`
--

INSERT INTO `technical_bulletin_file` (`id`, `name`) VALUES
(1, 'tuan.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_password` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `state` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_address`, `user_password`, `created_date`, `state`) VALUES
(1, 'mystery078', 'tung92.ns@gmail.com', '01658824321', '', '$2y$10$zjlyFYq6vJ6TXeQVsOh/1esNuHFTf23SE62fvXVvyUAYvzxyCNzv6', '2017-03-12 02:03:39', 1),
(2, 'manh', 'manh@gmail.com', '0123434', '', '$2y$10$8JKJKBN1HlCxSIR6nv39pedRpujNWEOOQ9ePRT07j4x2F4blrAfA2', '2017-03-23 15:03:28', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_online`
--

CREATE TABLE `user_online` (
  `id` bigint(20) NOT NULL,
  `ip` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tg` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_online`
--

INSERT INTO `user_online` (`id`, `ip`, `tg`) VALUES
(24291, '198.235.24.30', 1663328111);

-- --------------------------------------------------------

--
-- Table structure for table `user_online1`
--

CREATE TABLE `user_online1` (
  `tgtmp` int(15) NOT NULL DEFAULT 0,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `local` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(1000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `content`, `image`) VALUES
(2, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BtulL3oArQw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'bìa vtrader.png'),
(3, '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/BtulL3oArQw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'vtrader Ảnh bìa nữ.png');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `wishlist_created_date` datetime DEFAULT NULL,
  `product_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `admin_role` (`admin_role`),
  ADD KEY `admin_state` (`admin_state`);

--
-- Indexes for table `admin_role`
--
ALTER TABLE `admin_role`
  ADD PRIMARY KEY (`admin_role_id`);

--
-- Indexes for table `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bang_khoa_hoc`
--
ALTER TABLE `bang_khoa_hoc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cad_file`
--
ALTER TABLE `cad_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calculators_file`
--
ALTER TABLE `calculators_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cam_nhan`
--
ALTER TABLE `cam_nhan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD PRIMARY KEY (`id_cartDetail`),
  ADD KEY `id_cart` (`id_cart`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`config_id`);

--
-- Indexes for table `config_languages`
--
ALTER TABLE `config_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `config_id` (`config_id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD UNIQUE KEY `currency_code` (`currency_code`);

--
-- Indexes for table `dang_ky_ngay`
--
ALTER TABLE `dang_ky_ngay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dang_ky_online`
--
ALTER TABLE `dang_ky_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datasheets_file`
--
ALTER TABLE `datasheets_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dat_mua`
--
ALTER TABLE `dat_mua`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `declaration_file`
--
ALTER TABLE `declaration_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hour`
--
ALTER TABLE `hour`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installation_file`
--
ALTER TABLE `installation_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`);

--
-- Indexes for table `lien_he`
--
ALTER TABLE `lien_he`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `menu_type_id` (`menu_type_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `state` (`state`),
  ADD KEY `menu_parent` (`menu_parent`),
  ADD KEY `productcat_id` (`productcat_id`),
  ADD KEY `newscat_id` (`newscat_id`);

--
-- Indexes for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `menu_type`
--
ALTER TABLE `menu_type`
  ADD PRIMARY KEY (`menu_type_id`);

--
-- Indexes for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_menu_type` (`menu_type_id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `newscat`
--
ALTER TABLE `newscat`
  ADD PRIMARY KEY (`newscat_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `newscat_id` (`newscat_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `news_languages`
--
ALTER TABLE `news_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `news_id` (`news_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhan_tai_lieu_1`
--
ALTER TABLE `nhan_tai_lieu_1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_ngay`
--
ALTER TABLE `online_ngay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_total`
--
ALTER TABLE `online_total`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operating_file`
--
ALTER TABLE `operating_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  ADD PRIMARY KEY (`optionsQ1_id`);

--
-- Indexes for table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  ADD PRIMARY KEY (`optionsQ2_id`);

--
-- Indexes for table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  ADD PRIMARY KEY (`optionsQ3_id`);

--
-- Indexes for table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  ADD PRIMARY KEY (`optionsQ4_id`);

--
-- Indexes for table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  ADD PRIMARY KEY (`optionsQ5_id`);

--
-- Indexes for table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  ADD PRIMARY KEY (`optionsQ6_id`);

--
-- Indexes for table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  ADD PRIMARY KEY (`optionsQ7_id`);

--
-- Indexes for table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  ADD PRIMARY KEY (`optionsQ8_id`);

--
-- Indexes for table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  ADD PRIMARY KEY (`optionsQ9_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `users_id` (`users_id`),
  ADD KEY `orders_state` (`orders_state`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `currency_id` (`currency_id`);

--
-- Indexes for table `order_state`
--
ALTER TABLE `order_state`
  ADD PRIMARY KEY (`order_state_id`),
  ADD KEY `state` (`state`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`page_id`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `page_languages`
--
ALTER TABLE `page_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`),
  ADD KEY `languages_id` (`languages_code`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `product_hot` (`product_hot`),
  ADD KEY `state` (`state`),
  ADD KEY `product_sale` (`product_sale`),
  ADD KEY `product_new` (`product_new`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `productcat`
--
ALTER TABLE `productcat`
  ADD PRIMARY KEY (`productcat_id`),
  ADD KEY `productcat_sort_order` (`productcat_sort_order`),
  ADD KEY `productcat_parent` (`productcat_parent`),
  ADD KEY `created_id` (`created_id`);

--
-- Indexes for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat_id` (`productcat_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_languages`
--
ALTER TABLE `product_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `edit_state` (`edit_state`);

--
-- Indexes for table `product_producer`
--
ALTER TABLE `product_producer`
  ADD PRIMARY KEY (`producer_id`);

--
-- Indexes for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer_id` (`producer_id`);

--
-- Indexes for table `pro_color`
--
ALTER TABLE `pro_color`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `regInfor`
--
ALTER TABLE `regInfor`
  ADD PRIMARY KEY (`regInfor_id`);

--
-- Indexes for table `regMember`
--
ALTER TABLE `regMember`
  ADD PRIMARY KEY (`regMember_id`);

--
-- Indexes for table `sale`
--
ALTER TABLE `sale`
  ADD PRIMARY KEY (`sale_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `servicecat`
--
ALTER TABLE `servicecat`
  ADD PRIMARY KEY (`servicecat_id`);

--
-- Indexes for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicecat` (`servicecat_id`);

--
-- Indexes for table `service_languages`
--
ALTER TABLE `service_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_service` (`service_id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`size_id`),
  ADD KEY `color_id` (`color_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_online`
--
ALTER TABLE `user_online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_online1`
--
ALTER TABLE `user_online1`
  ADD PRIMARY KEY (`tgtmp`),
  ADD KEY `ip` (`ip`),
  ADD KEY `local` (`local`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin_role`
--
ALTER TABLE `admin_role`
  MODIFY `admin_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bang_gia_1`
--
ALTER TABLE `bang_gia_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `bang_gia_2`
--
ALTER TABLE `bang_gia_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `bang_khoa_hoc`
--
ALTER TABLE `bang_khoa_hoc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cad_file`
--
ALTER TABLE `cad_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calculators_file`
--
ALTER TABLE `calculators_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cam_nhan`
--
ALTER TABLE `cam_nhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id_cart` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `cartdetail`
--
ALTER TABLE `cartdetail`
  MODIFY `id_cartDetail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `color_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `config_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `config_languages`
--
ALTER TABLE `config_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dang_ky_ngay`
--
ALTER TABLE `dang_ky_ngay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dang_ky_online`
--
ALTER TABLE `dang_ky_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `datasheets_file`
--
ALTER TABLE `datasheets_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dat_mua`
--
ALTER TABLE `dat_mua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `declaration_file`
--
ALTER TABLE `declaration_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hour`
--
ALTER TABLE `hour`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `installation_file`
--
ALTER TABLE `installation_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `lien_he`
--
ALTER TABLE `lien_he`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `listings_certifications_file`
--
ALTER TABLE `listings_certifications_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;

--
-- AUTO_INCREMENT for table `menu_languages`
--
ALTER TABLE `menu_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=531;

--
-- AUTO_INCREMENT for table `menu_type`
--
ALTER TABLE `menu_type`
  MODIFY `menu_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1980;

--
-- AUTO_INCREMENT for table `newscat`
--
ALTER TABLE `newscat`
  MODIFY `newscat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `news_languages`
--
ALTER TABLE `news_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3959;

--
-- AUTO_INCREMENT for table `nhan_ban_tin`
--
ALTER TABLE `nhan_ban_tin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nhan_tai_lieu`
--
ALTER TABLE `nhan_tai_lieu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhan_tai_lieu_1`
--
ALTER TABLE `nhan_tai_lieu_1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1068;

--
-- AUTO_INCREMENT for table `obsolete_products_file`
--
ALTER TABLE `obsolete_products_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `online_ngay`
--
ALTER TABLE `online_ngay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `online_total`
--
ALTER TABLE `online_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `operating_file`
--
ALTER TABLE `operating_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `optionsQ1`
--
ALTER TABLE `optionsQ1`
  MODIFY `optionsQ1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `optionsQ2`
--
ALTER TABLE `optionsQ2`
  MODIFY `optionsQ2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `optionsQ3`
--
ALTER TABLE `optionsQ3`
  MODIFY `optionsQ3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `optionsQ4`
--
ALTER TABLE `optionsQ4`
  MODIFY `optionsQ4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `optionsQ5`
--
ALTER TABLE `optionsQ5`
  MODIFY `optionsQ5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `optionsQ6`
--
ALTER TABLE `optionsQ6`
  MODIFY `optionsQ6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `optionsQ7`
--
ALTER TABLE `optionsQ7`
  MODIFY `optionsQ7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `optionsQ8`
--
ALTER TABLE `optionsQ8`
  MODIFY `optionsQ8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `optionsQ9`
--
ALTER TABLE `optionsQ9`
  MODIFY `optionsQ9_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_state`
--
ALTER TABLE `order_state`
  MODIFY `order_state_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `page_languages`
--
ALTER TABLE `page_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `productcat`
--
ALTER TABLE `productcat`
  MODIFY `productcat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `product_catalogs_file`
--
ALTER TABLE `product_catalogs_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_languages`
--
ALTER TABLE `product_languages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `product_producer`
--
ALTER TABLE `product_producer`
  MODIFY `producer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `pro_color`
--
ALTER TABLE `pro_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regInfor`
--
ALTER TABLE `regInfor`
  MODIFY `regInfor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `regMember`
--
ALTER TABLE `regMember`
  MODIFY `regMember_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sale`
--
ALTER TABLE `sale`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `servicecat`
--
ALTER TABLE `servicecat`
  MODIFY `servicecat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_languages`
--
ALTER TABLE `service_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `size_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `technical_bulletin_file`
--
ALTER TABLE `technical_bulletin_file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_online`
--
ALTER TABLE `user_online`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24292;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cartdetail`
--
ALTER TABLE `cartdetail`
  ADD CONSTRAINT `cartdetail_ibfk_1` FOREIGN KEY (`id_cart`) REFERENCES `cart` (`id_cart`) ON DELETE CASCADE;

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_languages`
--
ALTER TABLE `menu_languages`
  ADD CONSTRAINT `menu_languages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_type_languages`
--
ALTER TABLE `menu_type_languages`
  ADD CONSTRAINT `menu_type_languages_ibfk_1` FOREIGN KEY (`menu_type_id`) REFERENCES `menu_type` (`menu_type_id`) ON DELETE CASCADE;

--
-- Constraints for table `newscat_languages`
--
ALTER TABLE `newscat_languages`
  ADD CONSTRAINT `newscat_languages_ibfk_1` FOREIGN KEY (`newscat_id`) REFERENCES `newscat` (`newscat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `news_languages`
--
ALTER TABLE `news_languages`
  ADD CONSTRAINT `news_languages_ibfk_1` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `order_detail_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `page_languages`
--
ALTER TABLE `page_languages`
  ADD CONSTRAINT `page_languages_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `page` (`page_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `productcat_languages`
--
ALTER TABLE `productcat_languages`
  ADD CONSTRAINT `productcat_languages_ibfk_1` FOREIGN KEY (`productcat_id`) REFERENCES `productcat` (`productcat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_languages`
--
ALTER TABLE `product_languages`
  ADD CONSTRAINT `product_languages_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_producer_languages`
--
ALTER TABLE `product_producer_languages`
  ADD CONSTRAINT `product_producer_languages_ibfk_1` FOREIGN KEY (`producer_id`) REFERENCES `product_producer` (`producer_id`) ON DELETE CASCADE;

--
-- Constraints for table `pro_color`
--
ALTER TABLE `pro_color`
  ADD CONSTRAINT `pro_color_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `product` (`product_id`) ON DELETE CASCADE;

--
-- Constraints for table `servicecat_languages`
--
ALTER TABLE `servicecat_languages`
  ADD CONSTRAINT `servicecat_languages_ibfk_1` FOREIGN KEY (`servicecat_id`) REFERENCES `servicecat` (`servicecat_id`) ON DELETE CASCADE;

--
-- Constraints for table `service_languages`
--
ALTER TABLE `service_languages`
  ADD CONSTRAINT `service_languages_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `service` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
