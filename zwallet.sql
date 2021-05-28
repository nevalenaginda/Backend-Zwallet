-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Bulan Mei 2021 pada 12.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zzwallet`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activation`
--

CREATE TABLE `activation` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `token` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `activation`
--

INSERT INTO `activation` (`id`, `email`, `token`, `date`) VALUES
(18, 'nevalenaginda10@gmail.com', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGVudGl0eSI6eyJuYW1lIjoiVmFuZGEgTGVlIiwiZW1haWwiOiJuZXZhbGVuYWdpbmRhMTBAZ21haWwuY29tIiwidXNlcm5hbWUiOiJuZXZhbGVuYWdpbmRhMTBAZ21haWwuY29tIn0sInRpbWVzdGFtcCI6IjIwMjEtMDUtMThUMTY6MTg6MzcuNzc0WiIsImlhdCI6MTYyMTM1NDcxN30.srJgJtQNYVP-NucLpyMgOwOi339Lngg8UKEqlncsos0', '2021-05-18 23:18:37'),
(19, 'nevalenaginda1011@gmail.com', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZGVudGl0eSI6eyJuYW1lIjoiTmV2YWxlbiBBZ2luZGEiLCJlbWFpbCI6Im5ldmFsZW5hZ2luZGExMDExQGdtYWlsLmNvbSIsInBhc3N3b3JkIjoiJDJiJDEwJC5Gd0ZQSGhremhEbUgxdlFQdmNUVC5ldVlOLk5yYk5EWFFibE40bnFieE5oWnJWeGZLTmxlIiwiaW1hZ2UiOiJkZWZhdWx0LnBuZyIsInBpbiI6IiIsInBob25lIjoiKzYyIn0sInRpbWVzdGFtcCI6IjIwMjEtMDUtMThUMTY6MjE6MDcuNzc3WiIsImlhdCI6MTYyMTM1NDg2N30.tcgIDJSvvv_ScWuxuKQipk_H85hLuTrb9ldLozTcwgA', '2021-05-18 23:21:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id` int(11) NOT NULL,
  `from_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `to_id` varchar(255) CHARACTER SET utf8 NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8 NOT NULL,
  `status` int(11) NOT NULL COMMENT '1=pending, 2=success, 3=cancel, 4=top up, 5=failed',
  `notes` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'additional notes',
  `isRead` tinyint(2) NOT NULL DEFAULT 0 COMMENT '0=belum dibaca 1= sudah dibaca,',
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id`, `from_id`, `to_id`, `amount`, `status`, `notes`, `isRead`, `created_at`) VALUES
(75, '7', '7', '5000', 4, 'Top Up', 1, '2021-04-18 00:12:44'),
(76, '7', '7', '12000', 4, 'Top Up', 1, '2021-04-18 00:19:20'),
(77, '7', '7', '10000', 4, 'Top Up', 1, '2021-04-18 00:21:33'),
(78, '7', '7', '10000', 4, 'Top Up', 1, '2021-04-18 00:22:13'),
(79, '2', '2', '12000', 4, 'Top Up', 1, '2021-04-18 00:23:02'),
(80, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-18 08:58:09'),
(81, '7', '7', '20000', 4, 'Top Up', 1, '2021-04-18 13:25:51'),
(82, '3', '2', '20000', 2, 'transfer', 1, '2021-04-18 13:27:37'),
(83, '7', '7', '12000', 4, 'Top Up', 1, '2021-04-18 13:46:20'),
(84, '7', '7', '17000', 4, 'Top Up', 1, '2021-04-18 13:48:58'),
(85, '7', '7', '19000', 4, 'Top Up', 1, '2021-04-18 13:50:26'),
(86, '2', '2', '20000', 4, 'Top Up', 1, '2021-04-18 14:40:01'),
(87, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-18 14:40:28'),
(88, '7', '2', '20000', 3, 'transfer', 1, '2021-04-18 18:40:59'),
(89, '7', '2', '10000', 3, 'transfer', 1, '2021-04-18 18:44:02'),
(90, '7', '2', '10000', 2, 'transfer', 1, '2021-04-18 18:44:36'),
(91, '7', '2', '20000', 3, 'transfer', 1, '2021-04-18 18:53:16'),
(92, '7', '2', '5000', 3, 'transfer', 1, '2021-04-18 18:57:25'),
(93, '7', '2', '5000', 3, 'transfer', 1, '2021-04-18 18:58:55'),
(94, '7', '2', '5000', 3, 'transfer', 1, '2021-04-18 19:00:35'),
(95, '7', '2', '5000', 2, 'transfer', 1, '2021-04-18 19:01:59'),
(96, '7', '2', '10000', 2, 'transfer', 1, '2021-04-18 19:05:48'),
(97, '7', '2', '10000', 2, 'transfer', 1, '2021-04-18 19:08:22'),
(98, '2', '7', '100000', 3, 'transfer', 1, '2021-04-18 19:10:38'),
(99, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-18 19:11:50'),
(100, '7', '2', '20000', 3, 'transfer', 1, '2021-04-19 08:46:27'),
(101, '7', '2', '20000', 2, 'transfer', 1, '2021-04-19 08:49:27'),
(102, '10', '10', '10000', 4, 'Top Up', 1, '2021-04-19 10:14:43'),
(103, '2', '2', '20000', 4, 'Top Up', 1, '2021-04-22 08:42:07'),
(104, '2', '2', '50000', 4, 'Top Up', 1, '2021-04-22 08:42:25'),
(105, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-22 21:35:55'),
(106, '7', '2', '22000', 2, 'transfer', 1, '2021-04-23 06:33:24'),
(107, '7', '2', '22000', 2, 'transfer', 1, '2021-04-23 06:39:43'),
(108, '2', '7', '100000', 3, 'Buat makan', 1, '2021-04-23 11:43:01'),
(109, '2', '7', '100000', 3, 'Buat makan', 1, '2021-04-23 12:27:56'),
(110, '2', '7', '100000', 2, 'Buat makan', 1, '2021-04-23 12:57:01'),
(111, '2', '7', '100000', 2, 'transfer', 1, '2021-04-24 19:36:33'),
(112, '2', '7', '100000', 1, 'transfer', 1, '2021-04-24 19:37:24'),
(113, '2', '7', '40000', 3, 'transfer', 1, '2021-04-24 19:54:23'),
(115, '2', '7', '100000', 2, 'transfer', 1, '2021-04-24 20:16:41'),
(116, '2', '7', '200000', 2, 'transfer', 1, '2021-04-24 20:17:08'),
(117, '2', '7', '99000', 2, 'Buat bayar hutang minggu kemarin', 1, '2021-04-25 00:02:12'),
(118, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-25 00:04:32'),
(119, '2', '2', '12000', 4, 'Top Up', 1, '2021-04-25 01:29:44'),
(120, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-25 01:30:31'),
(121, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-25 01:31:10'),
(122, '2', '2', '50000', 4, 'Top Up', 1, '2021-04-25 01:31:27'),
(123, '2', '7', '100000', 2, 'Bayar hutang shopee', 1, '2021-04-25 01:36:20'),
(124, '10', '2', '10000', 2, 'Bayar pulsa kemarin', 1, '2021-04-25 01:42:25'),
(125, '3', '3', '1000000', 4, 'Top Up', 1, '2021-04-25 01:59:26'),
(126, '3', '2', '100000', 2, 'Buat beli kado ulang tahun', 1, '2021-04-25 02:00:40'),
(127, '3', '7', '12000', 2, 'Infak masjid titipan mama', 1, '2021-04-25 02:09:13'),
(128, '10', '10', '10000', 4, 'Top Up', 1, '2021-04-25 04:30:42'),
(129, '10', '10', '10000', 4, 'Top Up', 1, '2021-04-25 09:43:10'),
(130, '10', '10', '10000', 4, 'Top Up', 1, '2021-04-25 10:08:44'),
(131, '10', '3', '15000', 2, 'Titip uang buat beli nasi goreng', 1, '2021-04-25 12:53:58'),
(132, '2', '3', '100000', 2, 'Coba transfer', 1, '2021-04-25 19:49:25'),
(133, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-25 19:49:52'),
(134, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-25 22:14:36'),
(135, '2', '3', '100000', 2, 'Buat makan', 1, '2021-04-25 23:42:27'),
(136, '2', '2', '10000', 4, 'Top Up', 1, '2021-04-26 08:42:08'),
(137, '16', '16', '100000', 4, 'Top Up', 1, '2021-04-26 10:20:21'),
(138, '16', '10', '50000', 2, 'Buat beli baju baru ya', 1, '2021-04-26 10:21:41'),
(139, '16', '3', '20000', 2, 'transfer', 1, '2021-04-26 10:25:25'),
(140, '17', '17', '150000', 4, 'Top Up', 0, '2021-05-11 01:49:51'),
(141, '7', '3', '150000', 2, 'Transfer uang pembayaran kost bulan ini.', 1, '2021-05-11 02:09:43'),
(142, '7', '3', '100000', 2, 'Transfer uang pembayaran pulsa listrik.', 1, '2021-05-11 02:14:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pin` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT '+62',
  `balance` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `is_active` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `image`, `pin`, `phone`, `balance`, `is_active`) VALUES
(2, 'Vanda Lee', 'nevalenaginda10@gmail.com', '$2b$10$7Asbh98DBOZ0X0ZdQsq0a.xPNKVJ7.I7OmEcvW8v9VGRboC4WX.nK', '1619355836933.jpg', '$2b$10$XldhzY7PYtnTZ0HHfitSEez9io8xCObyiec7wmNmAYJg18uoCxp3O', '+6281238085756', '132000', 1),
(3, 'Amelia Tantono', 'test@gmail.com', '$2b$10$qFkBZQenCjNkulz07/cFC.4JFfG27D9fo.N5RiBdRdPjJVdfwy5zO', '1619290736691.jpg', '$2b$10$t4ap.E.V60uW4nZQUsXd9OuvbBWMuBATxxZ8gdnLiGzU/AUdWdnuK', '+628121718190', '1373000', 1),
(7, 'Dimas Rizki', 'nevalen.aginda1532@students.unila.ac.id', '$2b$10$VBqL8OAvAHHcsE8S3dQ9uOLOPxAj2SUIha7893zuOBwRV2q51efoa', '1619181386162.jpeg', '$2b$10$sVsiK2DSCYhxWbtvKCScTOcRMHSyJ75LjFpf5fFsvpfwKW5Z70foO', '+6281273074248', '751000', 1),
(10, 'Satria Wiguna', 'nevalenagindaprasetyo@gmail.com', '$2b$10$nAowvsVC6bd3D7QyBrRuSOrRfXtSGYIOD1edVXBO2T8ktRLItIpXu', '1619289946883.png', '$2b$10$CZ1dAUFpneNBgwkpSwf9pOc8XPiBa5jACvOfqg5K85qNO8.4qjEMq', '', '65000', 1),
(12, 'Bohdan', 'bohdan@gmail.com', '$2b$10$VNNAG99m9kolB.vBcBkPV.fYDJ2Qj2gAeFm/zENy7fAANANkaZPrq', '1619336585854.jpg', '$2b$10$SB0F/bQaMRn8NP3uGcP6KuFAtgc9kHKkQOhj7c9oRwAf2BXd0z4Sm', '+6281431507890', '0', 1),
(16, 'Mahardika Setiawan', 'developerbohdan0@gmail.com', '$2b$10$kd4WR8AV7Q1hXdaBtZ1n5.kfxoCJvxpDIGki0bRqtiiwuz2iCfbYS', '1619407575176.jpg', '$2b$10$KYq0CW3nBJnTJ4C2z9i4keAtR2UU0vizN4gDhPBQVqaP7qn0gRiHy', '+6281438087678', '30000', 1),
(17, 'Nevalen Aginda Prasetyo', 'aginda123@gmail.com', '$2b$10$XnB1voibmt7nQvb8Fsj14.v3V0mggAbR9nGMTJ4E5LBddY2B8Ixwm', 'default.png', '$2b$10$QcWWHQieq5x/TdE9wB3fdu4LxeT5CBjpHLicbad/2Ek6tBt/H0gme', '+62', '150000', 1),
(18, 'Nevalen Aginda', 'nevalenaginda1011@gmail.com', '$2b$10$.FwFPHhkzhDmH1vQPvcTT.euYN.NrbNDXQblN4nqbxNhZrVxfKNle', 'default.png', '', '+62', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activation`
--
ALTER TABLE `activation`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activation`
--
ALTER TABLE `activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
