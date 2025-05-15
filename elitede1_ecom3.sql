-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2025 at 10:30 AM
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
-- Database: `elitede1_ecom3`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `category_id`, `image`, `link`, `status`, `created_at`, `updated_at`) VALUES
(22, 1, 'public/uploads/banner/1745021027Cover.jpg', '#', 1, '2024-10-10 22:52:17', '2025-04-19 00:03:47'),
(24, 1, 'public/uploads/banner/1745021019Ramadan 107 TK.jpg', '#', 1, '2024-10-10 22:53:14', '2025-04-19 00:03:39'),
(25, 1, 'public/uploads/banner/1745021004Tshirt 107 tk v2.jpg', '#', 1, '2024-10-10 22:53:42', '2025-04-19 00:03:24'),
(29, 1, 'public/uploads/banner/1747206115174422042624436712353_web_denim_shirt_collection_cover.webp', 'test', 1, '2025-05-14 07:01:55', '2025-05-14 07:04:22');

-- --------------------------------------------------------

--
-- Table structure for table `banner_categories`
--

CREATE TABLE `banner_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banner_categories`
--

INSERT INTO `banner_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Slider (1060x395)', 1, '2023-02-21 03:05:14', '2023-10-01 04:15:55'),
(5, 'Slider Bottom Ads (425X212px)', 1, '2023-11-19 04:36:08', '2023-11-19 05:25:34'),
(6, 'Footer Top Ads', 1, '2023-11-19 05:25:46', '2023-11-19 05:25:46'),
(7, 'NEED MD BD', 1, '2024-09-14 03:42:20', '2024-09-16 16:23:17'),
(8, 'TEST', 1, '2024-12-20 17:25:32', '2024-12-20 17:25:32');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `status`, `created_at`, `updated_at`) VALUES
(21, 'Mid Range Fashion', 'mid-range-fashion', 'public/uploads/brand/1745023199-white-background.webp', 1, '2025-04-19 00:40:00', '2025-04-19 00:40:00');

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_one` text DEFAULT NULL,
  `image_two` text DEFAULT NULL,
  `image_three` text DEFAULT NULL,
  `image_four` text DEFAULT NULL,
  `image_five` text DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner_title` longtext DEFAULT NULL,
  `banner` longtext DEFAULT NULL,
  `price` varchar(191) DEFAULT NULL,
  `youtube_video` varchar(191) DEFAULT NULL,
  `upokarita_title` longtext DEFAULT NULL,
  `upokarita_text1` varchar(191) DEFAULT NULL,
  `upokarita_text2` varchar(191) DEFAULT NULL,
  `upokarita_text3` varchar(191) DEFAULT NULL,
  `upokarita_text4` varchar(191) DEFAULT NULL,
  `niyom_tittle` varchar(191) DEFAULT NULL,
  `niyom_text1` varchar(191) DEFAULT NULL,
  `niyom_text2` varchar(191) DEFAULT NULL,
  `niyom_text3` varchar(191) DEFAULT NULL,
  `niyom_text4` varchar(191) DEFAULT NULL,
  `slider_tittle` varchar(191) DEFAULT NULL,
  `details_tittle` varchar(191) DEFAULT NULL,
  `details_text1` varchar(191) DEFAULT NULL,
  `details_text2` varchar(191) DEFAULT NULL,
  `details_text3` varchar(191) DEFAULT NULL,
  `details_text4` varchar(191) DEFAULT NULL,
  `details_text5` varchar(191) DEFAULT NULL,
  `details_text6` varchar(191) DEFAULT NULL,
  `short_details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_reviews`
--

CREATE TABLE `campaign_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `campaign_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `campaign_reviews`
--

INSERT INTO `campaign_reviews` (`id`, `image`, `campaign_id`, `created_at`, `updated_at`) VALUES
(15, 'public/uploads/campaign/1728580252-1708589841-company-rating.png', 1, '2024-10-11 06:10:52', '2024-10-11 06:10:52'),
(16, 'public/uploads/campaign/1734110230-1728580252-1708589841-company-rating.png', 8, '2024-12-13 17:17:10', '2024-12-13 17:17:10'),
(17, 'public/uploads/campaign/1734110265-1728579888-png-transparent-computer-mouse-razer-inc-wireless-video-game-gamer-razer-logo-game-electronics-video-game-removebg-preview.webp', 8, '2024-12-13 17:17:45', '2024-12-13 17:17:45'),
(18, 'public/uploads/campaign/1734110291-1728579644-screenshot_4-(1).webp', 8, '2024-12-13 17:18:11', '2024-12-13 17:18:11'),
(19, 'public/uploads/campaign/1734110321-1728579823-screenshot_6.webp', 8, '2024-12-13 17:18:41', '2024-12-13 17:18:41'),
(20, 'public/uploads/campaign/1734110321-1728579774-screenshot_5.webp', 8, '2024-12-13 17:18:41', '2024-12-13 17:18:41'),
(21, 'public/uploads/campaign/1734110368-2560px-flag_of_bangladesh_1971.s.jpg', 8, '2024-12-13 17:19:28', '2024-12-13 17:19:28');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT 'public/uploads/category/default.png',
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `front_view` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `slug`, `image`, `meta_title`, `meta_description`, `front_view`, `status`, `created_at`, `updated_at`) VALUES
(15, 0, 'Combo Offer', 'combo-offer', 'public/uploads/category/1728559510-screenshot_4.webp', NULL, NULL, 0, 1, '2024-10-10 22:59:20', '2025-04-19 00:34:55'),
(16, 0, 'Premium T-shirt', 'premium-t-shirt', 'public/uploads/category/1728559333-51kncq2xsol._ac_.webp', NULL, NULL, 0, 1, '2024-10-10 23:00:54', '2025-04-19 00:35:55'),
(17, 0, 'Drop Shoulder', 'drop-shoulder', 'public/uploads/category/1745018434-whatsapp-image-2025-02-07-at-8.48.54-pm-(1).webp', NULL, NULL, 0, 1, '2024-10-10 23:07:41', '2025-04-19 00:37:20'),
(18, 0, 'Premium Shirt', 'premium-shirt', 'public/uploads/category/1745018424-whatsapp-image-2025-02-08-at-11.10.29-pm.webp', NULL, NULL, 0, 1, '2024-10-10 23:14:19', '2025-04-19 00:37:48'),
(19, 0, 'Polo T-shirt', 'polo-t-shirt', 'public/uploads/category/1745018414-whatsapp-image-2025-02-07-at-8.48.53-pm.webp', NULL, NULL, 0, 1, '2024-10-10 23:15:19', '2025-05-14 12:30:24'),
(20, 0, 'Denim Jeans', 'denim-jeans', 'public/uploads/category/1745018400-whatsapp-image-2025-02-02-at-9.15.51-pm-(1).webp', NULL, NULL, 0, 1, '2024-10-10 23:16:00', '2025-04-19 00:36:55'),
(21, 0, 'Cargo Pant', 'cargo-pant', 'public/uploads/category/1747227984-whatsapp-image-2025-05-14-at-7.05.43-pm-(1).webp', NULL, NULL, 0, 1, '2024-10-10 23:17:55', '2025-05-14 13:06:25'),
(22, 0, 'Premium Panjabi', 'premium-panjabi', 'public/uploads/category/1747227651-c33e10c8-3674-4528-a05f-848368061a6e.webp', NULL, NULL, 0, 1, '2024-10-10 23:18:30', '2025-05-14 13:00:52'),
(23, 0, 'Premium Belt', 'premium-belt', 'public/uploads/category/1744383081-whatsapp-image-2025-02-07-at-8.48.53-pm.webp', 'premium T-SHIRT', NULL, 0, 1, '2025-04-11 14:51:21', '2025-04-19 00:35:41'),
(24, 0, 'Premium Wallet', 'premium-wallet', 'public/uploads/category/1744385430-whatsapp-image-2025-02-02-at-9.15.51-pm-(1).webp', 'premium T-SHIRT', NULL, 0, 1, '2025-04-11 15:30:30', '2025-04-19 00:35:22');

-- --------------------------------------------------------

--
-- Table structure for table `childcategories`
--

CREATE TABLE `childcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `childcategoryName` varchar(255) NOT NULL DEFAULT 'text',
  `slug` varchar(255) NOT NULL DEFAULT 'text',
  `subcategory_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `childcategories`
--

INSERT INTO `childcategories` (`id`, `childcategoryName`, `slug`, `subcategory_id`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hook', 'hook', 13, 'Hook', NULL, 1, '2024-09-24 15:07:56', '2024-09-24 15:07:56'),
(2, 'Electrical', 'electrical', 13, 'Electrical', NULL, 1, '2024-09-24 15:09:37', '2024-09-24 15:09:37'),
(3, 'Kitchen Rack', 'kitchen-rack', 13, 'Kitchen Rack', NULL, 1, '2024-09-24 15:09:50', '2024-09-24 15:15:06');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `colorName`, `color`, `status`, `created_at`, `updated_at`) VALUES
(32, 'Aqua', '#00FFFF', '1', '2023-11-03 06:04:29', '2023-11-03 09:23:46'),
(35, 'Black', '#000000', '1', '2023-11-03 06:09:13', '2023-11-03 06:09:22'),
(36, 'Bright Blue', '#0096FF', '1', '2023-11-03 06:09:30', '2023-11-03 06:09:38'),
(39, 'Coral', '#FF7F50', '1', '2023-11-03 06:10:23', '2023-11-03 06:10:31'),
(40, 'Gray', '#999999', '1', '2023-11-03 06:10:40', '2023-11-03 06:10:48'),
(41, 'Green', '#008000', '1', '2023-11-03 06:10:57', '2023-11-03 06:11:05'),
(42, 'Hot Pink', '#FF69B4', '1', '2023-11-03 06:11:24', '2023-11-03 06:11:29'),
(44, 'Pink', '#FFC0CB', '1', '2023-11-03 06:12:03', '2023-11-03 08:50:43'),
(48, 'Magenta', '#FF00FF', '1', '2023-11-03 06:13:28', '2023-11-03 06:13:39'),
(49, 'Maroon', '#990000', '1', '2023-11-03 06:13:51', '2023-11-03 06:14:00'),
(50, 'Grass Green', '#7CFC00', '1', '2023-11-03 06:14:14', '2023-11-03 06:59:07'),
(51, 'Navy', '#000080', '1', '2023-11-03 06:14:30', '2023-11-03 06:14:41'),
(52, 'Blue', '#0000FF', '1', '2023-11-03 06:15:01', '2023-11-03 09:53:12'),
(53, 'Olive', '#808000', '1', '2023-11-03 06:15:26', '2023-11-03 06:15:37'),
(54, 'Orange', '#FFA500', '1', '2023-11-03 06:15:46', '2023-11-03 06:15:58'),
(55, 'Yellow Orange', '#FFAA33', '1', '2023-11-03 06:16:17', '2023-11-03 07:03:16'),
(56, 'Orchid', '#DA70D6', '1', '2023-11-03 06:16:35', '2023-11-03 06:16:42'),
(58, 'Purple Heart', '#8b1ec4', '1', '2023-11-03 06:17:09', '2023-11-03 06:17:20'),
(59, 'Red', '#FF0000', '1', '2023-11-03 06:17:30', '2023-11-03 06:17:42'),
(60, 'Canary Yellow', '#FFFF8F', '1', '2023-11-03 06:17:51', '2023-11-03 08:24:41'),
(61, 'Salmon', '#FA8072', '1', '2023-11-03 06:18:13', '2023-11-03 06:18:24'),
(62, 'White', '#000000', '1', '2023-11-03 06:18:44', '2025-04-11 15:21:37'),
(63, 'Gold', '#FFD700', '1', '2023-11-03 06:19:02', '2023-11-03 07:08:05'),
(64, 'Crimson', '#DC143C', '1', '2023-11-03 06:37:11', '2023-11-03 09:19:11'),
(65, 'Silver', '#C0C0C0', '1', '2023-11-03 06:40:45', '2023-11-03 09:11:55'),
(67, 'Light Orange', '#FFD580', '1', '2023-11-03 07:13:52', '2023-11-03 07:14:03'),
(68, 'Navajo White', '#FFDEAD', '1', '2023-11-03 07:15:18', '2023-11-03 08:16:20'),
(69, 'Pumpkin Orange', '#FF7518', '1', '2023-11-03 07:17:29', '2023-11-03 07:17:38'),
(70, 'Chocolate', '#D2691E', '1', '2023-11-03 08:01:35', '2023-11-03 08:34:09'),
(73, 'Biscuit', '#FAD7A0', '1', '2023-11-03 09:09:43', '2023-11-03 09:10:20'),
(74, 'Wooden', '#c3a26e', '1', '2024-09-23 04:36:26', '2024-09-23 04:36:26'),
(75, 'Bottle green', '#074221', '1', '2024-09-27 13:55:35', '2024-09-27 13:55:35'),
(76, 'Baby pink', '#efbfd7', '1', '2024-09-27 13:56:02', '2024-09-27 13:56:02'),
(77, 'Deep Green', '#0b6e19', '1', '2024-09-27 13:56:17', '2024-09-27 13:56:17'),
(79, 'sea green', '#053c53', '1', '2024-09-27 13:57:16', '2024-09-27 13:57:16'),
(80, 'Feroza', '#2f878e', '1', '2024-09-27 13:57:59', '2024-09-27 13:57:59'),
(81, 'deep majenda', '#b32373', '1', '2024-09-27 13:58:25', '2024-09-27 13:58:25'),
(82, 'pest', '#acdcf0', '1', '2024-10-08 15:19:57', '2024-10-08 15:19:57'),
(83, 'pine', '#14647b', '1', '2024-10-08 15:21:15', '2024-10-08 15:21:15');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `hotline` varchar(50) DEFAULT NULL,
  `hotmail` varchar(50) DEFAULT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `maplink` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `hotline`, `hotmail`, `phone`, `email`, `address`, `maplink`, `status`, `created_at`, `updated_at`) VALUES
(1, '01622224990', 'midrange.business@gmail.com', '01622224990', 'midrange.business@gmail.com', 'Charbhadrasan bazar, Faridpur, Dhaka, Bangladesh', '#', 1, '2023-01-22 10:35:29', '2025-04-11 15:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `courierapis`
--

CREATE TABLE `courierapis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `secret_key` varchar(155) DEFAULT NULL,
  `url` varchar(99) DEFAULT NULL,
  `token` text DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courierapis`
--

INSERT INTO `courierapis` (`id`, `type`, `api_key`, `secret_key`, `url`, `token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'steadfast', '6bj4tltvc0tot7m1kvyze1aenpprawff', 'gtealqr9ttcbc4sg4shrissu', 'https://portal.packzy.com/api/v1/create_order', '', '1', '2024-02-06 11:29:46', '2024-12-18 12:02:50'),
(2, 'pathao', '', '', 'https://api-hermes.pathao.com/aladdin', 'H3bW5MNFPf8LlrVLKly0WEs61yfvSmqEDlnNdcf6', '0', '2024-02-06 11:29:46', '2024-12-18 12:01:14');

-- --------------------------------------------------------

--
-- Table structure for table `create_pages`
--

CREATE TABLE `create_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `create_pages`
--

INSERT INTO `create_pages` (`id`, `name`, `slug`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Order procedure', 'order-procedure', 'Order procedure', 'Just let us know We will Reach you', 1, '2023-10-04 07:02:30', '2023-11-26 18:58:27'),
(3, 'Delivery Rules', 'delivery-rules', 'Delivery Rules', '<p><br></p>', 1, '2023-10-04 07:03:00', '2024-01-15 17:41:53'),
(5, 'Return Policy', 'return-policy', 'Return Policy', '<div class=\"\" data-block=\"true\" data-editor=\"dikgb\" data-offset-key=\"a2ko6-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space-collapse: preserve;\"><div data-offset-key=\"a2ko6-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"a2ko6-0-0\" style=\"font-family: inherit;\">রিটার্ন এবং রি-ফান্ড পলিসিঃ</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"dikgb\" data-offset-key=\"bokf-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space-collapse: preserve;\"><div data-offset-key=\"bokf-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"bokf-0-0\" style=\"font-family: inherit;\">আমরা Need Me BD এর মাধ্যমে যেহেতু ঢাকা সহ সারা বাংলাদেশ এ ডেলিভারি করে থাকি, যদি কোন প্রকার সমস্যা হয় যেমনঃ কালার বা ডিজাইনের কোন সমস্যা অথবা একটা প্রডাক্ট এর জায়গায় অন্য একটা প্রডাক্ট চলে যাওয়া অথবা প্রডাক্টে কোন সমস্যা থাকে, আপনি ২৪ ঘন্টার মধ্যে আমাদের সাথে যোগাযোগ করবেন এবং আপনার সমস্যাটি আমাদেরকে বললে আমাদের কাছে যদি উক্ত প্রডাক্টটি stock এ থাকে তখন আমরা আপনাদের হাতে উক্ত প্রডাক্ট টি পৌঁছে যাবে ৫ কর্মদিবসের মধ্যে এবং উক্ত প্রডাক্ট টি যদি available না থাকে সে ক্ষেত্রে আমরা ৫ কর্মদিবসের মধ্যে বিকাশ বা ব্যাংকের মাধ্যমে আপনার টাকা আপনার কাছে পৌছে দিব।</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"dikgb\" data-offset-key=\"amcg2-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space-collapse: preserve;\"><div data-offset-key=\"amcg2-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"amcg2-0-0\" style=\"font-family: inherit;\">বিশেষ দ্রষ্টব্যঃ</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"dikgb\" data-offset-key=\"ec7t6-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space-collapse: preserve;\"><div data-offset-key=\"ec7t6-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"ec7t6-0-0\" style=\"font-family: inherit;\">ডেলিভারির ২৪ ঘন্টার মধ্যে যোগাযোগ না করা হলে, সেক্ষেত্রে আপনার কোন অভিযোগ ই গ্রহনযোগ্য হবে না।</span></div></div><div class=\"\" data-block=\"true\" data-editor=\"dikgb\" data-offset-key=\"c6t0r-0-0\" style=\"font-family: &quot;Segoe UI Historic&quot;, &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif; color: rgb(28, 30, 33); white-space-collapse: preserve;\"><div data-offset-key=\"c6t0r-0-0\" class=\"_1mf _1mj\" style=\"position: relative; direction: ltr; font-family: inherit;\"><span data-offset-key=\"c6t0r-0-0\" style=\"font-family: inherit;\">প্রডাক্ট এর কোন সমস্যা ব্যাতিতো আমরা কখনই প্রডাক্ট রিটার্ন বা এক্সচেঞ্জ করে থাকিনা।</span></div></div>', 1, '2023-10-04 07:03:42', '2024-09-15 04:41:49'),
(6, 'Terms of Service', 'terms-of-service', 'Terms of Service', '<p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">Need Me BD is an e-commerce platform (“we”, “us”, or “our”). These Terms and Conditions govern your use of our website and services. By using our website and services, you agree to these terms. If you do not agree to these terms, please do not use our website or services.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Use of Our Website</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">You may use our website for lawful purposes only. You may not use our website to engage in fraudulent or illegal activities. You must also comply with all applicable laws and regulations in Dhaka, Bangladesh.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Products Services</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We offer a variety of products and services on our website. We reserve the right to modify, suspend, or discontinue any product or service without prior notice. All descriptions, images, and prices of products and services are subject to change without notice.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Ordering and Payment</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">You may place an order for products and services on our website. All orders are subject to acceptance by us. We reserve the right to refuse any order for any reason. You must provide accurate and complete information when placing an order. We accept various forms of payment, including credit cards and online payment services. You are responsible for any fees or charges associated with your chosen payment method.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Shipping and Delivery</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We ship our products to the address you provide when placing your order. We use reasonable efforts to ship products in a timely manner, but we cannot guarantee delivery dates or times. We are not responsible for any delays or errors caused by shipping carriers. You are responsible for any taxes, customs duties, or other fees associated with shipping and delivery in Dhaka, Bangladesh.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Returns and Refunds</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We accept returns and offer refunds for all products in accordance with our Return Policy, which will be available on our website. You must comply with our Return Policy in order to return a product or request a refund.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Intellectual Property</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We own all intellectual property rights in our website and services, including but not limited to trademarks, copyrights, and patents. You may not use our intellectual property without our prior written consent.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Disclaimer of Warranties</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We make no representations or warranties regarding our website or services. We provide our website and services “as is” and “as available” without any warranty, express or implied. We disclaim all warranties, including but not limited to warranties of merchantability, fitness for a particular purpose, and non-infringement.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Limitation of Liability</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We are not liable for any direct, indirect, incidental, special, or consequential damages arising out of or in connection with your use of our website or services, even if we have been advised of the possibility of such damages. Our liability to you is limited to the amount you paid for the product or service at issue.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Indemnification</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">You agree to indemnify and hold us harmless from any claims, damages, losses, liabilities, and expenses (including reasonable attorneys’ fees) arising out of or in connection with your use of our website or services, your breach of these Terms and Conditions, or your violation of any applicable law or regulation in Dhaka, Bangladesh.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Governing Law and Jurisdiction</strong></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">These Terms and Conditions are governed by the laws of Bangladesh, without regard to its conflict of law provisions. Any dispute arising out of or in connection with these Terms and Conditions shall be resolved exclusively by the courts located in Bangladesh.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><strong>Changes to these Terms and Conditions</strong></p><p style=\"margin-bottom: 0px; color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We may modify these Terms and Conditions from time to time. We will notify you of any material changes to these terms</p>', 1, '2023-10-04 07:04:05', '2024-09-15 04:40:54'),
(7, 'Privacy Policy', 'privacy-policy', 'Privacy Policy', 'GO MOBILE BD', 1, '2023-10-04 07:04:19', '2024-10-11 07:12:05'),
(8, 'Shipping Policy', 'shipping-policy', 'Shipping Policy', '<p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><span data-mce-fragment=\"1\">Dear valued customer,</span></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\"><span data-mce-fragment=\"1\">অর্ডার সম্পর্কিত নিয়মাবলী</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">ডেলিভারী চার্জঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">ঢাকা সিটির মধ্যে ডেলিভারি চার্জ ৭০ টাকা।</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">ঢাকার বাইরে সব স্থানে ডেলিভারি চার্জ ১৩০ টাকা। পণ্য অর্ডারের ক্ষেত্রে ডেলিভারী চার্জটি আগে বিকাশ করতে হবে না তবে কর্তৃপক্ষ বিকাশ নেওয়ার অধিকার রাখে। বাকি টাকা প্রোডাক্ট রিসিভ করার পর দিতে হবে।</span><br data-mce-fragment=\"1\"><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">আমাদের ডেলিভারী প্রসেসঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">আমাদের নিজস্ব ডেলিভারী ম্যান নেই। আমরা থার্ড পার্টি সার্ভিস (পাঠাও, স্টেডফাস্ট) দ্বারা ডেলিভারী দিয়ে থাকি। তাই আমরা ২ থেকে ৪ দিন সময় নিয়ে থাকি।</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">অনুগ্রহ করে আপনার মোবাইল চালু রাখবেন। ডেলিভারী ম্যান আপনাকে কল দিলে অনুগ্রহ করে পণ্যটি সংগ্রহ করে নিবেন।</span><br data-mce-fragment=\"1\"><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">ডেলিভারীর সময় করণীয়ঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">যেহেতু আমরা থার্ড পার্টি ডেলিভারী সার্ভিস দ্বারা পণ্য ডেলিভারী দিয়ে থাকি, তাই অনুগ্রহ করে ডেলিভারী নেওয়ার সময় পণ্যটি চেক করে নিবেন।</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">পণ্যে কোন ত্রুটি দেখলে বা ভুল পণ্য পেলে বা পণ্য সংখ্যা ঠিক না থাকলে, অনুগ্রহ করে ডেলিভারী ম্যানের সামনে থাকা অবস্থায় আমাদেরকে জানাতে হবে (01835–973134 সকাল ১০ টা থেকে রাত ৮ টা)।</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">ডেলিভারী ম্যান চলে গেলে পণ্যটি ফেরত আনা অথবা পাল্টে দেয়া আমাদের জন্য কষ্ট সাধ্য হয়ে যায়।</span><br data-mce-fragment=\"1\"><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">পার্সেল খুলে ফেলার পরেঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">পার্সেল খুলে ফেলার পরে তাতে কোন সমস্যা থাকলে সেটি আমরা ফ্রি তে রিপ্লেস করে দেবো দ্রুততম সময়ের মধ্যে।</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">পণ্যের ইমেজ এবং ভিডিওঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">আমাদের ফেসবুক পেজ এ সকল পণ্যের রিয়েল ইমেজ এবং ভিডিও দেয়া আছে। আপনি চাইলে আমাদের সাপোর্ট টিম আবারও ইমেজ কিংবা ভিডিও সরবরাহ করবে।</span><br data-mce-fragment=\"1\"><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">রিটার্ন করার জন্যঃ</span><br data-mce-fragment=\"1\"><span data-mce-fragment=\"1\">প্যাকেট খুলে ফেলার পরে তাতে কোন ত্রুটি থাকলে সেটা আমরা ফ্রি তে রিপ্লেস অথবা রিফান্ড করে দেবো কিন্তু সেক্ষেত্রে পণ্যটি আমাদের কাছে রিটার্ন করতে হবে। পণ্য পছন্দ না হলে বা অকারণে পার্সেল রিটার্ন করলে ডেলিভারী চার্জ অবশ্যই দিতে হবে।</span></p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">We are thrilled that you have chosen to shop with us! We understand how important it is to receive your order in a timely and efficient manner, which is why we offer several delivery options to fit your needs.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">Our standard delivery option typically takes 3-5 business days to arrive once your order has been processed and shipped. We use reliable shipping carriers to ensure that your package arrives safely and on time.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">Please note that delivery times may vary based on factors beyond our control, such as weather conditions or unexpected delays in shipping carrier\'s delivery schedules.</p><p style=\"color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">If you have any questions or concerns about your delivery, please don\'t hesitate to contact our customer service team. We are always here to help!</p><p style=\"margin-bottom: 0px; color: rgba(17, 21, 28, 0.75); font-family: Poppins, sans-serif; font-size: 16px; letter-spacing: 0.6px;\">Thank you for shopping with us, and we hope you enjoy your purchase!</p>', 1, '2024-09-15 04:38:57', '2024-09-15 04:38:57'),
(9, 'New Offer', 'new-offer', 'New Offer', '<p>New Offer<br></p>', 1, '2024-12-20 17:29:01', '2024-12-20 17:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `email` varchar(55) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `verify` int(11) DEFAULT NULL,
  `forgot` varchar(11) DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT 'public/uploads/default/user.png',
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `slug`, `phone`, `email`, `district`, `area`, `address`, `verify`, `forgot`, `image`, `password`, `remember_token`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Mobile Application', 'Mobile Application', '01738154732', NULL, NULL, NULL, NULL, 1, '4507', 'public/uploads/default/user.png', '$2y$10$O/YX84euUCyyFSFKyLPwkOga5pZXdPsvCsOqt7eQpAPEMeL.Rj8ti', NULL, 'active', '2023-11-26 13:35:21', '2024-02-06 05:25:23'),
(18, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154731', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5TykOXa89b0ex.l08afOvO6zzI0Mvo1PwHqY9/NlKd3I12eopVFPC', NULL, 'active', '2024-05-27 11:57:33', '2024-05-27 11:57:33'),
(19, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01738154732', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ECkkJpoBBBw2KcZO7PK0jeLpOzcSn4hsD0qh4xxMhyI62j6SsDO/.', NULL, 'active', '2024-05-27 16:43:04', '2024-05-27 16:43:04'),
(20, 'Rashed Islam', 'Rashed Islam', '01763095059', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tSNW0knSN7vc2HCx96U0AeZA3xZrtBYNbrBq135gW2XEwU1b7rfRC', NULL, 'active', '2024-05-29 19:18:14', '2024-05-29 19:18:14'),
(21, 'Rashed Islam', 'rashed-islam-21', '01763095058', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cnKpmojL7JX3uAqRxJs5XeA1jmbjoEA8iVFhEhI3/2pYfMltzypWu', NULL, 'active', '2024-05-29 19:20:58', '2024-05-29 19:20:58'),
(22, 'Md Ajijul Islam', 'md-ajijul-islam-22', '01988634680', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Pq7rnXsH1o7dP6sne98PS.iuHukei5O96LOkoLAe6D6qDUOcbyyhC', NULL, 'active', '2024-05-29 21:20:24', '2024-05-29 21:20:24'),
(23, 'Jjjhg', 'Jjjhg', '09766876578', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vQRD/Zo/x8UekfzC74t0nuhavZLk61KXMhd89sfIDfKn9Ai4.QJ0m', NULL, 'active', '2024-05-29 22:13:19', '2024-05-29 22:13:19'),
(24, 'Arefin', 'Arefin', '01733055211', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fgIFPVqdhzUYMbAFluYp6O4aqnnkm/6YXwXAf7uT9U4/dPVxYql6G', NULL, 'active', '2024-05-31 01:06:09', '2024-05-31 01:06:09'),
(25, 'hb medul', 'hb-medul-25', '01774364116', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LJhfzNE6539BCC0rB/i6MOuOkR8fTRG9mVVmg0FUmOfmR0xiBhrLS', NULL, 'active', '2024-05-31 14:59:09', '2024-05-31 14:59:09'),
(26, 'MD HABIBUL BASAR', 'MD HABIBUL BASAR', '01774364115', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5RV6ptm4nDjDH2j2NriCwu6qvE1sJ.C5DJWJUAiY/FKnI/y1Ljs4y', NULL, 'active', '2024-05-31 15:19:45', '2024-05-31 15:19:45'),
(27, '345', '345', '01903845533', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AyTPno3LSmx9ChzDf98YHOASyS4ucMgGTiE7ydv92nQqonNWD4FOy', NULL, 'active', '2024-06-03 12:05:07', '2024-06-03 12:05:07'),
(28, '24323', '24323', '01903823423', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qHBMJZbIdZW5JynLxH./jOF19MA9cFOK0UdbGgWJ9DD.lrv5UAhni', NULL, 'active', '2024-06-03 12:05:42', '2024-06-03 12:05:42'),
(29, 'Shihab Sarker', 'shihab-sarker-29', '01927101320', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$s77j/1kbCsMRcp8KSBTMgumInFMEpYcK4VDeejN0lBdF2aA5DH0Xi', NULL, 'active', '2024-06-04 23:41:01', '2024-06-04 23:41:01'),
(30, 'hb medul', 'hb-medul-30', '01738154733', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$tvGJc2nBzR0Nmhslrnu2iusWnt5kzTJznKZTeC0JT1aJs18i73W36', NULL, 'active', '2024-06-05 02:11:58', '2024-06-05 02:11:58'),
(31, 'Raju Ahammed', 'raju-ahammed-31', '01945158892', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$vpOkWwtwpCEDdQelxT6w3OQJTNLn8WXwWTG5QX36V3dHS2/BIrHD.', NULL, 'active', '2024-06-23 15:33:46', '2024-06-23 15:33:46'),
(32, 'Md Masudur Rahman', 'Md Masudur Rahman', '01648114141', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$r1NEoMs1OaHqXKlANsGi3uxCJaBJ86PiWduZZV1YS.mZyHeIhbDDS', NULL, 'active', '2024-06-25 08:44:24', '2024-06-25 08:44:24'),
(33, 'Md Masudur Rahman', 'Md Masudur Rahman', '01712554769', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$nyGFJOpTQUN6YKpH1TutY.H8sADNhyuinSZCWPelInBkUAjXzYK9a', NULL, 'active', '2024-06-25 08:46:04', '2024-06-25 08:46:04'),
(34, 'hth', 'hth', '01753048343', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$sz1dsJ1T5Nsn/tzWaDU5RuITf0QNlfOe.WPeM30EHlh/slZZEIY1u', NULL, 'active', '2024-07-04 00:20:27', '2024-07-04 00:20:27'),
(35, 'demo', 'demo-35', '01751155302', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NOUo6/ivmNkxULPm4WupIuQ6IR11YzniZPVEtyeMoVqqzNdBPdlRK', NULL, 'active', '2024-09-11 23:31:47', '2024-09-11 23:31:47'),
(36, 'aa', 'aa', '01717456089', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZlTOoTkOR3GARwGssXZsZOYBKhEWn9VxWHs9S1J8eKgQxHi0VS7qS', NULL, 'active', '2024-09-15 04:50:48', '2024-09-15 04:50:48'),
(37, 'CropTop Blouse - Full body full sleeve', 'CropTop Blouse - Full body full sleeve', '01835973134', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dpiTFwnHEBDSkGUMyqRPNedbvMmhoAfrL4G81L9ft4sfuQ3zqCZXy', NULL, 'active', '2024-09-20 09:01:34', '2024-09-20 09:01:34'),
(38, 'Md Samim Mia', 'Md Samim Mia', '01740246927', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$E9HZMOakJ5WXKNd2Xy5KVeWTifqobOj/m/s8oU8UWyJMvKi9XGSoO', NULL, 'active', '2024-09-20 17:17:18', '2024-09-20 17:17:18'),
(39, 'hadiul safew', 'hadiul safew', '01843178908', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$le8uHNdZDbw7O3r9KhdRx.pt4D7WWOxuE1zGZvXl1eucr6gWs0AI2', NULL, 'active', '2024-09-20 17:59:59', '2024-09-20 17:59:59'),
(40, 'Taspia Tamrin Meem', 'Taspia Tamrin Meem', '01608289770', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cRKRU5v4VlPTlodFUXT9IO95CWHCAEPbtid3Jkd.SAPvrnnkFUCtS', NULL, 'active', '2024-09-21 10:27:20', '2024-09-21 10:27:20'),
(41, 'কামরুজ্জাম', 'কামরুজ্জাম', '01768443042', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aCPPSdGGC00Y/zqL3J.WRerfi04FVST82vVv364Hn8NQNCbFynIpW', NULL, 'active', '2024-09-23 11:32:59', '2024-09-23 11:32:59'),
(42, 'Jibon', 'Jibon', '01715556860', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dZtV7AGaeMH58eBQdF.rA.fxzbSHt21Fe8XvUL/SSjb6jW9s4OdQm', NULL, 'active', '2024-09-23 15:33:42', '2024-09-23 15:33:42'),
(43, 'Kamrun Kamrun Nahar', 'Kamrun Kamrun Nahar', '01829324324', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$n9SJBTzc9wVOijvzBRmC0OGtb2ffiJLdoE4CxnIkfVAk031TjM2v.', NULL, 'active', '2024-09-23 18:33:37', '2024-09-23 18:33:37'),
(44, 'Fatema Haque', 'Fatema Haque', '01714230873', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$y/ThWTyPwxAwF4qiKWFDqORBhKCff5/ZAqZ94/pIiQUcdEbkc9jwi', NULL, 'active', '2024-09-24 10:39:45', '2024-09-24 10:39:45'),
(45, 'aliza', 'aliza', '01763577554', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ce.kDYBXIxB0laa81alLNOvz0yAW11qVXBQ19jxj6LMRzKsG0/7Ua', NULL, 'active', '2024-09-25 08:14:08', '2024-09-25 08:14:08'),
(46, 'Mdnur Amin', 'Mdnur Amin', '01980984975', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$loKjfybxUbNwRaTLhXXvzOznsrFqajIbOYhHZFDolMoCfxdi6GHZ.', NULL, 'active', '2024-09-25 13:27:36', '2024-09-25 13:27:36'),
(47, 'Dipu', 'Dipu', '01676404745', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lYcI8ZJhvta7fGIWUP8v5.ZaxnPrGGx4sTsy4wc9CL7MGGziHUjoa', NULL, 'active', '2024-09-25 14:03:47', '2024-09-25 14:03:47'),
(48, 'Arifa tanjin', 'Arifa tanjin', '01721353263', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$CplpvctpwAybKnB5Mf219ulWrZbe.FGeyvjSxF2ofJBXJBVzW5mpO', NULL, 'active', '2024-09-25 16:13:02', '2024-09-25 16:13:02'),
(49, 'Lazina', 'Lazina', '01772265990', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$t/IDwsP6mzycosgWa9JNPuuGPqvOjPrG3YXKmhBiF9buwJQvuoL7.', NULL, 'active', '2024-09-25 17:37:54', '2024-09-25 17:37:54'),
(50, 'Fariha', 'Fariha', '01793592671', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Q1KoFvwWOcTTSMrgrdCf8uS/K0A2CVsNqtgbrPrYSdxYQ2ha4KHB6', NULL, 'active', '2024-09-25 18:01:25', '2024-09-25 18:01:25'),
(51, 'Taslima Anam', 'Taslima Anam', '01712558488', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yTLirm.DEP9YtVKfR1N19.jt/Ud1ad8rWjy.9m9QarwbTmMS7TIXG', NULL, 'active', '2024-09-25 18:31:18', '2024-09-25 18:31:18'),
(52, 'Alomgir Molla', 'Alomgir Molla', '01706680963', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PcdJ0gPPcSMpxfzhhE3.BeJ3uvvEiKBddleIp0osW.Q.jsxGSsvHu', NULL, 'active', '2024-09-26 02:47:38', '2024-09-26 02:47:38'),
(53, 'মো: শওকত আলী খান।', 'মো: শওকত আলী খান।', '01919423042', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Q3CjqDzInV63faQctqciM.RmxJSCgl.AQoZ3w.JI4DdEynGrmaYTS', NULL, 'active', '2024-09-26 04:00:47', '2024-09-26 04:00:47'),
(54, 'রতন ভান্ডারী', 'রতন ভান্ডারী', '01627570241', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lwpL.CXxhEedBhLPGIqWyOM4NlfpK72c9mkBdZmXZtizXVWHBeXCK', NULL, 'active', '2024-09-26 16:23:47', '2024-09-26 16:23:47'),
(55, 'ওয়াহিদ ইসলাম', 'ওয়াহিদ ইসলাম', '01722807551', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$d9D6P/Jq2GYPfX/SvVpjnubOuDSF.p52mRDuWUdTAjPLcPSj35aFq', NULL, 'active', '2024-09-26 16:45:47', '2024-09-26 16:45:47'),
(56, 'পায়েল', 'পায়েল', '01777855852', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6P.mcsoamv7chsH1IZuhmejSLK2zFsand5H0RBghm5i9aNrn7fJV2', NULL, 'active', '2024-09-27 03:39:53', '2024-09-27 03:39:53'),
(57, 'Amina Rupa', 'Amina Rupa', '01813108134', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HDurgAdQeWUhOHKRUuWCW.eUOkOEx1f6k/cpAWxzdmlotGfZ6vk4S', NULL, 'active', '2024-09-27 17:59:55', '2024-09-27 17:59:55'),
(58, 'Sumaya Afroz', 'Sumaya Afroz', '01319834288', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rsFIJW4A9fzy0tpYPaAU/eLZpKxQ3DF1gvI1.WSXblFfWv/AyLVHS', NULL, 'active', '2024-09-28 01:40:16', '2024-09-28 01:40:16'),
(59, 'Trishna', 'Trishna', '01713494419', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3C/B4T5eRTvdt9WCShqGS.tnolwHz78WK5AS/b6fNvF/HZy5mArpi', NULL, 'active', '2024-09-28 04:04:01', '2024-09-28 04:04:01'),
(60, 'Alamgir', 'Alamgir', '01814299442', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mMDEK1LY3MN0A0NgxrTScO1o15zPVjfeYnTDwps/U6EoUoqzBPYMu', NULL, 'active', '2024-09-28 11:11:53', '2024-09-28 11:11:53'),
(61, 'Tanvirul Islam Mahim', 'Tanvirul Islam Mahim', '01678116063', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$t8f0b3iMF4c5mzNC00FPJOxD1U0XhwsAMPxTM3aFMuG5ejjUYlP7W', NULL, 'active', '2024-09-28 18:07:48', '2024-09-28 18:07:48'),
(62, 'Sohel Rana', 'Sohel Rana', '01717425278', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D1pCRMBCTA770FKz1gRFC.feSw2yC3Fnm8kxQ88zpR0KDW8bxqnCG', NULL, 'active', '2024-09-29 04:09:43', '2024-09-29 04:09:43'),
(63, 'Forkan Ahammad', 'Forkan Ahammad', '01313088974', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qKDIs694wcJ0ASCoxFFUy./zO7u.J9QHLEiFa4Ag1VUl/gyUJGVXi', NULL, 'active', '2024-09-29 05:42:11', '2024-09-29 05:42:11'),
(64, 'shafiqul Islam', 'shafiqul Islam', '01303239674', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$D/ubKGAiRClbITos3DXhSeUhQJpaoOChU2fMKgxr2zodnYRELZXTm', NULL, 'active', '2024-09-29 07:55:44', '2024-09-29 07:55:44'),
(65, 'জসিম চৌধুরী', 'জসিম চৌধুরী', '01812076991', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$0jNRN8olkXoa4tbc72afh.n4bTigmglb32hNIIoFZOswHFYonHNsu', NULL, 'active', '2024-10-02 03:58:48', '2024-10-02 03:58:48'),
(66, 'Nupur saha', 'Nupur saha', '01775699448', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jufIDnvOWFGbyeSIjDv/9O9shC8Sb3IwgEKb5Nl8ozurZmpK4Yv0W', NULL, 'active', '2024-10-02 05:03:52', '2024-10-02 05:03:52'),
(67, 'Tahmina Islam', 'Tahmina Islam', '01986179103', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$p96txPy/4v6IueTfegtNy.WT5uD/OPnm612PxtifkWb.Xdgq5orRi', NULL, 'active', '2024-10-02 05:21:10', '2024-10-02 05:21:10'),
(68, 'Rina', 'Rina', '01755286468', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oWXh11NkZVD.GU4RNcky6eGU2ehC1GSm4Z5Sa51L/Oq/uALk9yk9a', NULL, 'active', '2024-10-02 15:54:34', '2024-10-02 15:54:34'),
(69, 'Maswood Hasan', 'Maswood Hasan', '01841005070', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3Sa.PrrChf.KBXTDaSQXJuZj/GIGTp7mac6yyuzqfqrgNHWtUB.ci', NULL, 'active', '2024-10-03 16:29:55', '2024-10-03 16:29:55'),
(70, 'Dr.Sanjida Akter', 'Dr.Sanjida Akter', '01681943099', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lfETx8khRvj0N1DVhtO4mOaYF4o.3oWtWGtOHBly0joOdbgsIGlBu', NULL, 'active', '2024-10-03 17:01:16', '2024-10-03 17:01:16'),
(71, 'Asha', 'Asha', '01718946969', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$b4FtCFoA8DSuvCeT3.IxoumdDo1DI4E/eWd/ZbY3MvbSAtLx3t.Se', NULL, 'active', '2024-10-04 03:12:19', '2024-10-04 03:12:19'),
(72, 'Abdul hamid Bijoy', 'Abdul hamid Bijoy', '01647259339', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$42Zu1M1PbVWiyTnOX4vnG.IryJjHIXKDPM3vNXimKG0nEIRPRWiJ6', NULL, 'active', '2024-10-04 05:44:19', '2024-10-04 05:44:19'),
(73, 'Labone Khanam', 'Labone Khanam', '01680610556', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wbaYjXe5Nb46ZYhovelVxOBWHTJsQdA9oGbivVg3Fz9Hk9Zna.kvq', NULL, 'active', '2024-10-04 05:48:50', '2024-10-04 05:48:50'),
(74, 'খোকন ইকবাল', 'খোকন ইকবাল', '01711900893', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$b/3YofcmPP/4WveBnnsPXuQz6/kxo0vhKhXrAODRjezViVobSwtuS', NULL, 'active', '2024-10-04 14:52:33', '2024-10-04 14:52:33'),
(75, 'ইমরান', 'ইমরান', '01711285927', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$PBXdSpaf4tSHKFcKGM44OOAX1Bs/VJoVf69TinnB7/DrqLnZ683FS', NULL, 'active', '2024-10-04 15:39:41', '2024-10-04 15:39:41'),
(76, 'biplob paul', 'biplob paul', '01311788102', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qYuEOqStHgQIBttJcFGUjOR6IDGLx6tl.F2rQoqANPj8eVk61F3rm', NULL, 'active', '2024-10-04 16:01:13', '2024-10-04 16:01:13'),
(77, 'Biswajit', 'Biswajit', '01771880424', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.MxJ.QstLCM76egNctFZOel49CaggIovQAWcfAm1g27Xx7LVfnUHy', NULL, 'active', '2024-10-04 17:52:55', '2024-10-04 17:52:55'),
(78, 'Tasfiya Rahman Resma', 'Tasfiya Rahman Resma', '01717730276', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pVIUp7cB2APgyZ2t8Uvqq.QURQwThYyqmiL1eldINTK5yaEj6kuYm', NULL, 'active', '2024-10-04 19:03:14', '2024-10-04 19:03:14'),
(79, 'Md. Harun Or Rashid', 'Md. Harun Or Rashid', '01817147059', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$L2otngdKXaxOYsZ5TorZ0eIPjOZ8uajh0am9ZWHGa6wB.zlSx7pBa', NULL, 'active', '2024-10-05 03:27:54', '2024-10-05 03:27:54'),
(80, 'জান্নাতুল ফেরদৌস', 'জান্নাতুল ফেরদৌস', '01792492882', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4c87ZNROkMm.6uSPxBnJAu7LCuvwSWyepPQ08OZe93g9m5v8Rl/KW', NULL, 'active', '2024-10-05 03:57:07', '2024-10-05 03:57:07'),
(81, 'Sharif', 'Sharif', '01919892439', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XcOBEvnSc8TwiAS.HO79v.OWNnZM6DMl1nXdMYCtuxEx9ZJgO3t3W', NULL, 'active', '2024-10-05 04:44:03', '2024-10-05 04:44:03'),
(82, 'joynal Abedin', 'joynal Abedin', '01943591251', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fmbA7HZwBLAV/bwY/8rPIOBURMh0jlaIFnEF/1wqL1SBz5/weezCC', NULL, 'active', '2024-10-05 08:43:45', '2024-10-05 08:43:45'),
(83, 'মি: রিংকু,  ম্যানেজার', 'মি: রিংকু,  ম্যানেজার', '01712952632', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TYKtajuDBe4ARDkoMC6k6uFvVnVRUNOB8m9ZJ0XUzqQAeImiW8tN6', NULL, 'active', '2024-10-05 17:24:32', '2024-10-05 17:24:32'),
(84, 'dr.Shamima baby', 'dr.Shamima baby', '01776818717', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bfI5plY5TBJMR83GDNGXCexgP1Kw69Qephm.PVIDAhUov/kAnHfzW', NULL, 'active', '2024-10-05 17:33:32', '2024-10-05 17:33:32'),
(85, 'Shahriar Santo', 'Shahriar Santo', '01704758790', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5HR5pGKZRLP5vtQ18wlSHufigGc1Z6scz0KZBReSSFk86zmKefQq.', NULL, 'active', '2024-10-06 08:10:19', '2024-10-06 08:10:19'),
(86, 'Arush', 'Arush', '01994043889', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$48pokjCJQtYCQ2G5twDyo.zwPPFRKZk6oveqmNGFfAPdk6DlLqeoC', NULL, 'active', '2024-10-06 17:24:30', '2024-10-06 17:24:30'),
(87, 'Adnan Chowdhury', 'Adnan Chowdhury', '01763454902', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$66QldLswgqEOUYWtwiq6Pes1hpzOBacGxgyNrZryCCVKgY3EjUlhe', NULL, 'active', '2024-10-06 17:57:29', '2024-10-06 17:57:29'),
(88, 'Nazianadia Nur', 'Nazianadia Nur', '01928259055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.O6AHha7VPDnz9qdV/wvo.2K4PNQWo6QubnN0L2C4ijbb6v7.LULO', NULL, 'active', '2024-10-07 07:51:57', '2024-10-07 07:51:57'),
(89, 'Md Akash', 'Md Akash', '01775457008', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/6G7lK1VhO8zct5jRpnPc.26dCbVYt1nwF/p/XasKPgmzAs8eNTm2', NULL, 'active', '2024-10-07 16:24:28', '2024-10-07 16:24:28'),
(90, 'Benoy Kayser', 'Benoy Kayser', '01684169544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$HSWjGI50Yo16rFUtxhVbjOlNSSdXDzGf6sFuom5DQmPYUIY0HqHP6', NULL, 'active', '2024-10-07 16:27:13', '2024-10-07 16:27:13'),
(91, 'Bazar khoroch', 'bazar-khoroch-91', '01870829343', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$NcLkm7ta42RS9eeaOBlX6.V8Vd.dH0mxIdEi8kMrZHUdK.0MZNR9a', NULL, 'active', '2024-10-07 17:25:03', '2024-10-07 17:33:58'),
(92, 'জুবেল আহমেদ', 'জুবেল আহমেদ', '01742825458', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$d1HN7ePSer9CDtNbuJej6eQopLkPaboLuasyxU8pfmU/rzQhLd.lC', NULL, 'active', '2024-10-07 17:59:19', '2024-10-07 17:59:19'),
(93, 'Ayasha', 'Ayasha', '01733524042', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OqPaE9dlN8XnJWH/.S71xOiI8l16.QTTMP7w2SlB98FsWxQq2dpn.', NULL, 'active', '2024-10-08 02:19:17', '2024-10-08 02:19:17'),
(94, 'রাবেয়া জ্যোতি', 'রাবেয়া জ্যোতি', '01737966929', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kvyA4HlRPq4scfWMu9IW7OpwrwMcP3GldFQ7dzlP75R25bTZpU4NS', NULL, 'active', '2024-10-08 09:29:57', '2024-10-08 09:29:57'),
(95, 'Neela', 'Neela', '01972033088', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$i.1zbOt/RfDPiJqzs9vK4uQYgfSR9vN8yrcmkot1B3EayrAREFBUu', NULL, 'active', '2024-10-08 10:10:37', '2024-10-08 10:10:37'),
(96, 'Mahfuza Begum', 'Mahfuza Begum', '01929866954', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hzmksQF8JBhqOrpobkQQw.8ZfF3Vqdti.6/Wvs5ey2u8xUbVPO0W2', NULL, 'active', '2024-10-08 10:17:00', '2024-10-08 10:17:00'),
(97, 'Sharbari Barai', 'Sharbari Barai', '01722926032', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$iiicKwRL3sInbu345cxiZeGaF/8zcjQdQuTDw/D7.OL7QSpkdWLLG', NULL, 'active', '2024-10-08 10:23:12', '2024-10-08 10:23:12'),
(98, 'Robin', 'Robin', '01747114337', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jYbX/cVRtIv8l8zRZ2ag2OmnRr7JH9zO1QfeUp8PpurukgCPebD2e', NULL, 'active', '2024-10-08 11:51:38', '2024-10-08 11:51:38'),
(99, 'Md Akash', 'Md Akash', '01715412204', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TB.sQfM2xH.zzOQBNK3lF.RrZTMzUh6KmKwZzA3fMAkzfstneqBP.', NULL, 'active', '2024-10-11 03:51:23', '2024-10-11 03:51:23'),
(100, 'Phakal police lines school and college', 'Phakal police lines school and college', '01912017916', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9RiLkEsPa6KXwbyojHXnTeCliJKeGFcOUHJL4X4nNrgX5U10GIik.', NULL, 'active', '2024-10-11 03:52:15', '2024-10-11 03:52:15'),
(101, 'Atik Foods', 'Atik Foods', '01730218255', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JctaDg0AY.xZJypjaKYvyuFE/2w6ztCoYKsTr/ZT8ZtiMvJyVxZOO', NULL, 'active', '2024-10-11 05:00:06', '2024-10-11 05:00:06'),
(102, 'MD NAyeem', 'MD NAyeem', '01907797146', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$aWgoDeMG8qfbpV2L4pJ9LeEHIkD6V5XSQXWBqcs53wFOEF3MIopHu', NULL, 'active', '2024-10-11 06:15:33', '2024-10-11 06:15:33'),
(103, 'Rd', 'Rd', '01322456544', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Aw862vEqjsIGyJVbmywzKO4BRt3ssHnfdCJiNl9lyhtcFkgWtto4i', NULL, 'active', '2024-10-12 14:08:24', '2024-10-12 14:08:24'),
(104, 'hghg', 'hghg', '01810773598', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$lRjWDo02PxqDt7qzKWugVOMJg8zE7faxM2Ya0hbAVhxAmayn/VrFK', NULL, 'active', '2024-10-12 19:08:44', '2024-10-12 19:08:44'),
(105, 'Gg', 'Gg', '01612230023', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$cT6GcCeenTa0RdzfFknMHuqjdb815AggVRZFyTLfo5WTRqaECb4MO', NULL, 'active', '2024-10-14 16:37:26', '2024-10-14 16:37:26'),
(106, 'Abdullah Al Mamun', 'Abdullah Al Mamun', '01713897235', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zAZAQIVtfQehddMZkvOEEuX9wKe2X4UIwUcCrXjm8m92pT8NWR9la', NULL, 'active', '2024-10-16 16:14:52', '2024-10-16 16:14:52'),
(107, 'zfdf', 'zfdf', '01712345678', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QGJbWyRPqUg2X2CnWbO01uhrt0y7WAaui839VmnFjHuFa1uvMNVam', NULL, 'active', '2024-10-18 18:22:09', '2024-10-18 18:22:09'),
(108, 'khan', 'khan', '01999999999', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TEl2bV7XDvtAydm.8dpiAOsTEeYOVFgZC236y9xLZFQJ.1rS/YE/u', NULL, 'active', '2024-10-21 00:38:16', '2024-10-21 00:38:16'),
(109, 'test', 'test', '01725555522', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$W2OLX7g3m9zRcduSAhnwNePrEDUpSfzW1CrOHapxN2e9lSn/60776', NULL, 'active', '2024-10-21 22:07:16', '2024-10-21 22:07:16'),
(110, 'Hossain', 'Hossain', '01884129644', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6b9NvdLP8gnm9ikmkJPz6.GFoH92tnwvBEWbeN/g3OAoX2YFa2uwS', NULL, 'active', '2024-10-28 22:38:46', '2024-10-28 22:38:46'),
(111, 'SOJOY DAS', 'SOJOY DAS', '01886655055', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$oSTqEEEpG7M8U0kn6ryIC.s78IxlH6JKfo..QSi9epiVoE8mMKrZK', NULL, 'active', '2024-10-29 00:16:09', '2024-10-29 00:16:09'),
(112, 'Yasin Arafat', 'Yasin Arafat', '01781343336', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$yu77egRIVuTWr3VCP9wDXurPNKzKOCJ6mXQlJrCoN5SIltQAb9HPq', NULL, 'active', '2024-11-02 09:44:17', '2024-11-02 09:44:17'),
(113, 'Abdul Goni', 'Abdul Goni', '01768101716', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$AnpW2H0Gz7isIS67RwbdtODBpffrPaZGfTOAC1Gp44SeteMwJRDd2', NULL, 'active', '2024-11-07 18:01:33', '2024-11-07 18:01:33'),
(114, 'Md. Naiem Hossain', 'Md. Naiem Hossain', '00000000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$3y9sghAqmW7u8Me4z12eTerKfSJ2WAD3kH7AfXHrACiXuEHF4fcsy', NULL, 'active', '2024-11-08 00:08:22', '2024-11-08 00:08:22'),
(115, 'Nazmul Hossain', 'Nazmul Hossain', '0100000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$hdheUJdu6zSO.xlJq1AokeP8LVdYRK2cmuygE9HvfWfspEQSmZpge', NULL, 'active', '2024-11-08 16:56:20', '2024-11-08 16:56:20'),
(116, 'September Kent', 'September Kent', '01711111111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$kkajDfQ5OAvQX6viQ6dV8ehvJrrJLMgjIDpk4perQBJ2lRv82was2', NULL, 'active', '2024-11-09 11:42:46', '2024-11-09 11:42:46'),
(117, 'Shariful Shojeeb', 'Shariful Shojeeb', '01710606333', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$E/nVNZ1FQND.ENCkZJo0T.Sa9BMLKhcg1tPvGOtLZwrZn3t1mJlQy', NULL, 'active', '2024-11-10 10:42:49', '2024-11-10 10:42:49'),
(118, 'MD. SHOHAG MIYA', 'MD. SHOHAG MIYA', '01628093557', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$m28zjeZC/MrPjotmVJsgAO.tA4XjdwYe7L4F9kMStMTptClZb3pSq', NULL, 'active', '2024-11-13 21:21:13', '2024-11-13 21:21:13'),
(119, 'MARUF BILLAH', 'MARUF BILLAH', '01912092923', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$H2cYnTizei.wzHJs.ee.3O0dbEqvmTxKLROX426MEkdP0AvZRvM1S', NULL, 'active', '2024-11-19 00:32:57', '2024-11-19 00:32:57'),
(120, 'Akash', 'Akash', '01976757643', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rlRK0Ky8ELe4f1zLFvG1ouMzHTlf2hHq3OO1ePX5nf1U/wClycbiC', NULL, 'active', '2024-11-19 12:53:19', '2024-11-19 12:53:19'),
(121, 'Prottt', 'Prottt', '01714859460', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Nvo0FrO7d4M5RlvmC1nOAevZn1LPggInf5aHfvXTb2VbKzTGP2rPC', NULL, 'active', '2024-11-19 18:52:27', '2024-11-19 18:52:27'),
(122, 'Md Abu Sayed', 'Md Abu Sayed', '01984913112', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MhWBZOGYwonEPCs8ZHxFe./Pk8ZPBs1vgS1tMeSNV0FD2YaeZa/DO', NULL, 'active', '2024-11-20 09:37:59', '2024-11-20 09:37:59'),
(123, 'Omar Faroque', 'Omar Faroque', '01925809935', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DLr2ziCVMScHHlQyMC1e4eXO8tx5D9oqD/RwuxG0WJwZU776xtbDS', NULL, 'active', '2024-11-20 14:43:30', '2024-11-20 14:43:30'),
(124, 'Maruf', 'Maruf', '01989518083', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Lrr9jhu3Md4L9heF1rm2pOP2khs3oUdeVPreGGyj1jpudgfP4OE3W', NULL, 'active', '2024-11-20 16:38:39', '2024-11-20 16:38:39'),
(125, 'Abdullah Al Mamun', 'Abdullah Al Mamun', '01913630061', NULL, NULL, NULL, NULL, 1, '5702', 'public/uploads/default/user.png', '$2y$10$eVlLWeEYHFkcGB/fydKwpuMhPE6P/VU59hQRanBoHz1/TwWTw29cS', NULL, 'active', '2024-11-21 11:49:53', '2024-12-12 12:02:27'),
(126, 'asif', 'asif', '01444252522', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9X70HCNEsduouEB3.pQRtuo5c6IYXNP3uko0r2kcmTwMH0a4um51K', NULL, 'active', '2024-11-21 13:38:21', '2024-11-21 13:38:21'),
(127, 'sfsdf', 'sfsdf', '01575454111', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$bZDIR2jjiGFrw1rsQjiLf.i0DdKf0JWC.tEthpYpn7a1KjMvHQBym', NULL, 'active', '2024-11-21 17:01:25', '2024-11-21 17:01:25'),
(128, '\\545', '\\545', '01789654587', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$QLPvj.a7niFpLCysU1G29eLxopEYyNv3MHewzwWveM2u.K7SURzWC', NULL, 'active', '2024-11-21 23:44:31', '2024-11-21 23:44:31'),
(129, 'Boost & Ads Campaign Specialist', 'Boost & Ads Campaign Specialist', '01788194093', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/KbGEqEq95YTZPNnMuwYZOK58KVsdI9GWBuTohpn9qVrFWKAvnpoO', NULL, 'active', '2024-11-27 21:48:53', '2024-11-27 21:48:53'),
(130, 'M.a Hannan Sarker', 'M.a Hannan Sarker', '01788194094', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$1etk2rDvlhMbHARiJvt3LOmOtIGEoRtrOf6Dwhyp0YFZb2KuETDxC', NULL, 'active', '2024-11-27 22:10:00', '2024-11-27 22:10:00'),
(131, 'Bb', 'Bb', '01981818181', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MeNwLoZSEg9QlaVZE8V25uNWTt/fKwohHAEcYSGciAOMDiC5Lhi22', NULL, 'active', '2024-11-29 00:33:34', '2024-11-29 00:33:34'),
(132, 'SCRW', 'SCRW', '09871321789', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Vd0Rnbz2s8JMjBfiORfUPeyocukQSpDkyFxa2i4BvqFYeJTLrS4Gu', NULL, 'active', '2024-11-29 19:28:17', '2024-11-29 19:28:17'),
(133, 'Fff', 'Fff', '01722345467', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$9MtUK2bHyNboD1LHqT0SRufTe1zHRdOeqUfg1IyF5yb8NSrnr/gCW', NULL, 'active', '2024-11-29 19:45:18', '2024-11-29 19:45:18'),
(134, 'Bkash Parsonal', 'bkash-parsonal-134', '01990881000', NULL, NULL, NULL, NULL, 1, '1', 'public/uploads/default/user.png', '$2y$10$Ek34Oq/jqbUCsrG9oORUi.FfQrJH7fClvbx8gAQQ.M4nm2PrIhYZy', NULL, 'active', '2024-11-29 21:32:05', '2024-11-29 22:24:02'),
(135, 'Rayhan Jabber', 'Rayhan Jabber', '01635491232', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4eazasudrN1OSwLPLnDr0OXYSQA5Up44WMimvNemY26QJoPHPAkCG', NULL, 'active', '2024-11-30 19:01:15', '2024-11-30 19:01:15'),
(136, '65415', '65415', '01711111110', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/KompQNi8YUZmvwJ.cykaunZC3/7U76NfA5Qr2.vExUJMrzEDPaES', NULL, 'active', '2024-12-07 08:58:30', '2024-12-07 08:58:30'),
(137, 'Mohammad Alamin', 'Mohammad Alamin', '01400988766', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TILpQ3TA2SEpors8E4UvBuhkTCS6mTLUudycYg7W4XpaLk0luBnI2', NULL, 'active', '2024-12-07 14:31:24', '2024-12-07 14:31:24'),
(138, '01711845082', '01711845082', '01711845082', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DcrU.FUO7YefRJZxiglTG.UItGfZKVQeCetH0Aboau2G4DMZROic.', NULL, 'active', '2024-12-07 17:51:35', '2024-12-07 17:51:35'),
(139, 'N.H Rashik', 'N.H Rashik', '01812000661', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6wkRUxAg7MEf4QfdbbRpzeFN70RRHoQ2yai/BhCt7FEofyglc2IG6', NULL, 'active', '2024-12-08 05:36:48', '2024-12-08 05:36:48'),
(140, 'Fahad 71', 'Fahad 71', '01761119714', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$mDjjiHMKr9qN9rqZ534AUeR7s4xzlDe14.XL78VhBakMnvrdsXbrS', NULL, 'active', '2024-12-09 03:30:28', '2024-12-09 03:30:28'),
(141, '\"ডায়াবেটিস নিয়ন্ত্রণে প্রাকৃতিক সমাধান:', '\"ডায়াবেটিস নিয়ন্ত্রণে প্রাকৃতিক সমাধান:', '01589624255', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MkGq2bhywW2UQ5rzS1z6HeaNN7GAesRNljsuhVn1Y/dROr1Txi7BW', NULL, 'active', '2024-12-09 12:42:55', '2024-12-09 12:42:55'),
(142, 'ewrff', 'ewrff', '01631731135', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FJbKQ1VpwZczg3L08UmxCO/kktj4lMKADWgWUQSjrCocTnAu3KK5m', NULL, 'active', '2024-12-10 16:55:26', '2024-12-10 16:55:26'),
(143, 'monirafridi', 'monirafridi-143', '01752239869', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4xJO1UHze7zZpZeW1pIFPOGllSAVsAdX.LGHN1A9g36UEHLVPDdX6', NULL, 'active', '2024-12-12 04:08:16', '2024-12-12 04:08:16'),
(144, 'MD. MOMINUR ROSHID', 'MD. MOMINUR ROSHID', '01713906739', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$gPHPA6A0K3D7ZS2Zaw1MCucjL0RDVz9GexiSPz1IM5iz.25cKwKfC', NULL, 'active', '2024-12-12 08:39:02', '2024-12-12 08:39:02'),
(145, 'Abdullah Al Mamun', 'abdullah-al-mamun-145', '01713897236', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZQAoqjr1CiYapurSnJXOgOnLypKX1nVrgWeKoNej6dYtfFGmiZXmW', NULL, 'active', '2024-12-12 12:03:09', '2024-12-12 12:03:09'),
(146, 'Shahed hasan', 'Shahed hasan', '01703778879', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dwjvrhru7qSoMKSXZdP0u.Wu0t2GLYluMHb.io9IH3QwMGwMx6Uky', NULL, 'active', '2024-12-12 16:46:31', '2024-12-12 16:46:31'),
(147, 'গগ', 'গগ', '01700000000', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$O2YJEGAFA1lCewOkEyXCY.lXWAwFBXymz7ZmFj8U41vtguhG8Hb5C', NULL, 'active', '2024-12-12 17:01:34', '2024-12-12 17:01:34'),
(148, 'Tfgv', 'Tfgv', '01988665698', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$raGxaq1EUOL8JGoVZhfztu9t8UAg5vXCjnK2ND06BBwU4I1A4E0sW', NULL, 'active', '2024-12-13 02:54:14', '2024-12-13 02:54:14'),
(149, 'Hjjjj', 'Hjjjj', '01776768653', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$NLu6zStRfpHelm0mBwuhLeWw6n/T9hPrAnGB3ZPBDWTfNGr3LWJ.i', NULL, 'active', '2024-12-13 03:58:29', '2024-12-13 03:58:29'),
(150, 'তত', 'তত', '66', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$8T.u4iHCNHQtCHTqXYSHhu1ENDNinbwV58qSoa7WxgVyY1u3U.MlW', NULL, 'active', '2024-12-13 04:14:06', '2024-12-13 04:14:06'),
(151, 'Muhammed Imran', 'Muhammed Imran', '01810629666', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dHqepEzuv2UVaT/.yYAi.uCYvdJwTiEPgAaHJlrrfYADkSAKNPoz2', NULL, 'active', '2024-12-13 06:19:41', '2024-12-13 06:19:41'),
(152, 'Monir Hossain', 'monir-hossain-152', '01629008256', NULL, NULL, NULL, NULL, 1, '9601', 'public/uploads/default/user.png', '$2y$10$VpgKxT8ORZle/9F09LPvjuTF36nqTWU0F15uXcnOYfUu8nh7Khs0O', NULL, 'active', '2024-12-13 08:01:12', '2024-12-14 07:07:11'),
(153, 'Kukon', 'Kukon', '01601280101', NULL, NULL, NULL, NULL, 1, '7033', 'public/uploads/default/user.png', '$2y$10$/4O5X.Omu0QyCYSN4uPoW.fFIzG/dQumbmNgKEZKM6IY5D25pZgAK', NULL, 'active', '2024-12-13 08:11:22', '2024-12-13 08:15:01'),
(154, 'Md. Zahidul Hasan', 'Md. Zahidul Hasan', '01958642565', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$m2DB6a5J.VVeQauIguD2BeibMA/p39JKGVVpZWGIUWth7E2ds7AOC', NULL, 'active', '2024-12-13 08:13:51', '2024-12-13 08:13:51'),
(155, 'ismail', 'ismail-155', '01716441882', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$b9KPuXTvDh5BrNw4PAvvw.vggTGX/iLJoTpDAMT2SkbulAP/B7QO6', NULL, 'active', '2024-12-13 09:25:22', '2024-12-13 09:25:22'),
(156, 'MD RAKIBUL ISLAM', 'MD RAKIBUL ISLAM', '01822222222', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$6/CFyTwyFJ7SyjEdAWAiq.Yi8aPv/c5g/NXPVH/V/fA0vYHKecb9O', NULL, 'active', '2024-12-13 09:47:27', '2024-12-13 09:47:27'),
(157, 'Forhad Hosen Firoz', 'Forhad Hosen Firoz', '01306279727', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Xri.5ea.9dodtXgESa/IOOS.47qGzeLfC8AZdM1v/B9HQbC9/qHOu', NULL, 'active', '2024-12-13 12:15:36', '2024-12-13 12:15:36'),
(158, 'mohammad robin Islam', 'mohammad robin Islam', '01820812861', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Qyak7JewqWSQUy2HHtT0V.U92WuyhNR2sq9gtv8lesKIxLIP3bw/O', NULL, 'active', '2024-12-13 13:33:33', '2024-12-13 13:33:33'),
(159, 'Rizwan Iqbal', 'Rizwan Iqbal', '01731810922', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wOOBkqy3UMzIIT23rqlqVODSk3tAhBk4xUKdxs5w1WIZaStZVPKQ6', NULL, 'active', '2024-12-13 15:43:27', '2024-12-13 15:43:27'),
(160, 'Firoz Ahmed Raju', 'Firoz Ahmed Raju', '01791234505', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$u6qdLxIh6FrLDQJpr8MqkeF8zZQCIGwWMWTu5KFWx2XyxOLruUnt2', NULL, 'active', '2024-12-13 16:35:21', '2024-12-13 16:35:21'),
(161, 'Nadim Islam', 'nadim-islam-161', '01631491431', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$TZ5.4A4LVDQy1p6mzc/msed8A8IbrPU5svNzdLIKpP9O18mqFPDTu', NULL, 'active', '2024-12-13 16:51:33', '2024-12-13 16:51:33'),
(162, 'Test', 'Test', '01700000001', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$4uGpkX2UufU.bXr6WR4v1.UciU5vCdW4imq7xcR0yHDLM3uGFJPDa', NULL, 'active', '2024-12-13 16:57:05', '2024-12-13 16:57:05'),
(163, 'Silas Rich', 'Silas Rich', '01722928932', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$LGf5cgxz57x0jX8XD2Bz9uKLNjTdcWhahk8DjGT.GWFIMC2dH/JZq', NULL, 'active', '2024-12-13 18:31:56', '2024-12-13 18:31:56'),
(164, 'Premium Quality Full Sleeve Hoodie for Men', 'Premium Quality Full Sleeve Hoodie for Men', '01305872130', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$XCSr4Os06ZK6gkwZsYXgOuwjkSgJmhqk/2u7xMcb8yHSa3Ld5iP/S', NULL, 'active', '2024-12-13 21:05:10', '2024-12-13 21:05:10'),
(165, 'ABU SAYED', 'ABU SAYED', '01715541413', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$rbd4YzNwXtMUCCLBdLEmJub22vOI3WbfIQt23QOwCatCfG./1/bw6', NULL, 'active', '2024-12-14 10:02:47', '2024-12-14 10:02:47'),
(166, 'Facebook', 'Facebook', '01774338616', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$5h0UA6ZOerPf1Blm/pmR.euM/G47e3WkJT27OYUSBCGYR1ScYjd0C', NULL, 'active', '2024-12-14 12:30:09', '2024-12-14 12:30:09'),
(167, 'Samrat Raihan', 'Samrat Raihan', '01645491118', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$YSxhjKcJzx0HYSSnqrdIYucFo/WRsLlqE5edZjcIOGNK33R/mdfxW', NULL, 'active', '2024-12-14 13:38:14', '2024-12-14 13:38:14'),
(168, 'Lumen SoftTech Limited', 'Lumen SoftTech Limited', '01829317005', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$dira0hjyz9m.J3iOTk0EFOlUbeexwnHm60o2GLpGqChukSsuq5fE6', NULL, 'active', '2024-12-14 15:58:07', '2024-12-14 15:58:07'),
(169, 'fsgg', 'fsgg-169', '4686', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2Dvj9LTtcOXzU6tBTUCKMOeupepFK919Lu8DZNR4OEX/a5b66AY86', NULL, 'active', '2024-12-14 16:49:22', '2024-12-14 16:49:22'),
(170, 'www', 'www-170', '123456789', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$JFVIWKYYr4DUInnBg.aBzucirzu9UF81olNXSddr5TKWQVeWurE5K', NULL, 'active', '2024-12-14 16:49:54', '2024-12-14 16:49:54'),
(171, 'zdfg', 'zdfg', '01716106456', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$jD0LYtO1.XZkP9.wL1Sc..HCQtoYxzg0z/CdH6GwQ.oGFPH3IrjCy', NULL, 'active', '2024-12-14 17:59:21', '2024-12-14 17:59:21'),
(172, 'Motasim', 'Motasim', '01680151323', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$I5strTooT0lBIFYMcKV8LOZIAUD49hz2fX9fxKzXKuWKo38PRDqtO', NULL, 'active', '2024-12-15 02:44:17', '2024-12-15 02:44:17'),
(173, 'Test', 'Test', '01874619921', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$.epc8UV05zrCcAzT/xOKP.YtHJdKFaHvoYQ3ft9rrkj2oCp7eqSee', NULL, 'active', '2024-12-15 03:43:49', '2024-12-15 03:43:49'),
(174, 'Ggg', 'Ggg', '00007777777', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$/VsKWr0SKSmtdkDUXN1Ebu1fC/K1eTnGHQfQI0wvdRhjCoJFOWQ9O', NULL, 'active', '2024-12-15 04:27:49', '2024-12-15 04:27:49'),
(175, 'MD. AL-AMIN', 'MD. AL-AMIN', '01821887934', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$fvSbS2KTRJB.9I1zenTTzO5DoBWHP3urVXLo5.YCYGlMiBvHyW/bm', NULL, 'active', '2024-12-15 16:54:18', '2024-12-15 16:54:18'),
(176, 'MD. AZIZ ULLAH', 'MD. AZIZ ULLAH', '01010110011', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$e4dKOpERpJsML6BG/2269erOxqZkvEUaglvjI2qDUJMVH/m6LcoS2', NULL, 'active', '2024-12-15 18:45:00', '2024-12-15 18:45:00'),
(177, 'maknknd', 'maknknd', '01821762123', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$FHWZaFTRLBHvjJrFutQ.mOIwEqj9VJaSEJ7rwIaE3FHVJXsgypl26', NULL, 'active', '2024-12-16 08:40:25', '2024-12-16 08:40:25'),
(178, 'Dipta Dey', 'Dipta Dey', '01882903669', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$DcQ/GcLKEsVDo4OpGoep1u2Mze76hRuDTVwo8c5ExeLe091uOewaO', NULL, 'active', '2024-12-16 11:27:41', '2024-12-16 11:27:41'),
(179, 'bgcb', 'bgcb', '01445787898', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ZWzfalCfkb5CyVtQVNDnL.g6fQtnqQmMCsTdz.kMDtDHxSsdOJZZW', NULL, 'active', '2024-12-16 12:22:48', '2024-12-16 12:22:48'),
(180, 'sdesdf', 'sdesdf', '00000023232', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$14kRzMZ2x1IElp4L0DgHH.Nyoruz01graKJiHBdaa4Q.tz7i3K0cG', NULL, 'active', '2024-12-16 16:39:28', '2024-12-16 16:39:28'),
(181, 'daily janatar bangladesh', 'daily janatar bangladesh', '01911111483', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$OcVx7natChfNfJjpBD7yh.WXN.pamrYoGO5eBdazsyZOb5F5O5pOe', NULL, 'active', '2024-12-16 18:30:12', '2024-12-16 18:30:12'),
(182, 'test', 'test', '01234567890', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Ydco2yctPYPBReZS20YI3ex7q0yu3PWSl9gBA.xI81xSB3dBVgIoS', NULL, 'active', '2024-12-17 07:09:53', '2024-12-17 07:09:53'),
(183, 'Asif', 'Asif', '01820193873', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$WzDG86ZavMswhkDYb/KVwurkhtgg2l0w0jN79/dAubCcBzf2SNlhm', NULL, 'active', '2024-12-17 07:51:01', '2024-12-17 07:51:01'),
(184, 'Ecommerce', 'ecommerce-184', '01868407377', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$2g114zeOE0QE2mujyqN6LumfnFSNx0JSQahJku8eFYrMnueeZr2G2', NULL, 'active', '2024-12-19 05:12:19', '2024-12-19 05:12:19'),
(185, 'Shamim Ahmed Hasib', 'Shamim Ahmed Hasib', '01908341345', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$MzfwopKri4RlZiWCeXRAne.eBVZgPEvQuAdQIWsKOlQI46G2O9ffy', NULL, 'active', '2024-12-19 20:37:50', '2024-12-19 20:37:50'),
(186, '৩০+ গিফট প্যাকেজ', '৩০+ গিফট প্যাকেজ', '01622640940', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Dxs6MANlJGnnGwBKxKY34.MC.Ihkgy1YKm5EsZhhyGUWsB65KNMie', NULL, 'active', '2024-12-20 09:35:40', '2024-12-20 09:35:40'),
(187, 'Kazim Kamran', 'Kazim Kamran', '01611433353', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$U5jumFd1SAByTCI2Lb64huU/HGxW0fhBmdPkTU4o7dohP5rdoGXee', NULL, 'active', '2024-12-20 10:56:56', '2024-12-20 10:56:56'),
(188, 'Poribar Publications', 'Poribar Publications', '01707072323', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$qSnhRy83e2zj99xXRhrOSu..RL8YIUNXWzQzhh59tQo1j8ds7ICRq', NULL, 'active', '2024-12-20 11:47:04', '2024-12-20 11:47:04'),
(189, 'ft_maruf', 'ft_maruf', '880164556439', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$53saeWz.qBeHA1HqzlVqS.IXCRqfAVbb7l9a8Me8U.WmgoVvBxKkO', NULL, 'active', '2024-12-20 16:14:51', '2024-12-20 16:14:51'),
(190, 'Kamran', 'kamran-190', '01844678801', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$verg9jCI.EI741COzuj3y.a6OH.3ID6MK15LtoJotsaaCRFvhcwp6', NULL, 'active', '2024-12-20 17:07:30', '2024-12-20 17:07:30'),
(191, 'seyam', 'seyam', '01732329071', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$zuTitC32Z4vNjTVlyYw4XOx3ORdPfVWH8.TYDhDCb3OZ2HYzoDDZq', NULL, 'active', '2025-04-11 13:14:48', '2025-04-11 13:14:48'),
(192, 'Sayem', 'Sayem', '01766001223', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$pgVKld.uViN/tqG5tzVHCezuvJGUurKdybSAm2t2hPMkXfZJRiCwW', NULL, 'active', '2025-04-16 19:15:31', '2025-04-16 19:15:31'),
(193, 'Sayem', 'sayem-193', '01611058959', NULL, NULL, NULL, NULL, 1, '8485', 'public/uploads/default/user.png', '$2y$10$5WZQ3Mev/DnfVQjRLIgtVueEuEpaIeEzzOnq9ImauOP6P3KEpOOBC', NULL, 'active', '2025-04-18 18:29:14', '2025-04-19 00:06:25'),
(194, 'Sayem khan', 'Sayem khan', '01406222268', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$G9xJtuE9cRIRiDp1.Z/uBej01JM6v8BnG1xtJhR81CDZO2lSjLi2q', NULL, 'active', '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(195, 'মোঃ সারোয়ার হোসেন শাওন', 'মোঃ সারোয়ার হোসেন শাওন', '01880546843', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$h7HrlDyc.ckwLmXpps85Ze6de/QZP.3uQMLhWOTfg2MzKg6S/jr2e', NULL, 'active', '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(196, 'aokil', 'aokil', '01313305818', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$wyB1RmlOQyvl8aD2UvCk8uuSDw7UTjhfVw/sdmESJjQZO5FkvtvtW', NULL, 'active', '2025-04-23 21:01:54', '2025-04-23 21:01:54'),
(197, 'Rasel', 'Rasel', '01614519567', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$Pt3WQ79TYgR.eXfKAcq4muoi0iZbY8mK/ph7kqbkPXK3xQhZwePYq', NULL, 'active', '2025-05-07 17:09:38', '2025-05-07 17:09:38'),
(198, 'Rk Rasel', 'rk-rasel-198', '01826592072', NULL, NULL, NULL, NULL, 1, NULL, 'public/uploads/default/user.png', '$2y$10$ahg5JgLEBcwmtjPJhP7V.ObLdnMRNipLoXGVx3lD1J4PgpjP.xc46', NULL, 'active', '2025-05-07 17:14:42', '2025-05-07 17:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `shippingfee` varchar(255) NOT NULL,
  `partialpayment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1, 112, 'Pilkhana', 'Dhaka', '80', '200', '2021-10-23 19:02:41', '2022-12-10 04:25:24'),
(2, 1684, 'Katasur', 'Dhaka', '80', '200', '2021-10-24 19:02:41', '2022-12-10 04:25:24'),
(3, 6, 'Shyamoli', 'Dhaka', '80', '200', '2021-10-25 19:02:40', '2022-12-10 04:25:24'),
(4, 1685, 'Dhanmondi Staff Quarter', 'Dhaka', '80', '200', '2021-10-26 19:02:40', '2022-12-10 04:25:24'),
(5, 418, 'Dhaka Uddyan', 'Dhaka', '80', '200', '2021-10-27 19:02:40', '2022-12-10 04:25:24'),
(6, 7, 'Adabor', 'Dhaka', '80', '200', '2021-10-28 19:02:40', '2022-12-10 04:25:24'),
(7, 114, 'New Market', 'Dhaka', '80', '200', '2021-10-29 19:02:40', '2022-12-10 04:25:24'),
(8, 426, 'Shekhertek', 'Dhaka', '80', '200', '2021-10-30 19:02:40', '2022-12-10 04:25:24'),
(9, 155, 'Old Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(10, 1660, 'Dhanmondi - Rd 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(11, 326, 'Science Lab', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(12, 1661, 'Dhanmondi - Rd 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(13, 11, 'Lalmatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(14, 327, 'Sobhanbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(15, 1690, 'Arshinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(16, 145, 'Dhaka University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(17, 1691, 'Washpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(18, 1692, 'Garden City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(19, 1693, 'Boddhovumi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(20, 148, 'Kazi Nazrul Islam Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(21, 1187, 'Kaderabad Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(22, 149, 'Kawran Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(23, 1662, 'Dhanmondi - Rd 4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(24, 115, 'Azimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(25, 162, 'Shahbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(26, 306, 'Monipuripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(27, 309, 'Bosila', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(28, 1663, 'Dhanmondi - Rd 4A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(29, 19, 'Sher-E-Bangla Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(30, 116, 'Nilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(31, 163, 'Katabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(32, 1664, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(33, 164, 'Hatirpool', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(34, 1210, 'Eastern Housing (Adabor)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(35, 1665, 'Dhanmondi - Rd 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(36, 1211, 'Teskunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(37, 1212, 'DHAKA TENARI MORE', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(38, 1666, 'Dhanmondi - Rd 3A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(39, 1213, 'Shahidnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(40, 95, 'Bijoy Shoroni', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(41, 1667, 'Dhanmondi - Rd 6A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(42, 1214, 'Jhigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(43, 185, 'Elephant Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(44, 96, 'Farmgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(45, 1668, 'Dhanmondi - Rd 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(46, 1215, 'Polashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(47, 186, 'Kathalbagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2023-01-07 01:52:02'),
(48, 97, 'Indira Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(49, 1669, 'Dhanmondi - Rd 8A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(50, 1216, 'Satmoshjid Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(51, 1670, 'Dhanmondi - Rd 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(52, 1217, 'Shukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(53, 188, 'Central Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(54, 99, 'Tejkunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(55, 1671, 'Dhanmondi - Rd 9A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(56, 1218, 'BNP Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(57, 100, 'Razabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(58, 1672, 'Dhanmondi - Rd 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(59, 1673, 'Dhanmondi - Rd 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(60, 1139, 'Dhaka uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(61, 101, 'Sukrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(62, 1674, 'Dhanmondi - Rd 12A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(63, 1140, 'Nobodoy', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(64, 102, 'Panthopath', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(65, 103, 'Kalabagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(66, 1675, 'Dhanmondi - Rd 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(67, 1141, 'Chad Uddan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(68, 104, 'Green Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(69, 1676, 'Dhanmondi - Rd 15 A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(70, 1142, 'Mohammadia Housing', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(71, 105, 'Manik Mia Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(72, 1677, 'Dhanmondi - Rd 27', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(73, 1143, 'Ring Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(74, 106, 'Asad Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(75, 1678, 'Dhanmondi - Rd 28', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(76, 1144, 'Tajmahal Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(77, 107, 'West Dhanmondi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(78, 1679, 'Dhanmondi - Rd 29', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(79, 1145, 'Nurjahan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(80, 133, 'Dhakeshwari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:24'),
(81, 108, 'Shankar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(82, 1146, 'Rajia Sultana Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(83, 1, 'Mohammadpur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(84, 273, 'Zigatola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(85, 109, 'Rayer Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(86, 1681, 'Zafrabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(87, 183, 'Paribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(88, 2, 'Dhanmondi - Rd 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(89, 110, 'Tallabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(90, 1682, 'Sadek Khan Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(91, 111, 'Hazaribag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(92, 1683, 'Sher e Bangla Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(93, 67, 'Nikunja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(94, 1230, 'Mahanogor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(95, 1231, 'Nimtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(96, 1232, 'Nurerchala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(97, 1571, 'Jahangir Gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(98, 82, 'South Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(99, 325, 'Joar Shahara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(100, 1572, 'Nijhum gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(101, 83, 'Merul Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(102, 1573, 'BAF Bashar (Dhaka cantonment)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(103, 1199, 'Apollo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(104, 84, 'Niketon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(105, 72, 'Bashundhara R/A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(106, 1574, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(107, 1200, 'Nurer Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(108, 85, 'Banani', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(109, 86, 'Banani DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(110, 73, 'Vatara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(111, 1575, 'MES colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(112, 1201, 'Bawaila Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(113, 87, 'Mohakhali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(114, 74, 'Nadda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(115, 1202, 'Satarkul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(116, 1185, 'Kunipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(117, 88, 'Mohakhali DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(118, 1233, 'Pastola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(119, 14, 'Gudaraghat (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(120, 75, 'Baridhara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(121, 1206, 'Khilbar Tek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(122, 1186, 'Babli Masjid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(123, 1234, 'Poschim Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(124, 76, 'Baridhara DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(125, 1235, 'Purbo Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(126, 77, 'Notun Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(127, 91, 'Aziz Palli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(128, 1236, 'Sat-tola Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(129, 78, 'Adarsha Nagar (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(130, 1317, 'Namapara-Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(131, 92, 'Bashtola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(132, 1237, 'Shaheenbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(133, 79, 'Shahjadpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(134, 93, 'South Baridhara DIT Project', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(135, 1238, 'Subastu', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(136, 21, 'Cantonment Post Office', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(137, 80, 'Uttor Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(138, 94, 'Aftabnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(139, 1239, 'ICDDRB', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(140, 81, 'Middle Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(141, 39, 'Namapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(142, 1240, 'Satrasta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(143, 1348, 'Niketon Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(144, 323, 'Nakhalpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(145, 1268, 'Rosulbagh(Mohakhali)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(146, 1241, 'Tekpara Adorsonagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(147, 1242, 'Uttar Badda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(148, 1323, 'Aftab Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(149, 98, 'Tejgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(150, 1243, 'Wireless', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(151, 1244, 'Solmaid', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(152, 27, 'M.E.S', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(153, 44, 'Kurmitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(154, 1245, '300 Feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(155, 45, 'Shewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(156, 1219, 'Kalachandpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(157, 174, 'Khilbari Tek (Badda)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(158, 1220, 'Jogonnathpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(159, 1221, 'Kuratuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(160, 1329, 'TV gate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(161, 1222, 'Alatunnessa School Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(162, 1224, 'Bou Bazar - Mohakhali, Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(163, 1733, 'Nikunja 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(164, 51, 'Kuril', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(165, 1225, 'Chairman Goli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(166, 1226, 'Confidence Tower, Jhilpar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(167, 1227, 'Fuji Trade Center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(168, 3, 'Gulshan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(169, 1228, 'Khil Barirtek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(170, 1229, 'Korail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(171, 66, 'Khilkhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(172, 449, 'Mirpur Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(173, 1332, 'Gudaraghat-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(174, 277, 'Kalshi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(175, 1333, 'Namapara-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(176, 1334, 'Oxygen', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(177, 1600, 'Mirpur 60 feet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(178, 8, 'Darussalam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(179, 9, 'Gabtoli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(180, 1335, 'Technical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(181, 1481, 'Eastern Housing (Pallabi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(182, 10, 'Pallabi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(183, 1336, 'Mirpur 13 /14 / 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(184, 1337, 'Benaroshi Polli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(185, 12, 'Mirpur DOHS', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(186, 329, 'ECB Chattar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(187, 1338, 'Beribadh-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(188, 13, 'Kochukhet', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(189, 1339, 'Buddhijibi Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(190, 1340, 'Purobi Cinema Hall', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(191, 89, 'South Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(192, 17, 'Agargaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(193, 1341, 'Mondir-Mirpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(194, 1694, 'Mirpur - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(195, 90, 'Shah Ali Bag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(196, 18, 'Monipur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(197, 1342, 'Palasnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(198, 1343, 'Purobi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(199, 20, 'Ibrahimpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(200, 1344, 'Rupnagor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(201, 1345, 'Senpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(202, 315, 'Mirpur 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(203, 1131, 'Birulia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(204, 1346, 'BRTA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(205, 22, 'Mirpur Cantonment', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(206, 37, 'Dewanpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(207, 1347, 'Zoo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(208, 23, 'Kafrul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(209, 40, 'Mastertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(210, 1695, 'Mirpur - 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(211, 24, 'Vashantek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(212, 41, 'Balughat', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(213, 1696, 'Mirpur - 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(214, 25, 'Manikdi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(215, 42, 'Barontek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(216, 1697, 'Mirpur - 11.5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(217, 26, 'Matikata', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(218, 43, 'Goltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(219, 1698, 'Mirpur - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(220, 28, 'Rupnagar Residential Area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(221, 1699, 'Mirpur - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(222, 1165, 'Kallanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(223, 29, 'Duaripara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(224, 1700, 'Mirpur - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(225, 1166, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:43'),
(226, 30, 'Rainkhola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(227, 1701, 'Mirpur - 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(228, 1167, 'Lalkuthi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(229, 31, 'Mirpur Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(230, 1168, 'Mirpur 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(231, 32, 'Mazar Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(232, 1169, 'Tolarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(233, 33, 'Shagufta', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(234, 1594, 'Arambag (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(235, 1170, 'Ahmed Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(236, 1331, 'Mirpur 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(237, 1171, 'Paikpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(238, 1172, 'Pirerbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(239, 35, 'Baigertek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(240, 1173, 'Taltola (Mirpur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(241, 36, 'Madina nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(242, 1174, 'MES Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(243, 1175, 'Zia Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(244, 275, 'Kazipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(245, 1176, 'Ajiz Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(246, 276, 'Shewrapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(247, 5, 'Kallyanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(248, 139, 'Fakirapul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(249, 152, 'Shantibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(250, 140, 'Kakrail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(251, 153, 'Baily Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(252, 154, 'Minto Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(253, 69, 'Hajipara (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(254, 141, 'Naya Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(255, 142, 'Bijoynagar (Paltan)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(256, 156, 'Eskaton Garden Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(257, 143, 'Press Club', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(258, 144, 'High Court', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(259, 157, 'Eskaton', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(260, 158, 'Moghbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(261, 288, 'Purana Paltan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(262, 159, 'Mouchak', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(263, 334, 'Arambag (Motijheel)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(264, 160, 'Malibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(265, 161, 'Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(266, 1207, 'Buddho Mondir', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(267, 1208, 'Sipahibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(268, 1636, 'Banasree Block - A', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(269, 1209, 'TT Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(270, 1637, 'Banasree Block - B', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(271, 165, 'Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(272, 1638, 'Banasree Block - C', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(273, 1132, 'Shahjahanpur (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(274, 166, 'Khilgaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(275, 1639, 'Banasree Block - D', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(276, 1640, 'Banasree Block - E', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(277, 319, 'Siddweswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(278, 167, 'Middle Bashabo', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(279, 1641, 'Banasree Block - F', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(280, 168, 'Goran', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(281, 1642, 'Banasree Block - G', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(282, 169, 'Madartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(283, 396, 'Nandipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(284, 1643, 'Banasree Block - H', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(285, 187, 'Malibagh Taltola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(286, 170, 'Manik Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(287, 171, 'Shahjahanpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(288, 1644, 'Banasree Block - I', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(289, 1324, 'Gulbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(290, 1137, 'Haterrjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(291, 125, 'Tikatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(292, 126, 'Motijheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(293, 172, 'Banasree (Rampura)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(294, 403, 'Gopibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(295, 1645, 'Banasree Block - J', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(296, 189, 'Sabujbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(297, 1325, 'Meradiya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(298, 173, 'Meradia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(299, 1646, 'Banasree Block - K', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(300, 190, 'Shiddheswari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(301, 1326, 'Mirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(302, 1647, 'Banasree Block - L', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(303, 1327, 'Modhubagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(304, 1328, 'Rampura TV center', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(305, 1648, 'Banasree Block - M', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(306, 266, 'Shegunbagicha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(307, 177, 'Mughdapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(308, 1649, 'Banasree Block - N', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(309, 267, 'Rajarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(310, 1330, 'Ulan road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(311, 1223, 'Purbo Rampura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(312, 1251, 'Chamelibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(313, 181, 'Hatirjheel', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(314, 134, 'Kamalapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(315, 182, 'Banglamotor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(316, 1128, 'Manda(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(317, 1596, 'Nazimuddin Road (Malibag)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(318, 150, 'Ramna', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(319, 137, 'Dainik Bangla Mor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(320, 151, 'Shantinagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(321, 1657, 'Uttara Sector - 15', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(322, 324, 'Dokshingaon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(323, 1686, 'Uttara Sector - 16', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(324, 1152, 'Uttara Sector 5', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(325, 1687, 'Uttara Sector - 17', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(326, 1153, 'Uttara Sector 14', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(327, 1688, 'Uttara Sector - 18', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(328, 1154, 'Uttara Sector 3', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(329, 1155, 'Uttara Sector 7', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(330, 1156, 'Uttara Sector 9', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(331, 1157, 'Uttara Sector 11', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(332, 1158, 'Nalbhog', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(333, 1160, 'Phulbaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(334, 352, 'Kamarpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(335, 1161, 'Dhour', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(336, 1295, 'Ranavola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(337, 1162, 'Bhatuliya', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(338, 1318, 'Ahalia-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(339, 1320, 'Diabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(340, 1321, 'Habib Market-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(341, 1322, 'Pakuria-Uttara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(342, 1163, 'Bamnartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(343, 1164, 'Turag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(344, 1650, 'Uttara Sector - 1', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(345, 34, 'Bawnia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(346, 1654, 'Uttara Sector - 10', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(347, 1655, 'Uttara Sector - 12', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(348, 1656, 'Uttara Sector - 13', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(349, 1257, 'Kotwali (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(350, 113, 'Nawabgonj Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(351, 1258, 'Railway Colony', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(352, 1259, 'Rajar Dewri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(353, 284, 'Sutrapur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(354, 1261, 'Sat rowja', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(355, 286, 'Kamrangichar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(356, 1262, 'Tantibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(357, 146, 'Dhaka Medical', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(358, 147, 'Bongo Bondhu Avenue', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(359, 346, 'Armanitola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(360, 349, 'Islambag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(361, 354, 'Mitford', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(362, 117, 'Lalbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(363, 355, 'Shakhari Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(364, 118, 'Chawkbazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(365, 356, 'Katherpol', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(366, 316, 'Bongshal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(367, 119, 'Naya Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(368, 357, 'Bangla Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(369, 120, 'Tatibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(370, 358, 'Patuatuly', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(371, 121, 'Luxmi Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(372, 123, 'Puran Dhaka', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(373, 124, 'Siddique Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(374, 397, 'Nazira Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(375, 127, 'Nawabpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(376, 128, 'Kaptan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(377, 263, 'Dolaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(378, 1248, 'Mahut Tuli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(379, 129, 'Gulistan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(380, 406, 'Sadarghat (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(381, 1249, 'Alubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(382, 130, 'Bongo Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(383, 407, 'Kaltabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(384, 1250, 'Badam Toli', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(385, 131, 'Chankarpul', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(386, 269, 'Babubazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(387, 270, 'Islampur(Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(388, 132, 'Palashi', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(389, 409, 'Gandaria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(390, 1595, 'Nazimuddin Road (Puran Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(391, 271, 'Imamgonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(392, 1252, 'Dholaikhal', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(393, 272, 'Nayabazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(394, 1253, 'Doyagonj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(395, 1254, 'Farashgong', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(396, 135, 'Wari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(397, 136, 'Narinda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(398, 184, 'Bakshibazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(399, 1395, 'Firozshah', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(400, 1396, 'GEC', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(401, 1397, 'Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(402, 1398, 'Halishshar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(403, 1458, 'Sadarghat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(404, 1366, 'Cadet College', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(405, 1367, 'Chandgaon', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(406, 1368, 'Chattogram Airport', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(407, 1369, 'Chattogram Bandar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(408, 1370, 'Chattogram Cantonment', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(409, 1371, 'Chattogram Chawkbazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(410, 1431, 'Mohard', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(411, 1372, 'Chattogram Customs Acca', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(412, 999, 'Sitakundu', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(413, 1373, 'Chattogram GPO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(414, 1433, 'Nasirabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(415, 1407, 'Jalalabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(416, 1374, 'Chattogram New Market', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(417, 1434, 'North Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(418, 1375, 'Chattogram Oxygen', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(419, 1435, 'North Kattali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(420, 1349, 'Kotwali Chattogram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(421, 1135, 'Bondor (Chittagong)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(422, 1376, 'Chattogram Politechnic Institute', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(423, 1436, 'North Katuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(424, 1437, 'Noyabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(425, 1350, 'Agrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(426, 1464, 'Sitakunda Barabkunda', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(427, 1136, 'Barahatia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(428, 1377, 'Chattogram Sailors Colony', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(429, 1438, 'Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(430, 1351, 'AK Khan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(431, 1465, 'Sitakunda Baroidhala', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(432, 1378, 'Colonel Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(433, 1379, 'Combined Military Hospital (CMH)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(434, 1439, 'Panchlaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(435, 1352, 'Al- Amin Baria Madra', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(436, 1466, 'Sitakunda Bawashbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(437, 1380, 'Court Buliding', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(438, 1440, 'Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(439, 1353, 'Al- Amin Baria Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(440, 1467, 'Sitakunda Bhatiari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(441, 1354, 'Amin Jute Mills', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(442, 1468, 'Sitakunda Fouzdarhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(443, 1122, 'Chittagong Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(444, 1382, 'Dakkshin Pahartoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(445, 1355, 'Anandabazar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(446, 1469, 'Sitakunda Jafrabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(447, 1383, 'Double Mooring', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(448, 1443, 'Rampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(449, 1470, 'Sitakunda Kumira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(450, 1471, 'South Halishahar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(451, 1444, 'Rampura TSO', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(452, 1358, 'Bayezid Bostami', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(453, 1473, 'Wazedia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(454, 1419, 'Kattuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(455, 1420, 'Khulshi', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(456, 1388, 'Export Processing', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(457, 1423, 'Middle Patenga', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(458, 1474, 'No area', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(459, 448, 'CWH', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(460, 292, 'Shyampur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(461, 296, 'Dholaipar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(462, 313, 'Shonir Akhra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(463, 1246, 'Mirhazirbagh', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(464, 404, 'Shwamibag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(465, 405, 'Sayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(466, 178, 'Golapbag (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(467, 408, 'Jurain', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(468, 179, 'Jatrabari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(469, 411, 'RayerBag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(470, 412, 'Faridabad (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(471, 1255, 'Dholpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(472, 414, 'Donia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(473, 1597, 'Kodomtoli (Jatrabari)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(474, 415, 'Postogola', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(475, 915, 'Fenchuganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(476, 916, 'Gowainghat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(477, 917, 'Golapganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(478, 918, 'Jaintapur', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(479, 920, 'Kanaighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(480, 921, 'Amberkhana (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(481, 922, 'South Surma', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(482, 1497, 'Akhalia', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(483, 1498, 'Tilaghor', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(484, 1499, 'Shibganj(sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(485, 1494, 'Zindabazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(486, 1500, 'Uposhohor(Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(487, 1495, 'Pathantula', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(488, 1501, 'Kodomtoli', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(489, 1496, 'Subidbazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(490, 1502, 'Sheikhghat.', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(491, 1503, 'Majortila', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(492, 1504, 'Subhanighat', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(493, 911, 'Balaganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(494, 913, 'Biswanath', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(495, 914, 'Companyganj (Sylhet)', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(496, 1284, 'Khartail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(497, 1542, 'Jinumarket', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(498, 1285, 'Majukhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(499, 1543, 'T & T(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(500, 1197, 'Ershadnagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(501, 1286, 'Milgate', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(502, 1544, 'Shilmun', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(503, 1198, 'Sataish', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(504, 1287, 'National University', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(505, 1545, 'Mudafa', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(506, 1288, 'Surtaranga', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(507, 1546, 'Khapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(508, 1289, 'Targach', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(509, 1547, 'Malakerbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(510, 1263, 'Khairtail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(511, 1290, 'Rail Station', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(512, 1548, 'Bypass Road (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(513, 1549, 'Kodda', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(514, 1264, 'Bonomala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(515, 1291, 'Boro Dewra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(516, 1550, 'Duet Road', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(517, 1265, 'Morkun', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(518, 1551, 'Shibbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(519, 1552, 'Shimultoli', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(520, 647, 'Chowrasta (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(521, 1188, 'Kunia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(522, 1553, 'Jorpukur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(523, 1189, 'Gacha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(524, 1190, 'Boro Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(525, 1554, 'Salna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(526, 649, 'Kaliganj(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(527, 1191, 'Board Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(528, 1192, 'Kamarjuri', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(529, 1266, 'Bhadam', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(530, 1193, 'Dattapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(531, 1267, 'Boro Dewra Dakkhin Para', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(532, 1194, 'Auchpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(533, 1195, 'Cherag Ali', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(534, 1269, 'Gopalpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(535, 1196, 'Tongi Bazar (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(536, 1270, 'College Gate (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(537, 1271, 'Boardbazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(538, 1272, 'Gazipura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(539, 1273, 'Hossain Market (Tongi)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(540, 1274, 'Signboard (Gazipur)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(541, 1275, 'Joydebpur', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(542, 1276, 'Dhirasrom', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(543, 1277, 'Dattapara Road', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(544, 1536, 'Pubail', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(545, 1278, 'Badekomelosshor', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(546, 1279, 'Borobari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(547, 1537, 'Mirerbazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(548, 1280, 'Choidana', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(549, 1538, 'Ulokhola', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(550, 1281, 'Deger Chala', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(551, 1539, 'Modhumita', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(552, 1282, 'Gazcha', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(553, 1540, 'Miraspara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(554, 63, 'Tongi', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(555, 1283, 'Hariken', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(556, 1541, 'Pagar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(557, 282, 'Ashulia', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:49'),
(558, 283, 'Amin Bazar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:16:34'),
(559, 365, 'Dhamrai', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(560, 1127, 'Baipayl', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(561, 53, 'Savar', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:15:10'),
(562, 61, 'Savar Cantonment', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:14:50'),
(563, 1178, 'Aga Nagar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(564, 1179, 'Kathuria', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(565, 1180, 'Goljarbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(566, 1181, 'Nazirabag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(567, 1260, 'Hasnabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(568, 1182, 'Kaliganj - Keraniganj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:35'),
(569, 1183, 'Nazarganj', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(570, 1184, 'Zinzira', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(571, 305, 'Keranigonj', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:28'),
(572, 1125, 'Kalatia', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(573, 1256, 'Kodomtoli(Keraniganj)', 'Dhaka', '150', '510', '2021-10-31 19:02:40', '2022-12-14 10:17:22'),
(574, 707, 'Bandar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(575, 708, 'Chashara (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(576, 1658, 'Signboard (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(577, 1659, 'Jalkuri (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(578, 710, 'Sonargaon', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(579, 1689, 'Chittagong Road (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(580, 1133, 'Shanarpar (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(581, 1247, 'Bhuigarh-Narayangonj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(582, 1123, 'Siddhirganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(583, 1124, 'Fatullah', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(584, 1680, 'Shibu Market (Narayanganj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(585, 1000, 'Barura', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(586, 1001, 'Brahmanpara', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(587, 1002, 'Burichang', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(588, 1003, 'Chandina', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(589, 1005, 'Comilla Sadar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(590, 1007, 'Debiduar', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(591, 1015, 'Comilla Sadar South', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(592, 782, 'Batiaghata', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(593, 783, 'Dacope', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(594, 784, 'Dighalia', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(595, 785, 'Dumuria', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(596, 786, 'Phultala', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(597, 789, 'Rupsa', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(598, 790, 'Khalispur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(599, 791, 'Sonadanga', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(600, 792, 'Khan jahan ali', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(601, 793, 'Doulatpur', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(602, 1120, 'Khulna Sadar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(603, 794, 'Terokhada', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(604, 1528, 'Chorpara (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(605, 1529, 'Kachijhuli', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(606, 695, 'Dhubaura', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(607, 1530, 'College Road (Mymensigh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(608, 696, 'Fulbaria (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(609, 1531, 'Akua', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(610, 697, 'Fulpur', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(611, 1532, 'Agriculture University (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(612, 1533, 'Zilla School Mor (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(613, 699, 'Koltapara (Gouripur Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(614, 1534, 'Rohomotpur Bypass', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(615, 700, 'Haluaghat', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(616, 1535, 'Mashkanda', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(617, 701, 'Iswarganj', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(618, 702, 'Kacharighat (Mymensingh)', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(619, 703, 'Muktagacha', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(620, 704, 'Nandail', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(621, 932, 'Barisal Sadar', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(622, 935, 'Mehendiganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(623, 929, 'Babuganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(624, 930, 'Bakerganj', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(625, 931, 'Banaripara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(626, 658, 'Dewanganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(627, 659, 'Islampur(Jamalpur)', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(628, 660, 'Jamalpur Sadar', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(629, 661, 'Madarganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(630, 662, 'Melandah', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(631, 663, 'Sharishabari', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(632, 1603, 'Subidkhali', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(633, 1606, 'Bagabandar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(634, 1607, 'Kalaia', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(635, 1609, 'Birpasha', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(636, 949, 'Bauphal', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(637, 950, 'Dasmina', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(638, 951, 'Dumki', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(639, 952, 'Galachipa', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(640, 954, 'Mirjaganj', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(641, 955, 'Patuakhali Sadar', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(642, 677, 'Kalkini', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(643, 678, 'Madaripur Sadar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(644, 679, 'Rajoir', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(645, 680, 'Shibchar', 'Madaripur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(646, 1716, 'Kacari (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(647, 1717, 'Super Market Mor (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(648, 1718, 'Munshir Hat (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(649, 1719, 'Mirkadim (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(650, 1720, 'Rikabibazar (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(651, 1721, 'Sipahipara (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(652, 1722, 'Muktarpur (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(653, 688, 'Gazaria', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(654, 690, 'Katakhali (Munshiganj)', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(655, 691, 'Serajdikhan', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(656, 693, 'Tangibari', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(657, 657, 'Bakshiganj', 'Jamalpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(658, 738, 'Jhenaigati', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(659, 739, 'Nakla', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(660, 740, 'Nalitabari', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(661, 741, 'Sherpur Sadar', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(662, 742, 'Sribordi', 'Sherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(663, 962, 'Zia Nagar (Indurkani)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(664, 956, 'Bhandaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(665, 957, 'Kaukhali (Perojpur)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(666, 958, 'Mothbaria', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(667, 959, 'Nesarabad (Shawrupkathi)', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(668, 960, 'Nazirpur', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(669, 961, 'Pirojpur Sadar', 'Perojpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(670, 978, 'Chandpur Sadar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(671, 979, 'Faridganj', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(672, 980, 'Haimchar', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(673, 983, 'Matlab (South)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(674, 984, 'Matlab (North)(Chengarchar)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(675, 638, 'Alfadanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(676, 639, 'Bhanga', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(677, 640, 'Boalmari', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(678, 641, 'Char Bhadrasan', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(679, 642, 'Faridpur Sadar', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(680, 643, 'Madhukhali', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:52'),
(681, 644, 'Nagarkanda', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(682, 645, 'Sadarpur', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(683, 646, 'Saltha', 'Faridpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(684, 748, 'Kalihati', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(685, 749, 'Mirzapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(686, 751, 'Nagarpur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(687, 752, 'Shakhipur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(688, 753, 'Tangail Sadar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(689, 743, 'Bashail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(690, 744, 'Bhuapur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(691, 745, 'Delduar', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(692, 945, 'Jhalokathi Sadar', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(693, 946, 'Kathalia', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(694, 947, 'Nalchiti', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(695, 948, 'Rajapur (Jhalokathi)', 'Jhalokathi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(696, 1711, 'Konokpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(697, 1712, 'Adompur Bazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(698, 1715, 'Kazir Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(699, 894, 'Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(700, 896, 'Moulvibazar Sadar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(701, 897, 'Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(702, 898, 'Sreemongal', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(703, 1702, 'Sarkar Bazar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(704, 1703, 'Notun Bridge (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(705, 1622, 'Shamshernagar (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(706, 1623, 'Sherpur (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(707, 1704, 'Tarapasha Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(708, 1705, 'Munshibazar - Kamalganj', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(709, 1706, 'Munshibazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(710, 1707, 'Tengra Bazar - Rajnagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(711, 1708, 'Mukam Bazar - Radar Unit (Moulvibazar)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(712, 1710, 'Patanushar - Shamshernagar', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(713, 1515, 'Chowdhury Bazar (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(714, 1516, 'Sultanmahmudpur', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(715, 889, 'Habiganj Sadar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(716, 1517, 'Gatiabazar', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(717, 890, 'Lakhai', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(718, 1518, 'Mahmudabad', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(719, 1519, 'Duliakal', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(720, 892, 'Nabiganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(721, 1520, 'Mohonpur (Habiganj)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(722, 885, 'Ajmeriganj', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(723, 887, 'Baniachang', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(724, 1514, 'Rajnogor', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(725, 1107, 'Badarganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(726, 1108, 'Gangachara', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(727, 1109, 'Kaunia (Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(728, 1110, 'Mithapukur', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(729, 1111, 'Pirgacha', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(730, 1112, 'Pirganj(Rangpur)', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(731, 1113, 'Rangpur Sadar', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(732, 1114, 'Taraganj', 'Rangpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(733, 773, 'Keshabpur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(734, 774, 'Manirampur', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(735, 775, 'Sharsha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(736, 769, 'Bagherpara', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(737, 770, 'Chowgacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(738, 1129, 'Benapole', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(739, 771, 'Jessore Sadar', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(740, 772, 'Jhikargacha', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(741, 1102, 'Atwari (Panchagarh)', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(742, 1103, 'Boda', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(743, 1104, 'Debiganj', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(744, 1105, 'Panchagarh Sadar', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(745, 1106, 'Tetulia', 'Panchagarh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(746, 1099, 'Kishoreganj ( Nilphamari)', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(747, 1100, 'Nilphamari Sadar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(748, 1096, 'Dimla', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(749, 1097, 'Domar', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(750, 1098, 'Jaldhaka', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(751, 1021, 'Ramu', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(752, 1023, 'Ukhia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(753, 1576, 'Kalur Dokan', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(754, 1577, 'Alir Jahal Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(755, 966, 'Nakhoyngchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(756, 1578, 'Barmis Market', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(757, 1579, 'Bazar Ghata', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(758, 1580, 'Laldighir Par (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(759, 1581, 'Holiday Mor(Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(760, 1582, 'Laboni Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(761, 1583, 'Sughandha Point', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(762, 1584, 'Marin Drive Road', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(763, 1585, 'Sonar Tara', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(764, 1586, 'Jilonjha', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(765, 1587, 'Tarabaniyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(766, 1588, 'Romaliyer chora', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(767, 1589, 'Khurushkul', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(768, 1590, 'P M Khali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(769, 1591, 'Somity Para', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(770, 1017, 'Kolatoli (Cox\'s Bazar)', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(771, 938, 'Bhola Sadar', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(772, 939, 'Borhanuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(773, 941, 'Daulatkhan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(774, 944, 'Tajumuddin', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(775, 924, 'Bamna', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(776, 925, 'Barguna Sadar', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(777, 926, 'Betagi', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(778, 927, 'Patharghata (Barguna)', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(779, 876, 'Belkuchi', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(780, 877, 'Chowhali', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(781, 878, 'Kamarkhanda', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(782, 879, 'Kazipur', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(783, 880, 'Raiganj', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(784, 881, 'Shahajadpur (Sirajganj)', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(785, 882, 'Sirajganj Sadar', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(786, 883, 'Tarash', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(787, 884, 'Ullapara', 'Sirajganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(788, 857, 'Atgharia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(789, 858, 'Bera', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(790, 859, 'Bhangura', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(791, 860, 'Chatmohar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(792, 861, 'Faridpur ( Pabna )', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(793, 863, 'Pabna Sadar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(794, 864, 'Santhia', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(795, 865, 'Sujanagar', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(796, 1616, 'Banwarinagar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(797, 1617, 'Debottar (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(798, 1618, 'Kashinathpur (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(799, 1619, 'Nakalia (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(800, 1621, 'Sagarkandi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(801, 855, 'Natore Sadar', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(802, 856, 'Singra', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(803, 851, 'Baghatipara', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(804, 852, 'Baraigram', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(805, 853, 'Gurudaspur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(806, 854, 'Lalpur', 'Natore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(807, 840, 'Atrai', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(808, 841, 'Badalgachi', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(809, 845, 'Naogaon Sadar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(810, 849, 'Raninagar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(811, 835, 'Akkelpur', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(812, 836, 'Joypurhat Sadar', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(813, 837, 'Kalai', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(814, 838, 'Khetlal', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(815, 839, 'Panchbibi', 'Joypurhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(816, 811, 'Assasuni', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(817, 812, 'Debhata', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(818, 813, 'Kaliganj(Satkhira)', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(819, 814, 'Kolaroa', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(820, 815, 'Satkhira Sadar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(821, 816, 'Shyamnagar', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(822, 817, 'Tala', 'Satkhira', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(823, 805, 'Gangni', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(824, 806, 'Meherpur Sadar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(825, 807, 'Mujibnagar', 'Meherpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(826, 734, 'Gosairhat', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(827, 735, 'Zajira', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(828, 736, 'Naria', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(829, 737, 'Shariatpur Sadar', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(830, 732, 'Bhedarganj', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(831, 733, 'Damudiya', 'Shariatpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(832, 727, 'Baliakandi', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(833, 728, 'Goalunda', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(834, 729, 'Pangsha', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(835, 730, 'Rajbari Sadar', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(836, 731, 'Kalukhali', 'Rajbari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(837, 681, 'Daulatpur(Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(838, 682, 'Ghior', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(839, 683, 'Harirampur (Manikganj)', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(840, 684, 'Manikganj Sadar', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(841, 685, 'Saturia', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(842, 686, 'Shibalaya', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(843, 687, 'Singair', 'Manikganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(844, 652, 'Gopalganj Sadar', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(845, 653, 'Kasiani', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(846, 654, 'Kotalipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(847, 655, 'Maksudpur', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(848, 656, 'Tungipara', 'Gopalganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(849, 1115, 'Baliadangi', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(850, 1134, 'Shibganj (Thakurgaon Sadar)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(851, 1116, 'Haripur', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(852, 1117, 'Pirganj(Thakurgaon)', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(853, 1118, 'Ranishankail', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(854, 1119, 'Thakurgaon Sadar', 'Thakurgaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(855, 717, 'Atpara', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(856, 718, 'Barhatta', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(857, 719, 'Durgapur(Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(858, 720, 'Kalmakanda', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(859, 721, 'Kendua', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(860, 722, 'Khaliajuri', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(861, 723, 'Madan', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(862, 724, 'Mohanganj', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(863, 725, 'Netrokona Sadar', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(864, 726, 'Purbadhala (Netrokona)', 'Netrokona', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(865, 903, 'Dharmapasha', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(866, 712, 'Monohardi', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(867, 713, 'Velanogor (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(868, 714, 'Palash', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(869, 716, 'Shibpur', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(870, 1505, 'Madhabdi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(871, 1506, 'Babur Haat (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(872, 1507, 'Pachdona More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(873, 1508, 'Shaheprotab More (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(874, 1509, 'West Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(875, 1510, 'East Brammondi (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(876, 1511, 'Songita Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(877, 1512, 'Shatirpara', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(878, 1513, 'Hasnabad Bazar (Narsingdi)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(879, 1024, 'Chagalnayya', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(880, 1025, 'Daganbhuiyan', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(881, 1026, 'Feni Sadar', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(882, 1027, 'Parshuram', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(883, 1028, 'Fulgazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(884, 1029, 'Sonagazi', 'Feni', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(885, 1072, 'Khanshama', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(886, 1074, 'Parbatipur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(887, 1483, 'College mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(888, 1484, 'Boromath (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(889, 1485, 'Pulhat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(890, 1486, 'Newtown (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(891, 1487, 'Lilir mor', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(892, 1488, 'Modern mor (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(893, 1063, 'Birganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(894, 1064, 'Birol', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(895, 1065, 'Bochaganj', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(896, 1066, 'Chirirbandar', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(897, 1067, 'Baluadanga (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(898, 1071, 'Kaharole', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(899, 1075, 'Fulchari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(900, 1076, 'Gaibandha Sadar', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(901, 1077, 'Gobindaganj ( Gaibandha )', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(902, 1078, 'Palashbari', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(903, 1079, 'Sadullapur', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(904, 1080, 'Shaghatta', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(905, 1081, 'Sundarganj', 'Gaibandha', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(906, 764, 'Alamdanga', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(907, 765, 'Chuadanga Sadar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(908, 766, 'Damurhuda', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(909, 767, 'Jibannagar', 'Chuadanga', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(910, 866, 'Bagha', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(911, 867, 'Bagmara (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(912, 868, 'Charghat', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(913, 869, 'Durgapur(Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(914, 870, 'Godagari', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(915, 871, 'Mohanpur (Rajshahi)', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(916, 872, 'Paba', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(917, 873, 'Putia', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(918, 874, 'Tanore', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(919, 875, 'Sadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(920, 1121, 'Rajshahi Shadar', 'Rajshahi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(921, 801, 'Magura Sadar', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(922, 802, 'Mohammadpur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(923, 803, 'Shalikha', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(924, 804, 'Sreepur (Magura)', 'Magura', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(925, 808, 'Kalia', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(926, 809, 'Lohagara(Narail)', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(927, 810, 'Narail Sadar', 'Narail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(928, 1053, 'Barkal', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(929, 1054, 'Belaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(930, 1055, 'Jurachari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(931, 1056, 'Kaptai', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(932, 1057, 'Kawkhali (Rangamati)', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(933, 1058, 'Langadu', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(934, 1059, 'Naniarchar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(935, 1060, 'Rajasthali', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(936, 1061, 'Rangamati Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(937, 1416, 'Kaptai Kaptai Project', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(938, 1417, 'Kaptai Nuton Bazar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(939, 1418, 'Kaptai Sadar', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(940, 800, 'Mirpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(941, 795, 'Bheramara', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(942, 796, 'Daulatpur (Kushtia)', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(943, 797, 'Khoksha', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(944, 798, 'Kumarkhali', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(945, 799, 'Kushtia Sadar', 'Kushtia', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(946, 830, 'Bholahat', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(947, 831, 'Gomastapur', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(948, 832, 'Nachole', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(949, 833, 'Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(950, 834, 'Shipganj ( Chapai )', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(951, 1126, 'Chapai Nawabganj Sadar', 'Chapai Nawabganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(952, 776, 'Kotchandpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(953, 777, 'Harinakunda', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(954, 778, 'Jhenaidah Sadar', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(955, 779, 'Kaliganj(Jhenaidah)', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(956, 780, 'Moheshpur', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(957, 781, 'Shailkupa', 'Jhenaidah', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(958, 1045, 'Companiganj (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(959, 1046, 'Hatiya', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(960, 1047, 'Maijdee (Noakhali)', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(961, 1048, 'Senbag', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(962, 1049, 'Sonaimuri', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(963, 1050, 'Subarnachar', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(964, 1051, 'Kabir Hat', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(965, 1043, 'Begumganj', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(966, 1044, 'Chatkhil', 'Noakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(967, 1601, 'Alexandar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(968, 1038, 'Laksmipur Sadar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(969, 1039, 'Ramgati', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(970, 1040, 'Ramganj', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(971, 1041, 'Raipur (Lakshmipur)', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(972, 1042, 'Kamalnagar', 'Laksmipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(973, 1082, 'Bhurungamari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(974, 1083, 'Chilmary', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(975, 1084, 'Fulbari (Kurigram)', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(976, 1085, 'Kurigram Sadar', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(977, 1086, 'Nageswari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(978, 1087, 'Rajarhat', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(979, 1088, 'Rajibpur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(980, 1089, 'Rowmari', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(981, 1090, 'Ulipur', 'Kurigram', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(982, 676, 'Tarail', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(983, 668, 'Itna', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(984, 669, 'Karimganj', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(985, 670, 'Katiadi', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(986, 671, 'Kishoreganj Sadar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(987, 664, 'Austogram', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(988, 665, 'Bajitpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(989, 673, 'Mithamain', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(990, 667, 'Hosainpur', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(991, 674, 'Nikli', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(992, 675, 'Pakundia', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(993, 828, 'Sonatola', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(994, 829, 'Shajahanpur (Bogura)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(995, 818, 'Adamdighi (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(996, 819, 'Bogra Sadar', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(997, 820, 'Dhunot', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(998, 821, 'Dhubchanchia', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(999, 822, 'Gabtali (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1000, 823, 'Kahaloo', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1001, 824, 'Nandigram', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1002, 825, 'Sariakandi', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1003, 826, 'Sherpur (Bogra)', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1004, 827, 'Shibganj ( Bogra )', 'Bogra', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1005, 768, 'Noapara (Jessore)', 'Jessore', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1006, 1052, 'Baghaichari', 'Rangamati', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1007, 1030, 'Dighinala', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1008, 1031, 'Khagrachari Sadar', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1009, 1032, 'Laksmichari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1010, 1033, 'Mohalchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1011, 1034, 'Manikchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1012, 1035, 'Matiranga', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1013, 1036, 'Panchari', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1014, 1037, 'Ramgor', 'Khagrachari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1015, 689, 'Lauhajang', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1016, 692, 'Sreenagar', 'Munshiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1017, 359, 'Dohar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1018, 446, 'Nawabgonj (Dhaka)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1019, 1629, 'Chandura (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1020, 1630, 'Singarbil (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1021, 1521, 'Kawtoly (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1022, 1631, 'Awliya Bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1023, 1522, 'T.A Road (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1024, 1632, 'Poirtola (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1025, 1523, 'Sarak bazar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1026, 1633, 'Ulchapara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1027, 1524, 'Moddopara (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53');
INSERT INTO `districts` (`id`, `area_id`, `area_name`, `district`, `shippingfee`, `partialpayment`, `created_at`, `updated_at`) VALUES
(1028, 1634, 'Bhadugor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1029, 1525, 'Birashar (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1030, 1635, 'Kumarshil more (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1031, 1526, 'Medda (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1032, 1527, 'Gatura- Pirbari (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1033, 970, 'Akhaura', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1034, 973, 'Paikpara (Brahmanbaria Sadar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1035, 1626, 'Bijoynagor (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1036, 1627, 'Shahbajpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1037, 1628, 'Sohilpur (Brahmanbaria)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1038, 1101, 'Saidpur', 'Nilphamari', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1039, 755, 'Bagerhat Sadar', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1040, 756, 'Chitalmari', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1041, 757, 'Fakirhat (Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1042, 758, 'Kachua(Bagerhat)', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1043, 759, 'Mollarhat', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1044, 760, 'Mongla', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1045, 761, 'Morelganj', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1046, 762, 'Rampal', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1047, 763, 'Sarankhola', 'Bagerhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1048, 1091, 'Aditmari', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1049, 1092, 'Hatibandha (Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1050, 1093, 'Kaliganj(Lalmonirhat)', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1051, 1094, 'Lalmonirhat Sadar', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1052, 1095, 'Patgram', 'Lalmonirhat', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1053, 1489, 'Old bustand (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1054, 1490, 'Kazirpoint (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1055, 1491, 'Hason Nagar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1056, 1492, 'Moddho bazar (Sunamganj)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1057, 1493, 'wazkhali', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1058, 900, 'Biswambharpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1059, 902, 'Derai', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1060, 905, 'Jagannathpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1061, 906, 'Jamalganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1062, 907, 'Sulla', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1063, 908, 'Traffic Point (Sunamganj Sadar)', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1064, 909, 'Taherpur', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1065, 910, 'South Sunamganj', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1066, 964, 'Bandarban Sadar', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1067, 967, 'Rawanchari', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1068, 968, 'Ruma', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1069, 1130, 'soho area', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1070, 969, 'Thanchi', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1071, 1598, 'SDA', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1072, 1391, 'Fatikchhari Harualchhari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1073, 1451, 'Raozan Fatepur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1074, 1392, 'Fatikchhari Najirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:53'),
(1075, 990, 'Fatikchari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1076, 1452, 'Raozan Guzra Noapara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1077, 1393, 'Fatikchhari Nanupur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1078, 991, 'Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1079, 1453, 'Raozan jagannath Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1080, 1454, 'Raozan Kundeshwari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1081, 1394, 'Fatikchhari Narayanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1082, 1455, 'Raozan Mohamuni', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1083, 1456, 'Raozan Pouroshobha', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1084, 995, 'Rangunia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1085, 1457, 'Rauzan Gahira', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1086, 996, 'Raojan', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1087, 1399, 'Chattogram University', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1088, 1400, 'Hathazari Fatahabad', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1089, 1401, 'Hathazari Gorduara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1090, 1402, 'Hathazari Katirhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1091, 1403, 'Hathazari Madrasa', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1092, 1404, 'Hathazari Mirzapur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1093, 1463, 'Sayad Bari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1094, 1405, 'Hathazari Nuralibari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1095, 1432, 'Muradnagar - Hathazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1096, 1406, 'Hathazari Yunus Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1097, 1381, 'Dakkhin Ghatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1098, 1414, 'Kadeer Nagar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1099, 1415, 'Kaptai Chandraghona', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1100, 1472, 'Uttar Gatchak', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1101, 1445, 'Rangunia Dhamair', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1102, 1446, 'Rangunia Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1103, 1447, 'Ranir Hat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1104, 1448, 'Raozan B.I.T Post Office', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1105, 1389, 'Fakirkill', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1106, 1449, 'Raozan Beenajuri', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1107, 1390, 'Fatikchhari Bhandar Sharif', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1108, 1450, 'Raozan Dewanpur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1109, 1424, 'Mirsharai Abutorab', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1110, 1425, 'Mirsharai Azampur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1111, 1426, 'Mirsharai Bharawazhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1112, 1427, 'Mirsharai Darrogahat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1113, 993, 'Mirsarai', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1114, 1428, 'Mirsharai Joarganj', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1115, 1429, 'Mirsharai Korerhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1116, 1430, 'Mirsharai Mohazanhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1117, 1364, 'Boalkhali Sakpura', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1118, 994, 'Patiya', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1119, 1365, 'Boalkhali Saroatoli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1120, 1138, 'Karnaphuli', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1121, 1412, 'Jaldia Marine Academy', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1122, 1413, 'Jaldia Merine Accade', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1123, 1441, 'Patiya Budhpara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1124, 1442, 'Patiya Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1125, 1356, 'Anawara Battali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1126, 1357, 'Anawara Paroikora', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1127, 1359, 'Boalkhali Charandwip', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1128, 1360, 'Boalkhali Iqbal Park', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1129, 986, 'Anwara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1130, 1361, 'Boalkhali Kadurkhal', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1131, 1362, 'Boalkhali Kanungopara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1132, 1363, 'Boalkhali Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1133, 988, 'Boalkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1134, 1018, 'Kutubdia', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1135, 963, 'Ali Kadam', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1136, 1019, 'Moheshkhali', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1137, 1020, 'Pekua', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1138, 965, 'Lama', 'Bandarban', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1139, 1016, 'Chakoria', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1140, 919, 'Zakiganj', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1141, 893, 'Barlekha', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1142, 899, 'Juri', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1143, 912, 'Beanibazar', 'Sylhet', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1144, 972, 'Bancharampur (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1145, 974, 'Kashba (Nabinagar)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1146, 975, 'Nabinagar (Nabinagar Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1147, 933, 'Gournadi (Barisal)', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1148, 934, 'Hijla', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1149, 936, 'Muladi', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1150, 937, 'Wazirpur', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1151, 928, 'Agailjhara', 'Barisal', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1152, 1073, 'Nawabganj (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1153, 1062, 'Birampur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1154, 1068, 'Phulbari (Dinajpur)', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1155, 1069, 'Ghoraghat', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1156, 1070, 'Hakimpur', 'Dinajpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1157, 711, 'Belabo', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1158, 715, 'Raipura (Bhairab)', 'Norshingdi', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1159, 971, 'Ashuganj (Bhairab)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1160, 976, 'Nasirnagar (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1161, 977, 'Sarail (Bhairab Hub)', 'Brahmanbaria', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1162, 672, 'Kuliarchar', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1163, 666, 'Bhairab', 'Kishoreganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1164, 1482, 'Gouripur (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1165, 1006, 'Daudkandi', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1166, 1008, 'Homna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1167, 1010, 'Meghna', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1168, 1013, 'Titas', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1169, 901, 'Chattak', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1170, 904, 'Dowarabazar', 'Sunamganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1171, 709, 'Rupganj', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1172, 175, 'Bawaliapara (Narayangaj)', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1173, 706, 'Araihazar', 'Narayanganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1174, 1478, 'Vobanipur Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1175, 1570, 'Rajabari Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1176, 1479, 'Barmi Sreepur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1177, 1480, 'Fulbaria Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1178, 650, 'Kapasia', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1179, 1555, 'Porabari Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1180, 651, 'Sreepur(Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1181, 1556, 'Dhaladia Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1182, 1557, 'Hotapara', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1183, 1558, 'Bager bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1184, 1559, 'Member Bari Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1185, 1560, 'Gorgoria masterbari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1186, 1561, 'Mc Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1187, 1562, 'Nayanpur Sreepur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1188, 1475, 'Mawna', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1189, 1567, 'Joyna Bazar', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1190, 1476, 'Rajendrapur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1191, 1477, 'Bhawal Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1192, 1004, 'Chowddagram', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1193, 1009, 'Laksam', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1194, 1012, 'Nangolkot', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1195, 1014, 'Monoharganj', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1196, 787, 'Koira', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1197, 788, 'Paikgacha', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1198, 1592, 'Amadee Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1199, 1593, 'kopilmuni Bazar', 'Khulna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1200, 888, 'Chunarughat (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1201, 1599, 'Shayestaganj (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1202, 891, 'Madhabpur (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1203, 1614, 'Ranigaon (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1204, 1615, 'Putijuri (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1205, 886, 'Bahubal (Shayestaganj Hub)', 'Habiganj', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1206, 746, 'Ghatail', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1207, 747, 'Gopalpur (Tangail)', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1208, 750, 'Modhupur', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1209, 754, 'Dhanbari', 'Tangail', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1210, 694, 'Valuka', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1211, 698, 'Goffargaon', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1212, 705, 'Trishal', 'Mymensingh', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1213, 1022, 'Teknaf', 'Cox\'s Bazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1214, 997, 'Sandwip (Guptachara)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1215, 1459, 'Sandwip Shiberhat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1216, 1460, 'Sandwip Urirchar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1217, 1610, 'Sandwip (Enam Nagar)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1218, 1611, 'Sandwip (Complex)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1219, 1612, 'Sandwip (Kalapaniya)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1220, 1613, 'Sandwip (Gasua)', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1221, 842, 'Dhamoirhat', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1222, 843, 'Manda(Naogaon)', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1223, 844, 'Mahadebpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1224, 846, 'Niamatpur', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1225, 847, 'Patnitala', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1226, 848, 'Porsha', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1227, 850, 'Shapahar', 'Naogaon', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1228, 981, 'Hajiganj (Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1229, 982, 'Kachua(Chandpur)', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1230, 985, 'Shahrasti', 'Chandpur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1231, 862, 'Iswardi', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1232, 1620, 'Pakshi (Pabna)', 'Pabna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1233, 417, 'Konapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:25'),
(1234, 278, 'Demra', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1235, 1723, 'Basher pull (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1236, 1724, 'Bamuail (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1237, 1725, 'Sharuliya (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1238, 1726, 'Rani mohol (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1239, 1727, 'Staffquater (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1240, 1728, 'Demra bazar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1241, 1729, 'Hajinogar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1242, 1730, 'Boxnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1243, 1731, 'Badsha mia road (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1244, 1732, 'Muslimnagar (Demra)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1245, 413, 'Matuail', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1246, 1305, 'Mollartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1247, 1150, 'Mollapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1248, 68, 'Sonali Bank Staff Quarter', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1249, 1306, 'Gawair', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1250, 1151, 'Azampur (East)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1251, 1307, 'Kosaibari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1252, 70, 'Kawla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1253, 1308, 'Prembagan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1254, 71, 'Naddapara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1255, 1309, 'Kachkura', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1256, 1310, 'Helal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1257, 1311, 'Chamur Khan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1258, 1312, 'Society', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1259, 1313, 'Ismailkholla', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1260, 1292, 'Uttarkhan Mazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1261, 1314, 'Masterpara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1262, 1159, 'Azampur (West) (Uttara)', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1263, 1293, 'Dakshinkhan Bazar', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1264, 1315, 'Munda', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1265, 1294, 'Hajipara-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1266, 1316, 'Barua', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1267, 1296, 'Joynal Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1268, 1297, 'Johura Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1269, 1298, 'Habib Market', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1270, 1319, 'Ainusbag-Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1271, 46, 'Ainusbag', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1272, 47, 'Uttarkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1273, 48, 'Dakshinkhan', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1274, 49, 'Fayedabad', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1275, 1299, 'BDR Market-House Building', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1276, 50, 'Ashkona', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1277, 1651, 'Uttara Sector - 2', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1278, 1300, 'BDR Market-Sector 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1279, 1652, 'Uttara Sector - 6', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1280, 1301, 'Moinartek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1281, 1653, 'Uttara Sector - 8', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1282, 1302, 'Atipara', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1283, 1147, 'Uttara Sector-4', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1284, 1303, 'Kot Bari', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1285, 1148, 'Goaltek', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1286, 1304, 'Dewan City', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1287, 1149, 'Chalabon', 'Dhaka', '80', '200', '2021-10-31 19:02:40', '2022-12-10 04:25:26'),
(1288, 940, 'Charfession', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1289, 942, 'Lalmohan', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1290, 943, 'Manpura', 'Bhola', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1291, 1569, 'Chondra Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1292, 1738, 'Goailbari bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1293, 1739, 'Hatimara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1294, 1740, 'Sardagonj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1295, 1741, 'Ambagh (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1296, 1742, 'Fulbaria bazar (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1297, 1743, 'Madhobpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1298, 1744, 'Kabirpur (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1299, 1745, 'Walton high-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1300, 1746, 'Walton micro-tech (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1301, 1747, 'Mollapara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1302, 1748, 'Jalsukha (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1303, 1749, 'Gosatra (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1304, 648, 'Kaliakoir', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1305, 1563, 'Konabari', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1306, 1564, 'Mouchak Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1307, 1734, 'Vannara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1308, 1565, 'Kashempur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1309, 1566, 'Shafipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1310, 1735, 'Sardarganj (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1311, 1736, 'Sultan Market (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1312, 1568, 'Pollibiddut Gazipur', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1313, 1737, 'Baroipara (Gazipur)', 'Gazipur', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1314, 1602, 'Kuakata', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1315, 1604, 'Khepupara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1316, 1605, 'Payra port', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1317, 923, 'Amtali', 'Barguna', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1318, 1608, 'Mahipur', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1319, 953, 'Kalapara', 'Patuakhali', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1320, 1750, 'Companyganj (Comilla)', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1321, 1011, 'Muradnagar - Cumilla', 'Comilla', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1322, 1713, 'Tilagao - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1323, 1714, 'Bhatera - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1324, 895, 'Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1325, 1624, 'Baramchal (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1326, 1625, 'Robir Bazar (Kulaura)', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1327, 1709, 'Brahman Bazar - Kulaura', 'Moulvibazar', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1328, 989, 'Chandanaish', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1329, 992, 'Lohagara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1330, 1461, 'Satkania Baitul Ijjat', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1331, 1462, 'Satkania Bazalia', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1332, 998, 'Satkania', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1333, 1408, 'Jaldi Banigram', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1334, 1409, 'Jaldi Gunagari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1335, 1410, 'Jaldi Khan Bahadur', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1336, 1411, 'Jaldi Sadar', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1337, 1384, 'East Joara Barma', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1338, 1385, 'East Joara Dohazari', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1339, 1386, 'East Joara East Joara', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1340, 1387, 'East Joara Gachbaria', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1341, 1421, 'Lohagara Chunti', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1342, 1422, 'Lohagara Padua', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54'),
(1343, 987, 'Banshkhali', 'Chittagong', '150', '510', '2021-10-31 19:02:40', '2022-12-10 04:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `ecom_pixels`
--

CREATE TABLE `ecom_pixels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ecom_pixels`
--

INSERT INTO `ecom_pixels` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(4, '1115870270194394', 1, '2023-08-10 14:38:51', '2024-09-20 16:57:56');

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
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) NOT NULL,
  `white_logo` varchar(255) NOT NULL,
  `dark_logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `copyright` varchar(155) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` longtext DEFAULT NULL,
  `og_baner` text DEFAULT NULL,
  `play_store` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `name`, `white_logo`, `dark_logo`, `favicon`, `copyright`, `description`, `status`, `created_at`, `updated_at`, `meta_description`, `meta_keyword`, `og_baner`, `play_store`) VALUES
(2, 'Mid Range Fashion', 'public/uploads/settings/1744385896-whatsapp-image-2025-04-07-at-11.09.49-pm.webp', 'public/uploads/settings/1744385707-white-background.webp', 'public/uploads/settings/1744385707-white-background.webp', NULL, '<b>sadf</b>', 1, '2023-01-21 12:01:07', '2025-04-11 15:38:16', 'Mid Range Fashion\" is a boys clothing brand', 'ecommerce,commerce,ecommerce website in bangladesh,midrange,midrangefashion', 'public/uploads/settings/1744385575-cover-2.webp', 'https://www.youtube.com/watch?v=dvvHHQfT6us');

-- --------------------------------------------------------

--
-- Table structure for table `google_tag_managers`
--

CREATE TABLE `google_tag_managers` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `google_tag_managers`
--

INSERT INTO `google_tag_managers` (`id`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'GTM-KG5X8N3B', 1, '2024-02-11 07:08:03', '2024-09-20 08:24:53'),
(2, '#3762704717300111', 1, '2024-11-28 16:15:21', '2024-11-28 16:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `ip_blocks`
--

CREATE TABLE `ip_blocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip_no` varchar(255) NOT NULL,
  `reason` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_11_113936_create_permission_tables', 1),
(8, '2023_01_21_150317_create_general_settings_table', 3),
(9, '2023_01_22_140830_create_social_media_table', 4),
(10, '2023_01_22_153053_create_contacts_table', 5),
(12, '2023_01_22_171430_create_categories_table', 6),
(17, '2023_02_09_082622_create_attributes_table', 7),
(21, '2023_02_11_065126_create_brands_table', 8),
(23, '2023_02_20_022411_create_customers_table', 9),
(24, '2023_02_21_083509_create_banners_table', 8),
(25, '2023_02_21_083647_create_banner_categories_table', 8),
(28, '2023_01_11_114621_create_products_table', 10),
(29, '2023_02_09_091624_create_productimages_table', 10),
(31, '2023_02_22_095626_create_districts_table', 11),
(48, '2023_02_22_150326_create_orders_table', 12),
(49, '2023_02_22_150339_create_order_details_table', 12),
(50, '2023_02_22_150351_create_shippings_table', 12),
(51, '2023_02_22_150400_create_payments_table', 12),
(53, '2023_02_25_022224_create_create_pages_table', 13),
(56, '2023_02_27_095310_create_reviews_table', 14),
(57, '2023_02_27_104954_create_order_types_table', 15),
(58, '2023_03_06_160934_create_campaigns_table', 16),
(59, '2023_03_13_121325_create_productprices_table', 17),
(60, '2023_04_17_125517_create_flavors_table', 18),
(61, '2023_04_17_125843_create_productflavors_table', 18),
(62, '2023_08_04_101452_create_shipping_charges_table', 19),
(64, '2023_08_04_204814_create_order_statuses_table', 20),
(65, '2023_08_06_161254_create_ecom_pixels_table', 21),
(66, '2023_06_04_121934_create_colors_table', 22),
(67, '2023_06_04_122329_create_sizes_table', 22),
(68, '2023_06_04_122459_create_productsizes_table', 22),
(69, '2023_06_04_122542_create_productcolors_table', 22),
(71, '2023_08_17_151949_create_campaign_reviews_table', 23),
(72, '2023_08_21_152844_create_ip_blocks_table', 24),
(73, '2023_09_07_171103_create_subcategories_table', 25),
(74, '2023_09_07_171404_create_childcategories_table', 25),
(76, '2024_02_06_165515_create_payment_gateways_table', 26),
(77, '2024_02_07_142550_create_sms_gateways_table', 27),
(78, '2024_02_07_161302_create_courierapis_table', 28),
(79, '2024_02_11_111947_create_google_tag_managers_table', 29);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 6),
(1, 'App\\Models\\User', 7),
(1, 'App\\Models\\User', 8),
(1, 'App\\Models\\User', 10);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_id` varchar(55) NOT NULL,
  `amount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `shipping_charge` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `admin_note` text DEFAULT NULL,
  `order_status` tinyint(4) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `note` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `amount`, `discount`, `shipping_charge`, `customer_id`, `admin_note`, `order_status`, `user_id`, `note`, `created_at`, `updated_at`) VALUES
(234, '86483', 750, 0, 0, 192, NULL, 1, NULL, NULL, '2025-04-16 19:15:31', '2025-04-16 19:15:31'),
(235, '23071', 1, 0, 0, 193, NULL, 1, 6, NULL, '2025-04-18 18:30:30', '2025-04-19 00:48:54'),
(236, '32188', 1260, 0, 80, 194, NULL, 1, NULL, NULL, '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(237, '55389', 830, 0, 80, 194, NULL, 1, NULL, NULL, '2025-04-19 01:00:53', '2025-04-19 01:00:53'),
(238, '13886', 830, 0, 80, 194, NULL, 1, NULL, NULL, '2025-04-19 01:01:17', '2025-04-19 01:01:17'),
(239, '13169', 81, 0, 80, 194, NULL, 1, NULL, NULL, '2025-04-19 01:01:41', '2025-04-19 01:01:41'),
(240, '56105', 779, 0, 80, 194, NULL, 1, NULL, NULL, '2025-04-19 01:02:09', '2025-04-19 01:02:09'),
(241, '90370', 142, 0, 140, 195, NULL, 1, NULL, NULL, '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(242, '97643', 142, 0, 140, 196, NULL, 1, NULL, NULL, '2025-04-23 21:01:54', '2025-04-23 21:01:54'),
(243, '65731', 141, 0, 140, 197, NULL, 1, NULL, NULL, '2025-05-07 17:09:38', '2025-05-07 17:09:38'),
(244, '99144', 480, 0, 80, 194, NULL, 1, NULL, NULL, '2025-05-13 05:21:39', '2025-05-13 05:21:39'),
(245, '40993', 81, 0, 80, 194, NULL, 1, NULL, NULL, '2025-05-13 05:39:04', '2025-05-13 05:39:04'),
(246, '90184', 530, 0, 140, 191, NULL, 1, NULL, NULL, '2025-05-14 13:22:01', '2025-05-14 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `purchase_price` int(11) DEFAULT NULL,
  `sale_price` int(11) NOT NULL,
  `product_discount` int(11) DEFAULT 0,
  `product_size` varchar(255) DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `product_name`, `purchase_price`, `sale_price`, `product_discount`, `product_size`, `product_color`, `qty`, `created_at`, `updated_at`) VALUES
(277, 234, 392, 'T-SHIRT PREMIEM', 450, 750, 0, 'L', NULL, 1, '2025-04-16 19:15:31', '2025-04-16 19:15:31'),
(278, 235, 391, 'Pendrive 64GB 10x Speed USB 3.2 FX3CGBM', 570, 1, 0, 'M', NULL, 1, '2025-04-18 18:30:30', '2025-04-18 18:30:30'),
(279, 236, 373, 'Smiling Shark TD-1007 Rechargeable Mini Headlight', 100, 430, 0, NULL, NULL, 1, '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(280, 236, 392, 'T-SHIRT PREMIEM', 450, 750, 0, 'L', NULL, 1, '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(281, 237, 392, 'T-SHIRT PREMIEM', 450, 750, 0, 'L', NULL, 1, '2025-04-19 01:00:53', '2025-04-19 01:00:53'),
(282, 238, 392, 'T-SHIRT PREMIEM', 450, 750, 0, 'L', NULL, 1, '2025-04-19 01:01:17', '2025-04-19 01:01:17'),
(283, 239, 391, 'Pendrive 64GB 10x Speed USB 3.2 FX3CGBM', 570, 1, 0, 'L', NULL, 1, '2025-04-19 01:01:41', '2025-04-19 01:01:41'),
(284, 240, 376, 'BEEBEST Gravity Sensor Induction Portable Multifunctional Flashlight', 100, 699, 0, NULL, NULL, 1, '2025-04-19 01:02:09', '2025-04-19 01:02:09'),
(285, 241, 389, 'Xiaomi Lite 2 Wireless Mouse Optical Sensor Adjustable DPI', 100, 1, 0, NULL, NULL, 1, '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(286, 241, 391, 'Pendrive 64GB 10x Speed USB 3.2 FX3CGBM', 570, 1, 0, 'XXL', NULL, 1, '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(287, 242, 389, 'Xiaomi Lite 2 Wireless Mouse Optical Sensor Adjustable DPI', 100, 1, 0, NULL, NULL, 2, '2025-04-23 21:01:54', '2025-04-23 21:01:54'),
(288, 243, 391, 'Pendrive 64GB 10x Speed USB 3.2 FX3CGBM', 570, 1, 0, 'L', NULL, 1, '2025-05-07 17:09:38', '2025-05-07 17:09:38'),
(289, 244, 388, 'A4tech KRS-85/ Krs-83/krs-82 FN-Hotkeys Wired Multimedia Keyboard With Bangla Layout', 100, 400, 0, NULL, NULL, 1, '2025-05-13 05:21:39', '2025-05-13 05:21:39'),
(290, 245, 389, 'Xiaomi Lite 2 Wireless Mouse Optical Sensor Adjustable DPI', 100, 1, 0, NULL, NULL, 1, '2025-05-13 05:39:04', '2025-05-13 05:39:04'),
(291, 246, 384, 'WiWU Wimice Wireless Mouse WM107 Dual-mode', 100, 390, 0, NULL, NULL, 1, '2025-05-14 13:22:01', '2025-05-14 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(155) NOT NULL,
  `slug` varchar(155) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pending', 'pending', '1', '2023-08-15 11:28:33', '2023-08-15 11:28:33'),
(2, 'Processing', 'processing', '1', '2023-08-15 11:31:22', '2023-08-15 11:31:22'),
(3, 'On The Way', 'on-the-way', '1', '2023-08-15 11:31:34', '2023-08-15 11:31:34'),
(4, 'On Hold', 'on-hold', '1', '2023-08-15 11:31:45', '2024-09-11 22:09:17'),
(5, 'In Courier', 'in-courier', '1', '2023-08-15 11:31:56', '2024-10-11 00:50:48'),
(6, 'Completed', 'completed', '1', '2023-08-15 11:32:06', '2023-08-21 05:46:06'),
(7, 'Cancelled', 'cancelled', '1', '2023-08-21 05:46:15', '2023-08-21 05:46:15');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `trx_id` varchar(55) DEFAULT NULL,
  `sender_number` varchar(55) DEFAULT NULL,
  `payment_method` varchar(55) DEFAULT NULL,
  `payment_status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `customer_id`, `amount`, `trx_id`, `sender_number`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(234, 234, 192, 750, NULL, NULL, 'bkash', 'pending', '2025-04-16 19:15:31', '2025-04-16 19:15:31'),
(235, 235, 193, 1, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-18 18:30:30', '2025-04-18 18:30:30'),
(236, 236, 194, 1260, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(237, 237, 194, 830, NULL, NULL, 'bkash', 'pending', '2025-04-19 01:00:53', '2025-04-19 01:00:53'),
(238, 238, 194, 830, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-19 01:01:17', '2025-04-19 01:01:17'),
(239, 239, 194, 81, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-19 01:01:41', '2025-04-19 01:01:41'),
(240, 240, 194, 779, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-19 01:02:09', '2025-04-19 01:02:09'),
(241, 241, 195, 142, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(242, 242, 196, 142, NULL, NULL, 'Cash On Delivery', 'pending', '2025-04-23 21:01:54', '2025-04-23 21:01:54'),
(243, 243, 197, 141, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-07 17:09:38', '2025-05-07 17:09:38'),
(244, 244, 194, 480, NULL, NULL, 'bkash', 'pending', '2025-05-13 05:21:39', '2025-05-13 05:21:39'),
(245, 245, 194, 81, NULL, NULL, 'Cash On Delivery', 'pending', '2025-05-13 05:39:04', '2025-05-13 05:39:04'),
(246, 246, 191, 530, NULL, NULL, 'bkash', 'pending', '2025-05-14 13:22:01', '2025-05-14 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(55) DEFAULT NULL,
  `app_key` varchar(155) DEFAULT NULL,
  `app_secret` varchar(155) DEFAULT NULL,
  `username` varchar(55) DEFAULT NULL,
  `password` varchar(55) DEFAULT NULL,
  `base_url` varchar(99) DEFAULT NULL,
  `success_url` varchar(155) DEFAULT NULL,
  `return_url` varchar(155) DEFAULT NULL,
  `prefix` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `type`, `app_key`, `app_secret`, `username`, `password`, `base_url`, `success_url`, `return_url`, `prefix`, `status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', 'w5CHBl2PasU0pWKAAoyz1ADGtc', 'hh9v0N1cmJcITiMNiFgLkp4NmYnKfLMTcsnyOfFf2d5eMLe56cMH', '01319911688', '^FI],6n?b08', 'https://tokenized.pay.bka.sh/v1.2.0-beta', NULL, NULL, NULL, 0, '2024-02-06 11:29:46', '2025-05-14 13:22:29'),
(2, 'shurjopay', '', '', 'sp_sandbox', 'pyyk97hu&6u6', 'https://sandbox.shurjopayment.com', 'https://suvroit.online/', 'https://suvroit.online', 'NOK', 0, '2024-02-06 11:29:46', '2024-09-14 03:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2023-01-11 06:31:32', '2023-01-11 06:31:32'),
(2, 'role-create', 'web', '2023-01-11 06:31:33', '2023-01-11 06:31:33'),
(3, 'role-edit', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(4, 'role-delete', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(5, 'product-list', 'web', '2023-01-11 06:31:34', '2023-01-11 06:31:34'),
(6, 'product-create', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(7, 'product-edit', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(8, 'product-delete', 'web', '2023-01-11 06:31:35', '2023-01-11 06:31:35'),
(9, 'permission-list', 'web', NULL, NULL),
(10, 'permission-create', 'web', NULL, NULL),
(11, 'setting-delete', 'web', '2023-01-21 10:50:15', '2023-01-21 10:50:15'),
(12, 'setting-edit', 'web', '2023-01-21 10:50:35', '2023-01-21 10:50:35'),
(13, 'setting-create', 'web', '2023-01-21 10:50:50', '2023-01-21 10:50:50'),
(14, 'setting-list', 'web', '2023-01-21 10:51:01', '2023-01-21 10:51:01'),
(15, 'social-list', 'web', '2023-01-22 08:33:54', '2023-01-22 08:33:54'),
(16, 'social-create', 'web', '2023-01-22 08:34:07', '2023-01-22 08:34:07'),
(17, 'social-edit', 'web', '2023-01-22 08:34:17', '2023-01-22 08:34:17'),
(18, 'social-delete', 'web', '2023-01-22 08:34:25', '2023-01-22 08:34:25'),
(19, 'contact-list', 'web', '2023-01-22 10:25:01', '2023-01-22 10:25:01'),
(20, 'contact-create', 'web', '2023-01-22 10:25:16', '2023-01-22 10:28:19'),
(21, 'permission-edit', 'web', '2023-01-22 10:26:28', '2023-01-22 10:26:28'),
(22, 'permission-delete', 'web', '2023-01-22 10:26:39', '2023-01-22 10:26:39'),
(23, 'contact-edit', 'web', '2023-01-22 10:28:34', '2023-01-22 10:28:34'),
(24, 'contact-delete', 'web', '2023-01-22 10:28:45', '2023-01-22 10:28:45'),
(25, 'category-list', 'web', '2023-02-08 10:26:58', '2023-02-08 10:26:58'),
(26, 'category-create', 'web', '2023-02-08 10:27:19', '2023-02-08 10:27:19'),
(27, 'category-edit', 'web', '2023-02-08 10:27:28', '2023-02-08 10:27:28'),
(28, 'category-delete', 'web', '2023-02-08 10:27:38', '2023-02-08 10:27:38'),
(29, 'attribute-list', 'web', '2023-02-09 02:54:47', '2023-02-09 02:54:47'),
(30, 'attribute-create', 'web', '2023-02-09 02:55:02', '2023-02-09 02:55:02'),
(31, 'attribute-edit', 'web', '2023-02-09 02:55:14', '2023-02-09 02:55:14'),
(32, 'attribute-delete', 'web', '2023-02-09 02:55:23', '2023-02-09 02:55:23'),
(33, 'banner-category-list', 'web', '2023-02-21 03:00:08', '2023-02-21 03:00:08'),
(34, 'banner-category-create', 'web', '2023-02-21 03:00:34', '2023-02-21 03:00:34'),
(35, 'banner-category-edit', 'web', '2023-02-21 03:00:45', '2023-02-21 03:00:45'),
(36, 'banner-category-delete', 'web', '2023-02-21 03:00:53', '2023-02-21 03:00:53'),
(37, 'banner-list', 'web', '2023-02-21 03:51:27', '2023-02-21 03:51:27'),
(38, 'banner-create', 'web', '2023-02-21 03:51:50', '2023-02-21 03:51:50'),
(39, 'banner-edit', 'web', '2023-02-21 03:52:18', '2023-02-21 03:52:18'),
(40, 'banner-delete', 'web', '2023-02-21 03:52:32', '2023-02-21 03:52:32'),
(41, 'page-list', 'web', '2023-02-24 20:42:52', '2023-02-24 20:42:52'),
(42, 'page-create', 'web', '2023-02-24 20:43:01', '2023-02-24 20:43:01'),
(43, 'page-edit', 'web', '2023-02-24 20:43:08', '2023-02-24 20:43:08'),
(44, 'page-delete', 'web', '2023-02-24 20:43:15', '2023-02-24 20:43:15'),
(49, 'shipping-list', 'web', '2023-08-04 08:46:28', '2023-08-04 08:46:28'),
(50, 'shipping-create', 'web', '2023-08-04 08:47:09', '2023-08-04 08:47:09'),
(51, 'shipping-edit', 'web', '2023-08-04 08:47:23', '2023-08-04 08:47:23'),
(52, 'shipping-delete', 'web', '2023-08-04 08:47:34', '2023-08-04 08:47:34'),
(53, 'color-list', 'web', '2023-08-15 07:48:52', '2023-08-15 07:48:52'),
(54, 'color-create', 'web', '2023-08-15 07:49:01', '2023-08-15 07:49:01'),
(55, 'color-edit', 'web', '2023-08-15 07:49:12', '2023-08-15 07:49:12'),
(56, 'color-delete', 'web', '2023-08-15 07:49:20', '2023-08-15 07:49:20'),
(69, 'subcategory-list', 'web', '2024-01-31 10:49:48', '2024-01-31 10:49:48'),
(70, 'subcategory-create', 'web', '2024-01-31 10:49:56', '2024-01-31 10:49:56'),
(71, 'subcategory-edit', 'web', '2024-01-31 10:50:04', '2024-01-31 10:50:04'),
(72, 'subcategory-delete', 'web', '2024-01-31 10:50:13', '2024-01-31 10:50:13'),
(73, 'childcategory-list', 'web', '2024-01-31 10:51:33', '2024-01-31 10:51:33'),
(74, 'childcategory-create', 'web', '2024-01-31 10:51:41', '2024-01-31 10:51:41'),
(75, 'childcategory-edit', 'web', '2024-01-31 10:51:50', '2024-01-31 10:51:50'),
(76, 'childcategory-delete', 'web', '2024-01-31 10:52:00', '2024-01-31 10:52:00');

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
-- Table structure for table `productcolors`
--

CREATE TABLE `productcolors` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productcolors`
--

INSERT INTO `productcolors` (`id`, `product_id`, `color_id`, `created_at`, `updated_at`) VALUES
(1, 1, 35, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 62, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 35, 44, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(4, 28, 62, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(5, 2, 65, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(6, 131, 32, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(7, 131, 36, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(8, 131, 39, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(9, 131, 40, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(10, 132, 35, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(11, 132, 52, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(12, 132, 62, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(13, 133, 62, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(14, 134, 35, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(15, 134, 52, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(16, 134, 63, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(17, 137, 35, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(18, 137, 54, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(19, 138, 35, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(20, 138, 36, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(21, 138, 39, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(22, 139, 32, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(23, 139, 36, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(24, 139, 39, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(25, 140, 35, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(26, 140, 39, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(27, 141, 32, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(28, 141, 35, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(29, 157, 32, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(30, 157, 35, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(31, 163, 40, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(32, 163, 44, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(33, 163, 59, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(34, 166, 36, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(35, 166, 40, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(36, 166, 44, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(37, 166, 54, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(38, 166, 73, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(39, 168, 36, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(40, 168, 44, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(41, 168, 55, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(42, 177, 35, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(44, 177, 62, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(45, 177, 63, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(48, 178, 59, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(49, 178, 60, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(53, 179, 62, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(54, 180, 35, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(56, 180, 53, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(58, 182, 35, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(59, 182, 41, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(60, 182, 49, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(61, 182, 59, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(63, 182, 63, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(64, 186, 35, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(65, 186, 40, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(72, 186, 62, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(73, 187, 35, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(77, 187, 63, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(78, 189, 62, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(79, 190, 70, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(80, 191, 44, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(81, 192, 42, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(82, 193, 44, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(83, 199, 42, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(84, 211, 62, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(85, 212, 35, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(86, 213, 59, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(87, 214, 70, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(88, 215, 52, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(89, 220, 42, '2024-09-15 16:08:10', '2024-09-15 16:08:10'),
(90, 232, 59, '2024-09-15 16:20:00', '2024-09-15 16:20:00'),
(91, 241, 59, '2024-09-15 16:26:53', '2024-09-15 16:26:53'),
(92, 252, 44, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(93, 252, 52, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(94, 255, 36, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(95, 255, 59, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(96, 256, 36, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(97, 256, 44, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(98, 278, 35, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(99, 284, 36, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(100, 284, 44, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(101, 306, 35, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(103, 306, 44, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(104, 306, 59, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(106, 185, 35, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(108, 185, 59, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(109, 185, 62, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(110, 185, 63, '2024-09-22 04:36:04', '2024-09-22 04:36:04'),
(114, 181, 35, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(115, 181, 55, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(116, 181, 60, '2024-09-22 04:38:31', '2024-09-22 04:38:31'),
(117, 180, 49, '2024-09-22 04:39:22', '2024-09-22 04:39:22'),
(118, 178, 49, '2024-09-22 04:42:00', '2024-09-22 04:42:00'),
(119, 306, 50, '2024-09-23 04:37:02', '2024-09-23 04:37:02'),
(120, 306, 74, '2024-09-23 04:37:02', '2024-09-23 04:37:02'),
(123, 187, 42, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(124, 187, 59, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(125, 187, 77, '2024-09-27 13:59:05', '2024-09-27 13:59:05'),
(126, 186, 51, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(127, 186, 59, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(128, 186, 63, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(129, 186, 75, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(130, 186, 76, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(131, 186, 81, '2024-09-27 14:00:06', '2024-09-27 14:00:06'),
(132, 184, 42, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(133, 184, 50, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(134, 184, 55, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(135, 184, 80, '2024-09-27 14:00:46', '2024-09-27 14:00:46'),
(136, 185, 81, '2024-09-27 14:01:14', '2024-09-27 14:01:14'),
(137, 183, 35, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(138, 183, 59, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(139, 183, 62, '2024-09-27 14:01:33', '2024-09-27 14:01:33'),
(140, 181, 52, '2024-09-27 14:02:44', '2024-09-27 14:02:44'),
(141, 181, 59, '2024-09-27 14:02:44', '2024-09-27 14:02:44'),
(142, 180, 79, '2024-09-27 14:03:25', '2024-09-27 14:03:25'),
(143, 179, 51, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(144, 179, 56, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(145, 179, 60, '2024-09-27 14:04:10', '2024-09-27 14:04:10'),
(146, 177, 76, '2024-09-27 14:04:50', '2024-09-27 14:04:50'),
(147, 318, 62, '2024-09-29 17:41:15', '2024-09-29 17:41:15'),
(148, 322, 32, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(149, 322, 42, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(150, 322, 50, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(151, 322, 58, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(152, 335, 51, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(153, 335, 59, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(154, 367, 41, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(155, 367, 60, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(156, 367, 62, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(157, 368, 44, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(158, 368, 52, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(159, 369, 35, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(160, 369, 51, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(161, 371, 35, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(162, 371, 59, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(163, 371, 68, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(164, 371, 82, '2024-10-08 15:21:43', '2024-10-08 15:21:43'),
(165, 371, 83, '2024-10-08 15:21:43', '2024-10-08 15:21:43'),
(166, 372, 35, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(167, 372, 36, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(168, 372, 39, '2024-10-10 23:29:23', '2024-10-10 23:29:23'),
(169, 373, 32, '2024-10-10 23:30:58', '2024-10-10 23:30:58'),
(170, 373, 35, '2024-10-10 23:30:58', '2024-10-10 23:30:58'),
(171, 377, 32, '2024-10-10 23:59:48', '2024-10-10 23:59:48'),
(172, 377, 35, '2024-10-10 23:59:48', '2024-10-10 23:59:48'),
(173, 390, 35, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(174, 390, 39, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(175, 390, 40, '2024-10-22 12:30:36', '2024-10-22 12:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `productimages`
--

CREATE TABLE `productimages` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productimages`
--

INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(6, 'public/uploads/product/1706962659-6.webp', 1, '2024-02-03 12:17:39', '2024-02-03 12:17:39'),
(7, 'public/uploads/product/1706962760-1.webp', 5, '2024-02-03 12:19:20', '2024-02-03 12:19:20'),
(8, 'public/uploads/product/1706962864-2.webp', 2, '2024-02-03 12:21:04', '2024-02-03 12:21:04'),
(9, 'public/uploads/product/1706962961-3.webp', 3, '2024-02-03 12:22:41', '2024-02-03 12:22:41'),
(10, 'public/uploads/product/1706963054-4.webp', 4, '2024-02-03 12:24:14', '2024-02-03 12:24:14'),
(11, 'public/uploads/product/1706963304-5.webp', 6, '2024-02-03 12:28:24', '2024-02-03 12:28:24'),
(13, 'public/uploads/product/1706963666-968d4e20278e2db6759a2d2a44231f4c.jpg_750x750.jpg_.webp', 7, '2024-02-03 12:34:26', '2024-02-03 12:34:26'),
(15, 'public/uploads/product/1706963947-7.webp', 9, '2024-02-03 12:39:07', '2024-02-03 12:39:07'),
(16, 'public/uploads/product/1706964217-6.webp', 8, '2024-02-03 12:43:37', '2024-02-03 12:43:37'),
(17, 'public/uploads/product/1706964324-8.webp', 10, '2024-02-03 12:45:24', '2024-02-03 12:45:24'),
(18, 'public/uploads/product/1706964552-9.webp', 11, '2024-02-03 12:49:12', '2024-02-03 12:49:12'),
(19, 'public/uploads/product/1706964708-10.webp', 12, '2024-02-03 12:51:48', '2024-02-03 12:51:48'),
(20, 'public/uploads/product/1706965822-11.webp', 13, '2024-02-03 13:10:22', '2024-02-03 13:10:22'),
(21, 'public/uploads/product/1706966045-12.webp', 14, '2024-02-03 13:14:05', '2024-02-03 13:14:05'),
(22, 'public/uploads/product/1707038734-13.webp', 15, '2024-02-04 09:25:34', '2024-02-04 09:25:34'),
(23, 'public/uploads/product/1707039090-15.webp', 16, '2024-02-04 09:31:30', '2024-02-04 09:31:30'),
(24, 'public/uploads/product/1707039226-16.webp', 17, '2024-02-04 09:33:46', '2024-02-04 09:33:46'),
(25, 'public/uploads/product/1707039619-17.webp', 18, '2024-02-04 09:40:19', '2024-02-04 09:40:19'),
(26, 'public/uploads/product/1707039878-18.webp', 19, '2024-02-04 09:44:38', '2024-02-04 09:44:38'),
(27, 'public/uploads/product/1707040029-19.webp', 20, '2024-02-04 09:47:09', '2024-02-04 09:47:09'),
(28, 'public/uploads/product/1707040152-20.webp', 21, '2024-02-04 09:49:12', '2024-02-04 09:49:12'),
(29, 'public/uploads/product/1707040552-21.webp', 22, '2024-02-04 09:55:52', '2024-02-04 09:55:52'),
(30, 'public/uploads/product/1707040912-22.webp', 23, '2024-02-04 10:01:52', '2024-02-04 10:01:52'),
(31, 'public/uploads/product/1707041003-23.webp', 24, '2024-02-04 10:03:23', '2024-02-04 10:03:23'),
(32, 'public/uploads/product/1707041229-24.webp', 25, '2024-02-04 10:07:09', '2024-02-04 10:07:09'),
(33, 'public/uploads/product/1707041724-25.webp', 26, '2024-02-04 10:15:24', '2024-02-04 10:15:24'),
(34, 'public/uploads/product/1707041854-26.webp', 27, '2024-02-04 10:17:34', '2024-02-04 10:17:34'),
(35, 'public/uploads/product/1707042066-27.webp', 28, '2024-02-04 10:21:06', '2024-02-04 10:21:06'),
(36, 'public/uploads/product/1707042304-28.webp', 29, '2024-02-04 10:25:04', '2024-02-04 10:25:04'),
(37, 'public/uploads/product/1707042443-29.webp', 30, '2024-02-04 10:27:23', '2024-02-04 10:27:23'),
(38, 'public/uploads/product/1707042740-30.webp', 31, '2024-02-04 10:32:20', '2024-02-04 10:32:20'),
(39, 'public/uploads/product/1707042930-31.webp', 32, '2024-02-04 10:35:30', '2024-02-04 10:35:30'),
(40, 'public/uploads/product/1707043100-32.webp', 33, '2024-02-04 10:38:20', '2024-02-04 10:38:20'),
(41, 'public/uploads/product/1707043310-33.webp', 34, '2024-02-04 10:41:50', '2024-02-04 10:41:50'),
(42, 'public/uploads/product/1707044037-34.webp', 35, '2024-02-04 10:53:57', '2024-02-04 10:53:57'),
(43, 'public/uploads/product/1707044326-35.webp', 36, '2024-02-04 10:58:46', '2024-02-04 10:58:46'),
(44, 'public/uploads/product/1707044444-36.webp', 37, '2024-02-04 11:00:44', '2024-02-04 11:00:44'),
(45, 'public/uploads/product/1707045047-38.webp', 38, '2024-02-04 11:10:47', '2024-02-04 11:10:47'),
(46, 'public/uploads/product/1707045273-39.webp', 39, '2024-02-04 11:14:33', '2024-02-04 11:14:33'),
(47, 'public/uploads/product/1707045380-40.webp', 40, '2024-02-04 11:16:20', '2024-02-04 11:16:20'),
(48, 'public/uploads/product/1707045468-41.webp', 41, '2024-02-04 11:17:48', '2024-02-04 11:17:48'),
(49, 'public/uploads/product/1707045572-42.webp', 42, '2024-02-04 11:19:32', '2024-02-04 11:19:32'),
(50, 'public/uploads/product/1707045885-43.webp', 43, '2024-02-04 11:24:45', '2024-02-04 11:24:45'),
(51, 'public/uploads/product/1707046613-44.webp', 44, '2024-02-04 11:36:53', '2024-02-04 11:36:53'),
(52, 'public/uploads/product/1707046712-45.webp', 45, '2024-02-04 11:38:32', '2024-02-04 11:38:32'),
(54, 'public/uploads/product/1707046820-46.webp', 46, '2024-02-04 11:40:20', '2024-02-04 11:40:20'),
(55, 'public/uploads/product/1707047083-47.webp', 47, '2024-02-04 11:44:43', '2024-02-04 11:44:43'),
(56, 'public/uploads/product/1707047786-48.webp', 48, '2024-02-04 11:56:26', '2024-02-04 11:56:26'),
(57, 'public/uploads/product/1707048052-49.webp', 49, '2024-02-04 12:00:52', '2024-02-04 12:00:52'),
(58, 'public/uploads/product/1707048207-50.webp', 50, '2024-02-04 12:03:27', '2024-02-04 12:03:27'),
(59, 'public/uploads/product/1707048433-51.webp', 51, '2024-02-04 12:07:13', '2024-02-04 12:07:13'),
(60, 'public/uploads/product/1707048546-52.webp', 52, '2024-02-04 12:09:06', '2024-02-04 12:09:06'),
(61, 'public/uploads/product/1707049682-53.webp', 53, '2024-02-04 12:28:02', '2024-02-04 12:28:02'),
(62, 'public/uploads/product/1707049786-54.webp', 54, '2024-02-04 12:29:46', '2024-02-04 12:29:46'),
(63, 'public/uploads/product/1707049880-55.webp', 55, '2024-02-04 12:31:20', '2024-02-04 12:31:20'),
(64, 'public/uploads/product/1707050041-56.webp', 56, '2024-02-04 12:34:01', '2024-02-04 12:34:01'),
(65, 'public/uploads/product/1707050315-57.webp', 57, '2024-02-04 12:38:35', '2024-02-04 12:38:35'),
(66, 'public/uploads/product/1707050396-58.webp', 58, '2024-02-04 12:39:56', '2024-02-04 12:39:56'),
(67, 'public/uploads/product/1707051081-59.webp', 59, '2024-02-04 12:51:21', '2024-02-04 12:51:21'),
(68, 'public/uploads/product/1707051138-60.webp', 60, '2024-02-04 12:52:18', '2024-02-04 12:52:18'),
(69, 'public/uploads/product/1707051335-61.webp', 61, '2024-02-04 12:55:35', '2024-02-04 12:55:35'),
(70, 'public/uploads/product/1707051439-2600.webp', 62, '2024-02-04 12:57:19', '2024-02-04 12:57:19'),
(71, 'public/uploads/product/1707051518-62.webp', 63, '2024-02-04 12:58:38', '2024-02-04 12:58:38'),
(72, 'public/uploads/product/1707051601-2600.webp', 64, '2024-02-04 13:00:01', '2024-02-04 13:00:01'),
(73, 'public/uploads/product/1707051745-64.webp', 65, '2024-02-04 13:02:25', '2024-02-04 13:02:25'),
(74, 'public/uploads/product/1707051825-65.webp', 66, '2024-02-04 13:03:45', '2024-02-04 13:03:45'),
(75, 'public/uploads/product/1707051903-66.webp', 67, '2024-02-04 13:05:03', '2024-02-04 13:05:03'),
(76, 'public/uploads/product/1707052031-67.webp', 68, '2024-02-04 13:07:11', '2024-02-04 13:07:11'),
(77, 'public/uploads/product/1707052255-68.webp', 69, '2024-02-04 13:10:55', '2024-02-04 13:10:55'),
(78, 'public/uploads/product/1707052394-69.webp', 70, '2024-02-04 13:13:14', '2024-02-04 13:13:14'),
(79, 'public/uploads/product/1707052463-70.webp', 71, '2024-02-04 13:14:23', '2024-02-04 13:14:23'),
(80, 'public/uploads/product/1707052527-71.webp', 72, '2024-02-04 13:15:27', '2024-02-04 13:15:27'),
(81, 'public/uploads/product/1707121724-d6569c95ead8324c63ae8bedbf74482e.jpg_750x750.jpg_.webp', 73, '2024-02-05 08:28:44', '2024-02-05 08:28:44'),
(82, 'public/uploads/product/1707121894-2d5383f5aa9746aa1137749da10c6264.jpg_750x750.jpg_.webp', 74, '2024-02-05 08:31:34', '2024-02-05 08:31:34'),
(83, 'public/uploads/product/1707122306-25266ca63761fc3f5059ab87a0d0310b.jpg_750x750.jpg_.webp', 75, '2024-02-05 08:38:26', '2024-02-05 08:38:26'),
(84, 'public/uploads/product/1707122812-a10cb862f1da4a430e8fbc8769ce69b3.jpg_750x750.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(85, 'public/uploads/product/1707122812-27955ce3c5c10b44c501b03e125e3c82.jpg_100x100.jpg_.webp', 76, '2024-02-05 08:46:52', '2024-02-05 08:46:52'),
(86, 'public/uploads/product/1707123191-51ba6689f5e3c9b392f7d131c6d7d702.jpg_750x750.jpg_.webp', 77, '2024-02-05 08:53:11', '2024-02-05 08:53:11'),
(87, 'public/uploads/product/1707123566-29761a41e32e3962864f83dfe825edea.jpg_750x750.jpg_.webp', 78, '2024-02-05 08:59:26', '2024-02-05 08:59:26'),
(88, 'public/uploads/product/1707123836-e519b1103c328de72f70335f758cc7cd.jpg_750x750.jpg_.webp', 79, '2024-02-05 09:03:56', '2024-02-05 09:03:56'),
(89, 'public/uploads/product/1707125239-b999bd7cd26d3238698ee071a6e64e40.jpg_750x750.jpg_.webp', 80, '2024-02-05 09:27:19', '2024-02-05 09:27:19'),
(90, 'public/uploads/product/1707126177-3fc61e6a6dda2bb78245b5573e1d1562.jpg_750x750.jpg_.webp', 81, '2024-02-05 09:42:57', '2024-02-05 09:42:57'),
(91, 'public/uploads/product/1707126250-cff152bdb02947791234e7f71346bf57.jpg_750x750.jpg_.webp', 82, '2024-02-05 09:44:10', '2024-02-05 09:44:10'),
(92, 'public/uploads/product/1707126327-d4fe1c51cab0d824c68a3c46d702e571.jpg_750x750.jpg_.webp', 83, '2024-02-05 09:45:27', '2024-02-05 09:45:27'),
(93, 'public/uploads/product/1707126418-05b0495ff024378b04e4a22aecb8f43c.jpg_750x750.jpg_.webp', 84, '2024-02-05 09:46:58', '2024-02-05 09:46:58'),
(94, 'public/uploads/product/1707126922-1.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(95, 'public/uploads/product/1707126922-2.webp', 85, '2024-02-05 09:55:22', '2024-02-05 09:55:22'),
(96, 'public/uploads/product/1707127008-3.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(97, 'public/uploads/product/1707127008-4.webp', 86, '2024-02-05 09:56:48', '2024-02-05 09:56:48'),
(98, 'public/uploads/product/1707127090-6.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(99, 'public/uploads/product/1707127090-5.webp', 87, '2024-02-05 09:58:10', '2024-02-05 09:58:10'),
(100, 'public/uploads/product/1707127168-7.webp', 88, '2024-02-05 09:59:28', '2024-02-05 09:59:28'),
(102, 'public/uploads/product/1707127293-9.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(103, 'public/uploads/product/1707127293-8.webp', 89, '2024-02-05 10:01:33', '2024-02-05 10:01:33'),
(104, 'public/uploads/product/1707127376-10.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(105, 'public/uploads/product/1707127376-11.webp', 90, '2024-02-05 10:02:56', '2024-02-05 10:02:56'),
(106, 'public/uploads/product/1707127468-12.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(107, 'public/uploads/product/1707127468-13.webp', 91, '2024-02-05 10:04:28', '2024-02-05 10:04:28'),
(108, 'public/uploads/product/1707127637-14.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(109, 'public/uploads/product/1707127637-15.webp', 92, '2024-02-05 10:07:17', '2024-02-05 10:07:17'),
(110, 'public/uploads/product/1707128083-17.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(111, 'public/uploads/product/1707128083-16.webp', 93, '2024-02-05 10:14:43', '2024-02-05 10:14:43'),
(112, 'public/uploads/product/1707128240-18.webp', 94, '2024-02-05 10:17:20', '2024-02-05 10:17:20'),
(113, 'public/uploads/product/1707128311-20.webp', 95, '2024-02-05 10:18:31', '2024-02-05 10:18:31'),
(114, 'public/uploads/product/1707128450-21.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(115, 'public/uploads/product/1707128450-22.webp', 96, '2024-02-05 10:20:50', '2024-02-05 10:20:50'),
(116, 'public/uploads/product/1707129607-23.webp', 97, '2024-02-05 10:40:07', '2024-02-05 10:40:07'),
(117, 'public/uploads/product/1707129715-24.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(118, 'public/uploads/product/1707129715-25.webp', 98, '2024-02-05 10:41:55', '2024-02-05 10:41:55'),
(119, 'public/uploads/product/1707129849-27.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(120, 'public/uploads/product/1707129849-26.webp', 99, '2024-02-05 10:44:09', '2024-02-05 10:44:09'),
(121, 'public/uploads/product/1707129943-28.webp', 100, '2024-02-05 10:45:43', '2024-02-05 10:45:43'),
(122, 'public/uploads/product/1707130323-29.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(123, 'public/uploads/product/1707130323-30.webp', 101, '2024-02-05 10:52:03', '2024-02-05 10:52:03'),
(124, 'public/uploads/product/1707130655-32.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(125, 'public/uploads/product/1707130655-31.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(126, 'public/uploads/product/1707130655-30.webp', 102, '2024-02-05 10:57:35', '2024-02-05 10:57:35'),
(129, 'public/uploads/product/1707130828-33.webp', 103, '2024-02-05 11:00:28', '2024-02-05 11:00:28'),
(130, 'public/uploads/product/1707130918-35.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(131, 'public/uploads/product/1707130918-36.webp', 104, '2024-02-05 11:01:58', '2024-02-05 11:01:58'),
(132, 'public/uploads/product/1707130970-37.webp', 105, '2024-02-05 11:02:50', '2024-02-05 11:02:50'),
(133, 'public/uploads/product/1707131067-40.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(134, 'public/uploads/product/1707131067-41.webp', 106, '2024-02-05 11:04:27', '2024-02-05 11:04:27'),
(135, 'public/uploads/product/1707131163-43.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(136, 'public/uploads/product/1707131163-44.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(137, 'public/uploads/product/1707131163-42.webp', 107, '2024-02-05 11:06:03', '2024-02-05 11:06:03'),
(138, 'public/uploads/product/1707131330-46.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(139, 'public/uploads/product/1707131330-45.webp', 108, '2024-02-05 11:08:50', '2024-02-05 11:08:50'),
(140, 'public/uploads/product/1707131417-47.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(141, 'public/uploads/product/1707131417-48.webp', 109, '2024-02-05 11:10:17', '2024-02-05 11:10:17'),
(142, 'public/uploads/product/1707131602-49.webp', 110, '2024-02-05 11:13:22', '2024-02-05 11:13:22'),
(143, 'public/uploads/product/1707131817-51.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(144, 'public/uploads/product/1707131817-50.webp', 111, '2024-02-05 11:16:57', '2024-02-05 11:16:57'),
(145, 'public/uploads/product/1707131989-52.webp', 112, '2024-02-05 11:19:49', '2024-02-05 11:19:49'),
(146, 'public/uploads/product/1707132059-53.webp', 113, '2024-02-05 11:20:59', '2024-02-05 11:20:59'),
(147, 'public/uploads/product/1707132129-54.webp', 114, '2024-02-05 11:22:09', '2024-02-05 11:22:09'),
(148, 'public/uploads/product/1707132190-55.webp', 115, '2024-02-05 11:23:10', '2024-02-05 11:23:10'),
(149, 'public/uploads/product/1707132238-56.webp', 116, '2024-02-05 11:23:58', '2024-02-05 11:23:58'),
(150, 'public/uploads/product/1707132375-57.webp', 117, '2024-02-05 11:26:15', '2024-02-05 11:26:15'),
(151, 'public/uploads/product/1707132432-58.webp', 118, '2024-02-05 11:27:12', '2024-02-05 11:27:12'),
(152, 'public/uploads/product/1707132490-56.webp', 119, '2024-02-05 11:28:10', '2024-02-05 11:28:10'),
(153, 'public/uploads/product/1707132556-59.webp', 120, '2024-02-05 11:29:16', '2024-02-05 11:29:16'),
(154, 'public/uploads/product/1707132653-60.webp', 121, '2024-02-05 11:30:53', '2024-02-05 11:30:53'),
(155, 'public/uploads/product/1707132761-61.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(156, 'public/uploads/product/1707132761-62.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(157, 'public/uploads/product/1707132761-63.webp', 122, '2024-02-05 11:32:41', '2024-02-05 11:32:41'),
(158, 'public/uploads/product/1707133147-65.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(159, 'public/uploads/product/1707133147-64.webp', 123, '2024-02-05 11:39:07', '2024-02-05 11:39:07'),
(160, 'public/uploads/product/1707138026-30.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(161, 'public/uploads/product/1707138026-31.webp', 124, '2024-02-05 13:00:26', '2024-02-05 13:00:26'),
(162, 'public/uploads/product/1707138126-32.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(163, 'public/uploads/product/1707138126-33.webp', 125, '2024-02-05 13:02:06', '2024-02-05 13:02:06'),
(164, 'public/uploads/product/1707138242-34.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(165, 'public/uploads/product/1707138242-35.webp', 126, '2024-02-05 13:04:02', '2024-02-05 13:04:02'),
(166, 'public/uploads/product/1707138312-36.webp', 127, '2024-02-05 13:05:12', '2024-02-05 13:05:12'),
(167, 'public/uploads/product/1707138402-37.webp', 128, '2024-02-05 13:06:42', '2024-02-05 13:06:42'),
(168, 'public/uploads/product/1707138541-38.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(169, 'public/uploads/product/1707138541-39.webp', 129, '2024-02-05 13:09:01', '2024-02-05 13:09:01'),
(170, 'public/uploads/product/1707138666-40.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(171, 'public/uploads/product/1707138666-41.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(172, 'public/uploads/product/1707138666-42.webp', 130, '2024-02-05 13:11:06', '2024-02-05 13:11:06'),
(173, 'public/uploads/product/1709230194-9b42afe8-c27f-421c-9700-0629f4eaded9.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(174, 'public/uploads/product/1709230194-ada5b601-ea98-4b23-b700-ed548178d053.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(175, 'public/uploads/product/1709230194-16f00008-489a-4a9e-bb1f-cf520def58f7.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(176, 'public/uploads/product/1709230194-e346f2e6-6562-4c6b-b78f-8f550b30978b.jpg', 131, '2024-03-01 00:09:54', '2024-03-01 00:09:54'),
(178, 'public/uploads/product/1717143634-augrbeuws7mbzzznhqeh6426dgmvdubx8nh8kbfo.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(179, 'public/uploads/product/1717143634-xdgl4vbpzjpyedh8ki8nfienjgq0mtjzvslpiy8b.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(180, 'public/uploads/product/1717143634-unjqq3ctt8zoun2mxd7axkc4ekjktkxtmxvpsqkh.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(181, 'public/uploads/product/1717143634-o8b7nks7yjpfxeak1dyq2etsxvp0xbs5ssktv4om.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(182, 'public/uploads/product/1717143634-yacjpxkyyguzyflbzhzcy8asjqymyeown2kn9dfy.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(183, 'public/uploads/product/1717143634-wwsw5lgvpkmbkqlnb2djmoby6lywvrr7c0wo2vb5.jpg', 132, '2024-05-31 14:20:34', '2024-05-31 14:20:34'),
(184, 'public/uploads/product/1717144826-mupn63ybrq0wqdxk4hwfasinrc6kdbbwn8ezmxhi.webp', 133, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(185, 'public/uploads/product/1717145111-0vcrati9i3yk88re1bze6cfo9eu5fanjnzrrl9nc.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(186, 'public/uploads/product/1717145111-tu9rmqxguc1gcaehosss7ozdyvyhbhiylloe2opf.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(187, 'public/uploads/product/1717145111-5xik6q1tuk60ffi7ao1mahfseyswofhkapwztfn9.webp', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(188, 'public/uploads/product/1717145111-buciivdqytpvh6mbvtsmayw1prpmism78o3grfx7.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(189, 'public/uploads/product/1717145111-s5youdbdcy7j2dde1mfdyrokees8vxc37kwvuech.jpg', 134, '2024-05-31 14:45:11', '2024-05-31 14:45:11'),
(190, 'public/uploads/product/1717145265-qprvisrlm0b217fp0wgalukpilbm200rw5lfwazd.jpg', 135, '2024-05-31 14:47:45', '2024-05-31 14:47:45'),
(191, 'public/uploads/product/1717145442-hinhzbakb2hrupbr97iacj485bribzcqkqg43jft.jpg', 136, '2024-05-31 14:50:42', '2024-05-31 14:50:42'),
(192, 'public/uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(193, 'public/uploads/product/1717145718-h6kt4q5uiv4szh9gfc8xm645nyt1lz6au717r6wp.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(194, 'public/uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(195, 'public/uploads/product/1717145718-xtg8zlwbyizvd9ontjm26n3ytzogqh3t04s04bms.webp', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(196, 'public/uploads/product/1717145718-zhtnqlutu1anf3vip00txwdtpvbvqs7lwx7hftmv.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(197, 'public/uploads/product/1717145718-xorysftrxqcpgnfyk35b1zersezacyylrahac9im.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(198, 'public/uploads/product/1717145718-rfu8p2yly2bsiuogqvxc6aorjsbgvy5wcok6wuib.jpg', 137, '2024-05-31 14:55:18', '2024-05-31 14:55:18'),
(199, 'public/uploads/product/1719154173-623a232298259_800x800.jpg', 138, '2024-06-23 14:49:33', '2024-06-23 14:49:33'),
(200, 'public/uploads/product/1719301202-64fc1dd61301c_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(201, 'public/uploads/product/1719301202-64fc1dd62ece3_800x800.jpg', 139, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(202, 'public/uploads/product/1719301736-64fc1e5b03d2c_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(203, 'public/uploads/product/1719301736-64fc1e5ad36c4_800x800.jpg', 140, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(204, 'public/uploads/product/1719302457-62023d2973570_800x800.jpg', 141, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(205, 'public/uploads/product/1719304902-juhor-120gb-ssd-.jpg', 142, '2024-06-25 08:41:42', '2024-06-25 08:41:42'),
(206, 'public/uploads/product/1719471346-622132aba8a87_180x180.jpg', 143, '2024-06-27 06:55:46', '2024-06-27 06:55:46'),
(207, 'public/uploads/product/1719471432-62024116873f4_180x180.jpg', 144, '2024-06-27 06:57:12', '2024-06-27 06:57:12'),
(208, 'public/uploads/product/1719471544-62023db59b26c_180x180.jpg', 145, '2024-06-27 06:59:04', '2024-06-27 06:59:04'),
(209, 'public/uploads/product/1719471691-6200d104ea168_180x180.jpg', 146, '2024-06-27 07:01:31', '2024-06-27 07:01:31'),
(210, 'public/uploads/product/1719472418-6200c175130ca_180x180.jpg', 147, '2024-06-27 07:13:38', '2024-06-27 07:13:38'),
(211, 'public/uploads/product/1719472759-6200c20f4299e_180x180.jpg', 148, '2024-06-27 07:19:19', '2024-06-27 07:19:19'),
(212, 'public/uploads/product/1725999330-02_home.png', 152, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(213, 'public/uploads/product/1725999360-3.png', 153, '2024-09-11 02:16:00', '2024-09-11 02:16:00'),
(214, 'public/uploads/product/1725999389-4.png', 154, '2024-09-11 02:16:29', '2024-09-11 02:16:29'),
(215, 'public/uploads/product/1725999415-1.png', 155, '2024-09-11 02:16:55', '2024-09-11 02:16:55'),
(216, 'public/uploads/product/1725999455-1.demoproduct.jpeg', 156, '2024-09-11 02:17:35', '2024-09-11 02:17:35'),
(217, 'public/uploads/product/1725999494-1.png', 157, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(218, 'public/uploads/product/1725999525-3.png', 158, '2024-09-11 02:18:45', '2024-09-11 02:18:45'),
(219, 'public/uploads/product/1725999694-5.png', 159, '2024-09-11 02:21:34', '2024-09-11 02:21:34'),
(220, 'public/uploads/product/1726337247-b_f1-800x800.jpg', 160, '2024-09-14 18:07:27', '2024-09-14 18:07:27'),
(221, 'public/uploads/product/1726337247-b_f3-800x800.jpg', 160, '2024-09-14 18:07:27', '2024-09-14 18:07:27'),
(222, 'public/uploads/product/1726337247-b_f2-800x800.jpg', 160, '2024-09-14 18:07:27', '2024-09-14 18:07:27'),
(223, 'public/uploads/product/1726337598-b2-800x800.png', 161, '2024-09-14 18:13:18', '2024-09-14 18:13:18'),
(224, 'public/uploads/product/1726337598-b1-800x800.png', 161, '2024-09-14 18:13:18', '2024-09-14 18:13:18'),
(225, 'public/uploads/product/1726337598-b-800x800.png', 161, '2024-09-14 18:13:18', '2024-09-14 18:13:18'),
(226, 'public/uploads/product/1726337598-b3-800x800.png', 161, '2024-09-14 18:13:18', '2024-09-14 18:13:18'),
(227, 'public/uploads/product/1726337598-b4-800x800.png', 161, '2024-09-14 18:13:18', '2024-09-14 18:13:18'),
(228, 'public/uploads/product/1726338206-bb-800x800.jpg', 162, '2024-09-14 18:23:26', '2024-09-14 18:23:26'),
(229, 'public/uploads/product/1726338206-bb2-800x800.jpg', 162, '2024-09-14 18:23:26', '2024-09-14 18:23:26'),
(230, 'public/uploads/product/1726338206-bb1-800x800.jpg', 162, '2024-09-14 18:23:26', '2024-09-14 18:23:26'),
(231, 'public/uploads/product/1726338206-bb4-800x800.jpg', 162, '2024-09-14 18:23:26', '2024-09-14 18:23:26'),
(232, 'public/uploads/product/1726338628-baby-bouncer-(1).jpeg', 163, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(233, 'public/uploads/product/1726338628-baby-bouncer-(2).jpeg', 163, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(234, 'public/uploads/product/1726338628-baby-bouncer-(5).jpeg', 163, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(235, 'public/uploads/product/1726338628-baby-bouncer-(3).jpeg', 163, '2024-09-14 18:30:28', '2024-09-14 18:30:28'),
(236, 'public/uploads/product/1726339173-f_k1-800x800.jpg', 164, '2024-09-14 18:39:33', '2024-09-14 18:39:33'),
(237, 'public/uploads/product/1726339173-f_k2-800x800.jpg', 164, '2024-09-14 18:39:33', '2024-09-14 18:39:33'),
(238, 'public/uploads/product/1726339173-f_k3-800x800.jpg', 164, '2024-09-14 18:39:33', '2024-09-14 18:39:33'),
(239, 'public/uploads/product/1726339368-f_j2-800x800.jpg', 165, '2024-09-14 18:42:48', '2024-09-14 18:42:48'),
(240, 'public/uploads/product/1726339368-f_j3-800x800.jpg', 165, '2024-09-14 18:42:48', '2024-09-14 18:42:48'),
(241, 'public/uploads/product/1726339368-f_j1-800x800.jpg', 165, '2024-09-14 18:42:48', '2024-09-14 18:42:48'),
(242, 'public/uploads/product/1726339518-f_p1-800x800.jpg', 166, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(243, 'public/uploads/product/1726339518-f_p2-800x800.jpg', 166, '2024-09-14 18:45:18', '2024-09-14 18:45:18'),
(244, 'public/uploads/product/1726339630-b_h1-800x800.jpg', 167, '2024-09-14 18:47:10', '2024-09-14 18:47:10'),
(245, 'public/uploads/product/1726339630-b_h2-800x800.jpg', 167, '2024-09-14 18:47:10', '2024-09-14 18:47:10'),
(246, 'public/uploads/product/1726339630-b_h3-800x800.jpg', 167, '2024-09-14 18:47:10', '2024-09-14 18:47:10'),
(247, 'public/uploads/product/1726339726-b_b1-800x800.jpg', 168, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(248, 'public/uploads/product/1726339726-b_b2-800x800.jpg', 168, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(249, 'public/uploads/product/1726339726-b_b3-800x800.jpg', 168, '2024-09-14 18:48:46', '2024-09-14 18:48:46'),
(250, 'public/uploads/product/1726404661-441573759_871732351433914_2777671004548542298_n.jpg', 169, '2024-09-15 12:51:01', '2024-09-15 12:51:01'),
(251, 'public/uploads/product/1726404661-441639714_865942675375477_3702008834040676688_n-(1).jpg', 169, '2024-09-15 12:51:01', '2024-09-15 12:51:01'),
(252, 'public/uploads/product/1726404661-448541553_7849050225164507_5106519385361499677_n.jpg', 169, '2024-09-15 12:51:01', '2024-09-15 12:51:01'),
(253, 'public/uploads/product/1726404661-448823945_3826470317638853_3202283527949247499_n-(1).jpg', 169, '2024-09-15 12:51:01', '2024-09-15 12:51:01'),
(254, 'public/uploads/product/1726404851-448239844_452990897542183_1226376772739821963_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(255, 'public/uploads/product/1726404851-448314008_974330657505874_6792573171699154259_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(256, 'public/uploads/product/1726404851-448330914_975161050719568_3518590664327292469_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(257, 'public/uploads/product/1726404851-448466519_1831205910704792_8862707727854037766_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(258, 'public/uploads/product/1726404851-448485950_354551604323285_7745664889468424319_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(259, 'public/uploads/product/1726404851-448689816_457144517049262_4781952817041881276_n.jpg', 170, '2024-09-15 12:54:11', '2024-09-15 12:54:11'),
(260, 'public/uploads/product/1726405154-447766959_1743168542880156_5155529777695054144_n.jpg', 171, '2024-09-15 12:59:14', '2024-09-15 12:59:14'),
(261, 'public/uploads/product/1726405154-447767975_792213489664217_2391082575464583123_n.jpg', 171, '2024-09-15 12:59:14', '2024-09-15 12:59:14'),
(262, 'public/uploads/product/1726405154-447775934_2311410002528054_2740175839064743983_n.jpg', 171, '2024-09-15 12:59:14', '2024-09-15 12:59:14'),
(263, 'public/uploads/product/1726405154-447775936_483683740843966_1682398330447428975_n.jpg', 171, '2024-09-15 12:59:14', '2024-09-15 12:59:14'),
(264, 'public/uploads/product/1726405154-447830124_312028191982642_288813822668277415_n.jpg', 171, '2024-09-15 12:59:14', '2024-09-15 12:59:14'),
(265, 'public/uploads/product/1726405408-448875500_1911826512613010_7660418626997866385_n.jpg', 172, '2024-09-15 13:03:28', '2024-09-15 13:03:28'),
(266, 'public/uploads/product/1726405408-449143113_834197135315947_3425287536627676749_n.jpg', 172, '2024-09-15 13:03:28', '2024-09-15 13:03:28'),
(267, 'public/uploads/product/1726405408-449360423_1004878744383715_8071293555662684526_n.jpg', 172, '2024-09-15 13:03:28', '2024-09-15 13:03:28'),
(268, 'public/uploads/product/1726405408-449473239_920800566480358_878823148351310556_n.jpg', 172, '2024-09-15 13:03:28', '2024-09-15 13:03:28'),
(269, 'public/uploads/product/1726405408-449616404_354175690820902_8076104377927560714_n.jpg', 172, '2024-09-15 13:03:28', '2024-09-15 13:03:28'),
(270, 'public/uploads/product/1726405549-441558265_838650558211545_1860001468275774615_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(271, 'public/uploads/product/1726405549-441558265_1011685903646183_1843877937457269524_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(272, 'public/uploads/product/1726405549-441569334_338931155749900_3835744136488217876_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(273, 'public/uploads/product/1726405549-441573760_393943809733233_7807054405474502460_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(274, 'public/uploads/product/1726405549-441579615_3752896418354603_587228130002387563_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(275, 'public/uploads/product/1726405549-441581181_444493385205770_2796942717850137879_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(276, 'public/uploads/product/1726405549-441895032_1281701949901859_7098371855506704660_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(277, 'public/uploads/product/1726405549-448311198_383104254772810_6182023840261095970_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(278, 'public/uploads/product/1726405549-448643695_430910893178172_2777371416812644237_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(279, 'public/uploads/product/1726405549-449120034_1444001229584429_1908013863152031560_n.jpg', 173, '2024-09-15 13:05:49', '2024-09-15 13:05:49'),
(280, 'public/uploads/product/1726405654-448542868_1291418061664895_1013053646028103068_n.jpg', 174, '2024-09-15 13:07:34', '2024-09-15 13:07:34'),
(281, 'public/uploads/product/1726405654-448983294_1961972224233357_7173485335661260682_n.jpg', 174, '2024-09-15 13:07:34', '2024-09-15 13:07:34'),
(282, 'public/uploads/product/1726405654-449154493_2468929066627359_1733411402511333390_n.jpg', 174, '2024-09-15 13:07:34', '2024-09-15 13:07:34'),
(283, 'public/uploads/product/1726405654-449478769_460660963369536_7704464548890216759_n.jpg', 174, '2024-09-15 13:07:34', '2024-09-15 13:07:34'),
(284, 'public/uploads/product/1726405960-448262301_395731376826094_2727650666165242825_n.jpg', 175, '2024-09-15 13:12:40', '2024-09-15 13:12:40'),
(285, 'public/uploads/product/1726405960-448459816_369258246173753_1502756981459965538_n.jpg', 175, '2024-09-15 13:12:40', '2024-09-15 13:12:40'),
(286, 'public/uploads/product/1726405960-448467766_1732113640929223_2042180485339295154_n.jpg', 175, '2024-09-15 13:12:40', '2024-09-15 13:12:40'),
(287, 'public/uploads/product/1726405960-448757920_1551012505458621_2641465119958452731_n.jpg', 175, '2024-09-15 13:12:40', '2024-09-15 13:12:40'),
(288, 'public/uploads/product/1726406129-448451868_1494330701468652_2473450598627685348_n.jpg', 176, '2024-09-15 13:15:29', '2024-09-15 13:15:29'),
(289, 'public/uploads/product/1726406129-448466519_829533722098922_4487112332685566635_n.jpg', 176, '2024-09-15 13:15:29', '2024-09-15 13:15:29'),
(290, 'public/uploads/product/1726406129-448645275_441668762018468_1723376356498384757_n.jpg', 176, '2024-09-15 13:15:29', '2024-09-15 13:15:29'),
(291, 'public/uploads/product/1726406493-ibb-004.jpg', 177, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(292, 'public/uploads/product/1726406493-ibb-002.jpg', 177, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(293, 'public/uploads/product/1726406493-ibb-001.jpg', 177, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(294, 'public/uploads/product/1726406493-ibb-003.jpg', 177, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(295, 'public/uploads/product/1726406891-ihm-001.jpg', 178, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(296, 'public/uploads/product/1726406891-ihm-001-1.jpg', 178, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(297, 'public/uploads/product/1726406891-ihm-002.jpg', 178, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(298, 'public/uploads/product/1726406891-ihm-003.jpg', 178, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(299, 'public/uploads/product/1726406891-ihm-004.jpg', 178, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(300, 'public/uploads/product/1726407089-ijj-001.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(301, 'public/uploads/product/1726407089-ijj-004.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(302, 'public/uploads/product/1726407089-ijj-001-1.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(303, 'public/uploads/product/1726407089-ijj-002.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(304, 'public/uploads/product/1726407089-ijj-002-1.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(305, 'public/uploads/product/1726407089-ijj-003.jpg', 179, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(306, 'public/uploads/product/1726407256-iml-005.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(307, 'public/uploads/product/1726407256-iml-002.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(308, 'public/uploads/product/1726407256-iml-001.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(309, 'public/uploads/product/1726407256-iml-003.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(310, 'public/uploads/product/1726407256-iml-004.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(311, 'public/uploads/product/1726407256-432427840_1629885927792606_7185361482809120257_n.jpg', 180, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(312, 'public/uploads/product/1726407377-ill-004.jpg', 181, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(313, 'public/uploads/product/1726407377-ill-001-1.jpg', 181, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(314, 'public/uploads/product/1726407377-ill-005.jpg', 181, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(315, 'public/uploads/product/1726407377-ill-002.jpg', 181, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(316, 'public/uploads/product/1726407571-isg-006.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(317, 'public/uploads/product/1726407571-isg-001.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(318, 'public/uploads/product/1726407571-isg-005.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(319, 'public/uploads/product/1726407571-isg-005-1.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(320, 'public/uploads/product/1726407571-isg-004.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(321, 'public/uploads/product/1726407571-isg-003.jpg', 182, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(322, 'public/uploads/product/1726407704-ic-001.jpg', 183, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(323, 'public/uploads/product/1726407704-ic-001-1.jpg', 183, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(324, 'public/uploads/product/1726407704-ic-002.jpg', 183, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(325, 'public/uploads/product/1726407704-ic-003.jpg', 183, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(326, 'public/uploads/product/1726407899-ids-001.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(327, 'public/uploads/product/1726407899-whatsapp-image-2024-03-27-at-18.57.40_12600e44.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(328, 'public/uploads/product/1726407899-ids-005.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(329, 'public/uploads/product/1726407899-ids-001-1.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(330, 'public/uploads/product/1726407899-ids-002.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(331, 'public/uploads/product/1726407899-ids-003.jpg', 184, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(332, 'public/uploads/product/1726413603-iss-005.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(333, 'public/uploads/product/1726413603-iss-004.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(334, 'public/uploads/product/1726413603-iss-002-1.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(335, 'public/uploads/product/1726413603-iss-003.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(336, 'public/uploads/product/1726413603-iss-001.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(337, 'public/uploads/product/1726413603-iss-002.jpg', 185, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(338, 'public/uploads/product/1726413796-ijc-007.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(339, 'public/uploads/product/1726413796-ijc-009.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(340, 'public/uploads/product/1726413796-ijc-001.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(341, 'public/uploads/product/1726413796-ijc-002.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(342, 'public/uploads/product/1726413796-ijc-003.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(343, 'public/uploads/product/1726413796-ijc-004.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(344, 'public/uploads/product/1726413796-ijc-005.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(345, 'public/uploads/product/1726413796-ijc-006.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(346, 'public/uploads/product/1726413796-ijc-008.jpg', 186, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(347, 'public/uploads/product/1726413944-ibr-003.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(348, 'public/uploads/product/1726413944-ibr-001.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(349, 'public/uploads/product/1726413944-ibr-001-1.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(350, 'public/uploads/product/1726413944-ibr-002.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(351, 'public/uploads/product/1726413944-ibr-002-1.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(352, 'public/uploads/product/1726413944-ibr-005.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(353, 'public/uploads/product/1726413944-ibr-006.jpg', 187, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(354, 'public/uploads/product/1726414426-fcp-005-1.jpg', 188, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(374, 'public/uploads/product/1726414533-fcp-005.jpg', 188, '2024-09-15 15:35:33', '2024-09-15 15:35:33'),
(375, 'public/uploads/product/1726414622-fcp-002.jpg', 189, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(376, 'public/uploads/product/1726414622-fcp-002-(3).jpg', 189, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(377, 'public/uploads/product/1726414703-fcp-004-(2).jpg', 190, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(378, 'public/uploads/product/1726414765-fcp-006.jpg', 191, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(379, 'public/uploads/product/1726414815-fcp-007-1.jpg', 192, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(380, 'public/uploads/product/1726414883-fcp-009.jpg', 193, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(381, 'public/uploads/product/1726415019-fcp-015.jpg', 194, '2024-09-15 15:43:39', '2024-09-15 15:43:39'),
(382, 'public/uploads/product/1726415069-fcp-016.jpg', 195, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(383, 'public/uploads/product/1726415106-fcp-017.jpg', 196, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(384, 'public/uploads/product/1726415155-fcp-021.jpg', 197, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(385, 'public/uploads/product/1726415202-fcp-022.jpg', 198, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(386, 'public/uploads/product/1726415247-fcp-025.jpg', 199, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(387, 'public/uploads/product/1726415319-fcp-027.jpg', 200, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(388, 'public/uploads/product/1726415361-fcp-029.jpg', 201, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(389, 'public/uploads/product/1726415410-fcp-031.jpg', 202, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(390, 'public/uploads/product/1726415450-fcp-033.jpg', 203, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(391, 'public/uploads/product/1726415489-fcp-036.jpg', 204, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(392, 'public/uploads/product/1726415542-fcp-038.jpg', 205, '2024-09-15 15:52:22', '2024-09-15 15:52:22'),
(393, 'public/uploads/product/1726415582-fcp-039.jpg', 206, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(394, 'public/uploads/product/1726415656-fcp-042.jpg', 207, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(395, 'public/uploads/product/1726415697-fcp-046.jpg', 208, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(396, 'public/uploads/product/1726415758-fcp-047.jpg', 209, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(397, 'public/uploads/product/1726415958-code-fpp-030.jpg', 210, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(398, 'public/uploads/product/1726416009-fpp-001.jpg', 211, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(399, 'public/uploads/product/1726416050-fpp-002..jpg', 212, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(400, 'public/uploads/product/1726416099-fpp-003.jpg', 213, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(401, 'public/uploads/product/1726416145-fpp-005.jpg', 214, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(402, 'public/uploads/product/1726416204-fpp-006.jpg', 215, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(403, 'public/uploads/product/1726416260-fpp-008.jpg', 216, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(404, 'public/uploads/product/1726416322-fpp-009.jpg', 217, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(405, 'public/uploads/product/1726416379-fpp-010.jpg', 218, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(406, 'public/uploads/product/1726416454-fpp-015.jpg', 219, '2024-09-15 16:07:34', '2024-09-15 16:07:34'),
(407, 'public/uploads/product/1726416490-fpp-016.jpg', 220, '2024-09-15 16:08:10', '2024-09-15 16:08:10'),
(408, 'public/uploads/product/1726416527-fpp-019.jpg', 221, '2024-09-15 16:08:47', '2024-09-15 16:08:47'),
(409, 'public/uploads/product/1726416561-fpp-021.jpg', 222, '2024-09-15 16:09:21', '2024-09-15 16:09:21'),
(410, 'public/uploads/product/1726416592-fpp-022.jpg', 223, '2024-09-15 16:09:52', '2024-09-15 16:09:52'),
(411, 'public/uploads/product/1726416627-fpp-024.jpg', 224, '2024-09-15 16:10:27', '2024-09-15 16:10:27'),
(412, 'public/uploads/product/1726416674-fpp-027.jpg', 225, '2024-09-15 16:11:14', '2024-09-15 16:11:14'),
(413, 'public/uploads/product/1726416710-fpp-028.jpg', 226, '2024-09-15 16:11:50', '2024-09-15 16:11:50'),
(414, 'public/uploads/product/1726416743-fpp-029.jpg', 227, '2024-09-15 16:12:23', '2024-09-15 16:12:23'),
(415, 'public/uploads/product/1726417030-hbfs-001.jpg', 228, '2024-09-15 16:17:10', '2024-09-15 16:17:10'),
(416, 'public/uploads/product/1726417093-hbfs-002.0.jpg', 229, '2024-09-15 16:18:13', '2024-09-15 16:18:13'),
(417, 'public/uploads/product/1726417135-hbfs-003.jpg', 230, '2024-09-15 16:18:55', '2024-09-15 16:18:55'),
(418, 'public/uploads/product/1726417165-hbfs-004.jpg', 231, '2024-09-15 16:19:25', '2024-09-15 16:19:25'),
(419, 'public/uploads/product/1726417200-hbfs-005.jpg', 232, '2024-09-15 16:20:00', '2024-09-15 16:20:00'),
(420, 'public/uploads/product/1726417234-hbfs-008.jpg', 233, '2024-09-15 16:20:34', '2024-09-15 16:20:34'),
(421, 'public/uploads/product/1726417264-hbfs-011.jpg', 234, '2024-09-15 16:21:04', '2024-09-15 16:21:04'),
(422, 'public/uploads/product/1726417298-hbfs-016.jpg', 235, '2024-09-15 16:21:38', '2024-09-15 16:21:38'),
(423, 'public/uploads/product/1726417331-hbfs-017.jpg', 236, '2024-09-15 16:22:11', '2024-09-15 16:22:11'),
(424, 'public/uploads/product/1726417359-hbfs-018.jpg', 237, '2024-09-15 16:22:39', '2024-09-15 16:22:39'),
(425, 'public/uploads/product/1726417394-hbfs-019.jpg', 238, '2024-09-15 16:23:14', '2024-09-15 16:23:14'),
(426, 'public/uploads/product/1726417503-hbhs-001.jpg', 239, '2024-09-15 16:25:03', '2024-09-15 16:25:03'),
(427, 'public/uploads/product/1726417572-hbhs-002.1.jpg', 240, '2024-09-15 16:26:12', '2024-09-15 16:26:12'),
(428, 'public/uploads/product/1726417613-hbhs-004.jpg', 241, '2024-09-15 16:26:53', '2024-09-15 16:26:53'),
(429, 'public/uploads/product/1726417645-hbhs-005.jpg', 242, '2024-09-15 16:27:25', '2024-09-15 16:27:25'),
(430, 'public/uploads/product/1726417677-hbhs-009.jpg', 243, '2024-09-15 16:27:57', '2024-09-15 16:27:57'),
(431, 'public/uploads/product/1726417712-hbhs-010.jpg', 244, '2024-09-15 16:28:32', '2024-09-15 16:28:32'),
(432, 'public/uploads/product/1726417746-hbhs-011.jpg', 245, '2024-09-15 16:29:06', '2024-09-15 16:29:06'),
(433, 'public/uploads/product/1726417782-hbhs-012.jpg', 246, '2024-09-15 16:29:42', '2024-09-15 16:29:42'),
(434, 'public/uploads/product/1726417828-hbhs-015.jpg', 247, '2024-09-15 16:30:28', '2024-09-15 16:30:28'),
(435, 'public/uploads/product/1726417859-hbhs-016.jpg', 248, '2024-09-15 16:30:59', '2024-09-15 16:30:59'),
(436, 'public/uploads/product/1726417894-hbhs-017.jpg', 249, '2024-09-15 16:31:34', '2024-09-15 16:31:34'),
(437, 'public/uploads/product/1726417923-hbhs-018.jpg', 250, '2024-09-15 16:32:03', '2024-09-15 16:32:03'),
(438, 'public/uploads/product/1726417957-hbhs-019.jpg', 251, '2024-09-15 16:32:37', '2024-09-15 16:32:37'),
(439, 'public/uploads/product/1726418346-3125ac96_4b4a_4a95_887c_612abf29edde-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(440, 'public/uploads/product/1726418346-br1-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(441, 'public/uploads/product/1726418346-br-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(442, 'public/uploads/product/1726418346-ea4e3ec8_4144_40b5_ac81_9f95a9eb5a1a-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(443, 'public/uploads/product/1726418346-36d884e5_3671_4de7_918b_3072a3ecc296-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(444, 'public/uploads/product/1726418346-5d902aa9_f5a4_4ccd_a7a2_5b68fedcfe5b-800x800.jpg', 252, '2024-09-15 16:39:06', '2024-09-15 16:39:06'),
(445, 'public/uploads/product/1726418515-b1-800x800.jpg', 253, '2024-09-15 16:41:55', '2024-09-15 16:41:55'),
(446, 'public/uploads/product/1726418515-452839318_1176596156891291_4848015493802641377_n-800x800.jpg', 253, '2024-09-15 16:41:55', '2024-09-15 16:41:55'),
(447, 'public/uploads/product/1726418515-b4-800x800.jpg', 253, '2024-09-15 16:41:55', '2024-09-15 16:41:55'),
(448, 'public/uploads/product/1726418774-folding-baby-desk-(3).jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(449, 'public/uploads/product/1726418774-457615550_413936695037502_7649971884522351053_n.jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(450, 'public/uploads/product/1726418774-folding-baby-desk-(4).jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(451, 'public/uploads/product/1726418774-folding-baby-desk-(9).jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(452, 'public/uploads/product/1726418774-folding-baby-desk-(10).jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(453, 'public/uploads/product/1726418774-folding-baby-desk-(7).jpg', 254, '2024-09-15 16:46:14', '2024-09-15 16:46:14'),
(454, 'public/uploads/product/1726419028-9dd04d43_2fcd_4d92_931b_4d8146305c72-800x800.jpg', 255, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(455, 'public/uploads/product/1726419028-b779013f_f2f7_4e97_8987_37a9d8afbaf5-800x800.jpg', 255, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(456, 'public/uploads/product/1726419028-4d92a254_1e03_4d67_9497_b8b2aef42281-800x800.jpg', 255, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(457, 'public/uploads/product/1726419028-459f70e9_0bc7_4b3a_85d0_b98476d27095-800x800.jpg', 255, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(458, 'public/uploads/product/1726419028-32966002_68c5_428f_b335_00dcd41642a9-800x800.jpg', 255, '2024-09-15 16:50:28', '2024-09-15 16:50:28'),
(459, 'public/uploads/product/1726419170-e70676f8_2a66_458a_a710_7b1252604841-800x800.jpg', 256, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(460, 'public/uploads/product/1726419170-e14cad92_922e_4570_96b6_e54330c54c79-800x800.jpg', 256, '2024-09-15 16:52:50', '2024-09-15 16:52:50'),
(461, 'public/uploads/product/1726419412-34-grid-egg-box-(3).jpg', 257, '2024-09-15 16:56:52', '2024-09-15 16:56:52'),
(462, 'public/uploads/product/1726419412-34-grid-egg-box-(2).jpg', 257, '2024-09-15 16:56:52', '2024-09-15 16:56:52'),
(463, 'public/uploads/product/1726419412-34-grid-egg-box-(4).jpg', 257, '2024-09-15 16:56:52', '2024-09-15 16:56:52'),
(464, 'public/uploads/product/1726419412-34-grid-egg-box-(1).jpg', 257, '2024-09-15 16:56:52', '2024-09-15 16:56:52'),
(465, 'public/uploads/product/1726419614-toilet-rack-(1).png', 258, '2024-09-15 17:00:14', '2024-09-15 17:00:14'),
(466, 'public/uploads/product/1726419614-toilet-rack-(3).jpg', 258, '2024-09-15 17:00:14', '2024-09-15 17:00:14'),
(467, 'public/uploads/product/1726419614-toilet-rack-(5).jpg', 258, '2024-09-15 17:00:14', '2024-09-15 17:00:14'),
(468, 'public/uploads/product/1726419614-toilet-rack-(6).jpg', 258, '2024-09-15 17:00:14', '2024-09-15 17:00:14'),
(469, 'public/uploads/product/1726419614-toilet-rack-(4).jpg', 258, '2024-09-15 17:00:14', '2024-09-15 17:00:14'),
(470, 'public/uploads/product/1726419732-automatic-roll-down-egg-dispenser-(1).jpg', 259, '2024-09-15 17:02:12', '2024-09-15 17:02:12'),
(471, 'public/uploads/product/1726419732-automatic-roll-down-egg-dispenser-(2).jpg', 259, '2024-09-15 17:02:12', '2024-09-15 17:02:12'),
(472, 'public/uploads/product/1726419732-automatic-roll-down-egg-dispenser-(4).jpg', 259, '2024-09-15 17:02:12', '2024-09-15 17:02:12'),
(473, 'public/uploads/product/1726419732-automatic-roll-down-egg-dispenser-(8).jpg', 259, '2024-09-15 17:02:12', '2024-09-15 17:02:12');
INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(474, 'public/uploads/product/1726419732-automatic-roll-down-egg-dispenser-(7).jpg', 259, '2024-09-15 17:02:12', '2024-09-15 17:02:12'),
(475, 'public/uploads/product/1726419881-kitchen-cleaner-(1).png', 260, '2024-09-15 17:04:41', '2024-09-15 17:04:41'),
(476, 'public/uploads/product/1726419881-kitchen-cleaner-(2).png', 260, '2024-09-15 17:04:41', '2024-09-15 17:04:41'),
(477, 'public/uploads/product/1726419881-kitchen-cleaner-(3).png', 260, '2024-09-15 17:04:41', '2024-09-15 17:04:41'),
(493, 'public/uploads/product/1726420813-router-stand-(6).jpg', 262, '2024-09-15 17:20:13', '2024-09-15 17:20:13'),
(494, 'public/uploads/product/1726420813-458421616_416255051472333_8946182038297928911_n.jpg', 262, '2024-09-15 17:20:13', '2024-09-15 17:20:13'),
(495, 'public/uploads/product/1726420813-router-stand-(4).jpg', 262, '2024-09-15 17:20:13', '2024-09-15 17:20:13'),
(496, 'public/uploads/product/1726420813-router-stand-(2).jpg', 262, '2024-09-15 17:20:13', '2024-09-15 17:20:13'),
(497, 'public/uploads/product/1726420813-router-stand-(7).jpg', 262, '2024-09-15 17:20:13', '2024-09-15 17:20:13'),
(498, 'public/uploads/product/1726421026-3ae8fb8b_d728_43e9_b493_2eff0f8ac140-800x800.jpg', 263, '2024-09-15 17:23:46', '2024-09-15 17:23:46'),
(499, 'public/uploads/product/1726421026-7c6f16b4_c572_4171_ac96_bb7bbf9ffaf9-800x800.jpg', 263, '2024-09-15 17:23:46', '2024-09-15 17:23:46'),
(500, 'public/uploads/product/1726421026-42e81071_e37e_4f06_8e0a_ab1906d910c8-800x800.jpg', 263, '2024-09-15 17:23:46', '2024-09-15 17:23:46'),
(501, 'public/uploads/product/1726421162-quran-and-janamaz-organizer-with-digital-hook-ht-bazar-1.jpg', 264, '2024-09-15 17:26:02', '2024-09-15 17:26:02'),
(502, 'public/uploads/product/1726421162-quran-stand-(1).jpg', 264, '2024-09-15 17:26:02', '2024-09-15 17:26:02'),
(503, 'public/uploads/product/1726421162-quran-stand-(5).jpg', 264, '2024-09-15 17:26:02', '2024-09-15 17:26:02'),
(504, 'public/uploads/product/1726421162-quran-stand-(2).jpg', 264, '2024-09-15 17:26:02', '2024-09-15 17:26:02'),
(505, 'public/uploads/product/1726421250-20-grid-egg-box-(3).jpg', 265, '2024-09-15 17:27:30', '2024-09-15 17:27:30'),
(506, 'public/uploads/product/1726421250-20-grid-egg-box-(1).jpg', 265, '2024-09-15 17:27:30', '2024-09-15 17:27:30'),
(507, 'public/uploads/product/1726421250-20-grid-egg-box-(2).jpg', 265, '2024-09-15 17:27:30', '2024-09-15 17:27:30'),
(508, 'public/uploads/product/1726421476-ems2-800x800.jpeg', 266, '2024-09-15 17:31:16', '2024-09-15 17:31:16'),
(509, 'public/uploads/product/1726421476-whatsapp-image-2024-09-15-at-23.30.30_bc13f62b.jpg', 266, '2024-09-15 17:31:16', '2024-09-15 17:31:16'),
(510, 'public/uploads/product/1726421476-whatsapp-image-2024-09-15-at-23.30.30_dfd63162.jpg', 266, '2024-09-15 17:31:16', '2024-09-15 17:31:16'),
(511, 'public/uploads/product/1726421476-ems-800x800.jpeg', 266, '2024-09-15 17:31:16', '2024-09-15 17:31:16'),
(512, 'public/uploads/product/1726421630-flawless-hair-remover-(3).jpg', 267, '2024-09-15 17:33:50', '2024-09-15 17:33:50'),
(513, 'public/uploads/product/1726421630-flawless-hair-remover-(1).jpg', 267, '2024-09-15 17:33:50', '2024-09-15 17:33:50'),
(514, 'public/uploads/product/1726421630-flawless-hair-remover-(2).jpg', 267, '2024-09-15 17:33:50', '2024-09-15 17:33:50'),
(515, 'public/uploads/product/1726504695-router-stand-(5).jpg', 268, '2024-09-16 16:38:15', '2024-09-16 16:38:15'),
(516, 'public/uploads/product/1726504695-router-stand-(1).jpg', 268, '2024-09-16 16:38:15', '2024-09-16 16:38:15'),
(517, 'public/uploads/product/1726504695-router-stand-(4).jpg', 268, '2024-09-16 16:38:15', '2024-09-16 16:38:15'),
(518, 'public/uploads/product/1726504695-router-stand-(7).jpg', 268, '2024-09-16 16:38:15', '2024-09-16 16:38:15'),
(519, 'public/uploads/product/1726505946-457136627_1206106800592662_2334342474307741553_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(520, 'public/uploads/product/1726505946-457712702_2804174633089094_6555469285042516863_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(521, 'public/uploads/product/1726505946-458278396_2262442627444574_8299971134381020761_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(522, 'public/uploads/product/1726505946-458546009_1058298272562101_6551261757417752259_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(523, 'public/uploads/product/1726505946-458737424_814307027451311_1936888154368455831_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(524, 'public/uploads/product/1726505946-458772855_505948665574145_5224229360977971812_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(525, 'public/uploads/product/1726505946-459074750_1079194640206090_4268088500348027642_n.jpg', 269, '2024-09-16 16:59:06', '2024-09-16 16:59:06'),
(526, 'public/uploads/product/1726506192-457744352_532594232575260_3945576636192484963_n.jpg', 270, '2024-09-16 17:03:12', '2024-09-16 17:03:12'),
(527, 'public/uploads/product/1726506192-456766319_538440642045235_5107319192094837282_n.jpg', 270, '2024-09-16 17:03:12', '2024-09-16 17:03:12'),
(528, 'public/uploads/product/1726506192-457352645_825641906226403_6454167182158119898_n.jpg', 270, '2024-09-16 17:03:12', '2024-09-16 17:03:12'),
(529, 'public/uploads/product/1726506192-459276990_483598174513219_8687131968788154616_n.jpg', 270, '2024-09-16 17:03:12', '2024-09-16 17:03:12'),
(530, 'public/uploads/product/1726506383-458300965_1942169912913918_5661135439971753766_n.jpg', 271, '2024-09-16 17:06:23', '2024-09-16 17:06:23'),
(531, 'public/uploads/product/1726506383-459178377_872734194827763_5157284289028996202_n.jpg', 271, '2024-09-16 17:06:23', '2024-09-16 17:06:23'),
(532, 'public/uploads/product/1726506633-458571254_1069692598139600_2668693162593057798_n.jpg', 272, '2024-09-16 17:10:33', '2024-09-16 17:10:33'),
(533, 'public/uploads/product/1726506633-459783357_1463775654332219_7851292971317433962_n.jpg', 272, '2024-09-16 17:10:33', '2024-09-16 17:10:33'),
(534, 'public/uploads/product/1726506702-458708062_526930433361719_7692522276357160512_n.jpg', 273, '2024-09-16 17:11:42', '2024-09-16 17:11:42'),
(535, 'public/uploads/product/1726506702-459177464_832587418856237_8924068548262813261_n.jpg', 273, '2024-09-16 17:11:42', '2024-09-16 17:11:42'),
(536, 'public/uploads/product/1726506702-459752382_1043533846886272_4949348743564178503_n.jpg', 273, '2024-09-16 17:11:42', '2024-09-16 17:11:42'),
(537, 'public/uploads/product/1726506702-459761520_1575549519980112_4658769419981438784_n.jpg', 273, '2024-09-16 17:11:42', '2024-09-16 17:11:42'),
(538, 'public/uploads/product/1726507051-459391350_833696708946918_9095455658024438312_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(539, 'public/uploads/product/1726507051-458919708_493149193554161_2257885718192586876_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(540, 'public/uploads/product/1726507051-458145815_1618709658678069_6107993801057964746_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(541, 'public/uploads/product/1726507051-458150434_1581145152614941_8705689075607891895_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(542, 'public/uploads/product/1726507051-458225222_2681112938745687_4504536797142650598_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(543, 'public/uploads/product/1726507051-458568332_853073810300891_3690119123231765433_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(544, 'public/uploads/product/1726507051-458810362_1666351777482775_5660769551633028573_n.jpg', 274, '2024-09-16 17:17:31', '2024-09-16 17:17:31'),
(545, 'public/uploads/product/1726507214-457670507_3434887213478408_5696624295989818998_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(546, 'public/uploads/product/1726507214-457391047_1277578360075040_3267350817331757713_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(547, 'public/uploads/product/1726507214-458591776_1506204516767131_7173855595891091067_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(548, 'public/uploads/product/1726507214-459309805_2686194491560111_5389072125199607665_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(549, 'public/uploads/product/1726507214-459335262_1039115827445785_8908550369258533916_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(550, 'public/uploads/product/1726507214-458582243_3622496091229399_884570489272501979_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(551, 'public/uploads/product/1726507214-458737340_1232910364801594_5950560941029268712_n.jpg', 275, '2024-09-16 17:20:14', '2024-09-16 17:20:14'),
(552, 'public/uploads/product/1726507408-457661510_3851716288489172_6873463666763039290_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(553, 'public/uploads/product/1726507408-458969440_2481980365331574_4763959516088327848_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(554, 'public/uploads/product/1726507408-458745279_1046532377081914_5126808719533719951_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(555, 'public/uploads/product/1726507408-458539709_1031549115374399_2144104505285830560_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(556, 'public/uploads/product/1726507408-458816637_537308568862772_6675180023018036276_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(557, 'public/uploads/product/1726507408-457456209_3753971938195639_6846442890770880026_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(558, 'public/uploads/product/1726507408-457702259_913900957469922_3737002828624200924_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(559, 'public/uploads/product/1726507408-457869433_867789228625888_5910996511616671006_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(560, 'public/uploads/product/1726507408-458260688_1042915990905820_7295557982574370895_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(561, 'public/uploads/product/1726507408-458260701_1255869642254176_1421962333202233636_n.jpg', 276, '2024-09-16 17:23:28', '2024-09-16 17:23:28'),
(562, 'public/uploads/product/1726507592-458407997_412939641904162_4474504736808816210_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(563, 'public/uploads/product/1726507592-458407998_898435988821627_342583840473212331_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(564, 'public/uploads/product/1726507592-457148928_1507911689832638_2108000205691816766_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(565, 'public/uploads/product/1726507592-457159109_2884360998406742_4575101145973149101_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(566, 'public/uploads/product/1726507592-457411384_3248174498646699_408773314618972948_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(567, 'public/uploads/product/1726507592-457712706_3698384453744179_2559125183025260085_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(568, 'public/uploads/product/1726507592-457727450_450490884804208_5229940070955528531_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(569, 'public/uploads/product/1726507592-458255983_474249055600739_4638555230916537508_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(570, 'public/uploads/product/1726507592-458260699_1569426507035603_3129078369953918431_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(571, 'public/uploads/product/1726507592-459102517_838577881375207_5580329038916428386_n.jpg', 277, '2024-09-16 17:26:32', '2024-09-16 17:26:32'),
(572, 'public/uploads/product/1726508017-kitchen-cleaner-(2).jpg', 278, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(573, 'public/uploads/product/1726508017-kitchen-cleaner-(4).jpg', 278, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(574, 'public/uploads/product/1726508017-kitchen-cleaner-(3).jpg', 278, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(575, 'public/uploads/product/1726508017-kitchen-cleaner-(1).jpg', 278, '2024-09-16 17:33:37', '2024-09-16 17:33:37'),
(576, 'public/uploads/product/1726508300-5-layer-shoe-rack-7.jpg', 279, '2024-09-16 17:38:20', '2024-09-16 17:38:20'),
(577, 'public/uploads/product/1726508300-5-layer-shoe-rack-8.jpg', 279, '2024-09-16 17:38:20', '2024-09-16 17:38:20'),
(578, 'public/uploads/product/1726508300-5-layer-shoe-rack-9.jpg', 279, '2024-09-16 17:38:20', '2024-09-16 17:38:20'),
(579, 'public/uploads/product/1726508300-5-layer-shoe-rack-1.jpg', 279, '2024-09-16 17:38:20', '2024-09-16 17:38:20'),
(580, 'public/uploads/product/1726508532-447281981_358872960543876_1052941326614377113_n.jpg', 280, '2024-09-16 17:42:12', '2024-09-16 17:42:12'),
(581, 'public/uploads/product/1726508532-447895578_358872900543882_7628583000604935653_n.jpg', 280, '2024-09-16 17:42:12', '2024-09-16 17:42:12'),
(582, 'public/uploads/product/1726508532-447447098_358872897210549_1542582340964002951_n.jpg', 280, '2024-09-16 17:42:12', '2024-09-16 17:42:12'),
(583, 'public/uploads/product/1726508532-448016849_358872947210544_6579595884295482178_n.jpg', 280, '2024-09-16 17:42:12', '2024-09-16 17:42:12'),
(584, 'public/uploads/product/1726508663-441498888_347006888397150_2759739048638221121_n.jpg', 281, '2024-09-16 17:44:23', '2024-09-16 17:44:23'),
(585, 'public/uploads/product/1726508663-457156381_411405528623952_6423063351095563216_n.jpg', 281, '2024-09-16 17:44:23', '2024-09-16 17:44:23'),
(586, 'public/uploads/product/1726508663-441450785_347006801730492_3242757302303849146_n.jpg', 281, '2024-09-16 17:44:23', '2024-09-16 17:44:23'),
(587, 'public/uploads/product/1726508663-441528762_347006778397161_3823451804208053869_n.jpg', 281, '2024-09-16 17:44:23', '2024-09-16 17:44:23'),
(588, 'public/uploads/product/1726508663-441712238_347006858397153_3054759184255417112_n.jpg', 281, '2024-09-16 17:44:23', '2024-09-16 17:44:23'),
(589, 'public/uploads/product/1726508889-440229018_328688700228969_7778359786806471164_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(590, 'public/uploads/product/1726508889-439920614_328688563562316_2155545797201165184_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(591, 'public/uploads/product/1726508889-437382170_328688490228990_2161820122376676931_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(592, 'public/uploads/product/1726508889-437382064_328688590228980_1040111516054300440_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(593, 'public/uploads/product/1726508889-440239067_328688656895640_1474563228760187053_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(594, 'public/uploads/product/1726508889-440258005_330213840076455_185721982979452734_n.jpg', 282, '2024-09-16 17:48:09', '2024-09-16 17:48:09'),
(595, 'public/uploads/product/1726509042-new_shop_bd_1_(14).jpg', 283, '2024-09-16 17:50:42', '2024-09-16 17:50:42'),
(596, 'public/uploads/product/1726509042-454215380_503695638871530_949819488664483126_n-800x800.jpg', 283, '2024-09-16 17:50:42', '2024-09-16 17:50:42'),
(597, 'public/uploads/product/1726509042-453584403_867840721930082_5669070142417913529_n-800x800.jpg', 283, '2024-09-16 17:50:42', '2024-09-16 17:50:42'),
(598, 'public/uploads/product/1726509307-9475489a_1e38_4da9_a416_2ca45dbdec12-800x800.jpg', 284, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(599, 'public/uploads/product/1726509307-fee97f1e_9357_456e_9e35_074b59f2a488-800x800.jpg', 284, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(600, 'public/uploads/product/1726509307-3a031bac_bf26_4f3d_bf44_8859c08f6335-800x800.jpg', 284, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(601, 'public/uploads/product/1726509307-64f47c1a_fe99_4028_9977_41eb3f483bf5-800x800-(1).jpg', 284, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(602, 'public/uploads/product/1726509307-76a44685_04df_4e5f_b7e8_fa7369f476dd-800x800.jpg', 284, '2024-09-16 17:55:07', '2024-09-16 17:55:07'),
(603, 'public/uploads/product/1726580311-n1-800x800.png', 285, '2024-09-17 13:38:31', '2024-09-17 13:38:31'),
(604, 'public/uploads/product/1726580311-n2-800x800.png', 285, '2024-09-17 13:38:31', '2024-09-17 13:38:31'),
(605, 'public/uploads/product/1726580628-153b2fcc_9ab7_466f_93cf_cd4c85a7e8e5-800x800.jpg', 286, '2024-09-17 13:43:48', '2024-09-17 13:43:48'),
(606, 'public/uploads/product/1726580628-437365978_328710933560079_5817020040186686257_n.jpg', 286, '2024-09-17 13:43:48', '2024-09-17 13:43:48'),
(607, 'public/uploads/product/1726580628-a9c9dba3_02ac_4bbc_95fd_aacd48ecdfb9-800x800.jpg', 286, '2024-09-17 13:43:48', '2024-09-17 13:43:48'),
(608, 'public/uploads/product/1726580628-c7868d95_eafc_434f_9351_c4a2a2a05c67-800x800.jpg', 286, '2024-09-17 13:43:48', '2024-09-17 13:43:48'),
(609, 'public/uploads/product/1726580868-6a7c31ae_7722_457e_8d89_96e8a5ec21da-800x800.jpg', 287, '2024-09-17 13:47:48', '2024-09-17 13:47:48'),
(610, 'public/uploads/product/1726580868-6fc1d13d_0b0c_4ba4_ab41_621dad793b84-800x800.jpg', 287, '2024-09-17 13:47:48', '2024-09-17 13:47:48'),
(611, 'public/uploads/product/1726580868-0272c27e_d56b_42f2_b7e5_3b45383851c3-800x800.jpg', 287, '2024-09-17 13:47:48', '2024-09-17 13:47:48'),
(612, 'public/uploads/product/1726581091-5348a81a_334e_47d6_99fb_49a1a62fde51-800x800.jpg', 288, '2024-09-17 13:51:31', '2024-09-17 13:51:31'),
(613, 'public/uploads/product/1726581091-b31ec850_f7b7_46d9_a89c_e988a2988ed3-800x800.jpg', 288, '2024-09-17 13:51:31', '2024-09-17 13:51:31'),
(614, 'public/uploads/product/1726581091-1ad99a56_9256_4213_bd22_8525795fb5a0-800x800.jpg', 288, '2024-09-17 13:51:31', '2024-09-17 13:51:31'),
(615, 'public/uploads/product/1726581091-4e2ca3c0_d8fb_4307_a03b_2cb25d9babde-800x800.jpg', 288, '2024-09-17 13:51:31', '2024-09-17 13:51:31'),
(616, 'public/uploads/product/1726581200-0bf38dc8_2dc0_428a_a4be_24e2cef2c203-800x800.jpg', 289, '2024-09-17 13:53:20', '2024-09-17 13:53:20'),
(617, 'public/uploads/product/1726581200-6d508ec2_f12f_42e8_a645_8982d88798d0-800x800.jpg', 289, '2024-09-17 13:53:20', '2024-09-17 13:53:20'),
(618, 'public/uploads/product/1726581200-902eeea8_a300_468a_95d2_36b96e53b932-800x800.jpg', 289, '2024-09-17 13:53:20', '2024-09-17 13:53:20'),
(619, 'public/uploads/product/1726581308-08202ce5_0fc1_4951_94c1_1bfe10afa277-800x800.jpg', 290, '2024-09-17 13:55:08', '2024-09-17 13:55:08'),
(620, 'public/uploads/product/1726581308-1c64b1bc_9b7d_4044_93fb_8db2ecd96f31-800x800.jpg', 290, '2024-09-17 13:55:08', '2024-09-17 13:55:08'),
(621, 'public/uploads/product/1726581308-9c4bbb1d_9893_4720_8a98_9ec5c03ba7fe-800x800.jpg', 290, '2024-09-17 13:55:08', '2024-09-17 13:55:08'),
(622, 'public/uploads/product/1726581454-65caa8d0_d0bc_4e94_a28a_a27a0ec358f8-800x800.jpg', 291, '2024-09-17 13:57:34', '2024-09-17 13:57:34'),
(623, 'public/uploads/product/1726581454-6250af0c_f3f4_4fca_b986_f812db771bd6-800x800.jpg', 291, '2024-09-17 13:57:34', '2024-09-17 13:57:34'),
(624, 'public/uploads/product/1726581454-9c858435_3104_496b_a322_316dc5e4b7dd-800x800.jpg', 291, '2024-09-17 13:57:34', '2024-09-17 13:57:34'),
(625, 'public/uploads/product/1726581577-053a1ba6_8c30_48c1_b038_197993c304b4-800x800.jpg', 292, '2024-09-17 13:59:37', '2024-09-17 13:59:37'),
(626, 'public/uploads/product/1726581577-91405e6b_5054_4596_bfef_aba0e7bfe542-800x800.jpg', 292, '2024-09-17 13:59:37', '2024-09-17 13:59:37'),
(627, 'public/uploads/product/1726581577-3ff3d103_31a2_40fa_ad5d_6996f6859dd6-800x800.jpg', 292, '2024-09-17 13:59:37', '2024-09-17 13:59:37'),
(628, 'public/uploads/product/1726582567-movable-side-table-(4).jpg', 293, '2024-09-17 14:16:07', '2024-09-17 14:16:07'),
(629, 'public/uploads/product/1726582567-movable-side-table-(3).jpg', 293, '2024-09-17 14:16:07', '2024-09-17 14:16:07'),
(632, 'public/uploads/product/1726582567-movable-side-table-(10).jpg', 293, '2024-09-17 14:16:07', '2024-09-17 14:16:07'),
(634, 'public/uploads/product/1726582651-movable-side-table-(3).jpg', 293, '2024-09-17 14:17:31', '2024-09-17 14:17:31'),
(635, 'public/uploads/product/1726582651-movable-side-table-(7).jpg', 293, '2024-09-17 14:17:31', '2024-09-17 14:17:31'),
(636, 'public/uploads/product/1726582651-movable-side-table-(3).jpg', 293, '2024-09-17 14:17:31', '2024-09-17 14:17:31'),
(637, 'public/uploads/product/1726582840-movable-side-table-(1).jpg', 294, '2024-09-17 14:20:40', '2024-09-17 14:20:40'),
(638, 'public/uploads/product/1726582840-movable-side-table-(8).jpg', 294, '2024-09-17 14:20:40', '2024-09-17 14:20:40'),
(639, 'public/uploads/product/1726582840-movable-side-table-(9).jpg', 294, '2024-09-17 14:20:40', '2024-09-17 14:20:40'),
(640, 'public/uploads/product/1726582840-movable-side-table-(2).jpg', 294, '2024-09-17 14:20:40', '2024-09-17 14:20:40'),
(641, 'public/uploads/product/1726582840-movable-side-table-(6).jpg', 294, '2024-09-17 14:20:40', '2024-09-17 14:20:40'),
(642, 'public/uploads/product/1726595881-img_4486.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(643, 'public/uploads/product/1726595881-img_4478.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(644, 'public/uploads/product/1726595881-img_4477.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(645, 'public/uploads/product/1726595881-img_4476.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(646, 'public/uploads/product/1726595881-img_4485.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(647, 'public/uploads/product/1726595881-img_4484.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(648, 'public/uploads/product/1726595881-img_4483.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(649, 'public/uploads/product/1726595881-img_4482.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(650, 'public/uploads/product/1726595881-img_4481.jpeg', 295, '2024-09-17 17:58:01', '2024-09-17 17:58:01'),
(651, 'public/uploads/product/1726806167-458531057_896816422508385_1606879536019132620_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(652, 'public/uploads/product/1726806167-459093954_1249176729422821_8140453786907918736_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(653, 'public/uploads/product/1726806167-459107576_4013493928976453_2973880311443713543_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(654, 'public/uploads/product/1726806167-459364835_2721333011373413_5410701970321066139_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(655, 'public/uploads/product/1726806167-459883198_3507158392909511_4912927361609974353_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(656, 'public/uploads/product/1726806167-458555833_1038363327752751_5563619487879764691_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(657, 'public/uploads/product/1726806167-457712702_1204367924205245_882942194673742397_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(658, 'public/uploads/product/1726806167-458582236_536516342285963_9071567009527205458_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(659, 'public/uploads/product/1726806167-456279603_4101757593431628_3421035243376037501_n.jpg', 296, '2024-09-20 04:22:47', '2024-09-20 04:22:47'),
(660, 'public/uploads/product/1726806384-458427242_3816525398623711_3777550111443227734_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(661, 'public/uploads/product/1726806384-460269211_469212149440677_6652238415501658224_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(662, 'public/uploads/product/1726806384-458935171_905107898145744_7754011128841340438_n-(1).jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(663, 'public/uploads/product/1726806384-458919706_1574967710080288_5560457234762232166_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(664, 'public/uploads/product/1726806384-458403065_824853666523173_8478646728215713926_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(665, 'public/uploads/product/1726806384-459339519_1651385108981188_8832143162605274715_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(666, 'public/uploads/product/1726806384-458580003_3821223841488853_1203706779504369266_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(667, 'public/uploads/product/1726806384-458935171_905107898145744_7754011128841340438_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(668, 'public/uploads/product/1726806384-458919706_542611628142380_3559223275552890191_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(669, 'public/uploads/product/1726806384-459191781_439406821989771_1235813210281573865_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(670, 'public/uploads/product/1726806384-459168189_338099365981756_6900572568612565103_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(671, 'public/uploads/product/1726806384-458764528_1075686160576188_8835057652333294786_n.jpg', 297, '2024-09-20 04:26:24', '2024-09-20 04:26:24'),
(672, 'public/uploads/product/1726806523-460495000_2000510983723666_4014408226517923979_n.jpg', 298, '2024-09-20 04:28:43', '2024-09-20 04:28:43'),
(673, 'public/uploads/product/1726806523-459082886_822796103393364_7503694787271915712_n.jpg', 298, '2024-09-20 04:28:43', '2024-09-20 04:28:43'),
(674, 'public/uploads/product/1726806523-458300970_8176495342403710_217941269685503195_n.jpg', 298, '2024-09-20 04:28:43', '2024-09-20 04:28:43'),
(675, 'public/uploads/product/1726806523-458582234_466283599705778_4497881580088372249_n.jpg', 298, '2024-09-20 04:28:43', '2024-09-20 04:28:43'),
(676, 'public/uploads/product/1726807047-420099294_271270952637411_5931139795040018839_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(677, 'public/uploads/product/1726807047-459787752_468031769568451_1719942276037361199_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(678, 'public/uploads/product/1726807047-459352959_26720456610935718_9186627365631178413_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(679, 'public/uploads/product/1726807047-459167984_1221420675865927_1838208935510037658_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(680, 'public/uploads/product/1726807047-458930149_388717404097548_5645072131070392867_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(681, 'public/uploads/product/1726807047-457680250_1241431250207081_4943953148877594137_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(682, 'public/uploads/product/1726807047-459229662_1505586033465109_2432246140557134185_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(683, 'public/uploads/product/1726807047-459787752_468031769568451_1719942276037361199_n.jpg', 299, '2024-09-20 04:37:27', '2024-09-20 04:37:27'),
(684, 'public/uploads/product/1726807290-458816604_514118594584366_8243115307691410060_n.jpg', 300, '2024-09-20 04:41:30', '2024-09-20 04:41:30'),
(685, 'public/uploads/product/1726807290-458425773_848538534089095_1134628190710273885_n.jpg', 300, '2024-09-20 04:41:30', '2024-09-20 04:41:30'),
(686, 'public/uploads/product/1726807290-460069928_1094496738996696_602815845025251928_n.jpg', 300, '2024-09-20 04:41:30', '2024-09-20 04:41:30'),
(687, 'public/uploads/product/1726807290-459975781_1193220205267301_667676141386150486_n.jpg', 300, '2024-09-20 04:41:30', '2024-09-20 04:41:30'),
(688, 'public/uploads/product/1726807290-459230102_2318561561826914_6764565230420520516_n.jpg', 300, '2024-09-20 04:41:30', '2024-09-20 04:41:30'),
(689, 'public/uploads/product/1726807434-458425633_449695931436510_8455016755488693105_n.jpg', 301, '2024-09-20 04:43:54', '2024-09-20 04:43:54'),
(690, 'public/uploads/product/1726807434-459172813_2020939261695518_6423352732412078717_n.jpg', 301, '2024-09-20 04:43:54', '2024-09-20 04:43:54'),
(691, 'public/uploads/product/1726807434-457727448_899520988700376_3083136177824628890_n.jpg', 301, '2024-09-20 04:43:54', '2024-09-20 04:43:54'),
(692, 'public/uploads/product/1726807434-459783352_3878507159136129_8964209218251089336_n.jpg', 301, '2024-09-20 04:43:54', '2024-09-20 04:43:54'),
(693, 'public/uploads/product/1726807434-457745398_1252579165752333_8433828532362247160_n.jpg', 301, '2024-09-20 04:43:54', '2024-09-20 04:43:54'),
(694, 'public/uploads/product/1726807559-458936533_1712214329553029_2702232271681367938_n.jpg', 302, '2024-09-20 04:45:59', '2024-09-20 04:45:59'),
(695, 'public/uploads/product/1726807559-459904617_389929710822703_3111028576939637413_n.jpg', 302, '2024-09-20 04:45:59', '2024-09-20 04:45:59'),
(696, 'public/uploads/product/1726807559-459063435_2536596526526478_670644270968159603_n.jpg', 302, '2024-09-20 04:45:59', '2024-09-20 04:45:59'),
(697, 'public/uploads/product/1726807559-459185699_2217701088585644_5314245816471563842_n.jpg', 302, '2024-09-20 04:45:59', '2024-09-20 04:45:59'),
(698, 'public/uploads/product/1726807696-458927464_924865616155989_6187162435860773128_n.jpg', 303, '2024-09-20 04:48:16', '2024-09-20 04:48:16'),
(699, 'public/uploads/product/1726807696-458384159_537559772019810_8334387499296260022_n.jpg', 303, '2024-09-20 04:48:16', '2024-09-20 04:48:16'),
(700, 'public/uploads/product/1726807696-458770353_1229938541370957_9046347899409357830_n.jpg', 303, '2024-09-20 04:48:16', '2024-09-20 04:48:16'),
(701, 'public/uploads/product/1726807696-459379682_1196953114852183_5964181461552483588_n.jpg', 303, '2024-09-20 04:48:16', '2024-09-20 04:48:16'),
(702, 'public/uploads/product/1726807794-458444002_888291556040058_4321579857829486989_n.jpg', 304, '2024-09-20 04:49:54', '2024-09-20 04:49:54'),
(703, 'public/uploads/product/1726807794-458606914_1061466972239355_8617880563537467812_n.jpg', 304, '2024-09-20 04:49:54', '2024-09-20 04:49:54'),
(704, 'public/uploads/product/1726807794-459883191_1297155678318044_4157161831585743931_n.jpg', 304, '2024-09-20 04:49:54', '2024-09-20 04:49:54'),
(705, 'public/uploads/product/1726807794-370139915_915029506721364_496600805095240808_n.jpg', 304, '2024-09-20 04:49:54', '2024-09-20 04:49:54'),
(706, 'public/uploads/product/1726808191-457680250_1215044216470095_3086158315077163168_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(707, 'public/uploads/product/1726808191-457695423_525091280273864_7242671573857639584_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(708, 'public/uploads/product/1726808191-459787760_446873971731315_3089717680185366466_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(709, 'public/uploads/product/1726808191-459107822_531824539426477_8819495357887026915_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(710, 'public/uploads/product/1726808191-458494356_1261462088214821_8657800120166540017_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(711, 'public/uploads/product/1726808191-459935221_543006134758798_259189855305015795_n.jpg', 305, '2024-09-20 04:56:31', '2024-09-20 04:56:31'),
(712, 'public/uploads/product/1726810462-foldable-double-head-laptop-table-2.jpg', 306, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(713, 'public/uploads/product/1726810462-foldable-double-head-laptop-table-1.jpg', 306, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(714, 'public/uploads/product/1726810462-foldable-double-head-laptop-table-3.jpg', 306, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(715, 'public/uploads/product/1726810462-foldable-double-head-laptop-table-4.jpg', 306, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(716, 'public/uploads/product/1726810462-foldable-double-head-laptop-table-5.jpg', 306, '2024-09-20 05:34:22', '2024-09-20 05:34:22'),
(717, 'public/uploads/product/1726839668-0b6b3b29_f225_465d_95fe_4bbe3cc6f0c2-800x800.jpg', 307, '2024-09-20 13:41:08', '2024-09-20 13:41:08'),
(718, 'public/uploads/product/1726839668-ec73d884_56ae_430b_b3ef_b8dde9726576-800x800.jpg', 307, '2024-09-20 13:41:08', '2024-09-20 13:41:08'),
(719, 'public/uploads/product/1727032754-302522994_543738087553595_5164106213156660489_n.jpg', 308, '2024-09-22 19:19:14', '2024-09-22 19:19:14'),
(720, 'public/uploads/product/1727032754-whatsapp-image-2024-09-21-at-21.20.31_a2a7a8ab.jpg', 308, '2024-09-22 19:19:14', '2024-09-22 19:19:14'),
(721, 'public/uploads/product/1727032855-whatsapp-image-2024-09-21-at-21.20.28_36180ccd.jpg', 309, '2024-09-22 19:20:55', '2024-09-22 19:20:55'),
(722, 'public/uploads/product/1727033020-304096701_543738974220173_914986738131437009_n.jpg', 310, '2024-09-22 19:23:40', '2024-09-22 19:23:40'),
(723, 'public/uploads/product/1727033020-whatsapp-image-2024-09-21-at-21.20.28_b4b4960d.jpg', 310, '2024-09-22 19:23:40', '2024-09-22 19:23:40'),
(724, 'public/uploads/product/1727067026-whatsapp-image-2024-09-21-at-21.20.35_ae0998a4.jpg', 311, '2024-09-23 04:50:26', '2024-09-23 04:50:26'),
(725, 'public/uploads/product/1727067135-306144225_543740624220008_6933288982517200254_n.jpg', 312, '2024-09-23 04:52:15', '2024-09-23 04:52:15'),
(726, 'public/uploads/product/1727067135-whatsapp-image-2024-09-21-at-21.20.34_e1e69c62.jpg', 312, '2024-09-23 04:52:15', '2024-09-23 04:52:15'),
(727, 'public/uploads/product/1727187636-459947983_513155948005690_7217011928709195110_n.jpg', 313, '2024-09-24 14:20:36', '2024-09-24 14:20:36'),
(728, 'public/uploads/product/1727187636-459109289_1596546224614321_444538408067674827_n.jpg', 313, '2024-09-24 14:20:36', '2024-09-24 14:20:36'),
(729, 'public/uploads/product/1727187636-459389047_2553184881532110_8322991971285409538_n.jpg', 313, '2024-09-24 14:20:36', '2024-09-24 14:20:36'),
(730, 'public/uploads/product/1727187969-459844279_8089975177797022_5012907237812351078_n.jpg', 314, '2024-09-24 14:26:09', '2024-09-24 14:26:09'),
(731, 'public/uploads/product/1727187969-459935218_544005514770196_3421135919829832781_n.jpg', 314, '2024-09-24 14:26:09', '2024-09-24 14:26:09'),
(732, 'public/uploads/product/1727187969-459759098_8230628683715018_8442261621706769852_n.jpg', 314, '2024-09-24 14:26:09', '2024-09-24 14:26:09'),
(733, 'public/uploads/product/1727187969-459309822_908944888107507_311001289114543279_n.jpg', 314, '2024-09-24 14:26:09', '2024-09-24 14:26:09'),
(734, 'public/uploads/product/1727189920-10.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(735, 'public/uploads/product/1727189920-453514646_1017241996364902_1726771749380283215_n-800x800.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(736, 'public/uploads/product/1727189920-12.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(737, 'public/uploads/product/1727189920-13.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(738, 'public/uploads/product/1727189920-15.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(739, 'public/uploads/product/1727189920-17.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(740, 'public/uploads/product/1727189920-19.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(741, 'public/uploads/product/1727189920-20.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(742, 'public/uploads/product/1727189920-22.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(743, 'public/uploads/product/1727189920-453651113_359352463881750_1898346228174351821_n-800x800.jpg', 315, '2024-09-24 14:58:40', '2024-09-24 14:58:40'),
(744, 'public/uploads/product/1727189991-10.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(745, 'public/uploads/product/1727189991-12.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(746, 'public/uploads/product/1727189991-14.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(747, 'public/uploads/product/1727189991-16.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(748, 'public/uploads/product/1727189991-17.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(749, 'public/uploads/product/1727189991-18.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(750, 'public/uploads/product/1727189991-453514646_1017241996364902_1726771749380283215_n-800x800.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(751, 'public/uploads/product/1727189991-453651113_359352463881750_1898346228174351821_n-800x800.jpg', 261, '2024-09-24 14:59:51', '2024-09-24 14:59:51'),
(752, 'public/uploads/product/1727190103-10.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(753, 'public/uploads/product/1727190103-12.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(754, 'public/uploads/product/1727190103-453514646_1017241996364902_1726771749380283215_n-800x800.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(755, 'public/uploads/product/1727190103-22.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(756, 'public/uploads/product/1727190103-14.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(757, 'public/uploads/product/1727190103-15.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(758, 'public/uploads/product/1727190103-17.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(759, 'public/uploads/product/1727190103-16.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(760, 'public/uploads/product/1727190103-18.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(761, 'public/uploads/product/1727190103-20.jpg', 316, '2024-09-24 15:01:43', '2024-09-24 15:01:43'),
(762, 'public/uploads/product/1727195510-22.jpg', 317, '2024-09-24 16:31:50', '2024-09-24 16:31:50'),
(763, 'public/uploads/product/1727361662-whatsapp-image-2024-09-26-at-20.23.14_d822f50f.jpg', 306, '2024-09-26 14:41:02', '2024-09-26 14:41:02'),
(764, 'public/uploads/product/1727445764-ill-003.jpg', 181, '2024-09-27 14:02:44', '2024-09-27 14:02:44'),
(765, 'public/uploads/product/1727464069-1.jpg', 316, '2024-09-27 19:07:49', '2024-09-27 19:07:49'),
(766, 'public/uploads/product/1727464069-234-1.jpg', 316, '2024-09-27 19:07:49', '2024-09-27 19:07:49'),
(767, 'public/uploads/product/1727464099-1.jpg', 315, '2024-09-27 19:08:19', '2024-09-27 19:08:19'),
(768, 'public/uploads/product/1727464099-234-1.jpg', 315, '2024-09-27 19:08:19', '2024-09-27 19:08:19'),
(769, 'public/uploads/product/1727464122-1.jpg', 261, '2024-09-27 19:08:42', '2024-09-27 19:08:42'),
(770, 'public/uploads/product/1727464122-234-1.jpg', 261, '2024-09-27 19:08:42', '2024-09-27 19:08:42'),
(771, 'public/uploads/product/1727631675-1803836003107807.jpg', 318, '2024-09-29 17:41:15', '2024-09-29 17:41:15'),
(772, 'public/uploads/product/1727631675-1803836003168074.jpg', 318, '2024-09-29 17:41:15', '2024-09-29 17:41:15'),
(773, 'public/uploads/product/1727631675-1803836003221995.jpg', 318, '2024-09-29 17:41:15', '2024-09-29 17:41:15'),
(774, 'public/uploads/product/1727631783-1807459877863798.jpg', 319, '2024-09-29 17:43:03', '2024-09-29 17:43:03'),
(775, 'public/uploads/product/1727631783-1807459877968915.jpg', 319, '2024-09-29 17:43:03', '2024-09-29 17:43:03'),
(776, 'public/uploads/product/1727631783-1807459878031907.jpg', 319, '2024-09-29 17:43:03', '2024-09-29 17:43:03'),
(777, 'public/uploads/product/1727631926-1803808708116856.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(778, 'public/uploads/product/1727631926-1803808708151415.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(779, 'public/uploads/product/1727631926-1803808708183526.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(780, 'public/uploads/product/1727631926-1803808708214984.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(781, 'public/uploads/product/1727631926-1803808708247208.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(782, 'public/uploads/product/1727631926-1803808708278139.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(783, 'public/uploads/product/1727631926-1803808708309433.jpg', 320, '2024-09-29 17:45:26', '2024-09-29 17:45:26'),
(784, 'public/uploads/product/1727632050-1777631818323028.webp', 321, '2024-09-29 17:47:30', '2024-09-29 17:47:30'),
(785, 'public/uploads/product/1727632221-1777653294977093.webp', 322, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(786, 'public/uploads/product/1727632221-1777653295131671.webp', 322, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(787, 'public/uploads/product/1727632221-1777653295213560.webp', 322, '2024-09-29 17:50:21', '2024-09-29 17:50:21'),
(788, 'public/uploads/product/1727632380-1810447426989515.jpg', 323, '2024-09-29 17:53:00', '2024-09-29 17:53:00'),
(789, 'public/uploads/product/1727632464-1778446394352039.jpg', 324, '2024-09-29 17:54:24', '2024-09-29 17:54:24'),
(790, 'public/uploads/product/1727632464-1778446394380001.jpg', 324, '2024-09-29 17:54:24', '2024-09-29 17:54:24'),
(791, 'public/uploads/product/1727632464-1778446394403502.jpg', 324, '2024-09-29 17:54:24', '2024-09-29 17:54:24'),
(792, 'public/uploads/product/1727632582-1778445080194767.jpg', 325, '2024-09-29 17:56:22', '2024-09-29 17:56:22'),
(793, 'public/uploads/product/1727632582-1778445080229588.jpg', 325, '2024-09-29 17:56:22', '2024-09-29 17:56:22'),
(794, 'public/uploads/product/1727632582-1778445080270337.jpg', 325, '2024-09-29 17:56:22', '2024-09-29 17:56:22'),
(795, 'public/uploads/product/1727632702-1779067867110218.jpg', 326, '2024-09-29 17:58:22', '2024-09-29 17:58:22'),
(796, 'public/uploads/product/1727632702-1779067867178773.jpg', 326, '2024-09-29 17:58:22', '2024-09-29 17:58:22'),
(797, 'public/uploads/product/1727632702-1779067867243830.jpg', 326, '2024-09-29 17:58:22', '2024-09-29 17:58:22'),
(798, 'public/uploads/product/1727632702-1779067867272377.jpg', 326, '2024-09-29 17:58:22', '2024-09-29 17:58:22'),
(799, 'public/uploads/product/1727632824-1779366831103461.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(800, 'public/uploads/product/1727632824-1779366831158758.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(801, 'public/uploads/product/1727632824-1779366831217814.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(802, 'public/uploads/product/1727632824-1779366831269102.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(803, 'public/uploads/product/1727632824-1779366831312606.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(804, 'public/uploads/product/1727632824-1779366831360692.jpg', 327, '2024-09-29 18:00:24', '2024-09-29 18:00:24'),
(805, 'public/uploads/product/1727804907-whatsapp-image-2024-09-30-at-14.53.56_f0e4743c.jpg', 328, '2024-10-01 17:48:27', '2024-10-01 17:48:27'),
(806, 'public/uploads/product/1727804947-whatsapp-image-2024-09-30-at-14.53.57_81250cd1.jpg', 329, '2024-10-01 17:49:07', '2024-10-01 17:49:07'),
(807, 'public/uploads/product/1727804979-whatsapp-image-2024-09-30-at-14.53.57_1715013c.jpg', 330, '2024-10-01 17:49:39', '2024-10-01 17:49:39'),
(808, 'public/uploads/product/1727805030-whatsapp-image-2024-09-30-at-14.53.57_c6fd758b.jpg', 331, '2024-10-01 17:50:30', '2024-10-01 17:50:30'),
(809, 'public/uploads/product/1727805062-whatsapp-image-2024-09-30-at-14.53.58_51622bed.jpg', 332, '2024-10-01 17:51:02', '2024-10-01 17:51:02'),
(810, 'public/uploads/product/1727805109-whatsapp-image-2024-09-30-at-14.53.58_b3c08279.jpg', 333, '2024-10-01 17:51:49', '2024-10-01 17:51:49'),
(811, 'public/uploads/product/1727805137-whatsapp-image-2024-09-30-at-14.53.59_c8012f4f.jpg', 334, '2024-10-01 17:52:17', '2024-10-01 17:52:17'),
(812, 'public/uploads/product/1727805856-2b8a6308a6ab61f17bbe735be85248bc-800x800.jpg', 335, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(813, 'public/uploads/product/1727805856-8b1ddf61_3958_4e7d_aacf_542661d7b1c4-800x800.jpg', 335, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(814, 'public/uploads/product/1727805856-8edcda42_f280_439a_b099_2dda78434bb6-800x800.jpg', 335, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(815, 'public/uploads/product/1727805856-334df565_af5e_4651_85b2_82025c6545fb-800x800.jpg', 335, '2024-10-01 18:04:16', '2024-10-01 18:04:16'),
(816, 'public/uploads/product/1727886649-spz-001.jpg', 336, '2024-10-02 16:30:49', '2024-10-02 16:30:49'),
(817, 'public/uploads/product/1727886735-spz-002.jpg', 337, '2024-10-02 16:32:15', '2024-10-02 16:32:15'),
(818, 'public/uploads/product/1727886772-spz-003.jpg', 338, '2024-10-02 16:32:52', '2024-10-02 16:32:52'),
(819, 'public/uploads/product/1727891424-spz-004.jpg', 339, '2024-10-02 17:50:24', '2024-10-02 17:50:24'),
(820, 'public/uploads/product/1727891473-spz-005.jpg', 340, '2024-10-02 17:51:13', '2024-10-02 17:51:13'),
(821, 'public/uploads/product/1727891508-spz-006.jpg', 341, '2024-10-02 17:51:48', '2024-10-02 17:51:48'),
(822, 'public/uploads/product/1727891551-spz-007.jpg', 342, '2024-10-02 17:52:31', '2024-10-02 17:52:31'),
(823, 'public/uploads/product/1727891593-spz-008.jpg', 343, '2024-10-02 17:53:13', '2024-10-02 17:53:13'),
(824, 'public/uploads/product/1727891630-spz-009.jpg', 344, '2024-10-02 17:53:50', '2024-10-02 17:53:50'),
(825, 'public/uploads/product/1727891667-spz-010.jpg', 345, '2024-10-02 17:54:27', '2024-10-02 17:54:27'),
(826, 'public/uploads/product/1727896490-cp-001.jpg', 346, '2024-10-02 19:14:50', '2024-10-02 19:14:50'),
(827, 'public/uploads/product/1727896538-cp-002.jpg', 347, '2024-10-02 19:15:38', '2024-10-02 19:15:38'),
(828, 'public/uploads/product/1727896583-cp-003.jpg', 348, '2024-10-02 19:16:23', '2024-10-02 19:16:23'),
(829, 'public/uploads/product/1727896615-cp-004.jpg', 349, '2024-10-02 19:16:55', '2024-10-02 19:16:55'),
(830, 'public/uploads/product/1727896646-cp-005.jpg', 350, '2024-10-02 19:17:26', '2024-10-02 19:17:26'),
(831, 'public/uploads/product/1727896675-cp-006.jpg', 351, '2024-10-02 19:17:55', '2024-10-02 19:17:55'),
(832, 'public/uploads/product/1727896728-cp-007.jpg', 352, '2024-10-02 19:18:48', '2024-10-02 19:18:48'),
(833, 'public/uploads/product/1727896766-cp-008.jpg', 353, '2024-10-02 19:19:26', '2024-10-02 19:19:26'),
(834, 'public/uploads/product/1727896798-cp-009.jpg', 354, '2024-10-02 19:19:58', '2024-10-02 19:19:58'),
(835, 'public/uploads/product/1727896829-cp-010.jpg', 355, '2024-10-02 19:20:29', '2024-10-02 19:20:29'),
(836, 'public/uploads/product/1727896859-cp-013.jpg', 356, '2024-10-02 19:20:59', '2024-10-02 19:20:59'),
(837, 'public/uploads/product/1727896893-cp-014.jpg', 357, '2024-10-02 19:21:33', '2024-10-02 19:21:33'),
(838, 'public/uploads/product/1727896930-cp-015.jpg', 358, '2024-10-02 19:22:10', '2024-10-02 19:22:10'),
(839, 'public/uploads/product/1727896984-cp-016.jpg', 359, '2024-10-02 19:23:04', '2024-10-02 19:23:04'),
(840, 'public/uploads/product/1727897054-cp-017.jpg', 360, '2024-10-02 19:24:14', '2024-10-02 19:24:14'),
(841, 'public/uploads/product/1727897105-cp-018.jpg', 361, '2024-10-02 19:25:05', '2024-10-02 19:25:05'),
(842, 'public/uploads/product/1727897141-cp-019.jpg', 362, '2024-10-02 19:25:41', '2024-10-02 19:25:41'),
(843, 'public/uploads/product/1727897173-cp-020.jpg', 363, '2024-10-02 19:26:13', '2024-10-02 19:26:13'),
(844, 'public/uploads/product/1727897247-cp-021.jpg', 364, '2024-10-02 19:27:27', '2024-10-02 19:27:27'),
(845, 'public/uploads/product/1727897287-cp-022.jpg', 365, '2024-10-02 19:28:07', '2024-10-02 19:28:07'),
(846, 'public/uploads/product/1727897323-cp-023.jpg', 366, '2024-10-02 19:28:43', '2024-10-02 19:28:43'),
(847, 'public/uploads/product/1727980036-459555838_378518478667018_5645585535255224802_n-800x800.jpg', 367, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(848, 'public/uploads/product/1727980036-459607003_560613296300589_2808252397207565370_n_1-800x800.jpg', 367, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(849, 'public/uploads/product/1727980036-460541112_494126340161969_2066525362872051862_n_1-800x800.jpg', 367, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(850, 'public/uploads/product/1727980036-459607003_560613296300589_2808252397207565370_n_1-800x800.jpg', 367, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(851, 'public/uploads/product/1727980036-461043000_1036834481516719_8661201354360867792_n_1-800x800.jpg', 367, '2024-10-03 18:27:16', '2024-10-03 18:27:16'),
(852, 'public/uploads/product/1728035257-6eda6f75_3b3c_4467_8761_67f9c60ffec3-800x800.jpg', 368, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(853, 'public/uploads/product/1728035257-e70676f8_2a66_458a_a710_7b1252604841-800x800.jpg', 368, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(854, 'public/uploads/product/1728035257-e14cad92_922e_4570_96b6_e54330c54c79-800x800.jpg', 368, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(855, 'public/uploads/product/1728035257-dd6fd7a8_00a7_4cc8_a2e2_969c49cadc10-800x800.jpg', 368, '2024-10-04 09:47:37', '2024-10-04 09:47:37'),
(856, 'public/uploads/product/1728035490-1727633112-1778274431721854.webp', 369, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(857, 'public/uploads/product/1728035490-1727633112-1778274431885134.jpg', 369, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(858, 'public/uploads/product/1728035490-1727633112-1778274431953428.jpg', 369, '2024-10-04 09:51:30', '2024-10-04 09:51:30'),
(859, 'public/uploads/product/1728036216-459745696_573113281738141_4935363391932521962_n-800x800-(1).jpg', 370, '2024-10-04 10:03:36', '2024-10-04 10:03:36'),
(860, 'public/uploads/product/1728036216-459326381_450717624007711_7790750972085924584_n-800x800.jpg', 370, '2024-10-04 10:03:36', '2024-10-04 10:03:36'),
(861, 'public/uploads/product/1728036216-459745696_573113281738141_4935363391932521962_n-800x800.jpg', 370, '2024-10-04 10:03:36', '2024-10-04 10:03:36'),
(864, 'public/uploads/product/1728400782-whatsapp-image-2024-10-08-at-01.37.39_be03c416.jpg', 371, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(865, 'public/uploads/product/1728400782-whatsapp-image-2024-10-08-at-01.37.38_37cb1574.jpg', 371, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(866, 'public/uploads/product/1728400782-whatsapp-image-2024-10-08-at-01.37.39_53382f40.jpg', 371, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(867, 'public/uploads/product/1728400782-whatsapp-image-2024-10-08-at-01.37.39_a7d68ac8.jpg', 371, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(868, 'public/uploads/product/1728400782-whatsapp-image-2024-10-08-at-01.37.40_588abcdf.jpg', 371, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(869, 'public/uploads/product/1728400949-size.png', 371, '2024-10-08 15:22:29', '2024-10-08 15:22:29'),
(870, 'public/uploads/product/1728400949-whatsapp-image-2024-10-08-at-21.12.01_a6527a07.jpg', 371, '2024-10-08 15:22:29', '2024-10-08 15:22:29'),
(873, 'public/uploads/product/1728556258-a.webp', 373, '2024-10-10 23:30:58', '2024-10-10 23:30:58'),
(874, 'public/uploads/product/1728557567-mi-led-desk-lamp.jpg', 374, '2024-10-10 23:52:47', '2024-10-10 23:52:47'),
(875, 'public/uploads/product/1728557726-0618561_baseus-dgrad-0g-comfort-reading-mini-clip-lamp-dark-gray-dgrad-0g.jpeg', 375, '2024-10-10 23:55:26', '2024-10-10 23:55:26'),
(876, 'public/uploads/product/1728557875-beebest-flash-light-300x287.webp', 376, '2024-10-10 23:57:55', '2024-10-10 23:57:55'),
(877, 'public/uploads/product/1728557988-nextool-2000s.webp', 377, '2024-10-10 23:59:48', '2024-10-10 23:59:48');
INSERT INTO `productimages` (`id`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(878, 'public/uploads/product/1728559690-eq16-01-500x500-1.webp', 378, '2024-10-11 00:28:10', '2024-10-11 00:28:10'),
(879, 'public/uploads/product/1728559810-oneplus-bullets-wireless-z2-anc-01-500x500-1.webp', 379, '2024-10-11 00:30:10', '2024-10-11 00:30:10'),
(880, 'public/uploads/product/1728559881-a4tech-headphone-hs-30.webp', 380, '2024-10-11 00:31:21', '2024-10-11 00:31:21'),
(881, 'public/uploads/product/1728560013-2-3.webp', 381, '2024-10-11 00:33:33', '2024-10-11 00:33:33'),
(882, 'public/uploads/product/1728560128-mcdodo-lightning-to-3.5mm-dongle-ca-501.webp', 382, '2024-10-11 00:35:28', '2024-10-11 00:35:28'),
(883, 'public/uploads/product/1728560211-ew51-01-500x500-1.webp', 383, '2024-10-11 00:36:51', '2024-10-11 00:36:51'),
(884, 'public/uploads/product/1728560469-wm107-01-500x500-1.webp', 384, '2024-10-11 00:41:09', '2024-10-11 00:41:09'),
(885, 'public/uploads/product/1728560554-2850-70721.webp', 385, '2024-10-11 00:42:34', '2024-10-11 00:42:34'),
(886, 'public/uploads/product/1728560604-64gb.webp', 386, '2024-10-11 00:43:24', '2024-10-11 00:43:24'),
(887, 'public/uploads/product/1728560684-b01055502833-4.webp', 387, '2024-10-11 00:44:44', '2024-10-11 00:44:44'),
(888, 'public/uploads/product/1728560758-a4tech-krs-85-600x600-1.webp', 388, '2024-10-11 00:45:58', '2024-10-11 00:45:58'),
(889, 'public/uploads/product/1728560814-wm107-01-500x500-1.webp', 389, '2024-10-11 00:46:54', '2024-10-11 00:46:54'),
(892, 'public/uploads/product/1744383195-whatsapp-image-2025-02-02-at-9.15.51-pm.jpeg', 392, '2025-04-11 14:53:15', '2025-04-11 14:53:15'),
(893, 'public/uploads/product/1744383481-whatsapp-image-2025-02-05-at-11.10.04-pm-(1).jpeg', 392, '2025-04-11 14:58:01', '2025-04-11 14:58:01'),
(894, 'public/uploads/product/1744383481-whatsapp-image-2025-02-07-at-8.48.54-pm.jpeg', 392, '2025-04-11 14:58:01', '2025-04-11 14:58:01'),
(895, 'public/uploads/product/1745021522-whatsapp-image-2025-02-02-at-9.15.51-pm-(1).jpeg', 391, '2025-04-19 00:12:02', '2025-04-19 00:12:02'),
(896, 'public/uploads/product/1747227189-c33e10c8-3674-4528-a05f-848368061a6e.jpg', 372, '2025-05-14 12:53:09', '2025-05-14 12:53:09'),
(897, 'public/uploads/product/1747228008-whatsapp-image-2025-05-14-at-7.05.43-pm.jpeg', 390, '2025-05-14 13:06:48', '2025-05-14 13:06:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `childcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_code` varchar(155) DEFAULT NULL,
  `purchase_price` int(11) DEFAULT 0,
  `old_price` int(11) DEFAULT NULL,
  `new_price` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `pro_unit` varchar(191) DEFAULT NULL,
  `pro_video` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `topsale` tinyint(4) DEFAULT NULL,
  `feature_product` tinyint(4) DEFAULT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(372, 'Nextool Outdoor Straight Flashlight Strong Light', 'nextool-outdoor-straight-flashlight-strong-light-393', 15, 28, 0, NULL, 'P0001', 100, 500, 400, 10000, NULL, '3CuJqjWDexo', '<p>This flashlight offers multiple light modes, including High, Medium, Low, Strobe, and SOS, giving you the flexibility to adjust the brightness according to your needs. The adjustable focus feature allows you to switch between a wide floodlight and a focused spotlight, making it suitable for various tasks and environments. The compact size and anti-slip grip ensure that the flashlight is easy to carry and handle, even in challenging conditions.<br></p>', NULL, 1, 0, NULL, 1, '2024-10-10 23:29:23', '2025-05-14 12:53:09'),
(373, 'Smiling Shark TD-1007 Rechargeable Mini Headlight', 'smiling-shark-td-1007-rechargeable-mini-headlight-389', 15, 28, 0, 2, 'P0373', 100, 500, 430, 10000, NULL, '3CuJqjWDexo', '<p>The Smiling Shark TD-1007 Rechargeable Mini Headlight is a compact and powerful headlamp designed for outdoor enthusiasts. With a 1200mAh rechargeable battery and wave sensor technology, it offers hands-free operation and convenience. The LED light provides bright illumination with multiple light modes, including high, low, strobe, and sensor mode. The adjustable headband ensures a comfortable fit, while the lightweight and water-resistant design (IPX4) makes it ideal for camping, hiking, and running. USB charging allows for quick and easy recharging, and the long battery life ensures you have reliable light whenever you need it.<br></p>', NULL, 1, 0, NULL, 1, '2024-10-10 23:30:58', '2024-12-21 16:09:50'),
(374, 'Xiaomi Mijia Lamp Lite Adjustable Desktop LED Table Lamp', 'xiaomi-mijia-lamp-lite-adjustable-desktop-led-table-lamp-389', 15, 28, 0, 2, 'P0374', 100, 500, 350, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Baseus DGRAD-0G Lamp Dark</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Works great as a book clip light, bedside lamp, reading and note taking light, or desk light</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The flexible silicone arm can be adjusted in any direction, giving you 360 degree no dead angle lighting</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Three adjustable brightness levels for different uses</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Large light transmission area, uniform brightness, comfortable and natural lighting</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Built-in rechargeable battery with long battery life</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Small size and lightweight, more convenient to carry</li></ul><h4 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 18px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specification:<br></span>Baseus DGRAD-0G Lamp Dark</h4><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Brand: Baseus</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Model: DGRAD-0G</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: ABS + PC</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Input: 5V</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Power: 3W</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Battery capacity: 350mAh</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Charging time: 2 hours</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Color temperature: 4000K</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Operating temperature: -10? ~ +40?</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Size: 290 x 43.8 x 30mm</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weight: 62g</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Package included:</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 x BASEUS Comfort Reading Mini Clip Lamp</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">1 x USB Cable</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Other items not included</li></ul>', NULL, 1, 0, NULL, 1, '2024-10-10 23:52:47', '2024-12-21 16:09:50'),
(375, 'Baseus DGRAD-0G Comfort Reading Mini Clip Lamp Dark Gray', 'baseus-dgrad-0g-comfort-reading-mini-clip-lamp-dark-gray-389', 15, 28, 0, 2, 'P0375', 100, 900, 890, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">BEEBEST Gravity Sensor Induction Portable Multifunctional Flashlight</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">This is a modern model of a portable functional flashlight, the compactness of which allows you to take it with you literally anywhere. The device is made in a stylish design, has light weight and high performance. The peculiarity of this flashlight is that it can shine, both in vertical and horizontal position. The device runs on 3 AAA batteries for 3 hours. When it comes to night lighting, the product lasts 2 hours. The body is made of aluminum alloy, resistant to negative impact factors.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">1. Body material: aluminum alloy Halo material: plastic<br>2. Life time: 3H / 2H (main light / side light)<br>3. Maximum range: 140m<br>4. Typical luminous flux: 160lm / 250lm (main light / side light)<br>5. Checklist: flashlight x1, AAA battery x3, instruction manual x1</p>', NULL, 1, 0, NULL, 1, '2024-10-10 23:55:26', '2024-12-21 16:09:50'),
(376, 'BEEBEST Gravity Sensor Induction Portable Multifunctional Flashlight', 'beebest-gravity-sensor-induction-portable-multifunctional-flashlight-389', 15, 28, 0, 4, 'P0376', 100, 2999, 699, 10000, NULL, '3CuJqjWDexo', '<p>The Smiling Shark TD-1007 Rechargeable Mini Headlight is a compact and powerful headlamp designed for outdoor enthusiasts. With a 1200mAh rechargeable battery and wave sensor technology, it offers hands-free operation and convenience. The LED light provides bright illumination with multiple light modes, including high, low, strobe, and sensor mode. The adjustable headband ensures a comfortable fit, while the lightweight and water-resistant design (IPX4) makes it ideal for camping, hiking, and running. USB charging allows for quick and easy recharging, and the long battery life ensures you have reliable light whenever you need it.<br></p>', NULL, 1, 0, NULL, 1, '2024-10-10 23:57:55', '2024-12-21 16:09:50'),
(377, 'Nextool Xiaomi Mijia Rechargeable Flashlight 2000lm 380m 5 Modes', 'nextool-xiaomi-mijia-rechargeable-flashlight-2000lm-380m-5-modes-389', 15, 28, 0, 2, 'P0377', 100, 500, 399, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Nextool Xiaomi Mijia Rechargeable Flashlight 2000lm 380m 5 Modes IPX7 Waterproof LED light Type-C Seaching Torch for Camping Mi</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Specifications:</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Brand: Nextool (Savi Xiaomi Youpin)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Light Emitting Diode Rays: XHP50</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Exit: 2000lm</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Temperature color: 6500 K Cold White</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Distance: 380 m</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Scheme: Super/High/Medium/Low/SOS</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Lumen: 2000/560/200/25/-/lumen</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Working hours:3 /5 /15 /140 /-/c</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The range of: 380 /200 /110 /40 /-/m</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Impact Height: 1 M</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Watertight: IPX7</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The size of the: 164x34x59mm</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">weight 265 years: (battery excluded)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Material: 6061-T6 Aerospace Aluminum</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Battery: 1×26650 5000 mm /c, Battery (Included)</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Load mode: Usb charger</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Nickel metal charging current: 5 V /2A</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Charging time: 3 -5 c</li></ul><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Feature:&nbsp;</span></p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2000 lumen brightness illumination, 380 distance irradiation, 5000 mast 26650 rechargeable battery, 140 hours from battery.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Five lighting modes, super/high/medium/low/SOS, meet different lighting needs.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Multifunctional side pressure switch, single key control, simple and convenient.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Blue indicator for definite control of power supply status at any time.</li><li style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">IPX7 waterproof, 1 meter and 1 meter underwater, anti-falling, harmful environment can also be used safely.</li><li style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">You can use several options.</li></ul>', NULL, 1, 0, NULL, 1, '2024-10-10 23:59:48', '2024-12-21 16:09:50'),
(378, 'Hoco EQ 16 Bluetooth TWS Bluetooth Earbuds', 'hoco-eq-16-bluetooth-tws-bluetooth-earbuds-389', 17, 0, NULL, 2, 'P0378', 100, 2999, 2500, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The ergonomic design provides a snug fit that stays in place even during intense workouts. Additionally, the earbuds are rated IPX4 for water resistance, making them ideal for outdoor activities and workouts without worrying about sweat or light rain.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Charging is made simple with the included Type-C charging port, allowing for quick and efficient power-ups. With universal compatibility, the Hoco EQ16 works effortlessly with both Android and iOS devices, making them a versatile choice for any smartphone user. Experience wireless freedom and high-quality audio with the Hoco EQ16 Bluetooth TWS Earbuds, a perfect companion for music lovers and those always on the go.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:28:10', '2024-12-21 16:09:50'),
(379, 'One Plus Bullet Z2 ANC Bluetooth Neckband', 'one-plus-bullet-z2-anc-bluetooth-neckband-389', 17, 0, NULL, 2, 'P0379', 100, 500, 380, 10000, NULL, '3CuJqjWDexo', '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The built-in microphone allows for clear hands-free calls, and the low-latency mode ensures an optimal experience for gaming and video playback. The in-line controls make it easy to adjust volume, skip tracks, and manage calls effortlessly. Experience superior sound quality and convenience with the OnePlus Bullet Z2 ANC Bluetooth Neckband – an essential accessory for anyone seeking premium audio on the go.</span><br></p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:30:10', '2024-12-21 16:09:50'),
(380, 'A4tech Headphone Hs-30 Desktop Headphone With Dual Port Converter', 'a4tech-headphone-hs-30-desktop-headphone-with-dual-port-converter-389', 17, 0, NULL, 3, 'P0380', 100, 500, 299, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Designed for comfort, the HS-30 comes with soft ear cushions that provide excellent noise isolation, allowing you to enjoy long listening sessions without discomfort. Its lightweight design ensures that you can wear these headphones for hours on end, whether you’re working at your desk or gaming with friends. The extended cable length of approximately&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2.2 meters</span>&nbsp;offers flexibility and mobility, making it easy to move around your space while staying connected.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">A4tech HS-30</span>&nbsp;is compatible with PCs, laptops, and other devices featuring 3.5mm audio ports, making it a versatile choice for users across different platforms. Additionally, the included dual port converter simplifies connectivity, allowing you to use the headphones with various devices without hassle.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">In summary, the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">A4tech Headphone HS-30</span>&nbsp;combines comfort, quality sound, and practical features, making it the perfect accessory for anyone looking to enhance their audio experience. Whether you’re gaming, streaming, or working from home, the HS-30 provides reliable performance and exceptional value.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:31:21', '2024-12-21 16:09:50'),
(381, 'Hoco EQ8 In-Ear hook 5.3V True Wireless Bluetooth Earbuds', 'hoco-eq8-in-ear-hook-5.3v-true-wireless-bluetooth-earbuds-389', 17, 0, NULL, 2, 'P0381', 100, 900, 890, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Powered by a 5.3V energy supply, the Hoco EQ8 earbuds boast an impressive battery life of up to 6 hours on a single charge, with an additional 24 hours of playback time provided by the compact charging case. This makes them an ideal companion for long journeys or busy days. The earbuds also feature quick touch controls, allowing you to manage calls, adjust volume, and skip tracks effortlessly, all without reaching for your device.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">With an IPX5 water resistance rating, these earbuds can withstand sweat and light splashes, making them perfect for workouts or outdoor activities. The built-in microphone is equipped with noise reduction technology, ensuring clear voice calls even in noisy environments.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The Hoco EQ8 is compatible with all Bluetooth-enabled devices, making them versatile for use with smartphones, tablets, and laptops. Additionally, the sleek and lightweight design ensures maximum comfort for extended wear.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">In summary, the Hoco EQ8 In-Ear Hook 5.3V True Wireless Bluetooth Earbuds offer a combination of style, performance, and practicality. Whether you’re listening to music, taking calls, or enjoying podcasts, these earbuds provide an immersive audio experience, making them a must-have accessory for any music lover or busy professional in Bangladesh.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:33:33', '2024-12-21 16:09:50'),
(382, 'MCDODO Lightning to 3.5MM Audio Converter With Calling Ca501', 'mcdodo-lightning-to-3.5mm-audio-converter-with-calling-ca501-389', 17, 0, NULL, 2, 'P0382', 100, 890, 720, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Designed with both performance and durability in mind, the MCDODO CA501 delivers crystal-clear audio without compromising sound quality. It supports up to 24-bit / 48 kHz audio output, ensuring rich, immersive sound for both music and voice calls. The built-in noise reduction technology ensures clear call quality, reducing background interference for smooth conversations.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The CA501 is not just functional but also highly portable. Its lightweight, compact design makes it easy to carry in your pocket or bag, perfect for travel or daily use. Crafted from high-quality materials like aluminum alloy and TPE, this adapter is built to last, resisting wear and tear from regular use.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Compatible with most Apple devices that feature a Lightning port, including iPhones and iPads, this adapter is a plug-and-play solution with no need for extra drivers or software. You can easily control music playback, adjust the volume, or answer calls directly from your connected headset.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Whether you’re listening to music, taking calls, or enjoying podcasts, the MCDODO Lightning to 3.5mm Audio Converter with Calling (Ca501) provides a seamless and reliable audio experience, making it an essential accessory for any iPhone user looking to enhance their audio setup.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:35:28', '2024-12-21 16:09:50');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(383, 'Hoco EW51 ANC True Wireless Bluetooth Earbuds', 'hoco-ew51-anc-true-wireless-bluetooth-earbuds-389', 17, 0, NULL, 2, 'P0383', 200, 300, 500, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">With Bluetooth 5.2 technology, these earbuds ensure stable and seamless connectivity, minimizing lag for smooth audio streaming. The ergonomic design ensures a secure fit for all-day comfort, and the IPX4 water resistance makes them perfect for workouts, offering protection against sweat and light splashes. Touch controls allow easy management of calls, music playback, and ANC activation, making these earbuds highly intuitive.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The Hoco EW51 offers up to 30 hours of total playback time with the charging case, providing long-lasting performance without frequent recharging. Fast charging ensures you get an hour of playback with just a 10-minute charge. For gamers, the low-latency mode offers an enhanced gaming experience with minimal delay. The dual master earbuds feature allows you to use either earbud independently, adding to the flexibility.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">The earbuds also come with in-ear detection, automatically pausing your music when you remove the earbuds, and resuming when you put them back in. With a built-in microphone and noise reduction for clear calls, the Hoco EW51 is also great for voice calls, offering crisp sound during conversations.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Compact, lightweight, and packed with features like voice assistant support, these earbuds are a great choice for users in Bangladesh seeking high-quality wireless earbuds with advanced features like ANC and seamless connectivity.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:36:51', '2024-12-21 16:09:50'),
(384, 'WiWU Wimice Wireless Mouse WM107 Dual-mode', 'wiwu-wimice-wireless-mouse-wm107-dual-mode-389', 22, 0, NULL, 2, 'P0384', 100, 500, 390, 10000, NULL, '3CuJqjWDexo', '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The WiWU Wimice Wireless Mouse offers dual-mode connectivity with Bluetooth 4.0 and 2.4GHz wireless, silent click buttons, adjustable DPI settings, and an ergonomic design. Ideal for Windows, macOS, and Android devices, it features a rechargeable battery and comes with a USB receiver and charging cable. Compact and portable, it’s perfect for both office and home use in Bangladesh.</span><br></p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:41:09', '2024-12-21 16:09:50'),
(385, 'WiWu Waltz Rotating Keyboard Backlit Keys', 'wiwu-waltz-rotating-keyboard-backlit-keys-389', 22, 0, NULL, 2, 'P0385', 10000, 20000, 19000, 10000, NULL, '3CuJqjWDexo', '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The WiWU Waltz Rotating Keyboard Case combines versatility and protection, featuring a 360-degree rotating keyboard, backlit keys, and multi-angle viewing. With a detachable design and auto sleep/wake function, it offers seamless usability. This sleek and durable case includes an Apple Pencil holder and precise cutouts, making it an ideal choice for iPad users in Bangladesh.</span><br></p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:42:34', '2024-12-21 16:09:50'),
(386, 'TWINMOS Pendrive 64GB 10x Speed USB 3.2 FX3CGBM- -5 Years Replacement Warranty', 'twinmos-pendrive-64gb-10x-speed-usb-3.2-fx3cgbm---5-years-replacement-warranty-389', 22, 0, NULL, 3, 'P0386', 100, 500, 350, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Equipped with the latest&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">USB 3.2 technology</span>, the TWINMOS pendrive guarantees outstanding performance, enhancing productivity by reducing transfer times significantly. It’s also backward compatible with USB 2.0 ports, ensuring compatibility with older devices. Its&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">plug-and-play</span>&nbsp;functionality means you can start using it immediately without the need for additional software or installation.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Designed for portability, the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">TWINMOS 64GB pendrive</span>&nbsp;features a sleek, compact design that easily fits in your pocket or bag. The&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">capless design</span>&nbsp;with a sliding mechanism protects the USB connector from damage, ensuring longevity and reliability. Its&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">shockproof</span>&nbsp;and impact-resistant build further enhances durability, making it suitable for users on the go.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">This pendrive is compatible with a wide range of operating systems, including&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Windows, Mac OS, Linux, and Chrome OS</span>, providing versatility for various devices. Additionally, it comes with a&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">5-year replacement warranty</span>, giving you peace of mind and assurance of its quality.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-family: Poppins, sans-serif; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 15px; color: rgb(42, 42, 42);\">Whether you need to back up critical data, transfer files between devices, or store multimedia content, the&nbsp;<span style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: 600; font-stretch: inherit; line-height: inherit; font-family: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">TWINMOS 64GB USB 3.2 Pendrive</span>&nbsp;is the perfect choice for fast, secure, and efficient data management. Invest in this reliable storage solution and experience the convenience and speed you deserve.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:43:24', '2024-12-21 16:09:50'),
(387, 'Baseus Mouse F01A Wireless Mouse Frosted Gray B01055502833-00', 'baseus-mouse-f01a-wireless-mouse-frosted-gray-b01055502833-00-389', 22, 0, NULL, NULL, 'P0387', 100, 500, 430, 10000, NULL, '3CuJqjWDexo', '<p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Baseus Mouse F01A Wireless Mouse Frosted Gray B01055502833-00</p><ul style=\"margin-right: 0px; margin-bottom: var(--list-mb); margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: var(--li-pl); border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; list-style-position: initial; list-style-image: initial; --list-mb: 20px; --li-mb: 10px; --li-pl: 17px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Durable ABS material.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Its stylish Frosted Gray color adds a touch of sophistication to your setup.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Weighs approximately 90g.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">With a transfer distance of 10m, enjoy seamless connectivity without being tethered to your device.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">The mouse operates on a 2.4G connection mode for reliable performance.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Choose from three sensitivity levels (800/1200/1600DPI) to suit your preference.</li><li aria-level=\"1\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: var(--li-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Experience smooth and responsive cursor movements with a response frequency of 250Hz.</li><li aria-level=\"1\" style=\"margin: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Compatible with various operating systems including Windows, HarmonyOS, Apple OS, Linux, Vista, and more.</li></ul><h3 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Baseus F01A 2.4G 1600DPI Wireless Mouse (Gray)</h3><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Looking for a lightweight, compact mouse to make your daily work easier? The Baseus F01A wireless mouse is an excellent choice! It offers a 3-level DPI adjustment and easily connects to compatible devices using a 2.4GHz connection. It boasts wide compatibility, working seamlessly with systems like Windows, iOS, and Linux. It’s exceptionally user-friendly, and a special sleep mode will help you conserve mouse battery life.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><img fetchpriority=\"high\" decoding=\"async\" class=\"aligncenter wp-image-43578 size-full\" src=\"https://www.baseus.com.bd/wp-content/uploads/2024/07/B01055502833-1.jpg\" alt=\"\" width=\"800\" height=\"800\" style=\"height: auto; max-width: 100%; margin: 0px auto 20px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; clear: both; display: block; border-radius: 0px; box-shadow: none;\"></p><h3 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">3-Level DPI Adjustment</h3><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Enjoy reliable mouse performance! The Baseus F01A provides exceptionally smooth operation and allows you to adjust the DPI at three levels – 800 / 1200 / 1600. This means you can easily tailor its performance to your needs. The mouse is perfect not only for work but also for web browsing, drawing, and gaming.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><img decoding=\"async\" class=\"aligncenter wp-image-43579 size-full\" src=\"https://www.baseus.com.bd/wp-content/uploads/2024/07/B01055502833-9.jpg\" alt=\"\" width=\"800\" height=\"800\" style=\"height: auto; max-width: 100%; margin: 0px auto 20px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; clear: both; display: block; border-radius: 0px; box-shadow: none;\"></p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">&nbsp;</p><h3 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Wireless Freedom</h3><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Forget about tangled cables! The Baseus mouse operates wirelessly, providing you with nearly unlimited freedom. You can connect it to your chosen device on the 2.4GHz band. This option ensures fast and stable signal transmission with no delays or interference.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><img decoding=\"async\" class=\"wp-image-43581 size-full aligncenter\" src=\"https://www.baseus.com.bd/wp-content/uploads/2024/07/B01055502833-8.jpg\" alt=\"\" width=\"800\" height=\"800\" style=\"height: auto; max-width: 100%; margin: 0px auto 20px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; clear: both; display: block; border-radius: 0px; box-shadow: none;\"></p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">&nbsp;</p><h3 style=\"margin-top: 0px; margin-bottom: var(--wd-tags-mb); padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 22px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Ergonomic Design</h3><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">The compact and incredibly lightweight design of the mouse ensures your ideal comfort during use. It perfectly conforms to the shape of your hand, making navigation even easier and more comfortable! The Baseus F01A is equipped with special buttons that operate quietly, so you can use the mouse without any disruptions, even in a library.</p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><img loading=\"lazy\" decoding=\"async\" class=\"aligncenter wp-image-43580 size-full\" src=\"https://www.baseus.com.bd/wp-content/uploads/2024/07/B01055502833-3.jpg\" alt=\"\" width=\"800\" height=\"800\" style=\"height: auto; max-width: 100%; margin: 0px auto 20px; padding: 0px; border: none; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; clear: both; display: block; border-radius: 0px; box-shadow: none;\"></p><p style=\"margin-right: 0px; margin-bottom: var(--wd-tags-mb); margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\">Specifications :</p><table style=\"margin: 0px 0px 35px; padding: 0px; border: 0px; vertical-align: baseline; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternates: inherit; font-variant-position: inherit; font-stretch: inherit; line-height: 1.4; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: 13px; width: 754.707px; border-spacing: 0px; font-family: Poppins !important; color: rgb(48, 48, 48) !important;\"><tbody style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Brand</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Baseus</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Model</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">B01055502833-00</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Color</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Gray</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">DPI</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">800 / 1200 / 1600</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Refresh Rate</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">250 Hz</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Compatibility</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Windows / HarmonyOS / Apple OS / Linux / Vista</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Connection</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">2.4G</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Range</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">20 meters (2.4G)</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Automatic Sleep</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">After 30 minutes</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Weight</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">Approximately 90 g</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Material</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">ABS</td></tr><tr style=\"margin: 0px; padding: 0px; border-style: initial; border-color: initial; border-image: initial; vertical-align: baseline; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\"><th style=\"margin: 0px; padding: 15px 10px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: var(--wd-title-font-style); font-variant: inherit; font-weight: var(--wd-title-font-weight); font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit; font-size: inherit; text-align: left;\">Dimensions</th><td style=\"margin: 0px; padding: 15px 12px; border-top: 0px; border-right: 0px; border-bottom: 1px solid var(--brdcolor-gray-300); border-left: 0px; vertical-align: middle; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height: inherit; font-optical-sizing: inherit; font-size-adjust: inherit; font-kerning: inherit; font-feature-settings: inherit; font-variation-settings: inherit;\">100.35 x 58.1 x 38.5 mm</td></tr></tbody></table>', NULL, 1, 0, NULL, 1, '2024-10-11 00:44:44', '2024-12-21 16:09:50'),
(388, 'A4tech KRS-85/ Krs-83/krs-82 FN-Hotkeys Wired Multimedia Keyboard With Bangla Layout', 'a4tech-krs-85-krs-83-krs-82-fn-hotkeys-wired-multimedia-keyboard-with-bangla-layout-389', 22, 0, NULL, 2, 'P0388', 100, 900, 400, 10000, NULL, '3CuJqjWDexo', '<p>The A4tech KRS-85/KRS-83/KRS-82 keyboard features a durable, spill-resistant design, protecting it from accidental spills and making it a reliable choice for everyday use. Its adjustable tilt legs provide an ergonomic typing angle, reducing wrist strain during extended typing sessions. The high-quality printing on the keycaps ensures that the characters remain visible for an extended period, adding to the overall durability of the keyboard.</p><p><br></p><p>With a simple plug-and-play USB connection, the A4tech multimedia keyboard is compatible with a wide range of Windows operating systems, from Windows XP to Windows 10 and later. There is no need for any additional driver installation, making the setup process quick and easy. The lightweight design and long cable length make it convenient to set up in any workspace.</p><p><br></p><p>Whether you are working, gaming, or browsing, the A4tech KRS-85/KRS-83/KRS-82 FN-Hotkeys Wired Multimedia Keyboard with Bangla Layout offers a comfortable and efficient typing solution, making it an ideal choice for users in Bangladesh.</p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:45:58', '2024-12-21 16:09:50');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(389, 'Xiaomi Lite 2 Wireless Mouse Optical Sensor Adjustable DPI', 'xiaomi-lite-2-wireless-mouse-optical-sensor-adjustable-dpi-389', 22, 0, NULL, 3, 'P0389', 100, 500, 1, 10000, NULL, 'dvvHHQfT6us', '<p><span style=\"color: rgb(42, 42, 42); font-family: Poppins, sans-serif; font-size: 15px;\">The Xiaomi Lite 2 Wireless Mouse combines ergonomic design with advanced functionality for a seamless computing experience. Its compact and lightweight build fits comfortably in your hand, ideal for prolonged use whether you’re at work or on the go. With wireless Bluetooth connectivity, you can say goodbye to tangled cables and enjoy effortless navigation across various devices. The high-precision optical sensor ensures smooth and responsive tracking on any surface, while adjustable DPI settings allow you to customize cursor speed to suit your preferences. Featuring quiet-click buttons, this mouse delivers a satisfying clicking experience without disturbing those around you. Affordable yet packed with premium features, the Xiaomi Lite 2 Wireless Mouse is the perfect companion for enhancing productivity and gaming performance.</span><br></p>', NULL, 1, 0, NULL, 1, '2024-10-11 00:46:54', '2024-12-21 16:09:50'),
(390, 'Test', 'test-393', 15, 31, 0, NULL, 'P0390', 1000, 1200, 900, 100, NULL, NULL, '<p>Test description,&nbsp;<span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Test description,&nbsp;</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Test description,&nbsp;</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Test description,&nbsp;</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Test description,&nbsp;</span><span style=\"background-color: var(--ct-card-bg); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Test description,&nbsp;</span></p>', NULL, 1, 0, NULL, 1, '2024-10-22 12:30:36', '2025-05-14 13:06:48');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(391, 'Pendrive 64GB 10x Speed USB 3.2 FX3CGBM', 'pendrive-64gb-10x-speed-usb-3.2-fx3cgbm-393', 15, NULL, NULL, NULL, 'P0391', 570, 790, 1, 7, NULL, NULL, '<p>Pendrive 64GB 10x Speed USB 3.2 FX3CGBM</p><ol><li>Gdghhkj</li><li>Hffhhh</li></ol><p><br></p><ul><li>Vfhjjh</li><li>Ffghh</li><li>Ffhhh</li></ul><p><img src=\"data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/4gIoSUNDX1BST0ZJTEUAAQEAAAIYAAAAAAIQAABtbnRyUkdCIFhZWiAAAAAAAAAAAAAAAABhY3NwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAQAA9tYAAQAAAADTLQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAlkZXNjAAAA8AAAAHRyWFlaAAABZAAAABRnWFlaAAABeAAAABRiWFlaAAABjAAAABRyVFJDAAABoAAAAChnVFJDAAABoAAAAChiVFJDAAABoAAAACh3dHB0AAAByAAAABRjcHJ0AAAB3AAAADxtbHVjAAAAAAAAAAEAAAAMZW5VUwAAAFgAAAAcAHMAUgBHAEIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFhZWiAAAAAAAABvogAAOPUAAAOQWFlaIAAAAAAAAGKZAAC3hQAAGNpYWVogAAAAAAAAJKAAAA+EAAC2z3BhcmEAAAAAAAQAAAACZmYAAPKnAAANWQAAE9AAAApbAAAAAAAAAABYWVogAAAAAAAA9tYAAQAAAADTLW1sdWMAAAAAAAAAAQAAAAxlblVTAAAAIAAAABwARwBvAG8AZwBsAGUAIABJAG4AYwAuACAAMgAwADEANv/bAEMAAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/bAEMBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAQEBAf/AABEIAtYC0AMBIgACEQEDEQH/xAAfAAAABQUBAQAAAAAAAAAAAAAABgcICQIDBAUKAQv/xABcEAABAwMDAwIEAgUGCggCAhMBAgMEBQYRBxIhAAgxE0EJFCJRMmEKFSNxgRZCUpGhsRckM2KCosHR4vBDY3KywtLh8RglNFOSJpMZNoOjJ7XTNThERVVmdXbj/8QAHgEAAAYDAQEAAAAAAAAAAAAAAAMEBQYHAQIICQr/xABNEQEAAgEDAwIEAwUGAwUFBAsBAhEhAwQSAAUxIkEGE1FhBzJxFEKBkaEII1KxwfAVYtEWM3Ki4SRTgrLxNDVDY3PS4hc2khiTs8LU/9oADAMBAAIRAxEAPwCPiT8Xf4vi9uPhwtIIPG/QbuiRyQQClTlcYCTyQFA5GDkgY6Ll0fEi+OLdC6cLB7MZGlfpJfVN+T7bLurq6qZe0u+q5qZJqTTP1jclcYMTSlbjDkp2M4Y6utFhorCgl+QzjgpZcLYUFBQO7zuzz9JGAQFcqwU3nQGwgKek45xtdxnHnceCrJVnJJJPk8ddWP4abvUX9o+Ju4TcVxQLCN+DmUYFT97NZ64UPx52OgwNp8FdrjX5vnMtVTGP3TObc1RnB1yQ07vD/SG6oEiDoDMcGON3a5p5GTgcHaZMxj6U8DdgJ5H3x0bYXcN+kiVBKVRe3sLSoEjf2/6ItHAznKHbhQ4kgpIIKQRxnGRnqvaT6oWgLWUAEftMKWor3nJWTu+k4yCo7gMcJO0YhwSSQCSSScDyeT7dGR/DHJfxF3UpFDUXGKLk34PP1LT90B/aB4rw+C+wIkb/ALmWm8q84lPBQg2r/h9+XFGuX6ScsgDt6p7KiNyS/ohoPFIwfKTJuxoZBwR59jjHRQvST+krajyIsh6DXNOEwEO4Z0/OhWnTsr1/SSs1ZqkzasuVkISrbKUlIPqJSpCXXA51kMj1QrcSnbtAKAlBx9XB2gAgewI45xjJzbeaLYQCsqByAMYCQMcDk/f8vHW0fww2zJjr977nrGA5aqsaPJni2fX8uUzXRT/aC3WnP/2X4R7BoI4TQlciotSCVY41hFoX3OuSKnaN/pJtTUQNWL8ggJQo/rDVjSCMnJzxsVTnshBCUkDcBkDBAyTrH7cf0lVaQY/cgIJIJ9KZrto9HWk7iFbkGiISMhIwCck8jOCB1YRd4ClEqwcbTu543A45yPt7Z6ywpQGApQH2BIHRX/7qe2Ere69zU8nzSR4DzLLQeKqvT4z1q/2je/Rsj8PdhPHjQkZovxLPistV7HjrlVb7a/0lheEyO6mnxwoZJOuOlEhIGSBkxKC95xkgBSgkghJJ29Ey7vho/Hg1OqEW4tRe72KxUURGojT1J7mK9bEduKkqKG1UrTuBRKYtfBUX3YbslaiAt87h11tn6jlX1EEEE8kEeDz7j2Pt0OlkPws7JrsYa+77pryrHLcHqQtvkgBSgV5ffyk1/wC0X8Up/wCz9n7DtqR5R20+RgihUryXbecYDByLU74PXxhpg/xvvml0/kD/APeg12mgpJxkKhlxIUOeFKQODhXHRlY+Cx8WJ3JX8R1tpIzkJ7ge6GUvOD9IXCosmIcH6StuW4klJGASQjrE6y2Hgnd6i1c7dudyvvnHnHt1vpfhL8MajIjr7+Kcai60eUms0e4BbRj05wqXD+0R8acgjo9r29lM46LxKByzlYKAFuQfPXKO18Ff4pDSQud8S6dGjJyXnmtau594tpB8htxuGFEk4SNyATjKgCSCNdH6N/3I6jVqTd2pPerad43NUwgzbluqlal3fcM4pBUgy6tcFSk1SSlJUoIVJkLKUqyPxDrrukLQtSVIVn6cEYIxgkg8gZzk/ux+fVkqJCUk8JztGBxk5P5nJ+/R8Pwi+HoTZRd/LjVXrhGVkRAZRbyqtR9KBblPr/2ivj+TwjrdvCOCtCOpAKiiXF5eKqxLqwjx65CoX6MNdAJFZ7u7MY54VA0kuWcpQweSZF00xIIykAJ38A5IPRlY/RhaeAkP95IeWQdyIWiM5weSePm9S2OAkDJwTkk8AYV1oKUpZyo5OMeAOP3AAe/VA3c7ik/bCSn+vKlZ/s601Pwx+GORB0ZTjCrfmMmd8VCY1SFUjRf73RH/APUF+IMi5bjZxkmSO3InkxRWCvs/fx1yjxv0Ye1FKbbm921Yejq2lQgaKxYcnIykqTKdv2cEpJCsJU04kkYJUtJINTH6MPosyUJn91upE0ICk+nF06t+CUZOR9T9YdJHO44CiSCeCr6uo/oePHRp+GPwURz26UpYwsgwYLNTJfllGT7kRz1q/wBoD8Q+PGO+0Yeyx04+LtoYqXQVyxWK65lqf+jMdt8fHz/cLrBMSCQpUGj2FDc5SopKRPamZ5wFYUB/2QU4MDX6NT2epKUv649xS3B+PY3pghBV5OFfqzalPtgYI8Zzz10gubFlaNqSoJ2lSkg43DIxznjJyOOfHWmCQlW5I2k58ZA5z7ZwfJxkcdJpfh38E6epKL2qTKLpiR1WiLElYyJErP3aPpZ56JPxy/ETVte6RyUyIkZlhUhIt+GxYmbrrn0h/o13ZE2ULl6sdx0sjcTioacR9xwoAbo9IBAJwCdyiE5AwrnrfQf0dTsIiKxLrmuVYCSsD5m+qPGKwVfTkQbcbCFccBC3E4I+pRHU+gJd2NhCM8jJHk5Jyc8fSOBwTge/AHkg+gEjOTtzkDBUSVYGMkAAD2/M8nA6y/AXwbFhDS7ewaTxGahQKykec2vuRquLR+0/F78Rt3Nj/wAe3cIZ/LqVGxikeOYt4WqIl3iVMH1L/R6vhxsJKqhQdZp4Sed+qsiMk5CgAVRKCSjJKTuKCCU4SkgKHRhPwEfhfx1NpXplqy/g7VE6x3ekHOcKU41bKk8ZGdpGQnwfqPUker3cXZ2jyIFNqUeo3deFyR3HrU0vtJC5l7Xgpr0ko/VrHpJhxIKlymB+tJ86LEQXMncW9wR+haZdyWukoV3Xm/alpJp7JIFJ0R0rqkeJXHqKrPps3vqHT0qlM1ILSA/Ao70ttaSXFS2TtQUm4+D/AIW2zcdlyJVdQgVSCADG7PKqK0lvTnP8UPjuEIup3/ey8YNVGr/ekSJD9KM8UkeGTCLw+D18HjThpUu6LbqramlAIpkruDuatVdx3hSGW7YpEWDVlPOnYlKJSG07XCs4CVBXlA+G98JSoPx2LR7Itd9R/mEpUh6PUr8okI/RgBM+57lo8Z1JVuy4y+4dgC1DJBEv+nehWj2j0NmDpvYNv0R1vcH63MiCv3XIWAEByRc9d+fqrz6kZQ48p9RWEt7gdiNqruS5rqA25IUvAOXCSVkkg8AYSjxg7MZwMjxgzT+CPh9jf7DGN35rxQBX0KrBYKnIx01an4u/GEZJ/wAe3ylVGOtcY2inLjms8qW/y/u2xOUX4Z3w4mNzUn4WXqt7v2f691rmRashOVblSEI1Gk8njKUoO3aUpAJV0av/AL178K6pIS1Ufhvyrf27gTR9bqsiSonI+mXIumUGyMhSS2njduVu5SmSUtZBJUVEZwBhP8MnPnj93WqfZUsj1GsjJ2/ScHH87HOCc+/PTXuPgrsetMdtpR0uNUyjEVqNyqJdqfW0xZddEan4v/GUUP8AjO/kpXCOrIGIf4nT8jnxXn05tjwZ+Fl8KimhKKb2o3JaUhBSG0Vel0/V6KT9W1Sprl2sVR4N5ysoaTgnOUqSnG5kfDx+HPbaG6hF057X/wBkklcbUHTmrWPNJSRgP1G4FVOkuueoSPSalHaQWlHG7p+HpK4KBgnxuSVJOATwMjnGcYPI8g/Ti98u3LjSIkqLGlQ30gOszIUKoMrGDkKjVCLLikFPG9bKvOQCUJIU6Pwl2/bxE4EwKSNl20o0eU8H7tgK3qfif8Ub2v2jufcdSIIxdSRZhrmQ4BxL4nFfuYGwU7sp7SaLbqLpV2h6AyKGoNiPWLU050w1DpKkyCW2335lFoFXYiR1rWUOpm+nJZJUFxzwomekdtHZ/NjMyKT229sVVZWEnMXQ7SmUpo4KkfMJRp+4tG8AY9dTa18AZJ6Pzml1uqnqqUE1G05gQoNP2bPkWwXQUkLRVIVKXFpVWjHOVQp0JyG5uVlKCooBRua1dRJEmDWF1GFeVSpCpDcG5IC42neqcCCvapuILkobaqHddPZ9NCUUeu24lySEripqMduQ4rpVt9KGw1uMYbacI+Pm6fzC3ieI2Asf41VEVkumj8Qa/ednDUe676OslcIz8URJepi1J9wPYAsTozw+3zt5ppQ5TNANDaWpzhxqJo9pxHYASnIEdBtRtTBTuGVAkkZTyCcGyHptpXBQlMDSvTWIQkp/xWxbSiHBJVhCIlGjhAByQEp4wk5yMluETX2Za9VdpuobkqZAZwh6eIj0S8KSjaC5IrlufLQqZVoeVBcmq25NlLjJWTKiliM/JS5+1q7QbopMO4LYuGk3HRKh6hjVCjTBJZBRsV6ElJbbVFnNpcb9WKoLWyFJ3LXuz1J+277te64mrtth8yK3WjyS6Ej6gkQuJjkewqFsfcIdx0+Wo9033CQMCWoMUjRbGULbuy0/NmllGOzhUC36Q4tyl0Ki0guADFNpMGAPpBBAMBphRBBAKVqUD7e/W5bZbdwlQRkhSwUJ2gJQkqUSdyVHakFSuMAAlQAQT1XuQpA4Hk7iTkHGOCCSBtwfGPuRnJLUu9jVCdpD25X5dNBcX/K+rIp1h2YzHURM/lHfUtNBhzGEjJU3CD63XtiHHtymUtIysrQ+b90dPYz1oR4x0oupGUUjGIsV4n3oKVyjUbaadDuG/jqg68tQZAQkXNWSNyB8rZUR9lKVQLSub/8AEn3JXzrAWHP8FuhUudpdo1AmK+bjyrziugXxfSk7IxelmWZdKhykJfb+lbgnPuqcaSt3cV3DWf252hEuG4os2v3HcU9NCsKwqFhy4bzr5SlSY6myhwU+1YwUj+UVwSGnYdIEmnfNNkTmek5odYtzs97XtNKFMpTsy9KJSEU6Fb8SWifXL5vuchp68pcxtuO2ie3HmJgh2WUpZiokrWpKluhtqPC5WLvi37SLorxRf/dNrVITQrQodSe9Wh6fWyFo+dku8SBSrXpiJMBusIREclVV96C6VoDKnTSfxT8Vdq1du7OerwnqKqsY1KjBGiwFf8S5qnl10V8E/B/eNxsf2ucFZkUGL6TCrxyt1QlhWWJEbDtJvruJ1HgzLmZOrutVZVTkWLotb5ErTrR2jOJfEieiS8luFb8KEURBOuF1tdxz/RjiGy+YchKZV+3ntOp2lb0G+9QJsTUHWt1YkS7snx1PWzaRUnemj6YRnpCKhBixtyo0uvzIin6my4Yb3qFkPMKP2tdrrmkdvy2KNb9wXRe90p/WF6ahO0SXPuW8KpJlTJk1iOIrT7kCjQ1zEQ6VQ2H0Q6fT22I0dKMvlbzqdoRrVVUuto00rkAMBsevWFxKPGwtJI2yZ7jJJPpbVBDThRltLxQVoy0fDOt2btu5d33KZPjUoQZUxaV5Xy8+mWRPDZJKb/i3R7zqxe0ds0JRYxk6uojVJArjx9IH7xJS68DySWStbX0oEJtRCQVxG22nVDk/tFNIbzkgKJxnkDJBOcRl1TbwdKS4U7lKGTk7kkElWFHyrJJBz/HpRrgsKj2NHMnVPWbQ7SsoKkvxLv1SoDFUjqTgHNLhSJUpw5IIDTS8gjPv0za/+6/sy08mPQqp3paV1yotE+jRLChVi8apICFftNsWmsgpOApSEuuILgCtn3NiaXx38Pa8vl6WpIJCSFioJV4kyR8WeKEM4q0/C34onetLTiRvkMiR7EscgH2zRfsUdOcU+U4BSEk+NxPPnwPp+x/qPWOk70pWkZSvO0jBCsHH0lJKVc/Yn7eeo+l/ED0pqUtyNp/Zuu+qkJoZFQoujN00mK+OUjD1SabiFBwrAXKys7U7VZKui3M7w78vGvwbUolu6XaALkLW5Gl691Gvx6vJjuBkRX49tvJplKjPEh5K2QZxdLzSQplDavVkfb/iHt2pGf7LpeePJjKcrRTK80q14tUN35pi3vwt3XtMom61DVJDdRgA+nIxifleRfJjIfEUuUlxjlQypQQBnyAePck5AAH7/v497YaaVnD6ePunb/VuUM/w6Y61o3rlcjbdSuLvHvGmRJgUpNP0itmz7YoCmVrKkrp9fFMlVB5h5OFoWmWAla1pUle0E3f/AIUbSeUl64Nd+4qsyhuUV1PW6TFiOlXlT0KmMwC4VnaB6jyy2nATtVghS6s9xqSlKXGUuFcYhEEQw85GI+7fmhppgj2vRyOnxpovUQ+9XqK/wV+h095DCHM7Hc4xn9mR5zjyR9j1X8p/1n+p/wAXTNVdrGikzAfvXVhxZ2pHyOuV2FwkIPJQZ81f1EFRKSjGCkYTgdben9omnMXdKtzUPuItyQQMy6PrZc8lW4KIbWuHVUy4zu3BKB6TfHJyDnoThqRyzYxaq4RW0jX+ES3KXRnKgky2OgNEIeQr5/Jy/Ume1OQqwfr07P5T/rP9T/i6p9BG7Z66N/8AQwN3jP4d+fHPjxz46a+jSnWq3GJCLG7mLwqaUbFCHq1bdFuSO6kEemmTXWUs15QSAQVx47gSAOE7QDtI+perlpIZZ1G0wg3NRo4DUm99K6l+tFb8FPzEm1pjEOrtsJWoOvrYZkoabSoEpCGwvb5U/wD3qqYCETLVD585+lelUWusfsOj76bHOXlKRX6x1UFsq/5Vnpf5jPpFs7t24KH4cY2kH7nOd35Yx7568gtB17kbgkEkZx5BGc5Hg4GPz/LovWlfdm3i2h62bjptSkoJEmn+r8tUoTgC97EymSQ1UYzwRtX+2ioQN2NylcdGX6orqW0j1NufqIwDuSo4xuwCM/0vA8dbDLjwcrGyQkWUbbpBI0VEW8q8WkStxox0GHGpafKJI/wlEm+TLkSLxZeS/HRij/iR/pf3K6xqmoFKMH+cn7/Zzq5GXvQheMZ3cZz4Kh5wPt9ur7idwSnOMq8+fCVH8vt1jcbmWhHQ0uMUlttNmq3nFFYK4tvqu8BWddSEdaLUqJ8UlV4Jk7ppbCqwn9Oi30OtgmApSSr1MJHvtH3x4358/l1dTFQ2g/T6q/8AtFGef+0QMA/xx9+jdHSdYjIxpyU5lNVZmLKL+Yr2rz46adSXypMJiTGuKJ71YuEw5FH2esBKduec56G9P3/sP+7q6+ypsEnlOQArgZJ58ZJHgj+HWKCQcjpbq65t2GlpRiQ48leUkJSbo5RbKXMs2HprrSITGV37Yx7HnH+nWaX97ak7Mbsc7s42qz/RGc4/LqhBAzk/b/b1R0Olu2DammaYegfNoshJKcryq1yo8GOtMW1i2+h0Oh1UlO7POMdbwhKciMS5N0WHgVyoeB9+h1T0Otx0OlX7J/8Amf8Ak/8A2uk/z/8Ak/8AN/8As9afq9H/AMsj/S/7qutl0OtdHT05yJQ1eXCUVOEo+9hlPNPi66EtVpGFWJ+a/JX0+/Q6HQ6HSrT1dPVvhLlxq8SKu68h9Hx0QieTodDodWXitKCtCtu0ZI2g5BI5O78O0ZJ4/fjHWdSZpwlNrAtKRuhfL9hXy0NC46zGLORE8rRhf6AvV0kDyQP3kD+/qh1SEgpcBO7jaEkknbvAAA/EU/UnwSPqHAz0pOnWiV+atVJiBbsFUOC6kqkXHVFLj0ppGTwy+0l1xa8fWhtph1W4hBwFZEglG7aNK9I4tJVUozV83tKebYRJuVszabEjtq9eZVHaSt4tojQozL0slT7qkrSlCXSNroqr4p/F34c+G3W0JGpvdzpKaulo0xhjxKTGsuPcq2n3un4I/A34u+NCGttoaez28pRIau4WHzFpqGPzAj7v2HBG3TrGuKfQKjdrVLVTLUo8JVSrFz11+NSqFSIiFFPrTahMfATvIUGGojUqZK2LLERwNOBEYN+9/wCBcD1laB2LL1FrC6hKhRKzWqhPt6gGVTfTeNwsNwoy6lNt+nwHplReqq6hSokWLGlLfdYKE7978SLv5rXcZcS9DdH6iE6BW7LTAbi0hxak6rVp1wNOvfJNBt16DPktNRrPphed/WMyRIhBUb1FOuMG7oKLR+0Lt8plgRpcS4+6rX2gvRtSJsWUJcDSjSBmU3T06W07YXVSarqXUZDMC6pEBcGSzEhfq5h0KZdlOcd/Hn9o34h7rvNzsfh7W/4dsX0sOXz+IsaLlHTit4c48LQr6G/hx/Y/+BuwbLa7/wCJtPc907lIHXjrD8vTEspjzIkxCQkaQLuzpFtUe+T4gndLqbb3b/2iVF6HeFyV+LT7Xb0rt6nUty46tT4tMiyo1p3rdca5K5RNOoMKHMrFVqlzl5mbIefNKZj05lMaG3HvQ7ibD+G6qdphqh3Hav8AxGPiC1eMiqan02s6v6kUTso7b69JS3tthmy7DumzYWvN6UwOF9carRothwyyRUKU8Z7LDa0d0fdja3wdO18aOaQVGjyfiT90FsOytW9RoUqPVq72raL3dF/WFKtG25qAy3Avu4IUtqtvQmihdKckyKY3MksUmDs426pVJ9ZnzKnVJkqo1GfKfmzp855cmZLlSV+o/IkPuEuOOOrJWoqUo7io556bu2d4773La6W57h3CWsaoydMhxiOKc/vIRlfq4v5UeVyjvHw/8H/De7n274Z7RsNHbxskx0RlpSAA5ixmrdxQ4/RKelu1p7mtZNfqp+tdSbucnltTiodHotHty0rapweWHHWadb1o0ag0qKwFpSpG6K/KcVl6XLkynHpDuBoJZyNSdTbbtiqzZceiyJaXq7IQ46G26OzkzFSHASlA2FIQpf0qUSgglWQiA4PgH8jnH9hB/t6W7TStSbJt+47gir21Wvts2xSGEqwXWphWJ0h9W4elHaV8uhLiPr3F0HwgFXrzZl6kmTJC5NrbnL7oo+7de/TPpEITjUYxBJUVExRWIteD91DD7Ykl1k7oWNKtOKKjSdmrWZV6lU6zSLZqdr3bc1sVmg0+3pbcKTIYrdrVCizp+8uw5DIdVFC4UiEtpTXrrSUH0w+Kh8QDTFwN273Y6y/JOqaU7Trnu2XfFKeTHDpbYlR7wFbkuRHfVWJDEebED+Wy4pRYZ2tt7jq0ldyW1Y7LiXmNOLUptuvPYCnXqpIbTU6kt99KyiQ8yZMeC48lCC45DW6sBbimmkvjWRUnw4hKT+3tg3VAO1OZUBC8bMlxCG1gJcK1bnAkoKSnJISq7dud5tbltNeWhKUbU5lg4XiW5tyUkuPjyn32hs93ry3G52u33PMCtfT+YRi8B43IIy82lmWq89dGei/6Sh3OWc5BZ1os3S3WhkKZbXUKZaqdMbliU9ouBUeLUbakNQFOOBRKi/AUMNN+gpgrWpyZbtv/AEhHsM1mlQaJqlWbp7c69OQU+ve9I/lFZbD/ANaQmXeNuR5VRabKvRPzNUpK3VKcTuek7Hls8ALvKucZwNwA8KA5GffB98nHj26pSpSCFJOCPfg+ePByOpf2v8QfiXtrH5e9ZQ9PKLE5IeRf3rbfV4ln63Xvevwp+DO/R1Zbrtelpz1xV0ImmRlKNWGRD28+VbED631i3fZGpFAjXVpzeVqX9bU5mLNh1uzq7DrsKVFmxmpcaUy9EcBDbkV1l0+oy2pAWFKBSpJUrthUpVRrzDIQUpbUUnxjBzuSrCjtUMBS0/WvaFEA4J6+VP2rd6/cR2kXTHuXRDUi47ZeS+2/U7cRUH3bdr6WleslEymul2KwtDiAoyGGUvOBRSpScBXXcf8ADE+Odpdr7RHWdWorlF1Bt9uBIu5DJbZqUOhxRFpk65VU5xaE1mHFddYmy2KQ87Pjw9zqIzy2vTE2234incNMjvZVqRPyyQi/lTjjCNXXGWALw9VNrfgpLs+tCOx32rqbSGpy0zVjz+W+QYq8QCyVsW8sUYnYFpXZcKM3GcW0jalKTuJICiE5AGMJKwF8bkqySPZYV04suM09oFtptKBtQlKUhIGAogZHjgKyTnJ8nknptlg37Q6/a1Ir1sVNiq0eZGamRalGeaejTYsptEiHOhOtDYuLMiLZebWdx3LU3sBSrdva1eRfiuMMuKCznKgraUgDPOUjjOFZBUkhP1AAhSYX3TYbnue9nuCvkznQWohII5tWyky4tMX1bnZ9wdr2WjtquejEjzEFo8o0ZktcXzlqT0rci8YTBKT6ZVjI/aDB885HBH5bgc8EDyLLN4wXilLmwjJJQ2SVfzsfVu28D6vzxjOcnpp8qvSvVSnYtZwAk8KJ2nJOAr6Tg59wM5yeQLCbjfSvBK2yCQTzlJGQRgKz+R/f1k+FJy04zI8CR+YWWfTQKtoLfFGxfPR0vix0tSX994yQQvwI+OVNjhbLwez140+BKbS627wr+aVJABz+EFW0nHg45Hg4PRPvC8Y1IiqZaWNxSd6m1ggD6gU78EA5BJzjwSrKcnpuEa86q3tbMg5yMpSlXkcKA4G0ADHgYAycY60FWrD1ReU4/NWgKUr6AlxxJGf/ALHyVE44JV5IAwfo/BO7lIkzRuyDGXooaVkHLII1ectjRO6+OyBpnIv2aisqBUi1498+/wBTqJ9KighSTgjODgHyMe+R4PVPQ6qSrbnjOeuyYEWQSlwi3cuLKqFMGW3H2u+vM7qnodbRtzfnjGMe+fOfyH26udK3Zo06n/l//a6IdZiowpP+b+Psda35d7+h/rJ/83V1llxDiVKTgDOTlJ8pI9iT5PWb0Ot47aEZEhncUS0qxvPp6LdaSIkcieH3/j0Oh0Oh0z9b9DodDodDodDodYUonKQU4A3bVZB3ZCc8eRg8c+erSU7c8/7PHS3aaEdVecOUcXLkx4YlWCQy5IH/AC1nrbgyBJV/Af8AXrJ+ab/or/qT/wCbofNN/wBFf9Sf/N1jfLvf0P8AWT/5uh8u9/Q/1k/+boamtORLT1KLqxOLhJHnJdD+j+lA09MpH/zHV9tbrxUQ4EY28BAI5z9+fb3J8+3WO82GSkFed2f5pGMY/M5znqkOltDgT5VtwrjjafsQQcg4/Lq43IRsHqL+vnP0n7nH4U48Y8dNW63Opt5kdPTjIQW7WnkVUS8JfJk+5xzfR0YOU/LdUBbjytL56xPUHsP9n+/q6mS4gBKTgDOBhJ8nPuknyesbodJ3da7++fpwgn9Yr0bwj7l/r0OqlJ245znr1AOc/bz/AFHqpZAG4gqA8AEJ5JGfqIVkgYO0A4GVcDOdWMIbXV15lVIIrZQJykFnK7Sqa4teGj9HQ3G41Y6ehpynYskHFeM8UPvcj+PWcgklalpCNoCcFQOMDco5wAAQpOcH+bz4HSBa56q1ax4FNtvT+lxbo1gvuQ3RtPbfktB6DDW6tInXhcAcUzHbtu3mQ5Jk+tKjme6Ex47hSiQtpWKxdduW3EdqVx1WJSIMdD0lx2W6oqDLDJccdS2CtbzqEIw2wn9opX7JALikkNz0JFx6mVq8NS7f0o1BvisX9UZ9Dtl6XTDaVpWRZlNekR2qM+9WXnpbE6p7F1eqPJaQ061OMhSW1KRiM6/edjoHI1YylIDjFBiHHl+ZWwHwv0G0Syvh34N7vu9tp6+lt3jBp+gyfNSCUrV8gVd346ztFdC6VpVOq+oNyTxqPrreqW37v1erKBNSfxJm0Kw2k+nCo9uQZIfgxTBYaU4IqXn0u+qhtlx0ealtBKilLfkKcJAGc5GUhYGdpVjjGFE88Ar3VVbD08C3O5XXjTrTmZOC26ZY9hRm7tvWY6SDAjwosOE89vqW9KGW1R0hkhZUqQhKvSTeJrhEuB6WNCu2S57glzigRdQe6S459rUeXGjFfpzk2jQ2hJmMOpW8WPXjwFPKYCNpUpRLHuPiCU9QYQHhnkL5TAZWmrVTiISM2yLcfBu5lw091r6O1sSGlqPreJFlxuVryTJeMFeOltVVabvPqz6bvJCVID7gdV4G1DR+oqPhICfqVwMnPW7YpFcqB3wrarZiEJDdQfpcyLCUOSSp6QGUkHgJUMgkglfIBb/+su6Sq4NX1ptrTqG81h639ANL6TQI8VRBCm2bouNE2qhCAk/41HU2cqcdUg85QC77m0HZqr1uVrUa/wDWm9EAFyxG7lujV2861V38goTbdLkJpNO+YW25lU2NGio9MhUkBogotz8VamlpVq7l0IxKGvVExdEZXEvDbeGslA7f8C7Dc7vT2poT3m411Yx0NP8Au9TzUmWXNXay9kabXzVE0ShTHY1yX/pRQAxj5lNS1MttM2NuKgn1ocN2aUlYSVJCnkkgEJ34OMGPdOiGd1T7gtMmknaI7dFXddyTXjg78JpVuiIQkFBT6U+QHErWoqb9MhbV7I0J7qrsoktrSXsu0s0ZjuobkRL618qtHkVNFOZStSp72k9KQzJipKi4EoiVNtMlXpOSXmkBkpMj/ZRc1uRnGu4Tv+pFHYy189ael9u27pfHgPBSg623IelzrqIe3M+kZPpjDbqWm8rcWK87r+J3bdpMId1NXkoGnEjVAPL1hSp+l1hc3t8Mf2etzu3az1Oxxj88VlLVKgVyJP8Adxui2I+Kq38w403D20t5VL7iqVEbCRlbGnt6vKxyFFIMRJGFbTgrPBOcjHWvd1H7PIA/bd0ssLTjd6Gmt0NEFRIO0zJMbKdxKRnZwCEg8DpA4van2VJ2rlapdymoFTdSC2qj3Jd9WRJBSn62F02ktNuBWQoKW5gq3EHByNdXO2LtbkxPQt2h90kaWApPzc6PU56R9ZB3IrDSeU7yEpQ40oAZwMbuovrfijCUoxjup1Nq4v5KjGI1dK+q0/dx5erU2v8AZs2ZGMZbLQskWMQFE979KeLxJfKlqrMruA7JY5SP/igqQI3LCahpPczWEhOcpQqqJ3/SSMFsFW4bchQBKyNW+3CvpcXQ+6fSZiG3ymVddn3FahJ54fSFVj0UkAnAWsZSQrnblkl79rNtUinBymVbW9reHBIVd9lUtVN2t+nsSpy3pLrkZ4la0pckhYK9pbbWUuBMV2oFQv8AsOsV6I7o3qNW6RRpa249WolKS7KqcJXEaamhzH2JcMPFLg9J54pG0lp15KFlCeX4jbmFO3ZbhnjVvUY/LKGJllH1C2VAbCsvSrdfgb2rt8YQ1dpoxJcuCTvlx4jm7xgVX8qCXR0DX9pncl/2/JRbbGl+vNBAW6kaQ33blxVoYSpXq0yhVJ+g1d9/6FONpQ0hCRFWpx5lSEepGFPresPahfE27dIqjdi6ZHksKreiOq0GpW5eR/VuXy3b5nxflZk3ZKCokiE7MclkCO+xHAaEiNeb3T2jaMqE1URe2m9ZqRkNsTbjtOuUKbEchpZ9QfMoaeDRCZTYcCkuY+kDBSMuEond/VNTKC9p/qBd9C1+0+biRTCRXKhEqt60BA9RuNUrbu9pMat0mbCcEh1l5CsvylI+YS0GGi6s7d8eb2OqTlUYylF/MUW2RxVByC15eKjdjHe4/hD2WTGJoaZJhUXnCTdORwWhgqqaHFxnh7ae67SPuesVq47QrMuk3bTmgL10zrzLUO7rSkgt/s5jK3wqYwklSTMajNAKQtDjYLRV0ineFJaurXXtQ0ll/Kppib0uHV24nH2EvsNUWwWWGqe7MdeWqK1CWZsl9yPKhyPmHhHWhxlEZxEznhXqVqDolqDC1Y0srUmn3VaDUuRbL89a3ZN105lTClUDUptCmxV4UtIwH1IbTILi0oaaLAMh3dud6svvF1Gf1LpVqSdO7to2ldm9uk6zZjaJU+lv3dck2fftQtVlbUN1mAul0ZRiocWXgpDTrU5j0iVzXffiTrS7Rq6ejqk5+Jacp8QCEc1d36baELYh5SpNH8G99p/Fd/JhPQZRlV+jhyJRzipcXzRlTK5k1rl0UuuPVvuduGKZdjWoivQ9PIpb+YWY/wCsHIbk+FF5ek1O5J0Bktx2GVpS8hmOwJO44W/tsvLQXsSsipd4nePAj1vuB1ydRcFm6O02nKqF10uz4rLLloWjQqdJDiaQ2zTqnFmVeohchp+p1R4sRMR8qZ1qJdloSLotmxJKGHdIdELap+puoktC1wHZ9v2JTkxqXabLhakBqfddXfp8SCwXEJRtlupl7mW25TCb51Q1A7gNTqzewYq12agXhVKZSLMtelKUZ1sRm4apcO0qAtKnUMswEVBtmQ+1HbTJcZQVsJUhKTz13fu+77tvJ7ncSpb4acRoLElRSPpqhRiUViXXWXaOx7TtW009ntocGMTlKhJLGlC6K5IPumHDUm+uPxwu8bUZNSY0lo9kdrdlxo0SDR3oFJpl1XvKhpbcQ6t+Y/Pnx6fIQlXpIHyig367iwuRvCo7PbPpHxVu9V1KaLq53N6lwaiSpmsVm8rh0209jtPYbeWWreZp0b9UsNtJlfLNwJf6thsT3ypRf2Ou6t3QztH7HLcouqvd7c1M1N1wcZRWaDorQg9VKFb1RnJQ5SKX+rH5Co36xp5wJb7rRDQLJYaWhK9zcu4P4o3cbqyzKs3TJ1nQ/S1sOJp1pWfHaiSnYqtmESZlPRDLLDIS4hDSGdwQ8sqWMDKbb7nWiRjKeoxjQR+ZKWRzxOdRfIUZl5Cjrbddm2ARnr6cZTlghAI8XDdYjXgKMD5RvrdyPg52BayoV195PdzpRZtagy/mqpHh3dVL1rTYSFLcQiTX61TxIcO8JbcaiNKSoJK2yU4JmhVn4bnb+/8AJWV3Naj3SKeU75FpaZ0ms099aVKAVOcbhS1PlQcw04p4BKUpyeN6oZ7tqUAzn7ku+oxU1qV6inrluCoy58p/1BsIW7UHpLjfO3BQlJ+jHqY5BBOpNFRGag0aBV7ilo3kLpcQrir5xhDqkoTlak/SPG3wCeA9bDda2huNHX0NV04l8y3UZXlvCvERDAe5QUw73Y7LX2+rtpaEASoMbjxviLhiSj+ZoiWHHl1PhUviNaBw1VGnW1cN+VWHBLB/VVY0mrlpS3Csu7BSarTHJCmiC2oyw9BkllJiekG1euHFD/8Aj17KL6pMeFel9WXTZN5Q2JTFr6h0lL0SGqKF7i67WKWFtuMGS2UPQ2o+5zYt5pRQ1t5qX7vvSoeqtnS6vb20oJ9efBjpUTvCCEzUxS9gIyQgKKQAklJWkdEavLuKr+kldhabumMXf/wmqMf1Gg9t5ibYpIU6pk/MFKUglDIVkAdWD2X453nanXZprmrwpZ8OBp8pD+WRLkLJyUx/lWfe/gDt+9Q+bwkmJmmzoxiKyjQWeJJeD3vpFRG0BdgSK12ra70K06rLDshyzFXlOunSyuFtSVFidZlTDdVpUZKEuNNybbrEF2AmU+5FaYcdcT06DRLUKybvlfyLvSxrKsrVBpcgzqJJiFFvXI6yWRIrVmS31uqfpj7TsRfp+o88guBBeU4ChHGXUKFcZkekzYulzah6i0uUK7plFmslQ2lTb1OY4wCkftWFgEHbtJJJst68rwtddOkVSz9fHlUWe1UolSsfWlx0wZjO5LT1Gi1mnuqcKiXC+I77ZWWW1PEktESzYfidzm89eOnKo2BdixS2kb43fqrHt4gncvwb0NzBNtqkrJWaehEkWi4NY8eqsggEWV47nXNObAlkpkWVRmX2SoLEJE2mqSpWCtSlQpTfrIwAptSitKElQATvWnrFOlNhOf8A0SBV6YkjC1Uy6a7G8b9pKGpTYyCohOSEgFX0kEg8/vb98XzRC0UUe3tXNeu8LT+alePnNW9LrU1Ho7OGW3HTPn0aXFrTezLQC32Zy1eoENqjek6l/oF0D7huyfuJQ0jS7vx0Mu28Za2ybZrjk2zLlZDnqGOxJpkpUpKZYMd4TIrbzyoSURwp10vp2yzY/iL2/VT52sTkJx5SRjmMakA4UfceKvJC+q53v4I970ZktLbwnjCSOKRVK5TtwhRkrHg6vuabVmLHc/k/qjc8FcZIMWFW2qRXoLf1FY3InQVzHEqIW3h2oLOPqyT9J1zjWvFGJlpjWXfNOSlQLdIWbeqhQAd77URRcgOqbAXKW21HaB9MxA8r1fm27mtepUrRmvrobekuresj6IvzLlf0hoYr1AIUWtqFyC4ndvzloJR9RQ5uwTuU2f8A++IaT27JdjapaZ9w2h8RnANa1K0jrlIofKVFXqVaGqYCEqKTkshKkFONyiCZptfiTa7yA6HEIhcb5BefIyKGL9DjySgBrruPwt3ntOtLR3O2dOMMfMkNNIubo+v1tyeUWqs3bpbck9h26KRcOnl+rLgp1crNMXbdyxpDOz1vQq6ZMy3bnDi3IoCXVrLKQllkJ+ZWFKBR7zm0Z2mwLukM12BUUJjU6/aGY8i1ZE5ISlinz5cOTJRT6vJWsiRGcW4yyWwtp531XW45Koev3bpq9RZCdNtY9I9Q5cmIkGhruSnrkOpcS8qpUqVQHEPSH5iQiK5FWlSXEpDiwypxTIO7/wAENq1SnGdQFVCyBWmk+tAtx/FHZZcQPXZZoq2zBQ2824hBSywyrKFbVqJT6bjpbyGo16Q45eTCsRY5ePnGf31qzx0w73tmuunULngYsCog0qPKMvCK5OQsrDpe474fbQ4n6gsbkrQAtpacZ3tuIUttSOCAsL+rBOBkDrJKspSnH4d3P3yc/wAMdNRgXNqRpDMVTbnplSvXTZpTcai1q0oxkVuluukFMKrsuGO0t2OFLWtlvy2n6EglAK9UDUCz7oXsoNXakuoSj1aS+fRrsdakoWWX4Lu1QcaQVeoUlaSrbtJ56N+WzRjWWwtCq/MX+63XlpwvjpFr7bX0tKUdeDpkosCT5GUeORcoPLyWI0WdKQEAgpODn7nb4585H2+/WIptSAkqAwrO0hSVA7cA4KSRwTj/ANj1S5IKtpSFo4JKSdquQMBQxwR7gE+4z79XmnEYOTkk43ZKtxBIxxnBT+HH349unnQnA5aejTHSI4PUJIUYyJN0/nUUSnzYwbnhq6unFlGNifMGCBVnOkrMWMYqNyZVTnWSgPoOPqORuyfCfbHjkqznzx+fWuG0EHd4/I9bmZFKkpO/gZH4eQTg/wBLnOPAHHOTzxjGM0ACUcHOPqVzjg/zutN1uoac9I4E5QOYy54VwBygP5R/ePaim9tDZa0oN8YZqpSG/PjiTqj2x9S81idVqXuQhGMbN3OfO458Y4x+856ufK7FoR6md+7nbjG0Z8bjnP7x49+vVx1p/Cd+M5AABHAI4KiVZ5xge2OT05R1BIMzhKS1FkNIS98DYLRn7YURrG8N+40n2/h7mf8Ap1j9XwQfB68aZDoV9W0px/NyMHOOdw+xyMfbn7B1r0tv1bt2fbGMY/M/fpVobj5MpAEuVWNjgapyHm2xvxjoWXV5/wBvWwSVHO5O37fUDn+rxjqrrH9f/M/1v+Hoev8AdP8Ab/6Dpw1tGWrpyh+XlWcNUj45Hmvr0lNOY3wD7EivFe6vWR0Oh0Om3T2epK+b8uqrEZ3d34nisefN/boMw8Z/p/p0Oh0Or6GHHSMfzgCCBnOSRjjA4x9XP0++OcFxJ7afzJxbhnj5GMo6gyZR5EePHw5S3AL0ZCPzk04WzkhGIGay5Ub/ACgUjbaIErHPgDKjnaPucE44BPgEnAOACccdGOBSK8IC3LdocW4dSq1Ok2Lpda09v5imSNQ5EqO4avVmVBqPUaRZ9Hbn1qqUyfKh02pRWnGZzphLfYcvUqC006mQ8guIyjclDmxz0+VOFlwpebbcKFBCXVNFSAolIWVNkvT7aaJTIFqTdd7jZeeiW85W7e0oiOLAbqCqnVfUr93wIxZ3ol3xcUql29TZH7KdBtyAqKhptTjr7tPfjB8XHb+w/s3z46DujWHjYy+Uafi5Sx/eZabpD366K/A78NYd879t933LaOuadS0othpxcyFCuWpUA+kuJ5yPO0i05haKaeQ6LMrEmuXA4yiddVyTCUybgrriQqXL+WCjEpsCMViDRKTBajw6TRo0CmsoX8uXXYBfi5979S0n02q9p0Crojam9wbdSsW3GWX1Ny6VppCfcgXq6QhCxGcrbvy8Nh54rZW204Sy4FNkPo1C71aM3XL306iVKG5/J2c7QblqKJaX4Lt2hkT7hp9JWW2kuU21lVGPbS0pWP8AHqZNXuZKlst8KPxLu74a/dzOoFc9V5dm0GV/ICwoKHlPsMUO03nWX6optbO5U2vyJpkTn1OqaeMVoNDCTjg3e7qfe9eGg8oReVoq3djJW2JFcoX6rfeXqX2D4f23btqbruugf3jA0NMCJCMJAxSB6RooMPmSeBbLG1wg2w9T7otqUiFek6U1TNPJ0xJk0egzqhGlxp1+zmFJRGdk2cw5GfpCZrb8RmZVmqj6SZUCI4EZd7hrFsm7r8749SITN2WZ2+yWbV0GsaprD8jVPWiLT59C07p1QjLaL9RpNqSnKlqTc1Rb2rTPkBllTanHJDcdLOrtxVeTMgWmou3JLEOyrUa9ZKhNvG/5bNEoy3VloKjR6XDFYrk+QC+v5SnPApAcU+2zDvC1eZrVUtjQ+xpa0aY6INzaJTHIE5LtLua9X5Rk3lexUwhLc4z6l6MShyEq9OHSoDSGPW9dyQsdo+FtB15a24kTbCNconGL6rlIFUD0mOXq8FMp+IfjHQ2fadXT0NYNWdQrEpcmIFPgiBFwWnhV9La9WtWL51y1JvLVbUu4qldl+39XZ1x3RcdWkuSptSq09ZdfdK3FK9KMwQiPT4jeGoMJqPDaUpuOhSkw6HQ6sjT04aUI6emEYQjGMYngIlAfagK8FY6oLUnLV1tXWm3PVlyl5fV7tqrijP0+/Q6V7TJhM+ps1eqIZ/k7p5DlXZMblpdXEnPwn23oNLdDam1OmfPVFZLKVhxbPrpRkrSOkoixZE2QzEitLfkyXUMsMtjK3XXFBCEJHGSpRA+wGSSACQpV3SYVt0Cn2LS3vXkks1a7pja8NvVdxr6KQChLano9I+hK0O7kpqDSlDfsSob8SWX2zf8Aonvfjw156LkDR5b9lKLFuv0PP1x0Q65U361WapV5Tjj0qp1CZUJLrqkqWuRMkOSHlFSCpKh6jigkhRBSBtwnCQ6WguUpGnmntTmuqM1i4KZbkt8KUVKtarvvMVCItIUAlmE7IDzW3HrYWNxTkhqVQp8qmPojy0BDjkWFNb2nclcafFZmxXEnAyHI77a/Hv7jkn+XW5Ddh0aIw4UlE08Y+oemXCkjyBlaTgDCiEpKs4AGktTjwo5c3iXjPta/1El7tcg6xqwlKgwjaVnPpxko9WUyYqi+sW/bKrNvSXa6ulvM2rWLiuej0CsoTup1Qn2zNYYrcCO9uUUTqamdTJU2nvbJsKJVqW9KZaTOj70966hvhr9pVM79vh6fEA7dHWmpV9W9fi+5Tt9mIea+fhao2VS65blXpEAurYbajajUZ+HatURKUuLIkVGjhppidGgu9cw1Qp8umSnoU6O9FlR3no8iPIbW08w/HdWy+w82sJKHWXUKQ4gjKSOQCcDTT1ozkwcSKqL5qr+r498+50v1thudtt9vuNWIae4HhTdcWqX6pn+vjrCBIOQSD9xwel60gv8AuW3Lrt24LRuqfa2qFAnNyLLuJmUWWpTzBbU3b9aeWcPRqkELiREvBxtT7jbL21D2VIL1Uha21ocbWptxtSVtuIUULQtBCkrQpJCkqSoApUCCCAQQR0dix/won8G/69IZRJeQ/kP1w35M5OvoKfBb+Kr+vbPtnRi8ao3bZTFq0u3Ys1c5qFYNfgqiSbt07rcqqzZcmFbxl1mBeFk1tLciP/J+6KlHqKg1bc+RD6u7V1IgXXGY+beiRaktIWy2diVzIbgSqPMJSsoKX0kqQlKlJCVBSXHEqKh8n/sP11TbOu1g38zLNGuByRTtOb4rJbEtcePeyJVr0rU52O48zAkC26tOpzdbYnRnoS6DUKvGqHrQ5S23O/rQrV1MbS6xtVVKcplgXFUZFBvmm04qluaNalx6rMod3rhOuPrqrelpumOnY5PW61bKao2/DE9l9Serp+FNfR7l2/SjI46+34QZUMpM7814j5JKJyLWh5Ud8YO87f3TUNBYaWrCWpK8xjH0qZjxJRXkF3xYVlLmvkSkNKO9YUsKKCE8nKQeDj8ABIzkHz+HJyNRyT9LyeScABJOPt5ycDpMLWvBUplin1NaS60hDTEs7vVlbUnJlKKlF2SDyVAD6CPO5IJ/adS5u25wk8HJIUFEkEZ5GcHjwBgDjgTb9lnoxyIV5SNOSqPB5uvJf06h+nvueZeqUkU+ZqaeooHK2xl5W+OBtPpk+q5/S/sT/u6t9axby1KKgpSQcYSFHAwAPbHnz49+qfUc/wDrF/8A2Sv9/R5oNeQvyV/TH06Eic65zlKvHJZVdXVr/TzR/CPTodDr3jA455yc+ftx7Y/jnPVvaerqaV8JceVXiL4uvzD9Xx9euIUGrL686HQ6HThudzPRnGMYxbjyWVvlQAEqqby3ftWS4xEtvzXQ6HQ69JGAAMEZyc+ftx7Y/t6a+jf9/p/v7dedDodDodDodDodDodDodYcT/pP9D/xdZnWHL/6P/T/APD077qDKHIkxYfQy8mJ5sr+t9aaTawr81Z+nG3x7/zK6w+h1eaa9Xd9W3bj2znOfzH26sPNFspJVu3Z9sYxj8z9+mfX3MdBhHiylNlRdFRBc05yUV9c4pcY6GpLTdWq0z964/4uPi7848f0z1dDKHQCh4HH4gEHg/6RSSPODgZ5/PofKf8AWf6n/F1c+f8A+q/1/wDg6vrebPlaBtxk7hjKs4GfGcJJxnOOmrdSvnrGvb6TiaMiPtGmbZHAyL8oh0v2kNHWCEtDjqHk+YpK+ScAmyaD1YKv3OsQxDg4c59spwM/mdxx+/B/d1bbZV5WS0jHKikKOc4A2ZCskngAZPAAJIBynnQ1tChtC8JD6yBGjleE/MS3ASWokYK+YmOYJaitPODlBw1e5dTq9qJU49KsKt0OxbBhVNiLcGstbTJqFSqHLzcyBovZ7EVVfuq4EFtpMCryKXAozvzJS3MSph7pi7j3rS7Tt57jW1SMzGmDxmqZ4pjBIu7wo+wy/sHwRvviTdG32ei6cY06jNkFSpMStqrtEq7zTS+XLd9o2nLapdXrQYrMgusRaH8lLcq8qclKNjBpzTTsyKFeoQHJ0eOEhJVHRJIkFnSv0+/JlIbu7Ue4LD7WNKwVNG8L6qmL5u6HPSgxo0anVWM7RqKGVRnA+7FgTcKlx0upeS2ytFiz9J74prDUjRqx4+nRmb5VQ7su9GTCXfl1UUJQX6tZemFNfkVWExK3LFH+fhR0qdUcPBDalosye3bt8pl4f4SNV741M7w9XkrKm7mvNmPTNPqHI9T1Vs2PYUVb1Mt6iodRFfhw8vqjvM+oSMKK6x3PxJ33vW70NrsdPjpT5c9SKhCFQ4ynEJclWY2gVVinV7bT4T+HvgvZaevv93tdzvdqMtTb6MosibElUtRfKFKCFe7fRMh656KUea5Tu2HtuvfuhuFTyE1DXHVr1qbZ9RWhS0fNrqFwx2ZcmEiOXnnZ1OhyoL7vpNtrQoF1w03DbPc/rekxdYdeKrQrNlN/45plocwvTyzG0Baj8rJvCPUJd11ptbilFxKajD9beR6jYUpLa1uX2uNAYbs+0rKtRxtDiHpdwBytLdaQWzFFPpW6HT6Gps/MesYrRVLUqOVrbMVsK0tt6d6gasCXErN7TWLdpcVdTlTUOQqFbFGgguLW88/BZaaCFLBVGjuhop2vhsr3KKXDf9t0ezbaW53u95yTkafyiHKXIeWZ6vFXwC3ytRuK2x+Ldz33c6fbvh7b/M1tRlGMY+AwEWUT8sSjm3KWAC7UktvQnQzR+X87SaHb9s1CYhSXKrOeTcF3VoxkBDjjk+XU63c9ccaQ+lLzjqnlsJkM7wC4M6y+NXq2bqoGnekukt36var16nGfbtIgyE28002SwJDl2VeTLjGmxXCppTf66jQpsMNup/VqFPrBdnZekdPYp9zT9MaqvRHSeNGa/wAIHcvckFp29K7GJliXT9PKFckioPW9SXVJOy7FvuPzQtHp09SowLddmXfUnqW/YPYhZrGntkTFKF593GqsAT67Wq2UltyTRHqw/JqmoE1UVUv9VTnakxTwtTzcJ8fMSXRT3xJ+IGhs9WW22WrySNxlEW2rcJh5NBdNWe43R8E/gz8Sd53O23fxDpRYapelpumnyozI8/VyObKKJ6YhmNOHpvdx9pFUhUiLcvfl3HQtPYMcNyX+3fRqpVLY8tJ/xuJNrMNZu+9p7jny+ae1JDMps+jLfbgzJdPmOJ0rg1SgUUW/2fdutjdvFiKDEpi+dTbNh06pXKtXqoYuCNatEjuXItt5CZCUt3U5SJiD6CGmkeq+pteLJ0B06tar/wArqxDqGoOpUhHp1LU6+p79fut1sby3GpCpqnadQYSCtxpceDC9V+K/IYXISVtOR1Xlv7E8YIC0gk+xyoEAEp3HxgAj75xnFWdx+Lu8b6UGOo6elPkRYyeUgqCSqk4vHBVo8cEU6/8Ahj8K/hzsENGWltYmpoBOcmBKUpIKr9GWQVf8TRXTap+h1XumQt7VPVa/r1XlXo0uFMTZttxm3StS2otHojrj0dhSihaW2KmjYtK8qUFAIz0aNaSWy2p+g6cWQxN+hwSZFBiVFZUjclSiZRceU4QsJU4XiogthZXsb2qdW7hiwpjsaXJhxQEkJclSzG3EgnCUlpfqY3hagVAEjHIUQiP3XDv/ANJ9O4UynW+8q6LmaUkek1FSpuGpQCUFa1FSEoWsqAP7MqDbvCsbeotq6c9xqQ1JFrdohaJdilEasfdauxSfOvttuYrw8CglCiKc+KtjxxXGVXft06mu1ONSoi33l0mjwWm0oUGm24jDLavpDTEdCA221gH8CSASUp2lIHTM9TO6DTiz1Smm7h/WtQjrSn5Gmkuup3glG91SSj0ySkFW5QQCSOeDEjq93vV6/ZMn9ZXUxTKc46txun02Q4JCggAqhojQ0rkqkK24Q2w2RvTlStqh03aPf0a51LlwKdca96S/85OpcuGtQH0rK1zmmMIP9NxbacBKiooGS6bPbKR5EI5pUG6oFBtLfCJ6X70z9z7nHUjEiVhWMcyPGR9MbFK9i7/dzIBqL3Q1a7VviEVx2MKQ0kqCi22rdvdcUM4yFErVuAydqspUs9MrvnuBta33VIqFwTptfWklmi02HMmSpitoUpLTsdt6M0lAyoGQ6gYJ2j2CKTbnq951R6g2n83EoTKHGbjuCQn0Hi+2MPU6mPfS6/6eEJ+bjByMtQX6T/0k9ZFNs6m0sqZp7TbzrhDZmy0fMT5X1nZ6sh0FYH1DaEkYISSN2VB0lw0ajDTVoWUaTl5P3gx4xn1X9Vg3cNfnI52y/c5Nssxv8yRR8KuG5EfdTi8rruvUUPKkWLQ/1RIbIQu848KqlpB3bFpp0d5bvqIKvVa9RxpKHcK3IIJS0S5O3q0XpMiZDZNt1ZbvzLNSslty2Xo9UcbKFTSIclRcbSydgadW8XUlTagnKlF4F73fAtxx6j05KK/dKDsFAgqVIkMIx9RnJzhhtOTkKWghJORkp3I+5DvGqLNRrD9PpMqR9ZpTGUCOghOzlohG7GAvcs8pIAB6W6OryCMokcIXU6SThz5H6VgEY56jk9PTnKMi1HkmSqq/aT7FVapaLxpvbdP1Rtd1FOuGZDvehIQlDdbcQEXClhG5LapiUltLqkrSXlrJeOOFLVnaNhp469p7qhGu+Ag+vXW24rtQaUUyGZAVlpfqKGWni22hhY2YUUjak5AKu1C36pJwlVQbSlSdqs71lWD43FGQMHBHgpJB4yOktqlMki4WKRFQFqapK6srK/qbda3FrON2wuAEp3443DbngKSU9KFRZPMCTeFGMVLkIywAqZkIY61IwlIlUOWOM+NuasUhdDVtc7LjdAusk6lXFUKJe7LpZceuidTf1zLSXC9JoNJXGXGjJ3L2KVHlMIfS80UOb3OAAVqU6PSTU+ldrGntNvkUaDM1v1CRONoRJMdIRbdskxI7lyBAZUtqU6t1pJMsIcfSpRbf2MvI6jstmrSv1agSz6shsn1GATlLYUSEEkZWFhIGMFKgSCSrJUaK5qCZa/nbimVJx+OlEeNIqQ3JiQ0IeDMCKAkJRFZO7a3n6FLOeTktmtBkkiGLUBxEfe2QmUVyrfko6L19c0WLXKzzf71x5KNe1IX75R5WaLzui4LrqVUvC9KxUq9UZcl2VUalVZKn1LefXlRJWdigFEFO4EpGSCSkEoDNue47tnO0uzZK7chx1Fio3FUEH13wpW1yNRY7u9iUFKTtQ+7GcAWFfUjbkqIKi1cMVqRGlJkNNlQMZasxSVEcPsoyFEEFbaiME/cEhOsenU+GGkyURo2wgpDDaEFJSPp9PdtwASCAkZTjzxnreMKfuN2lNvsRFLwvHLQt0NI9bXdfjQQjFG6tVaAq7lj8tpReS6LzemFtqPzlXVPuarFIC5VckKfjKUEqx6dMQpFOYIJG1TcZKh5zxjoxQYManoSiIwzFSjaEIjtIaSgIKinbsCcAbiU4A254x1dYrcaQUNxnUuFWfqK97nnzgpAAHglQ8EY5xm8DkZwR+RGD/EdLdPmCS400FUuPqi+fS0t/p0ybmZ6eHI5FyXxmkI+EpG8B4DHV1S3XvoW4455wFOKJGRyUkqyk49wQfsc461z9o0KYhtU2kQ55Wkjc+yHVKCFBJCx+RCT425Ixj8IMMNxCUJynepOTjcRt3KWOcAjn7eQOfcdbYlDyFIQvGNvODxg5HnGfw/fjrX1ajOIkWP5Yr6pyKRpAYsY15x5kcQst2jMhN1EjKMXlGNsZPHlaSV4lwqoq39K6TudpfY0tKQ5R4cE+mr1HaeVsvgD1NvpuFeUjC93KTtUj6fxcFBWkVrxiBTazd0daSsN+lX6ipIKtw4S7JcTglXCUJ2gcAcDpVpTLj2FIWrcSNw3eQAoA8qGMZxj88gA5JKtVplcebKKaG0uYVtS4oAObcKAJSTtJx9O8pTkgHgKJ0jKAcrCUv3IRREBbkNVhrETOA8hxszSjUY8YiA8ma5jkiIxtB9QhlM+UTuPTqvCO9DRMot7sFJzT7jjNuVBppSlLBbdKWgVsghaMOK3qLed5SEpQq8tEaNDZbrCrGuK160lSHI9y2I88x6ckFBaS69GWVpQkgLXsZ3JTuwpI5S6M1atUKSn+UdCqa0J+kSoEZUh4HaPqWW1JccRtJACCSspUgIUrCejlSrsotZZSxDqyXsnYaSqQG6sjCVEg0eSROSoAKwXIgSpQPOCD05bPVNORJJreMrWEYtgVbVPjNXGuWk9H5hxlaVGy8fuIl2/cy/8ANmwSbRTvG7+O1kU6maN66yr8tBje45YGq0l6oSIaUIbW84mJ8y3JQ64hb6yoSiWlqSp4SB6aepi+3X49emOoxh2B3g6a1DS245ZajvXHHjpr1mPPIcWkuSlpRGqVPLy3Y6W/l4M9rKHiqQgJb9SLS5rCs+4WP8eoECppfKlOLcQY1ULmVKKlTmymQhwEfUiIqEVbEgnKchGLw7d7XueCsxLiqMWYgL9OBX0/remYVsPoR1tNMTKeEFoqS4pyapbriVqLaW+Zl2f4k3XbJSjpTSGpw58nkBEK9JIY2ssmHKlRahfxP8N7Dum2+XPbeuYVPTj6xjZeHi15qxWoxl466uLt7Iuxrulozl+WzTbJqrVdZEil6iaOVaTbtVQ82px2NIqTNKkrjIfjIVtjlw5kNBQCI3pkOskvLtk+If2iM165O1DXasa3acwn0y5uluoKTcNYXEWl1xSaeqsOTW/XRGZlp+epiaXNQpyMlBaITu59tLrs7wezSvC7dBL2qK6WXUuVGjU6ozJdCmJaWtO2pW9JSlD7ZZeeaD7Lqn0IdeAc+tG7oL7QPjkaN6vyaFZHdPQYPb/qg+tceRdkNbkKzprpIDTkgOIQ7TXnXXGkLYeadaKXCv1XS251aPZvi7t+/wBU209V22pONk7w0AXICMmV2RkP2jmV0ZuPgbuXZd1p7og7zQjKRwhphKMWKLLRlynAIEiWoc4woGbGURLWnfxt7KqVSOkPeJpJc2g9bdUIdar9Fan1S3WKm6oNPzZ9uziipRYMpxxhMlcVyc3DSy6467MU6kNy+6JXxol3A2TR6/bE+3NTqfCjmnxbsoNeWxUXYzGPQmehCVEuSkNSQHNrkhlpMlllLhdPoKS0mvcz2e9rfevYkR264dKuxU6LIkW1qPa82nPViBIKEJalN1WCwXJUQOJacfp7jsZualhlAeZQ1uVy+9zHw/u7n4dVzq1i0Jve5rk0vhtR5sHVKxBUocliIsq9OkXPQfWU8X4bSXUPCUhCgw+6EBj1FbXTX7r3Pt2qTnrR19KXEJaWJQum25MIsST4rF3VKs+r2v4V+I3/AIR802W/3DL5QhqaWpMI8owRJivpYrKrJRny4xeyBLN9WSrNOfkahUNwLSKFNmoiXDTGm8KbNIllh39crc3OhyPKXDcQUoDLjhdIZOdnXbS7nU6zHekxp0QNiXT6jHXClxnHAslt6PLSzNbUNp5fjMhQyGt5SoI5W+yr4414VV1rT7XC8mKVMkriw6Tcd6UR5djPz3TJSlmvTYRbqluOuq9Mx323diyl5xSXywkdT3x9Y2n0W7cN70WLY9cfisS7f1hsabTLz04rzEpWFsGsUiZ6suK6pLB+Xqi4lRpxWp9DX7VSDIe0/Ee23sdYkxk6TB1Isn1Gp4IHIl7UIj5FChrj4x/DfefD9amloSmafGXKUZQuNxYyhlwe9qGQ45p+JBSSCMEdedJTp5frV1OpYqFWorrjjLcin1aDNZcpFcjLCkmVTHCW3EuqUlxMmE+gORZLb0cOPBr1nVYeiKykKWNv1bFgAhwcfWAFfSCMHB/pY9upHHTdVHSFjJeLY1WaWw+mWrsrydQGO21mRDg8kz4AausuMZLb6sJkYCjs8Y43ff8A0ervWMGHgCNnnH85Pt/Hq8lwEJJ4KiQByeQcecfu846O1ycdPbw4ziQjPEoyEm6klpQX0cHCh9m+iUjaxptzTfsV7v0l1kpORz5HXi1lGMJKsnHnHPGB4PJ9v3deN+/8P9vVl0ha0JSrA+rKgN3kAgADk+DnHj+Bw67bUZbfT1JkptIkcyamwG1D6MlQC1eiiN6nEPPsX9PYM5cAeWg61TkYoSVBW7Hkbcce58nx5PjjJzx1bSy4sBSU5Bzg5SPBx7kHyOt78m+tCVpTsJz9JII8nkqycDaMg7cHIGTkdeGlT14IjocxkfUo8Zx4CUK848kA+QCecKDfwGJKGpFlm5Gng+kiOo8W/aVPtV460/4RuNxKP7Lp/UlFJrjPKI2yEz5qixc1p0vPHJ3AgcHJbSMqB28kDOCM498YPHQaceKsD6wMqKcoSTuJJOSM/iOTjgcDgEdbJUORGUA8w03uyPoOVDA3YIKEcHjGVAfvOAdhHo8iWARtUnyAGy4TweQElQP784wTg5BHWXfbcYRU5ahcQBQKtlxcebM2lVlBM/7N9wYsvkyK+umAeLFZj9c1V4LfOEw0XXEpwSCcYHGTgnaP6snHhOTkcdG9intsNhZSM42g+OcqJ8HgDn+OPxYChXToCIb+59AcdAKUBZGA4ACVBAGMDBJ5BBVtKyOBuzlW5SU7UJBOB+FtIBV5PCRwTjgZzgDx1q7snHjGIxjNVkeJemz1ZG4xbo8V5CpR8P8Aw7Dakdzu4E9SWYEqONNCUrkcI4RrzbpBTKtXfk7NozpjTL5qtOtJia01vm039aes9U6tBcDrRRLpdtRq3UYwygGXHjLK0BjapxPetrZSO1zQet3NTHo5h6BabUZywbcQEBMzVvUAzbQ0dSYy2pSZBtynIm1wn01NKTFkOuR0IOOtT210iFVdcrbdlsNSV0ehT3ICZCfUYRMrsp6nuVBCUqQ41Mh0yi1GFFdbdCvRrMwpDakJWqCH9IU7qVs/yN0dhSEhV469ap6mV6IH0IVUbS0bg27pFYjEoKaUkw0Xg3dNQdbClpfiyobDimZiZbUfin8bO6vcu7f8PlHgbZlpwmz5M2fCTenXpNNieZK8qDNdeg/4E9n2mz2WjvXQF3HCUqKSOmxzywnPmnhriVg6iYvzukrFo6eXLIYq7q6u7SKwlqcXlJkyK7WlF2bUlNt8GU844t9xWz0nTs9VsbWiOe2+dUZocflOKMmSPUW84tQd3uvOLdWVn9oSVLXuWlCkgbiOfpBWPVvWBVQh1KAt8ISsk7t4IC20L+lKAvB+oHcoqKSU5OUkpEfDJq97XQmmMyRFiFE6dUam7uTCp1GpMV+o1eoyXElSktxIkN91LhCUrKQCSThNV9s7V8lhOUalQ3eApMLxTla15K83Z1fXxF8RctWOjG+EIhxwniPktIlJyLF5DmN29O2K6xpN27VjXCU6FXdf90XBQNKEKKRLg1t+jNU6dd6W1KDrVNodvqr1Jgkp+UTJuSQhxw+iGXIx1uOOHLi1LOVH6lE8rUVrPPupRKlHyScnp33dtfjFUqOm+nFDiO0q2tNdOrehQ6WsJSuNUbjhN3HUEyQ2Shc9tipQos50rddXJakNPurLSQln3Up2uhHRi1GmVeUW4iWJeEfN3XvVBAu47n5+pEi4iN+S2SPqvylXfjOPqjoefHXoSSQOckjHHsecn3xjB8Hjn95npnow3hGiobqVVnBUFn0mRKaYMlOxpcMkguT1urbaZISEoJIylZBKicyJdL70Fte79AC3KXVFqC3AykRicpPg+vjxjK2B9XygSTNpsg2g0KgW2112Swn5Jt1CXP1WHkJdRKWkhSESXIrjTzAJ9VLUlJCWlftBrLfoVYvW5KZQqY2qbW7lrMKlQm1LAVLq9bmoiQmipXO6TNkNoUrBxvKj+bve+jRRXbRe2mOgVTZZZvmzNGLFuLVhIDfzkbU3U6I/qJWKHNKCHAbXo1xUCgNsvtNqYfhTfSC2XUuuPf8A0fztUc7mviI6VSanShOsrSGowNSbkkyRupkeVSagwu3Gao36id8aVVWk5aJG70VHcQnBL1tT5WlPUsvH1q1Cgqyv0aq3kHS3tuxnvd9obWnlqzDUQUhEDmuACNBbV4BcW034qOmVK0V749WdHaG0hqmaT27olpq0lpW9kSrK0F0woFTbbXk/5GpwpbK07llJRytWemDuzVmLBiLSPTiuFzBAIJLilEcD6kkKJIJJ9uBjL5vik33H1M+IR3b33DfVIhXFrTdkqM8eNzbLzMVCQjCdvpMsssE7Ru9IHzkJYeghLIJAI5BB8YKiOeDxz9j0ISZQ0tRBUGvb1Htl9vP6+2Tojfx+RutfThkjr6mlQ5xNwLZiUff6Fpke3f8AQ/oCajd3cXWKg4H0ynoNnNRgrKd1x0apX2+E7uGnFuWC2QEgqJbVgkZSqB34+vaO/wBn3xL9dbPhwTGs7UWpM6x2XJaAMGZA1ER+vauIbobSVqh3A/UokxDjj7zUxt4OOfUkCfj9DypFYj1rX52TBW3THa7ZF4UqoA7mJqINA1XsWd6R/CTAn1SOlaiDlM1tIH19Kn+mS9r4m2X2od2dJjyJDtuVa9tFL3qGx1x5qlXAtF62C0+6CIqYMOupummsBxKHm2p0Btov7HS0y6W8P+L6mh5Cxaq5cXOab8l1+UIjxA6lWvt5avw5t0JLCMdWGbwT4zLUxxRoytOUrrgV6HVW0/dP/wBkkf3nr1DaluIbTtKlqCU/UMFSjgDIJAJPHJ9xnqQdQ6z6j+mf8ujVY90ybPuODWGSSwPXhVJkKcT8zSajGegVJj9moftDEkuuxlKS4lia1Gk+k4pgIV3q/BO7rYusdiv6RXzVkXBV6jaf6tq7U9QVEut2gU9ihzK3UktuOS6vFvayY1DRW3lRXqrKuA3bRJrbSaXGkS/n+9TYfCR1srNjat0un0KU6zdVuOUW/tKG23djtbuG0ZK65dVgutYb+ch3/Z0G8LObYU9HYduCVbvzb7MWQ68zL/g3fuz7rpcrdOWKujMord4pQ+jbWbxGPivtce49unGyM4N2gqVxTP1GvCePHv8AQg0SnyIVKuLTmo1RNQquk9eZtdqYXVKqUq0pNLptRsKr1ZGVJZqSbam02g1B1l5xma9RDUHA1NlSkId3adzKUUQKi4A6Pobd8h4JBCcn6j6mTlX4Srk7cggsV00uimXtq49fFqzGHbc1P7bdHr3LkZSX2ZUF7UfV6aJyHdiHC5FhuQ6ClTjTLhhU2In0fUaUC5xx9ppxtyHILoSsrIKSNhC9yPqwk4I4wDlO04UAQE9Ixgb/AEoR0YxBjfKYvpyjcY1atnPjWIjcpBy9ud3LY7vU056Zx00Ti22IU3KyxSXFTEhEknTinEBOVJSC2sI9NW48ZAVkDJJChn8Q+xBHg2OtFbNdRUmExpGFONJTklQyRjbv8gnySVAbSD6g2rCk9G5LjLQ9PefpJHIUTnJJ5Cceft02T56SwYSlIa98lGc2j4sQy379Pmz3unu9GOrpXK65GcNZ82+f4fxvqObodDodWn1xZ0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0OsP5v8A6v8A1/8Ah6zOtSlW3PGc9KYaMGOnKc+MdTnbxXhwU8DcuTXsV9+toVJkJ4r3+t9eocW3nYcZxngHxnHkH7nqjodDoWoCqF0XgvzR7X710bRa0W+X3a8X+nWXFGQ4M4zs/wDF0Hkt4BdA+kEpG7BPjITgjJ4H8evY6glB8fjwT7/hTtGT+auB9zx55JGoN+Wjp3QZV2X1Xo9v27A2tespPzU+o1CSFtwKRRKUlbT9YrM+QUsRKfFUuU4C44whakFHUd7xu9pt4z19TUYz0bikZBzIxJSiN0Iy42U3yijRUp7P2/c7/wDZ9roaLry1nEeKis2WfTKqM+HwV0dAhGXAG0tlmJIlpfWQzFYMYNkLqU90JhU2IC5l2XLfKUhO5DL+FhCDwdX39R6/UKDoZa8jVh2gS1Q7iu+NVott6X2+ttS94qmos2NLpDcpKUrUGGWHW8tLCnW1JCeml6u6xU2ZRId89xLVyWHp1OuAjT3tq03cnL1l1clD03bQRfBdkCZRo8iWwuc3akdtyY5DUlydJR83ESwlWoMXuP1mtqxdJF09vRpnUZSoekvbZYNPjUqzdOLXp0dTkzUXuBuCkOMKu6uwKTJUw3b4WunIqsuQpyTOLAQ7WndviHe73Q/Ze1RY825zZMrRGPEKzxEfUW0UXi+th+HPYvh7caO8+Jq09JhejrESaSIkr+WT9lj7XX2a6fS7WtJb/u6fp5qFfdS15ualxEQb60b0I20ixrSiPKeUih3vf86Q87XH3FRSpUiFUIb0oxXo6I4JWC5W2Fw7R9Jdh2FaekaYzJh0l22mlVy66bSwFtt0gXZc/wCuqmxBYCnEIiQXG4bYJQ2w2QEJTnRzSu39GtPqDYVtxYqGaXESalWBBhMVSv1VwATqvVZUWOwuU7JcCTGaeLnyranEoKUOrBURpsodXubbH15CuVKIJJBBKjsI4JwkZ8YGBjTt/ZtzvYGp32bMOBpWNWmY8R5W1Hj9AbqL1GO4fG8O07zU2fZKlGLNJw9NQk/vSrES2OONysPPHrPehNz31z6jLqdVm5Ljkms1F6oOl0BALxWtLakuKISFDAxt3FQIHWDM/ZoRtypOcK2gAk5+jOSOMAqOThP87lPWehXCmxypYykHkEp88ckZJSncEnBIPnHR6s/T62XaY9qLqtWH6Bp7S2ZiIFNacIrN91lz0lxqPQY6ltqkvq9NxIdBUAXClLS0q4d9SfZ/hPba25uEJy4+mTynPgSRpVCHJpP4pVjL8P8Abe8/Gnd9zHnqSNU0oSkEmMGczzipWaZEVKOQ/mKLdpWVQq7Rpd8XdMh0fT+jR3n51ckKBdW+psN06BCgqLLlQlVKcuPAZYD7DnqSA5laUlKTpddy2PZNlsXnq/T7noGnkmeynQvtBozZk6iaw11P1U2t3PFQhpM9dZQqO+mK5EYRSo0fKnJrkxtCSrrNq2uxZFlfrqxI9+a33i6zUe0ntAtkJrEG1Wn1NvsX5qbMWw5IdajU5s1Wt3HOjvUGCiHDjMSZEydGiy1S0A7b63Zt5Tteddro/wAJ/cxcSJiqtdSogVblhQp6WHG7L0vlLkul23oQQWZlZdYaqdX/AGPrOpbjtI65c/EH8Q913Hda2httZnpzK1HkHAkgCRak2FxOQPuBb31+Ev4I7LtGltt3uJRZxI6kYuhGMpyAblInOQRtBAu2Nsqol29o9q/3EVKm313fwqrSdP6dKam6fdrduvuw7btZiKjZDVf8yk1Nlcit08FtDdIjNQ6MwlUhSoGXvpeVGYiU2FBp1Np7FNpsGK1EhU2C2iHTITTRVhmn0xhKIkBo5yW2G0lw43rWENpbNb7pdKVFISpO5tWFA/Ugjckp8oKSSdqvqwoZJAB6Ta8bzo9mUyRWay56MVpRJJOByQeVBKyEp3AqUUYCcnBOEqp2WvLeaxKRKUoKcpSzLlZnl4L9QWe11nrrbZaeltoRshxpi+C58lUlBoupYCvNg0Bifq0On71SglhK0lKFqcUUo+naok7cEHeD9ZGPH3IZl3Ad19i6aQ3IaaoiZVSqSEMw8FposxnZKTLdWEpbSotJZUoqG0EEAk8xl92XxXLcMyZpxo0DqXeUwSGo0CxlJmN0qOkJ/wAeqM51tATDzuQ5IS0UtlDhVjagKizVbetOtE6RM1yvRykUCQS49Z1oS1watNQpCVIbqdaZLi2GMFtL8NlALhypToCsFZDTSMRV4PoilgLcnyrmlzbdePUpe4d04nDRjG1qVRrK5aK9LIouDUSgAjava4d9mpWrF71S26bX5NVQnLbFGsgypi46CUIVGqNX9dcUPuNBIcjxnEKjjJK1eGm5u6Q6l3wpyRdtbk2jTJ259NLiTnFXI6AklSpboDoaBCAFEqBwPqUktp6dDadhWjZNNZjWtRIFOTGYWlExLCF1FwoSpIXInOI+afWcrClOOk44wQo4zXi4twl9SnHUEoKnFFxacZBAUSo48jg4/h0r0dBjlKJAhJFlF4q0W4fA+B446im53eouTEnN3fKPG7uSit3Vfp9ETtnR+07YSymBS48l9ISlUyoAyprq0J2B16S+p9z1FjBy2fIAJA56L+osh+e03aVEeMOTKcH8oJKVhCIdCH0y4od+oNuSk/SlxCdwStacgYV0vkyVHpcWRUXsBqEy5JWFKIBDKFLKRzklQG0AZJ42jd5QKJAM5qo3A4pwu1qoyJoCzsWiMspbYaVuBKUAtpJT6W4KORlKQOnnQlCyMdOIWJaltVQ+q7oHA5sXPSPW1HVGmRhZYuvAytboKsJBi0bs0cOOzSYLVNp6Q1EYPpRdpJf+XQSEF1zcXFuOKCnFLUVLXvypX1YKUag3w8JybHtBSZN3TYzzkqWkIdjW7TSksyJ8lalobbmxUvB+IlZccjyDGkiO4UbSb9RLubs62KjW2UtrqTIEOiww6grlVV8JahMtBazvUl1xlWAAnagnKUg5Q+w7OqNMg/ylrKlm7rub/XNxLU6XhHmSjlynslakhuPHQGkobKEEpCCpJUlR6FMg4xBFk+oi+qqpzZxKaMXWDzHd8yNSMYjUYkROUi2MF/ISfzNV71eI8bzLfsiLbSGXET3ptb9EpqFfccU/Uak6sqK3JUp0bnFEKxhISkJwCCpPGzkxQ5sUoeoocFZISpWeSVEFOeQTjGMqOAOc75ICQEjwOBkk8fbJJP7vsOBx1qJzezZznAUfGPJA+5+3Sw0zhJLNSMeUUXwWzy+Y1bWH/DS9INsOqzsiwixElGKFjVxXKkAvNVd9FmrGNEjOzniG40NlyRKdACQ2w0N61EeAEp3HdtVj7Hx02azXnq3V63ehQ78rUplSptMDgWhL1NhvORGJsdDm0/LTAx67KinkqwVcjJ31zr9QbgW5YtFUtNV1FnuUlKkZIFGaMZyrP5GQlIjvIb3r2tqS+SlR2LA2kGlMU+NT6O22ExKRAi0pCQEpBVHSlDi0p3fUHHS4sqTuSCo5GU463JMohKLQkipIR9TQ82S4H3uk9Kgm2tKOlOcoYfKGSuBbEjSffyDybOSdYFMwZ8xCEn6ktlJ4wokjcRyfKlZ5wOc9GuREiy0FuVHZktlKklt5tLiClWNwwoEDO1PIwQQCCD0WKUr5qt1JyKlQpkZSYrRIwRJZILyeUgnCwEkp3JOMpWoYIN/ROpRxjiwz5ckYxzfv6b6ZdxPnLwFcsZa5N0rQv6AdJtW7NmwnXK3Zk+TTKk2EqVSS5uo81De0qbVGWFhLi07wk84KvpKSQAWodQbumaxKnx1x1QyqPMpT3qMKMltKitQ2gBbW5KXG1oKklC0pOFJWlK2qBKSAcEggEeQSPPt48+eiTLiBp1T21JK1k79qQobslI3ZKjwlQzxwnnGQOs6MJSlUb9jBiNoEn7FvhsBopUIQIieIoUFmBRzZ+6ngc1yyDpp0euvBIoCqFTZGFJbdkMEAI8/UlKxlQxnGOTg525yWqjW9YbZ9B5ilW1eMRYWqXDhmPGmtYACvlfXfjKfWUk7QNx9inGAD04pCkNhIAKQoKAzxkgjk8kE5IGTjJHVAO3CkqUFDPI+nH2woHJyPPAx456Va0flwitNcBOSSUKlMHx+UAjeJX6QylNOM6wiCHnxyi5RzbG7cfZvJLtzXC3K1J/VNbYnWZciXAhij3CwYZmlX0JVCfcSGX95WEISl07jjA+oKCyRZokYSU4WRnKSCk4yT/OOMYwcFQyfPSLX7alvXrS3KbcVPjvqDZchVRppLVYp0tAUGJEWoICXmwyf2iQVqAWgK2ghJKJUi9bz0Rfp8G4DJunTZ5/5Zm50tOyqxSVEgNoq0gBIXGzhRWsqQVK2qWB0QRjIrieoWKYY+MoLZiTWc3RQpl5wRlJFY8i7jKODA+FKLeOa+tL5OvM8kfbH9vWBRapT7gp0Oq0qU1MgTmUPx5LCw42pK0bwNyTgKGCFJJBBB4462pi5Od+P9H/i6R6spwrjHlIl6oqRuNSMLgqQfyTo/5mmfmlVgmJPmq8H0+vWsnsrfQCOdoWSVYI/CMAgqGRx/VxxnpJK/pja9dUqWWZNIrqlFSq7RpCoVRQpI2oSh1BwUjASrcnBQCEhOSeloGfc5/hjrTy47TaxsGwKG5XOcqUVc5WsAePAP8Olu21L4wlCimrcmbpBlFz9HwvnPWs9NRdMORlRSwosuqQArEULpkD0gKntRNP1JCmnL2tpCloQGGUrr0NoJOZMx0CO28y2AXVrytY/CkYTgnOj3HQrljNyaPNadezskQMn5uO8dyyl1tX1eCQCjeMJA3Hkg8OPBlJ5V9aVIKQcBSSPqSr22ngEHOc+DjpLK/p7Sqm4qpUdblvXCgEx6nTFfJhbgJUkTUNYbktqVhCw605hr6RlICenbSlKLyyvj2ORZ5+tZLwh4tOm/U0fmDKhAaM2WH5G33BSm6osx0ZlqdZ+gKI+nO0JSnPnjHA5/PA56SK/NO7LvNl5muUiKJKx9MppLTUkKB3oVvQkEcnJIJAUc53cm+m7LltqbFpl+0l1TbqNjFy0sevSpS2gQEyFYSuNIXglYU220SkqQBkA59WnpdKpscb2FhJQQsFHP0Z3AkKwQkKAJI554z0u0t78uUZacWGoMal6R5WRQzQW1aJRVD4K4acbNSEJeWXKISoy/l8yArBWcL46wdAe5Puf7FbjbrWld1yrn02WvFwWJcsh6sW87S05MiO/S5JU1DjvtLeD9VhlufTztcjqCnynrpz7LviWaN95FLdtR2DStOdTUQFOVXSi4pUSdS6/Cdy3MXb9XeBiV9mOhLSJ8QQlqYDrWVuJcTnlqnXHJigss7Ql5BDqCnKHEELAChgkkjePqJCR+HBwShlfpjP63fua03H7buJDyJLCKPKcp0JEmIta0PQm2/SMOcC4SyEviE6pKBJjurQwtuWfD/wAY7rR3n7Fvd0/se7Y/N0xJx1IwEjeomCPq40MZy83Ggq34k+Be3923cN7tq2W70CRt9wQJT0mZFeOmakeVyjG4mQMgklnC+Jj8GijXdVbp1s7OqImhVpl2XV730PceZLk+K6pch6pWdAbbDjiw4l96c0taVJK4oaKCkKEQXaR8RnuC7FrrZsipTKpcOmDdS+QufS243anMbp4acXHnyKDS3ZbDdPq6GVuIEvYVNONsLKFqDZEsfYR8Xa4G6vG077mqrU5lHpnyEOjalSY+64LLhKU40lq8m3HQahbilDKqk6+yY8l5wuMNl9oOO3+IL8LrTrvCtOXr/oqxTKfrPLprdUhu0l5L9j6j0Jptb7kCGphDCZ92VAONLZltuR0S1oUFRkkHZYW/1u2uh+29j1HT1duXrQ5WTHiESMWI8QlZTbxY1JxG+36/c/2r/s98VaEe6bLTjI0NbjHTnyoCRK58WXGHlkgVcoxYdOc7c7+7dO8SkUrWXQK75to31DS66HbarSYl12JOSllTMa57c9JdCnjekMCSiiRFhppxTK0qWQh6MTUvVTTdxH+Ee21aqWuw8lutar6Zw5a6hCQypSJsqsWDKiR6vJMZTnqLkQFIQiMhxbzbe1vf89awNQ9b+znWlVUoNSq+nGplnzjGn0/1HIZkBh1QVDnICW0yoLnpr3MH0i4pQUl5sJPqdtnwzPiY6bd7clNm3Gmnaf8AcNSKKpy4bRrM1tty9JMMNpekW3CfYbDq0KUXZEdalnMhpAaBVgr/AIa+KoMNxHuesQU0/kgrb6nUK83xYJyCQGbGSwD47/D020f+I9o02UfVLU0YwqOnxYfLlyVhqGfzcQJRGyZEJRrJ1GsrUq35Nw2RXKTcFIiykxQqDMcXNirdJWlur05xtiXSZCwlShHkbyABhwqOzo0qBSlsoVy4hKyCjgZHgZIJwcjOACACMg8JHcHa7Qr5qK73sZqfptf8Z1T7FyWO45RZD8orBbVdNACm6FcsABCQqG/HiuBwIUiW2UuIezaPdGpuktXFA7nbWiQbZXIixIfcha9IljSefKnzo8NiFeUMFE/T6pyHnlPJMtidTBGaeU9UI/y6vUlk/ivttRnHW4y0yiULHj4QSiIMmx9JEslTKqgj8M9xZjq7P5kOPGERChkVReaZekF8KWr0tlOpD1UU2IqC4khW7JBK+Dwdqvp2kFP0p5VhJBznpZba0oXU5DTBjbFOKSdwTkpXvIA4IUN3soY2BOBuxkOQ080dp7Uem1Bn9V1CnPID8WsU11MqnVKOpKFpegy21KblRXG1tuNPNhSFJWgpKenMUui0GkSW3yw0wtAytBbTvOAdu/kbQokFIT9IHBypQSYz3L431tIY7bXnuHiyCLJRiH73kyyGVJjjL3ZWf8NfhtDU/Zp7vRNGW4qmcIiDxpayXyQ5EVERUXpq1F7cVkp+apyHUkEjcQBt2FROCtI2ggELOFKyTnB2k5/4AqY0wsrp2ShORkE7z7FX1D8P07iSVEAkZPBdum7bdaSVOrCHCAME/X9wk7AAB5I5UASMq5yC7Xr5paWHGY4CAVJBcUSVbVpAKiCQRjASCSACcDnBMK/7YfEu51RNvOEcXK51Ql8ZMlV/LHgWt8fV4tfS/D74f7dpxdbX0ySGI1dcRicQInEOQWeSxilM3rGilHYebWqnN4AysqUAk/zACnngEgeCM7gNqhuCS6iUm37SgtxKfHS1VJSsNJCzuS0oqSpZTuxsIKsgpCSdu5JOVIdncN2Q20uvObUMMsPvLUteUH0xuU2gHgg/SobElSgVA5xwwe6a5IuWtTKm4lxTe7ZHQolSvS3/ALPYRkIQWh9OQpJACiApSerC+G933DeMd1umZwgMoXLDdMQC0MSlGNqsSOL6hfxTt+y9q2E47bVjLU1Fs+WM7jGNFEeQSeR74jL3UkXRvcJKlDIGVKWrASkYySpWOE5/fjwOMdb5ikuCKqfOeQxTHUrjqjg/47OUVJ2pQ0fqRAdICzMUkJwkIOCeaaMzDZjPVic2uQuI4hMCAN2yVJIBCpKQSHIaASHUgfUrCQojeOq5Et+t1CKJWxEiQ4iP6TQ2NMtEkoabSk7W2wQnCEkYSR5BVukurvteENxqaMmGnp6DqSnKKynKBcY0/T6kihb6hfb9lpappS1Iuo6kyMYRQKUB8UeT3rIXFRF90MRSLUvjTyWUkLrVQvZ4qUgpXig0GhxktKUQvcHVv/M+phBbLik7Fb89fOe+K93EVzVjuartSVPLsOyKbWLaYeKh6VQl1PU7UO9anKWEhIdkolXZ+r3ZKXFCRHhQVPpMsS5En6DWp9TqFnWdorXaNJQZosXWessqDaT/AInVKqPkVJI9TKWqfFjsFYUkKS16im0BYSPlrd49acOs+rMxtBaE26Kk8GkubtpE+Y6W1OBKSSj5jaD6aQrIynAI64U7xuN33P4l7rr7zW5893PcacEpgSYRpn9D0rHwoqVyD0a+F+0bHs/wb2nebePB/wCG6Mpggyc0n0bl6ktcAypVitcvmp1RupevgGoTHZaVNvep8up4j1GVENpQ4oYSpSyBzgBI3ghQLXp8OkQLTo7wLVS1GrNuQKgfWW1U4Nhy6tGCYqQ1uRD/AJYOrkVJTgeUpNLYTEdakxp7b52+lukEKn2tJ1x1gjTKXo/SXpsChxFKjxp+r97QsLh2TZSnXwuo06K/8vNva5oDMyn2zSUmLLxUKxR2pRLokyp3bfUS8rhfchuVWp1mdBc9FbrDyKZT3JK6ZCK3kLZh01oRIUYJ9YNIdTlJU2rfIdOEIRIx4kRATA1EqOXyl+pX63nET1tbU3mpzlJJAW+bGRb7UZjZVLSHt0UtS68bnv67aw36qmp1x1dcNLhUpxEBuY5GpkcpPIMenR4jHuo+nlSifBMLCmlASAtg4KkhSSFK4VjA8gbgBuxgE/l1takURpct08zHZj0hs5yWELfUtIWnKklwj6sKBA3EEqGN2nddedWVvLWpZOcqyMfbaOAkDnASAB4AHRxkKau3wjnKnK/dMUhfn26InzZVKQtRt8KAeKA8UWX58kr6y1yngAw1+zSpZWpzy++VKUpJkO4CnPS3KCcpTjKiR4xNb8Bnstpndb3uUa7tQYUJzRDtbpP/AMRGrk+tvtQLeXTLHdcq1u29Vpsht+MwxcNfgRi8l9pLL9JplYSqRHCCsxuzdFajSLN0+YcivVPUrUuTFrVt2nEjuCqtUB2YxTqGlxCFOLdrdzT5xbp1D+WQ4YrEeWJSzLSw10R9wHw+rX+HV8PvTm2rr1f1wid4HdT+qKpeGj2m+o061tNrPolPmmDdNY1BoNEjxRVmbfpUv/BjSqfWpPyU/UBwPRo62mY7T7Vud9DhIj7IMhSUiM4liFkVsLq2405qVdh+Ge47vVdxLQYw20YSkTghNnGfA5KJKLHlxDB6sJGLBt3CVu8+/wA79NVr5ttFRqla7gdaLmrlHW82uc9T7TlV6XT6NUJX0xVfq2hWrTI3qKcLZbYhMx1ueo6hw963wvexS3uyTtKr9Zo8KJR9Vu4We1pPaFTehuv1ulQq3QatHq2otaKp8dSbesWx49e1MmSJEf5f5KkwQtf+Mb2YyvhTfo71vy9K6l3Y92OoWs/bzUnp0auaYxrJq1GotQotmsqiyW5t2SLjoN0UiqIqQY+WatCqW7JjXFLnxKOmSiemH85N/wDFy1+k9mfw5NVdWK/U2kajX7ptW+1PtgoNTiQYVcXL1fpjlLvnU256BSo0OlUm4pmnsd+RLRQ6XT4Nr0OJFozUtx90zpTfPucdSRpseUIwH1emmSCVDPpsIKIpXFFF92Oz/wCD6Pc9zGMP2/VhLQ0ZVzdGGo3KUSQFyIjNBlGKoxkEo/MZ7i7shajdwWtN4UJp40q69WtQq1QEOgpfTQahc9QdoUZ1tSGyh2NShFbdK0oUTnehGOdQvTavptK6KwhhtUGzotKqNflFe1tg1qtQ6JSoscKBL8uXImFaGh6f+Jw50kbvQ2LctpX2/VhDCXmaLUrouWpu0yDR7eo1NcqFcXV6vNFKodIplMDu6o1y5KvMhUynwW1tvB0+or1lj0UzYd9Pw+qz239tXbj2lU1uI/3Gas39p3fvcazTIPzTatU9YIdbpejejdGdFRypGkWmUK6bruKPgtvTqs6ttMFKnHFKNXusNKWnGPF04sQbGUkQk1n5cQWQSqoEpeI8emfR+E92R+ZupcGcJSAgpzS6VfPKQXhtMC2dE/6K7onI0/7Wjfj7TzVRuaz6JIddkR/RKxed03NdL7QPzDm5AgxKcFOlLfqGQhexkcLly+NX2oK7y/hv9x2j8GHGk3XDsubqJYbsgM5ZvOwyzWKehKnyWmmpVP8A1qy88hCpTZ9IxlJUVJcNPZ12oTNCu02l6IWFcrmmtaRZ9q2yu96RSoNSuSI/bVCZtw1ZLEx4QnKmlVPV6D85uZDcbyl+HLCEOdINO+E9rE47NqsH4v8A8T2mV2eyWluDUnRp+2o4U3IQqNDtdzRdEZqmOCQQ5T3JjqlNoLQlBp59C2DQnKfcpb2CcRJItxjycUYZSAaky9vrRJ61dgaWz09nFJyhB004yjKYhI5NFZeJHJm0qUjr5Fa6VMSX20srU/EffjS2gBuZejlfqJwSCoBLajwM5Q59ICMqwo6g0+y6oEobebWrAzkIWFqAwQCdoPuOOcjz1OP8T7sBlfDY+Io3p1qBcVavjR66KlaV6tam1ahQIVUu7T6+gqkai1iZS6QmLRxcVEfTdqGW6U3EjNzokWW3FhuPLYRF5q7olWNFdaNR9CbpUoVGz7nrdDaqyG0mFJajv77RuWLISp1lVGuqmu0qdEktvSEOU+rtLZdUpSVmYbbeQ14kiRK6vxHhhW8+DAKBaDJkh1Bt72zc7LUYThKQJUqURTOPy2cqi2qUOQ6QisRkxKg803/k1JYfRxtAEmOzJKUj7IL2wfkkeOnAdut6VC0rwtSq0SoO0uv0W64DsCrElDFFamrQ5Bq7jjQCkt0y5YVIkOCR6sYqdaQWll1SSiNfiqZj0d9xSPWciyo0lIcDihJgVGXDcWohRP7RLKFpylGUkEb+VHJsysv0SrJlsqSPTVClraUElMv9U1SDV2YTu7O6M/JgMGQgAqWhsfzQoFz2uvPb6sNWAMoIIv0S8iU4vz9mxRZ9WEdTbzhMU4og5a8ezfs4pv8Awvj6Q/wn7pk39StcI1XTTUXPaVbp9jQYtLmKciw7OtiRWq/U26UytkBm0qlVr+ectEhfqrt2BTWZz9QltyKg/LygJCRtSEgpHA/dxk+Tj7nrnZ7LKvJ0el/DZ1jj1FiNp/r9pRVOzfX5cwGMJmtVqzZN16LT5jTchbr6qrS7hdtZuRIcp8WTAp6qa7LW4oOxeiYxwgAqQcEqAVk7SUqIUAoEpJQfpVgkhQIVg5HXWHwduv2rtOlqTanIiLWZekffjZ4TymRVOuR/jDax2/ctTyXOVkS/LYV6SomHBT4K6z4NQkU2QiSwtQUjgpCiAU7skEeDjKsA4/EeRk5XeBLbmxGH21bgttJJ+k8kZI3JyFYVuSCSSQBkng9N+xvJPj/n/wBOlEtmrORSYj6QEuqKmtyhx+BJIVkJKcgpIJy2dm4pQ4k9PHc9kA7uNovAln18WrIWyPTG2o+njS+rph2G81dBQ1GEIpyAf3xfzBwwl1N9Rdfl6aB0Oh0Opn1y70Oh0Oh0Oh0Oh0Oh0Oh0Oh0Ota676u36du3PvnOcfkPt1tGLJ/zesxiyf83quSsle3HCPf3JUAT/ALBj95zzgY3Q6MyEIbQlCE7UpzgZJ8kn3JPkn362lI0w92sGS6S6w5zeaKHN0KzR0fmWcqIhbVtt+1mMPv8ATH0LPWTHZKz6hwEpORlQRuUPGCVJ4B5J5GRjB5xslQ2U4W2nYU58lSgSSMHClHlPOPbJyRkDGum/stiwolwKRtIO3CklZTlPIODkg4z9QIODgod1v9LSHTqRKUL5JFjEksbbW8nim/p7dH6Wx19bUNOJEtAly82gkQGWLzYXSCKPWmuS46DZ1JqVx3PPbolt0an1Gs1yrv7ltwINNjGXKUlnclUmY9Hbdbp0AKaVOnqixEOtLfQvqJDUPXmbXJj2qWocSWWJFQhW/wBv2mFCZNUuKJRrnQuXasagU9aE0pzWe9mZwmVa6JC1xdNqFX5AkVWn1R5ha83vf1nhXXqZQu3+ryEMab6PwW9bu6Crgq+VTCgkVOzdPFIYXJXW3LjkJpUuRS4bYmttkAoQQyt5bO0zR2desmn91WtVMnwLsq1HqTOgFhvsJjt6ZWRcaWX3L1nBx5xtd7XktiPObUG2xRqPBpjMf1GZrcWBUPf+4T3+8diHGA5lH3eUUfliRMSojF+saKOunfgnssfhHs8d73HUjHU3IfK05QirKBG285jyiDLFe5ms7THQh7ThV390PcLNh1LW2NRqxXa3KhNORrU0DtClsZYsSx21Oyw1LpUBTEWbWliRUbkqyXpSwziPFQr3a7S59Xpdx64XTENPvHWB+HOhUiaCmpWhp5C+aVZtAUh5CJDL1UjzplxVJ4txfnZtUdSIraIwW6S+5ZmVqLdukXbemquN0rU+r1C9NVKqhlSZUHSrTmbEqk9EmeuSWnW7oqLNKpjzRcjvIC23o76zFcYkPekRIyajMk05kxKW8ppunQCP2saGw0W22ytKicBoMoQkAKaQyn6suFKJB2jthocJT4hEJymQKb92orGl83auL6iPxt33darPe62rLcQOUdPRJvoLiVbl804wSpv29SVJORnJ48ZJyfzBzk9VuHORlO7I3ZIyBwM7RjnHtxn2+xvQoM2qzI9NpjRkzZKFfLo9Oa6MthO9S1Q4cvCklQIDgbDmFBOSCOlWql96SdrVPTXb/nytTtcX4cWRbWi2mUNd21tFb2v/AC8Ovv099+n0l9KnWhmrOQRsQ+qJ82GpSI7R8VfFnauy/M/9ojqT2vq48vl85VFiVS3FqirCTYdMPwT8C91+N93PS2MJaent3Qlr6ktNkHz+UoRVlDLHTn737A2dY0S1KLZMC2bs1EZqsqpXMhUWwNKqM6qPe1/XFJSyY1AZghMj/wCTu7yqpTHUqaYaSytSCVlK0q1D1pvqLe9NsuzKBQNau9wsVamUzT63HQdFO02BJbiJRUr0mstTaelVJSwpFSjNuoq9Qmop7b9LhsFC3fbB0+7ztZahVbv1SconbnUL/krTetfjNt6h6vx7WQ0F0y19M/l0PWxpnQqlCmH+UMoSYVflVCXVGUpSllL0dS4Nd7PuzG16Tp9YqUxqzU5/p1OyLElO3zqxfN2TEbFS7kqcRuoVCTcs4gMvNVqUxAjbVkVJOF7+XPiv451viWWvE1njJqEbTixAoZI4jdkqvjleUr9KPws/CDt/w7sdDX3OmOoaRxHShpy5xiNpchlyuJ7GEC16Ufto7XRo9Hq+pGod1zdX+5DUcfrDU7WqurTIkz5cgb1WraERZWLbtKh4+XgU9iTJyHXVKfKVhKVMvvVfTvS4PC7Lpp8eW4VNQ6FAdE+6Jkrc38vHj0ciOlZcS6St0ykhtSAPSXvG1kOp/cd3CVq3nrou6o0Ls70ml1txdGn3zEj3dr5ffoJYaZm23YTEip27Q51QmTY1OZbYmLWlueH0Pz1NJaaY9rHX60zEaUuLdGiVuXTCZEg1isQrn7qNUFchqtXPeEsAaVUatl5aZNOhFqe0dpZEctLU7V2ptpFqcpSS2UpLLiiF8pFRiSvxnxyvN3Qnp7IPlQBhHjGJJqIxSMgb9pN+MRLoLHf9wvxK7C0qpyaCzTLkkX7VY4dh2HQPSrVdmVh5CCh6vuIQ03alPkqIQt2SqdMYCHVyKYktoDsEOsGofcR3b1WoDWm+K7ZVkziy41Zts1VcSqPIQVlwTqzGDTZKilKNgg4LanNqzkAGeTQbXt+Y5HtqhtUmM0kgPPzZNWqK0rCTh6q1AuTXkBI49R4gcnGVE9YyltqOPUCVIJGS2VEHwQCRgeOcZz+7yfsdtPnGNklGotgfvSuiSjVYGzKZTomfcZTikIWSG5UgCRrAWp45NMVstB60tkWNaWm9MRTbSolLp60pSl6qtxAqtTlpQGy/UKm8t5+U8tCUhSt6BlIO1XBB+aWkDLh3OAEF1WVLUCoqwVYKsAnwVHJ56042jKU7Rt8pGBjPPIHjPn8/PViTURgBCPpCvKuST9XtkYBGDyc+2On79mJhCEayWlD4ozXirKqq9vfpq3G8nHU05yQsY8U5FYTCknKNkjNeI46MTdSQhQUlJ+kcJUAAcjHsT4GScqTzjGfHWNJkhexaQOQcA84SCQSSD7nxxjg+46Ky56yE4CftlRWkknGPwOJBJweMfuA5619VqrESmTatUpMSBTKRGdnVCbJe9CKxGQnKnXFq37dgCjvI24URlJ5K+Ogx02EwBc6kpSkgIhxuqsoiAF+K6T6m5hqkaHGeFEedeOUlarkuPYznPWdcfpzoblPcbCkPowoknCUqJT7KSVH6VEg4GOACTlKc1tSWUQaNC2okzcJbZQAkNQkApfeQQefSTkDBwcknkg9Ydoal29qFTJFYoTz71OjzXYC576FCPLKCUplw3SAXIS0AenIWEpJBBxjHSL6x3tNsayqrdkySmBWLvkVG07AbdUQ/GhsutR3arEbRhSDKlF0w5bu0PkPBoL+XWEEsari1CIA1+blTJLRrKD7PFcPREpHBaKlniZSMaxyBzyPCZVto6SCqqiajarzIiHHJFoacLabYTkBMq5WkIdTJU7uBk7VO5/ZuLH0KH0hvHSryJmPp27yMEpSUgA5IOSSTuHuDgY/Pykmm0Y21akCG62VzZTRmVGQopLz06TucccUtO3ON4QMgFvacJPRjnVDONwwnghO/AGCQFKycAkKIyE8kYzgcAnQM4tFoycHJ8ALJ9qAusX4VtmRnNfzSoqI/leMVVkVHiFN3SNoXW+dq2QoZRgggBIyTxgg8qHnxhSf3+40tXqkalwp1RnKDcSBDenTHlEobZjMD61qX4QB9I3KIAB3ZOD1pVVJtORgKP2SSc+PBxtOMjPPHjzx023Ve5ahfVz0TSC35MuHCqCmZ18TYi1JcRb2XS7AQ8E+m27IU1tWjd6iQtBUkJcQVKdHWNW4R0+AgLxS4gshJc+XIiHtbjy9Itf0QB1CXFPSTjKpLVsoWjE5VzZPtdVeDpvKn6l3XXNWZ7bzVKiOTbX07p8hsIESksqbQuqsIWj1R87sdcEnJadSoJRkNEBaKgqNTYM6ozXCluDCkTZTpHIbbSpTp4JBUSSAdqsAg846zaTTINBpkWj0tlLFLpcduBS2uAsxY6NjO/wAguLwVcFWSrjPkoB3B3uKNY0ykRXQqdcfrUlhKFoCk7iEOOhKSCtLZyFIKkgnIIJBKDpCfL4rXFZVYNAR5Wq8lOTYUicumpYzFnc+VJnixQoU5wZErojGLH8uIiMlYstUeVbbVWjrymrTHpaUgYw2or2L+43p5+rCiMEpHlW9feLe0JCSTknPsB+QIPJ8HPsfPs3zQi6RJsODS3JC3ZNJUYMn8ZDamkkJ5IJAUn8KtqVEbcY5JW5p9L4KknJyc5OTnPPnBz4JyB5HnIPWfk+oZAAURUt4h9KurFo9z2cpZaUfmIokCJxs5VRSl3Wa/Up9zq+6/uOVqQngZHgYTuIJyTgDcrnIH8cdF+oTkKSEDBAIIAwSVAODO7cPoxgZ2HKs4JAG7XT6ott19gA5SkpJ58qSRknIJ4wU4I2nzuHRJnVkMKwtIwnJOCEgABRUVElQBHB5H4eR5ONuZCgOOLEoUigosoxiKkbk358OOj5aBUYqEVCWJVdSeLgwgNl+2fJ0Zl1AnIA2j2IH1Y59yeOOcgA8e2OtbIqbTBJdSoJJ/GT5JKvPB84OTn+OeijMuBlKNzW7ckKJOQrAAwT9CjyB4zjjOArOOijLr0qoMuskgD2IPOOfpPICgVDjISAklJBJKui/mykiFN5WZKSAcRWxEzKpcjL5qzJbeGjGPEq0vCAYHPu3xMlWufSnSiTLlp5VtL5eWpKsgJHAIAAPpZBJA5GUkAA8BQPRfrNRo9Vo82j1NtL1PqTK2H2HkBLDraytJO08BacLLauFpUAoDgnplFz3dXqVV3vlppGHXDkg4BZUnCkjdgZOVK3FZJ/ETjq9S9XprjiWaqtRAAOAUlAGClK9pUFJ+o84ISACQrgpI5MktPRRRygEbi+YAIuOKDga6Z9XS5EuMZX6RWStoBUlaox4oAzXhYrQvKu6B3EmmynnavpXVZKERSXDJet519f4VvE5ajtnO0qKkpQTwcdP7gXFTK5Ej1ClyW5sCQyh5mSwpK0K9QAlOQcEpxzg8ZHH2jxbrNGuOkSqZKcbdiz2VpdZeKXkgFJSCMHclTZAyUlBJITkp5Og0m1ZrOj9wIsq63HJen8+R6dEqKyXXKU9Ic/ZNuvn6gwM7ClwrCUbcEKCtmCOnJOXk+l2MqKqvVVNot5bt4dJoz4TGV6lF8fy0I3IVlKIiYY+1BEb6kxdnbEk4CcAnk7leDgjO0DweVfTnyQM9Fl+U4/gEJSkEkBOckEjAUSecYHgJBPOPGNc5WqZIZbeYlB5t1DTrS2lpWyttxJWhxKkqKCFoUCCDnGOAM9a5VTUQoBIHjBA5P38lQH8Qc/l1ll8tPlMdMF9ck9WPYkP5R8ZRf06PnuI0xYIP7scrVJclLbceKpcGet0pRWSpRyT5OAPAx7YHgdUqUlIKlKCUjyVEADJwMk4AyeP39FRyob1lSlOKP3Twn74AKgQMk8YH5cY6AfbWSfUGeMlRIP8ArYz49vHR7paurGMZ6pKIikYxUao9RT4UL/k+xXzGPjSQqh5P2QSq9zw9ZNTlMSm/QkMNyIigpCo0lpt9t0LH172XCpG3H05T9QCiQob8BKK9Tm6CFvUkPzqM8FKm0FTiguNuKiZNOcUolttoYCm0pAKAooayAkG+svpS3vS4cKUAQNwJTtUlSMHBUkkpJ/m5UM/fpMatWflF5WFAIKUrUkEcLGQhO3BAwrGVEkkkFBCd3S08+pTxl8C0+PoBb4+v0QjVahJbv0l+9qNB4web+rY9J1ULjiPuqSyo8b0pDqVIcAAXtStKkIUtSQClWDn8IKtxBBUeqqi4l11vceQkJUE4AJIAIT4SVcEkqPuT563dzU2kV9wyqc6qC7tWQtsfhzuJIKdpOPqC9u4qAGTuwUtvrFSuC3KkafWVKfiuHEeT/wBGUnK2wVJCkjH4lle47vsoK2mbaMOWY8pwIlkuEolqcSBZWLbMoenz02y04ci7rkOSXGThja8r/Ri4M/QPd4xXarHemUQop9dSkPNSm1EPPOMbghD5GA6yoPKStJST9eQsLOC7rsh+KVrn2YT2rPqj7l96WLlMS52lVaeSuDRPTDiJddsdx9MhMeetK3FIhb4zbTyG3EOEpKUsPj11Dn1pcKFltS0lC0nICTgIUCkgrSRjhGSduSSMk651xaoyj5toNS2VFyHMjgJlNLyVpQl4hR2kIUClSS0dx+lJxh42u63GjLjpasoRqpRSbyZSMYWxADKLm4rhDve3bXdMdScIOoZ5YsKMrwinG/qUe0rb69e5/QLtT+Mxoc5rb2f37Srf7tLPt1Ncp+n9SVFoNdvaRQUCS7Q623Nei1Kt1efDdfXQP1PQpaodaiRmpzqEy0yFREWN2n3drzoTcndR2rtXDp13sdm896D3IaRx3HaRddeFs72mtTbAgKc9en1CNCgvwruhspcixalCWtiGRMcKmn9iWvtA0TvdusXjZlU1H03dq0WoXhQrSnVChagaasuOrDV3WBXKdJTOMSmobeVUKOIwiPIbiuTESQ236UwOsX637DdaNPfiodi2pMzV/Ri/tlK1EmVNx2eirx62xHS9Rb6DkioO/LVVTT1Oqyp0eQaeGkqLTp2IdfdqfOY258SYYuqTUuWCRJsTlywe501brQjpFMGcRRgvkk1OMjDwcEiWOT5FvqaX4HPxqbC7s6pTu2nul/Vdkd0URiJQrXrjraYVO1ih01LzZFSefLPyl4Q3C25J3qcRNLzrjLbQUeupGtO21Io0ugXBSKNUaDVobsOp0yqwETY0uM62pv03ErWkfhUpRWSShSW9oH0KHzqu/TtsszuAkUnvC7a7QHbhrbWKGNXoumts171rS1Sp1PaiVL+XGjF1syVQW7pZVLDlw2Qt5uvNyXFQUQZ4iLdjTD/Cf+LnUO7i0qNoRq/PbpncxY1Li0mozqotNOc1Kp1MSpl2sOreWAmtwC0lEuGpAdcW6StwBKFql3b9rCRHT3I8ZF2DGi7TlSWYlSCOAwvVe9/2uy0dCW522lDS1dAvU02MZXfBgjHND6FndWPltmcl2te3aNcMyu9oNwMXRpJOqMWXcPatfNwVFukwG9z7lUl6K3VKTUHLImTHB68i3ZAi0GpTlhp2dCaKHoy1aed7dma60ufUbaeqVAuygpYiXzpjdrBot8WLXMqS9S61TVJeYdiLIQum1qlPzKZU2PradbWlTIQGo3FUZq45lluS2kLyw6hToSopQsp2+EL5Qon6Qfp+kJSkdIHqhpci/wCp069qLcNQsnVCiOevQb4pLbT0pASpJVTbkiOKZjV60pASWatArJlxER5DiW2m1SluCd9v+Ee27iBOcUmSqPnNAloPiLa0XS22HVJ6v4m9xWMNLQjCWjYRjqkmMfSWHCHEJSi8cMs4xfUlDuq094B4h1RISEg7cfTlRSVf5P6dyisA7SBzkAHrVzdTJ8hAU28CvIAy43twkKwBwBwPpwBkAZ+o56jv0/1wmzq1/gw1MhxLD1NaiszosY1OO/Zt+tqQ4HavYNRYcO1KkBkuWrIQqo0uR83Cff8A8XQ64ubT81LudzqSsp3cggDIJG47kjjIO1WSrGSogZkWj8Idu0+MoBFiXXKTH2s8xazyc2ti55DH3H8Qu76rpRYzYSobZzteJcnlG5CJStRvjSytd593v1OI9EkFakuAbSVb08p2hKShSwQUk5+oAp+nkApUSZQbjoL2MbW1ZJUQFBHKQc/SCSSAQnOVYA5x1XSGnDAbfWCpLmUhRIPO5W4Yznyjd4AGcD8y5fUxcGjNNMhTkmsVm37cipSoNqaeuKv0yjKnuLVx8pSmZrtRnIaS5KMSO87HZcDLpQfp9t09jxhtw+VJudMiIoXhbIqHh/NeI46dtrvNfe6MNfcy+ZOceRGVNUUf8t4E9IhS37b2nqEuI242diFBQSkZUFD1DuGSR9O5AWN2eSME4HWXFQG5Yk7Q4qBHl1BaMJCjGp8V2fMdGc59CJHecAKVp53EZABqgRkQ4zMZBylhppvd43FCAkrI8AqI3Kxxkk9bCA8FSKhAQkuSpNk6mSYzQyfUNOsSsyXEY9t4KUbsK27gdqvZt73qm37RuNUtlqw1Dl+XhGNxlZG15ZlJZWBQ1avfaanvtvp8QjDiBdW5q38pUpRpCMQiKWr0hff3qNXtILe7Q6rQHILZj6eMsOQKowJlLqdOrESvR6lTqlF3JMmO6j5Z1YLqVKKCnckrO3gC71O4TQm1deNUKmz2P6WyL3p95XCtCrg1a1XujS2ZUk1JyWirytLI1Ut8rWiUiI+KNOu+oWxNQy2idQ5Zaacb7cvjMV9VKpXYxT1P+hFqWnNx1GYAMlUSgyaDFcKE4PMZFxpWnGNqR4OBt+et8RJpUPur1bpeSRUqxBrDZWgpKWKpQqTJaO36VcrfWgjzuacCsLBJ4s3W2lHve71WPKPzi27Tjxk+LzbkKL4/Qr0I2O+D4O2G1JEZaex0tND95rGH2LKkW4LWr6bTqnrVqJ3CXSu+dWrmTUHaNDj0uiUinU+FRLbtqhIKxS7QsSzaMzAtm07dgBl0x6XQqZCYL7kidO+amSJEwlmwaopF+UuqPJDrcNie7GYUpI2MRoMpTUVDgRk+m2cB301KwCvYcFPTjuyrso1y+IT3A2v20dutFj1GuTUTazUKtWJQg2zaVvwgz+u7suWqlKzFp0BK46ShlqRJfA2x2Xdi9vSbrz+i4wu3vt2vfXW0O92xNb9Q9HrQkXDfOlFM09jxqHUIaIsuJVaXb9y0HUas3RGkwkPMPxX69QabCm7nEmQkB1LazW3e30JRNXUNKc43CDKIxiMXA4u5DLyUkbquoxttjvN1H5u30mcI5lYtqcsqjRV/z8Y646q1Dcg1GXGfUPmWpLyH2glQ9JSV8DcoAK3A7hjwPyIJdz2g6MwdRbtk1+56Wu4KPbEuAumWdEcIql83OmY0mBbcdmN6892nh96NKrSYdPmKcYEaKpUb5pt4Nkv2I5EuKU2+05HmIbixaow6lQW3WIESPCqrhUUpC0TpjLlSYICVCPNZC0hQ3K6UPhy63WR2lfDB1A1vpGl1EuDV+va83VpxRLjj0ZNWv2uzJ1GtBNr2xTKpU3HaXblGZqKlyK2abCRX6nBMqPTH1Sg20nG7162unLTlcdSvXWQ84k8QyBbliKPLK+fDPbNDd91np7yDE2e11tz8pv1S0SKRktII8vvIBAa6cN22Wjob2NXc53cd27H+Gfuwrs5xOiekb7EOz9I9Oqo7TZM2lXXrRqDV5q7PguW3HiekzZljVet1Gh0l9EGPT2Kgl+OHUds/d38Np3Xa4O7zvr7o9F+5juenyFyIVHpFy3RT9LdLmWn310G2dL7fuDSmm21VaTbLa1otaI9VZTjBckuTppe2uu8vPdjotqPZ2plzVPXqfcMusQq7p7d+vtFt2RFTO0dr2rsGj3s1Ztu0eqVlMSuXZRbDlsvVyrAM01ir1enUyUYrtOrLrKB92sztYOttznsxZ1lT2/st0mNazuvE235+o1RkRaXEardUqiraYgUxkTqsmc8xERBZXHaLYWtanNrbd/w/5wTlORyRiURLoy8n1kvagcMmyXLpz1/jrdaMvkbbRhpaasVV51dVyKbCmsnHyBVfVUsX4gHZ9qfaidWr915syy9ELGalXLZ1i1Zyh1al3KxHaaRBumZcdsT7ssjVeRSU+i5QrEsCuXFNplTqMJy6aRT5sSBGd5v+9Kra+fGC7iKbOolk1Sh6IWWZdN0ytG8qHU40S17eqpMxd1XPTWY0iZMve9JUSFWL4forct9mgwaHYzFOqNOjy5Mhofw+e16oVrtb0W+I92QWzcVXRZOotVtvu+7I7jqMi6dL9S6hZUN6PV9QNMH67JkOQb4TZ9xzatalGuNU2qwpMWUmjVWLTkvxR9B3SymWnItC2LxpNEhwl3PQadV0SnaI1QpsmFVYDE6MKtT1uGaxV2hIdROMxLe9QaW1yVttMG/0tTby43jkDdicKKmn/higSDPqOQRHvs/cYTi689M1ZashIFK/vkoYAlYjKUZSLS/VLlztdqnw3NJOy6gI7t9fYVSr/wDgjiR7ksKkVeiOSr0r+o7rKqDaQetqK5Ko0ipJm1Gm0PSy2I78luTcE9E+rOstrmVBG10T7X7v7kfiP23eup7iHoHaA1dWrOsb9JbBt+r97XcHAiuy7Ptmoocfal0Tto0epFmWDCaLqBS63U1PNJLKEsyJVNbKVfOteqlnQtPm4r0bT+PLq9mS7hpK6tY1nX26h+nytaa9T1S4sOu3PYtJeqTGmlDmNOswrgjyq626uQ803TXPaGaFWZ276dU/Tmw2pjlORNm12vV+tSDPuy972rxRIu2/b0rTm1+t3XdlSQahWKlIAddcUEL4QD00m6lrQnDikYCmFlJSpZzaxxb4akj6envX3nz5QaqVUxVUIow9VDK2N5W/UKhSqFwV+1tPrWl3Hdleo1r25RktfrKvV6ow6RRoYe3JbMidMfbQjcWXcFtDm4pUMABJVG3fXxgeySwrqTaVw6jxKVLJd9Kbc11aVaYNSGGyj05zVF1m1J01vRNMltuofptRftZiFU4qm5kB6REdYfdgD/Sd++a76BdemvZ5aF/XBpJYUR+wa53Nao0DE+4LQ0+1SXcNv06hUK24TrNUuSqVCi0Ov3O/+o56FKpkSm0yVJhfric01wd6/wBM0uo+r18UvRTUa69WdLabXpMSydSL2s7+QlyXnb8dLKINZqVpuVe4n6MuQAtKYkivVN0IRuUtAVhci7b2qe70XWlqGlHIjFm3eEpiUJjMvZWpRuFb/v0dju46HyHX5pL5vzIwic2ARphO6VSdxjG+LH0Mn6JvxqtJO2f4svbFT7x7er1oV3dw+kcCu3BY1Bo/qVuv3PayIL0+7repK6C5VaJWJqoUIvwW6LVKoXXnXKfDdl1gu0qNxB92cJ7V3t60B18epk6n6hafUin9s+rkxUd4N3BL0xpRZsGsqSp5biqzQbKhsUC6XUx24QTT6Hhxt5TjSpbNBvh9TtYuxix/iLfDWvPWHSXXjT2bc0vWTt3h3tU6xRbjuDRWbDl3fPsKvvvMXDIqdQodTol0SaLcDFWhykTqpQ6a4oyoEaNoO5iiudxHwydWu962qPalp0vVfUHTxvVKzLahTrdte19cbYulFBu254Vu1lqqfybmXHSEwBcbNm1hmhyadNpy9jq3ilpVt4Ox1iPLlGSYkj8tUx5Y3cc1zoRcqC79pjv+37jTnpHLWiS05tKQhEbjJBLArMcNWnIeaKuqRVaTTqugIakxgum1OK0UJa+ZaccWJiGkkqDkhDiDIXylSyCk8K6KUdwtOpWng8pzgHG7jgHj+vo/TLAvNulVSvM2tcsq1Ka5HcqNxQaJU3KFDRMLyYiplTTF+SjJkfKyW4pmOtesYz3pAlCgCkxS3xLisvtloSkB9grIAWyMqC8hQKQQkp+oAZz/AEepJoa0JQhKMoI0wI1VeQBfMfcfAZ8PVfb3aam2jP5kJMOJfplnlYLYCTYqI8Xrv2laQQ9L+2CxdD9QZNaQa5eXY93HNVuJPGKVC11vqmaQa6U+lzGmpMNg6YS7qotfk1SmT6rCjmTHkBtiJFmVFieTQm9Jl8abQo93uIVqHZFeufTrVGI0FJS1qHYVWeoFx1VsIVvEG63Wm7ypCVoacbotw01EpmPLS9Ha5jdI+5uj64fDs7Yr0rk5V03xolE1Hsm7KwpLketq0hjaS3Xb9uXZVoynZKJMHT/uMo2iSapIihEl9+ZRJUWA58u40rom06QzaWtrsiU29S6b3EWBS7wK3Upaab1a0woqI1Z+ejNqfnSf8JWmE+0rmVPQlqAP5D1dTrcf1WS50/8ACOsQ7TtuM0GET0chwFBL0mZAFj6jxaSeVPirt251u462puNL5JBkByJEiaJj1XUooGVJWBSDomIQ9Nwkb1HYWzykDClBfheD45B5GAR5HW+aGXU4GCQR/AJUcZPtkk/xP36sNAbQCEp4UcAnbn6jxnGAT4HtnAz1fYOHUn7bv+6ephq609Wo6s5fLJOLXhF4kuJSRGuSRKlI5SFI9QCekactUjDggxYLdShzMraytRbcAFB01LodDodTnrmHodDodDodDodDodDodDrGlf5NP/bH/dV1gdbGSkqb4Gdqtx5HACVZPP8AcOetcAScAZJ4AHkn7dGw8P6/6HRsPH8f+nVxtvfnnGMe2c5z+Y+3W4jqS00Gzk+nnkJUc7lKVjABA84GTz+XPWEcNt4AUoNhR4GVK8khI+5P4Rn3Az79bWnUmpVFCXWKctLZVhDs2WzTm87hnc49MjhQwoDhCkkkBRQkqPTJuu4yjPV4Vqadx+WVVMY1IMRk8pyMyaAeI2JItnsIy+XF9OpISc7cW8kplxUCiqZVeM1UokpUQCUjO5QB2pA5OTjGAPPOMcnjpN9RbwpVh2fcN71pwt0q3KbOq01QO3ESnxXn1rznI/yY9gUkJI5I2ra/SLfosZcy47yotNLSUl6HT3VVaUknarY38gJTDwBIBSHFfSQpeBwWWd72sfbTp1olc9Lvy2NVdSXNQKJX4NNpFuyKdbsGa3T4rMt6H861CcnwXJQkM5WGkqCCl1xCwEpMR7x3LU1YvEJekAiSjURfFi+Xkti+B9KdS/tHZ9GPctCOpNYWSedOYsMvGhOSYBQrDlYQuzTTOsd0Ou12XnfDpe08a1Dma1am1uXLEY3TqjWZqqxp1pbIXtWXLcsagvU5VWozZ+cExUEOTGi4ppjpCSyanKqdTUECZKlKkPJQENoS05gMMstpSlCWY2HA2hGxKW1EAAADov8Abtf+l1j6OadTdGO2HT7T6Jd9m29edXp9wNSa9UY9arsEy3X31zWYch1x1ADCnsoLyGEKUlBSEhU7n7ltW4dtVqo0aZbtAmwqdLkFFNtSjIiYjxZEwIbjmPlkKTE9IrLrmA4HCklBSuGcdV15a8oxJS4yuVCkc3E4hxotbG65Fh1bHc972vX3H7BqbxmaMQcKqxi1GNieLCjNv5bem56O9uWrV5a3a66pXvpdUqRBdpFvaUWK5VpEWkUmZblOhvViu1yO9LcR6TdXrdUS3MUhh5U4UtpZdiEBBc3Pp+mdnRJMrVvXbS/TlNPhyJk2Ea6Llq8P0tuYz1PpRaMeUgrxLYdkNln1Gi38yFOlhm2gNfvDVXQuxL11KvW5r5ua76YqtzZ1yVedVmYXr1Ka9GhUuJLkPx4cOFGXGjMpbTgORlyFJCl+ky4mFRdJ9P59Ok1myaneeolQhNzrA0Ytq24a7mumW7kN1K4UVEzolDs6Or0vXqLrrpl/NqUIyjEPTZ8Q/FPce1ds3FanqeJjM7xgEvIRtAXw21xV9m+Fdj8QbrR0NloS1+MouspKtO2PA8UWjWB9ImMdKmjX/s/s2wKhqEq+9TZ+k8dyMiuaku2XXaTaVTqjankx6PS50kQKm5Ud63WKbFpS3DU6hLixX1QgpqQ8kdF71q1T4K6f2jdkt5JXcsBmTppK1XntaWrv6fLX6qqy9B9GtXTRbb2NtCRIn1OR6ipafTZOxY6sQ2JerGrst+76ZQNa+4a0ktpg2xTJUWJ289pFLiJcFNNSpz8mo06tXLBaEwGFFjStjtMb9QwfWY+bkP020Xomnz8q4qhMfurUiuNpfuy8amfVEyqFIS43R4akj9U0SMB6cGkR3REjAumOhpLzgc5q753Dd923TuNxrTnGQJHlmJ48jS8X3irMCT5id8/AnwX2rtfZ9vPS7XpbKco6Y8UlKbAKZcoxbBYvpXzJygNBpfb/AN0+vVEplS7u9cJlnxKvV/mJuiHbw/LtOz4pnqKnYlYvtb7ly3k02ppKnHUrbgSRIcLExwOuJb1VzXBpz23V1GgXbLpVa1z9xdepi3S9RojtTRa1LZKWlXjqvf1XeqFXpdLhtuKaiF6rNy6iVvNJ3pjLUwcdZu4659Qbhm9una09Bq900OWqNqVrWVfMWZpDEWHGZbKpTRSVXa3sWlhpMhsw3WlIIeLh2MY1o7kdLu1e2q3phovUp1131Xn3arfuoU6SzKuis3e9lufNqUxxpZeQr1lIZaaXHLLCE4b54jBpwjOJFoKebEHPFCgCxk1LFVYUqWPpzjtYyhAGJRa3j2I8pKXEQKlTKx5CN/V++6R23SHLjvq56fr13VVqO6qVds1kVSg6WMSvTeaotn0Au/qygNxHVBcZaBMqCnG0vSpb3y8UKjDuLUm7Lxr9UuK4qtLq1Yq8x2VInTHlLdAWSQyEpKUIbSB+FASN2SBjjpNa7fU+6KnLq9TffenVF19+U++4pa1uvKLilqWtzIJUeBkhKkpwhOBnQCeoHPzKtuSdocA8knyFZzk5J8k+fPTjpaVhLjivSykC4iko3O8qZcV6Sjpn3u6JNAyvlQRjcSiuSAKJUavAqxv1KQqpvvrUXFoWVJKcD2+kp4wsE4BJwSRnJxnBGN6gV5Unjx9Sf9h46JyKiUHwVg53BSlZGAcbVc4+6spOcAD79ZK6q02AFcA5wC5tHtnG4J+/OP49Oe30oaEuUIGo3nUhLTl5KpUkxW/aceWL5VS3hDXOcp8ZGGM65HkuKNSEDwY8tX0aN/p5JWAdp8EJJBBBHnkEZGPBGQfPWO5NCU4KMpbKuQc8E8n6QrI/dwBznHPRSmVz0hgo2fSVKIJXhOcAj8GCfqHAUf8As8Eo3qprXamkdsTbvvOpCmUmPlDJUhLjkuUcKRGwQo/tAFAqSQU7hkk4JVSk/ljceDVtzm4+qyjdSfMpSBPTmuiNXU09IPR81kKKsCOK5ESlCm7434ivnpSNRtU7S01tmfc95VuBQqZDjuPqVOkiGX0IQFK9BRS6VqKXEbUgHduTtSSRmN+0r41E72LkqtWLlStTtvsupSWIVJcnuId1QnIJP7dCGGFGK2YiVtpSqQlHrhpxR3Hpk1TuTUzv/wBaqdFdqLkPSa0aq1PaYQtcdiHRm5C1MR5xwUCXMRHKmgpPLa3lp+sb+pn7Jt+3bGt6mWhb1Oi06lUZj0IbEFDbEZLTCNq3/wBntAUsN7lrwQsjcSMYBNkpHrllTlnNJUbccnyg0Hvaii/bHVSBDjGwHiF3GxTl/isyg2niulCpdGqEtu3LBtVLLUuq1KDQ6TEaaSr5ajtpcdl1GQQWiYdChodlSlDJWHGmkrYC1OBlXcHf7GovcNOt+C6qVamkbUajwIoR6ceOlr1UQmmkl1xKnQG1y5S0q2uzpcmSGmS8pCHkXPf0nTDQbULXiovIpFcuEzNMNFIilJmvzqQpLtOrtbRG/wAUeiNz/UMVIWiWy8l1eXiIu52IihVyDAimXU5jr9dq6v1hWpawCuVJeKloClNk5SyVrSgKJVg8kn6in1df5LERmSW0rPFKQZ/pdpnEvYTdfUiQigR5GAVpCK+1F4zReGOC10ar5ZbWQuSvISUp2bfpScjBU2SCRwUg4x+IJ5B61S7tKxw76wJyNxIP0heBlYx7klQSSAFfSM56QGfetKaZUqOVLWASNuCvccY3hQ43EFIKlcAg8DAJakaguNKGHk7QN5yEqOOQcEJTg4B52nzjHHOXVI0cY5MBHFjGvMisN4kW4tROm/8AaTlfl/eH3T0Vcml9L7V5C3wvVwakM0Sny6hId+WLbeyDGS0HXJs5wpRFhsoKS8px91SUpwE5KgAByU73RWzXqNb7t13KFqvC53JVSqKXEr3xYMqUqXAgN4KiCzHWlpaSPUSccEJPSUaX2TNverM3ldrWy3IS/WgQnVYMyU2T6MkJB2qQhSkqYUAlaCGyk8El1rkuLIlFs5ZhKCW0qOMtNN5QlQLiiPpYwAVHcVgbvJwb+WpcWTQlJ5WNMcSlms5wDTUiKg3e6jqR4Hotjgu1wpmTWaryZtQqy3edehUKlOzZqsBTS2qcncRuqi0/4uFBJwdoJwlZAJ3AkJJPUSOqt/yrivdT9OlrNLpJRBLBIW2amPTcqT7QX6gSh2UqSU/ZOzKRjb04vuF1hhsRq27DXJap1HmSaBazc5KVGfWcLal1d9Kc+szGUt5hlwYYQtvORl0CNlmtOEueu5uddUt19eQlLz7ylLdcOFAElauRkhSQAk4G7pZFufL1VFyGU/dTD4v6A3584adxrfJpuuS3Bkj4r2aBM3VIjV2D2+3q9XYdcuSkPykh+YhM+OlQSkFO7JQrCgN5SCRhSVHalOFJJKXZvXVJhoSpK0oI4O0kpVkKUQE5wCrHAJIynJOTnqMHSW526bqBGkyipKJtPbpzQG5DYkFZIWsn6UhaUlvek8KJ252YL15NbQEja2pSs/SlX0pI28kkFR3BRAx4wCQecHOprEiEQTj4XDlsoMpUqboxyS+t9HXJBJI+pw5rFF0EvuuQzhRyZKrd8r5tTz8tcdLpUEjBJwMnykKBKt31biSQceQVEp1C5owbUsSXZCioK9MFWAc4JGRhP4j45/mgBJUQi123PKamLDcgrO0lRJ/ZtpJISlGOQNoIVlQUlSSTkq+pMl3nNQtRS8oIUSSoIaSScqwMKSCr75UQeT756LPBaEn68pywlLVoj74ukifRepceUlMRoETw4uyz61URB5VS4ty8G8uemhfOdpIJUMjkgngkkqwCEgDG7dkgapF2qS4peXhhRIId24Bz/NJ2KH5ABIHtjA6QEXaG3S4qWvcoDKVKQBt/JJXgAkeQPYhJHPVpy6C+k7XwpKfqUUqSgJHON2wKAGATzgDHHvjb5cAPzP0XlIPC54SpX6Vb7q10XLUhIRcgYOUVySRIq+Gr4tGPAVl3xU2H6g+6k4CfWWoZCuHF7sA5CSfKU8/UrHHSJVGS4EJy4orUSAorO8J9z9znxnjGBg8AAxViqfMOOkK+gqJWsHGcZAQkghJQB+IkYURuH0jJT2dNClFZJwCQkZOAArGBtBwQCN3nKgefZJYkXk5Ioyj/AIpY4wKwpVp4M346at3qfuwzyxycEQiRlLPgIFCuLk3Xnd0+6arSnGwxLUlCSshK1EjIG3zkjBAzyQTke+Nqmw7rYuukyqVU3G2peEqgSlKGEvpICCsg5KuFHeMnJ27knw3R+cEqGckgAgY5I+oc4KU4znjJOcHx4uRquGHEObiAnP0YVxnP/aSMnnKSDz5Bz0ZH5ki5QctiDUb40VX5SmVlt/X8qySnOUrjBIY4tHLxG+RcvGcxbQiU8a6kH0N1ZfiAWBekkJqTDihRqo4oJiTIx4jxt24pSttIKEZCfGCdqgoOjNaZSClToShJIIIcKeFEAjblBCjhQIPuD546h7NxpdciS4760zITvrtvfWXEqSrOCSBnKQUjgFOCUkg5DwNKNUV3VCNJmOoNThtBYcVj1HWUkIOQrglJIAyCopV4O3f1pymVGqRLKj6pXguUWhpcDIuqqgPQPUZslYivEIqYl4D/AOHzb4t3a7jjE5VLeST9kuIHAA4SnakfngeeTyerKLnaUtSErkLAJwouKAIBP1AHJwePAOMjPSPT6j8usspH1FOFK5KxvTkKRhSduAeFEklXgYSSdE5WnmcB19xIWrKfrdKsJBGNw3EfjGfAVjlJISUuGhrkOM5QIHnTiPJlGi+MAQeOcxkF2Fh0plGXqC5U+qTcYrYVbMXxSkjI5oDpdKjcLTjJWVlaknKd25LafpVkkFCEpSAAVYxuOMkZUpKdVmuQpzSmnz6e5JR6jSFbtu7KSUuKP07snjGeUlWdpCWVe53UMkFx7B5AUcgEhSTgFZAGASSV84I+n6SSHULl9QDc6QMpTlRSE+6sAFRQTwP5x9/pBBV0ogCxv94uqk+KM08soZCRV0eToXjOXChZ9DzJw19eUc4Tx0YavcCKTN+WhyliMCSlOCcnH1ZOSPx84+xwVK4HRbq9XpVdjfLzEFTh3BLhVuKSo8ckDHPOcjk5PI5I9VqqZJJbWs8cLKQjH0gE8knIxj2ABBHIPRHqFQLRBSpRJJ8HlRz9RJ5x+YIz4xjJwbiHpr1BkcESKMWT5i1kKLH2KpI4VSw9ylWRGwcck+q0UtYvrAq7kuhylRkL3sB0+moqyNhCinwc7fqT5zgBIySCOtWu4g4lCFqQ4QVbdmxR5wTnDoPtnnPg84468q85uRCe9ULUtCDtUdu4AgpIGVYAKc+ByRycJx0nDzmwj+dkqzkkYx7Dz9xz+X9WIavElqReUqdNCoCTM3yCTZF5AN++HocTUGEYpdMYy/dCpCnLi4wOHDnwC1WVqTWtPbqo942nNMSs0ic1LSppY9CS02UlcSW2CtLjD+3C0uJVnJUMKSOug/S+6m6/216iav8Abjbf8tNFr1t3+T3el2nsVZLsu25c5K0xtTrKphhumnpp1VUuUn0mnorUlwKcZeC20dcwzc0oUlQSCRnOeRyCPYpz5/LH59SC/Dj70qv2e9xttX+62/VLNqKH6Fe9uqcK4VXo1Qw0t1+C6XIkx+nIW65GRJacSoKUnBJAU99s35Hc6OliMViRWIAjYSZSkUOfIOI+DpBvdlJJakdKwBQlVAnJxdqGfelDD10L/BY1w081AsjUTsL1WhUu9aDbMioXTo5IqzjLkpi2JE139awaPVPTRIp1x0Za6ZLRLpDsV1uQ4y09HqESW9GbS7vq7Hdeuy7VWm96/b3NqE+1LbqVOqk+WW3ZFxWG447Jfp8C8WIwZ+dpVSpy2fU9NqA2kNjep1eXQUu+jR4dlWq+h3xJu0WW1L0eu6sRnnodBIRRqDU56G5FQoDS2VyXIsWU0ZQcbLaQS2paAyEKQ50yaDa9aSd4eidIvW2DBqlo3LQGqXqRYNXjsSavZ1fnNbaxRK5TC44lmkhCmWoTYCzCCSoveoVr6tzZcNRjCenxIRlxxVVEjGq/w8WgasoDlUaj+Idvr6epqa/J1IaxIdP81keBO7Y8sMJXlBPLFWvs57pLY7ttDbM1Yt0w2ZdSpMZN0U+KvPyV0JDjVV9RBUp5r13mdyUvNtKUlHqpDgcKg6gpy1tSMngcYwSlWCftyQTn3/f1yDWda2rXYP8AErurRCyNU4+l1h6yfOVTTmpXNT3KhYFdNaXJl21Tq/SVR5sJmCkNSKc5VQ65UKcyxCEd4LW6l3ob0k7ybbrdTl6ca4wI+iWsVDYkuVa3K1VIiLSrkKMxGDddsCsyv1fHqlOqXqsuNx1JZmx0S4SJDQU+2VTbtvc4MGE7uKYxmRUcepwgILeazJrrn/4k+Godv32hvNhC9LfaEdbVFiGiyRIrglKNSjKiLKUVoiFOP1P0+tXUu2TbV0RHsuVCHKoVfpz/AMnXrSrrHqfI3DQ5gSvZMhFalGK+lyBPTiNUY8qGp2M6UNKNSbvpVZh6Lay1mBLvam0Qv2DfTw+VVrHa1OIbdq0hDiloZuyAhcX+UVL9d9TTkyHh51LiNiZXr3v9q1pPGlz9XKJcVYdaeMG39PIdR1CuaRUWFNGMzFpNuxZSJBe3qLbseRK2KaWFskFJJEsZOsvd/rpoTUY+lkjQzt50w1Lp+rsd+7WHpGsWoNatAN1Sn0+HbnzjX8lLZrT8V9i6ZpYQt2nenlp1fpoLy7qfGOtE4xhOMZ1PIzkQircTy/vUxbqy+mXQ7Xp7vXjGcyOp+WIRi8hryuLMti0U0j1Lyy16EWMwpKELbbwttCtwQohOUlQJBUCCFbSRkZHBBKZ6hKLlf0fhqyYrupj82oJSQlRiUzTLUmSle8kJAYnGFI2qBC1tNgAEBQWN2K2ysocX6qxjcSo7geUkKSlRKSCk4BJOMc+OkwusJReemkZagW5dfq0dtRGfTedtWvKSoEKThwx2ZLefBQpaQAXPpVS3Glq6bGM4yZcZLeEZElCKSLLp8+/qfMs09hq7XT0oMUIAU3zi/myMY+749jDWLOYGTjrEo1TjUrU6z5E1ZTDbhVuDUF4T+wpdwNx6NU3EjysrhuubwsEJDKQ0R6jp63HyrjalBW1IBIUsqG1ASTlRwSohIyThJUQOEk8FKdRj+oKrY16PfsabRa2qgXXNUgSKazb96FujxprzJcYL6adVnLenuzV5NDpz9YmJbdIWw4y932kZ9o3HIJSRVG6iFgUufyuC/VTRkc+0c49y26xkHISKIypFrw+Lye5ZfjqPr42Vu12n0nswjyJSZSbM7e9UqJNkssj5NyXX5DLFCQ0+XsH5p60GKUlOxREuZTeP8Y9I8RHxDbZjS77qmvMx1l2nXdTbftK2FAkKaudinGVV1vtoS+lTVIt+cxLU0lCXfm6jT3khJiBuV37d/tjTr90FqEupQP1jV7T0Kums0ikBXpOPp047g6VqdUKfHqCkupblKojcCAlJguCXCqMxWGg0pLvBx8VyzrgtebpTaQW/KtfRq1LWtyvVFCEvtv6i612jE18ZcVNadWxKR/gzunTmLBfBUERGQwn03Iy0K5S7tsZaG45qnPUlfEcHJok1iTFFHIBjjfXZfZe9/wDEOz6Wj8l0zR09M+XKfLPD81gF8uVRMBE/eQJu/wBFS0ldqOlHfJf1LS/T7jvO69D+3Ri4orSf1nDt2uQb5vy66JAlj6oceuSaDSaXWyMpnUeS9HQ5HmJgTonXD3CaKaI1nSK77ZsHTmSK9b1iXBSYV16ZUVhgR4xostqfQnK1Fcjza1TpURS41Rj1J6Q240436SWSZDb/ACW/ofevNusXl3ddqNRqFJgXpqHQ7X1j0xNbkN/KS7hsOkXPalxpjhxISqoRaLdorKCH3VKg06cEwnx+2Y7Wa3fNG0t0XDMWlzpNzUW15lIcpzYDUhi5KTTKi1PrVUy0tbCVrU3JkTnGimTEchPBH17U1R8Swmb6epO2ENOKMhkn5GcY0FMuI2EinldSBuf4OdOfb9HR04SnrOrUoxlCqlJ4zmMorCPqYhIuwblFT5PXxRNNIOn2vdMiQ6HIpE1VrwqJcUwtpap1wVi3nXm6fX6ZjG5udY86znZqglaFTxJeDyy8ptnor+AFppoT3MdgV/Whf0KWuqdunddRdTLrjx2xVqlHsW4nNPLmtrUSkUxhUKXUajYd4adNR7nVES6UUCqFb64JdabkM6/SW7FsiPqHoRqpYqXYcS8KLcVHkURynJhRIHy1Otmp4gES3SlECZU59IaacZLiYMKnBbiC2r1Lv6OH3fW/oRqRMt64a9Do1NrFeTpzqS1UpC1w29KNVWmaJaF0yKOtLUSXR7B7g/5Hx7ylynloiWrqpWX3BFajuJqMhhr/ADvhqGrCN6mnEpFaIhEui7jItfEvAIgtkNtr9q+NN1tdxpmj+0aU9CDUSMoa0dKbMGi5AiZkLyS7R8fxdvhiWjqz8RTuXuymOKqMnVqTZ+u9FlQlKkUyVTpNnUa26zQUNtyg3UatS6pbFwyXm0zY7sSDclKnJjqaeQX49LX+DlT9QbptyBOtio2NCpoimVPlpWmPMRGVuU04wpTXqh3/AOqC3fTOE7j6u9PZHffbppBX641bV6NVelqj1WdUdNblpNarcGqJZkPGTOoE2qrnvst3xb1QU7HRPjpdg1K3X6KtptwOKDePQeyKzWpja6/qfe9209paVrt+5WaTVrYqDifrbFboamUwa9HZUAUwaq3KgHer1oqxx1EdP4w3MnhradYpSdMYnig4x/e43KRhC6SPVny/CXb73RhuNvFoDlJjeZUtkZWrKXL9SWFqSq/wCuySj9nfw/U2sq56dqHTtZNWr21vodVj0apUNFOodZTR7ct6jyYVWbZkrnUmParxemIQiM+mW2Y/0oJEycynQ5qFU9baPkykNqbQsJJCQFEAhQcxkbfJCcH8x0gunNwTKbTEQF1uoVp9xEVBcmiDEZYRFitRGI1Op9KhwqdT4DbLDeyJFjNttkKUAte9SlngzVyUNlSNpWFZyRkYzgHb9JxtIOODkEeDnG475t96QNPTl4qUms2SksZFeY2kcHpPV9YTuPh7d9j1tXQ1JcQk/L/NggRiS4yawYEDlmXEtOtrEotOp7Hy9PisQ0EJSv0WUI9VKSogOhAQHCFLUrKgTkqPlRJvqiqGNqgrPnI245A+5z5J/cD5JAOO/MWxGW6Ny1MpUopGFLdHJwCpJwocJA53FQ8Y6Suz9UIF21e5qSIMmnyLadbEoyc/t2nitKXWQQAshacubVL9NJBXguN7tNTUlopGMCS+1hguqxb49vH8zpNo7bc6pKRK4xlVVyWT49xziqc+POOuPz9Id+G1d3cR3u2df7j779palaFaeWlR34Q9BFOuLSypV9ipU6a98yS7JrTVzU6RR0liMT8vObCnAgudQMW98H6lXfWHKPHpNz0WNRY8VisVufUTTYEMJW8Z3rq9KU4pUT0m1NISU/Ml1QUpgN7lfTA1306szWKxKpZ18UpFVo8lt5xhTS/l6hS57bLi4tUpM8oWqFUoy0YYlIStKUqWFNLSogxmUnswti15rhev67L2t5qM5HptpaipjXFRYzkhaHHJNUXCco0+4lgssehDqr79Pay6tyK/6qig3/tRr6MDThpENLSXlLmI2ssQIx5PpCLm4j6skunbtPwDLvBqbizVmEI1KJGWmxshVzzZ540/lK/LLor/AAPuwag9qPw7KtZF3VaiSGtSdZb21VsCtwqvUBOo1BlRaNbNBbL1QpTLiKq5NoFUdVDbQ+xPp8iEuSpAfCUw1fG27QNMuyzsVvGxNA3n3aFqZArerWtVqtz0NUKq3VT7xtNigat0ZhtsO27XKc9fMhFQgUh59+t2fb0eCtqXNizqw90LtaZVSfVKZX9QNSry1HqtvrU9aDNSdpVBtuyXGFN/qxy0rNtSmUa3KItiJFg06plunOqrEWK2pxLEx6dLkc9XxltT7n13r176G2QqDWp952JqXMF01Nj0qPQ9Ae16gXJX9Vr3n7VrCzeWq9Uva22CmU0ZCYz7Qfe+YHo523xDpdx3mhowJsgJykmW29Sr8Mmzz7i0cQXbn4K33Z9Cf7QkjWjqmiFsYEYxjGMVC+MDT+ZG4RZXxLVYkfgtPsXvYmsen19U1y7tLHrBmafav6aJnl8TtKbqrk6vwr9t6juM4/XVgXHda5aWmXXpLVtOzmGm5CS67FhFvnQCn2L3J3jonPrcKtxLCvjU21otQZdU4zU6DR6LXa1aFUbWoNPlqfChUyo+nIjRJEd6Q4w6wVI3rlg+BPaFKsLXei6saiRaZWNMdS9GtaqnT59UCl0+3K/2/wBWtO8b0YrERX1IqlNoLrFUpUpDvpiLUnHdi3C4huKHV3VSBqt3N61aqW4X7YtrU3US+DR5tK3UlikUi7anU4VstLkKStyE5KozM9biVskAyFMr4ihSpxt9HW0ZHrJetXxdtjHjmjNHJSyxLeoH8Uau31vhnYyhGBLnrQGywflx5fW3iJxspz5CMoPwjZlSXoF3R0BdTVU6pd/bv3Q2Tp7abwUmBc6oOm9s6i6h2c5JZUiXDl0uExQNQ7YXDdQaxfVNoVtOtPCoMMSezO3r2g3F2kdr2v8ASWimr2Vpx266xPKaWZD9Qsyo29QqHqfaLyG07mm6dZ9w3Q9cUxyM5GhLtWTHlNt+siQzxNdhKF6PzbOSxR6rW7W1T0/h63W5Rmy3JReeoGjF+3npdfdJp0f0hKhsyIVfp9WkUuPIKKnUbZoqZS348Tb13E6Daa2/YIvvtHrxiyrXujTqlXpZTakISkWtqBQ6hYesdpVBlCy2xGpGplPpFeLKZTkgxNUDUURmmipL3SPwRu5anatDTk8WBU79VcqlG88iwcSp416fIcnfHuzdXdR1NNvnG5BLgLIEUti1xYjkX60q9tsAZLQDsVS1GPLZBVGfa/mLS4o5UpQ5KcbkjGUgDrbtQCpILnBP83ztwSPKV85GD448dIN20XfVrq0I0xqVaVvr9Pt1q0blSRgqu+wHHbHvKU+hISfmZNz2/V3HlcBWEqTuBKlOFadUedmAffIPjP7iOfyP8PPVjQ1Yy4M5S4P5pichwhIqT4S6pb5DR6qflt4c9TzJiQuLyjXIszyFUzhoLstwznodDodWN1yf0Oh0OtcN3uoq8kZJ4JOSeSfJ5P3Pnpw2u1jqRjOceZO82x+XxZGakMudex6a+99AGag8eNW1d2fT+H162PQ61Kk7cc5z1T1tuNWTGejLT4SeN+olWYyPBTZXvi/4dZNGkeXj/l/9etwSACScAcknwB9z1gNoGQ4OAd2E4ztyrAwonnABGcAnJ/jfgKO8gnjgJBPGSlwkAfngk4+2esaepeEpQtSCVZ3JJBwlP4eCCQSrPn28fZj3qmk6ZKuc4RWruNTkiXj8o2W4qqXp17bt+U5alc5QahD8vqCMuV8gwKUle931ZSVuOqdQgEgfhKhjOwpAzxnJH2H2JA561ql1Zx10yZcxTbowlp18qQ2kHH0oBSMKAII5GFEDaMg5PQyeOfHA/IZJwP4kn95PTXPRjPCoESIRqykRV5WlYxjqUxOMiRXpAj+YqjFpL1V7Cfreb1K4PqH9qwhYykndsUPp8EA7sEfcAn7DPUOXxdZFWtyy9DJsZaUwavqdIseYtZUB8ldMaIz8uraSQlaIg5JGfQAUSRlU0gGSB9+o+PibaGXBrd2qXa1Z0ZMu89P5UXUS3GSAVrmW041MWGsuIw6plK0IwlasqAAOQC0912mnpbWe5q+F3yIrLiCnpqTQgBluhoafux685dy24/4gw1iwS5cohxHKYoOnxUWmsw6LQy02lv0Lft6ltlC3MGFTaRHERnCgnPoqkv5WkEEqI2pGCrU3pTanU7Nu2kW86lu4qvQKrBpDASHZD78qA/HLkdha2/V9BUhC1bXmiCtA3YVjpE+3LuTsLUvtZ0t1zuXUKjUylVKjwaJcVVqziI0mVfFOixoNYoNDprbzlSrc9lyNHCmG4sZwfMt7/RO0rpa1FvHWmWu3aDTarQ4V1vvUuzdNaU9/J/VbU2irW041KuOtsx3JmndnSFM5lyI26syngxTS9TW5QMmtu8960djs5brSgajpCkR436KokRUj6iUjjK+L5pCzOw/Bvce7d8huZ6fy9GdSNMhGpABy5EuCg5ac3HPua9JLoh6LdutpWVSJVhxbrsCxadQdSNRr0nQV6baK1Snrl/rBwzm3jDv2/Istx+n0i2bXnT4c6bFTHclSBNYdhX+3v/DDrlcV1aZdv1Trundm1KZJqGvndFfcGarWDU6kTVOImR7NUhqIu06cExJbIp9RlRWqetbKYVMSFynUN9tPSt7WbuFpWiNq1qg3HV9N6c5OvCbGpcRnTrtzgVKdKlRolr223uo9TumkGPLcfqldanz5k71JSExUTH4/XQTp9pjaukVo020rRprLEGC20up1J5CVVm46y4z6c6t12ckD5ubMBaIBaQlpKFgKcLilDnf4l+JN13Z1XXuMdV46WmSahmLWSrwks+5Qg13n+GvwX2nZaO0PkwjMgqGnXHUiDdWH5q8tqVjFDSjR6wtD7Op1g6a0KLQ7biKclrASJFardakgKq1yXPXnVKm3FXaspDBlVOoFcpSGGkLdc8iP/XnuHu/Xe+K7229uVRFHpdtSYjWt2vcdz1IllUCW3KjVK3LTfbU0UXTVYolU41OO9JTSmlvvraSI7gVg97Xc1c1duFjtU7cqo0nU6tyfSuvUiNISujadWlK3R6rUDMaIEatPw3nYCFNLdcgmUvZ6qisCMvuE7j7I7eNL1aC6Gylx2IiHnbpu1sMyLnvC4ZQaTVa3WKupBkuuSFIWUJJHptuhCcpQkdQnT3M9U4SDjAY2CMqnFQta8DxeLEH1OAtve72G1gaGnGLGOESgqQwACyP1Kv6+R6XPuD7n9Oe3vT5Pb3240iHbkFlDwqlWhPtyKtVp8nAqdWr9XCGnKhNqriQqS6tA3lpn029jW8w21KvyalNkVKY+qZOnPOvvvLOVvuurHqKU4tXKiTn8WVY5yR03qpXvUK/PkTqhNnSJD6ytbj7u51Sjk5Ci6SojncePOeAdowxXwgEpflZOOPUP8PwvE+T9jxz1nS0panqYrGxoSo1iq5SVt9slr4bI3rd3JPEhC3i1VUsYmAKxmuUbVl4kyVf11ttoAuKSNoyCeQsKzwQkpwQcAbgjB85znqiPX25KwlkbsFQUFAD8OfcBJHg44PPBxhQ6b85dBCVrUp/IByVLHBxxkg55yAAPq+w5HR1tF19URM+U2oB9z1GEb8BTIUS26AOP2iSFHchKjkjI9nE58YwHNSBlEZKW3JlEQE/5rWmQ0dJJbqU3miEUoJcAFiOIVGVLbhQX0NlLnHqDriEnKUrwQRhP1Hn6h5/DyQBjBGFbhgqsyJXondw4pwknP0nOSScDwMnzjHtjnILbdVbWpJIVtGQraPvwCU7/AGI9weMkDOOtFeV7UGzbdqVz1uoRoNHo0dcyZIlLLKXA0nd8swVJJXJcBG1sIOQtJ5zjpVCenB5DIjGRxi3GUOeJcblEr1er0+yxQy6x3fE48dPlTcovgL8xrKGbsjb+WsdY2qGqNvaZWpUbzuuU3FpVPaU4pKnGkyZchCcNx4raiPUWr6QnAAC8BSvqyOdXWHWfUTu71Mh2/C+cNGqNWTBti2Yy1hlLQUsJqtQa3BAZQ2HHX5C1JLSADvawB1h913c/cuvt1vR4cqRHsWBKMei0tpbjTU0pWpLciS0lSUuuOBQwAMbleSoA9Ol7TNL6Tp7b6b3qEFSryrMdcaPIlKCJFIhP+mXlwgnHpGQwHGAXEOhaHStalH0wDuJEJMmKyOBhlDOdSb/jvPqZN4P+Vm3W8jrS42cA9S1Hn+6QY2GRAriWKeyvc0G0utrRGyKZZ9GYbkVkoTIuiuoyp2s1INJQhIJ2lcWETIRHG1OPmFYynalLtLIpVYvO4aJatHZS6/cMyPQ3XEbiYdPdU4mrTnNqsBiJTETfmHMZRls7dwPTSqdXVNOBTKykoAyFlXCARla/KVFJIVuSUkKBPg9PDpV5xO3vtVvzuKuSUzAvXUuLL090boav8WfZjvom/rW64jQK1qeq6XVtx5iRtaXgFwbtgGpAKl+8ZkZJSbJWjYOPOCyKGU6EJ8WKBRXDiiRriLf6ohIURLptZ18Q/XCiXzrFb+kGnriVac6B0pu1WnYzqfk6tX2gHarUg1sS+05uCNyVpDbjilraBKlpbYLOr4YbJ2NkEnak/WpXOUjztzx9WQQPPHGUfqd0VFMibPlSS9V61JlVSqSnQkuvy5a1vLU4pKPpey79SztUCMkEnPRTduSZICvmHHFKwduCg7h9QCVK2pIABAyArPJwMAdJmPPKKR/dBsUo4/lvDK6lFqxRVd9fc3GI4ZRY2nkG0vKUqWU+BZcU6WN65W0ObkgEnP1qX6R4GPpKArI24yfpPOCOej1pvSF31XkRXI//AMpj5TOc/wAokOKSra0rCgBwPqSrdgEZAB5a7SnZ9fq0OjU1Dj0+a4lplCGi4kBRGXXclRQ00CVLV9OQCASraOpQdK7CRp5a7FPUGpE99xMypzG8AOTVnDobJytLYSQyEpOwBKlDKVkdKNHQhJiVLyRfTRBsP3GSDVIpVNoX0mnL5cGdQqMSVWfliMkthHlYNRLUapb6V+jpTTKc1S4yEJhxWm2WmgkhO1tGxJ5JPISCQTk8g4JJ6TXVi+kUKFDocRaDWa+6mOGi4pBh0twuCVUeDglplDoQVlCHFfQBzyfp9VhUSkTazU3ExoNNiSJ01xxYCW2IyVOOncM+UpISEgqUogJSVqCTEnrFq9JrMGuXfKk+jWbk3w7Thb0+vS7eZcMZh5S0bo63FqS+6PScUFFecemcOHzhciMSk9I2+1FCYzV4L/w56adzqgiDYHsjxZBT7iqtpYlKHSQ646gM129JNKp0tcmg2+4YkRtQKvXnJO6ZOwoFtZedU9uG/ZxgZ3nKQmsgHKFbTjyErSQT9uFe3H7icjwQV0vBalrWpRdWVOOLWSpTizlS1qUckknKjn3Jxkk9Ul9I8An95x/V5/tx0o+RWDmKHJEOTQKufpjOLf4NOtqaurP8v5bpYxfLb+a45TH6fqdKfZtwum56Kt94NNsNljBCFeoVSXXiRuA3LIfKQeCkJA5xlTznruJCfQeSSQkHLpySoAHjKVJOSeR7DJSg5AjupMoMVanyFpyG5LQUE/ZS9uQD9grOM84xkZ4c6utp2N+mFZSgDAO0HKSDlWSDgBICgOCdyc+E41NECIKXjBaV5ZZR88WSLkW8piK6VMkMeKaPsUNB5oSrsoOt9eNWJMhxKEKwQrg5HKcIBwo8pCyVDI3fThSRnKMrrK3DtdUtYJ3bCQOcK5SN5AHJ4AxjjHAwbblqajEcJTuJV+IjklDSEjI3cZ9Tkg8Y4TxyiMqqJjvLZCASjAUVbvJGcDbnjBH2/j4GTRjMZDIihRGSFYEDkKEhfHhuvzPSrUnMsWk/NceS2nFSIUlUgP5VW76UJNTQc7k4+2QeR/o7uR7njzwOgaogYwkq/dnj9+4J/sz0l4rDp8hA/elz/Y4evf1u592//sXf/P0K1fpq/pzH6fx/XPs/xIZqV4ceo0ZKZi/42P1H0+B92+lCnz0usqCEqHHlW0fUDlOBlWffPI45wcdJ9U525wshJIQr6iRglaVOIODuVlJ8jIBJ5OPByGqosH9q2FAkcoJSUjnccKKgo48DKPGCecjSTFb5C14xvJXjzjcpSsZ4zjOM4GfsOjNPTGLJFOQytyTb4qj6lIvtUa9rzqSJoMuVlPp4vEpI/XErbu2/sdemQkkkhRJJJOB5PJ9+qPX/AMz/AFv+HrH6HRpCJ7f7/h0DR0z2/q/6V1molBtQUkKzyMEDBB9jhQz9/wB4B631GuubQZ7FRpqnWJLC0rCkuYCwlQJQvGNyFDIUk5BBOQeip0OtHRgpJGzw2j/Sv9r9qx8jTsabPDfT67Z1JTdcBqahxKJKEJRNZ2gqD4H1KAKVlAUo7v6Jz9PO49bidWCpOVFC1lOzAUndsyfG1IAGSQSUkkEkfh6Y9bVwTKBUG347mGlrAkNKJ2OIJAVlI8nA44znGOcdOXhVqJWYKJMVzJUQXWyfqQcE4URkEKOCk5OfI5HRXEhNfTH35cRkxPKJXjxIRPFUIG3rsjd+KwiZM0PBKwYijd3hdpWqy56GTsWpRIyknZuUk8r+s/hSlWMYIB2jG7chNarWkBQD6j7YbbRkBOSNySVYIKk887yQDjYAE5tWmqcQ44kbQhtfpoUSeEpKipQBwFLISFBJH04Tk7d3SY1Wcpv9qpHqFxwEjcU4yFkAEhZ2pCdoBzgYGRjk+MmPhacX4wUL9c4APbz79F8slLxu/GKjx9VVfkoM1V10a5FajbD+23KIO0EEZPA8gYzz5JGPbPjorTqoyoH1XPqJJSPqIxnPATuIB2gZIH3Uc+Sc/MClgkDITjCR4GSRnKvPP3/gPfGVJBxhJPnzx9v+1/s6OlxIJGXKWFCCRk3FbkyvGUqhV810UR1JMZcc1cfAR98URHObTN1krrcy6ip/chAGxeQVKBClcY4AUABgZwQT9xxyXlrKzkgDjAx9sk/18/l+7oLWVkE44GMDOP7Sef8AcOqeioiZfNB48H0x0ohBi8pNyQP/AA/Y9q8eAqqMdDq6yvY4FYzjPGcZ/jz/AHdWuh0bpz+XOMwvijXi6++f8noyRyEffrpJ+FzrxB7t+3zVn4ZurrrMs12wqzcOi9UnSGwuHWrUhO1GLSKcxIKGF1FLXzJjpVJaU9hsNNrKHSHJ/C/e1Sa0xvi4dK58BjuD7Y6nMsTUDRuckC2NdrBp65Mp1dadffYhMXdT2lfLW0/JLwjPNMPNIU2xIQrlv0i1KuXSLUG1dQ7PqTtIui063T63Rag2pQS1KguLJZeCFtr9GUytyO4ULSpIXkKT+IdHvYh3O2+v4k9laqW3Epts2T3i2uI14waN6aU0e+Bsi1WMpuN8q3C+YmPuLLZbhFQW2p9l3a2VWJ2LvZuCOjqXHUiceTapiOnSOUaJSn/iJNrfUD+Ku06f7BudSEI59UQr04OSKhA8vEfXxhA/LxX4/FAZpfeL2mUfuZ0kbfpOonbZcP62uq3XEpN16a0l9LDVQoVbZUlMhyJSqvT4ao00sIQhqSpxhoh94qfdpBD087+uzzSG9qvSqK5dtPotGkwr0mwRJn2fqPbjctuY5UW1vqitRZvzDCK3QJ0GU3UYceIlmQx8o6uQmvfT25XBZVc1M7kNDKZUphua236F3GaT0BhKqdqXpQv1nqvPiUlYUw7dtHdbjyzKVsVUfUbYSIygFKY18BPXKjR7p137Tmqm7Kt9VRd1H0up8yQlIeo8ZdSYuSI4VpaTGqTURdAW8wlyQ5JdQhpDe1Rdasft8dSG5jLVQ+YBlRuPGUQMNvNZJSkT83koLuel+19n30I1PU23FogemMk0xV9dwnCHy9OkrU1JERlKU51dA3rSkv3FbdS0ps7TzWyxag4zeVDtm36HRoUujyFmSi9bBmGlyVs2ZUmXV1MMN+s5TlVAU9DpiQ4YRJ12VUuJVNamFTE+r8nadwSQtR4UHJNJiLaIC0hCVJf9TISU5a2lICuo3tUtLrnlybf1K0crSrc1l03VOrNDqTpSWL1t9oxZFa06rSNiUylzYEZ+ZRG5RcDE2ApwIWM4fh8OfUyhah3LAvWgJUY1esSrNyqfIVsqdvVNEmmvTqLWI+zexU6e/FMeRFWltad6HlJHLJf/AIh1CPwl3uUZJN2sWGoSlyigxYkgQvlFFVuIFN1A/gPQ1dz8bfDuznFkT3+kShG0S4sbiAt+4lmWg6kA7i9GY8enw7is2jht5D62qu3FTythwEtOhCAlRWHcBRQPpQVfUjKemH3fphcrdY0Zrc5lyJGTqrEgSAttalJj1qyb9o8XJGMLeq1QpUJtO4hcmTHQSEPACWCTckuUytlxSi0VAqOOMAjBI/Dj77gQBkqx9JCI6zrYnWTNkIfixajaVRtzUWkPSyEMLqOnd00O7WYzoaZW65HfNL2S2mkLW/EW6htDn1J6oXsvxp3bQ2+no6Ud1ryiyrVI6kpVyE5Tc0XV0JxqxS+0+/8A4Sdt1t07reb3Q2EZBL5cNU0ItFZ8GckCh5e+a6Q5OjlccAUtSWt3lpav3/TgBSiFAEnHgHB2nA6K12aKVGVRKlS6tAi1yiVeBKptVpT6D6UuC+yhuQ0AtKylakMNoCglRaIw2lIUUuOfqOptrsxGqjAlGUzIgw50UL2FxUepxI0yEtSkFxKnFRpEcrUla0KBV6ZUASUurmp1RqzHptsKYbUFbSFgqIWkHjakA5Qd3Klk8AkHCRK9j3v4l7vrG3lCcNOZWZEEurlIQwEVVavzfnqId3+EPw47NtY673fV1e57e5cNDW58EIVyiXZLz+VMAU+WAVu0LzpdG0itO4qU9f8AbrFe1Y7eJddnzodIrs6u3W3b9Wt1q5qrKeeZrVE/kXULntBqeWIr9ZqLbdRqL7U6qFrrix7+bYoutNL+NRbdGiejL7ce8+ydW7OSXDK/VWlFqzaj21Rqbt2xyf1bbcW0XHpoUr04LExD0FidClxY/dvW7ppVnzK7XLnbU5alVl2/dkmZJb+cjWXqHp7WGrosi5mylofIW/V3If8AIy5Gm2JjzjdRgzXENxWZao3BtrjdzHbx8QvvKeuqnTpuj/dHS9eKbc8eiU2sV79caW6302dc1LuiBCiuTEzZlrXnWBIhMoizluORlvOohhz5NUH+ItLd7beamjvNsafysRnFQ1B8Lh9hLfyqll5f/hjc7TW20dbZ67qx1SNxxcfQZA9Mj3VSNZ/dOufXQPW7VHtq1esPXTRq6qpZGqGmdwwbnsy5qRJcjyqdVoTmCh5LSkmZTahDcl0yq05a0NVCnTZMR4lp1aT9MH4fXxkO274m3bjMq2r0Gv6Ka6aa0+jxdUWqPQ685b5qMxSafTri07uCjUyqRl0GVNKn7js6ckmksqbm1pn9WRS6zwT9oXwqO4/uu73mOy+kw4NrVa3VRbj1Y1FnBVQtHTPS4xIlZkai1F1hyOmpU+VQJsOoW9Diym/169PgMNy40Z2ROi/Qi7Z+3jR3tj0stzSjQu241u6cUSmU9m31uttu3Jd8MfMM/wCEK9amnZ+srxvSE9Np9ffYbiwBAQWIURj5h9xdM/HXcNltNgG5mQ1JowptQYjFjn2p8X7WW9dI/g72LuHxH3vU2mhL5ENDb6m4dSmRKUPVpgMqHlyViuYxWFxi9Rw/pK3Zmlz4aUbW627npN0xNI9Z9NbjmyabbkJ5VSsfUKO/ZCq0zU4s2R6sdmpXjaLplUD1YkxiWhDruI7brfLv8FDQVPcjqTrnQLJpc27ddNPdLHtSrS0gVKMWl9xujUJl+1u5rQmdLShJTdN16c16PVNMX1SYDUW96JT5MmZEjoeksnr44WsPdtpB3J6y9mlb7i9bKz2yVKoWrqZZWi9wX1Wanp1S6BcEOmXJRqVCtqZIkRxBtavR5FPoDby3GoEaC4GGWBLkNliPwrO+Cb8PXvm0N7ohTp1aoFm3A9SNQaJAmN0+RWNNLrgyaFeUaNLUw8pipQ4kuPWaQ436ZVUaUwwVoL6XW3jsm25fD+jGTFjraHMM+mMonpSVjIBi+Y2pk8x74r7nvNr8Y7w3D87U7XupbRlI4c5aUi9SjkkZtSiE1I1jKdfRH7UtVE/4ILH091iqM247YeiQKBpX3AX0yuKnUa26dF+Wh2Jq+5WFUk6adyWlrcGRaWoltXWuG3f0mkRr0tqu16uV6r0yLIrRbSTSYrbCahJnKbON8ghSgMkDaCs7BgeyyFElWPqPRmZ0T0t19tmidyOgd32u5RdeLUoF4VwR6XSLs0K7iKRWKc1U6ZWdRbOdgpgO3WHXo8So3PSBQrvhmnmBOX6iEuAxWBp/qBamLcj6UWUww2Auo1Oh6nyUW2Zq9xXJpVEuinzK2wl4hPzrTlQCwGo4S6tRTtrruXadXR1CohFlJjmVpJxgaot8r5sZXi7fh38SJafatKG5mEUyEolg+7Iz5iWe0WMuEikzWPRn23ky1DY22hKQFH6ikE+2M5O4c+MjHuSlwFMJyQBwEkE8HjOf6QIOcex49sHIL9AtSswGVfrd6nKluOKUpiltrECOBu9MNvPAvvK2hO9S3XE7yQ3gYIMtQkU22KZNq1YmsU+mUyI/MnVCW4lmLGixwXXn3XD9DbaEjctThASBklIPSPb6EYBKMCPG1cYZHEMUxEbFKWOAqNRnv/etLu+4lqacozdSjSjAkoWL5Lk2tJhtkYDrb+kVICtoUCVZBAPCcc4J5yc8Yzx+Y61DdEpcZx16JT4kOXIyJclmOhDsnBJ2ukAKIBOcKUrnzz0ToWs+mM1YZiX1aTzhTuQ0zcFJkOqByr/JR57zqDgE4dSjGCPKVAbBvU7T+UtKEXhb4USUoSatBdcdWVbdrLUZ1yQ6c+Qlg7cHJwDhe7hnzZRgSeECXJsQFWMuUeTH6MKJL6lHqPx22+07l8nXjpFyZRhOkcRviVPKFZOVfvB1RX4K32ls/Sjehac4ACStGznbkknfuzg+ce3CC1S3H2pSo62VKIJKFjYUKSCORvUkcbweAT9X04wpIdQY6ZzbZwCpQCkkbgFJAUQQCpGAoHcM84IHPWtcocZxe4pSRgDJHIA9gCFce/4hkk+PPSbU0mV8YhyqKepHjS1VixW4o2CABXUn7L8S6naYumD7MgichuiXu+OR6htF83cfmrDN2w7ZlwrKpsybeFYzBoTjDSn2aTsSp6XX5MU+l85IoyQ3LoNPW4iJPuYUWBVUGjSahJiQj6i6D2pb+kvevqdck5krp+i2oWj9D9SQ5UIFu6c6OaPXFQqTQG6gpaHqe7UdRarXqpdE8NCo3Nen6/qrr8xyTRRN6H+6zVvT7tM0C1j7ldQm4TFtaOaf3BeUyTMS20io1eBGbFAslhxe55Eu+am5Fo8VtqM8w6+I+/BS2h75HGvPxMe9DuLoUyyNRtcbwqGmsivXHW2NPoL8Cg2+s3JctTuaXCqbFuwKS5V4YmVaUyWZay0tlS0pQ2p14rkPw12KWrLU1WoR0mEonAOTN1BjKVi8OKkazyiKAPRXevxJ2ujD5evoft853GMTV+WwoisqIzjHEj90JcEpQpIXe5e96f2/W528UxiJS6Lb+pupGov8p6cpUavzI+qFjWxYlzWe8oIU2bemUy3g7LjureRLclNo9BgRC5Kd5206DsXb8PHvw16qUFUmLpNqx2ZC3JZ/6adVLx1Dpdw0thTjiPRkv0G4o1QYQEuLdTHfjpbQol1MVq3CsAbcDJ/PJ/qHjPj8/wB3XQlpBSLcsX4Cmsl33HVp8qTrB3WsW1YVqBHpUd67aW5YUOr3nOIU5KqlUoFnU6bDthmW4qDTarXDKebl+p6Rtnt+1jq6oSAYQVl/4eJeUiPis2IA+eubu/bxgGtCUpxnqw0srg1I1dSyhIM8WV+CvK+avdjGomi3Y98OXuPt+8r3nUSi6lS7Ir1lz6DSKZcGnUjXa8lUi45dHu6kN/Kywq4UvUmDErT0+BGU567hT8x8s519UCuM37c/Y3qXT0pZm39pnfiLmpkh3M+BbVc0Wty+5FNnrUhspnU/Uy0aCuQ0lOFCOH8teo4jpqGq+nFMvrT3sk7CLKdlUydc7uiGqmrs+lwDV3NONBu3SVS77qd8XNElUuTHgVO/Nc2qbAoDNWbhU27nZlYmM1yHTW5kqKvnYxTrk1ApVqav1uT8vR9M6HrHpBpzU4VYFVg3XWK13BXzcF+3nAlLhwfnbZoNGjWtpxYrvoJS8qhXBOZfEJUMv3N8M7d2ulPTVkS4JFqriDNk3bySMaBBr0nVJfEG/NefCUWM4SYxmyRlA48fFAxOTYGHjSRidON0Ajrtu6O4+wFtHbb/AHA1+8KUpPEZFvay2pa2qEONDVyj5ZurV+4JbbSVFxsSz6iW1OJT05npHLUgsM66axGE3tRU7L0TuGRkgFyY7Dvq1WeCRgM0a0qWwkknKWgk42IJXWOE7GlKTu278ckfiKgfH+0HqbbfVnHSWZdS4kTCNSbBWoyaoaR5KXjqtN3WnKMuKQm0Skr7yFaFATMaZA2CMRZL0Oh0Ord65C6HQ6HVKVpUVBJyUnChgjB5HuOfB8Z6f7BBQXwXlrLX1o6T05x48/b9etT0Oh0Omjpw6vR/8sj/AEv+6rqmX/0f+n/4erSjhJPPj285/s/v6w2VKKeSSASACokAklSiAeBnIzjyRk89Nm/jynpN504yUryT9Jn2pi+2enntM3mw42cmXK/FwTJXjHm/L49+rvQ68JwCcE4BOAMk49gPc/YdJ9fGplsWM5EpkqQ5WburUUSLZsGgtmdeNacXgMtJpn7NERhZUkuVGS8iIwlWXikBJcb56kNMubxPrl/yvz7fo/Tp/wDFec3n2srH65v9BfZ6UPBIJAJAxk44GfGT7Z9s9Nr1L1qT8hclI07EGfIt6EZtzX3WI/zmmlrwW9yKm1WKm3vhTpMdJSh+FHfKUjIefbDjWdsug3/qZ89N1PTH0ztJJZcOm9uzpDk9xmQHCtrUK+35T9SitxlNESKRDZ+Tp4dc+XQDMVhBKu/QbipaavMpdPXoPbV+063bAtCmNqa/+I/VRp+Y7GtS3mSlLNQ00oEliPNuWqy0MMVJuREUluNtZC4l8Qd0vY6mnpwbkhLIp4bPFMb5V5fFWPUo+F9hLcbv52rHjp6ZFJWV6lryljxbxdYrPUTreh2qel2sVpataBUCq6jwdRGb0vOfoHVFGl1y1rViJZSxrnDiq9eh2S9fNZbfj0ywkQEVh+HUG4xnzVSlvR37Xd3WNWvY1haR9p9JuW8e8XuDls2xXbirdHlQ7kseVGaYN1ipRRFpwteiW/BnGRR6dTno8efCMiRV2Z0yoCemQS3aFB0poV033qdcdGVdFbRV731k1LmuKp9GhtUiEqXTaLFZV8y41RrXpyp9NoUZLzhbjIEZv1FrSo7H4YGjVV1Br2qXxBL7t5+3bo1ibXbmgNAqFNcbkWroNHUW7UueNUGnEIVVb19J+vS2FMh9NNeownstpcjKkUL8V7t2mx1NFly1NWEnitIYlZeaAFDxaYY112H+Guw3PdN5oaGz0+Zs5Q+ZMfy82gu0Rp8sqk4cj0+bse7SLS7QdE6Lp5Tpj1z3pLkSbj1K1AqjvzNXvi9KmiOmdPekOp9ZECG1Ejw4EQuOstIbLiCndtBR76u7WPoFYLVs21FmVzV6/wAvW/p3bVMZL7kqqS2JAaqdQKVLMWnUt3Drry2lMSFKMdbjC0hal01y1mtHt80zuXU69pa49Ht2jy6g3HYUgSqrKYQ2tmmxxytDkhS/qf8ARdbYCStaFApzzHOdxk26ZV0932rElUa7LgakwdJbWeU40LItFtbrCnTT3WXHkP1N0glx1v05CYqDGRHLC3HaD3W5lrzISaD96KFlGcMkq23iZWv3TrrXT28e0acIjcuFMUYsShnKrDiyI8Wq8VaAna+tTqb2s6Z1a0ZVcarOsuoDrlf1QvFp7euZUX21LebpqyVriU71HFNxqc26vYfqBVnamEzUDVJm4K9OqT7iwl1wlS5Ljqi6okkOqUQfxBeRn8JISAMnOh1t16q9+XPV7lq0x6SJ8l1Tbbz29T2VlQS2kHCGwAFEJIQlJ/CSoAtSrF4pW4qVIBJUSEoUR9IwsgIwoE5CAAAjnxxgIB+20r4oeyDYNeKukcYswgZSuTBvt/PWm5jRa3aVd1a+LbzEXH2pwar5gpSEpcKU/wCaUlXscEoXwAeEgBI28YwMChy8YTidi3lFJI4LiCPcDy4fz8dNQevfK1BKFISFK2gFAO0njOVgnjkZAODz1S3c0icoIjrKHv8AokrKSVrVu27CCs8FP1cEePpOCOnHTiRqo8XP5ZJ5C8Y8jmkcyr26a25y5TLuqVIlrZfqC2TQcClAwHTvLbnv3PcSqUyR8myhLk1bhVhIBK07EpUPqcUfTUgcIKByOcOdj1VEZlphLKChlAbSlBKfpQNqccKQBgA8cY4SE8ANo0zYaoFMTJfcYeqU6Oj5paUrK2XAdymCFYypGRhSQU4BBA8dKy/U1PISkBKAojkFRKiCcAYxgeM5zz7jgdHtLFViOHCuKX68kGhEkmWjPRhqxCXGTKR+7dknxhCQUC8kGrI8q6PrlywojDz9RcTGaZaW848CAlDSAVLcUlSiQltIKlKJUAASQAD1B13sd2czU6tTdP7VlSWLLpshpE15l0NmtzoTYiLcBRuBhbW0hDa8KUEAqW5vXlcO8/uVFpx1adWjPIrEyMldZlxnPrjpXubXA3hSlIRwFL5BO5WPCQYkqJT5FyV1iM4VuLlvqckLCiFbSVLWcncrBPBIBIBJyPPSzb6EJHNGcI0i4ZSPYye9XbhOOG6ad33JIsIkS4g3muVHqcK14oq5cnNWtWgtkIr90RKtWIiZVEpyPmWoy1hTT0hCsoK2twGWyNwTwFE+SEnqTim1huKGilSRHDYS0hKtqQlJyEpA24APCkEfTyPpIwWgW0YFs02NToEf5ZLDSNykEhS1bFArJK0FHAUNmVEAKyrB6P7F0urRHZYV60mZJahQ0ArQH5bp3MNkpKQQQfpKUJwASVDAKitZ5LMqxiFUmURExkv0yHPlWXHpJpyWVy8NqDVKDIRalGyhI1x4pWFkI7fbSm606mUa12HU023aaRX79rspSWKdR7SgSY5qC35wJRDlS0L9CCHAS6ovrQcsAFqvxBu60a36vIpdqoTB0n0zp7VmaZ0GO6pyAxSqU0xAdqLLYQ0ll2YIccBO51DTUdIjrCXFbnA9wt5vdlnbmnRCkVt5juC12gW7ceqTzTi0S7CtSbFkvxrejNJLiGpYaeLs5L6UPvqcZS60ENtl2D+XWCtP7V1TqkgpQjHB+oqOFbdqQVqK1EcEkkbjgFNDUlBIswaqowli6kpxEv1ZCoxaytvS1nGEblynSSkcyg5UEpvJPsoycRCNkg3Sq6t0pWVhwkglCQAOPO4kHzuOQFYJ3KBzg9WGqs4sgBAWVHCUDHqKP9EY4UVHABAGB5CiCOk+kVBx04bBbSD5CjuIG7GRnanIVyACcgfUQB08Xtl0KqFZqsO+bij+jToQzRIMtBPzc1YUqO6thQyUEFxaE44xvUMqASAZem5g1XrYNem/TDiRDODLeUzaee4dWUeOKq3iPsULK1DIARDFEqEcR2y6Sv0KCm9rnhMpqk9sOwGFoUoQ6W42HGVrykgOuH63ELWQCQBtUNgd6zKakKaWEqAwsjgqUEnIBCUq9wk5yFeMDHJCG6haq0fTWlPu+uJFwSUpo0ChABUaTOmFtqIktISVrQl1aPoTk7SN4DYUBrWr5qNgaVSLuuZXpTDGkVeQHXAA1OfCXEUxs4W40xGDiUISdwSvjBUrlaKeGScxY0SL9MomLS33GhpxyRH7TFgsqW41KqtjKKYFPEU9iIiWlCW92Gq6XlRdNaJPLUdbCKneTydyAaWhSZCIQcUkBJcbYUHWz9Z9ZIwklsqiuvC4v5RVX1WEFmmwWW4FLjFRUGYccbEEbuUl3HqKTwApXgEnrfXzf1Uu2oVapSJLherNQkSZCgopUYaz+wg5wCqO2gICgSd+xIXuHlNulO303OrIpbIjePa8g3WDB74Vvpu1NQnJRJC+R5AVHEWii/Pm8XXHiDodDodK+i+q2llp1twAEtuIWAeQShQUAeRxx9x+8dLrS5qZEGM639TamG9oVgLThCfpVgqAOOQnyAR7YHSD9HyjVRCqZ8kAhJbx6idpC1YUjC0fVtIO1JcOCdxUTjcnrWQNKLXgusuM/wC/4dF6gNXHlhA+7VZ8l1X6XfR3rUgfJltIH7RWCFY3bUgq3JG7wFBIUcHAIHkjpEX1Fbzi1HKlK3KOAMlQBJwMAZJ8AAfbpQJEzCXHXCVAJJWpaiVKAAASCVD6jwlIKuSUgY6T99ZdedcIAK1qUQPGSecZycZ8Ak4+589YiU+KwtXb+7/nT1rpiPjiU0XbVx858+ax71eOrXQ6HQ636O6qSraoKAyRn+0Ef7etxXIBp70FBTtVIpkSWoEknc/6hVnJIHKeNpKVJwpPCsdaXpxGtVqMUqztErqYGE3hYIkqyjYSun1SbAUDgAK2lgqKhnKnFAqUU56x7j70nn+OD361Y+okF0IteBSn6Gf82h6bv1ecjvNNNPONlDb24tE4G8JxkgZyAcggkDIwRkEE2enqVbRE1DsdtLuCioUtcHXKpaXV58NpHyyZNC/W9FASlQW4paW5aHBsJJbZwpJVheJS4058+wr/ACD+L9AXNV1nKgH1XzgEPYo8+VD+fTK+h0Oh1t1nodGOh192lOBLhdcjEkqbQ4UnJCgDycEJUonacj3TtVncXOh1hL/h1hB8/r0saK5FnxVqbK1FbbjeRghKiFABRUULGMgnKARnjIwSQ67JyEsgD3VnHGMrQnB3fbeVcedmPcdaKNNkRAoMLCN+N30pJOM45Iz7n+z7Dq08+4+orcO5RJJPPJ8eM4wBwkAAJHAAHHWKb+xVeMBT7fWj6Vn7WXwlyLpCi8GLFwfVKcGF6tdDodDrbo3odDodDodDodDodDodDodL129apVjTDVfTK6os6SzHs69qJczTSVrU20YFVp8ySplvlKfXRCSh1IQoKKQracrSpBesxmQGVNOIOxxpQWngqIIVkjOAPrHBxgc9Kdpu9TZ7jS14X6ZxZBeYjb4zdXXSTfbeO622rt5Q5GrCUBqyEmKRlWXDT4rH1ofq20qpwrmplKuWlKD9IuOhUir0yS4hC0S4VYpUWeEvIOUOoUJJZU2SQ6gEYyc9ctnfjpqr4YnfxpF3s6GUp1rS28a2mqX5QYSVwqFR6/XDJh3lbDkSL82sQKnAf/WEBtKY4Ym01ElDaiQkuh+CV8S6ja6WBQe13VebHianWHTnWrMr8laI38vKA04kJgMMqUEszaOhtthDDa8Kbk4SltZwZBfikaFU/XLs41FpQjJcqFjVan6p0AlsF2DMp7oi3gYygpaA/OtWVUQhr5Zaw5BabShXrIx0hs5ncthtt/pQBlAkQJEnSxgsyrzbxFQZchk8eQ3cavwj8Xdz7f3aD+x9x1ZTITuEdeMtOMIw9QkSJxmIIScilLyNJ9QrX1u00s7VSyKpTqxa960eHWqXJp88TUtLfituzIEpwNMhmfTpLjkV9lxO4+kl5Yb9X0kHHtVblaQd19YeoKHoWmWtloXpV7volOjKciUbVChvW9UJtRZQhbCnVV6hNTU1A70PTHKbHcDjSY3oPc2fwVu6R3QvV+8uxzUypmNbd4OM33odXHnEw5Py9WjR50SFCS56keCmrxJsN11Bkvvh1Da0pd9JKh1J2bGNLu+kFKSkyTIQpZUHCoj0AFE7lfi3KCirhWTszgZX7OD3bba/bNUjHT1gjuBtZK4xySixBv0ubFtk3u37l8G/FG07vtyPzNPcw3W0kCw4RVQqKRZGpFl4Isfaq6kKubVKoSo78eiJ+Ubc3gPOqSFrG7IJaHCFYznBBUSVJ5ABSGsXPW6wpinVRxD0WQsJSHEBaXnXdzbkFX1hPoymnHEKJKSoK2nCgk9YjSiDIWQcJcKQkr3EYUcjIykDkfh4OOOAOsKQ56io5KEqLMyHJT7HMaU0/gH+buDYBPJxnIUVY6RR+E+19n2EnbRi1KSINqYxdNRkRi+nzVXHHU23/wCIvxH8UbnR1e5biboTkQlok2FRlKlsREFkVTT9fDa6Pq/edzWlTpenFDs6TaE8zJtDbvOfXX66aUuoy2IzsKnUaHHBUEsKTLYcfSthCI623FuJfzuqHrfccluZEq1iw66mlBluexYNemybwimUXUx5D+lt7wbfu52Cgx3PUctmfeUpZANPp0lLRCkz0zW1QKpqPpVKKkyNO7tkzKIpaFJj1PTXUEO3rYNZhOKKkfLxUTq9ZMxtLrvp1yxaw4l0srYJ8iyKyLlQxGVNqKKY46aU7UEUULhIcLZlOtFNEblIbmOMtDEWbES4Y6C4X0+n6XE3xB+MXxV8MfFe/wBLS1Pm7babnV0NDQH5QGnV6nNhOVJNxEKTK29elW2/s5/hx8R/APYu/bXU14bredr0GO90ZMBkRB+bpE2M05YGRKhojZxcHTIesV8ThJt23qXoxaG0CJqN3C0y5bYm11RVl5yytIFRaTe1wMBshbcq9E2bQppeixgJUx5mOGwXx8NHsC1Yrrl8as3JWLyu62GzJRUdHrGpOilvS4K1OLqFNcp9Ol3dcbfz6GoTkOpQrqpsulzaazIjId3OtKd24wJaUFSwlSEkEDlSMhexZClE/UCk/VgqTuwoZz1kUm1I1bnCKhxbNXeBMSZEa9GUQ22UKKnm1JUoNBSVKU6o7k/iOEDqL9//ABr793neaOvutGMpuNPT+bbDAJCTpArEOMqHkjFXC1/D/wCCPw/8O7XV0Jbnca5Hj/eaTHawal41ISlqrxVicZxjQ49WNdoZZfal28aaaq2t2x6OK0duG9KDR2bjuifVZ943ZeKKBEk0eMavdd3V+67hqiaJHQqi0+PV586HGahQ1NsGHHiQYbcKRRqzZ9SlssMx4NqyptNXNqNNQapMlzKbCEWDCkEqa9ISkKkvKfaStqMVLQWXFDeXRz7eetunPU6BTlPVeOpTS2JKxDgvpUohTrs703/lgE7QEpjPhedyggJIGvp0P04yxNZgsPOJw8ae2T6QH40Oubkplp8ZSptv6AEDBJPVb9777u+/7mG43XLTIenT0qUjFcy8Q5IorQyrxfV4fh72zY/DWp/7FEWUierLlayiQjGNthYN/ukrk+SuEX9KItWLB7nu3W922nRNvHQ6dT6nIeYWyt+TaF41GntNfWElSYsSYw2k7QPrJBIPXMMCR4JGRg49x9v3dd8H6SJ2U3V3A6BWjr3YcNdYu7t2mXTOr1vMtKVUKjpbdiKPJrNWp60BLTj1t1yDEqMiklPzDsGfPlR1IRAkMu8EG1RIGDk+Bj94/swc/bBz466D+DN1objsGz09HUJu1i6Wp7MVlLULPJiSZ94vhEOYvxM27pfGXetak091unXitVbGBIsxhB9quvJb1w/o8Hx+aZ2OiF2g93NQnyO12s1xp2wtRHEvVRzQis1iU+uaatAS4ZD+m0ypyPn5jVJZYn0WozJk350x5q0I+kJbl4Wnf9qW7e1i3LQ7vs67IEes23dNtVWn1q367SpTDb8eoUqpU2TJakRXWn21AOJjymzuS/EZUEhXwmep6vgffE87ye1vuj0Y0K0211lUrRjV/Uq1bIuTT3UiNUL+0opS7gqPyzFfplluVSD/ACfqyZhiNS6varsGuSIi3G2XHJCY6Uqe7dnhuYupBIgrKGazV8aRbbU5RrFNFdR/tndNbR1NPSks43GMByFXWDJR7l3WR6+tInaCUhWSnGRkEpyMjIHjIOefI56sPx0SQAvatBAyhaQ42oZCgdpIHkA55zhJGCM9MAs/vel0aXGoXclpbUtLHHlJSvUyxxO1P0VqM11agZFRr9Ahv3hYLy0pdcdYvCgN0mM2ykPXD6kiO04+q2Lntm8KVGrNqXBSrjpMtoPRanSKjAqsOSyo/Q6mVTJs+Ojf7MvPNSkjlyM0kpHUW1+1aujAjwJQoGNkUcOBlfFfyuFpQovqY1q6Jp6ryhKZcXitFf4qTkGX6Gbu6Ri4u2TR65qs9W6hZdDgVaWHBKqVAp8ekz5KlqJK5EiKhtyQ4cpSS8txJSgYQFc9GW1dGtOrHKXqDadFbkJDaVTZFOhzZa1tjah1b8tl91LowBvQtI3JScJOB0sHVwoOM5JwPAAJPvhO5SRknxkpGTyRyemzR2DLWdTSLBjKUKLxED1Tl+8xVoyKUeelb3bfOk6M9xqS0UqWmtRQ/Qto8CoINYrrBYY2EFQSFHAbSnjBIIKQlICfHASkEAA4wB1iVSVS6HS6hWq1UotKp1MjuT6hVqjKjU2l06K3y5KqE+Y61FiR2cFTjrjqcA4AJ25h1+IN8ef4e3w9IVZod4arU7V/WiC0ERdD9GqjSbtudme5BlzI8K9qxCfepNgtLdjNxX3pVQFUiuyWSmGseqhPz9Pig/pAvev8RpdZ07drzmhvbbIqiJzGiNgyPljXksoaVDOpF5t7K9ewiOth6PSZL0a32HVKkIpfzgRIbkew7VuNad6uiwixlTL0gRoAMpal1YFKUiR3c960tBlKL8yXpTjI4yMP3QfUe3LMo3TUiH6Sh8bm2e82txOzPtnrrtS7c9Orlj13Uy+IeG4OtWodCW81SoNLShZS7ZdkSEJLL77alzq+07NhrRDSw7O5TNKP5MjUaz5F5n/7VoFbi1SvJJP7al0gLqUqLwQcS0RRG4zhLpOMAgp8pRWoqPv4AzgD2AyScD8yT7kk5PQA3EBIweQTng5OOft5weTngAZPMx2u109ppfLgqNMloyHlr3fdyuLwYh281/2nX1ddOPzExQEYngoQL8INdHJ5qrXvctTcpFFkO1Cv1idKiUOjRJs8ibVJ0ubHo1HgQIciQtRLi2IcdDf7QMqUVNgHb0Q9kvYl3id2tI0H7QX40zRzRzt8vpGuOpk/VKhy0Jg1a+qtQqx8rWbMjyI1Vgx5kCI1Etm3rhkUeqXNUi8GIsaHIbqK932yfDd1Au3tNR3Z9vWpFUsyr6E2/RLg0nu6I4ujN9wGtt3IpM7WayKHUPnWKzFtq3KLFsbQK0JkpmLFvDUCFdT/AMrTIUaI1L6EPhS98miOvmot92wmJRdDNZpNEs23bw0JrATaz9tak2E7/IyuVGlUF1KwwlP6ogx50UvkNPNU+O68l109TztHbjUlGeosNMI8IpJElxlI5GUULJiNI+jzBfiLusIbDUdANTVEZXEWDXGCEhIqkiMipEuNJKupJ7K7RKJAm3XUr+vq879qd+1x24dTJrkIWTP1Hhw0uM0KjXtWKbU6lcE/T7TukvqoNmaW2lWbNsODSJEtyr29Wa7On12Yee0qnxGO3PTaoUqFHgUOtm/q/b8OEz6MKLbFxar37cdptw2fqEKH/Jis0cMQWVphsKDjkVhj13Eq2/chqHVrfsaNYVmylo1d1qkS9LdMoacMSqPX6u2hqvahrmD1/kqbpVbaKxdssiK85LmRKTBjqbmSYxWrFOoYsPT6ztN9MoEiI1a1u2vZdvPVOUuXHpFJodKFMerEmaWm1fOsIiR5VLaQhJiTSh0vqLLYfs7YactCEbjWI4uzPpFRW5C+OVYXiHHqkdx8zc5lFiqcjyhJi222ojZecN0Rei5pIy5XtTddrvaSk0hFWsjTW2n0oCFVBGnVuyZNxKUr1VCR8pc941mEibsaS98uYKELVB9Ra7qiBtKQkemnKwBkryQrCvKiRhWf354460FnW1S7Ktqk2rRUrESjtSN8pxZclVCoT5smoVapynhtDkiq1OVLqchSUJCpM2Qs7isqJ86eJTYVxum1Lafcc3m5S+oXj6rLu+PIjOBOP3UTBKhKqmVKYSyqeo9+h0Oh1dHXHfQ6HQ6HQ6HWn6HW46sr2l1pCgFAhZ2k8A4GFFPg8BQGfuSOR0r1o/JmQvlceV1XvIqrf8N+ejdKXzZxgFMpEbu6tC/B9esNlveFKIOwfR54JUk5HnPCT+Wc8Hg9Yc1+FEYnTZUuLFiQYr0yVJlzYkCHDjtbFPTJcyc8zEYhNLdSX3VvIKFODgA7jmVmbDp9Jny6jLYp0CIw5LmVGU+iOxDjMNrW68464diAlIyn6VKUvYlKVEgdNUs6lTu5gsXbqRS6lQtEKE6oWJp048ulTtV5qXApi99T2kMiXEtspZ/+1y1g6sr31B9+e86pstx/dx1dTXkxV9JGNsTiXGg8YuScnNkqW6JVsIQ20BQmrISk5vpcpyRrwGAjdZ6z4d+37rqKjB0QMW0NPo8o0+brfcVNnJXWYe7Y4vTGiLZ/Wr5YZQ9Lk3DctHjtNRihx2oPFlxHSnWNpRaukTSZFh0h+Rdc0FVy6hVyqSq3flzTPaXVa7VVTXHBhT4biU6PTYUVLrxYZBeWtKlRUOtR4zK1x22IcdFPp8OnRUQabT6bF3NxokSJvkBtLeVLW4HAqQspU6Pp5S7WXU86c0WkM0WAm4NQtQK1EsLS60G4hqUmv3nWcKguCBvbU9DokeLJqVRcK0Nsss+opxGG1Kj/AHDdaeloarP1z045gypZUVlE8MnlbQvL2On/AGGhuu7bvR2u225VnPUpeESh9MZfWLx8qF1+fpM9SjU79uabonRrket2ixrcduruQvJKFop9h6VpblLm0aPPbcfdgXVdi6e/SxBbiTVR/SZmPsPBEePMytIKS1c9fRrCqktUu2qTQV2boDYcsCRFsSyfl4zM665lPG1hm8LuMaFJLba0/wAn2YgiN+u9JkOEhp0tpgq7XbHSqm9VjY1YpGqve3fkB9UaZqdqdV1MXpaum0GQ0qTGqEVqBKQ89Tg40ijQIkOMllpMptSnVXHc9LolNrtz3NObptMt635lfrVVLA/V9NodIUx83KccQ4C0lhMhgNp2AOb1bFbWiBCZR1twTlrOGFlLRWSMmqWCF5ofJYDZm60odq2Gx7fpsZ6243UdGwiSjLU4knDyKoc0C0r56ZT3K0SrdzutujPYpRpEtQ1qrMW/e4mTRWpE5dv9uWnlbdMakVSOxhTf8uakuPBbS24mb+q5VSAZaW5CkyOiqlMW9ZVsN0SnRGaNQqK1EplCpLJBap9HgRkR4FOaWUgqahspbbSrbylW4BIJHUO3w49N6hJtTU/va1Ft92n6id5FzRmdOYtRlOrk2dovS0yEaeUNr1okeT6CrZZqVbdelR2Ct1Qi/UhDT6DD8T3vMo/afolXabRqgtu5bvYVbVrxqetLNYpcepP+hJrvqlt/ZTGHmW0S3FIQVgNqS79DiRzV8X96lud/q6OnGtKCmRV9Ubt8SQtLVrCWp13V+EPw+fDvYthu56Bo6k4P3ZcSLESSS/flVhTNT69RV/Ed7rpHdN3SO6KWtUo1M0q0Vllqu1CFIU1Br9UZWlJhhlDaC9Di/JL9Ba5DqZa3nCW0BtQdht7pO4KrXhOYtOjLEG3KOyiFGJdK230xUobKGkJQpYb9P08BK1BJ3KBHr7Ulmq6iz9NrJqMF0xZVy3VUJ1cuObUEpk1dDE1Z+XjPVBCUFZfT6gcIZQ4jYCQ4lQUY4btv1xc1SkpcfOVH1A8UJSor842K9TdhQB3ApIJJO7mEbfbS1ZMj0lsm2iFFNyUOPHPmgMEjPVgd27lLWSKFyV8NnKgi4ujH8aq430YLnvALW5HZfUox8b1lShgkFQKF4ACBknKSSokI4QDhNJNzyVEhDilgqVkZwnGEjOVhZVkJHjjA4wMDpOrhudC33X0pcCnHACUKBDZ28hBJG4ZCirAAClZGcHJPdrpdwMOKCvJceORt5GcE7c8gcnIPGM9Phpx0CEUEpuvP0yNvkBoP3rumPUV3G/YokbrwRxIX1LGqj4FquHgElgV1645BccU4tB9PBWleFKSkjecqG1KE8qUBtSAPAIHKz6NMprNSRWJTPqQGSoNuIV4OSdxSMLylSdhUQAVApABO3poNPmJmzGYg3ESClJOc4JWUkAqIIJGCMpHnnIIIeJZ0yJRabGpkVltKWUguEZQZCzlZcLo3D6sE4UgYyQCc8mMqCIFUNEmahThzgrOG6ZLS9J3dRfANyDlgRWNFMYyHIB96q2h39IrTTayptSA0rCydwG5IK9nJUnyFDB9xyApIJ6Imu2vNI0ssiXUC6HK5NiPxKDDKySZ77ZSw+rYStTUdTgeUpICQhs4/FkkA3zT7dpM6q1R1DMOK06paC5tW44EgoS0CsYKlcAJ3nKyM7jxFVrFqbUdULsfq8pxfyMRJhUuOo4DUVpRSkqSklBWsDcVDKtpAKsAJSbpQlqyLSvLIpQo9/q3Q+9W2kuipbqVPkXAUg2XapRV5Cs1YLaQLgr9TuarTK1V5LsqfOfcffedcW4pS3VqWrlalHAJ2gDGEpSOSMlR9NYseEt6qSCSpbZaaHO1KwsgkhIWSQncAcAe+MgEo90rdCnNQ6dHQoLUSlJ2oAI2htsDJUpIySDjBJGDngjK5iRIxi8SPtbUjxSrfvfnPlffpv1pLlS1VvAuPNV7YAPo2V0t6qxyknByQV7TuKhnKwPBSog4SSs4xyScq6fB2525b+j9iXR3gapwRUrRs1c+39GLVlBtyPemocyMmRTK0phbjTy6ZRHvQqkKYlKGkux1rXMZLZUlqfb7o/N1tvP5KoyVUfT61Yq7i1DuhxC/laVb9OfaXLhh9brUdFSqLKnY0T1H0qaI9QNPKShpZd7u+52VrTeEW2raiRqVo3plTjZ+mFrQkj9XJpUB1DTdamN+m2JNUmFhtyVKxuecaSpTix9KUUtJ1GP5WsVEoPBZFc545v0uGi+lLqVC7kZD1yFuXCgauMKW05D7AuEi1R1TubVC97rv676rJq1wXfVJdVqc2fJdlyVPyQr1GkPr9Mei2kENpQ2hpKDgIwM9JW9OabSCnDhPkBYG0DOSSN2DwODjIOc8HrTuPOOcuKzgeBwhOMngeABk4zyBxnpV9HNH67qtcsWHGjOoojbpXU6k5ltiPGQFKWreSDhJ4BHGeDjkAR20PzaiRoqo3xcqFryvL4S6/V6TmvLU9EWX2mkbXFhEOJgWs0ZDHR20C0lrerdwsupjri29TJLL9RmrQSiQllxK1xGCQUuOuDCdoznJBKQCepHdT9Src0po9Mo9MXFbqAjx6VEhuKS29ES2koVJfbClFDwTnKiSshe1BSAsEpXle9k9tFgJoVFajN1L5VLdNjRkpEqRNSjamoPZOSjcSQpWMJUnbtGQIormu2vX/AHK5Vq7OfkyajMT9KnFFDKHHAkIbSSEgpScbsAqVyo8nrJtYqyYkARMqxIl+bG3ytHi7LOjObFjLzxjJuRxpMEgLP4/Qw5enTadu1jWnWdqfVj81SbfmOSY6lKSWlT2BsbdOUjcpLm11CgE/5JByoFwdGDvJ1WdqDtO0ypbiEQ6Wfn604ysqMiU4teyO4oKUjYjDClJT9W9oZISVI6taaTWdFNNa7d0ptlup19MmNQ0KcJkNvlDiG5S2VEOLbQvCkKShSFJTwpQPLIq9V5deq06rznnJEuc+4++86veta1qJJ3f0QCAkDASkAAYA620tO9S+NRiCXTdkcYcKjJrDybCslfOlqSDNhcmkE8lPLPmqbqve2tR0Oh0Ol3W/Q6HQ6HQ6HQ6vsSHI6wtsgEEkHAJBKSk4yCOQccg/lg89WOh0EvrCCU/7+4+R+51nPT3n9vq/Vt3bfwjG7GfwoTnwPP24x1g9DodYAL+/nK/59AiFp5fKqrXjKr0Oh0Oh1nrPQ6fnr/Sy/wBnPZddCk5dci6r2444ANoZpN4vuxGyd2dyUSlkjZjndu5wGGdSl66Wu/G+GF2YXI8hPOquvNKSd24pQJ8R4hJDhBHqFKsJyAcEpCV84UPPugYfNj/o+f19ulGjouqarkIQGSe1uB+ooKNWDk6i066Lu13Qqdq98DfuXXTInzFTsjWF7U2O6kBXpMWdSmmJ6tpcTvUhuqRcpaSqYUK3R48lLbiDzo9dz3wMtNIl2/CU1tt2dDE1i/Z+t7TjBIPq/LWeBG3J3DcmPKaiyMZwdm1Sc53p9xKR8sj4Z+q6riRbs9y0spsvD07/AA/2x7putTQFix0mV/Qpuz7oF2V59nrhkWgtqKT5H8Py5HkHIIIPg9UdGC6Keuk12qUx4bZNPqM6DKRgp9ORElOMuo2nlO1STkexJA4A6L/R8JcoRl9Qfpn36aN3o/s+51tGx+XNjhvx7X9vD9Ep6cPod293RrzQ9VF2QyajcunFpC9lUZs5kT6DBkparLrCN6PqhtONrKiHdynG2koSV+ohvS0LbWttxKkONqUhaFgpUhaSUqSpJwUqSoEEEZBBB6kG+F93DxO2rvH0svattNybPr1Vj2DfMN9K3Y020rwmRaVVY0mPu+XfYKXEOOJkIUB6YCFtblKL7vjc/DUl9rGq8rW/Silsu9vWqMtVwQ109bbzVp3DcT7Eo0aQtkqQiPWTITVKS0SgoQqalKFpaLyxeZL4Kt9hx+tWIt0WKYelGh23cbna6u60Y846OZwL5cbjG45brK/r7e8BPQ6Hjz0Otum/odDodDodDodDodDodDodDodDodDodD/n7f39DodDodKLpZqJdGlN9W/flm1ubbt025OZnUWsQH1svwZbLiClYU0tBKVbNriVEocScLBSTnv8+G38QG2e/fRj+S1wLgUzV+lW5VqJqRT5DreyuUWqUtdJj3DEaUpHrtRZL6m5TSHG1L/WH05WSjr53w4IP26XXQPX3Ujt01Ht7VLS2vyrduu3ZTciO+w86I06Oh1K5FMqbKVhMymTEobRKiOqAdSE5ACUlUs+GO/y7PPcQlqyjDdS0vmX6oppmpE/M0P959T9VDqB/HHwXs/iza7WOqx0tfabiOvHV4E2ZFgmmjOHH8qkhQzZby6nl7y9K710f+Q1ItF2VSdTOxvWZ3Su4amw0tUp7TyozWLg0UueIkEF6JSI9Sl22qtsKcTDhuQQ6VuIAX12drXcJRe5rRnS/W23JKVouen08TZUUgR0V+H8tFuCLHO71kJjVVEuOUuoZWptlp3YlKyOufDSruS0Z+IVftNSJVKtOZ3odvla0E1xshyp/MRrZ1fsRubVbeu1hamIDfy93PS6M/DmLcjphynao8tTy0JRLMXwLtTry001E7h+wrUl16l1LS+sVevWnQpaluvQ59Nmph3A1GcQlplDM6HHFRlFCHR68JDYcW09ubuP4R7wbruMWNamnqCIyfVMi1aUnzAuxijBtvBVfxf8Naurs47pvnsuRki/3c3TuMrqQxlxjGxs1G2xHsWCSlKc/jKEqUfYrUNylAcYClKKsADg8YGMUPRdgbwoK2lRwUEbjlJOSFg4xgcEHA4PjGv09mN1i1KVOceTIeXGQ26RuBHpZQhSuR9a0gBSSAU7ORknoxKTuSQDg8c/bBB/L7dSXcakNbU1oVUGTyCg9VomGuPlEq8InVbbHRhxJN8o0R8nBjyiIknl7NIVVZ89M919iIs+5bC1ekPuNUuPU06a6jSQ2fk4Nj3ZU4Um17nrOxe5qkWPf7TTdRnYcZg0S/KzPqDbUGlyHVKTa8Jx12a0pAbchLRvTtAwtTsltRV9aSotFojA8pTs9xjda3UqZVNLr3gxan+rj+oqhLUpqBDqcuQY8UtR46KZUG3ok+HJmS48Scw6gAl2OreNpQo0NUxFADlOM6HUNzcKpvTaesPQ3pdXotNn1Bxl0Dev1Ji3XFJ8J3Afl1wf/aH+Ftt23uO07vtHG93EtKWnGPG1+Xc2fLFFCeXlQ8gOvS7+yz+Inde9/Bmv8I9xia0u0R1Pkbv5jepGHpa0OHo5hCZWpKuLcaaMV626LKYMitM/PSGhuD270gdw2DCEoWBgbQcAnbgBJCB0v2hNrP1m7aRVoAEmEhD6m5aUlcWSFNpUsMPpOHC1ja6A0lKNzZKj6n08HX6RN3L6qt6+VTR2dc2rdG0csLS6x7g0+RZlWaodEvHVG5qkqryKpf1WU5HmyKHBokeqxYUCiSEVNFYkR3oz5RJcQiaf9Ei7ktYb40vurS+6atfd06eR2Kg5QV3VUahWoVk1ShvsERbbrNRfkSlWzc7FTfLMB3K4tSpEiUiW8ma4zHgHw78FbbcS2Pd9zrfOh8yIbeMIpFiQmHzDVVlIbfQhfFLJQ6lHxf8AGu5237V2nbbbgx0pM9w6n5x5BcHTOOIlcZMpVFs5EnqW7mrYodq2XeGqtSeTCodkWldN43G836aX0Ue0qBUblqSIsdRAqDzkCmzVIiqLe30d6VHOw8H9r/pF3cKe5SkWJVu2C0J2mV5JpFyQbHoF2rqGrDOn17UenV+jXHT51InP0aFcU6hzqfUEWzVJcWsUtShEqqKa+h1o/Qd1BNi6qQdRO36tSZK5146cXNbtfirpFSVGRbF5UiVQai4icthinSlLjS1JVHbnB3O1Ky3vBPEvb36JvcWnfcza+qtsXU9J06te8WLniWQip05hapdFXElQJiLpYdiVeLCmzG2pMenFiaql/IuNGS/86pTM77t8OdrnPW3kNqGpqQSMQb09Wog+iYRvyryKZDGxj1XvafjL4g2sdp27S3po6OnIJ6+ofMDTGIRmSkEgj6auOI5HKzVy7hsbXrRGJctDly6tZmq+nDM6hynkx2VLt++aIUMSpUJ1BfM2Gl2VFXBqkSny4cpmfDkRQ4tLjPyw+7TQ9zt07hdSNIV1eJXG7SuWqRYdSgwqhT4ztPekvSoKGo9SYZecSzGeQ2ZcdUqDIWFCLLe9J0I+sM5oont00TRa1zVNqHb2l1lSIU6uMRKSqJJplFSp+p1PZcMwUn9Vu1CpuerAqDzS0wf1bFTJUYS3n/l/991v2rcGs+qeqdsocpNl3ZfVz12hfquTBuWmQ41Vqbr9NhuGDcM80SJOUXUwEbVlXyUraqSlCkMofg0lst9vtoadGsaKt0QYw1KCLcS+VemR+UOLyGMl/EXuGy7x27a6mhPlrbY1bUZcvmGlKaTVXkRi224SyI3HF+7/AJ/u6Wjt2uBVp67aL3Wl4sG19WdO7iLoBKmhR7xoc3eMBWMFkD8J85GcEFGFEqUSSCSfbx9hj3xj78/fnpRdIqVJrWqemdKiIDkiqahWVTWEkAhUioXJBiMtEZ5S4pRyCMHG08kZsyWYt4/SvN/VK8+6dVPs9WWluNGcYc5co1C0fItJSoC+y1Xl6+vs64J6n5ra/T+ekuy4yPxb4s9IqDDqilQKcpkbSkjnZkE8gFuRZVHRU27ho669ZNyD1lsXNptX6rZtwtyZPprnOyZFHkMQ6umoSUKflorUKoiSVhMkulCD1vKVEcaajskqdXT4MKmSVKI/Zz6fEZiSWk5PKUrbXjdhSc4UkEA9bZSFJxuGM5xyD4/cT9+m3caOhryCUSUQ9P7rTa+G/N04crQt9dSdr7HtN123Q1NzpSkzifmPSPEopK5UOPDG7PoWouoXeHb6pEOha2ad3hTFRHEMv6y6NBdzQTklcxNY05vSwLer0lr1AxHpzVnUIOxGoyHZbkluVMmw9/G+u/uDo3w1e4a/bg7jtTBc9JVp2xCgaXVCVorp+1T65qhaVJqNNbti0ag7XJ7FRos12HJTct4V4yFj5hQI3R1TRSJAWoNYKQCN5KiobNpUpIyCeQryNpBGOcjbCV+kOS3YHwqdcTGWECq3xojTHTgq3B3VCgTgvk42hMBxJSCAr1AfYEE6Wy0NvwlpxYsvzkpLEM1QCXy4NngLq+kHe+y9p0O0d53BoDqbfY66EeIkqGSt2kSLVUsrieM/N3edW6o7iMAkAJSlIPJ+pRSAXHCPxOuFbq8DetWB1Z6qX548bUfn/NH7v7uqenk8H6HXMXJl6nF5q7o+n8PHQ6Wft5ds1rW/Sf8AwjwYlQ0+f1AtOFeMacy89ENu1CtwoNXfdajyYbr3ykGQ/KS2JLQUphKVOJHIRjrIjkAknGMpzk4A/Fg88ZBxjx98563g8ZwlV1OKfZ5FPhunNVnx79Fa8SWlOL4kU15pax4znHXcT2y1Ku9hXddO+FRqDfECi6Yo1Slardq+t8unFpVUt+8lqm0a5URzOFInV6yYzE24bap86DCpTV8U2h3PV336bSjbtR0Hf12XduFvdzqrs0sp11X9Cv1NVF7Wl2+3nGvPuB05u6jWXJua2e6egVakRpMVyF89QnqTrfTrieo1J1Feo90XHbbcKouU1hDMtVakv4ivwvu07uG01eqVW7v+zG5a7ozftJp0ddQk1W2KPZVavyDUZLS5K6nLbrVt2M02wUoVHiylt05h8mTIdVIL8Iv4mmn+t9c0403vuHDsi8Gq9otaseUqg023aZVaPSbn1EcuwSpkYMJqtLEe+UwZUapGQg0FUyNWXX22oz7M/wBjradRjaWRlG6RiMBiRyelrkjeRJLggPdu3yky4xrJyolyi1iTLNW2xquUhqIRHqQvT6r6gfDu0S0q7k+8HVu/u9Ru57WtXSu+tfbLpSa3M7ftJrnYVfFImWrUKXBkOXJp89VWaREv66qqqnVyrVKDT0T5rlNoLkhuaXR/U3TPWvT+39VNItQLU1I0/uVBdo90WnVEVCmylFtLiqc6C21MpldbQrDlDq0ODUmnEuNPR2lNqJa123UtOlWpuuHZ7WHWE2UxT4ut+g1vViPErNLXonqhW5cS89KqlGrMf5yXb1laoSKkmNbtUJeTR7sgxyXG0vPvx8dxnZ/fvw1qjq/35/DXrlPs21aXTZd19xvZFcMqRH0H1VtVU2G3UJunK5clabEvqmMuOPQjumT5jDSWKU7E9CUHpftd0afCWWGnHjluUfyLdykyZMbRt80yk0V3PaQ3c9TRjUJWYuMdNk3i/SQ5SU5flPTHjpwJTJ/QjIyApKD+DcnBx9uOMjgEDgHjrPj/AORR/pf95XTGeyv4gGkfelRq3RaJDrekuvmnJRH1g7XNU4Uq29YNNVuAKTWHqTPjRlXBZ0lr0H4l001HyikSEtPMtqShxx+jTQKQV4UT/RJ25BIJSc5IPkZ9un79t2utowlpWyi1NyspN2U0HDBcbG0UkHKMb7tu62+vqaGpEgRYyjKUsSJRujgSpzdKUGLs6jv6HQ6HV5dcW9DodDodDodYcv8A6P8A0/8Aw9CJ/wBJ/of+LquV/k0/9sf91XWPFcy5hJBSoqSrHOFI3ZH5EEEEfv48EGGYP2/6j/6dLNnINXTW6JMcfWQxP4XIvpJdWLUf1LnWxpzMym0Z89FyXYhBUlyfEtwPz4NKUsZCosyay2mU39CigJUlW5I2q+yzHQy22htttttttiO2lkNpjwmc/KQG2x9KIsJK1ojMgBLKVqSkcnrBlBKZ5fA/aiJ8shfGUJU6l1ZBwT9eQnAIxgnJyAMiO5+zI2k+nzxglW4qPAOPH2ySfbnjpp3cyLIjCE7Y8+XM9gj+WcWzBdvnFU3JjSmacW0GkCl9VUjmiwx5VVoo6u8p2OuEMxY4Q9UJGwrTDhoI9eQGwpO/0spwjekK8bgOemU2dqjEjRNWu9+tRzJi2lOqPbP2I2DIdblSr3u6tFyi1/VKkQnIqJTFVqdzvuSBKV6rT1FpT6nIzbrSnHd53k3TcA0/tzRexzIb1L7lb4oGkFkCNJUhxil158i4rmW0W/QLdLjw58NQlutRIq1tyJMttDmw62VTaNN7i7P0msqDAGknYVYVKtRsR6dGebl653NAcZkVBmSJagqqWtQX7lcZejyVTI6qjJaFWS9KfCqv7nvJ6veo9v02TDUQ1JRzweUa88qsuqCTXpkMc278Kdh3PbNjq983L8phGPydKqZchlJ5KZ0+ByEYrLM88ZLrotpk3pRp1Tbfly4tTu2py6jcOodZS+mZVqlfFcWmfcL9VmpS23KbYlO/J0lKWQuPS2IkR9cj0PXfSLVO06t3Ial6fdpdOblMW7dIo+p+vckOOMyKPpBbtYjy27fkbAthufedUTFgrjF9MoUhiUlCW/n477a+1+6bY0/tWr3beNYYotDolIm12rVSUkqKkoWztYaYBQ67MmzJMeLEjoC3nlqCUNKcJ3HDtLtys6V6A3h3DamUpcXVvuTmxrmqkUTFCNbljUQCXaDIhOxS5DpdvWi2JcwBDDTb1S9BiLGQ0XH478fd60uxbDU2ujuo6eoxOPE5SmgFAtxol9gtxxBZr+Efwz3j4k+OZbzuW2dft8Z6MtpJ5Rh6mfzCR+UlEhpkXy+rGKHBVW47es6+U2/SmoMO19LLRt2lUuGh9SYlIlTaI4+IbEFltDDEWmMtJixGYiWC40p1ZUFlJHEv8SPulu3uH7u6yuh1SW1Y2m5lMKXFkLEaW5GdQ420+XEr9aVKZbSZkj11p+ls+ghLiVJma7/O7R/Rntcql2SFpj3/AK2Vi6bliIMn1X1U+a/8larjay22ZLTTS5ZbIjABCiFqVu3jjFm36/Dt+TUZL2ysXJIkVWrOKeC31uvOLU2l1SUpCSkOOZUW0rKThYQgLI5U0dSe91hRI25a/Kq0rKsE7Cd5lR4p733m4+TCOiAUHpjYRahHjcQyBeM+m0pTpSdUNSf1/UZ75fWVPLUXEhzLLIbylDbBCgSW0FIUSCQ6SsKIK09NOr9b9dwqzuQNoSgHaFFOQV+ThBGMcHKgMAZUeseoXBll5xTzZCgrgK3uLK8klZKjtyBhZ44yPOB0kdWr+5Z3qcKSojZlQznPKyElIBxgISClI4yQE5fNLQhpRi0lnFvytt+mKyBo5A8pFOC5kW3/AHBqIFt2eKPD58eWoiDbaS9zBUKuFrTvUgBAxhJyM5VknLhSCeMjIX9KcjHWnVVSpxCQEhPO7YskkceDkDI8gEHODynz0RpNQceUNqjgEk4K0A8HABCwvaNxyCQMgHnnOwp7q58qPEbaPqOqUFnOEoSkE7s4UcEDBKgkBRAG7PWurpTkRYxbP3niUHgY349/eWPOctcdxzbZ8HD+UeT6atVktn/KUt0D0vthU9UyaioONJUwyTsUfwlwYXykkK4Tgjg5IxkAKHTjIsved6RsPsCoEqHORjjIG3Jxn2PBAPSOUEIpsKJGaSU7WUhYB/GrYSVFWMgkk8gcgAE4xjeVe5Y1Epa6k7lSkAltAVsK1jJThRPGCADg5905GD1giekzCzlpTziweKGBcvJaoTFdCOuJInAXj6o5imQJgs7i/l44Rc0tpQ171EQinOWjGWpyXJTHVKfZWC0yGn2pCk8KOHVemWiCAoIWcAAAhnfnz0ZK/VHa9VZdSkZzIdcWlBJylKlfTk7jztABAJ5/nKwD0W+nDQiRhVU+XAfWjHsfTNK5b6xDU+YfeJV19Vf4qlvjFHt0Olr0fse4tU7to1h23HBqNUlBlU2QQil0mKolbtQqsoqKYsRgklx4p2hJSSlRBHSa2pa9YvKv0226DDem1OqSW40dlltTh3OKCd69oIQ2nP1OLKW0DlakpyQ+68q7Q+1nTidpPZTEGq6tXrAQ5qddzDrcpdAor6Fly1aXNS0y63LjuuIRJeY2AlSgUlXqpUNXUIsYlMm6FAxktUKUP4W4BvEwkl5I+f4saF8Hs/p9B6q7h9UqHpfZiu2fR+sPro8aWZOpdyxCpC7tuVoIbksMz0rS49SYa0qQ00W0LKnC44taVtJaj6SeQhIBCfxkYAGckAAfn+/HgknJHjst+XJL8l5bri1LWpbiskqUCVKOSQFKPKj5UokqJUSSpulOk9zasXCKFbbG9totPVWoL4jUyEsuAPOr3ABSvTdDSd25xSFBIJB6148BZJaeQx5qrAWvOfdba86azyabriEI1JpVs8vqBa8Xi/Gb2k+kt0aq1tqlUONiHGWhdXqToUmLBjKJUrc6AU+utAKWmuVLWRtBHUokqXYvbXp6rKmI7rUMIQ2hKvnKrOLRCQogb1suPJwlJCc4AIBO5OZNk6e9runURtKWWyA3FlFnamfWKp6BWtZ5U4+gOlxKCohtDYOxOASqKTVfVW4NUrjl1aqSXEU9Lq0U2mpUpMeNGSohrLYO1TpQElSiCUngHyTqEtS3wKjiwLLrHnDTnz9MuNMkyZIZparK+ryN4tMZfGPPWn1Fv6s6i3NPuGrvuLMh1XysdSsojRwT6baEj6EkJxnA/eVHKlai1qO9VqrHCQEx4z7L0p1QJShpK9xHBH1FKFnO4bQlSyQE9Fvo5wq0mk24puCoJnTJbjb6uQpKA2hQVzjdtAQEDBSlRCic43KEooFvzXvflX6vv7/p5DprQGVo/wAsP6mPb7J0Z9Tb3cuB2FRosha6ZR2kx20FRKC62FJUpB3HKSVK48YCSckDakvXqlKUpSlEqUolSlE5JUTkkn3JJyT151kK/wBX64r/AE6yFGfPu5y19+h0Oh0Os9Z6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6qR+NP/aT/eOpx+6a0UW78HbsFdW0pLtb1O1bqqMKyN1VccUlwgryn1RFSsp3EABJ2pCwBBwgErTgE4UCcewyOf3ddHXxMbXVZXwxPh52mQYzvrVuuLjqyna/KpC1OqQSrGXC42cABIyFZ5wSdVDi8g43LPnzEEDLV2+1ZcZHntoO33hKDIYxqWQjUhVkIGD621xPLfOH19Gz4Ftmi1/hpaPAMKbTdz+oNXeyCUPxa5UJ9KeQ4obd6XEthRAUokfQhSSodfObZAccQgIG5SgAdysAk8Eg5wM4HJ/3dfUW+HXY/wDg77Ku1nT4M+mafpBbE11QTs3TK1GcqUpwpCxjdKcdcIJIIOCQnA6Rdx1vl/KMi8vaL5YF1fmuVfxax1Ovww7abzuPcJMosYbGaJyGMi5fvEPsKeLxK+vm1d2Fs/yO7jtcLZ9D5dNG1WvqClrj6QzcdSwBj+btUnbkDCcAgEFIbt09v4jEX5LvX7mI2clvWK8QojwVGeokg++Sc59yScDwGSdK9rLloQl9S/bBijGPH0x9MdQX4g0/k933ul/g1ZHkfe/Iv1+r/wCJ8uzpSJ/zQk09Ky9ACZxW3wWBGcQtMjPgek5sOTwCccZ6+hH2QXVpx8UT4WVC0i1L/VVVrbVs0zS+7ZlUbL1QpFwWpAEKhXU3PkLdkoq9QKnJi50hp1gyGZBjNEuOBHGb8NXSek699xUzRCpRhKlaqaWam2nbjaQkSRdS7VnVW3VQnF5SxLXVKZHYafIPpl7OD4MnnwNe6C4O13u6rXbDqAwxFtjU2oz7OqkCqK9P9T6h0qSiDEUwpSWQEPyW5SEvOuNtFDcR0pcJAGutqMFjQk6jjzePItNi+c17Vdyb4MgMw1F+TrSlpyEGHIY0eLLJU+ypVvpYc+8XtN1B7QdbLv0gvyC+iZb0wLp9TMZbMStUeUgPU+fFO5xCg40SlwNPvIC0KLbim/qQ0vr6IPxnvh9W/wB43bvXNQtO6Sh7WrRehy61bj0eK383Wbdadkz6zT58hJ9SShltLCYqC28tP1rB3uEj56lVo0+jyZEWoRnIkiNIeivx3x6brUiOv0n2VIUQv1GXMocTt3II5yOesbfWu4Tab9BKxY1YWhyT6h71WMo/i/4f1O172eto6Eo7LVqUdQRhyQJFmCpffN2WC9anodDodK+oZ0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0OvQSkgjyDn/AJ/I+/XnQ6HQ6VPSPVS6tIr9tW/rQqLtLrlq1qBWYEtnBcZcjyo70j0vp+gyW2ENOkAkpCSnCkhQnTrnefaK/iA9q3f5p4lduSNQZlo0rWm1twD9BvOmxodn6hIniOpaXYlRpFW/WNIjeslTDkVtwufsm1uwG27Ylx3NR65XaHTJtUh2w2zKrfycYvinw3S5smS1BxHoxAWXQ69ghraCfxAhUqXaEe5rdZrtvqX+s6e023W6IhJfqcpLDaUNzqfH9ZKpRCGimQ0kpUgekrJyQHjsne952Xc/P26yicWUFb4wfEcSaY8o4KCTQ5qMd+7fobzQ1dBuJuNLUhOj6xYDVipbOKXUofd6+sLorc1OXKnUiJIMinVZiNW6DIQQYTkN9ClbYTpILzZDiEn6UKaUllJ3qkBLTiVIStaSSk+nncggHO4DGRnjxkZBz1xAfDQ+PnQdNrKtLSbuota4E0/Taiw6LStZLbZkVORDo7Z+VRAvOmNwEPwIcr024onNyHWmnVpabhLMhfo9oemd82rqxp/aGp9kz01uyb7okG4LXrTRQWKjTJzfqNOoLTzn1gEB1BJLZKQTuUQLy7P37Z952pvNPUNLUSJqaT6pxnO4vnjhRBxyqxffmPuHZd92fcamhutKUIxX5WpAZR1IoLwfCRjLLyEsxFwXLttij3lQptuV9ExykVH5UTmqfV6xRJj7MSoQ54YTPotRp0ttl16I0HUpc3FQaUhbe1SXGkdvl321LptSsKnznlVewaobAfp0qRJqE1hNEZROhmVVprz8qWp2DVIrwS4EpbK17XD6hUt6stolCwlRStsq2rGMpwcFQBOMjAUAc+Me/TUdVe3+ZcjtMq+lVxytLb6i1M1aTe1JokeqfNgQ4FLmUmotKKHY0e4KTBi0mfUISjUf1fFcaQseonFa/jL8Ddy+MO0ae37Rpx1d3o65uzTpZagUERZGVZIUh7fTq8vwT/EXa/A/dWe91Xb7TWhq6Wrq+YvzkYylGvGmnunPlT+UE16g9luhXdWqp03VPTaiXnLXQ2KNGnVllEyNCAdlSYZFPcSkVJ9svPJhUxMmEJCG3AZTZQMyMdnnZZpn2bWrVqBpchr/AOcmK2uA3TafbtuQIcFc9TUSiUunx5cyAJL01UqpGZVqsZkxv5hj5H1XWlMO7VtQ+8KhXzflNv7RjTbV1q1alp2aVqFZN8z9O236Bf1t3JcjgVZ9y27V6KxVbcYo1OEiNDrtOWtusR3X3U5YbTLPTL7vGp09qT/gquahT1cuU24Z1DTIjcbmyV0ao1aK4ScH6JQ24OCTnHPvY+1bzs+lp7He6fDd6cg1Y0pAH2Isi2WItt1T7vXRfxB3va/EG5lvO3sXbaosNSXA5HjLQsSrW8e3ges6dZuolauOJW3LyhWrEp1PlwI0G2YXzgqqZi2sm4BXmJSZJgtoeNL+QXBEeXIVLlioBmOw0ap9ZoOnNsMzbxu0og0yK3GnXRcsiBGmTnglakreTCiwI0ie+EOFuNT4SXnUtEMx1lByRnbp1NUHfUtVDCNv7FUUuynwr6juUl11bW4YGzCCnP4gSR0XKZpjLvWfHrl7QlSHY5kCMutMRnpkIPuMrfTAiPNPxIKXlRYqlqjxmi6Y7CnFKLLZEskkyEI6TOVnlpXiLYf93m7xYY5Rt5RGWmwuU0+4PiPIv1LS+EBzi8ldcJf6St8dsXTcd5fDv0S00rlMtKA9Dia7apXPHn2pdd5RCmFV4FA0klMvPO0K3JRcUK9cVRhVRutNoTBh05ptD0gcQS74r4iz6bHnTEUmdGMEQJM6VPRHgoWtUeMyuU4sN+jvUCppDSXd31NgJbCPpA/pcvw2La1P7XrR72tNqDRo+qnb1KFK1NmxobbV4XzpDVG4kGM9LqUdguVRenVRiUpVOTJaKqbb1SrKUOLbDaG/moEEqVgHgqJ9yAMk5OTnA88nwT0o2UdGRx04f3mmFkVs5er8pSmMqPiWUy67jV1kOdmnMsUwgoCt+MgHEQurvqnqWv4JnaVXO8j4kvbbp5AgPSrWtS96bqnqPPKzGg0myNOlO3TOemSlANsLn1CnUykwUrVvdkz0+k0+UlsxMssuyFhtlCnFkEhKRzgDJJzgAD7kjnA8kDru9/Q3tRdEKEz3O2DVrZtyDrvfFYoUuh31KajM3BJsug0ubU5NiRZK4iV/JSHmKhVVUuPJbTNQxJcEdJp6go3d6nytGc6tBobpD1SGhQYxc4D3kYehsoXu9vqNkdLUJ3R5jKMgygthZd1dC4exhWhUpCFFNWhLefkS5kp1CHAH5MyS9IU59IwnhwIOAfw55yEpTuv6ZXXSS8EwTNYQPpkRj6iV5UAFbRhTYSkLUd4I4GeMgvjUlJKlhtKUqUcYSMALG4JBAAwUKBHjKSCBg9WSyg+R9JOSnyk+cce2CeMcAcAdQ7/i2vysIRBv8t24uyzzXjFX7e147T4o32jpwizJ6ZAAIximP3WJcUGzw2FvUZsulzYTjjb8dSVpBBQQpK21Z2jg8KAVweTgggnKSDB1+kQxHZXwp9aVJWUiJqDobIUkN8qI1BgRCAoDKiVPtuA5BCUYHuOuuKfa1FlqLsqlxFOuAgqUw1lYGFDfhJJwog4IBSQCOc4YD8Qrs5snun7Ybu0hq1t0SswJlzWDdMi3qwmqM0SvJs676bW3KVXHKBUqNV0UaTHafTONOqcSShG15lX7JSFn6PdtSc4zm85Q5SA+56qiRTNJi6FPF2vn3nS7rsN720JQn3DQdqMm43qUAzjLASKZEQ/xe718aJTa0+Qcc8jkYHvx4H78dVIbCwDvAPOU4yRg4+/+z36+mBqF8FDt5Z09uO3ZPaz2q3DbaacJsmn2XQbptzVByE2hS5b1kX6tLy6LXo0IuSGnKhIy6EIYQ2B6rjfPd3W/o5NNtexbi1w7a+4CXdOnzdq1e8aDad3WYEXCzGo8JyVUqG5clHqxptSdpbjaqaqoCN60mW2621AIbwt70O76OtfKLpUtyskGapKG/dKKKS7LgO8/Cv4ijtdTddudHfaejTqx0pevTGDO01IxJRr3jbYjXGVcpgSVZwM4Gf4D+/8AcOegDj+sHzxxnyPfzwc8c/fp0Hbt2h64d1FwVK29D7aj3TV6P8oajFkVmk0URhOiVmdFSp6sy4MZZkRqBVlo2PqCPkyH1tF1kqUbVH4aXfjo4wZ1/wDaprXSKTuUkVyHYdcr1AUE7RuRV6BGqsRSSTwS4AQFFJISva5G50SX/eRGiReE/W/f6ffDmrg52Pu8oupDt+41dIkxNTS05akeUE5CxvxhvxV3VdOM+D/3wU3s/wC5O1lX4uXL0huS8berV8URgp9OpIt2l3LCVAeQp1tMqPWKfXJVPXTwW3J84UptuZC9NanVi1be0h7afiBaq2HpzWJ9C7bteHbY1K0Jvao0yRRqtpkzqTDh3Tp1X1R5BP6wt+065UKvZF5MQZ7yKpagqL0OoRKjTo5ZhVk0i5rKrcf52mVmh1mnPokIYqtLlUuWytpYKSYs5tp8Z/6xtvCePJ4dZd+rDGsWnjVmXRX2xK0qtihu6ICrSFOzbOtpFYuSqXrpJSq64lTsmjKqF3SK9bEeW2n9TJpcWjsu/KsRXG3fQ7rLjGLU0eUeKxaAuy/dBb9P2DJHN926WlPUnraOpCGpEjNlB4khAprFjlPV5RZcR7P/AIW3f/c+rHdToxor3H1SDZetekmmuuuhhqVQd/WD97US7q9pRXLNTDqsdDUOpUGRctGkv0mox581aTUpbT7DS0JVKnR7+oIvbQc9udHelovPuvvmx9BLeg0h5MKYijV24oNyahXOqWEOGFBtrT+17hRMmemv5Y1dlYJCi2584TtVq9+a0KsK36BXanSO4ex4y4+hV2Sqvsi3zbdtU+U/E0QmsBltwP1195FGokydPRT2KrOpDkx5tliOy92T/Bg747W+IvflUvfWifSaT3C9tWnL+lumuiNQflSarS7brUanwNTNZKjJlR40uffNxRKVGtFEic03NhUKAtuWMO7lTDtndo6kSEiLKrisrPVigrylXkGLFMnIg3du0bPS22vuNtBjLTfyxGpVRdrKhyXmpAJC0ZR+7LsWsfuZqVuanWHdVe0E7oNOUQnNBO5jTRqUb4tynRf/AOT3pTGRLe1J00ltrbTclv1516pJp7TMxi4oz1PhBvW9nPeHe15XtM7RO8O2aFo53qWHQXKv+raS4temHcfp7TAhMnXHt/uAttU+uUJ5uRBkXLYUB2XcNmP/AKwbfalpjlPUhoiPJKQN2UHakhKtqRk/gJwNu4kg/SOSrg9aV3tR0o7i9QNGr51Ltf8AW9c7Z9SaRrNplcsSbMpdate8YcSXTG2Gp0J5mQ/b9ehOvm46CpwQa2mm0v50OCC0gvO57hHZ7fU3ECLLTBdP8sdTlKJfJV5yto41YN5TqG9p05d63htpEoH/ALypS4C0RpjmMaFbvFsi8x+dDodDrqbrz56HQ6HXhIGMkDJwMnGSfAH3J+3Q6HWJL/6P/T/8PRZtWoqfmV2nSghqdFmNyQykj6oUthl1uR5J2lx30lHOwLSQDzgGV/ctwISrcSFJ2FIASFIG4EnhW5OT+Xjz0kN9l6zLhtrUxtLrtKgvNW5ezTYWVIteUtAiVIpaKktt0yooivypLyFBtn09xUhtwda6utHRjCMqed0Z5UIqFeAw3V35rpy2MJfnIqRxeCPqsS3N5Goj98JarS0K9dRxwUpI5H2IPGeORj+HQYaVu3jKsHaEAHLiyCUpSBnJBAVgAkHaQPcbJt9iWy1KjuNvRpTLchh5s7m3476A606kkkKQ60tK0kYBSocDpN9V71Tpdpbf2or6UqiWRb1TuOQpxXp+gmmxHJaHCSCFYDJQRt+rfwj7Nndt3tNlttXc7iycoRIFtXCMY4qgxX5lt/LXUw7Lp/tm72218LIoplbd2hTUFuseAWvDGLK1fpN2d2Hct3SXAxHGlXY9pVX7KsWGITTjL2qlwhU+4lrU4tEqXUBUKdRosiLGbm0+SZLO3Hycplw1du120fR3Qa0Lu1DiT6hrj3DVB/VuuWvTWJdYv2+LrvN4utUhijUynGbIkW1Rf1RTpFVYgrpKkS2lOy4jhBcZho1T7muLsVsfQ+2W4dR1R7nL2k9wesFQqchNCg2haMq54dZcnX9UHGpkhDFUqsakwqJRX1Go3D6SZEYx1OOMJ3l26rsWQLs0u0BEHVbuFuOmm3dRu4irpabGmtKo6kiuUiwZikIoWmdjW7Rgy03GClvVNuloWqQEkiNy93j4yh2zum71ttP5stUiS9OYkU4kZVYxJJfmObr37u7H+HJ3bsO22TL5ixhEkvFurZEOX5k9UgfzlWhlf7YpWpPevrnaeit2PU2m6e02+486oaeWw8X6bTXadIblVeJfdwRmzQ7jr8dxMByrxqPJmUeI36LEmQual+PBdh8TLuMmwLj097crDCI8nUSTa+ikF2E8tQgwJ8tDdyyWGCkthylxKUpLOyUZ0lpx8xWUKC3WcT4V1iwtMdE7j16uf5c05m3rup9nyJLZjOzbdiPyI9UuSoqkPvVN6vXJW40xx2TMfmJct+m0FLSV/WowCay9yyrq7gdaNYaoDKp2k1FqbNuPIPoeteFxmoyIjiSlqRsbpjbeEkMOIlOOLQlyOWXAKi733jed73s9fdayxlxIRbSKSBjxk28lXGCJdVyer7+EvhPt/wAG9slttpqfMnqkXUm6TpSrTMNLKuLKdpKRJtfaIwr4uHcQ5qZr6nTqiyCxbOnUCJbFDozDylxGotFLrRU24VOpUoBQwQ4Qpa3VIUrJJhtuWpJ3NxiQpTKEladySEHyUlQBA24TknCgpvkYVnrcXzf1Qum+Lnu6qPKm1WszZclt55xSlhmQ6SMn8YP1+oCeCUlIKfBRS4K76ry1uYcWpWdgVj8JILil8nHnCjkLwnhRC1pK2ehEeZiRmw9IempcfBIeUimleJHi10j7zvIc2JH8zG0wl+zTQMeJxCw9J+69eVSr/gUQfSbUEhKQMqUoK+pSfUCdvBCcEnjPuQCdKkqkKzzjzggZzz7gnIAP3ySTnPGMeVUVyFDKRhKdoxuAzkkq2kq88ZOQSAAcY6xA+QOU5OSc5x5JP2PA8Dnp1nAqBH1EQ85eRyPKq0e+Mrh89RjUhPUlyDFGLC8GUs8Jgcn656vhWVKTj8O3n75Gf4Y6UHT6EJVSfcUjciOhtRVkAAkqykg/iykgkAZB2nKcglNHHN+OMYz7584/IfbpcrQEenUZl4IxJkOKW6tZCCfw7UEjB24wRkEkpwchOSTq+gji2TVWBiltbCy0wn1E6ENE5RZPEBZHmmNB4teTWDJdHjpUG1qQtI34SCRgncgZyMkBQBGTnIOPfn3SHUa7o8hP6mgLLhaUoSHkkenk8FA4O7H1DP5nBxg9Gyo1xKIMh36k+mnJKgEjBSoYOFKHOQSTgBOfyIblKdL8h51WcuOLUc8kFSipXPv9RPPv+XjrYfmypixDKKW1xTkF19y26rGRMQlPix8FrhzhKSxaQy4LAsasdZsCBLqUyNAhRn5UybIaiRI0dsuPPSXlpbaaQgfUVLWtKQkDknyMHr2m06fV58WmUyK9Nnznkx4sVhJW6865wEpSPbGVLUSEoQFLWUoSoh5UQ0LtjoEWoOiBWtY6rCWllj6JlNtqLJSrJdQFhP60ZQspLnKgHSkhO3agyckoC1+lYP4+fpX6vt1mckoPf+fkP82vu49+jD83bXapaMqnxflKrrbXIYRPkYRJRaDUpshcVEloripqTCD+1bjPPqjLWjetLriAWLVKqT6vNk1Goy35k6Y8uRKlyHFOPvPOnctSlk5Cc8JQnCUgAAAAAbOqT63eFdkT5xlVWuVWSp15TaS66848vO1KE5wE7glIwlIzkk5yXraD9pr1Rlw7m1RjNxKEUiQigvFwS32VIWUrlbFpS02fsskgALBKeixIAz5SnKvv4D6KAXd4xkL86gPqS/fIB9L97ZW1b4xeLUT0b7c7x1PeYqrkM0200OpD9VlEoTIBTkJioQfUcByMrTxu2p5CsiSit1rSvtfsJDUJ+M0lxJNOpjD2a7XKshpvK5xQw8GWHCRuU4ChlkNnbhKwSjq13BWJpLb4tizvlpNSgNIhwqdTSgUynx0JPoeugZ9WZk7nVnIBJO07d3UUl53pcF91qRW7jnLnzXVKShasANMhSihlsJAGxO4kEgqKipROVHI4y1E5Bx+v8nH8T3fp7xTrGZMW8i59jANZ/Sxus/XBg1R1TuXVS4X61XpaywHFin05taxEhMFSihLbJUUl7arDjytzijkFak46TPodDo4AAPB0aFFf5+X/AH/I8FHQ6H/P/P8AWeh0Os9Z6HQ6HQ6HQ6HQ6HQ6HQ6HQ6H/AD/z/Ueh0Oh0Oh0cbGt1dy135Usl6LAp9SrFQSCE4g0yI5IdOSQMqWG0BOfqKgn36K80xTKf+SDgi+qr0A4QV7MnGce32zzjBODkDF5T6ef9+f8ATrF5r6Fv9MfX/Q/j1jdH207UduCh3hUUN7k2/S2Z+7aDlapbMZKN5UPSyZAWVYIWE7TuGUkhdPB0rt5yL2qdxt4OENKlVvTW06espSVKXJny6rMbbJJOZLDMdr6ACkBe5Q5HQf8A18+xVv6Hv/p0GLLBfkfNePv/AFr7dM+6HQ6HWes9GazaTLr1029QYSd79frVKoLaMA+o5WZzMBtoAggqWp76Rjkj7Z66ff0hSno0/wBHex7TGIAgW/Y7Ml/GUAqat6n0/cGiStJeWtxxRJG1SDg5JzC38L7RyVrh3y9u9mohKnU1rUOjXBXWwApLVJt5xVUkOqB44UyhIJGEZKyQEkiWn9JhvyLWu5nRizYoDEe1tKVyJEVDhWEu1KoNpp6ihIJwWIaVtKBIAdW1khC+kmrK9WEQGpR5CCvpZUD+8g/Sw+oJJNpt2HY97uZXeosdMuwIkbk4atQr60reGADt4sSVqZrppRYUGKZb91X7atH+VA9QOszqvDZfSQSCf2bhPHIPjwD19V+ybejWVTKJbMZCWYVn0ehUCnx8p2MxodGgR9qSlRAShYcVt3LT9XChkqPz0PgU6MTdXviLaNSk0tyfQ9NHanqXcDqWy421HtuG+uEColLaXnKiuN6TKlguJjuqCFhCx19EedI9STLmA5SY0yY+DuSERqfFekOObjjCsMEYKQpIWrOSnlj7trLqwiKMONFXyzGUixeK5LfIl1Vly/g32w09hv8Auk5NS2evLPgqJxtV5PLieMqWL18vf4h9Uh1zvK7j6tCVmNM1evNbSjglYRUlIOcH2IICiBnaQPHDJ+l07kayq4dbdV62p75k1PUe8pYfxjJXcFSBTj+cNgaUFEAgEDnpC+nzY3+y6VlLEUc0oKfwWvbxjFdUr8T6kdXvncJwKi61R8eoACWFPUF+c+W1VlW+Cg+IvxL+1qSTgJv5DJ9uJFLqSSScjjCSlQ8EKOSAMGQX46nbHO7VO8K1O6LTeO5Qrd1dqb10oVTkJDVMv6guRJdRd9ZRUpP64RKbeKXwFoDLgStaikpj6+CfCkT/AImHbExGQlbiLtnSvq5A+ToVUlAAZBJWWggFOSN2cYyR3M/E47QoHeV2fan6atRkKvmhUiRe+nchTbanGrmt+JJfZjF/c08zEqDSyzKZYfaXJ2NJIWWx0n3s6eMosicikF41EeKCGQZD5u81GmXfCWzluO062vpY1ttqSlAuQyeYlJmqUaK+rlOlO7Eu5q2u7DtW0719t1bQqVVokGm3nCC2X1s3tCiiHccaUhSGz8s9MafZ2uRYwkNNKWhocpHJB8fr4dLOgepbHcppRSYjWkeqUr/57TqdE9JVk3tJQ5U3U1cIUpBjXATVZDNTQiOhUlLUIRvUeU8lRv0ebutlaMdxt9dmWrVcft23tW4deo9DaqjTaUW9rHbroiRqQGXn4rSpUt1yZFIclsIelHduV6aEu9bWvGi1ndwOlGpeh+pNHFWotfokm3qk2opQKdVEh5FNqrbYRIQVwZAfdaShBC2y4pDgK2wUGnOXIY08WMoxORFB9PqlRnjx9XHCFebtKEdr8W/Cev2nU2wb/Tifs8+XzJMqubKNXFlWmsbqhpw9fKGLalYUPqJzuGAnaoYyCMjn78D7+/Vrp1neJ2v332e69Xzopf0F+LNt6qSnKRKeaLf63t16U8ij1VsBS2sSYzafUQy882h1LiUvL2gqaste85xjjAHn+3+P26ftOfOIn5aw4wnka+njAeOuZ95s9z2/d6+z3EOM9CTG8CgoYPqeCig97Fo6HQ6HRnRHQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HUgnw0dT7bsTujs61tRKLFunSbWNErSPUy1KgFrp9at682XKcyt1CfwS6ZU3IlRhyFZQ2GHmVp/wAYDzKnfEF7H7s7Eda5dBgqmuad3JNqdS0yutpC4yaxQI8pSGHD9ZdRIaSflnVOtsCW5Gekxm1wnWHFxf0aqTKJVKfV6fIcizqbMjzoclo4cjyojqXmHmzggLbcQkpJBA5yME9fQRtXT3Tv4sPwwdLKbdT8GsXXI0z+ViVcRm01qx9TKImoxoS3ZK6gf8Xqi4an6lCVHgMFC4UYOyQW3FSHsPbo9wluBmQnoRjLTKuUnU52FuC4I8RVncvSPUV+Id47Ge2nqaQbTUZ/P3HOjSYsOJKHFJ8+alyiQ4sse/Hl2m9xtU7RdVXqpWLMtfUawrpbp9Ov2zbmpaarRrqtKNMTJEimrLraGJrSHJIZf9Nwxw6focGQnuM+EL8S7tO1suA9mWhtOua1H6ZbFw6h6X2Xc1IXQ5Sm2qk7WLy0/oMeWtKqhU6PAnSbhprEJyUKrFg1f5BpSWZLjPAJrBp1qDoNqfUtKNSqVLplyabVdEF2kSVFlDKYdT9RiRAGw7YdRaiMyGZCfUCytY2KDSlr6/fh06MaH9xl6r74KVRVxK7Z172LQNKbit+W7bb9DrtrWlTl3nUIa6KmnqQKjNl/JzIcovJ+TdksiSESXMzP4e0Nxo9wNpp6fy5guSaESRJqNxyVxKc+PPmG/Fcu2R7Y6m+07NW/kTjGLx/u45ZR5SIvpW0IhZdceutma6pz6dnJBBweEhCgSVHxjJwVEgAc89JvP1GpMCsMWVbTZv7VKp+qzRtMrOmxKpcc+YnagfrBXqMwrOpLYdS5VLgvp626NR4jT79XlQwlpp8wxa/TJdrs3jKkiNSkwJk2qKV9f6qVSGfnq1GVt+qQqn09qW+kBLDslxlLKW0uOcbHSe07Uty5mu4/VCNRYesztoTo2l9msxYsataZaeXrHKETbvrTLblUrGpF701kzq/UalJmIp1Mehpjx9y3lun/AIhfFx8Kdm1dya3yd2aaacn0yOEY8qyZRa5FNjKVDLqP/h18HPxR3jT2cdB3WzijOMRqcZqQWRzBqPtybJWX5WOxUv8AbzZESAK7Ta/f133JcN06o1Oi7v1Wu8XhS4bVCosdxtfytt2pQmqTbdIQtX7dqnO1N7MybMedefZWqNCuZtpUQOM+pjIeV6hTuKsJ9QhCirCSQDx+RJTmImbc1ZXVpNHYyKZBmT5sdTiVek0KnLXLW23uIW5ty2ghQSF7QTnBUk72ffFYtOqtVWlr2yWgtIUrkqCgvc2SEklJ5WOOFZGPq64m2/4g9y3PfNXfaoMNWRF0mQiSaJ3xG5Y9hyxRxLru6f4Xm17Hp6enpcHawS+VMsjyrOB9OSfFcWdTOpUFAKHgjI/5+/3/AD6tvvtx2lvOnahtJUcAknHsAOST7D+JIAJEfVsdz2t9wNO02zu17Vq6JzJafRXq1UtO7FsOfFX6hkrg3NXbscqipjJSnZElWrFTKCi9FkOxCzJfsasd3FftSynpNc0c1T0+vr9V0t2l2ze9DY/VFSuqtSDFt6gr1JtGZd+l8Vg1Vtv9buv3cFR6d82ZseFlhEu7tr3DS3m10tzoHL5kRYthCTEeMpIe6Hs5tDx1UOt22W23Uttra2nHhOpyL9IObEETw/SSe2eiz3zzbD1r06vPQ6pU+l3G1WqFWLcuqm1CN80hEC6bfUwuAptLrfpqehVCHNKipe8oaYKB9Th+Sd3FfDz7kNLu7G9e22gaP35XbqGpk+ytPKTRaFPuAXk3NlOyLaTRatTIqoFTfqVJchPMKiuOJecLyFLbLJ9T6/lE7VKNSrUkzaxLjV7U+4XlV+8r2Q24xHr12Ty45OkwoKn3VQ6IlSUQaElcl706dHYiPLUUrW5EdqZbVGX3D6rUG6aM3V7ItPTXTWh3BUajTvl4cfWaXXaxXaU7R5qHzUGKjbun1Yap6rtp0yBKoKUN0xiK4ptx5cGn3bu3be6b7S+TpQ09aMeJNZxl8sZQsh4iL9byuLixsz4b+He0/F+0j2XQnKG+05ktKcYmonLlfL1Fxt5AMcXkMdMr+C7+jj6ddq+l9Q1a7v4tv353Q6lac1+0f5JsRqZVrU0Fti/bfnUmsUKAJkZaq5q0unVmdHl1mS41RaPLQuC1Kd+WdVJ5bvhPTbv7HPi1andskwmmags3bfulWnRkyTAhR9dtIbuduLS9qWpeUu0zUU0SvaTD5uowIKYOqMt6oVBEWI56vfPaGt1+6LsrZuuqXJqfoyYIW5cT6zcmo1iNtEBQr8dkNVO+rMUp5pmdJaQ9XafGTTWlLquS5H4M/wBIfpT+hvxXIndXoxVaVNpOstM0g7ptOr9oL4q1KOoluyN1Zeh1JlaW3plOu2226hUIEgRZ0VTrLcmFHQGZEh07V3Ddb7X1NvudT5kdSKkaYsJEoSayFmbD1WMbV6bPif4H3nwtqXuJXHQYkZmnLTjKyASfPpn+VVW+OKVj9PnSu+rf1c01sjUy2XnP1Jflq0C7Kah4j5uNErdLizWqdU4x2riVaiKddoNWiOoZei1emVBh1pKkFPR6+U/6z/U/4uoj/hla13Vq/pE5/JcUZ2lXFGtfuAoEWdKmNqta0+4diu3XcdlSxDkNn+UGneudG1ts6vRshqEumxIcaM21GW4/J80zezZ2qkW6EkjKo7k4nHPKi/IePAIwEqUOCPpz0079jpbuWhCKcMKPL02Rttfy2DQKq58Gu0ZT0YBrwKhEWXH81HnGDDVXVA/Xo5Kjn8S3vHGVDwM8DJX9z/WetFUvRZiSZEjBYDS96CgLDmE49MJJwtSsgBABJyAASRmwUXSEIWxLp8raSZMZ9hWVJ4KfQcATk/Sr6VlIzjx5OVU6WmsMxPmX5Ef5GQ2842wpKEuYyAgpxgbVY4zj6RznwmjOZYFPi0KCw8In6CZrwl9LdKUtKQs4yLiPGriWUcePu1kusfc6bvc1j3RWoM+HZ8iJb8p703aVVqjT/wBdGizE7ltuxYD0mDGnNJKjhqQshAcIbcaAPqRyydD3dH7i1Q0OmXBOvO3a7btO1Zt2ZXJK13DIl6jy7hjXhDnsltqHTKSNQbaqr9rwoLDiY9IrCGnHX/lg4uattpDQ48k+T5PJCfyBAVtyAM/bnHUYmvFagT+6G6nQ96f8ltFbApVbAIWIE6o3pe+oDSFKATuAt2ssyMgjcWxwjdgbw1NWKcqWRxQ8HqP4LxVaLaAfraHwP37ue8+Idj2+etKWy3BqQ3cZJU9MjCJKV+p4yQAUecuRcrOJbSfQt/sU+KZrJpnDiela2pek10a2aOvqXsW+NJbrjapSaM0oMutyppg6d6n6cQ1oddZcjVlmXHk1KK5GTO6/LLu2n05UCPDmOGg1qk0mq22E7kogU2ayXY0UFS1lxkqX+yWpSPSIcKE7HVBPNp8UutxdJO7n4V3dWtbyYMbW/U3T+tVBt5EZD9i1LUiDWaOw8W2n3UsOW3qHcDUlhIQp2PDfQl9lc5LkKdHt8pja+3TRZTy1JRpqq6NKJUwJBVIZsC/rr04gKVGSQY5mTLPt2b8t6r5hrfEUSZQZL7jpN1Z6OlqGpxOJyvk4i8YjeZVEGhsMNe9l/AO32nbPiP4o+G/laept4b+OptvmkOMPmkp6jxOWJsimVCx8Svn05G8tJ9KNTY0mFqPpRptfsOUnD7N52BZtytvpKcKQ47VKG9JKHMDc8xJblABPpSGeD1Ct3tfAC7Hdc7dlXDpLQ4nbBqL8y6YlbsmPMl2JIflqS823WrMkz3WYzaZZcSiTS34paiuJj+mpbaZCZ5IrhMZkk7lbdp55+ngZ/PGDzyc5J9zpbwp7FVtS4YTyPUS/SJiUDJBDoRubUkD+elaQUkJKhg7fJ60h3HW+YGnq1KJG4BQxkjdVkp8R+oSy2zPvXwP8Nd70Z7Te9p2jGcmK6elGE+a8RJRqnlkW0clvXzbK1206ldl+rus3b3qzTwjVrSunULX7Rl9EiYLbv+k2s1Hq13QYaYj8Zur0m7dPYzk51pD7q4VZsMU99KZsKbHYlt15uKt2/anbF+kEdlIi0/UTT6+7e0571LTjOQmI1XvyWzKiW/qTMp9KgpjM0vXi0kP2tqvFRDk05m/5f67SpyHUzNekQ+NN23r1o7OLF7t9Pmnk64dq0OSiRJjtOPqufRy6W2aDe1peiCl9EFgVV+sRkxUOvqVWLibbDX6x+YjwxfChvKmaKXLbHbZ3EuB3so+Ld283bo5+sZkht6h2NqjAuKqUG37yX81JZjNVayr5p9OTNcYfizoa67BehhSojqZM47L3CWpBnNVgRTPFJGYP1LC2guStcQOuA/xV+Av+ynxJr7COmw2GsTdvCRJJaPpJkpRKXTZxjFxKMOLyk3Lr6Fnad3Mab96fbrpX3MaSvtP2Rqfb7VVRAVNRIqFm3I0oNXdp/WWw2w5DqVpV0ymXoimfTCJiJER2VFksyXpQLFtH+SVEap61pcmPrVJnykJ2hx1SUhLI5ypthIDbZUckZOB465cf0YbsJ7rO0jSrV6XrDWaLO7c9Wqdo/qx27sMyY06s/wAprpseDO1Dry2olYltUZhS3oFt1OC4y8ms1yiz67EkRYb0Zh7rK6ft73TV3OlDSvjHDqFqTkBxc4w25G2pW31XHbuybTZE5aOn8t1GLOgGbFfKnKOJJ6WK2/p1zf8AQ6HQ67q68nOh1kMe5wDk4JyMpABP78E4Ax9jnxzj9ZjbezPOc49seP6/uetZpSfXx/TpVs4LqkguML5N+GUZEcXbn6ePL1jSBjao8KWnafbhCiR4Uofzz7+/8BrJUeNLjy4k2JFnwZ8ORAnwZyVOQ5UKSgoeadbCk+RhQUCnlKSrcEhPW3WA5jeM4zj284z4x9h1hqQpOcjgAnPkHzgA/dR4SDgkkD36j+tujV1GYsYxiRCVReIWjSnlc/SupFovEA/Nfg97Uo92zzi7ekStCQ/pjV4en95vuQbfrUpbVg3W6VSaGp/5eKhu2qnVFFpDcwLS4qHP9Ntp2EI0JMQKhqefTXuytf8Aw22NXu3qgVSVCl3FOpbV/wBXjq9AW1YqpiFl6GsrSJNyXLMaSxbcL1Y4MNLtQEpZWIaVV1hR89bLVqM01mvSrrmM0yLQJT5jQ5K0p3uz3pAZfUw9SfUS9HdCUbVPrC3EpKt8PfcLrfWXq3qRotpnqFJoVgWxpXX751tvapRYldrTrLE5qBWA1XpKm5C5K6NATT21OyZJ2uTMMJeawKm+M+/brey/4dtdM0oHN1deUucta+BH+74ny+CIsZ5JKLIpvb8OPgrbbrXj8QbjU5R2ZB09r8lCRqFyrUZ8QDTP3JBR4HGZcepUu97xpvZR2NKi0KlswxB1n15fqHzs5FCpyURqvIoc1EeIqtyUlbhU0JEAxfXQhDrrjuWVRmdvdqUO5tOuxjRGDUGKbMmUK7O6a8ERVSLkqVuR6i1UabYdz1ESRHej328qM0qllYfNNVUG1pUp9uU5seyWxrY7aO2GXrxdMVuiuXnbp1PqCVtF9cW04UZyLp3Z1Lj5jOMSnoSqe9XVFtUypT2FOJiMh1LTL7fhtad12qM6g9xl7sNpuPVevO3DCdTG9B9ESW3LjxICVlxLrdLodKZpdOpUANNRY6EyHY7ban3m+qV7ltYbfba2vqBOa1ktyivuI00XWUoo67A/Dre6nfe68dOLDT2stKKRUgQkzGNRRUI5SrRrkIBr76NRrV0F7abf0Us1aKLUryVOopp0dDjTLVr2jQ5c6XHZihamgltc2PHJUooTGcjMbVpjkO8D2t2ptZp+ltSYXMUZd9XNLrDvppWhMmnlCPliVN8JCPXeyF78pVtCxlW3pf8AibdxZ1D716JaFPqUeoUS0aPddlOmEsyo6667TY7xjtuNN7U4G0fjWoOJLfBQoHkP7hV1Kl3rclFqqyhu3Ki5AYpSmVMR4zbK1NtoZbWoYbU0QdoGWm0BJcdGdsHdSPzCciroAwoVGJYVYrbjxi3LcffZfK15bUv+7CI25UGzNGZFDgX6HTb59VQ20+t8gPAbBtTnclQO76txPBJO4qA3lByU7uk4lyVSnVLJOMnaCc7U5O1I4AwkcDgEklR5Ues6rzPmHylBwlOdwSTgE4wnnPKQOTnncQQCCOtP07aEAjyCiVMT7VQvvaZpWr+t9QDcTdTVZMmVL7Vm8eVVI0Zqm8eHodDodDo/onq9GYXJfaYbG5briUJByByeckZIAGST7AEnAGelkbfREitsEYLSclsrGVKIwTkZB+oEAhOBuOCQD0m9vNAyHXz+JtIQ3xylS8krByNpCUFIwCTuPIHncVCSpKVFKVr2qIVgZwoBeVqPOEjByo/0hlJxyj3WWA5FSh4raLm644BxebMdEylPm8XiRja8SWLyh9bKPYT1YpK69XgYzkJG0uO4Ki2chCMggLySCVAYOMHBCgU4wrQ27bNeu6rR6Lb1Nk1WpzFYZjRkBSjlWCpaiQhtAOcqWUgdHPTnS+7NW7lYt+16e9LkuLbXKkJSVNxY6lqSpxxR52pAO0c+OfHUjcrRVrRC2Rbdg3Fb9Gu6rMBd03veDqWJtOCkN76TbjSFYMhS0qbCmlsLcBKspKlsq2hKOlCohyxyBEPFnmzGC8/rT1mMlCVKtlucAVTjyp9D6p4Gv1JFndtlDjwYyItza11CGFT3w9vg2Ot8APtFAQpD85uMZEUNBSFNOPfMLUfS9NSQ2ZpZqlrlcK5sCm1Ooma+p2dXHmlLjMbipQ+pS2wSdqg02lSEkJJCgByvlEo2iFv1qZOrkO4dYbvLr0iqNlxTVIMhz9oqQqfISuO2Qv6i5LKylKQltKchKt/d/dfV4tCVQaI/RLOpLO9uFa9kx22ZTACUkfrKqssNtyJD5Ttky2y2lxJCfRy2lR2jJUI/mcspUpiJ+UcWeV/lTRm7fDY4y1FQult9nyWDmsisFg6ZaH9vrTNwXpNaqdcgsOOTpFRU24G5rSE5iwooSpKVtFSEoUE7vUUTgAFQb5r33fVi9m5FuWEg0G3FeoyZyWm2axJZ4b2KdCCUMONBSAG1JISQSEqCNrQLku6tXNLkSalPlyg+6p1QkvOPKUtXlSi4tZBIxwCcYHJVlRK/nz1uaYSJW3mxWVvtar4zVBV14DrIL5AKMOWsWOapofHmJ7dXHXXX3FOvOOPOrOVuOrU44o/dS1kqUfzJPVvodDo3rfodDodDodDodDodDodDodDodDodDodAYyMnAzyfOB98dDoAE+ATgZOPYff93Q6FX4/p05jQbTaPXaRqpqZcEMO2DpXZ5n1aetxDbhrtyrk0S1aVHa3Ydl1OeJYaSpWW0xFkDCitDbpTiXpD7qAUocdWtIIAIClEjIHGeeppe5vTamdpvw49BtLJ8eG1rJ3U3YO4G93Wm98qn2RQKWqLZlvOKW44GoSpr0usvxtiG/1s1Hkx3FstLR1Ct9SkDCSUt/iUASBvPG4+Bk8DPk5/cCdPU524oaHw5+traIRsct+mPjraek6coiVPiMi/BI5CnupXu4fKj09DRK1YFvdtHctrLVXCJO61dGbVZQyhbibhu1yTXKlK9f1yUssUaiPRXUJjONrMxC1SWdqUPMs6mF70bGjdu/Yp2baKyPmoOoGpK7n7g9S6W6xBY9B640xIFmxnzDQCXYlDddfDBccbhuS3mWlulLrnUQcSHLnyG4sKO7KkOnDbLKFOOKx5wlIJwPcnge56zpanzIssANcqY8qBZNv3r2qqTFuZabGUQMyiL5Vbl9MYKjgLRcidGSXZtVg23SLnkpDcGtS1xoOQP2gbH7R0KCjnaVNbkBIUkOJKsZA6fpd9OpGn3w3dP4cmM8Ln1q17ui4okgDDblsaf0am0yEtas8qRNnywjJ+pLwKU7duDR8RDRNzt+rfbPoBGb33Jbfb/atw3bFMf5cquu+5Uq4ZcpTSXn/TC4rkGMwFPOBqNEjNpUCkpG/+JJEh6bWP2e6CIT8tVdNe3S251z04DAj3Zfp/lJUXn/qJXLXBfhsl7KkKjMRUY3NgqzykSlmw41VZ5cRPCgK3b49/bpV+zmlpstQYrGvLTyobSVCxbKjRd+a6iX6HQ6yYsZyU8hptJUVKAPBwBkZGeBk5AAyMqIGRnPW6kRVoMq9IwtD6oF/VaOunb9Gq0Fk1rXDVPXepxFN0ywLdgWvQ5ZQFbbjuZ9yHKAWHTtW1DWpHpeisqJ37mtmxxh3xzdQoWoXxH9bE0uUqbSbGkUqwqakqUUsxraYSy9HSFITwmpvTcbd+5Kkk/brrO+Eb28Ndpfw3bSve5ILUCo3VZFxa73cXkNpqTZXbc6qUdqcShTw+RW0w62H1qLW1SUIbzuc4J9aL4qOsWtGo+oFVddmVy+7+uW4ypxOxS49Sqkh+GhxJCQl5ttakKz9ZKkkgKTgNc9WtUnK0Is2qxGiKyRtAVtUiBkcSsfX2Lo9l7bs4g6m91oDFP3Z8VKwYk14FbPFHXWD+jDaDNU6z9fe4SfT22ZtRqtM09tqpltXzApMdMa4qoyw4FjahyU6wy6ksqC/VbO9O1KOuhvubvZWnPbprtfz7hjw7V0mvapOSxjMaWimrVCXhIyQVeuvg5ykDb7oQz4Zvb8O1Xsg0Q0pehR49xVS12dQrtkNE+qqt3viouMPLC1eqW4bcR9tZDRSqU4gspKNy2+fG61Si6a/Dh1vgSFqRM1KetzT2E3u9LcarUXJjys+m4VbDTW2vTw2FF3cX2y2EOMOpq/P14RSpSOUVKsuPql5beRZi44ala9Jdq7Vtvhn8PNxu9GNap2zdxnGwJJHSUJN2DNLtMysqg+dpcVRfqlTnzXnA4uZUJkx1WACuRKeW884BgY3uLVkDCcbBzgHrQdXXnC4v7JSAlIzkAAAEjgD6lZWfzPk+et/aVs1a769DoNFYMifLTKdSgDIQxCiPzpjx5HDMSM+8eRwg5IAJEv04mnpRMHGJfg9vegL+tHnri7e67uNzr69ZnKUq9r+hR4vBR49rx1Ob+jS6dJ1E+LZoBHkwzLp1Bh3nXJqgSBG+Vtep+g8UggrworAThQ9ynjI+itqRZMqwquzI9NMynOTlSo7iAotyYCSUuw1/hG5xgqSpBUVqO7acnKuNX9D30FXc/elrvrGy38zB0q0iboEKctOPla5fdaepAkISogtyWYUOUhpfplPpuO45Wc/QD1BsZq76DIp5S03MRudhuKTuSy8EnC0pwcIWkrSsJ3FKVKSFDglq3046xKNygRWV8VVAjRXjikrRr1A4a6tL8O+57XZGnpbnUI6evO0cceUpHNvC2wGMjBFS8dfNQ+N/2mVPtL7qLf7tND6bIt617xuWDeDwpakt0609VYMpFSnJp4Q2p2LBmyUrnNtPOFZEh1CHgGit3rD+Hn3LQu+ztC0+7j6GlqRqbDLVl64W18wj59iq06FGZTcsphKUvwmFvsvvQ4ymnGFNSXkJlYjpW5g/En7fNLdSO37UfSbW6tWxakav06RNtiq3LVafSWIl10CFLmUqoQ3ai82iQoer8nKLZVmJOfjlTKpSVt8aPwgPiSO/DQ7tJ/8AhAqcu4u3C+5tRtnU+BQX01BMBCiuJSb1patrAmz7ackOSzHCGUvNBQBbLiShuhFgmBw0ZthJjcaiuRWjiSlFSN46mD8SbXsnxHqbja7s+TqMZamnxgQ5SR5RUWMSKCZ9TGyuSz7fHl+H2x3J9vf+G3T+iKqWruhdFk1B1bIVJr1zadMjfVITkdB9afLoLgp4huoQDGprKIRaKVF4cDMiK9GWtt5JQttSkKCgUkKQrYsYUATtVwf3jjkgfTNqXxkvhVXVMdpdP7lbfYYumnFuZTK7Q61BiLYnNPxp0Gepph75NEiO9tVtSS8dxQltKdi+JT4unbzo5o53ISbm7etSbR1G0f1Pp7t5WtItWeiZ+qpk2X81WaXNjBwu0llqTMZfhQXEttoS/KSzHYSyXX3PabqXKOnKJGEq9kpl+Sj8oP5cNAXnPUF/EnS7Tvdz/wAc7VrQHXkR3O25QmiEKlyjxbAmSuA+b8RuJXodDodO/VXdDodDodDodDodDodDodDodDodDodAHBB+xz12H/o1vcM2/ZGu/bpXZrZqMSRTdS7LjltQkfq19pyjXMwXwohxhthEZ6A0EpMGUtL4K0OBLPHkghKgSMjnI/Igg/3+PfqVj4POuy9Bu+nSGuvyHWqHdFQFhV6NkGJJpl1vsUdQltKBQtuI7LTLjg7Q1Jabe3AowqS/C+/jsu4nMvT1CImPPKryLRYefcQUOof8dbSW9+HO46UMSht560X6/LPVEyU8Vy48e19T4/pCfaVRrl0rt7u1oEUs6g2jWotn6k1SNGLhqlrVBC2qPVfk0ZdcdgzTGQn9sWUNTn1bklv9qgn6Of3SqNZ1N7QrprIjN30o33p7GkqSGWLoo0NinVanwFFxtr5uqstRCwyte+W4wxsAEb9rPl8SHTpWp/Y/3G2lsO5qxJNcjtlkOlyZQKhBmxAoJcaUNrXqgLClYSv1AlYTg/Pv7ctY6/29686cas23NehVCxrzpNa3MOFCnIkeWlFSiFadyx81TXZkMqRlQL2cHGOrD7putbsfxBttztp1p6+lpak4yj5Znj3Ki0XFZUpTLxTvwa7j4m+De5dk3mqmts9V0tLccI6jCKZkRxLlUW4simqpZHX0757s2oWvdNstvBun3XSlUWr+okyAplYD6XmEB5komRnCPQe3lKWlyGh9Uj1WXj1erNXFWaxcDM01FFUnR5DMkIchxGWFUikhMKm01p9cemUyG6l0wo8cFYbWj1ZElTbawxzTq9KTqfYNp6l0OQ1KpF/27Srvius4DaXq1TIUyXGQAVEIjSHVpTvDZUFKUW0FQQlVrUux+iSVRVhTkB3KVoJOG1EkFTRJykZBzgEEt4SAACGH8Yfw87n+I/w3DuXbNaWn3DThqz1dtHTv9oJGnTCbqQNNOE09MyTMqqvo/wDAH8U5/hX8Z6vYu86kZds32h+zaW7k1LakVjKTpMJOpz5QqMdSFEOV5ppa1Dhyter70zzKP6l0608velyHqfJjRJ8OvT67T6zJjvuR24TkyHMhIZnxIUyd8kGoqn3GzOZbCnNBW4EkgNEHG0nAUSTx5HHk4PBz4A6L93WFL1TTRK9Zt0Lsi+7QVMnWbdiIUWvQ2pFRRGaqVv3FadQHyV0WjcEOH6FxU1yRT5MFqLGr9PmsTqRHUUa7UtLNRdW6Zcndp3IaqNak6Ox7hnWl2u6d2RbdT01sW+KFTFVCHO1zuOK9Wq1XtQKTeBjIhaf0a6pr8WPbENNzT6ZJl16n1M8R7f4P7ntpTNWHyiEo8+QXF0wJ4X3Di0LyQq+vTzf/ABh2PeQ7dDtm/e4HcI7X9lNM4ms7lk6jPMox+SkAsY+qUmUOKsrenfeL2zW5a71HuLV+0KVWLVTFauSC5P8AmP1QuoJcep2+VGQ5Gk/NRGFSP8XdcDKVFK+QhTuHqb36dptLtuK0rVKzNUBdNOr1Lj6e6YhWrF1XRUEwPm4dHaty2I1RntxqiltyA6muwqdTpUiVEZVMZQ3JJaZUJhdU86yFwVPSZMlDNKUmBGZS8UER2Y7bfppZZ2D0h9KsuublbVFCSnQl0iluPNQKXRaFUXwj5tqnQYMN99ISpKD85HjsLkZSpQQF7CQtXACj1Zmy7jPZ7LQ2ktOOnKEIx5x5PMiQivqm1f5UKVWqM9HR/ATZ9yn/AMS1e77/AG0teTqO3kw1a5LP80flqj4lKFyPzzlahi0k7qO4Wy9K27Rp+iMSXdgmXpMt2s3frDQ6vRKHadQ1Or8i0IU1+nUmTqFcH8ktP5lDRVYElszJE2GuI5VIodD6UxteLLpMKou1WqTLhuG4bjuW8bor0vLQq1yXRWZdZqEqPTkuOJpkGKp9im0yniXN+So1Op9PEt1MUPOKkVqXle7co87ySrKvYk5ycH88/n15OjMVZnLrcaNUUblplx2vQQ/jbhp1vcslWAfTJcwFYSnAUEgnca0txiRZgcngRPbyIffiUrQdWf8ADPwF2H4U3v7Zsto6k58fmyk0xlHA3KUnhlsiRjGhYpaIXNYrlpqXOob3qUdRd+YoQQW4cdtxICnqbtCZVNkNAu+kGZSmVpcdDiFktelyP/pOtj2ggdpmrFt0uBQ6rX06wWhcxpcQRmXhHkWpczD79ObcbiMzpc2t1YyHo0dhT5SFukhtI67HXEEbkqRh5C/TWEgjCgTztyc5PAJ8k8E8dcsf6UTAgQdC+12fEiobnO6v3cyqQwEpygWlGdktLSlJ+t5xqKVLCgpGxCVJUFp2qewaZDueiqgk4ceJRiNnnwkn/D+blQD1r+OG02e5/DzuOrq6MZT0vky05cTmcpwkLlu0hGS5QLKOpNPg9d59n6a3tojQNYZsmxrd7gOzKjay2vU5NPrFUh1qoXDKtX/CPAh1ij0yT+ohN1ptvWfUua1MjGKxL1Ce3zT6vrPdXlr3la170z9d2ncVCuSkrkvMt1Kg1eDVoaigNq2OuwnXUxJaQvL8CSUTIuUCQy2Vp3cL/wAOOsqo2g3wb9T5cOHm3KD3OaLVKfHQgVqdRtRqPq/X4EBtICRJjQpml6PlIWG/QEh5aXyXtpnsaXo7cNej1uRa9Po9yRkS/kLjo7c6z6xD+dkyKhM+UrVqTqHWoa5EuQ68ox6myQsgFJAyB3WBDuGpqYREKc1PhLKt4ocCB976qL4b/CbU7z2bZdx7XvPlfte20dfU289JkaTqR9MGTqxtPVmMSvDiNs7TTqUrCgQrGeAoe4I9s/f7dZD85tkpVj1EnhQTlCmvOX3nXQiO1GQP8o466jHhIUogGFBqXSkRRDga16x0+MjfhLPcXrFOkozuO1Euu6hyJjKTwkJQ7uKQUpcQCB0V6np5o3dsZDF/Tru1bbJdW2xq7qzqVq9ToDy/qccpdAu2+bop0Aq+XZWDGpDjiVsNKS+goRtapahKPKq8GU+paXRjNWjWaQwufwV+JZTJajpGlkJkdRWloYhyFpcU21cjqQDULvV0kaNVtLS+txdab/bZcitwdNWpF12VRKk80621Lvq/6ey3bFBpVIkJbcqURudULgeZU81Ho6Vt7zHPdc6q2jbNTRVKiquX5qbVK1cl93Clgrl1Gt1Uw/1tX9ynlfJwbbiN0yjWpSxhmg2/FiU9C31pfeeV2Kyw3AjUy2KNEjQ4jZTS6fFjtUKgR23FEKbYixEO0+mgLSkgx6eXVFO5RStASSg/bJFZodIfq0qdXpzjFXuKfKV80iHHhoz8lAYStKI8COZLjrUVDu4y5kyWpwLkqQnEmbESvzRC/SDYxxI48ojYYqm6GV2t8Hfhz2z4Znp6mrqbnd7iEeUpa8Y2IBOUSEuURTFskuMeUqjXPn+kkWE1G7EdBa/TKdmp6fa+01iXMacITBbuHT6rvpJaO5LvrOU1SQVLSGjEyQoKOyUn4cd+jWPsK0i1FWgoF7/yrvVUb1vXLFWqd9y6lVSp9TccPqbuOPcKi4qOypQlFBaynetLvjc6Tr1a+Gd3Exo8X5qdp5HtfWCIAkKLAsGvxHKnLTlaQlTVDqtUjrWUrJjS5DSQn1VLQ2P9HE1oi6j9gczTKRKkSa3odqhdFBWZLatrdu3kmNdtttRiNmyMy9JrTiI5Kw06p39s4HNqH7RianbNGMbkx5EktTkoEgEIjDK8S79xpguXZfxb1VnGWl3vb6eqQbhx1NGVcC5HzJSjqRqn6cgjfOfmmu/4qhxaklao7KzyBuX6ZKgOB/O44HGfA8dWHlhwPNEhSnE4cQcfUhxQBChjG1Rz+XBx4OLMHIaDC/pVHWWVnnGAfpUOVHlBSo4z54H80Eqj3ExWrhuJljd/8hqT9GeSFFWJVJn01udgA4SECWzuCgAFPKAUvBIYtLQfmyJIJILs+yXFbYyjycV90rN6HEnKblamD4o48TN+bLtvOeiTZ9Cp0zRiZQKtEj1OAK8zTJ7EyMh6LPh0yvU6XJjSIzinWfQnCAuOsOeulsPFZDuwpMJWhPwOat3ddwF1dpdx2lW9OO2XtC7xZHcZQtZqC5UqIq++3XuJo1Su5nQPT5ia9VqPKvqhXZaUKHUrscmVCFZlIaTBkJqs0QWqh0YdqmiNd1ht277b+RqVMtFd5awW7XLsRITBap79SuSqutP0R5IWuXPjQ5zD7Cm0ttNLeDLqkhz1kTfWfbVCtKksUahRzGhx8obSr7gk8fbduKucn6iConPU77HttWOjLV1CXACINOUaLKqo1dfUaLxx1/aD+J/hfedy0+1aGpp7zumg60ZRBjDb8nR5DqErnKSCRElGWmErLOsizLRt+wbRtiyLTp7VKti0LfotsW9TGM+jAolApkWkUmG1uJOyLT4UZhOeSGwTySSZerTryWgSQVEAkgY4ABOST+7AHJyRwBkjXfrBRP4SE88jaTjnHBH7hjdwPcnzIY6U5lhZ93/f8P6dcvS1tPT9MRlxwxhTxr2VQv7ecZPF88gIUD7jwf8A2PVDbezPOc49seP6/ueqASPB6uIJOcn7f7eu59vvTVY6copqTu+IcPTykUsmX5T6eftnrye0tjo7f1QFS/XKSybsyFQ8NYiYq7c9WwwPdRP7hj+/PV/qwST5OcdUJQlOdoxnzyT4/eT9+ipdzFxpKHhZkX72EWvtlv7dH6e309MeBxurq26urWV4t/n1fKhkHPACieD4x0X6/WotApjtWnAIhxlJS4ouBICnUobjoyRkqckOstkg52vZAJQojd/UfpSNylkISMhOVLIQOTwOVDkkD7kDnpgHeVqybQ07vavJnoYiWvBp9sW4AsOU64tVbpeNIENSQSp+HbtNXKnR1JThVUZZ3LUqKva377Vdbt+4WjVlq8qCQETRjApui6buSlXQV1JfhvabfX7no/tMeWlGssgB5Cri0C3xWC06KN5XTdWoFyQdP7YkyqHqJqjCMmvXs6xLU3o/o9S6mWJlddYhNrfduW5W1GnWqGVQ3Y3p1lxC5DLT6OmFa0aU0y0V9/tjuL2QRpHp1UbUjvMlcxm3F0aU1VHJM1MjM35SsszVMj0WdwlKA2kHfJx2VaSViy9LTel9TJdT1W1UNNuG8qvUHFypTdFgxnE2HaqFOL3sw7ZhKTLS2+XH1z59TecbQiahqOk3ePbr8W97Sv2dNRFpuoent8dr953E5FAipfu2gVG5bEqFTcMkpiwkV9tqiMtukNOypyHFTWAlTLlab7s/Pb6+6151KLGqC3lQSr1nEsjScvLd8ur87d3nS2W/l2vtmsfssyJKNFQ9LZdEpLzZeWlz4romzKtN1midu/bhRnH2bMh6K2NrNqzWWnCGH7Xp9tU2lWrbcxrYlLbFwXC82F/4yt1Zib22ymM5vmeo9ZpGiXaXcl/1lmPBlWPY1buh2C/OQIe56lymY7khC2FOPONFThjMBtAfJkJCkKQd0BnwvbhrV2aLayapXfIXEu2vX3pj2z0ONJaWuVHpmllsU63XKZI3Ka2JaaRNqbSQ2oLbcDKnAkiQuR/4tGpEzT34cGqNOp8sw7juKDRbQYA4yZ9QitLZKySP8ZCOTjKQjjhZHVDfFO9+Rqy22CFCF8rwUZbwAtSKKEzF67S/CTY7Padvl3PS0yJA0/mS/N81lFImSxjnyLlKq04rrq1dvKs3YzqJJqwdqdR1YqleYkFKlKmQXJD7yAlAG7e4y+phQShSlhIQn6SM6nu60OOsFusa76eMpkPuxlM3PTmSFOLmQgr59wtgqWXEKZJW2slxtDRVt2g5aTrFc1Ztx+17egL+WlU6nNVKeErw7DrCH3i20kkn8JGXOQDuxwkA9OG7c+5KlUNEukVN6TKhV4odr9rOSkF6m1wlhlyu0CErKZ8WopSkVGnpdadf+cnSEp9M7HoXCMtWUJkRHC3ixQbWJ5My80N3bcg+I93obje6+pozt1KJRKQsPSUKFSbRsk58UxJVWO7GnPNPoLbqSNzagQpBSNhSoK5BykkeeCDnPWu66E9R+0jR7uHo4rNryaZaleW2XX3ojDcV9Ly8uJ+cpifTkIXkhJCkKAbIKl4BCWH134XvcPFnPR7ZVbd0sqSXYCWKpHgz5TJWUtlUOQ4UtqUccJfcVt+tSG+Uh80ZPDjIpgEVEboM0XT9S2vdW6h+qcZqiC2ebzS2eTKlpWHx46jc6HUkdD+FF3m1px1v/B7Fp4aLf7edWqc1FAWraS696/7PGfpAQ5vPH0nGVhpHwjdULeJmaoXVbtFaaa9UwI1To8dDwAPqMuVOp1BtDAKeUSG4bmzAX9IO5JsZEr45qnwnnxlo/wCnv1tp6Opq3wjdWvtVVd+4g3VX1FdbMCXU3G6bS4EuoVFxZIhwmg9KeJBx6aNwTtSgZJUoBITuPBx05qj6F0+14zFwa+1tuyKA4EPMW3T6xCdvCpIcSgsqEFpTnyrboJSd6ycBSt4CM9O1ueyLF0egIpdP1b0M0y+TSWvn7eq7momqCcj01PImxFMx48gDCWnI0nLCVLCUqCEOFnNw3jorArEie/8Ay41puFThWq6b9qbyKTJcUUub2oSZTj7jQ2pQ20+7vY2FIU6lIb6R4Vu+PNnWb5VT4z7yqOWgu6K2+XLTifNiE/SPqAKXNSYpbV+9/li29KO/3DXemmpsft3sBFt20y4PlbhZjIcr08pRsMqVNUkqYWpoFDpVKdUpKdwKUpGURuFcpNQVW9XdQapVKvJWp5yh0apuvym1/hKJJ2LZZUjcAr6SsIxlS8YJSu7W66q+lUCjIgWfRkZQ1BteOmlktcjY5JjpafUkkk4Ck45AJBVuRt552Q6t591x55xRU468tTjrij5UtxZUpSj7lRJ/Po6OnL95D9Btv83mVF3VBirRugqTFSslRpyfTAeaoBvL7UBapXDqfMkRl0S2YzFCoQUUqcZYb/XVRQUlBVUKkdz6yWztCUKRjGcjO0Ja456h3EYUSSpROSonHJOASfzOfPVvodGxhGIAeCr92/N1V25ceetOJd+5936V9af49DodDodbdZ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HUn/wmu0F7u77tLPtWpwTIsizXoV73u88wlyAaXSqgwY9KlumRELYrL++MgfMoQ76bqVJIR6zEZcGK9MktsMNlxaj4HAGP5yj7AHH7/ABJwe5jst0hofww/hq6ja4X9GgUnVq+bMq1216S/Ha/WNHcqtHefsG2kPtl6O16rtVZkqcY2JbdXs+RZ9AB8jW1GDEKty2hVJV2+F8vt7eepB2Ha6E9aW63Meejt22F1bXveEuUcP3Kbxzq/Gf7gKXrT3sX3T7bYVT7P0ihQtJLWpKJKn4dKp1qh2G5Dp+9AX8sn0wgKLzqHNwKNmMKah2D9vlwd0HdRpHoxQ2EvMXRc8OXcDrjKXGYlv0Fw1epOulbzDaQ41F9BsOPMpW862hTiUlSg1y7biqF13HcFy1aU5MqVeqsypzZT5Jeky5klcl99wbQNzinSpR++Bk5B6k7+GR31addhVw6gat1vS2ZqrqFNtV2zLEpZqi6LTbZTUmZ6qrXKhWGnPUJdlyIz0KCmG8FrZkIXJbjofjztE46biiaMlcRwZzl9SHjL5T3S7l0tbuGtq4+XJWBaEOOoxiFebgLn2kPiNl74zmo/8ALvvdvW2IADNuaT0a2dObcjNLV8m3SrfosSKwuOwv1HGnFtoSl5ZlyEvhDRBb9PB3HwU+10dzHe5YsapRvUs3S0p1Hu5Xo+r68Sll1qDR8F9krVWZjgjBjJLobK8KSypp2M7VK+pepuoF5ah1Rphir3lclcuSptRW9jDTtWqMid6SEhawUxRJEVK0lQcQ22rIJCep2vgzfEm7Zey22r3s/UK1Lzo1631UZcx7UykIjV+nN0qDRnvk6HMoyW6c9EjqlKkgTFzZSmkSHnXA6lplh0Sm8CVSr03jNlCff6HtXhDo3YfI+bpzkwWTJVlGqjNAH1EauN0IyM5L6L/eYxF7s/jRT7cgTSaPC1doFnSKgEfNfq2xtOYqJ0qY9FDsQLiNQY0l2U4qQj5cKaBL4wOowviBaxnXTu61rv1mU/JpD93zKRbYfCk/L23QmmKVSIrSF7ltsNR4uGW1OvFDZSkOLA3qedpJqe7aNX74++So+rIl1im3fpxpLOekR2anAvfWeRUBErrcFC5UkO0GiQ31OkNn0lykJfejeucQ3zfVMl1bzqn3XFF1x1ZJWtbh3KUoqUokknklRJ6xoavzZysBKmJy9wEPbF+o+sjjjPWvdNWCQhp2DJZCfS6LS8sWRVUNYHj1i9Pw+HL20VXuy7t9INIo8OTLpVRu2lVq7UsICmWLQt9btVrq5ZU4z+xdjRhHdSh9p5LDrz7asxztYm22VqTlKiknGQDgnBITnHk7TwOTg48ddvn6PF2buaXaK3H3WXNBMG6tY2E21Yz5ZeZqMCxqYpH6zmNOrdTvauGS9H2D5VptKafuQ/LSsBgnuO4+RoqR5L58UAxUf1jde/jNW9PHwX2CXfO6Q9BqaW2kT1BUKpaUqhlxMteROpCfi9630btz7AdaoFIfg0l+46RbekdiUJt/5dxyCtTbaoCJB9UuRKfDfjjaiEPRdSfVeCZbfy3Fn8Kzto/+K/va0hsiqwlyLWpFwx77vKS9k09q3bQdZrzrNQBLbiYlRXBXHdQ0+y8428txtQ9FW+YL9JN7g0Vy/wDRrtuo1UXIbsahzL4viO44hU1q47gktfIQamtr1USVxGTN9B71mltuIfQuK3v4dZ+jT9q8yztK9T+6C6aUqJUdRi1Ydgzni58ybSpmFV92OD6KoaX6gh+mPAsv/ORJIcbloXHCUtO53g7TV169XGMSJIvilzSkDKRqnj5vwdWa9ul3v402vbZS+Xp6XLV1XgSIakWOGBg5SaeN5PH5nrplWpCdqWkBtlpKI8dpIOyPHjtpZjsNhYP7NhpDTSEr3EJA3Z8Hkd/Sae4x50aDdtECpuoEGHUdWbro7b7ZQ3OuSmtUmjCayyhwNyWGWpryAuQHUhxbbrCMBxzrXuCp0a2qRPrlemimUejQ5tRqUsIS+Y0OJCfmPPKa9VClAeghvJWNvqBRylOD8yT4ivcFWu5vuq1T1dnrkKoVw3HPZsdp51xbbFlwJLjFCbg+qPVXTRHBMN5ZUXAp0Aj0ykNvZNTU3e80tSREjEklUXS20slVooSi32tn/wCLnc4dq+Dtp2fTHVdaevB1YylUJQ+UpKgslyrk0ciJTadMV6dT20AWzA1k1YmJSIFh6bVGlQTuBefurUFZtKiQ2WxucG6HLrUp6T6ZZipjI9dbRkMqKfaUWQmu0TU69ahT1SaBp1aseoy5ZUPTj1ms1FunW/EU2fxLnutzlNL5CFQyFApWSlYNKbcrmodJ0n7Z7JjyZlz646mW7IrEWnJS6qXGlzYNBtyE+jcnc/GVOqVSS2pxJacS0SlKJCd801HCBbyiU++YtH1wl1eL+18i6edQPGHPnyIXeKvzdlYfLX0FP0TbthlaTdgV7a21mOzCr3crqNLbiVB1lQnrt23ohhMz5UdxxC2lNz58pHyrjbaXAylxt8pUoC/8an46Nd7U5lz6A9qtWs6Nc0FpVMvzXK4/lqtSrcrT6kBi0LKoTbrjtZuJmA65NrVZZTOolEXLpEORNYmOSUN9DXbFohbPbp296SaL2bAZpNB07seg24qJESUMuV6BBbTWqonatTZ/WEt1vKW/2WIyi2QFBtuMm1vgedoP+Hm7u4PXhq4e5a9K7cUuvW7R9UHI7llWOiVJckhiiWzCPy0qUXUw1v1WpuyJkldNhKWEempK2HuMz5hwfPEkjIRM1fkfKJdFenFdTHtPa9XUhCUVjEJU4qP5WWHkPJ41mDlpGKnzpF6W9/3xEdSTdEig9yuvYkVWe4Lir1OrNZiyI4LbkmYy9JXTbeabirbbLMZmpnYw3FYLqRH9R5ZtdPgl962l2nt8avVTTyBQrSsqkuXBOtk3M3cN3NUJKXVfOS6RBbkMRHGUxXFTI0SbUPkstb31eolQ+qVStJNOqTDi0uj2jRqJTobKWIsGjwo1OiMtI3FKQxGaQk4yQCfGTjknOomaC6ZypTM+VZtt1FwNLZnxqhT33afUGyhaEJkxG6lGbWy2h18KbeLxUp0KStsJWlwiPKHCUhKj4YomcrGrkrZSeGySRhTlu+ziLKbORG7FFACNW3YFZchgtz8jz4fXw9Lh7/7vurTaxtXbF061GoMKLW6daN6w3HDcdBbkqiVWrUmaG3lw1Udx5gT4LsVmTumxA8Gw62sSF6vfo3He1p5ZVcu+g3ppFqW1b9HrFZqVCoNelQayqLSYDtQLdOanw2oMyTJajyAllyVDJLRLfqblJQ4f44/w7Lu+FF3b2l3g9q1Km03QO+rsjXHQmKZLqZi2HfCnUz61Y9xVamOUx9dAul6X8y4yHEx1RwILjS1bXE9OHZ7qb24d3/bVYvcppzQ34VRuWlRId4W9CumrxnrQ1FhsIjXlTpMBmQl5oyUPOMsqkpjlwrcdSwEspS4t09xH9+A3JOfLMEY2VFZtHFqUqaEW76T9j7Tody3M9huCUdQIkZM2RKNJaSeNl+nilXZEkIfLSrFHnUadNp1RhSqdPgSXokyFMaWy/GkR1Ft9lxtxDakuNrH1JKRge3IzqOp6Pj49kp7W+7ufedrUiTF0w12iv3zacguB2O1NfS0bgpoShpBafjVd6a7tcfccfSVOqaZxsVAv08aU2UafzFX+iWP1b+r737j1G++9sn2rey284MfzcZVUZgnqj+tl5ax79DodDodG9MvQ6HQ6HQ6HQ6HQ6HQ6HQ6Pmn1yzbVvC2LjgSFRptFrFNqrEhshLjbsCosS0FJ5CTuYRg7SeRgZI6IfV5hZQ6gjyVAZyQRk+QQeCDg/w4x0o2ut8jX09QiSSUKusVqQlyLG042eM03Z0m3m3huttraEwY6ulPTcHicWL5/W/wCHX1RrEqdL7gu3ei1YuJl0PWTRSnyX/pSRIFXtY09KVYCATLnPR84KSnbnd+IdfMq1gt/+RGsF+2eUeiLZvC4qC62FZSJFHq8yG6gAnhZLKF/f6sZ85+iH8GO8BqF8P7tiqL2HJdBZesuQpRKgWrcrLTiGlJOQn0t20NkK2pIQFDHHBr8QmkRbc74+5uiwQUxoes18pZSrgAP1qVIWBk+cPEJPG7aDjJCTa3fD9o7Z23eNmrIRWpcoxgS9zBFSvp5r26oj8Odk9v7z8Q7FeUP7+YWnjU0yMk/5bu0U9uMcHZH8C/XKraldmzel9yOKVdWiMmlxWfmJC1SZ9gXk2/UbVmMgpThiKuLMpuG1O/U204pwlXptzLtgJUVHCtu3Cz5Uk5G1YxgkeCcEK+k/iSMcwfwxa/8A4Irz+HzfykuQbL7qu3q8dCbwU1kMSNR9O64y9bUlcltxAYej0xYdZ9UtxgqQ62+tammUnqI+WUjg/TuXtPAJCkJUVJ4UeBlJznByBlWCerM+FN5qy7ZtoRhUOEbZHJjZFHMwkXTKFyZRJVdD1SX4n9sjtu47ndno1YTVnp2IGpGiwEKTjh8xbuzrSVtFcqmn2pOn9Mr0q229RLfuCgLr1NG6sW8a5Ecp6qxQnS42mJVYkJ+Y3Dk+qVMfNukY/Al512X/AGdcNuabWXppGepNg6f2Tb1rUShSY5iOUxiiUpqkR4a2UKcUEwqbAhR0qDi0L2HKUKxlo7aMkJzgYJKseMDOT449uT9ut1EQY7ZWglLhPKv4g7Mbxkj3KDj6gVZGR0z/ABf+HG2+LNDV1NntNtt+5Sguo7fRjpOqrGWnGc/mxjenLTkDVSZqg5ZX+CP9ofdfhb8RbHW+JHc987Hpyiw2mry3OvocJJOW2gxX1E7naoRK8r0rj7npgFzKQpWxJAGBnJ4OQNqfuCQBjBxjrUS4DMpAUlGX0L9VpaTtUteSpKFKTjchedgCsgA+CMgkxqtS2XNryy+0oD9mVYOco3KAJTlXuMkgnaEE7VnrZQLljPTERFK9JQ5YcUVIC3Mo3NL/AA7TuwPPpqP4SkkA8i/EXwL8S9j3UtLuGxnoR0ZSjCdSSYJyfSIUj/S/J17Xfhj+Ov4c/ip2va7v4e73ttLdbiJy7XutSOju9NfEWEuOfZ/XF+E50upxJqX47chLkunurizmsp3MvshAcCtvGAVDkcYIwSDnrZB5AOQrBGCDtJ59uMZ4xn2/f5w16y7zXJu3WSkhpLFe03u+nSq/CU+pz9d2NeFu0i4KDd8Nr0k7KXUiq6aLDc3voXVLYdSXECUGGFsjV+FUksO091SmXGmnmVDlKmZLaVskj8I+ggEcgKyE5IHUVmS24QlEuIFEuHHxR6hfsVmzBWS3dDRjrsiMydKMhiBfizL6vBZkSy2ut7UGErcVIQEpWtKd+FZAcBwlZwSknISTx7+NpITyF/pS12Iei9nWlMNMh2qSntUL+kQ2ig7xOdtS06LICspSC/UItXaQn1PpSw+EpBQvrr7Cznk8c+3Pj2AGSfyGc+AM9ci/cxa0j4jHx5LV0ypkcV3Sbs9pNn0e7lyCH6Kk2hPkXBdVKKVtsOIduHVS4Y1qRtzj6W0R504okoSIgc+160J6nzdMIsOVsgOSRjjEkMcQRswZoGufxVXc/C+l2LSp1+7b/bbPSCmUIylynPPgiBLP5qzdL0+X4eum9a0p7fdEO3i6JRmztCviS3/YVOYlvomSolInaU1fUaL8w40vKETLbuuoSUt8pbXIUkOOISVInFqGn9qpKQilstqO7JTuyCFZJ84OdxHjgD8k4jr0utpbXxGdc7XalK+Yp112P3Rz1tR/l4MWbdfbo1ohRZrUND60GLWpsG/HZ0USklZt2PD3/tzIiyoKJJJPGecewB5AHnj+Ofvz03b/AF5c5cvVJlUZZwHm/a6AL5L6sgZkXwUz2mwdrx4/sxpaeDjyOMg8mKYvgfujfSVvWfT4YBp9HpsjAwUy2EuFRPucqA8EgEgHKRlR4HWXT4MyPtQKHSaeOR60FhptWMnkqSlSyVAqCgE+SfrAyOlJbYbQQrYAR45J8ZOfJBOTwTkjAx4GL+MkYGT5HGTnB5H8M/wz0VDb84XJYsxuLGkz7+r3C6aq6ArqeS7hJjGLAkQpFU8fWPqj/IP06LsMrjIQg5KUZASCEpIxgcJyOPbIJ4GT79YdLiJXWKlXSgJ3J+RZUoEOBDZSH9nglDriUAEBSSW8EBZA6MiorA524z+aj/VhXjqymONraAoDKntygoEEhRwQjfjJAG4J5H8/kda6Wi/ORTTQfUMZIHio8pNuKZlpfl6InqxnzQ4ynRLFFXyaB+p5zlMPsU74t2iXlYl22ncNPj1CgXRbtwWpWqfJCnI0ukXLSZVInMPgKSVtKamBZR6iPUcbbAUkH6eOb4U1zVv4XvxO9YuyXWmqNW7YeviUWpaV01WX8nb8q4qbWZVW0mvmNVloEeDSazFen0mROluNxm3HW4VRSyqW0+12ZVVBTT5CUlRQpBwSFJT+FJC/qyDwFDjkJSVfh6YL3V/Ce08+KLaVuUWqmq2Hq/Yc2a5YuutFbbTVbcUFx3adS7mWDDk1ehOvRNxjMTIMxspcfpk+BMbYfRIe26GtKHyIxdSBBZVdReUeMrYvqtcNNXVCrUH4n9r0dGPbvinS7js9pveybr9p0dvu9Y05bmH90a2nFlJxKGmXcUJ1JG8P3eIhzJrOzd60t2SCfp2iQRgbACcBSVFKchW3H3CiZ+yrtjvXVJ2/tY76jVe3bFuvV3UqRZtuVVlymXBXrJSKBQ6PV50P1TIpcWXKoVTVEjTWmZbzBTMYCoD8SRLVj4dPw5dU+1LT2FA7q+6qv952oUKBCp9Lq1w2VbFqWhaNPpxmCOxQI0BqXd1wVB9tyK5Or983FXZpdaeTT2oEeSI7En8+elppLTCG40ZhAShllKGm2wTtCUBO1KASQeEpIBGByQZD274e09zOOpq6bysobPeLGTktvERiBnPt1Q/x7/aF1O47PQ2vw5o7rt6Q1Tea2ux5SEhxjoxhGzhxV1FaZFEkOrdt2vbti0dmg0CnRabTUAn5SGkNtqWcerIcwAp6Q8oFx1xRWt11xxanlHlW7XMjR04awoqOc5wBnOMk4J2+yeMj3ySeiCurOKWCkKCQT+LleMkgghQ5X/PznA4ScjcbDlTfXwnCUjPHP3zkYOUk+4CiD/Xma7fspoxIlEWuQNDREiIeCIURKDP6vLW/7tq9w3M93ueWtuZsmWtO5zksm2U5ytZeblbUs8vAd36n6oIIO4DKQQnaVAYGSlSieDzzg45IPPWgXU0BagXBkKOceljOTnGVZx9ui65Oc49RQPCgB9Z+2cHdkH7EEeefAI1RmoBI2K4JHkexx06bftgRxGzFVQeacvn+Hhu7rpBq72cqdSMIxtrnklJ8uGPqsbVld+3UJnQ6HQ66c682Oh0Oh0B5GOsnku6v2Lf4Flv2s/XodEi/7icoFFaYhI9at12UmkUWODhbsuUUtJdQCoBXy6lhfskKKQskHAi/7jKBE1a7oezDtkdW5OptErN066at0ltaGo8yjUlLSqY/KQQjclUl2W4haHgUltYQkFY2yHyXn7p1GElbHq0vTmHDhtncdiLuqs5uW96agr/Js0uYxL9TAyWS0tYUgNpYtoOxEv34lndteKUofVpFpjp9pbb0hwKKIj1UdTJuZhRCw2VF5aQpKwf2LzgBCgCg6fHjGDRCSexmojaoZce1W45fmZB2PSms9SNkgk2JfEw0qkUvDhoKb4S6kp+Tbhxo0VhIaZaQWktpztS3HwxFSBnGG4aGGk+SAgkkqUQGEd/0Sp3jp3pFoxQnEpq2q/cRpFTXVoRiXAoNvVd6v3DWoz25PofIw4LTEl/P7OJLdbwoP5RISApwuhQwMFtB88fUFEc+5I3AY5ASeUnDLNRYDNc73O0WFUApykWvaOteoVTZVkxBFplJjU9cqWhIUXERN5cbb2q8OKP05IYPiPThpdq1SBTRypsR4I58V4ayqrgDqS/DG6l/2gjGDmc46Yvlk0PsVfra8iFV46bH2MW3+otdr10WgxHHabQO9vWq/awpB+VedpcK16E/R0pO6QUx3qtVGEyGUPtoeEdslaMbQdPjuT5lS097ctEobigdVNa2ZMqMSVFcWzqbIqL76gVAuqjl8MFkrbO6f6+8mP6K9Z8NTZrD3f8Acn3B0gLVb1w3VW7lsKkNo2CHSKxW3LOenvNkp9KbcESgmap8JzMhuwVBKCxufSj4zl5frrXmwJcxxMejdt/aX3Gaxz2srd3y6zGpVt2/PZcIbKJU+sVyK1T4ZDxTLjMzC+fQS0rkP4hi7ruu4iZTiQLb9QC1yKeKLLjVjyRevTr4I28e0fAfKRz1NYhE5GAgmce6yuUYFoC3b1xH6k3KqtXfdFakuKdakVusGKVBSQiJHmPMNBGVBISpLQWABgFwABXJ6QCRVJAqPz8OQ/Gfb2huRHdWy8Ck53tuIIWg5xghRVwFEkno51eQ49FkLWRlSCfclTji9zyiVEklwkrPuCVHkknpNyckkDGSTj7fl/DpNtNE041JZSI+q2y1fJ9cY9sr7nUWNaWsyZFGfviTblW+SK4xR73ax25r9q1ar6X6RetabUhSSFuS3C8oJOQFvpUHV45GXFr4JHg4B/Y7zu5CMrdH1LrbCv6TTy0K8Y4IXkfnjGQMZ6a50OlXCNUhSVXt/A8H8K9vodb22Ntx8N5P4+f1/V+r05ysd5HclXYjkGparXU9EcSUqZRVZsdJSdwwflpDO7AOPqyOBx5yiNev69bnaSxcF016rx0kKTHqFVnTGUqGOQiQ+6AeAftnnHRR6HQIRi2FNJdrh8+V+n+76yTnE4xkh4oU8tv3y5fr1WHHACA4sA8EBagCPscHnyfP36p3KwE5O0EkJycAnyQPAJ9z150OtqPofy+1f5Y/TrCr5V/XP+fQ6HQ6HWesdDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDoAEnABJ+w5PQ6VXRfSu6Na9SrQ0usunSqjc941+lUWnR40f5haRPlIjuvrZU6z6gY9VtYbDjQcSFJU4kkKGs5EIsnwF/eujtvou419PQi1LUkRPr/AA8H8Vo/p1Lt8GD4fP8A8T2tg1T1EiLa0T0cn0K5q1Llwx+rK1cEL1KrEoDkx2Uy200wltl2Y60VvBl9l1AaKV7VV+NV8SaTrpedQ7ZNJZrMDR7TqoNwq9NiShI/lVdlEdfa9ZJDbcZqnU6O/GgxozT81xp2E+tUkuvuMtzVa2CyPhp/DtpvbjpJKh0W7bpptch3vc7jaJdRiSatQETbuu+rOB9Ty3Uy3KhRrYK3i7FU43BjVBgLkLkcKtWDjkt9xx9yY0+8+6xNdKg5OaU+siY6lTjriXZBHqOBbi17iQpSiCekOlrOrJHDFFUpcVVPm4+bfHmx6m/cdrodr7bDYaBx3GsGpqay8rkxJRBWSERTMIp7xVK11Pp8qpz4kCEx8xJmzI8GOwhRBekynPSYaQTkguL4SogpBIKuOOpDe6jsIrHaJprpbdN/6h2w7fupyJD69M4Md12dbtNagiWifUq38860tp5bjbDbKqdDQ4kOvh8htTaXO/BC7Lqf3LdydRvq/wC3nKtpDohb1Qui63p8dLdDlVyQy/BosAy1PJL647cj9cMpbMd0SW47iVISwh11G/itamWfqh3X3JbWl79QdsjTX9X6b2uiqVasVqoVByjuy4lVkzqnV6pOL70Sc0Iin4zTLUxLYcUhrahgDW3EXVjpCMVzLlPHGpNgg/RX8vvxrkRg7dLT2mhuZyku5ZQjpkfVELjyS+bfnBWMiSEJfw0Ozs96HdNZmnNamoo2n1KlM1vUitibGp6Y1tMJeT+rGX5UyCht+sy0M09ElTyzGy4pMd8oDS50/im/Ce7Ge1Xtf1F1y0yol129cL06jUqxqVNumoVakPVOc48H3ENuFIZS1G3xy0hGHzJafC0KhpQ9KH8Hn4fdpduvafRK7qHbUOfqrrNFpt6XU5OaX6tIgvtF2gUxkb05R+qnYr7iy1Gd9UgOJV6aSYsfjf6kWPdWv+kPbhaaBRrc0ko1w6n6zvRNqI0WqIclyKbSpsUgyEVAGI+1GEj0pTb090phOCGtt5ql3K58CCcQ8KVUbH6Iip4bY/Tqz5fBG17N8Oae830CG4mco8hlJlIjQCjHxF943eaXrn+1yuGRYOjukugsCYGk/KSdWNSYyihUl67LrbiG34c5xOUhNApDUlmNHyXWnJckOJbCtq2Oq3vLSccrIA5BJJUE8kkclSvfHnk+T0oGpF5y9Q70uS7Zidiq5VX5rbBVv+VhlW2FBbc3KyzDYCGmvqP07jnlO0oRYcufKjQoTJkyZshqJGiNDfIkSH1FDaGm/wCcCopSScDKgOc8O+3j8nT5SxJiLy/diFpJurP3m6KK+vVPa+4NzuQ0olc2MbsUUMHi2rMWZ8qvT2fh79n9195vclYuj1IjOx7fn1mDOvmtFChFt+2Iq3Uz5UqSoBMdT0ZyS0x6jjPqL3uIV+wwr6S0CLZeiOl0GDFYaoNj6Vaex6bFbZRuRDoFpUyU8hWzICVPKDilgEIQp7chBSnCov8A4Lvw/P8A4Nu3qHe+oVM9PXPWylR7iuT1WlNP0GyKi0BQrddQp9TiaiEs1CTNQ80y6lMuOyptaQhRTH493ddJ7f8AtXp+mFDqi6PffcAkUlltkqEs2C7HQu7Ex30t7gH4cqHEeKUNlKpTLuSWiy5Hd7v5a+rDThDlKSBEbjY8S1bq2KnlFUJZ66U+EtDt/wAIfD+pvNTUY6+5jCcoTolqsIvEuVIxNSmpKKSGrHlHv1+9/iPfEAuxVv0z5ibrpqq7CoEZhl5qFQbc/XTRgrDakgtwqbS2ypfzLrCCp1STKbJ3D6LuiujdndvumljaLWHTmaVbmnNp0S3oyYgQuHUJUePIEuqCQkhMqfMfLjs95LbaHD6O1ASABzA/o4/ZKQq7O9u+6Ol2IiQdN9HRMYS3Jp70j1WboulhTrgdQmEwVUiLPRHU1GUFyEKlF1UWN1ZXteNtaeWhcl8XhVYlEtu1KPULgrlTnvKjxIVHpEN+oVOW68lCyn5eHHcfQjGXdhQCM5CDdTlqamlokggBHI0vGBLUq65SY0+WXEz4en74O2EdCD3vXgam53m41d1q6pl+WykwgSxEIDqMI/lWfUO/xnNfKlQdB7f7bNK6mVawd0NaRYJZp6lPS7YsKXHYeuWv1ZKXWW49BmwFpbRU3lJYLLUzeGdiXhwV9w0mlu6qXHSKG6mTQ7SmiyqTKZ2mFOp9rJ/VCKpCWHFhDNYmRqhUkxAuQIiZCWkzppy71076z6t1yr6T90PxbNWo8ymSdTYtd7X+wO26gpIapFGqYch1C/aZT1LcVEQ/RkKEWXGDzsJUmSwqXEDbapkFHw+e3OJ3I9wqJV/PQ4+i2k1FqetWv1cq7qItMg6Z2KlVarEBcp1WDVLlkMtUanxGlGRN+bmpYYeKVt9O3aNubb+9IxDixhG68sb9QU0GLxcWlZMmovxG75o943+40tvqvq1IyVbAicS6ojeZXRcSIt/lPOvNqxu2Tsz0G0VnQ4jWpHcJIjdzGrTa0qTU6faaI9To+k1oySVlMeJLhSU3XIhDCJM1EGdHc4VtlS/RXe0FvuF+IG7rjcVJanWV2tWrNvNp1303oc6/KzGXTLXp8RRLS5UsPuSEJisuI9RLodcJSj0jA13gdxVQ7se4jU3W2dT41IpdxXDJp1lW/BbVHg2zp3QttNsa2orCER0NsUa32IcVI+XZUVtrUpAOAn6WP6N92TtdpXw47Bu24oIpeqfcY4jVS+oqmEN1Gn0FxgIsOlyWnS5PjusUqa805FfcS03tAjxIhDpU76q1KScp6dUPg5BgCUraKT6lWLca27btpau404lcEc0yOUBC8cY3TKC4xnIddAIAQdqcIQlJylIAT9SsjgD7pJ4wcn3yR1jqbQokkZJ8nJ/39VgnHjAVjj8hwnk8kYA/ecn36HUW3mty1eEGR8vlFfCysJeFssw++faurM7fpOhttM8Skc2v+bJ4WsVi/b26pShKc7RjPnknx+8n79BaQtKknwpJSf3KBB+33+46q6HSO27tvzblx46WObvN4c/6+em7d0na3pT3f9v999umsVEZqtk35Q51PfcUy05LoVbUguUW6aEtW5UKuUSalD8Z9tTRfYclQVOsJlGQ388Tt+v3X39Hz+IdeOgOv1LnV7Qq+Kp+q6uKS4tFr1azajLfRaer9ssutuxmqrblPkuu1BgqS+afUpsIvBxceU39MpQ3JUnjJBAz4B9j/A89Q1fGF+FZp98Tnt6qFutMU22tfLDp1Yqmj+oyoqP1g1NWhhU2xZkpGx1NGu92JBakOuOOtRlwWgYrwfPpvixjKBScltzJGJHinq5KZolcc1SSlTPHl2/dQ3ejy1JRj+RYjKvzQviRBG/yrybboOo1vjCdp1t98fZBW7jsFyDclyWLTJGtGkN1095mSir2+IbTk9hhhBKob1w29IbfEJDstymVBEZ5lUoNrQ782821WFSKnHMRxEmlImvzo7gKHGWoCkplKUCMZbWtKCk4UVZH80466/g3fEfvjtV1cq/w5e9KZWbeptJuao2DZlTrsmdKl2LWUSJNPn2VLeqjqlKtK433lz234zqIUlp+I5GfU00EGOb4wXZrVOxbvglXxRrddOhmrLqtRLchtyFppFQgVN6Q5dtsPOxWyG6ZNqKai7EjKdlSVttvPpJU2laHjS16Yox9YWpa5x+VwZDPlEHpL37RO8dv0O4kpQ1dF1SegAq6jCrkopGv3dNUmSQHEBvQ6cb3LaTQNMrxgVG15hrGneotNRe2ntdQwlDE2g1JLK3IIcQ4tr5uiTXH6bPiJQ2uG80lt0EqSEty6covKI1Vl0/7/k+5nqukRpKcY/UHP0/TodDodDrPWOh0Oh0Oh0Oh1Uj8aMnA3J5zjHI5z7Y+/VPV+Mw7JfajsILjzy0ttIGMrcWQltIzgAqWUpBJA3EZI89bQ/PH/wAR/n1iVEVUCnL4Ou/r9HD1Rp10dkv8h21h2saW6xzGaqgPZIbvN+NJhvEBobEj0ZaNhW6kmKFAtF3ajkD+ITIjXH3+dzEyluevDk60X0lt4AD1PQrEqMrCCTyoshQSCSAoA85zIZ8DDvBV2V911w6W6wioW3Y2qtJFLuaPV1KiKpNdo0efPosp6KsFLbs1S1xlyUzo77MVUhEd7fJWoxkahXE5f2pXcLrcta2malfNySWHVpCn5M68LqqjbSlHKNnqIbW7whWC042kHCnUWFrdzd123YbOUCH7I6nzJykpMY6SWRiEOMosfzSi3JkmOqx2HaP+D997tvibq6e80mMIR0yMR19QSEUnc+ZUboT5eAcddJ+ltuzaF8FbtF1vpTS490aIa50LUKgVMJ3fK0Kv3/GoNwl5RUU/KymIUuJIaIUk+mjhOAeuoeHMNTg0+qoH+J1RiHUYCweHY0xhEhDoTk7dwcAHkFIThSgM9Qw1TShywvgkUzSia2mNKo3bjZ1RljYpAj3DLrv8pH1mMvZMQFLrDTxVKjtKWqSgtkpSQ3MDYO5jTbS2OeQnTixyCcknfbsDdyVfcDxkAlfKuOrj+D4p2yGMxImXKQrw2XV1iKMUb+vOf4rbnQ19fdz05VFI8ajfKXKLGKxApEiKvqJe5XRwQOc/b/26yQsJSAOeSSMngnA+2OQB7n3zjjrAJIcaI/z/APu9bKOgemFHCt2cAgYSASOPfnyT+4Y45nG37hHZacUhLmSlK4oiyqPiVn5OV4oYxq2SxoKO0/adWHi4xlIk/uj6ZeMttY+/0OqCUKIJ4Izg459iCCM+CM/vGescxWHHCkqBCjwQOS57KONqwdyiSoBIJ4wPqV1s0ICchAI3YB5JzjP3P5n9/v1logOuFCyhIB8KVtJSAeDjzj3GPbkc4BT903ey7voy0N52vR3WjOxlraYzUI3xamQY3FWL7igy6k/w53D4g+Gd/o9x7D3jc9t32i8oy2upKEa5Vb6oEvN+qNDm8X02a7tLtR6bq3ZWvWjFTo4uuhW6LB1Hsa53ptPtjVXTJNSjyqfHcr9PjVOVbd8WDN+Zqun85VvVamVRyp121qz+roVfXPaPqf1jbVYmU6isT5FCqk92r0eUwwF/JKqijIft6atDjkViRDmpmS4jsWZLjy485IC4/ppefWZuEpsHA5JJURjk8nhO44/MDyck5JPWEuEVqwQNoUVD6lDHI/EkYyeBwrIynk+M0x3/APBzsHetxLcaehLayb4xix1gcILCcaiBxfSWVkfS9kfh1/bF/FP4M9G/3+n8SbaRoOrpd0muvJ0+Vn7Rw1bfUh/dy9IB7qwruz79P8GdGp2iPbjDZ1l72tTaRKTpvpNZFSgVCdY6GENf/nD1TmKxT7Ite3ZDrE+dSLyXQZlYXHYMf1aaG5rhY+Hh2PULs30muOtXjWZF56+anVaoXnrJqSh5blRu696u5IRIgWw+UhyTZ1Bq8xdPYedaS9Xa5LduXMJks0kyLxLfjNzZM9MWIHKmhtuoOs06GzUJgY9QsiZVWGUTpobLzjbaZbzqEeo6UbVFZUqFrWPUqs+0y0oNocSvCi0XVMocSEpCm9yQF44UA4nGCcfzTX/dfwO3WxjB7fvtHThL93WHQlXGPGmOpJlYsZciIY4nKk6N+HP7cnw93bvhufif4R3unOUdOOz/AGEjqQ05SE19TUXSq6YsVK48io2kmX6Hx6i73ad2tXuGNTGbgnWb2yEtxWm1SKPSJNu6iTKdbrr4yoJaU6/U3oqVlIlVF5eVIcTl5ICx4GP6v9vSk6edn2nFn35q1qZEmXi5detVTtCq3aancX6zpcY2Vaka06NTregmJG/U9LZjx35ioiXpSlSZkhSnNxQsrarQSznCS9IqzgIwQmWW+ByOQFZOQOT9seMYr/X/AAt73o60nU3mhMPyOlrcmJXqqTX1fyjfjro3s39p34B3G0jrfs3ctL5ry4m3BIq1f18qVZdl5taglJUfIH5nIH9eDj+PWS2laTtKhgAkjB4xtUrk7QPxDBKscjIHs7JrQyyoqUqa/WS0hRI9WSVLBTgqCduAMhQCce5USCcEIfqRoFYkhmVIq9BjVxEugzrVqMCu1G4K1bNw2tVJjjtRplxWLOrC7Lqcl6I+/TWK29RE1SJD9MCQstqLrr278L+69w14aMt1tNAa5S1Z4vC0RtrjZdiZUK6YPib+118HdojI2nau5bxPaWmRyhxr0tKp9Quk9RSA1rUewKHVp9Cq142vGqtHojFyVK32q/Tpd3RqFJmswWaoLOjvOXG5T5Up9qPEqwhfqR+WtmD+skTJcNiTs2qxBmMR5cFyPMiy2W5MSVHcD6Ho6wS2pKxsByThSFIBQSQtJPRcj2TbtnM02n2vQ6FQabSaPTrdo9Po1GgU1ml0WnJlCFRqaqMw27CosQyZHyNIYV8hCMiQlhoeo4kmKDTVvKCtykDJO1JUp0HKudnO07wDkjJByOrJ7P8AhL2DZbuO4325lvXRkRjGekwgSlJBJOrNkGfMcWi1K3lH41/t0fHer8zYfCfatt2l4yIbjcaEdSWnHBHjCRFl72kouKIjnrJL5UphK0JKVqbAQpKVhYUUbQoKCgncE7VEgDgBCCEEh9ugLiYXpRmI8Vhl1O/bHZDJUtR34d2qKnNi3CCrcQNykjclRy3G0tP3JRZnzG8sJUpbTSwPqyVYWEHOchRQnJCVZSEALUAHi2FQ0UdqG823hwALUNiAAkpKkI3pG3KBtWcpKiVBJAIGZR3zsnw/s9hqR2Wx2+31J/llCATnKMIpySchipnxEJBSttS9m+P/AMRPjzuGn3D4w7/vtzDUtdpp604bQZuQgMQ5UYVPDd+XHty1BspaCUhQVuGAVZVwTkkkFQSPJ5wD+4qTpqgtaEYIVg+BtPOSc53E7gQMEDGDk851rlUeSjclxX1BZP1ODkqO4pGSAANv0kY4wBtAHWiflKfKlElJBBSM8nPCskAADwQPAxgcYxAdn21hKUmIRWr4lkhM15af0qm/vO9zumMTTSf14skWMlG5BXFp5HqWolccmS/J9M7UEE4B8ZHOecg4wP69w54z1r1vrd+lSwrac7QEjaSDjIAz4zjPt1gPSB9Poq8k7iRkjjj8SQME58DPj2z1r33DkKVlRVnJCijwAP5uAeMf8nqQaO2j6Qicq8ocrDPmgwPiX8+mXX7jzmQgKYGMZHFOKvrF5SursrCGTrfmSt0YLiVgAg4COAr77R74/s46t9F31R/RV/8AdV9D1R/RV/8AdV9KDaoVEo+gQD7+JnRP7VqOZaTKT5ecc+x5t8AeXx1EL6f5/wBn/r0PT/P+z/16udDro79i23/uv/Pqf/r9efnOX1/of9Oh1aeeTHaceUooDSFubk43AoSV5QCRlQ25SMjJHkdXei1d0pES27gedbLqG6DVlIQlWwh75J9KVk+cICsgAg7uc8Do7VnwgtWqRP1ljOT+iPQgXIzVZ/l/B/y6IemUV2FbUmbVWSqXclzV2tzMkKVJhqqMmPTVFQI2FMFttCRxtZLRT9QJ6jY+HvVXal3Y/EolyUAuo1Yt+MhO7c4Ahlj1FZBIPqKQ2hO487CMnAV1KxQghdAoKE/SGqFTWlAZyVPwo8lasn3JdJ4yOfbBHUNnaAqTp18Vrve0jqbohf4VLYpuqNsQ+CJjUF+JOclgJ4JEKSsk5wpKeEZWMR7fahpz0fKkp+ci8KLsHy3jCCYsSffCenHcR7pppyl/w9RtOMvmwbPJfEYq8rXOepqUqC0pUMDIBwDnBxyM/cHOfzzwPHUafeJcdTsjVCvVi2XAxcdX7YKjpLZRC1Kdptwa5an0m0BMbOCpHylKTUv8ZSElBcGSkKHUloYDA48r5Ock5HnJKlA8qJyCMg8jIyYwtfKYur/EA0sqU2bEXZWkGhFe1k1Apc5wIiSE2hORNtFuU3kCRFYuFaZDrZzkpSpJ8AR74q1vl9o1GszKrzxULjZ+ZitFPqrkeK6WfAmhN+KttCRKQahzqJnnIkLXKJFLf08U+Fs+H7Zds2DU+5atW2pun2jQ78tjRy2oMdhLMWTH0ns2i0uvTYSA+pSIrt0Taz6e9UhUtTrihKAYbQuI34wd4wq1SPiNarUVKjCpmnPbx2hwX0u71P1evVel3ZcVJCw2lLS40tppJQUrTJ+a3F5ksbXpk+zyNJo+jFqQK4whmpXM1cmqtyyEuhxLM6+6m7Wm9zBbAWuSwfTUSpooVBXlvDoEfno+JTXZNO+HlqrXpq9szuV+I9Xb1RjgTaRa7dx0KjObhj1U/J0zhWxsASNp9RDQcc5J4/tXdt3uFZR0uJHDnlyGQVTkKCsyxFAX053G7Nh8Pdq2DAhHd7SG5LlmHzIw4jF9TfKOeRQZWrOU25Vrhj5YYVvIG/HgDa4Dj+kRtzkkAggA53Ak9Gy6pIkSUkAjCjjjH0gbEg8n6soO728Y4PBT6NQGgpAvFZc/ypK+2WmzqL6YA14vH1qhB/m3916HQ6HQ6x1v0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh16M5GPPt7YxznPtjzn289dWnwBu1L+SFLvvvTvKnfMy2qdNtPRWnu09bkqVXSJkSo3FDw6l8Ohp9MKC+3HEZG99XzDpLiGOa3t+0nuXXPWXTrSS0KY9WLgv66aXbcKAwUpdcbnv4nu5WNqURqYibIccUptLaW9ynED6uvphxbT0p7Gu0vZFiQKHp/wBvVjy1rU8hhLTcqnwVLqElSlNyw3IrVxx5UZCm23PTCC4kKKSrpHuptwgS4Xdv1xdH1SrcNWIKdWL8B9r0NTW1e67vS+Zttqgy4r8pyshPdaPNVd1d9cwvx69fqra7dE0ZccMa/dU0xL91AdgvrYRQrFhLQ3ZthMt/tvQlsVGnt1efNQ/6cxCmWmI3pn5g8u6UuywyhsrU6spbbaR9aluqBCG0JTvUVFZBQhIK8nhO/BSvXdf3F3b3Sa96j6y3dPdnTLsuOfKp6XFOKRAorUhxqk09kPEr9FmIltW1zcrepRVgFKQ8b4P/AGgTu7zu+tahTYZkWNpy7Ev7UF19krhsUemPurbTMe9ZpUb1VsyChwJeV+ycPpKKeiNLb8QaIzkks5xirF9rbtawDVdIe9b/AEO99+lo7OaaI0STnEjFjEQJEZcrlqFuB8iyqejSldJ+FJ8JGde0+NDp2uvcHCbqDMNmV8vUk1K4Y1SYodJDTTbvox6fSH3HUSHYDq35MtaH2QiFiTGn8FfsKnd1/cMjuG1Rjpe0n0nr9Mu+bUZ6djdx3mzOjVSHTIS1BlMpymVRbMmqfL4eb+WeCQ0ErebPPxQ9Yr1+Ib3uUTtU7daa/Msuxq9/Iq24VIkh9t6siZGiVuulJQhCodKpCmGXI/zvyi3GWyuVHUh1C+trs87YrP7Qe3+xdDrObZcj23D+ZrlUQ36S67c01LSqvV3GyVbPmHWm9iSpa8IK1rUpeA2amt8plazWgHkAxTlhaFFZHhbwDbZ3wZ8P7Pund9sbuA7fbOmRkn93OcpRIyi3QWMqsq7KspW9cdVbW0G0pv7Vy9JKItr6d2hVK+qHH2NuykUKMkQrdjhSXnXmJoLcZcZtmS+sNoCGXlt4V82nuY7k65qzdOoWolQrD0i9tdbslXnewDm5qj27Fky02zazCFFIzGZkSFurcCHnjJShTDaGkF7oW/SNu+xTMC1OyvT2oqE6U1FvLXJUScl5hqptOpNGtR5tDWzLTrcasvPeuHQhaY64MUbJUjkIysOBKypO07glISsI+kkbUqWEAAHglQCBzkY6O223NU+bLiRykbVWOF/gh7JdxqKZafxZ+MdDW7nr9m2EfnEI8ZakdXiRnIjCiEY+9N1IBSr4j1VOcT6iVBGCsJJwDuJO4cg7RyAM5Tuz744HSZ8BL4cD2tmqzfdPqtRJbmmmlNbpDtkUWs0xyPTr7vcM/rFp1l9TxQ5SqEYjpVJSUmYFNLYcZkfs2o8vhj/D8vDvx1yptqqptTpulFtzabUNTLvkU1z9XUqCZIXHpIk+sj0ptaaZksoeQl75JARKdjvpLbavo1aY6YW3o9YdsaaWPRRbllWdSKbRaFR2nm340dqnwI0JcxZRHY+Yq1SXEbfqM1WVy1Jjp2pEZKnSN/vjS0vkglFScT5RWOAUqpRqQX5K9wT/AIVfAG77h3Pbd63+35bLbyjq6i44ynK4qNFWLybiJ4Y562VXqtEokSfWLkq0ai0iHT5k6bU5RQmNDiwI0iZJccG5pDUePEjOqwlSEtttAJScJSrgh7nr7vP4vfxKoNpWFMnT7An3PBsKzvRLqIdGsGk1FkV24GHX230MqltLDe4reZQ4qKthuQFem5Op8ePvyf0V08hdrGnUtgasar0bbegZSqdUbWsGtsw/RQxEaQpMh65WC+0ht5bW0NOJSy+FIcUsHwMvh3jtH0ZTrjqDQlwdX9aqJFmNU+anbNtC0JEEmFTXEOBxpdVMuRMmyZQSGy641FQ0PklOyGbRJylLUtdRIkPSS4rSzlKWeRXpQkCy5V+WVj/F+01O99+0dptYwjoaMtT5+pfEKYRIkT0ywSlJQa4pGRhlr0b0otfQzSmyNJbIht0u2bBocOi0ynQwGaew2z6ZlPMxgj02VSH0JckFIDbq9pSylKQOomO4257/APied2NI+HH211Z5/Ru3H6PXe8TVWmNlihmk0uqx50CwkVAyBAfXVFx1Q3UsrkNEuGXHff8ARDCXD97HcfqRdF4UXsR7NWqNdvd7q+tMKr1ilOfrQ6BWA6RDrt91R5ja3Dq66fNejQaaX2ZLqlO/440GVNOZXdRdehv6PR8MqXptpxPpdS7q9blzYEu760tl6+b61ArSISK1qDcslv5+aqg244ufIoVOLT8VpyVFkJqMT9pHcN0dNnMiJIbtP8Rx4wiPvTebSTIHL01/FfxLHsXatXtHbtSOo6MWOtq06a3QsYElicji5lminPXMb+kDdyVkagdxmm/ZP22pce0b7S7Tp2mtDtukJ9Zmoahh5ESo+g2wl752ap15qEyYryo7jyz6URh519LjRta6u52SdrUrs2oiIEfXfXhyiakd3TtvyHGqzY9nMSH5Vj6FSnUesxElU1KmLhuymSI6ql6tVg0+Y3GkQXW2Ub0wvSHofOrHcnqain3x3B3JW6jc+mVp3QyidUKbcdWdVIc1Vv8ApiylTMNpt5+RaNPEqNJenrXUlPMNwlMzXjfCu7JXO77UbVHvX7xazcMHs/7bGHdYO4DUSqKWJuptxUx2Q7QrJpL0+TEcrM+sXS7BpUlmGqS827JjsRYU9BlJZkUImlCHE4wRlIFbqv8AmMGPPsXK3mx521tXU3eqzl6Z6jQVUQlRbY2KpTxqJ4Riqw/C3+ES13B69drNgal/NRZGrEFzuCvmjy2XY8jTvQ+z6xOVQaLVlOHFKrWptWhUxUOEqTGmTbfS6+0ttBQV/UAplPplEptMo1GgtwKTR4MSm06EydrUeHBYRHisISOAlltASknJI8nk9QyfBq0JqTGmep3e5qXaBtTUjvMm0uu2lbTkF+C3Y/bzQmJdK0xtWFEcXHaaaXa6IPqJapVEbSEtejCDaUenM2yVtuFxaysk52jOEZCgQncTx9XHjOBn8i9xuflwiyiyZxpChqNDEk3SCWWZWLKjEn7R22aOpphZKLy5RlGIvIWK1JtVEuxGMWw26/wn+H946w3kKVt2jOM55A84+5H26zurSkhOMq8qSkceSo4Hv/E/kCemfc6WpLUhqaYSqLFFAMtNsi75PjxX36lunLj+t4+946o6pLiB5UMfl9R/qHRBvnU+y9N6careVZjUiI5vbgsKUH6rVpaEtqMGkUtoqlVCUoOt4bYThO4b1JynKINXz3D6owkzdJrRoumdp1IviFe+sLUx6r1WKEpCmYWmlPfpUze9vxH/AFtcBjS+f8VIbWoJIaEnMygpwjf1MOEPIo/S2ui5bnSiHmV4KwYrKotJbFIo1lOnRfOMuktsrStW3KgFJVhJJTkbSQfz5ynIyMKTnA37HS0s7k7spVtBUlSsqBACTlWVY8ecEADILKNQ6DadoUdda7je+eq6fswt6qi1TL2tDSuBT21FSxFgQ4rE2sRVLXhTUJyR9RJ2OKSMBjcrvE+G1QqshVK+KPfqJUYrUJNO1riV1QHGC9Hq1GlQxuKhhfor3gKG5QVybosLIIxZA+LTF3hUqsDTKxI0tJNzuNLUgR45jJ9Sot0VETi28eXq9LFHzlgP6RP8GNHczaUrva7YrWpsLuM06pbdQ1RtqjRhHrGqtDo6fUj1+ChgttzazQIjKGTFjNO1WUSyqOJA9VCIQ+2zuItD4pPadeXYb3IyTK7ltNaRUqronelwviBVbln0xgw3bJjT5SH3BcMWUzDAiOIeUylwNIccDzjrXY1pf3y2FeFUnQNHO/vt11f9OEmPGoOqsajWvWZbctDqHmapdNFKx6UhCTgyKLNKfSwyuMlx31+W342nwmtQbNvCT8QXtC0iruk8ijvi8dVbS0znRK9b1LnQSJrWrWjlwUVMJqoUWpR3XKkujIgxVyYCI77UqUS4OnfbctOUZyWRFsjhi5jSyu3PKQEsec3hrluZMZ6cIRdLVLnH2eTUmJYElSUmd4uOKF58NMqW3OiX/wBgncM+5aVTpVdrNW0ku6XhmRp9qhFiilIos1+SqOhuyrpdbdg1KH6zS4r8sOB+Y5GYBjYvKzbhsC46zaV1056lXBQ579OqMB8KSth1hQAdQSkJejyEkrYdSSFIG4hJIBmq7j6pb3xDNIaZ3P6f02m2z3ZaXW/Fk9xth01hDLuqrFtRIkGBq/am1SFpfpMaAsXDQ3G58pia9IfEvExtlMVuoWo0nV6iU6VfSkt6jWqBS3riEQiZddJLfpx2K2nchxVXpkiO76tRdWtTrchLbjAO5bbzp7i4R5FEfzOWxfNYT1CIB5MPUY7n290flyirGUWUX0hXJ9GJAJ4CgwxTFSb90Oh489DpX0ydDodDodDodDp1fZJpEvXbul0Q0qQwqSLy1GtikyGko37Kd+sG5dUluAraHoQoMZ118+ojCCMqAOemqddL/wCjd9tTN6a8393EXDTw/RdJ7fapdsylJAS1dVyOpjuSA6XcJ+UhNraLfoOF5T6trrKmil1y7RtZbvuG30ItM51ySww5r7Zr7146ZPiLefsPZ97uC+ZpMdOsPOSHn6BcpZHiNN104j4/Pw4k2W6O9PSeAaRb8ONQrG1Op8OTFhejVIChblGuyCFzG1y4r64EdmpVNttlDSTHL+CG90JXahZFvat3VoLoFGkuzrz1N7iWahfCFQZTTSLepyGYMRKUyBGElSgKo+v01tFn1VIWkEhw9g3xd663W7I0r7bmqo7Fpeq1XqmoepUwpU1TEaG6USoVcr66qklTIh3E67EbQ+ZLa6fIhsKZRUTIVGTxZ3Rqzfdxdw939yei1JlUH+Tl/wAa6aAqiMLQ3alHpxbi0NYRtaUpEujUyI4rYlpWMpSohsLcmHeNCHatxDR0pOvFYg8SKtwZSY8lHihMk5Rsz1Cuy7rc9y7Jw3ErlOFGtJojyKjDnRRCTyiqF1WSMXvt76bdTL0ITojbRjsVjVi7tKtFrPjOcvPPSqtGcEQRAg+pGaplEqk2VJdkMNRyxHjrdQqYhxp58Zt2JBoVLecDztFoFPpDzgACVvQmW0OqTgqJSVHglSs8/UrGTzNdjfxZ7S7g9XdNqv3sz7Y0zOkdoViPYV0qjV+n2hdutdcjJt6nVqvPiQ7Qaa7b1CSWZUhyKw+/IXMYjzY6WnH1dE8XVvSWoQ2KlTtWtL6pDkBa0zaZfVAmRFhJUFFp5MpPqnAyEhCTuJTgEc3J8K7nhsNMIEmQEg4jElnkZoJLYSQoqzCc0fiNsd5pT13X4XqyPlBLCRnGTSynaDEq19Y2HSlNf5RP8f8Auno2R0Bazu5AGff93sR98/w6Itp1WDdEdVWpmZFI9Z1mJN3ILFQQgKHzkN1lxbb8RZx6bra1BWeCtP1A/RRjJx5Cv4gFIH9uf+cdS5j/AH+2khUvmcbPPGBIkCe1jFPcs8D1UcI/L0pXjUlIFG/TjiYUs/vFouky+2VGjoJSv7DKhz9W4HHO76dv5Dn3x1v4baFlZUkK27cAjI+oLByPB8DyD+WOtPGISgknACW/7iPbrNjzfSWoBsrCwOMhKgUgkc5UCDk5GE+2CfBNA+aWBpaeQDjGOOeCNH5nk/Uw2UdO/byJGGpIG+bOSXdMoxu7/LhD2ymet2inNuAENDarP1KWrHuDkBWfIx+H+znrLZpDZUFAttlPOUNjyT9PH0hWBk5VylWNo5yLTdRaSgDbjGcD6xgZzzwvPOTnd4OMDHV1FVQngEZOAT9QHk4/Eg4xnkk49+jZ6Oo/k0yNflQBrGXOUoy+/j36dNPWhCZnSNO14wlpkmxDzIpfSSyWFZMdbeNRWV+kAEqUPUx4Qnndn6SQlPH2WMkZ5Jx0slp+lT3GilOCopKiVYP7NLoSM4PgnlXgKJUfPSPw6qgLZSpJygr5UPxFYWM4SeAlKjnnPjAJ6N8SttssoOd5G5O3fx4VhYyQUgFWAPfkcgZDJ3Ta62t8uMkSxrgqXxsKGIV4p8QbIy4w6f8AtfcdtstaOrqqVJTTSkj5JXlW7JWo+kGh6czT7hjLSA4pHATuVuHsk4IUVYUVAjJAAyVBOcHBtjVqnKCCt1K8buQlIH878WUgK9sZUMY4z46ag3ckQBJeWpJQVKQrnBKeCojKgQMJ5VuOSNxTyOs9u8HEkGM+tacFPJCQrJIAB4KgCPwjwQBnniI734elKceEJMFzKMg9gxf5cj5oSrz1bva/j3t0dLT056kdOUoImVS7KBpk3Klz6nPHC6l2rw3SgFe3G4ZBKhk4HJSk7QCOc+eRkYJBGumMme0ppWCNytrhwAkLdwkqUTuKPPASccE5GQEiavCWSNzi8jOQjAPuRtK+Tjgnjjn8uj7S7kS800mQW3QM5CiHeFcp5cG4EcYTvSMABIVjcW7/AIY7CUdSpJ4kKUX5ppbLwyCLhfordx3ztu/HlqLzLPy5TiFoccBcgpI+xLPSeVCxG3nw4YjLoCcBTTW5KwTwohOTuwlOCrwnCdo4J2dJshgO5XFZZG3GVtqzwrccJOCD9PgEpOcqI+kFSVVGn7Uqy2nd4ASrJOMkHcVAlOCDtJ5z5HPXqJrDhR6RSoZUAMYIIGTjzt/PI58DnPSiOtqNxgNsX6WR8+BoLq2ID7t10wuy2Ovqk/kR1ZJdk8oRFzIX8oCsWvKsbHc0Ohx45aLvIjjYEpwdyQcIO3ISAAkEYSCCQeCCgKWyptEdBbSEpAwlAUnnB2n8JUDzk+VcYJweAQIUgn0XPHqFaceE5AcAyN3+accnkjozRZTY/ZrO3cSckgJSQDncpRA5CRtwDycH26jvcY62tqcpylLivpPEc+oocZFun6X46nfZ9DQ28ImjDjpyUJZ81GR+b1Ax4h+WnCWnW3Lris7lE5GDkDJHjzjPjrUuPKWVAEhCsDaceByPbgk8nB/LJAHV5T7SwXm1b/QCiU7VJyVjakZUBjkHJAVge3jOr9f/ADP9b/h6SaejLNQqqKQjT58Ne1N179Ou8ZTIRhLly5T1KTLdRtX1XUly585Dq+CSTlOADwcg5HPOPb28/frBceWsjDXAJwd45BxzjAx46oWrakqxnGOPHkgfn9+r5Wgkkt8k5P1nyf4dLI6fB5cefsVjihT5nmx+uPb7NmtDVhPTNDUgai1xlFpuM0eTyprT1GvHnI8RtdDodDo3rG93ertpaZCEGM4rynbaJcQjKKcRFWyXICuLcSyvB/cf7utZL/6P/T/8PWyc5BI4GBkecnPnP/PjrDdd9Lb9O7dn3xjGPyP366N7mk4VqEtE4RVkRml6hWNOUhtK/NebqjPCGgoiFtuLr936+Pv1e6KF7peetmtNxEB556lzmEJBBx6zC2ysAKBXtCidoIJIAyMjo3KAUCk+CCD+4jHWqdbUUrSrkKCkhR54UFe2fBySQff35OW3eanD5cEEm8rVwwY4KR9zzfnHjBsIkhD0pFjjzLlyy8lLyRo4lBi7k6OgEIolJQ5tbcbpdOQ4CoA7mIEdpSiknKcBvBBA4TuIGT1Dz33tze2jvX7Ue+ui01AtZJi6L6zTUR3RTxQLl+ZpyajOe3Nt02HApjmGpbrkYNPx2323HDGca6mUjRfTcSDhtCMhPAIOS4keFfSNoQrngb9v809Jfr3ozZGvmlt2aR6g04VG27vo8imL2hPqU2YvauDWIaVHaKjTXW/UhqIIClOgFCnd3TPvYxY8ovJixnn39UfSSTD4zmrrj4qV/CPcNPZbzUjuyUDc6Opt4yiF+s4kni0XybjeaBW/UustKcsTWNq6XV4rNWosxLrbiahSZqEvRJiEoA9NLyF5DY37MbStR6h81uqgu/WTuzh23H3y9Xbo7a+zyy6o06tE2TFYnvXXqghpQRiDCh0j1X5f1PEmXGT6iS2FLV7sO1kvq3YFY7I+4VctzWXt6iR49sXTN9QjUnSVDyodEr9OmvrLdakUCDEcp1fmQ0/Lw3qW8hBfU4tLKY9ulGN33K/eaICq5F0mrOuPcBVZ/rB2jLvvUq5/5BWZStrjSfTNGt216jUGmgpZZiV2MAhCpZd6rn427kx7RqVAFJVHCcgjYt1hqqwl+11eP4S9ml/202O6ix1NPb6qR/u5zJcqJI1gbEjKI+CQU24bVm7ImlPbnqlclHbVCmMWxNty1Uh7P6tmR6CKDRxvUhRkl2fIaVgtt7FSUpKz6QU7zifG0/WGkvbP2Fdu9Td9Op0q2LgvSrRnWx82zU4VPoNPRJmSt5EtcudW581jaGTEBdaPrk+qJ2NYahVdQ6ppFo3GiNyGry1rp8+rREqIdcpNryf5V3XWpT+0o+SefMCluo9NBp1JqXye6dj1BzrfpDGoMa8e8K27DiPfM/4JtPIdBlguHDc2suN1R4bUpSlIZKW2ihDjhc9EOkILmxNGdv7JqR7bq9zlqySUowlpEc0z5EmbMuXGXHxbf5q5D2D8efEG21++dv2e1ORHbujO7OLF00EPUE/Bj0kQPzRrnQrC90h4laVcYGCMJASUpTnAyeAeRn6gPsSXus+pk/NugknkZ+xIGM48ZOP9nWB0zym6jyxkKq8ns5znznP1tz0m2w/KjJbZxjJaDKC4APN+x0Oh0Oh1r0f0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0OgASQB5JwP3nodby3KBUbmrVLoVIYXKqdXqESnU+K2Cpx+XLfbYabSkeSVOAnHhIUo8JwcKBb4/i+WvbPRmlpS1tSOnAtk+BDB5y48ePv11A/o2faMa5qtfveBeNDRLtnSKku0CyXZqUMh2+K1TpDT82E+tRcSaPDkx1B1Da47iZBS4CEOqZVL9Ib+IXBqK4XZNpvPS5HoMKj1TVKpUl/1m6lWX2xNp9rSJrYVHfi0Jp9TVSpxYU6qWtDq3YxfLTTwbi1xtr4Ovw1NP7Fp6mla631aDlTp0KKw0qQbuueFIjzqnWWkP7UM0xQS1EqBDYcKH0GMSpZTxIXzc9x35dNxXxddSerFx3LWJtZrtSe4XKn1B9Tjju0qUQCSGwCtaghKAScE9Nd/O1Y/Mwmaw8hbItXQjEvCFEW7Sz9z3GHZez6Pa+2R4/tsZ/P169RLTjFxCrZFryUI8URJPRKIKykZIG0KUAfO7wMjyODn2PGPuOoG2Lva+GJ8NylUejFETu070KW9X3RAbLtzWHalwqfg06OGGnhKeVMo0luNIjGA2ttyMQ67ISGGkxD/D60csG8tT3dY9fnWKf2/wCg8FN/345MaC41wLj/ADZtq0QsPtufN3NX4MSkMIYBlrRIelRW33YZjv8ASr8Nvs11N7+dbp3xI+6qKiFplT6rGpHbrpDW4jBgvUSGy+mivQ6LIbVHhUSnNMxBTG4EUolmRLV6hbbjBW265SjGIVIfZGrUWMqygecUofmDpm+D+w7ruW7hHb6TP889XVI4lByzkMhjG/SRfKLgJMXT/BM+HQrtmsCX3U61x4VY101dpqF0NuRGS7ULGtmSwZBTGfcWtLVyVaXKdlVCVHS38kGWYSg6ELcS8L4i/fXY3YnoJXr6qc2FK1NuGLOo2lFkSZHoVWpXA5HW0qtVCKlmQ6xSLbW6zU5GWiiolkwUvxQXJTbn+7juj0d7RNHLk1n1huZFGp9Dp8lVr0RtlMmqXfc6mkqplv01oyGltqkL2iRLCJSYzexXoKKhn5wXfB3k6o97WtdZ1X1Hqkx1kIVS7St9b7ioFt22w84KdT47QKmvmi2pInS0th6U4gF4KLW1bHHSlrTSfpIvFLFGy/FWXyD90bszm5O+d77V8LdhdnDSIbvj+eLc58oVJlhTkWAg4ERGmu6o6hXRqtft0ah3lU11W6LwrM+tVqa6sftZcx4PK2laipLaEhDbQUtSihtOVKWVKU73sH7C9Ve/bVuNp1Y8J2m0CntJqV635JYC7dtGlMqdckPzX1vM+q+tlpYZYbcSVFp8FWCjrddgXw59Ze/nVKm2nZ7DFt2HDdZmXvqXU2lvUC36QXHEKebQypEqqzVJYlNRoMYNqfeZWgutDaT9BrtV7P8ARvsr0dtzRzRyiMRIkOOio3LcctCBdV71l1ttC7luAgAttyCmSmlQSp75BkTAiQ4l9xLTtrMtHShpwhIlAkRALGJhGy8hktWq5Sx1W/wh8I6/xX3bR7nu9H5elKl0pS+ZhmVJkkTMVjbhMHGPq6zO2Dtn0m7QdJ7f0X0hpsZuhUaOy/Mrwj+jPuyc80d9cqagpxS35LiXnEJU+6lCFKS2vBJ6xu8Hu1sbs40IvXXW+5sdbNApUuNbNruBb067bynMLYtqlRG0uIU5ETUzGNXUnlinqceQlCm1IcWTUG9rT0wsi6dQr3rcG37UsyjTKzWqxUXm48ZuJFSVpjtqWolcuSpSkw2EJdW6SteUBIHXKVa9C1r+Pn3qxZaIdy272W6MVF9VPjt/MxmJlKKlNPzWXFmMip3xX1MxIEh5ve9TlzIzjfzBWuIuPauma0nlcWNicrrisQzgoGsUepwLfQ3de7bTsey/4D2NIrGMdfWjFiyY8GyJkjp3n1PJkRiDI5Zvwm+zS+u/7uQuv4h3d9TDWdM4dyzanadBrjD7kO6rkfnyJ9CkQ4cjDiLJsx2O2qJClKWKo4AGn0JUpw9FndJ3HVK1rgovbT2v2XK1K7rNUkCPYltUiPiDptbsdAbmagXvJQo061IFDpjzkuGxMWsSQw6lt9v01uJs3Feldos6k9kPw6rAt+o3pZVBhWBLvmJOaGkvbbQQ09Gl3BdMynwZ9NvTUaImIs0+3WY8tVUn+hDXCQ44XGX8aI9unb78NvRa9dWdRLoNWvWvRZF59xHcZqBGRGuy+pL7Di6jU2X3J7U2g0ym71x6HZ9KnfOt/Ny3maWl5wqUnITjqEYAekX0lRKPRBMK/VYW1eZAVzq93l20JC6mqkyWpJ4spNvJC6I5o9RXiUQUQ3RHQjtj+Dp2tav9ymtup6K9qZdlHXWda9dKwy2bq1FuaQxJkw7JtNMiWZVMspUpUpmlxmX5bDjTTjziUojpD3zjfiE/EI1K7+e6C6Nf9QpUhu3Y65UHSizAVMs2pbDD5XSUtRyVtiQttDP6wfHpKlrbZ3IBbCupQvit/EO7mfjH66OaVduNDuOb2xWCiQ5a9vxVOU6i1GjxHvRXqbqDV31t0Wj055La3GY9xTYUqM02+TG2qHTCuyv4W2qHe7r5B0G0akCt/wAmK5DTrbrBRXEnSjTylj5lcyFBmLfjpqtwkR5Sae2y9ADi4MpTCXYr8WU897PRiQJMcsarDhctyksZSQKbwVVtlLd97lu91v8AW1pT+bp6z6GyHGqsWsxR9zCkvNHWi+Gj8OjuD+KL3KUKybUiVRizo9xU+r6xajS4Lsil2xb0Z8uTIsV4uR25NyvxBKh0ahpcjNqmrjMqkIRuT12qp7eNLe4/VzTD4RfbRb8+kdkfZvUrc1U70tSI8ECl3/qhRZ6LktvSabVESdly1uq1RhtNzbqjNblrdnREtqCWZQVa+aDY/wANHSnSD4WvwxaDSqv3c64WkmDc10zaQ9V5Fq2zITCjXRrprC7TY8gUhMAzi/QKJV5AlIlPqfkQ21x4/UxfYp2g232NaCW9o7S5TV3XbJ23FqfqzJYCK/qnqHVFvybguivPuF2bIW5LlPiEZs6fIaZcdSuQpZWVn7jc6elQR5AC2UFtkTyuJU5UEwYRN2zaS1NWJL08qWTmI+GOHJRnAP3G147UGn0+DTKXTYcen0mjU2LSKTT4iENQ4NKhNBmFCitNpQ23His7WWEtIbQlCUpQgbecNDW5IVuxnPGM+CR9x9usxSiokn3JOB4GTnj/AJz1T0x7jdy1UrHHwtW3lOIcQvwBgPo0T7baUdvp8IALTJPdBtbtVW3P6dUMqLp2kAHIAx75zgcn7j7+/SPas6n1G0lQrSsO34l76o1tD8mg2vOqEmk0WGzD9H5ms3LXoqHf1NTo3zEZhtxWHZEybCYbTscccbWTJHKcBQ5ST4yORn8s9Iddle097drN1T111SrTcW27cpVbvu9rsrD6kN0236LH+aRSGV4UhttAS23DjIbAdLC3FHfncNCUFQgRlKRSNsYgYPevzLRlobKrXcsiLIBgGYtvlrzZ5vGSnNgNtz1Z1D7f+yvS2td0HeFqC2usQaYJH8t7tdS1OlVpKPWatPSyy0qfREiKW4EMwKY1LdjL+ULynlvtJRw+/Eb/AEo3um17m12ye0Iyu3LS2YyIse8mmosrUu46SremTLalVCLIdtqHV2yEyYsd19biE7Hn3iy0tpmnfJ3a94Px0u8g25pZSazVbPj3HKpOkOnUByQxbVl2eh8NR73uUNF1tqqzWUtP1CprbJjmMoftVLSESaS/hedjPwoO2yT3J97j8DX/AFnkSJitPNOJr7ot65b5iw3pDdAboDzdRizGkVBj5OTJWXfSREiyPRBf9FDpt9qz4y48ixLULDLPAepWJFi5jKLB5emPbneTgS43CCXKbLikWUH0qq0HqsGkkcaSXLFfWrHcDrfUZ18asXzqZqU/OfC5Vw3bUqzVmHVBO5oIcqAZaeU0oA5bSUg7j6ZPKkTfdVGdUUPuBPqLB2ura9QHOT5ASRgeE4BxjgDpw/dh3pagd0l3z6pLhUjTyxokzfZmmNjQYtEtO16e1hDERmFBjx0PubENqLqiEIWClKFhRWWfrqT685SjkYJ+sHnOdpCwU+eMHI9j0sh22XLmRjAkEZaZGJVEc2US98gePA9R7V7r65RokRV5EmpMsUIIxotJS5DjDfS1Wxft32rMEq3LkrFKUn6o3yc14BslKtxXtyZAOQU49PbyVFYPE23YR8czuk7O3GLVqt7z7z0qlRl0ufp/dSGrotyXS5pU3U24kessT10qVKb9QvL2zaepS21CnRUxVNyYQtM9ZRZD7cG4LUoN62nIUhE+gViOUqMTLgkJptRZAmUmY6VZRNirWUFCfVjvANBl7NR7QndVNF6x3Ldrc+bqBp7b1QYi6laTvEStVdGFvqfSZs2i08yn7qs1paXi5eEBtTyYkZyZVm04jpUVPbbjSn4jEIkYr+XzFvlEsUWLfJX8xkkrO3dy05apYAcn1CSv3MPEiNoF1KlcFTmdznYtZ/dRa0H4jvwnKpRravF3dc+qugFAKEVGBcUlKXZJttpp0qdivr+eU9Qf1e4h1ClrbfDaClXLxr1ImVDUW6KnW7Lnae3RJrk9V42rNjKgM0+5wtP6zch011pK4Lb7jaXHEes42pz6mkMgFJfr8NvvyvrsV7gbVupl6oVPSqfU/TvC31rcVBMJl1CH6r8i4fSWqAhwkxSELfDrgS8ypnYvsf7t/hp9nfxMNKrb1Uk0eDZuo94221WbW1ksZpiNImRJ0eI6lVaiIbLVxNfNJTFE2rqmzSzGecbIMpxpJnKOnK5LFasKDOPSi4uPpEKoFjVEu0vh3cfEejqOwSMtvGMtSLkWTceJ5JLyJSFWs8sV811w5WrjHOP6hgH+Pn+PVHUtfxCPhD9yfYahd33JTEXno/MqCoNJ1IoTTvyrboALbdagqQH6UmUfU+VclIZS/wCktTYQElColOnjR1YasCUHxhGxEPcaT6ZPI19eq37l2zddp3U9putKelOGIkyliY8+9YF/ycA6HQ6HRvTf0PPjruG+Cd3WdjelfY7SbFqutdladXzTa7VavqlAvl52g1qTXHm40iKxRWShEa54T7bS0xXYMxl1sMpS6rc42pHEFDhyahJahxGlPSX1bGmk43LVgqwM4HgHyR10U9kvaroRrx2Ut3NcFBl1HWJGoUzSmzrbodR/U6Loux/00U0Vz048596DFC1yKtMZhLbYiZlPuN4aC374cv8A4pokQVJFIox4t3Xt4P41XuRX4vnCPadT5hemSPm+a4XGyilX2CUWrp6ud7fevL7wdbNY7X0GgSbqr+r1wUjR/TpVOhPPLo2llqZVFMCsfMMzqY9eVckLqNYdbSUSWaDFUpamlRVR5b+zT4KdP0zsG0UdxN4xKsmQ5Euys6bWq6puFU6sC8IlKvurB5yp1Onw2lhmRQETIxQ2r1FVNXrFpp/3Y98N3QHs9s2iSKXZ1IufWBTfz9a1YqzceoXA9OlI/wAYjwHnmFGAy24CTKZX8+pSguHKiJS4p6QZ+NwlKvrXhW0ZIwtQT7jdkqOMkpPjO0+Orq2Xwy6up+0dyhc9TjwSLKNKyInJpZYVvwVErBzR8U/iBuNuPZ/h/V/Z9DSjUpSplKVCjwEhxB4xzVvJzxjCV3Q9ndldslbpfcvoJbdsUm06lf8Ap/bOu2jEygUyvWfdtnXJUadaTc+37frECRFp0ykb2G1qRMbSpuWgqecIStmVK2O1PtotpTdYovb9pTAmrS28hYtOEstJWn1Mj6knhSzx9PupQwThDO8+HNvu39Iu3OjsOzLo1l1jsz14jZWtVPtSwarEue6ak+2lktrhRIHpes85LiJYccZb3lTmxMjL8Ntj00JwUBOAE8AHCSR9JI+nhIwcYB44GJXse3R7fCZBJ6Q3wfJmI1d1fpaPpyuxGuN537dd5jGO9nPUdMCEkHhOUBkA+5wOQ4oorFlmnpYissQYsWJChx2vSiw4EVqHDjNpKlhtiO0AhpvlR2jcckc+etsj3/h/z/Z1Utrakq3ZxjjGPJA+5+/WRGTt385zt/8AF097SUtTcfOiLGONR5f4oyI3dLaGAaS2uoju4GiygRoAIZ/NAlxJVnjYXTm/OeghDyFBSRhQzg5SfIIPBJHgn263JAJBI5Gcflng9YHWVGTu384xt/8AF0v1YS1U4hzBAKGQ+RkpgLx909+itrrpPgmJ+4pxqMlxm+WB8eM31Qme2E8pUcDkpA4yTgbSrkj3+rH2PVxuY2tYGFp9TOFKSnH0g5yErJHjHg5P2HWmSrbnjOeriVelnjdu/hjH9f3PS90x09OcBTR/7yJKUeNsoQqS55QaKJcab84zLcamUI2+1Neb936+c+MY89GFLgUlQSrgkbh4zjOM5wccn8ifzHHgdkN+HXkBXuHFpCsfmCAcZ/PGetWpO3HOc9bgOpUN/rHCuM4KQcZGMcfn7fc9JN3Gc5RiaZCcH97V079RFosjyUBOLiqRsQv/AIj8siy02a4GNgVbiyTG1wW36mys3UyZR5+aOPGC4hJ/tUD/ABxjq+zIlDIDyl8Yz8x+Ek+SUrJI+48nHBGOdQVHjbKfH3ypav6sFOP7esX13/8A653/AO6L/wB/WpGUCnbQgLf97DVtSjDMtrOBos8cmzIdxlZKHOLD8t4I35ooLS8n2+mTR689IOXFLOcAB5YGPOSF5HB985/LGT1u4lfkwmwHH3BtUTgq5dIzjBSFnGNo+rZyeeVE9EFpSl7tylcYxglPnPnbjPj3zj28nq96/wDmf63/AA9FHbdrviUJ6Kunx5eofzcmISnmgPaJVHlyuEO8brRjCbuWMJsuA6byePplZBQy4bWvCeBUUXcpDYebmLC/dClq3JyMeFOknhRB2pIHueDtPtEvIIbbU/JG1QxvBUpYV9QKfpIWo7iCdhX9KkgngFbd3FKQhRSpSTgDKVFJwVD3BB6yKXPlKkNMlZ2OFP4zuIG7z5xhQJJSNuCeCMZLdu+wbbR289XbxpEFlXp40vgt5C4MXhoQ6fe1d/3+nviDqMo8BS0PXKvBVNQp8rEr69PbodxMzFISHUqKkjYsbThSgcJWASBuTykhIAGMhJC9qhtSvUO1JSs/YnYo8E8BWM4AydqTgDnGc9N6slIwyMY3LKiQPqJG1AUD4ykrKt2CQUj7dLgw2lZJUfpTgEHjcVZAGQRjnGPueOq73mnBlyALsoPDEheD6rdCAqddE9g7i6mwGQT48VJDZzGiHFAXw/pG6rG/SpKs7TnHnz+f9fj26syHUuqGFIKkbkqCSCUnPhQySDnI5x4P2PVKWSpIUTtz4HByMA54ORnPuOvU0xAKitKnCTnleNuc+NqgTk55UTnH3zlt/u4S5SlkGvHvQ5UPp/vy7ydXX0+OpCOnyLNRkVXKL+ReRYA3d+cDXWFvePhj/wDKJ/3dZ3oYIySQc5IwMf1k5z4wB+eRjnZM0x7nbgZOPr3AkgZOAEZ4B5/fx79bVNMRj8Kufc7Tz4ztVzj327h+/nPROpvNKNcUfPj+Hm3FX7Xeet9HZenlqacVchylEKU/en6rw+KPD9XRllagQU5B/wA4fv8AY9UfK/8AV/63/F0aEwGgkfTt8/TlRxkn3C8fn+Xjr1MYt52Ixnz9Q5xnHlRx5PjpJ+2uar+p/wD7f5X0rNpPVmDHQm5MactSdFuBCz3alRa/rDarwf3H+7rUPJXkEpI3FR9j7g+37+tsUk8FX9g6s9dQdwi6sSEoyhGUatYMnjOMmiMpB+7l+uDGfP3RlwbKc/cwn6f6PVlKFHO4bftyDn+o8Y6xX/5n+l/4etmUYGc/2dWh+JX+j/d00bnt8dPU0Ykfks2QlupYwnIczap00qx9VvgE2Grll5r28fb6L731qevCAfPt+/8A2Y/58EdXgjAIz5x7fb+PXuxPo7sfV98n+ljxnHj8ukG428tKMI60bNURi8WkklWSbo4y5FUyozF6VxnSMVEkUn18j/PpvGu+h1E1QiQrmhVh6wtS7Hbm12ydS6W3mfR5dOhPTxQqiwhbBqNnVf0hGmUV59KWmz6in3SVAMp7RZ1UoXY7K1VkEi5NRtYLjlqlMEsQ6vbdkFik0uswY6Q+mBDrVTqUdbTRVJWtxQQh0/KEynj9390fyO7YdcK6h8x5cewKzGpSsHmr1QRaVBVuwQCyJz0lIKT6hZDQKC56raFXdChaGdvXbbZjMxmNZWjmkc/WG+IrEP5VFXateju3Qw+6EypAhF24ZdOS682H0JkBcpLCgoxVUb+IW6TWj26EFNT5lplisokW/wDmFLlIzEsyS67a/s+bN1YS7tq0GjtTWlccLGNEVZDZyWx8RRGWUodu1AS/3F37ddUQ9Kp/blYsCwROedS5s1Dr1Pd1C11rBcAWXpERMun0GShp6RFUKaiNHmNKgrac5K/iZNKvC4qf3PFxchXcFqDqrW6W8lQ+SeoVvXE1RYLkVknc01ISwXEoJ3NJKGS656Rdd6ZdQdSqp25/CxvjUyrJfpmsXcDR5V0tKlvJNV/wgdwtSWXI9U9NlAXJcpy323H/AJOJ6rjTzICfSdUIUvi+6FK0V7Xvh9289FMJUPSmpmTFUkpxV58OFdFdO8OKwW5dSbH4frLucp2uILbuO2mx+FYhepLUj641EIc0pziSF4sx7o30q1e97jufxjPcash056n91CLXFhhPzHFkMSPi78ma5raicy3CffB/r56wesqcd0t84A+scDxwkDj8uPHt1i9VODEBKTCfRMVjHV06JWlpn0hH/I/y6HQ6HQ6HRnQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6lZ+FpaGn1rao1jun1vdgRNH+32izLnkpqJTuuO9UqCrXt+ix0pXKnzXnYklTgiN745cYKlJ9QJXFMAScAEn7Dk9P47ZtBNa+7uo23o9pzHagWXQ2VXFc1QefXFoNE+RUUVW6anhBLkyMlxpuIgFLr63cIWoB1aSNefGJ6eRJpLqyvHku2ir8X7Cjh23T1ZbrTnpxZGnIWvuhd/by//TpXNYdT9evic9ylyamVt1ql2rAelSEyZYMe3NObKbcWKfHdQl0NOupZbdRCiMFkyHW3m0KQhDjoaJrrV7bq94x7NsqnswrRtdbFo0Sp/Lpbn1hph4JfuCc2HFGR88fScZcU8lTiEKKlJIKUSOd4Gq+mPb9p4z2jdvw22/GDzOqFytbEVK9au2hhuUqbPSFrloecU96TQShqC3hAS4HFqQ7b4RnwdHu6WU1rn3BUWotaM22/LnChSYr9MRWKLAQVyrir1QdUIsG3WFuRm1Q5TaTPDiixMbDbmUEJRZkhjYxMkj1Ct2YsrNmeQBfia6uxNxokTV5TTnL3I/MicolxuMKi+JWyFOMfHnw9Oza+e4R+ytJrG0uuvUvt60trNOvXVWdT6jBtS0dWNUUxmZseJXKzJFSamW7b7JepZoseNMV6gkSZNRbXLYhxejrvS7qrz7HO352Td10dtegMalU8U/TPTSlU24NQtQqszGZjsx4MSJDZgOUZLalxhOqvy0qGn5pl2a60lDLa2od43x2e2XsDoD3bn2V21RL/ALztqi1C14Ue22INJ0lsV5XybSX6jGpKIy67XtzapDbrslK6cGlrDSTJWDxW9y3cdrJ3WakVTVXWu9Kndt11Z+S667LfcXBp4lOBa4NFiKcUKfS0htpLMNLj+z0ytT7il8bUQak0z5XNHN8VwKrJy3QuTz049r+I9b4Z2mrt9pwnNT5ki8Asc0WVZgwRW6cjx9du6LUjvUuuLqh3ca1ThaNCjyhbVtUhhmDcc6mywlMSl2vQqO5Mtunz6h6Y/WNRrDKQfl2lRWFpbkhpDNCbP7W52oz9f13vC4Ld0pptcEf+R9uwKfUrlqVPjuOqYhruCW4mBAbYCktyC4wyagX8NhDbOxLU7Ose8L3qzFCsm1biu+svJcS3TLao0yrzVlxKlJUpmIhwoSQ2oBSyNwSojhCilRbg0KvyyFSE3zHp1nzISnUy6XW6lEZqsVTZU24iTBaddcYcQsFKkOFKgUqHJHSZ04QojJba8NyB8Z5cb9pPjH0TqH7nu247jv8AW3O9kT02VxJeohyI+r1ETjYR4FpE51yoezftm7jvgmxLfpVrWNYErT5UaDAhm5aTcNepVyTHGkyUCYJlOnwo63i2Qh4/KtqSj09wKSomTqh3RoVFoFZrejff3R6HFolPVPND7iLhpt4WYy2n9olhE9+K3crUp4JeQJMFFQLawwuRDfWGG+vmfOsRIqgWqxDV5z8s8tWRgnGCkZJO3Gfp48hQ6PNKrN51iDNjLqd0TqI4mP8ArR+rqqs2hNHL4iKkmN84ACn5j00uOMFxKXAErAKUn6i/L9UI1xobBchhi5Ul5yLiX/LMvh/4t0O2Q19HR11+aQKhKJE44ie/EebiIxb5Up11bamaodynxvNXqfoTpQzF0u7RtLJMCFrfqPArElNq3VVStaKw43U/lITi6BLVTlCh0xaXFxkiW4qS4ZBQOmrSHsug2joJZnbjoJGXojojQafFpGouolvQ00jVXVWjln03otGqDj8H9Sx6h6cv5ms1FXzi0yGk0mQwUzXTA58DH4xGgjdBs3sm1xszTvSOsRaKLe0uv614cajWfqHOdKWnYl7xVN+q7cylIjqh1GTU0NSPmJLTUZjapSuxxybdNahyolpUyBOrSAh4JqbAlwWISSUypL0Lc38yWVKZKGvXaC9y960pT9TZq7aWoBBuAWcpByxb6V5eaUOK28Sren2PfYbn5uuvOc+FqFxMJDlxIxxQNyiytc+W2z767XPh56PMR6fazNrU9n1olmWrZrKqxqhqbcBbY+bp8GI6h2s3ncciTJS/NqkJD8RtM+K0y6+MuGDLvT7fe5T4hrLeuvxJNVVfDy+HtZCavU7V0FnPsRNWb1itwXJS5l1fLPu/IPVL9XwWoFDlxIzrSXXlyN4QMvk7wfiLdm3w3blbi1AVTvA77rqM9NC0/s2G3eF3Uqu1JuKuBS1xKKioM2NQo7oCTQmHY6paUuOidIcp6A0yLT/4ZPe18Y3Ua3u5j4sVzVTQ7RlFaarenHZVbVSqNLR/J0IfeSa9BcCn2n5pFKTLqUtclE0slLbDKGpKFlaW34JNkJRmo5aKsfTYJfAAUv3l1GO8dzlqppxgyl9CUkiZzL1KQBUjJtbqLFJEVGhOluovxX7trXaP8NzS6t9n3w4bEqxc1J1vmQKiq4NVqVTHflqrN1YvNdQhVOpVapJaaet2wIc6PTIEgPSJXzi0ttsdKl01LQT4Quj2mvYp2MaZNap93+s7Xp2NYyY6KjdFwVtLTX611z1qnKTtpds0ZySKs9TpcmFGfjfMQKI7ElVFAeUfUzuXjae0KH8Pn4SmmNpXFqnTHJNHrlz27SW5Pbb22tRltNVG7NRbngks3Be8FtLb7cNioNxpT8NpCJjq28ocz2M/D0067R03LqHcdxzNd+5/UdKDqt3I3h6c24bjfRKam/yftmO+1IkWnY9HG+nUagQqm8tMH5USZzyoqFLO3G4jt4kYg15PaNMMRrI3HOEvkEY56ZNLZ6m71LQlqJfL8tUJ9RpGUWI8uBUmT+bE7APh8Q+1ONdOsWs93TNb+8rXswbo141wrLeyqoqbvzKndP7PguPSGLbsKktOxIESiQS026iCl55Tq1o9KR1xS3Xd61naCr02wTtQkk4AyT7Hk+ST5PWcEkfUQAVYHBUQAkYSkb1KVhI+lOT+EAe3WItwr/IAnH+zPJGQP7z0zau6nrengwKOVo8hBi1xEvzd5Ef1e+39vjt58/RKhxHkEVkMfUtyri2cQZKt+W31SpW3HGc9VdAubtvGM598+P4D7dZ0IReWpOPzI6fnS5MOdw1JvrG48I6cp+Hlx4+UF7LsxZm81WF/0f5dVjaEbN3sRnB98+38fv1yz/pS+vV9WZ2naR9sthS5sS5u7HVAWpUWac2t+RNtahBt2ZBKELDao85c9lclC0KUA1ubW0AsnqV65pfiUaSTNfPjFdndLqsUP2523aET9X6i3JClUhq7a1d1cotIbnn1Uek23GhGoxnQHgpSXW0tnIWhw2m51NacmZEzE9J55zGViTt9BVcay3XTfvpEdPi5+Yr5pHAyKYtVJtuiw96Sd8KD4c+mXYholR2mYsOq62agQLYqeodyOtokT4k64oD8uh2pHnbUKMOmMiXBXJYaipkmOt9LEf19ieRf9IS7wqj3Fd6la0vhy3Dp927Jl2DbtGjO7KRHrrUh1dwzorIDoQ6/Kc3OFuU4yQtCEISUuOPfQmmW7dQta+bht9n51Fu2Xc9x1C4YkcMwPm6VbdZlioxI4d/ahwtPJVHK0Fn1ELS857/I11svCs39q1qPeFwyXplcuC9rqqlVlyF+o9JnTa9UJL7ziglA3KU7g/SPw9SfSgcY5lktfGYkcCA36i0aYoVn0wbuusQjHSjGP0ChxFUUqnLcbPfNl2l37v8An+7odDodKeo/0OnfdkPdhd/Z7r3auqNAmPOW6qS1RtRLXcK3aVedjT3AxcFvVaGEuNyWJlOdlMtqWy6qMt5TrSFKJQtoPQ61lEmMXxj+CNifcet9PUlpTjOLmKPvTTdNJZ9vD79dUnxbPhwWFTNLrM+JD2cUpbnbvrVHg1y5rLpSA7FsV6uOyEwJcNiMt1yJHqM5pxp+nPxGXQ2tp8EmMpt9/H6O73kya1Zdf7T9QJXy0OkPSrz0sqFRl/4tSKa66sVizn3HUJaYYp+6D+qm2whx5K3EtMuAOiO6z9Gsr1P73fhXa1doN/CDWv8ABXW6vbEOPKIQ+xZl7sSahSWcuLaZJiVhptuBhKy2oOOver6iUtx3fD67Sb17XPiX6m6K1VqS9Ataa/WrYnuRVRkyIkKoTmIzqU7321LFNqEiI6tEpQbU8HVOnAQ6ydzh8nT+dEOUUHP7xKLgb9nw1bm6R6uz8Jt87nv+hpS5EdRiN/lbXnay44bIl/Q9nqWn467TNV+GV3AuQl+tHhG0HVLKEoKgzcsMqOClH0JwBjA3DG0KyCr5sKuFKx/SP956+lB8blSoXwzO5ALSE+vTrba9MpOQp25acC4UjACs4AVyfq3HIB6+a8r8RyMcnjOcc+M+/wC/3637Nqy1tLUlIp9OPFma9/oCNeEH2sv8cdM0viiMYwInyn8saLCF+APCYuz+h50Oh0P3/wDP93T11SnTte2zt9rWsdj9yF+0V5cV/t602pWqBfSwXg8UXPCpa6arEuMFmow35qExlIcD5a3bm/RKXpi/0da7obnea5b10TZDlGqFkah3ZZFHXsTFbveDQDDn1BsDc6mWmkrddDiF4SY+xaV7/VbxPhN6H6zXZ2n93UfSSiQKarVO2nrXvnV25qIiqWvbFg2vTJtzyrTt1r9Z016saiXrLjtwaEmPIiGiRdtRUmpKnogs4fZ9bsDRfR/sh7vrbgS6VWrB7rbi0Z1bkx5K3GqlS7kjRnmBLWywH2GVsmpxXo6G1gx/mVqmN709TH4W7Vujue13OrpMdPGppOacgvL61KwqsXaidV/8W912m87L3PZ6GpGWqEtOfFthOCtHpsksCOJRlaRsZKdzalENrQtAQ41tJ+oKJUopC1HHBJwMnKuT5z1rKpVadQqa/V6zJVDp0Yj15ZQl3yM+jHitqMqTJI+pLbTZTtwVrbG5Q3cpj1D8yOS/HhPRUpOEuRZMWPLbeJJI3kPLTjdjHISM4FlNOhSgh6UwHHmMOwXdyliPJQs7XlR3SuI4UclPqMOEKCFJKVJBHROxm8J8tSTw+XRzkxjyi2EbTisbDjjNBnriHuNx15MjgMuJILtJStcHJCjy3EjaDhAdNbBnXRqJM16v6I81djtHYs/TugzXVqFi6fx33jVZKMIQpy4L2nFVd+ZLoeptPkRYUlc14evHdcl5D2VIBCQeMjnGSBk8ZPHP0pAJOM+esRSytDYUAVIQEqWABvIABO0ABIJBISMgZIHXra9ufqKc48EjOM/b9/R9mqugakYacwHUkAXH124hTKRXtl9xDpFudU20YM4ylLVZ4v8AKRNM8234KKtJLyiR4yt9DodZHWdttv2jn6+HDj+7yvly/wCaNVx+93007jcT3MycyIxjxCNhVreVznLjAY6HVYRkA58/l/69YwdylStuNuOM5zkkD2GP7es7qVbXQjqSm6hZECrTMs3cU8B497+3Saaxr2tfo+K/6nVAGwE+fH5f7/v1Xnz+XnodWASPB6VampHaunEH5ciXpMseKqitvJnHy1Ei1d40Dlb7/wCf/wBKf59X+h0Oh0q606HVja8tSihrcASM70J8EjwcH2P9XXjJdccbUv6Wlb+U4JISDwQCSSCAB9PnkAjrapw6EEnaCTk/iwM4zjgngE/2dINfVhraSwhKbCZ6OZFJLWa5FVzz7MXJ7uGhtJPr1bjCimm2yTjI+xkJDkM56tLKUtq+rOdvsf6Q6xd6fv8A2H/d1uEQXFgEKBJGcIBX9JA5zkDycHGR4wTnioUbIJ2v4H3U2DxzwCgE/wAAc+Bz0g0d5q7ePyvkkQbKhqSPV5L5vvny+axgTdzo/PnGems/TxaPHFW7qm7fHivOetdHUCVAH+j7H/O6N9rUlqXOLi0pXkDak7sgqUpBUlQOQckkgccA4J46Ky23GXNi0lKgRwQeQfcZHII9/wC4jo8Ww+3Fkt+oClKw0M+4WlQcUMHnJ5445wACeOid5rz3Gz3EmPGZgI3VBG/La1bXjx79PvZNsR3OjAlyjC5L4yzZCmQDJl8/R8OatSkpYYadKBhKfxfThasJ+op85Vk+wAIKuSrKlMp0VTjiXVZCAFbTgEKyFIORnIAyRyME+/sU/tmrxZcdtpCwhxK9wBUMlSkYwMYxg/hJIKz+FJBCulgpkdKVNBKCCASEnG4ENEkqCTtKz5OPKhuTncCah7lqy0iQhFYtBSCgy96zZnwFFXXXSvwxoxhsIF5lMpw5lHThFS8kXk5cp7mOs1mMlYClBJQSTsx5PKcnGMEEDGM5HBx1t2o7aCohoIzt/nqXkjPnKiMDPjH3zn2ymI4U2hZICjkjjJwSRzyB49vb95PWzS0ljO9nO/x+0I/D58E/0h5x1EdfdFoLJtKFMiXm6ce9Pj2x1ONHZIQQBqzUUdSaxpYHLBQWMo1Fxbd4SWBgFXBwRgAcc/fkYwBwB9vt1eShKQQBnPnPOfPn29/t+/q6tO07SCkgDcCQrkjORgAAEEcc4+56p6ROpKXmWHNHj7f7/j56c9PQ0oUxiXX5n1LZlvxk81RlDDXVv0m/6P8Aar/f1UoqGNqd3nP1AY/r856q6w/Vc/pf2J/3dbQjLUfJLj7TZVm/pn2+p7dazno7XifLrnf5Azxr8yyitcsZayYOoW+qCjJJz5/L/wBeggk5z7dV9dm1p7nTisVgqgrFEuOeL+vunXmxmK5z/t9+qV/hP8P7x1jFGTnOP4dZfVlSduOc56Q9x20dYjOcecIhyLY8UUi2SFvmlBirfODNOVWGF/3/AKdaYHAI++P7OgDg5/Ij+sEf7esiSCFgkcHOPzwEg9Y3UZ14unP5bLmacQi0GJf3iUL4lOXlX9CgctO9TjxLlNAiZWS8QPvdH69MK+IXVpUvSzTvTCnrAmau67aWWg+2AFKfowrKJdUZSg4KvU9OKlWFowMr+oJUgoP39MG6tXKPoHQHDKl3wxpNotWomBtgW5U7jpdaviVIQdqnoSKPbqI76i7HDKJLLxcUEhpxxHcux+tu67sgtV9SmYUK49SNRZDifrCkWjRKM40Cg7QC0XXAh31HEn5jeGyttKVoFpXGrGuPxINUtR3VCdbvbzZT85dHX6cpL+ol/PlukZaWqOH8WrEdStW0pYbjOyFANvEs0H8T3v8A4l0duRJPOISs4WcJSJeCLgUxdo0GO4/wx0/+D/hl3HuDPlq7nRNmQjZ8v52nPlIkKTG8RqPh8czinfxHosbVHXDsX7OaQlyHEubV6PqTddGbUl8CyrFfiml0sKDTK0U2LDYdhsBp5h5hxxx1CljLZbV+koUf9b6F6EXKmKQaTq5dVuiVvUf1fRp1roKIwTtBdEn5DePrSpJYwlKg5lDztPXV6z/Fr1nv6YlqZbvaRpHStPaZL9baty8b4WpqoFllQbU1hl2preQhcopKkjeN+Alnx77ZFx9gVw1dDG6XamodmVaO6Cr6fnHJdNkNDG3aXvVbe3qWcCMpvafVU63KO6bTT/4Du4rGcYHCgzcQiD5tWCqjj1Cr6687R3t/7X7LYseUp6iuoyjUGLpXNYObihIZRzHilRuPA3UMfNO4IODgkY5KeM8Z8gAj8sdYfV+UCJDoOc7ucnJzgZyR5OfJ9zz1Y652TisT91Tzfhrz7/r11bpFaWmeahH/ACP9nQ6HQ6HWOjOh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh1uaLAZmzGEyTmOF7pCAopX8ukK9VxKtycFoDdjOPGcjI6xKREt8f7/2rg8qHQMoe8mj9fP+Q/6dPR7HOxzUbvM1CcoNvTKVa1jUFlqqX3f9wP8Ay9GoVCSp75iO2klv5yqTAypEWK3JYUpTTqEveoFIEsvdN3TaJ9mOky+zrtLagqp70Z5u/tTqfGQ1X70rSm47VQelyErccajNqA+Uj+s4GEOOK3OqcPTHK/3uP2jonSdBe2+lq00s+RS2VXZcUF0N166ao42pqQqpKZixVvqjOodW1IU8trEpTbLCA2XVNiiaIVy5LgsWk3VITAufUKosyhEqW79YUC2JiVyFXVX4q1JRCp7MViS+YyH3JT6o5Zih9ZWW2jd64JGVpNRYxyIIVdC8Vu/D9THUx7ZtZaMDhpRnKQSZyZgDxoxBkRcpS+7bXJfH8MLsia7ytU67qnrjclPtTt20rqMS4tUr/uSYqLTZPy4kzE2/RJT24VmsT0BanIG+MVH0FF1xTraQ834kvxiatqRacHtP7KG5mkPafaCf1VGkswo9C1A1GYp4SzGqNwOMJU/TLeqtOfDjFIafeU+zOfS9KWpr1HGG9zfdGzaGkVn9reicRq0tMLZaemO0yGkrkX1VnExjC1Qu14lLNWqdwRyajQ4c+FINHoioTTUqUZDyum/9lnZprt38awtaa6XNSJUloxZV4XpVQv8Ak3ZNFl/NbapXJQkMpYQ4YD/ycVJaEssSsPMlj9qngsSdeZNItLERPPEBA5L+aUWr8rrraupDS0oxi3ql1QMkrkXyQI5ovEULv8qC6W6D6t623hT7E0rseuXvcNWcDEWJQ4plBorUpIkVBeQiDAQlLi5Exze2wlBBS4tQR11r9g36NvaNqMUbUXvTuhFxXDDbblK0gtec6xTaPPUJCmv5Q3A056vy76kpQqHGjR1Ppjuul9RSENzw9ifw8dB+wfTClWrpjQ4VQvSbR4iLz1MlIbcrdz1lDW5b8Z8JTPptLZW9KaVT4U5qHKDjaw1H9JPrNm+Nb3qvdmnZFeT1qyGWdTdY1q07sxTyFPCPTpTZFz1FpTTjcuK9CYfpwalxXo60JdfYD7Sn0qB21n8yTCMWF8ZLacopUcN5WZ5oAbHD017vSjDTjqSMEZy42IMSPKm/PGNii5a6gn+J38UfSvt0g3V2kfDztPTfTkwTUbS1J1TtehUqNW3VpcZbqlKteuJjO1BCyGlNKrcebucS6ELYSqOwpfJ/XK9WbgqMypVurVCrzpjynpcyoTXZr0l44Sp1brmN5UEJ2naPpSkDgDGDPny6nMkz58h2VLlurfkSH3FuuuuuKK1rccWVKWtalFSlKJKlEqPJPWH05aWhHTeaDJKznjkaivgsPAWl9RTW1nVk+0TAC1X6P8f4UVjodSR/DDVq1fnc7YOhGnl8WDasPVWpM0OuR9V4ceo6fVGFGbmvo/XcaUttBeiokS2qc4l5r5dU150BZSG1RxJDIzuVu+30qGP6vOesmmVSoUadGqdKlvwKhDdS9FlxnFNPsPIIUh1pxBCkOIUApC0kKSoBQIIB6NlEmMUf1SvPmlH2x46J09SpkiMvQiWMbTJThKQtw/fN9dTHxHvha6LaA3Gi9OyzUaiayX9YjdErWuPbLYS5VRrllvS1vonXJZctt0VFyBBebfWr9VsuriJUyiQ46ltlRkF+Fxrv8Rrvm0+0o7Rrj7oZvapoRcdGuS37G1XhwWL1111BpdppkN3DorKvtUht21qpR7Uo6lmHXga8WECIymN6zsgcgXa13Vai9t/cZYXcDb1xVMXRb1wsSa1KelyH/wBfUKZKT+uqRWi644up0yZHSymRTZYkQJDEZpp+O6lpsJ+jf21aUaban3Zp33K9uEqrW12+9+1Ep+pMUWWGlU3QnvM0/bkM0y7A/CniRS4Vw0NqXQLxo9LeWZ0F6IiSxJWmEEN+tpMbeA5v88oWFHkf3QPU3HMSyXp6ftl3CWtq/L9cQ9TH29vEgFGmwY0JjiS6fZ2w/D07A/hwUur3xaNtVC5dVLgk/NztVb3i1DUXWO7K5tcQ4INTkIkPpCkPNJUhTiUxymOpJfWoqbU7VLT7ua7x2mrY1DvV/tg7dq3BUxUbJsSUsa5asNSEJTHYq13yG3VaW0VxLclqoogmTOeTOZLUxZihRfxFYrTblOn1KLGkV6NEDNUq0dsIXUJa22kPuNOPn148YrQ6pthQLjaX/RU64GUuLzm23CT6zBbyc8qGB5/DtVkjx5AxnjPTLq70iMCMSo36ZRi3gjUOUn05sJZxf7oSjS2s9VhPHqapjJjGksfS3GUoiyR82vHMUq0Y0M0y0AsSm6b6T2jRrMtSlKUWoFJhsNvS5SkJRKqVXqCCuTWKtNeQqRMqEp5ZefdddbCfVUFKtGiloJSCCQVkgJCQoqzlWc+SMZJ5OAD1k+PHQ6aZ605slo5AUFhUeOLtLMoIW+kiUDxp7XT0yNDcabtBlFGKxEHi+D3H1W0l8vZBG3yCM5++ccY9v38/l1Y6HVr1kcjPjxnwf3EZ4/PH8D0VGC4iL74z9ulEYEb4n3fL/nfXu9W4JKMbs4O4HwM+Bn+/+vrD6uLc34+kDHjkkj7/AGHOB5B6t9LNOHEtKULDORc3b5Ev7mOj4le1X7fzz5fr/TrYfxx+Y8j8+eP6+kJrfbVQ751ii6oTXmCuVbcK2rjckFSp9RgUqVPl02MqT9biY7LlQk7mkBsOeoCtbhSgNLaH1Z5CSPyyD/Xk/wB3W7pkj0JACyC05hJSrON45SR4SDgEqKs8AAecHfZro68ScRjK1pf3PU3XsBmzwoeUW3uGjKehJMSjfFoUJUICmcnufxOrl3ae0R/SW/7LolOi0+NXLBuy347UZLDCHXKjbtThtGQ4Ej3dwVKIJLm7OOvi+yu2aTXLm1AbqkV1mqUDUS9rYqKGgvBl0SvSojroCXCQlxScpO7HC0pIGR19timGPJYQ0rapK0KQ6hWCFbkFBSQSRyMJI4Oce5BPzVfiH9pT3a58U3ua0qqcaFRbG7gJsnXXRCQ46tMWUzX1JqN00tDjgDDUgVUvvIhtyEvM+qpC0p3NkyfV1Zyjpp/dkViSgN1wihUfKBV0L5tb41tuoupqyhPkyjKnkKUtWVaXQvnFBQ45Yr+7ebntRuVLjR3pLDKyUoS0vcUDPCeAScD7FWfPB3Fui0LbWptxKkOIUULQsFKkqScKSpJwQQQQQRkHrqykaCorsYwXocVbLiFIcUppW4Dbgq2kZCuMjclX1FPIByWhX98K+1LjkSahRLkqNvVGa6p9135T9YxgpTiivEIyoeCrnBDmBgAAApCT9HWOILKR9WLf7oZfbLbaYsfINsdKZ7iUY5W5wJm2KV7ALn3eoCkNrdWlttC3FrUEoQhJWtSlEJSlKUglSlEgAAEkkAcnpxFkaG1WtxYM+qRJkFqeFJYalxlNvLe+stp9Mn6G1oGStzaoYBKUnOJjdM/hxWvpq8Z7j1Tu2prbQlM2TToyogLZV+1REeEtphwKUoAIccIKApShlIDiv8ABcZTDZpTPqoylllyKlCnVpSdxOwAIUlO4FCPTSMJ2pB8b62pKIBCTdYMYWPnJXmr+l02daxtlG8ZwPlxFGkR96trB74ZUf0PGkP25rZ32WK+ktUo6b6N1ZA3JSlEoXDcFMe28nat9CGnQcgrSncNpSMdE2pXbHT4neBf+r0KitRqjMo6YMOcUbnEtvuodfDZLo5WoYUlIOAPwkjiLz9Fd0cVCi97vcTFYaFrXbftv6SW3NXEKWKk1p/Fdkz5cCZ/kZrDMqey085ECm0vocSX1kpCOmS+ICZdxyngdqnEN/XneSgIB8k527lHAHHAwABy0b3Vj8sNSQE5SZNXnPt6fHK1POQvPVm/h3v3tndtDeBKUdGLUTCpIaKoJIuGyIDJkFPIr+kk3I/p98POdQ1pWzM1F1Yty0YigsAvilol1GQ36YCvU9cBlH+UQGxhakuhCmx8+iwLBuLUm76JZ1tQlTqxXZ7USOwhQAQHFfXIeUAssxWQcvyNqwykg7FqUhtfXb+lT92tJ1F1R0h7OrCq7FcmadzJV2X1DpspqS/EvavtrjUykVCmtsIlU2rxYkmLJcjy1/MFUttlDGY4dcgxsZmj9vWkVURYkaPdHcLqFTqvbV5X4ual6kaGWU+78jU6axUglxMO7K6y24VzmUsuQUIcZbWTGcW+o7ew0tOXg53I4kfyxqIFVEWTQWixU+nTX+J3xHue9fEGpudQJAcAh6mLIFticcYOWMZuq6jXvqBRaRdFao9vS11KjUue9BhVN5j5eRP8Alglp95xv1HdqTJS6ltIddQG0pKHXAd6ixHbC1HPttwPuSc/cc4BH8c+3RwNlVmU/VHErbcptL+YLlZ3FUGQW1FQLLmcuLkKVuASCSo/zj5cr2Pdq9092ncRpzo1bdOnyv5R3LSlVyrQ2lKi2/a0aQH69V6k8AtMKLHp6XFomyEiMw8Epf+p1pKpD2zQd7vNHb6acmcfqkbfSW2NB9/DjHVbbveaGx2WpuNWZCMIElsLtALlUblYSrwrQ+Hu1+GxZVJ0f+F3phSFMqhy5emd6ah1NtRKRUpdyU+v1dMxW4uFgTIZiLQMOJaJ2pVlIHUHtj6RzdPOxHvy0krf7OtWRfXbh3MWrTlMLZNOi37NlLiS2frKfkEspjmK2yp5BdivpCkqeUG+p297VotP0tt7Sy04Mek0aoW3QNKbeUyjek0mkw5FvVV9uItadrZolPkPJiF8lv1/SVLcSyh4w3Xvp0b477+4bt9tePFEHUzS/s4o9ZZhyDPj0uwLBkSKpW/1i56LCY0ltmmxm1RnHGkRlVBvMt5xsB3o/t3bSW22mhKBGWiceVHOmJH80cvrzV8ZfqB1yo9z1JS7traKkd5rz1OIynGMp3Eu40cYqkiIp4q2UZ5rWmLmWvaK1JJWu0LdWcqAUFmlR1BCgpRUDt28EFSQQSFAlQM8ZklKEE4IBycZ5OVEecceM5/P8uq0RmWEhtllDLSERmI7aPpQ1GiQ48VptCQeEJ9I7fbjKcpOTmpbKXAUpwgeOc/zce5z56mez7caUb1SISOUoi3KUYsYmEIxjysBVbspoqTvUeW40owisDVqcS1B4ZcWemybyoUYvl62AOI6j9kOH+rcetdnJUMDhaufvknz+Yx5+2B7dZmTsB4+kKAGP6WQcnP58cf19axQwogexI/qPThqbWU9OenN4OsR1Iyol6eZIaJHkjVKJyyYyxb/SthO/PI/TInv9L68S5vcRxjG73z5T+4fbrOR+Efx/vPWsKMEDPnPt9v49b9lICd3ur+wAkY/j5P8AD7dIdvoz289TUmUxDSIWNylx1H1DKqjxfFPKrsTpKaJqzhGDxOKrS0D5yi3KVVePPjr1LBCSQrKuMpxj3+5P8fA6o62CCnYkbOQF5O4/UTnace237D8WOesN3/KK/h/3R1JtlKTpQi0+glYV+alxb55XdmboBImm80dPTiShHj62LarKxptkhXBQAXllsrq314Bgk/fH9nXvQ6VoKKZi2fZpjf8AKSZ+v1rpB/r0OvWiCpfP9HH7uc4/jjP8OrJVuGAPP559/wB3Ryti2Xawrls4UpSQsKUClPAUpQBACUkEpV/PUD5Qn6mjuG5hPT4Ql6MSlKpGR8NhUQyubsrJS5dt2utr7rTjpabOV1R4ORVr9bcfp1j0Kju1aSG0JygKAUpRIRyFDaSDkEkoOcgYynIJBCxUbTJbhQ6mHjwQrCiedylBRUoEnBIP0cpG0HKj0qNm6bhCUANIQlppDhVhGVuKBJcIGMEb87QpSUpSNo4JK7U231xm0tn08lKBhKRjIBKlKClDBySdoyASSBk9Vx3P4qdnqy0ttqQYwPJKISVivILZWeeTUaK8HV3fDP4f6/cdA19xoy9QjFMgZu7BpTw0UU2sluMfS9LiB6jBScEKDYyB9BKSpIUPxkEHGSPcEgA7AaZrSyFJhpIGQgZS35UU8t5KhjyRk4AJSoDnp0zdPbSgfQlChjaOCQdpT+JPGQCQDgk5IPB5trhrCVEnjxyEqGCccjeMjnkcZGcdRbV+Lt5ryi8yPGV0SAlYDGgSWApyxyGb6nGl+HW320E/ZjUlONWR5MZGCT6jP1Ekfwcs4qWnbgcITGDeQCVDJAOcYzlQzkK3A4OT4zhRINRtqoUx5KiyottuEgI3Ap3bt+QAArKNxJOScqSASTue3UIO4oUAlI+rOFLWdqcHBUtQVyCAracHaOBjlOarSGX3VFKEKLoG7eVYCAVAAef5yQoEpCs4Uc+elsPiTeTjw1JhCYsbfcKRCqAbrAYolTbRuPgP5MoamhpmgFZjgx5oweShu5eooopPNOYUqQ8lKm1px6CwVAH00hKT9QChjzt5J2hQIBG3p1kCMUtg7FJUQnPJH0jJTu5wBgjjIOQQrkEdEi06GzHLe1pKlLbbH04H0EE+QA4CpS0jG7GTgAAAhY4bKY7QBR9agncCc42lWACkjPBHJUcY6jXee4MmMcSQsLT8xHNLdcQsV8UeQ6n/AGHY6m10I6c4tRKaAQavivpF9QVfplL84N4XoONIG5JwOM5B5J98E4Gfv+Qznqnrcdapz/KOf9tX/ePUdjNkt+ct9TLRnZxoCIBV1RgM24+t9eJO05xn6VD/AOySU5/hnP59YDh3LUR98ffxxn+OM9ZZVhSU4/Fu5+2Bn+OetctwIxkE5P8AUBjP8eeB/aOlWhFVfdCvuK3/AFj0n311pxD8zKX/APJg/wDml/uuq+h0Oh0o6beoa1QVJTu9PIAySFA8ffhZJHvkeBz46xy2rjHOf3D+89HiXSZVPQoyUrSlIIytCk7VblAcFWByOR9yjelI3K6KEtsKUA1hvcV5STgKwTkJAKiNvhSMnAIyBjnp3Z910pT/APZp2TzOEpc9PjGglFf7wyzPJ6vzYinXBvdPhzf9t1OEmWpAwzkOXC1gMX+WzxlyHWF1ZX+I/wAP7h16oKQdpP5gjkEHwUn3B9iP7DnrLjIwkrOPq4HHIAJB5/M+w+wP7nTdbyOppR4xR5Em0q6ShBspW0PHjOGzQ28p6rBeNDyUzEPqKe9FX7/Q6wpDRaWxlQJVvzxwCAngHPOc4B49uPbqwhojKd2CtSUg4BxyRnGcHznGfA5xkgbh130tv07t2ffGMY/I/fq1Ic5QjAIcI2q4+kgp2rHB3YJz5AIGDwT0zbrcsdsxlFfmDASn1eqYpgCNZy3Xhuun3Z7U09zp6kS4uIwvOEJPJllpkcZUeryUdRe67VmTC7xriuIrLZ0m7NLnkUSXkK+Sm3HXJL6pSkbUAhtVMZbLe76y3uLgJAJf+FTFNT7etSe4mvOKjv6zay3vqUp5ba/nVWZajcij22tyOtLDgAbiSmQ84lhY3KeMZKEgLbJ8TC8xprcndtXJr6IVZuntY0vtKgsYBEk1q+Lgpk9guZOxbPzEZz8OXC0UBSCd/Sm9quu0TT/4I9taiR4UNyHYmiF/WzNelKQ4UVmXKXa8eKzlvCBJ/WbsxaghZR+r0xSCmSqRHoTSjHX+K9SU6jXPiXy8Xxzdokc2NtqNY697ZupaH4f7bT04jprq8wv80jSKoSS1g/eowiV0avhdRpd/U3up7hZ0z9YJ187jrvq9KqRZLPztsWstyi0fGHlhaYrin42AEp3REOJ278IPHxTrRg6g9qc/SxxQRP1D1CsyhUtv0/XU5OhGrVt5v0y61lSIdNkFSPVQpPI8nHSyfDzsFzS/sn7eLQl7EVNdiM3TWCypC2m6reNQm11+MFJK0LcgtTIzK3FBBcWVFcePgtlHu8SVUNRdYbF0hthxRl6WaWao9yN2NqQlxTM2FZNdolqodYLhTEkS3Zkh9wLlOrgiUlCmXQ4FrlHeNF0+zb3S/NzVbw8po+UzVrf0vIvVPdhnqavxtt9wNuikZRFeRN0w+h6aqIANUFZ6+cbcEUwa1VIRGPlJ82KBndxGlvsA5yc5DYPk+eST1p+t5cqXUV6rNvEqeaqExt1RIJU63JdQ6s4A+pbgUtWcnKic4I60fXN2tHjqzj9JN/r7/wBf0/Q67e27y0NGXjlpwlV3VxGr+109DodDodF9HdDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDpTtONPru1ArsS3LPosqu1yehQiU+F9S1N/Up1+QpJHy0VnCA/LdKY0cOIU86gqT0TrdapjlUY/XO/8AVw3B4t435KTt2AghSs+AQrkjKcch92mlc1T1CiQdE+3K2UUtVZCjccm30Gn3LVYbKlFb9xXVuS5RaShRDjkaNMhsFsOsshCC+HG/e6/ANIHNLLy15oyUvi365qxXbtXaNz3PX0zRgSjGVo3a4qsVLHK4mUz5KTE3bVmdtEmgw479P1c7lVNsRk21T0qrdnaXrkhLbaY8+IpyHXbigRXpTT0OM5GagOSGZkgpbwhUmsLtIY7ftE7m1z1wl1ZN61y2mr+1UhVWQWp9BtqfPbqVg6ZwyslukXXdioEORWEeg8+ijMutKpy2kJlqf78L74RkLR9uNrdrFb8O79Z4riU6eW3KAcotHq1Sda/U1bcD5eD9QjJ+aeelPtBj1kNyJICUtr6Kvx+6VM0to+nukgnKkxmW16nauVCQlL8u8b7mLMqj1KoVJt9aZQpTBNKhltJep8OMmMFpL6S0w625eUP32aRPzCZoKaCTWfzK2jL0hcen8MT7T2c7huePJDhAIjGRUaQC/Jah6SirL57NFu3/AFQ76+5Ci6XWFGdmXvqFcbkyXVX4y3qRbFDdWyl92W8HEqi0ygUpl52m08ubpfpux/mmCpT6fon9l3ZLpP2I6S0LR3TCLFXUYUViRft7KjtCr37cTjKfmps2WcvKYiPtyEMthxTXpv7EobS1l2JH9H+7OWdFu35fcZXKTTlXtr281VaDLkrTMrVu2NTmVx4MAynI0eSH6pKlyZjrxjRS6yiOyUutMpW51a6S6C1/UKmsVetwX6BTZaW3I70tshxbBUsukJDqVLUpBSWdjYSk4C1K3FQN0mepGLH8yeRCm41mkaJVmRViMbOUT7h3DQgR1OEYXkEY0emxQxjIV6lY0VhvykzKhLYp9PhyJ0l5J9NuI36pOFKUdyUBWACokDLZ+kAAgHdxG/pU2o1Xg6+aFdv76lxodoaam95sH1FcVK56vVo0crYUhK0H5GKh7KnV+p6yD6SPQQpz6btmaV2ZY8SNDo9HiKlMjCqrIQiRMe871F1YUUhShuCUkBJCRgEZ6+Z3+lT2e/Xfi81iLX6ePTrGhOnb9pqYQEiRTaR+uYcgEfh3/Oh1vjaSGScKJyHbQiRnKTXJlGUvNXU1FRwcWqL8B49UT7h3KO4jx09NFCN1Vj44luCVpfFV8FHXJD0OnWyNEYjShiGpJPJytawkEEBQAdQ35G0pIJyQr8+kevLT2ZboXJabWYqVEKCs5QPPJIGABjyeTu2lSUkhwhPnElxYjXlPL9xT3KptswZCNS1CMuKNYqRky0KeQ+rVHu9Jn0Ovdqv6Kvf2PscH+o8H7Hq61HfeWG2WXXXFEBKG21rUSSEgBKQScqIA48kD36363s+p/M6s9fSC/Q8tev8ACd2cazdv1fliozu37VWm3HaESen12qTRtQI1RnS3ICcJQEqqFPlFxCApQXsUp39okI4CrO0BqNbbjOVh92GqWgPNNRlNeohlSVKSp31UlKVFICyjyAcKKdyCez79EOtepWB3H96Fm0ouqpT2jOn9RfQ44ClyqN16oriyzhQUlwNSlsrJ4KUJ2gBByj3Uoy02ISZXYUjR+ZbLClMl2ex6hd26co7qEgwYlYX5ES/BZ5Sv5Y7t3nFrK1KWVEqJyCcfUrJ2g4IB9hgcYBHWtfV4Tj7Kz/WMY/8AXrOUpKkAp8Y5PPJ3HnB8cYGPyz79axa95BxjAx5z7k/YffqFbsvWL9tMatws5f8AT+merM2hyCQekBMmLiV4w/wx/Dqjq245sxxnOffGP7D55/q6t+v9k/2/+h6x+hDRVuZR7F+bv6NldOcYN5/l9f5PV515ToAIAA5wOcnnnP7j4/5Gq+aXuBwNoz9I8kHxlRB8ecgDP2+3sh0pcGMAtZO4kYIUlJOQRwAMg8/nx0R63ca4ycoAKSAPOAknJIJxkgp4IKRxgnIG7objWmTjGE/UCzusCDH8+Go5uwLC76d+39u1NzI09PSJ8wq2uNqffMikbHCGfJ8+bR9OUkEkjAIPsTxnGTxnGPGTnjHWSl0OISEkYGTj3BJP4hnyOcfxwSOem61nVOk0VgvTA+5jwmIkLOARuKsKOcpyUDySDgKJCS1nUz4k2kGgVct4auWtqTbWn1x1ZujMattW81VtPaRIfcZbCrinU+a7UaHHjmS25PmTaaiFCjB6Y/J2M7CVHdR9JKUZ0jfGQitN1YMBVjKMVPCt9Ou6+F+4aG3nuHb6hHTLXyU14vNHKrPFN356kx6yvmVH7Jx9hnPJ+4OOMcffPJ4ALVvXDR7po9MuC36jCrVDrcKPVKPWKVIbmUupUua2HYc2JNaWW5DT7ZCkqbyByDgpUBu+nHS1WHqiRRcko2NWUmHF2U5w5PMXnp01OIp9c+elQtWpApbbccAUkhHsFYACf5x28/SSePzH1EGKL4yXwwE/EF0XoVwaXVClWh3TaJVF269Gb8qjK1xZSG3mp1VsK43UPsLVRLjLRikhaRHbWpJUEryqR5mYtJJaW4weBltXlOfBxtUAMfzSDg/w6NkW6Z0Zr03XfUSMgKJCDjHjd5B2gJGMAEFXv9Lp84lCMsg2RQvEU9uPklaJdPk42MJ7r2PX1txPW28QJ08JSC288WJ+7ZVhlwiX1883TOtSqvclW0m1QtOu6Wa/2RJnUe9dJqwyYNVjv0+Y/B/X1DguJP6ztWeWFTI9ZZWE7Hmmi1zvDgzZFOYCNjzhUQQtStxyoDk8KGBzwU43Z5GB11Md+vZv2E90lFh3b3L29Nt28bbj/K0XWu0DNtrUK3MKBiYuu1mE1iZFjeoURItSaqMNHqq9Vp1KlBUAd+9kOm1nVxxjS341tmWxapCkwqDr7phR78u+nxG0oMeO5WlybXUtDSSpTjn6ujl7c0C0gsub9jdw02NziR9p0CWXxDlFqRZRJ90ocRuXau4RUlt5TMjcWPIsiF0hTTyiF22vjpu0Wy0vI2xkuOqShRP1AIBUpQBO5WRyRgFRUSFKHAwEEnWlfvchqvSO0PtJpjN768XTLp6buvKAz89bXbzZ9QkmnTbwu+tIfaFOqkQyg+zR2EfOPmA+3GW6EPqYeUO0vteqjqW9cvin6s6+W2+tSJ2nvaFpFXaBU7hcPCW5dVtdmoLFLjqSkGPEdmOSEqkqKUbMLl67R5Vn9t1nVmw+x3s7ToLp9LfRKq+rOsE6HF1HuhbrDi6ZWK1afqNXzVn56BFnrVW5EalGSiQamWEzo0hGu67z27SqHz4yk5YDyajxbWJXv5visrw0C7a/D3dN4xjHbT4xoj6ZVVHpKW8YcflLQJQSTXtc7ftMewXtS070Vo1TpdPtLTO2okWp1iQx+rV3TdclKnLnup6OlT3oOVuWhpaIu0raaZaKlOLe4hX7+/jU9v8AacK6tNtNb+uGpXHWqJVYrQ0OobmourM1tqKwypdmtMxF2racqN82pDtWueosSN77D1EQ8qn1NKJAqpJrV4Uep0fUu41agN1cNolxptPhx6P6AU8XYKKdHZUy9T5geHzMdRT6im2iFDCkqRyH2z9vNPs9dk27pNaFn0aVtcqRtOlx6FPqEv6t0l6a3EemObQVBhuc9OEf1HCyses4FxruPetOWrpujErBCT+8sY8iLdSHw1XChFV5XR2b8Lu7aHBlqR1I8eVRgxolUkE1FDLlOStYKY/OI7sIOtWrFfuLWOxtAK9pfZ9vvMP1i451Rrl5X+/Ursfi0xmv6l6gVdHys267iihDT9OpzrkWlpmPMxERoaocXrbWH2NdxtdiUp3VDSfX6PashqHMFpaa6ZVxyqXm9NQ8Yi6xXFTGaUlal+r6Djj0lLRXISlG1Sirt/8Ail9vVv1n4devGnum1q0ul/qS2DetMoNGpUNmlzF2bUZdeekVViKiI7OqS2Jq46ZS3VKc2qW1GbBdQrM7Kr3Rqb2q6B3sVh1VX0ps+G9h7eWptNivty4ylbPqS16oB3IQdyinCdm3orT7/wDLjnSiNiAVmSAznbLDSIHFVPPUo7Z+Dce6b2OlrwCWokpSmco4Swjy0ySjSEjl6eSsSXXFXr78PfuopOir+rV5aSU3QHRWy51FZplq1JiPFuofylq8Ols3NXqTBmSXpEmK2HJriXPSQ+EKQpxnJeR1yfDX+Htox2LaNwaxZc129tRNR6fRrgurUiTHEdciHNp4nQ7eojag+uDTIa5TqJaY81wzEiO64htaUhZq+JRbcS4OxruSpjNNS6TppWqiJHqqSqLKo6W5sNYb2OesFAPIP7RvZuCsOY2hQvh63u1ql2HdtF0OEOTn9P4lNqFQDxcMyRQkNUlxHpbAWi2qIHyS6rJmONAbo/qO3t+F20jvtybjVu5/LlEu0SUlPUVfHi8kpI55Y65I/tTfB0vgjSnstE4aG40I62haUSkw5wal6+IloXUlDEulp1Apt9T6i1PoV1QaHAlQJ8KsT0Rgq4ocOf8AKJSzajqZiTBShLBDKyl0RVHDaXwshLPe2DTmzqT3z95tzUCiNw6JaVo6OacSX33UyqjNuNdKuqu3FJkyg3G9aZO/WlOnSXRGCgJKEnPo73JAZj9JpdOqlbr6Ut0eiQJdRqcxRUfko0MNrcXsQP2hVu+kb04KPpCt+UIb2q2xVaPp1WrsuBpbFw6uX7dOqM5l1Cm3o9NuJ2K1b0NYWlLjqY1KgNBMlbcUvrUsGBG9Lc91JtdtpkoECuNvK/8ACRjnBbdNLK/Uvmzz22/dNcZQ06hdcxW3jKm7LlXsOBX90Dp0CglamyUnCkq98eCSAcf5uFcEcqxk7Tm91YLKlJQQCAEkc4yPrWoZ5GDggnrJX+I/w/uHTzqaMoacdRRi8CNI2SjKS4kpxojkz/CukWvqOrLmyGTdgUFYGhQUq68pfv1T1QUZOc/8/l9uq+qys7UpGRtJOc+STkH8iPbpHqacNUIzjyjyGrSqHOEX6V989ItfRjrw4Ss9RITzFLzXhsWObM3Vh1ri0vcnI5+rAyOeOec8Y63LRGxIyM88ZGfJPjz456soUnJygfhV4KhxtORyT5HH5eetS8TuIycBS8DJ456112PDUmxY8WM5VSyZcdKw5NVEjjF1976ST0jbShOKy5coVKsReMmmPuMZZSshWLTIkjCufb/f1S6Cvbs5xnPIGM4x5x9ui91dbcLbgcIKyCokE4JKgQSTg8858HPSzRZ7cOPGfGMikYsm5IXyozJFR8HWkd0ch4VnyysBAVCItGQK6MfWsdnbVqR6Wdi1Jzv87TjONnGceMn9/WwQSc5P2/29a91j0lqXu3estSsbcbec4zk5/F5wPHjnjaUo62jy4rCXkcOJgXS1kvD+vRvCbOMYy4ttyolRxUw1d+P431eQztUDuz7DjHJ455P36cBpxGSktqShPKgkkFKvpSrKcnJyfTyFZ+obdiuQEhBM7fqP83n+rnpcNNpYWUA8EErGcBIAWFKJ+o/zs8j+btyc9NG5WWx3UnMqjEa8W2BVeTl+vv1JvhbT09LuESMSMfNtuUrEm0V40+1X7UvjtmG0iC2Ak/tBvWfwnaCpKU5TtynAAAA8EZzgHozoa2qCt2cZ4xjyCPufv0UbYqLT0BhQBOxO0gFOcYVzt3cYKgnBOcck5OOjkhRUkKOMnPjxwSOqA7j86O51+agzlFuvNv8AL0h4rFHt11z2Co9t0eIChyqsiPFqhB9VfXL7nVXQ6HQ6benjon1FKlM/T9lDPHBOCOD54ST/AAx7jotNRHHCcjAH5pPPIH872I5+49x56OzzKeEq+pJ5HkcjI9jngH93P5dY7LIbK1DjcVYHP0pKyfOTndweeR4+/T2SixLFRs8AliksL7JWPPkTLRiQPJAjVAW+pSlsKZPK4uADLfWxosZEVCVbdxRgHOMqWE+5+rGzKcYAGUhQ5z0am3Q4VhPhO3Cuecg+xAIwRj8+tA24GkBCUcAk/iPkn8wf7+ti076W76d27HvjGM/kfv00brlOcpyHOI5PBR4Gj9Mea9il7tjT0wjE5UeHDKzk5f1pasyl+M9S9q0Ixnfu5z42jPjHOf3jHWqmP+olKdmPxc7s+6T/AER9us+QoIW0ojdjecHjnCcHOD4PI48jrUev/mf63/D0XowVJkeXHP5qzcq9/se3t1oQjOMYEuM9WMiDTK6ZfMxYfkxmvNxt6tLXvIOMYGPOfcn7D79Yy2tyirdjOOMZ8AD7j7dXuh04R9OI4or64/jfThPThqRIzjcRELTIIZEfC9DodDodDrfopX1olSZhkBqAhtKk/SralTS1ZGPpSncAncDyCUkgIycEsovnRuXSHHXI0XKVfhS2hSk7QSScK2nCtw2pVgBIwElOQZiVttuDa4hKwcZChkHByM/cA848Z589JlediQaxCdDLKQ4UkhKRgcABSgnBVnHJwc87hk8BN8PfHO52etpx3Upyqo/MJJeKbb5DIW5DeWk6hvxV+HOy1ttudfaaMZyS+CeqBgsr6UVQxEsiKXCbIpwYccZfbU262ohW47dpOQMHHCScKHBSrAScHbjVqaDOQBtQlSgPqyBgnOTk+OfJ9j9unnat6MzICV1FhnnJSvahW5RTnOQQM8AEAK5BSU4OctLmxXojqmnkLSpvgBSSlRGRjAUfwZJCVZI3fTuI2qN/9i7xo9x2mnqw13VU9ZKSt+3q90LLQSlffrlT4o+EtftG51tfS29FHMDJGzHgrjY4xIcBgCouMsY2HfnOfCceMeVc55/djrKKl4SfTwTkqwpJKMHg+2cjnjkfmeOspTayokDcCc54HJ8jBORg5GDzx1ZIBH2xyCPIP3H93uCCQQQSDIZ1qwlCVJKMov1OQn28e2Dx1EDV5Shzp4yF82F5EGOSsflbPbPXNx8fewq1TIekmp9OQFW3Oesy17xllKgw3U7fvBy7KGiU60XFNImxF1OHGIjrG9EhW5wtFhbOqZqPU7B7E9f+xaoPy2Ga5rxo3dNiOFSprNU001culqXWoTEzYy28uiykQWZLRUXkLCHH1tCYliP06923b3aHdJoVfWit3xWkouumuC3a+UKclW3dkQFygVGJ9K0IU3KWVLWtJCQynHgEcjerlKrd+V+l6f3FIqVk90/btDpFCRQpiQxNk1izpRas+dHjObo9TokuFTKZUWo0yH847C+XeDUQvZdpfuGye2/EH7XGDKLJJLIBABMWH5vJG0E8U9dP/BvcNp3z4W1O1aGqS3ejKMtOEgJT5xlzrkxY1KBVMaZBV2HZVAgUKz7KoVGYcNLp9nWlSI1QlLJMJiPSLfojcl96SFgNI9ZavTa2K3kqWFhDRUuMvtxmytSrX7nu6y7WKjTRq8u/qLpwxVI7zMr/AAQWBQajblvPI3H5d+LWAzKmNy2nHXFKdWy44603GdUyvWb4q9Qvbt+qeg990edpfq1qFOt+xKzf1OC6racmy9k5OqGolMMBhdWpj0RCn4kCmSYCZPoABx6MpBckLzqh3ldmFl9jGo1jaR9xWmVZq9j9vNzWbZVpsS2KXVqm8ujGjoaYp0qr/rKFKqMiUwqNDRAlOuvuOR2nFKKQhT3fv3btbZy0Y6tym8kumMl9kiysBtyXdpdDF2r4O7p27vU+5Sj84nPTflp+R01ivJk8rqziDgo8vXBdfKmHrorUqMCmPMqc+WylSQlSWpMt51sFI8EoUCQQME45IPWvtu2q5dtURRrepkyr1R2PLkMwYDRflOoiR3JDnpsghThCW8EIClHICUqUQkuA7kbWotAf0omUNbT8W5dIrYrsyXGbWmM9WH5FTjVBlpx0I9ZbHyrCnVpydz6QUgjl6nwebFSvu40f1KuSkwqpp3B1MtzTC52pzXrR216pxKjQoEqSHFsRRGjPnL3zElgqIQlskKUtFGb/AGzPdzdFJR1JYQQjYJjKgMTza+7566m2O5I7Daz1bhJ09OKSyjgqrLff2KzeOojSCP8Anzzjg+CMjyOOh09X4gXa9V+0Tuk1P0dmQnItBo9wz5FkyFJX6c60Jklx+jvtLILZ2tLU26hDz6m1j9o4SoAMq6a2LFYyKkNJ7nvn+CPThpakdXTjqRbJHtn7JizDhpS/d6HQ6HQ6x0Z0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oj/p5preOp1djW3ZFAq1y16YT8lSqNAk1CS5s3rdffEZDhixI7LUh5x9aVZLPpJQfU3pIAxkZGRnkeMj7Z66WvgO9s0nUTTvvB1tYv8Aua016Z6c1uE3TrTTEi1OY9Ms6s1OnyRVnyuW18sTMaKae3ElNesrZOIeCW0261nR0+UQZKAKFnvS4H6Lj9cC8dh7dHu3ddtsJ8iOvJFKx+vqGv8Af16b32GfCRrGtlNoGpWuFdnWtZ9ZqTv8ltLLLhRrj1fv5+lyZsICJRW1oRQaTJqDbkRiuz3VQllp5x700MoQevLtD+HXpBog02/b2mVF03LbMdEKyFPIuG7KuWUkt1K9ryitxW36owoNhTNGlIp6/wAYhRyUocOvwuNK7V037E+2yo2vQY9LuO6dMxUqhcjh+arsio1Gt1X9Yzo9RQ3GmxTOLUbIiSWllLW0uq+j0phrFs1akJq1UQW1/sjFZUnLmBuJcWsbAknKcJSjjKvCVYVE95udbUlC8Sw034JZA5YjVCtqVRdPXUHY/hfs/YtkQYGpOMdNdbgkpWRaC/KthdBG0rkda7TXTGn0xiNUqlTILMhpCEx4zEcN+ikAjClqCllSQSMrJXkknAUQqAT9IL7S6nqhB01v2jQGFwq3PoNh1Z9MVb6m5Uqreq0lz0UL2JlNuKAW4UBwt+mhWEnHTilPhCR4GAM+wH3J+w9z0i/cVpFA1s0tr1kTo4Lv+IVujSMIU5FrtClioU9bCl7m0P5ZWG3HEqT9WCkZJCOWpLkGG8pi8ICWjnNvvl+tofiCLr9u19OA8SNw07sKqsBlx/h9gTiV0o/ZF2k0XSjRzT6n1ml070KdaNFgUykIjfsIcVqnRlN5S6CrkubdgVhQRlWwgJ6khhNtxmGo7DKGY7CEtNNNgIbShIwEoQBhISABxx5Ax46TnSCoKrmmFhVJyO5CW7bNLQ9DeBD0d+MyIshlxJ2lCkuMKSQQFDH1JSRjpTvHjqQaEyOlpS02pUS5e4+afZPbj+XFVnrmzuG4nr62pCf5Yak4kPBHisRSi5oepSxx1cTtTnnzjPBHj/n+zrhH/SxO2Wt03ub7Ou7xiFmzq1blR7frxqqI6n26VKFZXWbelzlD1VmTNRW6i0056PrelTnS16+FBnu06Y18RjsstHv67T9TO3e60liTXKU5WbIrTThYmW1qHRW3H7SrsSShCn2FQ5i3EuKZUlXpukncUpwshq/MDR4EQ5MODKjEpS5XKTK374zhMdNr6bfN0N1dWZHAIe/+TSfM1/8Ah4ccQ2+ltSkuH1EFaAUbFHc2coUEuBadqslSwR7fUR1oZvahT62iVHq0Fh+PMSErSUrBGPKg4kbs/SMZ/nYJJIBD4LEpN8aWX/dnaL3KwZ1p9x+lEpUF5uq0yTTKNqBbLBXHotxWo/UGY6au07FivJclxGy1JCEOMOONpUG3JQbBYQlLji2UrKeQloZOScpUUhJTtOPwrUFEZOAMdKq88o1SFxAkSwFvFDiDQi2CLlCJHKpSabC/okSKNspCxGxQbqIYrnxrvwuJ9YmvyrUvpmhsOqU4INSpEycGklZ3JbdivoUpOMEZSlKThPGAVuH0b+HPbOnbaapXJ0u6bgAQpt2UkRqPHdaJy4zS1PPhZJCSl2StS0gFIb2EEzYU2yWVqw0thIa8lSFb/rDmMKIWOMEHI/DwPuDC1Y7ZA/aMlQ8lSNyec4yNoB44/Dwf6+tvVKKgsYuRkgYjUKKeWYytSJeD3kZo6DqMYxFW6VPVEkYPJgH6FEl4xKIwD2+ssel8oxT4okzIsNe2I2dxketsWrLrOUt7FcDJ+s+OuhX9F20TkU66e/TuMkR3WrarNzWVolZs+K0qJHrEayoL025ZMCU6Uuyopq7qWAFxY7kWU6+0oL9NLj0UdYpt2a66g0Tte7YaLJvrXW85kFpx+JBCrb0xoa3T+urxuysrK6dT3qPSfnXYTEl1CnH1qbDMlPqoT2+dk/aVY3Y/206cdutjSHam1aFNL903PJCfnbvvGpenJuO4pexKQhVSqipMpDKQUspdCSpa9yy37rcx08xo9PqJMuNAxVUclykqlAW0xCRdq2MZyH1cYcQpQPEpBSFOY4jVyjJEZHTnnhhpvyOCcKGFDJSSCPYjOMc48ZPWJ1kyVErAzwPA9vAOcffnGft1a9P8/wCz/wBeo7rw1NbVkQhfy4xH1RPz3M/Mn+JMX4v36nm3DT0dON4rHnx7H8OrfWCv8av+0r+89Z3WCv8AGr/tK/vPROh5l+n+vSuHl/T/AFOtHLCymQEZKyVgAeeVHOM++M49/tzjpC77cdYjPKR9CipbfuNoUrClA8kqUnJznaQRtAHPS+OtrC1EjhSlqTyOQnKifPGBzg8/x6T+5rdM6O8MAlYIztJII/nY8hQAB2jI8lIJST0TuoSk6kFD5gMJVFUIxE844sePs+Xqb/DO+0NpvdvPWr5fOF+/iQN4RPeqS7HqPS5XahLnutF8hDRH7MEtge6SeSFcZA9hjIABACb3RbcC4KBVrduJuBLt6s06dTLihz4bM6M/QpkKRFqrbsaU0/GdacgypCXWlI5SonBOC29ypaUPOyVL9BpwhKRkIIyQSeMDHBPuQrjnnpAtY9BNQ7psiu2dZcUwa1fSEWu1cYG9Fr0+pOoYrFVCUrBDyaY9KMTaQtb7TbCVNlxJDZHS1TUCrhYVGNqeM1jj6zFWiRyx6uDvnxH2V7TqGjrx1p6mlT6oxb4RLlaIysBj4pxXRd+Cb+v09g1mxqwusOUmk6l6w0Ow3K1IclPPaeUq+ai1a70Nx1AdFMLDkhmIlS3Rlh1SV5UoCWopwlKs/i3cfbBx/HPSf6OaYW7o3pXYGlFrxW2Lf0/timW3TlgFL0sw2QZ1QkAEJS9UaguVOW2j6W1SFIT9IHSndPEdVjCEU9USp+wtNhdvnPt4qgaObdXWdTUnOvzTk19rSJ7+1e7VVb56xFFaNgI2lIVg8HOTz9x44x59/cdVPk5CQeMZGRkZ5GT4J/dkdZBAJBI5Gcflng9auUClrA+orUlIAHOeVfnnO3GPz/h0dowda5kStIObj99lSW3ilxeV8eXXTOcgoG/pflu8/Sr/AIvRbqHpAtvOJQtbW9SVLCVFOQAT9QOMjcCf6O8cgqHSI3NQ7fqEv5qq23a9Y27i0ipWxb8nYFclILtNcKivKNxKhvI+vKUkqWWr/wCTJ5wGlDH33BYB/hj+38ukyqyA74OCCUjP3Ixng+PpI9+FZ8jHSPuHKpxNTznA4ViRE/K03lC6W7qpv2XYbTdEHcaUZlpkPTkff6tPv7e1nSYz2IdOSGqNSKNQ44Sra3R6dDp7KAAQvbHhoYjNcHJDbKCSok5O4qJcx0rSpZwrbgArG4kZ2g4PAUAR7Y4wQck9KFUI5UtK0jkhWfz4KgOVAfiz48b+eEjoqvxtu9CUkEle/B9+OfPPIPAJz+HxgdQvd67GURBGUWTR4CKC1dKOASyvJmzu09n7foEXRhDTUyyiSr1WgYAV/ri76J3robJSptLng/WhKwDjyASMZB549h9ur7c4EpSED+dlITsA8kYIWrz5P0jnj3z1lPQ071rW1vKsFKd6k85O/kKx77uf3YAxnDMFYAJa4OcfWOccH+f0OejqHqX28yK5MS6OXtVKB4ocYlGnKe3IxIS1IrkjFkJFkYkFRZ5SllEqw8Oi1Bt2NfVhXfZ01pDkC7barduTCrKXUsVenyKesIUhaNqVev8AXhaeAk7k4KhAh8H68qrS9JNUu2C5fVN4dteqt22m/Fl7kTRRp1aiuUhxxS0gPMpgy4/oraU42hRW0FbdqB0JOR9id2/ccgBO3BUScYH1HJ8nAB8dc8GttOX2WfFtoV6BPyOlPfPb1NpVXXFZbZjNak0JAaiIlFGIrM2Wl+M/KW420+4iMj15MklC0bwkTirKUyL+bIhZRJleAzyq1Azno3ab2e07joamrH5fKicediYPTUqiKFxVatHlVyBd3S6Qz2sdwkivpCqM3pLd6ZSSdu5xVOCm8Hao7ilK8EAklB4ITkIn8H6nzovw3O2FMlr0v1hZ1Qq8XJSfVi1KrynmF7CcIKgHGwSSQPrBAI6T74vOp8qwexrVa3KI8V3hqyzTNMrSgsu/45Mq13T2KMXI0NDb02eI0WdJDjEaMrJkNlbzG5ClyJ9u+lLegfb5odos0tDi9N9LLLoE11tKQ2/WHKQxUqq8j9o+Sgzp8gBSnl71IVnar6R1T+DkXVjoEW6NJvzEVoQBbot5UcVqlE8/P7dfxLte4ava4bQ+Y6ejtoajCQSjGaPkasNNVfNAGLce/qRVbknQbTkbmrPnJROuJbP0qntQpCVopMhRylbE1bIadSj6/l1OBKgVK6UiKiOy1FjQ2Uxo7TDUWEwAT6MSGgsx2QpRUoJaZSBtUonOfJ5O6eZDiE5CVZPO4AgYyRkHz9QBBwSk8jqLb4tfeRK7MO0K6Lptp6PF1Jv2oRbF09lP5cXSKlJZkyZtdaZDbhX+qI0dLqnAUBKlhJWkKKuul+8bnQ7TtHdarKBEGEYqY48oetZHuV+WV1m4315w9g7VuO+d10dltY89XcvFgFsVkXKs482hi7qjqRa4tUNJLNlimXhq5pjadVSVepS67eFIgym0pKQo7PmFpVyrwCMZQVYKwBtKBedp3VEROtO5rYuqIohLj1uXDR7hEYuEhoTBR50r5IvbHPQ+Y2Kf9J/0PUDDpR896zvho/EZ7x9Of/igcpUq8Bdn+O0ipXPdzbFy1WCveGKjEi1Epkv0+QpDgirMxxCVNOFKEBSkraZWG+8DsovByhXdH1P0ou2nyXWpLbsuuUCbIRGP0qpsyNPZZlfK+q4dgDiQHPoKSlSRSul+Lk9XUqYRheCK+yeZI3ZSVmnwr10ZL+zh3zbdqh3P5M9aUwWLozdMl6cDKU3PKIcoR8qoVJ+n4EpWjIG1QBJHOCMZIwSSCPHIGSCcAEYrab/CvP34x98gc5/j464TO2H9IE7ptMV0y39Q6vS9ZLeYDUZuDqaytu6GWikoCIN2B1111KFkqajzWVIBUlHrJaSd/Sd2nfGO7U+5aVFtWu1aVozqVN9BuHbV7PR025U5cvPyrUC+QIVCKpi8NtodQ2lEhaY6HJH1upsXsvxpse6bOE3VDUk1IZEmkClrC+S6apu76pf4g/Dr4h7bPVTYyIaf5wjwEq7Ba8OeN+FaUuWJxARjBHgZ55JJUc4ycADA+38c9YT/APM/0v8Aw9VKdQ4xClx5kSYzPjty2HYjgkR1sugbC1KbKo72TuB9FxeNpSdqhg+uJSsDKwnbnnjGD5zyPt5z1Ntpu9HXiakdSKDTbEfymQiuFaFpsRCuq93+w3OlpENbRlHUalAlZUhptaiPFkUv8DHWJ0OvNyfuP6+sxIZxkBJB9+VDj7Zz/Z0qnr6MKJaumLmmcTH1y/y+vUfIzk1CE5tXUIskMWoDjJ/M+vXvzrv9Fv8AqV/5+q0TVFX1pT9htCs8+3lR5IHgHP8Ab1ZLX2SD7fSrd48+FK+458cj79VJZIUnKSCrgAKAUc+yQTyfyxn24z02z3+yBI6U18F8Yi4/e5qf/wAq/wA+nHQ23cNU5w05yrxCYrL2pjEUf/Fxff3zs0r3ALSCryQkeVEHGBjPJIwMZ/d0qtkJebebLYWDubBISedy3CpH7wFjI5IHOBwRrbNseXVZDH07krIUlABUNp8KXkZIWMHGU8EpwQTh4VradwKfFZLqErLWTkJKQpRAOSobidhzz9STz+FJSCy9y77tdns9SGpKpapCUQY4kZbRceKfplDyWR8GfDfdN3qw3DoMISYk8eGPuW3WZUZzi3FmW0SpEZgZwHd+RxykJK0kH9+P3YIPPAUdh0JW6QNwVs98eAR7jop02EmK6hpKPT9FK1E5KgsuAYAJUQMBecgq8c8knoysfz/9H/xdVNvpm41J6kiP94EkitUyGNuG+JH+FXmw6T7RCWhpaGjqBGq5MvT6o6c4iK+JSk4bboK8dZhdWQQVcEYPA8H+HVvodVteuSCyhK21hKiv8QCQTlQAWklIBz+fsekDURoifqkB/j9azVL1IJyNMultAImbUL/Q93r0srIIKeCMHkeD/HrHbb2Z5znHtjxn8z9+tFe+oOnGmlJVXtTr+s3Tqhthwms3tcdLtumj0/T9X/GanKjBQQXWAstJc2F5oK2lxG6NHVb43nwotHnX4d396mlEqpRVLSqm2bLnXot7aQdyJlvRpkcpIUkgb9xSVFG7jCV3sIEiVqVcYhRZyG2T5x9EM0lPWIxjqTjJPVGyMsn5jIZqVnjCDZY9SqMpyrPGE+c/mDjH7iM9bFggOoyceRz9ykgD+J4H59c+8n9J0+DxT5fyZ7gLkmIQcevA0wvSVFO4nlLqYCVrwrkhKSfsCCMvI7U/jJ/Da7zqw5auh3c5aUy9ipTdPsm848yw7nrTuXA21RaZcaYj1QckFpaY6WwFOr2JCRvSekhvtHcOJEVAI2Sq7/w39LtDDH69Y1ITeXKMox4/mkEQHHlovJhfKAr1Ju4AUKzxxn+I5H9ZwOsEkgEgZP2zjP8AE9X/AFfUbUFIU2sBJKFYJTyng49+fbI+xPWC4pAQpAJJz754O7JyT5+3uf3+enLblxsyMhPcpDOM/ZPZsaR6at6PzoRTJCK/oyl5p8Hn+Pk6x+h1iqlAEhKdw9lbiM8fYpyMHjrK6XIlWeei5RlGuRV+PH+zz79eLnbFFJTkjGcDjkA+6x9/t1T+sR/RP/2I/wDP1ovX/wAz/W/4eh6/+Z/rf8PR/wCyv+D+p9vv9v6v16wS2dFzt+vGefH/AC/b/dvTuOvCAQQRkHyOveh1T/VnoIiWOEfCfR6JNz2zGrMN1h5ne3hRwcDaSEknjcMY8jbuJACeDgML1Z0YUlT0iK0lspytC0oH0qAICcpySAcpHkBOUn6hjqShQUcbVbfOfpBz/X4x0Xa/QYVVhrjOMNkqSoJJSBg4OAVYOAcnzkcHAGVHqV/D/wAT7ztEjR+ZKehNpjdcc/mpGN4Lo9X0KOoN8RfB3be4bbdapoxdXULYerDYY41i8kQfKry8wWVKmSqbMXFlgtrQogqOVJWkfSlaFKIyg44PlJJ3e4ToXEKwVg5OeQE55J8eSR5JHHODg8Hp+WrukwK5T0eNsLZUUOtpzsWSeUqA4TkbSMkLxySTwy+p0uTSZTsKY2ttxC/GFbVoCkhRQeMJKMnaMnPAGCCOhO2d8/bNnoz0dwylqF6hfqjiFRisWUTEpcoyOVtnpV41+LPhafZtfc6vyJRPzAC1TFsiYecaimKZcm5flI06W20UoISpYV+AlKvTKRwpQHIIKyUnAVgkpIxnqHDVjtJ0V7lO8XXyh6oMyaPV42nGjup9rXjbbnyN1UpIVdNDmSROKVKeh4EqPKjbWUulpBLzexRXMlLp5dlOyAdocKAhPBwdiUYyVAnhOORjknzjDDdX26dpp3pdvupLyAzQda7ArGgFxuur9OOKrQa6Kra0WStQKGxNTUamYylISF5d2qy2pRI7htIb+R82KsiU5Sby/lTJWVVBbH6TLbfhDu+77d3LT+S/LhqUeiYslGxCSrkMg3Z7N88iO0fuvujuP1ZqOkFr03uatXt7uSpaWQ65U6vFtmtvOSIsB6VU5cOKv5KZPlQ2pjEh2O0CwWWFqkq3tN9Wtbu1zuYmaKatCp9iF42HEg2HcE+Ves96mORKZFhQ3JUl6my2Im54j0GkSEOCOncprYtYC0maT4XtRTcdB74KqWT87J7y9Qpc1Zc3hZehUsIYJKEJHohpwJJJK/U9MtpUjBkevGkR7usS9rHmspWi9bLua34qQn8U+VSpQjgIC8q3K3AhTjZUoAjbk5jW9+DmelHX2cWRPmy90JGPOcXinLybTq09v+IHcNDusO3y0iTKMZGqzEnbH80GF8qcrK6qgovgF+Jlp+1bWifw2rlYgxIpvbtOjzX5UZLDYnS4N53Aw+6pLDrxTgKbcSlxRKPXKEkhJUqSL4YvbRVLl+FJ3QX3azCZF/ydVqReVgS0NpYqDNY0ajMV1LNMfL7qly5ZDclLCWg4XYjUZpt8uF1DNviSFqT2h/D+tx+OY1Z0ypesWlVbihwOpjzrZ1HrUhhtTgQ2ApcOpMSPTAIQmUpKXXQkOmRv4Cnch/8AD/qHfXZFrpPaoL9zimaiaWtTEoW1NrtQpcd+s02B6haaecr1uiDVKYsSFO1I06TGbjNfLOPqr2Wwht+4622mcuPAFwRUFfqXJ9skqtjnq/t13KW/+Ho6+lpz0ScG9PkykAESpcY+I8lKau/V56K3x7l6da+9m3ZL3n0yGlu+r0RLtKryIaUektTMJE2qQprqHnWlzINUbcjKjspR8mlls7QJW1PJf489dQPxp48TQbS6vdoL0eUu2Udws/uF0JfDpNMjWlf9LrTl+U2GgMlDQgVtyjOtstTX0OCc658rEyrfy/f8/f8Au6iPd9A2++1YBRUawmQpx/Jui7yFdSP4Z3Mt12zTnP8ANF4qtsqjEv8AQkSLrL48dDodDodNnUh6HQ6HQ6HQ6HQ6vMsl04GfIAAxyfJ/dge54Gc+AR1Ld2c/B57le7a3pd5w4UfT6yVQagqhV67IE9iVdNTihsxYtu0x/wCQM2FPC1lqqolFKFIbb+Rc9ZKkk6uvp6VEluSABb7W/QAbv7fXpz2HaN93KVbXSZnFkyfADWcfyPKZB6iL6HUsGtHw649jduVia02tUq1UalXbNuSsVijOstLDVw2Be/8AI7UGjR3EvLLwt5pbdcdkJZj7ooejIYWmP848iOoXadTldoulndXpnMnVOjOVG4bE1opsiQJ4tK+adNdlW47HeQG3m6XctsransMvQ0IhvRZMcTJik+qrEdxpyquRfm4tltFlPlxi8mcZ623fZt/skNfS4rHlhvFCq4ACQr9z3Q6Yb0Oh0Oj+mroddjX6Men+U+i/fjYLC0mdVLOp0xEZJyp6E5alw0h58ZAGY8t+C0pGcn5pYGMBXXHL10mfoxmsKLT75bj0lqFUfgU3WbSm5KDGabJLUisUwsT4bbiRyfXQlxnyAkq35HJCPfabPRwDxclo04wg+9X9rMijJvhDd6Gy77s9fcS4wJ8TBSyQBXwfp7/Xw9enwoDMuvs37aqTMAWbOtSoWxU28lXy8m2bprVPmQ1eos5UxLZkJO4FbgSnJcTwmaRoNpbQloBLaUhKEpBACU/SAAcHjGP7eobvhrxhpZqL3P8AbDPeS3VdLNZ7ouuh0ZbZYlp0+1LkO1ylSISFLcbksxK89NprrrTy0Kcebfcbier6QmRYX6oyo7RuI8E4AAI98q8jJwnn2wMmI60WOUQ/inp9OPLmroWr8XLPUOpuDdacNSPiJTS0tBdJcnFDRiL5s6yW3AgnIJBx48jGfb38/cdZra8pUhxsFCvKVYVjIUklPOM4OFAgbh9OcEnrDL31JVtwEg8Z+4wecf7OtaucABsUSU52pAKcZ8kqKf8Af7DGMnpt15xhxZRkTlWIXJxZd3GMQqNq5tq+MrTO3dwSiwuMipXaZ9sYPBn+NidLrYN6qt1TNLkHfSHCosDIzFUslawkA5Syp0rX9QKwpSgok7SXDRq9TJTSHmZCFpXnG0hXAPHuPORxjI9x4zHxIrqQQnkhP4T4wRuIKcHcML5BSracecq60E2/Lio5bNKnOBKSklBWQHOSlSVFW8DCQpI8qBKl4UT9ONv3j5PoR43GrMrdINsLDzTcgX2Ur7u/4Yam71JbnZ8tN1FlwCy0Ki5ft6q928AMnTbzTqQptxCgfGCM8+AQcEH8iAeshtScK+oYGM8jAznzzxnqKusaz6sPxlCgVOFSpvAS/LY+fhtEnAcciesx64RyotqfaDpAR6rQ+vpOperPec4Ufq7WTR6nspH1Kn6PzavNcABCAtxq/IaQAkAKASeQnBOAA9bb4g7fp6kZas5QSzigXZXlfYT2q/f6xfW/Cr4jyaUITi5GRKNFmVpvNmCrrpU/iJ/Cq7bfiHW+w5f1MkWPqvbiVPWPrZYUePT76t6YkJW2iovsgyrjpO7IXTFFlw5UWpbO0DrniuL4RnxdtBqxNpdnye27vNsOFVlw7buq6a9UNJ9SaXQlLcQkzkOQnYVSnxGwymoOKniHMlMFMcx/TWp+ZabK7xbwmE1zu5n2pT17vUY0w0xt22JWFpJBZqdanXFKaACQlAWuSlJUTtIV9GJL0GoV1Pqmataz67ayzFJbbES9NSatTqO2lAUHkfqywmLPSUv7WSotymw36KQ2nG5ShuPibtsJNEpTbzJ4+lkEb8+BW6vxnzywfhZ8RxYGppmnCh5BlkBgL9WfvKs+ir6garOiff7SIMiFcOinavZ9yZSr9X1juSnX3V4KxlKkxLf04hzrje3eokuvt0eRCZCEB6VCK2xKcDpr8K3ue7jRGqGs2v8AK0ksZ6OhFcp+itpItKoVGPMKg9Cp8yulVwSktCO2Uv1Kmx1xvXWEsKTIcUmc7TjT/T/TCA5TNMLMtqyYMhlkPqo9MYfmyXUCQHX5NYr362qsn1kPFCTImPOpTuQp91BaS0v9GqZbU4tWVPPFJcDi1SFZQXsEyXkrmukoVk/MSnACMNJQC4XEv/anZyOMDlOWL5MY44r6o4jdHKnByVApWaH4cbzajPca3IKuPysVzV9TIJcQ9xoC0b6Sbs+7He2Xsjtio27oFp9Bt965SmXd92VF12r3retTKVB6fcdfm75chMpsNIfgoSxCQlhv0GGyp71XivSC6MBISDyoAcZznCfOEj25z4/iSYVRK1N/jGAfwkhJOF5+kkEffnJyceACTGxKwhJSnKTnzwrgn7Egc5++RgcHnoftTvuLy+XGi48VoLHDK5BIqVEcqp46OOz6fbghpwtHyhG5CpYekQMGa8XjrL6uoAGcHPj2x9+sAukqSraBtzxnOc8Hnj28ccH7+OsrrSC7ecZygSUayjFpEEWORLuMvoU562nBoFq/0+v/ANPp568BJ8jH8c9e+fPQ6HRMkZKRIGKjFlRR7MpSlnzmTlxRQDrX9a+U2Arx9LiTu5PJJO73yOCPGBzx1sOh0slGMypxJH8kyOEyXVNZqzpXp6jpy5H8rq/8/Dnx1pkx0/QA0k7s7cpCs4JB5OTwc5yeBzwMdZTMdaFJBRtRzkJUB+Y/AoH8QB49+es/odaGhpkuQP2iyUHBZ7uCkko24qgOluZyEoLu1tc/RxSYzXkHrNbzsTnzj+z28flj/bz1X14BgAfYAf1DHXgVnbx5z/DHRBCepzlGNgq5CvTqanhR/Jpzcf4a8oLflt/37v8Ao9UqClY+nGPzHWG+n1ElGdvAGfPhW7xx+7z+f5dbDqladySnOM458+CD+X26UG7XThounCEITJQYM/T+flfOWoytnZkqkzZW8Z8UwFIn2zd5u+iPUmFlQBSAoJwMkeRlWOCRnlJ54/Pz0RKnCIQeCQDgqJxt4URkBQ3YwFeMK4+3SrTEBSkbhkFJGc8fzgRgYI4WcnODkYwRnrQTaeHUktjyMKGckAA8pCjg84I8qCsYyDgN+9ispFoJysFUZEzjxy8ZkvS4c2jhlfa+4fJ+WyxHFp4EQ8/Ty+9P18dIhPhbVEFPACvcDGCcKwFe+Pw+23Hv0WX4WCT+HKid3kKyeTt3ZHJHuPJ4Pssc2jlYJQnCVH8JXyFEK5yVfnxkkD3ScZJbk0HA2ncjcVecKBwR45QMAkfhJzxyB5j+40HUfmXTWZwzEfGVwxZN8ZI2tVyVsPt/edIjElqDfk80e9AtJ9ARr656SKTBAIGOThRTkAfVk8YUANpyjHggA49ziGEACSj7YOScZOPAUc5zjpSZtE2hJWUgZABJKeTu4GSFc4JPOOB5I4wjQhtCgMpV4UCrH9ZUAffwT4PSU2beNLnd+oUjKwGvXwJU+yo5GzEm0u96LGJ84fFj59vc8X7We1U+OiIYIOcIxnGDuzj7/wA/nP8AZ1Dv8bXt9uPUrs3nawWLHC9Q+2C6qPq9b62UD5gwKY6F19pLrOZa1mnxPTbEbLpU4pAJwkom9RSBuG5Ix5OFKPgZHBKgecZBBGOi3f8AptE1FsS9tPak07IpWoFo3HaE2M24plUn+UFOkU9ADxUlKVN+stYyMKyoFJCSCp2O3/aNaGiacYx1JnL8ufUNcozaPU0XgONEbpv7v3b5ei6+nLlqQhIXKcAZFiriWbjSXbeK5WNPb8qXxRe4ztDgIgidol232vRNe9Y3GmWBBq2rddpC4lAshqc2HUT6giTFqbkuDFfbfdEVhxTTaXAOuiF91ch151RSSSkq28gAFSEtjOSAhIQkZJVhOCSckwC/AVn0eyrG7rO3SbTqVFvjRPXq5qTOqLEL0bgqlvqq0mHFTWJO7LgpPy7/AMjkKKFTZYDhUSFT7LAGMAZOSSPt4AP7sH+BHXb/AOFnw/s9jtNrr7aTbpwnPz5hdXbd2cXxasqbt8ff7QPxTuu5fEmttN1E1ebrMZ/M/wC74OnE9NNmBiWAeKWR164S2AM+ADkceDxj8+B/zz1x9fpB9xVLVvvc7Ue0mm1p9+jpiWfU6nT2VlAeq+olbg056S42AlIWaS6HWkKORucSUII+jsGXh3aTwBn6R7nI8nz7Hxjz+XPEb3u3Ii7f0hGwKfV2TIi2/rHpJbLDe8jdEpjtMVECUqxsBLxQltOEkhIAKgD05fiz3Xcvw7uNPTkQnHnpskqmDVDEaiZByoravTJ/Z/7c7n477bqz0yYIBZdOoRXMUFTGbTBhvrrutu0KJp1aVn6d2xDYhUiybZpFtwm2EhLeIUZtMgtArWn03Zy5L6Uhxzb6qkeooJ9QJFr3pjYGrdmybc1DtGgXXSJLTkaRHq1PjuyHIjqSFxYtQwmfBAc9J9JjS0IDzaFqZcUAUuNm5dfzypz1VuK5GVb0AEkqUPGVKJJJIGBk9E66KS9LhmSoHawlxr0QCQ4XQhQUV7gjc2UEhJSoK3DH1DB4M1e977R15R+d6hsDwxWPlYt0I1L6Sp9Kn0Gdo+E+z7j4b0dqbcXWAi/LJEZcAVoI2yoFRqypXjkE71vgtpiQ6ld3a66l2LiVKkab1l4iWktbVMxqHLDEhVQlLaDwYYDbDrjrafrQVbk8+sOtXrpdWqnblWhPNuU+SYNYt+tMvB5tDK1JlQmlrcQ7BLxABcbGxSvTcIUE7OvoyXTDDZi4+n1S8pSULAA9NTSSVYJBUVLPKsjyOFAlMSvfD8ODTzu1p9XuymOMWvq9QKbLnm4m4qJCLngQkpcj06oxEORfXmOhxRRKLyCFglTe5aiZf8M/EvcdD5um6spmqwjKen5jfLxFxKUq/KpE9QKU9cyfil+AWpuNtvd9sdCOr+zEZS03TAlCSyOLyWsSTD58HgiX7Afi9aydtFQptGpWoMisWa/PgR63opqrKfuG1ai4tclDsuzbukKi1K1K4pkvsMMTqkq25iZ77cxDOWdnY520d+fbf3T245UrOviDat10invS7p0+1Cfg2/cVFMUFT6oDrUidTrhgJRhLdRgyGS66lTKorakt+p8zrVjTC9dDtR7j01v+jvUS7LWqT9MqdPlIUlxtxlakJcAO0FpxJJSRhQUFpVgowbNL1b1CtuMzFoN2V+kKZWVMSqfVZUSazHX9L0NuVHW2+iO+W21vJQ4nettBPAUFXl2b427hstp8nk6hGMZQnykKYij+YEaEw+L8Wee3xP8Ahf2Xunc63W34y27KPy5DFipAkBFhKNA+bv6Jjr6ZOqHfd2+6YwJUqp3bT3moZU3Ikv1GJTKcFJSDkS5QCvRO5AK0MuKAVgtlR29Rz6jfH47YLKiuppF5WxVJLM5uMaBb8OfclUIWcKdQ67SoMFWzeVKS5IaQ4vZsWdqccFlyX3eF3PF+5blrtdeUTl2sVeo1NwjIIG6bJfA2kDaUJSRgckgHoplSlfiUVfvJP9/Src/Hnc9UCFxRvkyXzlAxX2fai4p4TbD8K/hna51NoSUpiJhxSNOT7cfA+TrtXuH9JR0hhrkKp1p6iVYoKflvStGg0Zt5YOFje7UXC2Ekqwcug7BgJJwE5P6TZRI5DtL0/umPJbWpTLlRo1q1QIVkkfTIkYBOcE7gEq+rBwOuO3odNOp8V911GS6rcqv1IfcoopzyuyV2l56kO3+CPhvbcfldu0xj7/Vvzg80pm/b2w9u1jfpXUulSkIqlm0aK2gNtJkSrVckSncDAVKNHDkDaCQoCK2hSfqSVqKQVSF6U/pZvbLPmQoGpenTNOivbG5dxWvXhT0B8BW59dv1uK5IycJ3sJkNFXhLpJHXzfuqkK2qCsZxnjx5BH5/fpu1u99z1klLcy5EeJhf81+ntX3cHTrpdj7dto1tdvp6IKkYRiZp9I1iLbfnytivX2KO174ynw6e6x+NTrA16tii3ZK3ITb96H+TbgW2Mln5uYssrkFHplDTSHS4VJ2KycmUOFIh1OIxNpkyHU4MlovRapS5LNQpc5rcU7oU1lwNPpyMBYKQcEkAHj4XlDuys0F1DtMqc2EULS4ER5LzJSts7kqbcbIU0sY+lbZSsZISQrnqQTTv4unf3pRpjcmkdgdxepNvWZdcE0irQGLhW+o0ZSFJdpsRyRGdXFbeUtxbzqFF11Sz6ilbGvTEe+dwcSmCcTlxEoKrKKe+EfPnHWp2zTsIwlGnlKQhb4ajIY5yWXh8lC/Tq75fjQdg/YPS5bepurEa99QYynWE6Xaail3HciZyQ18vCq5crMFukpfU8gPPOJe+WbS86lLvorA4x+9L9LO7zdYDWLU7V6JS+2iy3n5DcKu01f611ADDyGUfNRqu61HZpNRQkSUIeTGmeml9Y2qG0I5RbjvC4rsnvVKv1adVJ0grU/NnyHJk6Qpa1OKVJnPlUuQpa1FSi88sAk7UhISkG/SrSS/9Yrkg2rYNAnXDWZ7hTGhREBSl7SdwW4cbcY85BHBxtyUo953fdunKWvuIx0gyUUWeBYl0X5+/t5cdh2LX3+50tttND5251KI6cbkvGrZYbLpQOJm+jXq93N6/a+VZdX1g1b1H1KqLsh54O3ndVTrMZsPCOW/l6e4tuBGWksocW7Hit+ufS/ZtlGXCVZWmuomotUaotj2fcF2VZ4gIp1t0afWJZ3b9hLcJt7YFltYSXNm7Y5tztPXR92mfB2sKmsxLg7hKu9eVwREsqZs2kOqj0KkgiR6KHp/ryBPKHUuFbaY6G1bUrcDSnAOukTQPRzTXSWlxG9PLFs+2ojTTbIZh2+164abB2JVLU6hwqCHtq9qcKSEkgkIHUI7h8bbbb1GG4uUiQzkyl4QvGSloCqKMI9dD/CP9n7vPd5aH7XoOhHX4UxIVCImZRjOLOy6pIlt4OPXE7pZ8Fr4hmq8RupQNEKpbdI3NpcnXZVqJQ1M+qXtoeiSKkJccFTS+X2mQokbPUG8JOOvfwsu9H4e1p03uHuaZb1Ng2/cFOVBuayrlek1q26uxvlU+oExYxWiAtQKJClAI3egS4n6Qrv8AKXUC4hZKQlRKgFAcAlIJS3jJShKSnaCTk5IKTx1H58XKDEq3w3u6VExgPGFalJq0f8WG5EKsxwy9gAg7C6rdvIOFAA43Dpk0/jLX3e+2+222t8yM29VXgxLiUDFlUs0i1XFW8WH8T/2cNl2H4b7hvnX+fqaUDUiS0yH5Rl+b9pm4YJfHi+Shvqcz4Uvda73kfD27a9dZ3oquKsWW3bV4ftEuyRddsufLVQynG8tOLUh6Ir1Gzh0lSsIG1KX8fW6gLQv0lK4yUhzACjnAJSOce4OAT74I5l/0U+559U+FrTaJIBRHoGvWpFIp7hyrEebHYngJUAhRUz6ZHJOFfzskDrpTL7gSUO8qZUU5JJUVKUdwUrKgdu3AI4wMZPHXSPZIu47dt9VzO4y9T6pMVCTG2KWgxk0FWU115999Ha7/AFoBZA+U6cXHIlGj5mUQZSui+XmgerTrgUAEnIOd3H7iPI/f4/j1W5KK1bsDcrzxgcADgblHwOfq/v4wnnkI5CMc4wCT5GeSTz49gPPWkkvKSttZKiMuEp3HBzjA9xxnPj26fJz04sYRjzYsrtCmxYqFK1WGii78dR/dbjnIdQuTSaY0BEQ95UZULpZL+m+6HWs+cLICSguE55K8Ec/barznH8OvP1l/1P8A+U//AOfSzSJ6unHUIUSvHI9lPtjGMGPbrU1tNB5eQapw+549nH0fbHT1Oh0Oh1R/Vy9DoefPQ6HQ6HRQuS2YtcjKGxIWArIUkELykjBJGcE/iGccnPBJ6YFq9pZ8uX3ExlBX1qQtKSAFJIUklQKfpJwSQeAM8cESWdJJf9n/AK1hynGWislCx6edylJxwpJJJGMkEDCyAMkkgKmXwj8Qbntm60dHU3NaVhGUgAWQVlQGxLGkE4g9QP4v+ENh3raa8/lkNWUUxHl6pR4x4xaqIl8Qq/ZZYhbqdKegyFtS0FLzfB3JKQsJOAoAqx4xlODzxjkdM97vdMJ2p+jVYp9tgsX5ZFagaqacy2wlElN4WQVyoMGLITtkNrqfzrrZYZdb+bU2sLKlJQW5M9U7UciyH3fRWVsqcz+FPAP1E4yEpScqCeCVpSFZCjltshlXzBbUjK0qKkhQHnk7hnwQCQDwfIIByOr9juYz0iYM+QEAbPUV6SN2HsSKzHzKnrizuHbtT4b7/OGtGRo6SyNRVinLkuBIySop4FZZDkwSfBF1Pj3lTu9u1pkWVS7hf1zOpNRpE1AEuD+v2006ow5KdqNkiPUmZfrgpHLaQlJK1KM4CozcVpMhCUhyE826nKwvKDuCiACTznYspUcBzbtHUJt/2vbfw/PidWZrXR4L1B7eu8Gky7Cv5UdTQgUbV+dIblU994NttxoVNqEuOuTGhNsR3whiWpK5wSoNTizm2/nX4IW2X4rzjLxby40WyBIiOJJWUrTKhPMvgpVja6CCQRh32GtH9ndKUW4Rl6uUgABisanytZR9kBpR6cu+Dt9zse97ScdTS1dtp6oXFnGQRaxQMsSp42U+bDhd+MppvVbE7yajpkstnT+7dSo2rtpKQklLUe/YNBYqsNDZccQhtupRHXm4weQuMh79qgeskmZT4lfwxLo1JsfTHuc7UGZtH1o0bti03H4FLlrh1auUq2rbo71Lkw5LQ/aVVpXzrrgLaBJCm0DcAUlFP0kKyKNTbV7cNYYjZYu2m3VUrXjTWvoeVApcWDU46HnVKcDobdeUGUhpHpJKyS56igJ9e0fWu2+4Ptz0i1htapfrKn3RY1sR6k0Sj5qBctHt6mRa7T5jKXStmc04WXVsvNtuBDrTmVpWnZWk+yHcu9dzh875Lp/JnHDN1Y6nNx6o1xlGh4oCD9Org0/ijf6Pwh23uZx1IS1XQ1tKqjH1Zk1FFjFCRJeQSM5l1yCfEh74NMu9nsH0/o+pdIm2J3jdv2ocCn3DbtRhriOXFb9SpztLrNYheopt5lS5EaA/MpQZMOIll56GGEqdbc5r1Y3HHjJx78Z4675vjr9mui18do1+9w1F03pdN1isms0CVWr0pCU0ydcVGm1GqpfiXFGp7URieW/nlp+cfW5PJQhxUhaUjbwp07Tu7K1S61VKPRZdSjW1CaqVedigummU12U1BTPlIA3IiCU+ywXUgpQtWCSEqPVY/FXZ97su5TdWCjECQ3z40Wh4UyWRvNHi7h+Bu8bPfdo056epGKvKWnyiEOaxstPSMJC5xWZKvRE6HV11v0ykeeDlQ8KIUc4/cMAjjBHjnJtdRSUWKxfJV/yuup2Ignh8dDoefHQ62NJgyKlUoMCK0HpM2XHhx2iT+0kS3Ux2GxgpOVOuJAO4YPuOtFoX6C9GacHU1IacfM5Ecfdy/wADL9jqdj4JPw5Ge8DU+ffV/syFaWWPPiYpnySnUXfcUZJlCmNutux5SW4TTrDkgRZDSSmWyXFOEAN/RZ0y0TsbSa0UPt29R261T6bSo1Eiw2kt0e2aTEDrcGnQ6K0lFKiyoiVJ+ZcjNtH1FRyRsaQemR/Bj7P6Z2ydoGj1KepTMWvTLZauWuPqUl5Uu4K/GiSJMhDqQhQYbZjxo6Gdqkt/Lq3LU4spalmvhW225rICd0lKCj6dyh6SlpAHIIyVFOQFYCvzIMT3+/lpapJu5M1EqojwjGlYuT83jLhrrov4U7NDbdr20IQJamsfMKcubSL5A4y4g58rl65Su4fRCZbx7p+2WJBZlzLDv+t93eiFPiocku3x2/6oUVmH3E2fZScKS7WEE1aREhRDMnU2t0lpltlYWpaoKO0uo6c9ves+r/Y33AVNud2j96VvMMWrqCwhLcCjVKel82JddMdccVEQIlVnv27czT1RDVJnKihb81xDbS+qXv51Hrd2aj2Gx2xRZV1d2+g0yNW7em0VxMq16dQG3UN1bTDVe+0NRYkOj3rTA9HYhOIYc/W7MN1pBLUhh2Dbum+G9qZ3oWjV9aOz63HmKlbVSrLmrnaxVpa6XeGh+rMssP3JD0/KmHQ7a9Zl0+fXaNT4sRqjyWn40im1Rfzs35cja90jqzuq44AeP+Hl5xiPlAoQMErT/EXapb2Jog2/vfLVhF+kQiyG6/N9G1quZHvN7Wr67RNe760fvVp2S7b9XkIptebirap1cpMh116kVKFI9R9iQmoUwxZxWxIeb3SFJQ66hIeW1IgpJBGCP/f266Grgbufu806k9qfdwmo6Ud7uhkB+l6JX5qJSHaONU6FBbT8rpfe9Sq3yghOSlRkmmVGqOvNyC8tMWO4qO9Gbg4qen9Qs68qrZeo8CoWhVKHUl0mtM1WEpMyizo69kliZBS8lSlIC2nUll5xDjC23G1qU4lHUl2+7jM4LFlGo0IWKREuSNLTbai0e9E932n7BvZ6MCbAtWYkouFsq6Lvw4bujKV9OG7U9ebi7ZO4LSrXK1Zj0Sr6eXlRa6oNqw3MpUaUlVXp7yUhTjiZsQFkNoBKsngqCMaLV/Q6+dIJ1ONxUta6BcEJFUtO6qfibbFz0h1AdRLotajl2nzloSsGVHjSX1xAUFxxxLiHFIy2FFQ2kAj3JH2Psck8fYHHvjpXcdSDnyU5zFTwp4S/J7+OkMZOnOMpEocJxk+RqKKx/LeMeTNj4evqYa0aj0Cl1Htr+L7o46mZpQ3Z9PsTuRotF3TJs7R+55X6xm3RLbirMtdy2Bc8gVmpNvsMNsUuZ81KdjtpKXpnaHVqdcVLpdz0KTHqFt3LTotZoVUiLDsWowJjDMqNKjuIHpqZfYlNPtLSpYdbdStCiAon55PwBPjNWv2l1Opdo3eBINw9quqMxuBTahXiqqUzTOoVRMiFOjLgy3FNLtStNuQUzogcYajCCkq3NFJY68rIrE3sKlU8WxUomt3wyNSZUq4NK9ZbMnG8qh231+4lMSGrTu2JCbXUq9pHKdWwiizkSPmbXYjmHUHpbbsctRff7ecVSLgbRxJGys1xQofZkL+9yvD4c+N9hLaaOhrVCcYR0llK7qIfSoyJEW18DXKypUZkgx2yQASoEZyOM8ZxnOR+YIGQTxgKJU2pbAQRgbjtHHlIIyScAYz5JPn8J8C/DrlMuakw6/QJ7FYt+rRBPpFZprhk0qbEVwl2DNaBivoHqNoX8u4tLZ2IURlI6LNTWpC1J25xhIHOcApV+fOVfwAxjPPUV3Gnra00ZRIspRK9QVXEwggFvqOTyx7t3dg09DeaOnrRCRqXLz9GJV3XuPgwo09YkmpOuAqHCUpVkZUN4xzu+rngYwSRj2GTktyaqT9OCogqGAjIBBH4iUEe3GAcke3VyVJSlI3JPIUEgEHJ48k4wDx4BxyetD0xapIlFVML6eIv7vt+XBjiRznydWJtdlpRirpxKwDGz3Ec5x5qvNXR1lLqL/1HbhIHAXucUARhWVB5PB58JGBwc4J6x0zkJIJZTxyClISQQcgg5V4/IA55zx1qg6QQQMEeDn/06zmlFxsFWDuyCMDxkjB9j4+w44x7lJr7rQYHjUYhEjEnpchlbbxrBf0KwFtq7V7d4YatHtyjyR84ORGmsjFrKfYzMz/pH4cLCgClYJIB524UoEjBGQr6QT4I6yos1nfhIOSRhQUk7SAoj+dwSeBgjJ6IbalhLqkrUEgo3I3H6wVEAEgjlPkHHn2HWXEklLiM5ykqyoHJwUq48jJxkZyMZ8HGCVpakZtDcoZjGcIqgXUZ5kVEDCfU5ZBo14PH8kYx1OMpTJP5SdMqUumEgumnxi1YqbMJJH0jyc5+k5B985/m4KScZAIPt0dKVNyoIABB3cZzk+xBz4GDnA4Ufz6SOlyVek0rBBCScbvKSTwSD7ZG38gMpBGOj3T5GHAkbgcEApOMFSsDwcnz+Xk8cZLls9TTjOEZRicsRH3MKX7MZBkbpuOR6ivdNkShN40sRrzWCn74S8UN+99LHTJJUUqDg3fVjlOTkfiCcccHZ48+eeOjbFdICHFfUfqz4GeVJ9hgYH5dJnS1KUW1HwRkYPAJQpRwMnHJ/wDfpR4/+RR/pf8AeV1JNDV+WEoRIsiLqH+ImWxtGsRI3ECgQ83VXd9vGGpXnmIlVVCeR+/j28db8EklKhtCcbVZzvzyeBynaeOfPkdZ/Wjif9J/of8Ai63DX+TT/H/vHpx3WSFhcajZdyOIRu1DiRAoL8tvUS1o8Wr8UeKuwb8v+/FeOrnQ6HQ6R9EdDodDodDoda/odbDodKPn/wDJ/wCb/wDZ6M+Z9v6/+nQ6HXhUkeVAfvIH9/XoIOOeCfI54zyRzzj7Z6Ipxjz4XB/Nx0X0Oh02Sjd2+jNza81ftutKv/yx1Rtugy7ju2HaaP5QUGyaawW1R2rzuSnF2lW/V6hGdamQKHJfVU5sdZXFjvejJLDmgcjOQePKTkE++Py+3v8AcDHW0oSh+Yr7WX7f53/R60hOExYNhhaTP0yH8fp79a5aErGFDIBzjJHPI9iPuesJcZYxsO/Oc+E48Y8q5zz+7HWf489XWkBZJPgY4++c+4IxjHSnVISg8/HkQGRk/Ko1yoGvJ5x0uhqy0sjj3i5H28Y+vsmfPRZlw1EhWzC1fi5BChjHurbxgAgcnIJ/PTPwlJ2p2cHJIOFA4Ix5URwfbyOCfbo/ymGxtSRlJ5xkjkZGc5z4Pjx1rFxlAJCPrPOTwn7Y4KiPv4x+fSWWyjGRKEOTbyhKXBvOVhKMJZvLkapbw47buMgjbXuXfHw/fFVi/eq6TSXR920bC4BzjdznnByko45IwffkZySMYUtSBjYUgYCUqUfHuEkqPj33K4GAn7dKXIjtEpKk7jyMk84444x9/fP5eT1jKjNYISkIJx9X1HHP2KsHjI/j02G302iqh7ZnZ/CM4xuzKAuXy9POl3fU4kuIySmVVJB8L5qz6P284TY0gkEbUc8cIQD/AFheR+8c9ZDVMWOAgfSdyT9ICFDJCgEqzuz4xjBJyRnIOvyWxX0IBA8KyBn35BUTwcgZzjyMdVIhBP1qSkbQVbdxJOPY84GR/OBJHBxnwr0NKEJRly9V4I3JtaOMpzWN45VAaWLjKfq93lPTlGT6WL7HuZeIuQr2fuJ542ezyOrTT403xRrFYAagXK7b9zR4oCQmRgwpL0gZH0jFQbTwkZQlIwVHCJ6g+MpJGMZOPPnAOTx7eMA4PnjqDzQaDIuD47vxI6sywG4ltWlQrdlr/H/8zfatwtNg5JQV/JuAg5OcEEjjqcJsBSHdo8ZOD5AwduSftg45ODz12b+GerrR+HdpNgT1EYxOMkprlUSS2gjlCKhSEuvKH8aom4+O+4xk8YxddhJAGmkKQpAoLAOQubrcXsxx+JRJ/dnJxyOeRj264Fe/e72LK+O/JvGoS/k4tu9w+kNUflKDiwzDhz6A9NUQNw/CMEkEBs5wcKB77VI3A5x9JCiT4GPORkZGMg9fPZ+PVbsiw/iaal1iI2uOupGzbogzQhKXJBcprKhLQlWQCH47ZSle7CmwFDAKQm/EnSlr/De4kxeTNkySiSucYEWxIlYTzQyj+z7vtLa/Enb9ecTlCelGvqaetEv2T0wtz5bBSnvqlQ0iQ24kh6I6y26y8CU70uMpWeAtRAHqJAwfqGCSU4CdXVGG5MVyGE4SoglWRyeQrznOASMk8FO0ggYKV9sWq1L1+7adC9bKVIVJ/l3p5b86otodacjRarBpjEKfGQpgrZRLStlbspsOLWhL0VSkgOJKlWqPqMRJMpO7dGiuv5SMHc2D9W0eRuXkgJVjzjwR5/d02+pp9w3ESDK5PAqSXbUVpwMqLMXd5698Phbvunuvh3t240dRiyhHUmr6Y8YxQPJdlebsyl9ND1CtysUs1KoypdGg0ulQHZ0ioVioKpkCPCYyXHy/8vKLgbUQpaVJSlPKlHkBPM33w/FXsKhP3bpjpdS4t/VVqM/AcvSn1eczQ4a5aEIXKpHoMRlyZKGmtzMuQkojKUS22VBRUnPxgPic3pqDdVU0L02vWqCxKRKqMW4KlRRPpUS4HiI0VUSBMfabXMgwpkaoxlyWEPQpDjfrMSn0uqZj84Tz7j61OuqW484tTjry1FbjjijkqUo/VnOT5/tGerD+C+ybvS0NTe7yXB3HA04sXlUeQuZFCIGFsJH25W/Fz8au66fc9x2jtGqSKlDX1zUKgcY8CMCOR/w3Tx8A30br/vavah3NPuq5ajVKtWKk6tyTUKxUZdUnP7lqWPVmTHFuLwVqO1IbSkqICB4BL6Hnz17xgcc85OfP249sfxznqxoxIRjGJiIB9g/VX/PrlHc7nW3mvq7ncSJ6+vN1NWZEiSm+ZcTBf2989edDodDrbojodDodbihUKfcNQaptObLsl4kISASScEgBI+pRURgYHHv7A4lIiKtB5f6fr/DrIMkjEVWgPK9afodLhqJ2/ai6a0GkXLX6LOao9YbQpmWuBLjtoWv8KdzzYQ4lWRtWhX1EkAEJ3FD+gSJXTdfqe1+/smR8Pt0ETyJ+p+mP4Xn6dDodDodZ6x0PHjroP+Dlr7ozTpyNGrxoFNpF31erCVbN1uhhj5+pvLc+WpElxbaiGH18ObXEn0kpR9P4xz5tlIV9YyPueQP4YOfsPt5/cYrbrdQt6rR6rSJr0CdCfbkxJcZxTDzD7at6FJcSUqQUlOBtODkZBBwG/uW3d1tNXRisZMbi5pfFNZ9/o1nCKMm+Du7nZfiHY72Wnzhpy9Q1SOWvJYCZzSoOOvpK0eyqutaw5S4tNSSkvOBKUgDclSdqyVLdIStSmiCrLS0FACVjpyVuUlMaIwyEhBbbwogEYykD8G5JzwAfpJSCAo5wTDJ8I/vwq/cjo1S7GvKpR7gvSwGIVLrLJkxolflRS2+21U98uWyZjbTaAtTjX4VvJaVuWApU3MXcy02ttLiWVBJ+vClKAGSFKVnLgB+rBzn3xjqhe47Lc7Xc6231tG6JMZJyJCwto5AANnssbbsPTH4H73tO59p2ncNtOLHUjkhTxUMuTyoVgocSFHeRv2KVBvKQNo2jHO9RzyrJBBORgj7ZA8Rr/GYvGPZXw6Nb3ZEhDIu+HS7SaCfr9V6dVogKB+IhQ9MhYxuByo4OxQkoZP1bSAQopJJOAAjKiT44A58jxj365mv0kfXRNCsjRTtvo1SVFqtzqqOoFfor21LqGfUKaeiaFNlDbsx6Q63CQXRvcZUlGNm4OHwntZy7rozjpmWovtQ0siNoRYuJGQklhfTH+NPc9Lt3wT3TV3GrxGDHTHUplKUSgFpWTJzVybtx1Or+iuWxVra+Fpb9XmtBMe7NaNQrgphUnCVxGG2KYogApyFKdCxjG3O3BAJHSAtwL3YAGDgkHIUrcd3lSjlJ+lQwkDGMZyTGT8HHRw6CfC/7R9OVtFqWnTeLe9SKkbZJqV+uoq7zMsAhPrNRRCKgMgBY8BQAkgHGQCcKUpRGfuoqx7ZAJ4+w67H7VKOn2vR04xIzYsJjn0MKi2VkGLxkWNl+543d57h83uOvqMeQqjdUylyf8V3IbbwPjFN14kuHJzgAfwwD/t69SnbnnOetPI/yy/8AR/7qetkh1CUJWs7d+cDBP4Tj2H+7z+XTzs4LPkxZpSzZIwZRl+7azZ5F9qv36YNwy1ZOpVc6OMS8EQifWyMbUAUcBR1gFpbRwoYzyPGOPzBI/ePI4+4686HQ6eIQjCJCJUS6M+6r5V8v16bzu+294a9/aGmf0+a/59Po6HQ6HVA9dC9DodDodDodDqhxtLiSlXg+RgEHgjBB4IIPI9+q+h0Bps8mTrEokhjIsSk+p00TWvT4O/MzWmQWnkFYTtyCtQJKSEe6VBRByMj7ADEadzUZVNqclpQwkrVtPplIGCTtSn8KgOTlGQSQRjP1zlXDSmarTJEZaApewlskblBWNuEkhRyoEgDHKsHySeoutbbMdhS5EhDQSpLi1KVkYA3lRSVnJKE5SEjgqIOBxzcXwL33cbo/YdafL5ZGELcsUBu/oF/RCnBjnb8V/hDYyh+1kE+ZCSSzYkuXkFHkUfQBAumLfuz7ZrG7qdHLj0nvWMEiopRNt2vM7UVG2bjjuJfpNYhSEpU80RNRFjvpYdb9Rp0rcK0spT0yrsM7h9RLUqT3ZR3bvNW73DaTQRTbOqlWmqeXrDaFPLjTEu35jkeP+tqsxwkMOBL7jb7aPVJQkdS6SEfVtUPpITgY4G0hQAx7pUAoEcpOCMEA9N0187btMdf4UBd50x6kXNQmVfyZ1Qtt79W35Z8xJS5CnUWrtJDzTjElppS2yVsymUqZktqAbdYtfRjxkcQgrUoARi3iUUUpPFf4rZGOue9xupnbo9v1IcjR9MP3qC+JFeSDyt8kqjbdSIYv0hS02Lz0C7e4+5sKVr1Dpb5cJbeaiVyiSosllTThbUkuFDC9xUOWUgD9plGk+DvohWp3aem5NMNUrk0S1M071N1C09vuMmIL20vuZ23KlEegv3RZdWKlR6lOTNqcd+pwqgVrZWVqSfRZSmv4qGlHdOns6uGzdRac3rk1phXrbvS1dbLaRFhXAbeoEhL09WpVrSWI9UjPUlttb7V0QX6xCqzlQdYYYilCPUxfg06zUWnX/wBzmkNdqsOBQdS4Vk9xVtvT6pBh0xuNcdKQi64jLEpTKkIg1STEbVLbkPJf9ALTCp3qJCmXazNv8SSlx/upwjyUwUMQ9vDJfMigsG7sntur+1fh9DZtsrlqwjdeqBEzxFkyyGIiYFLOpAe92wtaL97Ju6S275naf1eYdFbiqdMGn1s1m2d06gOw65JecFWlykMAw6fJLEeL8wkBp5TykhLaHeUn4RFr25dfcJQdL9RGIlRsHuZtPUXt+vGNNiesUXHOpNQrtsiGgvt+rNbfaeW1IT6aWS061vVyodzFYbo96WzcFuibSqtRbnoVTostyHLFRhSIVYp02muokJZLIUy41KdSAHglwhQDicbhwZ6A024u2zui1l0sQt53UTSm8kakabsPKTBdaunS+sorcr5SMpLyJM+q2s7NTAjpmu+s82tKFvKQhLjL8Z9t+f3LTlICKS4vO+LIEi3i3JZ6S7TBcm/Cju/DZ7+Fcp7fS0tfgjJmQnqRnHyceUZFiIgfvHTAO9jtcujtC7ib/wBELmaeWzbtTcetyqqYU1GrtuSZEj9W1OMvctDhWy0Y8tLLzrUec1JjhbnpJcU0daCg4PIPg/fxnjJxjPX0M/iH9h1pfFI7bLZ1W0lNGgaomzIN96bXBLkIYXcFPnUtie/bdUTh9TCHJSnYbfrLUqHKakNLZUpSXE8BmpWn11aZ3nXrCvaiTraum1Z8ik1yi1KMqLOhT47hQ426woA+mcAtPJUpDyCFIJGcUp33te67bvZmppJoanKcJ2SoKaabMJxvzEWrHq++zd+2ncrhozqUIDOErZURjcwrxyQcrm0LsTzpxnaVZp1B7kdGLH9EvruPUW2aey0lO8rkmelbCSnPI9RO7IzhSUnIGT03dr/KJ/j/AN09SIfCeixJvxFO1CHLZDqJWsdqsI3YIQtc8EL2EjeRt4GfvwfaPbiVaWoVfovynmQXjNHlrOMdS/t/q3+2g+OcVcfVxnHt/G8dfW305tVFn6dWdbzSQhNCt6k0paAQUpdhxGmnVIUMJUhS1KT9PvkjKTkMA71b9va7rgoGg2ndSXQH7hp0uo3fdLW8yLatiM06H1x1JU23+tpyW3xBjOONqc9B5afT+lTkmlwVCJSIKlOKDYUl5TTXjAZfU2CByo7g2lRJTzk5Uo4zF/V7enzryvO76y8oVS5ayWmgk5bbtyIlSI0NkDCtqw64Q45uWguLKThxQNX9/wBfP5i/DFxRyaEPtQWhKgLwPZP4ddml3N2cdWLwgacYz5VfJFqN55JxKQMpdL0SNNNL7U0loDFq2TS0U+lMobjvukfMVSqNqS7+sJNcrb5M2s1KctaPVkSlpbYSwlmKyyFLKkk1A0Hu6ffVN1l7f72d0x10piFsTJE6M5N031Io6tzirb1Ro0R+M7NgpSz6cKpMrclREqdc9JwoCS6oAAYAwBwAPAH26K113DS7UpU+4K/MMGi0yI7KlSfTLmfSLWyGy2FIL0yWtaRGZC0l0pUCtJQjdGIdxntanO5RsKMSfehqhwvJqs0qg9B7v4Q7Q7HV28dpGUtYjHlGOIyoueBlH8oXy+kXz0zHWed2Kd4USlaY/E60Lg9ues5hJo1P1PdkR41jVKtx3A1b1c051ghxFNr9Sa+6IsGqxIsuHISjfGCJ5c6jf7zf0bzVvVexoN2aCayWz3F1GhxFsWFVrrTAtvUqqW4+456FqXNeEJ2rWDe0aJGhIagXPPQ3U44aUZ6lOTW2nJUomncrWSVLv3W6Om4KNXKZKi2jo3cbEKr2Tb9AmIQIFXqdHkR9z9aqDSdznovQ1MrjNOvBxxLKWynH0z1a7Qwxqv2TVuQxFj1Ruo6jdst71t+qaVah2nAWqRPolktTUvS7JuRKEoepMSmPrgTHhJQhiO4UuGS9u+IlSEtNYkVsVlISK4r7qtFAiSujnP40/B+ejpa3dtHQ5lyPlhHlGMZLcrkq5xcfVgAi08Vd3ac96Hw6VVTRHvK7Ua7XtFJcomrabakwJci2HHG1BqPdWn16U9VW/kxcLaX1GHV6Y9Ipq5DLTTsMx25seQkN19ufbLr6lFwdpmsq7YuWqyU+voFr0GbbuCmuupU6qJaOogiwrVuSFFZaS21AfdjSW5jjUaOtSZe4fV50O1J0P76dALT1Cqdm2xe9r1+nyoMm1r+t2mV2oWtUo4bYq1r1mnVpmoyYE2hz/VY+VecZU8EtzX4rJkNMtx+68fo7Hwp9e3plUqXb1H0/uCc8mQ7XdLq1MtJ5TjaSEpXTmfmaWWFOBBdQITbq2wtCH2ysOImWx7iagTlBGuQ3lFisqX1WgSRE8Jk65y33YN3DUNJjpwNNlB05NBZx9MqHMLeKIiZw38tm/e1juO0rQ5IvjRnUOi0tLpaZrS7ZqUygSlFZQFw67TGJ1JlIUoEBUea4nJwSFZHT5eyX4u/ff8P1s0rTG9Hrh00qTgTUtJNXqbU7u09mMgONTIsWm1p1hmGzIivmKttuS7sSpla0rU2E9d8li/o8ukejy0xtG+8ju/05ozOz5a24t40K6Lch+mFhHy1BvOj16ko3h1ZdY+TMEHYY8SOQ4HHLs/CM0rfh09jUPUypasmA6pwKvnRbt5nesXfSLqFenpklaEvBlreUuZHpIUk7gOlm43JOB8zRJQlVXKmTLFYpGi1jTlQq6bj4U3nzIz2+pwlLij6GpFIiyGi5BaWfmvC8pnbl+kk25TJrLM3tHunT9yapmRWLP7fbq/lDptWql6kozqlBsGuxpDVryXWFx47cakVRMcgLKWmlNZdmX0g+LbfncpOYg6JdgvdJUJ8v00puG9XLZtS3GC8lYYclSKg64mNDb9NaXH46Zha/Yh1LQeaUqXa0fh6dqFhz482k6NaeuSI6dokJsq1qcSkgpKhHplJhxEKwDgNxW0pyjYkYUEuCb09ta2IrcO1aRBocdDYbQxDjNMMtslZUW0JZCAlJUSNqQE4xhIBITD9+6UcwiRjIilPIq+IRlKNiOLkryeSRES5PguXfu3GhHc7oSFgMS0qOGMrjxRkNOQjd+q2h2UnWCZETJ1Rotp25UZMdDyaNbFUm1ldPKtqVRqlUZMaEx863yVNRWcAbF+oCVIQeE7gFFW3CSPqBAyFHyRnjnyfG5QHuMq9WKYl9kNp3BbZK0KOCo5TnarwAklIBJxtxnBJz0RVU9xpZJSElStqyCfbOSUkgbgRyCEk5JHO4dRbXJTZBp8oyjSMowlfiZaiemg941+Wqq+u2d03M3Tdaa/4gJTiXGzEbbH3/AJ3FKKL0VSVfQMeMoPBTwOcqPOfPOCMjAI8UIjLOd52YxjwrPnPhXGOP356PIjte6c/nuUP/ABdD5dn+h/rK/wDN0jNn4UrwsXU8e/FTTWjxZJf+Zc9ST/imK4K+OWL/AFy1/M6Lfy739D/WT/5usuNHCSooY9M4AJ9QryMn7qwMYH5n+B63CIgWD9IyPOCceTjyoZzjP946z2IYSQkfWrIKRkjaRlR5Kufvz9vHOOsMNWMTTIR04GLJekDKoTWV/WRlVvy9Itfe6aXMjKccmGzxaeqjweaxk8dCG0oJ2pT5/CMj2Kirkn258nn26PFObVvBAzkE4GCfKk485PJSePvj79aqDCwGlKb+v6h+POB9SR4VjxjJ/ifc9HWlw+UKOElSTggZxgrHIyPA4+xCgQTt4cttppqwQVIkSFlkRA5N2qwif8pyZCWRh/dt7DjqZG7tsy5KwucWtefBT0bqE2MN7x9SNpHJGCEKz4ODhSce446Pkf8AyKP9L/vK6KNMa2KSofhVnA+wAWOSfuSePYe/OAbo/wDkUf6X/eV1ItOHLhDwSnCBKnwBCwVwI45ObOS29VR3WfPXlK7KGr8Pqs+z9fv1son/AEn+h/4utsyrKSnH4fB/eSetE26prO0JO7Gcg+2fGCPv1tULUEqwCkqBGfp3pPIBH40ZGcjIUPAI8jp014shozeLxkq/Ne1g+HqMbiDa4zVZPYB/3/r1mrUEsLdGCEEc+RjIzwDzwFePt1abkxn8eg4VnA3cEYOCcA4wcYPOf4dMv167NaLrbdlP1CoGtOu+hWolOp8KmJubSG/HqNGq8WAoGLHua3anGqdErLLSFPBtIjRHg88Xw/vSAW+1vsq+ICxJH+D34qd8Umlo4TBv/t808vuS4cD/AOk1Vq5bamLTncCGEMbhgk7sklsdNCFVIiHIiW3IqVtWl1LJj3ovpvmzhIuNxtvIOQCso+LCrtY+W+pWOvCQkZUcAeTjP5eP39RORO2/4tsAqgs/Ea0nqsNkgplze1ultuOpBGQWRej4ZOB9Z+YeIVjHhXW+hds3xNppDVd+IhYcJhZBc/k12zWxGlKKVLPEioVmqBIKdoUkNJSobgTkjoicCDHzIbc8IiR/MXzfc4/W+ganpZTOL5IkiTWH1VmNjZiRjKdSeImMvL9NlaHFY3EBST9PIyCkqBwR9Xkp4yPrT1dlyGKfGcmznExojX+VkvvRosZnnbl+VMfjRmQFEAhx1JVkAYzkMPtztK7iRVaXU9Su/fWi72YcpmW/QrdsfTGwqDJVHKh8spqk2/KnmM6Cn1QZQUtQSpJR9e816h9gXb3rNWqjWdW6jq/qTFqiGW5tpVjV29aVZBDIwkotu2qnR4hCkgsOx31yYjsRbkdyOdwWkehGRVRBbau2qW5Fj44jYeFsC9XWkBwg03Ur/MfX6RzQij5pMPSc69fFK7ONCqlLs/8Awmf4YNT2VfLMaVaA04arXk9NkpIhxJaKPHfplLU8sFLz8uoJZiJQ64pai3jppFRb+Jn8QapM0dyiM/Di7TasENVqpuVKFX+7S9bfcYW4aMtluK1R7GhzYzpU9I9JmS4ioN/JyHVxHXGpZ9JO2bt50EhNQNF9GdPtNmWI6Irb1sW9Ch1FTLYdS0JNWW27VJim0vOIQ5KmOrShakJUEnHSypcAJWtIdfVn1JK8eu6P5qXFhI3BA4TkcDA6PdfTD+6RIkaiEoqHERmxMoJeTA4fKYhq6o8lV/NSRBT6CDSWNDinEl6bh229pmiHaTYELT7RizIluRVFcy4rgddkVG6b9rMnaZ913fXZzj8+qVqtOoEmprXILL0hJWG0tlLaXFdbDA4/IYH5DjgflwOsfZ6f87Ofyx4/ifv0RCX7RqxgpC7pqzEVWrC3iC2X5bfKjRlGEeNZ+6t+ceMETweDwAY6x+rjfv8Aw/29W+rjfv8Aw/29GbX/AO0af/x//JLo+f5X+H+Z1b6w3G9mOc5z7Y8Y/M/frM6HRUJsGzI+T6+azTVX0ZGTF/zOtYUAng4/LHWGQXSQfoKCQR+Lk8H7eNv5563a0JIUoj6tpOcnyBxxnHt1h9bfI0dWMmEflzU9WUi2LUeRFEs8FXYFdKdPWTJ5MDjH19m7Gs/r1r/Q+yv7P/U9aetVOLQaXVKzLWoQ6TTKhV5Du1SEiJSojk6YvcQdvpR2XVg4OVICeM5BkKUDG5YQCQNyyAnn7k46h6+OB3fI7WOx69qFbipcjVzuLSvQ7SiiU8ByrVOrXU7Ag1qo0+P6DvqRoNKnEmZuaDJe2fUHiW1Ha9DUluo7ecVlrMSPFHAorWSmQ5Aac4Okfdu76PbtlrbncasYxhB/Mkcvt48oNN0Z+yQ4/ByVK1hvj4gveBUmlZ1+7m5/8lam+26XpVq2ZOnIiOB7DTBDkUQ0ONx/X8I/b7Vthc2TbOdyd2CnAJxnJ5GfIx49h79Nn7JO3qkdqPanovoTSobDD9s2fS59zvNbEqkXrcUdFfuZ14NrW268mVMbjuyEBpL62i4GmclhtzzRBLivAJB59hlR567l+C+0PZuw7Xbs/mzhpxlHUYEZHOoqDfFl6hryV7315b/HPddbuvxbvXWnzjCevHldKakZqMjz6cWNPnD0Ep9M7T9SVpPtz9IORjJ4IJ8ZJPGPvxm/pQekSaPqnoBrnCaZMa9bQqlt1mQEpS6qvUKQqSiMvBKi0yy8n0yoDcJJ2kJQnPZeXcqSrbjbnjOc54PsMf29Rk/Fw7OpPeD2Z6hWzbFNTU9TdP4j+oVgR3Gkr+bVREKVW6XHKkrzPqUdUVuM2hp155LMhLYa3qcJPx3sZ73smrp1/eS/S8Pkr6ANWDb4p6dfwy77tezfEejqupxhziadsg4rG1ZZ9M5Sci+KHFw+/o5PeBDuOw757T7rrsVFctaZ/K2xP1vUvlW5dIfS6zV6VTGFMLD0suKjLiRW3w+6AtKtxUh5qSD4o3fTp722aJ3bab1YWu/brodTpP8AJiAn1qkaVLQhp5TslEhLFPeKXWwpTjMpHp71FlZSnPBDpZqPqB25an0m/bLqtRtu77QqgdZcjvuQZDUqG9/jMWWkA4bUtHpSGXEk+QQSnPWt1w131H15vys6gak3NVLjuGtPh+S/OnPSUpI3f5ALCUNJyTkNoTkqUclJHXFe7+GTU7rq6sdYiQQohGRhgtJRFLQRQPTgLfUTsH41620+EdDtUD5k+CGrHVq41gRjJRKXi85fnqsBR1AuiTelyT6y6twRn3Vop7Dqt64kBDilMsDaSk4WpZVhWNxWUgJKeiApJSopPsf7PY/xHPVZdXu3A49sEkjGSrHJOOSfGBycAZPVClFRKjjJx48cDHUq0dP5UI6ZXGMaAo8Vl+75U8tvv1SG+3e43293G619T5jrTlK21y2FyuVZQtaKACjrzodDodHdJuh0Oh0Oh0OvQCeACTgngZ4AJJ/cACSfYAk8ddc/6P58IC4u4mc7rNqNbu+yWCxIpaZtLElmS4lhUhn9o8y6Gt25olRDYBW2GUy/V2t89vw9+0+6+8/ux0m0GtiFJfTc9yU5VwymEKKadbsefGFUkrWAGkFTSvQa9V+Okrc3Je3I2K+zF2xdu1idsmkVsaS6d0Wn0ai2rT4lH205lEZM1dNb9H5x0ISg73FZUEqU4U5yCFFQ6R7jlqTjpRQjVyVQtzHMcmBP0V9hHbtmnG56s6oAiLV5Lbpov9BSOfPXPv8AFM+ELaupHZxdtKsWy4X8rLTo0mbRZsWO3E+UejQn3FSg2tKwoJDW1EdJSnG7c4Ekg/LjrdHn29WKpQqrHciVKjz5dNnxnkFt1iVDfWw+04g8pUhxCgUnkHg9feim02FVoE+mVFkSYVRiPw5LLhUpLjUhtSFAgqAPn3zxnr48vx8+0qP2efEx1509pMIQrYuSpRtQLYbab2RW6VdTZmNxWlBS0uORVhaJCg4palKS64houhAL2c5YZZNQUaiFwWNBHxg+x4DN3juGmNTjGuGEDySLkv2Gs/dv26hj6HQ6HTh01dDr0KKc4OMjGRwfIPGP3f1dedDodZFGxp+p/Lp4PZX3S3V2m622rqrb7rz8SmTGma/Rkv8Aps1qjrdSqVEfQFZWNmVNqUhQCt+d2NvX0UdHdWbV1osO3NRLFrbdctK56bDqtLcZ2D0DLiIXIgy1fUUTYcv1I7rQ2L+lDziGi76XXy8ELUjx45OPbOCBn+vJHvgfYY6e/gOd6dUp0iu9q101pKKPKWq5dPhJcCRFqbpdTXoIU4pDKUTGmoLiWwC64+1H9PelpwCG/EnYp75hraH5lY6sQjmz0SqSRakVIfzCeDl1f/4K/iJu+w910+1bzcn/AA7UlpunDU1KBi3IJTeMbq7r38q0ddb9RhUej1uvVN0wqNQKPNrdXqbgxFhwoOzeZC/xMhXqfSQlW9KHclKR1woai3LfnxTvis2pbdnU2ZV2NSdYqZaVk0dHqyY8ax6RUETnQwt0NrJVS4Dk35Z95IS22FF5DbocEqvxlPiYRLN02rfazphWw/d97MyafqROgSkkUi320oSijOpQFpMmrGVJDmXFtx0xnElp0glOz/RPOyqs3nrjqh3oXFS3Rauj9PfsiwZzsT9nM1DrDKFyFMSFSWPTbiU2UyhS0Q5TMhcxzDzK4j6Tp8F/Cu423cJ684ynxYxIoSq25SUYg0AFPlsjxl05f2mfxQ2u/rtOx3cdTSianzNSEmETkaDCHE5LmMnE6w8lsOu/a3Lcp9n2rbdnUuIzCplr21QLahMR2/TabboVNj08FI9Re5JEdG3GOAQVE8Daen+z2Z/jj/Oz4z/Dz1VImF15xZRgFayE7jxlRPII4J9/twOcZIS+MDCcj9/k/wD2PXROx2upOEdNTTYxJSMKSoKI8roqlyGLynXA8txtVlqTlc9SLCTWrmL5MCH6mfo0HWgfGX1D77f+4OrEx1KEsgqSPpOQVAc73MZzyOCSPv1lLb9Nxac5/DzjH80H7n79FqepRfUCokc8EnHC1gceOBwPy46kOhpu3hh9cpPqqvTHEGrkZPVnxy4yGumrdI6MYZqdZMYKf/N4rGF/RyxVABygk/fAH9ysde/rQf8A1Z/qH/n603Q6N5z+v/lh9v8Al/3b9qSmpqFf3k8V5kvivN+fGf1fr1IwCCMggj7jkdDosUqoB5SNhCkqCuAo4+nfwnPjkZPBBIPgjozAhQBHgjP/AD+Y9/z6ovW0ZaE+EvP6V9fa36fXq/dvuIa8bilmaLyY9WQ9/a32bRF96HQ6HRPSjodDodDodDqlf4Ff9lX9x6YXr7CJXOQoEA+qkgbSEJ55ACv5i0kfhIIQDkJH1P1IyCPuCP6xjpo2utML5eWlAWhYVuSVqTuWoHnO8eBgY4HG4846mPwTuDQ7tGxeQePIk40nteWrxdfbqAfiDszd9p4tWGpxvN2erHvXpx7/AHBOou5qMKUOR6aykA5OBlZwM+3GQc4OSec560inFOYbyEpClE4yN35r5wopAwk4HH2Hg7XRFEac8EIKULOQMgnISorz/O4yMlXOPfjonen+f9n/AK9dLRjoT0oT1dQ0dSceRLhOa+qdjGMkjSl3bZV4euIfiG9vupaQ1HlIkVVpGHCVVdVfsCJft0Tr3sym6i2tcdnVllmTTrstq4LZnMPJKmXY1diqZfafSFJ/Zr2NkDI+pOSdoOeVXtRXSu3XuU0Qt27aO1Furtx1lvvtf1HYqoVKardiah1KTWdHq4XylAeptTudUOLTGHdz0Fpn5R7lsOOdaikFtScLUATncngjHBIwTyAeD+fHPXPR8YjtuuCzqiz3i6XUZ1bSaVRqbrPAgL3TJK7Unt1Czr/S0lK1NPUIRG21zC2W6ftQ4zIbVKcSGXW28TcQ3B5KzY/vQwHk40KU2emz2lvwr3nS0tGfat3GUeVRCLmShEMKJOy2xWTEUeug2n0+kKDik0mnICXFJbLUVKQ4eCQVAqwpWRkpAIChjAwDx3fG90kuftk7zNJu8PT2nRXKXeBpNZWh+Apynzb2tdx+i1+DWg24pT0WpUlKYrxUpv55VSYYbQwphTr3Vh2u632/3FaA6Y6s0GSh5F12lRplRY9Rtx+HV2IEeHPafUA0tRUY6Xmw6xHXsWR6aSNxTnvd7SaX3m9t+omiJTBhXTVKWazYVemI3sUK7KO+1NhPuNZ/+jzVJMSS4kl1ptwOIC9hbUm7voy3enDV48pQYTjTUVqEoZHAphty0jyYqv4U3+5+Fu/6u33OhHW0dxKESRPiBOM4yvTYyZembd8ZGKyX0y34bWt1BfodqacUOrLqmkesjNSvztwrk4fJxKdctajLrV49vi1bn2m7it+oNS37ZhoWVTqel6OhLqIbklEWP6Sb2ctVKDp33mWPR1Gc8xBsXVZ2K1tVUZbLazTbjlxWQ203NecLhqD7EOOy6FH1XgIbSVIl8PDUBXbx/Krtw7oadIidvN33yulVS74jTiar269w9JnS6fTblckerBq1Aiz6mumPOVR2FFWaRUglKZjTiijos1fspzuH0avDtI7gYMBNbvqgPNW3qkmQidZWr0l5kKtiuQ6wlLESNccdKXi+gpkfPkuK9MvNj1oV3ftv/F9jq7ef91q4qbEnxQw+1Vg85BySOXVx7Tup2jv+z1tOpaW/WPpqRHi6Qcwf3oanEpBZKNmPmdNsuOr9FtC3HyrahptJWpWAoqwE5JwBnjPGfbkOm7IdRGNJO7nt81GnO/LRrQ1Zs2rTF5KVIYTWY8d4pASolSBI3gbVYCSrB29DWfRm9+0bX6tWJftDUit2NX1lqPMaIp1Zhx5Tkf5ppS0qRLhT4rb3pyGsJWl5D6QkENpfN3k9i4t6w7P73+25p+4NAL3p9vXVccGHslVDS+6XIyanctKmBtS3IlNiVR8KjCTFiEeoFOMMNpCBUPce06+y1JaM6killABxTLdqtNCWOSmr87d3HS/bNpqf/hyYTJ4SK8eUfJgPNW8rPHX1J7pqyq5SIlYQjbAqlGplVphSoLSuHVYUSclQcGAohctX4QQcFX07wOmfXKhRqYQjK0I+pJP0jaW9pICj43EDjJzkn3xqvh96907ul7Bu2nVKmSDOfe0yodCuBTjyFyU3DQIjUWYzKbaX6sV35MwNkWSlmTgFxxpI2LWpl0Uceul9KCFLThQ/CCsnKiM7QkHOU7gAcADII20x8UbPUju5xhgFacipFDD9lxnyBKuu+vwk320lo7WWjIahHksjzFakepKkVjzhqUS7Sdw+nnfwB+IkjCRgnJOcYA84zj+vCJ3X8vdt8Uu15qFS7dtwRbmnRQD6NWqbbiUUmG60sEPstTlx5DyclJabK8FCVkrzUYi9i0FOwrbUASDjbtUDgKIJ+rn2OeMgc9IbIbRHvaTCdCG5EyjxXml5SVJbZcJeCVbgoEt+ojKVbgo/QCVIUa+3BOU4xlEOJ7P7zxaEZRRoS5RR4hyvPRsZutGLG6Y28Tlmz6XVec4cj4vo7zHSC00GW2UoZQlLaQMNtgrSllBSrHpI8Ng4UnGAQng2o0gKZBAOxJWeQM4IWTxk/UdnHJA+4Iz16+yHiwltClpQw3HUkrKCpSAtRyfU5ylJO7I8EFI3YV61FDexSW8NnhB3kYVlWcndu88jyDgjHIBV7bcQ0SMpBykUnL8pyKXLIcGKbiPl8DuOh+2du3IPKPBjEkXXIRooi5uzFIyTKt74RkVNP1B+ITR6U48i1YXdUX6HAyPk4EuqWhEnV35RKU5QJU15qQ+HFuOha0pUUpS2hM36VFKOfqKffhOck/wGB/XjrnP+Hn3H6Y9ruuPdNo1r/XWtO6/q/rVL1T06uOtbo9o3fSatSotNS1TLgfLcH9Zl+EA7AW+gtpW26AhtSwz0OQ6lFqDEeVBeamRJbSH4klh1DjL7Dqd7bjbqMpWhaCFJWMbgc4Ax1Oe2d0JR0iIPol+ZCJyzxly4yjElUqEc8bAE4N+L9CcO/dw03TYx09SHtUUIRMN+MJhPChRfWSt7fySDjwACBzjPOM+2eSetZLJwgexKiR+YwB/ef6+s0DkgjwFceOQkn+wjrBl/9H/p/wDh6f8AV1tTVKCIwhL5ZEA5Io+pbVDy1gfdVk0ANSBQAuP4PWhltJKhlP0qyTyeVZO7wcjgjjgc/v6KdRZKkpScjapQJHsTgjgHkHaT7jjyDg9Hh1r1dv1bdufbOc4/MfbrWyogynKjkg4UBjx5BTk+Mg54znGemPUjHVgRTlIqo+LL8XZVYlY2Jgz1JNnuvkTiq0e2cJZYU+RzXn6NV0k8+ApeMI2gJVwkjyck5APIORjbkgDAA4HRLmU4glQASoEDdgBJJzkqAydxyfr5yMD36XGTTEufbJJJPnJPk4KsAj2II8nj3GgkUMqJG1OTzngAHJyRuwCfbJSrIP4ifDc6MZSYyLU90JB6a5x1GNNeJQY2AtXRNe3d9hpgMiqLLrFn1XH1/qdI4ul7VEApGMeSvPgH2Kh/af8AZ14KetHjbhWAeSeORk7vIHIOMn8j0qBobeN2xSUknB3q2+TwCQc+OOSfvznr0UdtOMJ/jlKiP4qTn+3oqO3lOQS0q5Of+9ifV88IB9DlGJ4Erp7/AO0EKzKUqqxkVZX0X+l/ri+kxaprhztQUgkZP4geTyAMgY54JSPbP22keEptJSM+xJxuJJ/IE4HHjPsPJyej61SEIByEHnKQScpH7x7++QcfYA5zsGKWB9aW0q3YwrODxkHGV585Htkdbam1rhKMKldCBVp7jqYrJymV7jdCn1+/wRrxjLi640XK/Bf18YMYKMGA6Vt7kkpBJORgKGTkBQJ+/sf6hkg8U6IWghezCTk8lKsYK8Y5KuVEH8iB4x1nx6WgbN6Pq+rJzx/Ox52r8Y8kc/l0Y4kBASha8EfUNoBHAykYIV9OPsnyAM+cA3R00eUYDYGGVClLqTajzCT6IjVrGNOIr3LvEdWwRuxC8+fFKCttoJg8NGNBhnHA2gY8nOwErz/OJVnnA9jxkDnrfJG1KU5ztSBnxnAxnr1pKGwlIRlCc/TuI85P4uT5Of7PHW3bbwEoQM4zjJ5PkkknA55PsPsPbp82unKEdLVnIaJ0ewqkm8YtlQmI0qyVIdvN0ymsheXhUADL9W/F+2VtbvwoSVBZH1AYByeBz7Zx7n26uFJASrjCs4+/Bwc9U9bDo/U1GHHF3fv7B48Pu3/D79NEpJXv7ZfAex/PqkqwpKcfi3c/bAz/ABz1V1jv/wAz/S/8PVxtzfnjGMe+fOfyH26TMHhGZ4p5fryQfPv4wYr79Fp6R/W/59XPHjodDrH9f/M/1v8Ah6xGEpXxLrzkPP6p9OsAvg6yOvScnPH8AAP6hgdedDrXrHQ6HQ6HQ6HQ6HQ6HQ6HQ6uN+/8AD/b1jtub88Yxj3z5z+Q+3WQ37/w/29KdsMdxASk5f/JJ9usTEEft/mdW+vCv0xvxnHtnHnjzg/f7de9DpPGTGUZHmMiR+o31nHvk9z6nWO5IKinCQAkkjPvkY8A8eT7/AG/d1aWoKwQnB5zznySf7yT/ABx4A6rebCCnAxkHjOfHvnJ858fl+fWvkyflwklBUFZ98DgeM845IJJHjwDyUroxdSQ8ZOo4qVkrMUl+T7+Pbo04RiSKjEPK1j7t5V/W3x1pLtrtJtWhVS5rgqEakUCgUqq1qt1Sa4GYdPpFKhOTajOlPKKUtxosVlx15aiE+mlX245TLRqTnxVO9mR3rVpl+H2n9s9VqunfblAYAD19XhTJLrdd1CkqdZ3fK0+UwwiIqNJciPqcWiK6hxUvcsfxF+8O/wDv91rn/Da7ErwkI08ozkU94+vlOZWxR7cogckKfsG2KtFmrcmTpsUlNdTHfo9RZakKgqQyHkSEvU0T0ztXQrSeyNGbBgt06yLBorFHoURLQS6CATPmvqB2F2ovBD6kNpQltWcBZO8Xd+GnwJ+37iPcO5R+Vpx1NGWkpyzGTqNr44xjH0xuCyk4kD1yj+M/4kbfau/7TtdWUHhCMpxnIZpQHABKVy2q8QfY/YJz4wpWQoeCE7hkAhKiDnAUQPBGBggUKTtxznPV9RO9STj6cD6fwgY8AYGAPGPvn36oUnOOcYz11xDZaWntSOjHlKJGMXkgcEhILSNBGWZWrbbZ1xRu9y7vcam4kr8xEXKlAL+vn7XRgOqWv8on+P8AYDjrZRpkiK7mOU7zuAyBuJKCSG1Z3AqTwdvOM4wAVda36VqAA2DnJyVeBn3xjGP7em692uu1L7be37UrV2qx5Ly7ctyoGmqYD7aG6nMhSGYK5MpuHMYgx3MHdJmIbYQQf2iVYHUS+ImJ2zcymNfKTi35zVsHwl3nBV5Tpx+HtrLd942unEbu8Xin3SzJdfTyZMfPP+LjD03o3fdr5E0uoM+2aGb0qhqdAnoSn5G4zJcNaVF4UkRZMo+q2GlqZQtK/RCSpalRjElRJPknP/P5D26VrW7UKraraj3XqFXqlNqtZumuVKrVCVOfEh9T02W88Qp0JTuIzjOEk4BKRwOkk65F3Uo6m63GpEDnqycX7AHn7A/09uu8Ox6Dt+17LTnFjqR0IRkSEY4HhT/hKL8tXb56HQ6HQ6J6d+j/AKXaWag61X5bOmGldqVa97+vKqx6LbNrUJj5qq1ipyt3oxYkfckrWoIUSokJTgBSgpSAroLoP6OZd9h27Q6z3t9+nZ72UVm4ozcmn2HqFdi7vvdtEhhSo6ajRrYnNfqmQJZahTIdWfgyozwkD01/LO7VR7ALytz4V/wrL7+I9RLeo1W7we5zUCsdvPazW6ith46f0Siw6nEu/Ua24j0V19NaYeR8qxNaUhAXJdKZUXJTI5rNTNUdQ9X7wr2oeqV5XBft7XPUX6nXbluWpSKnVqjNkqK3HX5kpbjxGSoobCvTbKlltKVOOFWq0HuvgyWNe/n7+3RcpgFkll+UPTjFW/X38xAc31MN3n/AY7l+13Sr/wCILSnULTTvL7fm0tu1HU3t0lP3GigxX2VusTa9bgek1anwtzbjT8j9siMpI9QncMweLjrQpTaW1B5kn1UkELbKDtX6iFco2rwFBQGCcHqSr4aPxG9dew3XCjXNaVx1K4tJK8/Gt/WLRuvVJ2XY2oVg1SW1ArVKq1Fmpl035gwpkhEKciIJUNb73oPMpfe9SVfuf+ClO1U+LfpZob2s0OsHtt7vrOtDugtC51MSJcW0dIr2aiVm7kzZ8L14bcCiVhbtNpoamrWBMgtGS26so6JnqkJcZSyfS/pZd4bBA5Wyx79bEZTYkbEUYrY4K+kmP1sUk1bh6nD/AEQ34ey7L05v3vivuhFmuXzIXaGmL84K3wLYYfZnVKbAR6SQme6+iKtuQl59CkSGvUKEMBK+3IpSkkJAAGOB+4efufuTyffpIdAdFrS7c9HdPdErApzFJs/Te06NbdMhsoA3S4kf/wCaTVKSShfzclaSNpKUlpQGRglXem3dzGMY8akvzHFUeqIeMsqtliwi5W+pBtdP5emH28ffzft9f19vbOR+7/n+/rg5/TQe1aC9b/bV3g0eltsz2X6jpLetSbCA7K2pizbeE0le90guTUxlhGEpS8SpXqE9d3hdJUlW0DbnjOc54PPHt444P38dRf8Axm+ztrvh+HT3E6Kw4MeVdzdrpvexnnWkKej3LZMti4YjbDpU262JogmLJaadSZUVbzBQtSkFDhqRY8J+8XlVDeTF5THueBfp0NxpJpI+ZxTGc2UOfA8ZL+pk8/GB6dFpB2T93PcFSm69ob2261aq0NbiWP1zZenlxVykmSd2WkVGDDehr5QopV6ySoJV9I2k9SmfCd7L+31+ha899/fqJcTtV7Qa2zQalpuhssStadbEIjTbd0rjTciQtuOtRqd0QWmUyYkBEX1mluSmEtmTuJ/SOviCXfcEaidtV3UHs70Tt6nppVl6P6G2/QqHT7epqVkCPUKyiLIn1OoJSjY7JL7Q2LUgpVnIUxbBcX7eX7+GsfW08fXDC0NW3n29hQasqwHNN+n79Qq6yduevfbxVmqFrpo9qNpLV33XWY8G/rSrNsuyHmENuPtRjU4kduQ4y28yt1DK1qbQ62pYAWklF+upTtK+PbXe5SRS+0j4wdu2z3R9sWpE2DbEvU64aPS2NVtGpc91+PEvC2K0xT1Oyf1cp9pTsUqiBTccBclKnEONRCfFJ7Fqr8Pnu1vTQ5yqi5bNqLMTUPSa8G1h9i7NJ709SoWXV25jW6JNdVDQ9HlyIjrra5DKxvOB1n/r/wBP539v06xf+de9j7fUp83Z9E+sc3Rwsa/br02uSlXhZFYmW/c1EliZTavBdUh+O6ltxsAtqKo7zeHFFSHmXATgcDon9VtkJWCTgDP9xHt0HGfpnH262JSg84MiUfVFipKzJSZHpcbGtDVTuh1mtuy6E3Ub01O1Ruum0OlsrU5JlVKu1+otxGNy1kkIMiQlexGXPZtKgk4+ul8PDsvsnsG7TNL+3G0vUfqtu0dip6h1V5CEPVq/aq23Krk95DTjrKFFwMMhmMtMRox0llptanM8J36KToxoXqt3633W9WIcKrXppXpS3fWi1GmLSv5q84dz01EqbGhobdnPSKPCS1PMqnpRIhR25CvWQHtrn0jpoL0t9/aEeulYVgAYWQjnGcn6SAMk4CQnceOpd8MaBHSnreCfKN+fyzBHF3gfN1d2SDqD/F2vudfQ+Zq6jq8ZQI8lZ5jTcpOSV8Sx92ym60lKsqSoKz7g7v385OcnOefP7usQzMAn0/H+f/w9YCCra4lKlJ3JwSCR5BGTgjOM9a5SSFLyclKiCT5J3EZPPv59+rF0m9IYwDkakimiLFmyafOBlX2o9jqrdLeac4q6TKUWEZDLjEUePFLZEq94nGqt8tx2pNNrKQlS8eSCnGQSMeT9s84PPIHWrdkpdJ3NZBUVfjKeTnnABx5PGT+8+eqVsftggfQhedp/F+FIJ4znz9yPPHVaXi0039O4K3/zsHIWc8bT9xzn78ffeUuVfve4XVWP0/T+GettTVlqkeTyzYFRCx8V+nuqfXrD6HQ6HW3WOnExrlLC0FL7jIG4kJSoj6gpOEoO5IOQCVZPCiASchJqiXvkIQagobk/WtTaUkk5wAo7sKBVjhIzj+b5CJOTkKAAA8EHYgnzjz6pP8Mfnn26wDIbbkF9GHQorVt+pBQVKBxlSTnKcpyByCQQBwY/ueybPUiuvECjgvE1JJKN2xjfpsXiJL3Ophp973MZR4Slp03bGQVQeIrbcS+WZfcunTQbtbkEBElh9Sc+o0R6Z2nJCkrJ5OAcDcok+wGOt4zX47nCkgEeSFg+ckYACh7YypSckEgD8PTTY1ZeaG8FTbgUcekSE4wACUqJBPKh744IwcE7eNccxxScnbuWNpCy6lQO/KTnACctkZ2qVk8nHJadb4T0tS5aEv7viMZIxbMJhLbulLb/AHqUd9r8UzjUdXVJStE4tUvHA3RFKwoInvXTrW58Z1IUlY5GcEpBH8FFJI5HIGPsT56zEqChlJyP+f49NygXDOUgNl0goyVAFScgk4O4AgYJGfpUceOTws1DqjjkVr5jCsgAqHBSfAJB4KeBn6hjnAwADGO49m1tiWvL1VxxdUe40pf8bKWzqSdu7s7vVNOXGpQJEgbvHnAZeVn7rGmnHRo6b/rDCRIhOqUMlpJSFeCD6RIIGRnG1SvJ/Dt8KUCvyFpWkLQQpKhkEe/+4jwQeQcggEdIJq5M9KJICAFBYX5Cs59FaCM5GOFk5weR7+Cf8LE/+M7bieH1D9CUbH71yoxnPtYm+KoGp2yRV3L9fTVvuWYPf9E6i1vyOWqmnAAO53akEDcQHB4z9G0BCSMYSTg8g5T0x1/zfq+/hOPt5V78/ux0pF71BL9XdRtBGHUAgYBUF/iO45AG1WBgkkJORn6SQcblEDAJ8ZJwPYZPnA4z79dObfTjr6O31D03GtSm+VDVXdJLD9S1bo64b+JoQh33czj6nTnLgqvEnEEwnIpQW3F4s61eQoEkZABBGTyFjaRkYI4zz1q63S6RcNGqNvXFRqZXrerMR6m1uk1OKiTGnUqQ0tqTDU0pKkbXUK2nKFYAO1KlYHRkcb345xjPtnzj8x9urMlO7ZzjG7/w9KtXby1WMyXzNZKnFiR5ItNsiEf7uhAp4W2y6a9LVjHU05kQlGRIbzHg8gurSSN0nn7HUWOg+k9a+HfelXsqBLrl0dlepdQk1y1Ji1rekdul2Vp8MOUmvQR8y4uzpjjrFJTXm3IjapsuA+mGgNusKk/beYdQ1Np0lio06UwHafV4LyHoFQjuhC/VhvpJS6jb6e/6doJLZUDk9XGVhtMhh9tqdTZjDkebSJraJFMmNOpUhxMmMsYcBSrABUAnyADgi01Gjw2WosOOzDhsgpjQ4rYZixW85DbDKMIbQM4wlIJAG7JHSNhz05JG9PTI8iokTkkQSzzVYFKxRTFy3O+1dfdx3NpqHGUZLKSSjxxbJcU3gG8faGvvp7YUWNf1x92FnaePaiaZXlTYdq93+jMOntPx7vsJ+awiNeVHZaHpC6rcfkSKg0pMdEqW1FQymUF7XG93pZSLu0D0tt9Gmhk90/ZJWRNren66ZUWLh1r0Np7hjvtxKRTn3HIt7R6Ur1mHIkXbPaepj8FlhSm1F2XKShLrbzL7LMmJJjuxZcWQ2h6NKjSAW340hlYKXWXUEJWhQI8KSUrSFCO2udtuqHbzclc1K7N6xCiQLgqC63dvblXXpMSwrorigtblZtKZBRKqFnVmUVSPnmYUd6lySqMhEGOnctLVrbGMEnpx5RnL1RMsG+VADyJVVS8NOWun3bd43m4Y/P17YH923KxaHk3QAD7T8eprLLe+XsC0h+JzoQ/qJorWLeqWvGnVuuItW5YD8aJWqxEgR1PxLKv6hFRrFvrdCFop6Ksy2qqzpkWLFUlwPbYLPhi6+sdvupV9/D+7waZJtnS3VVNXsGoM3UlcNGnl/wBRWIialUmHkqLMd4qKItQaP0KcWvY6QhnrpBuLXXtHq86RUu53t+1m7a9YaaPlrlrdEt28qVADq9wblxtSNO25UGsNpAcjJlzIUgsrSuNFUhsukxk97Ha12c99rzNQ7fdUdQ797n1mJSqC5WLUvGsx67RGC8WKVcNRet2k+ioBUdpuvzKiC0thS0U/Dj5Zg/xD8Ky3E5b3SnxvjUOMqqUo3zLLY8YgcWmRkMNvfB/xyacNPt/cNwRIDw1WVyixGmpZq+QhKqzbLPS9/CE7i7h+GT3Zal/DW1yqqkaI6oXu1WdHL5uYuu2w3NrMmQ3TpkWeSGGqRVYQRHenR3ZHzDkdqQUx0ww272AVG1UKWlp4NSW3G0OsPNNoWxIYcSFoeYcRvSWloPqIWlR3IV9KlJxj54lWtTWaFpjB7TviIWVqZpzVNKnVv9tXeHBoNVrEbTmVBH+L2Ved5Q2hDrtguvMwmobonMP00sqStvBQ4ehj4W/xi5GndXovZ78R1ym2jdUQR6Tobr4pxEiy78oDbaEwWpdwlbTIUWnYrqa2XX0zFPMsqisutqSaG+L/AIVdF1N0T1EDOm6MwhYXFnylH01YIDHI0NdkfhZ+Kejs4ae3/bozLIxqcSiqElcX8xVscSCy4AzyXDpit6M6qC6gOOEj0nMrAwnAUhWchYBKgNw3FJGwggJaBqrY9TtiZSrzdaUzHpL8aFXH2ULe9GjLXmZMcaOMMtDK3FABSAkkYGSqXyJR6RXKZDuCmLj1Ck1SOzKp1Ygq+ZpNQYeQlaH4cxlXpyG1JUCHE4zke3AKlw6Z0yvxJMCSy05GkNraeQ4wlTbzToKVtKyAlxop3DHICsEglIJqTX7LpqMosdRuVFjVHqY4lFbpHCW0vXVXYvxcNCLpz1zX03Iso2Sc1YyWJSEqipy8lhF0qMhUeNVYTjcmm1Fv5mC82oKbfhvJK21/zSApIICVJJBScg459RteSkn6AQrBIKtisKTnAI3YJOAcA8ZHt0vlzdq1z2e46jTeqms0SVKfmLt64HCpdJcKd7zFJqSlpaFPWreYVKcZZTCWClDshLiVMJ81pdqUV+m9ZVYZWlWxSQwPT/7TTu9aHGvISQrJI2+fLVuOya85Xp6UoxwSkR5WNNF5imfVEVtCzDbvY/xK7Futk6m93UNLnFvReK20Mqq6afMUweU6QLVHRTSzWi2mrc1Es6m3DESHkMvv+tEqMRT62y4qn1OI9GnRHCptt0+hMa9V1tDhG5lISSO3ykau9kl4UdzTPUi49Su32p1RmlXJohqLWn5s+0KNIWjdc1hXjUnXAarRCHUvUaewxGmU1UdmAGFQpTrr1YmjOp1RJSza/wAupPKXatPMGMk+5deU1NCUjAKgllRIKScJ3EK3Y3ZjR5U+mVvVepuXNJoEmPKoFvU9tVPtWnFr1NrMuC47K/W3ogtKYUoQktkvj0U+qpKXDYbHX05kqKMeJQIsq/MsY/ukiNFDmqOLWnx33r4J3u23GrtuGpraxXGAcrGERiXzlwlK1LDH7wSi9elVNmoRGpsUlceazFmRXFpUlTseVFbkIcUhQSttRLhSUOJSsbSVJSTjrN6pZitsbGGkobShKUJShO1CEpTwhKRgBKE/SgYAAAACRwM7a2oYx4JT9KSVZGSQkAFSz5ISArcfYnqUaK6cYkoizROOKi1xJHgRZADVBatvXPerPSjP02EvHKhQKPf9MXj3++hda9Lb9W7dn2xjGPzP36oWhaCApOM8jwQf4gkfvHnx9x0nOqWvOjeh0WNL1j1ItXToVSWmFQYtxVBMWp12S7t+XjUykALqsmS9uG1tuGocp+rBB6VODKj1KHFnwl+tFmxmpkZwDhyO8kKaWM4OVDnbgHG1QBSpJKjX2wnKceE5/wD4jK/y8cMCQDxoyH18nSiO7Y8RqRV2+kkSOQxeNIDljyLxY31qHmA8QScEDHgnI9v5wxjJ/fn8h1pHWCrBSckcHj28+5A4P9efy6NjzICkBtPKt3GePpwc5UfsTnnHAwM+bDjCk7FrTyMhJ3eCrIIIB5yBn3GPcHI6Rz2XqjIjHVw0qacj2qRzGQ44+prNB7uOhvCNI1fiLVvk8efOP4YuuioYpUMKRu9+dhGfvg/8/n1SIZByEJBHggIB/rB6OYgNAH8JPkH004GTk5BJJ/IAgD93HXhioSRjaCkEZCB75PHP0+SDg4Pn3OddXThpQjKWnp0pGiWoIseWaafFOXIVZkPO62pF/nGQJRms/pVdFNMNtOduBnGcJx4/cRn+OerjUT6xg7z7Jxjkc5yVY8A/3jnHW/AAGAAAPAAwP6h171s7TUnRLRhHznlCJ9afl5TFBSHjBfQd7qI+pbK8F/T/AAn8cl9WWmENDjClf0iAD9uPOOPPOT78YAvdekg+AB+7P+0nrzo7S2QcXUSi70wx7gcoyPGHB9ukktRbc2+7V/6n9er0f/LI/wBL/uq62XVtaSXGlAcJ37jkcZSAPzOT9utlFSRvz77eP3bulsYOq2FAep8kcoX4yvg8+XwPTbr6mCdeIll/8yea+mfHVtDW1QVuzjPGMeQR9z9+r3VKVbs8Yx1V03a0dSE2GqVOICXFoTkZjY4b8+/SaV3nyfp/p0Oh0Oh0X1jodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodUqWlONxxnOOCfH7gfv1jPvNpBUoo2IBKlqJCRzg8gpHsOec5AH5p3qVq9pxo/YdT1Q1YvO19P9OaLHlSaled01X9WUNoR4r8kMMSvQdL8x30ChMYJTuGVhwqSlpZ0NCcuKRlK/JEBPpVtfS7r/AF6K19fQ20Se41DTjSqjgP0Hz7CCogKdKVJdSQMALSElZPPtkcEKH2P5dcufxD/iU6rd22pdY+Hl8MqXIn1KWh62+5DuuoUgPW/pXa9W/wAXr1s2rUGENoMpxqBLDLSp7C3jHcabXHLLjhQrXPv27pPjB3vXu37soZu7QHsgj3EizNU+4+tpeoNwX5BCpEas0SxlQggpj1otIECpInSFSW0TGWkRSw6XpM+2/td0Y7T9MaDpVojace2qTBjIcrtUWRKrN41xAcEi5bjqjrZnVCpSVvPFSpkqYhouBEctoLgcun4D+At53Xd6G73ehWnqVMv8sYhFGpeCjN44g1YVz/8AiX+LPbu2bTV2XatX5k4x1Y6mpz4SmpDiQOC1JW0kflGLVvWo7Ve0XTLs30hpmlumjBlz5AXUL91BqjI/ldqNcz/7SpXBcU9T8l5T0xwl5MNcuQiOXD+3eSeHAmE+VEbdgTgJAUhX4cgEYXxjz98k++ejCFkZzlW1JBJUrKkqCsp5JCRhSh9IHknzz1S616W36t27PtjGMfmfv11FttKPbtrttrAOcYzgTS30TSUayWSjy5XVyQuh64i7x3TW71vJ7jdKk5soaVtHpquRTQUnhXzfjosqivpOFN4JGR9SOf4hWOPf7ZGfI68Uw4So48Y/nJ/83H+326MyAfOfPkY/ePPXiW0ozs+nOM+TnGceSceT086UpOhcoPKVSoqn0zIMfWVRPkkpCsaQPLM7fSyEpkvZUY+c2cR8eKXPRdbjuZQopTyrKQspKFBByorwrISADuBGSOE5J651P0g3UPVuD2suWvb7LlsaU1K7I0G7a/JkbZ9+VZDaF0e2KHGCG0Cg02UXp9RdccfVK9SIwqPFDS5D/SUtOOCNwI54GMc+QTyOMcZ8+MZPXOP+kq0Gm1TtG0yqs65JtLNvakTDTbejsepFuSpzqSwzGTJd+aaMYUr03XWdsaSHFTHh+wUUuqg/xfuNSHat1GQRflasWI+XiVHkXWc8rafrgJt8BbfTPiHaLylH52kmB4jOA2ekli2sch415vgoln9ockE7lkkeDlXkfkTnHA6xer0hZcecUQB9a8Afbco/xPPnj93V+nU+XVZjECE2HZMhYQ2grQ2nJ91OOKShCfupSgOQPJHXKj6bvFKv2yvXbOmcdOI+SNv2vL9sX1hdDpZk9vWtLzZfhac3LVIwG75qkQFVeLt2hYKpFMMtlBU2UuJQtaVlCgoJwQek7qlo3RRHlsVm36xSXG1FKhUqdLgjeP5gVKZaSV5O3aCVbsjHBxr8zT/xx/ihXhzfjyYfr1vFJNRy/QG+umOi0+q9736PTYdm6S0p+raw/Dl12u6tX7adDjKNVq2luq0p+bGuYQWB81VU0sqp7VRfQhSadHLskvZWWkcwL45SfuCP6jn/AG9S6/Ch1I73u2vX2i6n9sVvyq6zVIq6Fe9j12IqXZWoVpTtzM+2bnhFTiH4MyKp1CHFxnflw6spTvAUjraoPwWuzjvxr3+F3Ur4dOsvbXfF1tNzrmpGlGslujTCoVSSFPy6rR4CIsFdFZec3uJivw2ZS0uEOtpDDYKR3cY6jHEqw8OVNBbcsX7vqqgBV6V6Wxnr8JxeEgSXK5EsBEOJKUU8oi/VA64t/hddnZ73+8LTXRap0utTLFefqdwam1WmJ+Xh2xYlAotUq9XrlZrLrrEOkxELgx4Mdcl9oypk1lptWEu4+r38Mzt4pVldrXanfdzwnahqLbXbZb+kFIrtTdW/UmtN4M5UumQvWSpvaKhGbiTVoKT6Rc9LLhQX3Eg7PvhG9uPbJZ1TsXSvSC2tGLTutptOo8cTEX5f2o0NtwuJpF16gtyY6v1Ky+lLcmkxnJSahCW7FlPqRwmZClU2BRaTSqJSYzcKlUanRKZTYbOfRjQobCGGGmwScJS2hIGPy8+etJ8tedl6YGJPGYUmOC+W5W0Yafus0Nt8mQzLlm7sqwrii/b28Mrqy80uA7jyEpJVjzgHknAAGcAZwB4GBwB0n946o2Fp61Gcvi7Lftb9YKeVTBW6pFpwnsxyyH3I6pDifV9D5hgvhtKi0H2i5sDiCo+IIGc/bx98Zz1FF8SfQEXJTKDrxbApUm9LZTD08cpt1TVR7fdpF41+BGbkRXVIkCnyaapLrgV8u980XRkxg2tbqf8AaNT5WkxkOo8xK+kkBDBQx85pXPnpy0oabPjMqOKbQ9qj4X1NR8nmiUXPUo1vXJQrrpcetW5VqbW6VKB9GfSp0afEWQMkJdjuK5HGQUpIyMgZHW7UlC0qQ4lK21gpWhaEuIWhQwpKkLylaVJJCkK+lQJB4J6Zh2Wdtie1/Tqv27Lrs2uXBel0zb5uNhTy00WgT6qkIaolu0wLMamU2DGQyy4zGS381LEic4Eeuhpp5DD4WopPCtxIBO7OSV4ORgBKcDB4IxxjjpTp68JkRQlIpM1eKLcXIyZ9681empp0yYnoHGRfFt0t1nx7Zry9cLH6R/2d6aaC9sNW0j0prVXsizKxqNrN3z3bQolH9aDcd2VKr2jZiaI9IpiGliBGevCUoyZbCY0VctpKVtF11K/n3eqQM+ngKOcg8E8g87fPHvz19tbvT7TLR7j6NArVTtim3VclAoF52kmgVHc2xdOnOoFNisai2S5IUp1uIqpmmQq9TKkGi/T6tR4BZKQpZHBl3Zfort2M6n3BO7We5TTWl2DNqjBpemXcJMrVn6nWX+s2RP8A1XVKuuFNpFxxY6HfSj3D8zFNSdZfRtUplSgNHcab+f0xwCsmh8FRKLZFYMJhq1p3Oy1NWRKMOWAYicgaM0xwphfFFHnjx8xosl9ajHbWtTJRktnCm1rcQyycgggqfcbQgg8qIxwCR0mfpDNPTQrQ+FFbd2vh3WihfD403jamImNn+ULCFPlFux7hkF5z/wCZNpZq5eghH+JbwVvvrkEMuJ0c+G52HfCUumn9z3xGe6LR/uC1G02WivaV9mWhdwO3RV761Bpy/XoMi9KuwJMGPb0FYakONLZabdS5KJUtxpox+e/v97zNQu/Pue1E7jNRWmqZUrtqPpUi14gP6vs63qekRKPbMBalKU8xTYrSUesrbvWpQShCAlIU6etHVajfgldJ9LPL72ZqvCeLQzhqQQmVJQTKR41JVpBcB4WLeOmX9DodDo/rHUmnwfNZ6poZ8RHtfvGDeUyxoLuqVvUWu1pkKdp/6qrapNHdiVqL8ww07TJTtQbZedWHFR9+5tCt60q+vM5MDqypjauHIYbmwH87jIjusJcbcIBGElOQQE5JxjAPXxR9BIn6y1b06pHyxkCragWJBKGnCzJdLt1UvEVh0KSW/mQCFqweG0+CBn7RNvepEtSz4rxPzTVqUQOoVk7D8kyrGc84C8KAP0qwMnOepx8MRJ7ecf8AnaHAyXxfjBxcI3RXuwf4w1E28omONMm/AweOLotxXu1j363x4bc/Mbf68j+zOesHbuKucYP+09epxgjPKhjGPHnrHl/9H/p/+HqyNrtYT0tKMkkRZMqbu+aReMvSx5Evr6uKY6qHT0+MmJLMlzx8UHsub4p1q+tq2v1EBeMZzxnPgkecD7fbrVdDpLKPL7V0slHl9q6HQ6vNNeru+rbtx7ZznP5j7dWetrLT6ef49ZstPp5/j0dvl3v6H+sn/wA3XgjPAk7fOP5yfb/S62/pOf0f7U/7+h6Tn9H+1P8Av6y6govG4tmfDTG/P0kmfr9a6W/tX30/5/8A7XWtVCSrG5ecZx9JHn9yx9uq4CMvJIOA2CAnzwpK/Bzxzknzkknyc9Zy0FBweQfB+/jPGTjGeq2Wy64kYBSCCrJwMDJxxz9WCMjx56EtV+XK5emn9AzdH3/hnoaEwmShCDKUiXKMYxX1cp8kjfqpZL+VuTketzAXsWvKtqFJxk4xvBG3PuMBSuThP3PA6V+hTd8RKVcbSkqwBwAMgpBXuICwnOfZW38RQOkkbbSGV/dsNhJ/LlJyOfbB++R585OFMqCG4red5UB+JGAc7QlYOVJwdwPjggjj7xXuuj+0wsjciQH2oKQ8ZKt84PY6lHae4S0da048QkH8YqSkOTPgwq2e/SsqqhZYQnLYSMJyMKVsAO4n6ikgjGVAjA8fUR02jWWvxfQfjKcG4pWpRBRjkFJJKMkpCySB9z+FPGVCrNazTnVI3JUnkABQJCQSAdqyCgqOSNwIKSrIIBLNdQqpNqBmpkOEkgpbV42jKMowDlI+oFWM58DGDnX4Y7THS32nuJ+iUZoWW8pBT5LbP+vm3PxX369lKMHlcHlg/LnCqNL9F8Z8NNouQh2rSCFZDZcUOPKVLCAPbHKlHnJ4wRyCND0ZZdNey4pxQUpzKSpRUDlKlKSAPw4STxhW32yE461K4C28b14znH0g+MZ8LP3HV59vY6e10tOUjkXhRkXnNeVzJfvnx1yR31nvO57jXgQebXpkRHjYISlaMQyKKLjx1gdDrIVFeSEq25Ct2DnAO04JBVgH+BJH84A8dW/T/P8As/8AXp009Kerfyzlxq/VErldeU809MDIFFyYT3P1/wBPr7dYRZA8rA/eMf3q6s8e2fJ9sce3uefuPb7nrOnMllSE7tw2k5xtwSSAMZP9EnPWElO7POMdK9KGrN4vqm2cfSVVrnB4L89KAkWS/MNJjH8v59WvQbWMLXgDBH0k5PP9EjGPsfv1Uhttpe5vBIGB9B5BHI3KWVhPAOM4KgDjgHq76Tn9H+1P+/oek5/R/tT/AL+khttqS5AeR4/MeNiP5eVPjN2Zejo7mUY8YyjFu+QpK6keeVB6sgBKjlddeuCG/s+YjMvbCSkvw4U4JyCCAxUGZUUg+DvYUccA446rS8y1uTFh0+EhQ2lUCnQYDriRkAPKhsM7spJCgMI5I2lJwLfpOf0f7U/7+h6Tn9H+1P8Av6GptdpqRYTIo/8AMHuP6ZovFfxz1v8AtuqSjMnElGwQPCUjnxWOsOsRIt0RV0e46dBrdAdbdaVQJ8diZTXEPJKXELYksubml7iXG1HYvan1EqAJLJddfhqdoOv1iV+ya/phBt41j0XYdZtp5yPKoUyMHVJlU2GpSWGPUUsB6NB+UZX6bZS20pJUt8gURwD/AGDrYpAVknnx+X3+3Tb3H4b7V3HQjtJaEGWqSGU9MeNRHEuUlqkHjFVtp6c9l8Ud57TrR19ru9SNVyheJVir8l3lE9uoDNP3/iw/CITT6XoPVqv3sdszTLdRk6aXLIVUbhtW2UD03Y1HZVEflLjxI65chDTst9xSvTdWuKorQ5Lp2tfpBnw/O4kxra1AuS5u2HVPciLN031joybYZiVBlltuRDpkt6SpKdk4vQwy+1w4hpDch0eqUOAJK9o27gnwFHcADjgZ5A4xwQfHjA6Zn3H9iPar3Rh6RrNozaNy1Z5Jb/lGxDepdxMNOBQcRHqdLfivEOu/KLIfElDXyjLbbbaVLU7T3evwb289R3Xb90S5Cmm7aWnDAH93J1VTlifoAq6Lsvn4E/H3u/btxpbTfg6ShKWprXFPe4/Kl6jDGpjQv1voAte5rTvikQ67ZdyW1eNHlMevDn25X6bW2XY5ylLiv1Y/JDaVBBOXQlICVK3YQogzEApwkAY4A2gYCTgBPuBwfAAxggkHjj0pfwWKJppVX6r2i96vcj22SlBsRaLHqDNUorAYDqoxp7E2eoNeh68gyPSXHD5eaSoOFoJaOELSr47ejsZiiaQ/En0/1Yt6nqwKfqZp7Hp0ySStAT61TMZ39Y5If9TDCPSKG0pXiQg9V73L8PO5bGLA0ucGLbHSLWseW7FsQURcpx66M7N+NnYN/P5WvrQlOSECMyPBMz8RkzbRCo+HPnrrZWlQSkKJAUOUHOBjGOCT54OOMHwB7X2mypCkAqQRgZJJPkn8OfpOODznPnPXz6u6j49vxvOxu916Ua3Wj2+S7hmxlVO173YsBqo0u5qK2tKBVqTOTOQzMYSpbSXUhYLK1tpztUlPUdOqP6S/8XPUClzNuqNoWHFSNr0uwbMgUSVHyoYDL771RU2SpBCfo4UV7s/zIHuvh/X2Oqae6j6rQoINxkMRiyJSoUpYmLuS4sDbfGfad7pOpoai5sqpN2VgsQ/LKmSelT6fT7vG/LM01oNRuu/rstiy7XpUR2bU7gu2v023qTDjMY9V1yVUH29xb3oyltCs+okEgkA8q/xNv0oXQnQaHcemPZCqma5amIitJd1RkpdTp5Z8kqKHVQ4IcbqFenRkuoU3OjhMNDwUhpbu1W3gl1273e7buYlOytddfNU9SErUgogV+76g9RmthBQE0VpbdMQhBAwlmKykYJxklXTV3FSXVbnFuLUd34nCcZG1XJUR9QODzlQznPPRmn2zTJM7IN3iVuDGb9vo8gfFnlq7l8TR3Eh2v92RUJT4rSRtLa8lOBrxVEmQKd8TPu/rHdDbfd7cOrVUuPWK164a5SZdZVDnW1G3svsSqfHtOTHcokOFNhy5kOQ21CQ+uNMfbQ4hwtqb+jJ8IT47+gXxIrco9h3XIpWkfdTHihFd06qcpEG2roS2d8ivWVUZDnqz3R6qXJ1NLDYYYVGET5dv1mGPlIf7PHRssu8q/Ydw0257YrFTt+u0mS3Kp1Zo0tyHU4L7S0rQuO+hQ2pKk/tW9pS6klK8jACrV2WmxOI8opXvY4lfKXmryZ9jpDt++7rT1CWpLnHy3J/MJT4lQF+kEk46+5mtpCcbXQrKgkfSQVEkAbQcE5J8YzjnGAoihTahk4OM4/POfB+xHuDg4564FfhXfpU9yWTGomi/xDI9Wv60mDDpVt61Wyhg3bRWmwpimxropLxQJVNp5Ly1TYagoNyHnHgwlhhuR3J6D9weiHc9p/C1P7fdVbP1YsyWzFe/WVrVmFU3oIkxGZaE1OIxIfeguhLyUj1vx4UUrJS4lDfPYRpSHE8smSSEPHH6FmauSN+LZhtO/wCnrQizBktVFBqjwXS3dePHSqYOccZ/eAPGfJwOvOs5avUSCUBWM5/EQPwnPBGAefOfHnz1Z6SmyZK8+BeI8eSZcLyLo45ou3Hi3/S1I6sI6kfyy8fzT7Ptmw6x+rTgeJT6IzjO4Hbg+MA7iDzz4Ofz8dbVUdsZIH8Mq/d53dW/Sb/o/wBqv9/TfKZozI6kJOFoY+oyCPqosumN15DrMdWNkguvaRZ49y/v/PrD6HWSptAWgAcHdnk84GR79V+k3/R/tV/v6LdaJWJZLMH1T6/boczHnP6fVPr9uraGfBV+eU/145B/cf7Or4ASMAYA/wDf3696HSaU5S8v8PY/h/Hy5+/Rar5f4e3Q6HQ6HWvWOh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0PHnrX9VpBIV55x7ecZPH36V6e0dSXEk+JP5f8MWQXyo5JVvi7z46M+X9/6f8Ar1lBYJAOBn8+rbz/AKW0hPq5Kh6LR3ylkAnDLA5Xj+ccgJ9+mld1fe12q9l9ofy17kNabY09hmOh+m0KU/8AM3TX5bpQIlPotDQ4mTPkPlWNzAcEcKQp0AOthXPVqj8Qv4ivxK01CyPh9acVjs87c7kUY9V7rdU2Si+7ppTqUiSdOrWq9PivUvLKZPzUtvC3FSYTbiUYbe6etj2HX7pu9HR2m3kGoBxGWpVyrmPJvDeWMLON36mG9/8Ai/t3ZzUjzjPV069PKrTjYjFSiWcWmYi46ls+IL8Wvtm7GqS/bE56fq73BVF9uPYWhenM2FWbnn1kpAjvV1FP+ZeozSVvxyyoy2SpsyHhuDC0GDuP2r943xU7rp3cF8TK9app1ojT5bFSsDsqs2XU6dTVxkh40iqXzFlgpuOpxnELblLfcSVId3tuwkultbt+0L4beg3abU6jqDGTVtWe4GvvMzK/rxqe4it3g/WCZhfqlOZkLkppUxbklC4yvnZzkMsFRVIyPTkwZcQ+c4IWkfV5wSoAcnJBxt+kfSBklKRji8/hn8NdPZM3uWrHcy1Ixnox4EPkMRlIXnKWrzZGMkYl0nLrkb8SPxk7jr7me02Ov8uOpiERiicYraXG/Hg/dxlHonWfZ1s2LbdKtWybUoNl2hQ4bUSj0KgUin0eM20httBky2oKErkT5LiCp919bh3jI2pJJMeSPBx1t9pSVZJJJOSeTnJzk+5znJ9+gpn1Ak7tuM/zc+cfmPt1dPZ9uaGjo7UI6RCMmUoBUQxFCNcr9JhxfgiUc77zuu53+4nuN3P5kp1TVJ5v8pTyo8RERtlZWvBCs8jjGPOTn7ccY/Mj8uqgSAQDwcZ/PHI6vNtNLBPpEAY53LI5z75H/J6xnhh1SUg4GMAZJ5SCfuT9+n39tYstLW0X5sUnSwYfmJRyMg4eninN5GUkdJypy4xEQyJbeK8La2eK/n1bGAc5zjxxjOfP7sdXdyT7j+PH9/ViQ5HhxXJUxao7KNoVJcG2KySVf/SHMFSQoD6SlJ2kgkHIBzYBjuCG8r5abFlhSmJcWQXIzhbzlKVAgLJJSNu0AfhUSTylhvzQJAafElmN02i2XNaqistRKGSykplt9R4rGXq8OM4GqxluvoLlAax1JWtO5Da1pTnJSkkZABxnwDjnkgDIJOOokfjOaJ1XW3sV1Rj25ZEC7r2tFhqu2uxLjSJNTpZccQ1WJ1DaafYH6zFPZPyxdZkenIRGfQlPpqS7MgKyKdtEOJDCkrKSX2/VAyVApCcYAyCrPvu+ogpSAW7tZZu+BKp9TiMIakI3RzHb9H0X2wC04tScKdQFpUShe9GQnjcSTF/iPU/b9tq6UuIziqxWJXEjRy9yjzTnxfUw+ENOW17pttZqKy/LqUlEooqWHqTA5sLy18h+XppqDHnPRF2RdofQ6tCkKt2rIUlQUQpKgqLhCkEKCwo5QUkKwQQMtvS7VFlCXW7Eu9GCFIWig1RK0jJ+pKkxgr6sjCkqyAePORJH8U7tx7hO1rue1LZu16/41mXXflxVewrtl1uc1S7nhVaaZwFDTB+TgMw46X0ttMMJc+hCnPUzvabQ/QfR/UPUOY09Mu+7oil7CzHZuauNPNNr9RX7X/HiVFQQVBB2DOCUE8Hl7uMY7bX1tGMF4TQ5VIfVEwReVPJKqTd+Qz2v2XbbnvWnpmnA5xNN1SyxYigXbJvxE8SDwvSE2rbetAqsCnGTqBbzSi5tWI9eioQPUWpzKQ9T/U5UXMqWopccUpTYBUVTv9n3aLrLqW3R6fXLuuW5KDP5di3HHjVqIlJ3qJDNWjy1MlKUKTtZfSpYSFZPB6Urtx7IblqUmnyq/Xa/Vm1BkMx5cv5so/a4wFOhXptKACnPq/afVuJO0q6hO0Hthg2tDozX6vS2pDRGUZQHzsdzj6iShKvp3ZQlRGdyivmK7vc6llxgXk4hEBYo0IW+bVkx/Lkrq0OzfCGlpnLdaBZdknkLGNV6eXEw0BbZmWYqidhPw9dMtM4VDrCaNSl1Ftpv1o8WMy1+1BH1OJUEJ+lQUAhCktgrwkjapI6C7Tt+lUSkxo1NhNMek2gBKUIAABIASfZO3cMbuQfqJV4RPS+wqVbNHiBuIgSVpQ4VkfUlPJTwVFOUjJHHBCSkJ8dOGpqCEN4/CgKB9uCVhPGfb+PSbb68paxHiOBl49KnIpUcBIwIg02g7912212seG3hHTYJflvjVHmqlQJhvytUbcbVe5ABStJQRlSkk/Qr7tq/C4AcqHHGOfJDk3CFRm0kE4UkbRwPJG4EAZ4HjHGAvkj3q425szxnOPfHj+v7npwcUgSpupFj/PHUYnEkeH28KNDfkSvv9clU10w/TH4kfa9d9SuyydQ9QaDoPq7p9VKlSr30u1hq0Wza9TPkJb7TFWpcirpgRbjoFSiNomQazSQ7Fd3rZO0pbceYb8QTvXm68WBK097FrPmd0Tmkl72LqxrreFhzHxZFtWHZVwRpVXtaj3KWmIF2X/W2H1yKTalEflS5EaCt1J9U+iiZe99EtFdVZ8WbqhpHptqHIgthEKReNm0O4J0YpVvR8vOqUKQ8y02RkMj6So7gQelHtS07LsWkN0ay7Vt+06Y2EpTTLdpUOiwwE/SMMU2PGjpISSQUNpUPAORnrEdGWrFI0SKtIyxy8FEiIYlmOCjMWukWr8yHpqSNAhH6iK8uVlZlVXTd3TZ9Ce73tu1+saLqBp3q9ZU6mTojUurQ61XIVAui3JLw2PUa4rWqTrVapFTprqQ1KiT4rGN7TsZciM+06s9aJa6aU66xrrqWlN5U+9qdZl0z7SrdXo26XQTV4Rc9VilV1lTtMrKG07S65T33EsbkJdCd7RcQ7Ur4bPYrrDen+EHUrtl00uS8U1A1MXCiBPodTlTCoKS/WF0Co02LXn2UpS3HlVeJLlx2gW2n0pUsKdLp5plYWkts06ytNLWo1j2dSGQxSrWtuBHplDgIBJU6xEjoTvlP5/xqY+p6VJ9Nr13nA00G8GqwkIRlTGwv1Jnk2BGkPyrdNjd9bxjKSMwjx5VWT1RIoKyln/m/gxqujrLUMoTtBUk+olXG5JwpOE58EjPII+x46IV1UKi1uOW6jQ6LVHVfsQqs0inVRpLeV5BRLZdWUHBACHGyk4UAcFJOz7iTtxyBnnkcn25A+3nnz1opaAoOe2PrHk4IG4+/vkjnxnOOB0Tut1y1YhUZtSlG1YxKDNGZXbnBZxpEc9npRlUZHjN+92X5Wmk9vdydQRd8vwcOz7uWo1dnDSGz7Wv+e3JeXXqFb0CnzZBZbC2yw5DZSGyhYbcbLi/wuOtpUnIPXBT3UfBkrmiOpN5N3Hq/a+n9jwpDztHnVy363UpLzKVOFbsxqllXoJWsoCVpMgqCypwoKSD9W65mlSo62EbUu42oWccZSvA3YyBkk4+4TzjPUDHxKu1qk6n2tLqCYbYkRo8xxa1JJ2yWY7p3fWo70OApUnGdm/IAScqL0e4SjqLALFv2uLRFc/lyfu2A4E6ff+zu23mgT1AizOQmJFcacVj1Wl+AWsdfOImdp+gEHa073y6RLlZUl1hNn3ogMKScAOLU2okkYyC2jac5JKSOms6o2Fb1gVeHT7b1Os/VKDNiuyhWLObrjEaGWpLsb5SoRq9S6XKYmOel8y0llEmOuI6y8mQoubEPw7vO1GsW5qJU1UqdS2X3nZeyJUJsOnmTtkrOGTIkMepsUVKATu2rV+04wOo/q3p5fFvvK/XFq1mC0yCfm3ITi4TySDtVGmtByLKRgbsx3nNoJKgnnp/2u6NeHJSw9QnFsDP+HNmI+Lyvlrnu21dhu56PHjGIyPU+IghclW7LkWL4wNOd+HPpwvVzvY7Z9Pm3FtLres9hPhSI0qUopo9YRVnkbIjTqwFR4bwJ+kk4Cd3I6+wZ+v6BVZDLNFqkSQiOzHjtxI6zuZZjktJa2KCVhCGwn6VBRASckg56+Z/+jK6K1bVD4oOn90twXXaFpBZt8X5Vp5a9SPT6hHocqLQEvqK0ekufNVIhR1bXC4856PplK1qR9KqRb8KetU1FJhwZy8f43BbTDcJSQoEhlbTf1JwlWxASpPtncOrR+ENCWrtubFonziBKVi+cOUOWKDGFJL1VPxfvYRlLReN6sQRYtVABVYplDGM3Kw4u+krUkJCVcK3pV4OcYBGcHGMkHGDn93V6IRlwfbZn+O7rCQ4URW2VAlbWCtZOdxII8nOc5ySQD9wc8D9kltsqb3qVuJ+tSSAFEA4GfPjwPB89T2E/2WAVzlqvqjTFiQZlW4VkI/TglPISvGNw4+LcNF/4sln0rz1dccEpbaANmN/P4vIB8YT/AEfv79WEsuLAUlOQc4OUjwce5B8joMteqsI3bc55xnwCfGR9vv1tVq9FtS8bsbePGcqCfPP3+3WrDV1pfNQhCQrIyRICWR5c22NefuYesSkadQiZaqOfdfd+q+7ivv1p0p3Z5xjq2l7bn6c5/P8A9OqUvKBUAB7ec/b75H5+w6wvmm/6K/6k/wDm6dNntAiTlp3qxZCklp5SimJcbD0te4/qpNbdLx+RJxy5PEz441yH7/T7/Zaeh1c9Jz+j/an/AH9W+o2I+Ef0R/y6W6mhq6XHnEOd8alCd1V/klKvJ5q/b36pUhKsbhnGcckef3EfbqtshsggcDPGfvn3Ofv151StCloUEjJ+n7e6hjyestJxX0uG3Gcf69HO13WlwZQlEJx4pKM6llHjGUvFKqV7Lnq6JzfuhY/dtP8AeR1lJmuoTsQVJTnOErxz+RAyPHsR7/c9aF5l8EbHChOP5ilAk4Gd3KRgHhON3GScZx1bQtaAcuOrJxnc4SMjPge2c+Mn256JmbSKxlI5FLFNSVWCeBBrPn39vHT/ALbb6svVqHG/CSrh+YT0zZPLHkKzVnW8ky3Xhj1HM7VKGSf5iSTgA4GE5I55Jzgnyil30GZJccnNBWCtQW2RuITuKvUSEZGMbQrBUQRgjBGFcYJ2hKwTkKBCioHH1cHBCsEfmMjg5HHWxYitO7QGx9XnyoJAOCrk5x+RP2A5POdtuNLTjHVIIRWKRcEhGlaEqpDx8NXHx03d07fqbyMdK6JUeWUrkPKKknk/mCRR4EYmWky7EnLQXFD0Tt37VBJKt+Bu25ypA+okgN598nJSQalSPlntgASpKiQkKCznBBzhWAQlQwOAQcjnhMgMqjR5DHpvxkJ3IACk5GDnO0EFRSAQMKSrOQSAMEFv182rFbZkPNNpS6gjaQANyEpWQgEICiMY/MKT9JUrnqS9s7ybi9MixnEsPImB4qr4H0y97CWaa1798Ea+htp7nSiRgCr6bOT+eqs5fxMXVYk2dTZSpTS0+U4UASQQU+x84IJHnz78dFyUlW9RCdrYWoIOc5BJ2++4ZSB5GR7nPRtf5cIP9JSSRn2IGeScfuyceBx1oHEhWUq+oH8RycqOd2Sc5znHjHjnnObG7VFloQ3EgakggR4MuQhGNDyIyfFCp9Hqmu6H7Prx00LFvyocYKDftzrN3V31pAAnPP2zx4+3VfVlYIUoEYI4IPkHHg9U9KTdGiy0jSOMJSjGpJ4nK1Uk5E/iL4QiTx5U35B8fY/Tq5+z/wCd3VWxP2/tP+/qz0Oio7iBfLb6L9OMSNfW7J37fSvveMsX2lL+Lf8A06ufs/8And1VsT9v7T/v6s9XG/f+H+3ozQ1YamoQloaPqumMAqoq2JK7oPJX36xIQslLH1eh6f5/2f8Ar1QQB4Of4Y6ur/Cf4f3jqz1puoaelIhDTBYkmTKa5klAyr91uxu8UluYq5X3qqP+nVa0oSAUr35yD9JSRjHsTnnPnxwfzxQrCvxAH94B6HQ6SChVtWP6pdNFFltPtb9ej5zJ8KgQ4Q41FU/PKVl2n5vdfF37HoP1hwhKlj+csBR4+xOSPGMggj2I6vcHJG5tPB9MBCkkg5GCr8BJ+yDgjccnq2gZOft/tz1d6UaXb9DcwNTXgSykSo5iYy02WIRQqrPJ1nS3252sr0NWUHy5fLmxsR91HPv46j3+KD2X2n30dr93WPNo0I6jWNSqxeWlFWixWmKnGrFPgoDtAk1Bbyg/RJkFLkRuH6IIDqvUDxSlKuEb4enbpT9f+56d2jXvHl01WrtqX1aNHTKZ9d22NQ7epc+r2zVnVOOR/ljSJ9MltvOL2JCn1BaRhTavppUxSkyEFA3EOIQpP9Nl9Djb7ayAVpbWgJSsoKSAfPI64ZuymxYD/wCkFs0+xdqaNQNe9VqypQbCswIUGpKdKmg4FICCsHcVEEq3AFISOqQ+P/h7az7xpG20w1AxpkWmLxoAAk8rKESsVjj0b+GfxXvNXte+NaUpfsug6vLk1yhTEyrHlbElUmyJ45PXPZrZojqB2/al3XpPqXRZNDu+0arIptQhutq2LS26ptiXHcISHWZIQopwMoUNquSMuKubswua4dFI/cjoYJOoel1NfjUPVKHS20TLo0gvV1LipUC8KFFU5UYlvPLbWul1dlmShcb0n32Y5lttjt0+Lh8LC2O/60KrqLpzBptq9x1BguO0yoNxW2Yt+ltpxxii1eakNGK+Nj4ivuNTC4465tILCUL5G+zfuF1X+F/3Q1qmakWpU5FtS3nLK1v0xqsQss3BR2HXWo1QZYlJcYcm0x5TsmFJS0l2RAclQmnmjKDrVf6/wzr7ScIamjKMJoRnONSqXqOWUavyAsePnj1a3a/izZ912sNfR1IfN9RLRjK2Scc0AYzTh+hS9RISYjsZxxiQgocQdq0EY88ZBzykjkKHBHI61i2igA5yPfwMfb3JOefHjHXed3JfBt7Pu+qwKT3BdsNet7T+r6m0SPdVvTrbZD1gXPImx2X32q+3HW3/ACXrkB9X6vkUdDdT+XCWlokrLziGeSrvU+Hb3Kdj94T7c1nsKowaSl1xdJvShx5FZsirQitr5abEuFhltgJfaksOpZdb3gOBsKUE5DdvOx73akZw0uWmgS48pN+WaOQTGKzHw2W87H4g2Wtrx2zqGnqTriSrjqt8ag+0lVD3+svHTA0qKFBQ8g5HKh/akpUP4EH8+nWdrHex3M9mOoFN1K7cdVrs02uKmSEPuN0erVJdEqqAoerErlAfmrpVThyWS6xIbejpdWy862l9sLV01pCS16m8YA284JBznBHHIP8A74IPWRGjCRKZiJKUB9baCtZOE7nAncolQASjO48jgEZ+zHqAKTijE8t4LFxjI1Xn+V9SbT3U9GfLTUY0xkOHBy+lNJ75xaddyPYx+l81ClqpFrd7ui1QuN1bDdIk6o6YvRY4hQzlIqlVtOoqMcsxnlpMtyPIlLbjpT6Le5K9/WL2tfFK7Fu8enQXtBu4vTq463KiiS9adYrcW1rlpqUNFTqKlTK25CW06lxt5tKIyZIV6YUoMl1tB+N5W6BVbaqLtMrEdcOQ2208ht0IQXYspCZESW0B+KPJjONPNLGUqDgyQrjrGptaq9vVKLWKFU51HqkJxt2LUaZMkwJ8ZxKipK2JUZxp1pQKThSFBQ59j0llttOZxjaWoyWRysu1p84btzRTVOm3+Id/pTpn8yLVnKrCqjbFBLyh7v8AD7pLMsOoS4EpW2vBbeaWlxh1B8OMPNqW28g4O1SV84wQk9ZDiAsD6sAc58gjHnyP4HPjP36+Pd25fG0+Jh2tSqerTHuhv2bSKanaxbN/Tje9AUnctW16LVQmS6jK1ZSuYd2RvKglATPF2+/phncDQ0USB3Ndt9galCOtxVaurT+rP2XXaktxYDeygPMy4TRaKSW3GKgoH1CXErIGxJrbXU0w1NOBY/ljIX2MWo5+h4fqAyXYfEelJ47lYS9LFooeQSpBUBu32Mh46+hOQoqbVtIACjnPsRgfb7f3HwR1c6hm7DPje9ofxAKfKGlke9bduqhtb7hsy7oUOPVICynclNM9CVJXVWXEbHEPoDZWoPobS4WiOpSYWrdj1RH7CtRmis4S2+vavIPAKhlA5HO0rSkfzjkdR3cbdNWowNONAQZKxDMl5SVqSuU8gfaZ7WMt9A1NpF1oGF0zlWa9lXz7Y/hSqWt0JxjCs58KHGMfYHz/ALOqPX/zP9b/AIeiWm9rbWR6dYpzm4/TskH+rBQCTnnwPOPIPW9ZqlPfbS61LZUhQyCFpPHt4JHIwRz4IPv1qaWnQYkucSy/wi/cPHSuWx3GmDPb6wOLdOZnzXjHnrf9DrXNTIqQT67JBxgpdbI4zn+f+fV35+J/9c3/APdG/wDz9J5aaKGQ98H9L9vHSV0tQU4Tf/hT6f8AX/P6PWZ0OsUzI6RlTiUjxkrQBn7cr6x3psVQSQ83xnP1pUeceySo448njx9+hHTZIeB98Ptf16Bpainoln34v+/9/Z6yFSCCkBIG4kc887Sr/Nxwk/fnHV5twrByACMePBzn29vH3PRXfnRypSvWG1IyAVAgAJGcEEoGcZJ3Y+5HONVUL7tmksrk1WsUulxmwrfIqNSiQ2EFCdxC3X1pA45OAcDkjGMn6kNGMa5Ri1d3krKectDjzhax0tO37jUiOloas334wk8Vqj72f1GulB6pWrakqxnGOPHkgfn9+mSamfEW7KtHYj03UbuV0qobEfeHkRrliViWFIP1JRCpqXpThGRkpawCQCc5xH/ePx++06RLl0XQDTvuA7nq5GCQ23pVYDzFCc9YENvP3JWpUSLGjkJeUXzGdSgsL2NrUMdaG3mJfFusEsvvWCyzy+xa+Otf+Gb/AD/7Lq2FpKMoNWX5Lv7Vfjx56nWS44VBOwEnP08pPjPlRwOOefPQmSolPiuTJsqLEjNf5R+ZLiwIrf39WZNeYitHJSAHXkZKhg8dcoVx/Gq+I1q/3BSu0/Qfs+037etRl2c/f1Kndx1wouqot2o16RVWHKVSGqegyEF5CUFdRaLe9IDaklCjg1P4efeX3YvMXB39fEc1Ku2iVBQfqOj2g7UjTuxkD1SV06HIgSqY+uKGmIKVqUh1t703HVx20qDPU47N8Fbvumnp7g0/TJAjFKyEhXkWVdvirzQS6qb4v/Entvwm62jvdN09zpXcLI1xYkiXMwikX0/vDfKoswvdB8ZDsR7VxMpN36u0W8r+Qp+LTtMdMnlX1fFUqISkRYbVOoTUuO0ZjriENutSZS0JS+4WP8XUhUYFx99PxXe+WI3RO0DRG3+x3Q2qrmMV/XvuAecfv6U1LbiF1yjUl1oPwamqnqEqmT5JDkSW/DV6UgtghfO3r4d/Zx2vvs1LSfQq02bmSyhqXeV0iTd10VJbaXEJlTavWnXZTkpSF4dfQoKdCWtyiWkqDupbCiQNvqEKVneSnbychOF8DwMbuMD6TxttrsH4XxNJdzpRMDy9LEZ1lFj54lOPUHmuuffiD+0Bud3oOh23WhpOovzGLyYgRriERc8uT6YtA2PUWehfwmNA9NryRq53CXHePeX3BiZJrMm+9WK5PqdkUqtvutuoft+0qgZVNRHiFiPIjFluEG30BI9NSAVSiFyZ6EOKEw2oEEKagQadEbhQYTazlSI7EdIbZYKkhTiEYSopGeAALpjqUcl0ZzkENgEYzgBQIVgZ4BJ55889ehtIJDSghaQAs7VK/EMgALUQAcZ4yfAyOc2p2j4Z2HadrDR28Yw1MupMgNq4v3svCZtq/D1QfePi7vnd9187W32pPTbuKygxMfTnyvxlPbPse4bQQVBKVDepOSElRI+s8YzxjJOSPOftUmq7HdihkcgK5JXsBySU5wBxg4UVDk4JPWNOGQ2CopRlW488D6RuwMfhBPPkZOPfrV1FamoTs2mJ+ZajlDjzz7jEKO1HQSp1UiXKebjM/USgKUtIAA4UT0467o6MY6Wvqz0tLSOWnqsWU79VggFepj7FHGRSyGHT2e87rutKOmfNlqSfmy42mSMTAUPn00nG/cE4syQ6lCghWFnAKvoRk52ZUrGEqwSVKKE4BwofiBJvXVfS7TWJJm6h6j2bZUSMkuOPVu4qWz6+f+ghRkynJcqVjBEdtlf05K3EEFJh371+9WBptTZ9JqOu9maV02NKQuoTYNxUuvS3IgOV02G1SJD0puY/hIR68dEMAhLsxpWOudXuG+IJoVaTci4bCU5rHd9RaRITc17VWdWvmlyD/kYlE/WTsGlxmTlSC27lsoCkLQvYOq+7t8ebbt+tLQ0GLKFnIuSlBXqJDK/NmXFF2XB2D8Kf2nRhqbqpGo2wnD1DdBlui43ijEhtQ64NRe+7thrVDkMw9RLyRGYD264LWp8636Uv01FwLj3BVGYsGS2ENpUHGylSFEtlpS0pKoptU/igaDWdMqErT/v+uOmz4wDabRve3KNftKaWlxOQmQmbS5CyAFklz1UAgKaDiUHdxhaud02tetcx56+r6rlVg7kog0n5r5WmU+IxhEOHFgxUtstMxmEtNJSnyG8jaFbA30yFLWVOALz5G5QyecHJUeefzHJ4yc9Q7efHe63HpiygF0pZH9A9m2z7fduyO2/hZ2PbRJbjbxnO7acyKKi2lGXzn6niu1Og/pAEmgTv1JV9SdENQaE+0Y0l40C8bdkVCOo/tI8pDD86nlDhJShCYJSlH0kkZV1Ra3xZdC6jcVRuHTruZvnt6XWpjTVxadSYsfVPSlTsdxxyXNoCbsVBnW4qoIkOJLNMdajpSqO6W3lRmUo4qc885P35wf6yD/d1dU8SAE5bAzwlRAOefAA9/wDbxz0xvxb3ZkrrKP3k4E4lcr+rmSPhvHUj0vgT4b0iMTt0Z1bylP8AKoihXvfsXQWqX19Ce2PiZ3V8ka7b/ct2y3vQUJIhi4rRqFAqzOd4KpC6HImh1RAIPrfiwQFKAcKddqH8ZV207RWzeWtGh1l1d7LdEkWJSatULkfRIJQhdLn3IXDSZ21w/Jzobbhhvhp9UeQWW0dfPxiVKfAktTIcuQxKa/A+h1YcTjPAOc7eTwcjJJGD4u1CsVWrLU7VKnNnrJCv8bkvP5V4yAtSkpIBPIAOOB56Ta/xL3PXiRnq3G/FvhfGAv7rfvfmxZH4O+HNNvT7fGMiQiScIjyoLu8WIBlUx0/rvh7rnu6bWesaj3Ldl4XhAbVITbD9Yri0ykPB9R/WaIi4soMNSS00FMb2yr0UKU62Nu6Wj4ZupHbnqCui6fVWvW1SbkpqGHY1Plus06fVHJilIlKjRVgmcmOqLHMjDrXyglsBXqesA3zFdHvTq+Zen1zQ7iiRRO+WJK4Kps2nJk8EISZlOW3MZ2lSiC0sE5IPOCmPb2WruhmpLU+9+psq3P5TJjKF0X1M+zbv/g+509eEHUhBBhyYjEx7RlkHzT74prr6eOluktqUQRvkqVHS7jb6mwlIDZUFJH1pAIAUcKIX9IGM5zK1oxblLjopbrbOFFlOQAlKRhLhCUpSAA2Q2ApJByFHnP1Hh++G38cnTliRQNGtWrAvenTpAjxKTcFKrLVzwULAW2+iUiuTItVQFF6L6TjkhbaEiQdzuxCOuxfRDWa36vRINdodXiVWny3g/GMZ5s7420H0go7koeAKgtpSW1b2yDyQEx3cbWU5Rx6kj6aD2iqWxwKi36UAXB1efbfiHt252kdSOqEpxiSCSsFFzguTZjF+XjyplMoMJb/pNowgIGfySgHI55zwU4T5AzgjJPSkR4obabSjATg7iMnByefqVk5Of3fYDjpvdhawWbUS23Jm/qyS42lCG5Sk7CdoBAWByoqASE4TheR9Qwel+hToctDciLJZktLTuCmHEODBBwPpURn7jPHPuCOtIbc0jFc8t+2SiorUcBEkeQ8op1B+86urq7mYN6ZkQskpbbeUZHlwvjPV8gpJBGCP/f26r9P8/wCz/wBevUAjOQRnGMjz58ffqvp3222056ZPU9fLweqPHjKQ5JZuhyYr36aOh1lrJyRnjj/YesZRSfwp2/fkn+8f8/3gqylKcY255z5yc/wx0o3GjLXgRjN08toXZSMWpGHF5f06LlHkxaqrsaavN+fqBj637dXuh0OvFKCRlRwM48E8/wAOo/0X1gutKCiVK3bv52AM4AHgHjHA/Pz1pn2fpLe78QBzt8YUD4zz4P2x+fRgf5xgjIzkZAIzjHBOf6utbKTg/UcYBBzjA2HJyc49/wB3Gc9F/skZerSuMqkyHlN1J+YDKc/S+W/flb4Ol+11ZEgff2APy+MB9G68fzOkvrqFrcQUg/QAeCPc4Sc5GMjnPscDyR0zXXCmxajSKtCqEb1mVx5G5C8j/o20kbT9KtwJ5VlI2/nnp6Fcnw6a07LlKACAUpTkgqKTgHjJxnzgE/VgbjgdM01auukThKSlaGwlIKgFgpI35WQeMZIV9KeU5SCMk4S60pQmacop6uKvgthbyGqj5fNmEz1PdgxjCM5egjHTiyfy2XIKff2XkAcX2V4Pfi8dskWrXVbcQ3BSqHclbqdSZslFcAp8aq3JUadOLFuN1Zb3yUaXPp0ObJalVJUaKtUBTbsiPuS4Obl6FrvZeorWn5/lPEuhmsOUaDbTkuoTo9WkqW62ERY892bCqjP7M4cIkMtqVgJ3LWlXYn8WrU7T/Wiu2xoBpHdGkWp+odx3JS6KaJVqq/IgQI1TcqlOW8/UYK2HbfedqjEaHFqSFTFh+VGZMIiYh9tznaT8GGyO2izLK1T74rei6zaeVGkR5Nz6dMVuo12doLLhzI0qBdNHvNttir3hb0ZwBmtKCEOUmMtTmEt1J8NyzsHb9TdR1J6fqI8Rk+AfAVxx60JZt9nlfVSfGvde06G519aG4JOkLQisvSPuhbGrj9YtoNPI+D/8Pq9+xvQmLq6TbF/Xtr5p/AurUui061KJZ92UaVKjtBNsUWqUqSVutMOxpbgR8zCCssIbaT6n1TiWlfdJvCifrWm4Zdbq36jqFKlOhurUiprUpLEaqQdgdjOOLakpKcK2+geTu+k4W3allUeg0qDYTFvRLSj0yGKBSbYcTKt+LTksJMddGqj+9+a3MjGO878y68DKW9KQ4hUtbSE/uOwKfIr6r3oO2hXoI0mDKqtNBgvXBGkFBdTXihRTNqS/RbCak2lh5K0AhBAKTdvYtpHY7DSgEVlH1kqjRIqVCkpMxlG43KLH96DRzX3ffvdd9LWYu3gLCJfzINljy4ksy9SNZUXxLo5ONFrKV5K0napaBuYUeQUocz9RSUnPGPI9sm9Gc9Jt9eN230uM4zlSh5wfvnx1qaa3OZp7EeoPpW63jKU7lbDtA2qUrJKgQoE5+rGcYKSc5x/YhScZS4UgnHIKSVDGSAPHOc/ljp+gRifNJEEjWnG4ylOUucbTkseChkRDy+VtljTeaUMeS4wJd+H2c+/nF10PnTHUpKUhRO3OUnHgkYIXn+dzkf8ArqzOykp2+ce32Of6XVbi/UWV4xnHGc+AB5wPt9utZ0u0dOe41Jy0xXSfTLlSE+QP95LykfYs+z0gdZ1JatzSCocSuUcheLfTXn+meq3F+osrxjOOM58ADzgfb7dUdDrM+U/6z/U/4un9lGAC0VRhcFfr9vPRSkavH08+3TjP1e5/S/sT/wCfqyqG+lIUUf8Aa+pGE84AzvJOfJ4wMjk84O36vb/pf2K/8/WGaa4sjcPHuSMDOMk4Xn+wn7DqoI76K5kAfWPnz4p/3jqyHYEkqPEPPHUiX/8A3ZP9P49FBERaVLG0JGE7VA7kqOCTnKgpIBwnhB5yfGOrzcN5Z5SUJx+L6VZ5xgDeM+/v7YOM9HaPQVLCFFvheclX4QkE8g7lcqwACQfOR9js0UJI28Np2kHKipeQDnbsxtx7fzSB9+QdNTuuiL67lgXD4ovyrflx+gFdH/8ACmfCXGXkJXKVt1TKykqqlCYVlXL0QGqOFAqUEkH7naCBxwEblDnPIKc45H3ynKC4+yfTTHQSRtUlKMkAnI5SkgZAHCkkkjkp3AqXGoq1AEoKgcnDadjZPIz6itoPgZwBgjac8dZaqSltOVx1Y9zvKj5wM7FnHnHgZ/PHSCfe/XRMWyo4kYSjjNLcHtWPHinCHbX5cSOlVmWUtTknu4JV4wc2gRznpC5FHktuqw2AglRSM/hGSNqjk4KQBnnP385OdDSuOEpLeRuWVndg5wQFYyrgjCQAMfTuyQrhRKnBJG5tvCAhXqI3A4Rg5VvKtxHCvpGSMnHnokTEKj5UlBUkqOAD+FP1EEn6jgAYycfn56ctrvDcwY8YjNWVeZPsKPsKh+X3ytpOps3StIEsV5fSNFxeQSFRsBPCAS6y33Ww2CNoG0j8YPkq4yfsApX7s+wz0g98SmwzLSVoB9NZClOAbj7hRI45KkqJzgggjJx0pNTqBaYcecV9SEfSBuOASckZJwfOOTyB9J8Fsl81p5RkoSpX7RC9hBIyBlYwknZxvBTnHjaQQVK6k/Ydm/MlOUyJgOQtqi55C0NCoXRl6i/xtu+Ha5h+8cZAjVSGlZXlQS8USsrKQyCAtRyPxAZB8fs8EH8+CCPzx0WVApUUnykkHHjIOOs2WtSfRUlS0+olaiN6iAcIVxzx5wcccDAHWukpMhSfq2BKU5GN25Q3DcVEhWcHGCTwByT1cfbH/wBk0YWcY8orWSZxEfN2RZFePC+OuV+87XU3O5lqQ/NdpZglSmUMOPvV4vOi6HXoBJwAST4AGT/UOrvy739D/WT/AObpMoeUP16bmUTyh+qH+fVnodZRjrCUkIyTnKd4+nB453c5HP5dV/KDAws55yduQftgZGPzyTn8usy4xqtSMr/wk8eKvlCPm8VdmfpenzYHl+v38fpf8Pr5LOsLodXgwvelC/o37sHhX4Rk8A/u9x56vfKf9Z/qf8XWrKJ7/wCv+XSjT0dTVjy04ko2lkohZSmU+p1h9Z0NhD6lJUnerjaMlOOFk8ggeBnn7cdXI9OeeKStBQ2rdlwKQojG7+buz+IBPj3z1uo0ZLLexICTwVcZJURnBOTnbnb5I9xjPW6y0uEowhrOoemK+k8qSviEiMWrJRbEvD0NHMxY3EJNoMXFR+tlyJHiwcidaJUZBxt+jGc+TkkceTxg+R7jjI89YbiPTWUZzjHOMeQD4yfv9+t64ErxtGzGfcqzn95/LrCnRVJcRsV6gLYORhIA3Kx5Uc5/LrEtPU025iRTDLgN4sSM51Vp+ZH+nSrefLNPTkRISHjXgjD1yTFRzOQ/W5fr1gen+f8AZ/69ZnyRT9QcyRzgoIz9/BUfHgBJJPHVUJO31Oc52f2b+sCtTo9MaM2oVum0OnNpPqzKk+Ysdo85Ut0IWMeOSNozjAPK3H5enDjN0TTnGQo6kpAkilbR9mgfNPRWhowlp89RZxnfg4sAZC/mLujyY+iX0mmu2sNsdvWiuq+sl11qFR6fp5ZFcugiW+GJNRfp8T0odIiIJczJqVTl0+EHG2ZL8QSRJTElFBYPMD+j1aAXHqzrt3Bd/F80yVEpz8u7LdsurqkFEqddN4uuv3BMhhSW3CIMSVS2C4hh5Cg88jcFryzJR3oaZapfFEkW127aPza3YvaZQ66qva6a+VpmbTaXqdWI1US/TrPsaG/EakXVTbccjhS244cSyiIqofsg76D0smgWhmnPbLolZeiGldJTSLQsynpaUo/5es1Rwg1CuzQltDX6yqjqWzKWMZLDSecjdXm52mr3P4nhqy0j5WhnioxnOSF3VWCAWmQS66tntvdux9j+FteO1nJ195E0dXjLJGh4jbd6ichKiRKtbioKYu4Abj6aydxSocbQQhRwopKiSofTnaCcKBJwyLvo+G1279+9oswL4tpy3dRKZHS3bmqlBDDdxU9bLTv+K1FKGUqrFJefEZaoNSektxyw67BSzJeDzD7iAklISQlISE8ggjA8clXHg7gPyz1RIkOIbKU7gFcZCsDJBB4BBJwPtjxycY6kO67Zs91y09xDT5abxjEgsZNyHwxCmsyOUjHnxD+3913nb9xp6221JwORKUCbEQyWieoxT9QsXrlX7bLX73vguXxXbN1Osmr68dk0yuOmv3Zp5Dn1h+05MVwMwbnVSEtSXI6RKliK8y3JQ0qBJqO55lcsRx0F3RaHbz38dsFaoy5Voam6Va02jKplGrsVDNWk0CqVFhKKRUmGyptVKmwK0uA1LfcWVRHAlt1hxSwW3CvoRJbeZkpTIYkNLYfjvpS7HeacCkrbdZcSptaFJUpJQpJSUkjHSTWLodptphWLjrentAbstd2OOSrgotuOml2pPmmbFnNzlW82hcViWXkTnJbzDjapj08uubRGaaU26nw1sJ6Tp/LJjEiRlmsVUV9LH2CY1b6kx1Idx8Wb/ca+lqjwlGUZSkNMpFt8YnpVrlwYxaHjyGTws93fw0ru7U7Qp/dNpHT2bi06oV53JphqrZ1fCZ9Usa5qFVlwnESITSSty2bgiNxpdOkONN/ILEllSZaU+spNrh+GbXe4PQJPd12bxYt22qsusah6L05JF06dX3GSXK/RaO05IlyahQkM7ZtKMh/1VwVNONoaEoN9dtVjaYWlqTXfiC6B3jSKdWdOLov9NIfpk2EJDkSRe+mVHkVOoRHFyEJDjdRdbm+gpCw6WW2y62VBQhz+C5Ydf7ZO7/vd7N7velzaPZbYuO3alJSW3H4kapyP1NNdZdZD0h6oUr9WylLUiOPl3mX2Un1/Rar7vHwRsNXV0owiQlq+kkREG1tBoHhLDgkI3dlm9r/EXWh2nU1N3PjLYQ0pnzNTn+0xnKEGvvGctOKEhYSZeITY8lV2uNXXYUixtR4j1o6n6SQG2bcl1elv0ubc1Kcksw3LTrPzamEszKeXIj1JqjpkvPH5mLNU4H0yIrV10eqh/wCSMGWZbYXlgMKUdjYG9aVthSFIQRguBZT7ZB4P0vO9r4XXbR3y0qtt3LadKsrV6pxlOWzqnZ0Nig1CLV4UliVDk3XEjM+hVaS8621Gq0llEBMdox3G2lJ/DwqdxmieuumWpl56kVK2F1J7TnUet2RUtQbdprjVNTddqumPEl1mGwr5GIoU1cNMqZHS0wVIQFF4hrMG7v8ABHcu2bmWnxdTRCHHUIA0iPKJKSJFhycXSqWdWB8LfHHbu8Q0TmwnrLLjOcJEEI3Wo8QJvN4cbIygRlIFjG+uO62CVJIKfxJOMpI4IIyTlJ88cYOfHXilb1pUlKiUgkpAJICMrUcjP0hO4k44CSo4HXSbYXw4dNfiraJ1vW7tUnWnpV3V2VCiM63dvyKi1CoNxORIPpO3jp7CDKVLauWNEbqc6jx21Gnz5LzipMtt1JTDbc+hur/aFrDHpOsOkdWpdVoUxyNIot9W/OjUOvRir0ZxgOTokdqoQ3mBIYalt52lQcW02QAY7r9t1tOcb0nTjgl+aaK1k83eHJGzyF9TX/iW0Mz1osiKlMQSQYPV6lrFZM2FdantD7p9Ru0jWq19YtNKoYFboEtn5iFJLjtKrlIW6hFSo9UioUkOsTYJfiNKJV8uqStwJWMpP0mezLugsfu30DsrWmxvlW/15FES5oUZ4SRSbmgxWF1GitOupFSMCB802qIioPOqaDzoaS2Q6F8QmnnYb25991LdqnaXqHC0b1nZSHbk7fdVKrThSZVYfEpxP+Di63ai09IpyVMrWtl9mf8AKMISobEoAclM+ERQu5P4ZPc3L7ZO6K2nLX0o7mVO0bT243qq5Nstm96a81Jp0uh1R1lqMzWJiJsX0o7iGDMVHKwR8opSox3/ALcbfbam5ygQRAjHkSKC5WyTLZVUigPVs/hP8cbHa9523a9TSjq6erMDUdREWQkWPGRLk2ZqqLjykvXXO2683gNuupVkklDjgyT7AbjtHOMA45OAM9GBitVhsANVKW3s8YfW0BkEcBahk44JBJ++MjrSklHDvCkFxpaUkkpWFJBTkndngkE44xwOM20KUpOVHJJOeBjgkADAHHH7+q43e8noxJpK5JHDQpHF1QtGXPll6nD3hsfhztm820NzLbxiauQIxLGrRDN8c2YoPqhkF3XJHUFM1uYjwCTIWSM7jwBn6TjBHg85zjrLav67kjP64lqOQAS+QrJzxjdwT4GAMge/RRKQfIznHB5HH2B4H8AM+/VG1tBSNv4ztHv4SpXOTwMJPjycfwRw7rIKlprXipoV5lY/0P4+es6vwb2yTFhp6cacy+XAbaK/KqXjMq8KL0ev8IV4/wD9Vlf/AHUdE2p1q/ajNU4xdNRhtLyQll5SlE7fwFvdhXCfxeSMqUck9WdiP6Kf/sR/u6qSkZ4ATkEEgAceccY4462j3WVkYaBckAZCK4LGNfpfj6nRX/YjttxZEKi3jSBr38V5D6+c+ekjvTTPUC7Qr5jXjU2jRZIV68ahPQIquQAEMvmJuZUAnB3MuBQSNqtp2pQKudiWl93NttX3fOu93bSs7KrqfclPiOEqBX6sGnS2Iqkrxx6TTKkkgg7cJD2evCrG1Jz9asD7ZCVKBPPsAQPOM48E9ET7lrTDjHixZJmwG3xR4+nirPDXS7T+Eu06dPyoqUciBFboLRcngUfv9emr2V2S9qtkhC6RohY0uYylIFUumnfypqrpGRuemXRIqvzHGeFtkJJSRjCNrkKNbFv2ywmLbls2/b8dlr0W26JRKbS222knIaaRAix0NND6vobOzklKRk9bcZB3pO0jPOM/keDkeM+3XgkrWlR3kgeoCClAzsKkkZGcZ2nB889IHvHcdPVhGLD5cpw4XOIosaxQnv6aAWo3XJ31vhntsocTSiEYyQIhePDQL7ZlJbrwFdQPXCti3vj4aTfygQVm8O2Cv0em7XC2WpsYApQU7FmQXkwUjhTCUB3ysIG7oCYQFPA8ApLqj4O7lIwcHjheeecg8c5659fiQxm9OPiS/C114dmfqelVO8q9pRXqysEx4UmtPLaYMxanQW0PtKW5GBQkSAy6n1mw0snoLREdYWlaklWVDCcnaogLXwpRwnBBwMAkADG0Jz2j+Ek5b7sprTtRgyhcCoyi4pnA8xOVNhljQdeNP9q7tepsPi7fRYsCU5x82PB0Xla1nk+WrBwpe6bQgoBVzyScqIA/qIxwAT7/AJ4x1q5xPrlPsAQB9gFrA/Px1aeWtLhQlaglOMfUc8gE5OcnnxknHgYHVyUj8LmfsjGP+0c5z/DGP49XXpEtNPW8dUuhTAYH6/m98FP165FuP9ycIReL6g9Umo5lgy+fLTeesPoeTtHKsZ2jk4zjJHsM8bjgA+T1S7vQGQkJ3PPtsICvBU5kAnBBAB2gnB/F4z1Hv3qfE47XuylyZa133QvUDV2Gyh9Wk1hqjTa2hx5I9FFaqcV512mUt/cn8QZK20S3UpcXGc3Y3260e37bV19xqGkwjcISi8pYu6UQCnw3eM0L32rs+77tuIaO3gpItmC0XWAHLUq/Txk6ct3B65W/ohQApmh1q/r6qsVt+17DoTCYb1VafbDbs2fXZBlRKDQ4ExD8Wq1eXGfRFbS058tILymm+Tb4k3xQtQ7bTOtipajt1HVGrMuMRtNNI608zptpkygpPzcytR/UTc9Tby0ZRVKk0mplCfqCYozGT34/GC7p+5+77nW/ckCw7Wrbcyks2vZbYps2BbbseHEZok+osuLW60qHEbjqLKGCfTkKU2gPtNNw0TahIqD6pMtx2Q+4srcekOrfecUTklbq/qVkAA7gf3cDFBfEfxzue8beW3203R07aSNSYsgY3Y/l8qDXjOeum/gv4F2vbtpo6+50IuovKlFfPqeTJpxhnIcscS5dHK9L+uq/67VK5dFdqNYm1Ca7LeVNlLeSlbpBIQjPooTlIO1pKUBQzjIz0Qlr3EkJAzjPuTjxyRx/DGffPVHnz0Oq8pVlKTKTVr5a+v19v0rq0dLRjpFRAAAAoKP1z4KXOMq56HQ6HQ6z0d0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh1fjSpMN9qVEkPRZTDiHmZMdxbMhl1tQWhxp5spcbcSoBSVoUlQIBzx1JD2g/FC7u+1K7KfOsXUqfXKApaW6raV+SpNatypxPTPzjLz5cRPgF9tJQh+K6pxBUC4H1BCkRr9VBakjAPB9jgj+og+c8/f36K1dKOrFEL9peEfqJno7S3Gtt0dGbGka5JHCN0e+Cmv8uvpd9k/xae1XujtS2WJ2qlm2lqqimMRazaEqdJpCGKi0klaadJqriG57e4NBlSAhRylSFlTxCJjLV1FvajJizaZWG5FJcCnIampnzjDzSwrG1QVtKhwpR3+VcEdfHDamyIbzT8GXIiutLDjbkZ11hbTqDlDjam1IKFg4IUkgpIyOen2dv3xMO8/twqsGdp5rpe6KfB9MJtiu1mVWbZkpbUcIk06WtRLamlOtLSy8wtZcC1OKU22EotXaSYjAGgoldlBF+mZF2FGL6kXbu9R1Zn7cyhJSpRK8FeHF2FHjPpMtfXFp3cvdLDLbU2My+4kDc42EBRA4zhQST9snx+Y4CxUPuas+ayG6gxNjS2kID/0o2lwoClKGSBtP1H6VKA2kY4x1zVfCW+IRcfxD9DKheN00u0Il+WbcP8nLzpVtqdguw20RI0hmuimvuqVFp1SW86gLSl4SJsebJLqC6GESvuxkMrUEgqQonYpW05A9wMZSOQMHk4znpNy1dAsnLEaKiIcqG7WK49xpotKGYbPt+07pEnpJEz6kc0F1TFbT7NEn61Iy3r/YasEOTcc4V6IKTjI8pz/78dbJjX2w1BKVTVR04USuRtR4J4CdwVxxnIHByBgZMb/pp9kpGTnlO7+rkY/hwPt1gbU+4z/2sq/72ft1po72UYceJiRJQiXgFSqFp8WV7YOlJ8N6GsUyjGqV5ajT9orkSymRV3mjqTd3X3TtsZ/XDRISVFKQpxQxnjCQPqwN2ATkEe+QCxUe5fT1hQ9NVQeIO39mwDnHJx5HBPJJweMEnI6i+vO7Ill0lVTfoNz3EUgpRT7TpSavVXCkKOW4ZkQ0OEkpRlchpPhRJwo9Mll9z/cVd+oFT040d7HtX7puilUlitTl3xc1D00oFMpM8PO0uZXKw25X1U39Yx2HJUWKiNKlPpQ6hhh4sPL6XaEtXczNPTlKLMawL4vDDjLKYtPYKc9N3cey7ftm2dzPBGjkM2rBaOTyayFfxMdT21TuqoMckU2kSX/oPL6TlK/zAIHseAFKHHnJARO5+5O8p7Mt6KmPAZyQgMgJcCOBvcUd3gEqKsnaQDztOYfNR7F+NFcttNq04sPsx06mSw4I1FuXU27L5qdMwSEreqSKDHpchaSPUCv1dnKSUpTkdZ1jfDI7wNRbOiyO9Dv/ANRI9RrLSXa1YPbLTbet2hQFrW665ATXZ1LmVaUG1rQiPKKo5aj4Z+WPpqV07Q7D3HeRDTJzG/ChVxG7eN+WkjItB8nVf6vx12Ptu41NKZCepEKRDl+VQW5Qp8WytC6elz7gfiBaMaOwvR1h15tK26o6p9TVs/PqNYdVGDIkoQwoIICDLZCwkDIdAwEgpDJbxX3od8sZ0aA6e6V6e9ulxvR4Tmr2rd3zKrMu2FMUouRLdtuxG2o8l1tth5TKnp9MRN+YbLZQGHVNr7Y/wIPh827cjl03hY1763VeWWC6/rXetXu4uCP8wSJSX2opfDheSF4DPDYJKwUhMwFn2jaunlqxrHsC1rfsm0Key0xSrZtmC5TqLTGmysqRFiqkP7SveMryFEISHNyUMpakPbPgc1Pm/wDENNEIx00lnxIktyx5i0VfqtwXGO+/ihHX2xt9jCWlzpWOpKSj7W6QA15j+tVZ1Hl25fCS7I+3GpWfqBStCLAk60USnR3atfTFKfep7lxqUy7JrdLp1SlS2GaghSVtwnHkOOQwp9SATJwzJAqDEkEty2WJ8Rxpxp+mykNvQ6mh1O1USoMLGJEV8ZS+ytJ9QKwQRwLqFH0tmMJSUZPlKSSMq2nySQM8c+/jq44ULCTvx5x9JOeQPHBHI9/Pt46nPbOw7HtuhDT0tuQlknfGd1VEg5RfAxBGOM4eqR7x8Qbnf7l1JpqaepHGJFVJuuURW41aeyez03a1YLHbjVhSIT70fRS4JrqYKJkxb0TS+7JTjSYNKioeZXO/klWJjyoq5cyoyU0acumQ4jaYDzTEdzsv/o1JWFIWkkFOMEcHcFAncFBQxjjAyM56Lc+mQ67TqnRaqw3LpVZgS6bUmXkpd3x5oQHFIStK0+qFNoWF7d2UDB9jg2t+t6ZQ0UWqLMgUx00+lyXFFx5+jRVKEFyUsqyqV6XpodXylZStWATkvmnAhpmlZ6B+XIkjGxs4jbf5c1UVQq+TdDVANZikWx/L4OMCvF0/4T2poz0Yi+k4ysnAAGdxwB4AyOAPYDgdYc4nCR7Ag/xO7P8AcOq+XCVHAPHgceMff8useTwlCfvnn93+/d/DHv0t2u01NScJhUZPlYvhqTVj6Ql7Zqjz0S7qWocGJXIRLi1G2pR5TM4wSoTzLD1h9DodZcUE+pg4/D7Z/pdSBTbaUIkZTpIhGhlJGUn1SAGpNW14Oi5P5pfTNfxD/XrE6HQ6w3HN+OMYz7584/IfbonbbXT1Y/MlEqXiIzCHFlFp5rLlQ5ce2Oke83k4T+TorGcEZ6iQSpRJACN3eWiq97w/5uEzzva+2PrV+efC/wB3nq7GhhKlKDeFDGDvP3J8FWPIH9XWT1uYbSAVqCcEbcHJ4yFg++PHXPmruJwhJZSbrHJryH1xd589dA6OhCbKfCEYwq+MSMxbI8Hihk9S+11b1THgtpbQXUELG7cjcCnyoD8JOeMHz588562DcJCVAhsI98g5wQDg43c8+PseesplAwFnknOPy8g+/Of3cdX+mfU3GpKT6nN3lrL4C/B97/p08bbYwIx1J2MqSk5MU/elS+s/dilD9WjHEcAAJUAB7BIA8k8AEY/35Pv0PQ/z/wDV/wCLrI6HRPOX1/of9Olf7LoP/wCH/wCaf/63RYqMA8LS2lvg7dpGFq2n6doUkIJwnkfTxk5JICaVqAGlYbbKdoG1IUVcqICgQok5wkqzkjHGAc9Lc42l1O1Q45I5PBKSn2Iz9KiMfnxg4IKFUp3q7klrIUsgJCgDhJJ3A7+CCU/mcnOQVDp77Xv3SnEk/lrFoJefLmo3f0tqh6aO47AlAjpnnx7qgXgTI+poqXlHi9NzuSKpMRzY3kFCMp3DOUub1EBSvqyjIwOM8fiIHTUbtp76ZJBSoJUF5WTuAKidwA3nOwKGcEBWFK8k9PzrdKTu5QNvBCN6iAAAdu7dkYJVtJ27/qyOOm73bbijLWppKc/tNqlE7VbTgpKQSEEKJI4KfpSFLAUVG0Oydz00jJaJRiOBpG4rcj7xx5UyqhVPxpstSOw1oT/NXvd3JgLXJqkLyUraBlo8im7nENFOVhJ2hJJCkgYBB3jgBH84A8HI9zf/AJNPSB9IwQk5bGFlZAKiE8qH4EkYKsZKSfcFQKxR0tSf2CASpALiM7Nq96knGVlPtyMgDGBnwN1SmWELbbIxhOdwSCpSkpVkq+pJOck4yRgYxgACe7bu7GEoReVgyLEqE8vFaMtnL+iNUPLtMXUufOMmURFSNzQfyyST5ZMSLeUkyRS9FnuN8hkFRAGSgnakjJIw2khRBxjIUnxuByOsN+2ZLO5Sm1hAP4slI8E4G9AJxggcknGRnz05CJCQ8gJ2jdz+FXB5UeClYTwB7e/59X5tDjuM4cQhQBxySokYUduCElWSfG7I4OCE46V/8XCYSIS+hLThxposoKsrweLxfWNf4c2WpD5k+RTRI9wWLfGUliI+phFaKfZay9EQwQlTYBOSAXCjgHGRvUnIJzynPj93WKmOxySM4JGFOpHPHIwUkj7EEg89LrVrZguAgICQsKxhJCcqGDyd2CkDhJ3HB4IB417NqxChKSMbU7UrCE4ABVjCSQTk4zlSiMnkeelEt/q6lLfCvTcITAoumUWrrxcVWvYiINbsOw0gEOVWyKjXhBKkSsWhjYH+JTpG3oDp2+ixj8W79ok/bH4l/v8AH8fbqluKthaFryFAHKCB7pKfxJUoHznj+IBzhX123HwAEA7fwgHYnJAySQoEnjOFBQBGAAnjrQTKXs4bQkpCikozgg5I5JIBykAHBAyPB4PSuLzphJ5GVCDSZLjxjd17BnGXym1th8vRNKJ6BEiBJfVzoIgCT9Vchw4S+iMuOChtI/ZhO4pH4hhROfJz5H34548YuoQEISgHOPc+5JJP9p4H29z562smOjaVobHhW4A7QAE/iAyE/TjlITlROfY51gzjnzz/AH8f2dLYajKMYFsQ9+OEobAAW7jRX5sRoFkdGOnqSlxCSEeRdMaKIloVQOBsxZ1rSy4FBO3lWduSnJCeTnCiBx7Z/cT1lqjhTIaKvByFY8HcT4z9iU8kjnPsOs1APnPnyMfvHnr1KcZ98/l04fI1NeGnyojIWVkUCrhLE1SQ1VDFtSq63luJNeBgiV7yFzkxX0yOf0ND1kfq6FIwKlT6fU2OSqFU4UedG3DO1ex5KxuB2qBGCNoAweerrq1JcB4V6ZOMJKdwUBnI3LwcfmQD9x1lggjIOQeQR4I+/Wu5jq6ZCOpHhzOVciVg4yfzbzfsVk7WlIOKccyjIu0TCeDxd2e/hKt0hSVFLLLSWYiP/o9PaIRDi8chhtO30wcHjdt5IxnHVeXVbS5kjadpwke4B/CBzxyPbjgZGdiWGQCdnj/OV/v686ZtV0NpuIaunCU5oKSSKByCpEZFK4CJxIo3zGO8dSNVGABgv2+tZlV4vxfvftrdqft/af8Af1V/z/z/AF9XnkJTt2jGc55J8Y+5P36s9O+hLS1dOOrpwIE7cxjGVxlKNvGz61lw/dOjSTIu3+P6/wDp1rnIqtyw2j6DjH1DjAGfxKz+LPn+HQLUePhUqZHhxUF12fNlqLMePAYjOyJC3F5V6eEs4DhBCd2VYSCes8hX9L+sAdJXfFLq99xJdiw2p9LplVT8vWqy0nY8qmqVsnQYKyVNn56Gp6M88UKWylwrZUhadyku7lHjGPyWGHKwzDlbECcjMpLhiniOG4qI6kmrRIn0k216eV/VoLqKucdJZ2wUWVVKRqTqrIcdU5rNqfcN609L7LsWR/JSMiLb1quLQt1takyadSFSGnHGm1YdUgsjZ6rxotftu08sXV/WTXCiQW/8IOtTtrmv1NTGxcWHbNMNNYituessPJkLW5JdX6bKgAhgpc2eo4uVuUynW9TadQaVFRFpNLhMQKdDbyG4kSI0G2GGzncG0IScBRV9RJGMnBhkoadUghW/bkEYUnjnjOR5JB/Lbj36Y56UHUHUgegvkSqVtkWIyy2t8QC84way1JU89Q4wr+6LOZILW6EEr0+ryqUKTmFs0VD9aqUk0+mUCNJrFZqBa9RMKj0yFKnViaptC0F1DMCO+64yHUbwhLfqtAqKoteyPthpWs2g2q166vW87Ek9x+u+qmrdhVapQEt1KjW7MqTMW163No1TdkMVGJW2mnp8yhVCJHQ9EMDZPR6jg6fNrDbNd1xhVLSaCzW6BpUuoQ42p9xMrXT0X1TGUfMzbAoS3VNzFxpS3o8e4ajLhKj/ACEh+nxW/WeVJjOGt2n02kUek0OkxEwqbb9Mh0emxG8ejFp8JhESG037lSIkaO04vCQpTe5CEBak9E6mjCYynpstOJnlw5KyGOSwbc48Zq0t72Hc9129Y7afy+YEiNh6TFCWALSeVUSl65zb6+Ddq1ozqbRdfOzC9mtBtXKBHXWabFtVyfF0k1Bfpaw7NbuO2oi237ZiSA+G36SlNWhKjutuBfq7yF01D10uPUe0GNJ/infDuu65HESVKq2o+l1vUq9LYuKahK241cocOnLk1Sj1GZJLhjKSZjcNcQbG5vqbmJ13UBaFjAKihQSSBkKIIBBPg5xzkeBz1oFwXUnKo+SrJylCXDn3J2bsZz74zzjOD02x7F2rW5s9HTjOaErBZYrGYni1Ay1ePLxL4s7xDhe41dQjdCxx64yOTwZSp/KyyeIt2nJffHwN9D9ZJy797M9RdaNEqk/Oal0W19W9NajbqIKCoECl3Gi441QUuG2kbks08qQp1nCk/MJHSNdyHZH8W/RvSeh3df132lrrY3btUqNqNSbmiV6XWbxtIWvUqap2QwhUdiU9Bmh5xyoPNuyXUfIpS6hzLaV9lQZwsHerYCCG8qIG0DHJUeAoA4x+Qx561lx2pDvO3LiteqxmZdEui369bFWivoLjEiLXqVJpy0PJ9RsKbT64cKQpJVtypSUBRMa+J/gXtO47ZuHTjweKvpxG0qVLxw4aymbPeX/CH4k9z7f3bYMiesm82uqz+YQSOjZ8tsk8ZKN8uI2MZDhK9DtT6Jrbovplq7bc752k6h2rTrlCXFIVJiTZaPTnxJSmlLjF6PJbLajHedaI2lLixnaqiUhIwPuTnGM8+T55x+fUWvwnLhltdulf0aqTUSHN0C1OvPTWNAjNhpUSgwqtKeoIloKi4uW9EWVvukAcobCQG0qclMUnacZzlKT4x+JIV/tx/DwOuK/izbuw7jPYxEhpyWseSIRttaD2PFhWPT7m/hh38+Ifg/tG9dU1Jau009VAzBSpQUKeMvFeRuq61jjjgWcnkfkn3A/Lq0ST5PXq1blFWMZxx58AD8vt1T1AHUnLkqxJtyhFSGZSnxI2nGM5SYjdKvlVtGMQD0g0XQeffx976rDi0jAOAPyH7/cdUOLUAkg8ndnge2Me359Dq4jPPPH26Vdv1Pl7gCLI1BiggWeokjh4g/cFq1pL1tPnpyIy+XJR5xM4RfCOfHn3z1c6qUoqOVHJxjwBx/DqpxGzH1Zzn2xj+0+ef6urfT0JIJGfNNZ+/nOa/j0n0tHS0rdKPHlV5k3V1+Za8vir9/brJeCwNyTgcbjgHGCcefvu9h7dawqUlJStO3cTgcHO3cPIUccEHwSR5CTkDMccRzvcA2A/i2gZwSQPGThJJHOMfketlQbQrV3yYsSkxnFB/elyWsFEdrKgoeo5sykK5UNuAB+MKSOtXt0Yy5a2nF1IhLkTkHpzEakFlVmPl8P5umLuXxDse2beeputaW3SyMJRgSnRFqUW5HE5VkCvVdyj1Bb8cmyqxO7VbY1nt9vfWe3jVy0NSWpR+oRIKakzTpkjfvHp+kH2nwQlzcGS3s+rcmbTR/UaHqrpLpnqZTZJmxL/ALDt670L5yo1qGt3D6inc3MCkKVIikK9FXpK3n1gELvrZ2b2dq120a0aKVqnxJtR1U06uC2HKhtJLFTfgyf1VKYK1t+mqNJcKkpU4ppRXlSCEAdQW/A21RrFS7S7u7cNQFTG9Uu0fVa49L7igVP1jVY1AbeCaU8phSEgxGPlZKGjFS4whS3kB+QE70dVfg93rQ2+3/YdaofMNOINeYGpHNN/mY348XH69eUn9q/t8O89x1e/aLx2up890oxjydXOiSvIRCophtprFs0Do/aNFH1434/m7spH38Y/Pzjq644htRKyMHjBBOeBngA8ex4xzg+esgNILYLf1ZAKVEnJB58cDxxyB+fOT0X69WKdQKNMrVSVIXHhFJVGixJEqQ4lQP1tpZad5BzwRnAJ4GT10NDcQNKKBA0mOpLWJWy4uoxabgFahxoPyylJRCPA+n27W3G5jowCqlxY8nEpvGApbqfSOVLpWjrWXXULXotrXRWb6rca3bGo9u1iqXrcUirihxqLaMWKXqpUn6muPIS236rUOEiOy29Nly5kZiHHfJdKPnp/Ed7o9E6jqTd0Ttx06oVo2nLffft6e+pypXA/BUotIvSv1ibJdlz37h9FEiiMOOF+RDUJYLfr7W5lfjrd7mr0KwxpXIkx9OdPTPbuePpY/UVxNQ7vqCCBGkXkw2hP6ttmAp5YZtgfNRi6ja4+44yr1uLWvXHUa9Ok1OqvrmVKcsvzJrp3uynVKJ3uK4ASkYShtCQlCEhCNqeBQ/xz8U9x3PcNbZ6U603E5YJRPQIABFSJ4wfag66U/Db4R1trttPd7tpgxdPT4B85RJK21HTeLSMZq+EetPPkuzJb8p94SH5Dqn3ngFJC1uYUQEqAICfHIH25xk4fQ/5+393Q6rkKA80VeP8AQD+QH26vGJQH0Ko8H2D2DwHsdDodDodZ6z0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh1NL8Dnvok9mXeHaIuGWv/BRqfPg2TqBALymmUQ6w+iLEqoKEZZXDlqZD01bvpwY7zktTMhEYsL+kdIQysMyob7cuDMjR5sCWzyzLp8tlD8OUwfCmnY60KykkBW4exCfjx0JFTXVIn6nK01BC/UjqbcLSkKb+oLCwUlOwgKBzgEBRGAevqc/DO1LunWHsP7d73vBchdYZs/8AklUpTsZUdl6VbDvyTkgF92Q+lxwONhTLsh1MdsMtIUVJcJat9prINMLXmlha4bVKaz5pr6ubA+De6ukuy1CTBThLLxLBHDUbQv2/mL2gnKVKz+Hbx98nH8MdVlCEkguYI/zD+/2PV5taAgDcOBznznycDyeTxgH+J6xOmoVXyA/Tz/M/j/Hq2Zx09KGmhDUlONy9UqiiriEzzyjHyH92tXJodIDY9/VTTL4hVh0F2sPIt3uj0Hr1pxqW5Jb9FOpmiFeauWkqjsqQtTSJ1tVSc20olsuSmYrWHFOKKV+OccYz7Z8Z9s/l9+oyfiCamUnRHUbsU1OqlSj0qqUHuSoVRs2e24DGq1TnyTZdzWVOkALMUVShXHJqEVaWJHqS6YP2e5suIfvh+fy9/pylHlBYk78HqKUsvylXm/5wb44H/gG6lG+UQSkGrOVX78b8Z+iPXQKRzjAH1ghPGChJKAQM5wkhQVx5UM+R17gfYeAP4DOB+4ZOP3nrzel/bIQrck+qE854ekPS8/i5+mQ2kEpyEoTzhQHXvV4bHShp6MWH7wfQojYAUIVmlfs1QcPdzm6m915oiyPLf7p9/wChQN4OtStalnKjkgYzgDjk+wH3PVbjYDRUsK2EhIUFYIA3KUBkKyFc84wDnzyDa627zO5sJbGFJzt5z+I8/iOPP1c58YHnp+2+nDUjqRlQ3p8ZU3D81pSY8WZMWjR0k1JAEUxKz7VXjzHzYeQq7TotBWEqTj8W3n7YOf456qbc2Z4znHvjxn8j9+rimfre+rhBSfw+d/PnPtke39/FKU4z75/Lo3T2upqeTjFUlKxqUcJRIWpHGzHvkz00rqaM45pgSjBqLjnOMsZ/e5mb+zVPWEX0+ySf34H92evPX/zP9b/h6uKYbONq9vnP0qOf61cY6Hyn/Wf6n/F0r0droasVdTjI8mNSrWs6eq+xeQ80XTQvR/wr+rKz9ax/Jerfr/5n+t/w9XPm/wDq/wDX/wCHofKf9Z/qf8XVKY27P14x/m/8XSnbmhosdOekwnqXUyUpEuHKWQfTxECrtba6CaXs/wAPV1i9Z7K9qGUYzv8AU5z42knxjnP7xjrA6rbX6awvGcZ4zjyCPOD9/t04yjygHFjRiLVlRSJZJPo+X6Pv1mRf39/1afrXu9UdDodDozqO6/8A3+t/+l1P/nl0/ppCk7twxnGOQfGfsT9+jPHILSQCCRnIzyMqVjI9s+2eiq1MQokozlOPAz5yP5wT9j9/4dZkecGVZGSnj6VEgHz9sgeSckcHB9j1zZuNHU1BKSQiFeWgrPjDfv8A066b0dSNStsmjyj6onAQriyZWyRr8qe+eJ1BBGQQR9xyOh0WRVduQQErPgpUcAcH6hkHn81AHjGcdZbVXS4cJSF45UCVJOPHBKAOCRk4V9vcENktprBfGz64r297r36e9He6erVnFa9x/XDUv5Ev1Sl3fQ61oqG4hKWyonj2GP4bjn8yVJCRzz1modCiE4IJzj3HAz54/u6IlpzhmRV58n+/9/TPR5r6axjaSl4JCWrVfS/Hv7le9XesaRHDycA7Vbgc43HgEYAK0J8HyT4zxnBGT0OtYyYpKLSdGSjGRUgkDZf1PcTI+SxGlPfonVOhOSEHb6YOUqTnO3IyBgJKPr25yFL2kKBCiUEdJVXLUeUhYfZIUMq9RsfWhSRlK8lIzge/84BXhJUS4UgEEEZB8jrCmQkSkkKAOR+WQcAfSSPHAJGQcpHPjD1sO86+0kDTpqEsU1g9vJXkcfTz1Hu9dj0u4aWo8CckOEc4fdq85IuPUrmyNSjmvi1psR999lvgZDmErSFZUFZAITjcTnA4JWpKlfSD0mba5sABKmSpJUojcpCFJ3ZUUnAIySSfqBOQQAnb1I3X7HRJStfoNPoPkLTnAGTgjBSN5UQNmQB+zxg56bzeemjaWXHo7C2nE5UpnPG1JAWpG08qKh9RJJGEq46s7snxBtNaMYzmZvAnI9NV/eLXmvbFSX26oPv/AMDd02ctfd6ZcakGn8vkEbvi2N5+lVVq1XTcxcMiKpDikvMkAnPqFaCk7slRUTlKdvJIwknB4BxlKu91SSPUJSeM+o22T/ABRH2/EcjzwcdCrW5LYwANyEjCm3EkDkqOCV5A3BWMKKQSrkJBClJpKXtWWgSFNqIURkAEcbR4J+/28e+cTzZujr6UtQIpEjwi2TlyYttSQ4grxBX6JRWHc9zr7EDV0xlEfmcWV36Avlf5pTpwFnmjo4yroWo7y86oZAA2g4zknlafHHAHHPjIJNtu5lnAElaB9ilH5+BsP7znb54z0n7xSNu5O7zj6iMePt5z1UylWTsISnjOPqx5x+IkknwSMeASOnPbbd1XwcY1yn4YhYA8uSypBSVOaoyx/wDFl9c4SjHLZL0vtiBIRvNEgvAODpRxcqVAqUpBJGcnIxjzlJSVnOMJAwf3jrVy6qw+2pPCivJUrxlRUVhRSE7lfUeeGwNqU8g8lwqQTnYRzkgK4P8Aq8D92Oh6hHCMIT9uDz7kkjJP+zA6dtKMdJGOnGz3bi48ZhLyNeAH9etNx3bQ1YRDk1hjAkNPnM6Af4yqgQvrM/hj8vt+Xk/3n9/WiWB6iwkcb1BI5PG4gDnnx9+et6pQS25k4ykgefJBA8fmR1ipQE5x7nP8SST7n3PSna6DqVKMipDzqv7tGXGzkLyrFBQ348t+71eDCNC0vmnLX3xh/X7VnDSw4PbOcfYf3nqnrOUtKcbjjOccE+P3A/frGfJWhBAxndxn7EDzx9unuL8vTSEPTEkxiLa1KVC8lVs96/kdIoylJOXu1fj6/wA/HWh3AgnPA89ZrQUltKVfiGQcnPGTgZBPtjH2HHVZaBc3lP7T75P9HHjO38P5f29X8JQlJUjJVuz9RHg8eMjwekW83UtwQvSYkJSiypLm5Y5UikYlxZLf26WT1BIgKqNWLdLhU9PnOLxgrNgnAJ+3VjrIVgpAAwecnOc85HHtjx+fXrRDe7I3Zx74xjP785z/AGdMu60dbWnAgHGMXKgElbvzLIRqhP0zQJcYqCyvEbCy68+D3fr/ABx1a9P8/wCz/wBevCjAJz4/L/16zCAPLP3/AOkP83z/AFdYy/wn+H946E9Db/L1JQgXGEkSbKkhyPE08I0+RHI9YhqMk+ln+Fu3/lX/AE61jiNi1IzuxjnGM5APjJ+/XiVKSMJUpI+wUQP38Hz+fWS416iyvdjOOMZ8ADzkfb7dWvl3v6H+sn/zdOmjuNDWFjOMpRjEksWKXmrlGNlxWiwT9OlhM4hKR4LFAus4cP8ADqr1/wDM/wBb/h6tLcW5jec4zjgDzjPgD7Dqv5d7+h/rJ/8AN1V6H+f/AKv/ABdFjstm2JB1PcdTUXj9/Xx/P9rv3rGB0xsYr9TKf51f9ete0PRQ423whxS1LHsVLdLylfv9RSiD7BRA89buCvcwEYxszznzuWs+McY/ec9YHyn/AFn+p/xdbCEkobKVDBHkZB8qWfbI8Hph15QlpvFt5RfcbqrzV4x9sfbpdoasHUInqZDEynGjnYJk9LGsAyvz5zlJ245znqvYPS35Oftxj8WPtnx+fWX8uk/iOftwRj+pXXuzehaM4zt5xnwc+Mj7ffonW0a1yGmcYTthm+XCBJMysuWLlVXZZ0Y7iLxpcSObVHFfpVuPOPb79FmXFGdzSQkkfhSAASNoIHISnA+rgDJP356wJDTwEYNyHooQ+h5aWyFB0pVgJUM8gH09wKtqh4G4Z6MjjG/H14xn+bnzj/OH261kpnAACQo4Kt3gkIIURjP8wAqHPO4gAng53MNSW1nt9WMT5kViyRkfLFokScFkkfzIDgwo2EdQ7nt5wP7uOvGY3lWriBIl+ZQKwfauoduzqkRNOe/n4julPqS2m6hX7D1CpkKQ4FpaqFw0tmoVCcgJUSltcpDgcSlZCU4G0bVJErLf4AMkkE7sgghROSDn3GfPv1FHZUiTSfjPdxEdl0rjX723WVWZ7KgSG5dNnT0LcCt2VKcDWAogEJUAMJRtMrLiFN+okk7lKCkp5B4VzgfcY5A5AAJxkY4L/EbQ4fEW7hScdSpJkMxC68VcmsVWVvHuj/Zn3XzfgHtkGi4cRk05OVRiy8YjRV1VAC9YDhClkg5Bx/cB79UdXCEkn6hu+3kjA54Bycj8uqeSdqW/JwkqUUkn7hJ+oj93OPseOqxO3a9oMAPys5VyLQaCVKBKr8SC1JB0xPdbfQifM1CNFVduAM198WgX+p1T1QscA/Y4/rwB/bx9+R1WhC1EhJ3nwAlKlDd5AyAEjjyScD3HuDxb+nV03AhpbML0kued3IbJAUg5VwskYUCMBIP1fko0NhvdHW0tTS046zdHFkx9QxRsg3xkogg/Wk6Zu4d/7TobXWdxuo6dRXiyjzuKSMDIwgpY0Jjz0TVrQgZUoJ4JGSATgZOMkZwOeqoMWqVqSmDSKZLnvOEJCo6FKSnknCzhKEhQA+tSykA5G7GC720u3KC2tuZc76JikIT6TDe9JRuCSsFRJQRg4SAlSQoZBOeHEUWyret9KW6TSosX09uVIZaStRxwVL+pRIx/TOcfVnJzJdlsdaVT3Gn8nDYyGovpUsjyskYQPJfhaZ77+K+jo6s9Pt7LcoJ8wlxhdBh48AusREfNttNXsvt3lylMT7qcj+iUhwwEAl5KlJCglavwBYwArlRP0lSsHhy9Et2k2/GTFpkKNGaQEhPpMpQvCc43L5Wsj2Kjn8/GD2GMAYI4A+nGE8e2QQce3AHHt1jfLJbIXswcnnd4JzxgHHjPgYA/Pp1NrorAhPIyVksm20okityln/mk37NQdz+KO4951p6u/wBZ1L/7vTjUYRHzF8LdGafHi3rDjtbvqUglOCoEZUfpCgoBCQpaj5I2jdlICQScHk5707ClfDD+LHa3d7TIqad2t9+Mc6e6rNNMtsQLE1TqkeO/Gq1VQysxW4ZeWlqM2kw1n03pDbMpKUx2+uJlrACiMK5zzyeePBwPA/Ppr3eV2s6d95fb9fugeplNEu3rwpbqYtQZx+tbduGIUSaDclHcWFttz6RUGWZCd7alONJW02ppag4mQ9m7jrdo3Whr6M/lRJBAmrzqQyndSiEr8oEheJVBVfx32TR+J+0bna6sRlpxlLTU5EXHteT0l17W+cdNjjyvXQw5HeDkV6Oh6O8jb6brZYDrbqHCMFtY2q3bikoVnO056Ims1/QNHNPq3fD8qMudCYdp1HhTMx0m5XIr7/qyI5Up2RSrdaYVWqy8DG9OnxnVqdjY39R99jWvOomjVyVf4a3eLUG2+5HTOE7H0h1HfURbnc5pBTEohUqqWzV1OKgv1al09iHHqLjM6RuYZXO+Wjoabaea38eXuxpWi3bcLajXDSazc96RqvQI4otapEhVPn3HT48WqVaayiSd7AipEVTO8Ob5Gd6ygIX1VtPift24+Htbdx3JGbEIwkx5CRLEQrxYgEVxdZ4X0fgnum073DamlzjpasbYwXNhal5LWlaC1XrjB+Iv3TV7ua7hb8uifUXqhAbrT0eC/IcL8hz0XHW3St5xIWtlKWmGWE4UEBlQQopVjqPgknyc4/3k/wB5J62c9T8uQ7Ieyp+Q4p1a3FgKV6ilrUpRUpIBKieCAR4wOOtcW1jyk/w5/uz1Q2+3v7du9bcMh5yePj8ovHx598+7dfTrp/t2ydns9voEJ3DTjHlKLcpEQnKOLplyfby/W2jodAgg4IIP2PB6HSXpZ489DodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodDodLJoBCh1HWCwIE9tTsSfdFHgSW0kDfHmzG4zg8g5BcQRg8YJwcDr6zfwQtOKWr4eNoUCtUxpb9N1K1NgoQ6lDyG4bFaj/LpAc3AbklZSsJUrhJC88j5H2l0iXE1DsiTBe9CWxdtuOMu/0FIq0Zf2Pnb9iM44yAR9vDsw0hpOj3bzYlqUwMoE+mRbsk+m0G1Jm3JEizZZWlBSg730ulIACU5URyogItaRHVBLJeU8wOJlPCPFMkvLj2XPtu7lt9SUoDFg0zGlvimMtF20e0f0cKsds1BqDyn4k+RCbWc/LpTlKVZx9JKVuJSEjAyD5IzhWeik72pM7jtuCUEknYN7yUoTnkbcpBJ4zjaBnJKjwXsutFo4PIP4VcDOAM8ZJGCcc+erXWIaWniUWVoDIllAABkSY0ioI2tvUm0+/9wArW5RzQlheFzdPs+P0E6ZxT+1ilJWv9ZV2e8khPplpxf04CioLStxRUCdu3YpODuKt307YXPjBaEaZ6uaXUfRjTuSpepFoXudQrGeSlr9ZUK/dKKZT76VT4jbiXW3W6pQFyo8lwtKLXzEdYZWWw0/0fX9edD04sK+tQ7ieU1RbBsy573qyWwPVcpVqUaZW6kGSc/tRFhrKEBK1rJO1BII65gdJXkd4PxGNatdKVXhSrR0f1M071WsRmlsRp0e9qHqt26wLUq9t1puNUkGK29GiocXIcVMQ56EgpZKHmHFu/ZdDS1u4aOh+9JBlKXqiKI3R4RqqkcrMY6inxl8W7vQ7Tq6OpqciRKLpocQQVtDzF88kPFXaTZ2VVDVbQturPNBldUoNAqzjSlK3MqqNHgynGFFRGPTW6WwQlPKVAj6UhJgefS0hK/wASVK2gg8ZwT5AUfY+Bjg5IOAS8w8hsNMNoDLTTSGm2UI9JCWkNpS20ltP0pQ0lCUoQEpQkJAQMAY2Le1xIIOCM54P3OPOPt7dXft+3zjAjH18YikphKX5SwkiGbuiP7t8sPK+63z87U1DTs1HncrAZfaP7p4sq33rHWQKkhJ4SMe4yrJ+2Ds4/PIOfy6DlRbcQUFAwceVLI4IPISlJ9vZQ/iODhek3/R/tV/v6svISnbtGM5zyT4x9yfv0dDUYxNOLIjk4pB82o2Lm3og3kmR/dwv2ameM+2p1cWrcoqxjOOPPgAfl9urKlZxgn3z5H268K8gjHn8//TrMACRgDAH/AL+/S7dbs4mnpZihcvVFERAsE8FtNjWKynnNtk5ZKrgytrg+r4CusDq437/w/wBvVxxtIxt4858nPj7nqlf4T/D+8dY22nIi7nxGEZyiNeuicZFjcaTyjd4OgNl9anodXXiS4on8v+6OrXThr7mGvpwIxkZJvKselAKW/wAznFV4bwtgNEvqGP1p6HVxtO9WzJG4EZH5fVyPcceMjnB9sG30OjE3shjI5RcSL0Sz3LMl/Uz0PR7NPs0tPs1719OshVObWSpSsk+ThQ8DHssDwOqf1Yz9/wCxX/6zq983/wBX/r/8PQ+b/wCr/wBf/h62/Zn/AAP/APO//rdIJbeM5MpRkykqpqSBXK0TA/gHTwDNa424P3ypKf6sFWf7OqkVFSM+klsk/iCiV8DwRtUkjyc5B9sHz0Vfno/9JX/2B6oXUGUj6ApavYY2jyPJOSOM4wk8jBxnPVTuxJFcZPjyY9nOQ/y/o9W3Dfw0knWnyj7x1G8lNRuXs+Kff6NHBNVeCTlLbhAOCAc55PICsH2wBt/fznrBcqs1eEpUEEK9k4J5IxxznB5GTlSRjbzksqqQydjRI9ipYSfHukJUOD9lcj7ZwLCqi6gAIAQnOClTqthBySACCAo/fBHnjz1tDt0Bf7uLdVdFfpS0/oH3cdHw7zppxnfihGTa2ZflqlPlZeP06NseuS2XEKU8hxKQoEHAJCjkjKVAnnwSfpGcA56NcS5VOBKFPJbXz9L21WfxE/tDg8Afz9nkJTuHSSCotKUAsKT/AJ/1KHv+LwrjAA2pPnnxnrYofcGPIIA4UBkcnB3JOCeM8KJGQTyR1puO06OoBPTIS9liV7LVjeXNtg1gqlWh3Plcmwx4t988oy4yDH0z+8JR0tEO4ErUd6kuJSQF7FBXkq54GU+RggFKwkgEHJJjYlsSUpU2sfVnCVYC+M5+nPPAJOM45CsEEBCokt1JSUnbuzk+/wBO7yfPIyDjB5856MsGpO7sqIQpOP2ic++48pwQfCQPsRu8jiObzsxFXT9KHgyUY8e+R8U/bqQbXuUv7uDF1CceRWGq5XFW24l0xG7u1tVnodFaLV3ztaVgqOdqiNwwATg5OQAEjHKiSSSR1uIsxTqw04n6lbsKTwMgFWCn2GAeck59sH6WLU2urpXyBAvD7fX26d9Lcw1a4ki2lxRKvHkfcL41/DPWx6KVyUliRHKg0CFJUgpSEjCiOME+CocAAY4OQcjabesScgriugewB/gCM+48Ak/njHv0NrrT0dfTnCTF5xGlMLWa+nn+nv1jd6RrbfV05AkoPkMVTecYq/b9b6ZJedEMaS+lxrCFKOcgp3blEpSCAj6gAQVJGCFHKsYT00+uREM1eShpJS2tZWPGEnI3gAqztBUnA44IwCRjp+V8QQXpZWAoBKlZAAJUshSBuP1YIJBxgDaTxv5Z/d8RDU7a03yUDenfwdhSpSdxOB4Wc5JJyck466J+Ft86230F4y1JRgKUAcSTJy5IqRsAZGQeuU/xA7NDY7nV1NPHE1JHnCy5MWN0qnG78lnKm01VC3Y/a4x/mf8AH1cRG2pCd+cZ5248kn+kfv1mpwV5AwCTgZzgc4GffH39+rhGQR9+rB2+hKeg8JcSDIjp8RtrlXJli2VZsPPVPO30ZAMMGa5S8/wl9/r0XQ8vBBOScYOBx9+Mc5/s6oUtSsbjnGccAef3Afbqp3/KK/h/3R1SlClZ2jOPPIHn95H26MKq6C8/pfSKJACdRjYN4KsPfFfTFX/HqourIIKuCMHgeD/DrZNJ3bucYx/bnofLvf0P9ZP/AJutl0bpaeovKK6MoflWF3yEcSo8FeHz7db6GkzmSlpumaaJFihNbrNR/KxFKkN04860ekMAgq+6vqGOeOM/1/l4yeOh6CXE53HafYjng+5Cvy9usp/+Z/pf+Hq425vzxjGPfPnP5D7dZ/YUCRrP39A1nH73+VdLZbbbsIJokePuSRxgtjxZPjLfj6q9a/0m/wCj/ar/AH9DKAAkA4/LyOc558+TxkfbI62nVncck58+eB7dHbvcMYxgqGpyJIckAPFyiW2GbwqIgOzp6EvzaEE+3p/+UH9H2z9XrBcib8ftMYz/ADM+cf5w+3VlllQUAFDCjjJTn8IycfUPv5P+zrddY/SHXhLQIjPmT5V6SPHjX3btl9vH360NDQIsXTsfHqnjy35zmnP0r36xHGAlDit2cJKsY87QSPfjx9utV1tgrLDqcfhbXz98pUf4danrTRiDNouwUAsuUjx9WUn62t9Ea2jDRlxgV9crf0crWKxeOrRUCclP9p6uAAeB1R6f5/2f+vWYx/P/ANH/AMXRehDUiznrQhysYyI6ZK3kTbgXbZd+f59bQgas46ZJiS5W5aqKmFPpXnqsQ1LGQcg59gPH+lnyMf8Ap1iqj4UobgCFFJwCRlJIOCSCRkZ8Drdtf5NP8f8AvHrx1r1ABu24z7Z84/MfboncEtUTBKKpLiMkCVQvFCp70Oa6M19NLNGPFjJKFeRYZZyQQzZV5PcovnZg48+3n/b14pCk43DGc45B8fuJ+/WVnDmNuN/87d52p+3tjx7Z89WCtBABb4GcfWeM8n26Qz1XUkJpwgAFaYRHzmr83h+weK6TRnJqoqUL6orSPhsCpCU2+b4uHKDQH1BYOPukj/bnn74P7j4696HQ6119eWuxlKISjHipecqY9gtry2tvgFHbJ6nz5Q5LGUFkUfufltCymT4q7pvHWQQSlXHATk/kMgA/1kf+3Wvb3OOyFDALTLhTuPB9M52+BlSiCoAqHAUM45Gco8HAJ4JOPYe6j9gPuesNpKVLlJSAfTYVLfPrR29kdkhcpRD7zZOyOHnkBGVOYKUgbQejN9r6GnMNScSTDj5pLkOX2q7P1r97Mt7Ppy1d3owgPOU/Q0tthijB4F9qabo6iC05tOvXn8bPVRqhQDK/UHaxbjNRmDH6rbkmoICmlSQtO0gzFq3fUF+ir+kB1NO7oTfjy0gJpjaMFJw6pZHJKSkFYJKjjOSFDOMlICeo7vhIR1ay94PxCO7VaQq165WKJorZEiI4l2lSYtDaDqZNNJDO5DSI/qTGkN4jqlRkKed+lSugMIQDkJTnk5wM8+ecZ9+uLPjrQ09z8Rb6UU4SaX1FvIJBkuCcqbyAeJK+oX4RfEPfvh74R2W3f7uf5tNWWYiV4kZONOGlfcvpkcTtzuZxIM2bGj8qyhBKyQPwkLScJJOCRzwDkgnHR0pnbTSUPsyZ1VqDykJKVNIc2JBWfr5JKtpA42bD9tuenaraCgkA4Cc48nzj7nPGOqPQ/wA//V/4uoVp7PbRSXJie8eKtnhJF5sJZJeKc2ti7r49+IN5Ahq7viCYIr+W6/Nyb9/K37vSV03Sq1oDbTLVMiqSgpJKmgt1akZUlSlEfUQr6sqJOPfgYUCFTIkFptmJFaaSkBKfTaQgHb9glIAwftjGBnxnrdISUjBVuGABwBgD+/28/brwtoUSSMk/mf3ex6U6bpaNkIBiuZmUvHmyNXRdAWeHCRvdd1329xudzrapdhKcpRv68VP+hWOrQaKVJwvk552+OPsT0A0SlP14xnH0+OfvkHyP4dAcJSn7Z5++TnrI6WbnTnt9PR5Aas2VvpUNOU845RfmQ1NPxXDg+WcqQyUr6/Wj2v8AzH+H8XqnfyElKgVZxnbjgZPhR6oC1qGQ3kH/ADx+73HVt5QJKSnkYwrPjOCeMfw6yU/Ukq8Y9v446TGnLhzICe9yoPTOYgSFuEZP2YJVyOtUoFPNGf6eH3/pT0AchWRg8Y5z+/x/t6GQOTjA5OfGB98EHH35H7+h1iqV6uONu3P55z/V9uswhLcakY6enCFFcYXWOUrXUnJVyWycAVQHWOBMlFBjISQ5KSkpfD7/AKvTA++X4c2iXffp1Gs7UGTVrSu+2C/P0t1dsdz9SaiaX1mUWk1E27V0BanLcrEVhuLWLYeU3GnoSgqloIUlfLzqxo7TuwNihaefEM7M7A1i0ltFbtN047wbDtqq1uj1emNOMIYqt80Vc56ss3DGgIS7U34jKoTnyEt4ySpKljuE60NxWvb13Uedb90Ual3JQqmyuNUqBX6dEq9BqUZwbVsVKlTW3I81spUral0FKTghJyrL/P8AbNKMYbXXnCAIxZWAtvlyS+wMU5crpi3R7F2vT3ejvP2OEp6U7YxIx5Wx98RK4jdK191648bBsH4b2qtDFyaXaKdtNfpH6nYpMiVHpEYvNyHUrW+l6EX/AJmK5EQgOqS+2NzbqVKcbAwTzVezXslnxxAqHaPo8/DlkKfjxoNWpRdCClSApVLqcBUltBKi2HAtSAXPTW2XCQ9Tu/8A0dbtK1sqtT1H7dLgvPtH1YfU/LD+lb7qbGrk11YcWa3bHqJ9Fb7bTMVyRDeKfR9ZSYqFLWrqGPUXth+OD2KwqoirvWn3V6R21EemP3fFuSjtOQKE2pSHqhOjVSpx36O5hEl5JkFgONs+u4vDCghr/apaWqLcjiC2uVfBa8bLpCmkMyera+F+5fDktZ2e77RtdE1CBDU14m4YELX5cSGkQUqMuLKLgfy0rZW/gz/Cm7oq1SNEYFlXF2k6235SrmVpRcdpV+p1u1bor1EhRJc2DItWurdYYNPaXFdjBD05chmbMAciBpn1+WL4mXwZu7P4ZN41FGp1vSb00bkVd2m2frlaNLkPWXcgytbKFlbqnaVM9H0y5GmFJDhcQnJZWB1mfCsqGu3eFqrb3dvqVpm7phpjozR7vomlrlSiS2Jd03/clMapFdrcFMj5cGmRYcaP6T4bdZlKlpEV94KUGOi2tT6FqHZ1Q011as21tTdNauwuFUrQuqlNVSHKhvJWxKTh94IK3Y7r7IDYQ4C624HVBpSHHSHdWNXBjGy2qafD/hcjSRxi/LUN+LPw3/4juv23sgO31GfCUIDGVMaiRJR4lEgZW2UMQb+MqG1HlIyDnGSkE44PG4+Dx/V9+qPHnrui+JX+jAW3frd0a7fDbrTFMlp9apVztxutyQl92cUrkVRiyaoVqTBSzt9WLSZbTiXXHUx2Xzl19ri31k0N1e7f7ynafa16d3Tpre1PedZl2/ddKepctsxylDhaLpLMlKVLQFqYccSgqRlQ9RILxobmGsCIKXxUsrznwmFspotiWHVIdz7R3Ls+4lob/by0y0hqcXjKq9/BhzfGmyrx0kvQ6HQ6U9N3Q6HXoBUcAZJ/9/frzodD/f8Av+T0Oh0OqkpUtQQhJUpRCUpSCSVKISkADySSAB7kgdDodU9DoyXRbM61JzFNqICZjkCFPdbHloTozUltojOSUIcH1YG7PA4IBb6wN/1/p1gSRZ4f/p0Oh0Oh1nrPQ6HQ6HQ6HTwuxjR2sa5dxNh2LQoqqhUna9RqsimssuSJc6NSanHlzm4bSChtchqGh59CXn2G1KbCS6gqCk/bd0+p0m37CsejPKT8xS7Qt2mySgApVIg01mO8U53fSXULKcEjB+2Ovlm/onmic7VD4qFt3m7TlVC19HtObwuu4t6FORmlVGKii0tT6ADu/wAalKKfOAFZGFZ6+rVHbSkbkpCEJy2yhJwlLaSeAEqIIyfByBjKeMYR68YRn8xLfKezgiLd4zjFDFTK2u2qRhNQSwBDPul590arAXec1NyErzu2oxjGVjnOfGQPGPz89Y0uUhCSApso27lr3jCQDnlWcJxjJJ9j7Y5qlt71oCSCopP0ZG7CcnITnJHJGQOCMZyoDpkfeN3udu/ZZaMK49frtg0N6usVVVmWYua3GuS+arSafJnik0qKfV+ZYmFpuOSgKUlalLUhRbDS0WozijpwAlXGTLlUsP5aX2fIjdnjpXE0YhqyaKs019/BSpeSz+g4tonxXe52u2/ZUDtH0cpEO6deu5TS3Wz9QUF2Uj1o9nUayHxNq7cWNHnS5rNXXL9GlNIZitzZUF1hyZEUltTrdvhpdo9kdoHb7QodDbuj+XmottWLcWqirtqRqVYhXXEttmK7R23VMR0tMRFvyVBpBUUtvDJP4nIwfhK61aqfE57v+474l+rbiIVDtJhfb/oDR6THdhNWja0CoSqhVlwpSnFpekVOlyo0SqCMZsduXJlS25YclIix+jphhBSWmQGmW8EJ5JKiMblcgbiE84OE8BIwSerZ+B/hq4Hdt/A9fGWgDSx8K1fnCNYVrBmivxE+JNDX1p7PQXjFYzHzCQRMnm7WyRSMSqvrcKeUVBSfpwB9lcjfzyPstQx/txjZdafrJjuIb37zjO3HBPjdnwD9x1b2lphLXjBkx0pRjGNZq5RopfFefMgFDwVNp76WpKMNSOnApCYsaoX1MpSu0AzGrfN11n9eeoUE/Tkcc5x/sPXvQ601tL52m6fLiKXi7psPb3BwjivFnSxBw9Xy2olKiMbd3HBzkY9j/HweqsH7H+o9YCqio/ha2/f6wf70f8/30/rBz+j/AGp/8nSaXalbFiZqPKLWVofNF4tX6r02y3YNcJSDwx4h9aOUxxnyf5ZzlIcVj6cY/wA5P+/rHX+E/wAP7x1r/V2n9kPTz+IZCwcZwfqTkeTnnB44++eUZJOfP5f+vSnW0JaOj8vSgSJEokeXFiSHlJZSkPql45ZvydKttrfOi+nixq4+xyZVTyb8ZwV4z1hP/wAz/S/8PWP1sOrfpN/0f7Vf7+mvT1SMSKOPcpu1feq/r04aeqRiRRx7lN2r71X9esPodXQy6fCf9ZP+/r35d7+h/rJ/83Ulhq6U4kozixbpuvCjhp8j7dCz6n8z/r1Z6HQ6HRnWenDb0f0k/wD2Q/39Dej+kn/7If7+tHuVkHcrI8HJyM+cfv6G9f8ASV/9kf8Af1Xn7If43+XUl+fPFRh4zl82+PtVfXN/p1svVc/pf2J/3dUEkkk+Scn956wy6okEhORnH4uM8H+d1766/sn+o/7+jTSrwRPrQH+X+8P2s7R3kyVaulpxi+ZaYxY0PmKy528TzHjnz1ldZ8V1bbjaXc+mkOBHA+hRyon6QVKzggAnH1bhwOtB1fD6s8hJH5ZB/ryf7utdTRZx42Ij5Mj4EeRTl/Ux75N0t/PTBmLMu5QiVIVwxZw4lUJcuWX09HSLKwE8hRAUccbhyRyARkc+cJznIAGEjdNuBwZGP4HPOT+Q444P3yPbpPWZuSkFJSvn6kHAHB8ZOfHB5+/tx1t2qk8SCnACTyMYJ3HJ+rcVZ4Izn3PB4wz7nYybePFPdbKvBhbtv2x7v1d9DvQGnHVBJMoxofEA5RM2ERHikvT4kCWpsGaFKQ0UYUQvYdwWFcKKgtI2qRx+HIIVz44yaYkvlAJy6N3JCQk53+ySDwkc8D2PIOSlsCYpSkLIO4YUk+OCknkg5BA8Hn6ucnwDZCkqcSgOAKUrdg/Vg4K87iVZ8AYx/HjqM77Z0ysDFvv5tUXKPufW6+0p2u+XjORZrYtoJXJ9KRaHyRkYz+XKKjsTElLaXVD1Fb8rJQlI2kkb+U7cjATxycffq8880ppwBaVAoWFFCkrKQUq5xuGfyGQDg8j3KrEoAN7ipK1bsKBJ8Zzk53DPgAA/mcdXXX0M43biT4CQCcffkjj92f7R1H3aeuyxtQASxfH0Dx/p7Mh095FhcmMiqlcqlFlYRaPZxyzypzhekkvVpKpErP4VKKduMcNt7vII87scYxj38dNAvaKUTFOp87VnwSEhQJQo/UeMHB8ZJ5IOB08C8HQZL6gk43BwZOCQ43gA+cEbc+TnOPbJa3ezjbrjrKRhSwpRcweQBuwQVc8JHskfYZCiu4/g/lx2sZLESMbxTyhEI19U41+nixqgPxI0TVdaSKC2il+JPhLo5e9JKSWxDpDCMHGc/n16lW3PGc9euNraVtWMEjI5ByMkZ4J9wfz68JTsKQkhZI/abvAyCQE4xyARznBOfsOrWJy09TlA4SJNGHiNn712A17tZLeufLxZ6vpSZ/RUP69auoEF/wDc2kH9+VH+4jrLhNFKApacEZ2HP5rCuAf3eR+7q8qOFu71cpznHjnZt8hQP9nVxSQkJSkYAzgZJ8nJ85Pk9OErh8zWlC46epKotxZSZgSLinE5KJeQpxfSeOnKWqznEIxlJiWLJMQlVIHFXySJg0Bmven7/wBh/wB3VXVpakkjajYPf6iok/vP9wH3yTxijoqO+n+/pxfFAsa+t/nH28JX39lPV7en7/2H/d0N6fv/AGH/AHdVNllakpLQGeCr1FYzj2BPueAM+/v1aUjahC8537uMeNpx5zzn9wx0Wb/VumEBxVjm7fbUT918/wCvWLzVJ+tff6L9HoFeQRjz+f8A6dUdZMhtDezYMZ3Z5J8bceSfuesbpO60tepyVaosBoXFRx5XoDZfXoOAR98f2dedDodYVQFxEo+xbKv5yXP1+ldZ6sra3KKt2M44xnwAPuPt1T8s2fxjfjx+JOPv4Vznjz4x1c9T9psx/HP+bnxj+Hnq51nlIrKYKrDX6met5M+JCVMWIgkUT29vt756x/Q/z/8AV/4uh8s2PwDZnz+JWft5Vxjnx5z0PX/zP9b/AIeq/WWkhOzBV4G4c4z+X5Hn7c+OetrkZnJjEFU4tB7oyiINeUrz1rpbX5Uz5WnU5YPUSkuSokpSf3qx5v8ATq9g8n7ef49edVYxgfzlcIB+nefOATgYPutRQhIwVqSD027VrvA7Z9DKku3tTdWqNT7yTJRBTp/azcm8b/ekupBbZatmgIkTsuHhJyF58NqWCkMXcO/dv7fC9TUJSDJyAW/ZTGEoqVt02kepDsPhjuu/r5eiwHwpdt1ViR/81nufRwrzSVq3BQBPn38AAe/HjrHLXB2qKiCRgJA5ABxkqA9x7558cHEQmsXxIda4j9NpOgfZZqtdd8XYv9W6b2zqxUk2Nd13rqCW/kriomnMJ2fXF0GEpL66jOqq0MMxHG5ZdYLTaZLjNLuwX4nvcZQhcPeX3RWj2f2U4hufM0m7eqDQv1/DhPJeXNbrt+V2U8Y77LhTFlOwojL4femNfOhDLR6hu4+Ne3mpM0/LchvnG7LooZXa0SsUCPg6kWy/DTuetq8tfRjH6+keVnlNR4HjzwbfUSvK8C4L+0+tKGZl3XzbFpBsrD8e6KvBoExspLYTtg1SRGmq/GfU3xmth9PZ6oc3JaVW/iQ9l9BmGmnWemXHV0+KJYVIql+1lSgQCkRqCy9BwpKgtr/HVb9q8LwgnrT3F2vfC07cJbKXdKLo7tNRYU/9Ym4dfryrd8x26yyptXzkWPVN8MRQ+85JhR2ozYhkemh10grKCWzVNau+++qhpT2y2lp52/6FWnV3KVqHq9p7Q4tAp1ifq9wIftOw1RUNxqrVElTjcuoOn0ULW20zHRsdWqKd3/EM2YcdWMWX5ISjCLklVh6vYeMopTlxmz/hT8IDuG4hoz0zTZOZxhzjis8RhDln0vlvx5Oj9Xvit6LIu2n6Y2NpprnfmqlXmJjU6wKfp3OpVZMR1KfRqckS3ZAjQ8+oHlNsyhH9NIUpYdT0U++XuE7rLP0x0t09trTWnaL6pdy1wGw7G05q1zQL+1kq0O4WI7FcuiH+oKe5RaVSaWzJYfq/64S6l5hVPESQhHzshhWNQ9eezb4YGmTMbSqBAqN/1CQ9T6xqlXpCa9qHqLeWxLbdNpy5bFQqddqzhkrbS1BbKG2pBckqaHplap/C77StY7x1Euz4ifeg5UDrbqxQ2Kfo/pvUJjj0zRPTaRCEeCqcHgXYd31xpiJNmNrU+ERY1NeQ6lTiwYRvPxJ1deXE1isEgi1HIltY45bRblZSg3P2b8FNn2vdaWvrbg1JwqRpGhGL6UL5S1UblH3MJapVyH9hfalbXZ32uaa6NUFLLtWgUePWb5qCUvtyKrfNZbTKr0yShyZMaDvrrbaC2VNhxDad6dyB08QMEjJVg/bGcfxB6zWkhIOMEnBWcYKlYwSeTxjAAycAeT56t9Vx3rfT3m6d2SP75kiU+mJEC3yCvksfp46vbZaf7LtdHbRCMdGEYgV6Sr4mPA3nN/V8o6HQ6sqVuxxjHTZtttPczYxeMI/nnh42SY+llFlyY1jx5elUYsn/ADer3Q6pSrdnjGOquidTTnpTdPUOM41ZY1YSMxU8I4esIjT14Rkg/bP9vXvQ6HWrJkRFshFjHBgZSnWPPqlJttzXgAx/p0Oh0Oh1jodDq243vxzjGfbPnH5j7dXOh1mKiMfPt7+cdZFGzqyhraoK3ZxnjGPII+5+/V4nAyfA59v9pA/rIH59F66booFlUGp3XddZpdu2vQYrlRr9erU+LS6VRqYyMyKjUJ851iLHixwQpxbjqMcDP1dc+uuPxbNVu56/Znb78LCzId+SoLqU3p3Y3nTmXdHrCabdLcyRa7ckiPeM2FHRJkodp8pxqcGyzCcC2XA6aRlqJKbjjZQW1niAxy/XwfXo7S0dTcSCJfgZOIxtClwXkau6b8dSn91ffz249m9ID+rF3F+8atFULJ0stiJIrmot/VV1vfDo9uUCO0Ct6Svah2VKeZiQ0uNKkOBTqW+oblWF3XfEcuam6h93UqXot2syFsVCx+0a0KvNiXBe9J2qlU6r6ySaPJRUHkTWlU59infONtx2nJqEyFJcdKlW7WPh22JoZdEvXXVu9633Nd2lxTZlQr2t+pbi6wu3VzHW1ppumdCWsRbOo8Q7/ko8Z+X6IU367khLYSmQNba2uFeFE4IwAop43YBOODxk5AOM+etohORKScjxHJ9F8h7YQXxnFLaPwt8Dm63Et33Enow0Yw+VpSh/3spjzb+ZF9BEUY0j4qutbS7foFqUamW3adIhW7bdKgRoNMt6ltpjU2lRYrYbbiQ4qRtYY2/WEKUpQWtwlalErNkqUlRUFq3eSRnPscceR+XjjGOrylKV+Ik/l7f1eP7OvAcEHAOPYjIP7x/z+XR89tzhGLIJR8SIuPHKokoltAreBxbZdXbu37btujHQ0NM4FLeVQrzLlQDQFB9Mt7Gn1GVAdS/FkOR5CFJV6jSyhRwfI2kHd7AZyMnZxhHSN90mm3ZVr7pXXoffjpvptcWnNPYjIqWo13fqmiXXbzLqZKUSYF8D5SvpksyA1IiUeHNZpdSVHSqpR1/KQy2NZ9btN9BrSfvHUWtt0qGWZCaNS4RS5dlz1VtLfoUSzIIWhUqvvrfaSyobm2G1qceG3aCwXSnS+o6n3nG7k/iAUJyosUl79adv3ZRDVMfsawIALz9Gu3V2YiT8vWL0IVEVCYWpZp7TVRA2mT6SnvtGlPV1iMBlEirBVCpRRXPmQ2S81Y+eqB/GrvHwZ2jt241O4OjHfRik9IIxVlGIepjKI+r2itj6brqAalfo2U/vJ7nrvqnZoLv0o7HKZLqSIWsOuLDgqk92mPiHIiWfQJEanTa0wuQ1NFMnS23oNXitRJ0edHbkOoiy1aN/o8fwkO02Gh3Xu7dSe6rUUPtuttGus2nYrLsVfrK9GmUVp16oJUXIiX1ypWVMGRHLLXrrzKdqT3QX9fIEEy26BbbCfShW/b7bVOp8VrcpQZZRFZZSlGDgJLZSglWCfIaHddWU8JtelrXtSne84+/tQQlI3l2Q4AhKUgLUXFISFAFRQgApRPtp28lpS9PKWKsYv3qhvwICNnqQqLwHvPjzS1uLsIEC5FyeZVHGosQABu+XixGL1gytHOxnTppui6LdjvbVQqcwp5kTbi03g3VWp0Fak+rGlz5r7AcQ7tGxxDTKGypaXPVHplpk2t9rdiNtQ24Wr+iPbquVK+YaaolNsa2KfctbkoTH2U+LRbQpr1Yky3S438vGblpOC9tyFOBauO0fXfuqvNvR/tcYZpEUutyrs13rYV/Jy26Q2FNyhbkNlQnVesEFXyr0Z5KWS2A43l5O2Xfts7M+xL4fSW7nuWTTdcO4xhJVWtTrrYF13xNqB9YOO04PPqp1qRHXFoQGo7Ul1CkN4feXGSoGGyNSKMaQpRKU4hUBKBKtDMbfI9IdH4n7jLVHV1IQ0wtqjIi5fzOKAZIYEvrlRr3wPZPedTJld7Wvh36n6T0ma0pNM1DvO+IGk1orfkL/AMWk0uz7m+drtVZaMd/c0mOyp9CwFORCtPqoa7+iM/EnoTkKpJr2ic1DEuE+80q8I8RTYalMPKStTrjm5RShba8BWCrIK+R122alfEEverGVT7Fgxrap+FNsSVFs1IoAKBiQgIDaV4P0tJQhG4gKcwF9MiuLVm+LuC1V+6LiqDjjqnHEvVB1TOVfhKG1emEIRk/QNxz+JSgralKdqJqoR4qvH1DVJYzC1AvP1AeNvr8YbHS0vXqylOJkULkh4ieDk+M8QC6uuR3vB/R0viLDUq4LrtW0tKq5SJLFNCKRRNV7fnVSK+1AitLiR460R1S0pCQsObI34ikspIUBC/3C/D47v+1mfIg636F35aDbK20tVg0dVTtyUh4JLTkevUx6TAcKioAJQ4pO7jeeevoVVJfprU8SQ5uKitWEuj1Mjc4eNu48BRJC8YATuOCJV7uMdZj5amupSUfLTD68UEq4WtpZ5WcEgJChnacZHO//AAZQIzSyyRxoKjXpc/UT2sRarpGfiJsTU+URTwgUuaUfRV/mr1FnFQ5CfNJkxH4rim3mltrSSFJWhSVpKfIUkj6ffGfOD1jdd1XcN2E9q/cMxMer2l9GtS6qpudfvWzkt0asGYsqV884Sl+Kt5sqbCQWEtlhtLRQokqPOR3e/Ci1b7fEVO7bQkM6kabseo6xVKW0VXJDYRy+avSEIQ2S0kF35qK88VNhZcYZPph1LuO16+hEmeuKXR+bAXfjK2BR/K0kXb/i3t28Ik5/Lk0cl9KtF1VgX6lxHwvuxGdD9/8Az/d1lS4rsV1bbramikkFC+FJIOClQP1ApPBB5B4JyD1i9NsosWkS8lnk8WfUawmHqUxlGcSUURBERwl+SzruH/Q0Y0O0dSe73USUWvlpFpWLaTchxIKUok12ZJeaVlRKUygGVqyMpSwFAfzj3417XPTegwmHqnW0MCTJbhwoyUrMqVKWNrbbDakgOABX1/UDyDuHv80/4BfeXoj2PdpndbrJqlXGmqi1elDi0e3FSGW5Fxy4FCM9ilw460LXMlyMttsowEtes46VEj03I5u8L44fer3L6oXBdNC1Sr2l9rOUyp2zblrWDM/k/DpVuzGVxilK2G1yvnpALciZLYfYMpTbSHdwQhSUthIv1yhJMK0SSKycRMcmiK5aLrpdttTS0YQJoTbXlIiKLbylMHEimT9AG0j3K/F5/SQND+ya2rn0o0HZTqh3MVCFUIEU0yUJdvaZukBK6xdLkYtB6bFJ3C33lN+u56HrBbKjt+eP3x/EM7iu/TWiDqrq9ftYuWfblJi0G25Eha4jMJtjeajVKZTWlGLTJFZmvuSnm20LW2hxtlSyErBYRWq1UrhqUusViXIqFVnvKkTqhLkSJMuW+oAFx96Q66taiABkqJ4xnGAFk7a7QXqLrxo1YyWFPLvLVfT60w2lHqJd/X9ywoJaKM/zgvJ5H4du5IWSnbS2zOcBtnNjEGqjLERKfU4w+wuC6EHc91I0NXVjE4Q0pMgu04hTeV9sWF+Hz19QT4MHbSx2xfDe7dLJdix2Llu63n9TrpDSEIcdnXy4mpRTLUHFByV+rG4frjayUEBtTCVNqWuUBxAWhSAduec4zzuCicceT5/M560dtUpFrW/blkRUIFNs23qJbFOUhspWItDpcSmtoWsklbLQi+kwCVemn9mlRA3HbLlIH4QV/wBaR7+5Gc+PbHPn266Q7Do6On2fYxnxEIflFaj+aK3fCsWJTTcnDyl3nU1Nz3Td6pa8xbTzjPmm2lDykpfl8ZPQ6pQsLSFDIBzjPngkexP2+/VXUmEQTIgj9nx0zpSj5MPWc1JGMOHBH87BO7JPslOBgYH59WpDiVhAQrIG4kYIGeMHkDPv+7n79Xo7aNiHMfX9XOT91J8Zx448dX931bcf84z0jnq6WlqDxcz4GfTzbAoFBrDZT7B1tPfakoS0WJICmSpN4yvzaPgylpd5y6/5d7+h/rJ/83VkAk4AyTwAPJP26MaUoWhJKcAZwMnjnnnjOcdYZOPAJ/dj7E+5Hnx+8jOBkjeO4WxiWNYa+v6/6V9+itRlpEF4TjqAxYso+0VskePUU4aLQWjUdbJpr0t31bt2PbGMZ/M/frOYfL6VHZ6ZHGCdxByofZPI2/8AOOrS3vGU5845HHj/ADek243kiEq0pMYrGSThx5E+NK1LEhzER+tZ6ctppxv5ka1K/LK2PH80XHiV5M+Ks89UpaBPKePfkj/bnqv0m/6P9qv9/VzqlStuOM56YpSnuNSJpwjCSUQ06gNXJW0Lq7cWAdK+UpOP5DX+vWKkJVn6cY/M9D9n/wA7uhuKvpA5Pjkf7cD+3q4lpQGd2D/RIyPyyQff7gZGelctfRgwiGlqFLPUdAFtaDTOFUBbaN/URNUPL1b9P8/7P/XoenyBnk+Bjk/uGees9mMtaAtSd24KISkkqBTu9h53EAcEkZ8Hno8Wzay5ChMkt7UAHYkglRAJG9JBUkhZ8KAwNpBGFAKK19123RiyaU9uWoePbMjK4sEFtx5X7ft253JF0YkuQOLUGqWhMjYXdeacdYnQ6HQ6J63n3XdzrjLT06u+EB5XXn5jqeKxxry3eKw/Vc/pf2J/3dX0S1t52DGcZ5B8Zx5SfuesTodLXT05eYn8Mfzqr/j1tpak9EkaTGJOuRwgjxvjfKL4t/n0FVRIUpLwdUU4wU4UORk/icGPbx/u6zIs4KB9NPKiAoKGdpG4jkKHkZI4OcY9j1o5zHplK8YKjg85zxge5Axt+3Ofy6vw1JBKtg3I8qzydwWOMg7cDg48+/SXSh8yOsSBlp8Q40Rt5VXgYtCfqX7nTlDcyhEjqxWIkZ8hJRtPUnl4raAr4K8htacLg3FG0fzTuBzyQfYEYI9/OetrGeKioBGScfzv+0fcdF6A4Vh3IAI2ePBzv9vbx9z1skK2qCsZxnjx5BH5/fpJr6X5oIWePNeyeEv29z+HRulPSlqQ1QuAyC+RQjBUFWvNXmsVeDnTHQQ0oDlPqApzyM78c49xyDjHkeQejrFeDXofTuz6oP1YwQFHB4PkKB9uMffpOKe7glvb5x9WftvV4x/Dz0bo0lKChW3KRu5yR5Ch4CT4Jx7/ANXUW7ht1k0L+Y435iimb++Dy9THaa3DShGXGFLLTld1KDwgS8gIErlQU8rEo6IWhYJSrOOD5BH8CAf4+PP2PWNJlBhaEZTlQz9QPAyQCSFDAJGORweckZ26f5v/AKv/AF/+HrWSpgX9RRwcJxz4yo4OFDP5nIz429NGls2U/djgR42X97D6vj7ffp3N66bE1YQiyatVHJdRLTyWsqPPRUvGqblyiAkFttCiPClFvGCgFXO5O4jKTgpORgctYuepEynlEJUrYSvaQAQlJVgfj5UndnO0ZHBHS43Kol+o/UcejvGDjCv2gJ4xySgZ/dgjHTdq2fUkPg55QtJ5ycKU54J/og4H5Dge3Vm/Du3NB21eniXVD4Di5buojTYVxROqj+PdxPW+fDThbOF/S2VggNiIplAWqt6JbikqVlCdowOOeVY+o8qV/OzjB/CBxnPVHVS/xK425JO3j6c87ePGPBGAQeCARjrwAnx7fmOrEOU2wuUs1Ev7tB5/29UCFFZxjPn+P3+vXnXoGSB9+vOsiO0XVH6toT+WTkg44yPscnP24+2YcecCX5WcCXnwyBMZzft1tCEtSRCBcm6LDwK5UMAvnrM+QKk+oR6aTn6fxbRnA535OfJOPJ8AdVfqxX3/ALB/+s62DasqbTj8O/n75BP8Oq8nOc8/1f3db7jcx2/A+Tpy5MqOEMRPuirk8+bbRMrzbacSMZQiyIlyXU9WUGvmNXTJy1Ye1pecZKQkFIT55B3FXjz9RAxnjAGffPV35MBIU46lvJxhQGAecDdvAJIGf/brcuJ9QDcfHg/bJGfy5AxznHWumRslK0edu3Z9yFZJ3FXHCvGPb8+iP23Q1JB8ggvmXKUR+hwFjE/+Jurauuk2rtNRf7leIckalNS+UY4BoOX5RyRiSS3VdDodZcUA+pkA8JHIzwd2R+44GR746E5cYsquqx+qH+vWmjpfO1I6d8eXLNXVRZeLPpXnqw57fx/2dWyQPJAycDPuft+/rZHazjaFHd5yofzfthI+/VMj+Z/pf+HrbcbiOprylA5QlXGWS6hEfSllImf16XQ7ZOUYs9QhJu48eQUv7xL6Z8eWvv0XyccnoJyvkJ4B8lWP4YCSQcH8x164wUIKyvJSBxjjkgHnP5+SMnHt14y3uyveE7TjbySeM8gKTx9ucEgg+OW/W7hyiz05fLhDzKRlceSsGaAvOfsHO11iRp8f72RyjGzxn/mC2ny/w6uDak7hlW0EnjIGPc/YDzn24P72P6nd7dIh36/ol2z6YXf3hdwbPqCZpnpLLhwKRQ0MBJkrvfUuS09SbYosdLilVOGh01mQWhupS/l0pQnmo9a1b79tZ7q7Ku1S56nY9g6fyUMd3XczSFONw7Pp0gvsTNItP6zHcaUnUW4qSqY2akwuTGpaVu7o7q4TinJydD9FO0f4b2hMLTnTuJQdPrYosX5+bVJbLU+87yqzoAm1yvVNxxFTua4pqig1Ca7ISFJWhQQ1vWpdT/EXxn3LT1nabeQwqpagPI8eAVfLfK5CYrwWr8GfAP7Qx7l3OZCMSLpaMyPrvLU5SAcALBtspydRi2z8Prv07owzc3fV3BUXtu0yXBfmO6BdrMl6k3BMprbbapFM1C1orcqQ/wDKwIiJT86dR4dPkPtPPhDsYun5QiafQtDaDf8AP7Xvg66G6cVO8rbKaXr130XbR3L7tjSAth01KnQ7xrlRqtwX7qwXRPksRZ8g0eiTUwFVdTu2MHdD3D90WtvxPtVKl2o9t9yy9H+32iode7l9XY5cjSjp8++ply3/AOUEdbTEao1NMCQY7DLLsiJHD63A36zDyloqWpGl+hukFs9rvaFbTGnemdjxY0Sq1pmn+jWrqrkdJbm12VWWXmZNTq9SloXUavW5pXUKhOWqRJdeTICGoVHddw7rqEtzqKcvAeiMUzjlycj+9lVtjxS1dTU7T2iF7XQjHiHqk3KSGSKxkRX7Hi4xGdWs1pN9sPYT/KF+w2Khrr3F3XLmStTNZ77rzVfvep3NJ9ByornXxVnm5VMosyS7Jci2zbsWnU2GlcoR0shw+oz7W3uP1Y1YeQ5dFwlqIVrW1T6MlUGkMNuBpKw1FD737M7NwUXlrJ3qUtaVAoRqXEUqc9NkPPypMlYW+/IccWt5QGVErUtXP1nxnn7Z4jR7p9Tb61e1VpPZbopNmUmpy4Ca/r5f9NlOMwLNsQmSg0FirtxPRTPr78V5lHquRVKMVC1NEFoPIu67nbdh2s93rT5ariGlgZSOEvS1xLJxH1La3TItZ2WO7+Ke7bTtu00fRrtSnpkpRg8o1yiCyJBK0lYDXIyHy3Y92992qkrQ7SlUym6OWvcTkbW/WiDJV6U+jQFttVG1NP56WMyJ08rWzU6g0S2wlCGmlDYpXSifFm7+6D8ODSrRrtH7YbdiWn/KmkM1KRRaS6068qzXJDEJyhuyBGaW1UKwsPyanW0OTEOBuOllp1CFrckf7UNGLX0R01tqhWRRo1Fp1DolNp9NTFQltEhuM1IDkma2lKfXqSy4TNqMl2VNnH0hJkLU02Oof9Qe3ygd33xjtTo1902bdVC7f7BsS0qPQZtQMmAZlVhGW69IT6DJHoS3XZLUZaXQ4HVp9QBSVmn9/vd13jcz3OspFa04hxCCiFvGMkq2xSga9RHtrtf4faHw38O6e519v/fTQgsRkcKGkbCs/XNC2PSqfB07ENZe+HUa2PiI9/NNNVs60aixN7ZNGqywv9QwH4SJiBc1Qpb6ixLhNRZMadDVLYS7NkMrLoZS4PR7EIkRqFGaixUpbabS4AoBJJC33XwOAkBILywlIG1A4SAMDpO9JLGpmmOntsWZSozceLRqZGjhltDLTbSkNJR6aG2EJbAQkBJUnJWrcpSiVHpTG17wRgDaB48c58DHA48c9Fx056cBYmClQcWUVJZUPgV8t+W4ruKlqSlGNA1d3aYuuSfbF2V+6RIhbmwJ+k854JAIxj7ZHOfv1c68IBIJHIzj8s8Hq0WspSnd+Hdzjzk5+/GOsnBAXi5tpbu0ov2oPq39sk4a9vq+b8/5Y/n9ur3Q6speSc7vp+3k5/qHGOvHHEKQQDknHsfuD7jofLnYMUyC1YX72Yx+vWeLdU/rV9Y3Q6HQ6W9HdbDodW2v8mn+P/ePVzpAlKfRT+TXRCUp9Guh0OqVkpSpQBUUpJAAySQCQAPcnwB7npjfd18RftT7JaD8/rdqLFYuqfHc/kvpdarS7o1Pu+fhtpiDR7QpZXUUrdmKXHcelBhDO1LiA+C4hraGmzyJQg20g+ZZooxebz+tAjKXgXNUFq/YMv8ALp8i1FI4GVcnbnlWP5vH+TyePVdKGE/z3E46ic70fi59v/a7UxpVZEKq9xfcvPkIiW5odpPsuCpIrisJjtXZWadPjwKHT2XSgTUvTfUU2XFISr0HEmNy+dWfibfErfkxrQZkfD97R6vGQ0/MqsZyZ3C6lWpUG/TTNjmOwubZLc5ESTGTHlbZjKJBVJYdbLKmnm9sPZvoH2d0VFO0jsikRbjlBL9b1ErjK69f92vOh7fVa3cNSXKmKekuuy3PlGFR40ZL5babyXFrWw0ox4p5qpSRLPeo03TWU+uBwSvsvwf3DvPCoOlp6gpJL4lLdiF4kUNmJXQiyVfax3Z/EFqFIv74lmoz1taaCSqpUDsw0lqbtPtNUF0KfpbWr1YTLkmvyiwqF+saAiAlht9MqI3ObUhT0mVax9O9PtLbXpdl6aWpQrHtOjtqap9s0GEzGojSQNoL0VlltchY4KHHlqO1O0KwSomsPpKQsp3kZUDkJTvJGVbUoST9SRwpR44yfPVDpZIJbWrOeEkHBGfGSkEY88k8DHJOekm414aXonGVyzxiErXFsk9MbPNCZqP1uj4e+ENl2fbmnraMNTWEfmpym1WJStTwe9NPLIPWay8laUAJRkbivaNiWz9WClJzjdyMA8ZP36plkD08kD8X/h61gJByCQR4IOD/AFjrKeCnC2rCglQAAwVDeVrGAeBuISD98Y+w6S6etqs+UdKCGL58QZRlQ85ZtGkSgItySTLjSjCUWOAsr9RoP50fYPfLYcdDeMgnJAAH55z5wOP38kj8yCJqfqdZej1h3LqRf9fpVu2ratLl1OoTapM+T9b5WK/JRDh5acD0uR6Bbabx5VvPCdqtzdl0UGyqV+t7jlGNFPEZDSfWlzpOR6cKFEbKpEmU7lOxplp04IKhwQOcTuF1or/xAu6h3QJcD5Hti7bLih3VqbFqD8Z57UC+GM1CiUhqJDMlpUemQFJbqEUTFSI08rQiS0Q4Onvt+z3ncdzo7fQhbOQzqpcDk3EkUYiVKRGRfi6OcB/En442XwX8O7vfy3EdPdxjWiYlUvNpTRQ5p8+2LXXR6RW+7G76N3kaz0E2/SqDLkntq0eqlPK4NlUaJUJLMe+5qXny7UqncT7a6hHXNJejL3JSp5SVOF18m46vU5cqZV5K5zr6klKlkhaSCrecqLmErw1tQk/SEnJP0oTrHJqENttfKssrbYbYSI7aG2UR2QpEdhtpP0NIabwEBIUEZJRtPHWlMxUhYSj9kncAk7sElRISFEHz5OEjHJBztSTc217BsdjCXyI0lc4qsuV1bIfupEQGyvp5V/Hnx33T4u7nLuXcZzmSnJ0NISfGU5RJJKVEhCFPEr90W03S5K1HJUdqecrO44/neTgD78g8eR0ks+j1S+q3KpdR+ajWfTnkOuMNqCDX3cISqnPNJUlbsGQ2pxmSErTlKsAknPSpbAsFKuUqBSfzGOR/EH+3rJS2hllpLaduN2ME+x8+5yTznOSck5Jz07bXbkhWNRviKHlitVY+JCNB4y5OoPI+XPT4VEvIBa0ubxQDnLlwXfRxs2rTrFpqqdZjyLZgPNhh+n0dCYkNURW8+guOgqVvUClK1LdWr8YK1YT1RMq3rEOLy9KXn1XlOFZWB9KNyjkZQkBCEpSAB58AEqBfKSdxKc5O9WTn7f0cfl59+qXndwGVBATuUTnAwPJJJAASPc/mfHg/9jhC0GV1hQVuojKUsq4Py4a9062nq6s4R06IgSuY3xtyxiI2hdq1dlPVqXOKTvQ2CVE8ndt98ZBUT9sAEDAIAGOitW7ogUWKqTUZYjrySw3kZdHk7dwJykJP4QMkpAGcDrQXXeLFKaeTFdQ6+hJDUcbf8YeST9AJGQk5A3ZwFJBx4zG5qnrLeupOo/8Agb0Mo72pWra6bIXWU5SnTDTMpXsVIvG4InzHzE5tIW4zR6bJjTZCGX+StA6btTht43qR4ywkaVTDRHHiwTAeb8W6/D/wn3L4r7vp9u7dpT3DPiEBlVtCsiy/MjzK/wB0MridTNdKbb7E25K/cFJtmhwFKS7U63UDBiNngBDLnpOCRMdCl/LQmg5LmFt1MVp1Dbq+mTUjvV0Jvm43qBQNWbbNUQhTjaZNQkw/mcqOUtNz4sX1l5wlZaU6UH0kqSkuNhT3dPOwux0Jp12a63FUdbNQpkaMupR6uyzH01t4xlevBp9l2tTwzTWWoDjhakzJLEiTJYzHXJfCkONrHdPw0O2TuEbcptw6H20ppx0Pv1WgR27PqkWRtV6D7MygsQlqShxIWUy0P71N4Z9IOOlyN6vxZ2zR1ow+YStzMkTBuMUOJQZu8ZzdX11Jt/7Jnf8AQ7O9y3KQ1uAw0vkDJuNvH+/MjiLxy5qjDHU3dcE4MOwq23IhKSS080+Hm3kHdhTbjQAKfp+lQUD+EqSAEp6McWrzFYSpwyWHUONuxXwhbT7awsLbdS4laSkgkEAYwMJPOS4+8vgDX/ptQJd2dg3crdNTrrbr0io6O621MVm3q1JZShyVSqDKQovSqm2gSENJcaZeXImNbHHQUpZYOb8vXSTUF7RDuo0xrXbtrX8zHiUW2bxeC6FfGULR83Yl3NRUUGuIf2pLUOPMMhCTtJUgJWp62nctj3WI7aREiZwyqUxpfUPnwiNXbjqjvij8OviH4anuHX0WJtvHHkj4aTLljGVZJcVwFjHe874b9o6wUufeWjVGi2pqJGQ9OkUSFHZZolfYQhS3EIDRaRBmtFJS0htEhL6SEYbLaS7zaXbZVfsivVO2rlgSaVWKTKdiS4cthxlxLrKyhRAcCSUKKSUqCSCnCh567ooU0OqaTtwlf1IWlQWDncQQtB2kbgAlaCpJ8hWOeokvim9o41DoT/cNYdOis3lbFMeF7RGGNjldo8VtK2pzIbGHqlFw+EtqTl1t11OVq9PGO5dmdTbT3GlG5RFgFVISPrCNHisREknqPFj4Y+Ktblpdv3JXEIcp0cZhfrUxCMsSk8lLS5CS5skVirt0hygJnSkUZ6b+s3Kd6ikxVzkMBj5oteC96CENb/O1KQeB1qutlIC2nHUSEqQ4la0OoUkpWHASFpKcApOQQQQMH7da04ycDAzwPOB9s9QiLd4qnL9/+v8AP9erS09R1C0oApGx/R9/P/r7HpOfAA/dn/aT1J58HK0k3p8RvtPojzAkxTrDbVUcQUhQQ/Q2anWILqkkgkNS4DaiQeMgkgEnqMLqaH9H8gOVL4qPbHHbAPp3HU5hBz//AA1EnkEHKQFDeSkkjnCQfqwXbssDU7jt9NLJSTKHt9XHizOM56b+9D/wre17aL7XdSjjwv8ARevqFvuFyZNfBx8xIW4QOMbwNyCAEgAKBGEgJPkDnHVvrZfLNDORuJ+onKhnf9XgKxwDjPvjPHjqwmSEAJS1gDOBvJ8nPuknyer+2ug6G22+mnGBGMRW/TaySspC6pqUrKvKcvT1DW3OryWP95MnNLpCQNCsuTEPtduDr2J/0n+h/wCLrM6HQ6e9OHy4ELurzVeVfFv1+vTdOXKTKqusefAH2+nVaFBC0qI3Y5weOcHBzg+DyOPI62SRgq9/HP7+etV1lMubtjWMY3fVn96vGP4eek+60pS4asI856TJI8uJKMoo5XiJiV0rVFXfRGrGyz6Z/Qzfn2qqMt/brO6HVtIOMg4z+WfGeqXWi6EjdtAycYyCTjB8jxz/AFnpPozdQjKUXTEG1JCNonFvxVjGNLWaXpNRdMqPdpx/D/p1fac2OLyM5Q17+MKd/r8/l151YZc9VS1Y24SgYznwVnPgffq/0ZKPGTZTUb/hE/h1I9jHjttOypJLlm/E5V71/Lq58p/1n+r/AMXXi5IOMJ+/v+7/ADessJdc+lKE7j4SV4PHJ5248DPn+3qj9Uy1bA02XN27KgD9JC9uSBnCSMEHGfxbsYALPuOGkOkQCOoRWVybYyUI5oSrfNjQFdLDa63o+Yc5yLjAJEo2FkhjEV8UMg4yRovrK9FSEqSAXAvGcFKCnacj8W7Oc/bjH59ZMalSJJSWwsJVu/mg8DIUkKSrCiQCkYGDnKglO7G8pFvS5KkbmQlOcuAbvqxnGASVYHCinJJTvKQcHKl02iiHsVwCRlXkFKhu8gbQRk4TgAbSSoFR6YNxvI7dpYr5bak48Ecua80e3lU6lG17Jrb/AI6utoJ7XyTA3S3CzNVxG1yAvWioVqIV6TryUlO07WwFJyoZO5QUrkpTgp+rBJUtRUvjpUKdTWwwkgJSjGEDaCOCpCiQFAHwPKQBwEgADrWtpCAASVDJJwdvn7ZCsD38HPPjPG4MkxcbEg7uNvAThI48DIxuGAMfn4wYzvdxra6kJAX6TPg82ytVxmX0oASpzstrt9lpaGiaKelJsZA4iUYzQ2vGYVVYEk20SwpakITgoA3Be3OSM8bFkYwUk/bcPv1V66/sn+o/7+i3QZi59Eo050YfqVMp8+QsZ/aOrhtBZPjgqWCBjAKfAOSduSScnqe6m40tN4mnzQjm2PkbG43Z6XwjbaJTW272Wno689MI0U0Z42CFjThuyiko6v8AQ6oQSc5P2/29V9LNOZqQJxEJXQ1eFM0p5Pr0nSmuh14FA+D/AH9e+ehG2hzKiBhJIJOOcgf3E9Fa2tLTnpRIxSbIbu8cfFYPPuN+KPLhohKWViWB7/7/AKec+OjIykobSlQwRnIyD5UT7ZHg9XOhkZxnnzj3wc4P8cH+o9Dpvcq/Xp5VVXyt/wA89bdolRQAOEbsnP8ASzjj/wB/4db5iYFhKUlKSM4SSDv8k7TkFW3GTgDHvkdF1l1BDgCsZAGcK4/Fz49urYWF5woqx5zn3JPv9zk/v6b9TQ+bKQjEjVLFfzXJctNq++PHv077bcwnNYIDV6U+JqP5pWlqNsnGOPsiIbPWcyBknOcnCMD9+cHn2wD+eOsddQUnIQAogkblDjg+20jcDzg8ex58dagzXlfSsgpPBAABx+/+8e44Pnqn10fZX9Q/39Jv2WR5gP6f7H/T9fY7d7vhGFf3cfy8pVdrKRGIMuJ+aWKu3HlS5XorjgkOhGfWQU8KwVKCSo87gEgqJG36AScJCio9IFU6JLXKkqCcZSEHlIGQpYP1bjg5XhP04OAc/Vw5aQS8kYGNpyBkHJ5B5OPY/wBn59FyRQWZCtxQB7YOVEjGMEh1OQMkc5yCAc46kPb90beMTUSDE42R5UVV4kJKsWOVfGEiHdNI7gSqRPDAZyIv+IlLkxWIqBStA+WUW3rpEsKUNoUoefqQOTnyVLB585AIIOQT1QaM+oZeaSoJHGHORnyfpWOOBng/fjnLjP5HsOlCmmirySkKCU4STndhSiRwBjGDnan6jhQes1JSrMTIA3ZGRghPsouoPGT5Tj8j0+6fftnGic1l7okEzXpCdi+G2rvxddQXdfDG8iMczhNOIQjKJGxitXcSvN5M4spsr0FoFISwUHnO5axnJwPxrBGMHnx+fHFqO0loKwSSoJznH83PIHkDn3J/f0s9etZyI2X2mMAeQnlWDndkJJBWlRHCuVAeQpQQpPJEBYP7JAzyVJJ2nnBH0qOB5JwCBj+A6ctr3aM5GpZKNyB5xIOKLoqOEaAbqz3W57HPRlElCMJFhKOnc42W8gkMlsLqoi5PCX0EDOT9v9vVxLiUlRzndj7jGM/l+fWS42eW3ApB8HjkYPkAkA8j7gHxkeevFMraO0OhSQeMJT+8ggKKk8kjkg+cdK/2odKOjKGnKIsoknUFyt8oSL/Ng+n1rojcbSWnXElqkzPGL7ZcRNSVFDywZq/r714pIUMKGRnPkjn+HVC3Nm3A3bs++PGPyOc56udJqSn6+P4dNdIEvF3SP0w+MnVOxvABTkDOPqUMZ5Pg85/Poemz/wDV/wCur/f1V0OtzVnEo40X509OTlvLKKv8Xocpf4p/wlI/yetcRkg/Y5/sI/29YHWU/wDgH/aH9x61xJJyes6muaAPHkzUC6AiFq0vmRRX1ye7rpR5C3XjqhaQpOCMjKSR7lIUCoDkckAgcgZxkjyI6O+zuSvSxmLE7Y+3Onfym7o+5ia1QdN6elgS/wCS9puyFwro1AqzX0CJCozSVKiPPp9J51p5KwG0LC39XXd9t6f2fdeoF51WHQbTsyh1CvVyrz3vRjxosCI/JLeQfUW8+llaWWmUOPOKG1pBURiDXs9ve8NUL71K77dRVuRdUdYVvUXR+DMDu7TLRWiyJCGKVQXHm9in68zMhOLQkp+ZiqdjtKaZa/xqLb/ex/Z5aOnLM83xlFzSIpF/dONP1/i77HYOvuIa0o+nS85MxikkumhuhcMl8JmZjRO3tLPhadtdtaE2FMYufU5xhd26lXTUnUzqld9/1t12ZWqiupOMmSWkzlyER461ORoza0CMy16jypEZuvmt+q/cBdqaA3X1LlXjOTSoVZrDoZTa8V1h1uZcqaIne6pqGXI7lOfjvFLyUSwW07Ehw43rXKzcj8+rVmpSZ79RcStSpDiluMFtDqdrSycbVl1alnan6koISPqzprTo/wCrokqamVvcqLC6WEBj0yzRxkmDv9VYWkEoysJaSeNrSQD1XZ2ie71ZTnqrLlJkpHzJhdh59qPAFqodWDq/EW6nCOno6fyIaMeM71L5kSELIkAjd5o5LKX3elboC7d0p0oo+hOlUI0m1oUhioXvWnZCX6tqbcqEKTNuK4Xwy286l50qESIp19iMhRDa3EqStJbAS0g4x5WoDJypSipSU5JUpSjwkElSjjP5dYaGAW3Fbj+yQMDHsAQBknwAnAHtwfbBLlw3JTLeplTq9YnxqVSaFTJ1bqc+a8WosSl070jLfcc+opLAkNAKKcKDiUg5Sca62jp9s0/7wogFnp/KvL8xIqC4afJHF5610N/r933UNvqeVKpxhjQjVYl5FPqX01vvR7jHtBNPabIoMGFU9VbyqLlm6b2NUI/r1GqXlWFw4VMS42hwqZap65QqLzTbMkTRGMcuw0JMxO67Je1WJ296fOJuiam4dUb5mQb31Hul7mXVLtrkJqoTKY56m9ZptHW66zAjNrSyG3NxabQNpa92r2tN7stdKt3tan0t56x7QqVas3tqoU1z6lM0+RNh1i+pMdxhD8ZyXCktRWWWnVxlh5AZkuKYkqkTEWZTY9auimsSGVEErLaxn6MbPVJwPqBUlAJyAAhG5JITtpP4p7mb/uM5Ea0tGNRzZxIxWi3y2patU3kl6M/2dfwr2mx2ce/7y4ai6JpaEtHlLVlI1WUnUnqR48VKeHv5PZ3lo08wqNDaW2lAQ2gtpSEoSEKShY2oQopQB4PuvAUc4HUbfZJQodG+Mp39s11WF1K1dIr4pq1lIPyjdOYgLaSFHAQ446h4ucFKkpTzu+uUuLH9NpphJ4bQlGeeAlOBgEk+B/E8nGSeojdf40jt3+JPoTrvKqzdv2N3K6dVrt2va55mGaTQdQIz1KfsKpXBMLpbiwqlK9Glwy+3DbMhY9SYA6UGKT1Plsai8WqKs43xsFBtGOLyrnjnoT4028NbtjDTiMNNmRhG4oTYAxqs2Xktak+E66hWZqntuxKVZ/mjhXvjJ3KABxnJ4288eRs0EDOT9v8Ab0waDaXcYy4FseiqI4lDsSVGntPNPtBRSVkpeWSCobkJO3cASdwKSXGaanU1qcpF7MR2mBHS22sYPrKSEggncpIIVjYQUqUVEkAA9OW33U4MJsBY8jlJ82MSw43loSvaUrfPNOtpQt+XirONLfFptv2y4H9ayLc1/lE/x/7p6ylp3JKc4zjnz4IP5fbqn0myT9Iz5xk+/wCQPA849uqVOqTjc3jOcfUD4/cD9+tJLqSiwEkBh4mS0S3P8v8APpvXkjHyfWv1+uerPpOf0f7U/wC/oek5/R/tT/v6v/MI/on/AJ/0+gZcZAy8sNJwVFxwKQygDJJcfV+wa8ceo4nPgc9HDqKF6cb8MjUDxdXX2x9XHlOs8tT/AAL+hb7ew/f/AD6xOh00zXzv77Pu2alzalrRr3p9aSogWhNJNYRVa7NkhIKIUGkUlMyZJlulQShpCQCs7SsYJEXF1fGtvTVszKJ2Cdl2qncNLRK+WGoGovzukOlrKEONtqkCsTmv1u41uWH8qixlKpykTNo9RplWDViXzqCVhlbT4aC6TxjOPr0q0dvuNdDT0NSStAHl/Voxef5ecdT+hz0c5KRkgHcRjIzxkEDPnI/L8uo5e5/4sXZX2rTXbavLVGNeGpBMhEHSfS2HMv8A1HqzjCGt7dOty32pDq1ByTGQovvR8JdU436vouJTFTUNFPic94cBmd3a95EfQGwKs3tq2g/a3RWKBNMQpWf1PWNRJZNemLKklBqH7NpbUmQlcHn0W3Q9tHYp2tdqIjStItLKJBugIxU9R66w3cepdXW42pLy5t5VJC5riVOOyVoaQkekh70S6vYHFJZ7iHLOnUv8Sp7Rp4jhRxyUMWJnqXds+CO4b1jPV0+MZF8aS04j+9FCLh5Ji7BFG/Xf3P8AxUu/Qz6LovZ8f4eXbw65IpU++dSY0Kv9wd4U5bbKXHqFbb5iwrcny0omMxoaGEuOJdJeluIDS2Fa7XfhxdvegEt7UWsMV7WzXGp+kqfrTq/VHrovlTqA8uSqE5K9eDTWJMyRJltswozHouLQHHHVNJUp9zikKJJdwRkYAW4TjwN6iAfuMBI58kc9UMLCUlKnlNJTjYAFqHJJOAk8AHHHjnjx1tp76EpBSYzLUjURMlcZNjnMX6GbssbsvwLs9nCct1ox5+ljXrZWVJl6bXB5FPzXeOsl7ajejPkYGAncBklIP0hDYzhZQlKio53KwQetI+sqcUCeEnYB7AJ+kAfux/sHGB1mKVuOQCB7AnOP44Hv+X5e3VvanJVgZOOTz48Yz4/h0n1NySjwjFqxZLTKishgPtcvB46n+w2u27fDhoaRCNBj+GPsB4D+NrfVLYWN27gHGBkHxn3H7/8AnjrKbfW3geUDP08Dzn3wT5Of7OrQSojIBIJ2ggHBV9v3/l561tVq9MocNdQrE6LTKezlUqdNfSxHYaCclRUofUoYzsBBUnJGNuFJpsteSz9cn6+36f4fOAqrxXSiXrchn2Pse15uvvfWzSlSyQlKlEDJCQScePA6T6u367EmfqS3oUqtXI4VNxaVG/ZMtydw2SZlRcSYcJhvaUuKedS4CtB9NQ3J60CLruS/ZjcexmnqLap3pqV1Vdn0HahAVlKl20lJUp1xf0KZklI2AlZHsk5W9a1HtaO8zTVy5KpEhT78+oOF6fIkOoWpSVvZUtSVIbWsNJISdrhCCEZ6W7IrUIl+r82cHHk4DN1VX4W/auiNfV+TpzWL7FpiChL1W1efHtSORCNbv01Va7edH6tetdqzt7a831KY0v0ppciCEQbdvy5kmBGRa9FM2Y4y5QEyBU01IvyKo8Wm2ZFTaZdS622Xs80Qf0N0go1BuBfz2oddW/dWo9dlIQajXLuuCTJqtUnzHw4sKSlUluO1GbDEVj5ZSmYzYfWhJBuu62O8D4kF6XXS6uzcWiHZ2mfalsR21NPUybrHWFMu1WrxVkB1CKI8y7EYbivSYqgyVpdbeW8gPqCNr20YyW9pVgEnO45ORyTjByOQT4znq5Pg3t37PGG84H94SjG/b0qyR84GsEli3kz5vf2iPjvcdw7ruuy7XXjLT2kp89fTkOnL5jD0kYjxY/LyjJz6ayyxlMj6k4wDkEfvJ3Dg/f7ffjx1baisMq3tt7VeM7lqOPGPqUfvz/D7DrNdQEkEHhWeOTjGM8kknJOerXVgQ09ONyjHM3lJbfVa2CoUuK+hloeuVSRMjPF1Q1k9kvz9bz9fZ69AAB5wRjAwTnJ559seefPXnQ6BOAT9hnozET6RDwGADwB7AeOtvNYz497VVtt85rFFBi7W5JkpZSTlJBBH4hySDwORjABJPOBzjA5Rm8ruEItsNqWve64gqQjBBIz6Sdg3qSQMKJT9acYUnJBNN01uPTGVyHyr6ULQ23yQVDdlWAc8naMAArA/Ek8CNbuQ1wqNl0CDCoFMqVxakakVhuydMLcpCiZki5as82I9X2FpYVBoTLy51R27T8odwIUhLiWnfb/T2W3lvOWNH1RALFqp+q6UMYxdX5enDsfZtx3zuOx7Vs9Jnq73cw0dOVSlGfqCdggkUqnGSQ1V6XVm8L+1u1FZ7ftBZ7T16zqambqNeUtlQoOmNi1ApalOPvsukxrjmBhS6Ktkq/xdC5BIVIWhqSnt90JsLt7sZqzrFpznrTXW6lc1x1Fz5u4LxuRYWuZXa1NLTapMuQtZwpaMJSpWB9e5ZK7Re36l9uth0+03HJtdv66iLo1TvioyW6jNue8axKfmvhNQCQtym0uI/DpVOp+Esw4VPjNNZO4NSdad6QNPobrVwNIcDmPk4y0Ft5hsZKlujcr6n8oIQQktpbGSVOKDVJfEPft33rc/N1ItB6IReIXIbDCHpL8BSC4I+q/4LfhP2j4M7Vpdy19saO73Jp/P2rG/lOj+RjqyVWXOUgNPCX6jor2BpfU6yiPVKkw3HjrBLbLmc4UE/tAnwVKAyvOMn6gSBnp2FHplPokJmPBYTHLadzriU4W8sZO5eBk4yrAJIAUQAkHaM2PHZhx2YrQCWmkJQgAY4SAPb/n26ylsIbxvdxnOP2ZPjGfBP3HUY3GpDQlAY6epOQ8iQzkJTRELiVKxkyZeaKtvXeb6W4SFcNGL6IRv1ETiMvJfEFKq85S+trT58mOv1okhbKxhK/q3AkqUUgpUDuQSQACdxxtChsPqbXWDR7tu72tOJei3dHYlHrVvSabEh0esRmlU+7bcntB706/aV1x3marRKxAd9GTDfT6ojPBKy28dyklAviMcIUFhY5JSoAbcnGMjJyRg/meQM5vt1IhSHdqgtCgpJQpSNpTuwRhZGckc48ZScg8K9jv97BmbXUnosokpcbIyqTGuKiceRleWWgC2qfi38N9j8T6erRHRdYTlKHMFAWIyKbtLajXisHL/AN3naB3A/CuuZiDd8eq64dmFeqZ/kRrzBCFVnTdmSGm27f1FbhRflXENkGPTpxMFJZZ+UcUURmXD5Rl0e8qGmoU6fSK/a9aiD5KbDkNzo06NIQtDoeYUhKW0gqQEtqU76p3pKUbfr644dx2HqNpdW9E9abcg3nYF0U6VRq7Sao0h+LPpkxlTTrKS6hz5Z0E7kvYJQUJwEj8HLL3x/D01Y+GDVpOrGkrdW1X+H9dFVQ85QIjbsm69CJFVfceqjc1pBlB+xqdNdccaqJajtNCZ6Km07Q6bn+HviM1O1x0N/rHIOEbwkWyX3yjykoCt3kfPr8Rfww7r8G903+vHasNLSSenOJRqx43dW4jCqGSg2FRs5B/iMdrSu3/VlVSoUZf8gL+VNq1BmFpSEx6mzLfbq1PUpSnAkMvJxHQt0rcbStTaUBRSY3VApUUnykkHHjIOOuv7vK0wt7uk7c6q5QP1dVZVDpcm8LRrdPCVxpCo7IMunxVrUsmoywEp+Uw47hLwRy4sK5BnkbVubiQoOLG3HBIVzhQJHAIJ/wDUEtnc9OEJxnCDEneafrZgwFI34tS7vpN8L9ze4bG5DGenxGNNhI9OKuohxX8uBxfVnqdD9HLQy78WDtvZeIAXMuQhWeQpNCkbRgEE5ClYOcDkkEA4gv6mZ+AJcDNt/FS7X57y1IS5clVh5BKdxk0GotNo3AHBcklhsf8AaOOcEb9i/wDvXaZr+8Kfo+z7eH79OneS+2bz/wDRLX1yfwP1cHlxfX1I3MjDmc7PY+4OE4z7YHjz1c6qWyotrzgbVbFDOSCCPbwRnjg+fyGeqeuiyUZbfaUjWvpmPpcq8Y9165knGEO5afEpYakpefzOnq358ePBX6dDodDodLumXqhz/Juf9hX/AHT1dh7kqb38Ky4VeDyrefbjnPt1T1tIDTagXCnK0+Dk/wA7ek8ZwcjjkHpv3c01dOApcVsyL6pRJRuNxGAubzZk6yHM+Xg5rn6el/0v9WvHVAGQT9sf29XsjnJAx5z7cZyfyx79e9Y/SBTZcaPmfMPV5j+Rk2fmpScTxRwullYkhH504xXiMoxvzXJC3x4y/wD06qhs5SVlX0qxnjxtKhgcnJP7uPz4B3EGKt9xSE+cJyQAdoyck5KQE/ckjnaACSMY8OIpakqUMhaihKEnkqAVk59wMFOEknlRJTsOVVtm2ZEhxtCEoBWklSgUqCQMkIJJ4IUlSlEbSSCdysAdNvce9x0qk6kdEk0kiMi7rzQsSNZCLd3gtn/Y+z7rda2jHRL0zA1+aTFtG2rZcnLxEALiutpttB/Ydn1E7cnA25BJGCon6MkkkklOMpKdqSf6ZaNRJTti+qgJQBkhKyEnPkjyQncAUlB4OBhIKmUG0flUoW43sKEkIDgPO08qVgqwpa8nxgJyU4yE9H6PFbYSUhCADjAAB8ZyfGBnOcDAyTwCT1XvdvivUnKWnoT5lnqs+ooUuKCyLTVYOrY7d8KQ0OPz43OQKyjZFiEi3C+QGXNW6p9XSeQ7OLLbZ9VtC9oCkKSVAcEBPjGAMYACfYlKTwLr9t+igKUtCkjIyhC+CfG87wrBPAJ3AeOMgFRFNIVnjBOeRnyTnOM4PJ/q4GOMYMlIS28lXKQ2onI/zc5xz49sc5GRz1Go923epqXLUtk+o4l5ow0+Pa/49O+r2rT0ImKjiJKM5AOXMbj7CqFV73jpJ50QRFto3BRKMkgYyQcZ/ErG7zjjA9uete/JJcyUg8DAB/CMnAPHJ9yT5z4AwOt5ViSoE+cjIznHLnGfy8dFB9S2nljdv3HcN2fpByQkfV4A4/cBwOpTs4/OiM8yIX9LtjbZXiz9emPds9I9BxkSobJVGQS9+XkrOUCvLXTZ7ZGLdswf/wBo0LJ8ZPya8nA+5yf49GXos2qoOW7apPlm16O0ABgENxEAKJyc7vUVkYGMDk89bgKS8okMblcEn1CB9h7Ae3jycH7HqY2TIp4+XDOD2PqmH26r7uPq3u49uMgfBSRCvIfya6xeh1eaa9Xd9W3bj2znOfzH26vfKE+F5/0P+Lo2y69/oC/5HSZkDS/0etg37/w/29etEpJIOCMf7R79WGo3pbvr3bsfzcYxn/OP36CHkJcdSpfCSlI+lXkZ3+AeQePtgDHuSr0tLUJ6EJQCOmauWUVnzHBAVxefOLWukc9SGn6udXKISzEjIGQsmq/K03d1XW3DiFHAOSfyP7/cdbKO4tzfvOcbccAed2fAH2HWkb9Pnf8Alj8X558fw89ZIcQQSDwMZ4PGeB7dZ1dLNRJPjLGy2vCV58VjP16P1O5a1g6MJRPKRnFtquM2UwtoTi3Se9my+ab/AKK/6k/+bqhco5GxPHvvHOfyAV/bnn7DHOsL4BICcj75xn+BHWGZMY/cfuKv9qDj+GOhHbL5jKv4P8zkJ/6uPoVpb/U05DuI6copglKOnLB7LL7ljGX09PnreiWscqSjA84yP7SSB/V1fRUm0pA4GM+6T5JPnenP9Q/29FFc4ZUEM4CR+NROBwFZ2hRJIHAAJ85I8DrHTOcJCvT3gKVwCtJAI8HCSggcEbt5GfOeQcbHkZH280fSv3k/W0c/XrOp3PS1EI6MYhSsuc4jTWSWn5syDjPhOjymaFLTkkEZwVhISMjnJCh59vzx1s2JIUE8IUU7sEHzknO05PjHPHHI9z0myK03jaM5GcpSFLxz5yGTkfmOOevTW3Rw1uR4yooeIUOeNqWkkEE8HOMA8ZOei59r1Z+niFeFsx9cV5FcL5x0bDvPbdKXIlUiDGUGgbcxjPlH3bHjkF456Vtl3aUuAEjkYzjI5GDjPvz7+B1fXJUpOEjYfchWTjB4/CMffIORjjpHf15KCSpalDCdxAyTwMkfjAz/ABI/P36si6X0j6vXI9ti1cY/Ib/yx4/j7Jf+A681Yyg0/Rx4Qyl+X29v4dFnxDs9R9MDzWdRo9wxBv6eM+9eym1COH2nEKG71AsoTkjB5wgEngEK2Z3AgKPIPPSYT6GguqWWyRgYKQlRHOMKCkk4BOU442n8R/mg3XkfQ4s4yMEukYVkHALaAPOTlWDggg+OrDlaS6Tlte05AOSFAK9ikOAHH2Ix+QyR057HZ7zbhTGUH6AiiFltCGMX749umbuW70NSZwgBKvDzI0iF1yq+TVBSF+yWZtLbSshaecK9NacbVA+fIVjyAtHgDwMEKOlVTg2SfSyFHzuwM+cABfHk4H5cdGWXNSt1P1LSoJyhGCCASrJBH08gYJJBITz7dYyn2SyUpS4HjjCuAkfUCQMLz+EEcpJyTzjxItuT0iEuFSayX6bsUyUU5rDmjHUZ3WppeqpyjKiqfU1eJREM1hXl4t8iWXoYCdoJQRySfqKskEe4TxyOBz4PI6wnI/poK9+cY4248kDzuP3+3W8U408Qnk4zjOQDxnjB9se+Py89Y62tgB3ZyceMexP3P26K3G7Z6pTZEiXhJ2smnjZmTHy1X8Omo0NGXKMtP5epIxRIBShIiRxVpQLhtvrRdDqk5JOFY4B8A+c/7uvQCPJz/DHWxNWuEwtOSw44UuibKlKPTf1DpuSvc9sZ9/4V/XrVvAlIA/pD+5XWuAUMFKd31BKspO1AUhRSsg7Q9yOI8dTsx0ZLMdYBI2obcIOQTj2GMEYJIKgfpyBgZ8kgfn00TVXVHUm/7+qnah2vswJ2sMmnIkap6oT5MORYXbZZsxLqanVrpnF9VOVqO9TWJsqgW6hU16iGKxUaywn5qNGQw9771p7TRhOI36uNhZdMnDIyRCPnJK68xk/ZdjuO4bg09CHIJRZTfyiJj6S+4XV56jq+LRqzPv8Ar+kHw9bDqzaLv1jvSPXNW/1PU4z1VtjTe1gqoqamCmu1ByI5V5cRJVELbj5aYS4HGNrLkhU4lvwrapNHoNJZRGp9GgR6dAjM/Q0zEiNIZZDaC4sN52FRSFcKVwAAOo9e1/TPTerd4Pd5rPYkiqXTb1uXx/gRtDUKvVCTVZt8sW1SYkq/b+ROlvSDJdu6qVFhkyYiWIKxA/ZRWyFBEkjidyePb6vGc4B4/j1EDuM9yXxjGOI5GwscLRbxOWHGB6lptztk/loM51a/uBhKFZWuFaAA9RJNFUcuoTFbG514kpG5IwlKVEk5UPtxnAODg5GDnw8xo7LO0AIQNwzk7ykBf1cjG7J4GPYccdaqCRKkuS0qLrDZUyFFW4tvggus4SRgNhSgEkJICvGRkbfrAkhq+MgEaPDftfv/ACT+LrEJ8pJhaDPgI5yEhUz/AKeOto2tDqFFag1jbgfjJyVZOBggDb5xjnqMHvWrVy63an6Zdjun9QYYGqspVxavVqLUFYtbS2lOsySauhhlxyC/cbiF0NhtuNUXyJ62Xm2EPx3JD89UdQLc0p0/u3Ue7KlFptDtCnSKrUvVe2SH4rbSiW4TYStyXIU8WI7cVptTzqpKQ2hS8IUyfsW0Nuiq2nJ+INfjEim33rtqS7UKzDf9VtqgaFVH/FLVpbVOc2PREVirQWql6jn+MlJAWyWEMOuwT437w6ey1YCMwjpt1GNZX35KyJWlC/lo8X7+BvwEfEvfdtuiHOOjODI4soxJSZReTJGyIUEZXHkK46kTs+2aLZlrWzZtu0mFSKHalIi0WmR6ewiNiHEbGxTx3rSXitLr5KdiMuKASCMh1+j9uH1Xq0+yAhCfRiqUkFRWMqeXlRyoErbAICs8q3ZIPSO0y35VWntQ4bZKnCglQBSlIJACVAH6gnISN3A5GAMjp6FCpjVIpcSC0nYGWk7xySXCkBROVKOeADlR8fw6ovV1ndTNWUsvGTV+TjXuOAY3XvbmuvWvbaG02Gw0Nptdsbd04cZIjyGMEor0nlX3xHFN7lCtqgrGcZ48eQR+f36SrXPQvTruK0/rOl2qFI/W1sVxhQy0+IdQpdSA2Qa5R6h6LzlPrFIcImUyYwA5EmoYkgLLQQpW2P5/+j/4ur5AUMEAj8/+eD+fnouUql+mL/r4/wB39mkaO57aG90dTbTCpAK5vwn6VaWZz/DqNCxp/wAVDskjwbW07uGxO+nQWhKeRb9qX3VZFnax2XbyU5bpwuRluZCr7NJjI2szahMdlT2EuxXRHW+lZXyn/F71bglEO/8A4cfc3T5iWCr1bOXa10UV5aQpSlQZqq6276SCEI2OJCgvesupASA7NsFsDByRkZIyMHII2nI8Eg8c+/WWwWzv9RLIOQQShtJOc5zgAHH7s8nJ5HQdZ03lEZEaAW1MFeoZV9TkWeRc9V3qfh122ZzZsZtuCWJSkN1GUTl5Lyhgk+emmSPjHXe5huhfDe70qzMyrDAt+1oiBtGQovfrh8AHB5KUjAyFeSkgVH4mfxIrvlvQtM/hh1y0vWT6tMlaz6lUi3YjkRagESJa6VIkLUrGSWShhxvIKMkHqQOO6hGFIAKD4HIAxuH0gj6cknO0DPk56vvLCihWcecp5OPODnHvkeB+/wAdH/tctXTvkRqUCdkSUJMgtvADmMrppPzekTaf4d9u0tRJz1JCvFqUwAaElLy+XFDRaeYxp16fG71dANUvztR7W6LMXtMG26ZWNT7jgg8ZKqlKjw3/AMJIUZDqcnISSkDok1r4b2seqZdV3WfET7odT4k/Y9VLC04ryNKrLmk7y5DlRWWKi65S1KWlxEOIuGG3A+tSnVPZMtbhKtu5R4zjOT55P9uP7PYdYUtr1gggJcUng5SkHHt9SsYA8bRwc59h0U60tOc4ylEriXygMh4tMeUZ4sLRJFqlWue3+CO1aXHzJyvKAHIcIhRWUUeLVe/TI9I/h4dlWiMin1GwtArTnVyG8l1d1ahhepFyrfWSXpEeq3UJvyktwgFuQpqQplTaV4WUgB7TrEBhlmLDYYgxmBtYaZZabShvK8ISxHbaaaR4VtaQlsLKtqU5x1gEkkknJPJJ8k/c9DoqU9SRTPCB4GqYth+UcZeObuuQPUh2vw72zacXS0IjFsoY5rzdsvPi5NFHi7vvKaO0I+ojkuKBK84243K55HkABPjHuOrHQ6pWrYkqxnGPfHk/8+Af9vWsY0AW+2W3/f8ATp7hCMAhCIHgAAz+lHVXQ6wVq3KKsYzjjz4AH5fbrLSNoCB9S+dqRwpRJJAA5PJ49+t2NVnL7f8Ar0dLT4g3a+1eMZzaYUP69V9VbFlIUACFK2p+ocqPgHkkfvI8c+46KV0X1atlMJduGqCPKCwE0uJGkVKrS1BQAYgU2C1JlS5LqlJDTKWClZykqAKVLQ+eNeNY5YhUtEnQ3T6Yy983PkR6crVOv0p0seg1HLa5UazEOYkpfLcc1hQeZ+uKWFKdxKMgEOStJE5J485Pqe/vi80mnqkUAJNL5oaYlDgtuxFMfcejZqNr9atiT/5IUKBV9TNT5iXhTNObIa+dqrchtDfpzK3OcLcGg04KeSlUya4SpIdW0y98u6Gynb2mN66iS491a8z6Y9NjgGFp9abFQgWNBcA3YrCJimp9yViG4oszZ8v5Vl6Qh1piH8ohiVJWTT/SiytLaeukWXSWaYzPcRLqlQWp6ZXq7UGUrzIr9cmPPzqqhxLqwG5ClFrKtqlFxR6UleJLaSAGxnO0DgY3JwACMAeB+QHA8Ap1I1atXQVYloyryLSeoycg9utYMhWQPL3fMbfEawCFPnkDytSi9HjtRI8SAww1EhxWUsRo0dIRHYQhISlDLKMIbbRhISkAe+fc9Mb+I73Ix+1jtD1Q1FiykNXxV4zOn+l8FRKnKlf17tTKBTkR4+1wypUCDLqU9iOliYpxTJT8m+SEdP0wSPp/Fg4BHGQMjnPueD4x5yc8QXd/ldh69d+Wg/bW36NTszQ2lUjuC1IWuSl6kNV152nQ7co09lDXpiol6RIciYluLCJTiVR2UpQtyR9g2ct7vdLTBIsowst/eivh5YEr7pVU1XX4p/Ez8M/Ce/1/nXOcKgeiMy6Ks42ykry437K0dUdkui0jRPt9s6zKs785cchmRcd6T3I7zUmfetxypNZuSRIkvstPylOz5O1gqceKUpcII3KBdG9GS2psISS4oFJOTlQGCOMlIAyf3DyTjPV5LrQaKVKKwFZDZKkkkk43FIGVAcrUd2V/zjlPVDLn7fCzkuFCS5jlPt+EDnP0ggEeAT10Jsdl+x7HR0tM5OlOUWpRLWIRWHmN+tLAqGLJieRXf+6a++33cdxrarqy3W5nrFqunHkrGV+9lgK0t1UWWlqEqPEa9V9ZTjO0DBJGRuODj6UjkkkAe56tMupfbS6jISsEjdjOASOcEj24wTx0Ta3LTV7toFvsuFKqfJdrc9IyEyadEeejIjvZ2q9OS8hClITnIynI2KJPC9m9fpoDbe5WxseG0ZO1A4HCU4SOBwPA6c4JVGUtfNGUrwHteFu18dNWitVeKEML6gfbx5cOb/R6p6xakstMAEDJHOT+HBcUDx+LJATgEHnPtjrNQcKyPICj/Uk9Eu86mqnUp2STlW7KTkpO4EJG3xjhZPPAwM5GQU+61GECIDz+teI0plPsX4z/AD2nFlGRYHEFyqzeFVVVS/daow9Nnvu7ZaZVQekPsGNT4s6c6Fvei3HhU5tb0halneG0tsI3qcIKiUhW0kdNp7ILRm656w13uorbch2zbWrNQsTRKhzUpdpkqlxEhuvXa0w42y6+K+86yiFJbkJifLxQW0yP2pdTLvLuGuTLctXSSz5Upq/+4O9qdp9byacHP1hAozyFxbyrjJO5DUGlpliDNelBppgvRdziVPBSehvtH7YLa020/tCkRmwm1rMpFNt+36Y3GXGblyKfHUanVpaxKWh6dLkOxjIe+XKHgw0RwTivvivdyhs9XTlLj6iVj5XMYoSui3DTfFW2uu0/7MnwF+1bjR+Ie4xIR2UA0dD5RNm6rJlJmzjxlAhBjZPlyv8AKdKjpxpTGadjVyqQWthb3xozucAqGULUhQJ8KJSCMAHJSokL6ckzGUhoJZbSho8AJ2pGAcY8g4BHjxwPsMZKYSEJCG1BCEgJQkIACUjgAYIHA44A/d1iAkHIOCOQR5B+/VXRYyPQilKyi34/Uzi8LXjxVegUtY1gjp1GMACNSQwApYMvSZPp/HrH69AB8nH8M9XFDAUfvj+zrFe/AfPkePHHnd+X+3HTTqaXydSMZVKxabCuUoxXjIcgSxIq6fDYC0Pqh/NrrV1GellbbSeVkZHHkEqBwcnGCkZJSR7DOcpy0oXsGAVAgDI5JI9yOSOQf9/RZdC51YZQ0v6I5AWpOCkbVbikkL+oknnjgKA2nB6OuRgDHOSSc+QQMDHgYIJz77ufA6wagRiw9+X1GkIsbA8+pyuJI4o6VajLRjCPpbtqslLlbt5Y8ekRwrJ6ripHplK9ucHaFkgfiSdpPAG5IPBIGcchQGHB2FfdCq1EqWl+ptNhXTZN1QnqNPpNcaRNpUunTWwxKgTEO+olaHAVhp5wLQ3natQUSOm9pXtStIHKwBuzggA5I8chXgjI/PPVSVKUkpJIwQoEcKSr2KT7EEA8eSBnOBhw2e9mamnGklp/kzyhKojJYuItQDw3IVSzqC/F/wAHdt+L9nq7bfRIzlHjDUD8uRbql+ha1X3Xrny+Ib2MVX4at7ztSdJKfUK52OazXM/vosdLs+V23ahVxaXqo8YEduRGFl3YxPcmO1iBOlOtSZj5XRpCUAp4PO5y0E2PrbftCZY9CGa5KqlPBABXCqwbnMrPk+XVo5UrOzeNu8oT9jSi1e0NTbRr+hGsdGg3Zp9qLQp9s1+n1dCHWJlMltJZdjLLm4oc2u72JOdzDiEkBeRt+c98Y34WGo3Z73dWVpZUVtXPorqXUFN6NaxTklTa4VceQ7HtO4KslpapFSgKZ2UWG+62tKHZafmFMqQ51L9LvetrQ47mTKMf8UhQrBbLy8R9ryBVDw/8UfA2r8I9+3W3jpRNObUZxjKEJhxOQVIjROPpuVXh4sa5tGWHX1hDSFLUeOASAcEgEgHGcHGfJ4HUlvwkak9aHxEe1Woz1fJRntUaNFW+sJTtEh9uMDvUDgoW8k7DsyoBJO4jb0Tdo36OXe99W/SKpctCj035pCZDEp3KUvRnAVpcSkLG5ath+kKAG0fUcjGj72Pg9XV8P2h6KdzVJSzEptjd0WmyboqzbLi3qLb0uvQ48yctttxS/kI4V6s1aUnaEMp2b3cofOxbvl3PbyrhpwmN3S21XLxS2W1WFEbIj33Q1Idr1jj69XSkJnAxsyWx4+VQw5Yt8e5BrYs1BJUB/j8lKTngIRt2EeN20Jzkq5Ayc5J6w+tc3KZlwYk6G+XYs6PDnRH04AeizojcyM4SkjBdjPsulOPpKkjHORntHMZk5ycu5OcnJcJ5/PnP8euidnqs9HZlsourGpLbVqLV+wHs+LpG+W+6aJHV1PJLTuUhL/POJxuxOMpScmb9uquh0Oh0/wDTR0Ot7FUG2EIWcKTuyME4ytRHIyPBHv1qI/8Alkf6X/dV1sVJCwUqGQfIyR4OfbB8jpDLSjpwjpWopqSli+ScWjAFF0q5rl0W68tGZxItxyouF9gY5K+uft1eS2kpC1L2g54x9ieAc+Tjjg/uPV+LH+akpaZQSdv4ieSQeQAcgEjnPGBnI9jS5hS0IOccqP2I9vfzwRn2zx0erapKkzmysBRWkEAEAAFCsAHePBHsEkg7eOmbuu5jt9rznbch4nniPsV6vpbjJ7pck7V2eGvUuIpi/KyiCpyXivmovhaPSoYrUtN5xxDjjQ3uApbaWApLSCr/ACi8lQClEkYB5BCSVHCenG0GhQ6ey1tQlbxClKdI5CsYyM8lSSn28e2QN5LFCp5aSykIHrSCCceAnkIH1AbcKJzuVkqAJwcZUNKxEbAWPqCUgo55WQV43DfjB+knJBJKhgYSKg7/AL/U3WpGEXA+mIBKXgZS8uGv1pXzRe3w523S2O022oDF5xuVK0R5GHPqMWBcbEWh2IAAwAAPsOB1adfaZ/yiwCfCfKj5wdoycHBGSAnPGc9aKbUlI3KClJQkEnZuQdoJwc5USeAMgIzzuSBgdEKp3AoBTTZKVFKknAwArjgJCiVeDyo4B5AAIKmja9r1tygYGvB4H6r4ftT5PrXUk3O+0tvElK0kDcsfzLsHILx9X0M9HWXcSEOqba3BKAQpSQlRUrJG3JBCVAY8ZSDuBWTjbrjW0PtrClJHH1FSgnwXAdw3bR9WQSCrlA3AKBHSA1Crzi8ptTytvquglAxtIUtSsBJRtQo5+klQ3KGeQD1YaqEraCJDhI9t607eT7JXxnz5OfIx1ItPsulGEWuMjjnyqIq/x8erDdez1HNfv2hqrC1lfgY8gAfy1cYuFQt8iFvSvVFYcW2hGVE4wR4JSV5Gc+24HONuDndwcFl1tO4hX1Y9+R5AJ8HrV0+sOupQy8srUgLIJwc5xkAkhefJKeRwpQIH0DML/jCfvkE/1YP9+R+X59O2httTQKariUiN2ueQ/TFGPu10ybjXNxTGLyJMmX5QsyByXJxVaSsWSQaxa0gG2bbSU4KrepAI5OAYjSxnkEbgEqHH4FA+CFdHP5v/AKv/AF/+HpNdPpSqtZFqz1NBLztFjMvEK4UqGpUNpfOOTHjtpV5yQVE5PR8SlKRgD959z+8+/wDs9upx2nTvZ6epMzqRixyNxL4uKQ4oFq4qirlXff8Acy2/dd7oxhBIbiZHmSuqiL6dSOFGlvwl46wfX/zP9b/h6vMu71FO3GffOfYn7fl1aLAJJCsD7Yzj+JPV9ASlSEhP9Lacnjgk/vzn38dDbcHXgBeJvvj+7l5vHn/f1bHfa4WT5ULTCAYLpoGvrSNXTddbNUs7TtR9W04+ocK5xjKcH2POOcjGBk6hTi92ScFJVgcHGeCPHP2z1mdYjrrTKjvQOSOTk5JG7xtVj38cf2dO+nEuoxtfpl9vq/S+kGpuwqWvSWxgELpkZPSLSR97+l5znNPqbOWnEhR+21ROAfYg+xPV1cp9xJQteUqxkbUDOCCOQkHyB79aUJIH43D4GfUUk4HjOwpB9+SCrnk9e4P9N3/7s7/5+sujBbaUqpcBcV4VHDdfw6b3uED0xNViFAoFOUrlQWuPfL79bVch53IWSQrGchseMY/Cc+QPA/f79WS4lOUkjnGfpyR7jBwSn88EZHnjrS/4p/z6vVl10ulP07QnPvk5OM84H2HGPvz9jo7UUDlGJ5uBGvpRyb8e1VivY6xLd6molQSgOWqykAWgCi5+iB9M9bJ2Q0UrUNm/araQ4CdwT9Jx4ODjjHPWoUoqJUo5J5JP/P8AUPAHA6868UdozgnkcDzyQOPz58e/SvT0iGDK+75/Q+39OtXU1JxjGcmXHA5LtxZfEQaKI4822odkOtlJQpKSQQSG284G3Azs8D7fkPt1jrkvOJ2rWFD/ALCAfbOCEgjOOcEZHB46ocWVHBAG0kcc/YHnjPjjgdW+lEdOADxjZmyJf2zXsdMevqXqzYSkRwAXExEi4xQo+3VanHFEqUtRJ8ncfYY/u6oJWkEtnCscHj+IwQRyPuMZwePPQ6HRgB7FfSsfpX0rH6dEReKSjhG7MNn3M9Ubzx6gO854AH1Ee42/Tn75Iwck4HPXgedcAKk7+Tg5Skc+wGBwMeSTznnqpSEqxuGcZxyR5/cR9uqus4+hf6YPPis1X+Xv7KNTc6mrCMJVUSmrOVVTL1epwPsDml8YKlqWdyjknGTgZOAAM4H2A/v8k5vMfz/9H/xdW229+ecYx7Z8/wBX2PQcb2Y5znPtjxj8z9+jWn0DXjFeKz+njrWSSuK5f1fv/vPQbc354xjHvnzn8h9uq1AqSQDjIxnGePfj8xx1iNf5RP8AH/unrKWnckpzjOOfPgg/l9uo5IIyKx4frX/XxfWNSJCZTRh8XWa97vxf9Oiu+v0lqAHG5YHPjacD7k/1/wAerTZJSUcDHjBBJGecgE/1+CCP3nbvMBeVghJwSonODgDGTnCQAOSB+ft0iuuOsdm9vWkd96v3zL+XoVkW/KqxZSrEqt1TKI1FtqltoRIkvVev1OREgQUsQ5XopdckKacU2hp07e9w2u02Wpq68+HpYluWSJf6F+fuXTjpV23s+47juzbaWmIzJsxKYEl8WcaHin39NqK3nu912vKxBp/oRohQnrp7sO4OfNoOl1quBS4Vh0NtlxdR1f1Fh7VMxbQoUSPUHYbjuVorUdlUZ51+K4pqvuVb00+Dv8L3V+DbtfmXrrZftBnW7WL/AH5pRc2qXcJqpvoJu+c/IFRShUSQqaIDVRU6iFRm4zaGnUNKS+rnw39CK5p/QLy+IP3SqjvdzXcpAXVaFSqhBSHNJNJm3ZblrWbT578h8NrajyXJFXbbMfBVT2Q1gttriH+K5d03uW76e0ftlkbZFt2TJndzmqrXLsWNPoZiRbMjzNjYEOotzJcec4VLcajqlpirIKG3HKW7v8Safd+4Q2m1iMNEiqviTxYDYN0qgo+E/KvW3wr8C7Hsvwzrdw3ehGE/l1Ff35YZFsnBd3fm/FSHE7RNKXNFNB9PrFl7TUYtsQZlYfKcPTK5W0v1yqynyn6FPrlVD0llHADOFJSQenBVqYqm0qVPB2+kAlCsJUPUPIyk5yAOTwcjhOVYHWyCmwkITwdqAEJBSEoSCpQICUpSFLIUlB/DjaAAE5KtwE1GXTKAlW1Eh8zJZIBSiKyBucUAQvaFhIOOCRgAkHp97fosI6cNSJYWh4feObyNhhQwZBWiu+6sdx3HW+QBAaHzj3fzA0V7mbW3q9Ro66RAQlYSBUh+uHQgFRD8wgrGFKBH4wdoUEoB2jcR1unVFWOBgEjIUFA5x9vHjjPJ5+x6veklKW20krQ00GG3NxIDaE7EYCtp2lOSBtGPsM8YNQlR6PS6hVpz6WYkCNJkvLOBgRIb8zbkkY3lnbu+2eEkAnfW19LQiTYtDxCNLk/UAwr/ADAMrdtdLcbjd6Gho6ZqOrhcEouTBF9WKw+xj6scHebCqPcjqloN2NWM5VHq9q7cke6r6cpUdcmJStLbemU96pyap6Ki8pE1hbzRjtoQ62G0KcfiqdZU/wBCMrTK3GNORptQ6bEgWxEtmJbNPpgY9VtEGnU2PAjNOKU8kLREbhwnYbZRhtbTocL/AMwfThv+E7a0rWPWXui747gbkzGL0r7GlmicmclxS6VYdtSqoKlU6bJcMeQpuuzZ617ZMRt9pKUl5tSHWg1O3kbVe3I49s5Pj38ZH7vHk9UV8Za7ve5Pq4kNPUobSQR05UIsVSIo15W7c+oP9nj4KOw9m0Ndh8qWsaUpSo5z+ULH39J6/IZ836Q6TuxLFRa9PiRn3PnprLDUcPlJU64GxhKnjzveJJKikYJJ/FgYVDCSQcD6cgY8D2IwOPbH5dF6sxZM+mSYMOY/T5L6f8WnRikPRnxgtrG8KTt4IWCkgpyD54TDTjVVubX39Kb/AGmrW1QphkLgQZsoKhXtQY7iGmLit2eptqJNceH7WfSI70ipwVONqW0629vZhEo0HE+tBVt0NF3j3E8eL8ddQ7mSEJSaAkGfBi3zyr6qVmuTddLgAEjAGAP/AH9+vetkIzfgoBIHJSV4OBkkZIO3gnkAgecdWflP+s/1P+LpMa0G7U/Uu/rkv/b0k+ZF8rfnPnP83+fWH0Oh0OjetuqkqKCFJOCM4OAfIx75Hg9XPmHv6f8Aqp/8vVnodYYxfMR/UH/PrFD5B/h1e+Ye/p/6qf8Ay9ULcW5jec4zjgDzjPgD7Dqj/b46yG4/qJ3bwOSMAZxj78jB98fbB9+tUhD1JGNe5HOf0L6Dxjmg/h/06x+h1mGIcHC8n2AQSSfYYBJ5/IE/YE8dJdqFq7pjpNCeqGpt+WlYcNsFQduuvwaNIeSgoLqYVMkrFTmyAlaNrLcQJKVpUXE7kZyTjIsbDz7V/Ov9+L6xzj9S/p7+QuvoWX+p7p0owBIJAJCcZIBwM8DJ8DJ4GfPVsLBKgASUnBHHPJHGT+XvjpkSe8WNqap6m9uGi2q2uMtLzaoN2fqeq6d6Vw3gVBMusXdc6Kb8/S1Mh1bTNOp0xdQcRJZhrK2fV6NdA017m9SJMSdrBqXQtKKO2kPyNNtC1uz5Dkl1IStNR1UnlExxuMGtrMekQGkSES5RkOJCI6UGkcX9UDzSqBSYy4815yUgT+1Q5sOKtWeoi0MbWK3WceGkxbXTgK1qBbFBlGnTJ6ZdWKSpug0siXXXBhP1Ip7e5/YCtIU4E7EE4UocqGE03fN3qaFOhKtCgJCixLqQULjXuAG5aEOLUwUkEJSo7xgK4+knZ2ZpRp9pfFfTZdr0umy50tc2p12Sx+sbnq1QeSpLs2o16UXJUl9beUKKgj6c4UOElT8qOCpRUr3JOT9/Jz/6+ejYxqfEKoFkXWKAcmZFvuGaqXgvU1J6kRImmKgLyWqylsaTD4X3wp0QaJpzQaFIRUEtJqNbcG+XXKiVVKoqkKBC3Iz9QVKENKgNhbjIZGxRHjjo9oSUjlRWT5UQkE+eSEgJ/qA689T8v7f/AE6wXXS6U/TtCc++Tk4zzgfYcY+/P2328NLXkunK/lorUgiyixKi8RsJfWrcmDraMNSaEnwUySN+b8Fe/wBMB/XGcdU7jcEjbnGAffHnJP26tdDrw4woHgFKhk+2QRn+HnpJECj8pfmroXLRl+vSoDB4PH+/r0HqhBpkObPnSkx4cGJKqEx8p3ehEp8Z+U87tJAISW0DkgEKJHGVJ5yeyqunWC7u67uQnsrkL1Q1yrtAt6ovP/NFdqWHJqEKlwo6/RZCafEROQtphbTrqVkIXMdTsCJXfiJanxdHeyPuMvJx0tVd6w59q2u96qmw3cl2g0WkKI9N0OYmPtHZtTlZSA4gkK6YV2pWCjTDt00XsBhpEJFAsumpmxirZOVV5ja5NWlT2WwlCHZctKyHW1BDpSsobRsJVbP4f9qhqdwlqMeEIsJPmTGUiMfzV5GjNkkqNRc8Wf2t/iTc9u2W07PtojHc6ceWrZZ8xhRxT9ylURqY3g6ck06kFKUgEYVghW7kFQOeBg5BJHkcDA8C+Snfk425BOSQMDGckAkDHkgEj2HWEiIhI3I+kK9uVfhyPdR+5+3nrWXbMTS7SuWoo2iWikSmIpcwlJfeR6bbZXgEJcUvATlRS4EkDCtvVu666ZPRzxNS6RvlmN8qMSi3dU0Jxt6885YIuGbiYLxJXl5SLp98S4vumeiVaEg3DUrruZtv0Yyq1MoNHddQDIVS6eG0LcSQpCkh+d80+CkFO10JClAkBQUBQSApW9QzlW0JzyccDgYGB+eM9FewEIpNoUeA+gNyRGRLmLyV+pIl7pDqzwk7vUeUFJSkqGQcbUrKTugoJUUeSQVefJzjz/Hx0XBA5EUECyVjg8gsRPH1HGM9baOrAiyjFUC6k1mvzRzGLihpfYfPWCp8MIUVYAX9PgnnCvt44zzg9N11Zrj/AKbMJDm3c4UuNgoCgFYOEqyElSUrAQpSPxjg5IAcPUGvUWySTtOUnBSnaACpSsnzkYP2AQR5XxGn3X6nIse1b7u91QQm36fPMJz1gE/rNoMx6a2hIIKxImvtRz/NSpaV5Uo8kbiZD+81QdMpgX5kVyEG/Ec4bD0+Xpz7Lof8V7vobCiPzJRfLya423dY8AhhV9jrY/Dj0uX3Rd7OrncJPHzOmHbJRqdo9YsacytxmtXtUGX63d0xSV+mlbrzy22zVEOOxyna821KK1MM9OcGOGIUGOohz5SIzGSspCd6WtwC9gJA3pIJSSopP84nJ6jy+Fh25sdtvZdpdSanTm2r71FjPaq6i1Ftadk+5ryS1NXFTFSwhuI3T20qQlr6VJS+U+m2trL0hqpZSoFsAjAzuByCQc+FDgcD9+fI56oT4z7hqbvuEYaV6emfNJSitkZuiyiUgmItnHlk8Xfrl+E3YDs/wvspG2/Z9XU0SPEfzRCCSbyZsC3F+99WFKCVqGM4UQTnztJGcc46qBB8HqwSSSSck8knyT9z0Oozp7vVh+fjMcpRBttUYgZk23Fv7KvVsdUGQhWMBXAUeQPYZ/pH7dFm4aquJGSlohPqLCXDkhaWypIJGASDhXtkj25KSDB655+kflz4/f8Af+GOkXu+bKdnBhpwNhKyoAgqSdrhSBjckAkJPP8ANKlEYzxrJlqTlNj6sOH6RqwPfBj3fCdLNLSbUgEgONyJA+WTdeKwFN22V0b7MjyHFSprq1KacdPo7iDgI2AnIIzwlKRlAAGCng46ULorW2y+zTo7bg2LVzwTnbtSCT490qIxwRjBPnowv5ynk4IPHtke/wC/nHRX5kqVjdY+mGj6KWeD3L99NSDLUjFQa+748r4q84xVU5tcjodDodadJuqyo8KQtTTrf1NOoUQ4hQwQQsAkAkDcDkKHBB6Lvc52y2B8RHtouDtt1CksUm9qKE3ZpHeC46XJVs3zSEurolXiuqcSC01IWkvxFoWwvYpS45DScb/rPo9XkUGrQKxEGZEN5DiNqtvqJGQplSglX0rSpQH5FRBB/Es093qRmSkE0K948jkLYJHwVdFALfVc/H3whp/EWznqwhF3GnA4tHK7jG7TIRKq7qU2PGVS62Xwye5abqzpldmiurVt07Tbum7YK7TtJdb7CYb9NqeaJRIRt/U2hL2sh+0b9o3p12kOempz5iVMVIWFPJHTou8/tqtPvL7Stee3OpTWZn+ESyJcSlzKdIbblUi5KbuqdrT0Ou4Q263Xo0AtbiQAHV43NhJi072pNw9uOq+mPxQdIYUiqSdNoLtg93FrQCtLl9dvNTqsVxqpfIsNS5sqqaf1FUKS4psyUfqlqTMRBJQ6pmXXQ28bevHTJN0ac1iPVrQvZqTWbZrTJS9Gn0av06LOo0xl0EgpUxJ+spWVBSmwQkqHUj7f3ie3lFImpI+jxJHpYqgVcrs9q42ep6467/2Dd7XV3Gz3EeMeMhZRC48nTGm6yR4gOHlQNEXXYxqpVdTO3+z7cveC9bWsOkrDek2sdmT3vmatbV62HTP1KFy3kx47a49dpVKgVOH6QdbX60h9t5SH0Hp56c7RuGFYGQPAOOR5Pv8Amf39MU1wuym2HrH21d31iQkNRNf9S5XaV3JUKG76Sa5NhV6qWfYV+sIbbR6dSpFxU2qUx58sLbfYebbkTJC2I7rcg79NmxZLkV1kAIAKFZGHE5CSQMqB+pWFZICTncoj6uui/hjvhu+06JqHFixHCeRq7HJyS/dVujrk34q+Ht3tO56kZx4wkMoSBkybjZ5C83LLSUY60nQ6MiKXJABW0VbsYwoHHBPO1WQCPdQABwPJGbhprnH7BQ/cpSv9vU1h3SaSlLRjQhH1undtOZRkYstkwPNW4IbLbTi1ZdpUrMEpA45JyCEgpfVIa4XIt+k5/R/tT/v6zQVueUbcePqCs5/dj7fxz1nfJKzjCs+31I58nAPgnAJIHIHJ4x1lsRPSWFkJHBGQpZWnKSMDBCQTnBOTgZ2n7odbubrQYakNNi/+75RmZEplOcfIXcZYGqsegdt3eol6VJ4XkecNXUfankldZVMiGXMQsj9m0Uk8ZC1DJCeCCByASrAyRjdyOlmtmCPm2VBJ5zhQwU4QXBnalYOEEJx5AyTgpKsEW3YI9RClIIbIWlACiN34ySsepn6fJGUnBIGVJB6WC3WkocO9B9UpUdxIBSAfp4TkcpBG0EBKFbDuCRiN967hPU28hPEAKjVClSgLbXvK3IVYj1a3w32o09PT1J1dnLzdqAI+LsMhLHgOYqLBT6S0Op5CGkoCSSeD/nZJGACACD7Hxwb0mQWmkAAZGQkHwSVblHAwrwQPOAQCSCQDr23NyTkH6QPfJVwf3cnH9vSf6o6m2ZpXZ1w35qNX6baFm2rTJNTr1w1x75WlU2KypCXDLdIV6edw+lYG85QDhKimt5xOZOdL4pQVIyQu83crfYW+rG0tYhpsCFTiASuzPI5ViuI0Bdrn3639Zqqm0BQKVIcSEpX9Cm8grGAsDClJV4SnBCljJJ2jpLZ851/chSACvBUnKsoSCRggqGQSCACOCCcZAUOaDWH9KZ+Hpa+s9tafWjBv+/rOk1eVT7w1lhsP0WyKFRG46311C1qI2udLuaZJe9GNG3txAhx1aiUhtDbji9Bf0iz4W2vNxizk6y1TSqquuvxaA9qzalWt+NXVtuJRGK6zHjyorImuKU3DLrWXl7vSQ7ha0vva91soHHU1CKnHiRgcrUt5chqj28Fr03b6GvutLlFioKXZS8JTKjUTEmNlnteCpt3wVDeTyCSePJUR/V/V1YQ6WgrCCsqKRgFIIAyc5UQPOOP93Wtt+5aFedDgXJa9apNy2zV2Q9Srlt+oxqtQqkglIJhVCMooewpSRtKULIIO0BSScz1GnUuNbCdqgFKJxkhSsEAE/YjyP49PenKMhdNZw8XRH0yC8Ek8ScElpPHtDtbR1DcxYEYTYKWjylCLgv0/k4lvGGHPIRrTU1JUSpHjGSk8gEKHGSOc7Rj3BJJ4AO/iyivaoZSsZwTtyfxA/T74A9gfucdEpCSoKSkZJ2gD+P8Azk+AOTx1tGAWQnBJKd3KSUH6s+CDkeccHkfv6W60gNNiVGUZSYKzadTUj+aTbVXa+pXlYRIppa6ByOUjMZDxnFGxJCDXgGs0icekB0nO3Tm0z7mn7f65kn/Zk9KKj8I/j/eek80macXpxZ42YUYCzt3JPKJUkqTnIHB4z4PkZ6P6/wDIn+H/AHh1Je3V+y9vief2MuvGfkfwckrpv6+TqNfFOmne97ZXLcyjmrHz481xlFFw3hc1e6HWvkKX67aQtaUnfkJWpIOEJI/CR789UtOKUhKwVAkEcrUo4CjxuJyRkZ58dO3yniSvCD48XYe//K/0+vUS1twaMuLFlRBUQKnHkfe/PtX362B3bk4/D9W7x9uPz8/b+PWrkLUhAUk4JWATgHOQonyD7jq8r6ygq5KM7T9twAPjzkAec9apS9yEIxjZu5z53HPjHGP3nPR2jp2201XIrH777ufY8e/ii1LqapuZQ4xqOnd3Xq5W2lphKHNiYKzkmWcHDfPtlWRn8xtGf3ZH7+sPqw5IQhSkkKKh+7BJAI5zn35OP4HqlEgKJBTtSPcnJxzjIA/Lxk4z56MX1x0tFIyky5tc64xWqUzZVD9et46LEuMaHN3d/Ty374/+vWT1bcc2Y4znPvjxj8j9+g45sxxnOffHjH5H79YfSyMby+P8/P8ALraMby+P8/P8uh1ktpWgKynJ4wNw5859yBxj9+OrTX+UT/H/ALp6yyCQQDg/fGcfwPW032xTlu/r9v06zqSQoLxde7XsWhmvdDPk89YC/wD6Q9/+L/7g6t7nP/q/9dPQV/lG/wDT/tAx1c6M8BgfSGb9sez71fUenLlOU6PWsqVatcWVf8uh0Oh0OsdadDodDodDodWUp9LPO7dj2xjGfzP36x1Sd2Poxj/O/wCHql9zft4xjd7584/IfbrH6Qbqeo6mppyfQ8PTR9Iy8hfn7+1dKYaYnKeV9vFVZ7Obx+nWw8eOrTyykADIKvcHBGCP7/HkdVrVtSVYzjHHjyQPz+/VkqLn1J+lTeVDwcngpHOB5SfP5ecnCCNHqliMcyfpXvVnjrXQ0p6s4kY8stFhaRX6/p146n/FH5f0q9MtpUkjj9oUpxtJJOBnBIKFZOc42mLXTmn0b4lPevDtesUo1Tth7HKsm5qo1So0p239UteRKfpqojzrLP6rrlJs1h8IlUibMZZlOSFz2H3YjqX2lY+IFrldmnVhWFodpW5IV3F91lzRtM9HqdDH7Wnv1iK8irXfId/aoTAodAlTnpSlsOpZckRiuO+0pxKJI+3ft/0/7HO12z9IbYhoUqmU5qqXNU5CmjU7ju+pJ+cuGrTZjSUod+dq0iY5H2trLSXXEB17fv6qn46+JNr8iey278yWlmchfdiAUsXD+63lvzjoj8Hvg7X7lvDV19pXKekaUBbyT/xLKVcYykVUfao1y03cBcLl13ImhU+qPU6jUNFNiuwqWPl4rqaf8whmM022pTUdloLUlpLQcDKMhSSVBKuU7ttvCRr13o99/cu/KRV6VTtQqNoHpZVVNqLtPt+x6c+9ccFt8rKHGlVmehx1Py/0qZaAVhYPU4/dzqfP0t7fda9V48gs1K0dOLzuRmSF/hmRqQ4GSFlKgNqXHEtqUghPCseQYMvho6eS7G7OtLZVZjFi5dRlXDqdcbyePmZ933LUKg24EA7kkwzGdKyoEpdJ2gt/XA/hSP7RupaosmhV4xbZfkvkq245HGJGwOVddC/jhp7b4Z+C9t2/ajHVmazqI0TIx0SL4xROQlS9VVRGL1IAAScZ3KJwSkhWVZwRkZyc8H3zweei7Rn2pVcq9TaZLjTcRVED5yktvocDjyeeCfB+jJ24Cykkg7tlxTUKVI3EKbyELyCQpe0DhWQfqUFHIOeccnrDt1ltER5TaEpS/MdlOY3fW85gqcBzj6jknynPgfa2w+VBXk0UN3yiMS1W1ZNN3fFy564rhuOUSaRvjFc/vvnifT8xm6acVndNuLweNwSB7hO0AH8sngf2fn1Hv8RTWmqWJoZUbLtFclWoWq1bpGnVnRIaFPSVruKdGhVeelptKlj5GnPqX6yMhpC3STlSUmQSoykwoUiSvG1pAUrOQMFQSckYwMHk5B9gQSOo49PLSp3dn8U/Ta2Xh+t7E7XrUrGo95MqCJNLkXC4I/8AJCljJQXHJkltMlC2yJKfQ2tOAOOJcivxJvTabCcwiNjTKvcBKTJ6k9loy9WR+E/Y/wDtD8Y7DbGlIjCROUo28bavHuUq8QLLvKTodp+gNF7Ze3fSbRai7/TsuyqFHqT7yw7KerUumR5dWVJU36aHXRJfTucS0lK1BxW1JBIcK4gIIG7JIz4xge3ufPP9XWyX9SErX9Ujn1FpGEqAwE4SPskAkkZByMkYxiOoKgnbyQTxwOD75JHjH9vVC913mpu9462pFgSicRqq8exjIlY8DQefXj4a7Xt+z9v2u30oEK0i5XRUoxQp/LmJ724t83iYBx+RyP34I/uJ6JOpulFiaxUBu19QqG3WKRHlt1SnSIsiTSbioNbjA/I1y27igOtVCi1KCvDrTjBcYkLQ2ibHkx0FlZ+9D/P/ANX/AIusjprlIsSlL8l14+p0+7hhqxIvqiiJ6opaJSUjjyOPPnplk2rd1nb0mMkUeZ3ZaZsNuqRPoaqbaesdsNREtBArNKkOKol7wUQVBtuLQG4NRkrhSHlguOxog2lF+IJ2yy5LdGvO8Jujd5KW8y9ZetNCqum1aakRS2iYhp+vRGaNJQzIdQwhUepKW6VtEMoLqUB34JByDgjkEeQfv1q7htOyr3jMwrzsu07uQltbG25bfpVbbSyQVFKUVCI/tCsqG1K8BQKiCFFPREoCFtxjbUmXigoTOAwN/r7dIJ6UoN6fqHD+UYmXlmh97+r+6rYS6Nrho7dcZEmh6oae1Ddw0mJe1rPqcB24CiKsktq5ISgpJJzjA56M4vCzuS5d1roAHn+UNFODkDBzUEp9/IUefGc56R+qdlXaPWwPne3nTBvaVnFNtyLRgS6cr3IpAgtHJ5G1tODzySSSn/8Ae7+ycuKcPb3aBUokkevVtgz5wgzikf1Z/PJPSjS0RjCpHBF5CsT34t+r7eFEYoBydfnTj6SDV+/ETw2VJKcgNvvdNRcHN1N0wocZybUtStP4kdA+tyXeVsxdoHnHrVVIUSSn6cpzwRk4HSKXb3rdqNqkt1nXSyUyms5hUmTLuWUc7chDVsRKwpwpAJIZ9Q+2Bg9W6b2LdndtK9em9vGnRK1ISsTKSieSUglKkrnfMFBABBAGF5O/d0uVoaYaZWRHbTZ+nVjW0hBKkLpFr0aDIb2qXjEmPEaWQNx5WFHyd247ui5R09OfKZxk0fvSrFX6Xygv5ZFtYovJLVfXV5KfTG/qJ6vuKJiqttGbnv8ArEr1TTSdJND+4zXKWsqVEqNlaZz6Za0oJSFcXFdL1GRHJwoBT8RpACCsrCBk3X9SviDahoQiyu2HSnQimSVIaNb1k1XcvOvQmeP8YetO0IjNOcLf1LbZm1gBJWkb2toKZCucDJJwMZOB/YAAMnJwABk8AdDpX8vAWCVSQiIHi0LX/Eq8vcvKTrctarlKNRqiUmN2K8eRHNH7ueo6z2l9xuo6gjXfvUvGTRH2FCXY+gdvU7SehrccyVtisNTK3WZiFJx6ry3GVrwoJbaI3FV9MOxrtq0wrKrlhaVwbkuhYHr3XqVVapqXX5b6kkyZkmXecistLlzX90t9TDMZluQr1I0dk7tzvcDOcDP39+gHN6R9klaRnz9Kik+54ynjxxjoGnTlcNmVaEbVKtoKAQ8SwVrwKr8w/n5fWvY9heWLbtW+q21IYZREjMsxoLDQaiQo7SI8aI2Af2cdhlKGWmhn6W220JHsBnHWuloJCTk43K4x9OTjGTnyOcccjd4xzsVrK8ZAGM+M++PuT9usf1ULBCVZxj2I9/zA+x6E4wjB1Jw5R0hlTOQWlEWXsuIxu81VvRmgcEYwrwSDJ9LWqt8rQra229aUkkAE8JGB+QyVY/rUTz9/tjrzraKZbWSpSck+TlQ8DHsQPA61fSGGoTuhEq7+/wBP0r7dLYyHwV9f49DodDodb9bdDrDK1r+knOSBjAGTnjnA9+szrX+PHRkAzj6f69H6APKwU40pdOeocvjHVuXV7M7VtCaYrfM1v7l7Vpc2CpRxNtu0Iz9wXIzgJ+rbELRwFgftCsJIC2ysMhaHpC3m20stkJCUJyQlCUhKEAnBw2gBPKcqOVcZx01PvSuGJfPxVe1XTxQM+DopoJqBfVzRQpKf1fNu6tRo8GaVJCyVPS2EspRzkM70uHdt6c8lO3POfA/PA+/3JJKifJJ6v78PtGG27a68jnOTpkalxB0yVXRJfJKl9jLFz5f/ANprv+63XxFvtpuZ/M/ZJ/3K+2ItUt8VjXKJHzJ4mQzm3N6duMbM++c7iT/sPSdajKkTm7VoEYB1NZu6jNS0hQ/Yw4kxuXIlKR5cSz8sEKbKhncrAUUEdH1tvfnnGMe2fOfzH26SGqOPvay0iPEb9KmUG20z5CCvc6ZUkLjlxPKeVpcDpO1J28qJACzL9xNnqXKpym5uo0gV4obCsU/1TkzT1dXU0xnASVnzOUTk8m3gcUSqo81eDpSZASh0tJQEBjLIAOcBslIT/R+nkfTkZzhShg9W0OLbzsOM4zwD4zjyD9z1uAtJUlzG8pU4tCyr2eKlKPGQSrcCSSoZyUhIIA8UQT9Kdox4yTz98npTGYBHiVX1KW7xj+Pjzf0FU6WzmUknR948aUEyWalnlCls8p46L121F2DRp01kJS5GhyVtlRyApSUp3HxkDOdvAOME4PUQmuNru6669dqXba8t9MTVvWWk3Jc64SyuQqybHaTctaedBW36kf8AxRtT0Za0tyFln1UrLSCmUTWCrPUu1gWlAJfkpbdRkguN/SVoBAJG/AQo5ACFqGQVA9Mp7CKUzqh8V67q+40Hbe7atBBBYSV+qIV6X3KYjTW0g7g2H6OI/AScjKQUpGOo18Ta/wAntsyIFWLdryqRUXzVN4btKcdXJ+C3w9t+7/HWydd4R056fDCn7o2jnNNNZ8SxfXT+21HiU+HT4LCIlOp0eNBhxWyfSjsxmS2htscYSEAZyP6IBIHGJgHH5HI/fgj+4nqlTyfqBGPwqODyokcAAn+aMZ+55wPfHQQp0EEnJUeRjHBwPJzjx7eOuet/uHdarJzxJLKktSPppbxRl85oA69du27L9k2OhoBxjpaJQBWYkuPpxgau36Z6zF/iP8P7h1bWrakqxnGOPHkgfn9+ri/xH+H9w6xX/wCZ/pf+HpJqF6+of/mT/wDmelkIkpg+Fz+gXX8arrR1aeiDDecJAWEqSjOPxFIwSCRkZUB7cnyPPSZU+CurVduQ8QWmMPqSSCFBKgQPOfqWRnakZ8jb5G7umpRXQuGhRU4kkqKfCSSobTg7gfP1DgEEZHBOTZ0RwJckuJ+haUoSFZzhBPOfCsEhChkkKSc5BySpkpyTAYifvYxJ1AELGg+lg4bZBHShp7Zmxy02rbTFarHg48V93xdh8SAEgAYAAAB5IAHgnJ8fvP7z170Oh0oCivpjps6HQ6HQ6HQ62Hnz1ihxIG0IKQSMncTj/OAIPI88c5A+w6qf/mf6X/h6x+i4xxf1/U8L9HpPp6cZQeVsZiMbQwo3TTf3MdbGbcrMG3q1R6/Cj120q7SptGrtHmhpcWdCqLYivokNPtPNux1QXJ8N1n0ipKJqnDn0Al2DzRn4iLvwor41w7Arv0r1q1ftKh1yqal9rNUsaiS6qtVg3ZKMg23U6mmfTltxrTkzmIlGS7A3/KLXHcQy80tx2Zq46e5VLdq8JlRS+4xvaUFFPLYcKkHHneDgcHBAOD1B38UzSSdqBo9pt3i6fMmfqn2xRw9eQbadcRc+njC2U3TS5sRoOPLdpiPk51PWw26WZaW3ijCcF87VqjuNKM1wMZTsxFWgjSPteH38W9c9/i/8H/K7XuO69u0/mTizlq6fDkx9Om2S5cqWVgAjCNLiPS+qrPeN3i2J2vxO3rs5u+F24du2t1v666pG8tVLQsvU/W68qfXazV10WgUFVOqL1FjVm8KjLLgrUtUpqLTHZ7lO+j0BLrp7346F3NedO0v1obu/tY1nqM9uFRtK+4S3F2TVrkXJSlcJ+2blkuKs6upmhxDMCFErv62lycsM09a2VEc+3bV3e6gaYM2zqporczkKDXYMOpGlvOyJtu1ZMplKlKrlD9ZDFTqS0rdjuyJJQ4Gjv9Fr1FqTPfpf3Qdq3xBbYRof3P6VWmq7ZrKGJVAuxmLXaROkP+oI02zrgabRMotTbfSFNuUWosyIMlUV1EpXqt7Lh7XudXZ6NaAMZpKoxVCJjGbuir5SbaP3uuD+96uhupwhrATjM5RWGfEQ5CsfKep4UefIyTJtyE0EoU0y4pWCCRt/mn6UoUtJcAwVesxvjrH4HFbePVUGEjGYrfJxwnOP3/tP/U+wPPUYFhXFefw6Nb7M7Y9W7wq99dp2ulZqlA7TtULtfVU67o7d8aE7WG9F78upxxLtTotXhJkqsyszYvzDf6vehzpUpb4fErAkLWAAEpKRgkAkr4HKtxIB4J+kJHJ4xgB+23dN1roS1ElK6Oc81a5LCgxZ9SsWx87b2w/77bSJ+KiQ9qMqebzebAzfRclUCECMsNgYH07ARn6uf8oefbx49/brVJoEYKB9DB4Gd6UgDOeQjAI++QcgYx7dHqQG3Ag7t2RnbtIx9Sh+LjPjx7Z/f1jFtBABHAzjk8Z5Pv04Q3WrKJ8xZPh5F19a5Z8hf1rzjrZ7btDWhp7bSRBrjLT9XpVbfTVGPytPu11rKbTmGXUJCElISrAG4BAwonBKsklRGVcKPOeFKHR5pISlx1I4ygKxyfCgCcnP3H/OetHHSE7sDGAAOT4JJP8AaOtvCf8AScSnbuypRzux5QRjwft0277Unrcy5NRAF816vdr3rp72en+xwicONLzFGotxtRly4x9QW1fE+nRoaXtzjlRKdozgkjOcH7gfV+4E+ASPl8/pK/xQ9TO4HvR1D7YbNviuU3QLQCZM08qVqU6oPxoV6XxS5bzlXrdyNsgNzpEJbkWLEcYkGMoCQobCtxA+i53ma0Mdvfa3rjrrJm/qtOmWmV3XNBnbsBiuRqctqjJUr0nAlD8twtKcU2pLZUlW1RAB+KBq/qbcur+qN/apXfPcqt03/dVYuqu1F7hUuo1iW7MkPlsBOwrU7kpycYx1Ee4LGNU2tJdDL2LLEK5P1pj+8PUg2mia5Ji3GUYy9jDXtLIMUb4i1KPRJn1F2U76joHgJQ2kgNtNj8LaE87Up/d9RySSc9YSZHONuM8Zzn93GBnn2yM+MjPVhxYWQduCBjznI9vYeOf6+qOmmMnnDUlbKNe/HA/lOOASxrzauV6eIaMCAMaQqruq8eGn6/59dd/6Nz8XN3t61Cf7R+4C9K7UtL9Va5atI0oYlrNUctW+ahVX4iY7Dkl5sQ7ZeXUFuyI0Vl+amZOelsMSVIWW/oWTnXI8t5ghJKAg5IVyFAgHyPO0qHGNpScnJx8ROx7qqFnXZbVy02W9BnW/WqdV4UyOUpkRpcCUiRHeaUoEJLa0jyCAMkg4A6+x12Udy1K7xO03QPuNpKZQb1HsCnv1VyZs+aeuGmPyKfWnnVNEtEuPNtOJ2qUpIXhROAtcx+H9662qbVHN0SpQC8J5yVbVgCCr1BfiXt8dvF14wOOpKNRE/OOeI/lJC/TL5446c+mQ20dw+pQOB9JOOCDj60gg5/P2x1dFRTjlsk+5BAH9Rz/eesf0jn/J/R/Q3/8Aiznzz/Z16plsEgJ/tV9v39Tzc7TS0YwlKpXQ8JNkkVj+ZOJWGy1ceeqxn3Gc0p44WoEJfTDyZIn2xlpeiRpJSnDpZYkpKCkyqEqSndkDa5NlnAGTwvaFbiCkEEb+cAzzY7jSt6kEfzV++CPBOCfxDAGBg4yCc9Z3bbFerWilsSpRDhgvVijxQTt2xadUZDSEYSoZJcWrZuyEp8nB4PVWt/CcYSFA443DGSfxAk4wCk7cgBR2g+/SbsffIT2m3hKuUNGMGNVmMarzjICpV5urWT/G3ZdQ7t3HjGj9qkjlf3aQUP3qKciR8oiJuklXqfz21LO3nCgrhQGMkH+j5GfOc8Y7qvWQ2obR+MEFaRg5TxlRTnjnxwCPuM72bA9J5wNoJSlS94KspGFHgEK34wc/hVgJBJ/EOi9IUkuAJBH0jg885UeDjkYx55yD58mV7XuV8CcYqPpkSI1ys4ccklX00n6t9Vdv9qwnHVY8dSNRlhROKCN+Ax49soiIdd9Xb9O3bn3znOPyH26wn0uLASgZBzuGUjwUlPnB8g+P49Z7YCS0ocE+pk/uBA88eOspbCFICB9O3O08nbkgnjPOce549unKG40taMtOMdSESiTgQZTGsyUuDd+Yvj26bDUjoyiEcC1doZRU84aTN+/sDqnP8m5/2Ff909a9oK3go8jP29wfvx4z1s+h0pnpstTSnjjBVLzZTGsIlnqFMeG3CiOpxixImSltz5yjeaaxRQYu1ttf5NP8f+8erfr/AOZ/rf8AD0H/AOb/AKX+z/eesfpURG191a+mX+fQIja+6tfTL/PrMbb2Z5znHtjxn8z9+qQ7lKlbfw44z5ycecfv9uqX/wCZ/pf+HrH6wR5FuV/0ft9ToEeRblf9H7fU6tutOPOKWhOc4yMpG3CQBySM5wTwOOq07lD8J3YyUp58f7/38ZwT1lpKSpCtuFL3c7jxtGPHg5H5Dq91l1EATAUfUrCe4+PNDjpFrbSGpPkSYWrIrllw03jIrd/YAzr9kjJ/ZAjPH1oBx+f1Hn92Ohsf/wDqf/yiP9/WQ4ltGPoznP8AOUPGP3/fqpopO7anb4z9ROfP38Y6yzaviV+ifb/H/p0HY6NXepX6xPt/vHWt+Vf/APq/9ZH/AJuqg28wlSlN/T9OTvTxzgcAknJI9utolCU52jGfPJPj95P369ICgQRkH/39ug60s3EkfQKWs0XKhfa2vrR1h2mmicp592v8gLz7WX9TovLOAUng8cEHPsf7urPW6MRDinFKQUE7QnKtwAGASdq+SQMYOAM8FR8U/q9v+l/Yr/z9NW43RqaiziwYhEixR45kWW59Wax9Pql/J1IUcebQrGUKv6HKUX2vx705sNU3+NIJwCpOTnHGQf8AZ/Xjq1VKjGpMeVVZ7iWqVCiSqhUpZJUmNDgR3XnXAE8q5Q22ojhsupJ8p3bZyG02AStIV5SFpWUqKcHCtqiQk8AkDIBJAJHUV/xNb5ue86Hpd2N6OVRLGs3eJXGbZeqENAkwLS0nplQbGolyy8bEs0j9XtrjTXHJUZ1TvyyWg6hwhTN3rvO07Z23X1dewkSpzahQfoqxsyM7xWXnsXaNz3DuO3jpxCkZRkhcWTFLLirQ0SrjhbuPWx+GLppWO8fuh1Q+JpqlFkp0rtD9Z6K9mdr1ZeW4NvwpzbF26lRW3WW5kT9ZzqumHEkSVqk1RiEj5ooXHOZd+4C9P1pPjW6w4PSp6St0NglJU4pP0lajyB6QOU5yeAQnJWqln2daHbhoLYeltBgxYFA08smhW3CjM4bC0USmxGFOOJBcSVzJTLsj9kkp9V5akJWTyyq4685W6tInOlSnXnHHVqPIAWolKCMpJKRkckJ/FgEpB65S7x3HU7nv3W+W6JM9UCZLlmSMkjEliI+DP5bI1H0e/Bn4G1Sew3m30DSjtuTOwnHVZRhFYzZ1FjmqE4zS4jbEd8am/wCTZXw/9U6PCkBidqfVrM0sij6vUkKvW5IFKfjI2/8A1sV18KHBI8e/RfsC2G7CsCwrJb2FNtWRa1FcU0rLQfi0mH6iW0pykIS64tpISdoCc8ZKQmnxpZyLlY7MtHMB0333N2lWJUVRBS7Ds5f6zUtbYUQoNTPlFAk4QF5G7JHS+DcVKdcUVq9UJUcAE7R5wOBwAABwPHjqc/A2kkWXi5MrxJoW6HJyEjb7yU5Zqs/7UO5Z9w/4TE4xNH5kgX0ymnIq6GLUiOLLKBL0tRdxS30pVt+YmttA8g7XHGiSnwQcAEZ9+D5x1uYyERY7DSE7sJKc+FKIPJ/nfiJzgcA+Oi5W3k/OxGV/5Jp4EN5ylRAJClJXwSHCCMEHOzJ+kBZi4G1SVBWQFcDwfPvwR9iOD/fZbSH0Xl48lYFPo/wwV1x3tQlBgt8SFhdeHF0NXxlaexgViEDVm649pWTVKnPa2xUhHqP+vt9HaSB9AQSveFnwpO3bzkE4L3wQtPZkzS3Wzuzr0cKmdyeqtfn2dLaQWYydP7MqNQt+jIhI3q2okz0VBT6ilJKQyNuGcrZx8SfUy5IOiVYs+iPBNx3PMt3SmguFZzOm31MTRHkBlKQWUOwXX0FCXV7slG9tP1DoT7cdGaD29dvek2jNEZWlVg2PQKRU5K3Q8uZUF0qlyZDzjqCUlwyH5C1oGUeota0hGfTbrP4z33DT19M9JpkZISsV+WCj4wNDdrUbQHs/+y18J337V7ru9O4x09GWhRcfOtdSy+WJK5LV1xiHSyrcC1FeEgfYY/tI8k55J5J/LAGA8gqKdgyBn7Dzj746u9DqnNXcOoQOEY8PDauSk9sJWEWzz5OvRGDwRiHpKBuqqvrfj79Dqw47tICdp++TnnnjgjkYJP8Asx1f61z7K9vjwrgk4zwfYE8n2z455HRUCK+pr6X/APU/l/06N0YwlOpoGAv7+/k8f637dbBKgoBQzg58+eDjr3ouKrDceQWltL2pUtKilY52lSUkpIAwT91fT79beNOjykhTbg5zwTgjBI5BwR+EkZAz7Z6EoIuLP6/on161lpuWIyj9abPPs5arKFe+Os4rUUpSTlKN20YHG45POMnJ+5P5dXlSn1Z+vaD7JAGP3HG79/P5eOOsXej+kn/7If7+qgQRkEEfccjrUZGRkePCniq/kVX0PHRTAwsfF1Z7uX+K56rW4twhSzuIGAcAcZJxwAPJPVHWUw0lRWFgK27cYVkc7s8pOD4Hucf19YvWvLlKRlSrXN2WZvPQEyHgrx4znFdDodDodZ6z1fMl9QKSvIUCCNqOQRgjhOfH26sdDodZVfKv6q/59YAPAH6Af5degkHI69KieCf7B1T0Osk5gxJSIt3Ekg2U2DTZhvydZ6HQ6HQ616HQ6HQ6HQ6HQ6xgnLyuQNqyckZHCjjP2BOAT7Z6y0kDOU7spIHJGD7K484+x4PWKFJSp9SvwneTjkjBKhgcZ5AAyQCfJA6VbOMZ6xGUb+11gjJXD7S4tPnxkvrXV1v2fbbrW8fK0JzF8WCl/a/Pj+Hnrnz/AFdIvv4pPfBfL6UJOmunGlulkc4C1NSJj7dSebK/pCQ5K+cdU3lW1QyvCTjp5ys+D5SVAnOcnPPTHe1upi6NeO/e/XU75Ny9zdRoUl/cSFfyKpLMBqOVDIWIxlqeBJABkbQSUqCXx4KgpRPKdv8AHJx5/wDfPXRHwjD5PZ9ON5mHI9kZWUOY5jHxd+LAR8dPxj7jq9z+MfiDca2oyIz3GnpxW+MY8yN1ZaSp9TRV1V9ZjaQjaFfUkHnHBIzkjz9uPP8AHpHLbC6xfl91xnIRDrUK2FHJJXFi02E5IYWh4fR6Ti059NLbmQN28KUSsLjiWm1uL/ChClnHnCElRwCRk4B4z0i+kkdTdv1urSPqlV7UK5KkpRK1BTTcxUKOsZWgEkRCsqSkJCXQnC/TTl51F5w8N8rG0zVKAnu04pp9uqrjUOJEoAiZcGI/mSVNUWiovtaK8tBSTxgEnbzngH95Pgjz1UQlTacEbuQfqCSE5V9yMefPnrJWBgqIztSrHJHBHI4+44/LrB6VReQeSkz9a/8ATz9+lulPnTIfS5pq2pBnLixzhcVXTcNba01JREt9kh18pcnPKCsFllLiUMNlGzGXcPL3lYKPRCVJIWVIwfgg2bS5lpdzuvcdtDsjVbuAnW4zL9HatumWFRpUVtlLyXSHUqfbS+4FMsgOvstJUoI3OpJ3XXALTtPUy6lTRBXbdi1upqd9MO71x6VUSpjAcbDZdUrAd+sIxvS2s7SJCvhD6YRdNfh+6AYYUzWbytFGoNxApwlVZvKVJqq1AEqKvTgyWQh0FIUl9z6E46r/AONN6aOzNMJsmMycrcT97tPuIjgoz6uuvP7LXZNDf/ErvdaDenDRnpmDjRrWTo5DYHksc2AMjsuUPUQgEBSicBKhkJG8gHBBAGMZxycDAOT1Ww4pYJOARjBGc+T9yft0T5U5Cbgfpj+UvJp4nqGc7I6knYsJAwUlW4pysE88Y5JipK1PIWWkZjkJLLm4Hfjd6mcKIGFeDwOePI6o65OqrfHg0UBFkwVW75PDxWC6ou/SoYkJRIx4R/LMfoQX/l45xLlm4gZ6MZOAT9gT/UM9auRKCcleAEDk5ISM4IOOSScgYGCTgDJ6z3lYTtx+L3+2CD/HPRLuKSIkN1ICd6grYCUkjwEkBQVzhRUCPqwhQ8biMwAiyS32/ihfk8Zv7XaHWNhoGrP1Fq4/8I5b9qz7frjymNSeddqT6UN7srVggjBAURjO/IOOSopCf7B0rlBYcYgsJcABU2FYyMp3pSoAjPnAPjI/twm9vwvnKkhawFIbG5ZXlQIHISAT54JyPBxnGc9LA2jakeQfcZOM/uBKfHj+B4PWwB/Ar2zJpX9CseHNt3h030mB8pbx6QyRPTg8JguV8ssacSu50OqkJK1BI/ifsPv/AM++B1e9JGcAlRHnDjKcH7BK1pUTx4SFH25JAIUGvfH9Wv08/wDQz0y6mtp6Vc5Eb+vWP1eDPgKUEqP83gn3/wA7nxnot3Xell2DTF1m9rstiz6WjOajdlfpVBirKRktxnajJjpmSvduFED0x3n0mleOo/K/8TKxbgrb9qdsei2tXdpXENuOfP6d2hKtnT5pUf0zLTL1BvFijMR2mUqUpmXAZksSi04llTikjGrJarAv2V/hfjI/V9rcKDW7noxxpS5v/LXnDTZKsN1WWiy+pKTGWklK/oIxwUnPIyMg7SMggj7g569ShtGdykK8edvGM58k/wDI6jbXP+KFq0+5HiK7eO0yzpccyIzVxu1LWS/Y5dS0pDdUkNri26uSy8FttiLKeaTE+VQl1z0yF0Odovd3cHpovv4kOqMtRbSpbWmGmdq2DS2FcbW4RcM0rbCNpS442s8kbM5V0C5Y5KZugK40+ZcWS4/KUP6J0kn3TVxH5Tcs/vBQ+bYDFU8W19XqSlCEoyNwO/kA45Tzjj398nwfsOmrKpsF24dRtJrnjNS6JdTNSqzEJ0f4rLt+tR3YtXkBGWtrTyEx1uxg844p1LQS4EkhSAD4f12xvTl0nvm7woVZYG2E/IvukzaRDK9oeKKKKIwpYdCGwoJnt5CDuC92Ely8LH7me2up2lftwXo93YWJQZ9RoNwv1ilU+2dZKHaNdhiE/UIS6bHcp13MwXksuzKPVXKd64aiqiS4qVyytRtZS0tT53JJQL/dqzFVbZxtzEzR730h7jqS7htNXQnp41TjIfUVUPUoezY1ahbGrkQq2DaVS7cNdNbO0u4k1CO3S6ijUfR6TVGvQTM04rsuer9TU7K1tLj2xW01OksoYkuuxQEQFJX6CZDjmGDKjLYdYcdZfjKSpp2O6UPMOpwQtDjKw42tJTkKSQQoZBB6yfivtW1UbA0d73NNZDj9zaBXrAti51sNLYqcuyKhlu76JU4LriXoE9UNG8RZohrKg49Akz6fJZkqx6VPpFXpdMrdFmMz6XVqfEqMKc2QUPR5jCXm1D6lBBKHBkZBIKVFICkgXb8N7qG82GkMYz1SbAixE5XdxvEbZYwZ+2Dy6/Fjskvg74p3EzbpDfcpFyYxDR4uHJFPnUoWVSK8up3tPK9Q/ie9nupHaNqRWmYOsNAt6C5YF+BCHbghXTbBVUbQutlxa4zzEui1RmAl9cWcwqosSyzIcMcSEPu5+G53H1fX3t+Vb2pDC6Z3Cdu9x1PQjX6kylFEk3rYikwm7kYjLSl2NSbwpqo91wG3UpURV33sek6y69zx6A6wVvQrViy9TqIlx1ds1hh+r0xpz5dVcorrpNTpXrgYirlISjDqm3kb28ONkLURJxqbe1M7VfiMaB929rbG+2X4lNDoWj2rSI+xuPRtb4VNfn2FdNXKUlxiRWYxptGbROfhRn5cZtBWy4gtLcJMtDUPTHM7lSFOSwZBmKYsPf2WMV7X3M3JppF5pxVWXpKSuWeXIkSlcrv8/lZ4vWZPh1o//jE/7+sVSFJxuGM5xyD4/cT9+i4JmFZVGkx88lmSn05CMjgOtEDarwcZHBB/Lrax56vTQlCU7fqxuBz+JROcLx5zjjx056EzjFEJTYnGWCQ/lYyLBtyIr7eHp61ZSlpzhqR4QmRqZ6kqRKmNnmlu8B462zSFJ3bhjOMcg+M/Yn79XusUSQpO4IOOfKueM/l+XWuqNwwaHBrNVq4YiUaj0Gr1isVOW360alUmlRzKqlSkAKQW2ITCN7ilFHP0g85CbeazoHPUiWpi6AxG19VZop8rRnpVp6VRiacahSxBZWPqxatN2q0WfUOufH9KJ7t7X0Q+GbfGk66+mn333JTmbJtqkYCF1C36O/Tajcs5K8qWG47jjURXppKVeogrea2pD3yqVKKiVKOSeST/AM/1DwBwOugP9IU+JVZnxFu7yhVDSb9aN6Q6LWfJ09ttNTWd9WrTdwVF24bgW0srcInvMRfk1OqAbhoaQ0y1+0U9z/uOb8cYxn3z5x+Q+3UO3mua2rUckLiuQPp5q6yGMCZW+pRsSRAWJaFviimvNrybfNVTi6LfQ6HQ6SdOHXqThQJ9iD/UevrFfAWrLFU+Et2awI8SWz8nalzsPOSGg0Hi7ccgtPNlWN6VhBSlQ3pCQn6lDkfKDpcMz58aIDj1nUIJxkJ3rSgE5KQACoZKiEj346+wz8M7SCToP2Ddq2l1TRHYq9u6S22ubCbAS7DVVQ/VGvVAKgfWjSGVE7iorCy59aepD8Ml9y01LKkfxw34RAv/AKlPUV+KpQdkwaZ1kX92Uo1h8vIHGaum/D5wj08oznaVDP8ApH/nwM/Yde9VuL9RZXjGccZz4AHnA+326o6t+1y+XL+r56p/uGx1taWjLRhyI6RpShyhHhwVjmUzlfJMGONq8itl2iNpc0Jt8LG4KrV2K/Er2r85rnBBHCPAOMY9+lzqlJSpSXM8HCd2Ek+SSNu5KhgY+oKP0jBySAEL7RHm0aF22nJJ/XV2pIAPCv5Qz1gc4Bykk5BxxjycBzJUh1JGduCCCrA558DPPGQf39VB27X19HR0p25H3KTmkUqzJVUI/TGLq+Jdppa/d+4k4iftMrfN4jiQJyCyhpDEUFtE63ajJcVKQ2clIC221fSQCCVJO1PI/CU4B2k85Kck+VZ4cy+hvCykq2lWMnJV+BKhnP4fKleARxjpxyqeypQQtOQd21fOR9POBuPPPvxkA4yB1nxqBHdZ+ppr03CcqUVLWMEpJQT9QxtHBWkZ5Hk5kcPiH9m0zncs1ztisXH1SUjKWXZmg6iE/hza7mMeWnGEqvj6ZP8AhplSRPd9UqaRG+mjSbakstktMISpKScYG0EHkKwCpH07s5KdpTkkEgHUvUt9lAUpsknkpSo5AzgcFGSCeARuAwdyhjl6S7UglG1IRxjALWBx7EpVuPHjJPOCeibWbEbeaWEsNgHJCkpSAgqyASQAM7sYTgnHG8kpy69u+L9uTIak58FiVOj6W+I2tAVVe931Fu6fBKyhLR28aKuUS7yAJGTR/KjxQHTQH4j6SpahvxjdwEq8YOUjI4I24BJPGQCcdYXSu163DT3HkqbWNoO0nJ9+DkJyoYABCgcDcNwOFdJ/Pg7VJAwk7So4+pSU58ElQ3JyeFAeUq+lPPU+2fedruuEYzFk8Y8T6BYhZRdXgWwvHUD7p2rc9s1OOrp8YU0nJxFCwp9OR84MnIHjouh1mfKf9Z/qf8XVl1r0tv1bt2fbGMY/M/fp2NSEmhtfs/r7nTQakJNDa/Z/X3OsVtvZnnOce2PGfzP36udDrNMUYAC8EZyduc5xgAbhjGPzJJPPgDM5kUZPn7fT9D9OszmRRk+ft9P0P06wuh1eda9Lb9W7dn2xjGPzP36vfKf9Z/qf8XWHUgArhusOaw+3WHUgArhusOaw+3WH0Oh1eda9Lb9W7dn2xjGPzP362UEFy3X3rL1soILluvvWXqz0Osz5T/rP9T/i6ocj+mgr35xjjbjyQPO4/f7dFylpahwk8iSFVItsTJT5D360NWCgSytGHy/w6xuh0Oh0yoxWKUxUT6I0mMefp0Z1q6xOVS4MmoOIzCgw5FRnOhRSWIkIoU+7wFFQG5CVJ2jheQpWCnqPb4WNFm93nc93O/EEuaC3/I207lqPbp2yMrjqNLgWhash5F43hbjy9qXP19UZM6LGqEZ+bGW2gvod2+mydd8UzWu5dOO32maY6XzpDWufcndUHRfSmBFjmU845cD7DV51cNBbQQmkWm9Pb+Y9Te0upNpSghxSm5ONMtPrf7M+1nSjQCz4EWkjT6y6bSGYjDrZM2vBCJF1Sn1NM+kVTK28/NU422Eul5SW0JDYWqnvxA77GMNfZ8ORpg4btJIUZ8pmOT3oXrob8Gfg7/jm5NWMScpuhUWKMWUZ3PE4szCtURou7XrS9xuoy6ncv6hgPuKixEIQ+2lZ272YzUcghGNzaPTDq0kjatatyQpIPSBRnydjqgSp3BAyOAjKgCRnzk4zk4Izg5HRNqtYlVC53n56i67KWp1ZBKgneSsoSSoEAblDGQfwFSQpIJNbDxwlBGcEAHOOCeOMe37+eqB/bp6utGipyFJFZSMrw3FJepuhK408rj6ofA3wnH4d7HtdKWix1GHL1SeVMA+56Svyucl3iMD3xUZbk/v2+GXa7oHyTl0anVl4bjlS2KXG2AAKGCDCSkKA3J9Tdnxh2hUENrA5wStIB4ISFe/PkFIzg/3dM6+KDKz8Sn4awABadmaoxUFOF7nlpaScEHIKEhQAycgq/EU4DsJMlSlpbCiPlYceMsjd9a21JC1nkBe8HyDjb9BJwSbv/D+PPbSFFlVW+KktIBlYqvsqUXxPPX+0zKZ8UbyTgIatXQlcJeC7rBkLyggrpJv+MV1hpZSvZGRJWlIKfTTg7d2FEnLgRzuGNycpwobjWXcR1PlOAlJJGQTkEgAZKc5x4HRDp0gv3ZWnDymJTokQIWM4cStiQrHJBBSsgq+nKQlPOMC/fdYVRbTqUht0MPoSUthRKkpK0+plJBGVNoUfqOPq2kZ/ELA3OpHSiDVl0Dftm3B7V5rHn68ldoJ6+6jtzLqyoAvnxnAU8KpKQI8VbfbqPWnUGT3H/Ee7R9LZkkpptvVW5ddrnjuJTJZVQrOaZjU9C2n2kxBIlSnh8u5KQ21HIecMlIbU2/1QrXtbckOErXIeWtSgQRuSv6UknkbQnZxu2oQB5HPN98IK2P5c92feXrQhUd9di0y29F7KqRZC5DEuemPNqqmgXkFllciQJ0pG1QKUNNlZC/XR0ZMMGJSoURf+VbbQV8k4wkJGc4IIGE42gZQeB70R8V7x19zvoIDR4u0gRb98DEcp7v0OvV78Bfhw7P8ADWjqui6buTTkLLkrpRmDyxIK1JNV7i35LfHPP7h9+vOh0Oq9+mAo++crba5zWKKDF2vQfQ68IB8gH94z/f1mpSyr0v2WPU3/AM9R27M/nznH5Y/PrD61jK1oRPrX1TFL4YvWBv6lf9U9n6nRHuCmSElUuOgLQkrWtvP1qTj6j/OwArDhIGQSUkJQCoaKNPVGcbUnO8ZBSpQSXEAgkDgk8DkgEpICvPSprQlYwoZHP9vB/wDY5B9x0mFbgejIdbH0JdOUnGcbFAkcbU8DACU/hSUk8kjo6M5soxxL8zThUFoleFQrwGVGjp02k46lQl5i3efTa+o8qN+ourAAvo0Qqu1JcLS8NqVgoJUkgk+UcE4I4wTwc4yejEy4OEEc84PsfJOfBH8M5/LpEGZbzKwsLWofzkqUSCM59ycEeyhgjxnBIKgUuuNOstpfVlX4QrwvAzgFJ5URgAlOec8kAKVqakJAKjYHItvALRxpWqfIK+F6VbrZEonyxWsxxhMRY5GUm8x4+yjfSjsOBQKUo2BGMDcVfiKj7gHyPz89X+tAzIbeA2KBJ54545wfuMgZGQM+2Rz1s/m/+r/1/t5/m9JNTSbuGSWfI/TPJXlbbfUf1NKUZIiPuPk/iubz1h9DodDpT1v0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0OtfMJEWcr8JRHlLz+HGxhat2cj2TuJzz5HWw6L91yRBtK7Khg5g27X5eQEk/4vRZTvIV+JKdu8pByrbgBWdql/bEN3pqWYx9fVHH8em7vMuHZ+6yzjYblx5K0198f7/nzkfDlhzZGjl/3XUxirX5r9rVdE5/epZkF69KlTokjcVHKjFhMoyAn6Wx7bcSERAUiUkqKiPQJUeCSrcrnknIJIJyc4z79MC+GjUTN7PbIqTrZMqoXlqrNfcKuVpkagVxbQ5B/ANxzgAhYOM56f8AxyP8b9vqaT58lJWP7cE49h98Z66F+HCTsdOUWocTmVll8wA8/wDx8s+5i3rxb/EmcpfFfdeTl+dJLsZShV2+9iVeP5dYdbcLNv3BIABVFoVakNA54fbpUwtrzkjCT+JJSd3GCkpB6LemkFUey7YSRuRIgCrPOYSN0qoLXJUjaBwAmRk5/GrJyMFPW5ux8N2hdSDgerbVcZ3FWM76bK4HI+oZJGCScePcXrOjqi2ha0bOPRt6lIzjIVmMlQIJ84CsHHAVkAkAEvOqyNQqDK/HFhycCqMjHpjVp9n2YTtJR4xjGSsY2p4FlyIoxu4tflsxdlimbodDrBqktcGmzpTQT6rMZ5xsqzgLS2ojIBwQedwUCCMjjPW5lD6oe3v+qH9elf8Av/1/h5eoffiE3vDhaS6qszGlNt3LItKzmFF4bUm4blp1NmRclOXi9CkOMBRKDu+opypQV0+aK2l/ITRvSyyYzIj0mh6c2jHpqQAMhujRYr7hQCSguCKwvZuVtJKN6ikqPJf3rIF2v6A6cx1f41f3c5pHS22ijeZcOm3CxKnMj6k4KUBpIIcGz1A7ylBbX2NNpbYhwoCAlDNLpsWlMtNBSUNtRkKbQlKFE7QlCQMb1HKVbjkgdVD8Z7h1N9PaqJKIRVzfG1pbBi3dW5ygB6K/2V+zsO1x3zP1aZAKB5s46vK5LKyJ6qsGwLqVt/qslR1crsYOBJj2XT05IH0hb5XuwfI+rJJ4wEjdwQFdtRr0qQzgEJUdw5JAzk+5PJOSfBGQDwB03KqVqM/rrfUKOpS106xrUSpWcA/rORMZTgAjO1ENawSPqKkqCQEAlytvLEaiRGgkFSEkbsnn61gjOQMZST+EHJ+xwK2lpkUjN4lPqicl9otKeaOQPn3DB2tK5aIkbUjGyzNxpbfpWKpMjUQ62r/83/S/2f8Ap/z4Ti5Q7IkiO3hWMktghJUnklRKlJBAJwRzj6SMH8SguO5GVlKQkE5JwAOMkknwOOfbPROpkRqryn6o8FuNMyHGWQte5K8cggBRACQBnjJztJxncVXpIti/T9S80g02XVpQ5yr2cnQjKUj8oH0z8wcPs+CwfOTrKt6kqp8cFwJ9RwlayMjB5wATzgfTxjGE8knIBnCFEAhJIIJBA44z/bx48n28jq40kYUoJyUj6BgAE4OBjOM+PfAz58HpqPcB3Rq0qrlA0r0vts6r9x9/NNosfTalyJDcelMySEJue9qq2oxrZoEMqQHZcxl8u7lKabHpLPWwuI/ShfKr5avLXi3NETxfSHf9x4TZzjcpe10GCvOf3gXyeK8Ws+rutGlmhVmzb61avSj2XbcYem1JqTw+bqsxY/ZUqh01sqm1arySpKY0GK0reo/tXWQUFbKKTqd3e90Eqkr7e7NPbNpVVGpfpdwOuFEiVbUi46Q8YziV2LpIiM41Q2I7bL6WHrriwWoplMIdDIdyVb0S7NIlNuWPrj3LXI9rd3DT1ImPOV91+qaUaerGTGpumNlOvKpDCILSIBRctQTPrLtRhOVCJJhiW8wHypjNoztAGRg5BOR9uSeD7j39/A60OVJCHNMSCUYsbT83JsUGqDBnLfUf1zU3lZdHTCKLbyxeAOMgl9ZeHNjxI+LA+G9oHQaum8NXqveHc/qip0S13ZrVW5dz0GDVA4hbT9t2VJW9b1Ip7C0j0YCWXktNLkNNOoXIcdU+um29BodNi0elMU6kUWC0G4dGolJgUOjwmwSpSIsCmtsMstFRKvTBKASrj6lZ37bSGgQgYzgnznj8ySf4eBz9z14676W36d27PvjGMfkfv0fHRdTT4kTT1JPkpQE8nNiqRc3+94s6xtNpHQcVOa2fQqKUMqsr/EY8HWGJSSrBTtTz9ROTjnGUhJ88DAJxnyerKnm1AgspG45P4Dk5JyQpsgnJPJBPJPk56x+h0hNKB4H293ye/nz/AExgOnfhG7Qa8Xmvr/Pw9VqDaNoaKcAlWUhxKgrjyVqUeMDbg8HPAzkk2/4EisWbc9KabEhyo0iS1GbIJWZ4SPlVlQBUoJIwBnAGeDnBN/XikhQwoZGc+SOf4dGxWKIql5aXPl/XrMYadRjKAwE9JjA3WK8+/wBffPUbOqHbRRdcdK7ji2t+q6PXb708TYuoFsTIm+3L9hESkByuRUOqXFuGlkuoo11wY/6yp0dfyzCUoZeW/wA9vaXc9XsiNfvbLqRHi2/qVoLfFds9+HXK9G/WdZtJDrT1ofqpDDTzM8R4XzalhCo4bcW5Hb3KQ4eus+zYhhS7uoai3+r6HXsxw62UuFVRYak5aeS4ko9Ha2jjcHQkKO0BKeuOL9JE7Zbi0z1/s/u409NVotG1NpEaj3RWbdlzKW8bwpeSww67De9VDymntrj7pKHWQFIYjekEPzT4S77p9s7lpw3LIjqkQl5PTbChJeoVkcWvqoyHmz+0H+Hm3+Jew6m+2234y0GbI4mpLjNgM7JRovTV9Q1YOS5MGJ2xOVIO1YBORhaSnOEkA4CgchRAKSfGBz1Jho3SrV7yuy/V3sWvGaDe0KnytTe3GruOIarkHUKyym6bYdpVWfx8vUoFap0RMJDOHnEvOFRKkNpHzw7I+IV3Q6exYcGjaj1WRDipTiFWkwqxGcAyP2nzsN6W5nneVTTuyRhIPLvtK/ji92Gmd1W7d0eDYcmrWvOan0uREoSqRIS8lxtbu99h+UlSXg0hDgUyQRjjgg2pve5bCbGehMzTx8mLbGyqlJY+FSqAs4W7b8Jdy7duCc3lpwuPGo3UkXDJk373Ez+7S9fTD+Hj3GT+57tS03v67nFR9W6C1UNN9cqHIaUxUbf1YsOoSreuSLOYLi223qkmAxXEtNltYNQcceYYS6yXX8R4sx8n0YcmWBgZiNAlP4iQQtz6jgZ4IwAfPt8tzSr9JQ7wdFNSe5bUXSqxdK7a/wDiYuWj3zcNpSKXLq1q2hfVMpbdHl3LadMlOJabkXDGjRpVbbnJkKfmR4y2XY3oumWjmsn6RH8U/Wil1OiVjuMqVp0uren8xE09oFCtP0fTzj5KRCiGXE3DAc9KRlzALm8pbKEU+7aMY0pKR78j3ShBJYPcPBk8jJjYPjV0bkcQLfTQckuSVLyDbGjFNH0u+6/4g/af2X2XXrr1/wBZLNtOdRosqWzZKKyxLvurtIALbVKoENLr7zwU9HadTvBZQ4h9RWVen1wb/Fv/AEnDVXvVsKqaAdsNtzNB9F69DXRr3rSak+b71ApaC4DT6lKYQ2xAosncl40+I+sokfNuOuSVTFLa5hdQ9Ur+1WuabeWot23Fe901F1b8+vXTVZNYqMp9wIDjy3pKlKQtYab3BCgn6BwTz0mjq0q27TnGc+R9seQPz6at53LU3cqjyicllK/aogFUeI0rG/YUel+12tJdni6tKy1K2V37Zi3/AC6C3ApOAOVAbs+2CSAPvzk5+x+/iz0Oh03gHj/f+/HTtGJEo/XLf2/yA6HQ6HW/tm3KvddbptAoVMn1mrVabFp8Cm0uJInz5UmW8hltDEOI27IeIK921tGTjAON2N4xZyInl/l/Gr/y6E5xhFnJqMcq0VmvLR/N6ku+Dl2yI7qe/HRHTydYlR1BoEG6aZdlz0aGqQzDj29b86PKnVSuS2HGvlqLAwHp4W4A+2n0tikkqR9c1cCFCagRIjCGflIMaCltAAbaYiR1txI7Y/8Aq2GkpS3uJIGDnOSYJ/gWfCntHsA7e419XAxHqfcRrNQKbMvO4XqTDhS7atea0t9NnU1KG3XIiKlDlE1OS1I+cS2+IrL7SUqWudwo3KCwdoQVKKeSCVjA5JJ+kE4J3HHk5JPU07DsJ6OpHcADGMly21DlksxVy8+Fj5iLV3xF3PT3e7npaUmUdKRGTcqsCgEMLhCy7cW3g9DoEFK1IJ3bdvOMeRnxz9/v0OrH09SOrCOpGyMrq6HCmaX6fXqDdw2Wtra5q6GnyJ6cebzjG5ll1ORXoIGCsfW11vatJW3orRI7bhARXbsO5JAO4XDUEqwofUDgpChu4GP6R6clGmPhxCSorH1Z3qWonhR5yrnHtx7DplnaFVJjdhVymOrLkWBdEgxW1YPpKnU+FUZPI875Up5WcngjzgAPAacDqErAICs8HzwSP9nVb7PTJ7PTnwOKzjbVjyXJ5LKa+nV5/FcDR+Ie66EZ+qG5mlWIgHLzmpYy3ikAOjsyQVpIIIO7BByPB9x0coakhDasjb9fI5HlQ9s+/SZU6WoOIZO4lW7asq3YIC1n6SD5HGc+QOPsd4MoABB3BOFFOSMfTvUU7TkAqPjBGSBk84LT3DQmFeayV7xbL+3vhzhx0h2us2SoJMoUIo6kJPGOPaRPldmClG+jElK1hKyvBGcfSOPY/bOcfbrHW0vaoEEbkqGR9WMjGTg+2fcjrMaJKEkkk88nk+T1X0x82K+MP08U+3j+p09/s0NXT05MpkmMZMmTLlKUY2yjJlmgKE9jIFJ7cdDYmxXUOtpKVElpaQCUL2q2IWT9W1XjPhJKSDkDpu1xW8IwcJaKHEHhzI3HA5zwkEHH4SE4CcJUdg3vDlMCQytsgZI+kkA4I/f4yPpzzjOcHGOkcuql7kFZT+HIUo5zgABRUkKHOzCMeeSSBtyJj8Nd1lo68Yyc8gq3w0XnCtU4Wvauoj8Tdn289nqz1IR1LjUVEIsT2BWLbdRT24oYi1RbA3KAO3BII2ngpJB4O0jkeCBj8vAx1IUnG4YznHIPj9xP36NtQphi1J4pO1OC4gcHkghWeVccKxkklWScDGdM62hsJ2DGSrPJPjbjyT9z46trb7815RiRslyOXIr0xjLBV2khzgKqS3XPW52MI6jCnSm3ITMX1IjFRK4tVxu7SqvWFhRKVFHKc7TuHGRg++Dkffr30nP6P9qf9/Wd8kr/AOq/1x/5+h8kr/6r/XH/AJ+lvzT/ABGPGP8A9rpJ+zR/xRx4/wDaD/8A5+tepkghak/gzg5HG7g8A85/MHqr0nP6P9qf9/WUtO5JTnGcc+fBB/L7dVfv/wCf7+s/MaPHue+Dz9fqvSXewdtLTIWxnGVM0W4uQrjRUh8eVz561ikbloXnGzdxjzuGPOeMfuOeg2j00BGc4zzjHkk+Mn7/AH6y/Q/z/wDV/wCLoeh/n/6v/F1v8wqrx+n0t+n/ADP8/wBOi9OfzZR0oPKTfGNVfElLygYGTl+306x+h0HtrJ+s4Bxg4POQfYZI8H+rqpJSM5Tu+3JGPP28/wBnjrPsNNPj7/pddZlGUFJRRFEx5Gmm6a84fHi8dYPyn/Wf6n/F1ZUwpKiB9QHhWPxHjKQMn6snABIz9x1sukh1/wBT6Xo3o/qZqvWZXydLsGwbpul6QQCn5mBALVKaO4KAK6pKiY+k8JUkpJwA3d47lLZbOepJER8hjiiOK96+tlgWiO/adtPuG7hoMrZMQhQMrtciJRGvfKGMPTKtGKLF7vPipXdqE8yt/RXsNtCfbVoqmBmRTq7rPc8EMSrgjr2MrMmNRHJLb8yK5JY3OhBddO4MPs1ovN25bjqHpvgxooWxGykqDamy4Fuc5I9VQBIQfKDgAbwGpfCN03kaQ/DrpWostxMjULuOua79b7umlAaeRIvepGoQ47zCS2EPx2HVIdU6w06pIbS60ktjKl3AuQY8iT6iDIfUtRWvKgAQpISvPIxkkn6jtPnwU8ofFndp6+/1eQpqPK1PVyqhDAgtKgMlrDfqH/Zu+CNvDZ7Le6+iaXyOHDTB9c5WsmXkr0CNnGmIcnpLGpMiXcLi3tii3/OQAnPCm1fTx4IQOM5yTwMgKUlO3POc9EC3I6FS3pDm5bxWpW4k45TkZOcqUOSdw2jPGTkg8Or9GM+9ydieAMZyQrB544OPb/d1B9OcPmlabiMmMmSccIpEuycsAqhT5sO1df0/L0woiel83GSEbxd4zjN39+oAfijzosbvZ+HJeUhYYFL1IvumIfwf2ZqMWoNBJBISdmG3Qg7grfuH1BW14SxiQ8c/iCD+79shOPz/AA5/j0x74uTCm19qepTrgjs2T3OURiXI8GPCqaW2XHEqyQkFQcJTsUVFYB3kJCXxxm1TIokj8TqVJyMf9GQsABShyskDJIxweOR1fP4fNbdk1ExcqQeZqOBz5t8thd20+W39qLRY/Eu7xbKOtVe9JEQv/CgAGKU5EnogUuSf1/dDiUAhU1htK9+QpCIUMkJCSQkhYwon3CsDBBCbdw13RqHaaJMsZDiJrpQFFCQhinuPrUeVYTiOAVYVtGVHJwnpQqcyGJNQyjDq6ipLhLhzn0UIA4UoAAKHKMBOAOMjpiHxE7x/UOgeoNVpLm6bQbQqkVl5biUrcmXEP1RBYGCSlS5SmwlwhKkqBCSnJ6nHcuUdvq6qNaZIBpYsypYPOI0yI49vYeWfgXtv7f8AEeyivEjOHnx+eiFKVxJjSGcZW+pBfgTafN2/2VVbVCWPmK1rfrPqHeIqL4HzUykt1VEGivvPZ/aJjxwpDOSjCkneCCR1M26oqAypR2pSnKjyraAnJ5OCo5URk4JPJ89NH7BdOW9H+yvtu09ajBn9TaX0KVLKdiQqq16IirVNO0byPTfmkqJWStTnnCR065CtyeCSMq4PtyTgjJ8cY/LB65z7/uye/wB1F031xamPlmYUt9y8IJ7Nr17J/AHb3YfDHbtNAYaMYoLRYKeX94S3OP5VdDodDqNdTTodDodDodDodaiqwWpTRUpIJAwSftgnIHkFIGTgp4xtO4Ajb9eEBQIIyD/7+3WEER8OP/X+HnOPrjozS1HS1IzPZyfUvJ9H9HHSHzGAiQvcdiCpQ3AbslOATgYOSrycDJOfv156qouxCckgE7gSg4UVggYzjzgnJyMjHPCjVeiRnypfKVOAFez6Qog5BI5wTt5UAeBjBOOiXUKetAAAAUknHKjkEgYxzg4wrIyMeCRkgvcsecEjRKIyTBytOfmy7LPbymbZPoamnr6OCKjzjLlOM4kSmJAElT744jdpiO1o9daZSEOoUE+FBIKijzhQ8Be4AA+CCk8YIJPceWhaEqbUlxCkhScEZGcn2z+eQftwekmQ02t3dj6+QVAk4OzjIzjxjjHg5989GynOKSlCQThW/wAHGCCo5H8AQcYznnOB1qblVGMWo8nye5f1y2pVBk41R0Vutgyiy1IGmhCojGQgI5jNDjxwnFbROjwp1KSB+L7lJBA8/n5/L7HOfbq71pESgoDKQSfdJ4I85A59vz5+/PGxbc2/Sr8Psft5PsMnJ/q6UhGUCUGzN/W8WJeEvx9G84tj1dtKAIZz7jyqrSv8ve8ZK6yuh0Oh1r0l6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HRC1SlfJ6X6mPgctWJeCxk7Rn+TNQ28+31J5PtnIyeCelJJKTk4BOQCR5Bwcgg8Hjj7n2z0mGsMZT2kmqSAQCnT+8/xEpz/9rdTCTj3ypScA5GSk/mF/bY8t3phlXJXtY/Uu0B8Vd+z0g7vp/M7P3SJI5S2G5ARQXTkW15ChSvCZ89c/vw0I6o/ZlpTlGEvyLvkAnGVl276u4pXnJypauSOcdP8Ao7h9RQI5cJJIOACApXjnOc488fn0wn4aktqd2Z6TlsJHyQuuHISlZIbnx7vrCZTW0EgemHGxjJGTxykYfYkncQM5BTtxnOT4xj3z4x10h8OwNPte3E4upgo9yLMR+nEu/dPonXil+I3958Wd3igcNV0hMqRX1J9eXtfgC/PRQ1XlGJY9YUkHc4hhlLgXs9IPyWY7ij/SCmXXGyknH159shQaCV/qKgoUnHp0OlJByTx8kxgEknJIwSc/vAJ6SjXAqGnlW2EhRfpSQQcH6qzTkkZ9sg4/j0q1FOKdSU+4oVGB5BwpENKVDjI/ET78Y6ddSA8ZeloSssvzFNOCq8nmz6dQzYtcjjfIcv1jnD9jyfo/rt+inez5j23U1AA74rzWD91tLwrgZOCMYGM7uSMcmZ170ikYznP9n8R+X/I5T3UuWE2tOQU49VtaCck7QU4KsYGcFQ4zk+3RBOLzq/7tOWHyrVe7kpxX8OnSGlOXFDErpWOSn64z4Pv1E/d0GDdXeZ2OWfJIdUnUK6r02JTuITb9OhPfNKOwBKG1vAN5UNq8HAVg9dbDSFrZQThKHQHSvIICdv0qH1eCQofccHx55LLWZl1H4kPbkzFT6n8mtKb3qagcABVUfozBWFn6k8tlSjyABtCgVhPXWZFfxTWFE5KoycDnAwklQGQcDJI/jkZ6oz4vly72xUDikiz3hI4rdF0H5lCaHGWevU3+zPs4aPwXtdTTiEtQLAkFlEZHKysykUHgWwLY7OqAa7q9XYgwn/7RtL1oT5Bbdclxzgj83SsZ8qWVEnaSHt0+OUQIwSnBDaTjIPCgFZyVHwon8+fsOmBSgJHerqVEcUQ27plpY8pIO3epuoEY4IO79pvT5A2n6SD1IcEoZaS2k7EJSG0eSQAnA/MnAzk8k8k56hUpN+RkybS6b4tgAF5xVh4C89MSlKHCICtW5l4K8ec3aXeL+ipzqTcMS3LVfdcWU1GsTINu0ZCCre9UqtKaYZbSEncVemXncDA2sqJ4SvJrtimLpFEhRniPX9FLskk8mQ8S48VEnzvWU543bQo5UT02mpzv8JfdRRbYhl1VtaBW0biu7KmnKbUL9vFMuPadOCkj/wDaVBg06bLloQ+58sqfHBQ25vU4sOrepNL0vs+XVJceVV6xMC4lr25TsKq1zV1QQ1TqDTUBDym5FQmPx2ESnG/lY5VueWDsQsSp8eWhDzjiyzxzRgLMjlKsjW1why9TFSy7UZIcfYj6Y4M+q6wnSZdxutFfsOLRNOdNadGuHX7Uuky49jWnLWtdHoiXSwzNvq6pCW8MW9aq1pC3lto+ZkyCygDY6Bv+2/t0oehdGq1aqlVN/as364anqjq3WdjlSuiqOq3fqykxQflaFbNIWtxmmQIY2rTIe9Rbg9NQKXbZoTVbPVV9YNWH0V/uB1QEWq31crkkrFCoTpddp+mFtwVMbaPb1vtur2twnvRlzpU+UtDIdA6diSTgZJSCdoPtnyQMkAnjOD/E9azfSwGr9wMAxcYaX63d5PHTeQluJE5jAgnGL4lY5QclkWlTOac9bMPNqKEJUTgBKRtICUpSSAM4ASAMAD7+PJ6trkJSElI3hWSDykcHHunnnOR5HB8EdYGcgDjjOOADz9yBk/lknHt1dddLpT9O0Jz75OTjPOB9hxj78/ZM6RyFtG7uXj6fdvHvinLZ0pNMEAx9MFfyr+n+vXjrqnSMgAJzjGc4OPJJ58DkAfu6tdDodGgRACg9ujArB0Oh0Os6KRhQCcEY3KyTuyVY48DA4489YnLhFlV1XvXl/wB+B/16wtF1fWD16M5G04Vng/Y+x8jwfzH7+vVoUg4UMEjOMg8cj2J+x6CU7s84x0ZpxdSUYwOS+KQuhWlwYHPWekeMlFP1XnwZKUCm1q3hUgkLCSarTGmY7i1oxhQcaZ345H1LJ3DckME+L/2403uJ7GNU6c3AcnXdYdPcvuylRozb8hisUtl1chgFxxKEMzoZeYfBS4pZIUlslBIfvqg8mh1awriQhKPVuuJbdQlHbhmHXoU+C0shQUCFS3I7awR9QUkBSSkBSgORoMltyNVYwn0qWhxqfDWTsdjONLaWjbuSlSk5DgyUkBSgOVYU4bTUj8yNgxiVFlmmTaWhxBPaRhWoqdN/fdmb3se+0IxZOqARw0kJAmfNrfgkp756+PlUYj0SY4xIbU040++y404natLrWUvIWhRKkraWNq0qwUqyMJxjrVOJCVkDOOPPtkZx+Y/t/vMnPxcu3Rrti779bNOqXElxrYmV9V52w6/HLDE6lXQkzvnoIysKiPyXHi2S8+pCipCnFZClRir/ABq/7R/sPHU82s2elpyUzAsGy7+4Z+tnm/auvPHve3dp3rfbdsNLUYkXCU0eMOBzbhq/PVP/AD/X56HQ69CVEZAJBO0EA4Kvt+/8vPSql8F9NvXnQ6HVSUKWcJSpRwTwCeAMk8ewHJ6yCtAr9At/kdDqnoYIx+YyP3ZI/vB63tBti47pqbFGtqhVe4KvJCjGpVEp0uq1KQEY3liDBZflPbAQVem0raCN2Mjro3+H/wDo0nev3W/yZvfWykM9uOjs9xqpTJd5SHYd+1qgDJcNv0FunVdMeY7tCWotXbjysrbDjLKHStpVo7Hd66GnoTR/eRjEyGVPvi8NdJ9bc6ehElKUa9zkXX2/z+lefr1zt2JYF56nXPS7LsC2axd111yVHgUagUKGudUqhOlyGosWNHjo+pbj77zbSBkZWtPtnr6OnwJvgW2B2iWtaPc/3Q6Qpf7p6jAi1O1aDdlaFRb0oW6C8uW7bcdIhN1xaFxVx1TvWVF9FTrYTvca6l97J/hZdlnYLR6ezoVpDbS7sjRm0StRbtp7VfveoPqYW3LfdqkkBmIh9xxxbUeJEZVGQpLanXy0hwSGymx6ja1to3kZKUjYEpw9tOEhIwFLP0A8Z4CeepP2fsk2ZPW0xkVhwxpafZPOZDdGM1cT7z3zRdGUNKaKOL9MhI2Pkk+4BZnypWAkH3Cd6gCraMAkJA4zzgAAJzzgDPPV1v3/AIf7eqwMDHVXGBgYP845Jz9uPAwOOPPU42+zNB0mKeixiFAMEoq7STl/eG6EzW89Rld2snytt3dt/X7Xn7ZLSmm1Y3JzjOOVDz+4j7dU/Ls/0P8AWV/5ur3Q6XR9IRj6YngjgLbaCgtz+vWvKX+KX83/AK9N57UpPy1nXCQnO+6Dn/Rt+igZPnAUsHAGTg4I8F4EKWVpbV9A4VuBP4T9Q55GASCU59vv0zTtc5s2vf8A+zr/AP0DQenawVEFI9lBQ88ZBKgce/gj+J/jDe0QJ9ubLrUlT+rPkfTBEfrmvCHVtfGGpOPxZ3ji4jr6kqxmJOCxXzxS36/w6ObbvIWg4Iz5AyMgjwcjkZx5/rHRyozy9rDmeRv452/5VSTxn3BOeecn2PRGj/zv9H8/6X36ONJWG2I6z4Hq/wBq3B7A/f7dIO4QCDEL9QF+UYLX8XH26bNjP5jDVlUVMoLRHVPBlfy3Wc+OlIjrSpGQoEEkjn249vI5zn7HIPPV/otRZawhKwCArP07jlOCofSeAMnk/Tz4/PrN/WDn9H+1P/k6iWpttQmgCX9Q/wBfP16lWjrkYRixlIA4yjxzFyWSlFH7Z/h463HRVuGEl1pauB6gO7POVbSUqKcYO0JVxkZIRz5PWZ80sKSoFwAZykvOKCsjA/FnGPPg56t1RJfZLH85X1ZUTjH1DAIIIKsq59s55JyDdvHU0NfTmOfKFeBFPzV7FZrxkyCbfhu9CWh8tGYsVkFJh8L9Ru/pWTDVLtp8liSXXE8AhtRGMAISdp8nOQck5wcgDnIBOw4okh4D8g0MD/7Ik/2npfrppXzMN5Ja3OsKc+lQ5cSjekAqBAI3JSd3hRAAIGOkKcbcaK0HKTnBSRgpIOcHOc49j5PP8ba7FvzU0gW5zjbFiLLjFkEXlQ8ZHE4tvpuOJNHd57PDS3OpKekTjGvVJlFiSlTYefUrgw2qD1pOh1lSGlblO8bfp9+RwE5Ixjz9iTz484xepcNl/wCz7dRHU05ac2ErwtKVyjaEgzhr6v062TTvq7vp27ce+c5z+Q+3V7rDif8ASf6H/i6zOipAKH+8dN+oEZoFBX+Q+/Q68UkLBSoZB8jJHg59sHyOveh1r1p48daWVFT6jZ3fUkEhWD+FQUkpxux5wrPJ4x79WAwckFWAMYOPP34zxj+3rdutert+rbtz7ZznH5j7dap3KdvJO5BVgcfzlJx5wc7c84HOPzJk9w6enyblVRrGLX3fB58XV+Pfo+OjpbhGZcz81Mi/zeaoz+bFNgLVjaKEhCkhWScckZAIPkY8eT75x79RJfFcuadetk6P9nNtS8V7uov+JRa02hpXqNafWs6Khccre2r5hLe9BYW0ww8FJ2reUlCEJdltZUleVFCyPCQMAKOTwpRIwCBztycBZ4CCTDZpZjuI+Ix3Q9wElMiXpd2iaU1fRXTycWf8TjXpMoD9QuOs02T6gD0okrSl70luK9crWGFJUgwX4u7tpQ7frQ19WOnLxGJjKXlu2/TeSNGaRu1vwv8AhOXdviTYptuenpoeWuKsnBfnOPLyFsA6kR0ol0+2u3LTayKAv0KTSLeagobUkpV6cF16KS4AofStTIUT9SgBgFRC9ydXa++mLuQpKW8pwMBS95PKiSCnaUEDHODnBxySl28Xom69BtOKyVB81i24lQDmDg/PpVJW2fH1NB8IJV55JTkYJvuNpUqIlBP4lkYwTg4ykjBHCSMke/knghXMfcdzLca3LHH0SFKl55RXKiRlLDJzLGKevXr8O+yw7VsNix25t5Om1GMn1rA4zTwNxKRrA37BbowCXVOAbkrxgpydxxtGB7K24+kgcgjOcno0TgVQZKUjKigEAeTgKJwPf+H5DyR1paJHLWAr+alas8fUSpSfAUcYCh+/HjngwrSFpKVDIODg+OCCMj35HjwffjpFGEIx1TSLpYx9S3xLjF5NYlKRdmEFs6svdz+ZrEkp46bICqQJSKfcld3Ta3465/PjIUWY/wBnlfuOnoK5th6pWPdTYGctJTckJpUkOI3ABlKd4QUr9QKUFFCQsKdJZNSS7ZVnzvS9I1K2aDUflw56np/P0eBMLfrbU7i366huKEBWw5Q2SEgsfEis7+W/Z53JW7Gjl+Y9p1cFRhOYKkxZ1Kn06rsPbCcqKlU9cfhTe0vJdysNektCe0u81Xj2vaG3N6plGo6eUFIkcgO/Lw0tJUE425GAtXk7VfVnz1c34b7j52hraLG5aXy+cLC+ctYhcvNtKWWQr8q482v7WXZ5bfuse4GpXztrLUYkH0k5aTiTXLjxfPGKrHji1wUt9hE95xgbmfUClAEcucFZBySoKIPOQBnjPBVFJ37tfywe020mZeKXNWtcNK7XeigkKmUpNxKmT0FCT9YBQyFfUlKQSVHjmSIVdDIlpKT9MiR4SQpAJKjuO7G4Z8o3AY4Cuo+5tKb1N+Jj2CWM2hcpEXUS4ryktEFxsfyXiyJja3UKwgpSpYAUVKQD9QHG5U97/r/I7fqyIWyw375MnqZNOVqWB8I3zL+Efb57z4t2OjAt+ZoqZKeUF5W/bGTJyRLOutOkU5ik0ODRoTKGYVIi0qnwmWsbGWY9IhNhlIBOCkNoSoAk5QkEnCT1e6y2x6pcbV9JelPPrIByOAlKBlSvwobCAolRICc5xz78p/1n+p/xdcy951ie8lqyxzPJkUW/BeFyt37dewPZ9E2nbdnt5YYbfTay/miPnP3+n6HWH0Oh0Om3p06HQ6HQ6HQ6HQ6HQ6HQ6tOthYPHOMc8gjn6SCcck+T0VqlA9QJKASQcBWRgfi4OSPHHuMk++MA3dUFtBzlI5OT5znOeOeP4Y6xKMZx4yP0cKfZvzH6mP4NIr227ntpEi2ko9vv/AOn8ukregCI4pTaME4KkgjbnCjxyQnhecAlOEgAD6uraaqlrahxJSSCeRuCBk4yUEk7vbG7B84HR8qEBK87Ugq2nKuAMDBHG78iOMkfiAz5I9RpS1qSpICVY/NX0ZUQMBRGASefP3xx0TKEoSUs5V4iJIAIygSJFl+qIXFWlih1J9Dd6e40YgQ5lUOD6tF4VWvy1bfkrbRJYJzkYJ+oAp+oDcAR5OU8nAPOOTzwY4kgOJSDnCs7chIxgqznB9yOPOfy6IrH7AJAJO3PknJznySVHjPvn+HW8ZkK2tnHCd/0hRAUFE4zxg4OSDj3xjjJ00taSsoFVxNQwRnfJKG0Ui5r08kGlOtN5tYytiFL5v3BqrrzRTRhRox0d2nNwwrG4e+RlWcngYHgD26u9aKPJQUIGcj6vq+r7qPjbn8uty25vzxjGPfPnP5D7dLMSiTjVPkEeLR6WlpLyeT6dRncaEtKS1Rb9CqQ+vu+37v6V1c6HQ6HWvSbodDodDodDodDodDodDodaC5oTFUty5qVJSVR6pQ6nTH0g8KZnwXYrgUD5H7ZJIG3hPnyFb/qw40l1a2z4UkpyU7sEfTnbn/OPOeAOcZOF/b109c1bqOnxtfAynEiIZeTjA179Jt7Hnsd/D/Fs9we//u36dc0/wyYzMDtoXbgBTKtvVTVegTyDwmTBu6Ur8JJ2j6gMcZBGFHOEyEw/xPf/AIv+5XTA+yeILerXeBps6sofsfu61cbbZSnhml1mpszKao5URuUWJKVJyTlGVLC1HD+4zgW884D9BSDnkJwMBKjkDGQCRkZAyPv10R8P7j5vbdjHhx/PJDBEIyAwosiTeSmK08seKv4obf5XxV3tRiu+1Ix5XymErk5VOMjFly5+1dJdrpk6c1UD+bOoTpySMhquU5RTwR5B4zkZHKTnIVKhqP6vpykoBLlJpjuAoDCVRGk7cnJISWzjPJ3HgYyUu1uBc07uHCeIiIUpxWeA3HqEKStRHGNqWz7nP9nSoUJW+DSFDkJt+kpP+Yow4x2KI8KB3ZB54P26f5FZ8XFW/DEY0FVSykPn2oPPUC2awS42SwX49Q5w34q/bwYV6zVJUslSlZJ/LwPsOfHSVauyfQttz7nJAyMkjkHkeEke2clSQRznpZVJSr8Qzjx5H93SA65SCxb0dKThTzqm/t9JAKsH7+PzIz489J+ENOMnTjxksbtlI/eLyt0K+P8Ar1IdvI1pEU48eNGKKRjVcfeJXisU31Hloe8qb8SmnKUgenbvbtNkoXnBUidXKS2hQG7KCfl88IWoBZCsH6R1YMKC48coCUtllCkpA4CVpChjBCR59hggDx1yd6BIed+I/frTO7/5D2q0p9ecKUVu3Ag4T7qwllPAJG48bRuPXVvbTwnUOjyz9SZVLivjyMb2kZByonKTlJySDjIyMHqifjPTkdx1NVi0UMsqWADbV5Lv1Zzig9Wv7OOkaPwDtJ1ZxKbi+fp6nKBf/hsfU2xScwWe+C93PAf0z0wKcKBBSisSY5xg52n0Afq5Oc8ZwHvamXZR9OLGuy/q7LYj0KyrUuK7avKdeQw0INv096e8z6qw4hD8tSGYURIC1OSXkIS2pSsFkVyLcid6FYIGXF6NacSFJCsqdcavSXBISFKVvUv1VZABI5WlGElQwu/ZyXqvN0G7RKPUnYTmv1/IqeokJshEpnRewn263X1y3gVNsx6pWIUGO7HwtqYxGfacBAwuGHJqTH1KSWXK/VGNNLHkNj/hI2merz3ciUID+96U4lSkSPKjmIf82SsoHSsdj9p12DolF1Mvpot6i6+V+qawXoErCgyi5ltu2zT2P2bKkRqbbghMxm3WkPMqW6hwqWFKK4VGwqVM1Bg3xUHHqo7RKe7BoNNqQEiJSZMleZlahDclLVVfSlEdD623RGYaxHDSnn1OKatUJhLEaAymPBhxmocOM2kpbZjRm0NR2kgnhDbaAhAwSEAAjIOSzU6gN+1I+tP0KUB42qVkAKJB58nGACPJIKclnK48isX7yoDKKWnmkPawR0+Tqy09OxjJ8xkeq5MVEKBjReEQwr1mT69HpzD82a4EsNgqWtRBUcqwkkgAklagCScZV5yR1umHkyIsOSlJSJUVuRg+wcyUg8/0cew8cgHps0quSr71PpGmNOiqVSqRS4d93vXEuuNsw4HzU+PRaE4+E7VKq0uD8y82V+ohuEgBohxZQ6R4sj0m2EBDTLSG2tqtyfRCE+klOONqUnAIJ3Ag/brWRGs1GRjiEq9rptGhz7Unhx1ppWS4kpSKtWV148kiwXBT7NAZ6sdDodDovpR0Oh0OqiRhICcEZ3KyTuyeOPAwOOPPQ/3+n+/t0Oqeh0Oh0Oh1fkIShYCRgFIOMk85UPcn7DrXvEnbkY/F75+3Wylf5RP/AGB/3ldYikJVjcM4zjkjz+4j7dDRkEBQkoepZco+fHqIt+HkSx4pz1tpSIsZJeP45E+oe+b6RruBZfVpZdEyM38w5RYkavtNpJS583RKpTqnGKCPqG4RX2iQeA4cgjwYqPWGLjoVFrUZBQiqUaFVtn0qWhE1G9LJKXQUqQQsLJTlASCQkqIJouOjt1uj1OnqSlaplOmQ0pWV+mr5hlSMKCFtnO7aUqKvoUlKhyOkY0nkJYtdFHA9ORb0yRQHW0jHy4gLfQljI2jCEAEBSVOAlOVAglSzbz/vI8aiNjEvjF/WUpSSWfq3SUCKnTnH5Mozhz07OQIL7t2eS2qWw8FK89H6Ql2vWlW1dtXchX6f6tvpuyHpJqXIhMFco02pki1JTxdWI7jUCOl9hCJEinoQhl/bM3OOFEOuofwdrIuiEir6QXlPoTsyMmdEh1dsVaG4V78Rw+iVHUkNraUPW9MFxLjToRtVgdmffv29Ufum7P8AW7R+owmJdRqNmVSqWw676YVCuClNmZTJsdx4qZbktyg2G1rbcQAf8ksjcnnW7H9TZOoPbjZD05wuVm2Gp9m11l5S/nolTtiUunSW5ze0Nsuq2tuJW0Q2oulsND0gpdgfDmmb3XhtG4c3M6GqxJ8mMsvJaFr6g4H/ALR3bp/DncP+JdrDSJaPz9bTI0avzNSIBJXiQ4q4WXJtAksRFP8AgzaqS6LKfXqDaorzElyPGoSabLW5JU3lJccnGpI+XzhWWvknBkHCleej7or8CbV/Vev1uy52qNrW5fS7brE7Ty2GKRUKn/LK8IEV6VAtNNQjTWTSZNVUwqPCmyYbrHzLjaHQjcFmfpDoCcKQTkJGSrlI9x7gj/N3bf4E9bSl1idQ6tRa/RZioFZt6qRaxS56SQ5HmwXUSIigpST9KJbTLyk+VKbSRhSQerN1fh3abeH9yfN9PrVl4p5KJEc0oiBmMqsOSNh8e7rUl/7RrceVcoXGLyvxFYlXkWFFUIW2zLst/Rd9Ke7rRujayUzvErlKltO1+xNQ9P3NNYzNy6e6uWpNVT7utmvLm1V0B+gy1tNoMaH6E8kriz0lh5CpbdFf0TjsTsu2bQ/wy3dqLqtetMluyLlqFKraKDa1dDJb+VYYo7rs2dEab3PBapQCXUqCG21BLpLjNC9Y2+2bu8sjVul1CFA0A+JQpEK/ahAcZZpWnfeRbjFQZqKnJwKjSm9UodPqMr1qm4j56thamAtKE46FkAHJ84I/gfP9eCD/AFHpFtO2aXziJEu19QSj9VyLmIYELcMbEkcfibd62jGWk8QCJLlKRKOKaXi+5+9RVfVY/wBvfw6+zDtLaZT299vGm1gTjEaYmXEzbsSsXbPeQh5tc12v1ozJDLz7b5adTETHjrbQkNsNKSFB5Coy1uuSn5EqbJex6rkl5KlcEkYASEjIxv24yrOM8qO4WyFHIO05JPk5J/jx7+Pv1jLTtUU5zjHPjyAfz+/Uu2m22+lpmnE5enIlUeGmPgVvEl8X46Yd93ju029TVrTJenikiSi5H383UIl/XC4bijggBSDwBlII4xnnPP78HOR468DZLaAkZAK+eATkjkjPnjGMnAA56uqSoqJKCtPG369oHHOBn3P93QUXjjanb5z9STn+vxjpbDS09OXPTiRlK2SyxnPELwD4AKqvHTdPX191LT/LPUI1RWajJ/LFZqXK8UOaosvdDodDrPSLT1J6UzU03jON00NWMXEhPCmTq36Tf9H+1X+/oek3/R/tV/v6udDrNv1f5vRzPV3WrGOnCEZseJDS/u4vHlJXlKuVXapYB02jtVaU7ZlwICcqVc+9AztzigUYbgSQCMpUM5xlJHkY6dhEYcbILiMbUqx9STglX+aT/NJ/L+PTPe0GS+pm+qa68DGpr1DXAZ9x81GfRKUo+/8A9GjFOCTla92cI2PHYUgOKO/cVqUSgJUkHCiQQo5xlOTjPGcHJHUV7My/4fExUpyli1/M1fsWLd3gM+auD48/9m+Le5xTOvrzB5B6ZBK/u2ELvODKxHfQgQhWfuCPHg5Pt+ZPnno4wlAsob/nISnwQdwPuMecE44yPBB5x0S481LKtwSSfz/COCD45PnjgdbNqoMhO3Yr6f6BSocknncvI/rOefHjoreaGpqyUg5REpLqItX/AA/iuK6YtvuTRhBauJInHJZKS4aTHpbOWWmvc6NpKClzeG1c43JGR5B4UcHg/b36uKffH4Xkq+/DQx9vP35/q6LaKsTwlZAH2GQPJ5CVk8/u89XkVYJWkqPqDn+mADjHOQTyCQMJPPJwPLTLa6trKMZIeEL9kMmPL74r+C5Q3rdHz4xbbA4ePfhOTeExbdX79G1lZWgFXCudwyDjk48YHIx4/d5B6zW2lKaWQnO4oKOQMlJUFe48Anz/AA6L7E5Kkkp3A8bhtHHnHkkc4J4Jx4PRgZnpWpKVo2k5yoElIwCRxgnnAH7+fHTZuNPVhdQ97T3AqVB5R+y4/mOUd7GWnBUtyzxweLeOLj/mXjGPqMe2mq9OK2VLKAs4ScAZJyPrbODyc/UnGSpXKcHPTe7gopamvLQP2bgKiMJRlQJCVAA5CSdpAAJ24SOQVF1LyUqbWFpChtUcHHsDyCQcEexxkHkdECuURp9TiUAJUpShuCQrwSlIVgDIXwFfSoDkAZWAHbsXdZbbVOdtXxqj2Cs+PLWS1/h1He+9vdfb62tCNynyEjiuQclbMIpf7pmylW1ONAKKVp5Sce4OPIIPB2kHI9iCD1rXoTAwoOJYT4O76gSfABWsY4BOOSefYcHKq05MaW+yU7FhZwrkj8XnGUgkpwVH3JKgSCCSy82V7SkZI4xnGRg+eQDjJ4OeTn2HVpbbX5kJR1EjKI2IxpLPNx+11Z1UG42koShHVQjJkwVXjVDFzFsGN/urxRawXeh1ukq2qCsZx7fv4PV70/V+vO3d5GM+OPPH2+3TjLWIvqjUf8V3n6UF+M3/AA6Q6+11NKIw/vbQrEK8/WTfg/n9sl/odVLKScpRsGPG4q555yf4cfl1T0d0mP0r7Nf6Kf16HVtSSSSBkf8Ap1c6tqTlSAeS4DsG4/SMlJUUpGQCPqJOQU+CQCAm3UtA0z9o1Plxux+sgSsleH3Q+/SnabfU3Or8vSrlxvIp5AKMqqAH39h6bR3h6+wO2vtm1X1YemojVen0ePblnMqe9JypXpdvr0S3oDTqUuuI9aQ+vK24skISAFpSPrBd7Tu3iH219k9p2LOaZVqFqpQanfGqNWUW11A3jflKZnyEznSVyamqktVBTLS5D7C3vTfJbiuKdShrWtdo0zvJ+Ipod22oeTN0v7ZKQzrjrtQEvIl0euXJVi01Y9GmvoaQ3Hkx3qUuY8oPn5VVbQJDsMR2f1lI1qhd8OTeDLailqFLkJpMQBSgEIj7UP4SDw0EllCDv28DJGVEc9/G3do6++19rH1nHjF8Bwac3QNUtWoN5s7N/AT4b38u4bTWlteENNjOSrYLyDHqsA4xVtv26jX7HK2qo9tloQw3sNs1m9bSJCtwb/k9dtVp7TR+nA9GK3HaAOCAAffp2stsOBKVeOSMYyCMZIJB8g48eM/fpi3YnM/VDHcvpQ6P8Z0v7mtTGwMnIpV51BN1UbKSkbAI0tbQBJKi2onBPL9OqndS5cqFi0+HMQPrLwxw3nz7vXo9stTjobd4BKEeKD5T0+/KqqzKI/dXSsR/RWsj8O0JTgAA5wTxk7duMY988eOslR2jOM8jPtgEgEn8kglR/IckeerrjezHOc59seMfmfv1iyM+g7hO4hCiBnHIGc5/LGfzxj36MEqwK80HE+/6W3b9W+nWMjUYt2SQvx7171Xj7H6HUf8ArZAFzafaqWoXQhVxWXd1HcY2Bz5mHPpU6JKaBLiC2CHQvICshK08E70Q3/DguQJ7WLfoj9TlVSXZ10XraclMt1SjEXS6spxqOhJB2bRPdSob8L9NKwMqCBN9cEUP1eeSeG3nAUgHK0OlxLrZIUMpWnyMZJHvnA57e2WJ/gj7k+9bQh9/04cPViXqJa1OUAyuNblep8ZUiUQHFFfr/sE7k7cGLuOPUKW7D/D7uX7NPV4xD9pNKMYsrrhztVKCXL6/uqFD1xd/a8+Htb/he17loJrcdtqaGrp8K4fLlp8Jc+SVPlPCKcbyoD4pFcSEzBgKAlSFBIKc7sqyeBnHJySQPbYDgdIv2Lw0338Y2nTSku07RnQyuXNGSEBSm5tedjRWgVAHYXo78lskDJ9MKVwEAmeQr/6UQSQp6QvHsCpRA+nxuHueRzgcDJx/g006qXX8RrvovxKx8rbFgWDakJ/bksyXZXqtQlEhIwuM2044RkD1FJUrchYTOvibuZDtuooeLlbSh7VYHqjkwHtkzyh/Z/7eavxr29kcklpIVFjEllr/ABXxOPqsi+a66c0Elkq8jepOfGCVrIHOM8JIJGRkeetg66GQkBOQcgAHaAE448H7/ljHWtb3JaKFed4J54yC54/fuz7fmPsOueN5L9p1/mSEDkEXyjJtw4qV/wCXjL6tQgkNOMiuEIxT9IxHI+yPQ6HQ6HRXRvQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HVt1ven8xnHvnI5HkDnjk9F+ZDDhC0DbtH1Hg5yT5yoHg4xg4GTxyT0ZOqFISrkjnGM5PH+z39x1n0oxkWeyVcX7XYfyfLY30p2+5loJ5r7Pi/OPD/G6+j0QnILgBOwo2glWSCcYz4Ks8D7ec9WW8oylZAAxtyRjkq9/zx78/l0dX4yBtzz+LHkfb/O9+i7OgKKkkAEEkkZ5Jyfq5UMeeRnA4xnnCec9aEEnD5hhijQvIupyMIcsTq6osyv+330dcIzkA+FMlOXKv1LXw146tMOuJUhKeUjP0jaDggk8ke3JwSM+MjrfsPb/AKVEbvbjGfJP5cAD7fx6LyI6/oCsgK3ZJCiU4z+IHGM+E88j+rraxkFJbAUTtKRk+SCeR54GOAOfp456zozlzjGGefmCh7WtixJAZpbqrSuitzHTkYqwchny5vxlMnl93xRhbcKwcgAjHjwc59vbx9z1c6xWlpTu3HGcY4J8Z+wP36zvT/P+z/16WR0dTUZfLjZGryHkx+ZL8Pi66YNSPGbRRivNeC6/i/w6t9DodDonovodDodDodDq08cIx9yB/t/2dWmcpPq+yDjH33Ap8+2CoZz7HjkY69fPKR9gT/Wcf7OgyoE+m5y0sELT+En34UPBPIKiDxjPCQOlW3jc4DLjchGuWbKKv3qv4/x6319GWrstbSjV6unqGWvzCGf4F+9XWeudC0nqXY/xMO+/TqMDHp13/wCDrVyHEVhGZdyw3maipW7O4PzH1vFwHb+NtJCiQl7JCdykt4Kd6gkJ8YKjtAA9scAD+HTT+9SiRdMPiu6JXo62lim9xuhVdsSvrSlSCu4bRfbl0BgrScqdakyHTkhtYSvaCoYR07KIFNuoB59RCk5z7gBauMqPkYAJ8EEHAx1fvwjvYux0tIjbBdNcgEpYpzfJitOQj7N9eOP45dr3XavjTumnq6QRjrT1FMNyk/mPbzeCrlWMWSNWoTk3Tu/I6AQ47albcjqB5D0WnOSGyAOc72QkZwcnIOQOt/aNUEi3bWqTSAuNV7UpNRGF4w680kKScBST6YTtAxuSSQrB85t1QXalb1ZhMp3uy6VUoqU4Cgv5mE+yEFJIBClLSD9h7gZPRB0klIl6d2yhGA5R2alQ5zaeAxOhVmoIcYSPICEJSSP5u4DABHU0UlGEEPNvm6KA8+Pcrw3fk6pTR1G4mYpFpxlh9LVwJYh5U+vS0svJeTvQDt/PGQckEEAkA4AVjOdqgeM9N212DhiUpkDOXSpSBgnwsAjByrOcBPIOfG4Ahc6cr0y4TyOAfvjKvHP3H9p6QbW50mdSUEEgOpKRngABwKzyPxHHIGfYnCRhMso8UiHJjJFuiJzSzzdV+jde3T5tZt6ax/71IjV1IZRXzjBJcYU8GemDdtDSXfiWa3JKSsHtcoiGuRt2pnsrwMjONyirduGCAQRtz10+aWV2LWrFtqXHx9NIiNOp4K0qSjbkjOEqUUAlPG1JAIycnmd7WXIbHxMNVW5Dnope7U6LIRvUCpz1Z0QrIy4klSNiTjdghR3FOPr6FO3mosotl+kE/tG5brjYyo4RuIxkApIJ5BCvO48jO2lvi6Zq7nc8oerjK0efK4jFKtPEctY9o1164f2f4mj+G+ymwWjkhFglRbC1UuLE9NDLl4WkUv8A9RnvloUNDSnHa9oVDehBPCUy6He0x5C8kqKlZVt9M7UqLqVcbACVO35+TrL3d903cPN9OdbGmken9smmBCj6UVVFQ5V71qEJJUFEVCqVaNHlPEuJdTATlX0o2kbvc1Nd0P17ouqGxwi1e23U6UxsUhKnK3FniFbKUrWl10qNbqkdX7KPIKWw464na2CXRdlmjszQnte0xs6vuNy70rlJF5X5Ui2BIqt43gEXFW5k3YpSFPJXNRDK0httQijDDSlKQK5XjG8VGPJM3gC3Nrnx7hn36unS/v8AVhBfNAZag8BGuI4ZJ6rKMDT05tE9bjKifKG8qUBs3ApJznJIPBO5OzGeAMcIbrJqfQdKLDr99V9/ZHo0ZTkOnMvFmXWak8HG6bRoZ2Pq+aqMstsNn0nRwTtJTkKvNLcRbmCDuSVEcAIADivqJKs/SBnI58nzyw9iKe4/uwj0oRkVLRPtXnwKneMl9xH6rurXh+OuoUuhsF8svtQLIpziqi48ltbEhUhUeDLXLdcZOdN1JWsm2mAAMfBJqKZLacMgSPnpy3fy9HThm5RjxrGVqllJHlMjYWgvC8L06PtZ05q9j6eyrnvpKHdWtW6q7fmpjscEQIj8951yhWtS1FSj+rbdpS2YTSVJQ8lz1FrSj1ENNOSOMnaNqcnanOdozwM++Bxn36q2LLaXMH0yAtJyMYWE4O3OQVDbngHxnx1R1rKfNxWKPrSGbcuW1F8vTZEiDxbFXyPmvpRgAGroLVtR0Oh0Otetuh0Oh0Oh0Oh0Oh0Oh0Oh1Zf/AAD/ALQ/uPV7q26kqSAkZO4HyBxg/frJ5P1P8+t9NCcVaL8vV0HBB44OeQCOPuDkEfkQQffps9tg0DVjUC3J5Laaw7SLxjBsBTLP61jKhPlKTuWVzZlOlylEKIaShve22XEF1y/7v+f7um5alIVSNTrKuVn9k1W6LMtKc8pO/bLalty6R5H7ZTqZM5pCBuU0lg8o9ZKV76eLb/LTX1z7Yo8ZVCv4UftZMdSyPIx+sW6i3dBb7ksg1Rlco4bS496qUuNSWlMPNucNuNKQpDrSlYOEutq2K4JTncOcDrkUpGlzna93yd2XbmwpMG1rhrVO1ks6IA23TUUm8FNF16HgbY5Q644mUwqVOedkeitTrSXENnrpgO/MxmnkAnerwSBhZBQQTjHByPY4SVYz9PXNl8auz2dFNeOzvvIgpiU8G75ejuoTzK3IzLkCuU+R8rLEFCZTz0dH1vrQlyK20yg+pNURlUv+F+6O07lt5T0/TfBtiSIuFamx/L9FuNjTY87f2j/hPW798Lbzd6Ev/sJOc4EeUpx3PyxRjKwj8nywRZXjy5IASAkchIAByDkAY8jg/vHH26pUMlI++f8AZ1UnBSlQIKT+D6grKNqVIVuSSlQKFpA2/TgDHnqlRwUn7Z/2ddBy1Ia22jqP5JOmy8+PmRJeM1V171WBx15HbjRltt1rbeTc9KUoo1yyNKey5M+4/R6d3plbTHc7odrN2VTJ4ptzajwWNQtAq4ktNT7S1v0y9W6bUqVKlqcjmFImyI7sRTiZKFKclJX6chTDbfU23wzu61ru57U7Ruy5VORtY7AqdY0j14o8hCo8ql6tWDKFv3K5JYcUHRIrEmKmrqkKZbZmfOofZCg4oJ5wbNueq2NdFuXfRZS4dXtmrQ6vClNZ3tuRXQtSQR9W1xre0raUq2qyCCB1JVpLfMTtq+Iraeo9GQ3b/bD8VC04c+I0wWl0W0O7+z6XMk1KDIdSpj5Z2848l9luTUpLCnpyYjbMPBCem3Vn8nccdOIFgtIpxG2kvyHtVxXlQNo/Dko7ra/s84cZ6BA4y9ZWpyQfS5hMRzm7KoHoJW2tsjcMZzgggg4xz9/ceQD+XVHWY1HUEuBYCfVSg5GCTglSDwcEYIPGdyVJwoY6w+nMRum6rJ4bLxl97PPteLrpRutubfUqMuUJXxbFsqzH0sfGLrNW0FtCiSRkn8z+72PXnpN/0f7Vf7+rnQ635SPEpfzf+vSThCpHGNTRmcSpo2MivUjku6c+esf0P8//AFf+Loeh/n/6v/F1kdDrb5up/i/pH/p0T+y6H/u//NP/APW6x/Q/z/8AV/4uh6H+f/q/8XWR1krbQyBuT6pVnHJQABj2Gc5zySfYYHnOHWmfvZfBUf8ApXSnS7UaxGUdEIz5cZS1JA8bvHNl5K8VfTMe0kluVqQ4MgRhQx6ZyQovIf8ATV7EbUMlH4jwvcE5H1PAQ7vDZwPrCjx7YGRxzyRj3/Ppm/am76B1KOMlwURO7nGITRTwPGSJOT9XnHt07EykMIR6gWdxUE7QDwnaedyh/SAGPYf1s/wtput2XbycyGcR8vpZB7mCxrFtr5bsn8U4x0/jLfaEjjxiT5YrkgN03fK5Ps4Lc0ZEy1Iz6hCs+MlKMY8+E8+R+7+PWSJTGRh0Z9sbs8fbA6K3zLuQcjI8HKsjPnH1e/VaZawRuSFDnOFuJJ+3O4gY/wCz4/Pnp8dm1fl+kUP6OP6mb+z1Xse4kIRjZJLuUozZNq+pZ5DwVTWM+eje1IByUq3jgEEqBHnGM+M/fBBxj2627L6XRnhJz+HcCeSQPscnHjH289EZiV6isBKkKHghWfIV7jB8D7e+OtvHllJwtQHjBIIB8j6sEDjIwcADBJP3QbjaeyVIqs3Q19LGw+mOnDZdwgSOYRNQLlH8rxsE5JxTMaWnNo1R2anOtAjg5xk8AnGfOUke/GAPzz1vY1QU9syM7gfAABxuJznJSRjHBIJH25JJYk7hhXt5PJKfOM4H1Zx+8Z5J63DT6EIbQf8AP3Hn6eSU8YOc59jx79MW42p4lA5PiQfbz7XVGP8AqPT1p69hLS5JGVT0n2G1x6iF1iUMK+7jo7tTvV9NCsFI34UCMJ8k/hH1ZIx7bfz6yXAl1KFDaoJTjI+tK0ha1EYBwfxEY9yMEjPBKgOFbuBuAwNwK1KSTtcOcKyRz7En29xkmZh8oQvKCsjaOVcqySMfhP3x756aNfb/ACpHDzhrxlXzms3nOfNWtO+juDW03T1o+i2MlVYz48hE5Mx5F2WMm2UTKW3jABfW42jBQncfw5Pk7jtCc5SBuKs/UrdwMgJxKjJOxZcA4IKiOMZGOdwHkn9+f3dK5dTRUl5zA52tk+dp3JKcZIJyCvkAcDk8gdJdOYzhJJwUj6hxhWVEAjPI4yQeP3EAiedl1mW10os/AFef3Y2W34Ww9/IZ6rPve047nVjHTJaVMmNkRmKQGRUhUBlHC4umutB1ZeVhO3H4vf7YIP8AHPV30ltLWFAjcElOVBRIAIPOSfP3/u696kQkZD+YKfNZS/a/D/l1DkdLUqQrGlH0o0NPnwv8a6wnoyXFlRbyo43K3kbsAAfTu+nGMfn1QmG2M7mN32/aqGP6lc562HQ63NaZEieADzIcfckP8qPbxjrT0VTpaT9Vj6l82yu7f1+3jrVNNJaBwSSrGc4xkZ8ADjyeCT+/oo3xdFLsW0rrvq4ZUenWxZVr1y66/U5kgRo0Wm0SN8w8lbqwUIdfJQltRC8IQ+rYdmFKKlgOklR4QU4GM53ZJOc48JAGQRycg+Oop/inV6vX3a2ifYvYFXkUu8+9vU2k2BVJUZ5cVymaUUeStzUOpfOobcXFabg+tGXLeS/CjrU2ZUWU4uOkRr4r7lDR2Go0s4xWQf8AMHEHF3XqoKPDeepV8NbM3O825w4wZf3cbslIZWWXILsbC1w+JdWfhc6fVSjaFa0d5uoDj7usnenqjcF7Sak42oNR9OqfGh0rTuJSnQ76f6uFIS/KeaZQ2ymc68v0I3rempdbrqDsyRQ5UhfqLRVm0kuLJwp9DaMYJ5ClDgADcoHByrHTidRqJbelGnGm+htnRWItHsOz6Ta8EMDC241DplPpaHX3A4sOKcVFc9BAV+zO9SV7Sn02lX+dtIiDKsiqRFZ+4SpRUCcjBIOAnGCMjgDHXM/cO4z3G7lrXyxxRURKvy2JSJgc0C49MvwY+FN3s+17Tea8eMd1pxNOBGuJFakyjQkuccYaSOFXpo2ljCNPviBdzVleq2zTtYtN7N1rojbalK+al21Jete4Hl7lK2uodqcFZSnaQlxKdqgAS/TqN7utlo0p7iezXuUfjkUP+VlV7fr2UwVsMtUbWOEmFRqlMlBJbiNUS4YsKWiRIeYiNs/MCSVoCS1JYMBYRsICQdqsnHIBP8OcZycHA9+mnVkEn00tzQwUhXlfCVRRiwpOugCUdr/dStyQPe5rO1kX+ZoyHH3b9PWJ1iTUgsOZ8em4kj7hSD7/AMP7etk8AAgJ8Dd759xn+3PWFIQVsOoGAVIUBnx498An+zrWLdJ73X1+nS3Qn69OZg5fyLS/5Z/19+mW1xPp1eeDyDIUeM+xBB/eCM45Htnrn27nKL/gr+KRp/crjSokPXfRybb8tvcUpk3DbKGEOgLyoLcCZGA2UpBTICkA+nk9C10RnIlYk+qBl1x05GcY/DgZxnbnOcAEnAJxnqFT4vdnv02z9De5Knktz9ANUqZUaxKjtOyZz1sXFMp1MnsMobKnEoZDSZRWG3UbWFBTaCQ6h6+E9+7XuelCakJr+sZOFMnnldU34xaNVfj52R7z8F74dA1JaOlqTJKCXIFoziKSuqPOK6o/WBdW+lW0JQpwkcgpLYJ+rBP0K2KWPpUcnAJxgK98AeKKjU+/bUrhci4NZ7dt2KtZ+tESkqkuIaDqV4WGy8CpIBLTjTYJSMFTYWavHkt3JUKe58zCFuPXK2skIKqWGQ6l8YwAdxUE7ykrBVsOQAXnfo71M9btU1ivL1g4m8e47UCalRTgOsU6QiHEUTvBOd63EApAQQlAykFJs74kIx7fOUSiV+5cj0qYWlMuW6cI44V/s49v+Z8czJfm2+6noMXDCMFfMqKLw1ZiIuLn+UE5VhWeTgEYPn35IH9Z/f1R0Oti44GAhKUZB3YG4jGCD7hROSrqjtXUuRxgXJaBS6yqyZZz4KMYD39LFqirX+HjrXdDodDrPWeh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Orbje/HOMZ9s+cfmPt1iPMpBTu+ockHkYPg8A/bHn79Z/VtxvfjnGM+2fP9X2HW8ZUguP8ve/r56O0tWUEOSRL8GS79zPl/l1qjHTkBOcHO4nBI44+x55HVjrYdYrjO1BO7P8AD7kD7+39vR8UiURPYCIHgavxjxE80pirRy09W8Sc4I48qt2/yP5fd6utL3DGMbQkec54I+3HjrJ9Vz+l/Yn/AHdYTScK8ZwEndnG3cknx75zj8vPWT1iRG/AlWXnz/v3rorVjHn4EoSwasz5tz5zT9qpdh0OvcHk/bz/AB686TUlWJZZ9y0s+pYn6ie3TZ0Oh1YL4yNoJHOc8H8sEE/xyOsxAGMg5B/LHjI9+j9Hbz1ZV+WJ+aWHjYp6bFtKx48vW0oSjSlX/p1hP/zP9L/w9WkHnH3/APfq/JTt2c5zu/8AD1jpISoEjIB5GcZH2z7dG6XLR1Ic/SxkcvEqiufF36X2t+melOmXpB9pfz5NdQrfG1tiRRdMu3PubgNiM9oHr5akerVUIyuNRNR1C13EqJcG1JqAjOpT6atyg40QgOIW2rdLlJkRWnyA367LMgJJ4Sl1tC9u4gBWzelJUMBR8JTyA7Tvi0Pj9xnabrxpA9HZkzLq07r6qCZIBbjXHRoprtDnIQ4tDQmRZ1MZMVTqVtNurLimHxuZMVnZ3qW1qr26abXDMbdjXNSaSmzrtYkuKcqDNas9Yt51FRCyhSKh6UBtUhgtssxkLQy16231Da/wRvzT157WRZqVKOa48WUX2SWNUzY2ZHL15wf2s/hbc6O5n8QaG0NP9p+ZzjysSMtK2MgBjUx8YTCFnTsiQASeAAST+Q5PSJaXsLpTl90ME/LNXvVKtD3YB9CstRppG3JICZL0jaQTuC8KO5IAWNb3pO7cFQCUJUT+I4yQQc4JwrJyOTkceek0ccTBvp+FHT6TE+lOS3SAlCS/EkBtBAA+r00AjJVnbhRwAEi2IxlyjRd/p7lmLPfFrWf4nC3zHQIzY3yL81ismL95Hs2fSnpQWJIaKtySQrHKfIxu9jwckj3GPPPjpBNa3/8AG4SgkcK3nOc7m0uA4APglKvJOQR4PS3OEtIBJClHgcYGce/Jz7+MZ8YHnpAdV1CVNhsYCCEKcUQMJ+vd9KRkYThXBKsjGMeCUUZTFNd8UClpKRFPHkp8Pvh8YftiznRLEYPKBgkK5yNNMr8vv7DTI+3JwMfExuZkhC/1x2rxoyHNyf2YimbGCgjKt53NJwN6AguJPkFJm00TvRTZt90t/Lpqb81SsLU76aYc9yIvJCWlKS8EFzkJKSQglSUlZgPtWXL02+KDoXUnpJEe+dFLppFMcA2etOoL0lwMqSFrTl4KCOVJLQcUCtah9Uv+lr7iaTW4Qw3U7Lvmv0pSAoqV8ime1MYJQRlO0SXUKSneFEJO4bEEUv8AFi/tO7u33WgSP5nxi7pD2rx469bv7Pu7ju/w825AD5REla+ZDxJeoGyKKYecUrD0lHxFYtX1j72OxHQymuBFC1Hn3TNv8tZ9ZWnVtVaDVakpJyf2b8pUUqZcJQ4GglaHAk7Jn64+0l5llpGxmOwhhppPKGW0YShCAfw7UNpRyokoCQCQM9RPW+RrP8UWpXCv5STTe3LtrokFqVBBRHi3TqXV3pT1OaUohSn4tKh5noSn9mpyNu2JdCRJjOrkUPh2Ysx43+MuSpq9vykCJDjPzZk+U4VH0oceLGcccWTtSAOckA19pVRycOfK2RiABWW2Ste74Xq9tlCIXqKPpAW0oJKApb6X7HIbS1t/dbrBWdLNOUtWUiLVtRNTKmxpZpLSHIyZUqdqTc0mNT49T2lxPydLsth1ysVWS5HkR30rixVGM6/HRLc72xaLU/QbRe17EQBNuZPzVXv243vTXUbnvesLbqNw1qe60ShRkTnnURWU/wD0ZlJbU6+vc4WQdq1sVHuP19vzvDuanPJsSyXa1pN26wJK21x3IVJrCol46iw/Uisu/NVJ2O/TKROaSuGpCXlthTjTqHJV2nErbRt8YJ5ABKiSVFWAAVEjkjg4yOjIyiTLYhICN4bsweBlJ9vLHGc0m3ms6/ED06chuKViKgkWxOTcZB7LaNhaUlKsjyMHyODxjj8uOtGQQSCMEcEHyD9j0YCQOT1j9Jtyx0pjEj645iVFEX1teeXJLT93y+xWlNBKXJWf6dafodDodDpT0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Okb1iociq2vHfjJSJdEqsSsx3MguIMZadwb+r+enKVDCipOQkZGCsnWrrEVMyBIZUnelTTgKc7c7kkecj92Dxk88A9ZJMboHxhv2/RPbo7QkEyLVSatvDSRcJeXJ1obOlrk29T3nkgrcbS4oZIw4pKVLzkZOVKPB4A45OSY7fi86K0rWnsL1yhO28u4bnse3H9RLMaiLbaqMGt2wgyHKjHW8y+0tmPT1SUSIym8yC6y2lbajvD8tP3HRDmxVr3NRpS22ASSUtoUpITk8DA44HISFE5JHW5vS2qdeVrXFaVWZL1Mum36zbdUbSoJU5SqxEMaY0kkpxuw2tXIKkt7QRkhSzbajHWhqQOLyGiSeQSm1BEf6eOmT4t7d/wAT7Dvtr+f5+jybs5XCRH0WicpAiFhySwOuVfta1TY1e0J09vRH0y5lBp8OoxnHkvvxptOgRYMhmQ6zujurLkZSiWnnHGlAoe2L27nBE5JJ9yT/AF9MJ7PbKqWh+pHdj2tzHUx5ei2t9bFKpVUkH5mNb1yNivQlIfCGw42qmy4MtCNhKVyVpWpQKSp96XdzrTKUlSnPT8c8OHAKRjcrkK4ISfp8c9dL/Du5/au26Mv3ox9Q+2C/NPktwZfHXi7+JXZHtHxd3Hbw0YQJTaYsakwkkm7AC44wXaGbdmVEpKkjOMEc/iHGce4I5GCPP38dOzhWi53Z9h2t3bbCclp1q0Mqx7pe2CpQUNPVZF72YzLq0m36YXFtuw21R4CFS3ESEIfS6wlRT6aHS0WMrPrA4yh5TeR7pT4yMnnzzwD7eDhdu23VaXonrjYWobUhSKZTKu1GuSKkqzULdqK2odXp6g2C6WJsUqae2gfRuAUkqBB+/hECXG5WQHC1+YKl7/mzFioyj+9ENfh3fS0Nzps4ga4Q1CNyBjJDz7Db7g0DIC+iv4fXddTe83tG0b13alQVXDXqCaBf9LjSEvP0DUK2Hf1Tc9Mn4CUtylzmjLLCQSwJAaO5KUureQ5HDiyvftzjI255AxxyPYDjnnPPsOdPsrqELsN+KBrr2ZLqSIvb33lQ5Hdl2vkONGkUy567DhuXXacGoNiLTVyXixKqghNtNuJfksMolT0vgs9F7LvqZBABAB4UDnkgnHkYI8HJwR7EE6bTVlqabIqovESs5buli5qmIFYfUS6sDebUQZnKLUn1OGgGyVq8m/b3MI9Xuh1Z9X9j6u3/AEc/523zj+Pj8urPzf8A1f8Ar/8AD0qIrdHhryeekepraelLhqS4yq6qTi08xE8j79D5T/rP9T/i6Hyn/Wf6n/F1mdAkAEk4A5JPgD7noc5fX+h/060/Zdv/AO7/APPP/wDW6xm4/prC9+cZ4248gjzuP3+3WT1h/N/9X/r/APD1mdCXL97/AE/0/Xo2OvHXVjPkxAfSxobryF+Hpiva84km/mgUl1bUJaUBQOUuCGkkEfThDiyg8+QCcBQ6dCY739HPA53J+w45Pt4+3HGRg9M97WXFJuS8W8nYuhsqKMnaVisQBuxkYOwFJI5I4/MPUJB8DHn3J8njz9hgfn5PnhF8E63LsWhUa/vNRfpaj9f9P5dTH8aJun8db/iGdPT+tBG4nmV+31b9/arakbloXnGzdxjzuGPOeMfuOesaWThsZ4+o49sjbg/wyf6z1kuOJbSFKBIJxxjOcE+5H26r6looj5qw/wB/x6qSMmLGSWFh7fX3r2ZX1UhW1QVjOM8ePII/P79bZl1BTt3J+n33DnJJ/hjrT9X2ck/iOE/zecHOfzwMHnx0Rq6ZOOWq8P3v/op/H7dA156WnICLG+VSGyVVhH3wNie5WXoyNS1oWFKwoc/zRkcEcYKR5Izn7cdbuNLBShJ+oHcdwA5/EfuPHgjAI8HnokMSQCoFPJxjnzjJP83rOYlltQCgPTJyrG7IOFD6fqIPkZBGOABjAIbNfZsiRxusjgXHsC+M/q/fw+9t3mqMZzBjJYy5TJSj6vys3INDbXERzGxUKM4EqxlO1flRPA2hWMHOPPBzn7dGmNIbUBkpBc5A3JIG3cQSSR5GCk4/39J5EdVvQ1xt+r3VkcKVwN23k/cH8sHnowRninY2MhX1/UDt2jBVxgknPIJ+nAOMHyY3vNrniuasftnPn7F/pjHmRQ1XjLU08EuBqCDmFSUcXUVh7Xd+Q6ruPDjCyeNwQAM5wSFoB9s4zuxxk8dJXPQQke+xZCiPGfHvgnJH2/f0qFaWVxAo4BOzOPHDix7k/b79EGWhBcA28EBRxkZVlQzwfcefuefPPTp2eTp6RfiE0o+0YmPH18vTN3jS09R5lkZU3atSVigvskXjYVjoslv1AElOQvwM4ztOfOR4I+/9/XgZDPhO3d/nZzj+JxjPWydYQkgn6irP3HjAHg4PH5Dq16Tf9H+1X+/qSR1SQIvF9q/9fb9M11D5sYalzgGpAq+MZSLFCM+WCpfTNuC0MPrFktkgLAyU8K/7PnPn+ac5wPByeB1un2PwfX/S/m/9n/O6xFNFKgkfVuBx4HI8jk+w56209WMgkP1+pgc+Q+n+vR0Z8JhMIzjlio0V/iMZg3Y4H7PWvbQpCSFJwpShzkEHghI4UcHO7yBn78HENPapT3e7D4qGuvc1JcTO0J7O7FqGhOl08Sj6cq7blgGoX1KZ2oZUmVTJbzbKpYWXJiErVKhwitDKHqd/vcuO0ztP1W1ghyoa7oepsXTqwaRJaDsqp37qFIFHtxVNZ/ahyXDfS56alxpMdpclDkposJWDqex7Q9/tP7G9LNO6u23Nvy76Y9qjqdVHFIbkVe+L5KLlqMioFjLL6mnagy04pIjrUYALgC3VIbqT46+IOMtfa6elyeCDZV1ALFyYZVi6c0hK4fwx+HJd37lp60tF1ZSnpsairphORKUctqB5vixMWB0cb4qbtw1+fVJCy56jjnpjKiENhwBCM7vOFc5yTtPJ8hEL9bCqYFbd4beS4kFecuJA2JJJOMnfzjcnAwpIOCo78oyFqURgqcOUjJAUApXBJ8fUofh4CUjJHPRYrURqTSpHqJztH0kpGQVKQjKSc+Mkj/OAIwUg9UfFZSZanlkMTGOVJWEvzeKf08+nvw1tf+Hdo2mhIY8NKNwjX5pVS3YyOERwilWVhp/edpvN1Y7PdRKTS1obuOi0NjUG1lYCXEXLpy+3dFKWxIC23ocpb1ODceZFUmRGedDrSVlCWnFT7btWYeuOhmmWp8EKDN0WhQpUkF1LxbrDFKhRK/GUr02Xd8etx56FF6Ow4oFK/TQFBIVu3yw/RIsR5lDzRYWytt1IW2pC0lSgQScgpXggjB8KBHmPX4faV6XVnuV7TZjbsMaG6rVS67PjzJkaUr/BlqYTdVBdiyGV7XoEMPPRkqUVOofLqXTuBQ3s+Yubow+xIGKZVXK15vJgp0nOWnrxnhJc8MuPK/CtPig5S5PJqwcyQLQUHB8ex9iP9/3Ht+7B6tkZBB9wR/X1kvnIQeeQTyCDzt8g4IP5EAj36x+toqg+/wD69LdOTKMZe/1/Rq/41fTUNQWFN1Zf0BJ9V1KgnGSpbiykYTkE7UeeTyB7YDPu6rTdjV3Q+/8ATOXHYlG8rardKhx3MbTVzT1Sac4hS/oaebeaAS6pSUJW4hRUQlY6elqanbVQ4kYIedyfPOQpPBP3Kj4/I8Y6b5fb5gRKXKGSiNVmlqIIzscwkFJGcktpP1AZG48ZACs7WctvvdHUiX8v1GbWDOrlnKyaQDLgoy4d37Xt+/di7rtNc9WrtjTjnxLUhE5GeV4DiLeKta65utJ7pqVV0xjRKi+BMc01vSxbojAhJbq9mRlxpIKkgEhBQHPTS2SlUxSA4fRKn5uf0eSgfqv4dNFlFDbQq+ruqUof5vpVSIdi/qV+ArzuwnaVKTsBbOYZO6OzovbvrzqjBjQvltOdT6BduolqL9RMam0e+I1GrVLrtMQosKaW/MckQJhcdk+utSFkMYGUz2fAzoZoXwz9AWA/8x+thd1yl70iyHlXBXnpoeLZcdKSpP0ZLiisNlwBG/YLB7h3ue97dKPFPRGEIpYnEjbJyZLAsao8r1w9+FnwVL4f/EDuGu6Xyb3+oBxfUWHMG6jm2/zcjJxplvbX6awvGcZ4zjyCPOD9/t1SUkAEjhWSD7HBwf6j5HnwfBHXnWyj/wCRR/pf95XVZTlwOVWqRc1j1J9f8uuwZPHNfb/PrW9DodDozrbodDqpKSshKRknOBkDwM++B4HRJv7UnT/SyiNXFqLd1FtGjyH0x406qS0gTH1EARoMSOl6bOkEqQQiIw8AFp3lHWFBq84x70tXX0vrWU4wLlIiHu9HTodJvamrWn9+2rW70si56VctsW4l9VarMCQTFpZjhRcYqLLjbc2FKSG3MsPRgokYTuIwTba1xUi76JEuCjS/mKZNBMeQGZLYWQTnDUpmLJCeDtUuOhKsHB4GReLy4vArWM0HjP8A16BqacvyzhKvPGRJPCYFyiNeaRqket30Oh0Os9bdDodD/n/n7/x6tqkJbzsBc4BGPpyRuyPqxz4xnAOeSMcmacCcqZEInmTTWGqjYytKa8Xb1tGMpflF6udD/Z56R6q6t5uatWXZ9n1y77ntiLR5l0QmZVMpMKgRq7FemUx2XVahJTGf+ajx3nkohiQWkoKZCmSUFaDXtrDr6kuxbPgaF2lUG94aqFYrFzXnXg0pe5LTlItuFNpr5bypBEmopLqty2UMqIS3rxTD9qqm/UHm/vefb9SydbU+SZisrrjYPjl7+bsCrz+j09D0F/dP9Z/3dD0F/dP9Z/3dRhVW2++e+S0uZr5e0alyclFH0k0JtqwIyFq+pbf8rbtuCoVTKicIUuhrO0KASFKJBcqfZHrte8QtXlees1zgkKMLVLuYuARCCQS21Q9PqJbaYsYY/wDoypyQkgbVcHO1y98FHtayaqNF+f15ZfTjBP8AxSTf923V19TFoAuFI+MPmshKlImQ4iSuXNhxEAFRXLlx4yQB7lT7jYH5ZPJwBkkZLtSv7TykRXJdT1CsSmMs59Q1S7aFTyCPIT81NbC1e+1JJGQCc8dRdR/hSQ50ZhdWa0WYkYwpusQdZdQJLJyclMuv6qGGrIAOP1dtczh3dtAG/pfwmbaZcDj+pVtUcIH0N2loTpchLSiP+jcumjXBIUlOCB8w8/uCjvQTk9ZjqRZkcSvHEQWwRzlDK1YHlEaxqdw3MoctPRSXsU197ZDGqKiiouRB6fbN7q+1+lkN1XuI0ahSQCXY51Ctp0t48DcioAqOPxAIBSeCPJBPnd8XZnTSfnO53RxAGN3/ANt8VZRnGf8A6MzKSvAIzhSQkgg+DhBaV8Na3aMjY5r5eYKVFQVF0r0CiYz4SoI02VtBTtKUhSUhSQUpIxg1jsEoDQShOtuoDqUgfV/ITRBvP+bt/wAGqtoA4GFHAxz0smS1wZQZ1YBQC1bcZiVxqQyReQVR02z1+8TX5WjCI0ixinkWpSlAaMU+fr0c3fiCdjjSkoPdZoyVq42i5HcjIyMgwQQCATuIA+5GRnYxu+fs3nqAjdzGjD/0lRK71psTaAcHIqPyZySPb8vcgEvQ+xnTuLgTLvTVPO2RWtJtIJ0oHg5W/Gs6nFwk5yCgYP1c8jrfR+0awqYpwIp2mNzNkJCGbm0K0vfipTle9Py7NASpe9KiHP2zIBUS3gjJRzhwk2cTFGRjgclshyZSvfAlJvn/ABCSiGlBtzJ0woV/eAipZYVRdvv0c6H3WdsNzShBoXcRonVJZTu+Wjaj22tzaSQMpMwfiIISPc/T+IgFXqfctuVtSxbtyWtXoyQFF2j3BS6oo+FKJYgSJKkoCfq3lWNgz9ATkMyvXsz03nocnQe3Ts4r5wpT9LqujkO0vVwFKLqKvQzJeQ6eAk7WcLA2jlO1uNQ7MtHqFVW6ndvZHCs1Mcf/AIW6J6xT7eS16hSEvOxxKp8qLERvCS/IQpbWSkJXtz1iJdUF/q+aKataF8ZafF9L9tuO5Q/+1acP0oCyqY0EVcFyxb4Asl1fUl1A8EBQBxnHKkA8+2QQAQffg89c4th26O17vr7me12SzBoeneo1Rj9y+i6WWRl6HqCyDqHBQwwGocePSKwzRpTTDQ+YSqpLckBttyODJx2p3QGO4zWnQa2rpvmtWDp5p5pPcFP/AJe1r+U9Wg3Nd8yoSZ6EVVXpuy0GJFpsp1chKXXnHltlwpbGG/8Axg9K6/Q7f0X719OY6hevateRk3axAbdM+5tGrqaNOvK2ipJKGW22/lJSVghYbZWhO1LrjzMv+Gu4m23u2lO5fmjKRIW5SLKowRsurTILyCmPx/7GfEfwNuYfINSe3hObMH+7LFwZbpxyw6YqNkTtIjkrSpKt3qBZxgDb6YSACSrkqJAPjbnP1DnpK71Wul1S1auAFrTXjCmABI9WNPjSYy0LcSSkD1HUqKVBSRhSdoUMg2WveVDvG3qNdVuSmp9Gr1Gp9VpkxrapLkSewmSwr8X0gtrGEqSlW4pC0j8IJGqZLVttqSSHY8tqW04ByhbCgv6fqSDkkgFQOOD5GD0Rpat6RPyLhou4DJFsaMVR6jKez5F7vSdHeau3NNra1E5X5ZRPrlSEnOBCn3D8+8HcLQkFPJQAeCFHIIUSeMcjz+856btqor/5vFAVgpaUSnweVDaoH8sEce5GccdKraNdFYosKQSVOhptDxVtyVJSNygEnBKsglWSnJxgHICP6lZXdCkEggRUJSD4GW1Kz4/pHOeT4+w6IXjJWqleRsxU3yv+H64V+mHTb4hprFgW1aLcYyZeW6wpJBbJePEeHcQ4q2daezvVpav8VsvWml2rP3IIUzCu+NPhuAOftOHChK0o9EnEQNpWkryiZ5p6m2vf17JSVCHcVBTeRkHP1CkR4yK66GwkJWExwJZKS2kFBQEryVpil7pbPF46G3e0w2XKxbztHvK3ynBUzWbSqcetxXdpKdwWYxjE7v2ZkB4pc9INqXDuH1/qNydl9m6q2G761+6z6d0HSixYXzCTVZF5ajQKPT63HRDQELbeclw3X25MkwGWW5SEyJEZLiFv1F8Z6UYfM3AMfnRkvqJeCImb41IfYxV3Gjr03/sy/EW30/hCPbtx51I6XypklZEXXJVp+Y4IyW/3pFVFenQ/C5os249OdYO52agN1TXLVm46nCWylQYk2pb8n9VUH5NAKEJb+XDaXm1NkLWy2SpBQUrcN3BVWvaqV20O0Wymwxdur5/WWptTTNXGGn+htGnNR73ry3zGcYlTKol9FMpcJwxXHHk+slS/UaZXuLXesXsj7N7dhVyCiJQNGtOYs6qw4B2yqlUnKRTZrNPiNIS4t2oz5cpUVDMVp912S4VMwytQZJ77JNG7npNvXB3C6sqdj6za7Ih1hURKHEHTPTopnPWZppTm/WfTHdo9MqTr9TKXHMSZwaSrY02BVrIiRU5A+qrEtBPSe+Cz1h7UA9Qz1mBDS0bXgkZNSPVFbG/MuLhbBlVgI8yyLXt3Tq0aBY1oU5FKti16RTqFQKQztREptLpkJqJGjsoQEg4DZWtZAU4pRWpWTgGNp9bZSAcpTn6eB5z74J8nP9nWK2goTtKivGBk+cAYHuR+ZxjP8B1X0XL1JbdVxxXGvpX5UbRHD4THW4WLKNSlmQpLNV5MXXuV1e+Ye/p/6qf/AC9Weh0OtQDwB+gH+XW9B4A6HQ6HQ6z0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh1Sv8Cv+yr+49VdW3f8AJq/h/wB4dZj5P1P8+tolyifWQf16SaM/+q7vehsDDMxPqKbyPxrbZcJTkE49RZz9Scg4KsHpRUH1E4WeEKSokk5Iyd2Tyfw5xjHt0nV7Rkw6rRau0tTTqXktu7Sr9ohRBGQDznKRjgADnnlKlNrDjTa+MONpX+WFpB+545+5/eelEdaLKowB02LyLpRELbLoHGMqnt0460SejKEiLHWJEDHoiRiVRl8vn9fDXXLB8Qqy09t/xUrC1Np778eze7/TV6n3BFVMDjD982u0uDEbjRyjdH3wY7TS1Be55L7YUU/KEPmi6Jsym1Gl1aMrbEUhECYzs3BLm39ivduVkrBdSpHppCC2crOQjpyHx99LZtQ7ctIO5CgOMU+udsGs1uXS7WS8IkqNbVwuGmVWGy+6iS220VMsuvOJiPOBKAw2Wy8Hmm9x5cO76LDLLvq0m5rWTPZdITkx6m005T392QMocZfVhS0pKlE52jd1e/wZ3A1djHTI5lSC5zXnPKinDho8UdeVv9o34Qn2f4o3e+dCOlG5SCsSi8BlGQ4YK0RJSSbkR62NPmIU2HvUBD+HAOQMYV9W7GwBWcjAGQE+CdornyVR3oMlWERjJQzIcKh+zSsLG7AIJ5VjBOCkkkYOUkO1JbzjMimSklEmguqpbgUo73EsHDUnaSkqTIZKFFWwIKkgowMDpQI8Yyoctt0bmvRcU2jbklaQo8Y99xGAQrkD6cYzOdfTjq6MmcUlHjhfMuMUTh/4qavA9c0bLd/KnBhpladyj+ZoJeJ03lcSKyxOIOHw9yP671z7EtLu6axFvv8Ac/8ADPvejajUybEddFarmlFPkqXVowdWJlRl0p5lhv16W63UmHWQqPgk+sjoz7eNb7F7mdEtKNf9PHWX7Y1VsG37xpym30uLY/W8da5ER5pKiphbEhDqUofbadUgpWptJUR1zj/Dj1ahWTq8qw72WJemutFEq2nF30aUCYMin1hhyCyxKG5o+kkyH/LjTYJSFqwdpdH8Jyt1ntO7n+7j4T941pyXR9FK8/rb23LmFcdtWjOoe+rTqBADoSlbVv1RYcWVJRKfdntKWjAUlln0pOlrJIlEkSfNAcYiIefNeqvrHDRau33zv9pparFjJeCciVMDB+WPKzNxAcNXYz4SV5WEYxs98+dwSfGOMfvOesbrcdDpyJ0BXj7/APp01bvT1I6nOuZqSAShJN8YcS1qMT1Vn3z50/Q6zBEOOXOffCcjP79wz+/A/d1bcjqQMpO8AEqOAnAHPuo59/H2/PrclFxf+fWkttrxGTptGWmK/wAhX9cY8uDrH6zIn/Sf6H/i6xQkkKUBwnG45HGTgfmcn7dXGnfS3fTu3Y98Yxn8j9+hIsQ8/wD0esbecYa0ZSaicraWrihgF8p7dME7Wv8A8Jrw/wD8A1/+m6f0+JwAoIJwOOcZxyPYdMd7XOLmu7330Br+GK3C/r/D+Xn8uny9MfwR/wDceg//AJk/6cT/ADHqxvxs1v2f483ywJ89sw4qxxOXIbBfB4EafI9a/odZnpN/0f7Vf7+qwAkYAwB/7+/Uz+Yew/5f9eqdlrRAoZKWnjjlKWnOBxZSZuwwOshxva2Oc7M+3ncofnxj+OerjjmzHGc598eMfkfv1h9ZFlT4Bv637fw9/wCfWYstTjL8oNniXLyP0Siz+N+3Q6z4yQoISfB3f+LrA62EX/o/9P8A8XWms1pqeQX+j0p0tZ0dSKA/MTSfZCfiQ/UkDkbLMKIY4Dq3Noc/yid24/Tgg79v4cAYAwRj2BzknBriLytJx+NKh58Y5z45/D+Xn8uijT/8or+H/dX0boYLig5jASDn35OUge3nk5x7Y9+ozv6u+IH2wC5APovj6VXv1LNhqM9KbOWZaT6a88dSUYt+3HBV+rlbddXqqvfF8Y2pSjznO0K58DGc+Of39ESV/lE/9gf95XR6qo2RwnOd7Ycz4x7Y98+fPHjx0RZX+UT/ANgf95XWe218qVeOcq/lD/W+tO5kzSGflY/T2k/THhOtN0Oh0OpF1B9aJHW1YxKjHV1Iha0E0C21weVX69Z5OAT9gT/UM9axcpTigA3nBwk5253fhz+LBO38IJPBwFY6uvTUoz6Q9TCc5wrzzwEnaSeBj75xkY5S7UzVSgaS6eX3qhdeY1rae2tWbuqkrcUFIo8VyQlCM+tulSNo9FpKSCULG1XG5t3Ws7Da6m5nGmNcb802InkayX71ZV9PMND9r1IaUZMoySMoxFB5XbxRfAUXXmx6iW7h6LF70fie9tvabTFLuLSftNt4a86xxhJSaAi55j6ZFiUyZFejPxZ1QktONPuRJjqmqeZ7ahEqIbO6VHXqoPIdbitFLTLSAy0y0CgMtNhDaGdv4g0hppLaN6lqxxxgEsC+CjpLW16Na6d6GodtO0jU7vG1bujUCS/VobkSsztOklhnT0uthamI1PbpCyIcNhbjbW1xKRG9Pa463UKqP1qtyll1TkVpxTZBwohaVLCjyQMKUUJO0HBClEKGB1zn8T9zdz3OaxCMvC0te0eUZUUOA5W8sDd9n/gD8LamluNPecitE05S0WDLkzJcYqvpAGaoxQjmixO949MIxyfxHwM5zkDknjjk8fn1iVNfqw3kbSMpyCCDynKvB2/0fv1kKGFED2JH9R68OcHAyccDxk/bPUcAaT62P3azTj6YSvqddvw0tOJEjGon5S0qwPr4oD+Hm89aqkMmPBQ3g5QpYwSCfowgDI45CBk+Mkn8hH7rYuJor3sduWtkiMmnWzrXTZ3bPfT0ZoLW9UH5CqvpvUqmtJW3hyf/APIXjuS4tw05TSXdjyHJC2SQsAHAOcj2PBPP356bH3q6TVHWPtt1FoFu0+JLvS2aS5qDYch9KEyId42OTcNDMKSW1PRnZcuGmC78q5HkvR5DiG5LXOcyix41xspXwf8ANWcDSBkItNhgbuEdMJU1DJTSEkjdtCiGa914vgdeve5twgp4Khk43JJxuGcZGUkZGRnjqx0i/bBrHD1/7f8AS3V2M+H5F6WxCqFabW0I8il3My2mFdFGkQypTsF2BX409JivBC0traUlDbakp6Wx3/KK/h/3R1qNPGvAP6LSn38+cfx89aaOpy9JEALKV98+Vu196T3Om66uttiTFUhAQoJ+rHJUckZPPnBGeSMgkfiPTZL7afkW9UFMlXqRIqpyShRSsiGPUKE7QSdzaD4ByEkKyFHp0+rCd7iSE42tncrOc87kp2k+/prOR9+cYALeqlHclRH2GmUPKfYeYLa1ltK0uoUgpKktuK53EABJ8ke/REwZCo3zif8ALS48i1dU+4ZSupNtyoabIWM4jS1fpBzbaq5zmT5ROovviN6eW1qR2a3pXKgyhup23a02+6FUGQlMiJVKXFfWuKpzCVBibICWJjZ3B9KSHkLUSBKt8Ju3IVvfD07XIUFJEZenEKVjwEGS/KCmx9RUQrBXuJJyCPfPUXne/Uo9O7CO4dRSoyrdtC5Lc9M4AMqfW0oYioHJKW25jm1aPqU39H1BSMS4fDZpTlv9h/a/TXCl3bpFbLqXUnG4TW5Ukgp5wWy4U+Bu5IOMdPelr3tTRDKASMPmN8m6aD2sWrcR6qzuPbNrH4rludvommzgyWIFIWyE45ZByTyUIHl5yhgkYx150Oh0zSRlJChVDGBbrAGPGAPoHjqSdDqz66PsrPPkDGM8ZIJPj2wcHjJHPV7rDUvcCCkeSUkE8ZOTn2Of4Y9h1tCrbiSMeWR7/wDKxc++fHjNdG6cSS2KFZEKu/5/9B96HL9csD1kpDiG0qdkK4wzFQMvP5yAPTAOSSBgn2z0iNmUPT24JM7uD1gaoLFIqdXND0yfrkSLUKBQrYg1Gqwoj8Cjz2XGnKxVZaJEqZMdCltJTDSG1hSelPrMJNQpVTp6pkmD+tKTUad88256UeAJcR+OZs94nLMKOFhbrycFshBJSAN2NodC0suXt+oOjep823H3tPn1WvUWKpLjR2qm7QJ7Eul3PQps5xtMlqppUpyXLaZkNPS97gU2Uhp5Tt+27vdzPkafIkUINrFoa9JV3ass5MIdVZ+IXxJp9k0ZwdxHSSKRGVMk4r7lvKigLMDmZ1Hbr/20XBptrdcytHabIpulOv8AbVNkVOPSZCYVqrqNq1cVuqlNR2PGJHrcYlVMjuRHiyAtAXKHpoRIXYdDataz6FQgwGX4NNiNyQknaXUpcVgZ3DchClpWMpysBRAzuXi6x1OkauVmJR6JUam3p9p/KVUor8BAhVW57noSREiKpaVuKWmj0WOEwnlLDorZUy6j5FqOkPJ3Ur3uOx2TWbpkzL6tdstNy7gjU6DFuu2qWwHSqVc0RlDUi5W2EulcitBRnNIZcXNbd9SOjp31vhbuGjpmtPTqKr+VAoj9C4xw05oYx9SSkVH8H/ivsdXupp7vfujDkROUjUNS2pYZFZqvJnnR6WS+gEDk5888D348ccDj8+vekO081lpd+XncdoUthh0UOlU2vRqvGmevFrdFqjjzbEuK0WWlMvRFtpamxvUfcbW+2VBshaELj0w62jPQnwnXKhx7X5H6I4fb6KddOdu7jte6baG72kzU0Z+JHi6tB+1/bodY7iFrwrbg4AKcg+6uc5H5cY9/PnF5atqSrGcY48eSB+f36wHpIYjrUsfQhK1LUDyEJSpxRwSBwEnJJA25z9+tYD5PqH/X3/T7/R6cOUtPT1NYB4C19QFTz+l498eEWtaQW+1XtZO4/UAOIlUmtX/blhsRl5LL0Oz7cEKoNO7VAuLjTZLBZClKaBSoLS4D07huJFo/ptUaJCpiQjav5OBCj7wMgKUWmUKWo7cKJJzkH2PTUuyBxNd0Ok3a8lSv5cawaxXG0sqUAqO3d8mjw1DBTvIj0lDZWQMlJyM7su5mp2+nznO/+zZ1mcdWCPBIsYspLD6eQG7ZLFsxVljfTboamnu4i5BlCs2Mas5Z8kRkxl6uTkqusyNMlFO55xKwQQnCdp2gkEKAwMZxgAgY8j70yJKQQVA/XnwB/N2/dX+/rUvyCrbvA43Y2j92c5V+7H8erKXUqISArJz5AxwM/foo+axST6ZchAtIvtzu0+uPFhR4Vx2sRNQgRK/dwUfe/asvvn7dbBcrKQEAhRHJOPpOfHIIVkA88cEHzkDHU64oKClEhWMjjHHjAxx+eMZ989W+h1rGEY+A+tuX+b+n+vnowiHg6HVz1Py/t/8ATrXKWVK3AkfYZPHGDjx59+qlEltvJJzvzyecKGM/fHt0qhLU0vyT4865emL4FPI+LfFf9D/kvptDk048NL9c+P59VvkZSMjIzke4zjGf39BlfBClAAYwDgeSSceP/TrH6HWOJx4/1/j0d8s4EF8e9Z83j6fT9Oq1LCvCQkccD7jdzwB/S+3sOijfzLQtaqeuA60qOttbZBG9LgwpJ5xhTYWDkjg8c46NfRXvv/8ABSb/AA/vX/z/AA/d1iRXE8Cgh7n6/oV1pqxuMYkmJKURrL5Ebb8cfHv79MX7NUw5HdN30V+NFaDdNuXRu0o8lBSVKaoNnyJb8fKlDlCVR/xI3lexIUU4zIJeNEouots3Tp/csJqXbt7W7XLYrTT43suU2twX4Du9gutJKkF4PZ3gZbSDgcdRrfDlf/Wdz97lzElS6t3Q12mNuKOFGNb1HhwIaCnP0FiI4yj95BIySBJoUgkE5yM4IOCMjBweRnHgkHH26N0NWelM1DCVXjIvLLV03Q3ga9ste67Pte5bXdbTd6cdTbbnbz0J6cjPJpGiosbsl5ZX9CuucXtQh13Qq+db+x29pTr1x9vdyzZOlcyohS5t5aEVur1SdblUbkgpiuRbfWt2kwxGXOWqI600pbZYwtzepw+atp/ASkghA3KBB9VJTtP35xnAUeMYBJHVv4r2ltW05qulHxArEjOPVjQqqtWpqxRac3JXOufRW8FJolWipUk+m5/J+S+1Uh6jjCQ2XGS4lLjjzZfqFy02+LBh3FRpKJVJq0CnVamyGXy41JhVCP8AMMOtuNkEpUhe9J2jclaF4G7q/Phzv37XsNtpV/fQjTDzdRIsuUquwlUWWLuTXjyb/Hj4Al8J/E2746co6bqJHUjBjHViMZDyXicSXHw8uTXt0UdJKm8DLpjqfSbjL9b1lLHprQ9uwnlQ53A8kDYUpH1DGatQHkLrAXuQE+nszvBB2kAHPA+pICwPsRjI5JCtitOU6rstgemJGWFpBUG1jI3biFcLC/rBJKckkJUU7Vbq7ZIlTi6gn0ylraMjztWFHAUpOSRjg+AAeR1IZTHT5VUoOIq4wx80ElifQoKC4tUjo1LSASp0tFVJYri0wieW8K+DohVeGzUKc/EktB6PIafjSGyCUKjuow4lYTglCiRnJx4AIycoP8NrSa8Nde5KFa12yFVvt/7JLkv6t2e24pEmnVa9r+lOLpLTEZ9XyqG7XdMwIU6xUHFB9T+I/qOBGJ3W6sPaQ6R1et0GK/VL9ubbYmn1FjqS4arctzyWIKGvldjpdXDZ/wAfUtTamo8SNMcdSUbsSb6MWjJ+HL2AWPptSGo9Y7qdYHJESz6M7OSitXTq9qEuZIkTas2yzIW5bdoR58GVGlrjIagrcnvvy0uRtq63+NJE9rpwHMTVUxm2Ppobuwsq0bC067T/ALMm23su4T1NPSlq6LDQZ2yIRix3AeyNinirjX6qjetKf7uO7Cl6StIbm9vnaxd9t37qs+gOrpOo2tEFlMO09M3G0pW1VaHZTDs6fXUJfdhOzXaE4pDhSktytCMuNhC3Avg4AJzknJKgf6GRHZP82Kww3/0eA3ftR7f6Z2yaLW7pzFliu3DNmT721Duh5lAeujUa6PRl3PW3nm3VIf3PtsQ4uzcGIcOK2XHXEKdU4xxZcWpZGCo+P3DA59zgcn3PsOqhZSHjxAQVxbfFprJWPGLHBfXfm005gamol5KjfEpSgceKMY9P1yhbinMFRzgY+3vnOBxnwOAMgDPjPVHQ6HWADAUfQ6XdXo/+WR/pf91XVcr/ACif+wP+8rq00ra4lWM4zx48pI/P79XZX+UT/wBgf95XRbFNSE69MoyiNmWNMivOCcc1TeLprX97/wCH/X/16xuh0Oh0Z1t0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0Oh0OgQCCD4Iwf3HodY7/APM/0v8Aw9ZC0Lr79bQjykRurvP0oX7fToi3xHQ7Ry6U/tWHUqacHJQo8g48EDGeQcYyCOs225jz1Ep7juFLMdIKjklW36c+c+3uSfzxjrdVOK3IgSWnEBxKml/SfuEK5HPn7dEKy31pamU9xxJVFkOhLWU7m07yEBIScbSkZwACMAkDyVbpulPjqRBQx54+pwsXismQl3gkfWnjR46mmlcql7nigbM2/T7eAzalHePpZE1x7WtdNJJi4wYvjTa4KbFjSo6ZLZrDHoTqPLJcfZQhUSVFUhBWFJBl+opK0slp3mQ7ErmduHt3tyny3Xf5R6bTJmnVaD7fpOp/k4WosN1tsrK/QUVPKGCUJLgQl1zaHFdf60pWhKVISscpwpIVkg5GAQf6XBHOc/Ydch8W0EdvPxIe8rt4jxGIFiX7PY1RsemokpDDwqQdenSocdLDXy/ruSkIeiLlznAYiHlu+m56XVj/AAP3A0t3Db8R4jl5ZGkL9gqXkfU4spOKv7WPw9ud12WXdNucpaHzYyixtjydBhKUvVKRIGgj6azL10LhWml0S6Il2EYp1Yej0erOJI2JfdR+xmqAyU4KW0rOQ35ICeAVCiyURlSIoCVqbUopwCUqZdShaFBYUMpWFDBySBykckqoqlvIqtCnUx0KLTyEtNgEbmX2lJciutEr+lxL0fY4tRKVMFxChhQJIlqy5MqE+1L3pqdNmKpUgBSwsmKCyPp+nclfppKSEBGAkI8dXJPVjMryQ9MolthxTNmTxZf5vtK/Nvb6fCMZ6kRkFSjeQtwPIG84B4q+LQONs1J+n3EX4DphP02azOhKR9S23GXQ4ot8p43EkIJHKihOcjMi3xI7wuig2Z2RfGO0cDj92dvVeommvcqxT2GWZtf0sqToj1lis/IRo6hCjgOSnJbwitQY7KW2mVtS33WYzX6/RaLNZkVaowKcHQ42XHpUKO88pAbUsIZffjqfcaS/HUr01b0oda3DC0Eyc9j+vmiOptg65dlur100lnTruAsqoUBmfWS2ulUq6qjHdYYqM1GWzFjy3n2Hg6FPIS4w0XfUaCcMe+WOrp6sDklW0iieo4xJSajWB9co+WUuPU/+GN+7jVjspUQY+iU/BMhyOVrEBsvFRkjUFTo20/vehalWLZeodrSmajbN82pRrsodTiPplQpcKrxW31txpKEoDqoD7ioMnchpxMllwKZbxtBvyM4zz5x74OcH+OD/AFHqEP4KuqdSsrS/Vf4f+oNcFY1D7Lb4r9v2/PecdJubRyp1V5207jgB5ba3WYMJuFDlGIw3AdkuJVFjsKU80Zv22ysZHCeeTycnnGM59/3AcDwB0r2u4+dprJOcVJfzxf8AzUnKgiSajYX1KN1pR0ZnHEUvyNIomGX0Hy3d+5VHVt1sOJ2k45BB84I/LIzwSP456vpQVDIKP9JxCT/UpQPXm0/dP/2aP/N0qsvyWf08V/mfz6TSiSiki4yEzi/Zp+1njIp711jNRFBYWlW7b5BSBwQR7r+2cHnB8j26tfKf9Z/qf8XW3YUMYKchPnk85JPtjGP4/wCzoLaCzkHB9+M58Ae4xjHWPmyJI48Zo+//AF+nv7+zXudsRuWlUKoYykUl4SU3DnIoJVeoqUdHbEf/ALarmH3oMI/1VynD/b0+TodDpq+Cf/uHQ/8A0mr/APN1Yn4+/wD8dbn/APRQ/wD8el1il3Kkq2/h3cZ85GPtxjrK6HQ6mMwKr7/7/q9UtrRI8KKxI8vix9/uvWv6HQ6HRvSrodbRr/KJ/j/3T0Oh0Tr/AJH/AMM/8uttL/7Ro/8Ah1/6aUk/k9b+AB5xzvUM++AgYH8Mn+s9HOGhKWG1AYKk/VycH6j7Zx/Zxz9z0Oh1GO4fu/qf5PUr2f8A3Uf/AARP4MpKfxQf1B6sVMZaYA94TA/rKuiTLSSttWeACAP3bs/uH15/fnjodDrfty/LP1f6xp6Ud4/7sfe/9YH+S9a5j+f/AKP/AIuqWk7krTnGdvPnwSfy+3Q6HT3JR1k8jpp+pXUe1tLT1JakpxtgBFuRRqRIzMINxxm68lPWscBCyCcnjnGM8D2HULvxlrlui5KH2v8AZvbFbk2uO8bVuk2hcNztFSo8K2KDVw/W6XLjNLS9IarbC2Yfp7X2UJU5IcbLjLTax0Omb4rU7U01bn+X/r0f8OQjPeaTIH/uz7VIVKMUsT2xWOpr10SBpfo7RrCtGMxTqNZ9qUW3aU0whTKGocOmx2WC23vc9P8AGSpvcsA5IWc7Qx6epRcUpSipTi1lROM8HOMgAkEncQSRkAjGOh0OuY+6rLe6StsoTt+tIl/o/wDTx16O/gpo6UdjuJR04jw02w94xjGP8o4Pp1pHQA4rH3B/iQCf7T1b6HQ6Kj4P0P8ALroaH5Y/+E/yOraW0pUVD+A544wffnP5+Oq3G0uNhtYCmX/mWJLZ8PRflHnXmfcD1UNKbzg8LPtnodDrKvm82Gc+51rrrKDyV8Gfp9P9++fPUaHYGzI0q1a7wu1diSuda+lOqELUCynuEM023NY4sivt26hhCWWm3qZUqfUZEp1mOlEl6oKd9ZwBDbEnD+PpPvz7e3Hv+XsPzPj3HQ6JgrIXLcv9ek2lEhOMYlRFAy4b+tr/AB6QnVBH0POZ/wCjKcfYhDhz+eQoj8se+eG7OYUWc52qPIBAOCU5wcEA498EA+x6HQ6xqAThR/if4qrf1z9f08dS3QX5el9j/KJ1FR8RJS4naj3aUhopEWMbUktDBV9dVk0ZhwrQokL9NQ3DcSVAkE8qCpxex+ns0ns37aaaykZi6O2IFujIDpforclP0knGxL2088nOAABkdDp00QKr2Q8vgr/d+cH06r7fN/ELf/ul/wDLH/q/zenOrHIP5Y/q/wDfq30Oh0h3QGvqV9Yv8WMV/q9OPQ6w0e/8P9vQ6HRux/7+P8f6QnXR2l+XU/8Ah/zekD1Eq9duq76FpRS5SKNBqTjEy5Jralh6fRt7inKTHWhtS0tTFMBma2sJQ9FddRv3KUVKkLSpFNisRWqfAcYppFJih2OFqRGilbbIOeCWyCUk/UAogkjCeh0OrV+DtHTmDKEVZacbT2lG5H2tDx49vL1wP+P/AHLfR7nrQNzq8Q16ionp09Nj5Hwq/f3vHVE95MKnSJCGWwYUKRIYSgBoteg24sNtlAG1Cw2lC0kKCkDaRt46xKRVw9bjFwRmUsPvRUOymylJD5METMKUnBwSlKTgJwUhSSMdDodTfvcYx7dr1EMR9jFzjFo9rFMV5+vXOPwpqak+66XKcpXMu5OaZf1wF+ax4x0l2l9m0ayNaLrodv02n0+gXXY1LvenJjNFFRpUmdVFy6xADpGEQZE5v5xiOy8WUOyHwW0oDaenKnGTjx7ZGDj8xk4/dk/v6HQ6517mrvtQvDGMv4tX+n6GPt16dfhd/wDwttvtOQfp5/zV/VeqHDhCj+WP6+P9vRSuuWYNt16YlO5UOiViYlIO0lUWnSXkpzg4ypI5wQPcHx0Oh0Ro+36v9DqxtbGz3Ce5X8HiP9F+/SOdmNKVbvaN2/QW3UvKdsyTcD75SQXJdxXFV6nJJSfcSXXFk5G4r8YHLlnFKUolatyuMn28ewycDOcDwOh0Ole6iG20aKqUS/euC+ffOc56ZuzZ0pyauwsA/en7FHsfyPp1hLd3ApCcAnyTzgHPj2Pj3P8At6s9DodJADx1J4RIxKKvL58ofXqsOLSMA4A/Ifv9x14palY3HOM44A8/uA+3Q6HQo80X9a6zxjd8S/rRefOeqeh0Oh1nrPQ6tvOek067jPptrcx99iSrH8cY6HQ6HWTyfqf59W4r/wAwwh3GNw5B+48+Pz/r84GcAt38SLVfx7vsJP8A2VuKSofxSojPkZyCDz0Oh1h86f3YL/EF603BxWsVJqvb0y6j++Fy2mZp53I1t1CRJqveDrgH9vA/xCdSY0dIwAdrcX0WUgqPDecAqUVSZra2pKt2cY4xjyQPufv0Oh0VFRC8Wf59JYTlcC8PCzFZC6Pa7fFdF+7bXod+WfctjXTAaqtsXZRahQa/TXioIm0ycyWnWSRkBW9xK0qx9JTnCvwnlo7bZNyaY6gd1HZ3WaoLjo3a/erNvWVcTinHJa7MuByq1u37feLzbS/StiPKXT4eEpT6H0fUE5UOh1Y/wPOUtzxVSMokT6C+PuHsN17V1yF/ak2m21u3c9XR05yITqSZ/wC6jLyUtyBb8+/S3VJhDSBJR9LrLratwyCoqVnk5IGCfOCSAB+EAdbKZJXKjtSFcFTbakjABALalDOOCcqJPtkkDCcADodW5tAJwKxHV1Yl5SJqUFttBjz15u6YGppgUPFQwP8AAx/TpAezDRql93XxM0QL5W0jTvs9tVF+0CzngZ7NauisRX2I1TX6rKIrb0ZJWHfmGH0qRGjpjpjqky3OpiNEpsjuZ7yu4rXW724qqF2zVNjQLRS1lMj5yh1ms01Eu+r+lziHwmo1SEqDTaSw04+IbQluOEqWA4Oh1V/xcvztxC1j6cOfM5+7n2Pf269Ov7Pu02227HsZaGjDSlqVzYWMuMCrz7cpfrefBUl7HhQ9htwPYefA9v4dVNK3KWrGM7ePPgEfl9uh0Oqul+//APD/AKf9OuqJgfOoquAV90X+aX1e6HQ6HRfRHQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HQ6HWYYhwcOc+2U4GfzO44/fg/u6w+h0OitKUpDybp+gf5B1pBW7fp/r1huN7MZO7dn2x4x+ZznPSaQ47UK5p5aTj10KC8Ejw+UgnJOcYyPHASP5oPQ6HSiQS0pLlI2PhPUHk/34+h077OcniLiYkjFOU8f6mejkhRLrvttDYBHnwpWf35J8fl1zO/GKt+n6ad8PYpr7Q0elXtSqbX9MLijNZbEuA3OpbbMx9YOHH4qA8iMU+ntTIc3JyEbB0Opt8KKd50QwOnGz60Qf8APrnf+0Pn4L7tefVKvqVPRiU+TDX/ANDo61C4IlLbkiUzJWlOBmN6RUAAonAcWgbuMg5AHjB89MRr2vSKtdlz0S1pNXsqk09tSrkrjdAodx3PKCFJZdboTVRqcWn02U8PqRWS8J0YjDTZ3bkjodXVPUnBkRkxzIxXtae3kYmfNFXWOvLra7bQ1NSMZ6ZISS2vnmPm78yWvFt+a6SS9e6/tm0HhO3adPNT9SbndbSldXvj+TsyS8sKSAt1TlyzUA+q+pY2NBLZK1JQVKVuImmXxN7SvG9LfRdD2oWmOncqq06LNp+lOmNi1u6G4Lz5clrgza7qda0RmekBpUZ5K2klwueoAACsdDpp7lJZ6QtjEa/+KR/DB7ff6vU3+FNhs3f6c3b6fJZW05qA+Lqr9qrz9XqUe/fjidmml3eH24dz2hVid0aanCobmhvcRCvq0tJ4M7VixIkZ6LSa4JFB1aqkafeUKZTIuX680EuRiFKqSlM/Lv8ASDo98WSydadFbL1vsbSK8Rat906dU6LTLqum37duGJHhVifS/SqjNNoV8U4PuKhl4qiVJ5AS4EcqR6ih0Oi9OUo0RWPLDxeNh8uVWUmVceffHU63Gz2vz4R+RBCHMEX1LIXz7hVePt1fqvxVJFOiOyWe3dUxbQWoJe1zYicAAcLb0Hl4JJHlsjk5zgAo458aG6G1jZ2nUh76ikep3NOM7gArBWprtbU5+FIVgLP14BJA3EdDpHq62tB9OrqGNPzOT5JLhXCxGvH82y9xttuQ0k0YCR1G+Jdx8K+VK8ufP1bx5PxltSZUd5+kdntjuCNHcfd/WXdlcEcq2BQKG0xe02SBuCcleUFJAIBJyHeUTvC1nr1AoFzU3TXSSBEuKlM1NNNqVzXjVJkEukhLC6vEolHE0JAIKzTowP07W0YOR0OtDebr8nz58eSVZdcvF1ft9el+h2zt+vp6ctba6WpJiWyF9h+tVfg8Ht1//9k=\" data-filename=\"1732540273212.jpg\" style=\"width: 720px;\"><br></p><p><br></p>', NULL, 1, 0, NULL, 1, '2024-11-13 15:01:06', '2025-04-19 00:12:02');
INSERT INTO `products` (`id`, `name`, `slug`, `category_id`, `subcategory_id`, `childcategory_id`, `brand_id`, `product_code`, `purchase_price`, `old_price`, `new_price`, `stock`, `pro_unit`, `pro_video`, `description`, `meta_description`, `topsale`, `feature_product`, `campaign_id`, `status`, `created_at`, `updated_at`) VALUES
(392, 'T-SHIRT PREMIEM', 't-shirt-premiem-392', 23, NULL, NULL, 3, 'P0392', 450, 1200, 750, 50, NULL, NULL, '<p>a sum over and above a regular price paid chiefly as an inducement or incentive. c. : a sum in advance of or in addition to the nominal value of something. bonds callable at a premium of six percent</p>', NULL, 1, 0, NULL, 1, '2025-04-11 14:53:15', '2025-04-11 15:26:30'),
(393, 'T-SHIRT PREMIEM', 't-shirt-premiem-393', 24, 0, NULL, NULL, 'P0393', 500, 900, 450, 20, NULL, NULL, '<p><span style=\"color: rgb(108, 117, 125); font-family: Nunito, sans-serif;\">T-SHIRT PREMIEM</span></p>', NULL, 0, 0, NULL, 1, '2025-04-19 00:11:38', '2025-04-19 00:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `productsizes`
--

CREATE TABLE `productsizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `size_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productsizes`
--

INSERT INTO `productsizes` (`id`, `product_id`, `size_id`, `created_at`, `updated_at`) VALUES
(1, 1, 12, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(2, 1, 13, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(3, 1, 14, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(4, 1, 15, '2024-02-05 09:40:29', '2024-02-05 09:40:29'),
(5, 35, 7, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(6, 35, 8, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(7, 35, 9, '2024-02-05 09:54:29', '2024-02-05 09:54:29'),
(8, 28, 6, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(9, 28, 7, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(10, 28, 8, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(11, 28, 9, '2024-02-05 14:06:19', '2024-02-05 14:06:19'),
(12, 2, 6, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(13, 2, 7, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(14, 2, 8, '2024-02-05 14:07:27', '2024-02-05 14:07:27'),
(15, 131, 6, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(16, 131, 7, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(17, 131, 8, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(18, 131, 9, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(19, 131, 10, '2024-03-13 00:28:08', '2024-03-13 00:28:08'),
(20, 133, 6, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(21, 133, 7, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(22, 133, 8, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(23, 133, 9, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(24, 133, 10, '2024-05-31 14:40:26', '2024-05-31 14:40:26'),
(25, 139, 6, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(26, 139, 7, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(27, 139, 9, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(28, 139, 10, '2024-06-25 07:40:02', '2024-06-25 07:40:02'),
(29, 140, 6, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(30, 140, 7, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(31, 140, 8, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(32, 140, 9, '2024-06-25 07:48:56', '2024-06-25 07:48:56'),
(33, 141, 6, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(34, 141, 7, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(35, 141, 8, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(36, 141, 9, '2024-06-25 08:00:57', '2024-06-25 08:00:57'),
(37, 152, 6, '2024-09-11 02:15:30', '2024-09-11 02:15:30'),
(38, 157, 7, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(39, 157, 9, '2024-09-11 02:18:14', '2024-09-11 02:18:14'),
(40, 177, 15, '2024-09-15 13:21:33', '2024-09-15 13:21:33'),
(41, 177, 16, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(42, 177, 17, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(43, 177, 18, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(44, 177, 19, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(45, 177, 20, '2024-09-15 13:22:27', '2024-09-15 13:22:27'),
(46, 178, 15, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(47, 178, 16, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(48, 178, 17, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(49, 178, 18, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(50, 178, 19, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(51, 178, 20, '2024-09-15 13:28:11', '2024-09-15 13:28:11'),
(52, 179, 15, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(53, 179, 16, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(54, 179, 17, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(55, 179, 18, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(56, 179, 19, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(57, 179, 20, '2024-09-15 13:31:29', '2024-09-15 13:31:29'),
(58, 180, 14, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(59, 180, 15, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(60, 180, 16, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(61, 180, 17, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(62, 180, 18, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(63, 180, 19, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(64, 180, 20, '2024-09-15 13:34:16', '2024-09-15 13:34:16'),
(65, 181, 14, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(66, 181, 15, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(67, 181, 16, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(68, 181, 17, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(69, 181, 18, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(70, 181, 19, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(71, 181, 20, '2024-09-15 13:36:17', '2024-09-15 13:36:17'),
(72, 182, 14, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(73, 182, 15, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(74, 182, 16, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(75, 182, 17, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(76, 182, 18, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(77, 182, 19, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(78, 182, 20, '2024-09-15 13:39:31', '2024-09-15 13:39:31'),
(79, 183, 14, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(80, 183, 15, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(81, 183, 16, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(82, 183, 17, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(83, 183, 18, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(84, 183, 19, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(85, 183, 20, '2024-09-15 13:41:44', '2024-09-15 13:41:44'),
(86, 184, 14, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(87, 184, 15, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(88, 184, 16, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(89, 184, 17, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(90, 184, 18, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(91, 184, 19, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(92, 184, 20, '2024-09-15 13:44:59', '2024-09-15 13:44:59'),
(93, 185, 13, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(94, 185, 14, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(95, 185, 15, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(96, 185, 16, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(97, 185, 17, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(98, 185, 18, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(99, 185, 19, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(100, 185, 20, '2024-09-15 15:20:03', '2024-09-15 15:20:03'),
(101, 186, 14, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(102, 186, 15, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(103, 186, 16, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(104, 186, 17, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(105, 186, 18, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(106, 186, 19, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(107, 186, 20, '2024-09-15 15:23:16', '2024-09-15 15:23:16'),
(108, 187, 14, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(109, 187, 15, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(110, 187, 16, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(111, 187, 17, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(112, 187, 18, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(113, 187, 19, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(114, 187, 20, '2024-09-15 15:25:44', '2024-09-15 15:25:44'),
(115, 188, 12, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(116, 188, 13, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(117, 188, 14, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(118, 188, 15, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(119, 188, 16, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(120, 188, 17, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(121, 188, 18, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(122, 188, 19, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(123, 188, 20, '2024-09-15 15:33:46', '2024-09-15 15:33:46'),
(124, 189, 12, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(125, 189, 13, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(126, 189, 14, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(127, 189, 15, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(128, 189, 16, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(129, 189, 17, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(130, 189, 18, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(131, 189, 19, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(132, 189, 20, '2024-09-15 15:37:02', '2024-09-15 15:37:02'),
(133, 190, 12, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(134, 190, 13, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(135, 190, 14, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(136, 190, 15, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(137, 190, 16, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(138, 190, 17, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(139, 190, 18, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(140, 190, 19, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(141, 190, 20, '2024-09-15 15:38:23', '2024-09-15 15:38:23'),
(142, 191, 12, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(143, 191, 13, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(144, 191, 14, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(145, 191, 15, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(146, 191, 16, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(147, 191, 17, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(148, 191, 18, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(149, 191, 19, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(150, 191, 20, '2024-09-15 15:39:25', '2024-09-15 15:39:25'),
(151, 192, 12, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(152, 192, 13, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(153, 192, 14, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(154, 192, 15, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(155, 192, 16, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(156, 192, 17, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(157, 192, 18, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(158, 192, 19, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(159, 192, 20, '2024-09-15 15:40:15', '2024-09-15 15:40:15'),
(160, 193, 12, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(161, 193, 13, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(162, 193, 14, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(163, 193, 15, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(164, 193, 16, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(165, 193, 17, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(166, 193, 18, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(167, 193, 19, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(168, 193, 20, '2024-09-15 15:41:23', '2024-09-15 15:41:23'),
(169, 194, 12, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(170, 194, 13, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(171, 194, 14, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(172, 194, 15, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(173, 194, 16, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(174, 194, 17, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(175, 194, 18, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(176, 194, 19, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(177, 194, 20, '2024-09-15 15:43:02', '2024-09-15 15:43:02'),
(178, 195, 12, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(179, 195, 13, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(180, 195, 14, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(181, 195, 15, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(182, 195, 16, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(183, 195, 17, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(184, 195, 18, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(185, 195, 19, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(186, 195, 20, '2024-09-15 15:44:29', '2024-09-15 15:44:29'),
(187, 196, 12, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(188, 196, 13, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(189, 196, 14, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(190, 196, 15, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(191, 196, 16, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(192, 196, 17, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(193, 196, 18, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(194, 196, 19, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(195, 196, 20, '2024-09-15 15:45:06', '2024-09-15 15:45:06'),
(196, 197, 12, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(197, 197, 13, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(198, 197, 14, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(199, 197, 15, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(200, 197, 16, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(201, 197, 17, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(202, 197, 18, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(203, 197, 19, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(204, 197, 20, '2024-09-15 15:45:55', '2024-09-15 15:45:55'),
(205, 198, 12, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(206, 198, 13, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(207, 198, 14, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(208, 198, 15, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(209, 198, 16, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(210, 198, 17, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(211, 198, 18, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(212, 198, 19, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(213, 198, 20, '2024-09-15 15:46:42', '2024-09-15 15:46:42'),
(214, 199, 12, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(215, 199, 13, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(216, 199, 14, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(217, 199, 15, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(218, 199, 16, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(219, 199, 17, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(220, 199, 18, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(221, 199, 19, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(222, 199, 20, '2024-09-15 15:47:27', '2024-09-15 15:47:27'),
(223, 200, 12, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(224, 200, 13, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(225, 200, 14, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(226, 200, 15, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(227, 200, 16, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(228, 200, 17, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(229, 200, 18, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(230, 200, 19, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(231, 200, 20, '2024-09-15 15:48:39', '2024-09-15 15:48:39'),
(232, 201, 12, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(233, 201, 13, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(234, 201, 14, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(235, 201, 15, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(236, 201, 16, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(237, 201, 17, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(238, 201, 18, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(239, 201, 19, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(240, 201, 20, '2024-09-15 15:49:21', '2024-09-15 15:49:21'),
(241, 202, 12, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(242, 202, 13, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(243, 202, 14, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(244, 202, 15, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(245, 202, 16, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(246, 202, 17, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(247, 202, 18, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(248, 202, 19, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(249, 202, 20, '2024-09-15 15:50:10', '2024-09-15 15:50:10'),
(250, 203, 12, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(251, 203, 13, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(252, 203, 14, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(253, 203, 15, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(254, 203, 16, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(255, 203, 17, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(256, 203, 18, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(257, 203, 19, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(258, 203, 20, '2024-09-15 15:50:50', '2024-09-15 15:50:50'),
(259, 204, 12, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(260, 204, 13, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(261, 204, 14, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(262, 204, 15, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(263, 204, 16, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(264, 204, 17, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(265, 204, 18, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(266, 204, 19, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(267, 204, 20, '2024-09-15 15:51:29', '2024-09-15 15:51:29'),
(268, 205, 12, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(269, 205, 13, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(270, 205, 14, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(271, 205, 15, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(272, 205, 16, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(273, 205, 17, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(274, 205, 18, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(275, 205, 19, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(276, 205, 20, '2024-09-15 15:52:07', '2024-09-15 15:52:07'),
(277, 206, 12, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(278, 206, 13, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(279, 206, 14, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(280, 206, 15, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(281, 206, 16, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(282, 206, 17, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(283, 206, 18, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(284, 206, 19, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(285, 206, 20, '2024-09-15 15:53:02', '2024-09-15 15:53:02'),
(286, 207, 12, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(287, 207, 13, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(288, 207, 14, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(289, 207, 15, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(290, 207, 16, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(291, 207, 17, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(292, 207, 18, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(293, 207, 19, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(294, 207, 20, '2024-09-15 15:54:16', '2024-09-15 15:54:16'),
(295, 208, 12, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(296, 208, 13, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(297, 208, 14, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(298, 208, 15, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(299, 208, 16, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(300, 208, 17, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(301, 208, 18, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(302, 208, 19, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(303, 208, 20, '2024-09-15 15:54:57', '2024-09-15 15:54:57'),
(304, 209, 12, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(305, 209, 13, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(306, 209, 14, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(307, 209, 15, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(308, 209, 16, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(309, 209, 17, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(310, 209, 18, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(311, 209, 19, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(312, 209, 20, '2024-09-15 15:55:58', '2024-09-15 15:55:58'),
(313, 210, 12, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(314, 210, 13, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(315, 210, 14, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(316, 210, 15, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(317, 210, 16, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(318, 210, 17, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(319, 210, 18, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(320, 210, 19, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(321, 210, 20, '2024-09-15 15:59:18', '2024-09-15 15:59:18'),
(322, 211, 12, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(323, 211, 13, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(324, 211, 14, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(325, 211, 15, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(326, 211, 16, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(327, 211, 17, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(328, 211, 18, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(329, 211, 19, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(330, 211, 20, '2024-09-15 16:00:09', '2024-09-15 16:00:09'),
(331, 212, 12, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(332, 212, 13, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(333, 212, 14, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(334, 212, 15, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(335, 212, 16, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(336, 212, 17, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(337, 212, 18, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(338, 212, 19, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(339, 212, 20, '2024-09-15 16:00:50', '2024-09-15 16:00:50'),
(340, 213, 12, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(341, 213, 13, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(342, 213, 14, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(343, 213, 15, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(344, 213, 16, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(345, 213, 17, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(346, 213, 18, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(347, 213, 19, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(348, 213, 20, '2024-09-15 16:01:39', '2024-09-15 16:01:39'),
(349, 214, 12, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(350, 214, 13, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(351, 214, 14, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(352, 214, 15, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(353, 214, 16, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(354, 214, 17, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(355, 214, 18, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(356, 214, 19, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(357, 214, 20, '2024-09-15 16:02:25', '2024-09-15 16:02:25'),
(358, 215, 12, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(359, 215, 13, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(360, 215, 14, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(361, 215, 15, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(362, 215, 16, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(363, 215, 17, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(364, 215, 18, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(365, 215, 19, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(366, 215, 20, '2024-09-15 16:03:24', '2024-09-15 16:03:24'),
(367, 216, 12, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(368, 216, 13, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(369, 216, 14, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(370, 216, 15, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(371, 216, 16, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(372, 216, 17, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(373, 216, 18, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(374, 216, 19, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(375, 216, 20, '2024-09-15 16:04:20', '2024-09-15 16:04:20'),
(376, 217, 12, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(377, 217, 13, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(378, 217, 14, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(379, 217, 15, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(380, 217, 16, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(381, 217, 17, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(382, 217, 18, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(383, 217, 19, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(384, 217, 20, '2024-09-15 16:05:22', '2024-09-15 16:05:22'),
(385, 218, 12, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(386, 218, 13, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(387, 218, 14, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(388, 218, 15, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(389, 218, 16, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(390, 218, 17, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(391, 218, 18, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(392, 218, 19, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(393, 218, 20, '2024-09-15 16:06:19', '2024-09-15 16:06:19'),
(394, 219, 21, '2024-09-15 16:07:34', '2024-09-15 16:07:34'),
(395, 220, 21, '2024-09-15 16:08:10', '2024-09-15 16:08:10'),
(396, 221, 21, '2024-09-15 16:08:47', '2024-09-15 16:08:47'),
(397, 222, 21, '2024-09-15 16:09:21', '2024-09-15 16:09:21'),
(398, 223, 21, '2024-09-15 16:09:52', '2024-09-15 16:09:52'),
(399, 224, 21, '2024-09-15 16:10:27', '2024-09-15 16:10:27'),
(400, 225, 21, '2024-09-15 16:11:14', '2024-09-15 16:11:14'),
(401, 226, 21, '2024-09-15 16:11:50', '2024-09-15 16:11:50'),
(402, 227, 21, '2024-09-15 16:12:23', '2024-09-15 16:12:23'),
(403, 228, 21, '2024-09-15 16:17:10', '2024-09-15 16:17:10'),
(404, 229, 21, '2024-09-15 16:18:13', '2024-09-15 16:18:13'),
(405, 230, 21, '2024-09-15 16:18:55', '2024-09-15 16:18:55'),
(406, 231, 21, '2024-09-15 16:19:25', '2024-09-15 16:19:25'),
(407, 232, 21, '2024-09-15 16:20:00', '2024-09-15 16:20:00'),
(408, 233, 21, '2024-09-15 16:20:34', '2024-09-15 16:20:34'),
(409, 234, 21, '2024-09-15 16:21:04', '2024-09-15 16:21:04'),
(410, 235, 21, '2024-09-15 16:21:38', '2024-09-15 16:21:38'),
(411, 236, 21, '2024-09-15 16:22:11', '2024-09-15 16:22:11'),
(412, 237, 21, '2024-09-15 16:22:39', '2024-09-15 16:22:39'),
(413, 238, 21, '2024-09-15 16:23:14', '2024-09-15 16:23:14'),
(414, 239, 21, '2024-09-15 16:25:03', '2024-09-15 16:25:03'),
(415, 240, 21, '2024-09-15 16:26:12', '2024-09-15 16:26:12'),
(416, 241, 21, '2024-09-15 16:26:53', '2024-09-15 16:26:53'),
(417, 242, 21, '2024-09-15 16:27:25', '2024-09-15 16:27:25'),
(418, 243, 21, '2024-09-15 16:27:57', '2024-09-15 16:27:57'),
(419, 244, 21, '2024-09-15 16:28:32', '2024-09-15 16:28:32'),
(420, 245, 21, '2024-09-15 16:29:06', '2024-09-15 16:29:06'),
(421, 246, 21, '2024-09-15 16:29:42', '2024-09-15 16:29:42'),
(422, 247, 21, '2024-09-15 16:30:28', '2024-09-15 16:30:28'),
(423, 248, 21, '2024-09-15 16:30:59', '2024-09-15 16:30:59'),
(424, 249, 21, '2024-09-15 16:31:34', '2024-09-15 16:31:34'),
(425, 250, 21, '2024-09-15 16:32:03', '2024-09-15 16:32:03'),
(426, 251, 21, '2024-09-15 16:32:37', '2024-09-15 16:32:37'),
(427, 371, 6, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(428, 371, 7, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(429, 371, 8, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(430, 371, 9, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(431, 371, 10, '2024-10-08 15:19:42', '2024-10-08 15:19:42'),
(432, 390, 6, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(433, 390, 7, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(434, 390, 8, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(435, 390, 9, '2024-10-22 12:30:36', '2024-10-22 12:30:36'),
(436, 391, 6, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(437, 391, 7, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(438, 391, 8, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(439, 391, 9, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(440, 391, 10, '2024-11-13 15:01:06', '2024-11-13 15:01:06'),
(441, 392, 7, '2025-04-11 14:53:15', '2025-04-11 14:53:15'),
(442, 392, 8, '2025-04-11 14:53:15', '2025-04-11 14:53:15'),
(443, 392, 9, '2025-04-11 14:53:15', '2025-04-11 14:53:15'),
(444, 393, 7, '2025-04-19 00:11:38', '2025-04-19 00:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(55) NOT NULL,
  `ratting` varchar(4) NOT NULL,
  `review` text NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `status` varchar(55) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `email`, `ratting`, `review`, `product_id`, `customer_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Omor Faruk', 'N / A', '5', 'Nice product,,,', 75, 13, 'active', '2024-02-05 08:49:50', '2024-02-19 07:02:29'),
(2, 'Samiul Alom', 'N / A', '5', 'nice product', 123, 11, 'pending', '2024-02-10 08:00:20', '2024-02-10 08:00:20'),
(3, 'Samiul Alom', 'N / A', '5', 'nice product', 99, 11, 'pending', '2024-02-10 09:33:38', '2024-02-10 09:33:38');

-- --------------------------------------------------------

--
-- Table structure for table `review_img`
--

CREATE TABLE `review_img` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_img`
--

INSERT INTO `review_img` (`id`, `image`, `created_at`, `updated_at`) VALUES
(2, 'frontEnd/images/1747295787.jpeg', '2025-05-15 07:56:27', '2025-05-15 07:56:27'),
(3, 'frontEnd/images/1747295794.jpeg', '2025-05-15 07:56:34', '2025-05-15 07:56:34'),
(4, 'frontEnd/images/1747295799.jpg', '2025-05-15 07:56:39', '2025-05-15 07:56:39'),
(5, 'frontEnd/images/1747295804.webp', '2025-05-15 07:56:44', '2025-05-15 07:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2023-01-11 06:33:09', '2023-01-11 06:33:09'),
(3, 'Editor', 'web', '2023-01-19 06:41:33', '2023-01-19 06:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `phone` varchar(55) NOT NULL,
  `address` varchar(256) DEFAULT NULL,
  `area` varchar(256) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `order_id`, `customer_id`, `name`, `phone`, `address`, `area`, `created_at`, `updated_at`) VALUES
(234, 234, 192, 'Sayem', '01766001223', 'Hahah', 'Free Delivery', '2025-04-16 19:15:31', '2025-04-16 19:15:31'),
(235, 235, 193, 'Sayem', '01611058959', 'Faridpur', 'Free Delivery', '2025-04-18 18:30:30', '2025-04-18 18:30:30'),
(236, 236, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-04-19 01:00:16', '2025-04-19 01:00:16'),
(237, 237, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-04-19 01:00:53', '2025-04-19 01:00:53'),
(238, 238, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-04-19 01:01:17', '2025-04-19 01:01:17'),
(239, 239, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-04-19 01:01:41', '2025-04-19 01:01:41'),
(240, 240, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-04-19 01:02:09', '2025-04-19 01:02:09'),
(241, 241, 195, 'মোঃ সারোয়ার হোসেন শাওন', '01880546843', 'রাজশাহী, রাজশাহী আমচওর সার্ভে ইনিস্টিটিউট এর পাশে বড়াইগ্রাম', 'ঢাকার বাহিরে  ১৪০ টাকা', '2025-04-19 01:41:02', '2025-04-19 01:41:02'),
(242, 242, 196, 'aokil', '01313305818', 'Ranbagha nandigram bogura rajshahi', 'ঢাকার বাহিরে  ১৪০ টাকা', '2025-04-23 21:01:54', '2025-04-23 21:01:54'),
(243, 243, 197, 'Rasel', '01614519567', 'রংপুর পীরগঞ্জ খালাস পীর', 'ঢাকার বাহিরে  ১৪০ টাকা', '2025-05-07 17:09:38', '2025-05-07 17:09:38'),
(244, 244, 194, 'Gg', '01406222268', 'Bbb', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-05-13 05:21:39', '2025-05-13 05:21:39'),
(245, 245, 194, 'Sayem khan', '01406222268', 'faridpur', 'ঢাকার ভিতরে  ৮০ টাকা', '2025-05-13 05:39:04', '2025-05-13 05:39:04'),
(246, 246, 191, 'Maisie Kaufman', '01732329071', 'Voluptatem consequa', 'ঢাকার বাহিরে  ১৪০ টাকা', '2025-05-14 13:22:01', '2025-05-14 13:22:01');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_charges`
--

CREATE TABLE `shipping_charges` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_charges`
--

INSERT INTO `shipping_charges` (`id`, `name`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ঢাকার ভিতরে  ৮০ টাকা', 80, '1', '2023-08-04 10:34:54', '2024-09-16 16:21:48'),
(2, 'ঢাকার বাহিরে  ১৪০ টাকা', 140, '1', '2023-08-04 10:35:57', '2024-09-16 16:22:54');

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` int(10) UNSIGNED NOT NULL,
  `sizeName` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `sizeName`, `status`, `created_at`, `updated_at`) VALUES
(6, 'S', '1', '2024-02-05 09:38:42', '2024-02-05 09:38:42'),
(7, 'M', '1', '2024-02-05 09:38:46', '2024-02-05 09:38:46'),
(8, 'L', '1', '2024-02-05 09:38:51', '2024-02-05 09:38:51'),
(9, 'XL', '1', '2024-02-05 09:38:57', '2024-02-05 09:38:57'),
(10, 'XXL', '1', '2024-02-05 09:39:03', '2024-02-05 09:39:03'),
(11, '25', '1', '2024-02-05 09:39:19', '2024-02-05 09:39:19'),
(12, '28', '1', '2024-02-05 09:39:25', '2024-02-05 09:39:25'),
(13, '30', '1', '2024-02-05 09:39:30', '2024-02-05 09:39:30'),
(14, '32', '1', '2024-02-05 09:39:34', '2024-02-05 09:39:34'),
(15, '34', '1', '2024-02-05 09:39:39', '2024-02-05 09:39:39'),
(16, '36', '1', '2024-09-15 13:21:43', '2024-09-15 13:21:43'),
(17, '38', '1', '2024-09-15 13:21:49', '2024-09-15 13:21:49'),
(18, '40', '1', '2024-09-15 13:21:55', '2024-09-15 13:21:55'),
(19, '42', '1', '2024-09-15 13:22:00', '2024-09-15 13:22:00'),
(20, '44', '1', '2024-09-15 13:22:05', '2024-09-15 13:22:05'),
(21, '28-44 (Free Size)', '1', '2024-09-15 16:06:29', '2024-09-15 16:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(99) DEFAULT NULL,
  `api_key` varchar(155) DEFAULT NULL,
  `serderid` varchar(155) DEFAULT NULL,
  `order` varchar(11) DEFAULT NULL,
  `forget_pass` varchar(11) DEFAULT NULL,
  `password_g` varchar(11) DEFAULT NULL,
  `status` varchar(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `url`, `api_key`, `serderid`, `order`, `forget_pass`, `password_g`, `status`, `created_at`, `updated_at`) VALUES
(1, 'http://bulksmsbd.net/api/smsapi', '#', '#', '1', '1', '1', '1', '2024-02-06 11:29:46', '2024-12-14 07:07:58');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `link` varchar(155) NOT NULL,
  `color` varchar(20) DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `title`, `icon`, `link`, `color`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'fab fa-facebook-f', 'https://www.facebook.com/midrange.bangladesh', '#f78345', 1, '2023-02-12 11:32:20', '2025-04-11 15:17:16'),
(3, 'Youtube', 'fab fa-youtube', 'https://www.youtube.com/@midrange.fashion', '#000000', 1, '2024-10-11 07:18:17', '2025-04-11 15:16:33');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `subcategoryName` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `meta_title` varchar(191) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `subcategoryName`, `slug`, `category_id`, `image`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(28, 'Smart Lamp & Lights', 'smart-lamp-&-lights', 15, NULL, NULL, NULL, 1, '2024-10-10 23:26:14', '2024-10-10 23:26:14'),
(29, 'Premium Backpack & bag', 'premium-backpack-&-bag', 15, NULL, NULL, NULL, 1, '2024-10-10 23:26:32', '2024-10-10 23:26:32'),
(30, 'Trendy & Smart Gadget', 'trendy-&-smart-gadget', 15, NULL, NULL, NULL, 1, '2024-10-10 23:26:47', '2024-10-10 23:26:47'),
(31, 'Fashion & Life Style', 'fashion-&-life-style', 15, NULL, NULL, NULL, 1, '2024-10-10 23:26:58', '2024-10-10 23:26:58'),
(32, 'test', 'test', 15, NULL, NULL, NULL, 1, '2024-12-13 18:24:33', '2024-12-13 18:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `image`, `status`, `created_at`, `updated_at`) VALUES
(6, 'NEED MD BD', 'admin@admin.com', NULL, '$2y$10$jPo9fU9qtW5sH7s.Qja7jerWmcVkTfEfkLP2pbv81ZXloOvDlF3Te', 'A62BGpTdBeJi8apvcLywRin2NBie3lQITJMhbmPQS7hb0WU7HfgWleBSoKCM', 'public/uploads/users/1745023522-white-background.webp', 1, '2024-02-10 03:58:57', '2025-04-19 00:45:22'),
(10, 'Mid Range Fashion', 'midrangeofficial50@gmail.com', NULL, '$2y$10$1E5FbRa.K3.jMWo9BXAWiO0xMNvTAXo37T4HnD7eGS1EO9SDAncHG', NULL, 'public/uploads/users/1745024024-white-background.webp', 1, '2025-04-19 00:53:44', '2025-04-19 00:53:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner_categories`
--
ALTER TABLE `banner_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `childcategories`
--
ALTER TABLE `childcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courierapis`
--
ALTER TABLE `courierapis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `create_pages`
--
ALTER TABLE `create_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ecom_pixels`
--
ALTER TABLE `ecom_pixels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ip_blocks`
--
ALTER TABLE `ip_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productcolors`
--
ALTER TABLE `productcolors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productimages`
--
ALTER TABLE `productimages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productsizes`
--
ALTER TABLE `productsizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review_img`
--
ALTER TABLE `review_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_charges`
--
ALTER TABLE `shipping_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `banner_categories`
--
ALTER TABLE `banner_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `campaign_reviews`
--
ALTER TABLE `campaign_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `childcategories`
--
ALTER TABLE `childcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `courierapis`
--
ALTER TABLE `courierapis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `create_pages`
--
ALTER TABLE `create_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `google_tag_managers`
--
ALTER TABLE `google_tag_managers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=292;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `productcolors`
--
ALTER TABLE `productcolors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `productimages`
--
ALTER TABLE `productimages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=898;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `productsizes`
--
ALTER TABLE `productsizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `review_img`
--
ALTER TABLE `review_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
