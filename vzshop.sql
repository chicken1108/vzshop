-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 29, 2020 at 11:33 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vzshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_14_083526_create_table_banner', 1),
(3, '2019_08_14_083641_create_table_category', 1),
(4, '2019_08_14_083731_create_table_order', 2),
(5, '2019_08_14_083820_create_table_page', 3),
(6, '2019_08_14_083835_create_table_post', 3),
(7, '2019_08_14_083901_create_table_product', 3),
(8, '2019_08_14_083708_create_table_comment', 4),
(9, '2019_08_14_083757_create_table_order_detail', 5),
(10, '2019_10_31_220548_create_table_email', 6),
(11, '2019_10_31_220933_create_table_emails', 7),
(12, '2019_11_02_154722_create_table_trend', 8),
(13, '2019_11_02_161250_create_table_trend', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_banner`
--

CREATE TABLE `tbl_banner` (
  `ban_id` bigint(20) UNSIGNED NOT NULL,
  `ban_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ban_active` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_banner`
--

INSERT INTO `tbl_banner` (`ban_id`, `ban_title`, `ban_image`, `ban_active`, `created_at`, `updated_at`) VALUES
(1, 'Banner_1', 'XWvJW_01_Preview5.jpg', 1, '2019-08-19 03:29:56', '2019-08-19 13:41:35'),
(2, 'Banner_2', 'slideshow_2.jpg', 0, '2019-08-19 03:31:18', '2019-08-19 03:31:18'),
(3, 'Banner_3', 'slideshow_3.jpg', 0, '2019-08-19 03:31:34', '2019-08-19 03:31:34'),
(4, 'Banner_4', 'sl3.jpg', 0, '2019-08-19 03:31:44', '2019-08-19 03:31:44');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cate_id` bigint(20) UNSIGNED NOT NULL,
  `cate_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cate_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cate_id`, `cate_title`, `cate_slug`, `cate_content`, `created_at`, `updated_at`) VALUES
(1, 'Áo thu đông', 'ao-thu-dong', 'Áo thu đông', '2019-08-14 08:55:22', '2019-08-14 09:45:28'),
(2, 'Thời trang công sở', 'thoi-trang-cong-so', 'Thời trang công sở', '2019-08-14 09:00:35', '2019-08-14 09:00:35'),
(3, 'Thời trang hè', 'thoi-trang-he', 'Thời trang hè', '2019-08-14 09:00:57', '2019-08-14 09:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `com_id` bigint(20) UNSIGNED NOT NULL,
  `com_iduser` bigint(20) NOT NULL,
  `com_product` bigint(20) UNSIGNED NOT NULL,
  `com_content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`com_id`, `com_iduser`, `com_product`, `com_content`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 'a', '2019-11-01 14:51:27', '2019-11-01 14:51:27'),
