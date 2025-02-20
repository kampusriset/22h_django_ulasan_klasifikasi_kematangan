-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2025 pada 00.38
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbweb_cnn_buah_jambu_mete`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add uploaded image', 7, 'add_uploadedimage'),
(26, 'Can change uploaded image', 7, 'change_uploadedimage'),
(27, 'Can delete uploaded image', 7, 'delete_uploadedimage'),
(28, 'Can view uploaded image', 7, 'view_uploadedimage'),
(29, 'Can add komentar', 8, 'add_komentar'),
(30, 'Can change komentar', 8, 'change_komentar'),
(31, 'Can delete komentar', 8, 'delete_komentar'),
(32, 'Can view komentar', 8, 'view_komentar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$YQpgq9rDQQkETyFpsTHx9H$g4nIZktITaKsHOAIpPPCobsGrY8xJyI4OT+eIFkfhw0=', '2025-02-18 23:32:06.334951', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2025-01-12 03:01:28.069280'),
(16, 'pbkdf2_sha256$390000$IGRpYvooPXlKjUosnySxBh$xC5I6Ej4fXdzBnk6nkWVEbHLbn5VqBkm1FlFI86XK7o=', '2025-02-15 00:45:29.285494', 0, 'fito427', 'Fito', 'Patria', 'fito427@email.com', 0, 1, '2025-01-21 14:21:01.056258'),
(17, 'pbkdf2_sha256$390000$C5xAMocPSEYs9rZlKI1Ext$Ku3vHWxo4uayydYWioR2NfE7gfxxoqlLDjkMX4z4hw8=', '2025-01-21 14:33:09.506723', 0, 'havid424', 'Havid Danggo', 'Pamungkas', 'havid424@email.com', 0, 1, '2025-01-21 14:21:37.334728'),
(18, 'pbkdf2_sha256$390000$45AgsBNlc8tcFcpIKwuu2i$+ZjtS2FCqyuuRkuJFVJtMBZH2rcM6oLpGNfzvmawxOk=', '2025-01-21 14:33:55.477697', 0, 'mukhlis428', 'Raflesia', 'Mukhlis Juliyanto', 'mukhlis428@gmail.com', 0, 1, '2025-01-21 14:25:33.125672'),
(19, 'pbkdf2_sha256$390000$NN37jK6FklY2VqHudfPG3L$LOu/Jh2eecK1DSwNHGFdfrKRu2D5G6A/Wr/q/H9X23M=', '2025-01-21 14:34:44.439851', 0, 'yosafat441', 'Yosafat', 'Gerrimandaril', 'yosafat441@email.com', 0, 1, '2025-01-21 14:27:53.284027');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cnn_buah_jambu_mete_komentar`
--

