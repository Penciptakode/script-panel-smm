-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 22 Agu 2020 pada 02.40
-- Versi server: 5.7.31-log-cll-lve
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benongpe_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `balance_history`
--

CREATE TABLE `balance_history` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `action` enum('Add Balance','Cut Balance') NOT NULL,
  `quantity` double NOT NULL,
  `msg` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `balance_history`
--

INSERT INTO `balance_history` (`id`, `username`, `action`, `quantity`, `msg`, `date`, `time`) VALUES
(1, 'Hafiz', 'Cut Balance', 1745, 'Pemesanan Pulsa Dengan ID Pesanan : 7998373', '2020-06-09', '17:18:15'),
(2, 'Hafiz', 'Cut Balance', 1745, 'Pemesanan Pulsa Dengan ID Pesanan : 6481681', '2020-06-11', '10:59:03'),
(3, 'Andre', 'Add Balance', 15150, 'Saldo Ditambahkan Oleh Hafiz Sebesar 15150', '2020-06-11', '11:17:27'),
(4, 'Hafiz', 'Cut Balance', 15150, 'Saldo Ditransfer Ke Andre Sebesar 15150', '2020-06-11', '11:17:27'),
(5, 'Andre', 'Cut Balance', 9500, 'Pemesanan Pulsa Dengan ID Pesanan : 2514158', '2020-06-11', '16:11:50'),
(6, 'Hadi', 'Add Balance', 5000, 'Saldo Ditambahkan Oleh Hafiz Sebesar 5000', '2020-06-12', '01:56:25'),
(7, 'Hafiz', 'Cut Balance', 5000, 'Saldo Ditransfer Ke Hadi Sebesar 5000', '2020-06-12', '01:56:25'),
(8, 'Hadi', 'Cut Balance', 3725, 'Pemesanan Pulsa Dengan ID Pesanan : 9165633', '2020-06-12', '02:01:56'),
(9, 'Hadi', 'Add Balance', 3500, 'Saldo Ditambahkan Oleh Hafiz Sebesar 3500', '2020-06-12', '02:16:18'),
(10, 'Hafiz', 'Cut Balance', 3500, 'Saldo Ditransfer Ke Hadi Sebesar 3500', '2020-06-12', '02:16:18'),
(11, 'Hadi', 'Cut Balance', 3725, 'Pemesanan Pulsa Dengan ID Pesanan : 3559715', '2020-06-12', '04:39:40'),
(12, 'Hadi', 'Add Balance', 5000, 'Saldo Ditambahkan Oleh Hafiz Sebesar 5000', '2020-06-12', '04:50:18'),
(13, 'Hafiz', 'Cut Balance', 5000, 'Saldo Ditransfer Ke Hadi Sebesar 5000', '2020-06-12', '04:50:18'),
(14, 'Hadi', 'Cut Balance', 3725, 'Pemesanan Pulsa Dengan ID Pesanan : 3329120', '2020-06-12', '04:51:55'),
(15, 'Hadi', 'Add Balance', 3650, 'Saldo Ditambahkan Oleh Hafiz Sebesar 3650', '2020-06-12', '06:57:47'),
(16, 'Hafiz', 'Cut Balance', 3650, 'Saldo Ditransfer Ke Hadi Sebesar 3650', '2020-06-12', '06:57:47'),
(17, 'Hafiz', 'Cut Balance', 1745, 'Pemesanan Pulsa Dengan ID Pesanan : 5634412', '2020-06-12', '08:13:46'),
(18, 'Andre', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 9861334', '2020-06-12', '12:21:03'),
(19, 'Andre', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 1526050', '2020-06-12', '12:21:46'),
(20, 'Hadi', 'Add Balance', 3725, 'Pengembalian Dana Dari Pemesanan Pada Fitur Pulsa Akibat Status Pesanan Error Dengan ID Pesanan 9165633', '2020-06-12', '12:58:27'),
(21, 'Hadi', 'Add Balance', 3725, 'Pengembalian Dana Dari Pemesanan Pada Fitur Pulsa Akibat Status Pesanan Error Dengan ID Pesanan 3559715', '2020-06-12', '12:58:27'),
(22, 'Hadi', 'Add Balance', 3725, 'Pengembalian Dana Dari Pemesanan Pada Fitur Pulsa Akibat Status Pesanan Error Dengan ID Pesanan 3329120', '2020-06-12', '12:58:27'),
(23, 'Andre', 'Add Balance', 2375, 'Pengembalian Dana Dari Pemesanan Pada Fitur Pulsa Akibat Status Pesanan Error Dengan ID Pesanan 9861334', '2020-06-12', '12:58:27'),
(24, 'Andre', 'Add Balance', 2375, 'Pengembalian Dana Dari Pemesanan Pada Fitur Pulsa Akibat Status Pesanan Error Dengan ID Pesanan 1526050', '2020-06-12', '12:58:27'),
(25, 'Andre', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 4082738', '2020-06-12', '13:16:12'),
(26, 'Andre', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 1852542', '2020-06-12', '13:16:52'),
(27, 'Hafiz2', 'Add Balance', 770000, 'Mendapatkan Saldo Melalui Deposit Otomatis VIA Telkomsel Transfer Dengan ID Deposit : 9631616', '2020-06-13', '15:57:00'),
(28, 'Hadi', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 8367947', '2020-06-13', '19:16:10'),
(29, 'Hadi', 'Cut Balance', 2375, 'Pemesanan Pulsa Dengan ID Pesanan : 4736841', '2020-06-13', '19:17:10'),
(30, 'Hafiz', 'Cut Balance', 30420, 'Pemesanan Pulsa Dengan ID Pesanan : 1684408', '2020-06-13', '20:54:45'),
(31, 'Hafiz', 'Cut Balance', 25420, 'Pemesanan Pulsa Dengan ID Pesanan : 5488392', '2020-06-14', '07:53:35'),
(32, 'Hafiz', 'Cut Balance', 10545, 'Pemesanan Pulsa Dengan ID Pesanan : 5449174', '2020-06-14', '07:55:43'),
(33, 'Hafiz', 'Cut Balance', 50420, 'Pemesanan Pulsa Dengan ID Pesanan : 4031491', '2020-06-14', '10:20:38'),
(34, 'Hadi', 'Add Balance', 13000, 'Saldo Ditambahkan Oleh Hafiz Sebesar 13000', '2020-06-14', '16:01:16'),
(35, 'Hafiz', 'Cut Balance', 13000, 'Saldo Ditransfer Ke Hadi Sebesar 13000', '2020-06-14', '16:01:16'),
(36, 'Ceff', 'Cut Balance', 25420, 'Pemesanan Pulsa Dengan ID Pesanan : 2620508', '2020-06-14', '17:17:01'),
(37, 'Hafiz', 'Cut Balance', 1745, 'Pemesanan Pulsa Dengan ID Pesanan : 7752899', '2020-06-14', '19:59:14'),
(38, 'Hadi', 'Cut Balance', 10105, 'Pemesanan Pulsa Dengan ID Pesanan : 6421389', '2020-06-22', '18:22:44'),
(39, 'Wahyu', 'Cut Balance', 18750, 'Pemesanan Pulsa Dengan ID Pesanan : 1223800', '2020-06-23', '13:36:55'),
(40, 'Wahyu', 'Cut Balance', 9500, 'Pemesanan Pulsa Dengan ID Pesanan : 4500776', '2020-06-24', '11:07:27'),
(41, 'Bencode', 'Add Balance', 10000, 'Mendapatkan Saldo Melalui Deposit Otomatis VIA GOPAY Transfer Dengan ID Deposit : 7571309', '2020-08-21', '18:42:48'),
(42, 'Bencode', 'Cut Balance', 1745, 'Pemesanan Pulsa Dengan ID Pesanan : 7425351', '2020-08-21', '18:46:03'),
(43, 'pencipta kode', 'Cut Balance', 140, 'Pemesanan Sosial Media Dengan ID Pesanan : 4053350', '2020-08-22', '02:37:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `cek_akun`
--

CREATE TABLE `cek_akun` (
  `id` int(10) NOT NULL,
  `saldo` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(10) NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `deskripsi` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `wa` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `fb` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `ig` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `link_fb` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link_ig` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link_grubwa` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `jam_kerja` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `lokasi` varchar(250) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `code` varchar(250) NOT NULL,
  `username` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `payment` varchar(250) NOT NULL,
  `penerima` varchar(200) NOT NULL,
  `nomor_pengirim` varchar(250) NOT NULL,
  `jumlah` int(255) NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `status` enum('Success','Pending','Error') NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` enum('WEB','API') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deposit`
--

INSERT INTO `deposit` (`id`, `code`, `username`, `name`, `provider`, `payment`, `penerima`, `nomor_pengirim`, `jumlah`, `saldo`, `status`, `date`, `time`, `place_from`) VALUES
(1, '4398477', 'Hafiz', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.80]', '', '081292979805', 50000, '40000', 'Error', '2020-06-09', '17:05:15', 'WEB'),
(2, '3260551', 'Hafiz', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.80]', '081292979805', '081292979805', 50000, '40000', 'Error', '2020-06-09', '17:08:00', 'WEB'),
(3, '3322065', 'Hafiz', 'Transfer Bank', 'DANA', 'DANA CASH', ' ', '081292979805', 50000, '50000', 'Error', '2020-06-09', '17:09:11', 'WEB'),
(4, '7378234', 'Hafiz', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', ' ', '081292979805', 50000, '50000', 'Error', '2020-06-09', '17:43:39', 'WEB'),
(5, '2875780', 'Hafiz', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.77]', '081292979805', '081292979805', 10000, '7700', 'Error', '2020-06-09', '18:12:13', 'WEB'),
(6, '8307466', 'Hafiz', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.77]', '081292979805', '081292979805', 10000, '7700', 'Error', '2020-06-11', '12:36:58', 'WEB'),
(7, '3607643', 'Handre', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.77]', '081292979805', '6281297861081', 25000, '19250', 'Pending', '2020-06-11', '13:00:09', 'WEB'),
(8, '4122252', 'Juju', 'Transfer Pulsa', '', '', '', '6285363687478', 10000, '0', 'Pending', '2020-06-12', '15:46:56', 'WEB'),
(9, '4706303', 'Hafiz', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '081292979805', 50000, '50000', 'Error', '2020-06-13', '12:35:11', 'WEB'),
(10, '3097428', 'Hafiz', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', '081292979805 083898025430 / h***z', '081292979805', 50000, '50000', 'Error', '2020-06-13', '12:37:52', 'WEB'),
(11, '8124986', 'Hafiz', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', '08 083898025430 / h***z', '081292979805', 30000, '30000', 'Error', '2020-06-13', '12:38:43', 'WEB'),
(12, '9173209', 'Hafiz', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', '083898025430 083898025430 / h***z', '081292979805', 50000, '50000', 'Error', '2020-06-13', '12:39:40', 'WEB'),
(13, '1872533', 'Hadi', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.77]', '081292979805', '6281395761137', 15000, '11550', 'Pending', '2020-06-13', '13:19:17', 'WEB'),
(14, '9631616', 'Hafiz2', 'Transfer Pulsa', 'Telkomsel', '#1 TELKOMSEL [RATE 0.77]', '081292979805', '081292979805', 1000000, '770000', 'Success', '2020-06-13', '15:56:29', 'WEB'),
(15, '3988554', 'Mamat', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '0895429939500', 10000, '10000', 'Error', '2020-06-13', '20:29:17', 'WEB'),
(16, '9746769', 'Indra', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '085607455405', 10000, '10000', 'Error', '2020-06-16', '12:00:15', 'WEB'),
(17, '9388151', 'Indra', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '085607455405', 10000, '10000', 'Error', '2020-06-16', '20:37:42', 'WEB'),
(18, '5999678', 'Akhtar10', 'Transfer Pulsa', 'TELKOMSEL', '#1 TELKOMSEL [RATE 0.78]', '081292979805', '089685641716', 15000, '11700', 'Error', '2020-06-16', '20:47:18', 'WEB'),
(19, '0802381', 'Akhtar10', 'Transfer Pulsa', 'TELKOMSEL', '#1 TELKOMSEL [RATE 0.78]', '081292979805', '089685641716', 15000, '11700', 'Pending', '2020-06-16', '20:50:53', 'WEB'),
(20, '0669056', 'Largo', 'Transfer Pulsa', 'TELKOMSEL', '#1 TELKOMSEL [RATE 0.78]', '081292979805', '6281317499496', 15000, '11700', 'Pending', '2020-06-17', '06:04:55', 'WEB'),
(21, '4305254', 'Indra', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', '083898025430 083898025430 / h***z', '085607455405', 10000, '10000', 'Error', '2020-06-17', '09:36:47', 'WEB'),
(22, '9842016', 'FENDI X GANS', 'Transfer Pulsa', 'TELKOMSEL', '#1 TELKOMSEL [RATE 0.80]', '081292979805', '085241002065', 100000, '80000', 'Pending', '2020-06-25', '09:29:30', 'WEB'),
(23, '1252035', 'Wahyu', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '085367183514', 93000, '93000', 'Error', '2020-06-27', '09:13:40', 'WEB'),
(24, '4447876', 'Sanyt_', 'Transfer Bank', 'DANA', 'DANA CASH', '081292979805 081292979805 / H*RA***', '081316407925', 20000, '20000', 'Pending', '2020-06-27', '18:07:23', 'WEB'),
(25, '7571309', 'Bencode', 'Transfer Bank', 'GOPAY', 'GOPAY TRANSFER', '083898025430 083898025430 / h***z', '085714993704', 10000, '10000', 'Success', '2020-08-21', '18:42:14', 'WEB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `deposit_method`
--

CREATE TABLE `deposit_method` (
  `id` int(255) NOT NULL,
  `provider` varchar(50) NOT NULL,
  `name` enum('Transfer Bank','Transfer Pulsa') NOT NULL,
  `payment` varchar(255) NOT NULL,
  `rate` varchar(255) NOT NULL,
  `penerima` varchar(200) NOT NULL,
  `send` varchar(250) NOT NULL,
  `minimal` int(10) NOT NULL,
  `status` enum('ON','OFF') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `deposit_method`
--

INSERT INTO `deposit_method` (`id`, `provider`, `name`, `payment`, `rate`, `penerima`, `send`, `minimal`, `status`) VALUES
(1, 'TELKOMSEL', 'Transfer Pulsa', '#1 TELKOMSEL [RATE 0.80]', '0.80', '081292979805', '081292979805', 15000, 'OFF'),
(2, 'OVO', 'Transfer Bank', 'OVO TRANSFER', '1', '', '085775694453', 10000, 'ON'),
(3, 'GOPAY', 'Transfer Bank', 'GOPAY TRANSFER', '1', 'HAKIM', '085775694453', 10000, 'ON');

-- --------------------------------------------------------

--
-- Struktur dari tabel `game_cat`
--

CREATE TABLE `game_cat` (
  `id` int(2) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `harga_pendaftaran`
--

CREATE TABLE `harga_pendaftaran` (
  `id` int(10) NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Vip') COLLATE utf8_swedish_ci NOT NULL,
  `bonus` int(10) NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_undangan`
--

CREATE TABLE `kode_undangan` (
  `id` int(10) NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` int(10) NOT NULL,
  `status` enum('Active','Already Used') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `kode_undangan`
--

INSERT INTO `kode_undangan` (`id`, `level`, `uplink`, `code`, `balance`, `status`, `date`, `time`) VALUES
(1, '', '', '248570', 0, '', '0000-00-00', '00:00:00'),
(2, '', '', '248570', 0, '', '0000-00-00', '00:00:00'),
(3, 'Member', '', '248570', 0, '', '0000-00-00', '00:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kode_voucher`
--

CREATE TABLE `kode_voucher` (
  `id` int(10) NOT NULL,
  `uplink` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `balance` int(10) NOT NULL,
  `status` enum('Active','Already Used') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id` int(4) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `catatan` varchar(100) DEFAULT NULL,
  `waktu` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `log`
--

INSERT INTO `log` (`id`, `username`, `catatan`, `waktu`) VALUES
(1, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.238.61', '2020-06-09 16:20:14'),
(2, 'babang', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 103.10.66.23', '2020-06-09 16:29:01'),
(3, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.238.61', '2020-06-09 17:01:16'),
(4, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.238.61', '2020-06-09 17:03:41'),
(5, '', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP ', '2020-06-09 17:03:41'),
(6, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.238.61', '2020-06-09 17:04:42'),
(7, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.238.63', '2020-06-09 18:21:59'),
(8, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.6.162', '2020-06-09 23:18:08'),
(9, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.6.162', '2020-06-09 23:42:49'),
(10, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.245.61', '2020-06-10 05:16:00'),
(11, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.13', '2020-06-10 08:27:01'),
(12, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.13', '2020-06-10 08:58:54'),
(13, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.238.230', '2020-06-10 10:25:34'),
(14, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.6.4', '2020-06-10 18:42:58'),
(15, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.199.240', '2020-06-11 03:09:28'),
(16, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.168', '2020-06-11 10:50:18'),
(17, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.152.228', '2020-06-11 11:16:53'),
(18, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.152.228', '2020-06-11 11:18:14'),
(19, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.5.92', '2020-06-11 12:07:03'),
(20, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.110', '2020-06-11 12:21:56'),
(21, 'Handre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.89.227', '2020-06-11 12:53:02'),
(22, 'Handre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.89.227', '2020-06-11 12:59:03'),
(23, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.110', '2020-06-11 14:33:10'),
(24, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.186.19', '2020-06-11 14:49:11'),
(25, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.110', '2020-06-11 15:31:45'),
(26, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.45.52', '2020-06-11 16:10:17'),
(27, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.110', '2020-06-11 16:20:37'),
(28, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.29.184', '2020-06-11 16:53:49'),
(29, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.110', '2020-06-11 16:58:46'),
(30, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 01:42:12'),
(31, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.124.182.77', '2020-06-12 01:55:57'),
(32, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 01:57:37'),
(33, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.214.176', '2020-06-12 02:03:19'),
(34, 'Andre', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 182.0.214.176', '2020-06-12 02:11:28'),
(35, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.214.176', '2020-06-12 02:11:40'),
(36, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.214.176', '2020-06-12 02:15:19'),
(37, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 04:35:06'),
(38, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.2.169.162', '2020-06-12 04:46:26'),
(39, 'Hadi', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 182.2.169.162', '2020-06-12 04:48:49'),
(40, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.2.169.162', '2020-06-12 04:49:59'),
(41, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 182.2.169.162', '2020-06-12 04:50:40'),
(42, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.2.169.162', '2020-06-12 04:51:00'),
(43, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.2.169.162', '2020-06-12 06:27:42'),
(44, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.197', '2020-06-12 06:56:04'),
(45, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.197', '2020-06-12 06:56:18'),
(46, 'Hadi', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.197', '2020-06-12 06:57:12'),
(47, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.197', '2020-06-12 06:57:27'),
(48, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.197', '2020-06-12 06:57:52'),
(49, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.197', '2020-06-12 06:58:06'),
(50, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 07:11:57'),
(51, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.197', '2020-06-12 08:13:07'),
(52, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 08:57:19'),
(53, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.197', '2020-06-12 10:34:39'),
(54, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.55.74', '2020-06-12 10:39:39'),
(55, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 12:19:56'),
(56, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.234.5', '2020-06-12 12:20:30'),
(57, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.150', '2020-06-12 12:49:26'),
(58, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.235.17', '2020-06-12 13:13:50'),
(59, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 13:34:56'),
(60, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.151', '2020-06-12 13:35:44'),
(61, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 13:36:06'),
(62, 'Hadi', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.151', '2020-06-12 13:36:18'),
(63, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 13:36:33'),
(64, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.5.151', '2020-06-12 13:37:40'),
(65, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 13:38:01'),
(66, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 13:45:37'),
(67, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 14:40:37'),
(68, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.5.151', '2020-06-12 15:19:54'),
(69, 'Juju', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.7.21', '2020-06-12 15:29:03'),
(70, 'Juju', 'Anda Telah Melakukan Aktifitas Ganti Kata Sandi Dengan IP : 120.188.7.21', '2020-06-12 15:31:15'),
(71, 'Juju', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.7.21', '2020-06-12 15:32:35'),
(72, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-12 15:33:04'),
(73, 'Juju', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.7.21', '2020-06-12 15:35:34'),
(74, 'Juju', 'Anda Telah Melakukan Aktifitas Ubah Akun Dengan IP : 120.188.7.21', '2020-06-12 15:43:14'),
(75, 'Juju', 'Anda Telah Melakukan Aktifitas Ganti API Key Dengan IP : 120.188.7.21', '2020-06-12 15:43:22'),
(76, 'Juju', 'Anda Telah Melakukan Aktifitas Ubah Akun Dengan IP : 120.188.7.21', '2020-06-12 15:44:14'),
(77, 'Juju', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.7.21', '2020-06-12 15:52:28'),
(78, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.33.201', '2020-06-12 19:22:09'),
(79, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.33.201', '2020-06-12 22:08:11'),
(80, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 01:39:55'),
(81, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 01:42:31'),
(82, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 01:47:51'),
(83, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 01:51:32'),
(84, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 09:17:07'),
(85, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 10:04:46'),
(86, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 10:58:10'),
(87, 'ibnua1', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.252.241', '2020-06-13 11:10:34'),
(88, 'ibnua1', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 114.5.252.241', '2020-06-13 11:15:17'),
(89, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 11:40:00'),
(90, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.179', '2020-06-13 11:54:20'),
(91, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 11:54:41'),
(92, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.179', '2020-06-13 12:23:10'),
(93, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 13:17:48'),
(94, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.233', '2020-06-13 14:11:41'),
(95, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.233', '2020-06-13 14:12:09'),
(96, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.233', '2020-06-13 14:15:21'),
(97, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 14:19:59'),
(98, 'nanimo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 125.160.235.122', '2020-06-13 15:39:21'),
(99, 'nanimo', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 125.160.235.122', '2020-06-13 15:41:38'),
(100, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 15:43:53'),
(101, '', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP ', '2020-06-13 15:51:35'),
(102, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 15:51:40'),
(103, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.211', '2020-06-13 15:53:14'),
(104, 'Hafiz2', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 15:56:02'),
(105, 'Hafiz2', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.211', '2020-06-13 15:56:37'),
(106, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 15:56:42'),
(107, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.211', '2020-06-13 15:57:03'),
(108, 'Hafiz2', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 15:57:11'),
(109, 'Hafiz2', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 112.215.170.211', '2020-06-13 15:57:20'),
(110, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 15:57:25'),
(111, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 16:10:43'),
(112, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 16:58:41'),
(113, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.211', '2020-06-13 17:18:48'),
(114, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 103.127.65.20', '2020-06-13 18:26:50'),
(115, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.236.229', '2020-06-13 18:34:06'),
(116, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.236.229', '2020-06-13 18:44:57'),
(117, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 19:15:23'),
(118, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.236.206', '2020-06-13 20:05:53'),
(119, 'mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.169.20', '2020-06-13 20:06:38'),
(120, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.12.29', '2020-06-13 20:54:06'),
(121, 'Mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.169.20', '2020-06-13 21:00:43'),
(122, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.12.29', '2020-06-13 21:10:36'),
(123, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.12.29', '2020-06-13 22:09:40'),
(124, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.124', '2020-06-13 22:40:40'),
(125, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.2.165.72', '2020-06-14 06:14:22'),
(126, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.236.253', '2020-06-14 07:17:38'),
(127, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.236.253', '2020-06-14 07:39:42'),
(128, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.12', '2020-06-14 07:49:43'),
(129, 'Ceff', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.251.99', '2020-06-14 09:51:19'),
(130, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.34.206', '2020-06-14 10:09:52'),
(131, 'Ceff', 'Anda Telah Melakukan Aktifitas Ganti Kata Sandi Dengan IP : 114.5.251.99', '2020-06-14 10:11:46'),
(132, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.1.63', '2020-06-14 10:17:25'),
(133, 'Mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.168.58', '2020-06-14 10:35:42'),
(134, 'mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.168.63', '2020-06-14 12:14:05'),
(135, 'Ceff', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.38.231', '2020-06-14 12:15:22'),
(136, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.1.48', '2020-06-14 15:29:03'),
(137, 'Ceff', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.210.235', '2020-06-14 15:31:09'),
(138, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.12', '2020-06-14 15:33:54'),
(139, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.105', '2020-06-14 16:01:04'),
(140, 'Ceff', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.210.235', '2020-06-14 17:16:19'),
(141, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.12', '2020-06-14 17:17:46'),
(142, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.105', '2020-06-14 18:21:10'),
(143, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.170.105', '2020-06-14 18:40:28'),
(144, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.12', '2020-06-14 18:49:03'),
(145, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.12.254', '2020-06-14 18:53:57'),
(146, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.79.48', '2020-06-14 18:58:09'),
(147, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.12.254', '2020-06-14 19:58:23'),
(148, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.79.48', '2020-06-14 20:06:24'),
(149, 'mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.168.37', '2020-06-14 21:18:44'),
(150, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.92.238', '2020-06-14 21:40:47'),
(151, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.65.2', '2020-06-14 22:14:53'),
(152, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.118.12', '2020-06-14 23:25:49'),
(153, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.182.218', '2020-06-15 06:47:33'),
(154, 'mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.168.22', '2020-06-15 08:44:13'),
(155, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.194', '2020-06-15 08:44:24'),
(156, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.34.59', '2020-06-15 10:31:31'),
(157, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.245', '2020-06-15 11:57:19'),
(158, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.159', '2020-06-16 08:58:50'),
(159, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.10.159', '2020-06-16 09:28:03'),
(160, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.159', '2020-06-16 09:29:56'),
(161, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.159', '2020-06-16 11:17:49'),
(162, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.221.69', '2020-06-16 11:18:07'),
(163, 'Indra', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 140.213.10.159', '2020-06-16 11:18:10'),
(164, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.221.69', '2020-06-16 11:30:23'),
(165, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.119.245', '2020-06-16 11:54:18'),
(166, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.119.107', '2020-06-16 12:05:04'),
(167, 'Largo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 180.245.33.0', '2020-06-16 12:38:41'),
(168, 'Largo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 180.245.33.0', '2020-06-16 12:42:24'),
(169, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.142', '2020-06-16 12:49:34'),
(170, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.142', '2020-06-16 13:08:10'),
(171, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.221.69', '2020-06-16 13:58:24'),
(172, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.119.107', '2020-06-16 14:06:58'),
(173, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.103.43', '2020-06-16 15:28:21'),
(174, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.4.219.89', '2020-06-16 16:27:56'),
(175, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.11.22', '2020-06-16 16:49:52'),
(176, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.244.44', '2020-06-16 19:42:01'),
(177, 'Akhtar10', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 202.67.40.7', '2020-06-16 20:22:51'),
(178, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.244.44', '2020-06-16 20:34:19'),
(179, 'Akhtar10', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 202.67.40.7', '2020-06-16 20:35:15'),
(180, 'Akhtar10', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 202.67.40.7', '2020-06-16 20:39:20'),
(181, 'Putra X Casper', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.222.80', '2020-06-16 20:46:46'),
(182, 'Akhtar10', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 116.206.40.108', '2020-06-16 22:56:06'),
(183, 'Ceff', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.4.29', '2020-06-16 23:40:17'),
(184, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 36.90.119.107', '2020-06-17 00:03:04'),
(185, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.247.176', '2020-06-17 04:48:39'),
(186, 'Akhtar10', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 116.206.29.100', '2020-06-17 05:33:08'),
(187, 'Largo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.124.146.175', '2020-06-17 06:03:53'),
(188, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.4.217.25', '2020-06-17 09:30:22'),
(189, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.171.245', '2020-06-17 12:27:31'),
(190, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.80.96', '2020-06-18 10:37:39'),
(191, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.3.8', '2020-06-20 09:06:21'),
(192, 'Largo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 115.178.194.250', '2020-06-20 13:25:45'),
(193, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.235.80', '2020-06-20 17:07:37'),
(194, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.45', '2020-06-20 17:17:58'),
(195, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.10.79', '2020-06-20 18:11:30'),
(196, 'Largo', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.79.6.177', '2020-06-20 18:11:35'),
(197, 'Indra', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.76.80', '2020-06-21 09:20:57'),
(198, 'Hadi', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 103.127.65.112', '2020-06-22 18:21:26'),
(199, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.235.13', '2020-06-22 21:09:09'),
(200, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.235.13', '2020-06-22 21:09:35'),
(201, '', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP ', '2020-06-23 13:01:09'),
(202, 'Ilham', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.230.176', '2020-06-23 13:03:48'),
(203, 'Ilham', 'Anda Telah Melakukan Aktifitas Ganti Kata Sandi Dengan IP : 114.125.230.176', '2020-06-23 13:05:32'),
(204, 'Ilham', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.230.176', '2020-06-23 13:08:43'),
(205, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.2.136', '2020-06-23 13:09:53'),
(206, 'Ilham', 'Anda Telah Melakukan Aktifitas Ubah Akun Dengan IP : 114.125.229.42', '2020-06-23 13:23:18'),
(207, 'Ilham', 'Anda Telah Melakukan Aktifitas Ganti API Key Dengan IP : 114.125.229.42', '2020-06-23 13:23:45'),
(208, 'Ilham', 'Anda Telah Melakukan Aktifitas Ganti API Key Dengan IP : 114.125.229.42', '2020-06-23 13:23:52'),
(209, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.65', '2020-06-23 13:27:29'),
(210, 'Ilham', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 114.125.229.42', '2020-06-23 13:28:38'),
(211, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.229.42', '2020-06-23 13:33:08'),
(212, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.239.65', '2020-06-23 13:33:59'),
(213, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.151.132', '2020-06-23 21:00:32'),
(214, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.151.132', '2020-06-23 21:42:37'),
(215, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.229.122', '2020-06-23 22:03:13'),
(216, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.151.132', '2020-06-23 22:29:09'),
(217, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.233.41', '2020-06-24 07:51:59'),
(218, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.244.175', '2020-06-24 11:06:59'),
(219, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.65.139', '2020-06-24 14:43:24'),
(220, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.244.99', '2020-06-24 14:57:57'),
(221, 'Rido firmansyah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.210.125', '2020-06-24 18:21:36'),
(222, 'Parel', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 202.67.43.41', '2020-06-24 19:36:34'),
(223, 'Rido firmansyah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.16.18', '2020-06-24 19:38:48'),
(224, 'Parel', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 202.67.43.41', '2020-06-24 19:56:23'),
(225, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.65.139', '2020-06-24 20:51:06'),
(226, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.65.139', '2020-06-24 21:45:02'),
(227, 'Razwafadilah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.216.138', '2020-06-24 21:50:50'),
(228, 'Ilyas', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.109.142', '2020-06-25 07:00:46'),
(229, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.198.230', '2020-06-25 08:30:11'),
(230, 'FENDI X GANS', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.185.8', '2020-06-25 09:27:07'),
(231, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.0.237', '2020-06-25 09:35:25'),
(232, 'Ilyas', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.5.111.76', '2020-06-25 09:52:47'),
(233, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.247.202', '2020-06-25 10:31:11'),
(234, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.33.77', '2020-06-25 16:18:40'),
(235, 'rr_tube', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.170.30', '2020-06-25 18:32:36'),
(236, 'rr_tube', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 114.142.170.30', '2020-06-25 18:33:12'),
(237, 'mamat', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.142.170.30', '2020-06-25 18:34:17'),
(238, 'Mamat', 'Kamu Telah Melakukan Aktifitas Keluar Akun Dengan IP 114.142.170.30', '2020-06-25 18:50:30'),
(239, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.32.117', '2020-06-25 20:07:35'),
(240, 'Razwafadilah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.65.2', '2020-06-26 08:53:37'),
(241, 'Razwafadilah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.7.97', '2020-06-26 11:33:30'),
(242, 'Aditya', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 103.105.34.93', '2020-06-26 13:00:12'),
(243, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.7.35', '2020-06-26 13:04:20'),
(244, 'Razwafadilah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 120.188.39.41', '2020-06-26 16:01:35'),
(245, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.237.104', '2020-06-26 20:03:50'),
(246, 'Razwafadilah', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.122.74.54', '2020-06-26 20:41:40'),
(247, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.247.114', '2020-06-26 21:48:23'),
(248, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.247.206', '2020-06-27 09:07:49'),
(249, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.247.206', '2020-06-27 09:11:48'),
(250, 'Wahyu', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.14.64', '2020-06-27 10:12:59'),
(251, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.41.168', '2020-06-27 10:31:22'),
(252, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.232.150', '2020-06-27 18:05:09'),
(253, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 112.215.45.140', '2020-06-27 18:16:48'),
(254, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.203.181', '2020-06-27 18:52:54'),
(255, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.35.235', '2020-06-27 18:57:38'),
(256, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.203.181', '2020-06-27 19:18:26'),
(257, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.13.118', '2020-06-27 20:58:25'),
(258, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 140.213.13.118', '2020-06-27 21:12:17'),
(259, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.124.169.237', '2020-06-28 10:09:11'),
(260, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.133.189', '2020-06-28 10:43:13'),
(261, 'Andre', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.125.248.144', '2020-06-29 21:27:05'),
(262, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.124.240.198', '2020-06-30 15:38:42'),
(263, 'Sanyt_', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.0.179.138', '2020-07-01 17:24:22'),
(264, 'Nayan store', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.15.132', '2020-07-06 08:36:32'),
(265, 'Nayan store', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.122.11.109', '2020-07-06 16:06:38'),
(266, 'Nayan store', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.122.23.194', '2020-07-07 07:21:35'),
(267, 'Nayan store', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 182.1.51.187', '2020-07-11 10:38:22'),
(268, 'Hafiz', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 114.124.134.152', '2020-07-11 10:41:54'),
(269, 'Bencode', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 45.33.24.136', '2020-08-21 15:24:43'),
(270, 'Bencode', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 45.33.24.136', '2020-08-21 17:44:40'),
(271, 'Bencode', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 45.33.24.136', '2020-08-21 18:39:28'),
(272, 'pencipta kode', 'Kamu Telah Melakukan Aktifitas Masuk Akun Dengan IP 45.33.24.136', '2020-08-22 02:00:30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `news`
--

CREATE TABLE `news` (
  `id` int(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `type` enum('LAYANAN','INFORMASI','PERINGATAN','EVENT') COLLATE utf8_swedish_ci NOT NULL,
  `title` text COLLATE utf8_swedish_ci NOT NULL,
  `content` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `news`
--

INSERT INTO `news` (`id`, `date`, `time`, `type`, `title`, `content`) VALUES
(3, '2020-06-14', '15:34:48', 'LAYANAN', 'Layanan Sosmed', 'HALLO KAK\r\n\r\nLAYANAN SOSMED MASIH EROR YA MOHON DI MENGERTI JIKA SUDAH TDK EROR NANTI SAYA KASIH TAU YA KAK\r\n&amp;quot;MAKASH KAK SEMOGA SEHAT SLALU');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link` text COLLATE utf8_swedish_ci NOT NULL,
  `quantity` int(10) NOT NULL,
  `start_count` int(10) NOT NULL,
  `remains` int(10) NOT NULL,
  `price` int(10) NOT NULL,
  `status` enum('Checking','Pending','Processing','Error','Partial','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `place_from` enum('WEB','API') COLLATE utf8_swedish_ci NOT NULL,
  `refund` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `oid`, `poid`, `user`, `service`, `link`, `quantity`, `start_count`, `remains`, `price`, `status`, `date`, `time`, `provider`, `place_from`, `refund`) VALUES
(1, '4053350', '27702217', 'pencipta kode', 'Instagram Views [ 10M/Hour] [SUPER FAST] ZP', 'tes api', 100, 0, 0, 140, 'Pending', '2020-08-22', '02:37:46', 'MEDAN', 'WEB', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_game`
--

CREATE TABLE `orders_game` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `data` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `catatan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `refund` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_pulsa`
--

CREATE TABLE `orders_pulsa` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `data` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `sn` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `refund` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `orders_pulsa`
--

INSERT INTO `orders_pulsa` (`id`, `oid`, `poid`, `user`, `service`, `price`, `data`, `sn`, `status`, `date`, `place_from`, `provider`, `refund`) VALUES
(1, '7998373', '0906201236', 'Hafiz', 'Telkomsel 1.000', 1745, '081292979805', '01986200001799958442.', 'Success', '2020-06-09', 'WEB', 'DP-PULSA', '0'),
(2, '6481681', '1106205244', 'Hafiz', 'Telkomsel 1.000', 1745, '081292979805', '132622362192979805.', 'Success', '2020-06-11', 'WEB', 'DP-PULSA', '0'),
(3, '2514158', '1106204326', 'Andre', 'Garena 33 Shell', 9500, '081377661635', '6756332330914710', 'Success', '2020-06-11', 'WEB', 'DP-PULSA', '0'),
(4, '9165633', '1206200904', 'Hadi', 'MOBILELEGEND - 12 Diamond', 3725, '71568311', 'Transaksi Gagal', 'Error', '2020-06-12', 'WEB', 'DP-PULSA', '1'),
(5, '3559715', '1206203009', 'Hadi', 'MOBILELEGEND - 12 Diamond', 3725, '71568311', 'Transaksi Gagal', 'Error', '2020-06-12', 'WEB', 'DP-PULSA', '1'),
(6, '3329120', '1206201168', 'Hadi', 'MOBILELEGEND - 12 Diamond', 3725, '71568311', 'Transaksi Gagal', 'Error', '2020-06-12', 'WEB', 'DP-PULSA', '1'),
(7, '5634412', '1206202281', 'Hafiz', 'Telkomsel 1.000', 1745, '081292979805', '184734658492979805.', 'Success', '2020-06-12', 'WEB', 'DP-PULSA', '0'),
(8, '9861334', '1206205668', 'Andre', 'Free Fire 12 Diamond', 2375, '081377661635', 'Transaksi Gagal', 'Error', '2020-06-12', 'WEB', 'DP-PULSA', '1'),
(9, '1526050', '1206202036', 'Andre', 'Free Fire 12 Diamond', 2375, '081377661635', 'Transaksi Gagal', 'Error', '2020-06-12', 'WEB', 'DP-PULSA', '1'),
(10, '4082738', '1206207448', 'Andre', 'Free Fire 12 Diamond', 2375, '1141514042', '106887707-Akhy5553I', 'Success', '2020-06-12', 'WEB', 'DP-PULSA', '0'),
(11, '1852542', '1206206873', 'Andre', 'Free Fire 12 Diamond', 2375, '1141514042', '106887825-Akhy5553I', 'Success', '2020-06-12', 'WEB', 'DP-PULSA', '0'),
(12, '8367947', '1306206528', 'Hadi', 'Free Fire 12 Diamond', 2375, '2011009323', '107128811-KAIN-kusut', 'Success', '2020-06-13', 'WEB', 'DP-PULSA', '0'),
(13, '4736841', '1306208564', 'Hadi', 'Free Fire 12 Diamond', 2375, '2011009323', '107129096-KAIN-kusut', 'Success', '2020-06-13', 'WEB', 'DP-PULSA', '0'),
(14, '1684408', '1306200900', 'Hafiz', 'DANA Rp 30.000', 30420, '081292979805', '200613GM11214273/DANA DNID 081292979805', 'Success', '2020-06-13', 'WEB', 'DP-PULSA', '0'),
(15, '5488392', '1406206159', 'Hafiz', 'DANA Rp 25.000', 25420, '081292979805', '200614GM11219918/DANA DNID 081292979805', 'Success', '2020-06-14', 'WEB', 'DP-PULSA', '0'),
(16, '5449174', '1406205753', 'Hafiz', 'DANA Rp 10.000', 10545, '081292979805', '200614GM11219960/DANA DNID 081292979805', 'Success', '2020-06-14', 'WEB', 'DP-PULSA', '0'),
(17, '4031491', '1406209845', 'Hafiz', 'DANA Rp 50.000', 50420, '081292979805', '200614GM11224246/DANA DNID 081292979805', 'Success', '2020-06-14', 'WEB', 'DP-PULSA', '0'),
(18, '2620508', '1406200623', 'Ceff', 'DANA Rp 25.000', 25420, '081563187247', '200614GM11239236/DANA DNID 081563187247', 'Success', '2020-06-14', 'WEB', 'DP-PULSA', '0'),
(19, '7752899', '1406208003', 'Hafiz', 'Telkomsel 1.000', 1745, '081292979805', '136516742292979805.', 'Success', '2020-06-14', 'WEB', 'DP-PULSA', '0'),
(20, '6421389', '2206200035', 'Hadi', 'Free Fire 70 Diamond', 10105, '413653106', '1275026441241907200', 'Success', '2020-06-22', 'WEB', 'DP-PULSA', '0'),
(21, '1223800', '2306205433', 'Wahyu', 'Garena 66 Shell', 18750, '085279869738', '3471965366727319', 'Success', '2020-06-23', 'WEB', 'DP-PULSA', '0'),
(22, '4500776', '2406206039', 'Wahyu', 'Garena 33 Shell', 9500, '085268710049', '1425268382183322', 'Success', '2020-06-24', 'WEB', 'DP-PULSA', '0'),
(23, '7425351', '2108203966', 'Bencode', 'Telkomsel 1.000', 1745, '081387440301', '02059900001291259469', 'Success', '2020-08-21', 'WEB', 'DP-PULSA', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders_voucher`
--

CREATE TABLE `orders_voucher` (
  `id` int(10) NOT NULL,
  `oid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `poid` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `data` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `catatan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('Pending','Processing','Error','Success') COLLATE utf8_swedish_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `place_from` varchar(50) COLLATE utf8_swedish_ci NOT NULL DEFAULT 'WEB',
  `provider` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `refund` enum('0','1') COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_axis`
--

CREATE TABLE `pesan_axis` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_tri`
--

CREATE TABLE `pesan_tri` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan_tsel`
--

CREATE TABLE `pesan_tsel` (
  `id` int(11) NOT NULL,
  `isi` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `status` enum('UNREAD','READ') NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provider`
--

CREATE TABLE `provider` (
  `id` int(10) NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `provider`
--

INSERT INTO `provider` (`id`, `code`, `link`, `api_key`) VALUES
(1, 'DP-PULSA', 'https://serverh2h.com/order/pulsa', 'LVtKdIpy3iaKCsQblGCc'),
(2, 'MEDAN', 'https://medan-smm.co.id/api/sosial.php', 'kXsiDmQTVnLMfC6iGodf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `room`
--

CREATE TABLE `room` (
  `message` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` int(10) NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `sid`, `category`, `service`, `note`, `min`, `max`, `price`, `status`, `pid`, `provider`) VALUES
(1, 25, 'Instagram Likes Bule', 'Instagram Likes [10K ] [Very Less Drop][Natural Speed] ZP', 'Kecepatan: 100-300 / jam Garansi: Tidak Drop: Drop sangat rendah Garansi: Tidak', 20, 10000, 9700, 'Active', 25, 'MEDAN'),
(2, 26, 'Instagram Likes Bule', 'Instagram Likes [2k-4k/day] [Mixed] [Very Less Drop] ZP', 'Akun Real Looking - 2018.2019 Kecepatan: 2k-4k / hari Kualitas: Mencari Nyata Garansi: Tidak', 20, 10000, 9500, 'Active', 26, 'MEDAN'),
(3, 27, 'Instagram Likes Bule', 'Instagram Likes [Max 15k] [Cheapest] [No Refill] ZP', 'Tanpa Isi Ulang Kecepatan 1-2K / Per Hari Likes Can Drop Layanan Termurah', 20, 15000, 8000, 'Active', 27, 'MEDAN'),
(4, 28, 'Instagram Views', 'Instagram Views [ 10M/Hour] [SUPER FAST] ZP', '2 hours and 23 minutes', 100, 10000000, 1400, 'Active', 28, 'MEDAN'),
(5, 42, 'Youtube Comments', 'Youtube Comments [CUSTOM] [10K] [Super Fast] ZP', 'fast', 10, 10000, 116000, 'Active', 42, 'MEDAN'),
(6, 43, 'Youtube Like / Dislike', 'Youtube Likes [FAST - NO REFILL] ZP', 'FAST', 50, 50000, 14000, 'Active', 43, 'MEDAN'),
(7, 44, 'YouTube Subscribers Recomended', 'Youtube Usa Subscribers [100K] [R30] [1H - 50/Day] ZP', 'Waktu Mulai: Instan - 6 jam Kecepatan: 50 / hari (pola alami) Isi ulang: 30 hari Dijamin Spesifikasi: Real USA', 5, 1500, 208000, 'Active', 44, 'MEDAN'),
(8, 45, 'Youtube Like / Dislike', 'Youtube Likes [100K] [INSTANT] [NO REFILL] ZP', 'Waktu mulai: Instan Minimal: 10 Maks: 100rb TANPA Isi Ulang', 20, 100000, 26000, 'Active', 45, 'MEDAN'),
(9, 46, 'Likee app', 'Likee App Followers [10K] [R30] [1H - 2K/Day] ZP', 'Isi ulang: 30 hari Dijamin - Mulai INSTAN - Kecepatan hingga 2K per hari! (Kecepatan rata-rata per hari adalah 240-2000) - Setelah awal, dimungkinkan sebagian berdasarkan permintaan! - Ketika Anda mengubah tautan atau menyembunyikan pengikut akun, pesanan ditandai selesai! - TAUTAN LENGKAP - Harus memiliki setidaknya 1 pos!  Penting = Hanya isi ulang - Tidak ada sebagian Tidak ada pengembalian uang', 50, 30000, 131000, 'Active', 46, 'MEDAN'),
(10, 47, 'Likee app', 'Likee App Views [10K] [R30] [1H - 2K/Day] ZP', 'Isi ulang: 30 hari Dijamin - Mulai Instan - Kecepatan hingga 6K per hari! (Kecepatan rata-rata per hari 2K-6K) - Setelah awal, dimungkinkan sebagian berdasarkan permintaan! - Ketika Anda menghapus atau memblokir atau menyembunyikan posting, pesanan ditandai selesai!  Penting = Hanya isi ulang - Tidak ada sebagian Tidak ada pengembalian uang', 50, 30000, 41000, 'Active', 47, 'MEDAN'),
(11, 48, 'Likee app', 'Likee App Likes [10K] [R30] [1H - 2K/Day] ZP', 'Isi ulang: 30 hari Dijamin - Mulai Instan - Kecepatan hingga 3K per hari! (Kecepatan rata-rata per hari 200-3000) - Setelah awal, dimungkinkan sebagian berdasarkan permintaan! - Ketika Anda menghapus atau memblokir atau menyembunyikan posting, pesanan ditandai selesai!  Penting = Hanya isi ulang - Tidak ada sebagian Tidak ada pengembalian uang', 50, 30000, 66000, 'Active', 48, 'MEDAN'),
(12, 49, 'Likee app', 'Likee Share [10K] [R30] [1H - 2K/Day] ZP', 'Isi ulang: 30 hari Dijamin - Mulai Instan - Kecepatan hingga 1,5K per hari! (Kecepatan rata-rata per hari 200-1500) - Setelah awal, dimungkinkan sebagian berdasarkan permintaan! - Ketika Anda menghapus atau memblokir atau menyembunyikan posting, pesanan ditandai selesai!  Penting = Hanya isi ulang - Tidak ada sebagian Tidak ada pengembalian uang', 50, 30000, 41000, 'Active', 49, 'MEDAN'),
(13, 50, 'Likee Comment Custom', 'Likee App Comment Custom [10K] [R30] [1H - 700/Day] ZP', 'Isi ulang: 30 hari Dijamin - Mulai Instan - Kecepatan hingga 700 per hari! (Kecepatan rata-rata per hari 100-700) - Setelah memulai, pesanan tidak dapat dibatalkan - Ketika Anda menghapus atau memblokir atau menyembunyikan posting, pesanan ditandai selesai!  Penting = Hanya isi ulang - Tidak ada sebagian Tidak ada pengembalian uang', 10, 30000, 171000, 'Active', 50, 'MEDAN'),
(14, 57, 'Shopee/Tokopedia/Bukalapak', 'Shopee Followers Indonesia [MAX 4K] [FRESH] ZP', 'USERNAME ONLY', 100, 4000, 25000, 'Active', 57, 'MEDAN'),
(15, 58, 'Shopee/Tokopedia/Bukalapak', 'Shopee Feed Like Indonesia [MAX 4K] ZP', 'fast', 100, 4000, 7000, 'Active', 58, 'MEDAN'),
(16, 59, 'Shopee/Tokopedia/Bukalapak', 'Tokopedia Followers [MAX 70K] INSTANT ZP', 'FAST', 100, 70000, 3000, 'Active', 59, 'MEDAN'),
(17, 60, 'Shopee/Tokopedia/Bukalapak', 'Tokopedia Likes Feed [MAX 70K] ZP', 'FAST', 100, 70000, 2000, 'Active', 60, 'MEDAN'),
(18, 61, 'Shopee/Tokopedia/Bukalapak', 'Shopee Product Likes Indonesia [MAX 4K] [HQ] INSTANT ZP', 'FAST', 100, 4000, 9000, 'Active', 61, 'MEDAN'),
(19, 62, 'Instagram Followers Refill', 'Instagram Followers [20K] [R7] [1H - 1K/Day] ZP', 'Akun Berkualitas Rendah garansi 7 hari jika drop', 20, 20000, 13000, 'Active', 62, 'MEDAN'),
(20, 64, 'Instagram Followers Refill', 'Instagram Followers [100K] [R99] [1H - 5K/Day] ZP', 'Kecepatan 3-7k per hari Instan Tombol isi ulang 99 hari 1-3% turun setelah 30 hari', 10, 100000, 31000, 'Active', 64, 'MEDAN'),
(21, 65, 'Instagram Followers Refill', 'Instagram Followers [70K] [HQ] [AR30] [1H - 2.5-5K/Day] ZP', 'START TIME 0-1H GUARANTEED 30 DAYS SPEED 2.5K/DAY', 20, 70000, 39000, 'Active', 65, 'MEDAN'),
(22, 66, 'Instagram Followers Refill', 'Instagram Followers [150K] [R45] [1H - 2K/Day] ZP', 'Mulai: 0-1H Kecepatan: 1K - 2K / Hari Drop Sangat Rendah (5-10%) Akun yang bagus Isi ulang 45 hari', 100, 150000, 41000, 'Active', 66, 'MEDAN'),
(23, 67, 'Instagram Followers Refill', 'Instagram Followers [20K] [R30] [NON DROP] [100% REAL] [1H - 5K/Day] ZP', 'Waktu Mulai: 0 - 1 jam Kecepatan: 1-20K / Hari Kualitas: Akun 100% Aktif Nyata - 50K Maks per Akun Isi Ulang: NON DROP (jika ada drop Isi Ulang 30 Hari) - Kami Tidak Mengisi Ulang Jika Akun Anda Turun dari layanan lain Tombol Isi Ulang: AKTIF Pengikut Ekstra: 0% - 5%.', 100, 20000, 111000, 'Active', 67, 'MEDAN'),
(24, 68, 'Instagram Likes Bule', 'Instagram Likes [BETA - FAST - EXCLUSIVE] ZP', 'Layanan BETA TERMURAH BAIK BEKERJA Tanpa isi ulang / Tanpa pengembalian uang', 10, 25000, 7000, 'Active', 68, 'MEDAN'),
(25, 69, 'Instagram Likes Bule', 'Instagram Likes [15K] [EXCLUSIVE - 1.5K/Hour] ZP', 'MEDAN-SMM.CO.ID EKSKLUSIF 1.5K / Jam MIN = 10 MAX = 15k Tanpa isi ulang / Tanpa pengembalian uang', 10, 15000, 7000, 'Active', 69, 'MEDAN'),
(26, 70, 'Instagram Story', 'Instagram Story Views [9K] [1H - INSTANT] ZP', 'Semua Cerita Hanya Nama Pengguna Mulai 0-1 Jam! Sangat cepat! Minimal 100', 100, 30000, 2800, 'Active', 70, 'MEDAN'),
(27, 71, 'Instagram Story', 'Instagram Story Views [30K] [LAST STORY ONLY] [INSTANT - 30K/Day] ZP', 'Views On The Last Story HANYA Diposting! Hanya Nama Pengguna Mulai 0-1 Jam! Sangat cepat! Minimal 20', 20, 30000, 2900, 'Active', 71, 'MEDAN'),
(28, 72, 'Instagram Story', 'Instagram Story Views [30K] [INSTANT - 30K/Day] ZP', 'SEMUA CERITA! HANYA USERNAME! MULAI INSTAN! PENGIRIMAN CEPAT ! Min = 100 Maks = 30k', 100, 150000, 1750, 'Active', 72, 'MEDAN'),
(29, 79, 'Instagram TV', 'Instagram TV Views [MAX 100M] [INSTANT] ZP', 'FAST', 100, 1000000, 1385, 'Active', 79, 'MEDAN'),
(30, 80, 'Instagram TV', 'Instagram TV Views [MAX 100M] [5M PER DAYS] ZP', 'FAST', 200, 100000000, 3800, 'Active', 80, 'MEDAN'),
(31, 81, 'Tik Tok', 'TIktok Views Super Fast [Recommended] [10M/hour] ZP', '22 minutes', 100, 2147483647, 1095, 'Active', 81, 'MEDAN'),
(32, 82, 'Tik Tok', 'Tiktok Views [100K/hour] [Recommended] [Lifetime Guarantee] ZP', 'FAST', 100, 1000000, 1165, 'Active', 82, 'MEDAN'),
(33, 83, 'Tik Tok', 'Tiktok Views [Fastest] [Cheap] ZP', 'Jika Anda menyalahgunakan layanan, akun Anda akan ditangguhkan. 1rb dalam 1 mint', 1000, 100000000, 1020, 'Active', 83, 'MEDAN'),
(34, 84, 'Tik Tok', 'Tik Tok Likes [Instant start] [Mak 10k] [1k-5k/day] ZP', 'Kecepatan: 1k-5k / hari Garansi: 30 Hari', 100, 10000, 15000, 'Active', 84, 'MEDAN'),
(35, 85, 'Tik Tok', 'Tik tok Followers [Max 2k] [Bot Quality] [No Refil] ZP', 'Mulai waktu saya: Instan Tautan Diterima: https: //www.tiktok.com/@tiktok Kecepatan 1 k / jam - Tanpa Jaminan - Pengikut Tiktok biasanya tidak pernah turun tetapi kami tidak memiliki jaminan apa pun', 100, 2000, 26000, 'Active', 85, 'MEDAN'),
(36, 86, 'Tik Tok', 'Tik Tok Followers [MAX 100K] [20-30k/day] [30 days guarantee] ZP', '20-30k / hari - Jika kelebihan beban 5k-10k / hari Jaminan isi ulang 30 Hari Tautan diterima: https: //www.tiktok.com/@username,@username', 100, 100000, 66000, 'Active', 86, 'MEDAN'),
(37, 89, 'Layanan Facebook', 'Facebook Page likes [No Refill] [500/day] ZP', 'Kecepatan: 500 / hari Garansi: Tidak', 100, 4000, 35000, 'Active', 89, 'MEDAN'),
(38, 90, 'Layanan Facebook', 'Facebook Page Likes [30 Days Refill] [500/day] ZP', 'Kecepatan: 500 / hari Garansi: 30 Hari', 100, 5000, 39000, 'Active', 90, 'MEDAN'),
(39, 91, 'Layanan Facebook', 'Facebook Page Likes [S8] [30 Days Refill] [NSTANT] ZP', 'Suka Halaman Penggemar Facebook (Min 500 Dan Maks 50k) Waktu mulai - 0-24 jam jika kelebihan beban Isi Ulang Otomatis jika Suka Jatuhkan (Drop Ratio: 10% tapi kami menambahkan Isi-Ulang Otomatis di Sistem Backend) (Tanpa Isi Ulang jika drop kurang dari 10%) (Kecepatan 5-10rb Per Hari) Kualitas Tinggi dan Suka Nyata Isi ulang: Isi Ulang 30 Hari Otomatis [Pesanan sebelum 26 April, 15 hari isi ulang] Mulai 0-6 jam [Biasanya Instan]', 500, 70000, 60000, 'Active', 91, 'MEDAN'),
(40, 92, 'Layanan Facebook', 'Facebook Fan Page Likes [0-500] [LQ- Start instant - 3 hour] [NR] ZP', 'kecepatan = selesai instan | kualitas = LQ | Tidak ada Isi Ulang / Pengembalian Uang dalam hal apa pun', 20, 500, 65500, 'Active', 92, 'MEDAN'),
(41, 93, 'Layanan Facebook', 'Facebook Page Followers [30 days refill] ZP', 'Waktu Mulai: 0-6 jam Kecepatan per Hari: 1.000 Jaminan Isi Ulang 30 Hari Pembelian Minimum: 100 Pesanan Maksimum: 10.000', 100, 20000, 70000, 'Active', 93, 'MEDAN'),
(42, 94, 'Layanan Facebook', 'Facebook Post Likes [Max 4k] [500/day] ZP', 'Kecepatan: 500 / hari Tanpa Isi Ulang', 100, 4000, 21000, 'Active', 94, 'MEDAN'),
(43, 95, 'Layanan Facebook', 'Facebook Photo Likes [Super Fast and Instant] [Real Likes] ZP', 'Mulai Instan Kecepatan Super Cepat Isi Ulang 15 Hari Jika turun lebih dari 10% Nyata + Suka BOT 100% Aman', 100, 3000, 20000, 'Active', 95, 'MEDAN'),
(44, 96, 'Layanan Facebook', 'Facebook Post Likes [Instant - 3 hour start] [NR] ZP', 'kecepatan = selesai instan | kualitas = LQ | Tidak ada Isi Ulang / Pengembalian Uang dalam hal apa pun', 100, 500, 26000, 'Active', 96, 'MEDAN'),
(45, 97, 'Layanan Facebook', 'Facebook Views [Retention 40 seconds] [10k/day No Refill] ZP', '19 jam dan 11 menit', 100, 100000, 3000, 'Active', 97, 'MEDAN'),
(46, 98, 'Layanan Facebook', 'Facebook Views [Retention 60 seconds] [10k/day No Refill] ZP', '3 jam dan 56 menit', 100, 1000000, 3500, 'Active', 98, 'MEDAN'),
(47, 99, 'Instagram Custom Comments', 'Instagram Custom Comment [Super Fast] ZP', 'No Refill Super Fast Comment', 5, 5000, 181000, 'Active', 99, 'MEDAN'),
(48, 101, 'Layanan Facebook', 'Facebook Followers [Max 10k] [1-3K/Day] [30 days Refill] [Majority Indian] ZP', '0-2 H mulai {saat kelebihan beban dimulai dalam 6 jam} Jaminan isi ulang 30 hari', 100, 10000, 76000, 'Active', 101, 'MEDAN'),
(49, 109, 'Tik Tok', 'Tik tok View Gratis MD ZP', 'FAST no komplin', 500, 500, 1100, 'Active', 109, 'MEDAN'),
(50, 121, 'Instagram Followers Refill', 'Instagram followers [100k] [LOW DROP] [R60 Days] ZP', 'Mulai Instan Tombol Isi Ulang 60 Hari Kualitas tinggi 1k - 2k Kecepatan Per Hari Tombol Isi Ulang 60 Hari Diaktifkan Penurunan Rendah 20 Minimum 100rb Maks', 20, 100000, 41000, 'Active', 121, 'MEDAN'),
(51, 122, 'Instagram Followers Refill', 'Instagram Followers [Real Real Quality] [Max 100K] [30 Day Refill] ZP', 'Mulai Instan Kualitas tinggi Basis 100k maks Tombol Isi Ulang Diaktifkan Selama 30 Hari Pengikut Berkualitas Tinggi Tingkatkan Pengikut Alami Kecepatan Harian 2k - 3k Isi Ulang Tidak Diizinkan Untuk Drop Pengikut Lama Drop Rate biasanya 5-10%', 25, 100000, 44000, 'Active', 122, 'MEDAN'),
(52, 124, 'YouTube - Other', 'Youtube Shares [150K] [Lifetime Guarantee] ZP', 'Waktu Mulai: Instan - 1 jam Kecepatan: 1.5K / hari Isi ulang: Jaminan Seumur Hidup Spesifikasi: Pasang Tautan Video - Nyata', 50, 150000, 20500, 'Active', 124, 'MEDAN'),
(53, 125, 'YouTube - Other', 'Youtube Shares [250K] [Lifetime Guarantee] ZP', 'Waktu Mulai: Instan - 1 jam Kecepatan: 3K / hari Isi ulang: Jaminan Seumur Hidup Spesifikasi: Pasang Tautan Video - Nyata', 1000, 250000, 21000, 'Active', 125, 'MEDAN'),
(54, 126, 'YouTube - Other', 'Youtube Shares [50K] [USA] [Lifetime Guarantee] ZP', 'Waktu Mulai: Instan - 1 jam Kecepatan: 750 / hari Isi ulang: Jaminan Seumur Hidup Spesifikasi: Masukkan Tautan Video - AS', 50, 50000, 29000, 'Active', 126, 'MEDAN'),
(55, 132, 'Youtube Like / Dislike', 'Youtube Likes [Max 15K] [5K/D] ZP', 'Mulai: 0 - 24 jam - Min: 50 - Maks: 5K - Kecepatan harian 50 - 200 (Kecepatan bisa lebih lambat jika server kelebihan beban, dalam perawatan ini harus menunggu) - NON DROP sejauh ini - Jaminan Isi Ulang 30 hari  CATATAN : - Tidak ada Pengembalian Uang setelah pemesanan dilakukan - Tanpa Isi Ulang jika Suka Lama Jatuhkan Dibawah Mulai Hitungan.', 50, 15000, 36000, 'Active', 132, 'MEDAN'),
(56, 134, 'Youtube Live Streaming', 'Youtube Live Stream Views [MONETIZABLE] [REAL] ZP', '&amp;bull; MULAI INSTAN &amp;bull; 100% Pemirsa Pengguna YouTube Manusia Nyata! &amp;bull; Tampilan Halaman Desktop Windows &amp;amp; Mobile Watch &amp;bull; 100% Lalu Lintas Unik dapat dimonetisasi! &amp;bull; Pemirsa Seluruh Dunia &amp;bull; Harus Tidak Terbatas &amp;amp; Terbuka untuk SEMUA negara &amp;bull; Retensi Acak &amp;bull; Rata-rata Bersamaan dan waktu tonton berdasarkan konten streaming langsung &amp;bull; Batalkan Waktu dengan Pengembalian Uang Penuh / Sebagian &amp;bull; Lebih Dari Pengiriman Dijamin &amp;bull; penayangan dapat dikirim ke embed video streaming langsung yang dinonaktifkan &amp;bull; Sumber Lalu Lintas: Iklan Langsung', 1000, 100000, 76000, 'Active', 134, 'MEDAN'),
(57, 135, 'Youtube Live Streaming', 'Youtube Live Stream Views [24HOURS] [100-300 VIEWS] ZP', 'Rata-rata Serentak 100-300 akan tetap selama 24 jam &amp;bull; mulai 0-4j &amp;bull; 100% Pemirsa YouTube Manusia Nyata! &amp;bull; Interaksi Pengguna Termasuk &amp;bull; termasuk LIKES &amp;bull; Windows Desktop Watch Page &amp;bull; 100% Lalu Lintas Unik &amp;bull; Perujuk Sosial &amp;bull; Pemirsa Seluruh Dunia &amp;bull; Harus Tidak Terbatas &amp;amp; Terbuka untuk SEMUA negara &amp;bull; Pembatalan tidak dapat dilakukan setelah pesanan dimulai', 1000, 1000, 111000, 'Active', 135, 'MEDAN'),
(58, 150, 'Instagram Followers Refill', 'Instagram Followers [5K] [30 days refill] 1-3K/day] ZP', 'Mulai- Instan Kecepatan - 50k-100k / hari Tidak ada pengikut IG isi ulang', 100, 5000, 36000, 'Active', 150, 'MEDAN'),
(59, 152, 'Twitter', 'Twitter Followers [30 Days Refill] [Non Drop] [500-1k/day] ZP', 'Non Drop Isi ulang 30 hari Kecepatan 1k-3k per hari', 50, 4000, 226000, 'Active', 152, 'MEDAN'),
(60, 153, 'Twitter', 'Twitter Followers [Max 500] [No Refill] ZP', 'No refill 100% real', 100, 500, 48000, 'Active', 153, 'MEDAN'),
(61, 154, 'Twitter', 'Twitter Likes [Max 5k] [Instant Start] ZP', 'No Refill Sped - 5k/day', 10, 5000, 26000, 'Active', 154, 'MEDAN'),
(62, 155, 'Twitter', 'Twitter Impression [Max 10k] [Instant Start] ZP', 'Speed 10k/hour', 10, 10000, 16000, 'Active', 155, 'MEDAN'),
(63, 156, 'Twitter', 'Twitter Likes [Max 1K] ZP', 'no refill speed 300/day', 10, 800, 20000, 'Active', 156, 'MEDAN'),
(64, 157, 'Twitter', 'Twitter Video Views [50k/hour] [Cheapest] ZP', 'FAST', 100, 100000, 4500, 'Active', 157, 'MEDAN'),
(65, 168, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [Max 50k] [DB MD] ZP', 'No refill tidak ada komplin apa pun jika layanan ini drop dan proses fast paling lama 3x24 jam sampai 4x24 jam masukan username tanpa @ dan pastikan akun tidak di privat', 100, 50000, 58000, 'Active', 168, 'MEDAN'),
(66, 176, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [MAX 200] [FRES] ZP', 'Start : Tergantung Antrian // No Refill', 100, 200, 20000, 'Active', 176, 'MEDAN'),
(67, 187, 'Instagram Likes Indonesia', 'Instagram Indonesian Likes [Max 10k] [NO DROP] [FAST] ZP', 'NO DROP FAST MASUKAN LINK PHOSTINGAN DAN PASTIKAN AKUN TIDAK DI PRIVAT', 50, 10000, 39000, 'Active', 187, 'MEDAN'),
(68, 189, 'Instagram Likes Bule', 'Instagram Likes [150K] [NON DROP] [INSTANT - 5K/Day] ZP', 'Instant 5k-10k Per Day Speed no drop', 100, 150000, 14000, 'Active', 189, 'MEDAN'),
(69, 190, 'Youtube Views Refill', 'Youtube Views [10M] [6H - 100K/Day] ZP', 'Start Time: 4 - 6 hours Speed: 50K-100K/ day Refill: Lifetime Guaranteed Specs: 30 seconds retention', 100, 10000000, 23000, 'Active', 190, 'MEDAN'),
(70, 191, 'Youtube Views Refill', 'Youtube Views [50M] [R30] [6H - 100K/Day] ZP', 'Start Time: Instant - 6 hours Speed: Up to 100K/ day Refill: 30 days', 500, 50000000, 17500, 'Active', 191, 'MEDAN'),
(71, 192, 'Youtube - Views [Ads]', 'Youtube ADS Views [10M] [MIN 5K] [NEVER DROP] [72H - 200K/Day] ZP', 'Waktu Mulai: 12-72 Jam ðŸ”¥Terlihat Adword Benar - Iklan membutuhkan waktu 12-36 jam untuk persetujuan. ðŸ”¥Suka + Tampilan (Untuk Pesanan Besar) ðŸ”¥ Retensi Tinggi + Kesan Tinggi ðŸ”¥India Banyak Negara Campuran ðŸ”¥ Kecepatan Maks: 10k-200k / Hari Jika panjang video lebih pendek dari: - 1Min - Kecepatan 500k-1M 5Min- Kecepatan 10k-200k ( Lebih dari 5 menit Kecepatan akan rendah)  - Retensi - Retensi 30-80% - NonDrop Benar - Sumber Asli Sejati- Iklan Yt - Nondrop - Isi Ulang: Dijamin Seumur Hidup - Kualitas - Tinggi + Terbaik - LAYANAN SENDIRI [KAMI MENYEDIAKAN LAYANAN INI ]', 5000, 100000000, 25000, 'Active', 192, 'MEDAN'),
(72, 193, 'Youtube - Views [Ads]', 'Youtube ADS Views [10M] [NEVER DROP] [72H - 100K/Day] ZP', 'VIDEO HARUS KURANG DARI 5 MENIT DAN 30 DETIK UNTUK LAYANAN INI  Waktu Mulai: 0 - 72 Jam Kecepatan: 100K - 300K / Hari Lokasi: Isi Ulang Seluruh Dunia : Dijamin Seumur Hidup  - Tidak Ada Hak Cipta - Tidak Ada Dewasa - Tidak ada kata kunci yang kasar [contoh-apaan] - No Naked Images - No Punjabi Videos - No Gun / Drugs / Blood / Politics', 10000, 100000000, 20500, 'Active', 193, 'MEDAN'),
(73, 203, 'Tik Tok', 'TIK TOK FOLLOWERS [No refill] [1k / Hour] ZP', 'Masukin link profil mulai 0-1jam 1k / Hour No Refill', 10, 10000, 21500, 'Active', 203, 'MEDAN'),
(74, 207, 'Youtube Views Refill', 'Youtube Views 500-1K/day - Lifetime Guarantee ZP', 'Speed - 500-1k/day Start - 0-12 hours', 100, 10000, 26500, 'Active', 207, 'MEDAN'),
(75, 306, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [Love React] â¤ï¸ ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 306, 'MEDAN'),
(76, 307, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [Angry React] ðŸ˜¡ ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 307, 'MEDAN'),
(77, 308, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [Haha React] ðŸ˜€ ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 308, 'MEDAN'),
(78, 309, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [WoW React] ðŸ˜² ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 309, 'MEDAN'),
(79, 310, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [Sad React] ðŸ˜¢ ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 310, 'MEDAN'),
(80, 311, 'Facebook Photo Likes and Emoticon', 'Facebook India Super Instant Real [Care React] ðŸ¥° ZP', 'masukan link photo facebook contoh seperti https://www.facebook.com/100044510713732/posts/192967038863652/?app=fbl', 50, 5000, 31300, 'Active', 311, 'MEDAN'),
(81, 313, 'Instagram Likes Permenit', 'Instagram Likes [2-5 Likes Per Minute] ZP', 'FAST', 20, 5000, 19000, 'Active', 313, 'MEDAN'),
(82, 314, 'Instagram Likes Permenit', 'Instagram Likes [10-25 Likes Per Minute] ZP', 'FAST', 20, 5000, 19000, 'Active', 314, 'MEDAN'),
(83, 315, 'Instagram Likes Permenit', 'Instagram Likes [25-50 Likes Per Minute] ZP', 'FAST', 20, 5000, 19000, 'Active', 315, 'MEDAN'),
(84, 316, 'Instagram Likes Permenit', 'Instagram Likes [50-100 Likes Per Minute] ZP', 'FAST', 100, 10000, 19000, 'Active', 316, 'MEDAN'),
(85, 318, 'Layanan Instagram R365', 'Instagram Likes Real [Max 10k] [R365] ZP', 'garansi 365 hari jika drop', 100, 10000, 41000, 'Active', 318, 'MEDAN'),
(86, 319, 'Layanan Instagram R365', 'Instagram Likes Real [Max 3k] [R365] ZP', 'garansi 365 hari jika drop', 100, 3000, 50000, 'Active', 319, 'MEDAN'),
(87, 320, 'Layanan Instagram R365', 'Instagram Followers [Max 300k] R365 ZP', 'garansi 365 hari jika drop', 100, 300000, 91000, 'Active', 320, 'MEDAN'),
(88, 321, 'Layanan Instagram R365', 'Instagram Followers [Max 100k] R365 ZP', 'garansi 365 hari jika drop', 100, 100000, 106000, 'Active', 321, 'MEDAN'),
(89, 322, 'YouTube Subscribers Recomended', 'YouTube Subscribers [1K] [R365] [REKOMENDED] [50/D] ZP', 'Waktu Mulai: Instan - Kecepatan 12 jam : 50+ Per Hari! Isi ulang: 365 hari Spesifikasi: Pelanggan YT Nyata - Kualitas Tinggi Setelah 1K dipesan, Anda dapat memesan lagi', 20, 1000, 396000, 'Active', 322, 'MEDAN'),
(90, 323, 'Instagram Followers Bule', 'Instagram Followers [Max 10K] [NO REFILL] [5K/HOUR] ZP', 'HIGH DROP NO REFILL', 10, 10000, 4800, 'Active', 323, 'MEDAN'),
(91, 327, 'YouTube Subscribers Recomended', 'Youtube Subscribers [30 Days Guarantee] [200-300/day] [Best for Monetization Approval] ZP', 'Kecepatan Isi Ulang 30 Hari : 200-300 / hari Subscriber Kualitas Tinggi - Membantu Persetujuan Monetisasi Maksimal 50rb [Bisa pesan 25 kali - 2K]', 10, 2000, 274500, 'Active', 327, 'MEDAN'),
(92, 328, 'YouTube Subscribers Recomended', 'Youtube USA Subscriber High Quality [30 days gurantee] [200-400/Day] [HQ] [Recommended] ZP', 'Kecepatan 200-300 / hari Sub-sub Kualitas Tinggi Negara Amerika Serikat Total Basis 50rb Setelah pesanan pertama selesai Anda dapat menambahkan lagi Jika Anda menambahkan tautan video - penghitung tidak akan berfungsi tetapi subs akan masuk ke saluran 30 Hari jaminan isi ulang', 5, 2000, 276700, 'Active', 328, 'MEDAN'),
(93, 329, 'YouTube Subscribers Recomended', 'Youtube Subscribers [Max 1.5k] [30 Days Refill] [30-50/day] ZP', '-Instant Start -USA Pelanggan -Min: 5 - Max: 1.500 (Anda dapat menambahkan pesanan baru setelah pesanan Anda selesai. Maksimal yang sebenarnya adalah 80.000) -Order tidak dapat membatalkan setelah memulai. - Harap pastikan jumlah pelanggan saluran bersifat publik. (Pokoknya kami bisa mengirim subscriber ke private channel. Tapi bisa jadi kurang. Tapi kami tidak bisa isi ulang karena kami tidak bisa setel jumlah awal untuk channel private.) -Kecepatan harian 30-50 / hari. Saluran Anda akan menerima minimal 30-50 pelanggan setiap hari. Non stop dan pola alami. -30 hari jaminan isi ulang', 5, 1500, 214000, 'Active', 329, 'MEDAN'),
(94, 330, 'YouTube Subscribers Recomended', 'Youtube Subscribers [30-80 subs/day] [30 days refill] [Recommended] [Slow Speed] ZP', 'Isi ulang 30 hari, kecepatan 30-80 subs per hari, Mulai 0-24 jam beberapa kali jika kelebihan beban 48 jam', 50, 50000, 229000, 'Active', 330, 'MEDAN'),
(95, 331, 'YouTube Subscribers Recomended', 'Youtube Subscribers [30 days Refill] [20-100/day] ZP', 'KECEPATAN KUALITAS TINGGI - 20-100 / hari 30 Hari garansi Hanya Isi Ulang, Tanpa Pengembalian Uang', 20, 2000, 211000, 'Active', 331, 'MEDAN'),
(96, 334, 'Instagram Followers Bule', 'Instagram Followers [500-1K/DAY] INSTANT - Less Drop ZP', '500-1k/day less drop', 50, 10000, 21800, 'Active', 334, 'MEDAN'),
(97, 335, 'Instagram Likes Bule', 'Instagram Likes [300-500/Hours] INSTANT - NO REFILL ZP', 'Speed:300-500/hour Drop Rate: High No Refill: No Refund', 10, 10000, 7500, 'Active', 335, 'MEDAN'),
(98, 336, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [MAX 5K] [REAL AKTIF] ZP', 'proses paling lama 4x24 jam masukan username tanpa @', 100, 3000, 51000, 'Active', 336, 'MEDAN'),
(99, 337, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [MAX 500] [DB FRESH] ZP', 'proses paling lama 5x24 jam sudah sukses masukan username instagram tanpa @', 100, 250, 30000, 'Active', 337, 'MEDAN'),
(100, 338, 'Instagram Followers Indonesia', 'Instagram Followers Indonesia [MAX 1.5K] [SPECIAL FRESH] ZP', 'proses paling lama 5x24 jam sudah sukses masukan username instagram tanpa @', 100, 1500, 44000, 'Active', 338, 'MEDAN'),
(101, 339, 'Layanan Facebook', 'Facebook Live Stream Views [30 minutes] ZP', 'Jangan memesan dalam format berikut: -link mobile m.facebook.com -facebook.com/watch/live/?v=id Hanya pesan format yang bekerja paling baik: https://www.facebook.com/user(atau IDuser ) / videos / ID  jika Anda menambahkan link yang salah tidak ada Pengembalian Dana', 50, 2000, 236000, 'Active', 339, 'MEDAN'),
(102, 340, 'Layanan Facebook', 'Facebook Live Stream Views [60 minutes] ZP', 'Jangan memesan dalam format berikut: -link mobile m.facebook.com -facebook.com/watch/live/?v=id Hanya pesan format yang bekerja paling baik: https://www.facebook.com/user(atau IDuser ) / videos / ID jika Anda menambahkan link yang salah tidak ada Pengembalian Dana', 50, 2000, 446000, 'Active', 340, 'MEDAN'),
(103, 347, 'Tik Tok', 'Tik tok Likes [Max 2k] [1k/day] ZP', 'No Refill Speed-1k/day LQ', 10, 2000, 5500, 'Active', 347, 'MEDAN'),
(104, 348, 'Tik Tok', 'Tik tok Followers [Max 100K] [LQ Quality] No Refil ZP', 'Mulai TIme: Tautan Instan Diterima: https: //www.tiktok.com/@tiktok 1k / jam Kecepatan - Tanpa Jaminan - Pengikut Tiktok biasanya tidak pernah turun tetapi kami tidak memiliki jaminan apa pun', 100, 10000, 24500, 'Active', 348, 'MEDAN'),
(105, 349, 'YouTube Subscribers Recomended', 'Youtube USA Subscribers [50K] [R30] [1H - 50/Day] ZP', 'Waktu Mulai: Instan - 6 jam Kecepatan: 50 / hari (pola alami) Isi Ulang: 30 hari Spesifikasi yang Dijamin : Pengguna AS Asli', 5, 1500, 208000, 'Active', 349, 'MEDAN'),
(106, 350, 'Facebook Custom Comments', 'Facebook Custom Comments Male [Max 100] [INSTANT] ZP', 'EXAMPLE LINK https://www.facebook.com/1163463464664/videos/136565636447/', 10, 100, 1086000, 'Active', 350, 'MEDAN'),
(107, 351, 'Facebook Custom Comments', 'Facebook Custom Comments Female [Max 100] [REAL] [INSTANT] ZP', 'EXAMPLE LINK https://www.facebook.com/1163463464664/videos/136565636447/', 10, 100, 1086000, 'Active', 351, 'MEDAN'),
(108, 361, 'Layanan Facebook', 'Facebook Video Views [Max 1M] ZP', 'Start Time: Instant Speed: 500K/ day Refill: no Specs: Real - MOBILE Links are NOT Supported !', 100, 100000, 2950, 'Active', 361, 'MEDAN'),
(109, 362, 'Layanan Facebook', 'Facebook Video Views [10M] [1H - 500K/Day] ZP', 'Start Time: Instant Speed: 500K/ day Refill: no Specs: Real - MOBILE Links are NOT Supported !', 500, 100000000, 2750, 'Active', 362, 'MEDAN'),
(110, 271, 'Youtube ð‡ð‘ Views [ watch times ]', 'Youtube Views [High Retention -1k-5k/day] [5mint-20 Mint] [Lifetime Guarantee] ZP', 'Tampilan Youtube Retensi  Retensi Tinggi :  Jaminan 5-20 Menit :  Kecepatan Jaminan Seumur Hidup - 1k-5k / hari', 100, 10000, 35500, 'Active', 271, 'MEDAN'),
(111, 371, 'YouTube Subscribers', 'Youtube subscribers [150-300/D] [R30] [Max 2k] ZP', '150 - 300/D garansi 30 hari rasio drop 0-5% overflow - 0-10% Tidak ada pengembalian uang, hanya Isi Ulang', 5, 2000, 239000, 'Active', 371, 'MEDAN'),
(112, 372, 'Tik Tok', 'Tik tok Video Likes - 1k/Hour ZP', 'No Refill 1k./hour', 50, 3000, 14500, 'Active', 372, 'MEDAN'),
(113, 373, 'Instagram Followers Bule', 'Instagram Followers [Real Accounts] [100% Real] No Refill - Less Drop ZP', '100% Real Instant Start Less drop', 50, 20000, 66500, 'Active', 373, 'MEDAN'),
(114, 374, 'Instagram Followers Bule', 'Instagram Followers [Max 3K] [Less Drop - Majority Real] [Arabic Quality] ZP', '722 hours and 45 minutes	NO REFILL', 100, 3000, 42500, 'Active', 374, 'MEDAN'),
(115, 375, 'Instagram Followers Bule', 'Instagram Followers [Max 50k] [No Refill] [10k/day] ZP', 'Speed 10k/day Cancel button Bot profile- High Drop', 10, 50000, 12800, 'Active', 375, 'MEDAN'),
(116, 376, 'Instagram Followers Bule', 'Instagram Followers [Real Mix] [NR] ZP', 'No Refill 0-1 Hours start Min 10 and Max 15k Speed 5k Per day HIGH DROP 90-100%', 100, 500, 13900, 'Active', 376, 'MEDAN'),
(117, 377, 'Instagram Followers Bule', 'Instagram Followers [Max 1k] [LQ PROFILE] ZP', '1k/hour No refill Real majority drop is less as of now', 100, 1000, 18500, 'Active', 377, 'MEDAN'),
(118, 378, 'Youtube Like / Dislike', 'Youtube Likes [30 days Refill] [2-3k/day] ZP', '30 days guarantee speed=2-3k/day', 50, 100000, 23500, 'Active', 378, 'MEDAN'),
(119, 379, 'Youtube Like / Dislike', 'Youtube Likes [Max 50k] [Instant Start] [30 Days refill] [Best] ZP', 'Max 25k Speed 5-7K Per Day Refill: 30 Days Start Time 0-2 hours Refill Drop Rate is 5-15%', 20, 25000, 40500, 'Active', 379, 'MEDAN'),
(120, 380, 'Layanan Facebook', 'Facebook Post Likes [ARAB] [5K] ZP', 'Real Accounts Fast Speed Min = 100 Max = 2k Instant to 1 Hour Start ARAB Post Likes no refill', 100, 5000, 29500, 'Active', 380, 'MEDAN'),
(121, 381, 'Layanan Facebook', 'Facebook Post Likes [20K] [R10] [1H - INSTANT] ZP', 'Start time - Super Instant Speed - 10000 in 1 hour Extra 10% Deliver Every time Maximum likes - 20k Minimum likes - 50 Quality - Real 10 Days Refill Worldwide Likes', 50, 50000, 32500, 'Active', 381, 'MEDAN'),
(122, 382, 'Layanan Facebook', 'Facebook Story Views [1K] [1H - 1K/Day] ZP', 'View All Stories (up to 10 Stories) MAX IS 1K only (don&amp;#039;t order multiple times) No Refill / No Refund', 20, 1000, 115500, 'Active', 382, 'MEDAN'),
(123, 383, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [5000 HOURS] [MIN 100] EXCLUSIVE ZP', 'Quality : Real Views // Start : 0-1 Hours // Speed : 300-500/Days (Some times Will faster or Slower) // After Place order , us cant cancel // Refill 30 Days // Note : Jika Anda memesan 1000 views kemungkinan mendapat 900-1000 jam tayang // Jika Anda memesan 4000 views kemungkinan mendapat 3800-4000 jam tayang // Berarti jika memesan 4200 views maka akan mendapatkan 4000 jam tayang // Harap hitung dengan sesuai // Jika views lama Anda turun di bawah hitungan awal, maka kami tidak dapat Isi Ulang / Pengembalian Dana / Pembatalan / Pembatalan Sebagian // Jika video Dihapus, Ditolak, Pribadi sementara kami menambahkan waktu tonton atau setelah selesai, maka kami tidak dapat Isi Ulang / Pengembalian Dana / Batalkan / Sebagian //', 100, 5000, 156000, 'Active', 383, 'MEDAN'),
(124, 384, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [4000 HOURS] [DURASI VIDEO 1 JAM] [R30] EXCLUSIVE ZP', 'Target : Link Video Youtube // After Place order , us cant cancel // Start : 0-12 Hours // Quantity : Hours // Refill 30 Days // Note : If you put video : private or removed or have views drop below start count : No refund // Better , pls unlisted video while run watch times // Dont use other views while running watch times.', 1000, 4000, 121000, 'Active', 384, 'MEDAN'),
(125, 385, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [4000 HOURS] [DURASI VIDEO 1 JAM] [R30] ZP', 'Target : Link Video Youtube // Quality : Real Views // Start : 0-12 Hours // Quantity : Hours // Jika Anda menggunakan video 1jam+ maka estimasi pesanan selesai selama 7-10 hari dan jika video 2 jam+ maka estimasi pesanan selesai selama 3-5 hari // Refill 30 Days // Setelah memesan, kami tidak bisa membatalkan // Note : Harap letakkan video hanya berdurasi 1 jam+ (Jika kurang, pesanan masih berjalan tetapi waktu tonton tidak akan cukup, kami tidak dapat Isi Ulang / Pengembalian Dana / Batal / Pembatalan sebagian dalam kasus ini) // Jika pandangan lama Anda turun di bawah hitungan awal, maka kami tidak dapat Isi Ulang / Pengembalian Dana / Pembatalan / Pembatalan Sebagian // Jangan gunakan tampilan lain saat menambahkan waktu menonton, Anda tidak akan mendapatkan cukup waktu menonton, kami tidak dapat Isi Ulang / Pengembalian Dana / Pembatalan / Sebagian dalam hal ini // Gunakan video tanpa tampilan interleaving alami (Jika Anda mendapatkan tampilan natural secara bersamaan sambil menjalankan waktu tonton, Anda tidak akan mendapatkan cukup waktu tonton.) // Jika video Dihapus, Ditolak, Pribadi sementara kami menambahkan waktu tonton atau setelah selesai, maka kami tidak dapat Isi Ulang / Pengembalian Dana / Batalkan / Sebagian.', 1000, 4000, 126000, 'Active', 385, 'MEDAN'),
(126, 388, 'YouTube Subscribers', 'Youtube Subscribers [MAX 15K] [2K PER DAYS] [TERMURAH] ZP', 'Start : 0-1 Hours (Instant) // Speed : Up to 2K/Days // No Refill No Refund with any reason (Old drop , Stuck , Slow, Dsb).', 100, 15000, 83000, 'Active', 388, 'MEDAN'),
(127, 389, 'YouTube Subscribers', 'Youtube Subscribers [MAX 3K] [2K PER DAYS] [R30] [TERMURAH] ZP', 'Start : 0-1 Hours // Speed : 2K/Days // 30 days refill if have drop more than 10%', 50, 3000, 135000, 'Active', 389, 'MEDAN'),
(128, 398, 'Instagram Followers Refill', 'Instagram Followers [180 days Refill] [3k/day] ZP', '180 days guarantee 3k/day', 100, 20000, 49500, 'Active', 398, 'MEDAN'),
(129, 399, 'Twitter', 'Twitter Video Views [Max 5M] [High Speed] ZP', 'FAST', 100, 5000000, 4850, 'Active', 399, 'MEDAN'),
(130, 400, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 10K] ZP', 'Kualitas : Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 10000, 10000, 48000, 'Active', 400, 'MEDAN'),
(131, 401, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 7K] ZP', 'Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 7000, 7000, 76000, 'Active', 401, 'MEDAN'),
(132, 402, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 5K] ZP', 'Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 5000, 5000, 79000, 'Active', 402, 'MEDAN'),
(133, 403, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 3K] ZP', 'Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 3000, 3000, 81000, 'Active', 403, 'MEDAN'),
(134, 404, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 2K] ZP', 'Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 2000, 2000, 86000, 'Active', 404, 'MEDAN'),
(135, 405, 'Instagram Followers Indonesia', 'INSTAGRAM FOLLOWERS INDONESIA [REAL] [FEMALE] [SUPER INSTANT] [PAKET 1K] ZP', 'Real Indonesia Aktif (Female 80-90%) // Layanan ini cocok untuk akun bisnis, olshop, maupun pribadi. Karena layanan ini memiliki kualitas real aktif sehingga berpotensi tinggi untuk melakukan interaksi, menyukai, melihat, menjangkau postingan, dan lainnya. // Estimasi pesanan selesai : 1X24 JAM (Jika overload, mungkin 3 hari) // Kapasitas order : 288/Days // No Refill', 1000, 1000, 87000, 'Active', 405, 'MEDAN'),
(136, 408, 'Instagram Followers Refill', 'Instagram Followers [90 Days Refill] [1k-2k/day] ZP', '90 Days Refill Refill Button Enabled 1k-2k/day', 50, 20000, 34500, 'Active', 408, 'MEDAN'),
(137, 409, 'Youtube Like / Dislike', 'Youtube Likes [No Refill] [5k-10K/day] ZP', 'No Refill Speed -2-5k/Day', 100, 100000, 20500, 'Active', 409, 'MEDAN'),
(138, 410, 'Instagram Followers Refill', 'Instagram Followers [30K] [R180] [1H - 3K/Day] ZP', 'GUARANTEED 30 DAYS', 100, 30000, 40500, 'Active', 410, 'MEDAN'),
(139, 411, 'Instagram Followers Refill', 'Instagram Followers [20K] [R30] [6H - 3K/Day] ZP', 'Start Time: Instant - 6 hours Speed: 3K/ day Refill: 30 days Specs: Up to 70% Real Accounts - Refill Button - Up to 40% Drop', 50, 20000, 49500, 'Active', 411, 'MEDAN'),
(140, 412, 'Instagram Followers Refill', 'Instagram Followers [10K] [REAL] [R15] [DROP UP TO 10% ONLY] [1H - 1K/Day] ZP', '80% Real/Inactive old accounts [Not BOT&amp;#039;s] Less Drop [Max %5/10] Natural increase [500/1K/Day]  EXAMPLE LINK', 100, 50000, 69500, 'Active', 412, 'MEDAN'),
(141, 413, 'Instagram Followers Refill', 'Instagram Followers [50K] [R30] [LOW DROP] [1H - 10K/DAY] ZP', 'Start Time: INSTANT Speed: 5K/Hour Quality: Best Quality Refill: 15 Days - NON DROP', 200, 100000, 70500, 'Active', 413, 'MEDAN'),
(142, 414, 'Instagram Followers Refill', 'Instagram Followers [75K] [R30] [1H - 1K/Day] ZP', 'Start: 0-1H Speed: 500-1K/Day Very Low Drop (5-10%) HQ accounts 30 days Refill', 100, 75000, 46800, 'Active', 414, 'MEDAN'),
(143, 415, 'Instagram Followers Refill', 'Instagram Followers [55K] [HQ] [R30] [2H - 2.5K/Day] ZP', 'Drop rate ~ 5-10% Refill: 30 Days HQ accounts', 50, 55000, 45800, 'Active', 415, 'MEDAN'),
(144, 416, 'Instagram Followers Refill', 'Instagram Followers [30K] [60% REAL] [R30] [1H - 5K/Day] ZP', 'GUARANTEED 30 DAYS', 100, 30000, 38900, 'Active', 416, 'MEDAN'),
(145, 417, 'Instagram Followers Refill', 'Instagram Followers [15K] [60% REAL] [R30] [1H - 5K/Day] ZP', 'GUARANTEED 30 DAYS', 100, 15000, 36000, 'Active', 417, 'MEDAN'),
(146, 418, 'Youtube Views Refill', 'Youtube Views [5M/D] [Retention 10 Seconds] [R30] ZP', 'Garansi 30 hari jika drop / 500 M views per hari masukan link vidio youtube', 1000, 5000000, 16500, 'Active', 418, 'MEDAN'),
(147, 419, 'Jam Tayang YouTube', 'Youtube Watchtime [4000 HOURS] [1-2 Hour Start] [30 days guarantee] ZP', 'Harap letakkan tautan video 1 jam + Mulai dalam 1-2 jam Pesanan selesai dalam 3-7 hari Isi Ulang 30 Hari - Jangan jadikan video pribadi setelah menerima Waktu Tonton dan coba buat konten asli  Jangan Tambahkan Video di bawah 1 jam', 100, 4000, 156000, 'Active', 419, 'MEDAN'),
(148, 1, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [Real Aktif] [Max 300] ZP', 'proses kedip hanya membutuhkan waktu hitungan menit saja \r\nhanya bisa di gunakan 1 photo 1 layanan', 10, 300, 30000, 'Active', 1, 'MEDAN'),
(149, 2, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [Real Aktif] [Max 200]	 ZP', 'proses kedip hanya membutuhkan waktu hitungan menit saja hanya bisa di gunakan 1 photo 1 layanan	', 100, 200, 25000, 'Active', 2, 'MEDAN'),
(150, 3, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [Real Aktif] [Max 100]	 ZP', 'proses kedip hanya membutuhkan waktu hitungan menit saja hanya bisa di gunakan 1 photo 1 layanan	', 100, 100, 18000, 'Active', 3, 'MEDAN'),
(151, 4, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [Real Aktif] [Termurah Di Bumi]	 ZP', 'fast', 100, 100, 5000, 'Active', 4, 'MEDAN'),
(152, 420, 'Youtube - Views [Ads]', 'Youtube Adwords view [MAX 1M] ZP', 'Approval Average Time 6-12 hours In some cases 24 hours Speed 500k-1M/day', 100000, 1000000, 18300, 'Active', 420, 'MEDAN'),
(153, 421, 'Instagram Followers Refill', 'Instagram Followers - MAX 15K [REFILL 30DAYS] [Instant Start] ZP', 'Instant Start Real', 50, 15000, 31000, 'Active', 421, 'MEDAN'),
(154, 5, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [NO DROP] [REAL] [Max 500]	 ZP', 'FAST PROSES 1 LINK PHOTO 500 LIKES NO DROP TERMURAH DI MANA PUN', 100, 500, 37000, 'Active', 5, 'MEDAN'),
(155, 422, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [4000 HOURS] [MIN 100] [R30] ZP', 'Target : Link Video Youtube // Start : 1-2 Hours // Order is finished in 3-7 days // Refill 30 Days // Note : Please put video link of 1 hours+ and Do not make video private after receiving Watchtime and try to make orginal content // Quantity : Hours', 100, 4000, 141000, 'Active', 422, 'MEDAN'),
(156, 423, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [MAX 4K] [CEK DESKRIPSI] ZP', 'Target : Link video youtube dan minimal durasi video adalah 1 jam+ // Start : Instant // Quantity : Hours // If Drop, No Refill', 100, 4000, 76500, 'Active', 423, 'MEDAN'),
(157, 424, 'Jam Tayang YouTube', 'YOUTUBE JAM TAYANG [1000 HOURS] [CEK DESKRIPSI] ZP', 'Target : Link video youtube dan minimal durasi video adalah 1 jam+ // Start : Instant // If Drop, No Refill', 1000, 1000, 77500, 'Active', 424, 'MEDAN'),
(158, 425, 'Layanan Facebook', 'Facebook Profile Followers [MAX 15K] [REAL INDONESIA] [NON DROP] ZP', 'Quality : Real // Start : Instant // Speed : 10K/Hours // NON DROP (IF DROP NO REFILL)', 50, 15000, 63000, 'Active', 425, 'MEDAN'),
(159, 426, 'Instagram Followers Bule', 'Instagram Followers [No Refill] [Max 15k] ZP', 'bot fast no refill', 10, 15000, 3600, 'Active', 426, 'MEDAN'),
(160, 427, 'Instagram Followers Bule', 'Instagram Followers [Max - 5k] [No Refill] [Instan] ZP', 'slow no refill', 100, 5000, 3800, 'Active', 427, 'MEDAN'),
(161, 428, 'Youtube Views Refill', 'Youtube Views [Max 500k] [20K Per Days] [REAL VIP] [R20] ZP', 'Instant Start 1-3mins Retention 50k-100k/day 20 Days Refill', 100, 100000000, 37500, 'Active', 428, 'MEDAN'),
(162, 7, 'Instagram Followers Indonesia [Bergaransi]', 'Instagram Followers Indonesia [REAL] [Max 200] [NO DROP]	 ZP', 'FAST PROSES PALING LAMA 1X24 JAM MASUKAN USERNAME TANPA @ PASTIKAN AKUN TIDAK DI PRIVAT LAYANAN INI HANYA BISA ORDER 1X PER AKUN ', 200, 200, 67000, 'Active', 7, 'MEDAN'),
(163, 429, 'Youtube Views Refill', 'Youtube Views - Emergency Server [Lifetime Guarantee] ZP', 'Retention - 2-5 minutes Speed 20-50k/day Lifetime Guarantee Emergency Server', 1000, 10000000, 47500, 'Active', 429, 'MEDAN'),
(164, 430, 'Layanan Facebook', 'Facebook Profile Followers [Indonesian] Targeted ZP', 'Input target gunakan LINK PROFIL FROM BROWSER - https://www.facebook.comJANGAN DARI APK MOBILE', 50, 15000, 59000, 'Active', 430, 'MEDAN'),
(165, 431, 'Layanan Facebook', 'Facebook Profile Followers [Philippines] Targeted ZP', 'Input target gunakan LINK PROFIL FROM BROWSER - https://www.facebook.comJANGAN DARI APK MOBILE', 50, 6000, 59000, 'Active', 431, 'MEDAN'),
(166, 432, 'Layanan Facebook', 'Facebook Profile Followers [Vietnam] Targeted ZP', 'Input target gunakan LINK PROFIL FROM BROWSER - https://www.facebook.comJANGAN DARI APK MOBILE', 50, 3000, 59000, 'Active', 432, 'MEDAN'),
(167, 433, 'Layanan Facebook', 'Facebook Profile Followers [Bangladesh] Targeted ZP', 'Input target gunakan LINK PROFIL FROM BROWSER - https://www.facebook.comJANGAN DARI APK MOBILE', 50, 3000, 59000, 'Active', 433, 'MEDAN'),
(168, 434, 'Youtube Views No Refill', 'Youtube - Views [5k-20k/day] [Read Description] [No Refill] ZP', 'Instant Start 5-20k/day', 100, 100000, 14500, 'Active', 434, 'MEDAN'),
(169, 435, 'YouTube Subscribers Recomended', 'Youtube - Subscribers USA [200-250/day] ZP', '- Instant Start - 200 subscribers / day - Totaly USA subscribers. - Minimum: 5 - Maximum: 2.000 (per order) After order completed you can add again. - - Real maximum: 100.000 - 30 day refill guarantee.', 5, 2000, 286000, 'Active', 435, 'MEDAN'),
(170, 436, 'YouTube Subscribers Recomended', 'Youtube Subscribers USA [30-50 Sub/D] [Instan] ZP', 'Instant Start USA Subscribers Min: 5 - Max: 1.500 ( You can add new order after your order complete. Actual maximum is 80.000 ) Daily speed 30-50 /day . Your channel will receive minimum 50 subscribers each day. Non stop and natural pattern. 30 days refill guarantee', 5, 1500, 226000, 'Active', 436, 'MEDAN'),
(171, 437, 'YouTube Subscribers Recomended', 'Youtube - Subscribers [200/day] [Max - 2k] [30 Days Refill] ZP', 'Instant Start - 200 subscribers / day - Minimum: 5 - Maximum: 2.000 (per order) After order completed you can add again. - - Real maximum: 100.000 - 30 day refill guarantee.', 5, 2000, 296000, 'Active', 437, 'MEDAN'),
(172, 438, 'YouTube - Other', 'YouTube Social Shares from Facebook ZP', 'ðŸŒ WorldWide Social Shares from Facebook  âœ”ï¸ Unique &amp;amp; Natural SEO for your Video âœ”ï¸ Help with Ranking âœ”ï¸ Safe for use! NO SPAM / BOTS methods  ðŸ”’ Lifetime Guaranteed  âš¡ Speed 300+ Shares per day  âœï¸ Link Format: Full Video URL', 100, 10000, 17500, 'Active', 438, 'MEDAN'),
(173, 439, 'YouTube - Other', 'Youtube - Share [Superfast] INSTANT ZP', 'Instant Start 10k/day Real Shares Min 50 Max 100k Note : Shares only can check the video owner in analytics Or you have to check with some plugins.', 100, 100000, 19700, 'Active', 439, 'MEDAN'),
(174, 440, 'Jam Tayang YouTube', 'Youtube Watch Time [Min 100] [Cek Deskripsi] ZP', 'Mulai Instan Video harus 60 menit + Tanpa isi ulang (Jika drop)  Untuk mendapatkan 4000 jam - Anda perlu membeli 4000 kuantitas.', 100, 4000, 71500, 'Active', 440, 'MEDAN'),
(175, 441, 'Jam Tayang YouTube', 'Youtube Watch Time [1000 JAM] [Cek Deskripsi] ZP', 'Durasi Video Mulai Instan harus 60 menit + TANPA Isi Ulang (Ini bisa dijatuhkan, Jadi Setelah kami mengirimkan, kami tidak dapat melakukan apa pun) 24-48 jam waktu lengkap!', 1000, 1000, 71500, 'Active', 441, 'MEDAN'),
(176, 442, 'Jam Tayang YouTube', 'Youtube Watch Time [2000 JAM] [Cek Deskripsi] ZP', 'Durasi Video Mulai Instan harus 60 menit + TANPA Isi Ulang (Ini bisa dijatuhkan, Jadi Setelah kami mengirimkan, kami tidak dapat melakukan apa pun) 24-48 jam waktu lengkap!', 2000, 2000, 143000, 'Active', 442, 'MEDAN'),
(177, 443, 'Jam Tayang YouTube', 'Youtube Watch Time [3000 JAM] [Cek Deskripsi] ZP', 'Durasi Video Mulai Instan harus 60 menit + TANPA Isi Ulang (Ini bisa dijatuhkan, Jadi Setelah kami mengirimkan, kami tidak dapat melakukan apa pun) 24-48 jam waktu lengkap!', 3000, 3000, 213000, 'Active', 443, 'MEDAN'),
(178, 444, 'Jam Tayang YouTube', 'Youtube Watch Time [4000 JAM] [Cek Deskripsi] ZP', 'Durasi Video Mulai Instan harus 60 menit + TANPA Isi Ulang (Ini bisa dijatuhkan, Jadi Setelah kami mengirimkan, kami tidak dapat melakukan apa pun) 24-48 jam waktu lengkap!', 4000, 4000, 286000, 'Active', 444, 'MEDAN'),
(179, 9, 'Instagram Likes Indonesia Server 1', 'Instagram Likes Indonesia [Real] [Termurah Di Bumi] ZP', 'fast kedip bos ku', 100, 100, 2000, 'Active', 9, 'MEDAN'),
(180, 445, 'Instagram Followers Refill', 'Instagram Followers [REAL] [R20] [ALMOST NODROP] ZP', 'Username/Full Link SUPER INSTANT Real Followers REFILL BUTTON ACTIVATED! 10k per day Min 50 Max 50k (You can add 10k*5) Refill 20', 100, 20000, 96000, 'Active', 445, 'MEDAN'),
(181, 446, 'Instagram Followers Refill', 'Instagram Followers [REAL] [R30] [NODROP] [MAX 100K] ZP', 'INSTANT START NON DROP ( IF DROP 30 DAYS REFILL ) 3K-5K/DAY', 50, 100000, 136000, 'Active', 446, 'MEDAN'),
(182, 447, 'Youtube - Views [Ads]', 'Youtube ADS Views [FAST APPROVAL] [2M - 3M/D] ZP', 'Layanan Terbaik untuk Pertumbuhan Video &amp;amp;amp; Channel!  &amp;amp;bull; 100% Tampilan Adwords Nyata &amp;amp;bull; Persetujuan: Maksimum Dibutuhkan 1 hingga 6 jam, Setelah persetujuan pesanan mulai otomatis! &amp;amp;bull; Pembatasan: Video harus kurang dari 5 menit &amp;amp;bull; Jenis Video: Semua Video diterima, Punjabi Video juga diterima! &amp;amp;bull; Garansi: Dijamin Seumur Hidup &amp;amp;bull; Kecepatan: 2 juta hingga 3 juta per hari (Kami dapat melakukan lebih banyak jika diperlukan)', 50000, 1000000000, 30500, 'Active', 447, 'MEDAN'),
(183, 448, 'Instagram Views', 'Instagram Views Server 1 [INSTAN] [Max 2M] ZP', 'FAST', 50, 3000000, 1250, 'Active', 448, 'MEDAN'),
(184, 449, 'Instagram Views', 'Instagram Views Server 1 + Impressions [INSTAN] ZP', 'FAST', 100, 10000000, 1025, 'Active', 449, 'MEDAN'),
(185, 450, 'Instagram Views', 'Instagram Views Server 1 [Max 200K/D ][INSTAN] ZP', 'INSTANT START', 100, 100000000, 1035, 'Active', 450, 'MEDAN'),
(186, 451, 'Instagram Views', 'Instagram Views Server 1 [Max 50M/D ][FAST] ZP', 'FAST', 1000, 100000000, 1065, 'Active', 451, 'MEDAN'),
(187, 452, 'Instagram Views', 'Instagram Views Server 1 [Max 50M/D][FAST] [INSTAN] ZP', 'INSTAN', 50, 50000000, 1275, 'Active', 452, 'MEDAN'),
(188, 453, 'Instagram Views', 'Instagram Views Server 1 [Max 10M] [FAST] ZP', 'FAST', 250, 1000000, 1195, 'Active', 453, 'MEDAN'),
(189, 454, 'Instagram Likes Bule', 'Instagram Likes Server 1 [1K/D] [INSTAN] [LQ] ZP', 'FAST', 20, 20000, 6300, 'Active', 454, 'MEDAN'),
(190, 455, 'Instagram Likes Bule', 'Instagram Likes Server 1 [SUPER FAST] [INSTAN] ZP', 'FAST', 10, 100000, 7500, 'Active', 455, 'MEDAN'),
(191, 456, 'Instagram Story', 'Instagram Story Server 1 [SUPER FAST] [INSTAN] ZP', 'INSTANT START', 500, 35000, 1185, 'Active', 456, 'MEDAN'),
(192, 457, 'Instagram Story', 'Instagram Story Server 1 [SUPER FAST] [INSTAN] [Max 25K] ZP', 'FAST', 100, 25000, 1550, 'Active', 457, 'MEDAN'),
(193, 458, 'Instagram Story', 'Instagram Story Server 1 [SUPER FAST] [INSTAN] [Max 50K] ZP', 'FAST', 100, 50000, 1750, 'Active', 458, 'MEDAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services2`
--

CREATE TABLE `services2` (
  `id` int(10) NOT NULL,
  `sid` int(10) NOT NULL,
  `category` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `note` text COLLATE utf8_swedish_ci NOT NULL,
  `min` int(10) NOT NULL,
  `max` int(10) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` int(10) NOT NULL,
  `provider` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_game`
--

CREATE TABLE `services_game` (
  `id` int(3) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `service` varchar(100) NOT NULL,
  `oprator` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not Active') NOT NULL,
  `provider` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_pulsa`
--

CREATE TABLE `services_pulsa` (
  `id` int(10) NOT NULL,
  `sid` varchar(10) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `category` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `service` text COLLATE utf8_swedish_ci NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not active') COLLATE utf8_swedish_ci NOT NULL,
  `pid` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `provider` text COLLATE utf8_swedish_ci NOT NULL,
  `note` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `services_pulsa`
--

INSERT INTO `services_pulsa` (`id`, `sid`, `type`, `category`, `service`, `price`, `status`, `pid`, `provider`, `note`) VALUES
(1, 'SPTFY3', 'SPOTIFY', 'SPOTIFY PREMIUM', 'Spotify Premium 12 Months', 130300, 'Active', 'SPTFY3', 'DP-PULSA', ''),
(2, 'NETFLIX', 'NETFLIX', 'NETFLIX', 'Netflix Premium 1 Month [Shared]', 35300, 'Active', 'NETFLIX', 'DP-PULSA', ''),
(3, 'NETFLIX2', 'NETFLIX', 'NETFLIX', 'Netflix Premium 1 Month [Private]', 75300, 'Active', 'NETFLIX2', 'DP-PULSA', ''),
(4, 'YT1', 'YT', 'YT', 'Youtube Premium 1 Month [Invite]', 10300, 'Active', 'YT1', 'DP-PULSA', ''),
(5, 'YT2', 'YT', 'YT', 'Youtube Premium 1 Month [Admin]', 25300, 'Active', 'YT2', 'DP-PULSA', ''),
(6, 'SPTFY2', 'SPOTIFY', 'SPOTIFY PREMIUM', 'Spotify Premium 3 Months', 50300, 'Active', 'SPTFY2', 'DP-PULSA', ''),
(7, 'DPLN20', 'TOKENPLN', 'PLN', 'PLN 20.000', 20400, 'Active', 'DPLN20', 'DP-PULSA', ''),
(8, 'DPLN50', 'TOKENPLN', 'PLN', 'PLN 50.000', 50400, 'Active', 'DPLN50', 'DP-PULSA', ''),
(9, 'DPLN100', 'TOKENPLN', 'PLN', 'PLN 100.000', 100400, 'Active', 'DPLN100', 'DP-PULSA', ''),
(10, 'DPLN200', 'TOKENPLN', 'PLN', 'PLN 200.000', 200400, 'Active', 'DPLN200', 'DP-PULSA', ''),
(11, 'DPLN500', 'TOKENPLN', 'PLN', 'PLN 500.000', 500400, 'Active', 'DPLN500', 'DP-PULSA', ''),
(12, 'DPLN1000', 'TOKENPLN', 'PLN', 'PLN 1.000.000', 1000400, 'Active', 'DPLN1000', 'DP-PULSA', ''),
(13, 'DPDANA10', 'SALGO', 'DANA', 'DANA Rp 10.000', 10545, 'Active', 'DPDANA10', 'DP-PULSA', ''),
(14, 'DPDANA20', 'SALGO', 'DANA', 'DANA Rp 20.000', 20420, 'Active', 'DPDANA20', 'DP-PULSA', ''),
(15, 'DPDANA25', 'SALGO', 'DANA', 'DANA Rp 25.000', 25420, 'Active', 'DPDANA25', 'DP-PULSA', ''),
(16, 'DPDANA50', 'SALGO', 'DANA', 'DANA Rp 50.000', 50420, 'Active', 'DPDANA50', 'DP-PULSA', ''),
(17, 'DPDANA1OO', 'SALGO', 'DANA', 'DANA Rp 100.000', 100420, 'Active', 'DPDANA1OO', 'DP-PULSA', ''),
(18, 'DPDANA200', 'SALGO', 'DANA', 'DANA Rp 200.000', 200420, 'Active', 'DPDANA200', 'DP-PULSA', ''),
(19, 'DPDANA75', 'SALGO', 'DANA', 'DANA Rp 75.000', 75420, 'Active', 'DPDANA75', 'DP-PULSA', ''),
(20, 'DPDANA150', 'SALGO', 'DANA', 'DANA Rp 150.000', 150420, 'Active', 'DPDANA150', 'DP-PULSA', ''),
(21, 'DPDANA300', 'SALGO', 'DANA', 'DANA Rp 300.000', 300420, 'Active', 'DPDANA300', 'DP-PULSA', ''),
(22, 'DPDANA30', 'SALGO', 'DANA', 'DANA Rp 30.000', 30420, 'Active', 'DPDANA30', 'DP-PULSA', ''),
(23, 'DPDANA40', 'SALGO', 'DANA', 'DANA Rp 40.000', 40420, 'Active', 'DPDANA40', 'DP-PULSA', ''),
(24, 'DPDANA500', 'SALGO', 'DANA', 'DANA Rp 500.000', 500420, 'Active', 'DPDANA500', 'DP-PULSA', ''),
(25, 'DTIX10', 'SALGO', 'TIX ID', 'TIX ID 10.000', 10800, 'Active', 'DTIX10', 'DP-PULSA', ''),
(26, 'DTIX25', 'SALGO', 'TIX ID', 'TIX ID 25.000', 25800, 'Active', 'DTIX25', 'DP-PULSA', ''),
(27, 'DTIX50', 'SALGO', 'TIX ID', 'TIX ID 50.000', 50800, 'Active', 'DTIX50', 'DP-PULSA', ''),
(28, 'DTIX100', 'SALGO', 'TIX ID', 'TIX ID 100.000', 100800, 'Active', 'DTIX100', 'DP-PULSA', ''),
(29, 'DTIX200', 'SALGO', 'TIX ID', 'TIX ID 200.000', 200800, 'Active', 'DTIX200', 'DP-PULSA', ''),
(30, 'DSHOPPE20', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 20.000', 20450, 'Active', 'DSHOPPE20', 'DP-PULSA', ''),
(31, 'DSHOPPE25', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 25.000', 25450, 'Active', 'DSHOPPE25', 'DP-PULSA', ''),
(32, 'DSHOPPE30', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 30.000', 30445, 'Active', 'DSHOPPE30', 'DP-PULSA', ''),
(33, 'DSHOPPE50', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 50.000', 50450, 'Active', 'DSHOPPE50', 'DP-PULSA', ''),
(34, 'DSHOPPE75', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 75.000', 75450, 'Active', 'DSHOPPE75', 'DP-PULSA', ''),
(35, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 100450, 'Active', 'DSHOPPE100', 'DP-PULSA', ''),
(36, 'DSHOPPE200', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 200.000', 200450, 'Active', 'DSHOPPE200', 'DP-PULSA', ''),
(37, 'DSHOPPE300', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 300.000', 300450, 'Active', 'DSHOPPE300', 'DP-PULSA', ''),
(38, 'DAX5', 'PULSA', 'AXIS', 'Axis 5.000', 6115, 'Active', 'DAX5', 'DP-PULSA', ''),
(39, 'DAX10', 'PULSA', 'AXIS', 'Axis 10.000', 11035, 'Active', 'DAX10', 'DP-PULSA', ''),
(40, 'DAX25', 'PULSA', 'AXIS', 'Axis 25.000', 24980, 'Active', 'DAX25', 'DP-PULSA', ''),
(41, 'DAX50', 'PULSA', 'AXIS', 'Axis 50.000', 49535, 'Active', 'DAX50', 'DP-PULSA', ''),
(42, 'DAX100', 'PULSA', 'AXIS', 'Axis 100.000', 98800, 'Active', 'DAX100', 'DP-PULSA', ''),
(43, 'DAX200', 'PULSA', 'AXIS', 'Axis 200.000', 197375, 'Active', 'DAX200', 'DP-PULSA', ''),
(44, 'DAX15', 'PULSA', 'AXIS', 'Axis 15.000', 15145, 'Active', 'DAX15', 'DP-PULSA', ''),
(45, 'DXL5', 'PULSA', 'XL', 'Xl 5.000', 6115, 'Active', 'DXL5', 'DP-PULSA', ''),
(46, 'DXL10', 'PULSA', 'XL', 'Xl 10.000', 11035, 'Active', 'DXL10', 'DP-PULSA', ''),
(47, 'DXL15', 'PULSA', 'XL', 'Xl 15.000', 15145, 'Active', 'DXL15', 'DP-PULSA', ''),
(48, 'DXL25', 'PULSA', 'XL', 'Xl 25.000', 24980, 'Active', 'DXL25', 'DP-PULSA', ''),
(49, 'DXL50', 'PULSA', 'XL', 'Xl 50.000', 49500, 'Active', 'DXL50', 'DP-PULSA', ''),
(50, 'DXL100', 'PULSA', 'XL', 'Xl 100.000', 98800, 'Active', 'DXL100', 'DP-PULSA', ''),
(51, 'DXL150', 'PULSA', 'XL', 'Xl 150.000', 149575, 'Active', 'DXL150', 'DP-PULSA', ''),
(52, 'DXL200', 'PULSA', 'XL', 'Xl 200.000', 197875, 'Active', 'DXL200', 'DP-PULSA', ''),
(53, 'DXL300', 'PULSA', 'XL', 'Xl 300.000', 295875, 'Active', 'DXL300', 'DP-PULSA', ''),
(54, 'DXL500', 'PULSA', 'XL', 'Xl 500.000', 492875, 'Active', 'DXL500', 'DP-PULSA', ''),
(55, 'DXL1000', 'PULSA', 'XL', 'Xl 1.000.000', 990375, 'Active', 'DXL1000', 'DP-PULSA', ''),
(56, 'DXL30', 'PULSA', 'XL', 'XL 30.000', 29940, 'Active', 'DXL30', 'DP-PULSA', ''),
(57, 'DTH1', 'PULSA', 'TRI', 'Three 1.000', 1415, 'Active', 'DTH1', 'DP-PULSA', ''),
(58, 'DTH2', 'PULSA', 'TRI', 'Three 2.000', 2490, 'Active', 'DTH2', 'DP-PULSA', ''),
(59, 'DTH3', 'PULSA', 'TRI', 'Three 3.000', 3665, 'Active', 'DTH3', 'DP-PULSA', ''),
(60, 'DTH5', 'PULSA', 'TRI', 'Three 5.000', 5550, 'Active', 'DTH5', 'DP-PULSA', ''),
(61, 'DTH10', 'PULSA', 'TRI', 'Three 10.000', 10400, 'Active', 'DTH10', 'DP-PULSA', ''),
(62, 'DTH15', 'PULSA', 'TRI', 'Three 15.000', 14930, 'Active', 'DTH15', 'DP-PULSA', ''),
(63, 'DTH20', 'PULSA', 'TRI', 'Three 20.000', 19800, 'Active', 'DTH20', 'DP-PULSA', ''),
(64, 'DTH25', 'PULSA', 'TRI', 'Three 25.000', 24650, 'Active', 'DTH25', 'DP-PULSA', ''),
(65, 'DTH30', 'PULSA', 'TRI', 'Three 30.000', 29350, 'Active', 'DTH30', 'DP-PULSA', ''),
(66, 'DTH50', 'PULSA', 'TRI', 'Three 50.000', 48650, 'Active', 'DTH50', 'DP-PULSA', ''),
(67, 'DTH100', 'PULSA', 'TRI', 'Three 100.000', 96850, 'Active', 'DTH100', 'DP-PULSA', ''),
(68, 'DTH150', 'PULSA', 'TRI', 'Three 150.000', 148400, 'Active', 'DTH150', 'DP-PULSA', ''),
(69, 'DTH300', 'PULSA', 'TRI', 'Three 300.000', 294625, 'Active', 'DTH300', 'DP-PULSA', ''),
(70, 'DTH500', 'PULSA', 'TRI', 'Three 500.000', 490625, 'Active', 'DTH500', 'DP-PULSA', ''),
(71, 'DTSEL1', 'PULSA', 'TELKOMSEL', 'Telkomsel 1.000', 1745, 'Active', 'DTSEL1', 'DP-PULSA', ''),
(72, 'DTSEL5', 'PULSA', 'TELKOMSEL', 'Telkomsel 5.000', 6000, 'Active', 'DTSEL5', 'DP-PULSA', ''),
(73, 'DTSEL10', 'PULSA', 'TELKOMSEL', 'Telkomsel 10.000', 10775, 'Active', 'DTSEL10', 'DP-PULSA', ''),
(74, 'DTSEL20', 'PULSA', 'TELKOMSEL', 'Telkomsel 20.000', 20449, 'Active', 'DTSEL20', 'DP-PULSA', ''),
(75, 'DTSEL25', 'PULSA', 'TELKOMSEL', 'Telkomsel 25.000', 24900, 'Active', 'DTSEL25', 'DP-PULSA', ''),
(76, 'DTSEL40', 'PULSA', 'TELKOMSEL', 'Telkomsel 40.000', 39950, 'Active', 'DTSEL40', 'DP-PULSA', ''),
(77, 'DTSEL50', 'PULSA', 'TELKOMSEL', 'Telkomsel 50.000', 49850, 'Active', 'DTSEL50', 'DP-PULSA', ''),
(78, 'DTSEL100', 'PULSA', 'TELKOMSEL', 'Telkomsel 100.000', 97025, 'Active', 'DTSEL100', 'DP-PULSA', ''),
(79, 'DTSEL150', 'PULSA', 'TELKOMSEL', 'Telkomsel 150.000', 146925, 'Active', 'DTSEL150', 'DP-PULSA', ''),
(80, 'DTSEL200', 'PULSA', 'TELKOMSEL', 'Telkomsel 200.000', 195350, 'Active', 'DTSEL200', 'DP-PULSA', ''),
(81, 'DTSEL300', 'PULSA', 'TELKOMSEL', 'Telkomsel 300.000', 295350, 'Active', 'DTSEL300', 'DP-PULSA', ''),
(82, 'DTSEL500', 'PULSA', 'TELKOMSEL', 'Telkomsel 500.000', 487850, 'Active', 'DTSEL500', 'DP-PULSA', ''),
(83, 'DTSEL1000', 'PULSA', 'TELKOMSEL', 'Telkomsel 1.000.000', 975350, 'Active', 'DTSEL1000', 'DP-PULSA', ''),
(84, 'DTSEL65', 'PULSA', 'TELKOMSEL', 'Telkomsel 65.000', 64975, 'Active', 'DTSEL65', 'DP-PULSA', ''),
(85, 'DTSEL75', 'PULSA', 'TELKOMSEL', 'Telkomsel 75.000', 73850, 'Active', 'DTSEL75', 'DP-PULSA', ''),
(86, 'DTSEL80', 'PULSA', 'TELKOMSEL', 'Telkomsel 80.000', 79950, 'Active', 'DTSEL80', 'DP-PULSA', ''),
(87, 'DTSEL85', 'PULSA', 'TELKOMSEL', 'Telkomsel 85.000', 84675, 'Active', 'DTSEL85', 'DP-PULSA', ''),
(88, 'DTSEL30', 'PULSA', 'TELKOMSEL', 'Telkomsel 30.000', 30025, 'Active', 'DTSEL30', 'DP-PULSA', ''),
(89, 'DTSEL35', 'PULSA', 'TELKOMSEL', 'Telkomsel 35.000', 34975, 'Active', 'DTSEL35', 'DP-PULSA', ''),
(90, 'DTSEL45', 'PULSA', 'TELKOMSEL', 'Telkomsel 45.000', 45050, 'Active', 'DTSEL45', 'DP-PULSA', ''),
(91, 'DTSEL70', 'PULSA', 'TELKOMSEL', 'Telkomsel 70.000', 70375, 'Active', 'DTSEL70', 'DP-PULSA', ''),
(92, 'DTSEL55', 'PULSA', 'TELKOMSEL', 'Telkomsel 55.000', 54975, 'Active', 'DTSEL55', 'DP-PULSA', ''),
(93, 'DTSEL60', 'PULSA', 'TELKOMSEL', 'Telkomsel 60.000', 59875, 'Active', 'DTSEL60', 'DP-PULSA', ''),
(94, 'DTSEL90', 'PULSA', 'TELKOMSEL', 'Telkomsel 90.000', 89035, 'Active', 'DTSEL90', 'DP-PULSA', ''),
(95, 'DTSEL95', 'PULSA', 'TELKOMSEL', 'Telkomsel 95.000', 93950, 'Active', 'DTSEL95', 'DP-PULSA', ''),
(96, 'DIND5', 'PULSA', 'INDOSAT', 'Indosat 5.000', 6135, 'Active', 'DIND5', 'DP-PULSA', ''),
(97, 'DIND10', 'PULSA', 'INDOSAT', 'Indosat 10.000', 11150, 'Active', 'DIND10', 'DP-PULSA', ''),
(98, 'DIND12', 'PULSA', 'INDOSAT', 'Indosat 12.000', 12375, 'Active', 'DIND12', 'DP-PULSA', ''),
(99, 'DIND20', 'PULSA', 'INDOSAT', 'Indosat 20.000', 20200, 'Active', 'DIND20', 'DP-PULSA', ''),
(100, 'DIND25', 'PULSA', 'INDOSAT', 'Indosat 25.000', 25150, 'Active', 'DIND25', 'DP-PULSA', ''),
(101, 'DIND30', 'PULSA', 'INDOSAT', 'Indosat 30.000', 29825, 'Active', 'DIND30', 'DP-PULSA', ''),
(102, 'DIND50', 'PULSA', 'INDOSAT', 'Indosat 50.000', 49175, 'Active', 'DIND50', 'DP-PULSA', ''),
(103, 'DIND100', 'PULSA', 'INDOSAT', 'Indosat 100.000', 96650, 'Active', 'DIND100', 'DP-PULSA', ''),
(104, 'DIND150', 'PULSA', 'INDOSAT', 'Indosat 150.000', 146125, 'Active', 'DIND150', 'DP-PULSA', ''),
(105, 'DIND200', 'PULSA', 'INDOSAT', 'Indosat 200.000', 187125, 'Active', 'DIND200', 'DP-PULSA', ''),
(106, 'DIND250', 'PULSA', 'INDOSAT', 'Indosat 250.000', 231725, 'Active', 'DIND250', 'DP-PULSA', ''),
(107, 'DIND500', 'PULSA', 'INDOSAT', 'Indosat 500.000', 463125, 'Active', 'DIND500', 'DP-PULSA', ''),
(108, 'DIND1000', 'PULSA', 'INDOSAT', 'Indosat 1.000.000', 926375, 'Active', 'DIND1000', 'DP-PULSA', ''),
(109, 'DIND15', 'PULSA', 'INDOSAT', 'INDOSAT 15.000', 15375, 'Active', 'DIND15', 'DP-PULSA', ''),
(110, 'DIND60', 'PULSA', 'INDOSAT', 'Indosat 60.000', 59170, 'Active', 'DIND60', 'DP-PULSA', ''),
(111, 'DIND80', 'PULSA', 'INDOSAT', 'Indosat 80.000', 78295, 'Active', 'DIND80', 'DP-PULSA', ''),
(112, 'DIND90', 'PULSA', 'INDOSAT', 'Indosat 90.000', 87500, 'Active', 'DIND90', 'DP-PULSA', ''),
(113, 'DIND125', 'PULSA', 'INDOSAT', 'Indosat 125.000', 125100, 'Active', 'DIND125', 'DP-PULSA', ''),
(114, 'DIND175', 'PULSA', 'INDOSAT', 'Indosat 175.000', 173450, 'Active', 'DIND175', 'DP-PULSA', ''),
(115, 'DGP100', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 100.000 INDONESIA REGION', 109550, 'Active', 'DGP100', 'DP-PULSA', ''),
(116, 'DGP150', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 150.000 INDONESIA REGION', 164138, 'Active', 'DGP150', 'DP-PULSA', ''),
(117, 'DGP20', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 20.000 INDONESIA REGION', 21950, 'Active', 'DGP20', 'DP-PULSA', ''),
(118, 'DGP300', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 300.000 INDONESIA REGION', 331450, 'Active', 'DGP300', 'DP-PULSA', ''),
(119, 'DGP50', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 50.000 INDONESIA REGION', 54938, 'Active', 'DGP50', 'DP-PULSA', ''),
(120, 'DGP500', 'VGAME', 'GOOGLE PLAY INDONESIA', 'Google Play Rp. 500.000 INDONESIA REGION', 546225, 'Active', 'DGP500', 'DP-PULSA', ''),
(121, 'DGPU15', 'VGAME', 'GOOGLE PLAY US REGION', 'Google Play 15$ USA REGION', 225375, 'Active', 'DGPU15', 'DP-PULSA', ''),
(122, 'DGPU25', 'VGAME', 'GOOGLE PLAY US REGION', 'Google Play 25$ USA REGION', 415350, 'Active', 'DGPU25', 'DP-PULSA', ''),
(123, 'DGPU50', 'VGAME', 'GOOGLE PLAY US REGION', 'Google Play 50$ USA REGION', 740375, 'Active', 'DGPU50', 'DP-PULSA', ''),
(124, 'DGR1', 'VGAME', 'GARENA', 'Garena 33 Shell', 9500, 'Active', 'DGR1', 'DP-PULSA', ''),
(125, 'DGR2', 'VGAME', 'GARENA', 'Garena 66 Shell', 18750, 'Active', 'DGR2', 'DP-PULSA', ''),
(126, 'DGR3', 'VGAME', 'GARENA', 'Garena 165 Shell', 45875, 'Active', 'DGR3', 'DP-PULSA', ''),
(127, 'DGR4', 'VGAME', 'GARENA', 'Garena 330 Shell', 91625, 'Active', 'DGR4', 'DP-PULSA', ''),
(128, 'DGS1', 'VGAME', 'GEMSCOOL', 'Gemscool 1,000 G-Cash', 9825, 'Active', 'DGS1', 'DP-PULSA', ''),
(129, 'DGS2', 'VGAME', 'GEMSCOOL', 'Gemscool 2,000 G-Cash', 19225, 'Active', 'DGS2', 'DP-PULSA', ''),
(130, 'DGS3', 'VGAME', 'GEMSCOOL', 'Gemscool 3,000 G-Cash', 28850, 'Active', 'DGS3', 'DP-PULSA', ''),
(131, 'DGS5', 'VGAME', 'GEMSCOOL', 'Gemscool 5,000 G-Cash', 47850, 'Active', 'DGS5', 'DP-PULSA', ''),
(132, 'DGS10', 'VGAME', 'GEMSCOOL', 'Gemscool 10,000 G-Cash', 95350, 'Active', 'DGS10', 'DP-PULSA', ''),
(133, 'DGS20', 'VGAME', 'GEMSCOOL', 'Gemscool 20,000 G-Cash', 190350, 'Active', 'DGS20', 'DP-PULSA', ''),
(134, 'DGS30', 'VGAME', 'GEMSCOOL', 'Gemscool 30,000 G-Cash', 285325, 'Active', 'DGS30', 'DP-PULSA', ''),
(135, 'DMG10', 'VGAME', 'MEGAXUS', 'Megaxus 10.000 MI-Cash', 10375, 'Active', 'DMG10', 'DP-PULSA', ''),
(136, 'DMG20', 'VGAME', 'MEGAXUS', 'Megaxus 20.000 MI-Cash', 21160, 'Active', 'DMG20', 'DP-PULSA', ''),
(137, 'DMG50', 'VGAME', 'MEGAXUS', 'Megaxus 50.000 MI-Cash', 50288, 'Active', 'DMG50', 'DP-PULSA', ''),
(138, 'DMG100', 'VGAME', 'MEGAXUS', 'Megaxus 100.000 MI-Cash', 100375, 'Active', 'DMG100', 'DP-PULSA', ''),
(139, 'DMG210', 'VGAME', 'MEGAXUS', 'Megaxus 210.000 MI-Cash', 200025, 'Active', 'DMG210', 'DP-PULSA', ''),
(140, 'DMG550', 'VGAME', 'MEGAXUS', 'Megaxus 550.000 MI-Cash', 550375, 'Active', 'DMG550', 'DP-PULSA', ''),
(141, 'DML2010', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 2010 Diamond', 475400, 'Active', 'DML2010', 'DP-PULSA', ''),
(142, 'DML36', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 36 Diamond', 9900, 'Active', 'DML36', 'DP-PULSA', ''),
(143, 'DML74', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 74 Diamond', 19400, 'Active', 'DML74', 'DP-PULSA', ''),
(144, 'DML568', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 568 Diamond', 142900, 'Active', 'DML568', 'DP-PULSA', ''),
(145, 'DML1159', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 1159 Diamond', 285400, 'Active', 'DML1159', 'DP-PULSA', ''),
(146, 'DML12', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 12 Diamond', 3725, 'Active', 'DML12', 'DP-PULSA', ''),
(147, 'DML28', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 28 Diamond', 8000, 'Active', 'DML28', 'DP-PULSA', ''),
(148, 'DML85', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 85 Diamond', 22250, 'Active', 'DML85', 'DP-PULSA', ''),
(149, 'DML875', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 875 Diamond', 218900, 'Active', 'DML875', 'DP-PULSA', ''),
(150, 'DML59', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 59 Diamond', 15600, 'Active', 'DML59', 'DP-PULSA', ''),
(151, 'DML170', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 170 Diamond', 44100, 'Active', 'DML170', 'DP-PULSA', ''),
(152, 'DML185', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 185 Diamond', 47900, 'Active', 'DML185', 'DP-PULSA', ''),
(153, 'DML222', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 222 Diamond', 57400, 'Active', 'DML222', 'DP-PULSA', ''),
(154, 'DML296', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 296 Diamond', 76400, 'Active', 'DML296', 'DP-PULSA', ''),
(155, 'DML370', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 370 Diamond', 95400, 'Active', 'DML370', 'DP-PULSA', ''),
(156, 'DML4830', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 4830 Diamond', 1140400, 'Active', 'DML4830', 'DP-PULSA', ''),
(157, 'DML6050', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 6050 Diamond', 1425400, 'Active', 'DML6050', 'DP-PULSA', ''),
(158, 'DML4', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 4 Diamond + Starlight Member', 142900, 'Active', 'DML4', 'DP-PULSA', ''),
(159, 'DML193', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 193 Diamond + Starlight Member', 190400, 'Active', 'DML193', 'DP-PULSA', ''),
(160, 'DMLL568', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 586 Diamond + Starlight Member', 285400, 'Active', 'DMLL568', 'DP-PULSA', ''),
(161, 'DML1411', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 1411 Diamond + Starlight Member', 475400, 'Active', 'DML1411', 'DP-PULSA', ''),
(162, 'DML5408', 'VGAME', 'MOBILE LEGEND', 'MOBILELEGEND - 5408 Diamond + Starlight Member', 1425400, 'Active', 'DML5408', 'DP-PULSA', ''),
(163, 'DWIFI1', 'VOUCHER', 'WIFI ID', 'Akses wifi.id 1 hari', 4955, 'Active', 'DWIFI1', 'DP-PULSA', ''),
(164, 'DWIFI3', 'VOUCHER', 'WIFI ID', 'Akses wifi.id 30 hari', 45875, 'Active', 'DWIFI3', 'DP-PULSA', ''),
(165, 'DWIFI2', 'VOUCHER', 'WIFI ID', 'Akses wifi.id 7 hari', 15860, 'Active', 'DWIFI2', 'DP-PULSA', ''),
(166, 'DPB1', 'VGAME', 'POINT BLANK', '1200 PB Cash', 9355, 'Active', 'DPB1', 'DP-PULSA', ''),
(167, 'DPB2', 'VGAME', 'POINT BLANK', '2400 PB Cash', 18360, 'Active', 'DPB2', 'DP-PULSA', ''),
(168, 'DPB3', 'VGAME', 'POINT BLANK', '6000 PB Cash', 45375, 'Active', 'DPB3', 'DP-PULSA', ''),
(169, 'DPB4', 'VGAME', 'POINT BLANK', '12000 PB Cash', 90375, 'Active', 'DPB4', 'DP-PULSA', ''),
(170, 'DPUBG1', 'VGAME', 'PUBG', 'PUBG Early Bird Key', 34850, 'Active', 'DPUBG1', 'DP-PULSA', ''),
(171, 'DPUBG2', 'VGAME', 'PUBG', 'PUBG Steam Game Key', 215350, 'Active', 'DPUBG2', 'DP-PULSA', ''),
(172, 'DFF70', 'VGAME', 'FREE FIRE', 'Free Fire 70 Diamond', 10105, 'Active', 'DFF70', 'DP-PULSA', ''),
(173, 'DFF140', 'VGAME', 'FREE FIRE', 'Free Fire 140 Diamond', 19610, 'Active', 'DFF140', 'DP-PULSA', ''),
(174, 'DFF355', 'VGAME', 'FREE FIRE', 'Free Fire 355 Diamond', 48125, 'Active', 'DFF355', 'DP-PULSA', ''),
(175, 'DFF720', 'VGAME', 'FREE FIRE', 'Free Fire 720 Diamond', 95850, 'Active', 'DFF720', 'DP-PULSA', ''),
(176, 'DFF5', 'VGAME', 'FREE FIRE', 'Free Fire 5 Diamond', 1365, 'Active', 'DFF5', 'DP-PULSA', ''),
(177, 'DFF12', 'VGAME', 'FREE FIRE', 'Free Fire 12 Diamond', 2375, 'Active', 'DFF12', 'DP-PULSA', ''),
(178, 'DFF50', 'VGAME', 'FREE FIRE', 'Free Fire 50 Diamond', 8205, 'Active', 'DFF50', 'DP-PULSA', ''),
(179, 'DFF1450', 'VGAME', 'FREE FIRE', 'Free Fire 1450 Diamond', 192850, 'Active', 'DFF1450', 'DP-PULSA', ''),
(180, 'DFF2180', 'VGAME', 'FREE FIRE', 'Free Fire 2180 Diamond', 287450, 'Active', 'DFF2180', 'DP-PULSA', ''),
(181, 'DFF3640', 'VGAME', 'FREE FIRE', 'Free Fire 3640 Diamond', 483075, 'Active', 'DFF3640', 'DP-PULSA', ''),
(182, 'DFF7290', 'VGAME', 'FREE FIRE', 'Free Fire 7290 Diamond', 951375, 'Active', 'DFF7290', 'DP-PULSA', ''),
(183, 'DFF36500', 'VGAME', 'FREE FIRE', 'Free Fire 36500 Diamond', 4950350, 'Active', 'DFF36500', 'DP-PULSA', ''),
(184, 'DFF73100', 'VGAME', 'FREE FIRE', 'Free Fire 73100 Diamond', 9700350, 'Active', 'DFF73100', 'DP-PULSA', ''),
(185, 'DAO40', 'VGAME', 'ARENA OF VALOR', 'AOV 40 Vouchers', 9355, 'Active', 'DAO40', 'DP-PULSA', ''),
(186, 'DAO90', 'VGAME', 'ARENA OF VALOR', 'AOV 90 Vouchers', 18360, 'Active', 'DAO90', 'DP-PULSA', ''),
(187, 'DAO230', 'VGAME', 'ARENA OF VALOR', 'AOV 230 Vouchers', 45375, 'Active', 'DAO230', 'DP-PULSA', ''),
(188, 'DAO470', 'VGAME', 'ARENA OF VALOR', 'AOV 470 Vouchers', 90375, 'Active', 'DAO470', 'DP-PULSA', ''),
(189, 'DAO950', 'VGAME', 'ARENA OF VALOR', 'AOV 950 Vouchers', 192350, 'Active', 'DAO950', 'DP-PULSA', ''),
(190, 'DAO7', 'VGAME', 'ARENA OF VALOR', 'AOV 7 Vouchers', 2290, 'Active', 'DAO7', 'DP-PULSA', ''),
(191, 'DAO18', 'VGAME', 'ARENA OF VALOR', 'AOV 18 Vouchers', 5200, 'Active', 'DAO18', 'DP-PULSA', ''),
(192, 'DAO1430', 'VGAME', 'ARENA OF VALOR', 'AOV 1430 Vouchers', 288850, 'Active', 'DAO1430', 'DP-PULSA', ''),
(193, 'DAO2390', 'VGAME', 'ARENA OF VALOR', 'AOV 2390 Vouchers', 485350, 'Active', 'DAO2390', 'DP-PULSA', ''),
(194, 'DAO4800', 'VGAME', 'ARENA OF VALOR', 'AOV 4800 Vouchers', 970350, 'Active', 'DAO4800', 'DP-PULSA', ''),
(195, 'DAO24050', 'VGAME', 'ARENA OF VALOR', 'AOV 24050 Vouchers', 4750400, 'Active', 'DAO24050', 'DP-PULSA', ''),
(196, 'DAO48200', 'VGAME', 'ARENA OF VALOR', 'AOV 48200 Vouchers', 9500400, 'Active', 'DAO48200', 'DP-PULSA', ''),
(197, 'DSM5', 'PULSA', 'SMART', 'Smart 5.000', 5270, 'Active', 'DSM5', 'DP-PULSA', ''),
(198, 'DSM10', 'PULSA', 'SMART', 'Smart 10.000', 10170, 'Active', 'DSM10', 'DP-PULSA', ''),
(199, 'DSM20', 'PULSA', 'SMART', 'Smart 20.000', 19975, 'Active', 'DSM20', 'DP-PULSA', ''),
(200, 'DSM25', 'PULSA', 'SMART', 'Smart 25.000', 24750, 'Active', 'DSM25', 'DP-PULSA', ''),
(201, 'DSM50', 'PULSA', 'SMART', 'Smart 50.000', 49000, 'Active', 'DSM50', 'DP-PULSA', ''),
(202, 'DSM60', 'PULSA', 'SMART', 'Smart 60.000', 58900, 'Active', 'DSM60', 'DP-PULSA', ''),
(203, 'DSM100', 'PULSA', 'SMART', 'Smart 100.000', 97450, 'Active', 'DSM100', 'DP-PULSA', ''),
(204, 'DSM150', 'PULSA', 'SMART', 'Smart 150.000', 147600, 'Active', 'DSM150', 'DP-PULSA', ''),
(205, 'DSM200', 'PULSA', 'SMART', 'Smart 200.000', 196600, 'Active', 'DSM200', 'DP-PULSA', ''),
(206, 'DSM300', 'PULSA', 'SMART', 'Smart 300.000', 297850, 'Active', 'DSM300', 'DP-PULSA', ''),
(207, 'DSM500', 'PULSA', 'SMART', 'Smart 500.000', 496350, 'Active', 'DSM500', 'DP-PULSA', ''),
(208, 'DSM1000', 'PULSA', 'SMART', 'Smart 1.000.000', 982350, 'Active', 'DSM1000', 'DP-PULSA', ''),
(209, 'DCO26', 'VGAME', 'Call of Duty MOBILE', 'COD 26 + 5 CP', 5200, 'Active', 'DCO26', 'DP-PULSA', ''),
(210, 'DCO53', 'VGAME', 'Call of Duty MOBILE', 'COD 53 + 9 CP', 9355, 'Active', 'DCO53', 'DP-PULSA', ''),
(211, 'DCO106', 'VGAME', 'Call of Duty MOBILE', 'COD 106 + 21 CP', 18360, 'Active', 'DCO106', 'DP-PULSA', ''),
(212, 'DCO264', 'VGAME', 'Call of Duty MOBILE', 'COD 264 + 53 CP', 49875, 'Active', 'DCO264', 'DP-PULSA', ''),
(213, 'DCO528', 'VGAME', 'Call of Duty MOBILE', 'COD 528 + 106 CP', 90375, 'Active', 'DCO528', 'DP-PULSA', ''),
(214, 'DCO1056', 'VGAME', 'Call of Duty MOBILE', 'COD 1056 + 317 CP', 194350, 'Active', 'DCO1056', 'DP-PULSA', ''),
(215, 'DCO1584', 'VGAME', 'Call of Duty MOBILE', 'COD 1584 + 475 CP', 291350, 'Active', 'DCO1584', 'DP-PULSA', ''),
(216, 'DCO2640', 'VGAME', 'Call of Duty MOBILE', 'COD 2640 + 924 CP', 485350, 'Active', 'DCO2640', 'DP-PULSA', ''),
(217, 'DCO5280', 'VGAME', 'Call of Duty MOBILE', 'COD 5280 + 2376 CP', 950400, 'Active', 'DCO5280', 'DP-PULSA', ''),
(218, 'DCO10560', 'VGAME', 'Call of Duty MOBILE', 'COD 10560 + 4752 CP', 1940350, 'Active', 'DCO10560', 'DP-PULSA', ''),
(219, 'DCO26400', 'VGAME', 'Call of Duty MOBILE', 'COD 26400 + 11880 CP', 4850350, 'Active', 'DCO26400', 'DP-PULSA', ''),
(220, 'DCO52800', 'VGAME', 'Call of Duty MOBILE', 'COD 52800 + 23760 CP', 9700350, 'Active', 'DCO52800', 'DP-PULSA', ''),
(221, 'DR60', 'VGAME', 'Rules of Survival Mobile', '60 Diamonds', 14650, 'Active', 'DR60', 'DP-PULSA', ''),
(222, 'DR120', 'VGAME', 'Rules of Survival Mobile', '120 Diamonds', 28900, 'Active', 'DR120', 'DP-PULSA', ''),
(223, 'DR180', 'VGAME', 'Rules of Survival Mobile', '180 Diamonds', 43150, 'Active', 'DR180', 'DP-PULSA', ''),
(224, 'DR300', 'VGAME', 'Rules of Survival Mobile', '300 Diamonds', 71650, 'Active', 'DR300', 'DP-PULSA', ''),
(225, 'DR600', 'VGAME', 'Rules of Survival Mobile', '600 Diamonds', 142900, 'Active', 'DR600', 'DP-PULSA', ''),
(226, 'DR1200', 'VGAME', 'Rules of Survival Mobile', '1200 Diamonds', 285400, 'Active', 'DR1200', 'DP-PULSA', ''),
(227, 'DR3000', 'VGAME', 'Rules of Survival Mobile', '3000 Diamonds', 712900, 'Active', 'DR3000', 'DP-PULSA', ''),
(228, 'DR6000', 'VGAME', 'Rules of Survival Mobile', '6000 Diamonds', 1425400, 'Active', 'DR6000', 'DP-PULSA', ''),
(229, 'DS10', 'VGAME', 'Speed Drifters', '10 Diamonds', 2300, 'Active', 'DS10', 'DP-PULSA', ''),
(230, 'DS25', 'VGAME', 'Speed Drifters', '25 Diamonds', 5150, 'Active', 'DS25', 'DP-PULSA', ''),
(231, 'DS56', 'VGAME', 'Speed Drifters', '56 Diamonds', 9900, 'Active', 'DS56', 'DP-PULSA', ''),
(232, 'DS112', 'VGAME', 'Speed Drifters', '112 Diamonds', 19400, 'Active', 'DS112', 'DP-PULSA', ''),
(233, 'DS579', 'VGAME', 'Speed Drifters', '579 Diamonds', 95400, 'Active', 'DS579', 'DP-PULSA', ''),
(234, 'DS1230', 'VGAME', 'Speed Drifters', '1230 Diamonds', 190400, 'Active', 'DS1230', 'DP-PULSA', ''),
(235, 'DS1845', 'VGAME', 'Speed Drifters', '1845 Diamonds', 285400, 'Active', 'DS1845', 'DP-PULSA', ''),
(236, 'DS3134', 'VGAME', 'Speed Drifters', '3134 Diamonds', 475400, 'Active', 'DS3134', 'DP-PULSA', ''),
(237, 'DS6279', 'VGAME', 'Speed Drifters', '6279 Diamonds', 950400, 'Active', 'DS6279', 'DP-PULSA', ''),
(238, 'DS31450', 'VGAME', 'Speed Drifters', '31450 Diamonds', 4750400, 'Active', 'DS31450', 'DP-PULSA', ''),
(239, 'DS63000', 'VGAME', 'Speed Drifters', '63000 Diamonds', 9500400, 'Active', 'DS63000', 'DP-PULSA', ''),
(240, 'DS282', 'VGAME', 'Speed Drifters', '282 Diamonds', 47900, 'Active', 'DS282', 'DP-PULSA', ''),
(241, 'DSW12', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 12.000', 14550, 'Active', 'DSW12', 'DP-PULSA', ''),
(242, 'DSW45', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 45.000', 54850, 'Active', 'DSW45', 'DP-PULSA', ''),
(243, 'DSW60', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 60.000', 61500, 'Active', 'DSW60', 'DP-PULSA', ''),
(244, 'DSW90', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 90.000', 100350, 'Active', 'DSW90', 'DP-PULSA', ''),
(245, 'DSW120', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 120.000', 146350, 'Active', 'DSW120', 'DP-PULSA', ''),
(246, 'DSW250', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 250.000', 330550, 'Active', 'DSW250', 'DP-PULSA', ''),
(247, 'DSW400', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 400.000', 527550, 'Active', 'DSW400', 'DP-PULSA', ''),
(248, 'DSW600', 'VGAME', 'STEAM SEA', 'Steam Wallet Code Rp 600.000', 789550, 'Active', 'DSW600', 'DP-PULSA', ''),
(249, 'DALFA100', 'VOUCHER', 'ALFAMART VOUCHER', 'Voucher Alfamart Rp 100.000', 100100, 'Active', 'DALFA100', 'DP-PULSA', ''),
(250, 'DALFA10', 'VOUCHER', 'ALFAMART VOUCHER', 'Voucher Alfamart Rp 10.000', 10325, 'Active', 'DALFA10', 'DP-PULSA', ''),
(251, 'DALFA25', 'VOUCHER', 'ALFAMART VOUCHER', 'Voucher Alfamart Rp 25.000', 25288, 'Active', 'DALFA25', 'DP-PULSA', ''),
(252, 'DALFA5', 'VOUCHER', 'ALFAMART VOUCHER', 'Voucher Alfamart Rp 5.000', 5338, 'Active', 'DALFA5', 'DP-PULSA', ''),
(253, 'DALFA50', 'VOUCHER', 'ALFAMART VOUCHER', 'Voucher Alfamart Rp 50.000', 50225, 'Active', 'DALFA50', 'DP-PULSA', ''),
(254, 'DINDO100', 'VOUCHER', 'INDOMARET', 'Voucher Indomaret Rp 100.000', 100100, 'Active', 'DINDO100', 'DP-PULSA', ''),
(255, 'DINDO10', 'VOUCHER', 'INDOMARET', 'Voucher Indomaret Rp 10.000', 10325, 'Active', 'DINDO10', 'DP-PULSA', ''),
(256, 'DINDO25', 'VOUCHER', 'INDOMARET', 'Voucher Indomaret Rp 25.000', 25288, 'Active', 'DINDO25', 'DP-PULSA', ''),
(257, 'DINDO5', 'VOUCHER', 'INDOMARET', 'Voucher Indomaret Rp 5.000', 5338, 'Active', 'DINDO5', 'DP-PULSA', ''),
(258, 'DINDO50', 'VOUCHER', 'INDOMARET', 'Voucher Indomaret Rp 50.000', 50225, 'Active', 'DINDO50', 'DP-PULSA', ''),
(259, 'DBKL50', 'VOUCHER', 'BUKALAPAK', 'Voucher Bukalapak Rp 50.000', 50350, 'Active', 'DBKL50', 'DP-PULSA', ''),
(260, 'DETJ2', 'VOUCHER', 'JUNGLELAND', 'E-Ticket JungleLand Sentul WeekEnd', 161965, 'Active', 'DETJ2', 'DP-PULSA', ''),
(261, 'DETJ1', 'VOUCHER', 'JUNGLELAND', 'E-Ticket JungleLand Sentul - High Season', 191625, 'Active', 'DETJ1', 'DP-PULSA', ''),
(262, 'DDIGI5', 'LAINYA', 'DIGI', 'Digi 5', 20225, 'Active', 'DDIGI5', 'DP-PULSA', ''),
(263, 'DDIGI10', 'LAINYA', 'DIGI', 'Digi 10', 40100, 'Active', 'DDIGI10', 'DP-PULSA', ''),
(264, 'DDIGI25', 'LAINYA', 'DIGI', 'Digi 25', 99725, 'Active', 'DDIGI25', 'DP-PULSA', ''),
(265, 'DDIGI30', 'LAINYA', 'DIGI', 'Digi 30', 119600, 'Active', 'DDIGI30', 'DP-PULSA', ''),
(266, 'DDIGI50', 'LAINYA', 'DIGI', 'Digi 50', 199100, 'Active', 'DDIGI50', 'DP-PULSA', ''),
(267, 'DDIGI100', 'LAINYA', 'DIGI', 'Digi 100', 397850, 'Active', 'DDIGI100', 'DP-PULSA', ''),
(268, 'DMX5', 'LAINYA', 'MAXIS', 'Maxis 5', 20225, 'Active', 'DMX5', 'DP-PULSA', ''),
(269, 'DMX10', 'LAINYA', 'MAXIS', 'Maxis 10', 40100, 'Active', 'DMX10', 'DP-PULSA', ''),
(270, 'DMX15', 'LAINYA', 'MAXIS', 'Maxis 15', 59975, 'Active', 'DMX15', 'DP-PULSA', ''),
(271, 'DMX20', 'LAINYA', 'MAXIS', 'Maxis 20', 79850, 'Active', 'DMX20', 'DP-PULSA', ''),
(272, 'DMX30', 'LAINYA', 'MAXIS', 'Maxis 30', 119600, 'Active', 'DMX30', 'DP-PULSA', ''),
(273, 'DMX50', 'LAINYA', 'MAXIS', 'Maxis 50', 199100, 'Active', 'DMX50', 'DP-PULSA', ''),
(274, 'DMX100', 'LAINYA', 'MAXIS', 'Maxis 100', 397850, 'Active', 'DMX100', 'DP-PULSA', ''),
(275, 'DCL5', 'LAINYA', 'CELCOM', 'Celcom 5', 20225, 'Active', 'DCL5', 'DP-PULSA', ''),
(276, 'DCL10', 'LAINYA', 'CELCOM', 'Celcom 10', 40100, 'Active', 'DCL10', 'DP-PULSA', ''),
(277, 'DCL15', 'LAINYA', 'CELCOM', 'Celcom 15', 59975, 'Active', 'DCL15', 'DP-PULSA', ''),
(278, 'DCL20', 'LAINYA', 'CELCOM', 'Celcom 20', 79850, 'Active', 'DCL20', 'DP-PULSA', ''),
(279, 'DCL25', 'LAINYA', 'CELCOM', 'Celcom 25', 99725, 'Active', 'DCL25', 'DP-PULSA', ''),
(280, 'DCL30', 'LAINYA', 'CELCOM', 'Celcom 30', 119600, 'Active', 'DCL30', 'DP-PULSA', ''),
(281, 'DCL50', 'LAINYA', 'CELCOM', 'Celcom 50', 199100, 'Active', 'DCL50', 'DP-PULSA', ''),
(282, 'DCL100', 'LAINYA', 'CELCOM', 'Celcom 100', 397850, 'Active', 'DCL100', 'DP-PULSA', ''),
(283, 'DUM5', 'LAINYA', 'UMOBILE', 'Umobile 5', 20225, 'Active', 'DUM5', 'DP-PULSA', ''),
(284, 'DUM10', 'LAINYA', 'UMOBILE', 'Umobile 10', 40100, 'Active', 'DUM10', 'DP-PULSA', ''),
(285, 'DUM15', 'LAINYA', 'UMOBILE', 'Umobile 15', 59975, 'Active', 'DUM15', 'DP-PULSA', ''),
(286, 'DUM20', 'LAINYA', 'UMOBILE', 'Umobile 20', 79850, 'Active', 'DUM20', 'DP-PULSA', ''),
(287, 'DUM25', 'LAINYA', 'UMOBILE', 'Umobile 25', 99725, 'Active', 'DUM25', 'DP-PULSA', ''),
(288, 'DUM30', 'LAINYA', 'UMOBILE', 'Umobile 30', 119600, 'Active', 'DUM30', 'DP-PULSA', ''),
(289, 'DUM50', 'LAINYA', 'UMOBILE', 'Umobile 50', 199100, 'Active', 'DUM50', 'DP-PULSA', ''),
(290, 'DUM100', 'LAINYA', 'UMOBILE', 'Umobile 100', 397850, 'Active', 'DUM100', 'DP-PULSA', ''),
(291, 'DTN5', 'LAINYA', 'TUNETALK', 'Tunetalk 5', 20225, 'Active', 'DTN5', 'DP-PULSA', ''),
(292, 'DTN10', 'LAINYA', 'TUNETALK', 'Tunetalk 10', 40100, 'Active', 'DTN10', 'DP-PULSA', ''),
(293, 'DTN15', 'LAINYA', 'TUNETALK', 'Tunetalk 15', 59975, 'Active', 'DTN15', 'DP-PULSA', ''),
(294, 'DTN20', 'LAINYA', 'TUNETALK', 'Tunetalk 20', 79850, 'Active', 'DTN20', 'DP-PULSA', ''),
(295, 'DTN25', 'LAINYA', 'TUNETALK', 'Tunetalk 25', 99725, 'Active', 'DTN25', 'DP-PULSA', ''),
(296, 'DTN30', 'LAINYA', 'TUNETALK', 'Tunetalk 30', 119600, 'Active', 'DTN30', 'DP-PULSA', ''),
(297, 'DTN50', 'LAINYA', 'TUNETALK', 'Tunetalk 50', 199100, 'Active', 'DTN50', 'DP-PULSA', ''),
(298, 'DTN100', 'LAINYA', 'TUNETALK', 'Tunetalk 100', 397850, 'Active', 'DTN100', 'DP-PULSA', ''),
(299, 'DMTOL100', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 100.000', 100950, 'Active', 'DMTOL100', 'DP-PULSA', ''),
(300, 'DMTOL200', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 200.000', 201325, 'Active', 'DMTOL200', 'DP-PULSA', ''),
(301, 'DMTOL300', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 300.000', 301325, 'Active', 'DMTOL300', 'DP-PULSA', ''),
(302, 'DMTOL10', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 10.000', 11110, 'Active', 'DMTOL10', 'DP-PULSA', ''),
(303, 'DMTOL20', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 20.000', 20950, 'Active', 'DMTOL20', 'DP-PULSA', ''),
(304, 'DMTOL25', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 25.000', 25950, 'Active', 'DMTOL25', 'DP-PULSA', ''),
(305, 'DMTOL50', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 50.000', 50950, 'Active', 'DMTOL50', 'DP-PULSA', ''),
(306, 'DMTOL75', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 75.000', 76125, 'Active', 'DMTOL75', 'DP-PULSA', ''),
(307, 'DMTOL400', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 400.000', 401325, 'Active', 'DMTOL400', 'DP-PULSA', ''),
(308, 'DMTOL500', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 500.000', 501325, 'Active', 'DMTOL500', 'DP-PULSA', ''),
(309, 'DMTOL30', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 30.000', 31250, 'Active', 'DMTOL30', 'DP-PULSA', ''),
(310, 'DMTOL40', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 40.000', 41250, 'Active', 'DMTOL40', 'DP-PULSA', ''),
(311, 'DMTOL150', 'SALGO', 'MANDIRI E-TOLL', 'Mandiri E-Toll 150.000', 151325, 'Active', 'DMTOL150', 'DP-PULSA', ''),
(312, 'DGOPAY10', 'SALGO', 'GO PAY', 'Go Pay 10.000', 11245, 'Active', 'DGOPAY10', 'DP-PULSA', ''),
(313, 'DGOPAY100', 'SALGO', 'GO PAY', 'Go Pay 100.000', 101045, 'Active', 'DGOPAY100', 'DP-PULSA', ''),
(314, 'DGOPAY150', 'SALGO', 'GO PAY', 'Go Pay 150.000', 151345, 'Active', 'DGOPAY150', 'DP-PULSA', ''),
(315, 'DGOPAY20', 'SALGO', 'GO PAY', 'Go Pay 20.000', 21345, 'Active', 'DGOPAY20', 'DP-PULSA', ''),
(316, 'DGOPAY25', 'SALGO', 'GO PAY', 'Go Pay 25.000', 26100, 'Active', 'DGOPAY25', 'DP-PULSA', ''),
(317, 'DGOPAY50', 'SALGO', 'GO PAY', 'Go Pay 50.000', 51345, 'Active', 'DGOPAY50', 'DP-PULSA', ''),
(318, 'DGOPAY30', 'SALGO', 'GO PAY', 'Go Pay 30.000', 31345, 'Active', 'DGOPAY30', 'DP-PULSA', ''),
(319, 'DGOPAY40', 'SALGO', 'GO PAY', 'Go Pay 40.000', 40995, 'Active', 'DGOPAY40', 'DP-PULSA', ''),
(320, 'DGOPAY1000', 'SALGO', 'GO PAY', 'Go Pay 1.000.000', 1001100, 'Active', 'DGOPAY1000', 'DP-PULSA', ''),
(321, 'DGOPAY250', 'SALGO', 'GO PAY', 'Go Pay 250.000', 251100, 'Active', 'DGOPAY250', 'DP-PULSA', ''),
(322, 'DGOPAY500', 'SALGO', 'GO PAY', 'Go Pay 500.000', 501100, 'Active', 'DGOPAY500', 'DP-PULSA', ''),
(323, 'DGOPAY75', 'SALGO', 'GO PAY', 'Go Pay 75.000', 76345, 'Active', 'DGOPAY75', 'DP-PULSA', ''),
(324, 'DGOPAY200', 'SALGO', 'GO PAY', 'Go Pay 200.000', 201345, 'Active', 'DGOPAY200', 'DP-PULSA', ''),
(325, 'DSHOPPE10', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 10.000', 10450, 'Active', 'DSHOPPE10', 'DP-PULSA', ''),
(326, 'DSHOPPE40', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 40.000', 40450, 'Active', 'DSHOPPE40', 'DP-PULSA', ''),
(327, 'DSHOPPE150', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 150.000', 150450, 'Active', 'DSHOPPE150', 'DP-PULSA', ''),
(328, 'DSHOPPE250', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 250.000', 250450, 'Active', 'DSHOPPE250', 'DP-PULSA', ''),
(329, 'DSHOPPP400', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 400.000', 400450, 'Active', 'DSHOPPP400', 'DP-PULSA', ''),
(330, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 1.000.000', 1000450, 'Active', 'DSHOPPE1000', 'DP-PULSA', ''),
(331, 'DSHOPPE60', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 60.000', 60450, 'Active', 'DSHOPPE60', 'DP-PULSA', ''),
(332, 'DSHOPPE70', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 70.000', 70450, 'Active', 'DSHOPPE70', 'DP-PULSA', ''),
(333, 'DSHOPPE500', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 500.000', 500450, 'Active', 'DSHOPPE500', 'DP-PULSA', ''),
(334, 'DSHOPPE600', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 600.000', 600450, 'Active', 'DSHOPPE600', 'DP-PULSA', ''),
(335, 'DSHOPPE700', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 700.000', 700450, 'Active', 'DSHOPPE700', 'DP-PULSA', ''),
(336, 'DSHOPPE80', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 80.000', 80450, 'Active', 'DSHOPPE80', 'DP-PULSA', ''),
(337, 'DPRP', 'VGAME', 'PUBG MOBILE', 'Pubg Royale Pass', 151150, 'Active', 'DPRP', 'DP-PULSA', ''),
(338, 'DPEPP', 'VGAME', 'PUBG MOBILE', 'Pubg Elite Pass Plus', 361175, 'Active', 'DPEPP', 'DP-PULSA', ''),
(339, 'DTD1', 'PKIN', 'TELKOMSEL', '1 GB semua jaringan + bebas zona', 20349, 'Active', 'DTD1', 'DP-PULSA', ''),
(340, 'DPOVO20', 'SALGO', 'OVO', 'OVO 20.000', 20770, 'Active', 'DPOVO20', 'DP-PULSA', ''),
(341, 'DPOVO25', 'SALGO', 'OVO', 'OVO 25.000', 25770, 'Active', 'DPOVO25', 'DP-PULSA', ''),
(342, 'DPOVO30', 'SALGO', 'OVO', 'OVO 30.000', 30770, 'Active', 'DPOVO30', 'DP-PULSA', ''),
(343, 'DOVO40', 'SALGO', 'OVO', 'OVO 40.000', 40770, 'Active', 'DOVO40', 'DP-PULSA', ''),
(344, 'DPOVO50', 'SALGO', 'OVO', 'OVO 50.000', 50770, 'Active', 'DPOVO50', 'DP-PULSA', ''),
(345, 'DPOVO75', 'SALGO', 'OVO', 'OVO 75.000', 75770, 'Active', 'DPOVO75', 'DP-PULSA', ''),
(346, 'DPOVO100', 'SALGO', 'OVO', 'OVO 100.000', 100775, 'Active', 'DPOVO100', 'DP-PULSA', ''),
(347, 'DPOVO150', 'SALGO', 'OVO', 'OVO 150.000', 150775, 'Active', 'DPOVO150', 'DP-PULSA', ''),
(348, 'DPOVO200', 'SALGO', 'OVO', 'OVO 200.000', 200775, 'Active', 'DPOVO200', 'DP-PULSA', ''),
(349, 'DPOVO250', 'SALGO', 'OVO', 'OVO 250.000', 250775, 'Active', 'DPOVO250', 'DP-PULSA', ''),
(350, 'DPOVO300', 'SALGO', 'OVO', 'OVO 300.000', 300770, 'Active', 'DPOVO300', 'DP-PULSA', ''),
(351, 'DOVO400', 'SALGO', 'OVO', 'OVO 400.000', 400775, 'Active', 'DOVO400', 'DP-PULSA', ''),
(352, 'DPOVO500', 'SALGO', 'OVO', 'OVO 500.000', 500775, 'Active', 'DPOVO500', 'DP-PULSA', ''),
(353, 'DPOVO60', 'SALGO', 'OVO', 'OVO 60.000', 60925, 'Active', 'DPOVO60', 'DP-PULSA', ''),
(354, 'DPOVO70', 'SALGO', 'OVO', 'OVO 70.000', 70925, 'Active', 'DPOVO70', 'DP-PULSA', ''),
(355, 'DPOVO80', 'SALGO', 'OVO', 'OVO 80.000', 80925, 'Active', 'DPOVO80', 'DP-PULSA', ''),
(356, 'DPOVO90', 'SALGO', 'OVO', 'OVO 90.000', 90925, 'Active', 'DPOVO90', 'DP-PULSA', ''),
(357, 'DPOVO1000', 'SALGO', 'OVO', 'OVO 1.000.000', 1000775, 'Active', 'DPOVO1000', 'DP-PULSA', ''),
(358, 'DPOVO600', 'SALGO', 'OVO', 'OVO 600.000', 600775, 'Active', 'DPOVO600', 'DP-PULSA', ''),
(359, 'DPOVO700', 'SALGO', 'OVO', 'OVO 700.000', 700775, 'Active', 'DPOVO700', 'DP-PULSA', ''),
(360, 'DPOVO800', 'SALGO', 'OVO', 'OVO 800.000', 800775, 'Active', 'DPOVO800', 'DP-PULSA', ''),
(361, 'DPOVO900', 'SALGO', 'OVO', 'OVO 900.000', 900775, 'Active', 'DPOVO900', 'DP-PULSA', ''),
(362, 'DPDANA600', 'SALGO', 'DANA', 'DANA Rp 600.000', 600725, 'Active', 'DPDANA600', 'DP-PULSA', ''),
(363, 'DPDANA700', 'SALGO', 'DANA', 'DANA Rp 700.000', 700725, 'Active', 'DPDANA700', 'DP-PULSA', ''),
(364, 'DPDANA800', 'SALGO', 'DANA', 'DANA Rp 800.000', 800725, 'Active', 'DPDANA800', 'DP-PULSA', ''),
(365, 'DPDANA900', 'SALGO', 'DANA', 'DANA Rp 900.000', 900725, 'Active', 'DPDANA900', 'DP-PULSA', ''),
(366, 'DPDANA1000', 'SALGO', 'DANA', 'DANA Rp 1.000.000', 1000600, 'Active', 'DPDANA1000', 'DP-PULSA', ''),
(367, 'DSHOPPE90', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 90.000', 90450, 'Active', 'DSHOPPE90', 'DP-PULSA', ''),
(368, 'DSHOPPE800', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 800.000', 800450, 'Active', 'DSHOPPE800', 'DP-PULSA', ''),
(369, 'DSHOPPE900', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 900.000', 900450, 'Active', 'DSHOPPE900', 'DP-PULSA', ''),
(370, 'DBRI20', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 20.000', 20750, 'Active', 'DBRI20', 'DP-PULSA', ''),
(371, 'DBRI50', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 50.000', 50750, 'Active', 'DBRI50', 'DP-PULSA', ''),
(372, 'DBRI100', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 100.000', 100750, 'Active', 'DBRI100', 'DP-PULSA', ''),
(373, 'DBRI200', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 200.000', 200750, 'Active', 'DBRI200', 'DP-PULSA', ''),
(374, 'DBRI300', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 300.000', 300750, 'Active', 'DBRI300', 'DP-PULSA', ''),
(375, 'DBRI400', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 400.000', 400750, 'Active', 'DBRI400', 'DP-PULSA', ''),
(376, 'DBRI500', 'LAINYA', 'BRI BRIZZI', 'BRIZZI 500.000', 500750, 'Active', 'DBRI500', 'DP-PULSA', ''),
(377, 'DGRAB20', 'LAINYA', 'GRAB', 'Grab penumpang 20.000', 21050, 'Active', 'DGRAB20', 'DP-PULSA', ''),
(378, 'DGRAB25', 'LAINYA', 'GRAB', 'Grab penumpang 25.000', 26050, 'Active', 'DGRAB25', 'DP-PULSA', ''),
(379, 'DGRAB40', 'LAINYA', 'GRAB', 'Grab penumpang 40.000', 41050, 'Active', 'DGRAB40', 'DP-PULSA', ''),
(380, 'DGRAB50', 'LAINYA', 'GRAB', 'Grab penumpang 50.000', 51050, 'Active', 'DGRAB50', 'DP-PULSA', ''),
(381, 'DGRAB100', 'LAINYA', 'GRAB', 'Grab penumpang 100.000', 101050, 'Active', 'DGRAB100', 'DP-PULSA', ''),
(382, 'DGRAB150', 'LAINYA', 'GRAB', 'Grab penumpang 150.000', 151050, 'Active', 'DGRAB150', 'DP-PULSA', ''),
(383, 'DGRAB200', 'LAINYA', 'GRAB', 'Grab penumpang 200.000', 201050, 'Active', 'DGRAB200', 'DP-PULSA', ''),
(384, 'DGRAB300', 'LAINYA', 'GRAB', 'Grab penumpang 300.000', 301050, 'Active', 'DGRAB300', 'DP-PULSA', ''),
(385, 'DGRAB500', 'LAINYA', 'GRAB', 'Grab penumpang 500.000', 501050, 'Active', 'DGRAB500', 'DP-PULSA', ''),
(386, 'DGD150', 'LAINYA', 'GRAB DRIVER', 'Grab driver 150.000', 150950, 'Active', 'DGD150', 'DP-PULSA', ''),
(387, 'DGD200', 'LAINYA', 'GRAB DRIVER', 'Grab driver 200.000', 200950, 'Active', 'DGD200', 'DP-PULSA', ''),
(388, 'DGD250', 'LAINYA', 'GRAB DRIVER', 'Grab driver 250.000', 250950, 'Active', 'DGD250', 'DP-PULSA', ''),
(389, 'DLA10', 'SALGO', 'LinkAja', 'LinkAja Rp 10.000', 10750, 'Active', 'DLA10', 'DP-PULSA', ''),
(390, 'DLA20', 'SALGO', 'LinkAja', 'LinkAja Rp 20.000', 20450, 'Active', 'DLA20', 'DP-PULSA', ''),
(391, 'DLA35', 'SALGO', 'LinkAja', 'LinkAja Rp 25.000', 25450, 'Active', 'DLA35', 'DP-PULSA', ''),
(392, 'DLA30', 'SALGO', 'LinkAja', 'LinkAja Rp 30.000', 30450, 'Active', 'DLA30', 'DP-PULSA', ''),
(393, 'DLA50', 'SALGO', 'LinkAja', 'LinkAja Rp 50.000', 50450, 'Active', 'DLA50', 'DP-PULSA', ''),
(394, 'DLA40', 'SALGO', 'LinkAja', 'LinkAja Rp 40.000', 40450, 'Active', 'DLA40', 'DP-PULSA', ''),
(395, 'DLA60', 'SALGO', 'LinkAja', 'LinkAja Rp 60.000', 60450, 'Active', 'DLA60', 'DP-PULSA', ''),
(396, 'DLA70', 'SALGO', 'LinkAja', 'LinkAja Rp 70.000', 71125, 'Active', 'DLA70', 'DP-PULSA', ''),
(397, 'DLA80', 'SALGO', 'LinkAja', 'LinkAja Rp 80.000', 80450, 'Active', 'DLA80', 'DP-PULSA', ''),
(398, 'DLA90', 'SALGO', 'LinkAja', 'LinkAja Rp 90.000', 90450, 'Active', 'DLA90', 'DP-PULSA', ''),
(399, 'DLA100', 'SALGO', 'LinkAja', 'LinkAja Rp 100.000', 100450, 'Active', 'DLA100', 'DP-PULSA', ''),
(400, 'DLA150', 'SALGO', 'LinkAja', 'LinkAja Rp 150.000', 150450, 'Active', 'DLA150', 'DP-PULSA', ''),
(401, 'DLA200', 'SALGO', 'LinkAja', 'LinkAja Rp 200.000', 200450, 'Active', 'DLA200', 'DP-PULSA', ''),
(402, 'DLA250', 'SALGO', 'LinkAja', 'LinkAja Rp 250.000', 250450, 'Active', 'DLA250', 'DP-PULSA', ''),
(403, 'DBNI10', 'SALGO', 'TAPCASH BNI', 'Tapcash BNI 10.000', 11450, 'Active', 'DBNI10', 'DP-PULSA', ''),
(404, 'DBNI20', 'SALGO', 'TAPCASH BNI', 'Tapcash BNI 20.000', 21450, 'Active', 'DBNI20', 'DP-PULSA', ''),
(405, 'DBNI50', 'SALGO', 'TAPCASH BNI', 'Tapcash BNI 50.000', 51450, 'Active', 'DBNI50', 'DP-PULSA', ''),
(406, 'DBNI100', 'SALGO', 'TAPCASH BNI', 'Tapcash BNI 100.000', 101450, 'Active', 'DBNI100', 'DP-PULSA', ''),
(407, 'DITUNES10', 'VGAME', 'ITUNES US REGION', 'Voucher iTunes 10$', 160085, 'Active', 'DITUNES10', 'DP-PULSA', ''),
(408, 'DITUNES15', 'VGAME', 'ITUNES US REGION', 'Voucher iTunes $15', 232750, 'Active', 'DITUNES15', 'DP-PULSA', ''),
(409, 'DITUNES25', 'VGAME', 'ITUNES US REGION', 'Voucher iTunes $25', 390685, 'Active', 'DITUNES25', 'DP-PULSA', ''),
(410, 'DITUNES50', 'VGAME', 'ITUNES US REGION', 'Voucher iTunes $50', 753450, 'Active', 'DITUNES50', 'DP-PULSA', ''),
(411, 'DUNIPIN10', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 10.000', 10050, 'Active', 'DUNIPIN10', 'DP-PULSA', ''),
(412, 'DUNIPIN20', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 20.000', 19750, 'Active', 'DUNIPIN20', 'DP-PULSA', ''),
(413, 'DUNIPIN50', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 50.000', 48850, 'Active', 'DUNIPIN50', 'DP-PULSA', ''),
(414, 'DUNIPIN100', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 100.000', 97350, 'Active', 'DUNIPIN100', 'DP-PULSA', ''),
(415, 'DUNIPIN300', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 300.000', 291350, 'Active', 'DUNIPIN300', 'DP-PULSA', ''),
(416, 'DUNIPIN500', 'VGAME', 'Unipin Voucher', 'Voucher Unipin 500.000', 485350, 'Active', 'DUNIPIN500', 'DP-PULSA', ''),
(417, 'DIMVU10', 'VGAME', 'IMVU', 'Voucher IMVU $10', 173010, 'Active', 'DIMVU10', 'DP-PULSA', ''),
(418, 'DIMVU25', 'VGAME', 'IMVU', 'Voucher IMVU $25', 427150, 'Active', 'DIMVU25', 'DP-PULSA', ''),
(419, 'DIMVU50', 'VGAME', 'IMVU', 'Voucher IMVU $50', 853950, 'Active', 'DIMVU50', 'DP-PULSA', ''),
(420, 'DPDANA250', 'SALGO', 'DANA', 'DANA Rp 250.000', 250420, 'Active', 'DPDANA250', 'DP-PULSA', ''),
(421, 'DUC50', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 50 UC', 11060, 'Active', 'DUC50', 'DP-PULSA', ''),
(422, 'DUC150', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 150 UC', 55350, 'Active', 'DUC150', 'DP-PULSA', ''),
(423, 'DUC250', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 250 UC', 51075, 'Active', 'DUC250', 'DP-PULSA', ''),
(424, 'DUC500', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 500 UC', 101075, 'Active', 'DUC500', 'DP-PULSA', ''),
(425, 'DUC1250', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 1250 UC', 251075, 'Active', 'DUC1250', 'DP-PULSA', ''),
(426, 'DUC2500', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 2500 UC', 501075, 'Active', 'DUC2500', 'DP-PULSA', ''),
(427, 'DUC125', 'VGAME', 'PUBG MOBILE', 'PUBG MOBILE 125 UC', 26060, 'Active', 'DUC125', 'DP-PULSA', ''),
(428, 'DPB5', 'VGAME', 'POINT BLANK', '36000 PB Cash', 291350, 'Active', 'DPB5', 'DP-PULSA', ''),
(429, 'DPB6', 'VGAME', 'POINT BLANK', '60000 PB Cash', 485350, 'Active', 'DPB6', 'DP-PULSA', ''),
(430, 'DUS50', 'LAINYA', 'Steam Wallet (USD)', 'Steam Wallet Code $50', 883050, 'Active', 'DUS50', 'DP-PULSA', ''),
(431, 'DAIGO6', 'PKIN', 'AXIS AIGO', 'AIGO 25GB 24 JAM 60HR (Voucher)', 86045, 'Active', 'DAIGO6', 'DP-PULSA', '25 GB All Jaringan Berlaku 24 Jam Masa Aktif 60 Ha'),
(432, 'DAIGO1', 'PKIN', 'AXIS AIGO', 'AIGO 1GB 24 JAM 30HR (Voucher)', 13045, 'Active', 'DAIGO1', 'DP-PULSA', '1 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Har'),
(433, 'DAIGO2', 'PKIN', 'AXIS AIGO', 'AIGO 2GB 24 JAM 30HR (Voucher)', 22295, 'Active', 'DAIGO2', 'DP-PULSA', '2 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Har'),
(434, 'DAIGO3', 'PKIN', 'AXIS AIGO', 'AIGO 3GB 24 JAM 30HR (Voucher)', 28070, 'Active', 'DAIGO3', 'DP-PULSA', '3 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Har'),
(435, 'DAIGO4', 'PKIN', 'AXIS AIGO', 'AIGO 5GB 24 JAM 30HR (Voucher)', 41895, 'Active', 'DAIGO4', 'DP-PULSA', '5 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Har'),
(436, 'DAIGO5', 'PKIN', 'AXIS AIGO', 'AIGO 8GB 24 JAM 30HR (Voucher)', 56320, 'Active', 'DAIGO5', 'DP-PULSA', '8 GB All Jaringan Berlaku 24 Jam Masa Aktif 30 Har'),
(437, 'DTDD3', 'VOUCHER', 'TSEL DATA', 'Voucher Telkomsel Data 3.5GB', 25349, 'Active', 'DTDD3', 'DP-PULSA', '3,5GB FLASH, 7 HARI'),
(438, 'DTDD2', 'VOUCHER', 'TSEL DATA', 'Voucher Telkomsel Data 2.5GB', 18349, 'Active', 'DTDD2', 'DP-PULSA', '2,5GB FLASH, 5 HARI'),
(439, 'DTDD1', 'VOUCHER', 'TSEL DATA', 'Voucher Telkomsel Data 1GB 3 Hari', 14300, 'Active', 'DTDD1', 'DP-PULSA', '1 GB Flash, 3 Hari'),
(440, 'DTDB1', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 1 GB', 18300, 'Active', 'DTDB1', 'DP-PULSA', '1GB, 5 HARI'),
(441, 'DTDB2', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 1.5GB', 26300, 'Active', 'DTDB2', 'DP-PULSA', '1,5GB, 7 HARI'),
(442, 'DTDB3', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 2 GB', 35450, 'Active', 'DTDB3', 'DP-PULSA', '2GB + 2GB OMG, 30 hari'),
(443, 'DTDB4', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 4 GB', 34850, 'Active', 'DTDB4', 'DP-PULSA', '-'),
(444, 'DTDB6', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 6 GB', 58200, 'Active', 'DTDB6', 'DP-PULSA', '6GB + 2GB OMG, 30 HARI'),
(445, 'DTDB9', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 9 GB', 75200, 'Active', 'DTDB9', 'DP-PULSA', '9GB + 2GB OMG, 30 HARI'),
(446, 'DTDB10', 'VOUCHER', 'TSEL BULK', 'Telkomsel Data Bulk 10 GB', 65475, 'Active', 'DTDB10', 'DP-PULSA', '10GB + 2GB OMG, 30 HARI'),
(447, 'DAM1', 'VOUCHER', 'AIGO MINI', 'AIGO MINI 1GB 24 JAM 5HR (Voucher)', 7945, 'Active', 'DAM1', 'DP-PULSA', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk'),
(448, 'DAM2', 'VOUCHER', 'AIGO MINI', 'AIGO MINI 2GB 24 JAM 7HR (Voucher)', 14605, 'Active', 'DAM2', 'DP-PULSA', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk'),
(449, 'DAM3', 'VOUCHER', 'AIGO MINI', 'AIGO MINI 3GB 24 JAM 15HR (Voucher)', 19170, 'Active', 'DAM3', 'DP-PULSA', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk'),
(450, 'DAM4', 'VOUCHER', 'AIGO MINI', 'AIGO MINI 5GB 24 JAM 15HR (Voucher)', 30370, 'Active', 'DAM4', 'DP-PULSA', 'Setelah mendapat SN, ketik *838*kodevoucher# untuk'),
(451, 'DOW1', 'VOUCHER', 'AIGO MINI', 'Voucher OWSEM 1GB + 1GB 4G', 17150, 'Active', 'DOW1', 'DP-PULSA', 'Voucher BRONET 4G OWSEM 1GB+1GB(4G)+2GB Games, 24 '),
(452, 'DOW3', 'VOUCHER', 'AIGO MINI', 'Voucher OWSEM 2GB + 6GB 4G', 44895, 'Active', 'DOW3', 'DP-PULSA', 'Voucher BRONET 4G OWSEM 2GB+6GB(4G)+8GB Games, 24 '),
(453, 'DOW2', 'VOUCHER', 'AIGO MINI', 'Voucher OWSEM 1GB + 3GB 4G', 28270, 'Active', 'DOW2', 'DP-PULSA', 'Voucher BRONET 4G OWSEM 1GB+3GB(4G)+4GB Games, 24 '),
(454, 'DOW4', 'VOUCHER', 'AIGO MINI', 'Voucher OWSEM 3GB + 9GB 4G', 59520, 'Active', 'DOW4', 'DP-PULSA', 'Voucher BRONET 4G OWSEM 3GB+9GB(4G)+12GB Games, 24'),
(455, 'DVF2', 'VOUCHER', 'VOC INDOSAT', 'Voucher Freedom Internet 10GB 30Hr', 46495, 'Active', 'DVF2', 'DP-PULSA', 'INDOSAT DATA FREEDOM 10GB FULL 24 JAM NASIONAL, 30'),
(456, 'DVF1', 'VOUCHER', 'VOC INDOSAT', 'Voucher Freedom Internet 18GB 30Hr', 73470, 'Active', 'DVF1', 'DP-PULSA', 'INDOSAT DATA FREEDOM 18GB FULL 24 JAM NASIONAL, 30'),
(457, 'DVU1', 'VOUCHER', 'VOC INDOSAT', 'Indosat Internet Unlimited 3GB 30Hari', 55770, 'Active', 'DVU1', 'DP-PULSA', '*556*kode voucher# untuk aktivasi'),
(458, 'DSMART1', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (1,25GB UTAMA + 1,75GB MALAM + 1GB CHAT, 7 HARI)', 10195, 'Active', 'DSMART1', 'DP-PULSA', '-'),
(459, 'DSMART2', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data 5GB UTAMA + 5GB MALAM, 30 HARI', 25270, 'Active', 'DSMART2', 'DP-PULSA', '-'),
(460, 'DSMART3', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (8GB UTAMA + 8GB MALAM, 30 HARI)', 34795, 'Active', 'DSMART3', 'DP-PULSA', '-'),
(461, 'DSMART4', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (15GB UTAMA + 15GB MALAM, 30 HARI)', 54220, 'Active', 'DSMART4', 'DP-PULSA', '-'),
(462, 'DSMART5', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (30GB UTAMA + 30GB MALAM, 30 HARI)', 93245, 'Active', 'DSMART5', 'DP-PULSA', '-'),
(463, 'DSMART6', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (UNLIMITED FUP 1GB/HR, MASA AKTIF 30 HARI)', 69445, 'Active', 'DSMART6', 'DP-PULSA', '-'),
(464, 'DSMART7', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (UNLIMITED FUP 500MB/HR, MASA AKTIF 28 HARI)', 47245, 'Active', 'DSMART7', 'DP-PULSA', '-'),
(465, 'DSMART8', 'VOUCHER', 'VOC SMART', 'Smartfren Voucher Data (UNLIMITED FUP 1GB/HR, MASA AKTIF 5 HARI)', 17970, 'Active', 'DSMART8', 'DP-PULSA', '-'),
(466, 'DVTR1', 'VOUCHER', 'VOC TRI', 'Voucher Tri LTE 33GB', 105350, 'Active', 'DVTR1', 'DP-PULSA', 'V-LTE 3GB+30GB 4G 30 Hari, Cara Input : *111*SNVOU'),
(467, 'DVTR2', 'VOUCHER', 'VOC TRI', 'Voucher Tri LTE 66GB', 180350, 'Active', 'DVTR2', 'DP-PULSA', 'V-LTE 6GB+60GB 4G 60 Hari, Cara Input : *111*SNVOU'),
(468, 'DVTR3', 'VOUCHER', 'VOC TRI', 'Voucher Tri 1GB + 500MB All Net 30 Hari', 13349, 'Active', 'DVTR3', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#'),
(469, 'DVTR4', 'VOUCHER', 'VOC TRI', 'Voucher Tri 1,5GB + 500MB All Net 30 Hari', 33500, 'Active', 'DVTR4', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#');
INSERT INTO `services_pulsa` (`id`, `sid`, `type`, `category`, `service`, `price`, `status`, `pid`, `provider`, `note`) VALUES
(470, 'DVTR5', 'VOUCHER', 'VOC TRI', 'Voucher Tri 2GB + 1GB All Net 30 Hari', 35350, 'Active', 'DVTR5', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#'),
(471, 'DVTR6', 'VOUCHER', 'VOC TRI', 'Voucher Tri 5GB + 1GB All Net 30 Hari', 55350, 'Active', 'DVTR6', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#'),
(472, 'DVTR7', 'VOUCHER', 'VOC TRI', 'Voucher Tri 6GB + Unlimited 30 Hari', 60350, 'Active', 'DVTR7', 'DP-PULSA', 'Unlimited pada jam 01.00 - 17.00, Claim Voucher de'),
(473, 'DVTR8', 'VOUCHER', 'VOC TRI', 'Voucher Tri 8GB + 14GB All Net + Unlimited Youtube 15 Hari', 96350, 'Active', 'DVTR8', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#'),
(474, 'DVTR9', 'VOUCHER', 'VOC TRI', 'Voucher Tri 10GB + 20GB All Net + Unlimited Youtube 15 Hari', 128150, 'Active', 'DVTR9', 'DP-PULSA', 'Claim Voucher dengan cara *111*SN#'),
(475, 'DVTR10', 'VOUCHER', 'VOC TRI', 'Voucher Tri AMI 12 GB', 64650, 'Active', 'DVTR10', 'DP-PULSA', 'Voucher Three 12GB 30 Hari + Unlimited Youtube 30 '),
(476, 'DVTR11', 'VOUCHER', 'VOC TRI', 'Voucher Tri AMI 4 GB', 29450, 'Active', 'DVTR11', 'DP-PULSA', 'Voucher Three 4GB 30 Hari + Unlimited Youtube 7 Ha'),
(477, 'DVAO1', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 1.5 GB', 13610, 'Active', 'DVAO1', 'DP-PULSA', '1 GB Nasional, 500 MB lokal, Mengikuti Masa Aktif '),
(478, 'DVAO2', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 2 GB', 18310, 'Active', 'DVAO2', 'DP-PULSA', '1.5 GB Nasional,500 MB lokal, Mengikuti Masa Aktif'),
(479, 'DVAO3', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 3 GB', 23875, 'Active', 'DVAO3', 'DP-PULSA', '2 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Ka'),
(480, 'DVAO4', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 6 GB', 33575, 'Active', 'DVAO4', 'DP-PULSA', '5 GB Nasional, 1 GB lokal, Mengikuti Masa Aktif Ka'),
(481, 'DVAO5', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 6 GB + Unlimited', 48875, 'Active', 'DVAO5', 'DP-PULSA', '6 GB Nasional, Mengikuti Masa Aktif Kartu, Unlimit'),
(482, 'DVAO6', 'VOUCHER', 'VOC TRI A', 'Voucher AlwaysOn 10 GB + Unlimited', 75125, 'Active', 'DVAO6', 'DP-PULSA', '10 GB Nasional, Mengikuti Masa Aktif Kartu, Unlimi'),
(483, 'DTRA1', 'VOUCHER', 'VOC TRI B', 'Tri Data AON 1GB + 1GB 30Hr', 19850, 'Active', 'DTRA1', 'DP-PULSA', 'Jangan lupa input *111*SN# agar customer mendapatk'),
(484, 'DTRA2', 'VOUCHER', 'VOC TRI B', 'Tri Data AON 2GB + 3GB 30Hr', 30350, 'Active', 'DTRA2', 'DP-PULSA', 'Jangan lupa input *111*SN# agar customer mendapatk'),
(485, 'DTRA3', 'VOUCHER', 'VOC TRI B', 'Tri Data AON 3GB + 6GB 30Hr', 60800, 'Active', 'DTRA3', 'DP-PULSA', 'Jangan lupa input *111*SN# agar customer mendapatk'),
(486, 'DTRA4', 'VOUCHER', 'VOC TRI B', 'Tri Data AON 5GB + 8GB 30Hr', 60350, 'Active', 'DTRA4', 'DP-PULSA', 'Jangan lupa input *111*SN# agar customer mendapatk'),
(487, 'DTRA5', 'VOUCHER', 'VOC TRI B', 'Tri Data AON 6GB + 12GB 30Hr', 78650, 'Active', 'DTRA5', 'DP-PULSA', 'Jangan lupa input *111*SN# agar customer mendapatk'),
(488, 'DVMN1', 'VOUCHER', 'VOC TRI C', 'Voucher Mini 1 GB 5 Hari', 8849, 'Active', 'DVMN1', 'DP-PULSA', '1 GB Lokal, 5 Hari'),
(489, 'DVMN2', 'VOUCHER', 'VOC TRI C', 'Voucher Mini 1.5 GB 5 Hari', 12200, 'Active', 'DVMN2', 'DP-PULSA', '1.5 GB Lokal, 5 Hari'),
(490, 'DMN1', 'VOUCHER', 'XL MINI', 'Voucher XL Data Mini 1GB', 9950, 'Active', 'DMN1', 'DP-PULSA', '1GB NASIONAL SEMUA JARINGAN, 7 HARI'),
(491, 'DCMB1', 'VOUCHER', 'XL LITE', 'Voucher Combo LITE 3.5 GB', 27349, 'Active', 'DCMB1', 'DP-PULSA', '2,5GB + 1GB YOUTUBE'),
(492, 'DCMB2', 'VOUCHER', 'XL LITE', 'Voucher Combo LITE 6 GB', 38349, 'Active', 'DCMB2', 'DP-PULSA', '5GB + 1GB YOUTUBE'),
(493, 'DCMB3', 'VOUCHER', 'XL LITE', 'Voucher Combo LITE 11 GB', 61349, 'Active', 'DCMB3', 'DP-PULSA', '10GB + 1GB YOUTUBE'),
(494, 'DCMB4', 'VOUCHER', 'XL LITE', 'Voucher Combo LITE 21 GB', 97349, 'Active', 'DCMB4', 'DP-PULSA', '20GB + 1GB YOUTUBE'),
(495, 'DCMB5', 'VOUCHER', 'XL LITE', 'Voucher Combo LITE 31 GB', 120349, 'Active', 'DCMB5', 'DP-PULSA', '30GB + 1GB YOUTUBE'),
(496, 'DTEL1', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 5.000', 5550, 'Active', 'DTEL1', 'DP-PULSA', 'Telepon 80 menit sesama, 20 menit semua op 1 Hari'),
(497, 'DTEL2', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 10.000', 10550, 'Active', 'DTEL2', 'DP-PULSA', 'Telepon 185 menit sesama, 15 menit semua operator '),
(498, 'DTEL3', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 20.000', 15000, 'Active', 'DTEL3', 'DP-PULSA', 'Telepon 370 menit sesama, 30 menit semua op (3 Har'),
(499, 'DTEL4', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 25.000', 25210, 'Active', 'DTEL4', 'DP-PULSA', 'Telepon 550 menit sesama, 50 menit semua op (7 Har'),
(500, 'DTEL5', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 50.000', 47375, 'Active', 'DTEL5', 'DP-PULSA', 'Telepon 1200 menit sesama, 100 menit semua op (15 '),
(501, 'DTEL6', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 80.000', 74375, 'Active', 'DTEL6', 'DP-PULSA', 'Telepon 2000 menit sesama, 100 menit semua op (30 '),
(502, 'DTEL7', 'PKSMS', 'TEL TSEL', 'Telkomsel Telepon 130.000', 100350, 'Active', 'DTEL7', 'DP-PULSA', 'Telepon 6250 menit sesama, 250 menit semua op (30 '),
(503, 'DTEL8', 'PKSMS', 'TEL TSEL 3', 'Telkomsel Telepon 170 menit sesama, 30 menit semua op 3 Hari', 10375, 'Active', 'DTEL8', 'DP-PULSA', 'Telepon 170 menit sesama, 30 menit semua op 3 Hari'),
(504, 'DTEL9', 'PKSMS', 'TEL TSEL 3', 'Telkomsel Telepon 350 menit sesama, 50 menit semua op 7 Hari', 20360, 'Active', 'DTEL9', 'DP-PULSA', 'Telepon 350 menit sesama, 50 menit semua op 7 Hari'),
(505, 'DTEL10', 'PKSMS', 'TEL TSEL 3', 'Telepon 1000 menit sesama, 100 menit semua op (30 Hari)', 51350, 'Active', 'DTEL10', 'DP-PULSA', 'Telepon 1000 menit sesama, 100 menit semua op (30 '),
(506, 'DTEL11', 'PKSMS', 'TEL TSEL 3', 'Telkomsel Paket Telepon 1700 menit On Net Masa Aktif 7 Hari', 39925, 'Active', 'DTEL11', 'DP-PULSA', '-'),
(507, 'DTEL12', 'PKSMS', 'TEL TSEL 3', 'Telkomsel Paket Telepon 9000 menit On Net Masa Aktif 30 Hari', 97325, 'Active', 'DTEL12', 'DP-PULSA', '-'),
(508, 'DTSS1', 'PKSMS', 'TEL TSEL 1', 'Telepon Sesama Tsel (200 menit, 30Hari)', 50975, 'Active', 'DTSS1', 'DP-PULSA', '-'),
(509, 'DTSS2', 'PKSMS', 'TEL TSEL 1', 'Telepon Sesama Tsel (300 menit + 1000SMS, 30Hari)', 100975, 'Active', 'DTSS2', 'DP-PULSA', '-'),
(510, 'DTSS3', 'PKSMS', 'TEL TSEL 1', 'Telepon Sesama Tsel (50 menit + 200SMS,7Hari)', 25975, 'Active', 'DTSS3', 'DP-PULSA', '-'),
(511, 'DTSS4', 'PKSMS', 'TEL TSEL 1', 'Telepon Sesama Tsel (50 menit, 3Hari)', 11210, 'Active', 'DTSS4', 'DP-PULSA', 'Telepon Sesama Tsel (50 menit, 3Hari)'),
(512, 'DTSS5', 'PKSMS', 'TEL TSEL 1', 'Telepon Sesama Tsel (50 menit, 7Hari)', 21310, 'Active', 'DTSS5', 'DP-PULSA', 'Telepon Sesama Tsel (50 menit, 7Hari)'),
(513, 'DTES3', 'PKSMS', 'TEL TSEL 2', 'Telepon Semua Op (20 menit, 1Hari)', 5765, 'Active', 'DTES3', 'DP-PULSA', 'Paket TELEPON - Telepon Semua Op (20 menit, 1Hari)'),
(514, 'DSMS2', 'PKSMS', 'SMS TSEL', '250 SMS ke semua op 1 hari', 5765, 'Active', 'DSMS2', 'DP-PULSA', '250 SMS ke semua op 1 hari'),
(515, 'DSMS4', 'PKSMS', 'SMS TSEL', '1500 SMS ke semua op 30 hari', 20800, 'Active', 'DSMS4', 'DP-PULSA', '1500 SMS ke semua op 30 hari'),
(516, 'DSMS1', 'PKSMS', 'SMS TSEL', 'Telkomsel 200 SMS ke semua op 1 hari', 1325, 'Active', 'DSMS1', 'DP-PULSA', 'Paket SMS - 200 SMS ke semua 1 hari'),
(517, 'DSMS3', 'PKSMS', 'SMS TSEL', '500 SMS ke semua op 7 hari', 10765, 'Active', 'DSMS3', 'DP-PULSA', '500 SMS ke semua op 7 hari'),
(518, 'DSMS5', 'PKSMS', 'SMS TSEL', 'Telkomsel 1000 SMS ke semua op 5 hari', 5150, 'Active', 'DSMS5', 'DP-PULSA', 'Paket SMS - 1000 SMS ke semua 5 hari'),
(519, 'DSMS6', 'PKSMS', 'SMS TSEL', 'Telkomsel 1000 SMS ke semua op 15 hari', 15800, 'Active', 'DSMS6', 'DP-PULSA', 'Paket SMS - 1000 SMS ke semua 15 hari'),
(520, 'DSMS7', 'PKSMS', 'SMS TSEL', 'Telkomsel 2000 SMS ke semua op 30 hari', 25900, 'Active', 'DSMS7', 'DP-PULSA', 'Paket SMS - 2000 SMS ke semua 30 hari'),
(521, 'DTELN3', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama 30 Hari', 10275, 'Active', 'DTELN3', 'DP-PULSA', 'Indosat telepon unlimited sesama 30 Hari'),
(522, 'DTELN1', 'PKSMS', 'TEL IND', 'Indosat telepon 1000 Menit Sesama Masa Aktif Paket 1 Hari', 2475, 'Active', 'DTELN1', 'DP-PULSA', '-'),
(523, 'DTELN2', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama Masa Aktif Paket 10 Hari', 15400, 'Active', 'DTELN2', 'DP-PULSA', '-'),
(524, 'DTELN4', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama + 30 Menit All Operator Masa Aktif Paket 7 Hari', 12925, 'Active', 'DTELN4', 'DP-PULSA', 'Indosat telepon unlimited sesama + 30 Menit All Op'),
(525, 'DTELN5', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama + 50 Menit All Operator Masa Aktif Paket 7 Hari', 17575, 'Active', 'DTELN5', 'DP-PULSA', '-'),
(526, 'DTELN6', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama + 60 Menit All Operator Masa Aktif Paket 30 Hari', 24400, 'Active', 'DTELN6', 'DP-PULSA', 'Indosat telepon unlimited sesama + 60 Menit All Op'),
(527, 'DTELN7', 'PKSMS', 'TEL IND', 'Indosat telepon unlimited sesama + 250 Menit All Operator  Masa Aktif Paket 30 Hari', 48050, 'Active', 'DTELN7', 'DP-PULSA', '-'),
(528, 'DSMSN1', 'PKSMS', 'SMS IND', '300 SMS sesama Indosat + 100 SMS operator lain', 6450, 'Active', 'DSMSN1', 'DP-PULSA', '300 SMS sesama Isat + 100 SMS operator lain'),
(529, 'DSMSN2', 'PKSMS', 'SMS IND', '600 SMS sesama Isat + 200 SMS operator lain', 11950, 'Active', 'DSMSN2', 'DP-PULSA', '600 SMS sesama Isat + 200 SMS operator lain'),
(530, 'DSMSN3', 'PKSMS', 'SMS IND', '1250 SMS sesama Isat + 250 SMS operator lain', 10950, 'Active', 'DSMSN3', 'DP-PULSA', '1250 SMS sesama Isat + 250 SMS operator lain 30 ha'),
(531, 'DSMSN4', 'PKSMS', 'SMS IND', '2000 SMS sesama Isat + 500 SMS operator lain', 27950, 'Active', 'DSMSN4', 'DP-PULSA', '2000 SMS sesama Isat + 500 SMS operator lain'),
(532, 'DTT1', 'PKSMS', 'TEL TRI', 'Tri Telepon 20 Menit Ke Semua Op 7 Hari', 5445, 'Active', 'DTT1', 'DP-PULSA', '-'),
(533, 'DTT2', 'PKSMS', 'TEL TRI', 'Tri Telepon 60 Menit Ke Semua Op 7 Hari', 15470, 'Active', 'DTT2', 'DP-PULSA', '-'),
(534, 'DTT3', 'PKSMS', 'TEL TRI', 'Tri Telepon 150 Menit Ke Semua Op 30 Hari', 30470, 'Active', 'DTT3', 'DP-PULSA', '-'),
(535, 'DXLTEL1', 'PKSMS', 'TEL XL', 'AnyNet 400 Menit 7 Hari', 10350, 'Active', 'DXLTEL1', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 400 Menit '),
(536, 'DXLTEL2', 'PKSMS', 'TEL XL', 'AnyNet 150 Menit 30 Hari', 25350, 'Active', 'DXLTEL2', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 150 Menit.'),
(537, 'DXLTEL3', 'PKSMS', 'TEL XL', 'AnyNet 250 Menit 30 Hari', 35350, 'Active', 'DXLTEL3', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 250 Menit.'),
(538, 'DXLTEL4', 'PKSMS', 'TEL XL', 'AnyNet 325 Menit 30 Hari', 68625, 'Active', 'DXLTEL4', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 325 Menit.'),
(539, 'DXLTEL5', 'PKSMS', 'TEL XL', 'AnyNet 500 Menit 30 Hari', 120350, 'Active', 'DXLTEL5', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 500 Menit.'),
(540, 'DXLTEL6', 'PKSMS', 'TEL XL', 'AnyNet 500 Menit 90 Hari', 130725, 'Active', 'DXLTEL6', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 500 Menit.'),
(541, 'DXLTEL7', 'PKSMS', 'TEL XL', 'AnyNet 300 Menit 90 Hari', 75350, 'Active', 'DXLTEL7', 'DP-PULSA', 'Bebas telepon ke semua operator selamat 300 Menit.'),
(542, 'DBULK1', 'PKIN', 'BULK', 'Telkomsel Data Bulk 3 GB', 40900, 'Active', 'DBULK1', 'DP-PULSA', 'Telkomsel 3 GB + 1GB OMG 30 Hari'),
(543, 'DBULK2', 'PKIN', 'BULK', 'Telkomsel Data Bulk 4.5 GB', 65500, 'Active', 'DBULK2', 'DP-PULSA', 'Telkomsel 4.5 GB + 2 GB OMG + 100 menit telepon + '),
(544, 'DBULK3', 'PKIN', 'BULK', 'Telkomsel Data Bulk 5 GB', 65500, 'Active', 'DBULK3', 'DP-PULSA', 'Telkomsel 5 GB + 2GB OMG 30 Hari'),
(545, 'DBULK4', 'PKIN', 'BULK', 'Telkomsel Data Bulk 8 GB', 88900, 'Active', 'DBULK4', 'DP-PULSA', 'Telkomsel 8 GB + 2GB OMG 30 Hari'),
(546, 'DBULK5', 'PKIN', 'BULK', 'Telkomsel Data Bulk 12 GB', 110500, 'Active', 'DBULK5', 'DP-PULSA', 'Telkomsel 12 GB + 2 GB OMG 30 Hari'),
(547, 'DBULK6', 'PKIN', 'BULK', 'Telkomsel Data Bulk 17 GB', 145350, 'Active', 'DBULK6', 'DP-PULSA', 'Telkomsel 17 GB + 2 GB OMG + 300 menit telepon + 1'),
(548, 'DBULK7', 'PKIN', 'BULK', 'Telkomsel Data Bulk 25 GB', 175500, 'Active', 'DBULK7', 'DP-PULSA', 'Telkomsel 25 GB + 2 GB OMG 30 Hari'),
(549, 'DBULK8', 'PKIN', 'BULK', 'Telkomsel Data Bulk 28 GB', 165500, 'Active', 'DBULK8', 'DP-PULSA', 'Telkomsel 28 GB + 2 GB OMG + 600 menit telepon + 2'),
(550, 'DBULK9', 'PKIN', 'BULK', 'Telkomsel Data Bulk 50 GB', 194700, 'Active', 'DBULK9', 'DP-PULSA', 'Telkomsel 50 GB + 2 GB OMG 30 Hari'),
(551, 'DTFL1', 'PKIN', 'FLASH', 'Telkomsel Data Flash 5.000', 5055, 'Active', 'DTFL1', 'DP-PULSA', '20MB - 40MB sesuai zona / 7 Hari'),
(552, 'DTFL2', 'PKIN', 'FLASH', 'Telkomsel Data Flash 10.000', 9350, 'Active', 'DTFL2', 'DP-PULSA', '50MB - 110MB sesuai zona, 7 Hari'),
(553, 'DTFL3', 'PKIN', 'FLASH', 'Telkomsel Data Flash 20.000', 17375, 'Active', 'DTFL3', 'DP-PULSA', 'Telkomsel 200MB - 420MB sesuai zona / 7 Hari'),
(554, 'DTFL4', 'PKIN', 'FLASH', 'Telkomsel Data Flash 25.000', 23350, 'Active', 'DTFL4', 'DP-PULSA', '360MB - 800MB sesuai zona / 30 Hari'),
(555, 'DTFL5', 'PKIN', 'FLASH', 'Telkomsel Data Flash 50.000', 47350, 'Active', 'DTFL5', 'DP-PULSA', '800MB - 1.5GB sesuai zona / 30 Hari'),
(556, 'DTFL6', 'PKIN', 'FLASH', 'Telkomsel Data Flash 68.000', 68075, 'Active', 'DTFL6', 'DP-PULSA', '4.5 GB, 24Jam 30Hari'),
(557, 'DTFL7', 'PKIN', 'FLASH', 'Telkomsel Data Flash 85.000', 85025, 'Active', 'DTFL7', 'DP-PULSA', '8 GB, 24Jam 30Hari'),
(558, 'DTFL8', 'PKIN', 'FLASH', 'Telkomsel Data Flash 100.000', 90350, 'Active', 'DTFL8', 'DP-PULSA', '12 GB / 30 Hari'),
(559, 'DTFL9', 'PKIN', 'FLASH', 'Telkomsel Data Flash 200.000', 195375, 'Active', 'DTFL9', 'DP-PULSA', '50 GB / 30 Hari'),
(560, 'DTFL10', 'PKIN', 'FLASH', 'Telkomsel Data Flash 100 MB', 5750, 'Active', 'DTFL10', 'DP-PULSA', '24 jam 7 hari'),
(561, 'DTFL11', 'PKIN', 'FLASH', 'Telkomsel Data Flash 50 MB', 4850, 'Active', 'DTFL11', 'DP-PULSA', '24 jam 7 hari'),
(562, 'DTFL12', 'PKIN', 'FLASH', 'Telkomsel Data Flash 250 MB', 9655, 'Active', 'DTFL12', 'DP-PULSA', '24 jam 7 hari'),
(563, 'DTFL13', 'PKIN', 'FLASH', 'Telkomsel Data Flash 500 MB', 13850, 'Active', 'DTFL13', 'DP-PULSA', '24 jam 30 hari'),
(564, 'DTFL14', 'PKIN', 'FLASH', 'Telkomsel Data Flash 750 MB', 17350, 'Active', 'DTFL14', 'DP-PULSA', '24 jam 30 hari'),
(565, 'DTFL15', 'PKIN', 'FLASH', 'Telkomsel Data Flash 1 GB', 18850, 'Active', 'DTFL15', 'DP-PULSA', '24Jam 30Hari'),
(566, 'DTFL16', 'PKIN', 'FLASH', 'Telkomsel Data Flash 2 GB', 37350, 'Active', 'DTFL16', 'DP-PULSA', '24Jam 30Hari'),
(567, 'DTFL18', 'PKIN', 'FLASH', 'Telkomsel Data Flash 4 GB', 76350, 'Active', 'DTFL18', 'DP-PULSA', '24Jam 30Hari'),
(568, 'DTFL17', 'PKIN', 'FLASH', 'Telkomsel Data Flash 3 GB', 62350, 'Active', 'DTFL17', 'DP-PULSA', '24Jam 30Hari'),
(569, 'DTFL19', 'PKIN', 'FLASH', 'Telkomsel Data Flash 8 GB', 87600, 'Active', 'DTFL19', 'DP-PULSA', '24 jam 30 Hari'),
(570, 'DTFL20', 'PKIN', 'FLASH', 'Telkomsel Data Flash 12 GB', 99150, 'Active', 'DTFL20', 'DP-PULSA', '24 jam 30 hari'),
(571, 'DMNN1', 'PKIN', 'MINI', 'Telkomsel Data Mini 1 Gb 3 Hari', 12825, 'Active', 'DMNN1', 'DP-PULSA', '24 jam'),
(572, 'DMNN2', 'PKIN', 'MINI', 'Telkomsel Data Mini 2 Gb 3 Hari', 15850, 'Active', 'DMNN2', 'DP-PULSA', '24 jam'),
(573, 'DMNN3', 'PKIN', 'MINI', 'Telkomsel Data Mini 10 Gb 3 Hari', 37950, 'Active', 'DMNN3', 'DP-PULSA', '24 jam'),
(574, 'DMNN4', 'PKIN', 'MINI', 'Telkomsel Data Mini 5 Gb 7 Hari', 38950, 'Active', 'DMNN4', 'DP-PULSA', '24 jam'),
(575, 'DMSX4', 'PKIN', 'MAX', 'Telkomsel MAX-STREAM GALA 100.000', 97875, 'Active', 'DMSX4', 'DP-PULSA', '15 GB Maxstream Gala (HBO Go, Viu Premium, Vidio G'),
(576, 'DMXS3', 'PKIN', 'MAX', 'Telkomsel MAX-STREAM GALA 150.000', 146875, 'Active', 'DMXS3', 'DP-PULSA', '30 GB Maxstream Gala (HBO Go, Viu Premium, Vidio G'),
(577, 'DMXS1', 'PKIN', 'MAX', 'Telkomsel Maxstream 20.000', 20450, 'Active', 'DMXS1', 'DP-PULSA', '5 GB Maxstream 30 Hari'),
(578, 'DMSX2', 'PKIN', 'MAX', 'Telkomsel Maxstream 50.000', 49450, 'Active', 'DMSX2', 'DP-PULSA', '12 GB Maxstream 30 Hari'),
(579, 'DGAME4', 'PKIN', 'GAMESMAX', 'Telkomsel Data 1GB + Youtube + Game + Voucher Spesial Cube', 24360, 'Active', 'DGAME4', 'DP-PULSA', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + '),
(580, 'DGAME3', 'PKIN', 'GAMESMAX', 'Telkomsel Data 1GB + Youtube + Game + Voucher AOV', 24360, 'Active', 'DGAME3', 'DP-PULSA', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + '),
(581, 'DGAME2', 'PKIN', 'GAMESMAX', 'Telkomsel Data 1GB + Youtube + Game + Voucher Google Play', 24360, 'Active', 'DGAME2', 'DP-PULSA', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + '),
(582, 'DGAME6', 'PKIN', 'GAMESMAX', 'Telkomsel Data 1GB + Youtube + Game + Voucher Mobile legends', 24360, 'Active', 'DGAME6', 'DP-PULSA', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + '),
(583, 'DGAME5', 'PKIN', 'GAMESMAX', 'Telkomsel Data 1GB + Youtube + Game + Voucher Freefire', 24360, 'Active', 'DGAME5', 'DP-PULSA', 'Telkomsel Data 1GB + 500MB Youtube + 30GB Games + '),
(584, 'DGAME7', 'PKIN', 'GAMESMAX', 'Telkomsel GamesMAX 500MB Internet + 2.5GB Internet Games Kuota', 24950, 'Active', 'DGAME7', 'DP-PULSA', 'GamesMAX 500MB Internet + 2.5GB Internet Games Kuo'),
(585, 'DGAME1', 'PKIN', 'GAMESMAX', 'Telkomsel GamesMax 25.000', 23045, 'Active', 'DGAME1', 'DP-PULSA', 'GamesMax 1 GB Internet + 2 GB Internet Games'),
(586, 'DCMBO1', 'PKIN', 'COMBO', 'Telkomsel Paket COMBO 10GB', 97875, 'Active', 'DCMBO1', 'DP-PULSA', '10GB + 100 Menit Sesama + 100 sms Sesama (on net),'),
(587, 'DALLL4', 'PKIN', 'TSEL ALL', '500 MB semua jaringan + bebas zona', 14350, 'Active', 'DALLL4', 'DP-PULSA', '-'),
(588, 'DALLL5', 'PKIN', 'TSEL ALL', '750 MB semua jaringan + bebas zona', 18950, 'Active', 'DALLL5', 'DP-PULSA', '-'),
(589, 'DALLL6', 'PKIN', 'TSEL ALL', '1 GB semua jaringan + bebas zona', 20275, 'Active', 'DALLL6', 'DP-PULSA', '-'),
(590, 'DALLL1', 'PKIN', 'TSEL ALL', '50 MB semua jaringan + bebas zona', 4850, 'Active', 'DALLL1', 'DP-PULSA', '24 jam 30 hari'),
(591, 'DALLL2', 'PKIN', 'TSEL ALL', '100 MB semua jaringan + bebas zona', 8350, 'Active', 'DALLL2', 'DP-PULSA', '24 jam 30 hari'),
(592, 'DALLL3', 'PKIN', 'TSEL ALL', '250 MB semua jaringan + bebas zona', 10350, 'Active', 'DALLL3', 'DP-PULSA', '24 jam 30 hari'),
(593, 'DTMLM1', 'PKIN', 'MALAM', 'Telkomsel Data Malam 1 Gb 1 Hari', 3700, 'Active', 'DTMLM1', 'DP-PULSA', 'Aktif pukul 00-07'),
(594, 'DTMLM3', 'PKIN', 'MALAM', 'Telkomsel Data Malam 5 Gb 7 Hari', 11770, 'Active', 'DTMLM3', 'DP-PULSA', 'Aktif pukul 00-07'),
(595, 'DTMLM2', 'PKIN', 'MALAM', 'Telkomsel Data Malam 5 Gb 1 Hari', 6350, 'Active', 'DTMLM2', 'DP-PULSA', 'Aktif pukul 00-07'),
(596, 'DTMLM4', 'PKIN', 'MALAM', 'Telkomsel Data Malam 5 Gb 30 Hari', 16700, 'Active', 'DTMLM4', 'DP-PULSA', 'Aktif pukul 00-07'),
(597, 'DTMLM5', 'PKIN', 'MALAM', 'Telkomsel Data Malam 15 Gb 30 Hari', 23150, 'Active', 'DTMLM5', 'DP-PULSA', 'Aktif pukul 00-07'),
(598, 'DKCL1', 'PKIN', 'KECIL', 'Telkomsel Data 1GB 1 Hari', 10850, 'Active', 'DKCL1', 'DP-PULSA', '-'),
(599, 'DKCL2', 'PKIN', 'KECIL', 'Telkomsel Data 1GB 7 Hari', 20850, 'Active', 'DKCL2', 'DP-PULSA', '-'),
(600, 'DKCL3', 'PKIN', 'KECIL', 'Telkomsel Data 5GB 3 Hari', 28850, 'Active', 'DKCL3', 'DP-PULSA', '-'),
(601, 'DTFL21', 'PKIN', 'FLASH', 'Flash 1GB + 2GB Game (30 hari)', 23375, 'Active', 'DTFL21', 'DP-PULSA', 'Flash 1GB + 2GB Game (30 hari)'),
(602, 'DOMG1', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 1GB / 1 Hari', 7850, 'Active', 'DOMG1', 'DP-PULSA', '-'),
(603, 'DOMG2', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 1GB / 3 Hari', 10850, 'Active', 'DOMG2', 'DP-PULSA', '-'),
(604, 'DOMG3', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 2GB / 3 Hari', 14850, 'Active', 'DOMG3', 'DP-PULSA', '-'),
(605, 'DOMG4', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 1GB / 7 Hari', 17850, 'Active', 'DOMG4', 'DP-PULSA', '-'),
(606, 'DOMG5', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 2GB / 7 Hari', 21850, 'Active', 'DOMG5', 'DP-PULSA', '-'),
(607, 'DOMG6', 'PKIN', 'OMG', 'Telkomsel Paket Internet Facebook 3GB / 7 Hari', 25850, 'Active', 'DOMG6', 'DP-PULSA', '-'),
(608, 'DOMG7', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 1GB / 1 Hari', 7850, 'Active', 'DOMG7', 'DP-PULSA', '-'),
(609, 'DOMG8', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 1GB / 3 Hari', 10850, 'Active', 'DOMG8', 'DP-PULSA', '-'),
(610, 'DOMG9', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 2GB / 3 Hari', 14850, 'Active', 'DOMG9', 'DP-PULSA', '-'),
(611, 'DOMG10', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 1GB / 7 Hari', 17850, 'Active', 'DOMG10', 'DP-PULSA', '-'),
(612, 'DOMG11', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 2GB / 7 Hari', 21850, 'Active', 'DOMG11', 'DP-PULSA', '-'),
(613, 'DOMG12', 'PKIN', 'OMG', 'Telkomsel Paket Internet Instagram 3GB / 7 Hari', 25850, 'Active', 'DOMG12', 'DP-PULSA', '-'),
(614, 'DOMG13', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 1GB / 1 Hari', 7850, 'Active', 'DOMG13', 'DP-PULSA', '-'),
(615, 'DOMG14', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 1GB / 3 Hari', 10850, 'Active', 'DOMG14', 'DP-PULSA', '-'),
(616, 'DOMG15', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 2GB / 3 Hari', 14850, 'Active', 'DOMG15', 'DP-PULSA', '-'),
(617, 'DOMG16', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 1GB / 7 Hari', 17850, 'Active', 'DOMG16', 'DP-PULSA', '-'),
(618, 'DOMG17', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 2GB / 7 Hari', 21850, 'Active', 'DOMG17', 'DP-PULSA', '-'),
(619, 'DOMG18', 'PKIN', 'OMG', 'Telkomsel Paket Internet Youtube 3GB / 7 Hari', 25850, 'Active', 'DOMG18', 'DP-PULSA', '-'),
(620, 'DINDD1', 'PKIN', 'IND DATA', 'Indosat 300MB 30 Hari', 3350, 'Active', 'DINDD1', 'DP-PULSA', 'Indosat 300MB 30 Hari'),
(621, 'DINDD2', 'PKIN', 'IND DATA', 'Indosat 500MB 30 Hari', 5350, 'Active', 'DINDD2', 'DP-PULSA', 'Indosat 500MB 30 Hari'),
(622, 'DINDD3', 'PKIN', 'IND DATA', 'Indosat Data 6GB', 59850, 'Active', 'DINDD3', 'DP-PULSA', 'Kuota 6GB 30 hari'),
(623, 'DINDD4', 'PKIN', 'IND DATA', 'Indosat Data 7GB', 69850, 'Active', 'DINDD4', 'DP-PULSA', 'Kuota 7GB 30 hari'),
(624, 'DINDD5', 'PKIN', 'IND DATA', 'Indosat Data 8GB', 77350, 'Active', 'DINDD5', 'DP-PULSA', 'Kuota 8GB 30 hari'),
(625, 'DINDD6', 'PKIN', 'IND DATA', 'Indosat Data 9GB', 81850, 'Active', 'DINDD6', 'DP-PULSA', 'Kuota 9GB 30 hari'),
(626, 'DINDD7', 'PKIN', 'IND DATA', 'Indosat Data 10GB', 85350, 'Active', 'DINDD7', 'DP-PULSA', 'Kuota 10GB 30 hari'),
(627, 'DFRF1', 'PKIN', 'FREEDOM', 'Indosat Freedom L', 86050, 'Active', 'DFRF1', 'DP-PULSA', 'Kuota Dasar 4GB (2G/3G/4G) + Bonus 8GB (4G) + Kuot'),
(628, 'DFRF2', 'PKIN', 'FREEDOM', 'Indosat Freedom M', 60400, 'Active', 'DFRF2', 'DP-PULSA', 'Kuota Dasar 2GB (2G/3G/4G) + Bonus 3GB (4G) + 5GB '),
(629, 'DFRF3', 'PKIN', 'FREEDOM', 'Indosat Freedom XL', 113050, 'Active', 'DFRF3', 'DP-PULSA', 'Kuota Dasar 8GB (2G/3G/4G) + Bonus 12GB (4G) + Kuo'),
(630, 'DFRF4', 'PKIN', 'FREEDOM', 'Indosat Freedom XXL', 144550, 'Active', 'DFRF4', 'DP-PULSA', 'Kuota Dasar 12GB (2G/3G/4G) + Bonus 25GB (4G) + Ku'),
(631, 'DFFC1', 'PKIN', 'FREE COMBO', 'Freedom Combo 4GB 30 Hari', 23850, 'Active', 'DFFC1', 'DP-PULSA', '4GB (2GB + 1GB Lokal, 1 GB Malam,Telepon 5 Mnt All'),
(632, 'DFFC2', 'PKIN', 'FREE COMBO', 'Freedom Combo 8GB 30 Hari', 33250, 'Active', 'DFFC2', 'DP-PULSA', '8GB (4GB + 2GB Lokal, 2 GB Malam, Telepon 20 Mnt A'),
(633, 'DFFC3', 'PKIN', 'FREE COMBO', 'Freedom Combo 14GB 30 Hari', 47250, 'Active', 'DFFC3', 'DP-PULSA', '14GB (7.5GB + 3.5GB Lokal, 3GB Mlm, Telepon 30 Mnt'),
(634, 'DFFC4', 'PKIN', 'FREE COMBO', 'Freedom Combo 20GB 30 Hari', 65550, 'Active', 'DFFC4', 'DP-PULSA', '20GB (11GB + 5GB Lokal, 4GB Mlm,Telepon 40 Mnt All'),
(635, 'DFFC5', 'PKIN', 'FREE COMBO', 'Freedom Combo 30GB 30 Hari', 94350, 'Active', 'DFFC5', 'DP-PULSA', '30GB (16GB + 8GB Lokal, 6 GB Mlm, Telepon 60 Mnt A'),
(636, 'DFFC6', 'PKIN', 'FREE COMBO', 'Freedom Combo 50GB 30 Hari', 143375, 'Active', 'DFFC6', 'DP-PULSA', '50GB (25GB + 15GB Lokal, 10GB Mlm, Telepon 60 Mnt '),
(637, 'DFFI1', 'PKIN', 'FREE INET', 'Freedom Internet 3GB 30Hr', 23700, 'Active', 'DFFI1', 'DP-PULSA', 'INDOSAT DATA FREEDOM 3GB FULL 24 JAM NASIONAL, 30H'),
(638, 'DFFI2', 'PKIN', 'FREE INET', 'Freedom Internet 10GB 30Hr', 47445, 'Active', 'DFFI2', 'DP-PULSA', 'INDOSAT DATA FREEDOM 10GB FULL 24 JAM NASIONAL, 30'),
(639, 'DFFI3', 'PKIN', 'FREE INET', 'Freedom Internet 18GB 30Hr', 70450, 'Active', 'DFFI3', 'DP-PULSA', 'INDOSAT DATA FREEDOM 18GB FULL 24 JAM NASIONAL, 30'),
(640, 'DFFI4', 'PKIN', 'FREE INET', 'Freedom Internet 25GB 30Hr', 92795, 'Active', 'DFFI4', 'DP-PULSA', 'INDOSAT DATA FREEDOM 25GB FULL 24 JAM NASIONAL, 30'),
(641, 'DFFRP1', 'PKIN', 'FREE INET P', 'Indosat Paket Freedom Internet Plus 1 GB', 33625, 'Active', 'DFFRP1', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 1 GB, Kuota Bonus (4G) 1 GB'),
(642, 'DFFRP2', 'PKIN', 'FREE INET P', 'Indosat Paket Freedom Internet Plus 2 GB', 49625, 'Active', 'DFFRP2', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 2 GB, Kuota Bonus (4G) 2 GB'),
(643, 'DFFRP3', 'PKIN', 'FREE INET P', 'Indosat Paket Freedom Internet Plus 4 GB', 61625, 'Active', 'DFFRP3', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 4 GB, Kuota Bonus (4G) 4 GB'),
(644, 'DFFRP4', 'PKIN', 'FREE INET P', 'Indosat Paket Freedom Internet Plus 5 GB', 106625, 'Active', 'DFFRP4', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 5 GB, Kuota Bonus (4G) 5 GB'),
(645, 'DHJ1', 'PKIN', 'HAJI', 'Indosat Haji Data Unlimited 20 hari.', 333450, 'Active', 'DHJ1', 'DP-PULSA', 'Paket Haji Data Unlimited Berlaku untuk 20 hari.'),
(646, 'DHJ2', 'PKIN', 'HAJI', 'Indosat Haji Data Unlimited 40 hari.', 539920, 'Active', 'DHJ2', 'DP-PULSA', 'Paket Haji Data Unlimited Berlaku untuk 40 hari.'),
(647, 'DHJ3', 'PKIN', 'HAJI K', 'Indosat Haji Komplit Unlimited 20 hari', 423314, 'Active', 'DHJ3', 'DP-PULSA', 'Paket Haji Komplit Unlimited. Bonus telepon 60 min'),
(648, 'DHJ4', 'PKIN', 'HAJI K', 'Indosat Haji Komplit Unlimited 40 hari', 629420, 'Active', 'DHJ4', 'DP-PULSA', 'Paket Haji Komplit Unlimited. Bonus telepon 120 mi'),
(649, 'DFF15', 'PKIN', 'FREE INET', 'Freedom Internet 2GB 15Hr', 15070, 'Active', 'DFF15', 'DP-PULSA', 'INDOSAT DATA FREEDOM 2GB FULL 24 JAM NASIONAL, 15H'),
(650, 'DIIU1', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 1GB, 30 hari', 24645, 'Active', 'DIIU1', 'DP-PULSA', 'Kuota Utama 1GB + Unlimited Aplikasi sehari-hari +'),
(651, 'DIIU2', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 2GB, 30 hari', 39250, 'Active', 'DIIU2', 'DP-PULSA', 'Kuota Utama 2GB + Unlimited Aplikasi sehari-hari +'),
(652, 'DIIU3', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 3GB, 30 hari', 57695, 'Active', 'DIIU3', 'DP-PULSA', 'Kuota Utama 3GB + Unlimited Aplikasi sehari-hari +'),
(653, 'DIIU4', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 7GB, 30 hari', 76895, 'Active', 'DIIU4', 'DP-PULSA', 'Kuota Utama 7GB + Unlimited Aplikasi sehari-hari +'),
(654, 'DIIU5', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 10GB, 30 hari', 95545, 'Active', 'DIIU5', 'DP-PULSA', 'Kuota Utama 10GB + Unlimited Aplikasi sehari-hari '),
(655, 'DIIU6', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 15GB, 30 hari', 118845, 'Active', 'DIIU6', 'DP-PULSA', 'Kuota Utama 15GB + Unlimited Aplikasi sehari-hari '),
(656, 'DIIU7', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited JUMBO, 30 hari', 142400, 'Active', 'DIIU7', 'DP-PULSA', 'Kuota Utama JUMBO + Unlimited Aplikasi sehari-hari'),
(657, 'DEKS1', 'PKIN', 'EKSTRA', 'Indosat Paket Ekstra 2GB', 36695, 'Active', 'DEKS1', 'DP-PULSA', 'Paket Ekstra 2GB, Tanpa batas waktu (24 jam). Hany'),
(658, 'DEKS2', 'PKIN', 'EKSTRA', 'Indosat Paket Ekstra 4GB', 52795, 'Active', 'DEKS2', 'DP-PULSA', 'Paket Ekstra 4GB, Tanpa batas waktu (24 jam). Hany'),
(659, 'DEKS3', 'PKIN', 'EKSTRA', 'Indosat Paket Ekstra 6GB', 70820, 'Active', 'DEKS3', 'DP-PULSA', 'Paket Ekstra 6GB, Tanpa batas waktu (24 jam). Hany'),
(660, 'DYLW1', 'PKIN', 'YELLOW', 'Indosat Paket Yellow Internet 1GB 1 Hari', 3850, 'Active', 'DYLW1', 'DP-PULSA', '-'),
(661, 'DYLW2', 'PKIN', 'YELLOW', 'Indosat Paket Yellow Internet 1GB 3 Hari', 5350, 'Active', 'DYLW2', 'DP-PULSA', '-'),
(662, 'DYLW3', 'PKIN', 'YELLOW', 'Indosat Paket Yellow Internet 1GB 7 Hari', 9750, 'Active', 'DYLW3', 'DP-PULSA', '-'),
(663, 'DYLW4', 'PKIN', 'YELLOW', 'Indosat Paket Yellow Internet 1GB 15 Hari', 12950, 'Active', 'DYLW4', 'DP-PULSA', '-'),
(664, 'DIIU8', 'PKIN', 'DATA UNLI', 'Internet Unlimited + 5GB, 30 hari', 63330, 'Active', 'DIIU8', 'DP-PULSA', '-'),
(665, 'DIIU9', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 1GB, 7 hari', 15600, 'Active', 'DIIU9', 'DP-PULSA', 'Kuota Utama 1GB + Unlimited Aplikasi sehari-hari +'),
(666, 'DIIU10', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 500MB, 2 hari', 5424, 'Active', 'DIIU10', 'DP-PULSA', 'Kuota Utama 500MB + Unlimited Aplikasi sehari-hari'),
(667, 'DAPPS1', 'PKIN', 'APPS', 'Kuota Apps 5GB 30hr', 23650, 'Active', 'DAPPS1', 'DP-PULSA', '-'),
(668, 'DAPPS2', 'PKIN', 'APPS', 'Apps Kuota 10GB 30hr', 37350, 'Active', 'DAPPS2', 'DP-PULSA', '-'),
(669, 'DAPPS3', 'PKIN', 'APPS', 'Apps Kuota 15GB 30hr', 50900, 'Active', 'DAPPS3', 'DP-PULSA', '-'),
(670, 'DAPPS4', 'PKIN', 'APPS', 'Apps Kuota 20GB 30hr', 64700, 'Active', 'DAPPS4', 'DP-PULSA', '-'),
(671, 'DBRO1', 'PKIN', 'BRONET', 'BRONET 500 MB', 10350, 'Active', 'DBRO1', 'DP-PULSA', 'Kuota 500 MB, Masa aktif 1 Hari, 24 Jam'),
(672, 'DBRO2', 'PKIN', 'BRONET', 'BRONET 1GB', 14150, 'Active', 'DBRO2', 'DP-PULSA', 'Kuota 1GB. 500 MB di 00-06 + 500 MB di 00 - 23.59'),
(673, 'DBRO3', 'PKIN', 'BRONET', 'BRONET 2GB', 23850, 'Active', 'DBRO3', 'DP-PULSA', 'Kuota 2GB. 1 GB di 00-06 + 1 GB di 00 - 23.59'),
(674, 'DBRO5', 'PKIN', 'BRONET', 'BRONET 3GB', 29350, 'Active', 'DBRO5', 'DP-PULSA', 'Kuota 3GB. 24 Jam'),
(675, 'DBRO6', 'PKIN', 'BRONET', 'BRONET 5GB', 43850, 'Active', 'DBRO6', 'DP-PULSA', 'Kuota 5GB. 24 Jam'),
(676, 'DBRO7', 'PKIN', 'BRONET', 'BRONET 8 GB', 59150, 'Active', 'DBRO7', 'DP-PULSA', 'Kuota 8 GB, Masa Aktif 30 Hari, 24 Jam'),
(677, 'DBRO8', 'PKIN', 'BRONET', 'BRONET 2GB 60 hari', 24970, 'Active', 'DBRO8', 'DP-PULSA', '2GB Kuota utama bisa digunakan selama 24 jam, berl'),
(678, 'DBRO9', 'PKIN', 'BRONET', 'BRONET 3GB 60 hari', 30150, 'Active', 'DBRO9', 'DP-PULSA', '3GB Kuota utama bisa digunakan selama 24 jam, berl'),
(679, 'DBRO10', 'PKIN', 'BRONET', 'BRONET 5GB 60 hari', 44650, 'Active', 'DBRO10', 'DP-PULSA', '5GB Kuota utama bisa digunakan selama 24 jam, berl'),
(680, 'DBRO11', 'PKIN', 'BRONET', 'BRONET 8GB 60 hari', 59350, 'Active', 'DBRO11', 'DP-PULSA', '8GB Kuota utama bisa digunakan selama 24 jam, berl'),
(681, 'DBRO12', 'PKIN', 'BRONET', 'BRONET 10GB 60 hari', 70350, 'Active', 'DBRO12', 'DP-PULSA', '10GB Kuota utama bisa digunakan selama 24 jam, ber'),
(682, 'DBRO13', 'PKIN', 'BRONET', 'BRONET 12GB 60 hari', 88693, 'Active', 'DBRO13', 'DP-PULSA', '12GB Kuota utama bisa digunakan selama 24 jam, ber'),
(683, 'DBRO14', 'PKIN', 'BRONET', 'BRONET 16GB 60 hari', 110804, 'Active', 'DBRO14', 'DP-PULSA', '16GB Kuota utama bisa digunakan selama 24 jam, ber'),
(684, 'DOWS1', 'PKIN', 'OWSEM', 'Axis OWSEM 16GB + Unlimited Games 30hr', 39350, 'Active', 'DOWS1', 'DP-PULSA', 'Kuota Internet 24jam 2Gb + Kuota Sosmed 4Gb (FB, T'),
(685, 'DOWS2', 'PKIN', 'OWSEM', 'Axis OWSEM 24GB + Unlimited Games 30hr', 45350, 'Active', 'DOWS2', 'DP-PULSA', 'Kuota Internet 24jam 3Gb + Kuota Sosmed 6Gb (FB, T'),
(686, 'DOWS3', 'PKIN', 'OWSEM', 'Axis OWSEM 32GB + Unlimited Games 30hr', 50350, 'Active', 'DOWS3', 'DP-PULSA', 'Kuota Internet 24jam 4Gb + Kuota Sosmed 8Gb (FB, T'),
(687, 'DOWS4', 'PKIN', 'OWSEM', 'Axis OWSEM 48GB + Unlimited Games 30hr', 61850, 'Active', 'DOWS4', 'DP-PULSA', 'Kuota Internet 24jam 6Gb + Kuota Sosmed 12Gb (FB, '),
(688, 'DOWS5', 'PKIN', 'OWSEM', 'Axis OWSEM 80GB + Unlimited Games 30hr', 94120, 'Active', 'DOWS5', 'DP-PULSA', 'Kuota Internet 24jam 10Gb + Kuota Sosmed 20Gb (FB,'),
(689, 'DOWS6', 'PKIN', 'OWSEM', 'OWSEM 1GB + 1GB 4G', 18150, 'Active', 'DOWS6', 'DP-PULSA', 'BRONET 4G OWSEM 1GB+1GB(4G)+2GB Aplikasi, 24 jam 3'),
(690, 'DOWS7', 'PKIN', 'OWSEM', 'OWSEM 1GB + 3GB 4G', 29850, 'Active', 'DOWS7', 'DP-PULSA', 'BRONET 4G OWSEM 1GB+3GB(4G)+4GB Aplikasi, 24 jam 3'),
(691, 'DOWS8', 'PKIN', 'OWSEM', 'OWSEM 2GB + 6GB 4G', 46850, 'Active', 'DOWS8', 'DP-PULSA', 'BRONET 4G OWSEM 2GB+6GB(4G)+8GB Aplikasi, 24 jam 3'),
(692, 'DOWS9', 'PKIN', 'OWSEM', 'OWSEM 3GB + 9GB 4G', 61650, 'Active', 'DOWS9', 'DP-PULSA', 'BRONET 4G OWSEM 3GB+9GB(4G)+12GB Aplikasi, 24 jam '),
(693, 'DSMR1', 'PKIN', 'SMART INT', 'Smart Internet 10.000', 9825, 'Active', 'DSMR1', 'DP-PULSA', 'Kuota Internet sebesar 10rb selama 7 hari'),
(694, 'DSMR2', 'PKIN', 'SMART INT', 'Smart Internet 20.000', 18900, 'Active', 'DSMR2', 'DP-PULSA', 'Kuota Internet sebesar 20rb selama 14 hari'),
(695, 'DSMR3', 'PKIN', 'SMART INT', 'Smart Internet 30.000', 27550, 'Active', 'DSMR3', 'DP-PULSA', 'Kuota Internet sebesar 30rb selama 14 hari'),
(696, 'DSMR4', 'PKIN', 'SMART INT', 'Smart Internet 60.000', 54800, 'Active', 'DSMR4', 'DP-PULSA', 'Kuota Internet sebesar 60rb selama 30 hari'),
(697, 'DSMR5', 'PKIN', 'SMART INT', 'Smart Internet 100.000', 93045, 'Active', 'DSMR5', 'DP-PULSA', 'Kuota Internet sebesar 100rb selama 30 hari'),
(698, 'DSMR6', 'PKIN', 'SMART INT', 'Smart Internet 150.000', 135550, 'Active', 'DSMR6', 'DP-PULSA', 'Kuota Internet sebesar 150rb selama 30 hari'),
(699, 'DSMR7', 'PKIN', 'SMART INT', 'Smart Internet 200.000', 180600, 'Active', 'DSMR7', 'DP-PULSA', 'Kuota Internet sebesar 200.000 selama 30 hari'),
(700, 'DSMIX1', 'PKIN', 'SMART MIX', 'Smart 3GB 7Hari ( 1.5GB Regular + 1.5GB Malam)', 10025, 'Active', 'DSMIX1', 'DP-PULSA', '-'),
(701, 'DSMIX2', 'PKIN', 'SMART MIX', 'Smart 4GB 14Hari ( 2GB Regular + 2GB Malam)', 9880, 'Active', 'DSMIX2', 'DP-PULSA', '-'),
(702, 'DSMIX3', 'PKIN', 'SMART MIX', 'Smart 8GB 14Hari ( 4GB Regular + 4GB Malam)', 26875, 'Active', 'DSMIX3', 'DP-PULSA', '-'),
(703, 'DSMIX4', 'PKIN', 'SMART MIX', 'Smart 16GB 30Hari ( 8GB Regular + 8GB Malam)', 47350, 'Active', 'DSMIX4', 'DP-PULSA', '-'),
(704, 'DSMIX5', 'PKIN', 'SMART MIX', 'Smart 30GB 30Hari ( 15GB Regular + 15GB Malam)', 55350, 'Active', 'DSMIX5', 'DP-PULSA', '-'),
(705, 'DSMIX6', 'PKIN', 'SMART MIX', 'Smart 12GB 30Hari kuota malam', 20560, 'Active', 'DSMIX6', 'DP-PULSA', 'Hanya kuota malam'),
(706, 'DEVO1', 'PKIN', 'SMART EVO', 'Smart Data Evo 1.25GB+1.25GB(Mid) 7Hari', 10375, 'Active', 'DEVO1', 'DP-PULSA', '-'),
(707, 'DEVO2', 'PKIN', 'SMART EVO', 'Smart Data Evo 2GB+2GB(Mid) 14Hari', 20150, 'Active', 'DEVO2', 'DP-PULSA', '-'),
(708, 'DEVO3', 'PKIN', 'SMART EVO', 'Smart Data Evo 4GB+4GB(Mid) 14Hari', 29825, 'Active', 'DEVO3', 'DP-PULSA', '-'),
(709, 'DEVO4', 'PKIN', 'SMART EVO', 'Smart Data Evo 8GB+8GB(Mid) 30Hari', 59250, 'Active', 'DEVO4', 'DP-PULSA', '-'),
(710, 'DEVO5', 'PKIN', 'SMART EVO', 'Smart Data Evo 15GB+15GB(Mid) 30Hari', 98450, 'Active', 'DEVO5', 'DP-PULSA', '-'),
(711, 'DSFUP1', 'PKIN', 'SMART FUP', 'SMART UNLIMITED FUP 1GB/HARI (30 HARI)', 69300, 'Active', 'DSFUP1', 'DP-PULSA', 'MASA AKTIF 30 HARI'),
(712, 'DSFUP2', 'PKIN', 'SMART FUP', 'Unlimited FUP 1GB/Hr (Masa aktif 5 hari)', 18450, 'Active', 'DSFUP2', 'DP-PULSA', '-'),
(713, 'DSFUP3', 'PKIN', 'SMART FUP', 'Unlimited FUP 500MB/hr (Masa aktif 28hari)', 47300, 'Active', 'DSFUP3', 'DP-PULSA', '-'),
(714, 'DTRD1', 'PKIN', 'TRI DATA', 'Tri data 1GB 7 Hari', 15350, 'Active', 'DTRD1', 'DP-PULSA', '-'),
(715, 'DTRD2', 'PKIN', 'TRI DATA', 'Tri data 1GB 14Hari', 20850, 'Active', 'DTRD2', 'DP-PULSA', '-'),
(716, 'DTRD3', 'PKIN', 'TRI DATA', 'Tri Data 2.75GB ( 750MB + 2GB 4G) 7Hari', 15475, 'Active', 'DTRD3', 'DP-PULSA', '-'),
(717, 'DTRM1', 'PKIN', 'TRI MIX', 'Tri Mix Combo 2GB + 20 Menit', 35200, 'Active', 'DTRM1', 'DP-PULSA', 'Paket Kombo Tri 2GB + 20 Menit telpon ke semua ope'),
(718, 'DTRM2', 'PKIN', 'TRI MIX', 'Tri Mix Combo 32GB + 30 menit', 61350, 'Active', 'DTRM2', 'DP-PULSA', '2 GB (semua jaringan) + 30 GB (1 GB per hari di ja'),
(719, 'DTRM3', 'PKIN', 'TRI MIX', 'Tri Mix Combo 38GB + 30 menit', 127350, 'Active', 'DTRM3', 'DP-PULSA', '8 GB (semua jaringan) + 30 GB (1 GB per hari di ja'),
(720, 'DTRM4', 'PKIN', 'TRI MIX', 'Tri Mix Kuota++ 2.25GB', 51350, 'Active', 'DTRM4', 'DP-PULSA', '2.25GB mengikuti masa aktif sim'),
(721, 'DTRM5', 'PKIN', 'TRI MIX', 'Tri Mix Small 2.75GB (750MB + 2GB 4G 3Hari)', 9850, 'Active', 'DTRM5', 'DP-PULSA', '0.75 GB (semua jaringan) + 2 GB (jaringan 4G) , Ma'),
(722, 'DTRM6', 'PKIN', 'TRI MIX', 'Tri Mix Small 3.75GB (1.75GB + 2GB 4G) 14Hari', 25250, 'Active', 'DTRM6', 'DP-PULSA', '1.75 GB (semua jaringan) + 2 GB (jaringan 4G), Mas'),
(723, 'DTRM7', 'PKIN', 'TRI MIX', 'Tri Mix Small 3GB', 20450, 'Active', 'DTRM7', 'DP-PULSA', '3 GB semua jaringan 24 jam, Masa Aktif 3 Hari'),
(724, 'DTRM8', 'PKIN', 'TRI MIX', 'Tri Mix Small 5GB', 5505, 'Active', 'DTRM8', 'DP-PULSA', '1 GB (24 jam) + 4 GB (12 malam ? 9 pagi) semua jar'),
(725, 'DTRM9', 'PKIN', 'TRI MIX', 'Tri Mix Super 10GB', 51350, 'Active', 'DTRM9', 'DP-PULSA', '2 GB (semua jaringan) + 8 GB (jaringan 4G), Masa A'),
(726, 'DTRM10', 'PKIN', 'TRI MIX', 'Tri Mix Super 24GB', 89350, 'Active', 'DTRM10', 'DP-PULSA', '26GB (4GB + 20GB 4G )'),
(727, 'DTRM11', 'PKIN', 'TRI MIX', 'Tri Mix Super 30GB', 102850, 'Active', 'DTRM11', 'DP-PULSA', '30GB (8GB + 22GB 4G)'),
(728, 'DLTE1', 'PKIN', 'TRI LTE', 'LTE 12 GB', 65350, 'Active', 'DLTE1', 'DP-PULSA', '12GB 4G + UNL YOUTUBE 30HR 24JAM'),
(729, 'DLTE2', 'PKIN', 'TRI LTE', 'LTE 33 GB', 110350, 'Active', 'DLTE2', 'DP-PULSA', '3 GB semua jaringan, 30 GB 4G, 30 Hari'),
(730, 'DLTE3', 'PKIN', 'TRI LTE', 'LTE 66 GB', 170350, 'Active', 'DLTE3', 'DP-PULSA', '6 GB semua jaringan, 60 GB 4G, 60 Hari'),
(731, 'DAO1', 'PKIN', 'TRI AO', 'AlwaysOn 1.5 GB', 14270, 'Active', 'DAO1', 'DP-PULSA', '1.5 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Ka'),
(732, 'DAO2', 'PKIN', 'TRI AO', 'AlwaysOn 2 GB', 18349, 'Active', 'DAO2', 'DP-PULSA', '2 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kart'),
(733, 'DAO3', 'PKIN', 'TRI AO', 'AlwaysOn 3 GB', 25725, 'Active', 'DAO3', 'DP-PULSA', '3 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kart'),
(734, 'DAO4', 'PKIN', 'TRI AO', 'AlwaysOn 6 GB', 34750, 'Active', 'DAO4', 'DP-PULSA', '6 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kart'),
(735, 'DAO5', 'PKIN', 'TRI AO', 'AlwaysOn 6 GB + Unlimited', 51349, 'Active', 'DAO5', 'DP-PULSA', '6 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kart'),
(736, 'DAO6', 'PKIN', 'TRI AO', 'AlwaysOn 10 GB + Unlimited', 76350, 'Active', 'DAO6', 'DP-PULSA', '10 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kar'),
(737, 'DAO8', 'PKIN', 'TRI AO', 'AlwaysOn 18 GB + Unlimited', 110350, 'Active', 'DAO8', 'DP-PULSA', '18 GB Nasional, Pulsa 2k, Mengikuti Masa Aktif Kar'),
(738, 'DTAON1', 'PKIN', 'TRI AON', 'Tri data AON 1GB + Bonus 1GB', 21850, 'Active', 'DTAON1', 'DP-PULSA', '-'),
(739, 'DTAON2', 'PKIN', 'TRI AON', 'Tri data AON 2GB + Bonus 4GB', 36375, 'Active', 'DTAON2', 'DP-PULSA', '-'),
(740, 'DTAON3', 'PKIN', 'TRI AON', 'Tri data AON 3GB + Bonus 6GB', 63375, 'Active', 'DTAON3', 'DP-PULSA', '-'),
(741, 'DTAON4', 'PKIN', 'TRI AON', 'Tri data 2GB + 20 Menit Telepon 30 Hari', 35850, 'Active', 'DTAON4', 'DP-PULSA', '-'),
(742, 'DTAON5', 'PKIN', 'TRI AON', 'Tri data AON 4GB + Bonus 6GB', 70375, 'Active', 'DTAON5', 'DP-PULSA', '-'),
(743, 'DTAON6', 'PKIN', 'TRI AON', 'Tri data AON 6GB + Bonus 12GB', 83375, 'Active', 'DTAON6', 'DP-PULSA', '-'),
(744, 'DTAON7', 'PKIN', 'TRI AON', 'Tri data AON 8GB + Bonus 16GB', 102875, 'Active', 'DTAON7', 'DP-PULSA', '-'),
(745, 'DTAON8', 'PKIN', 'TRI AON', 'Tri data AON 10GB + Bonus 20GB', 120375, 'Active', 'DTAON8', 'DP-PULSA', '-'),
(746, 'DTMNI1', 'PKIN', 'TRI MINI', 'Mini 1 GB 5 Hari', 10405, 'Active', 'DTMNI1', 'DP-PULSA', '1 GB Nasional, Pulsa 2K, 5 Hari'),
(747, 'DTMNI2', 'PKIN', 'TRI MINI', 'Mini 1.5 GB 5 Hari', 13419, 'Active', 'DTMNI2', 'DP-PULSA', '1.5 GB Nasional, Pulsa 2K, 5 Hari'),
(748, 'DTMNI3', 'PKIN', 'TRI MINI', 'Mini 5 GB 7 Hari', 14349, 'Active', 'DTMNI3', 'DP-PULSA', '2.5 GB Nasional, 2.5 GB (01.00 - 09.00), 7 Hari'),
(749, 'DTHR1', 'PKIN', 'NASIONAL', '1GB Nasional + 4GB (01.00 - 09.00) 1 Hari', 3850, 'Active', 'DTHR1', 'DP-PULSA', '-'),
(750, 'DTHR2', 'PKIN', 'NASIONAL', 'Kuota++ 80MB Semua Jaringan 1 Hari', 5600, 'Active', 'DTHR2', 'DP-PULSA', '-'),
(751, 'DTHR3', 'PKIN', 'NASIONAL', '300 MB (semua jaringan) Mengikuti Masa Aktif Kartu', 10600, 'Active', 'DTHR3', 'DP-PULSA', '-'),
(752, 'DTHR4', 'PKIN', 'NASIONAL', '500 MB (semua jaringan) + 1 GB (Youtube + Netflix) 3Hari', 10600, 'Active', 'DTHR4', 'DP-PULSA', '-'),
(753, 'DTHR5', 'PKIN', 'NASIONAL', '5GB + 4GB (01 Pagi - 12 Siang) + 10 Menit Telepon All Op 7 Hari', 35450, 'Active', 'DTHR5', 'DP-PULSA', '-'),
(754, 'DTHR6', 'PKIN', 'NASIONAL', '5 GB Semua Jaringan + 20 Menit Telepon + SMS Semua Op + TRIXOGO + VIU 7 Hari', 29600, 'Active', 'DTHR6', 'DP-PULSA', '-'),
(755, 'DTHR7', 'PKIN', 'NASIONAL', '10 GB( Semua Jaringan) + 10GB ( Youtube + Netflix) 30 Hari', 70600, 'Active', 'DTHR7', 'DP-PULSA', '-'),
(756, 'DTHR8', 'PKIN', 'NASIONAL', '8,5 GB +100 Menit Telepon + SMS Semua Op + TRIXOGO + VIU 30 Hari', 60850, 'Active', 'DTHR8', 'DP-PULSA', '-'),
(757, 'DCLE1', 'PKIN', 'COMBO LITE', 'Combo LITE 2 GB (Data)', 18850, 'Active', 'DCLE1', 'DP-PULSA', '2GB Nasional + Unlimited Telp & SMS Sesama XL & Ax'),
(758, 'DCLE2', 'PKIN', 'COMBO LITE', 'Combo LITE 3.5 GB (Data)', 26425, 'Active', 'DCLE2', 'DP-PULSA', '2,5GB + 1GB YOUTUBE'),
(759, 'DCLE3', 'PKIN', 'COMBO LITE', 'Combo LITE 6 GB (Data)', 36950, 'Active', 'DCLE3', 'DP-PULSA', '5GB + 1GB YOUTUBE'),
(760, 'DCLE4', 'PKIN', 'COMBO LITE', 'Combo LITE 11 GB (Data)', 58875, 'Active', 'DCLE4', 'DP-PULSA', '10GB + 1GB YOUTUBE'),
(761, 'DCLE5', 'PKIN', 'COMBO LITE', 'Combo LITE 21 GB (Data)', 92900, 'Active', 'DCLE5', 'DP-PULSA', '20GB + 1GB YOUTUBE'),
(762, 'DCLE6', 'PKIN', 'COMBO LITE', 'Combo LITE 31 GB (Data)', 112900, 'Active', 'DCLE6', 'DP-PULSA', '30GB + 1GB YOUTUBE'),
(763, 'DXLH1', 'PKIN', 'HOTROD', 'XL HOTROD 800MB', 24350, 'Active', 'DXLH1', 'DP-PULSA', '-'),
(764, 'DXLH2', 'PKIN', 'HOTROD', 'XL HOTROD 1.5 GB', 40350, 'Active', 'DXLH2', 'DP-PULSA', 'Kuota 24 Jam 1.5GB. Masa aktif 30 hari.'),
(765, 'DXLH3', 'PKIN', 'HOTROD', 'XL HOTROD 3GB', 48350, 'Active', 'DXLH3', 'DP-PULSA', '-'),
(766, 'DXLH4', 'PKIN', 'HOTROD', 'XL HOTROD 6GB', 80350, 'Active', 'DXLH4', 'DP-PULSA', '-'),
(767, 'DXLH5', 'PKIN', 'HOTROD', 'XL HOTROD 8GB', 104350, 'Active', 'DXLH5', 'DP-PULSA', '-'),
(768, 'DXLH6', 'PKIN', 'HOTROD', 'XL HOTROD 12GB', 144350, 'Active', 'DXLH6', 'DP-PULSA', '-'),
(769, 'DXLH7', 'PKIN', 'HOTROD', 'XL HOTROD 16GB', 194105, 'Active', 'DXLH7', 'DP-PULSA', '-'),
(770, 'DXTRAC1', 'PKIN', 'XTRA COMBO', 'XL XTRA Combo 5GB+5GB, 30hr', 53215, 'Active', 'DXTRAC1', 'DP-PULSA', '5GB (2G/3G/4G) + Nelp Anynet 20 mins. Youtube 24 J'),
(771, 'DXTRAC2', 'PKIN', 'XTRA COMBO', 'XL XTRA Combo 10GB+10GB, 30hr', 79365, 'Active', 'DXTRAC2', 'DP-PULSA', '10GB (2G/3G/4G) + Nelp Anynet 40 mins. Youtube 24 '),
(772, 'DXTRAC3', 'PKIN', 'XTRA COMBO', 'XL XTRA Combo 15GB+15GB, 30hr', 110250, 'Active', 'DXTRAC3', 'DP-PULSA', '15GB (2G/3G/4G) + Nelp Anynet 60 mins. Youtube 24 '),
(773, 'DXTRAC4', 'PKIN', 'XTRA COMBO', 'XL XTRA Combo 20GB+20GB, 30hr', 156325, 'Active', 'DXTRAC4', 'DP-PULSA', '20GB (2G/3G/4G) + Nelp Anynet 100 mins. Youtube 24'),
(774, 'DXTRAC5', 'PKIN', 'XTRA COMBO', 'XL XTRA Combo 35GB+35GB, 30hr', 211615, 'Active', 'DXTRAC5', 'DP-PULSA', 'XTRA Combo 35GB+35GB, 30hr'),
(775, 'DXTRCV1', 'PKIN', 'COMBO VIP', 'XTRA Combo VIP 5GB+5GB (30Hari)', 60820, 'Active', 'DXTRCV1', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 5GB + Kuota YouTube 5GB + Y'),
(776, 'DXTRCV2', 'PKIN', 'COMBO VIP', 'XTRA Combo VIP 10GB+10GB (30Hari)', 86685, 'Active', 'DXTRCV2', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 10GB + Kuota YouTube 10GB +'),
(777, 'DXTRCV3', 'PKIN', 'COMBO VIP', 'XTRA Combo VIP 15GB+15GB (30Hari)', 116770, 'Active', 'DXTRCV3', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 15GB + Kuota YouTube 15GB +'),
(778, 'DXTRCV4', 'PKIN', 'COMBO VIP', 'XTRA Combo VIP 20GB+20GB (30Hari)', 161874, 'Active', 'DXTRCV4', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 20GB + Kuota YouTube 20GB +'),
(779, 'DXTRCV5', 'PKIN', 'COMBO VIP', 'XTRA Combo VIP 35GB+35GB (30Hari)', 216000, 'Active', 'DXTRCV5', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 35GB + Kuota YouTube 35GB +'),
(780, 'DXBRU1', 'PKIN', 'COMBO BARU', 'XTRA Combo BARU 5GB (30Hari)', 54475, 'Active', 'DXBRU1', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 5GB + Kuota YouTube 5GB + Y'),
(781, 'DXBRU2', 'PKIN', 'COMBO BARU', 'XTRA Combo BARU 10GB (30Hari)', 79975, 'Active', 'DXBRU2', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 10GB + Kuota YouTube 10GB +'),
(782, 'DXBR3', 'PKIN', 'COMBO BARU', 'XTRA Combo BARU 15GB (30Hari)', 111150, 'Active', 'DXBR3', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 15GB + Kuota YouTube\n15GB +'),
(783, 'DXBR4', 'PKIN', 'COMBO BARU', 'XTRA Combo BARU 20GB (30Hari)', 157450, 'Active', 'DXBR4', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 20GB + Kuota YouTube 20GB +'),
(784, 'DXBR5', 'PKIN', 'COMBO BARU', 'XTRA Combo BARU 35GB', 213000, 'Active', 'DXBR5', 'DP-PULSA', 'Kuota Utama (2G/3G/4G) 35GB + Kuota YouTube 35GB +'),
(785, 'DXLTRA1', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 5 GB IFLIX', 10185, 'Active', 'DXLTRA1', 'DP-PULSA', '5 GB IFLIX 30 Hari'),
(786, 'DXLTRA2', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 2 GB Joox', 10185, 'Active', 'DXLTRA2', 'DP-PULSA', '2 GB Joox 30 Hari'),
(787, 'DXLTRA4', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 2 GB Instagram', 10185, 'Active', 'DXLTRA4', 'DP-PULSA', '2 GB Instagram 30 Hari'),
(788, 'DXLTRA5', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 2 GB Facebook', 10185, 'Active', 'DXLTRA5', 'DP-PULSA', '2 GB Facebook 30 Hari'),
(789, 'DXLTRA6', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 2 GB Youtube', 10185, 'Active', 'DXLTRA6', 'DP-PULSA', '2 GB Youtube 30 Hari'),
(790, 'DXLTRA7', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 10 GB Mobile Legends', 10185, 'Active', 'DXLTRA7', 'DP-PULSA', '10 GB Mobile Legends 30 Hari'),
(791, 'DXLTRA8', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 5 GB Midnight', 10185, 'Active', 'DXLTRA8', 'DP-PULSA', '5 GB Midnight 30 Hari'),
(792, 'DXLTRA9', 'PKIN', 'XTRA KUOTA', 'XL XTRA KUOTA 30 GB - 30 HARI', 12428, 'Active', 'DXLTRA9', 'DP-PULSA', '1GB -> Youtube, Instagram, Whatsapp, Facebook, Lin'),
(793, 'DXDATA1', 'PKIN', 'XL MINI KC', 'XL Data 100MB 30 Hari', 2625, 'Active', 'DXDATA1', 'DP-PULSA', '100MB 30 Hari'),
(794, 'DXDATA2', 'PKIN', 'XL MINI KC', 'XL Data 500MB 30 Hari', 6605, 'Active', 'DXDATA2', 'DP-PULSA', 'XL Data 500MB 30 Hari'),
(795, 'DXDATA3', 'PKIN', 'XL MINI KC', 'XL Data 800MB 30 Hari', 10360, 'Active', 'DXDATA3', 'DP-PULSA', 'XL Data 800MB 30 Hari'),
(796, 'DXDATA4', 'PKIN', 'XL MINI KC', 'XL Data 1GB 30 Hari', 12860, 'Active', 'DXDATA4', 'DP-PULSA', 'XL Data 1GB 30 Hari'),
(797, 'DRJK1', 'PKIN', 'REJEKI', 'XL XTRA Rejeki 10.000', 10350, 'Active', 'DRJK1', 'DP-PULSA', 'Internet 4G/3G/2G 50MB, Nelp ke XL 90 Menit, Nelp '),
(798, 'DRJK2', 'PKIN', 'REJEKI', 'XL XTRA Rejeki 20.000', 20350, 'Active', 'DRJK2', 'DP-PULSA', 'Internet 4G/3G/2G 100MB, Nelp ke XL 185 Menit, Nel'),
(799, 'DRJK3', 'PKIN', 'REJEKI', 'XL Xtra Rejeki 65.000', 65350, 'Active', 'DRJK3', 'DP-PULSA', 'Internet 3GB, WhatsApp/ LINE/ GO-JEK/ Waze unlimit'),
(800, 'DRJK4', 'PKIN', 'REJEKI', 'XL Xtra Rejeki 125.000', 120350, 'Active', 'DRJK4', 'DP-PULSA', 'Internet 6GB, WhatsApp/LINE/ GO-JEK/ Waze Unlimite'),
(801, 'DRJK5', 'PKIN', 'REJEKI', 'XL Xtra Rejeki 200.000', 195350, 'Active', 'DRJK5', 'DP-PULSA', 'Internet 15GB, WhatsApp/ LINE/ GO-JEK/ Waze Unlimi'),
(802, 'DPLUS3', 'PKIN', 'PLUS', 'Hotrod xtra plus 5GB+1GB+1GB 30Hari', 32250, 'Active', 'DPLUS3', 'DP-PULSA', '-'),
(803, 'DPLUS2', 'PKIN', 'PLUS', 'Hotrod xtra plus 20GB+5GB+5GB 30Hari', 70250, 'Active', 'DPLUS2', 'DP-PULSA', '-'),
(804, 'DPLUS1', 'PKIN', 'PLUS', 'Hotrod xtra plus 2.5GB+500MB+500MB 30Hari', 19250, 'Active', 'DPLUS1', 'DP-PULSA', '-'),
(805, 'DON2', 'PKIN', 'ON', 'XL XTRA ON 1GB', 14550, 'Active', 'DON2', 'DP-PULSA', 'Paket anti hangus, berlaku akumulasi, masa aktif p'),
(806, 'DON1', 'PKIN', 'ON', 'XL XTRA ON 2GB', 23950, 'Active', 'DON1', 'DP-PULSA', 'Paket anti hangus, berlaku akumulasi, masa aktif p'),
(807, 'DBYU12', 'PULSA', 'by.U', 'by.U 25.000', 25160, 'Active', 'DBYU12', 'DP-PULSA', 'pulsa by.U Rp 25.000'),
(808, 'DBYU5', 'PULSA', 'by.U', 'by.U 5.000', 5405, 'Active', 'DBYU5', 'DP-PULSA', 'pulsa by.U Rp 5.000'),
(809, 'DBYU10', 'PULSA', 'by.U', 'by.U 10.000', 10405, 'Active', 'DBYU10', 'DP-PULSA', 'pulsa by.U Rp 10.000'),
(810, 'DBYU11', 'PULSA', 'by.U', 'by.U 20.000', 20375, 'Active', 'DBYU11', 'DP-PULSA', 'pulsa by.U Rp 20.000'),
(811, 'DBYU13', 'PULSA', 'by.U', 'by.U 50.000', 49925, 'Active', 'DBYU13', 'DP-PULSA', 'pulsa by.U Rp 50.000'),
(812, 'DBYU14', 'PULSA', 'by.U', 'by.U 100.000', 97850, 'Active', 'DBYU14', 'DP-PULSA', 'pulsa by.U Rp 100.000'),
(813, 'DBYU1', 'PULSA', 'by.U', 'by.U 1.000', 1405, 'Active', 'DBYU1', 'DP-PULSA', '-'),
(814, 'DBYU2', 'PULSA', 'by.U', 'by.U 2.000', 2405, 'Active', 'DBYU2', 'DP-PULSA', '-'),
(815, 'DBYU3', 'PULSA', 'by.U', 'by.U 3.000', 3405, 'Active', 'DBYU3', 'DP-PULSA', '-'),
(816, 'DBYU4', 'PULSA', 'by.U', 'by.U 4.000', 4405, 'Active', 'DBYU4', 'DP-PULSA', '-'),
(817, 'DBYU6', 'PULSA', 'by.U', 'by.U 6.000', 6405, 'Active', 'DBYU6', 'DP-PULSA', '-'),
(818, 'DBYU7', 'PULSA', 'by.U', 'by.U 7.000', 7405, 'Active', 'DBYU7', 'DP-PULSA', '-'),
(819, 'DBYU9', 'PULSA', 'by.U', 'by.U 9.000', 9405, 'Active', 'DBYU9', 'DP-PULSA', '-'),
(820, 'DBYU8', 'PULSA', 'by.U', 'by.U 8.000', 8600, 'Active', 'DBYU8', 'DP-PULSA', '-'),
(821, 'DGDV1', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 10.000', 10450, 'Active', 'DGDV1', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(822, 'DGDV3', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 25.000', 25450, 'Active', 'DGDV3', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(823, 'DGDV2', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 20.000', 20450, 'Active', 'DGDV2', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(824, 'DGDV4', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 50.000', 50450, 'Active', 'DGDV4', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(825, 'DGDV5', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 75.000', 75450, 'Active', 'DGDV5', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(826, 'DGDV6', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 100.000', 100450, 'Active', 'DGDV6', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(827, 'DGDV7', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 150.000', 150450, 'Active', 'DGDV7', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(828, 'DGDV8', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 200.000', 200450, 'Active', 'DGDV8', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP');
INSERT INTO `services_pulsa` (`id`, `sid`, `type`, `category`, `service`, `price`, `status`, `pid`, `provider`, `note`) VALUES
(829, 'DGDV9', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 250.000', 250450, 'Active', 'DGDV9', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(830, 'DGDV10', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 300.000', 300450, 'Active', 'DGDV10', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(831, 'DGDV11', 'SALGO', 'GOPAY DRIVER', 'Go Pay Driver 500.000', 500450, 'Active', 'DGDV11', 'DP-PULSA', 'KHUSUS DRIVER - Masukan no HP'),
(832, 'DXLD1', 'PKIN', 'XL DATA', 'XL Data 2GB 30 Hari', 27050, 'Active', 'DXLD1', 'DP-PULSA', 'XL Data 2GB 30 Hari'),
(833, 'DXLD2', 'PKIN', 'XL DATA', 'XL Data 3GB 30 Hari', 35350, 'Active', 'DXLD2', 'DP-PULSA', 'XL Data 3GB 30 Hari'),
(834, 'DXLD3', 'PKIN', 'XL DATA', 'XL Data 4GB 30 Hari', 50375, 'Active', 'DXLD3', 'DP-PULSA', 'XL Data 4GB 30 Hari'),
(835, 'DXLD5', 'PKIN', 'XL DATA', 'XL Data 6GB 30 Hari', 88250, 'Active', 'DXLD5', 'DP-PULSA', 'XL Data 6GB 30 Hari'),
(836, 'DXLD4', 'PKIN', 'XL DATA', 'XL Data 5GB 30 Hari', 62875, 'Active', 'DXLD4', 'DP-PULSA', 'XL Data 5GB 30 Hari'),
(837, 'DXLD6', 'PKIN', 'XL DATA', 'XL Data 8GB 30 Hari', 91375, 'Active', 'DXLD6', 'DP-PULSA', 'XL Data 8GB 30 Hari'),
(838, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 100450, 'Active', 'DSHOPPE100', 'DP-PULSA', ''),
(839, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 1.000.000', 1000625, 'Active', 'DSHOPPE1000', 'DP-PULSA', ''),
(840, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 100450, 'Active', 'DSHOPPE100', 'DP-PULSA', ''),
(841, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 1.000.000', 1000625, 'Active', 'DSHOPPE1000', 'DP-PULSA', ''),
(842, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 100600, 'Active', 'DSHOPPE100', 'DP-PULSA', 'SHOPEE PAY 100.000'),
(843, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 1.000.000', 1000800, 'Active', 'DSHOPPE1000', 'DP-PULSA', 'SHOPEE PAY 1.000.000'),
(844, 'DIIU36', 'PKIN', 'DATA UNLI', 'Indosat Internet Unlimited + 36GB, 12 bulan', 441368, 'Active', 'DIIU36', 'DP-PULSA', 'Kuota Utama 3GB/bulan(3G/4G) 24 Jam + Unlimited Ap'),
(845, 'DVPB5', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 60000 PB Cash', 501450, 'Active', 'DVPB5', 'DP-PULSA', 'Voucher 60000 PB Cash'),
(846, 'DVPB4', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 12000 PB Cash', 90375, 'Active', 'DVPB4', 'DP-PULSA', 'Voucher 12000 PB Cash'),
(847, 'DVPB3', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 6000 PB Cash', 45375, 'Active', 'DVPB3', 'DP-PULSA', 'Voucher 6000 PB Cash'),
(848, 'DVPB2', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 2400 PB Cash', 18360, 'Active', 'DVPB2', 'DP-PULSA', 'Voucher 2400 PB Cash'),
(849, 'DVPB1', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 1200 PB Cash', 9355, 'Active', 'DVPB1', 'DP-PULSA', 'Voucher 1200 PB Cash'),
(850, 'DVPB6', 'VGAME', 'VOUCHER POINT BLANK', 'Voucher 36000 PB Cash', 301450, 'Active', 'DVPB6', 'DP-PULSA', 'Voucher 36000 PB Cash'),
(851, 'DTH1000', 'PULSA', 'TRI', 'Three 1.000.000', 994150, 'Active', 'DTH1000', 'DP-PULSA', 'Pulsa Three Rp 1.000.000'),
(852, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 100.000', 100600, 'Active', 'DSHOPPE100', 'DP-PULSA', 'SHOPEE PAY 100.000'),
(853, 'DSHOPPE100', 'SALGO', 'SHOPEE PAY', 'SHOPEE PAY 1.000.000', 1000800, 'Active', 'DSHOPPE1000', 'DP-PULSA', 'SHOPEE PAY 1.000.000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services_voucher`
--

CREATE TABLE `services_voucher` (
  `id` int(3) NOT NULL,
  `sid` varchar(50) NOT NULL,
  `service` varchar(100) NOT NULL,
  `oprator` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `status` enum('Active','Not Active') NOT NULL,
  `provider` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_cat`
--

CREATE TABLE `service_cat` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `service_cat`
--

INSERT INTO `service_cat` (`id`, `name`, `code`) VALUES
(1, 'Facebook Custom Comments', 'Facebook Custom Comments'),
(2, 'Facebook Photo Likes and Emoticon\r\n', 'Facebook Photo Likes and Emoticon'),
(3, 'Instagram Custom Comments\r\n', 'Instagram Custom Comments'),
(4, 'Instagram Followers Bule\r\n', 'Instagram Followers Bule'),
(5, 'Instagram Followers Indonesia\r\n', 'Instagram Followers Indonesia'),
(6, 'Instagram Followers Indonesia [Bergaransi]\r\n', 'Instagram Followers Indonesia [Bergaransi]'),
(7, 'Instagram Followers Refill\r\n', 'Instagram Followers Refill'),
(8, 'Instagram Likes Bule\r\n', 'Instagram Likes Bule'),
(9, 'Instagram Likes Indonesia\r\n', 'Instagram Likes Indonesia'),
(10, 'Instagram Likes Indonesia Server 1\r\n', 'Instagram Likes Indonesia Server 1'),
(11, 'Instagram Likes Permenit\r\n', 'Instagram Likes Permenit'),
(12, 'Instagram Story\r\n', 'Instagram Story'),
(13, 'Instagram TV\r\n', 'Instagram TV'),
(14, 'Instagram Views\r\n', 'Instagram Views'),
(15, 'Layanan Facebook\r\n', 'Layanan Facebook'),
(16, 'Layanan Instagram R365\r\n', 'Layanan Instagram R365'),
(17, 'Likee app\r\n', 'Likee app'),
(18, 'Likee Comment Custom\r\n', 'Likee Comment Custom'),
(19, 'Shopee/Tokopedia/Bukalapak\r\n', 'Shopee/Tokopedia/Bukalapak'),
(20, 'Tik Tok\r\n', 'Tik Tok'),
(21, 'Twitter\r\n', 'Twitter'),
(22, 'YouTube - Other\r\n', 'YouTube - Other'),
(23, 'Youtube - Views [Ads]\r\n', 'Youtube - Views [Ads]'),
(24, 'Youtube Comments\r\n', 'Youtube Comments'),
(25, 'Youtube ?? Views [ watch times ]\r\n', 'Youtube ?? Views [ watch times ]'),
(26, 'Youtube Like / Dislike\r\n', 'Youtube Like / Dislike'),
(27, 'Youtube Live Streaming\r\n', 'Youtube Live Streaming'),
(28, 'Jam Tayang YouTube\r\n', 'Jam Tayang YouTube'),
(29, 'YouTube Subscribers\r\n', 'YouTube Subscribers'),
(30, 'YouTube Subscribers Recomended\r\n', 'YouTube Subscribers Recomended'),
(31, 'Youtube Views No Refill\r\n', 'Youtube Views No Refill'),
(32, 'Youtube Views Refill\r\n', 'Youtube Views Refill');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_cat2`
--

CREATE TABLE `service_cat2` (
  `id` int(10) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `service_cat2`
--

INSERT INTO `service_cat2` (`id`, `name`, `code`) VALUES
(1, 'Facebook Custom Comments', 'Facebook Custom Comments');

-- --------------------------------------------------------

--
-- Struktur dari tabel `service_pulsa_cat`
--

CREATE TABLE `service_pulsa_cat` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `service_pulsa_cat`
--

INSERT INTO `service_pulsa_cat` (`id`, `name`, `code`, `type`) VALUES
(1, '', '', ''),
(2, 'TELKOMSEL', 'TELKOMSEL', 'PULSA'),
(3, 'INDOSAT', 'INDOSAT', 'PULSA'),
(4, 'XL', 'XL', 'PULSA'),
(5, 'AXIS', 'AXIS', 'PULSA'),
(6, 'TRI', 'TRI', 'PULSA'),
(7, 'SMART', 'SMART', 'PULSA'),
(8, 'OVO', 'OVO', 'SALGO'),
(9, 'DANA', 'DANA', 'SALGO'),
(10, 'TIX ID', 'TIX ID', 'VOUCHER'),
(11, 'PLN Prabayar', 'PLN', 'TOKENPLN'),
(12, 'GOOGLE PLAY INDONESIA', 'GOOGLE PLAY INDONESIA', 'VGAME'),
(13, 'GOOGLE PLAY US REGION', 'GOOGLE PLAY US REGION', 'VGAME'),
(14, 'GARENA', 'GARENA', 'VGAME'),
(15, 'GEMSCOOL', 'GEMSCOOL', 'VGAME'),
(16, 'MEGAXUS', 'MEGAXUS', 'VGAME'),
(17, 'MOBILE LEGEND', 'MOBILE LEGEND', 'VGAME'),
(18, 'POINT BLANK', 'POINT BLANK', 'VGAME'),
(19, 'PUBG', 'PUBG', 'VGAME'),
(20, 'FREE FIRE', 'FREE FIRE', 'VGAME'),
(21, 'PUBG MOBILE', 'PUBG MOBILE', 'VGAME'),
(22, 'ARENA OF VALOR', 'ARENA OF VALOR', 'VGAME'),
(23, 'Call of Duty MOBILE', 'Call of Duty MOBILE', 'VGAME'),
(24, 'Rules Of Survival Mobile', 'Rules Of Survival Mobile', 'VGAME'),
(25, 'Speed Drifters', 'Speed Drifters', 'VGAME'),
(26, 'SPOTIFY PREMIUM', 'SPOTIFY PREMIUM', 'SPOTIFY'),
(27, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(28, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(29, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(30, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(31, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(32, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(33, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(34, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(35, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(36, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(37, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(38, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(39, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(40, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(41, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(42, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(43, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(44, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(45, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(46, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(47, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(48, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(49, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(50, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(51, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(52, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(53, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(54, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(55, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(56, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(57, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(58, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(59, 'Indosat Data', 'IND DATA', 'PKIN'),
(60, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(61, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(62, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(63, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(64, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(65, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(66, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(67, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(68, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(69, 'Indosat Data Apps', 'APPS', 'PKIN'),
(70, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(71, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(72, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(73, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(74, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(75, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(76, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(77, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(78, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(79, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(80, 'Three Data AON', 'TRI AON', 'PKIN'),
(81, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(82, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(83, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(84, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(85, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(86, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(87, 'XL Data Combo Baru', 'COMBPO BARU', 'PKIN'),
(88, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(89, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(90, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(91, 'XL Data ON', 'ON', 'PKIN'),
(92, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(93, 'BRI BRIZZI', 'BRI BRIZZI', 'SALGO'),
(94, 'LinkAja', 'LinkAja', 'SALGO'),
(95, 'TAPCASH BNI', 'TAPCASH BNI', 'SALGO'),
(96, 'ITUNES US REGION', 'ITUNES US REGION', 'VGAME'),
(97, 'Unipin Voucher', 'Unipin Voucher', 'VGAME'),
(98, 'IMVU', 'IMVU', 'VGAME'),
(99, 'Youtube Premium', 'YT', 'YT'),
(100, 'by.U', 'by.U', 'PULSA'),
(101, 'Steam Wallet (USD)', 'Steam Wallet (USD)', 'VOUCHER'),
(102, 'SHOPEE PAY', 'SHOPEE PAY', 'SALGO'),
(103, 'Voucher Alfamart', 'ALFAMART VOUCHER', 'VOUCHER'),
(104, 'Voucher Indomaret', 'INDOMARET', 'VOUCHER'),
(105, 'Voucher Jungjeland', 'JUNGLELAND', 'VOUCHER'),
(106, 'DIGI', 'DIGI', 'LAINYA'),
(107, 'MAXIS', 'MAXIS', 'LAINYA'),
(108, 'CELCOM', 'CELCOM', 'LAINYA'),
(109, 'TUNETALK', 'TUNETALK', 'LAINYA'),
(110, 'MANDIRI E-TOLL', 'MANDIRI E-TOLL', 'SALGO'),
(111, 'GO PAY', 'GO PAY', 'SALGO'),
(112, 'WIFI ID', 'WIFI ID', 'VOUCHER'),
(113, 'Steam Wallet (IDR)', 'Steam Wallet (IDR)', 'VOUCHER'),
(114, 'Grab Penumpang', 'GRAB', 'SALGO'),
(115, 'Grab Driver', 'GRAB DRIVER', 'SALGO'),
(116, 'ALFAMART VOUCHER', 'ALFAMART VOUCHER', 'LAINYA'),
(117, 'INDOMARET', 'INDOMARET', 'LAINYA'),
(118, 'JUNGLELAND', 'JUNGLELAND', 'LAINYA'),
(119, 'UMOBILE', 'UMOBILE', 'LAINYA'),
(120, 'GRAB', 'GRAB', 'SALGO'),
(121, 'PLN', 'PLN', 'TOKENPLN'),
(122, 'Gopay Driver', 'GOPAY DRIVER', 'SALGO'),
(123, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(124, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(125, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(126, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(127, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(128, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(129, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(130, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(131, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(132, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(133, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(134, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(135, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(136, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(137, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(138, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(139, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(140, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(141, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(142, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(143, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(144, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(145, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(146, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(147, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(148, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(149, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(150, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(151, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(152, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(153, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(154, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(155, 'Indosat Data', 'IND DATA', 'PKIN'),
(156, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(157, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(158, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(159, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(160, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(161, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(162, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(163, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(164, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(165, 'Indosat Data Apps', 'APPS', 'PKIN'),
(166, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(167, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(168, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(169, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(170, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(171, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(172, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(173, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(174, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(175, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(176, 'Three Data AON', 'TRI AON', 'PKIN'),
(177, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(178, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(179, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(180, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(181, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(182, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(183, 'XL Data Combo Baru', 'COMBO BARU', 'PKIN'),
(184, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(185, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(186, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(187, 'XL Data ON', 'ON', 'PKIN'),
(188, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(189, 'Youtube Premium', 'YT', 'YT'),
(190, 'Steam Wallet Code IDR', 'STEAM SEA', 'VGAME'),
(191, 'Indosat Data Freedom Internet Plus', 'FREE INET P', 'PKIN'),
(192, 'XL data XTRA KUOTA', 'XTRA KUOTA', 'PKIN'),
(193, 'BUKALAPAK', 'BUKALAPAK', 'VOUCHER'),
(194, 'XL DATA', 'XL DATA', 'PKIN'),
(195, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(196, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(197, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(198, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(199, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(200, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(201, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(202, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(203, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(204, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(205, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(206, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(207, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(208, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(209, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(210, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(211, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(212, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(213, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(214, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(215, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(216, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(217, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(218, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(219, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(220, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(221, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(222, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(223, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(224, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(225, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(226, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(227, 'Indosat Data', 'IND DATA', 'PKIN'),
(228, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(229, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(230, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(231, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(232, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(233, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(234, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(235, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(236, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(237, 'Indosat Data Apps', 'APPS', 'PKIN'),
(238, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(239, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(240, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(241, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(242, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(243, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(244, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(245, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(246, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(247, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(248, 'Three Data AON', 'TRI AON', 'PKIN'),
(249, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(250, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(251, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(252, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(253, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(254, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(255, 'XL Data Combo Baru', 'COMBO BARU', 'PKIN'),
(256, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(257, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(258, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(259, 'XL Data ON', 'ON', 'PKIN'),
(260, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(261, 'Youtube Premium', 'YT', 'YT'),
(262, 'Steam Wallet Code IDR', 'STEAM SEA', 'VGAME'),
(263, 'Indosat Data Freedom Internet Plus', 'FREE INET P', 'PKIN'),
(264, 'XL data XTRA KUOTA', 'XTRA KUOTA', 'PKIN'),
(265, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(266, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(267, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(268, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(269, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(270, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(271, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(272, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(273, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(274, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(275, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(276, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(277, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(278, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(279, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(280, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(281, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(282, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(283, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(284, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(285, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(286, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(287, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(288, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(289, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(290, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(291, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(292, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(293, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(294, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(295, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(296, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(297, 'Indosat Data', 'IND DATA', 'PKIN'),
(298, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(299, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(300, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(301, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(302, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(303, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(304, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(305, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(306, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(307, 'Indosat Data Apps', 'APPS', 'PKIN'),
(308, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(309, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(310, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(311, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(312, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(313, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(314, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(315, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(316, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(317, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(318, 'Three Data AON', 'TRI AON', 'PKIN'),
(319, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(320, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(321, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(322, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(323, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(324, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(325, 'XL Data Combo Baru', 'COMBO BARU', 'PKIN'),
(326, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(327, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(328, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(329, 'XL Data ON', 'ON', 'PKIN'),
(330, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(331, 'Youtube Premium', 'YT', 'YT'),
(332, 'Steam Wallet Code IDR', 'STEAM SEA', 'VGAME'),
(333, 'Indosat Data Freedom Internet Plus', 'FREE INET P', 'PKIN'),
(334, 'XL data XTRA KUOTA', 'XTRA KUOTA', 'PKIN'),
(335, 'VOUCHER POINT BLANK', 'VOUCHER POINT BLANK', 'VGAME'),
(336, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(337, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(338, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(339, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(340, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(341, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(342, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(343, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(344, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(345, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(346, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(347, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(348, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(349, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(350, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(351, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(352, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(353, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(354, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(355, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(356, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(357, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(358, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(359, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(360, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(361, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(362, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(363, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(364, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(365, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(366, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(367, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(368, 'Indosat Data', 'IND DATA', 'PKIN'),
(369, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(370, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(371, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(372, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(373, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(374, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(375, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(376, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(377, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(378, 'Indosat Data Apps', 'APPS', 'PKIN'),
(379, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(380, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(381, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(382, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(383, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(384, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(385, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(386, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(387, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(388, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(389, 'Three Data AON', 'TRI AON', 'PKIN'),
(390, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(391, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(392, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(393, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(394, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(395, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(396, 'XL Data Combo Baru', 'COMBO BARU', 'PKIN'),
(397, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(398, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(399, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(400, 'XL Data ON', 'ON', 'PKIN'),
(401, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(402, 'Youtube Premium', 'YT', 'YT'),
(403, 'Steam Wallet Code IDR', 'STEAM SEA', 'VGAME'),
(404, 'Indosat Data Freedom Internet Plus', 'FREE INET P', 'PKIN'),
(405, 'XL data XTRA KUOTA', 'XTRA KUOTA', 'PKIN'),
(406, 'Voucher Axis Aigo', 'AXIS AIGO', 'VOUCHER'),
(407, 'Voucher Axis Aigo Mini', 'AIGO MINI', 'VOUCHER'),
(408, 'Voucher Axis Owsem', 'AIGO OWSEM', 'VOUCHER'),
(409, 'Voucher Telkomsel Data', 'TSEL DATA', 'VOUCHER'),
(410, 'Voucher Telkomsel Data Bulk', 'TSEL BULK', 'VOUCHER'),
(411, 'Voucher Indosat', 'VOC INDOSAT', 'VOUCHER'),
(412, 'Voucher Smartfren', 'VOC SMART', 'VOUCHER'),
(413, 'Voucher Three', 'VOC TRI', 'VOUCHER'),
(414, 'Voucher Three AlwaysOn', 'VOC TRI A', 'VOUCHER'),
(415, 'Voucher Three AON', 'VOC TRI B', 'VOUCHER'),
(416, 'Voucher Three Mini', 'VOC TRI C', 'VOUCHER'),
(417, 'Voucher XL Data Mini', 'XL MINI', 'VOUCHER'),
(418, 'Voucher XL Combo LITE', 'XL LITE', 'VOUCHER'),
(419, 'Paket Telepon Telkomsel', 'TEL TSEL', 'PKSMS'),
(420, 'Paket Telepon Sesama Telkomsel', 'TEL TSEL 1', 'PKSMS'),
(421, 'Paket Telepon Telkomsel Semua Oprator', 'TEL TSEL 2', 'PKSMS'),
(422, 'Paket Telepon Telkomsel Mix', 'TEL TSEL 3', 'PKSMS'),
(423, 'Paket SMS Telkomsel Semua Oprator', 'SMS TSEL', 'PKSMS'),
(424, 'Paket Telepon Indosat', 'TEL IND', 'PKSMS'),
(425, 'Paket SMS Indosat', 'SMS IND', 'PKSMS'),
(426, 'Paket Telepon Three', 'TEL TRI', 'PKSMS'),
(427, 'Paket Telepon XL Anynet', 'TEL XL', 'PKSMS'),
(428, 'Telkomsel Data Bulk', 'BULK', 'PKIN'),
(429, 'Telkomsel Data Flash', 'FLASH', 'PKIN'),
(430, 'Telkomsel Data Mini', 'MINI', 'PKIN'),
(431, 'Telkomsel Data Maxstream', 'MAX', 'PKIN'),
(432, 'Telkomsel Data Gamesmax', 'GAMESMAX', 'PKIN'),
(433, 'Telkomsel Data Combo', 'COMBO', 'PKIN'),
(434, 'Telkomsel Data Semua Jaringan', 'TSEL ALL', 'PKIN'),
(435, 'Telkomsel Data Malam', 'MALAM', 'PKIN'),
(436, 'Telkomsel Data Kecil', 'KECIL', 'PKIN'),
(437, 'Telkomsel Data OMG', 'OMG', 'PKIN'),
(438, 'Indosat Data', 'IND DATA', 'PKIN'),
(439, 'Indosat Data Freedom', 'FREEDOM', 'PKIN'),
(440, 'Indosat Data Freedom Combo', 'FREE COMBO', 'PKIN'),
(441, 'Indosat Data Freedom Internet', 'FREE INET', 'PKIN'),
(442, 'Indosat Data Freedom Internet Plus', 'FEE INET P', 'PKIN'),
(443, 'Indosat Data Haji Unlimited', 'HAJI', 'PKIN'),
(444, 'Indosat Data Haji Unlimited Komplit', 'HAJI K', 'PKIN'),
(445, 'Indosat Data Internet Unlimited', 'DATA UNLI', 'PKIN'),
(446, 'Indosat Data Ekstra', 'EKSTRA', 'PKIN'),
(447, 'Indosat Data Yellow', 'YELLOW', 'PKIN'),
(448, 'Indosat Data Apps', 'APPS', 'PKIN'),
(449, 'Axis Data Bronet', 'BRONET', 'PKIN'),
(450, 'Axis Data Owsem', 'OWSEM', 'PKIN'),
(451, 'Smart Data Internet', 'SMART INT', 'PKIN'),
(452, 'Smart Data Internet Mix', 'SMART MIX', 'PKIN'),
(453, 'Smart Data Evo', 'SMART EVO', 'PKIN'),
(454, 'Smart Data FUP', 'SMART FUP', 'PKIN'),
(455, 'Three Data Internet', 'TRI DATA', 'PKIN'),
(456, 'Three Data Mix', 'TRI MIX', 'PKIN'),
(457, 'Three Data LTE', 'TRI LTE', 'PKIN'),
(458, 'Three Data AlwaysOn', 'TRI AO', 'PKIN'),
(459, 'Three Data AON', 'TRI AON', 'PKIN'),
(460, 'Three Data Mini', 'TRI MINI', 'PKIN'),
(461, 'Three Data Nasional', 'NASIONAL', 'PKIN'),
(462, 'XL Data Combo Lite', 'COMBO LITE', 'PKIN'),
(463, 'XL Data Hotrod', 'HOTROD', 'PKIN'),
(464, 'XL Data Xtra  Combo', 'XTRA COMBO', 'PKIN'),
(465, 'XL Data Combo VIP', 'COMBO VIP', 'PKIN'),
(466, 'XL Data Combo Baru', 'COMBO BARU', 'PKIN'),
(467, 'XL Data Kuota Mini', 'XL MINI KC', 'PKIN'),
(468, 'XL Data Rejeki', 'REJEKI', 'PKIN'),
(469, 'XL Data Hotrod Plus', 'PLUS', 'PKIN'),
(470, 'XL Data ON', 'ON', 'PKIN'),
(471, 'Netflix Premium', 'NETFLIX', 'NETFLIX'),
(472, 'Youtube Premium', 'YT', 'YT'),
(473, 'Steam Wallet Code IDR', 'STEAM SEA', 'VGAME'),
(474, 'Indosat Data Freedom Internet Plus', 'FREE INET P', 'PKIN'),
(475, 'XL data XTRA KUOTA', 'XTRA KUOTA', 'PKIN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `staff`
--

CREATE TABLE `staff` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `facebook` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `wa` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `ig` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `level` enum('Developers','Vip','Admin','Resseler','Agen') COLLATE utf8_swedish_ci NOT NULL,
  `link_fb` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `link_ig` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `tugas` text COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `staff`
--

INSERT INTO `staff` (`id`, `nama`, `facebook`, `wa`, `ig`, `email`, `level`, `link_fb`, `link_ig`, `tugas`) VALUES
(1, 'Muhamad Wahyu Fauzan', 'Benong Iskandar', '6285714993704', 'Wahyu Fauzan', 'benongiskandar@gmail.com', 'Developers', 'facebook.com/wahyu.fauzan.3557', 'instagram.com/_w4hyuu', 'Melayani Semua Tentang BUG Website, Jika Ada Bug Mohon Lapor Kepada Staff Kami.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `subject` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `last_update` datetime NOT NULL,
  `status` enum('Pending','Responded','Closed','Waiting') COLLATE utf8_swedish_ci NOT NULL,
  `seen_user` int(1) NOT NULL DEFAULT '1',
  `seen_admin` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tickets_message`
--

CREATE TABLE `tickets_message` (
  `id` int(10) NOT NULL,
  `ticket_id` int(10) NOT NULL,
  `sender` enum('Member','Admin') COLLATE utf8_swedish_ci NOT NULL,
  `user` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `message` text COLLATE utf8_swedish_ci NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_depo`
--

CREATE TABLE `top_depo` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `top_depo`
--

INSERT INTO `top_depo` (`id`, `method`, `username`, `jumlah`, `total`) VALUES
(1, 'Deposit', 'Hafiz', 375400, 10),
(2, 'Deposit', 'Andre', 15150, 1),
(3, 'Deposit', 'Handre', 19250, 1),
(4, 'Deposit', 'Hadi', 41700, 6),
(5, 'Deposit', 'Juju', 0, 1),
(6, 'Deposit', 'Hafiz2', 770000, 1),
(7, 'Deposit', 'Mamat', 10000, 1),
(8, 'Deposit', 'Indra', 30000, 3),
(9, 'Deposit', 'Akhtar10', 23400, 2),
(10, 'Deposit', 'Largo', 11700, 1),
(11, 'Deposit', 'FENDI X GANS', 80000, 1),
(12, 'Deposit', 'Wahyu', 93000, 1),
(13, 'Deposit', 'Sanyt_', 20000, 1),
(14, 'Deposit', 'Bencode', 10000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_layanan`
--

CREATE TABLE `top_layanan` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `layanan` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(100) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `top_layanan`
--

INSERT INTO `top_layanan` (`id`, `method`, `layanan`, `jumlah`, `total`) VALUES
(1, 'Layanan', 'Instagram Views [ 10M/Hour] [SUPER FAST] ZP', 140, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `top_users`
--

CREATE TABLE `top_users` (
  `id` int(10) NOT NULL,
  `method` varchar(200) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `jumlah` int(250) NOT NULL,
  `total` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `top_users`
--

INSERT INTO `top_users` (`id`, `method`, `username`, `jumlah`, `total`) VALUES
(1, 'Order', 'Hafiz', 123785, 8),
(2, 'Order', 'Andre', 19000, 5),
(3, 'Order', 'Hadi', 26030, 6),
(4, 'Order', 'Ceff', 25420, 1),
(5, 'Order', 'Wahyu', 28250, 2),
(6, 'Order', 'Bencode', 1745, 1),
(7, 'Order', 'pencipta kode', 140, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer_balance`
--

CREATE TABLE `transfer_balance` (
  `id` int(10) NOT NULL,
  `sender` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `receiver` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `quantity` double NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `transfer_balance`
--

INSERT INTO `transfer_balance` (`id`, `sender`, `receiver`, `quantity`, `date`, `time`) VALUES
(1, 'Hafiz', 'Andre', 15150, '2020-06-11', '11:17:27'),
(2, 'Hafiz', 'Hadi', 5000, '2020-06-12', '01:56:25'),
(3, 'Hafiz', 'Hadi', 3500, '2020-06-12', '02:16:18'),
(4, 'Hafiz', 'Hadi', 5000, '2020-06-12', '04:50:18'),
(5, 'Hafiz', 'Hadi', 3650, '2020-06-12', '06:57:47'),
(6, 'Hafiz', 'Hadi', 13000, '2020-06-14', '16:01:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `nama` varchar(250) COLLATE utf8_swedish_ci NOT NULL,
  `username` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_swedish_ci NOT NULL,
  `balance` int(10) NOT NULL,
  `level` enum('Member','Agen','Reseller','Admin','Vip','Developers') COLLATE utf8_swedish_ci NOT NULL,
  `registered` date NOT NULL,
  `status` enum('Active','Suspended') COLLATE utf8_swedish_ci NOT NULL,
  `api_key` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `no_hp` varchar(50) COLLATE utf8_swedish_ci NOT NULL,
  `uplink` varchar(100) COLLATE utf8_swedish_ci NOT NULL,
  `verif_code` varchar(20) COLLATE utf8_swedish_ci NOT NULL,
  `read_news` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `email`, `password`, `balance`, `level`, `registered`, `status`, `api_key`, `no_hp`, `uplink`, `verif_code`, `read_news`) VALUES
(27, 'Bencode', 'Bencode', 'brrk@kdk.gg', '$2y$10$hbiNaQUlRaMt1UEISgIlWOSZeAVbWHsG/6ZQZH7xEMl5o9L.csKL6', 8255, 'Developers', '2020-08-21', 'Active', '9s8EdYgp2eW4ij1N90J5', '88571499', 'System', '', 1),
(28, 'pencipta kode', 'pencipta kode', 'penciptakode@gmail.com', '$2y$10$sTm/ACIvT3Gao0SraMrrKOTc0qISuKihqMD5bEF2VXKkDMrwVzuVu', 4860, 'Developers', '2020-08-22', 'Active', 'V75SpZirpUahSMjrbVkh', '082384238403', 'System', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `voucher_cat`
--

CREATE TABLE `voucher_cat` (
  `id` int(2) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `balance_history`
--
ALTER TABLE `balance_history`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `cek_akun`
--
ALTER TABLE `cek_akun`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `deposit_method`
--
ALTER TABLE `deposit_method`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `game_cat`
--
ALTER TABLE `game_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `harga_pendaftaran`
--
ALTER TABLE `harga_pendaftaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kode_undangan`
--
ALTER TABLE `kode_undangan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kode_voucher`
--
ALTER TABLE `kode_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_game`
--
ALTER TABLE `orders_game`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `orders_voucher`
--
ALTER TABLE `orders_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan_axis`
--
ALTER TABLE `pesan_axis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan_tri`
--
ALTER TABLE `pesan_tri`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services2`
--
ALTER TABLE `services2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_game`
--
ALTER TABLE `services_game`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_pulsa`
--
ALTER TABLE `services_pulsa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services_voucher`
--
ALTER TABLE `services_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_cat`
--
ALTER TABLE `service_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_cat2`
--
ALTER TABLE `service_cat2`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `service_pulsa_cat`
--
ALTER TABLE `service_pulsa_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_depo`
--
ALTER TABLE `top_depo`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_layanan`
--
ALTER TABLE `top_layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `top_users`
--
ALTER TABLE `top_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transfer_balance`
--
ALTER TABLE `transfer_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `voucher_cat`
--
ALTER TABLE `voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `balance_history`
--
ALTER TABLE `balance_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT untuk tabel `cek_akun`
--
ALTER TABLE `cek_akun`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `deposit_method`
--
ALTER TABLE `deposit_method`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `game_cat`
--
ALTER TABLE `game_cat`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kode_undangan`
--
ALTER TABLE `kode_undangan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kode_voucher`
--
ALTER TABLE `kode_voucher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT untuk tabel `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `orders_game`
--
ALTER TABLE `orders_game`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `orders_pulsa`
--
ALTER TABLE `orders_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `orders_voucher`
--
ALTER TABLE `orders_voucher`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesan_axis`
--
ALTER TABLE `pesan_axis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesan_tri`
--
ALTER TABLE `pesan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesan_tsel`
--
ALTER TABLE `pesan_tsel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT untuk tabel `services2`
--
ALTER TABLE `services2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services_game`
--
ALTER TABLE `services_game`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `services_pulsa`
--
ALTER TABLE `services_pulsa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=854;

--
-- AUTO_INCREMENT untuk tabel `services_voucher`
--
ALTER TABLE `services_voucher`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `service_cat`
--
ALTER TABLE `service_cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `service_cat2`
--
ALTER TABLE `service_cat2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `service_pulsa_cat`
--
ALTER TABLE `service_pulsa_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- AUTO_INCREMENT untuk tabel `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `top_depo`
--
ALTER TABLE `top_depo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `top_layanan`
--
ALTER TABLE `top_layanan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `top_users`
--
ALTER TABLE `top_users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `transfer_balance`
--
ALTER TABLE `transfer_balance`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `voucher_cat`
--
ALTER TABLE `voucher_cat`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
