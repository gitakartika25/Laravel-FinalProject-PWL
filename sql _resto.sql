-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2020 pada 08.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `comments`
--

INSERT INTO `comments` (`id`, `nama`, `email`, `comment`, `created_at`, `updated_at`) VALUES
(1, 'sahira', 'sahirahrana@gmail.com', 'waw', '2020-12-19 23:53:00', '2020-12-19 23:53:00'),
(2, 'sahira', 'sahirahrana@gmail.com', 'bagus bangettt', '2020-12-22 02:08:47', '2020-12-22 02:08:47'),
(3, 'sahira', 'sahirahrana@gmail.com', 'bagus bangettt', '2020-12-22 02:11:14', '2020-12-22 02:11:14'),
(4, 'sahira', 'sahirahrana@gmail.com', 'bagus bangettt', '2020-12-22 02:11:28', '2020-12-22 02:11:28'),
(5, 'vio', 'vio@gmail.com', 'enak sekali tempatnya luas!', '2020-12-25 23:31:58', '2020-12-25 23:31:58'),
(6, 'lala', 'lala@gmail.com', 'the best!', '2020-12-29 00:21:53', '2020-12-29 00:21:53'),
(7, 'lala', 'lala@gmail.com', 'the best!', '2020-12-29 00:22:28', '2020-12-29 00:22:28'),
(8, 'lala', 'lala@gmail.com', 'daebakkk', '2020-12-29 02:38:25', '2020-12-29 02:38:25'),
(9, 'lala', 'lala@gmail.com', 'daebakkk', '2020-12-29 02:39:55', '2020-12-29 02:39:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_products`
--

CREATE TABLE `history_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double UNSIGNED DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtyChange` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `history_products`
--

INSERT INTO `history_products` (`id`, `name`, `category`, `price`, `description`, `image`, `qty`, `tipe`, `qtyChange`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(19, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 1, 2, '2020-12-28 23:35:08', '2020-12-28 23:35:08'),
(20, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 1, 2, '2020-12-28 23:44:03', '2020-12-28 23:44:03'),
(21, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 2, 2, '2020-12-28 23:44:20', '2020-12-28 23:44:20'),
(22, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 3, 1, '2020-12-29 00:01:28', '2020-12-29 00:01:28'),
(23, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-2', 4, 14, '2020-12-29 01:25:16', '2020-12-29 01:25:16'),
(24, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 3, 14, '2020-12-29 01:46:18', '2020-12-29 01:46:18'),
(25, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 8, 14, '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(26, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 12, 14, '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(27, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 5, 14, '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(28, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 9, 14, '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(29, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 13, 1, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(30, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 8, 1, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(31, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 11, 1, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(32, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-1', 10, 1, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(33, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-2', 7, 1, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(34, NULL, NULL, NULL, NULL, NULL, 100, 'decrease from transaction', '-3', 6, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(35, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 13, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(36, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 11, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(37, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 9, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(38, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 10, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(39, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 4, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(40, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 3, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(41, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 2, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(42, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 8, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(43, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-2', 1, 14, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(44, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-2', 1, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(45, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 3, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(46, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 8, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(47, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 9, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(48, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-3', 10, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(49, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-1', 12, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(50, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 13, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(51, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 7, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(52, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-2', 4, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(53, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-2', 2, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(54, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-2', 11, 1, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(55, NULL, NULL, NULL, NULL, NULL, 2, 'created product', '0', 24, 2, '2020-12-29 02:47:35', '2020-12-29 02:47:35'),
(56, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-1', 11, 2, '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(57, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 9, 2, '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(58, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 13, 2, '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(59, NULL, NULL, NULL, NULL, NULL, 98, 'decrease from transaction', '-1', 12, 2, '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(60, NULL, NULL, NULL, NULL, NULL, 2, 'created product', '0', 25, 2, '2020-12-29 22:56:12', '2020-12-29 22:56:12'),
(61, NULL, NULL, NULL, NULL, NULL, 3, 'created product', '0', 26, 2, '2020-12-29 22:57:58', '2020-12-29 22:57:58'),
(62, NULL, NULL, NULL, NULL, NULL, 3, 'change product qty from admin', '3', 26, 2, '2020-12-29 23:03:39', '2020-12-29 23:03:39'),
(63, NULL, NULL, NULL, NULL, NULL, 6, 'change product qty from admin', '3', 26, 2, '2020-12-29 23:04:01', '2020-12-29 23:04:01'),
(64, NULL, NULL, NULL, NULL, NULL, 94, 'decrease from transaction', '-1', 1, 2, '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(65, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 7, 2, '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(66, NULL, NULL, NULL, NULL, NULL, 99, 'decrease from transaction', '-2', 5, 2, '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(67, NULL, NULL, NULL, NULL, NULL, 95, 'decrease from transaction', '-2', 10, 2, '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(68, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-1', 3, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(69, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-1', 6, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(70, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-1', 2, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(71, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-1', 7, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(72, NULL, NULL, NULL, NULL, NULL, 95, 'decrease from transaction', '-1', 4, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(73, NULL, NULL, NULL, NULL, NULL, 93, 'decrease from transaction', '-4', 10, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(74, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-1', 9, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(75, NULL, NULL, NULL, NULL, NULL, 95, 'decrease from transaction', '-1', 11, 15, '2020-12-30 00:48:46', '2020-12-30 00:48:46'),
(76, NULL, NULL, NULL, NULL, NULL, 97, 'decrease from transaction', '-2', 12, 15, '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(77, NULL, NULL, NULL, NULL, NULL, 96, 'decrease from transaction', '-2', 13, 15, '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(78, NULL, NULL, NULL, NULL, NULL, 10, 'created product', '0', 27, 2, '2020-12-30 00:50:12', '2020-12-30 00:50:12'),
(79, NULL, NULL, NULL, NULL, NULL, 10, 'change product qty from admin', '4', 27, 2, '2020-12-30 00:50:22', '2020-12-30 00:50:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_05_16_070107_create_products_table', 1),
(5, '2020_05_16_072227_create_transcations_table', 1),
(6, '2020_05_16_072533_create_product_transation_table', 1),
(7, '2020_05_16_120622_create_history_products_table', 1),
(8, '2020_12_17_042235_create_restos_table', 1),
(9, '2020_12_17_042301_create_reservasis_table', 1),
(10, '2020_12_17_044949_create_comments_table', 1),
(11, '2020_12_20_042138_modif_table_users', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product_transation`
--

CREATE TABLE `product_transation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `qtyKursi` int(11) DEFAULT NULL,
  `tglReservasi` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product_transation`
--

INSERT INTO `product_transation` (`id`, `product_id`, `invoices_number`, `qty`, `qtyKursi`, `tglReservasi`, `time`, `created_at`, `updated_at`) VALUES
(15, 1, 'INV-000001', 1, 2, NULL, NULL, '2020-12-28 23:44:04', '2020-12-28 23:44:04'),
(16, 2, 'INV-000002', 1, 2, NULL, NULL, '2020-12-28 23:44:20', '2020-12-28 23:44:20'),
(17, 3, 'INV-000003', 1, 2, NULL, NULL, '2020-12-29 00:01:28', '2020-12-29 00:01:28'),
(18, 4, 'INV-000004', 2, 2, NULL, NULL, '2020-12-29 01:25:17', '2020-12-29 01:25:17'),
(19, 3, 'INV-000005', 1, 1, '2020-12-30', '16:30:00', '2020-12-29 01:46:18', '2020-12-29 01:46:18'),
(20, 8, 'INV-000006', 1, 2, '2020-12-30', '19:20:00', '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(21, 12, 'INV-000006', 1, 2, '2020-12-30', '19:20:00', '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(22, 5, 'INV-000006', 1, 2, '2020-12-30', '19:20:00', '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(23, 9, 'INV-000006', 1, 2, '2020-12-30', '19:20:00', '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
(24, 13, 'INV-000007', 1, 4, '2020-12-31', '18:22:00', '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(25, 8, 'INV-000007', 1, 4, '2020-12-31', '18:22:00', '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(26, 11, 'INV-000007', 1, 4, '2020-12-31', '18:22:00', '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(27, 10, 'INV-000007', 1, 4, '2020-12-31', '18:22:00', '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(28, 7, 'INV-000007', 2, 4, '2020-12-31', '18:22:00', '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
(29, 6, 'INV-000008', 3, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(30, 13, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(31, 11, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(32, 9, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(33, 10, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(34, 4, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(35, 3, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(36, 2, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(37, 8, 'INV-000008', 1, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(38, 1, 'INV-000008', 2, 4, '2020-12-31', '19:48:00', '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
(39, 1, 'INV-000009', 2, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(40, 3, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(41, 8, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(42, 9, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(43, 10, 'INV-000009', 3, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(44, 12, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(45, 13, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(46, 7, 'INV-000009', 1, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(47, 4, 'INV-000009', 2, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(48, 2, 'INV-000009', 2, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(49, 11, 'INV-000009', 2, 8, '2020-12-31', '18:50:00', '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
(50, 11, 'INV-000010', 1, 3, '2021-01-02', '15:10:00', '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(51, 9, 'INV-000010', 1, 3, '2021-01-02', '15:10:00', '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(52, 13, 'INV-000010', 1, 3, '2021-01-02', '15:10:00', '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(53, 12, 'INV-000010', 1, 3, '2021-01-02', '15:10:00', '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
(54, 1, 'INV-000011', 1, 2, '2021-01-02', '16:05:00', '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(55, 7, 'INV-000011', 1, 2, '2021-01-02', '16:05:00', '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(56, 5, 'INV-000011', 2, 2, '2021-01-02', '16:05:00', '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(57, 10, 'INV-000011', 2, 2, '2021-01-02', '16:05:00', '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
(58, 3, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(59, 6, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(60, 2, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(61, 7, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(62, 4, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(63, 10, 'INV-000012', 4, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(64, 9, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(65, 11, 'INV-000012', 1, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(66, 12, 'INV-000012', 2, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47'),
(67, 13, 'INV-000012', 2, 4, '2021-01-01', '18:50:00', '2020-12-30 00:48:47', '2020-12-30 00:48:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `reservasi`
--

CREATE TABLE `reservasi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_cust` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` int(11) NOT NULL,
  `jumlah_orang` int(11) NOT NULL,
  `pesanan` int(11) NOT NULL,
  `reservasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `restos`
--

CREATE TABLE `restos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `trailer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `restos`
--

INSERT INTO `restos` (`id`, `name`, `category`, `price`, `trailer`, `description`, `image`, `qty`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Crab', 'Main Course', 50000, 'Kepiting ini berukuran JUMBO, diberi bumbu rempah serta saus pedas yang akan mengguncang harimu!', 'Daging kepitingnya sangat lezat namun sausnya-lah bintangnya—manis tetapi gurih, agak pedas tetapi benar-benar memuaskan. Jari-jari Anda pasti berlumuran saus saat membuka cangkang kepiting, dan dorongan untuk menjilatinya sungguh tak tertahankan.\r\n\r\nDijamin Anda akan ketagihan dan kembali lagi untuk roti yang digoreng atau dikukus yang disebut mantau untuk decelupkan ke saus – paduan lezat sambal tomat dan sambal cabai yang dicampur dengan telur kocok nan nikmat.\r\n\r\nChilli crab Singapura, rajanya hidangan kepiting, adalah salah satu temuan kuliner terlezat di negeri ini. Makanan khas ini tersedia di sebagian besar restoran seafood, yang biasanya menyajikan kepiting lumpur yang berdaging manis dan berair.\r\n\r\nTerciptanya Chili Crab : \r\nHidangan tersohor sedunia ini bermula dari gerobak dorong milik sepasang suami istri pada tahun 1956. Sang suami meminta istrinya bereksperimen dengan metode lain dalam memasak kepiting alih-alih sekadar mengukus seafood tersebut.\r\n\r\nHasil percobaan pertama Nyonya Cher Yam Tiam adalah kepiting yang ditumis dengan saus tomat, namun ia merasa hidangan itu akan lebih sedap bila ditambahi saus cabai. Mereka menjajakan Chilli Crab Singapura di sepanjang Kallang River dan, saking digemarinya, mereka membuka restoran bernama Palm Beach.\r\n\r\nHooi Kok Wah, chef beken, yang membuka restoran Dragon Phoenix tahun 1963, menciptakan versi yang lebih asam hidangan ini, ia memasukkan sambal, saus tomat, dan telur alih-alih saus cabai dan saus tomat botolan. Semenjak itu, versi ini menjadi yang paling umum disajikan di Singapura.', 'uploads/images/1608652888crab.jpg', 93, 2, '2020-12-16 23:49:22', '2020-12-29 23:04:57'),
(2, 'Spaghetti', 'Main Course', 20000, 'Nama spageti ini berasal dari bahasa Italia, aglio berarti bawang putih, sedangkan olio artinya minyak. Spageti ini kerap ditulis sebagai aglio e olio alias spageti yang terbuat dari minyak dan bawang putih', 'Spaghetti adalah salah satu jenis pasta yang berbentuk panjang, tipis, silindris, dan padat, yang jika diperhatikan menyerupai mie pada umumnya. Ini adalah makanan pokok dalam masakan Italia tradisional. Karena berbentuk seperti mie, kebanyakan orang menyebutnya mie dari Italia meskipun banyak varian pasta lainnya yang berbentuk seperti mie. Seperti pasta pada umumnya, spageti terbuat dari gandum giling dan air. Spageti Italia terbuat dari semolina gandum durum, tetapi di tempat lain bisa dibuat dengan tepung jenis lain.\r\nAwalnya ukuran spageti sangat panjang, tetapi kemudian yang berukuran lebih pendek semakin populer selama paruh kedua abad ke-20 dan sekarang spageti paling banyak tersedia dalam ukuran panjang 25–30 cm (10–12 in). Beberapa varian hidangan pasta berasal dari pasta jenis ini sebagai dasar.', 'uploads/images/1608652875spaghetti.jpg', 95, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(3, 'Mozarella Pizza', 'Main Course', 15000, 'Pizza pada saat ini sudah menjadi salah satu makanan favorit di Indonesia.\r\nMendengar namanya saja kita sudah bisa membayangkan, bahwa pizza adalah sejenis makanan yang berbentuk lingkaran dan pipih, yang di atasnya bertabur sayuran dan daging ditambah parutan keju mozarella sehingga menambah daya tarik tersendiri.', 'Pizza disebut hidangan gurih dari Italia sejenis adonan bundar dan pipih, yang dipanggang di oven dan biasanya dilumuri saus tomat serta keju dengan bahan makanan tambahan lainnya yang bisa dipilih. Keju yang dipakai biasanya mozzarella atau \"keju pizza\", bisa juga keju parmesan dan beberapa keju lainnya.\r\nJenis bahan lain juga dapat ditaruh di atas pizza, biasanya daging dan saus, seperti salami dan pepperoni, ham, bacon, buah seperti nanas dan zaitun, sayuran seperti cabe dan paprika, dan juga bawang bombay, jamur dan lain lain.\r\nRotinya biasa dibuat seperti roti biasa namun bisa diberi rasa tambahan dengan mentega, bawang putih, tanaman herbal, atau wijen. Pizza biasanya dibuat dengan memutar-mutarkan adonan roti yang menjadi pipih. Hal tersebut juga sering dijadikan atraksi bagi beberapa toko Pizzeria. Pizza biasanya dimakan selagi panas (biasanya untuk makan siang dan malam), tetapi ada pula yang disajikan dingin, biasanya dimakan untuk sarapan atau saat piknik.\r\nPizza biasanya dimakan di restoran, dibeli di pasar grosir atau supermarket, dan dapat pula dipesan melalui telepon atau ini melalui web untuk diantar, panas dan siap untuk disantap di rumah.\r\nKata \"pizza\" diambil dari bahasa Italia pizza (Alfabet Fonetik Internasional / International Phonetic Alphabet, IPA: [ˈpiːtsə]), biasanya berarti \"pai, kue, tart\". Banyak yang salah mengira bahwa pizza berasal dari kata Italia yang berarti phai (pie).', 'uploads/images/1608652853pizza.jpg', 95, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(4, 'Burger', 'Main Course', 20000, 'Hamburger diisi dengan patty yang biasanya diambil dari daging, kemudian sayur-sayuran berupa selada, tomat dan bawang bombay. Sebagai sausnya, burger diberi berbagai jenis saus seperti mayones, saus tomat dan sambal serta mustard', 'Beberapa varian burger juga dilengkapi dengan keju, asinan, serta bahan pelengkap lain seperti sosis dan ham.\r\nAda beberapa versi dari sejarah penciptaan burger, penganan ini awalnya adalah makanan khas bangsa Tartar, yaitu berupa daging cincang yang disantap mentah-mentah dengan perasan jeruk. Bangsa Tartar merupakan bangsa nomaden yang sering melakukan perjalanan jauh menunggang kuda, sehingga daging yang mereka bawa sering menjadi keras dan tak layak konsumsi, maka merekapun mengakalinya dengan meletakkan daging di bawah sadel kuda mereka. setelah melakukan perjalanan jauh ternyata daging tersebut masih hangat dan tidak menjadi dingin, maka daging tersebut langsung disantap dengan tanpa dimasak dan hanya diberi sedikit perasan jeruk nipis.\r\n\r\nHidangan yang terkenal lezat dari Asia Tengah ini kemudian dibawa oleh para pelaut Eropa ke negaranya, tepatnya ke kota Hamburg karena masyarakat di sana pada umumnya mengganggap bahwa mereka adalah bangsa yang beradab, mereka menolak memakan daging yang tak dimasak, maka daging khas Tartar tersebut mereka masak terlebih dahulu sebelum disantap dengan cara dibakar atau digoreng, ternyata masakan ini sangat disukai berbagai orang. Sampai saat ini sebagian orang tetap lebih menyenangi menyantapnya mentah-mentah. Inilah asal mula daging burger.', 'uploads/images/1608652836burger.jpg', 94, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(5, 'Vegetable Salad', 'Main Course', 20000, 'Ingin mengawali minggu ini dengan diet? Salad sayuran gaya Jepang ini patut dicoba. Sayurannya segar renyah dan sausnya pun ringan, asam dan gurih. Mau coba?', 'Selada (bahasa Belanda: Salade; bahasa Inggris: Salad) adalah jenis makanan yang terdiri dari campuran sayur-sayuran dan bahan-bahan makanan siap santap. Selada didefinisikan oleh The Dictionary of American Food and Drink, sebagai makanan yang berupa sayur-sayuran hijau yang disiram dengan berbagai bumbu dan saus, kemudian ditambahkan dengan sayuran atau buah-buahan lain. Menurut sejarah, selada telah dikonsumsi orang Romawi dan Yunani Kuno. Kata selada berasal dari Bahasa Latin \"sal\" yang berarti \"garam\".[2] Garam pada saat itu adalah bumbu yang penting untuk memberi rasa bagi makanan. Kata \"sal\" diserap ke dalam Bahasa Prancis kuno menjadi salade dan di akhir abad ke-14 diserap dalam bahasa Inggris menjadi salad atau sallet,[1] serta diserap ke dalam bahasa Belanda menjadi salade yang kemudian diserap menjadi selada dalam bahasa Indonesia.', 'uploads/images/1608652821salad.jpg', 97, 2, '2020-12-16 23:49:22', '2020-12-29 23:04:57'),
(6, 'Lava Cake', 'Dessert', 15000, 'Molten Chocolate Cake lebih dikenal dengan sebutan lava cake. Pada era tahun 1990-an sempat menjadi idola dessert. Disebut lava cake karena saat kue dibelah maka keluaran cairan saus cokelat, layaknya lahar pada gunung berapi', 'Molten Chocolate Cake lebih dikenal dengan sebutan lava cake. Pada era tahun 1990-an sempat menjadi idola dessert. Disebut lava cake karena saat kue dibelah maka keluaran cairan saus cokelat, layaknya lahar pada gunung berapi.  Selain itu lava cake juga dikenal dengan sebutan kue truffle cokelat. Kue cokelat cair ini menjadi sangat umum, sehingga pada tahun 2013, penulis makanan Mark Bittman pernah menyatakannya sebagai \"the Big Mac of Desserts\".', 'uploads/images/1608652803lava.jpg', 96, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(7, 'Cheese Cake', 'Dessert', 15000, 'Cheesecake adalah kue yang biasanya dimakan sebagai hidangan penutup, dibuat dengan mencampurkan keju yang bertekstur lembut, telur, susu, dan gula. Keju yang umumnya digunakan untuk membuat cheesecake adalah keju krim', 'Cheesecake (bahasa Indonesia: \"kue keju\") adalah kue yang biasanya dimakan sebagai hidangan penutup, dibuat dengan mencampurkan keju yang bertekstur lembut, telur, susu, dan gula. Keju yang umumnya digunakan untuk membuat cheesecake adalah keju krim, tetapi dapat juga menggunakan keju lainnya seperti cottage cheese, ricotta, mascarpone, neufchâtel ataupun keju quark. Cheesecake umumnya diberi hiasan buah segar, krim, dan lapisan gula. Bagian dasar dari cheesecake dapat diisi dengan biskuit graham, kacang yang dihancurkan, ataupun bahan lainnya yang bertekstur rapuh. Walaupun disebut cake atau bolu, cheesecake bukan merupakan sejenis kue bolu, melainkan dapat dikategorikan sebagai pai atau custard yaitu campuran telur dan susu yang dipanggang atau dimasak dengan air panas dan menjadi kental akibat proses koagulasi protein telur. Cheesecake dapat dipanggang ataupun tidak dipanggang. Cheesecake yang menggunakan telur umumnya dipanggang untuk mematangkan telur tersebut. Sementara itu, gelatin digunakan untuk cheesecake yang tidak dipanggang.[7][10] Baik dipanggang ataupun tidak, cheesecake harus disimpan di lemari es terlebih dahulu sebelum disajikan.', 'uploads/images/1608652664cheese.jpg', 95, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(8, 'Pancake Greentea', 'Dessert', 10000, 'Pancake ini memiliki rasa yang unik yaitu matcha greentea, dan memiliki tekstur lembut yang tentunya akan membuatmu ketagihan!', 'Panekuk (bahasa Belanda: pannenkoek, bahasa Inggris: pancake) adalah kue dadar yang dibuat dari terigu, telur ayam, gula dan susu. Bahan-bahan dicampur dengan air membentuk adonan kental yang digoreng di atas wajan datar yang diolesi sedikit minyak. Setelah matang, panekuk bisa dihidangkan sewaktu masih hangat atau setelah dingin. Menjadi salah satu menu sarapan yang paling mudah dibuat, membuat pancake disukai banyak orang. Dan tak hanya menjadi menu sarapan, pancake juga sering dihadangkan sebagai kudapan teman minum teh.\r\nUntuk variasi, biasanya orang menambahkan bahan lain, seperti buah berry, pisang, selai kacang, atau lainnya dalam adonan (bukan sebagai topping). Nah salah satu bahan yang yang bisa kamu coba untuk membuat pancake favorit adalah matcha alias teh hijau.', 'uploads/images/1608652648pancake.jpg', 96, 2, '2020-12-16 23:49:22', '2020-12-29 02:45:03'),
(9, 'Puding Choco', 'Dessert', 10000, 'Puding adalah sebuah hidangan penutup yang umumnya dibuat dari bahan-bahan yang direbus, dikukus, atau dipanggang. Istilah puding juga dapat dipakai untuk berbagai jenis pai yang berisi campuran lemak hewan, daging, atau buah-buahan yang dipanggang, direbus, atau dikukus', 'Puding adalah sebuah hidangan penutup yang umumnya dibuat dari bahan-bahan yang direbus, dikukus, atau dipanggang. Istilah puding juga dapat dipakai untuk berbagai jenis pai yang berisi campuran lemak hewan, daging, atau buah-buahan yang dipanggang, direbus, atau dikukus.\r\nPada umumnya, puding dengan bahan baku susu (yogurt), tepung maizena, tapioka, atau telur dihidangkan setelah didinginkan lebih dulu. Puding seperti ini bisa memiliki rasanya manis dengan menggunakan perisa coklat, karamel, vanila, atau dengan buah-buahan. Puding agar-agar dibuat dengan mencampur agar-agar bersama susu, tepung maizena, atau telur kocok. Puding agar-agar sering dihidangkan dengan saus yang disebut vla. Saat ini sudah terdapat tepung puding instan yang memudahkan orang membuat puding karena hanya perlu dicampur susu atau air lalu dipanaskan diatas kompor.\r\nDi Indonesia terdapat berbagai jenis puding rasa tradisional yang memakai kelapa muda, gula merah, santan, tapai ketan hitam, atau campuran daun suji dan daun pandan. Buah-buahan yang dipakai untuk puding misalnya: jeruk, nanas, sirsak, mangga, atau markisa.\r\nSelain rasanya yang enak, puding juga memiliki beragam manfaat. Bagi anak-anak puding bisa digunakan sebagai cara sehat untuk mendapatkan kalsium yang bersasal dari susu, kandungan vitamin dan mineral, protein serta serat.', 'uploads/images/1608652630puding.jpg', 95, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(10, 'Ice Tea', 'Drink', 8000, 'Teh adalah minuman yang mengandung kafeina, sebuah infusi yang dibuat dengan cara menyeduh daun, pucuk daun, atau tangkai daun yang dikeringkan dari tanaman Camellia sinensis dengan air panas. Teh yang berasal dari tanaman teh dibagi menjadi empat kelompok: teh hitam, teh oolong, teh hijau, dan teh putih', 'Sejarah daun teh telah tersaji sejak beribu tahun lalu. Hikayat es teh manis lahir secara tidak sengaja, pada 1795. Negara bagian Amerika Serikat, South Carolina adalah satu-satunya koloni di Amerika yang memproduksi tanaman teh sebagai tanaman yang dikomersilkan.\r\n\r\nBibit dari perkebunan teh tersebut pertama kali dibawa oleh Andre Michaux, seorang penjelajah dan botanis asal Prancis yang tiba di South Carolina pada 1700-an. Perkembangan teh di AS secara tidak langsung mengembangkan variasi penyajian teh.\r\n\r\nEs teh tercipta pada 1879. Seorang pekerja rumah tangga dari Old Virginia, Marion Cabell Tyree menerbitkan sebuah resep penyajian teh yang cukup unik pada saat itu. Dalam resep tersebut Marion meminta pembaca untuk merebus daun teh hijau dan direndam sepanjang hari. \"Isi gelas dengan es, masukkan dua sendok teh gula pasir, dan tuangkan teh di atas es dan gula,\" tulis Marion.\r\n\r\nResep Marion sukses besar, wilayah selatan Amerika Serikat semakin menjadikan es teh sebagai minuman populer yang sederhana untuk disajikan. Tak mau kalah, wilayah utara Amerika juga mengklaim dirinya sebagai penemu es teh.\r\n\r\nSeorang kepala sekolah memasak di Boston, Mary Lincoln menciptakan resep es teh dingin untuk dituangkan ke dalam gelas yang berisi es batu, lemon, dan dua gula batu. Akan tetapi, es teh baru bisa tersebar di seluruh penjuru dunia setelah dikomersilkan pada 1904 melalui acara World\'s Fair, di St Louis, New York. Festival yang diadakan pada musim panas tersebut menciptakan peluang bagi es teh menjadi idola orang-orang di sana.', 'uploads/images/1608652609esteh.jpg', 89, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(11, 'Americano', 'Drink', 15000, 'Caffè Americano adalah minuman kopi yang dibuat dengan mencampurkan satu seloki espresso dengan air panas.', 'Americano pada dasarnya adalah espresso encer. Tapi akan sangat kasar jika kita menyebutnya seperti itu. Americano layak mendapatkan kehormatannya sama seperti kopi lain di luar sana. Ambil ukuran regular gelas kopi, tambahkan satu atau dua shots espresso lalu tambahkan sisanya dengan segelas air panas, dan ta-da kamu baru saja berhasil membuat dirimu segelas  Americano.\r\n\r\nBagi orang-orang Spanyol maupun Italia nama Americano secara harfiah berarti “American ( Orang Amerika – Amerika )”. Penyebutan nama Kopi tersebut berkolerasi  langsung dengan bagaimana hal itu terjadi, karena pada saat itu banyak yang mengira bahwa orang-orang Amerika ada dibalik penemuan cara meminum kopi.\r\n\r\nKabarnya bahwa keaslian dari Americano bisa kita temukan pada masa perang dunia kedua, ketika tentara Amerika sedang berada di Italia mereka mulai kehabisan stok persediaan kopi mereka sehari-hari, sehingga mereka menambahkan lebih banyak air kedalam kopi espresso mereka untuk menyiasati  rasa seperti kopi yang mereka buat di rumah.\r\n\r\nAkan tetapi tak ada yang tahu akan kepastiannya, walaupun kemungkinan cerita tersebut benar. Banyak juga yang mengatakan bahwa Kopi Americano merupakan ejekan dari orang-orang Italia kepada  orang-orang Amerika yang meminta agar espresso mereka dibuat menjadi lebih encer.\r\n\r\n \r\n\r\nRasa Dari Americano\r\n\r\nMeskipun Kopi Americano mempunyai bahan dasar dari segelas Espresso, jangan berharap  rasanya bisa sama persis seperti Espresso. Karena faktanya bahwa kopi tersebut telah menjadi encer karena dicampurkan dengan Air Panas, rasa kopi Americano tak semenendang seperti kopi Espresso dan malah lebih terasa seperti sepupunya (Long Black Coffee) yang lebih kaya akan rasa, aroma dan lebih tegas layaknya Kopi hitam diluaran sana.\r\n\r\nKopi Espresso biasanya memiliki kekentalan yang lebih tebal daripada Kopi biasa, tetapi ketika menjadi Americano, kekentalan tersebut menjadi berkurang dikarenakan sudah ditambahkan dengan air panas, meskipun Americano tak sekuat Espresso, Kawan kopitree tak perlu ragu akan rasanya karena Americano menawarkan rasa yang kontras dengan kopi seduh lainnya yang sudah ditemukan sejak bertahun-tahun lalu.', 'uploads/images/1608652592americano.jpg', 94, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:46'),
(12, 'Ice Coffee Choco', 'Drink', 15000, 'Ice coffee coklat merupakan sajian kopi yang disajikan bersama es sehingga memiliki rasa dingin segar. Ice coffee terbiat dari kopi yang diseduh kemudian didinginkan kemudian diberi potongan es batu. Rasa ice coffee beragam tergantung jenis kopi apa yang digunakan', 'Cokelat dihasilkan dari kakao (Theobroma cacao) yang diperkirakan mula-mula tumbuh di daerah Amazon utara sampai ke Amerika Tengah. Mungkin sampai ke Chiapas, bagian paling selatan Meksiko. Orang-orang Olmec memanfaatkan pohon dan, mungkin juga, membuat “cokelat” di sepanjang pantai teluk di selatan Meksiko. Dokumentasi paling awal tentang cokelat ditemukan pada penggunaannya di sebuah situs pengolahan cokelat di Puerto Escondido, Honduras sekitar 1100 -1400 tahun SM. Residu yang diperoleh dari tangki-tangki pengolahan ini mengindikasikan bahwa awalnya penggunaan kakao tidak diperuntukkan untuk membuat minuman saja, tetapi selaput putih yang terdapat pada biji kokoa lebih condong digunakan sebagai sumber gula untuk minuman beralkohol.\r\n\r\nResidu cokelat yang ditemukan pada tembikar yang digunakan oleh suku Maya kuno di Río Azul, Guatemala Utara, menunjukkan bahwa Suku Maya meminum cokelat di sekitar tahun 400 SM. Peradaban pertama yang mendiami daerah Meso-Amerika itu mengenal pohon “kakawa” yang buahnya dikonsumsi sebagai minuman xocolātl yang berarti minuman pahit. Menurut mereka, minuman ini perlu dikonsumsi setiap hari, entah untuk alasan apa. Namun, tampaknya cokelat juga menjadi simbol kemakmuran.\r\n\r\nCara menyajikannya pun tak sembarangan. Dengan memegang wadah cairan ini setinggi dada dan menuangkan ke wadah lain di tanah, penyaji yang ahli dapat membuat busa tebal, bagian yang membuat minuman itu begitu bernilai. Busa ini sebenarnya dihasilkan oleh lemak kokoa (cocoa butter) namun kadang-kadang ditambahkan juga busa tambahan. Orang Meso-Amerika tampaknya memiliki kebiasaan penting minum dan makan bubur yang mengandung cokelat.\r\n\r\nBiji dari pohon kakao ini sendiri sangat pahit dan harus difermentasi agar rasanya dapat diperoleh. Setelah dipanggang dan dibubukkan hasilnya adalah cokelat atau kokoa. Diperkirakan kebiasaan minum cokelat suku Maya dimulai sekitar tahun 450 SM - 500 SM. Konon, konsumsi cokelat dianggap sebagai simbol status penting pada masa itu. Suku Maya mengonsumsi cokelat dalam bentuk cairan berbuih ditaburi lada merah, vanila, atau rempah-rempah lain. Minuman Xocoatl juga dipercaya sebagai pencegah lelah, sebuah kepercayaan yang mungkin disebabkan dari kandungan theobromin di dalamnya.\r\n\r\nEfek psikologis yang terjadi saat menikmati cokelat dikarenakan titik leleh lemak kokoa ini terletak sedikit di bawah suhu normal tubuh manusia. Sebagai ilustrasi, bila anda memakan sepotong cokelat, lemak dari cokelat tersebut akan lumer di dalam mulut. Lumernya lemak kokoa menimbulkan rasa lembut yang khas dimulut.', 'uploads/images/1608652516coffee.jpg', 95, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:47'),
(13, 'Fanta Float', 'Drink', 15000, 'Es krim soda atau float ini terdiri dari es krim pada minuman ringan atau campuran sirup dan air berkarbonasi', 'Es krim soda atau float (Amerika Serikat, Britania Raya, Kanada, Selandia Baru, Afrika Selatan dan Asia Timur), coke float (Britania Raya, Kanada, Selandia Baru) atau Snowball (Selandia Baru), atau spider (Australia dan Selandia Baru), adalah sebuah minuman yang terdiri dari es krim pada minuman ringan atau campuran sirup dan air berkarbonasi.\r\n\r\nBeberapa restoran mungkin mempunyai cara-cara yang unik dalam pembuatannya. Sebagai contoh terdapat sebuah restoran yang menjual soda gembira dengan memakai bahan Fanta, Coca-Cola,dan Sprite menjadi pengganti soda biasa. Contoh lain ada yang tidak memakai sirup dan menggantinya dengan perasa buah-buahan atau bahkan buah asli.\r\n\r\nSelain cara pembuatannya mudah, soda gembira banyak diminati oleh anak muda. Oleh karena itu, banyak yang menjual minuman ini. Mulai dari warung, sampai restoran. Sampai hari ini pun, soda gembira masih banyak peminatnya.', 'uploads/images/1608652476float.jpg', 94, 2, '2020-12-16 23:49:22', '2020-12-30 00:48:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transcations`
--

CREATE TABLE `transcations` (
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pay` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transcations`
--

INSERT INTO `transcations` (`invoices_number`, `user_id`, `pay`, `total`, `created_at`, `updated_at`) VALUES
('INV-000001', 2, 50000, 50000, '2020-12-28 23:44:04', '2020-12-28 23:44:04'),
('INV-000002', 2, 30000, 20000, '2020-12-28 23:44:20', '2020-12-28 23:44:20'),
('INV-000003', 1, 20000, 15000, '2020-12-29 00:01:28', '2020-12-29 00:01:28'),
('INV-000004', 14, 50000, 40000, '2020-12-29 01:25:17', '2020-12-29 01:25:17'),
('INV-000005', 14, 15000, 15000, '2020-12-29 01:46:18', '2020-12-29 01:46:18'),
('INV-000006', 14, 60000, 55000, '2020-12-29 02:16:26', '2020-12-29 02:16:26'),
('INV-000007', 1, 100000, 78000, '2020-12-29 02:20:15', '2020-12-29 02:20:15'),
('INV-000008', 14, 300000, 258000, '2020-12-29 02:42:38', '2020-12-29 02:42:38'),
('INV-000009', 1, 320000, 314000, '2020-12-29 02:45:03', '2020-12-29 02:45:03'),
('INV-000010', 2, 55000, 55000, '2020-12-29 03:04:58', '2020-12-29 03:04:58'),
('INV-000011', 2, 130000, 121000, '2020-12-29 23:04:57', '2020-12-29 23:04:57'),
('INV-000012', 15, 250000, 202000, '2020-12-30 00:48:47', '2020-12-30 00:48:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `profile_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `roles` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `profile_image`, `roles`) VALUES
(1, 'sahira', 'sahirahrana@gmail.com', NULL, '$2y$10$pYDg6xBXbMm2i7TJHJnsXuhjUf1k2wPmpqIzFxZ81QisG27FVAxy2', NULL, '2020-12-16 20:31:39', '2020-12-28 22:12:19', '1609218739.jpeg', 'User'),
(2, 'administrator', 'admin@gmail.com', NULL, '$2y$10$yomTe6U57raFyaeR6dTqG.0anNEDJYrTXJQhCWOS3dED6zAXwd7iu', NULL, '2020-12-16 21:51:36', '2020-12-16 21:51:36', '2147884848.jpg', 'Administrator'),
(3, 'vio', 'vio@gmail.com', NULL, '$2y$10$/rGUMVR8PBjLRroSTQuS0eyhhmhjhl5pi3k3HvlSkY7TqciWFHsAu', NULL, '2020-12-25 20:30:37', '2020-12-28 22:11:02', '1609218662.png', 'User'),
(4, 'rana', 'rana@gmail.com', NULL, '$2y$10$u8G3WKdkJZFX1VUHasM4leuCHlHG4Y..3S8TUZNssMFONa14i1vHe', NULL, '2020-12-26 00:05:55', '2020-12-28 22:10:45', '1609218645.jpeg', 'User'),
(5, 'gita', 'gita@gmail.com', NULL, '$2y$10$TQ9Kj94q3lx5mJFdk1yl1eX2Z2TLNzBIMqnSXuGRNrJdv4rAZCiFi', NULL, '2020-12-26 00:07:10', '2020-12-28 22:10:27', '1609218627.png', 'User'),
(6, 'cici', 'cici@gmail.com', NULL, '$2y$10$reZYJf4S2LJmnhEP98eNXeZ9blv1t/khqGKB7WvCkJ1o4gB6ZBulu', NULL, '2020-12-26 00:11:57', '2020-12-28 22:10:09', '1609218609.png', 'User'),
(14, 'lala', 'lala@gmail.com', NULL, '$2y$10$GNJHtpKWWt2otnWnsONLzefElP5smsQWIj6vjAdPF73n09gM9Hf56', NULL, '2020-12-28 23:18:37', '2020-12-28 23:18:37', '1609222716.png', 'User'),
(15, 'bambam', 'bambam@gmail.com', NULL, '$2y$10$PrY.ZJPP2VRCOKD4XyO/z.kOiTBi77tRUAmi67rfm3rH6dhGDJF2y', NULL, '2020-12-28 23:20:03', '2020-12-28 23:20:03', '1609222802.png', 'User'),
(16, 'viona', 'vionaaa@gmail.com', NULL, '$2y$10$vAZstEsyO4Ej6Yg7/VSlkeVx/nXn8R9aKhYfZJbspYmxenGHDKVlS', NULL, '2020-12-28 23:22:17', '2020-12-28 23:22:17', '1609222937.png', 'User'),
(17, 'pipiw', 'pipiw@gmail.com', NULL, '$2y$10$Um7ti0079w7c2h1q7hg1jus.vlHasXI6s6R/Y7oxFSmGfDeFKy7HO', NULL, '2020-12-30 00:52:45', '2020-12-30 00:52:45', '1609314765.jpeg', 'User');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history_products`
--
ALTER TABLE `history_products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product_transation`
--
ALTER TABLE `product_transation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `restos`
--
ALTER TABLE `restos`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `history_products`
--
ALTER TABLE `history_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `product_transation`
--
ALTER TABLE `product_transation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `reservasi`
--
ALTER TABLE `reservasi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `restos`
--
ALTER TABLE `restos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
