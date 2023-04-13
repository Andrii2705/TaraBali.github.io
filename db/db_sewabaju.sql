-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 02:26 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sewabaju`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `Image` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `UserName`, `Password`, `updationDate`, `Image`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2019-04-19 06:35:12', '29032019003635r.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `baju`
--

CREATE TABLE IF NOT EXISTS `baju` (
  `id_baju` int(8) NOT NULL,
  `nama_baju` varchar(100) NOT NULL,
  `id_jenis` int(5) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(8) NOT NULL,
  `s` int(5) NOT NULL,
  `m` int(5) NOT NULL,
  `l` int(5) NOT NULL,
  `xl` int(5) NOT NULL,
  `gambar1` text NOT NULL,
  `gambar2` text NOT NULL,
  `gambar3` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `baju`
--

INSERT INTO `baju` (`id_baju`, `nama_baju`, `id_jenis`, `kategori`, `deskripsi`, `harga`, `s`, `m`, `l`, `xl`, `gambar1`, `gambar2`, `gambar3`) VALUES
(1, 'Baju Adat Jawa Tengah Anak Perempuan', 1, 'Anak Perempuan', 'Ini Adalah Baju Adat Jawa Tengah untuk anak laki-laki', 50000, 1, 1, 1, 1, '14042019143846r.jpg', '14042019143914r.jpg', '14042019143926r.jpg'),
(2, 'Cosplay Superman Anak Laki-Laki', 3, 'Anak Laki-Laki', 'Ini adalah baju cosplay superman untuk anak laki-laki', 75000, 1, 1, 1, 1, '16042019090557r.jpg', '16042019090557r.jpg', '16042019090557r.jpg'),
(3, 'Kemeja Formal Pria', 4, 'Dewasa Laki-Laki', 'Ini adalah kemeja formal pria', 130000, 1, 1, 1, 1, '18042019125729r.png', '18042019125729r.png', '18042019125729r.png'),
(4, 'Cosplay Bajak Laut Perempuan Dewasa', 3, 'Dewasa Perempuan', 'Ini adalah baju cosplay bajak laut untuk perempuan dewasa', 175000, 0, 1, 1, 1, '18042019135556r.jpg', '18042019135556r.jpg', '18042019135556r.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `kode_booking` varchar(8) NOT NULL,
  `id_baju` int(11) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `durasi` int(11) NOT NULL,
  `denda` int(11) NOT NULL,
  `status` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pickup` varchar(30) NOT NULL,
  `tgl_booking` date NOT NULL,
  `bukti_bayar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`kode_booking`, `id_baju`, `ukuran`, `tgl_mulai`, `tgl_selesai`, `durasi`, `denda`, `status`, `email`, `pickup`, `tgl_booking`, `bukti_bayar`) VALUES
('TRX00001', 8, '', '2018-08-15', '2018-08-16', 2, 0, 'Selesai', 'test@gmail.com', 'Ambil Sendiri', '2018-08-13', '13082018064710bukalapak.png'),
('TRX00002', 1, 's', '2019-04-16', '2019-04-17', 2, 50000, 'Selesai', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-16', '19042019093238asdasd.png'),
('TRX00003', 2, 'm', '2019-04-18', '2019-04-19', 2, 0, 'Cancel', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-16', ''),
('TRX00004', 4, 's', '2019-04-20', '2019-04-21', 2, 875000, 'Hilang/Rusak', 'irfan@gmail.com', 'Ambil Sendiri', '2019-04-19', '19042019141908imal.png');

-- --------------------------------------------------------

--
-- Table structure for table `cek_booking`
--

CREATE TABLE IF NOT EXISTS `cek_booking` (
  `id_cek` int(11) NOT NULL,
  `kode_booking` varchar(8) NOT NULL,
  `id_baju` int(11) NOT NULL,
  `ukuran` varchar(50) NOT NULL,
  `tgl_booking` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cek_booking`
--

