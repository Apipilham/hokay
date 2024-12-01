-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 20, 2023 at 12:39 AM
-- Server version: 5.7.31
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_wavps`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

DROP TABLE IF EXISTS `absensi`;
CREATE TABLE IF NOT EXISTS `absensi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `nisn` int(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `notif_sukses` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=174 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `tanggal`, `jam`, `nisn`, `status`, `notif_sukses`) VALUES
(159, '2023-02-19', '08:58:00', 22222, 'masuk', 1),
(160, '2023-02-22', '07:09:00', 22221, 'masuk', 0),
(161, '2023-02-22', '07:09:00', 22222, 'terlambat', 0),
(162, '2023-02-22', '06:13:00', 22223, 'masuk', 0),
(163, '2023-02-21', '10:29:00', 22224, 'masuk', 0),
(164, '2023-02-22', '10:29:00', 22224, 'masuk', 0),
(165, '2023-02-20', '10:29:00', 22225, 'masuk', 0),
(166, '2023-02-20', '10:29:00', 22225, 'masuk', 0),
(167, '2023-02-19', '10:29:00', 22225, 'masuk', 0),
(168, '2023-02-01', '06:07:00', 22221, 'izin', 0),
(169, '2023-02-22', '12:11:00', 22221, 'pulang', 0),
(170, '2023-02-02', '20:09:00', 22221, 'izin', 0),
(171, '2023-02-03', '11:11:00', 22221, 'sakit', 0),
(172, '2023-02-04', '11:11:00', 22221, 'alpha', 0);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `level` int(11) NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama`, `email`, `password`, `hp`, `level`) VALUES
(1, 'Dukun Web', 'dukunweb@gmail.com', '$2y$10$fwgjlcDz5i5YLQxsEu52c.XU5A6AXPNSr.BXZuQ2QWqcTuoyluYse', '6285781812171', 1),
(5, 'Man Zakka', 'zakka@gmail.com', '$2y$10$wDKJr3A8qXFYAV5NGJMY7On/KUwydlPuiSiekJU1ze8Ai6N6YnkgK', '6285781812172', 2),
(6, 'Fatoni', 'fatoni@gmail.com', '$2y$10$tyBu9FOwMu7Qs2JxbTuimeweWV2HITeh2wu0tSnKrYh0SIU1r0GkO', '085781812111', 3),
(8, 'Abdul', 'abdul@gmail.com', '$2y$10$qGPrON7EZ3tK1BQxI.6jauMxCranVul5c1BFSEOmVzRhH/JLS7AXi', '085781812121', 3);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

DROP TABLE IF EXISTS `kelas`;
CREATE TABLE IF NOT EXISTS `kelas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(30) NOT NULL,
  `walikelas` varchar(50) NOT NULL,
  `id_group` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `kelas`, `walikelas`, `id_group`) VALUES
(3, 'X TKJ', '6', '12317618726831@g.us'),
(4, 'XI TKJ', '8', '12317618726831@g.us');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
CREATE TABLE IF NOT EXISTS `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip_finger1` varchar(30) NOT NULL,
  `ip_finger2` varchar(30) NOT NULL,
  `ip_finger3` varchar(30) NOT NULL,
  `ip_finger4` varchar(30) NOT NULL,
  `ip_finger5` varchar(30) NOT NULL,
  `ip_finger6` varchar(20) NOT NULL,
  `ip_finger7` varchar(20) NOT NULL,
  `ip_finger8` varchar(20) NOT NULL,
  `ip_finger9` varchar(20) NOT NULL,
  `ip_finger10` varchar(20) NOT NULL,
  `jam_masuk` varchar(30) NOT NULL,
  `jam_pulang` varchar(30) NOT NULL,
  `whatsapp_api_url` varchar(200) NOT NULL,
  `whatsapp_api_key` varchar(100) NOT NULL,
  `whatsapp_api_text` text NOT NULL,
  `online_url` varchar(200) NOT NULL,
  `tujuan` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `ip_finger1`, `ip_finger2`, `ip_finger3`, `ip_finger4`, `ip_finger5`, `ip_finger6`, `ip_finger7`, `ip_finger8`, `ip_finger9`, `ip_finger10`, `jam_masuk`, `jam_pulang`, `whatsapp_api_url`, `whatsapp_api_key`, `whatsapp_api_text`, `online_url`, `tujuan`) VALUES
(1, '192.168.1.201', '', '', '', '', '', '', '', '', '', '06:00-07:00', '09:00-14:00', 'https://wa4103.api-wa.my.id/api/v1/messages', 'dk_6785a5a4b08940598f8bf7683aee1518', '*INFORMASI ABSENSI SISWA*\r\n---------------------------------------------------\r\n\r\nBerikut ini kami sampaikan data siswa yang sudah melakukan absensi.\r\nNAMA: *[SISWA]*\r\nKELAS: *[KELAS]*\r\nTANGGAL: *[TANGGAL]*\r\nJAM: *[JAM]*\r\nSTATUS: *[STATUS]*\r\n\r\nTerima kasih.\r\nNB:\r\n- Pesan ini di kirim secara *OTOMATIS* by system absensi\r\n- Harap untuk menyimpan nomor Whatsapp Admin ini.', 'http://localhost/projects/absensi_finger_wa/online', 1);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

DROP TABLE IF EXISTS `siswa`;
CREATE TABLE IF NOT EXISTS `siswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nisn` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(30) DEFAULT NULL,
  `nama_wali` varchar(100) DEFAULT NULL,
  `nomor_wali` varchar(20) NOT NULL,
  `foto` varchar(100) NOT NULL DEFAULT 'nopic.png',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama`, `kelas`, `nama_wali`, `nomor_wali`, `foto`) VALUES
(5, 22221, 'ROZAK', 'X TKJ', 'AYAH ROZAK', '6285781812171', 'nopic.png'),
(6, 22222, 'KADIM', 'X TKJ', 'WALI KADIM', '6285781812171', 'nopic.png'),
(7, 22223, 'BANDI', 'X TKJ', 'WALI BANDI', '6285781812171', 'nopic.png'),
(8, 22224, 'AGUS', 'X TKJ', 'WALIAGUS', '6285781812171', 'nopic.png'),
(9, 22225, 'DWI', 'X TKJ', 'WALI DWI', '6285781812171', 'nopic.png'),
(10, 33331, 'KAMIL', 'X TKJ', 'AYAH KAMIL', '6285781812171', 'nopic.png'),
(14, 121212, 'Cek ', 'XI TKJ', 'Wali Cek', '08983738', 'nopic.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
