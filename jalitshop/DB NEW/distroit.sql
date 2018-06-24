-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2018 at 12:17 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `distroit`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
`id_bank` int(2) NOT NULL,
  `nama_bank` varchar(30) NOT NULL,
  `no_rek` varchar(30) NOT NULL,
  `nasabah` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

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

CREATE TABLE IF NOT EXISTS `cart` (
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

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
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

CREATE TABLE IF NOT EXISTS `konfirmasi` (
`id_kon` int(6) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `bayar_via` varchar(20) NOT NULL,
  `tanggal` datetime NOT NULL,
  `jumlah` int(10) NOT NULL,
  `bukti_transfer` varchar(50) NOT NULL,
  `status` enum('Bayar','Belum') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `konfirmasi`
--

INSERT INTO `konfirmasi` (`id_kon`, `nopo`, `kd_cus`, `bayar_via`, `tanggal`, `jumlah`, `bukti_transfer`, `status`) VALUES
(14, '13', '13', '0', '2017-08-20 00:00:00', 0, '0', 'Belum'),
(15, '20170820071826', '20170820071826', 'Mandiri', '2017-08-21 00:00:00', 111111, '../admin/bukti_transfer/jaket.jpeg.jpg', 'Belum'),
(16, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 220000, '0', 'Belum'),
(17, '20170820071826', '20170820071826', '0', '2017-08-21 00:00:00', 665000, '0', 'Belum'),
(18, '20170821073545', '20170821073545', '0', '2017-08-21 08:23:48', 630000, '0', 'Belum'),
(19, '20170824123653', '20170824123653', '0', '2017-08-24 12:38:58', 489999, '0', 'Belum'),
(20, '20170820071826', '20170820071826', 'BTN', '2018-06-24 02:42:56', 159999, '../admin/bukti_transfer/6.jpg', 'Belum'),
(21, '20170820071826', '20170820071826', 'BNI', '2018-06-24 02:45:00', 120000, '../admin/bukti_transfer/54155463_977d33d2-465e-497', 'Belum'),
(22, '20170820071826', '20170820071826', 'BNI', '2018-06-24 02:49:31', 6790000, '../admin/bukti_transfer/Penguins.jpg', 'Belum'),
(23, '20170820071826', '20170820071826', 'BTN', '2018-06-24 00:00:00', 90000, '../admin/bukti_transfer/Penguins.jpg', 'Belum'),
(24, '20170820071826', '20170820071826', 'BTN', '2018-06-24 03:05:30', 159999, '../admin/bukti_transfer/54155463_977d33d2-465e-497', 'Belum'),
(25, '20170820071826', '20170820071826', 'BNI', '2018-06-24 03:09:42', 1950000, '../admin/bukti_transfer/jaket.jpeg.jpg', 'Bayar');

-- --------------------------------------------------------

--
-- Table structure for table `po`
--

CREATE TABLE IF NOT EXISTS `po` (
  `nopo` varchar(20) NOT NULL,
  `style` varchar(10) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` varchar(4) NOT NULL,
  `tanggalkirim` date NOT NULL,
  `tanggalexport` date NOT NULL,
  `status` enum('Proses','Selesai','Terkirim','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `po`
--

INSERT INTO `po` (`nopo`, `style`, `color`, `size`, `tanggalkirim`, `tanggalexport`, `status`) VALUES
('20170820071826', '', 'Black', 'All ', '2018-06-24', '2018-06-24', 'Proses'),
('20170824123653', '', '', 'S', '2018-06-24', '2018-06-24', 'Proses');

-- --------------------------------------------------------

--
-- Table structure for table `po_terima`
--

CREATE TABLE IF NOT EXISTS `po_terima` (
`id` int(10) NOT NULL,
  `nopo` varchar(20) NOT NULL,
  `kd_cus` varchar(20) NOT NULL,
  `kode` int(4) NOT NULL,
  `tanggal` datetime NOT NULL,
  `size` varchar(4) NOT NULL,
  `qty` int(8) NOT NULL,
  `total` int(8) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `po_terima`
--

INSERT INTO `po_terima` (`id`, `nopo`, `kd_cus`, `kode`, `tanggal`, `size`, `qty`, `total`) VALUES
(19, '13', '13', 16, '2017-08-20 00:00:00', 'All ', 1, 159999),
(20, '13', '13', 15, '2017-08-20 00:00:00', 'All ', 2, 240000),
(22, '20170820071826', '20170820071826', 15, '2017-08-21 00:00:00', 'All ', 2, 240000),
(23, '20170820071826', '20170820071826', 16, '2017-08-21 00:00:00', 'All ', 1, 159999),
(24, '20170820071826', '20170820071826', 13, '2017-08-21 00:00:00', 'All ', 2, 180000),
(25, '20170820071826', '20170820071826', 12, '2017-08-21 00:00:00', 'All ', 1, 120000),
(26, '20170820071826', '20170820071826', 11, '2017-08-21 00:00:00', 'All ', 1, 100000),
(28, '20170820071826', '20170820071826', 8, '2017-08-21 07:25:56', 'All ', 3, 330000),
(29, '20170820071826', '20170820071826', 9, '2017-08-21 07:25:58', 'All ', 2, 240000),
(30, '20170820071826', '20170820071826', 5, '2017-08-21 07:26:03', 'All ', 1, 95000),
(31, '20170821073545', '20170821073545', 12, '2017-08-21 08:23:23', 'All ', 1, 120000),
(32, '20170821073545', '20170821073545', 13, '2017-08-21 08:23:27', 'All ', 3, 270000),
(33, '20170821073545', '20170821073545', 15, '2017-08-21 08:23:33', 'All ', 2, 240000),
(34, '20170824123653', '20170824123653', 10, '2017-08-24 12:37:31', 'All ', 1, 110000),
(35, '20170824123653', '20170824123653', 16, '2017-08-24 12:37:44', 'All ', 1, 159999),
(36, '20170824123653', '20170824123653', 12, '2017-08-24 12:37:55', 'All ', 1, 120000),
(37, '20170824123653', '20170824123653', 7, '2017-08-24 12:38:39', 'S', 1, 100000),
(38, '20170820071826', '20170820071826', 16, '2018-06-24 02:42:49', 'All ', 1, 159999),
(39, '20170820071826', '20170820071826', 12, '2018-06-24 02:44:54', 'M', 1, 120000),
(40, '20170820071826', '20170820071826', 14, '2018-06-24 02:49:24', 'All ', 1, 6790000),
(41, '20170820071826', '20170820071826', 13, '2018-06-24 02:53:25', 'All ', 1, 90000),
(42, '20170820071826', '20170820071826', 16, '2018-06-24 03:05:24', 'All ', 1, 159999),
(43, '20170820071826', '20170820071826', 17, '2018-06-24 03:09:37', 'XL', 1, 1950000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
`kode` int(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis` varchar(10) NOT NULL,
  `size` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `harga` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `stok` int(3) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode`, `nama`, `jenis`, `size`, `color`, `harga`, `keterangan`, `stok`, `gambar`) VALUES
(17, 'Jaket Bomber', 'T-Shirt', '', '', 1950000, 'in stock', 14, 'gambar_produk/jaket.jpeg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_po_terima`
--

CREATE TABLE IF NOT EXISTS `tmp_po_terima` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `gambar` varchar(40) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `fullname`, `gambar`) VALUES
(1, 'hakko', 'fb92eb16a09ed530c91a0e17d9d61a7758754013', 'Hakko Bio Richard', 'gambar_admin/hakkoblogs.jpg');

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
MODIFY `id_bank` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `konfirmasi`
--
ALTER TABLE `konfirmasi`
MODIFY `id_kon` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `po_terima`
--
ALTER TABLE `po_terima`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
MODIFY `kode` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tmp_po_terima`
--
ALTER TABLE `tmp_po_terima`
MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