INSERT INTO `cek_booking` (`id_cek`, `kode_booking`, `id_baju`, `ukuran`, `tgl_booking`, `status`) VALUES
(1, 'TRX00001', 1, 's', '2018-08-15', 'Selesai'),
(2, 'TRX00001', 1, 's', '2018-08-16', 'Selesai'),
(3, 'TRX00002', 1, 's', '2019-04-18', 'Selesai'),
(4, 'TRX00002', 1, 's', '2019-04-19', 'Selesai'),
(5, 'TRX00003', 2, 'm', '2019-04-18', 'Cancel'),
(6, 'TRX00003', 2, 'm', '2019-04-19', 'Cancel'),
(7, 'TRX00004', 4, 's', '2019-04-20', 'Hilang/Rusak'),
(8, 'TRX00004', 4, 's', '2019-04-21', 'Hilang/Rusak');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `id_cu` int(11) NOT NULL,
  `nama_visit` varchar(100) DEFAULT NULL,
  `email_visit` varchar(120) DEFAULT NULL,
  `telp_visit` char(16) DEFAULT NULL,
  `pesan` longtext,
  `tgl_posting` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id_cu`, `nama_visit`, `email_visit`, `telp_visit`, `pesan`, `tgl_posting`, `status`) VALUES
(1, 'ME', 'gome@gmail.com', '2147483647', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2017-06-18 10:03:07', 1),
(2, 'kjk', 'jlkl@gmail.com', '98989898', 'kjlkjkljklj', '2018-03-06 14:01:39', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contactusinfo`
--

CREATE TABLE IF NOT EXISTS `contactusinfo` (
  `id_info` int(11) NOT NULL,
  `alamat_kami` tinytext,
  `email_kami` varchar(255) DEFAULT NULL,
  `telp_kami` char(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactusinfo`
--

INSERT INTO `contactusinfo` (`id_info`, `alamat_kami`, `email_kami`, `telp_kami`) VALUES
(1, 'Jl. iya jadian kaga', 'mutiaramotor@gmail.com', '08585233222');

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE IF NOT EXISTS `jenis` (
  `id_jenis` int(1) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Baju Adat'),
(3, 'Baju Cosplay'),
(4, 'Formal'),
(5, 'Casual');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(120) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_user`, `nama_user`, `email`, `password`, `telp`, `alamat`) VALUES
(5, 'Test', 'test@gmail.com', '098f6bcd4621d373cade4e832627b4f6', '0819898989', 'test doang'),
(6, 'Coba', 'coba@gmail.com', 'c3ec0f7b054e729c5a716c8125839829', '08986776473', 'Jl. coba'),
(7, 'Nama Saya', 'nama@gmail.com', 'e3555ebe8b7daf4a9966f8130fb3a93f', '08123456789', 'Alamat Saya'),
(8, 'Irfan Maulana', 'irfan@gmail.com', '24b90bc48a67ac676228385a7c71a119', '089628785342', 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(1, 'Terms and Conditions', 'terms', '											<p align="justify"><span style="color: rgb(153, 0, 0); font-size: small; font-weight: 700;">This is Therms and Conditions</span></p><p align="justify"><br></p>											'),
(5, 'Rekening', 'rekening', '																																	123456789 Bank BRI a/n IRFAN'),
(0, 'Driver', 'driver', '200000'),
(2, 'Privacy Policy', 'privacy', '											<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">This is Privacy Policy</span>'),
(3, 'Tentang Kami', 'aboutus', '																																	<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;">Kami menyewakan berbagai macam baju untuk berbagai keperluan.</span>																						'),
(11, 'FAQs', 'faqs', '											<div style="text-align: justify;"><span style="font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">Q : Bagaimana cara menyewa baju disini?</span></div><div style="text-align: justify;"><span style="font-size: 1em; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;">A : Pertama anda harus mendaftar terlebih dahulu sebagai member melalui menu yang telah disediakan.</span></div>											');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baju`
--
ALTER TABLE `baju`
  ADD PRIMARY KEY (`id_baju`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`kode_booking`);

--
-- Indexes for table `cek_booking`
--
ALTER TABLE `cek_booking`
  ADD PRIMARY KEY (`id_cek`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id_cu`);

--
-- Indexes for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  ADD PRIMARY KEY (`id_info`);

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `baju`
--
ALTER TABLE `baju`
  MODIFY `id_baju` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `cek_booking`
--
ALTER TABLE `cek_booking`
  MODIFY `id_cek` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id_cu` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `contactusinfo`
--
ALTER TABLE `contactusinfo`
  MODIFY `id_info` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