CREATE TABLE `cnn_buah_jambu_mete_komentar` (
  `id` int(11) NOT NULL,
  `rating` varchar(1) NOT NULL,
  `komen` longtext NOT NULL,
  `ditambahkan` datetime(6) NOT NULL,
  `diupdate` datetime(6) NOT NULL,
  `pengguna` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `cnn_buah_jambu_mete_komentar`
--

INSERT INTO `cnn_buah_jambu_mete_komentar` (`id`, `rating`, `komen`, `ditambahkan`, `diupdate`, `pengguna`) VALUES
(20, '5', 'Website ini sangat berguna bagi para petani atau produsen jambu mete yang ingin memeriksa kematangan buah secara cepat dan akurat. Dengan menggunakan teknologi otomatis, proses pengecekan kematangan menjadi lebih efisien dan mengurangi kesalahan manusia. Desain website sederhana dan mudah digunakan, memungkinkan pengguna untuk dengan cepat mengunggah gambar buah dan mendapatkan hasil analisis kematangan.', '2025-01-20 04:12:07.950556', '2025-01-20 04:12:07.950556', 'drgp'),
(22, '3', 'Test satu dua', '2025-01-21 14:30:16.939492', '2025-01-21 14:30:41.149114', 'admin'),
(23, '5', 'Buat petani atau pengusaha jambu mete, wajib coba! Ini tools yang bakal ngehemat banyak waktu', '2025-01-21 14:32:44.093531', '2025-01-21 14:32:44.093531', 'fito427'),
(24, '5', 'Sistem otomatisnya sangat akurat. Gak perlu lagi ribet-ribet tes manual untuk kematangan buah.', '2025-01-21 14:33:28.970853', '2025-01-21 14:33:28.970853', 'havid424'),
(25, '5', 'Revolusioner! Website ini bener-bener bikin klasifikasi kematangan buah jadi lebih simpel dan tepat.', '2025-01-21 14:34:14.162873', '2025-01-21 14:34:14.162873', 'mukhlis428'),
(26, '5', 'Prosesnya cepat, akurat, dan gampang digunakan. Gak perlu jadi ahli teknologi untuk pake ini.', '2025-01-21 14:35:05.151234', '2025-01-21 14:35:05.151234', 'yosafat441'),
(28, '5', 'hebat', '2025-01-28 14:19:33.236414', '2025-01-28 14:19:33.236414', 'fito427');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cnn_buah_jambu_mete_uploadedimage`
--

CREATE TABLE `cnn_buah_jambu_mete_uploadedimage` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2025-01-18 00:59:33.644404', '1', '1.5', 2, '[{\"changed\": {\"fields\": [\"Pengguna\"]}}]', 8, 1),
(2, '2025-01-18 01:15:56.093396', '2', '2.kkiiki', 1, '[{\"added\": {}}]', 8, 1),
(3, '2025-01-18 01:25:09.451482', '4', '4.admin', 3, '', 8, 1),
(4, '2025-01-18 01:25:09.451482', '3', '3.admin', 3, '', 8, 1),
(5, '2025-01-18 01:25:09.451482', '2', '2.kkiiki', 3, '', 8, 1),
(6, '2025-01-18 01:25:09.467483', '1', '1.admin', 3, '', 8, 1),
(7, '2025-01-18 10:23:22.651368', '8', '8.AnonymousUser', 3, '', 8, 1),
(8, '2025-01-18 10:40:40.411162', '2', 'fito', 1, '[{\"added\": {}}]', 4, 1),
(9, '2025-01-18 10:44:18.004223', '12', '12.fito', 3, '', 8, 1),
(10, '2025-01-19 05:01:32.897566', '6', 'axvffg', 3, '', 4, 1),
(11, '2025-01-19 05:01:32.902563', '3', 'babanghapid', 3, '', 4, 1),
(12, '2025-01-19 05:01:32.906561', '5', 'mukhlis', 3, '', 4, 1),
(13, '2025-01-19 05:01:32.909558', '8', 'user', 3, '', 4, 1),
(14, '2025-01-19 05:01:32.917552', '7', 'vbnm', 3, '', 4, 1),
(15, '2025-01-19 05:01:32.921549', '4', 'yoyos', 3, '', 4, 1),
(16, '2025-01-19 05:13:38.466294', '9', 'havid', 1, '[{\"added\": {}}]', 4, 1),
(17, '2025-01-19 05:14:19.918462', '9', 'havid', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\", \"Email address\"]}}]', 4, 1),
(18, '2025-01-19 05:20:16.387979', '9', 'havid', 3, '', 4, 1),
(19, '2025-01-19 05:27:04.593953', '11', 'yoyoskiwkiw', 3, '', 4, 1),
(20, '2025-01-19 05:29:15.109314', '12', 'yoshaaaa', 3, '', 4, 1),
(21, '2025-01-20 04:11:19.926406', '14', 'drgp', 1, '[{\"added\": {}}]', 4, 1),
(22, '2025-01-21 14:19:19.580049', '14', 'drgp', 3, '', 4, 1),
(23, '2025-01-21 14:19:19.582947', '2', 'fito', 3, '', 4, 1),
(24, '2025-01-21 14:19:19.585945', '13', 'fitt', 3, '', 4, 1),
(25, '2025-01-21 14:19:19.588456', '15', 'haviddd', 3, '', 4, 1),
(26, '2025-01-21 14:19:19.590560', '10', 'yoyos', 3, '', 4, 1),
(27, '2025-02-18 23:32:34.999166', '82', 'UploadedImage object (82)', 3, '', 7, 1),
(28, '2025-02-18 23:32:35.005792', '81', 'UploadedImage object (81)', 3, '', 7, 1),
(29, '2025-02-18 23:32:35.010471', '80', 'UploadedImage object (80)', 3, '', 7, 1),
(30, '2025-02-18 23:32:35.012349', '79', 'UploadedImage object (79)', 3, '', 7, 1),
(31, '2025-02-18 23:32:35.014767', '78', 'UploadedImage object (78)', 3, '', 7, 1),
(32, '2025-02-18 23:32:35.016896', '77', 'UploadedImage object (77)', 3, '', 7, 1),
(33, '2025-02-18 23:32:35.024912', '76', 'UploadedImage object (76)', 3, '', 7, 1),
(34, '2025-02-18 23:32:35.026911', '75', 'UploadedImage object (75)', 3, '', 7, 1),
(35, '2025-02-18 23:32:35.027687', '74', 'UploadedImage object (74)', 3, '', 7, 1),
(36, '2025-02-18 23:32:35.029717', '73', 'UploadedImage object (73)', 3, '', 7, 1),
(37, '2025-02-18 23:32:35.030864', '72', 'UploadedImage object (72)', 3, '', 7, 1),
(38, '2025-02-18 23:32:35.032654', '71', 'UploadedImage object (71)', 3, '', 7, 1),
(39, '2025-02-18 23:32:35.033963', '70', 'UploadedImage object (70)', 3, '', 7, 1),
(40, '2025-02-18 23:32:35.035296', '69', 'UploadedImage object (69)', 3, '', 7, 1),
(41, '2025-02-18 23:32:35.036655', '68', 'UploadedImage object (68)', 3, '', 7, 1),
(42, '2025-02-18 23:32:35.037659', '67', 'UploadedImage object (67)', 3, '', 7, 1),
(43, '2025-02-18 23:32:35.038673', '66', 'UploadedImage object (66)', 3, '', 7, 1),
(44, '2025-02-18 23:32:35.042655', '65', 'UploadedImage object (65)', 3, '', 7, 1),
(45, '2025-02-18 23:32:35.048461', '64', 'UploadedImage object (64)', 3, '', 7, 1),
(46, '2025-02-18 23:32:35.064718', '63', 'UploadedImage object (63)', 3, '', 7, 1),
(47, '2025-02-18 23:32:35.066718', '62', 'UploadedImage object (62)', 3, '', 7, 1),
(48, '2025-02-18 23:32:35.067733', '61', 'UploadedImage object (61)', 3, '', 7, 1),
(49, '2025-02-18 23:32:35.069783', '60', 'UploadedImage object (60)', 3, '', 7, 1),
(50, '2025-02-18 23:32:35.072239', '59', 'UploadedImage object (59)', 3, '', 7, 1),
(51, '2025-02-18 23:32:35.074251', '58', 'UploadedImage object (58)', 3, '', 7, 1),
(52, '2025-02-18 23:32:35.076250', '57', 'UploadedImage object (57)', 3, '', 7, 1),
(53, '2025-02-18 23:32:35.078583', '56', 'UploadedImage object (56)', 3, '', 7, 1),
(54, '2025-02-18 23:32:35.080428', '55', 'UploadedImage object (55)', 3, '', 7, 1),
(55, '2025-02-18 23:32:35.082320', '54', 'UploadedImage object (54)', 3, '', 7, 1),
(56, '2025-02-18 23:32:35.084221', '53', 'UploadedImage object (53)', 3, '', 7, 1),
(57, '2025-02-18 23:32:35.085262', '52', 'UploadedImage object (52)', 3, '', 7, 1),
(58, '2025-02-18 23:32:35.087362', '51', 'UploadedImage object (51)', 3, '', 7, 1),
(59, '2025-02-18 23:32:35.089292', '50', 'UploadedImage object (50)', 3, '', 7, 1),
(60, '2025-02-18 23:32:35.091290', '49', 'UploadedImage object (49)', 3, '', 7, 1),
(61, '2025-02-18 23:32:35.093026', '48', 'UploadedImage object (48)', 3, '', 7, 1),
(62, '2025-02-18 23:32:35.094902', '47', 'UploadedImage object (47)', 3, '', 7, 1),
(63, '2025-02-18 23:32:35.096701', '46', 'UploadedImage object (46)', 3, '', 7, 1),
(64, '2025-02-18 23:32:35.098489', '45', 'UploadedImage object (45)', 3, '', 7, 1),
(65, '2025-02-18 23:32:35.099854', '44', 'UploadedImage object (44)', 3, '', 7, 1),
(66, '2025-02-18 23:32:35.100856', '43', 'UploadedImage object (43)', 3, '', 7, 1),
(67, '2025-02-18 23:32:35.102827', '42', 'UploadedImage object (42)', 3, '', 7, 1),
(68, '2025-02-18 23:32:35.104083', '41', 'UploadedImage object (41)', 3, '', 7, 1),
(69, '2025-02-18 23:32:35.105462', '40', 'UploadedImage object (40)', 3, '', 7, 1),
(70, '2025-02-18 23:32:35.121694', '39', 'UploadedImage object (39)', 3, '', 7, 1),
(71, '2025-02-18 23:32:35.123697', '38', 'UploadedImage object (38)', 3, '', 7, 1),
(72, '2025-02-18 23:32:35.125908', '37', 'UploadedImage object (37)', 3, '', 7, 1),
(73, '2025-02-18 23:32:35.127973', '36', 'UploadedImage object (36)', 3, '', 7, 1),
(74, '2025-02-18 23:32:35.129007', '35', 'UploadedImage object (35)', 3, '', 7, 1),
(75, '2025-02-18 23:32:35.131335', '34', 'UploadedImage object (34)', 3, '', 7, 1),
(76, '2025-02-18 23:32:35.132970', '33', 'UploadedImage object (33)', 3, '', 7, 1),
(77, '2025-02-18 23:32:35.134419', '32', 'UploadedImage object (32)', 3, '', 7, 1),
(78, '2025-02-18 23:32:35.135829', '31', 'UploadedImage object (31)', 3, '', 7, 1),
(79, '2025-02-18 23:32:35.137159', '30', 'UploadedImage object (30)', 3, '', 7, 1),
(80, '2025-02-18 23:32:35.139010', '29', 'UploadedImage object (29)', 3, '', 7, 1),
(81, '2025-02-18 23:32:35.141008', '28', 'UploadedImage object (28)', 3, '', 7, 1),
(82, '2025-02-18 23:32:35.142743', '27', 'UploadedImage object (27)', 3, '', 7, 1),
(83, '2025-02-18 23:32:35.144412', '26', 'UploadedImage object (26)', 3, '', 7, 1),
(84, '2025-02-18 23:32:35.145871', '25', 'UploadedImage object (25)', 3, '', 7, 1),
(85, '2025-02-18 23:32:35.146873', '24', 'UploadedImage object (24)', 3, '', 7, 1),
(86, '2025-02-18 23:32:35.148875', '23', 'UploadedImage object (23)', 3, '', 7, 1),
(87, '2025-02-18 23:32:35.150278', '22', 'UploadedImage object (22)', 3, '', 7, 1),
(88, '2025-02-18 23:32:35.151297', '21', 'UploadedImage object (21)', 3, '', 7, 1),
(89, '2025-02-18 23:32:35.153590', '20', 'UploadedImage object (20)', 3, '', 7, 1),
(90, '2025-02-18 23:32:35.155083', '19', 'UploadedImage object (19)', 3, '', 7, 1),
(91, '2025-02-18 23:32:35.157085', '18', 'UploadedImage object (18)', 3, '', 7, 1),
(92, '2025-02-18 23:32:35.159084', '17', 'UploadedImage object (17)', 3, '', 7, 1),
(93, '2025-02-18 23:32:35.160660', '16', 'UploadedImage object (16)', 3, '', 7, 1),
(94, '2025-02-18 23:32:35.176092', '15', 'UploadedImage object (15)', 3, '', 7, 1),
(95, '2025-02-18 23:32:35.177444', '14', 'UploadedImage object (14)', 3, '', 7, 1),
(96, '2025-02-18 23:32:35.179471', '13', 'UploadedImage object (13)', 3, '', 7, 1),
(97, '2025-02-18 23:32:35.181472', '12', 'UploadedImage object (12)', 3, '', 7, 1),
(98, '2025-02-18 23:32:35.183180', '11', 'UploadedImage object (11)', 3, '', 7, 1),
(99, '2025-02-18 23:32:35.184779', '10', 'UploadedImage object (10)', 3, '', 7, 1),
(100, '2025-02-18 23:32:35.186337', '9', 'UploadedImage object (9)', 3, '', 7, 1),
(101, '2025-02-18 23:32:35.187340', '8', 'UploadedImage object (8)', 3, '', 7, 1),
(102, '2025-02-18 23:32:35.189338', '7', 'UploadedImage object (7)', 3, '', 7, 1),
(103, '2025-02-18 23:32:35.192336', '6', 'UploadedImage object (6)', 3, '', 7, 1),
(104, '2025-02-18 23:32:35.193641', '5', 'UploadedImage object (5)', 3, '', 7, 1),
(105, '2025-02-18 23:32:35.195890', '4', 'UploadedImage object (4)', 3, '', 7, 1),
(106, '2025-02-18 23:32:35.197549', '3', 'UploadedImage object (3)', 3, '', 7, 1),
(107, '2025-02-18 23:32:35.198441', '2', 'UploadedImage object (2)', 3, '', 7, 1),
(108, '2025-02-18 23:32:35.200515', '1', 'UploadedImage object (1)', 3, '', 7, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'cnn_buah_jambu_mete', 'komentar'),
(7, 'cnn_buah_jambu_mete', 'uploadedimage'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-01-12 03:00:50.027237'),
(2, 'auth', '0001_initial', '2025-01-12 03:00:50.558440'),
(3, 'admin', '0001_initial', '2025-01-12 03:00:50.669093'),
(4, 'admin', '0002_logentry_remove_auto_add', '2025-01-12 03:00:50.681198'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2025-01-12 03:00:50.698188'),
(6, 'contenttypes', '0002_remove_content_type_name', '2025-01-12 03:00:50.767285'),
(7, 'auth', '0002_alter_permission_name_max_length', '2025-01-12 03:00:50.834372'),
(8, 'auth', '0003_alter_user_email_max_length', '2025-01-12 03:00:50.859360'),
(9, 'auth', '0004_alter_user_username_opts', '2025-01-12 03:00:50.871353'),
(10, 'auth', '0005_alter_user_last_login_null', '2025-01-12 03:00:50.962841'),
(11, 'auth', '0006_require_contenttypes_0002', '2025-01-12 03:00:50.974831'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2025-01-12 03:00:51.092526'),
(13, 'auth', '0008_alter_user_username_max_length', '2025-01-12 03:00:51.128477'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2025-01-12 03:00:51.147599'),
(15, 'auth', '0010_alter_group_name_max_length', '2025-01-12 03:00:51.166692'),
(16, 'auth', '0011_update_proxy_permissions', '2025-01-12 03:00:51.179684'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2025-01-12 03:00:51.196030'),
(18, 'sessions', '0001_initial', '2025-01-12 03:00:51.231440'),
(19, 'cnn_buah_jambu_mete', '0001_initial', '2025-01-12 03:13:19.408315'),
(20, 'cnn_buah_jambu_mete', '0002_komentar', '2025-01-17 23:59:31.277622'),
(21, 'cnn_buah_jambu_mete', '0003_rename_komentar_komentar_komen_alter_komentar_id', '2025-01-18 00:32:50.222535'),
(22, 'cnn_buah_jambu_mete', '0004_komentar_pengguna', '2025-01-18 00:59:03.441047');

-- --------------------------------------------------------

--
-- Struktur dari tabel `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0aww5ybhcpj113fcsratlhlhx5iz09ka', '.eJxVjEEOwiAQRe_C2hAoIwwu3XuGZmBGqRpISrsy3l2bdKHb_977LzXSupRx7TKPE6uTsl4dfsdE-SF1I3ynems6t7rMU9Kbonfa9aWxPM-7-3dQqJdvPYgR6yBGypGSx5AgcGDAyN4zpgQO6ShXAfFgszNA5MigtTgEF7J6fwAMgjfg:1tj5fG:FlJACizhOaOgqXyWxLOKg2bO2y86dymFTChxUJiDky4', '2025-03-01 00:04:10.374336'),
('0zj2b6mdv0xgqhgudx7iojuh6t9zfa4a', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZ62U:Doi4v5Z-NF5_NsasRWddNqBZVWJt_jbQjPZxWHZQZPw', '2025-02-01 10:26:50.857894'),
('25cgx6nypj9w6hwm57fwbeofgsfhbek9', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taCW7:S6occ7oHpugKuDUB8UXIFfXkJ7YRxHqT7wmnKWZVOoc', '2025-02-04 11:33:59.034336'),
('2jjiic9mbsxqqejy4ddo92ne6z93c4va', '.eJxVjEEOwiAQRe_C2hCmU6bg0r1nIDNApWpoUtqV8e7apAvd_vfef6nA21rC1vISpqTOCkidfkfh-Mh1J-nO9TbrONd1mUTvij5o09c55eflcP8OCrfyrckZi0y28x372BOZBJkG4ywjgKeEo2Px4tgQogUWgWH0hgCTA-zV-wPUZzaw:1tj65s:DxlEW3S0Fmo4v4PwTYKdb3mufaBDp01GD6cJoWfq1sY', '2025-03-01 00:31:40.954837'),
('32xhb79cd56q87ynemv73klodxg3ffpz', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZz86:xtQe9Br6yfmMB9xC_sQM41LxDXxvnVzpzj7JYEIh8zY', '2025-02-03 21:16:18.046978'),
('3j02xcd65p3ce9zdivzswtibmeigid45', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taChn:xdQuSsAn7Ef6IreZDke7DwsWFTBFzEcMBa46TNZeBs8', '2025-02-04 11:46:03.745761'),
('3nggap0d2ntg14wa7odxfr0oick2clo1', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZzEW:03KBLKszvMe4KDGBpCRghesMAxCn2ponwLKnc9kSR_o', '2025-02-03 21:22:56.686755'),
('3rbmymq8h9yc0sfighlcowjw9vdw184i', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tYwhB:AFDeeP5jWCqSNr7QWKfiBz0jZ_jaz8EZnlssnNFhi6M', '2025-02-01 00:28:13.292393'),
('638tugepk5nonpw9bmbi735rtgsmkcod', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZVNl:aA6Ihxye8OgbhIyXj5JSfASyi8eRFYoG8U-9Mz07xvE', '2025-02-02 13:30:29.203807'),
('7c2ceu45p06u46zpr79q75bg13ag7pte', '.eJxVjEEOwiAQRe_C2pABgYJL9z0DGWZAqoYmpV0Z765NutDtf-_9l4i4rTVuPS9xYnERyojT75iQHrnthO_YbrOkua3LlOSuyIN2Oc6cn9fD_Tuo2Ou3LughecWBIRTLBIgDKGeGAC6BR-d18U5Zj5qJ2SZ0YIrOZIDK2Wrx_gAMXzgp:1ta0uI:Pc_WTRwshYW-Pbr0qjZHHWNceZU38QVoKIvqYEMMDlU', '2025-02-03 23:10:10.650154'),
('839xqxnklvky0272ejo7e9kng5qzoom5', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tj6rv:8tJxbjWbbq-NWLK_SUfDREgWw4E0ObKfCQqY8Xlb_fc', '2025-03-01 01:21:19.800392'),
('8dwio1scj8nvxi8bgrufys53f8rsfup2', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tYxDQ:kHHRh7dE_OoCuctgoqQYP-9pCZvnSdys65DyJxMLtqk', '2025-02-01 01:01:32.068637'),
('8gveno76gw9lwpvd3nt77uw9swuwnpcy', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ6Tt:y6zZLz7lhNaRUkhgz--XEhRoz5pZ-Zj-gVgXTT8r94M', '2025-02-01 10:55:09.196287'),
('a8wsjmp3voipbf1yc6ws8x2ofgxj3hif', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tYxOM:UgvDv2gVvLQNXgDIaq0zSyKVE2vrCc2CUTcMG5PBOlA', '2025-02-01 01:12:50.514866'),
('cxqzfr7xe5nwxo8jou7llppqbdqjf1sb', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZzN1:RI51PovxxyU0d4ANladP3lR1HJ0vqnC3Uuj4b8X0OUQ', '2025-02-03 21:31:43.633978'),
('d3meejbrh0n8009j1fi1mtra01cdp7du', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZzfI:DzSsdEzZBH2e-zxNar6u-if1K4Nyp3UvSAvMDIf8WfY', '2025-02-03 21:50:36.182740'),
('ejsuf3ai5kdnrwj1quk738j5qresy6d1', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZiCL:S7hqUWmCMioDCBolm2ndXtY1MglyKTYrrwSn7aBdvr8', '2025-02-03 03:11:33.227939'),
('el9lzmpv4abnr9nx84fogqk25tf4lyps', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1taE7l:2WIan1FEZTSbLvR7uu3fpv4x1ELa1B0crcrvz8fMals', '2025-02-04 13:16:57.162386'),
('eoy16i86fg06p1obe778ewmh3z5hs4fs', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1ta12u:5ZuvP3XV-tHhPK-MfjA2pSJ5ttBpQL1qPGsW2IwTLDU', '2025-02-03 23:19:04.821783'),
('fqezh0zae1bnvva3h9ssrnrzjxsfx1z8', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZA63:cr0KyY0aW3KB3S_UehLGAMtDIClSGEAdbhx-TsYq1B0', '2025-02-01 14:46:47.536981'),
('ge11r02ybqb6gv07qi0rn2jucrn19gdb', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tj6ZP:GJ3bP_a_nA-nQtDq1t-ufBMRW9GGYwmvXChxzDdVxMA', '2025-03-01 01:02:11.945838'),
('h4d15vgr98ynaiifxlmu1b1r3ac2znah', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ6hI:wb9poFnYl1QGJOfEbroEpBiRa5ZgfVI8Sm5ciEZZi9w', '2025-02-01 11:09:00.752419'),
('hgjxdy5obz5cqg2yuwy5010i4xksj92a', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taDLJ:p-NsRGHGkXCvnIRex9BZWhsAvxzVPTed016Dph9DPhE', '2025-02-04 12:26:53.705058'),
('im47gbsmuk2g6gp27b9t9xse3zi9b63l', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ6X3:HWKq1pALBeVvXw4kHDe6tivNuQfWYV63Xh9yhQx-ChY', '2025-02-01 10:58:25.089814'),
('kj9z7ye4wf3zjfkb1gtworn2b7hxf7kt', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZztu:CJLd1y9x0m33j6GK5pa6acf2Mmb3CC6exISgEaQ8WY8', '2025-02-03 22:05:42.065465'),
('lo483juu2v66l3rv5tjbhkdc8yqc614k', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZLhp:8GMjnxO0uIAosPIhn5iAisq_wPyPpzUMwzMFTBGFApg', '2025-02-02 03:10:33.310455'),
('m20cfc6b9m7y7u9pkoejscks42rziaza', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taDVC:1Kgqqc6o38N2MVEfw-2dcD1NMUEY5_Rdj6EEEP_azIg', '2025-02-04 12:37:06.213473'),
('moboergku57foqltcrv4vcuaardpsz9t', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taCA1:ceUHv_iEqR9hHWh4oNN9DO5Zr4kEcFdumrcM46FP7CA', '2025-02-04 11:11:09.837404'),
('mxj16i61g756yl2ruv94x8q3l4ta2ruz', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taDHu:8fbpVo11owymD15O-Wy7fI04dG-e-ihUivKqFjE5C-4', '2025-02-04 12:23:22.037967'),
('n2qo6hrf1d3d517saq90847gu5k3hfwy', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1ta1Od:7oqljsBRtJlppFSZbRyZk4wa5e6x_0Nb0JDaAcpdTgQ', '2025-02-03 23:41:31.084605'),
('nfeinee67ybdgjvjaj6tf71jpa7krw2g', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tj6Pe:ZHWBoPm91uC74_XFS6vE-UTwlyuSZcjosKmjT6br-Dg', '2025-03-01 00:52:06.288428'),
('nfqh9szpf7s9d0no9jc700x09rfhf7p8', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ6iB:PadozbFFW-8MXhdA12XltfHpPzZzvgocSPUup5Lrur8', '2025-02-01 11:09:55.983044'),
('ngovghcoiej2e7ili44065v243s2ukjn', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taFMM:mDbYAmBWSHp-rWvDrIVXVDnwfPrJMRqXVo8-rYDgc1w', '2025-02-04 14:36:06.412606'),
('ptheb6rlf3wsl0kxfhxexbx9j7fwxrjo', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tcmRP:BVyYTk5WIf23Bs7VkSMArFdZP-Tmz9GUMbx6Ct5c3gc', '2025-02-11 14:19:47.203846'),
('r8lbj5tl814oco79klitzlv50dz2jd7c', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taChI:u6cyi82ujdYmeSCmLlcrTKZPqxkmLgQ7DTgv1eaOogs', '2025-02-04 11:45:32.632249'),
('rnuuy9p0pxktra8wkqlgc7p1hssqhi0p', '.eJxVjEEOwiAQRe_C2hCmU6bg0r1nIDNApWpoUtqV8e7apAvd_vfef6nA21rC1vISpqTOCkidfkfh-Mh1J-nO9TbrONd1mUTvij5o09c55eflcP8OCrfyrckZi0y28x372BOZBJkG4ywjgKeEo2Px4tgQogUWgWH0hgCTA-zV-wPUZzaw:1tj6JF:bixtJShza-tu3zd8t-0LwHanmbzqv0hC6nu4kf07qqc', '2025-03-01 00:45:29.285494'),
('rv7cj1s0sxayjvn9nl0ynmydivbdxff3', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1taEea:xAw2Si9ZIrdY-RTYuwn6m91GbgO0Bu_hrjpDiVgdLEA', '2025-02-04 13:50:52.519572'),
('s65nrhjtzlg0ltl99rjuunatcm0mwt2o', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZLda:h7dkw623b3ab9PUrtp5LNugJa23vEOhx0oMRRcximHU', '2025-02-02 03:06:10.100240'),
('s8drrs8coi1zmkrcetscatun3fm1fivq', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taD9a:ibBWLxLdCyYe8Di2Qsub5z9gq2JSEUm2lI6ej6BJwdA', '2025-02-04 12:14:46.699336'),
('sa50ufjmw1sofu10e7o2b5zv7959oky6', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZMmg:95G1zDRwpr6bedX5_mSXPVfnYHkfvPMt8QuJF6xBAX8', '2025-02-02 04:19:38.348826'),
('t5by6c1uegk1omijgbwirpjhd43346up', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taCCX:6vLYJMYI-_Z2xuQVI38Zul47MbvYzxKj20ZA_cwJBfk', '2025-02-04 11:13:45.099612'),
('tc7mckbofjwu4ek4d9ah8w4hgyijzqqi', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tYw3G:a4-YY6uXIGh2i3XF_Ar-A8hdm7R5WZLPe13INOR3TaM', '2025-01-31 23:46:58.145867'),
('tn4ma8yr2d7qalo6roj67gygk68kpjn3', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taCWr:ehzqSxmJzFAkpW3QvFUlpKxmEX7JU9DwmtdpHeOgjg4', '2025-02-04 11:34:45.476510'),
('uoc9nttvr29o01bym2ta24n1q99elcpt', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taDA0:QGIyTBSvdRlUAHhYb0zRHK1OZojv_AQzxw5AxRhMIHw', '2025-02-04 12:15:12.729661'),
('utu4iqtz0j1ei206bjwifdur7ydetec7', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZzWt:4AQiNlZmZtNCtAg9u2yTsoPu1Mp_G7BlvnOskxh9SI8', '2025-02-03 21:41:55.724289'),
('vm7rifi8bup0w8x3333ca2hhu798s5su', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZ6JF:p9taU_9FuHIOcHPq4Pi2ZrAJUReVO9hzabA0C2C4EYs', '2025-02-01 10:44:09.328246'),
('yp299pkodjh5bxk1v43eoy7nto4johhl', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZzT1:pW_i-pLItf5anzyVpjnMTwTL_HFm-48r2yjpEV1Di_o', '2025-02-03 21:37:55.271751'),
('yuxdhopb6lf5uqwbxu8awsq9s9z2zkls', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ95k:XxCpk0rMFD6C7O3YIg2PkhGE10Y-XsFpdE70-989KxI', '2025-02-01 13:42:24.115483'),
('yz3id5gko2gvdi47vwh53935zr9awy7r', '.eJxVjMsOwiAQRf-FtSHM8Ch16d5vIAMDUjU0Ke3K-O_apAvd3nPOfYlA21rD1vMSJhZngeL0u0VKj9x2wHdqt1mmua3LFOWuyIN2eZ05Py-H-3dQqddvDT5TIjTkydBo85AAAbR2XnkGB16hMpbRKcUQB51HqwsWS-x8iUDi_QHGRjcm:1tZ6c4:IBnBM57gdKopUHCNy-4XBJpOYqW2fQCB7rjPB6UBJyA', '2025-02-01 11:03:36.917370'),
('zy4b6vcabol4bgbsea1s3xprtgvaeieg', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1tZN1g:J6ECymKBZPIvU6R4hABi_BD-ADDQrQsGHB2Vfs37tgk', '2025-02-02 04:35:08.204490'),
('zz9ueicqc94kkaynf15lqzwuf4k2d9zs', '.eJxVjDEOwyAQBP9CHSEOg4GU6f0GdAfn4CTCkrGrKH-PLblImi12ZvctIm5riVvjJU5ZXAWIy29HmJ5cD5AfWO-zTHNdl4nkociTNjnMmV-30_07KNjKvu5ycMrS2GPa02pAgGDJOjYIDKM27JOn4PrA3hOnzuWARgEmRUZr8fkC6bM3_w:1taCc1:2MNlG38ZpA2zGDa166dJFIxFRbo-23r5Y819GzXSmRE', '2025-02-04 11:40:05.011000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indeks untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indeks untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indeks untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indeks untuk tabel `cnn_buah_jambu_mete_komentar`
--
ALTER TABLE `cnn_buah_jambu_mete_komentar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cnn_buah_jambu_mete_uploadedimage`
--
ALTER TABLE `cnn_buah_jambu_mete_uploadedimage`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indeks untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indeks untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `cnn_buah_jambu_mete_komentar`
--
ALTER TABLE `cnn_buah_jambu_mete_komentar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `cnn_buah_jambu_mete_uploadedimage`
--
ALTER TABLE `cnn_buah_jambu_mete_uploadedimage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Ketidakleluasaan untuk tabel `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
