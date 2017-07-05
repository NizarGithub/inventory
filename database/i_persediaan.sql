-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2017 at 02:22 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `i_persediaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `is_barang`
--

CREATE TABLE `is_barang` (
  `id_barang` varchar(7) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_satuan` int(11) NOT NULL,
  `stok` int(11) NOT NULL DEFAULT '0',
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_user` smallint(6) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_barang`
--

INSERT INTO `is_barang` (`id_barang`, `nama_barang`, `id_jenis`, `id_satuan`, `stok`, `created_user`, `created_date`, `updated_user`, `updated_date`) VALUES
('B000001', 'Pupuk Pulkalet', 1, 2, 500, 3, '2017-03-12 16:31:31', 3, '2017-03-14 08:07:39'),
('B000002', 'Pupuk Dolomite', 1, 2, 500, 3, '2017-03-12 16:31:48', 3, '2017-03-19 00:44:02'),
('B000003', 'Pupuk KCL/MOP', 1, 2, 900, 3, '2017-03-12 16:32:04', 3, '2017-03-19 01:01:43'),
('B000004', 'Gesapax 500 PW', 3, 4, 300, 3, '2017-03-12 16:32:24', 3, '2017-03-14 08:06:37'),
('B000005', 'Amonia Cair', 7, 4, 700, 3, '2017-03-12 16:32:42', 3, '2017-03-19 01:00:43'),
('B000006', 'Asam Sulfate PA 731', 7, 4, 10, 3, '2017-03-12 16:32:59', 3, '2017-03-14 08:07:11'),
('B000007', 'Vitamin Karet Plus Kemasan 1 Kg', 2, 2, 50, 3, '2017-03-12 16:33:15', 3, '2017-03-14 08:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `is_barang_keluar`
--

CREATE TABLE `is_barang_keluar` (
  `id_barang_keluar` varchar(15) NOT NULL,
  `tanggal_keluar` date NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `jumlah_keluar` int(11) NOT NULL,
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_barang_keluar`
--

INSERT INTO `is_barang_keluar` (`id_barang_keluar`, `tanggal_keluar`, `id_barang`, `jumlah_keluar`, `created_user`, `created_date`) VALUES
('TK-2017-0000001', '2017-03-14', 'B000002', 500, 3, '2017-03-14 08:05:40'),
('TK-2017-0000002', '2017-03-14', 'B000003', 100, 3, '2017-03-14 08:06:11'),
('TK-2017-0000003', '2017-03-14', 'B000004', 200, 3, '2017-03-14 08:06:37'),
('TK-2017-0000004', '2017-03-14', 'B000006', 490, 3, '2017-03-14 08:07:11'),
('TK-2017-0000005', '2017-03-16', 'B000007', 50, 3, '2017-03-14 08:07:27'),
('TK-2017-0000006', '2017-03-16', 'B000001', 500, 3, '2017-03-14 08:07:39'),
('TK-2017-0000007', '2017-03-19', 'B000002', 500, 3, '2017-03-19 00:53:27'),
('TK-2017-0000008', '2017-03-19', 'B000003', 100, 6, '2017-03-19 01:01:42');

-- --------------------------------------------------------

--
-- Table structure for table `is_barang_masuk`
--

CREATE TABLE `is_barang_masuk` (
  `id_barang_masuk` varchar(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `id_barang` varchar(7) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_barang_masuk`
--

INSERT INTO `is_barang_masuk` (`id_barang_masuk`, `tanggal_masuk`, `id_barang`, `jumlah_masuk`, `created_user`, `created_date`) VALUES
('TM-2017-0000001', '2017-03-13', 'B000007', 100, 3, '2017-03-13 07:41:39'),
('TM-2017-0000002', '2017-03-13', 'B000002', 500, 3, '2017-03-13 07:45:30'),
('TM-2017-0000003', '2017-03-13', 'B000003', 100, 3, '2017-03-13 07:47:51'),
('TM-2017-0000004', '2017-03-13', 'B000004', 500, 3, '2017-03-13 07:48:07'),
('TM-2017-0000005', '2017-03-13', 'B000005', 200, 3, '2017-03-14 07:49:39'),
('TM-2017-0000006', '2017-03-13', 'B000006', 500, 3, '2017-03-14 07:49:43'),
('TM-2017-0000007', '2017-03-15', 'B000002', 1000, 3, '2017-03-15 07:50:11'),
('TM-2017-0000008', '2017-03-15', 'B000003', 500, 3, '2017-03-15 07:50:28'),
('TM-2017-0000009', '2017-03-15', 'B000001', 1000, 3, '2017-03-15 07:59:50'),
('TM-2017-0000010', '2017-03-19', 'B000003', 500, 3, '2017-03-19 00:53:21'),
('TM-2017-0000011', '2017-03-19', 'B000005', 500, 6, '2017-03-19 01:00:43');

-- --------------------------------------------------------

--
-- Table structure for table `is_jenis_barang`
--

CREATE TABLE `is_jenis_barang` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_user` smallint(6) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_jenis_barang`
--

INSERT INTO `is_jenis_barang` (`id_jenis`, `nama_jenis`, `created_user`, `created_date`, `updated_user`, `updated_date`) VALUES
(1, 'Pupuk Kimia Alam', 3, '2017-03-12 02:59:45', 3, '2017-03-12 03:01:03'),
(2, 'Pupuk Hijau', 3, '2017-03-12 02:59:58', 3, '2017-03-12 03:01:06'),
(3, 'Herbisida', 3, '2017-03-12 03:00:08', 3, '2017-03-12 03:01:10'),
(4, 'Fungisida', 3, '2017-03-12 03:00:19', 3, '2017-03-12 03:01:13'),
(5, 'Insektisida', 3, '2017-03-12 03:00:29', 3, '2017-03-12 03:01:16'),
(6, 'Bahan Stimulasi', 3, '2017-03-12 03:00:39', 3, '2017-03-12 03:01:19'),
(7, 'Bahan Kimia Pengolahan', 3, '2017-03-12 03:00:49', 3, '2017-03-12 03:01:22');

-- --------------------------------------------------------

--
-- Table structure for table `is_satuan`
--

CREATE TABLE `is_satuan` (
  `id_satuan` int(11) NOT NULL,
  `nama_satuan` varchar(30) NOT NULL,
  `created_user` smallint(6) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_user` smallint(6) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_satuan`
--

INSERT INTO `is_satuan` (`id_satuan`, `nama_satuan`, `created_user`, `created_date`, `updated_user`, `updated_date`) VALUES
(1, 'Gram', 3, '2017-03-12 02:57:35', 3, '2017-03-12 02:57:45'),
(2, 'Kilogram', 3, '2017-03-12 02:58:07', 3, '2017-03-12 02:59:01'),
(3, 'Meter', 3, '2017-03-12 02:58:19', 3, '2017-03-12 02:59:04'),
(4, 'Liter', 3, '2017-03-12 02:58:25', 3, '2017-03-12 02:59:08'),
(5, 'Botol', 3, '2017-03-12 02:58:36', 3, '2017-03-12 02:59:10'),
(6, 'Lebar', 3, '2017-03-12 02:58:46', 3, '2017-03-12 02:59:13'),
(7, 'Tabung', 3, '2017-03-12 02:58:52', 3, '2017-03-12 02:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `is_users`
--

CREATE TABLE `is_users` (
  `id_user` smallint(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `hak_akses` enum('Super Admin','Manajer','Gudang') NOT NULL,
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `is_users`
--

INSERT INTO `is_users` (`id_user`, `username`, `nama_user`, `password`, `email`, `telepon`, `foto`, `hak_akses`, `status`, `created_at`, `updated_at`) VALUES
(1, 'indrasatya', 'Indra Setyawantoro', '41504508b3cec65b1313905001118579', 'indra.setyawantoro@gmail.com', '085669919769', 'indrasatya.jpg', 'Super Admin', 'aktif', '2016-05-01 08:42:53', '2017-03-12 00:53:38'),
(2, 'kadina', 'Kadina Putri', '202cb962ac59075b964b07152d234b70', 'kadinaputri@gmail.com', '085680892909', 'kadina.png', 'Manajer', 'aktif', '2016-08-01 08:42:53', '2017-03-11 14:40:52'),
(3, 'danang', 'Danang Kesuma', '202cb962ac59075b964b07152d234b70', 'danang@gmail.com', '085758858855', '1469574162_users-15.png', 'Gudang', 'aktif', '2017-03-11 14:41:46', '2017-03-19 00:24:33'),
(6, 'gudang', 'Admin Gudang', '202cb962ac59075b964b07152d234b70', 'gudang@gmail.com', '085669919769', '1469574147_users-11.png', 'Gudang', 'aktif', '2017-03-19 00:56:02', '2017-03-19 00:57:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `is_barang`
--
ALTER TABLE `is_barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_jenis` (`id_jenis`),
  ADD KEY `id_satuan` (`id_satuan`),
  ADD KEY `created_user` (`created_user`),
  ADD KEY `updated_user` (`updated_user`);

--
-- Indexes for table `is_barang_keluar`
--
ALTER TABLE `is_barang_keluar`
  ADD PRIMARY KEY (`id_barang_keluar`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `is_barang_masuk`
--
ALTER TABLE `is_barang_masuk`
  ADD PRIMARY KEY (`id_barang_masuk`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `created_user` (`created_user`);

--
-- Indexes for table `is_jenis_barang`
--
ALTER TABLE `is_jenis_barang`
  ADD PRIMARY KEY (`id_jenis`),
  ADD KEY `created_user` (`created_user`),
  ADD KEY `updated_user` (`updated_user`);

--
-- Indexes for table `is_satuan`
--
ALTER TABLE `is_satuan`
  ADD PRIMARY KEY (`id_satuan`),
  ADD KEY `created_user` (`created_user`),
  ADD KEY `updated_user` (`updated_user`);

--
-- Indexes for table `is_users`
--
ALTER TABLE `is_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `level` (`hak_akses`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `is_jenis_barang`
--
ALTER TABLE `is_jenis_barang`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `is_satuan`
--
ALTER TABLE `is_satuan`
  MODIFY `id_satuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `is_users`
--
ALTER TABLE `is_users`
  MODIFY `id_user` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `is_barang`
--
ALTER TABLE `is_barang`
  ADD CONSTRAINT `is_barang_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_barang_ibfk_2` FOREIGN KEY (`updated_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_barang_ibfk_3` FOREIGN KEY (`id_satuan`) REFERENCES `is_satuan` (`id_satuan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_barang_ibfk_4` FOREIGN KEY (`id_jenis`) REFERENCES `is_jenis_barang` (`id_jenis`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `is_barang_keluar`
--
ALTER TABLE `is_barang_keluar`
  ADD CONSTRAINT `is_barang_keluar_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_barang_keluar_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `is_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `is_barang_masuk`
--
ALTER TABLE `is_barang_masuk`
  ADD CONSTRAINT `is_barang_masuk_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_barang_masuk_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `is_barang` (`id_barang`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `is_jenis_barang`
--
ALTER TABLE `is_jenis_barang`
  ADD CONSTRAINT `is_jenis_barang_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_jenis_barang_ibfk_2` FOREIGN KEY (`updated_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `is_satuan`
--
ALTER TABLE `is_satuan`
  ADD CONSTRAINT `is_satuan_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_satuan_ibfk_2` FOREIGN KEY (`updated_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