(2, 1, 27, 'ad', '2019-11-01 14:51:35', '2019-11-01 14:51:35'),
(3, 1, 27, 'hihi', '2019-11-01 15:19:48', '2019-11-01 15:19:48'),
(4, 1, 27, 'haha', '2019-11-01 15:42:48', '2019-11-01 15:42:48'),
(5, 1, 27, 'hoho', '2019-11-01 15:46:40', '2019-11-01 15:46:40'),
(6, 1, 27, 'hello', '2019-11-01 15:47:38', '2019-11-01 15:47:38'),
(7, 1, 27, 'kaka', '2019-11-01 15:48:53', '2019-11-01 15:48:53'),
(8, 1, 27, 'xin chào !', '2019-11-01 15:50:09', '2019-11-01 15:50:09'),
(9, 1, 27, 'abc', '2019-11-01 15:51:11', '2019-11-01 15:51:11'),
(10, 1, 27, 'hihi', '2019-11-01 15:51:24', '2019-11-01 15:51:24'),
(11, 1, 27, 'haha', '2019-11-01 15:55:39', '2019-11-01 15:55:39'),
(12, 1, 27, 'gigi', '2019-11-01 15:56:13', '2019-11-01 15:56:13'),
(13, 1, 27, 'kaka', '2019-11-01 15:57:33', '2019-11-01 15:57:33'),
(14, 1, 26, 'haha', '2019-11-01 16:00:06', '2019-11-01 16:00:06'),
(15, 2, 28, 'áo đẹp quá !', '2019-11-02 07:35:41', '2019-11-02 07:35:41'),
(16, 2, 28, 'haha', '2019-11-02 07:36:42', '2019-11-02 07:36:42'),
(17, 2, 28, 'hihi', '2019-11-02 07:37:28', '2019-11-02 07:37:28'),
(18, 2, 28, 'kaka', '2019-11-02 07:37:34', '2019-11-02 07:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email`
--

CREATE TABLE `tbl_email` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_email`
--

INSERT INTO `tbl_email` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '2019-10-31 15:45:41', '2019-10-31 15:45:41'),
(2, 'nguyenkhai321ls@gmail.com', '2019-10-31 15:46:49', '2019-10-31 15:46:49'),
(4, 'abc@gmail.com', '2019-10-31 15:47:33', '2019-10-31 15:47:33'),
(5, 'abcd@gmail.com', '2019-10-31 15:47:44', '2019-10-31 15:47:44'),
(9, 'nbk7545@gmail.com', '2019-10-31 15:54:44', '2019-10-31 15:54:44'),
(10, 'kahi@gmail.com', '2019-10-31 15:55:14', '2019-10-31 15:55:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `ord_id` bigint(20) UNSIGNED NOT NULL,
  `ord_userid` bigint(20) UNSIGNED NOT NULL,
  `ord_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_total_price` bigint(20) NOT NULL,
  `ord_note` text COLLATE utf8mb4_unicode_ci,
  `ord_condition` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ord_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`ord_id`, `ord_userid`, `ord_name`, `ord_email`, `ord_phone`, `ord_address`, `ord_total_price`, `ord_note`, `ord_condition`, `ord_status`, `created_at`, `updated_at`) VALUES
(1, 4, 'Nguyễn Khải', 'vzshop08@gmail.com', '099999999', '54 Triều Khúc - Thanh Xuân - Hà Nội', 1200000, NULL, 'Thanh toán tại nhà', 'Chờ duyệt', '2019-11-16 08:22:54', '2019-11-16 08:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_detail`
--

CREATE TABLE `tbl_order_detail` (
  `ordt_id` bigint(20) UNSIGNED NOT NULL,
  `ordt_order_id` bigint(20) UNSIGNED NOT NULL,
  `ordt_product_id` bigint(20) UNSIGNED NOT NULL,
  `ordt_numbers` int(11) NOT NULL,
  `ordt_price` int(11) NOT NULL,
  `ordt_total_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_detail`
--

INSERT INTO `tbl_order_detail` (`ordt_id`, `ordt_order_id`, `ordt_product_id`, `ordt_numbers`, `ordt_price`, `ordt_total_price`, `created_at`, `updated_at`) VALUES
(1, 1, 27, 1, 1200000, 1200000, '2019-11-16 08:22:55', '2019-11-16 08:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `post_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_id`, `post_title`, `post_slug`, `post_content`, `post_image`, `post_description`, `created_at`, `updated_at`) VALUES
(1, 'Thanh toán', 'thanh-toan', '<h1>QUY ĐỊNH V&Agrave; H&Igrave;NH THỨC THANH TO&Aacute;N&nbsp;(Thứ Tư;, 19/11/2014, 17:08)</h1>\r\n\r\n<p>HƯỚNG DẪN THỰC HIỆN MUA H&Agrave;NG ONLINE</p>\r\n\r\n<p>H&agrave; Nội, ng&agrave;y 10 th&aacute;ng 03 năm 2017</p>\r\n\r\n<p><strong>I. H&igrave;nh thức giao h&agrave;ng&nbsp;</strong><br />\r\n- Miễn ph&iacute; CPN với những h&oacute;a đơn:<br />\r\n+ H&agrave;ng nguy&ecirc;n gi&aacute; từ 1 triệu đồng<br />\r\n+ H&agrave;ng sale 30% từ 2 triệu đồng<br />\r\n+ H&agrave;ng sale 50% từ 3 triệu đồng&nbsp;<br />\r\n- Kh&aacute;ch h&agrave;ng nội th&agrave;nh : Pantio sẽ giao h&agrave;ng v&agrave; nhận tiền trực tiếp từ kh&aacute;ch h&agrave;ng<br />\r\n- Kh&aacute;ch h&agrave;ng tỉnh: Chuyển khoản trước 100% tiền h&agrave;ng sau đ&oacute; Pantio sẽ gửi h&agrave;ng theo địa chỉ kh&aacute;ch h&agrave;ng cung cấp<br />\r\n- Được đổi h&agrave;ng trong trường hợp lỗi sản phẩm, gửi nhầm size, nhầm m&agrave;u, trong 3-5 ng&agrave;y t&iacute;nh từ ng&agrave;y nhận h&agrave;ng<br />\r\n- H&agrave;ng sale shock, h&agrave;ng đồng gi&aacute; kh&ocirc;ng nhận đổi trả<br />\r\n- Hỗ trợ sửa đồ miễn ph&iacute; cho kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p><strong>II. C&aacute;ch thức mua h&agrave;ng</strong><br />\r\nBước 1: Chọn h&agrave;ng<br />\r\nBạn c&oacute; thể xem th&ocirc;ng tin sản phẩm tr&ecirc;n website,&nbsp;<br />\r\nhoặc địa chỉ FaceBook: https://www.facebook.com/pantio.vn<br />\r\nBước 2: Đặt h&agrave;ng&nbsp;<br />\r\n- Đặt h&agrave;ng tr&ecirc;n website<br />\r\n+ Truy cập v&agrave;o website: www.pantio.vn</p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>&nbsp;<em>Bước 1: Truy cập v&agrave;o</em>&nbsp;website:&nbsp;</strong><a href=\"http://www.pantio.vn/\"><strong><em>www.pantio.vn</em></strong></a></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://pantio.vn/media/fck/B1.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong><em>Bước 2: Chọn sản phẩm v&agrave; th&ecirc;m v&agrave;o giỏ h&agrave;ng</em></strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://pantio.vn/media/fck/B2.jpg\" /></p>\r\n\r\n<p>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Bước 3: X&aacute;c nhận đơn h&agrave;ng v&agrave; thanh to&aacute;n</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em><img alt=\"\" src=\"http://pantio.vn/media/fck/B3.jpg\" /></em></strong></p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"http://pantio.vn/media/fck/thanh%20toan.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><em>Bước 4: X&aacute;c nhận lại đơn h&agrave;ng qua Email</em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;<strong><em><img alt=\"\" src=\"http://pantio.vn/media/fck/B5.jpg\" /></em></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Qu&yacute; kh&aacute;ch h&agrave;ng vui l&ograve;ng chờ x&aacute;c nhận từ nh&acirc;n vi&ecirc;n Pantio hoặc li&ecirc;n hệ Số điện thoại: 04.385.31476/ 096.301.4949/0981.955.541/0968.339.958 để đặt h&agrave;ng.</p>\r\n\r\n<p><strong>- Đặt h&agrave;ng tr&ecirc;n Facebook</strong><br />\r\nBước 1:&nbsp;Truy cập v&agrave;o https://www.facebook.com/pantio.vn</p>\r\n\r\n<p>Comment hoặc inbox tr&ecirc;n fanpage đặt h&agrave;ng</p>\r\n\r\n<p>- Đặt h&agrave;ng tr&ecirc;n viber,zalo, điện thoại<br />\r\n+ Số điện thoại: 04 385 31476 - 096 301 4949 - 0968.339.958<br />\r\n+ Zalo, viber: 0963 01 4949 - 0968 339 958</p>\r\n\r\n<p>* Tất cả c&aacute;c h&igrave;nh thức đặt h&agrave;ng với Pantio đều phải c&oacute; x&aacute;c nhận lại từ nh&acirc;n vi&ecirc;n c&ocirc;ng ty, kh&aacute;ch h&agrave;ng kh&ocirc;ng tự chuyển tiền khi chưa c&oacute; x&aacute;c nhận</p>\r\n\r\n<p><br />\r\n<strong>Bước 3: Thanh to&aacute;n tiền</strong><br />\r\nBạn c&oacute; thể chuyển tiền v&agrave;o t&agrave;i khoản sau của Pantio:</p>\r\n\r\n<p>Sau khi kh&aacute;ch đặt h&agrave;ng, bộ phận CSKH của Pantio sẽ li&ecirc;n hệ lại để chốt đơn h&agrave;ng v&agrave; th&ocirc;ng b&aacute;o tổng số tiền để kh&aacute;ch h&agrave;ng chuyển khoản ( gồm đơn gi&aacute; sản phẩm + ph&iacute; vận chuyển ).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>T&agrave;i Khoản: Ng&acirc;n h&agrave;ng Ngoại Thương Việt Nam (<strong>&nbsp;Vietcombank</strong>&nbsp;)</strong></p>\r\n\r\n<p>T&ecirc;n TK:&nbsp;C&ocirc;ng ty TNHH Thời trang H v&agrave; A</p>\r\n\r\n<p>Số TK:&nbsp;<em>0021.000.421.168</em></p>\r\n\r\n<p>Chi nh&aacute;nh:&nbsp;<strong>Vietcombank H&agrave; Nội.</strong></p>\r\n\r\n<p><br />\r\n<strong>Bước 4: Nhận h&agrave;ng</strong><br />\r\nSau 12h &ndash; 72h kể từ khi ho&agrave;n tất thanh to&aacute;n v&agrave; TK của c&ocirc;ng ty b&aacute;o tiền đ&atilde; được chuyển, bạn sẽ nhận được h&agrave;ng từ dịch vụ chuyển ph&aacute;t nhanh. Nếu bạn mặc kh&ocirc;ng vừa size, vui l&ograve;ng li&ecirc;n lạc lại ngay với nh&acirc;n vi&ecirc;n chăm s&oacute;c để đăng k&lrm;&yacute; đổi size. Trường hợp n&agrave;y, bạn vui l&ograve;ng thanh to&aacute;n ph&iacute; chuyển ph&aacute;t h&agrave;ng h&oacute;a ph&aacute;t sinh.</p>\r\n\r\n<p><strong>IV &ndash; Hỗ trợ sau b&aacute;n h&agrave;ng</strong><br />\r\nNếu bạn cần hỗ trợ về sản phẩm sau khi mua, xin vui l&ograve;ng li&ecirc;n lạc với nh&acirc;n vi&ecirc;n b&aacute;n h&agrave;ng:&nbsp;<br />\r\n<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f9e/1/16/27a1.png\" />➡&nbsp;Hotline: 096 287 7733 - 0968 339 958 - 096 301 4949<br />\r\n<img alt=\"\" src=\"https://static.xx.fbcdn.net/images/emoji.php/v9/f9e/1/16/27a1.png\" />➡&nbsp;Zalo: 096 287 7733 - 0968 339 958 - 096 301 4949&nbsp;<br />\r\n<br />\r\nNh&acirc;n vi&ecirc;n chăm s&oacute;c kh&aacute;ch h&agrave;ng Ms.Ngọc 096.961.5544﻿</p>\r\n\r\n<p>Thời trang PANTIO h&acirc;n hạnh được phục vụ Qu&lrm;&yacute; kh&aacute;ch !</p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 'img-news-01.png', 'Thanh toán', '2019-08-19 14:57:30', '2019-08-20 15:00:24'),
(2, 'Về chúng tôi', 've-chung-toi', '<p><strong><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/1%20resize.jpg\" /></strong>&nbsp;</p>\r\n\r\n<p><strong>TẦM NH&Igrave;N</strong></p>\r\n\r\n<ul>\r\n	<li>Trở th&agrave;nh thương hiệu thời trang nam h&agrave;ng đầu được giới trẻ tin d&ugrave;ng</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>SỨ MỆNH</strong></p>\r\n\r\n<ul>\r\n	<li>Biluxury ra đời để ho&agrave;n th&agrave;nh sứ mệnh đ&aacute;p ứng được cho kh&aacute;ch h&agrave;ng sự h&agrave;i l&ograve;ng&nbsp; về chất lượng sản phẩm,dịch vụ b&aacute;n h&agrave;ng v&agrave; đặc biệt l&agrave; một kh&ocirc;ng gian thời trang được cập nhật xu hướng mới nhất tr&ecirc;n thế giới.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>GI&Aacute; TRỊ CỐT L&Otilde;I</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>H&agrave;ng h&oacute;a đa dạng:&nbsp;Biluxury đem đến những sản phẩm thiết yếu v&agrave; cập nhật xu hướng thời trang - đ&aacute;p ứng tối đa nhu cầu của kh&aacute;ch h&agrave;ng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Gi&aacute; cả đồng h&agrave;nh c&ugrave;ng chất lượng:&nbsp;Gi&aacute; b&aacute;n sản phẩm tại Biluxury lu&ocirc;n được kiểm so&aacute;t để ph&ugrave; hợp, xứng đ&aacute;ng l&agrave; địa điểm mua sắm đ&aacute;ng tin cậy v&agrave; đem lại nhiều gi&aacute; trị cho kh&aacute;ch h&agrave;ng, đồng thời thể hiện vị thế cạnh tranh so với thị trường.</p>\r\n	</li>\r\n	<li>\r\n	<p>Dịch vụ chuy&ecirc;n nghiệp v&agrave; tận t&acirc;m:&nbsp;Biluxury lu&ocirc;n c&oacute; nhiều chương tr&igrave;nh ưu đ&atilde;i v&agrave; dịch vụ hấp dẫn được thiết kế ri&ecirc;ng d&agrave;nh cho kh&aacute;ch h&agrave;ng. Đến với Biluxury, kh&aacute;ch h&agrave;ng sẽ lu&ocirc;n được phục vụ tận t&igrave;nh bởi đội ngũ nh&acirc;n vi&ecirc;n tận t&acirc;m, nhiệt huyết, được trải nghiệm v&agrave; tận hưởng c&aacute;c sản phẩm mới trong kh&ocirc;ng gian hiện đại, sang trọng</p>\r\n\r\n	<p>Hệ thống ph&acirc;n phối rộng khắp:&nbsp;Mạng lưới showroom, đại l&yacute; nhượng quyền trải rộng ngay tại c&aacute;c khu d&acirc;n cư, c&ugrave;ng kh&ocirc;ng gian mua sắm được thiết kế v&agrave; b&agrave;i tr&iacute; khoa học, tiện lợi.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>TRIẾT L&Yacute; KINH DOANH</strong></p>\r\n\r\n<ul>\r\n	<li><strong>Với kh&aacute;ch h&agrave;ng:&nbsp;</strong>BILUXURY lu&ocirc;n quan t&acirc;m đến lợi &iacute;ch của kh&aacute;ch h&agrave;ng v&agrave; kh&ocirc;ng ngừng mở rộng hệ thống ph&acirc;n phối để đ&aacute;p ứng tốt nhất nhu cầu của kh&aacute;ch h&agrave;ng: nhanh nhất, tiện lợi nhất, chất lượng tốt nhất, gi&aacute; rẻ nhất.&nbsp;</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Với đối t&aacute;c:&nbsp;</strong>BILUXURY lu&ocirc;n đưa ra mức chiết khấu tốt nhất v&agrave; ng&agrave;y c&agrave;ng c&oacute; c&aacute;c mức chiết khấu tốt hơn&nbsp; cho đối t&aacute;c của m&igrave;nh, với phương ch&acirc;m hợp t&aacute;c đ&ocirc;i b&ecirc;n c&ugrave;ng c&oacute; lợi, c&ugrave;ng tiến bước đi l&ecirc;n.</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li><strong>Với nh&acirc;n vi&ecirc;n:&nbsp;</strong>BILUXURY lu&ocirc;n quan t&acirc;m tới đời sống vật chất v&agrave; tinh thần l&agrave;m việc cho nh&acirc;n vi&ecirc;n. C&ocirc;ng ty lu&ocirc;n coi con người l&agrave; t&agrave;i sản qu&yacute; gi&aacute; nhất. V&igrave; vậy, yếu tố con người lu&ocirc;n được quan t&acirc;m h&agrave;ng đ&acirc;u. C&ocirc;ng ty tạo điều kiện, tổ chức đ&agrave;o tạo, cử đi đ&agrave;o tạo để ph&aacute;t huy tối đa tiềm năng của từng vị tr&iacute;. X&acirc;y dựng một m&ocirc;i trường l&agrave;m việc tốt nhất để nh&acirc;n vi&ecirc;n ph&aacute;t huy hết năng lực của m&igrave;nh</li>\r\n</ul>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p><strong>VĂN H&Oacute;A BILUXURY</strong></p>\r\n\r\n<p>Biluxury l&agrave; 1 gia đ&igrave;nh đo&agrave;n kết, s&aacute;ng tạo, nỗ lực tạo gi&aacute; trị mới cho kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>CONCEPT SHOWROOM</strong></p>\r\n\r\n<ul>\r\n	<li>Bản mẫu</li>\r\n</ul>\r\n\r\n<p><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/concept%20showroom.jpg\" /></p>\r\n\r\n<ul>\r\n	<li>&nbsp;Bản ho&agrave;n thiện</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"http://biluxury.vn/media/Tin%20tuc/4.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Kh&ocirc;ng gian thời trang sang trọng, hiện đại&nbsp;tại showroom Biluxury</em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện tại, Biluxury đang c&oacute; rất nhiều ưu đ&atilde;i d&agrave;nh cho đại l&yacute; mới mở, vui l&ograve;ng t&igrave;m hiểu th&ecirc;m tại&nbsp;<a href=\"http://localhost:3408/huytuan\">Đ&Acirc;Y</a></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', '1 resize.jpg', 'Hàng hóa đa dạng: Biluxury đem đến những sản phẩm thiết yếu và cập nhật xu hướng thời trang - đáp ứng tối đa nhu cầu của khách hàng.\r\n\r\nGiá cả đồng hành cùng chất lượng: Giá bán sản phẩm tại Biluxury luôn được kiểm soát để phù hợp, xứng đáng là địa điểm mua sắm đáng tin cậy và đem lại nhiều giá trị cho khách hàng, đồng thời thể hiện vị thế cạnh tranh so với thị trường.\r\n\r\nDịch vụ chuyên nghiệp và tận tâm: Biluxury luôn có nhiều chương trình ưu đãi và dịch vụ hấp dẫn được thiết kế riêng dành cho khách hàng. Đến với Biluxury, khách hàng sẽ luôn được phục vụ tận tình bởi đội ngũ nhân viên tận tâm, nhiệt huyết, được trải nghiệm và tận hưởng các sản phẩm mới trong không gian hiện đại, sang trọng\r\n\r\nHệ thống phân phối rộng khắp: Mạng lưới showroom, đại lý nhượng quyền trải rộng ngay tại các khu dân cư, cùng không gian mua sắm được thiết kế và bài trí khoa học, tiện lợi.', '2019-08-19 14:59:13', '2019-08-20 15:00:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `prod_id` bigint(20) UNSIGNED NOT NULL,
  `prod_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_price` int(11) NOT NULL,
  `prod_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_category` bigint(20) UNSIGNED NOT NULL,
  `prod_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_sale` int(11) NOT NULL,
  `prod_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`prod_id`, `prod_name`, `prod_slug`, `prod_code`, `prod_price`, `prod_image`, `prod_category`, `prod_detail`, `prod_sale`, `prod_description`, `created_at`, `updated_at`) VALUES
(4, 'Măng tô dạ cao cấp MT-754', 'mang-to-da-cao-cap-mt-754', 'MT-754', 1890000, '120_1685_19_1.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Ghi x&aacute;m, Xanh đen</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế &aacute;o:</strong>&nbsp;D&aacute;ng &ocirc;m nhẹ eo, cổ bẻ đứng c&aacute;ch điệu giả vest, độ d&agrave;i&nbsp;ngang m&ocirc;ng.</p>\r\n\r\n<p><strong>C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Măng t&ocirc; dạ cao cấp MT-754 kết hợp với &aacute;o sơ mi&nbsp;hay&nbsp;<strong>&aacute;o len</strong>&nbsp;&amp; phối c&ugrave;ng<strong>&nbsp;quần jeans, quần kaki</strong>&nbsp;mix đồ ho&agrave;n hảo.</p>\r\n\r\n<p><strong>Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết &aacute;o Măng t&ocirc; dạ cao cấp MT-754:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_1.jpg\" /></p>\r\n\r\n<p>Chất liệu dạ cao cấp, m&agrave;u sắc trung t&iacute;nh ghi x&aacute;m nhưng mang lại vẻ sang trọng, thanh lịch cho c&aacute;c ch&agrave;ng trai.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_4.jpg\" /></p>\r\n\r\n<p>D&aacute;ng măng t&ocirc; lửng ngang m&ocirc;ng c&aacute;ch điệu giả vest ph&ugrave; hợp với c&aacute;c ch&agrave;ng thư sinh hay c&ocirc;ng sở.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_2.jpg\" /></p>\r\n\r\n<p>Bạn c&oacute; thể phối c&ugrave;ng c&ugrave;ng &aacute;o len cổ lọ m&agrave;u đen, ghi x&aacute;m để vẫn thời trang v&agrave; ấm &aacute;p mỗi khi gi&oacute; lạnh về.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_5.jpg\" /></p>\r\n\r\n<p>Những điểm nhấn huy hiệu, c&uacute;c &aacute;o tinh tế c&agrave;ng khẳng định chất lượng cao cấp của &aacute;o măng t&ocirc; nam n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1685_19_7.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1800000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017 mang lại vẻ sang trọng, thanh lịch và hiện đại.', '2019-08-15 10:00:33', '2019-08-16 15:37:03'),
(5, 'Áo măng tô dạ MT-689', 'ao-mang-to-da-mt-689', 'MT-689', 1890000, '120_1679_6_2.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Ghi x&aacute;m, Xanh đen</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế &aacute;o:</strong>&nbsp;D&aacute;ng &ocirc;m nhẹ eo, cổ bẻ đứng c&aacute;ch điệu giả vest, độ d&agrave;i&nbsp;ngang m&ocirc;ng.</p>\r\n\r\n<p><strong>C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; Măng t&ocirc; dạ cao cấp MT-754 kết hợp với &aacute;o sơ mi&nbsp;hay&nbsp;<strong>&aacute;o len</strong>&nbsp;&amp; phối c&ugrave;ng<strong>&nbsp;quần jeans, quần kaki</strong>&nbsp;mix đồ ho&agrave;n hảo.</p>\r\n\r\n<p><strong>Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết &aacute;o Măng t&ocirc; dạ cao cấp MT-689:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1679_6_1.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1800000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017 mang lại vẻ sang trọng, thanh lịch và hiện đại.', '2019-08-15 10:01:49', '2019-08-16 15:37:41'),
(6, 'Măng tô dạ dáng dài MT-181', 'mang-to-da-dang-dai-mt-181', 'MT-181', 1750000, '120_1645_20_3.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Đen, Ghi x&aacute;m</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế &aacute;o:</strong>&nbsp;D&aacute;ng su&ocirc;ng, c&oacute; mũ k&egrave;m d&acirc;y buộc, t&uacute;i 2 b&ecirc;n rộng, độ d&agrave;i qua m&ocirc;ng d&agrave;nh cho nam từ 1m65 trở l&ecirc;n</p>\r\n\r\n<p><strong>C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Măng t&ocirc; dạ d&aacute;ng d&agrave;i MT181 kết hợp với&nbsp;<strong>&aacute;o sơ mi</strong>&nbsp;hay&nbsp;<strong>&aacute;o len</strong>&nbsp;&amp; phối c&ugrave;ng<strong>&nbsp;quần jeans,&nbsp;quần kaki</strong>&nbsp;để tạo ra nhiều phong c&aacute;ch kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>&nbsp; &nbsp; &nbsp; Bạn n&ecirc;n kết hợp&nbsp;<strong>phụ kiện</strong>&nbsp;như&nbsp;<strong>chiếc khăn</strong>&nbsp;bu&ocirc;ng d&agrave;i hoặc quấn quanh cổ cho ng&agrave;y r&eacute;t đậm, ở b&ecirc;n trong c&oacute; thể l&agrave;&nbsp;<strong>&aacute;o len thu đ&ocirc;ng, &aacute;o sơ mi nam</strong>&nbsp;kết hợp&nbsp;<strong>gi&agrave;y da</strong>&nbsp;để c&oacute; một trang phục văn ph&ograve;ng tuyệt đẹp &amp; manly.</p>\r\n\r\n<p><strong>&nbsp;Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://scontent.fhan3-1.fna.fbcdn.net/v/t34.0-12/23772338_1777107122323978_937787925_n.png?oh=f16f831986b578107a4d334c2ac52b90&amp;oe=5A16B289\" /><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết mẫu &aacute;o măng t&ocirc; dạ d&aacute;ng d&agrave;i MT-181:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1645_20_6.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1600000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ dáng dài có mũ trẻ trung dưới đây là mẫu mới nhất trong xu hướng thời trang nam thu đông 2017.', '2019-08-15 10:03:15', '2019-08-16 15:38:28'),
(7, 'Măng tô dạ nam MT-482', 'mang-to-da-nam-mt-482', 'MT-482', 1250000, '120_1641_11_4.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>&nbsp;M&agrave;u sắc:&nbsp;</strong>Ghi x&aacute;m</p>\r\n\r\n<p><strong>&nbsp;Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>&nbsp;Thiết kế &aacute;o:</strong>&nbsp;D&aacute;ng c&aacute;ch điệu giả vest, cổ đứng kh&ocirc;ng bẻ, t&uacute;i vu&ocirc;ng ẩn 2 b&ecirc;n, 2 c&uacute;c c&agrave;i, d&aacute;ng lửng ngang m&ocirc;ng.</p>\r\n\r\n<p><strong>&nbsp;C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Măng t&ocirc; dạ&nbsp;nam&nbsp;MT-482 kết hợp với&nbsp;<strong>&aacute;o sơ mi</strong>&nbsp;hay&nbsp;<strong>&aacute;o len&nbsp;</strong>cổ lọ&nbsp;&amp; phối c&ugrave;ng<strong>&nbsp;quần kaki</strong>&nbsp;mang đậm n&eacute;t thời trang c&ocirc;ng sở.&nbsp;</p>\r\n\r\n<p><strong>&nbsp;Bảng size tham khảo:</strong></p>\r\n\r\n<p>&nbsp;<img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết mẫu &aacute;o măng t&ocirc; dạ nam MT-482:&nbsp;</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_4.jpg\" /></p>\r\n\r\n<p>Thiết kế c&aacute;ch điệu vest, d&aacute;ng lửng ngang m&ocirc;ng, m&agrave;u ghi x&aacute;m nhẹ nh&agrave;ng gi&uacute;p ch&agrave;ng trai c&ocirc;ng sở th&ecirc;m lịch thiệp, sang trọng m&agrave; vẫn trẻ trung.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_2.jpg\" /></p>\r\n\r\n<p>Chất vải dạ cao cấp c&ugrave;ng đường n&eacute;t nhấn c&uacute;c tinh tế khẳng định chất lượng cao cấp của mẫu &aacute;o măng t&ocirc; dạ n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1641_11_3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1000000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ nam MT-482 là một trong những mẫu áo nam mới nhất trong bộ sưu tập thời trang thu đông này.', '2019-08-15 10:12:44', '2019-08-16 15:38:50'),
(8, 'Măng tô dạ lót lông MT-279', 'mang-to-da-lot-long-mt-279', 'MT-279', 1250000, '120_1627_1.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Vải dạ bền, l&oacute;t l&ocirc;ng, giữ ấm tốt, dễ phối đồ</p>\r\n\r\n<p><strong>M&agrave;u sắc:</strong>&nbsp;Đen, Xanh, V&agrave;ng n&acirc;u</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế &aacute;o:</strong>&nbsp;d&aacute;ng ngắn, cổ bẻ&nbsp;giả&nbsp;vest, 3 c&uacute;c c&agrave;i c&aacute;ch điệu</p>\r\n\r\n<p><strong>C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;<strong>Măng t&ocirc; dạ l&oacute;t l&ocirc;ng MT-279</strong>&nbsp;kết hợp với&nbsp;<strong>&aacute;o len</strong>&nbsp;trắng ch&iacute;nh l&agrave; sự lựa chọn ho&agrave;n hảo gi&uacute;p c&aacute;c anh ch&agrave;ng c&oacute; nước da tối m&agrave;u diện&nbsp;<strong>măng t&ocirc; nam đẹp</strong>.</p>\r\n\r\n<p><strong>&nbsp;Măng t&ocirc; nam MT-279</strong>&nbsp;chất liệu dạ kết hợp c&ugrave;ng&nbsp;<strong>quần</strong>&nbsp;<strong>jean</strong>,&nbsp;<strong>&aacute;o si mi l&oacute;t l&ocirc;ng</strong>&nbsp;l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho những ch&agrave;ng trai y&ecirc;u th&iacute;ch phong c&aacute;ch năng động, trẻ trung.</p>\r\n\r\n<p><strong>&nbsp;&nbsp;</strong>Kết hợp&nbsp;<strong>&aacute;o thun</strong>&nbsp;b&ecirc;n trong măng t&ocirc; d&agrave;nh cho ch&agrave;ng trai nhẹ nh&agrave;ng, đơn giản. Ngo&agrave;i ra, sẽ nổi bật hơn với gu thời trang tinh tế khi măng t&ocirc; được kết hợp với c&aacute;c&nbsp;<strong>phụ kiện</strong>&nbsp;như khăn bỏ t&uacute;i, khăn qu&agrave;ng cổ hay găng tay.&nbsp;</p>\r\n\r\n<p><strong>???? Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết cho mẫu &aacute;o măng t&ocirc; dạ l&oacute;t l&ocirc;ng MT-279:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_1.jpg\" /></p>\r\n\r\n<p>Khi sở hữu một chiếc &aacute;o măng t&ocirc;, bạn cần để &yacute; đến chất liệu. Ch&iacute;nh chất liệu gi&uacute;p bạn đ&aacute;nh gi&aacute; được chất lượng, độ bền v&agrave; khả năng phối đồ c&oacute; dễ d&agrave;ng hay kh&ocirc;ng. Măng t&ocirc; nam chất liệu dạ kết hợp c&ugrave;ng quần jean, &aacute;o si mi l&agrave; sự lựa chọn ho&agrave;n hảo d&agrave;nh cho những ch&agrave;ng trai y&ecirc;u th&iacute;ch phong c&aacute;ch năng động, trẻ trung.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_2.jpg\" /></p>\r\n\r\n<p>Kết hợp &aacute;o thun b&ecirc;n trong măng t&ocirc; d&agrave;nh cho ch&agrave;ng trai nhẹ nh&agrave;ng, đơn giản. Ngo&agrave;i ra, sẽ nổi bật hơn với gu thời trang tinh tế khi măng t&ocirc; được kết hợp với c&aacute;c phụ kiện như khăn bỏ t&uacute;i, khăn qu&agrave;ng cổ hay găng tay. Đ&acirc;y l&agrave; những m&oacute;n đồ phụ kiện thời trang nam rất dễ kết hợp m&agrave; c&aacute;c ch&agrave;ng kh&ocirc;ng n&ecirc;n bỏ qua nh&eacute;.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_3.jpg\" /></p>\r\n\r\n<p>Lưng bạn tr&ocirc;ng sẽ thẳng hơn v&agrave; vai c&oacute; cảm gi&aacute;c rộng hơn trogn mắt người đối diện khi diện chiếc&nbsp;<strong>măng t&ocirc; giả vest</strong>&nbsp;được may đo vừa vặn với cơ thể. Ngực bạn tr&ocirc;ng sẽ lớn hơn c&ograve;n phần eo th&igrave; nhỏ lại khi &uacute;t &aacute;o tr&ecirc;n của &aacute;o nằm ngay tr&ecirc;n rốn khi c&agrave;i. Điều n&agrave;y gi&uacute;p cho cơ thể bạn tr&ocirc;ng c&acirc;n đối hơn giữa th&acirc;n tr&ecirc;n v&agrave; th&acirc;n dưới. Đặc biệt, sự lựa chọn n&agrave;y sẽ gi&uacute;p cho cơ thể bạn tr&ocirc;ng thanh mảnh hơn v&agrave; g&acirc;y ảo gi&aacute;c về chiều cao.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_4.jpg\" /></p>\r\n\r\n<p>Bạn n&ecirc;n chọn những chiếc&nbsp;<strong>măng t&ocirc; nam d&aacute;ng ngắn</strong>&nbsp;để ăn gian chiều cao hiệu quả bằng c&aacute;ch kết hợp những mẫu &aacute;o d&aacute;ng ngắn n&agrave;y c&ugrave;ng chiếc &aacute;o sơ mi đơn giản đ&oacute;ng th&ugrave;ng b&ecirc;n trong v&agrave; đ&ocirc;i gi&agrave;y tối m&agrave;u. Hoặc bạn c&oacute; thể mặc chiếc &aacute;o sơ mi c&oacute; vạt kh&ocirc;ng được d&agrave;i qu&aacute; xương chậu nếu kh&ocirc;ng muốn sơ vin, điều n&agrave;y cũng gi&uacute;p ch&acirc;n bạn c&oacute; cảm gi&aacute;c d&agrave;i hơn.</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1627_7.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1000000, 'Áo măng tô dạ hay măng tô kaki chính là xu hướng thời trang nam 2017 hiện nay. Đây là hai kiểu trang phục rất dễ phối hợp và phổ biến cho mùa đông này. Một diện mạo hoàn toàn mới cho măng tô khi được kết hợp với sơ mi hay áo len giúp bạn sang trọng, thanh lịch nhưng không kém phần mạnh mẽ.', '2019-08-15 10:14:22', '2019-08-16 15:39:20'),
(9, 'ÁO VEST ĐEN AV1089', 'ao-vest-den-av1089', 'AV1089', 500000, 'ao-vest-cao-cap-den-av2l1089-6975-slide-1.jpg', 2, '<p>- M&agrave;u đen nam t&iacute;nh, kiểu &aacute;o một n&uacute;t trẻ trung<br />\r\n- Kiểu &aacute;o vest nam mới nhất, thiết kế sang trọng, hiện đại<br />\r\n- Thiết kế theo form d&aacute;ng H&agrave;n Quốc &ocirc;m theo body cực đẹp, cổ &aacute;o ve nhỏ<br />\r\n- &Aacute;o c&oacute; t&uacute;i ngực viền trắng tạo điểm nhấn v&agrave; hai t&uacute;i nắp hai b&ecirc;n h&ocirc;ng, tay &aacute;o phối h&agrave;ng n&uacute;t lịch l&atilde;m<br />\r\n- Chất liệu vải &acirc;u hai lớp cao cấp, bền đẹp, &iacute;t nhăn, dễ giặt ủi m&agrave; kh&ocirc;ng sợ mất d&aacute;ng<br />\r\n- C&oacute; đầy đủ c&aacute;c size cho bạn lựa chọn theo d&aacute;ng người<br />\r\n- Thiết kế v&agrave; sản xuất tại&nbsp;<strong>4MEN</strong></p>\r\n\r\n<p><img alt=\"Áo vest đen av1089 - 1\" src=\"https://4menshop.com/images/2016/06/20160607_6886e349bff7608a7e4b35b6429e54eb_1465266813.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 350000, 'Áo Vest Cao Cấp Đen AV1089 thiết kế dạng vest cổ bẻ, tay dài, 1 nút gài, form áo ôm vừa tạo giúp tôn dáng quý ông. Áo màu đen mạnh mẽ, có một túi viền trắng trước ngực và 2 túi bên hông có nắp bẻ, tay áo được phối nút tạo cho chàng nét lịch thiệp, mạnh mẽ hơn trong mắt đồng nghiệp, đối tác.', '2019-08-15 10:15:58', '2019-08-16 15:39:50'),
(10, 'ÁO SƠ MI HỌA TIẾT XÁM XANH ASM1227', 'ao-so-mi-hoa-tiet-xam-xanh-asm1227', 'ASM1227', 275000, 'ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10194-slide-products-5bee83d3afef1.jpg', 2, '<p>- M&agrave;u sắc nam t&iacute;nh, họa tiết c&aacute; t&iacute;nh<br />\r\n- Cổ bẻ, tay d&agrave;i, form t&ocirc;n d&aacute;ng<br />\r\n-&nbsp;Thiết kế theo phong c&aacute;ch H&agrave;n Quốc hiện đại<br />\r\n- Chất liệu cao cấp thấm h&uacute;t tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch v&agrave; sang trọng, gi&uacute;p bạn tự tin v&agrave; thoải m&aacute;i hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết xám xanh asm1227 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10194-slide-products-5bee83d3617eb.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 250000, 'Áo Sơ Mi Họa Tiết Xám Xanh ASM1227 chất liệu cao cấp, thấm hút mồ hôi tốt. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.', '2019-08-15 10:18:34', '2019-08-16 15:40:26'),
(11, 'ÁO SƠ MI HỌA TIẾT XANH DA TRỜI ASM1224', 'ao-so-mi-hoa-tiet-xanh-da-troi-asm1224', 'ASM1224', 275000, 'ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10193-slide-products-5bee70be40aa9.jpg', 2, '<p>- M&agrave;u sắc trang nh&atilde;, nền vải dệt đốm m&agrave;u tạo điểm nhấn<br />\r\n- Cổ bẻ, tay d&agrave;i, form t&ocirc;n d&aacute;ng<br />\r\n-&nbsp;Thiết kế theo phong c&aacute;ch H&agrave;n Quốc hiện đại<br />\r\n- Chất liệu cao cấp thấm h&uacute;t tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch v&agrave; sang trọng, gi&uacute;p bạn tự tin v&agrave; thoải m&aacute;i hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết xanh da trời asm1224 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-xanh-da-troi-asm1224-10193-slide-products-5bee70bdf0fef.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 250000, 'Áo Sơ Mi Họa Tiết Xanh Da Trời ASM1224 chất liệu oxford dày dặn, đứng form dáng, thấm hút mồ hôi tốt. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.', '2019-08-15 10:20:35', '2019-08-16 15:40:49'),
(12, 'ÁO SƠ MI HỌA TIẾT TRẮNG ASM1223', 'ao-so-mi-hoa-tiet-trang-asm1223', 'ASM1223', 265000, 'ao-so-mi-hoa-tiet-trang-asm1223-10192-slide-products-5bee6b89c1f78.jpg', 2, '<p>- M&agrave;u sắc trang nh&atilde;, nền vải dệt đốm m&agrave;u tạo điểm nhấn<br />\r\n- Cổ bẻ, tay d&agrave;i, form t&ocirc;n d&aacute;ng<br />\r\n-&nbsp;Thiết kế theo phong c&aacute;ch H&agrave;n Quốc hiện đại<br />\r\n- Chất liệu linen cao cấp thấm h&uacute;t tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch v&agrave; sang trọng, gi&uacute;p bạn tự tin v&agrave; thoải m&aacute;i hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết trắng asm1223 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-trang-asm1223-10192-slide-products-5bee6b894cd05.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 245000, 'Áo Sơ Mi Họa Tiết Trắng ASM1223 chất linen mềm mại, mát mẻ, dệt đốm màu tạo điểm nhấn tinh tế trên nền vải. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.', '2019-08-15 10:21:35', '2019-08-16 15:41:17'),
(13, 'ÁO SƠ MI HỌA TIẾT ĐEN ASM1223', 'ao-so-mi-hoa-tiet-den-asm1223', 'ASM1223', 265000, 'ao-so-mi-hoa-tiet-den-asm1223-10191-slide-products-5bee68b4486f2.jpg', 2, '<p>- M&agrave;u sắc trang nh&atilde;, nền vải dệt đốm m&agrave;u tạo điểm nhấn<br />\r\n- Cổ bẻ, tay d&agrave;i, form t&ocirc;n d&aacute;ng<br />\r\n-&nbsp;Thiết kế theo phong c&aacute;ch H&agrave;n Quốc hiện đại<br />\r\n- Chất liệu linen cao cấp thấm h&uacute;t tốt<br />\r\n- Đường chỉ may đều đẹp, chắc chắn<br />\r\n- Thanh lịch v&agrave; sang trọng, gi&uacute;p bạn tự tin v&agrave; thoải m&aacute;i hơn<br />\r\n&nbsp;</p>\r\n\r\n<p><img alt=\"Áo sơ mi họa tiết đen asm1223 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-hoa-tiet-den-asm1223-10191-slide-products-5bee68b3ea64e.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 245000, 'Áo Sơ Mi Họa Tiết Đen ASM1223 chất linen mềm mại, mát mẻ, dệt đốm màu tạo điểm nhấn tinh tế trên nền vải. Thiết kế theo phong cách Hàn Quốc, form tôn dáng, cổ bẻ, tay dài, rất thanh lịch.', '2019-08-15 10:22:44', '2019-08-16 15:41:42'),
(14, 'ÁO SƠ MI CA RÔ XÁM XANH ASM1229', 'ao-so-mi-ca-ro-xam-xanh-asm1229', 'ASM1229', 225000, 'ao-so-mi-ca-ro-xam-xanh-asm1228-10199-slide-products-5bee95acf0e20.jpg', 2, '<p>-&nbsp;<strong>&Aacute;o Sơ Mi Ca R&ocirc; X&aacute;m Xanh&nbsp;ASM1229</strong>&nbsp;chất vải nỉ d&agrave;y dặn, thấm h&uacute;t tốt, dễ d&agrave;ng giặt ủi v&agrave; bảo quản<br />\r\n- Form &aacute;o fit nhẹ, hiện đại, c&aacute; t&iacute;nh, năng động<br />\r\n- Kẻ caro trẻ trung, nam t&iacute;nh, phối layer c&ugrave;ng &aacute;o thun hoặc mặc ri&ecirc;ng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xám xanh asm1229 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-xam-xanh-asm1228-10199-slide-products-5bee95ad3e662.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 200000, 'Áo Sơ Mi Ca Rô Xám Xanh ASM1229 được may từ chất nỉ thấm hút tốt, thoáng mát và mềm mại. Form áo trẻ trung, hiện đại, năng động, mặc riêng hay phối layer cùng áo thun đều đẹp.', '2019-08-15 10:23:48', '2019-08-16 15:42:21'),
(15, 'ÁO SƠ MI CA RÔ XÁM XANH ASM1228', 'ao-so-mi-ca-ro-xam-xanh-asm1228', 'ASM1228', 255000, 'ao-so-mi-ca-ro-xam-xanh-asm1228-10198-slide-products-5bee92ca8dae5.jpg', 2, '<p>-&nbsp;<strong>&Aacute;o Sơ Mi Ca R&ocirc; X&aacute;m Xanh&nbsp;ASM1228</strong>&nbsp;chất vải nỉ d&agrave;y dặn, thấm h&uacute;t tốt, dễ d&agrave;ng giặt ủi v&agrave; bảo quản<br />\r\n- Form &aacute;o fit nhẹ, hiện đại, c&aacute; t&iacute;nh, năng động<br />\r\n- Kẻ caro trẻ trung, nam t&iacute;nh, phối layer c&ugrave;ng &aacute;o thun hoặc mặc ri&ecirc;ng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xám xanh asm1228 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-xam-xanh-asm1228-10198-slide-products-5bee92cadca96.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 235000, 'Áo Sơ Mi Ca Rô Xám Xanh ASM1228 được may từ chất nỉ thấm hút tốt, thoáng mát và mềm mại. Form áo trẻ trung, hiện đại, năng động, mặc riêng hay phối layer cùng áo thun đều đẹp.', '2019-08-15 10:24:46', '2019-08-16 15:43:07'),
(16, 'ÁO SƠ MI CA RÔ XANH ASM1225', 'ao-so-mi-ca-ro-xanh-asm1225', 'ASM1225', 255000, 'ao-so-mi-ca-ro-asm1205-10196-slide-products-5bee896798aba.jpg', 2, '<p>-&nbsp;<strong>&Aacute;o Sơ Mi Ca R&ocirc; Xanh ASM1225</strong>&nbsp;chất vải mềm mại, thấm h&uacute;t tốt, dễ d&agrave;ng giặt ủi v&agrave; bảo quản<br />\r\n- Form &aacute;o rộng, hiện đại, c&aacute; t&iacute;nh, năng động<br />\r\n- Kẻ caro trẻ trung, nam t&iacute;nh, phối layer c&ugrave;ng &aacute;o thun hoặc mặc ri&ecirc;ng đều đẹp.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi ca rô xanh asm1225 - 1\" src=\"https://4menshop.com/images/thumbs/2018/11/ao-so-mi-ca-ro-asm1205-10196-slide-products-5bee89675abee.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 235000, 'Áo Sơ Mi Ca Rô Xanh ASM1225 được may từ chất vải thấm hút tốt, thoáng mát và giặt mau khô. Form áo rộng, freestyle mang đến sự hiện đại, năng động cho nam giới.', '2019-08-15 10:26:15', '2019-08-16 15:43:48'),
(17, 'ÁO THUN CÓ CỔ SỌC ĐỎ AT620', 'ao-thun-co-co-soc-do-at620', 'AT620', 195000, 'ao-thun-co-co-soc-do-at620-7753-slide-1.jpg', 3, '<p>&Aacute;o Thun C&oacute; Cổ Sọc Đỏ AT620&nbsp;kiểu d&aacute;ng tay ngắn bo nhẹ năng động, khỏe khoắn gi&uacute;p bạn tự tin thoải m&aacute;i trong mọi hoạt động.&nbsp;Dạng cổ bẻ phối h&agrave;ng&nbsp;n&uacute;t tinh tế, form &ocirc;m body khoe kh&eacute;o&nbsp;vẻ đẹp h&igrave;nh thể của người mặc.&nbsp;Chất liệu thun 100% cotton co gi&atilde;n v&agrave; thấm h&uacute;t mồ h&ocirc;i tốt. Phối sọc m&agrave;u đỏ tinh tế tạo điểm nhấn c&aacute; t&iacute;nh&nbsp;cho sản phẩm.&nbsp;Rất năng động&nbsp;m&agrave; vẫn thời trang, bạn c&oacute; thể t&ugrave;y chọn phối với nhiều kiểu quần kh&aacute;c nhau.<br />\r\n<br />\r\n<br />\r\n<strong><a href=\"https://4menshop.com/quan-nam.html\"><img alt=\"Áo thun có cổ sọc đỏ at620 - 1\" src=\"https://4menshop.com/images/thumbs/2016/10/ao-thun-co-co-soc-do-at620-7753-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ sọc đỏ at620 - 2\" src=\"https://4menshop.com/images/thumbs/2016/10/ao-thun-co-co-soc-do-at620-7753-slide-2.jpg\" /></a></strong></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 175000, 'Áo Thun Có Cổ Sọc Đỏ AT620 thu hút với màu trắng thanh lịch phối sọc đỏ tinh tế. Kiểu dáng tay ngắn khỏe khoắn, có bo nhẹ, cổ áo dạng bẻ phối nút cài. Chất liệu thun cotton mềm mịn, thấm hút mồ hôi tốt và co giãn 4 chiều, giúp bạn tự tin và thoải mái. Dáng áo ôm body theo phong cách Hàn Quốc, rất đáng để trải nghiệm!', '2019-08-15 10:27:21', '2019-08-16 15:44:10'),
(18, 'ÁO THUN CÓ CỔ XANH AT627', 'ao-thun-co-co-xanh-at627', 'AT627', 195000, 'ao-thun-co-co-xanh-at627-7824-slide-1.jpg', 3, '<p>Bạn sẽ trở n&ecirc;n&nbsp;tự tin v&agrave;&nbsp;thoải m&aacute;i khi tham gia c&aacute;c&nbsp;hoạt động vui chơi ngo&agrave;i trời&nbsp;c&ugrave;ng người th&acirc;n, bạn b&egrave; với chiếc &aacute;o thun c&aacute; t&iacute;nh n&agrave;y.&nbsp;M&agrave;u&nbsp;xanh trẻ trung, c&aacute; t&iacute;nh mang cảm gi&aacute;c tươi mới, thu h&uacute;t &aacute;nh nh&igrave;n.&nbsp;Chất liệu thun 100% cotton c&oacute; ưu điểm l&agrave; tho&aacute;ng m&aacute;t, mềm mịn, thấm h&uacute;t mồ h&ocirc;i tốt.&nbsp;Cổ &aacute;o được thiết kế dạng bẻ ve nhỏ thanh nh&atilde;&nbsp;phối h&agrave;ng&nbsp;n&uacute;t c&agrave;i,&nbsp;tay &aacute;o bo nhẹ, form &ocirc;m body khỏe khoắn&nbsp;khoe d&aacute;ng chuẩn cho người mặc.&nbsp;&Aacute;o được gắn logo nhỏ ở ngực &aacute;o v&agrave; cổ &aacute;o tạo n&eacute;t chấm ph&aacute; tinh tế.&nbsp;<br />\r\n<br />\r\n--&gt; C&oacute; nhiều size cho bạn thoải m&aacute;i lựa chọn. Đặc biệt, dễ d&agrave;ng phối với đa dạng quần, mặc được&nbsp;trong nhiều thời điểm v&agrave; ho&agrave;n cảnh kh&aacute;c nhau.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh at627 - 1\" src=\"https://4menshop.com/images/2016/10/20161025_11ce7b68239f9348ab77bcf592582fe8_1477376190.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh at627 - 2\" src=\"https://4menshop.com/images/2016/10/20161025_33f3bd67d0e90c8f960ecce58cad75e7_1477376190.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 175000, 'Áo Thun Có Cổ Xanh AT627 mang đến cho bạn cảm giác mát lạnh, mềm mịn từ chất liệu vải 100% cotton thấm hút mồ hôi và co giãn tốt. Dáng áo ôm body theo phong cách thời trang Hàn Quốc. Màu xanh tươi sáng, nổi bật cho bạn vẻ ngoài thu hút hơn. Một sản phẩm mới lạ rất đáng để bạn đầu tư.', '2019-08-15 10:28:50', '2019-08-16 15:44:32'),
(19, 'ÁO THUN CÓ CỔ TRẮNG KEM AT629', 'ao-thun-co-co-trang-kem-at629', 'AT629', 1750000, 'ao-thun-co-tron-trang-kem-at629-7903-slide-3.jpg', 3, '<p>&Aacute;o thun c&oacute; cổ được ưa chuộng&nbsp;hơn những mẫu &Aacute;o thun kh&aacute;c bởi t&iacute;nh tiện dụng, sự chỉn chu v&agrave; lịch sự m&agrave; n&oacute; mang lại. Điển h&igrave;nh như mẫu&nbsp;<strong>&Aacute;o Thun C&oacute; Cổ Trắng Kem AT629</strong>,<strong>&nbsp;</strong>thiết kế&nbsp;dạng cổ bẻ ve nhỏ phối h&agrave;ng n&uacute;t c&agrave;i rất tinh tế. Tay ngắn bo nhẹ thoải m&aacute;i cho bạn dễ d&agrave;ng vận động. Th&ecirc;m một điểm cộng của sản phẩm đ&oacute; l&agrave; c&aacute;ch phối m&agrave;u rất h&agrave;i h&ograve;a tinh tế, l&agrave;m nổi bật l&ecirc;n sản phẩm cũng như v&oacute;c d&aacute;ng người mặc.&nbsp;M&agrave;u trắng kem thanh lịch&nbsp;kết hợp m&agrave;u đen nam t&iacute;nh, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn l&agrave; thun cotton mềm mịn&nbsp;v&agrave;&nbsp;n&oacute; mang lại cảm gi&aacute;c thoải m&aacute;i, đặc biệt dễ chịu. Th&iacute;ch hợp cho bạn diện ở nhiều nơi v&agrave; tự tin thể hiện phong c&aacute;ch của m&igrave;nh.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ trắng kem at629 - 1\" src=\"https://4menshop.com/images/2016/11/20161110_e945dd0b5aaa9ae93864afe35a75074c_1478750657.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ trắng kem at629 - 2\" src=\"https://4menshop.com/images/2016/11/20161110_e845accbb251db1deabf36b75ad935f7_1478750655.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 150000, 'Màu trắng kem tươi sáng và thanh lịch khiến chiếc Áo Thun Có Cổ Trắng Kem AT629 thêm tiện dụng và phụ hợp với nhiều lứa tuổi. Được tạo điểm nhấn với logo nhỏ nổi bật ở ngực áo. Kiểu dáng thiết kế đơn giản, từ cổ bẻ đến tay áo ngắn năng động, giúp bạn nam tự tin, thoải mái trong vận động.', '2019-08-15 10:30:00', '2019-08-16 15:44:51'),
(20, 'ÁO THUN CÓ CỔ XANH ĐẬM AT629', 'ao-thun-co-co-xanh-dam-at629', 'AT629', 175000, 'ao-thun-co-co-xanh-la-cay-at62-7911-slide-3.jpg', 3, '<p>&Aacute;o thun c&oacute; cổ được ưa chuộng&nbsp;hơn những mẫu &Aacute;o thun kh&aacute;c bởi t&iacute;nh tiện dụng, sự chỉn chu v&agrave; lịch sự m&agrave; n&oacute; mang lại. Điển h&igrave;nh như mẫu&nbsp;<strong>&Aacute;o Thun C&oacute; Cổ Xanh Đậm AT629,&nbsp;</strong>thiết kế&nbsp;dạng cổ bẻ ve nhỏ phối h&agrave;ng n&uacute;t c&agrave;i rất tinh tế. Tay ngắn bo nhẹ thoải m&aacute;i cho bạn dễ d&agrave;ng vận động. Th&ecirc;m một điểm cộng của sản phẩm đ&oacute; l&agrave; c&aacute;ch phối m&agrave;u rất h&agrave;i h&ograve;a tinh tế, l&agrave;m nổi bật l&ecirc;n sản phẩm cũng như v&oacute;c d&aacute;ng người mặc.&nbsp;M&agrave;u xanh đậm nam t&iacute;nh kết hợp m&agrave;u trắng thanh lịch, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn l&agrave; thun cotton mềm mịn&nbsp;v&agrave;&nbsp;n&oacute; mang lại cảm gi&aacute;c thoải m&aacute;i, đặc biệt dễ chịu. Th&iacute;ch hợp cho bạn diện ở nhiều nơi v&agrave; tự tin thể hiện phong c&aacute;ch của m&igrave;nh.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đậm at629 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at62-7911-slide-3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 150000, 'Áo Thun Có Cổ Xanh Đậm AT629 rất bắt mắt và thu hút với màu xanh đen nam tính nhấn nhá một chút màu trắng tươi sáng. Thiết kế cổ bẻ ve nhỏ với hàng cúc cùng màu, tay ngắn khỏe khoắn, năng động. Sản phẩm được tạo điểm nhấn với logo nhỏ nổi bật ở ngực áo. Sắm ngay cho mình chiếc áo này để làm mới mẻ tủ đồ của bạn.', '2019-08-15 10:31:03', '2019-08-16 15:45:19'),
(21, 'ÁO THUN CÓ CỔ XANH ĐEN AT630', 'ao-thun-co-co-xanh-den-at630', 'AT630', 175000, 'ao-thun-co-co-xanh-den-at630-7916-slide-1.jpg', 3, '<p>Những điểm nổi bật l&agrave;m n&ecirc;n sự thu h&uacute;t của chiếc&nbsp;&Aacute;o Thun C&oacute; Cổ Xanh Đen AT630 :&nbsp;<br />\r\n- M&agrave;u xanh đen nam t&iacute;nh, thu h&uacute;t &aacute;nh nh&igrave;n được kết hợp h&agrave;i h&ograve;a với m&agrave;u v&agrave;ng bắt mắt<br />\r\n- Chất liệu từ thun 100% cotton mang cảm gi&aacute;c&nbsp;mềm mịn<br />\r\n- Tho&aacute;ng m&aacute;t, thấm h&uacute;t mồ h&ocirc;i tốt, cho bạn thoải m&aacute;i vận động cả ng&agrave;y d&agrave;i.<br />\r\n- Thiết kế dạng cổ &aacute;o bẻ ve nhỏ thanh nh&atilde; phối h&agrave;ng n&uacute;t c&agrave;i c&ugrave;ng m&agrave;u.<br />\r\n- Tay &aacute;o dạng ngắn&nbsp;bo thun khỏe khoắn, năng động.<br />\r\n- Đường may đều đẹp, tỉ mỉ.<br />\r\n- Form &ocirc;m body khoe vẻ đẹp h&igrave;nh thể ho&agrave;n hảo.<br />\r\n- Tips: Phối với đa dạng quần, đặc biệt thu h&uacute;t khi diện với&nbsp;<strong>Quần Jean</strong>&nbsp;c&aacute; t&iacute;nh của 4MEN.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh đen at630 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-den-at630-7916-slide-3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 150000, 'Áo Thun Có Cổ Xanh Đen AT630 mang đến cho bạn một diện mạo hoàn toàn mới mẻ từ màu xanh đen phối màu vàng bắt mắt. Thiết kế cổ bẻ ve nhỏ với hàng cúc cùng màu, tay ngắn khỏe khoắn, năng động. Sản phẩm được tạo chấm phá với sọc ngang màu trắng ở ngực áo như một chiếc túi giả. Chất liệu mềm mịn, thoải mái khiến bạn chỉ muốn diện vào ngày để xuống phố cùng bạn bè.', '2019-08-15 10:32:01', '2019-08-16 15:46:03'),
(22, 'ÁO THUN CÓ CỔ XANH LÁ CÂY AT630', 'ao-thun-co-co-xanh-la-cay-at630', 'AT633', 175000, 'ao-thun-co-co-xanh-la-cay-at630-7917-slide-1.jpg', 3, '<p>Bạn sẽ y&ecirc;u từ c&aacute;i nh&igrave;n đầu ti&ecirc;n khi thấy chiếc<strong>&nbsp;&Aacute;o Thun C&oacute; Cổ Xanh L&aacute; C&acirc;y AT630&nbsp;</strong>n&agrave;y,&nbsp;bởi sự tinh tế trong thiết kế v&agrave; c&aacute;ch phối m&agrave;u bắt m&agrave;u, thu h&uacute;t người nh&igrave;n. M&agrave;u xanh l&aacute; c&acirc;y tươi s&aacute;ng kết hợp m&agrave;u trắng thanh lịch, hứa hẹn mang đến cho bạn diện mạo mới mẻ. Chất liệu vải vẫn l&agrave; thun cotton mềm mịn&nbsp;nhưng n&oacute; mang lại cảm gi&aacute;c m&aacute;t lạnh, đặc biệt dễ chịu cho người mặc. Cầm chiếc &aacute;o tr&ecirc;n tay, bạn sẽ c&oacute; cảm gi&aacute;c rất th&iacute;ch th&uacute; v&agrave; muốn diện ngay v&agrave;o người.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-1.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-2.jpg\" /></p>\r\n\r\n<p><br />\r\nĐược thiết kế theo phong c&aacute;ch thời trang H&agrave;n Quốc lịch l&atilde;m, với tay &aacute;o ngắn bo nhẹ khỏe khoắn kh&aacute;c m&agrave;u, cổ &aacute;o dạng bẻ ve nhỏ phối h&agrave;ng n&uacute;t c&agrave;i. Form &aacute;o &ocirc;m body nhưng rất thoải m&aacute;i do c&oacute; độ co gi&atilde;n vừa vặn theo d&aacute;ng người.&nbsp;M&agrave;u trắng phối xanh l&aacute;&nbsp;c&aacute; t&iacute;nh, cực ngầu khi kết hợp&nbsp;với&nbsp;<strong><a href=\"https://4menshop.com/quan-jean-nam.html\">Quần Jean</a></strong>&nbsp;4MEN.</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at630 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-la-cay-at630-7917-slide-3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 150000, 'Nổi bật với cách kết hợp màu xanh lá cây tươi sáng với màu trắng thanh lịch, Áo Thun Có Cổ Xanh Lá Cây AT630 mang đến cho bạn một diện mạo hoàn toàn mới mẻ. Thiết kế form ôm body khoe dáng cực chuẩn, chất liệu vải là một điểm nổi bật của sản phẩm, cảm giác mát mịn từ thun 100% cotton. Sản phẩm được tạo chấm phá với sọc ngang màu đen ở ngực áo như một chiếc túi giả. Độc quyền bởi 4men, là sản phẩm rất đáng sắm cho tủ đồ của bạn.', '2019-08-15 10:33:21', '2019-08-16 15:46:27'),
(23, 'ÁO THUN SỌC CÓ CỔ XANH BIỂN AT635', 'ao-thun-soc-co-co-xanh-bien-at635', 'AT635', 245000, 'ao-thun-co-co-xanh-bien-at635-8128-slide-1.jpg', 3, '<p>Với những t&iacute;nh năng đặc biệt dưới đ&acirc;y, mẫu &Aacute;o thun c&aacute; t&iacute;nh n&agrave;y sẽ chinh phục bất kỳ ch&agrave;ng trai n&agrave;o khi được cầm n&oacute; tr&ecirc;n tay.&nbsp;<br />\r\n<br />\r\n- M&agrave;u xanh biển tươi s&aacute;ng, thu h&uacute;t &aacute;nh nh&igrave;n<br />\r\n- Chất liệu từ thun 100% cotton co gi&atilde;n 4 chiều.<br />\r\n- Mềm mịn, m&aacute;t lạnh, thấm h&uacute;t mồ h&ocirc;i tốt, cho bạn thoải m&aacute;i vận động cả ng&agrave;y d&agrave;i.<br />\r\n- Tay &aacute;o d&aacute;ng ngắn, bo nhẹ với thun m&agrave;u nổi bật<br />\r\n- Thiết kế cổ &aacute;o bẻ ve nhỏ thanh nh&atilde; phối h&agrave;ng n&uacute;t c&agrave;i.<br />\r\n- Đường may đều đẹp, tỉ mỉ<br />\r\n- Form &ocirc;m body khoe vẻ đẹp h&igrave;nh thể ho&agrave;n hảo<br />\r\n- Nhiều size cho bạn thoải m&aacute;i lựa chọn</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 1\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-1.jpg\" /></p>\r\n\r\n<p><br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 2\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-2.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 3\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-4.jpg\" /><br />\r\n<br />\r\n<img alt=\"Áo thun sọc có cổ xanh biển at635 - 4\" src=\"https://4menshop.com/images/thumbs/2016/11/ao-thun-co-co-xanh-bien-at635-8128-slide-3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 220000, 'Áo Thun Sọc Có Cổ Xanh Biển AT635 bắt mắt với màu xanh biển tươi sáng, chất liệu vải thun cotton co giãn 4 chiều, mang đến cảm giác mềm mịn, mát lạnh khi mặc. Sản phẩm tạo điểm nhấn với những đường sọc ngang màu trắng bắt mắt. Tay áo dáng ngắn, cổ bẻ phối hàng nút cài tinh tế, đẹp mắt.', '2019-08-15 10:34:28', '2019-08-16 15:46:54'),
(24, 'ÁO THUN ĐỎ AT719', 'ao-thun-do-at719', 'AT719', 195000, 'ao-thun-xanh-den-at719-9379-slide-products-5a225564a8b57.jpg', 3, '<p><strong>Th&ocirc;ng tin chi tiết: &Aacute;o Thun Đỏ AT719</strong><br />\r\n<br />\r\n<strong>- M&atilde; sản phẩm:</strong>&nbsp;AT719-DO<br />\r\n<br />\r\n<strong>- M&agrave;u sắc:&nbsp;</strong>Đỏ<br />\r\n<br />\r\n<strong>- Chất liệu:</strong>&nbsp;Thun cotton co gi&atilde;n 4 chiều<br />\r\n<br />\r\n<strong>- Kiểu d&aacute;ng:</strong>&nbsp;&Aacute;o thun cổ bẻ<br />\r\n<br />\r\n<strong>- Th&iacute;ch hợp:</strong>&nbsp;đi l&agrave;m, đi học, đi chơi, du lịch, tiệc nhẹ...</p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 170000, 'Áo Thun Đỏ AT719 chất liệu thun cotton co giãn 4 chiều thấm hút tốt, mềm mại, bền màu, thoáng khí. Kiểu dáng áo thun có cổ bẻ phối nút lịch sự, tay ngắn thoải mái vận động. Màu sắc dễ phối trang phục, phù hợp khi đi làm, đi học, đi chơi...', '2019-08-15 10:35:11', '2019-08-16 15:47:27'),
(25, 'ÁO THUN CÓ CỔ XANH LÁ CÂY AT781', 'ao-thun-co-co-xanh-la-cay-at781', 'AT781', 275000, 'ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756bb97a1.jpg', 3, '<p><strong>Th&ocirc;ng tin chi tiết: &Aacute;o Thun C&oacute; Cổ Xanh L&aacute; C&acirc;y AT781</strong><br />\r\n<br />\r\n<strong>- M&atilde; sản phẩm:</strong>&nbsp;AT781-XLC<br />\r\n<br />\r\n<strong>- M&agrave;u sắc: Xanh L&aacute; C&acirc;y</strong><br />\r\n<br />\r\n<strong>- Chất liệu:</strong>&nbsp;Thun cotton co gi&atilde;n 4 chiều<br />\r\n<br />\r\n<strong>- Kiểu d&aacute;ng:</strong>&nbsp;&Aacute;o thun cổ bẻ<br />\r\n<br />\r\n<strong>- Th&iacute;ch hợp:</strong>&nbsp;đi l&agrave;m, đi học, đi chơi, du lịch...</p>\r\n\r\n<p><img alt=\"Áo thun có cổ xanh lá cây at781 - 1\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756bb97a1.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 2\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756c3a94b.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 3\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756c6c9ce.jpg\" /><br />\r\n<img alt=\"Áo thun có cổ xanh lá cây at781 - 4\" src=\"https://4menshop.com/images/thumbs/2018/08/ao-thun-co-co-xanh-den-at781-9919-slide-products-5b65756cadb1d.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 250000, 'Áo Thun Có Cổ Xanh Lá Cây AT781 được may từ chất liệu thun cotton cao cấp, co giãn 4 chiều thấm hút tốt, mềm mại, bền màu, thoáng mát. Kiểu dáng áo thun có cổ bẻ nhỏ thanh lịch, tay ngắn, logo thêu ngực rất thể thao và năng động.', '2019-08-15 10:36:08', '2019-08-16 15:47:47'),
(26, 'ÁO SƠ MI NAZAFU XÁM 980', 'ao-so-mi-nazafu-xam-980', '980', 445000, 'ao-so-mi-nazafu-soc-xanh-la-cay-979-10124-slide-products-5bc44f08b834e.jpg', 2, '<p><strong>Th&ocirc;ng tin chi tiết:&nbsp;</strong><strong>&Aacute;o Sơ Mi NAZAFU X&aacute;m 980</strong><br />\r\n<br />\r\n<strong>- M&atilde; sản phẩm:</strong>&nbsp;ASM980-XAM<br />\r\n<br />\r\n<strong>- M&agrave;u sắc:</strong>&nbsp;X&aacute;m<br />\r\n<br />\r\n<strong>- Chất liệu:&nbsp;</strong>Vải ngoại nhập H&agrave;n Quốc<br />\r\n<br />\r\n<strong>- Th&iacute;ch hợp:</strong>&nbsp;Ph&ugrave; hợp m&ocirc;i trường c&ocirc;ng sở, mặc đi l&agrave;m, đi học, dự tiệc nhẹ, hẹn h&ograve;</p>\r\n\r\n<p><br />\r\n<img alt=\"Áo sơ mi nazafu xám 980 - 1\" src=\"https://4menshop.com/images/thumbs/2018/10/ao-so-mi-nazafu-soc-xanh-la-cay-979-10124-slide-products-5bc44f08ee89e.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 420000, 'Áo Sơ Mi NAZAFU Xám 980 chất liệu vải cao cấp mềm mại, rất thoáng mát, chống nhăn nhàu hiệu quả. Kiểu dáng hiện đại, sang trọng, form áo chuẩn tôn dáng. Nút vuông quyền lực, mạnh mẽ, khắc logo NAZAFU.', '2019-08-15 10:37:14', '2019-08-16 15:48:19'),
(27, 'Măng tô dạ dáng dài MT-179', 'mang-to-da-dang-dai-mt-179', 'MT-179', 1350000, '120_1629_7.jpg', 1, '<p><strong>Chất liệu:</strong>&nbsp;Dạ&nbsp;cao cấp</p>\r\n\r\n<p><strong>M&agrave;u sắc:&nbsp;</strong>Ghi, Xanh đen</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn:&nbsp;</strong>M, L, XL, XXL</p>\r\n\r\n<p><strong>Thiết kế &aacute;o:</strong>&nbsp;D&aacute;ng su&ocirc;ng, cổ bẻ đứng,&nbsp;1 c&uacute;c, c&aacute;ch điệu giả vest, độ d&agrave;i qua m&ocirc;ng d&agrave;nh cho nam từ 1m65 trở l&ecirc;n</p>\r\n\r\n<p><strong>C&aacute;ch phối đồ:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;Măng t&ocirc; dạ d&aacute;ng d&agrave;i MT-179&nbsp;kết hợp với&nbsp;<strong>&aacute;o sơ mi</strong>&nbsp;hay&nbsp;<strong>&aacute;o len</strong>&nbsp;&amp; phối c&ugrave;ng<strong>&nbsp;quần jeans,&nbsp;quần kaki</strong>&nbsp;để tạo ra nhiều phong c&aacute;ch kh&aacute;c nhau.&nbsp;</p>\r\n\r\n<p>&nbsp;Bạn n&ecirc;n kết hợp&nbsp;<strong>phụ kiện</strong>&nbsp;như&nbsp;<strong>chiếc khăn</strong>&nbsp;bu&ocirc;ng d&agrave;i hoặc quấn quanh cổ cho ng&agrave;y r&eacute;t đậm, ở b&ecirc;n trong c&oacute; thể l&agrave;&nbsp;<strong>&aacute;o len thu đ&ocirc;ng, &aacute;o sơ mi nam</strong>&nbsp;kết hợp&nbsp;<strong>gi&agrave;y da</strong>&nbsp;để c&oacute; một trang phục văn ph&ograve;ng tuyệt đẹp &amp; manly.</p>\r\n\r\n<p><strong>???? Bảng size tham khảo:</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://scontent.fhan3-1.fna.fbcdn.net/v/t34.0-12/23772338_1777107122323978_937787925_n.png?oh=f16f831986b578107a4d334c2ac52b90&amp;oe=5A16B289\" /><img alt=\"\" src=\"https://h2tshop.com/media/lib/630_479_4_19_5.jpg\" /></strong></p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết măng t&ocirc; dạ d&aacute;ng d&agrave;i MT-179:</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_7.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1629_3.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1200000, 'Vẻ đẹp nam tính, cuốn hút, sang trọng sẽ hoàn hảo khi kết hợp với chiếc áo măng tô nam hàng hiệu của H2T giúp bạn tự tin với phong cách thời trang của mình. Áo măng tô dạ hay áo măng tô kaki chính là xu hướng thời trang nam thu đông 2017. Sang trọng, cá tính và hiện đại là những điểm mạnh nổi bật mà chiếc áo măng tô nam mà H2T mang lại cho phái .', '2019-08-15 10:40:02', '2019-08-16 15:50:11'),
(28, 'Măng tô dạ cừu MT-1751', 'mang-to-da-cuu-mt-1751', 'MT-1751', 1650000, '120_1442_1_3.jpg', 1, '<p>Chất liệu: Dạ cừu, chần b&ocirc;ng</p>\r\n\r\n<p>M&agrave;u sắc: Đen, xanh t&iacute;m</p>\r\n\r\n<p>Size hiện c&oacute; sẵn: M, L, XL, XXL</p>\r\n\r\n<p>Ph&ugrave; hợp với những bạn nam c&oacute; chiều cao từ 1m65 trở l&ecirc;n</p>\r\n\r\n<h2>Dưới đ&acirc;y l&agrave; th&ocirc;ng số tham khảo v&agrave; &nbsp;h&igrave;nh ảnh chi tiết về sản phẩm:</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_6.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/1442_1_2.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 1500000, 'Áo măng tô  dạ  cừu mới nhất, trẻ trung, hiện đại phù hợp cho mùa đông.\r\n\r\nĐược thiết kế đơn giản, dáng dài mang lại cho bạn vẻ đẹp lịch lãm, nam tính.\r\n\r\nÁo cổ vest, dài quá hông túi chéo có nắp.', '2019-08-15 10:40:49', '2019-08-16 15:50:36'),
(29, 'Măng tô kaki dáng dài MT-0418', 'mang-to-kaki-dang-dai-mt-0418', 'MT-0418', 999000, '120_2307_29_1.jpg', 1, '<p><strong>Chất liệu</strong>: Kaki chắc chắn, tho&aacute;ng m&aacute;t, thấm h&uacute;t tốt.</p>\r\n\r\n<p><strong>Thiết kế &aacute;o</strong>:</p>\r\n\r\n<ul>\r\n	<li><strong>&nbsp;Măng t&ocirc; kaki d&aacute;ng d&agrave;i MT-0418&nbsp;</strong>được may 2 lớp, kaki gi&agrave;y dặn, đường may tỉ mỉ, cẩn thận tạo n&ecirc;n sự ho&agrave;n hảo cho sản phẩm&nbsp;</li>\r\n	<li>Thiết kế cổ bẻ, tay d&agrave;i lịch l&atilde;m tạo điểm nhấn bằng chiếc đai thắt ở eo gi&uacute;p g&oacute;p phần nam t&iacute;nh mạnh mẽ cho c&aacute;c ch&agrave;ng trai.</li>\r\n</ul>\r\n\r\n<p><strong>M&agrave;u sắc</strong>: V&agrave;ng, Đen</p>\r\n\r\n<p><strong>Size hiện c&oacute; sẵn</strong>: M, L, XL, XXL</p>\r\n\r\n<p><strong>Mix and match</strong>:</p>\r\n\r\n<p>Với chiếc &aacute;o&nbsp;<strong>&nbsp;Măng t&ocirc; kaki d&aacute;ng d&agrave;i MT-0418</strong>rất dễ phối đồ đặc biệt khi kết hợp với &aacute;o sơ mi hay &aacute;o len sẽ đem lại cho bạn một diện mạo mới mẻ sang trọng lịch sự nhưng kh&ocirc;ng k&eacute;m phần nam t&iacute;nh.</p>\r\n\r\n<p><strong>H&igrave;nh ảnh chi tiết sản phẩm</strong>&nbsp;<strong>Măng t&ocirc; kaki d&aacute;ng d&agrave;i MT-0418:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_1.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_2.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_5.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_4.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_3.jpg\" /><img alt=\"\" src=\"https://h2tshop.com/media/product/2307_29_6.jpg\" /></p>\r\n\r\n<div id=\"eJOY__extension_root\" style=\"all:unset\">&nbsp;</div>', 950000, 'Ngày nay, Áo măng tô đã trở thành một trang phục không thể thiếu được trong tủ đồ của phái mạnh mỗi độ đông về. Là một chàng trai sở hữu phong cách thời trang sành điệu chắc chắn bạn không thể bỏ qua chiếc áo Măng tô kaki dáng dài MT-0418 để tự tin bước ra ngoài trời đông giá rét.', '2019-08-16 15:54:11', '2019-08-16 15:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_trend`
--

CREATE TABLE `tbl_trend` (
  `trend_id` bigint(20) UNSIGNED NOT NULL,
  `trend_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend_slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `trend_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_trend`
--

INSERT INTO `tbl_trend` (`trend_id`, `trend_title`, `trend_slug`, `trend_desc`, `trend_content`, `trend_image`, `created_at`, `updated_at`) VALUES
(2, 'MÙA THU DUYÊN DÁNG VỚI MAXI HỌA TIẾT', 'mua-thu-duyen-dang-voi-maxi-hoa-tiet', 'Mùa thu, những thiết kế váy maxi thường đem đến cho phái đẹp dáng vẻ thướt tha, duyên dáng đến lạ kỳ. Những gợi ý của Pantio hy vọng sẽ giúp nàng có thêm lựa chọn cho trang phục trong mùa mới', '<h3>&nbsp;</h3>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92639_-_1080k__2__83c5bd5da32c4d79ae339dea2d2d27c7_1024x1024.jpg\" /></p>\r\n\r\n<p>V&aacute;y maxi l&agrave; một trong những kiểu trang phục được ph&aacute;i đẹp y&ecirc;u th&iacute;ch bởi vẻ uyển chuyển, bay bổng c&ugrave;ng cảm gi&aacute;c thoải m&aacute;i.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92655___2__3c57eeb701e14c3cac2e946e81656437_1024x1024.jpg\" />Th&ecirc;m v&agrave;o đ&oacute;, với chiều d&agrave;i l&yacute; tưởng, v&aacute;y maxi thực sự hiệu quả trong việc gi&uacute;p c&aacute;c n&agrave;ng che giấu nhiều nhược điểm cơ thể như v&ograve;ng 3 kh&ocirc;ng như &yacute;, đ&ugrave;i hay bắp ch&acirc;n to, ch&acirc;n cong, đầu gối củ lạc...</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92639_-_1080k__3__dd9fabb39e25486f998860c0de8a7e9f_1024x1024.jpg\" /></p>\r\n\r\n<p>Chi tiết hoa nh&iacute; được cho l&agrave; hoạ tiết điển h&igrave;nh của những d&aacute;ng v&aacute;y maxi. Kết hợp linh hoạt c&ugrave;ng phụ kiện, họa tiết thi&ecirc;n nhi&ecirc;n sẽ l&agrave; điểm nhấn th&uacute; vị cho ng&agrave;y thu dạo phố hay thời trang c&ocirc;ng sở.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92622_-_1080k__1__c420924eb79a4cc4b4e05eae3724442f_1024x1024.jpg\" /></p>\r\n\r\n<p>Sải bước tự tin xuống phố cho buổi họp mặt bạn b&egrave; hay nơi c&ocirc;ng sở, maxi lu&ocirc;n đem đến t&iacute;nh ứng dụng cao v&agrave; k&iacute;n đ&aacute;o cần thiết cho người mặc.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92655___3__320f92a3d57e42709a6602cd89746250_1024x1024.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Với tiết trời thu đ&ocirc;ng se lạnh, những gam m&agrave;u n&oacute;ng v&agrave; ấm sẽ gi&uacute;p n&agrave;ng trở n&ecirc;n tươi tắn v&agrave; nổi bật.</em></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92622_-_1080k__5__c4110cdcb24c4863a786953cc2388eea_1024x1024.jpg\" /></p>\r\n\r\n<p>Chiếc v&aacute;y maxi với chất liệu chiffon mềm mại, bay bổng c&ugrave;ng kiểu d&aacute;ng trẻ trung l&agrave; lựa chọn ho&agrave;n hảo cho ng&agrave;y thu se lạnh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc92622_-_1080k__3__2cdbde1859084836a6a6cdedfb987a4c_1024x1024.jpg\" /></p>', '1571214383_222.jpg', '2019-11-02 09:45:19', '2020-02-29 10:02:18'),
(4, 'Lắng nghe “Tiếng xuân” ngập tràn trong BST Áo dài Tết của thương hiệu thời trang Pantio', 'lang-nghe-tieng-xuan-ngap-tran-trong-bst-ao-dai-tet-cua-thuong-hieu-thoi-trang-pantio', 'Lắng nghe “Tiếng xuân” ngập tràn trong BST Áo dài Tết của thương hiệu thời trang Pantio\r\nNhững thiết kế áo dài đến từ Thương hiệu Pantio sẽ là item không thể thiếu trong tủ quần áo của phái đẹp mỗi dịp Xuân về.', '<p><img src=\"https://file.hstatic.net/1000392326/file/5_b024df8a2eeb4234a8d692695fff48e9.jpg\" /></p>\r\n\r\n<p>BST &Aacute;o d&agrave;i &ldquo;Tiếng Xu&acirc;n&rdquo; l&agrave; sự giao thoa đặc sắc giữa h&igrave;nh ảnh phụ nữ Việt truyền thống v&agrave; c&ocirc; g&aacute;i hiện đại, trẻ trung. Giữ nguy&ecirc;n phom d&aacute;ng cổ điển, đan xen sự c&aacute;ch điệu mềm mại, uyển chuyển trong từng chi tiết, c&aacute;c mẫu thiết kế của Thương hiệu Pantio sẽ t&ocirc;n l&ecirc;n sự sang trọng, quyến rũ cho người mặc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/8_690e614834464555af7ef0b7c50bdeb6.jpg\" /></p>\r\n\r\n<blockquote>\r\n<p>Sắc đỏ l&agrave; t&ocirc;ng m&agrave;u chủ đạo của BST. Gam m&agrave;u n&agrave;y sẽ mang đến một năm may mắn, t&agrave;i lộc v&agrave; hạnh ph&uacute;c. Chi tiết cổ leo, phối can dọc giữa th&acirc;n tinh tế sẽ l&agrave; điểm nhấn nổi bật cho chiếc &aacute;o d&agrave;i.</p>\r\n</blockquote>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/6_32fb5a454cf0436497b123d5dac64f5d.jpg\" /></p>\r\n\r\n<p>Với kiểu d&aacute;ng &ocirc;m s&aacute;t cơ thể, điểm xuyến c&aacute;c hạt ngọc trai dọc hai b&ecirc;n tay &aacute;o c&ugrave;ng những đường cắt c&uacute;p pha lưới gợi cảm, sẽ t&ocirc;n l&ecirc;n đường cong quyến rũ. Pantio sử dụng chất liệu lụa Satin cao cấp c&ugrave;ng họa tiết in 3D sắc n&eacute;t, m&agrave;u sắc đa dạng gi&uacute;p chị em c&oacute; th&ecirc;m nhiều lựa chọn với &aacute;o d&agrave;i truyền thống.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/12_430c6eb601274307a2ece059a842cd6a.jpg\" /></p>\r\n\r\n<p>Họa tiết hoa c&uacute;c mềm mại trải dọc th&acirc;n &aacute;o, điểm nhấn phần t&agrave; tạo cảm gi&aacute;c th&acirc;n h&igrave;nh cao r&aacute;o v&agrave; thanh mảnh hơn, biến người mặc trở th&agrave;nh những n&agrave;ng thơ xinh đẹp v&agrave; nền n&atilde;.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/2_2157939b9c984fc0be4c3901f79b3c90.jpg\" /></p>\r\n\r\n<p>Thiết kế &aacute;o d&agrave;i với họa tiết phong cảnh Bắc Bộ nổi bật, c&aacute;nh cổ cao kết hợp c&ugrave;ng &nbsp;chiếc c&uacute;c nhỏ xinh được đan tết thủ c&ocirc;ng cầu kỳ, tinh tế.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/7_0717e8d82fe54ec0a51a905cae70a15a.jpg\" /></p>\r\n\r\n<p>Mẫu &aacute;o d&agrave;i c&aacute;ch điệu vừa quyến rũ, vừa gợi cảm nhưng vẫn k&iacute;n đ&aacute;o, t&ocirc;n l&ecirc;n n&eacute;t đẹp của phụ nữ &Aacute; Đ&ocirc;ng. Thiết kế nổi bật với bức tranh hoa c&uacute;c v&agrave;ng ng&agrave;y xu&acirc;n c&ugrave;ng chi tiết cổ c&aacute;ch t&acirc;n, trang tr&iacute; mặt ngọc trai viền kim loại tinh xảo.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/4_bff43902a59143ec8bb4b33f6320a645.jpg\" /></p>\r\n\r\n<p>H&igrave;nh ảnh b&ocirc;ng hoa sen mềm mại tr&ecirc;n nền đỏ v&acirc;n họa tiết gốm sứ, thiết kế cổ c&aacute;ch điệu được cut out gợi cảm phối c&ugrave;ng chi tiết tay loe cho người mặc th&ecirc;m phần thướt tha, duy&ecirc;n d&aacute;ng.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/3_9f3ef2dccbe3481ca56e530f2ef82b91.jpg\" /></p>\r\n\r\n<p>Chiếc &aacute;o với họa tiết hoa văn được phối lệch đầy ấn tượng tr&ecirc;n nền chất liệu lụa c&aacute;t cao cấp chắc chắn sẽ l&agrave; lựa chọn ho&agrave;n hảo cho ph&aacute;i đẹp trong dịp Tết đến, Xu&acirc;n về.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/9_f339b7ee72c4489d9b49800203b58c4c.jpg\" /></p>', '2_74b497fd282e40daac9a210c4da56d25_914fe57e062f41f09ccfa3caed7c91dd_large.webp', '2020-02-29 09:57:29', '2020-02-29 09:57:29'),
(5, 'THƯƠNG HIỆU PANTIO “TRÌNH LÀNG” BST MÙA LỄ HỘI', 'thuong-hieu-pantio-trinh-lang-bst-mua-le-hoi', 'Bạn chưa tìm được chiếc đầm dự tiệc cho dịp lễ hội cuối năm? Hãy lựa chọn những thiết kế mới nhất trong BST “Glamourous” đến từ thương hiệu Pantio.Pantio trình làng BS...', '<p><img src=\"https://file.hstatic.net/1000392326/file/4_0fc732bda7184504ab5061e8a1f0fc7c_grande.jpg\" /></p>\r\n\r\n<p>Pantio tr&igrave;nh l&agrave;ng BST &ldquo;Glamourous&rdquo; nh&acirc;n dịp khai trương hai Showroom mới: Linh đ&agrave;m (H&agrave; Nội) v&agrave; Thanh H&oacute;a. Bộ sưu tập sẽ l&agrave; những gợi &yacute; tuyệt vời d&agrave;nh tặng c&aacute;c kh&aacute;ch h&agrave;ng nh&acirc;n dịp m&ugrave;a lễ hội đang đến.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/2_083854c814b344fb9df3ed8bf8f37190_grande.jpg\" /></p>\r\n\r\n<p>M&ugrave;a lễ hội cuối năm sẽ kh&ocirc;ng ho&agrave;n hảo nếu thiếu sắc đỏ. Đ&acirc;y l&agrave; sắc m&agrave;u cực kỳ nổi bật v&agrave; dễ thu h&uacute;t sự ch&uacute; &yacute;. T&ocirc;ng m&agrave;u khơi gợi nhiều cảm x&uacute;c cuồng nhiệt, bởi đỏ được mệnh danh l&agrave; nữ ho&agrave;ng quyến rũ trong vương quốc m&agrave;u sắc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/8_e16b53082fae4f4fb4eeb889ebfcbdb1_grande.jpg\" /></p>\r\n\r\n<p>Ấn tượng với sắc v&agrave;ng nổi bật, phom d&aacute;ng x&ograve;e nhẹ, những đường xếp ly mềm mại, thiết kế n&agrave;y của Pantio sẽ gi&uacute;p chị em ghi điểm tuyệt đối trong c&aacute;c buổi tiệc li&ecirc;n hoan hay sự kiện cuối năm.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/5_eba7583695bc4c7ba6d2b0929f0f36d4_grande.jpg\" /></p>\r\n\r\n<p><strong>&nbsp;</strong></p>\r\n\r\n<p>Với khả năng ph&ugrave; hợp mọi v&oacute;c d&aacute;ng, ho&agrave;n cảnh, chiếc đầm đen l&agrave; sự lựa chọn tuyệt vời, lu&ocirc;n mang đến sự thu h&uacute;t, sang chảnh đầy b&iacute; ẩn cho người mặc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/7_4ac704084cdf40acba1d7d56a59f7b0c_grande.jpg\" /></p>\r\n\r\n<p>Chiếc đầm đu&ocirc;i c&aacute; mang lại n&eacute;t thanh lịch, sang trọng cho ph&aacute;i đẹp. Với thiết kế cổ chữ V rộng, phần ch&acirc;n v&aacute;y hơi x&ograve;e, d&aacute;ng v&aacute;y &ocirc;m s&aacute;t th&acirc;n h&igrave;nh giống như một n&agrave;ng ti&ecirc;n c&aacute; ki&ecirc;u sa, khoe tối đa đường cong cơ thể. Kết hợp với phụ kiện đơn giản, bạn sẽ thể trở n&ecirc;n ho&agrave;n hảo trong mọi bữa tiệc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/10_08304802186b4b699b5e42fe57e066bf_grande.jpg\" /></p>\r\n\r\n<p>Pantio lu&ocirc;n mong muốn mang đến cho giới mộ điệu cơ hội được sử dụng những sản phẩm đẹp, độc đ&aacute;o, chất lượng với gi&aacute; th&agrave;nh hợp l&yacute; v&agrave; được thiết kế đặc biệt t&ocirc;n phom d&aacute;ng của người Việt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/3_0bafdacf46c445a7b06757388d7df5ef_grande.jpg\" /></p>\r\n\r\n<p>Pantio hiện nay c&oacute; hơn 30 Showroom trải khắp Việt Nam v&agrave; đang tiếp tục ph&aacute;t triển mạnh mẽ trong tương lai, đ&aacute;p ứng nhu cầu mặc đẹp của người Việt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/9_1b2dbd4493574361a43da628c4055bba_grande.jpg\" /></p>\r\n\r\n<p>Trong thời gian sắp tới, 5 Showroom: Linh Đ&agrave;m, X&atilde; Đ&agrave;n, Th&aacute;i H&agrave;, Trần Duy Hưng (H&agrave; Nội) v&agrave; Showroom Thanh H&oacute;a của Pantio sẽ ch&iacute;nh thức đi v&agrave;o hoạt động. Với kh&ocirc;ng gian hiện đại c&ugrave;ng c&aacute;c thiết kế mới nhất, trendy nhất, Pantio sẽ mang đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mua sắm tuyệt vời.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/6_9ac8c018b1904ca29b8e9c1c2731483c_grande.jpg\" /></p>', '5_6f387435e581463d8c64985c9f11c892_69092831f7174d16b104ac460054e934_large.webp', '2020-02-29 09:58:47', '2020-02-29 09:58:47'),
(6, 'PANTIO RA MẮT BST ÁO DÀI “NÀNG THƠ TÂN THỜI”', 'pantio-ra-mat-bst-ao-dai-nang-tho-tan-thoi', 'Pantio ra mắt bộ sưu tập “Nàng thơ tân thời” với mong muốn góp phần tô điểm nét duyên dáng cho người phụ nữ và tôn vinh tà áo dài truyền thống của dân tộc.Bộ sưu tập “...', '<p><img src=\"https://file.hstatic.net/1000392326/file/8_6e16f5ef9d7a4e20a07515a0230e1d97_grande.jpg\" /></p>\r\n\r\n<p>Bộ sưu tập &ldquo;N&agrave;ng thơ t&acirc;n thời&rdquo; dựa tr&ecirc;n phom d&aacute;ng truyền thống, họa tiết hoa được khắc họa r&otilde; n&eacute;t tr&ecirc;n t&agrave; &aacute;o, th&acirc;n &aacute;o. Chi tiết cổ &aacute;o v&agrave; c&aacute;nh tay được c&aacute;ch điệu tạo điểm nhấn nh&aacute; nữ t&iacute;nh, duy&ecirc;n d&aacute;ng, kh&ocirc;ng k&eacute;m phần trẻ trung.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/2_fb2858ebec714c569b938d8844619749_grande.jpg\" /></p>\r\n\r\n<p>Chiếc &aacute;o d&agrave;i mềm mại với những b&ocirc;ng hoa hướng dương lung linh trong &aacute;nh nắng sớm ban mai l&agrave; biểu tượng của sự ki&ecirc;n định v&agrave; niềm tin v&agrave;o tương lai tươi s&aacute;ng ở ph&iacute;a trước. Cũng giống như tinh thần của người phụ nữ Việt Nam, lu&ocirc;n tr&agrave;n đầy sức sống v&agrave; y&ecirc;u thương, quan t&acirc;m đến mọi người xung quanh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/9_68b9aec576b14dd1aa8e17bd569d3cf3_grande.jpg\" /></p>\r\n\r\n<p>Với kiểu d&aacute;ng &ocirc;m s&aacute;t cơ thể t&ocirc;n l&ecirc;n đường cong quyến rũ, Pantio sử dụng chất liệu lụa cao cấp c&ugrave;ng họa tiết in 3D sắc n&eacute;t, m&agrave;u sắc đa dạng gi&uacute;p chị em c&oacute; th&ecirc;m nhiều lựa chọn với &aacute;o d&agrave;i truyền thống.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/6_adba3ccfc76e425e84b96e4db615e613_grande.jpg\" /></p>\r\n\r\n<p>Những b&ocirc;ng hoa sen mềm mại trải dọc th&acirc;n &aacute;o, điểm nhấn phần t&agrave; sẽ tạo cảm gi&aacute;c th&acirc;n h&igrave;nh cao r&aacute;o v&agrave; thanh mảnh hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/11_7d6b8dfafeb74484bc29725ab676cba7_grande.jpg\" /></p>\r\n\r\n<p>Pantio mong muốn, BST &Aacute;o d&agrave;i &ldquo; N&agrave;ng thơ t&acirc;n thời&rdquo; với những thiết kế truyền thống đan xem chi tiết hiện đại ph&ugrave; hợp với mọi lứa tuổi sẽ l&agrave; m&oacute;n qu&agrave; &yacute; nghĩa, &nbsp;gi&uacute;p ph&aacute;i đẹp th&ecirc;m phần tự tin, rạng rỡ.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/5_0dad222a3f7e461885b820c33471c4d0_grande.jpg\" /></p>\r\n\r\n<p>Pantio lu&ocirc;n mong muốn mang đến cho giới mộ điệu cơ hội được sử dụng những sản phẩm đẹp, độc đ&aacute;o, chất lượng với gi&aacute; th&agrave;nh hợp l&yacute; v&agrave; được thiết kế đặc biệt t&ocirc;n phom d&aacute;ng của người Việt.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/7_213cd4cdf8fa4373bab26cdf2da8ecca_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/bda50018---988k--bdq0014---398k-_12__fd54e6b044ed4349b863faf168b4bb53_grande.jpg\" /></p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/4_62051de80ba5461d82fa9b41ff728304_grande.jpg\" /></p>', '3_9e85bdc21b13479297875168680fb939_042648b9fa554abaac1901a1c602bf04_large.webp', '2020-02-29 09:59:38', '2020-02-29 09:59:38'),
(7, 'PANTIO RA MẮT BỘ SƯU TẬP “WIND TOUCHING” MỪNG KHAI TRƯƠNG 2 SHOWROOM MỚI', 'pantio-ra-mat-bo-suu-tap-wind-touching-mung-khai-truong-2-showroom-moi', 'Nhằm phục vụ nhu cầu mua sắm ngày càng cao của khách hàng 2 thành phố Hồ Chí Minh và Nha Trang, trong tháng 10, Thương hiệu thời trang Pantio ra mắt BST “Wind Touching...', '<p><img src=\"https://file.hstatic.net/1000392326/file/fas52401_-_598k_-_fjd5674_-_558k___2__613a02a399fa4535bd73a17af9e77ac0_1024x1024.jpg\" />Lấy cảm hứng từ phong c&aacute;ch sang trọng, quyến rũ của qu&yacute; c&ocirc; hiện đại, bộ sưu tập mang t&ecirc;n &ldquo;Wind Touching&rdquo; ra mắt với những mẫu thiết kế đa dạng, hứa hẹn mang đến một l&agrave;n gi&oacute; mới cho ph&aacute;i đẹp cả nước.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/bak52219_-_758k__bjd52219_-_638k____4__f24def18bccd4c1188639dfb88c400e1_1024x1024.jpg\" />Set đồ mang phong c&aacute;ch cổ điển với sắc ghi nh&atilde; nhặn&nbsp;l&agrave; một mẫu thiết kế mang đậm tinh thần của &ldquo;Wind Touching&rdquo;, hướng tới h&igrave;nh ảnh&nbsp;qu&yacute; c&ocirc; cổ điển nhưng mạnh mẽ v&agrave; tinh tế.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/bak52211_-_598k__fjd5669_-_598k__3__3449d092d6ca422694941747506d7d19_1024x1024.jpg\" /></p>\r\n\r\n<p>BST &ldquo;Wind Touching&rdquo; sẽ l&agrave; những c&aacute;i chạm nhẹ nh&agrave;ng v&agrave;o cơn gi&oacute; đầu m&ugrave;a thu của Pantio. Kỹ thuật thiết kế cắt may tỉ mỉ tạo n&ecirc;n form d&aacute;ng hiện đại sẽ mang đến&nbsp;n&eacute;t thanh lịch, sang trọng cho người mặc.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fas52314_-_698k_fjd5669_-_598k__3__61695c19c7ad47429d0abc98b462a438_1024x1024.jpg\" /></p>\r\n\r\n<p>Với chất liệu mềm mại, tho&aacute;ng m&aacute;t c&ugrave;ng kiểu d&aacute;ng trẻ trung, chiếc &aacute;o sơ mi trắng trễ vai mix &amp; match c&ugrave;ng ch&acirc;n v&aacute;y jeans &ocirc;m s&aacute;t t&ocirc;n d&aacute;ng sẽ ph&ugrave; hợp trong nhiều ho&agrave;n cảnh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdp52415_-_1180k__1__66ddd2f7bf8e4431a4ebbcc976c47f82_1024x1024.jpg\" />Mẫu v&aacute;y liền th&acirc;n, c&oacute; độ &ocirc;m vừa phải l&agrave; điển h&igrave;nh cho phong c&aacute;ch thời trang c&ocirc;ng sở. C&aacute;c nh&agrave; thiết kế Pantio tạo điểm nhấn cho trang phục bằng chi tiết những chiếc đinh t&aacute;n trẻ trung, khỏe khoắn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc52538_-_998k__1__deb363835e484e2ea803028fd2291f9f_1024x1024.jpg\" /></p>\r\n\r\n<p>Hai showroom ở Nha Trang v&agrave; Nguyễn Thị Thập, Quận 7 (TP.Hồ Ch&iacute; Minh) l&agrave; c&aacute;c showroom mới của Pantio. Dự định trong thời gian sắp tới, thương hiệu sẽ tiếp tục mở rộng thị trường tr&ecirc;n bản đồ Việt Nam c&ugrave;ng nhiều d&ograve;ng h&agrave;ng mới, đa dạng phục vụ giới y&ecirc;u th&iacute;ch thời trang.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fak51030_-_638k_fqd5723__3__3c701c484617445a94faeb582d780456_1024x1024.jpg\" />C&aacute;c nh&agrave; thiết kế của Pantio lu&ocirc;n thấu hiểu mong muốn của ph&aacute;i đẹp, gi&uacute;p chị em tự tin, ấn tượng hơn khi xuống phố. Chiếc quần Culottes với họa tiết chấm bi c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i v&oacute;c d&aacute;ng cực k&igrave; hiệu quả gi&uacute;p cơ thể trở n&ecirc;n thon gọn, thanh tho&aacute;t hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fas52350_-_558k_fjd5668__3__9387253ef3064e888e52e40201e03410_1024x1024.jpg\" />&Aacute;o sơ mi tay bồng mix &amp; match với ch&acirc;n v&aacute;y chữ A được thiết kế tr&ecirc;n chất liệu vải in hoạ tiết chấm bi khiến c&aacute;c c&ocirc; g&aacute;i trở n&ecirc;n xinh xắn, y&ecirc;u kiều hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fak51030_-_638k_fdc52617__2__61f0b5cd69d14c4e8d5e4fed5779ff64_1024x1024.jpg\" />Những buổi dạo phố cuối ng&agrave;y ch&iacute;nh l&agrave; l&uacute;c để c&aacute;c qu&yacute; c&ocirc; xinh đẹp ph&ocirc; diễn gu thời trang v&agrave; &ldquo;thể hiện&rdquo; bản th&acirc;n trong c&aacute;c trang phục streetstyle đầy c&aacute; t&iacute;nh.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fas52375_fjd5664_-_538k_fdc52540__2__099b89dfa6d0486bbd6d6496a0f66af0_1024x1024.jpg\" /></p>\r\n\r\n<p>Trong tuần lễ khai trương hai showroom, Pantio sẽ c&oacute; rất nhiều ưu đ&atilde;i v&agrave; qu&agrave; tặng đặc biệt d&agrave;nh cho kh&aacute;ch h&agrave;ng tại hai th&agrave;nh phố Nha Trang v&agrave; Hồ Ch&iacute; Minh cũng như kh&aacute;ch h&agrave;ng tr&ecirc;n to&agrave;n hệ thống.</p>', 'fas52401_-_598k_-_fjd5674_-_558k___2__539f2950bcf448e7bb684db63ddcae11_large.webp', '2020-02-29 10:00:28', '2020-02-29 10:01:52'),
(8, 'ANH THƯ – “VỀ NHÀ ĐI CON” RẠNG RỠ SAU SINH CÙNG BST BẢO THANH SPECIAL COLLECTION PART 2 CỦA PANTIO', 'anh-thu-ve-nha-di-con-rang-ro-sau-sinh-cung-bst-bao-thanh-special-collection-part-2-cua-pantio', 'Lấy lại phong độ sau sinh, Anh Thư do diễn viên Bảo Thanh đảm nhận trong bộ phim “Về Nhà Đi Con” hóa quý cô trẻ trung – hiện đại với BST đặc biệt từ thương hiệu thời trang cao cấp Pantio.', '<p><img src=\"https://file.hstatic.net/1000392326/file/fdc32425_-_898k__1__75c29d2be9f944b2bf5204a349cea958_1024x1024.jpg\" /></p>\r\n\r\n<p>Kh&aacute;n giả c&oacute; thể nh&igrave;n thấy những h&igrave;nh ảnh tr&agrave;n đầy sức sống của Anh Thư sau khi sinh cậu con trai đầu l&ograve;ng với Vũ (do nam diễn vi&ecirc;n Quốc Trường đ&oacute;ng vai). Chiếc v&aacute;y xanh hoa nh&iacute; với chất liệu chiffon mềm mại gi&uacute;p nữ diễn vi&ecirc;n trở n&ecirc;n xinh đẹp, dịu d&agrave;ng hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc32420.n.s_-_988k__5__bc58b9d4e1fb45baa3a4a6564ac36385_1024x1024.jpg\" /></p>\r\n\r\n<p>C&ocirc; n&agrave;ng c&ograve;n rất kh&eacute;o l&eacute;o trong việc mix &amp; match trang phục với những m&oacute;n đồ phụ kiện để tạo điểm nhấn cho set đồ. Chiếc v&aacute;y hoa nền v&agrave;ng m&ugrave; tạt được kết hợp ton-sur-ton với t&uacute;i c&oacute;i v&agrave; mũ c&oacute;i - hot trend của m&ugrave;a h&egrave; 2019.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fdc52490-_1380k__1__1cb181da016644ab8bc4b63cd36c78e1_1024x1024.jpg\" /></p>\r\n\r\n<p>Họa tiết&nbsp;kẻ sọc (stripe) l&agrave; lựa chọn th&ocirc;ng minh&nbsp;của nữ diễn vi&ecirc;n s&agrave;nh điệu&nbsp;v&agrave; đam m&ecirc; thời trang. Kẻ sọc dọc c&oacute; t&aacute;c dụng k&eacute;o d&agrave;i v&oacute;c d&aacute;ng cực k&igrave; hiệu quả gi&uacute;p cơ thể trở n&ecirc;n thon gọn, thanh tho&aacute;t hơn.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/fa25069-_258k_-_fqn5235_-498k___4__de75d0216b3a4b4498ff7f7eef5c4390_1024x1024.jpg\" />B&ecirc;n cạnh những mẫu v&aacute;y nhẹ nh&agrave;ng, đằm thắm Bảo Thanh lựa chọn cho vai diễn của m&igrave;nh combo &aacute;o hai d&acirc;y v&agrave; quần short. Đ&acirc;y cũng l&agrave; phong c&aacute;ch đời thường của nữ diễn vi&ecirc;n sinh năm 1990: Lu&ocirc;n năng động v&agrave; tr&agrave;n đầy tự tin.</p>\r\n\r\n<p><img src=\"https://file.hstatic.net/1000392326/file/bas52159d-598k-bjd52159d-_698k__2__5f290d3886f24d5088beb22275a78a9c_1024x1024.jpg\" /></p>', 'web_bao_thanh_19c5f12e597340818c3d82f2f28bd324_large.webp', '2020-02-29 10:01:31', '2020-02-29 10:01:31');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone`, `password`, `level`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Nguyễn Khải', 'vzshop08@gmail.com', '54 Triều Khúc - Thanh Xuân - Hà Nội', '099999999', '$2y$10$71fpqEKtgJSMnaCk9uZ84uc2nIQI0C8ThlBCxFq3D.tvFXIUyIr0.', 1, NULL, '2019-11-02 08:53:11', '2019-11-02 16:11:42'),
(5, 'Nguyễn Khải', 'nbk7545@gmail.com', '54 Triều Khúc - Thanh Xuân - Hà Nội', '0336907979', '$2y$10$iQULrqeSWVik3.5.8CF0c.azCfKdKoS3Uhld00oKiliSoqcf1h5YS', 0, NULL, '2020-01-12 13:32:42', '2020-01-12 13:32:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  ADD PRIMARY KEY (`ban_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`com_id`),
  ADD KEY `tbl_comment_com_product_foreign` (`com_product`);

--
-- Indexes for table `tbl_email`
--
ALTER TABLE `tbl_email`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_email_email_unique` (`email`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`ord_id`),
  ADD KEY `tbl_order_ord_userid_foreign` (`ord_userid`);

--
-- Indexes for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD PRIMARY KEY (`ordt_id`),
  ADD KEY `tbl_order_detail_ordt_order_id_foreign` (`ordt_order_id`),
  ADD KEY `tbl_order_detail_ordt_product_id_foreign` (`ordt_product_id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `tbl_product_prod_category_foreign` (`prod_category`);

--
-- Indexes for table `tbl_trend`
--
ALTER TABLE `tbl_trend`
  ADD PRIMARY KEY (`trend_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_us_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_banner`
--
ALTER TABLE `tbl_banner`
  MODIFY `ban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `com_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_email`
--
ALTER TABLE `tbl_email`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `ord_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  MODIFY `ordt_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `prod_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_trend`
--
ALTER TABLE `tbl_trend`
  MODIFY `trend_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD CONSTRAINT `tbl_comment_com_product_foreign` FOREIGN KEY (`com_product`) REFERENCES `tbl_product` (`prod_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD CONSTRAINT `tbl_order_ord_userid_foreign` FOREIGN KEY (`ord_userid`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_order_detail`
--
ALTER TABLE `tbl_order_detail`
  ADD CONSTRAINT `tbl_order_detail_ordt_order_id_foreign` FOREIGN KEY (`ordt_order_id`) REFERENCES `tbl_order` (`ord_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tbl_order_detail_ordt_product_id_foreign` FOREIGN KEY (`ordt_product_id`) REFERENCES `tbl_product` (`prod_id`) ON DELETE CASCADE;

--
-- Constraints for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD CONSTRAINT `tbl_product_prod_category_foreign` FOREIGN KEY (`prod_category`) REFERENCES `tbl_category` (`cate_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
