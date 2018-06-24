-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2017 at 04:58 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsablon12`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `id_bank` int(2) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `nasabah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`id_bank`, `nama_bank`, `no_rek`, `nasabah`) VALUES
(1, 'Mandiri', '12345678987', 'Fauzan Indra Pramana'),
(3, 'BNI', '1324569871254', 'Fauzan Indra Pramana'),
(4, 'BTN', '132654897564123', 'Fauzan Indra Pramana');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id_cart` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kode` varchar(11) NOT NULL,
  `nama` varchar(11) NOT NULL,
  `size` varchar(11) NOT NULL,
  `color` varchar(10) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `qty` varchar(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `session` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id_cart`, `tanggal`, `kode`, `nama`, `size`, `color`, `harga`, `qty`, `jumlah`, `session`) VALUES
('20170829090417', '2017-08-29 09:04:17', '15', 'kemeja', 'All Size', 'Red', '120000', '1', '120000', '20170820071826');

-- --------------------------------------------------------

--
-- Table structure for table `custom`
--

CREATE TABLE `custom` (
  `kode` int(10) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `kd_cus` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `model` varchar(100) NOT NULL,
  `gambar` varchar(40) NOT NULL,
  `harga` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom`
--

INSERT INTO `custom` (`kode`, `tanggal`, `kd_cus`, `nama`, `size`, `color`, `model`, `gambar`, `harga`, `status`) VALUES
(2, '0000-00-00 00:00:00', '000006', 'asik', 'M', 'black', 'short', 'kaos.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kd_cus` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kd_cus`, `nama`, `alamat`, `no_telp`, `username`, `password`, `gambar`) VALUES
('20170820071826', 'hakko', 'hakko', 'hakko', 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', '../admin/gambar_customer/images.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi`
--

CREATE TABLE `konfirmasi` (
  `id_kon` int(6) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `bayar_via` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(10) NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL,
  `status` enum('Bayar','Belum') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_kon`, `nopo`, `kd_cus`, `bayar_via`, `tanggal`, `jumlah`, `bukti_transfer`, `status`) VALUES
(14, '13', '13', '0', '2017-08-20 00:00:00', 0, '0', 'Belum'),
(15, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 0, '0', 'Belum'),
(16, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 220000, '0', 'Belum'),
(17, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 665000, '0', 'Belum'),
(18, '20170821073545', '20170821073545', '0', '2017-08-21 08:23:48', 630000, '0', 'Belum'),
(19, '20170824123653', '20170824123653', '0', '2017-08-24 12:38:58', 489999, '0', 'Belum');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE `po` (
  `nopo` varchar(20) NOT NULL,
  `style` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` varchar(4) NOT NULL,
  `tanggalkirim` date NOT NULL,
  `tanggalexport` date NOT NULL,
  `status` enum('Proses','Selesai','Terkirim','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `po_terima`
--

CREATE TABLE `po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `style` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(4) NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po_terima`
--

INSERT INTO `po_terima` (`id`, `nopo`, `kd_cus`, `kode`, `tanggal`, `style`, `color`, `size`, `qty`, `total`) VALUES
(19, '13', '13', 16, '2017-08-20 00:00:00', '', 'Red', 'All ', 1, 159999),
(20, '13', '13', 15, '2017-08-20 00:00:00', '', 'Red', 'All ', 2, 240000),
(22, '20170820071826', '20170820071826', 15, '2017-08-21 00:00:00', '', 'Red', 'All ', 2, 240000),
(23, '20170820071826', '20170820071826', 16, '2017-08-21 00:00:00', '', 'Red', 'All ', 1, 159999),
(24, '20170820071826', '20170820071826', 13, '2017-08-21 00:00:00', '', 'Black', 'All ', 2, 180000),
(25, '20170820071826', '20170820071826', 12, '2017-08-21 00:00:00', '', 'White', 'All ', 1, 120000),
(26, '20170820071826', '20170820071826', 11, '2017-08-21 00:00:00', '', 'Black', 'All ', 1, 100000),
(28, '20170820071826', '20170820071826', 8, '2017-08-21 07:25:56', '', 'Black', 'All ', 3, 330000),
(29, '20170820071826', '20170820071826', 9, '2017-08-21 07:25:58', '', 'Gray', 'All ', 2, 240000),
(30, '20170820071826', '20170820071826', 5, '2017-08-21 07:26:03', '', 'Black', 'All ', 1, 95000),
(31, '20170821073545', '20170821073545', 12, '2017-08-21 08:23:23', '', 'White', 'All ', 1, 120000),
(32, '20170821073545', '20170821073545', 13, '2017-08-21 08:23:27', '', 'Black', 'All ', 3, 270000),
(33, '20170821073545', '20170821073545', 15, '2017-08-21 08:23:33', '', 'Red', 'All ', 2, 240000),
(34, '20170824123653', '20170824123653', 10, '2017-08-24 12:37:31', '', 'Black', 'All ', 1, 110000),
(35, '20170824123653', '20170824123653', 16, '2017-08-24 12:37:44', '', 'Red', 'All ', 1, 159999),
(36, '20170824123653', '20170824123653', 12, '2017-08-24 12:37:55', '', 'White', 'All ', 1, 120000),
(37, '20170824123653', '20170824123653', 7, '2017-08-24 12:38:39', '', 'Red', 'All ', 1, 100000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `nama`, `jenis`, `size`, `color`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(5, 'Cool', 'T-Shirt', 'All Size', 'Black', 95000, 'Cotton Combed 30s, Black Color, DTG Printing', 4, 'gambar_produk/baju8.jpg'),
(6, 'Devil Wings', 'T-Shirt', 'All Size', 'Black', 105000, 'Cotton Combed 30s, Black Color, DTG Printing', 5, 'gambar_produk/baju9.jpg'),
(7, 'Scream', 'T-Shirt', 'All Size', 'Red', 100000, 'Cotton Combed 30s, White Color, DTG Printing', 4, 'gambar_produk/baju10.jpg'),
(8, 'Black Dragon', 'T-Shirt', 'All Size', 'Black', 110000, 'Cotton Combed 30s, Red Color, DTG Printing', 1, 'gambar_produk/baju11.jpg'),
(9, 'Galaxy', 'T-Shirt', 'All Size', 'Gray', 120000, 'Cotton Combed 30s, Black Color, DTG Printing', 8, 'gambar_produk/baju12.jpg'),
(10, 'Japan', 'T-Shirt', 'All Size', 'Black', 110000, 'Cotton Combed 30s, Black Color, DTG Printing', 9, 'gambar_produk/baju14.JPG'),
(11, 'Origami', 'T-Shirt', 'All Size', 'Black', 100000, 'Cotton Combed 30s, White Color, DTG Printing', 10, 'gambar_produk/baju15.JPG'),
(12, 'Owl Rectangle', 'T-Shirt', 'All Size', 'White', 120000, 'Cotton Combed 30s, White Color, DTG Printing', 6, 'gambar_produk/baju16.JPG'),
(13, 'polo', 'Kaos Polo', 'All Size', 'Black', 90000, 'kaos polo', 7, 'gambar_produk/smile_skull_lady.jpg'),
(14, 'kaos polo', 'Kaos Polo', 'All Size', 'White', 6790000, 'mkjkk', 15, 'gambar_produk/baju10.jpg'),
(15, 'kemeja', 'Kemeja', 'All Size', 'Red', 120000, 'bnn', 7, 'gambar_produk/baju11.jpg'),
(16, 'sweateracc', 'Sweater', 'All Size', 'Red', 159999, 'hjhjl.k', 11, 'gambar_produk/baju12.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_po_terima`
--

CREATE TABLE `tmp_po_terima` (
  `id` int(10) NOT NULL,
  `nopo` varchar(10) NOT NULL,
  `kd_cus` varchar(10) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` date NOT NULL,
  `style` varchar(20) NOT NULL,
  `color` varchar(10) NOT NULL,
  `size` varchar(4) NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
('', 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', 'Hakko Bio Richard', 'gambar_admin/hakkoblogs.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`id_bank`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id_cart`);

--
-- Indexes for table `custom`
--
ALTER TABLE `custom`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kd_cus`);

--
-- Indexes for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  ADD PRIMARY KEY (`id_kon`);

--
-- Indexes for table `po`
--
ALTER TABLE `po`
  ADD PRIMARY KEY (`nopo`);

--
-- Indexes for table `po_terima`
--
ALTER TABLE `po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `id_bank` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `custom`
--
ALTER TABLE `custom`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
  MODIFY `id_kon` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `po_terima`
--
ALTER TABLE `po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
