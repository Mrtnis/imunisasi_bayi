-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 06:37 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `imunisasi`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'Dinas Kesehatan');

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(11) NOT NULL,
  `nama_desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nama_desa`, `kecamatan`) VALUES
(1, 'Lingka Kuta', 'Gandapura'),
(2, 'Pante Sikumbang', 'Gandapura'),
(3, 'Palohme', 'Gandapura'),
(4, 'Ie Rhop', 'Gandapura'),
(5, 'Pulo Gisa', 'Gandapura'),
(6, 'Paya Baro', 'Gandapura'),
(7, 'Cot Teubee', 'Gandapura'),
(8, 'Cot Tufah', 'Gandapura'),
(9, 'Paloh Kayee Kunyet', 'Gandapura'),
(10, 'Ujong Bayu', 'Gandapura'),
(11, 'Tanjong Raya', 'Gandapura'),
(12, 'Cot Puuk', 'Gandapura'),
(16, 'Blang Tingkeum', 'Kotajuang'),
(17, 'Buket Teukuh', 'Kotajuang'),
(18, 'Geudong Alue', 'Kotajuang'),
(19, 'Geudong-geudong', 'Kotajuang'),
(20, 'Geulanggang Baro', 'Kotajuang'),
(21, 'Geulanggang Gampong', 'Kotajuang'),
(22, 'Menasah Dayah', 'Kotajuang'),
(23, 'Meunasah Blang', 'Kotajuang'),
(24, 'Meunasah Capa', 'Kotajuang'),
(25, 'Meunasah Reuleut', 'Kotajuang'),
(26, 'Bandar Bireuen 1', 'Kotajuang'),
(27, 'Blang Reuling', 'Kotajuang'),
(28, 'BTN', 'Kotajuang'),
(29, 'Cot Gapu', 'Kotajuang'),
(30, 'Gampong Baro', 'Kotajuang'),
(31, 'Lhok Awe Teungoh', 'Kotajuang'),
(32, 'Meunasah Gadong', 'Kotajuang'),
(33, 'Pulo Ara', 'Kotajuang');

-- --------------------------------------------------------

--
-- Table structure for table `gandapura`
--

CREATE TABLE `gandapura` (
  `id_imunisasi` int(11) NOT NULL,
  `nama_bayi` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hb_0` date DEFAULT NULL,
  `bcg` date DEFAULT NULL,
  `pol_1` date DEFAULT NULL,
  `dpt_hb_hib_1` date DEFAULT NULL,
  `pol_2` date DEFAULT NULL,
  `dpt_hb_hib_2` date DEFAULT NULL,
  `pol_3` date DEFAULT NULL,
  `dpt_hb_hib_3` date DEFAULT NULL,
  `pol_4` date DEFAULT NULL,
  `ipv` date DEFAULT NULL,
  `campak` date DEFAULT NULL,
  `imunisasi_lengkap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gandapura`
--

INSERT INTO `gandapura` (`id_imunisasi`, `nama_bayi`, `jenis_kelamin`, `tanggal_lahir`, `nama_ortu`, `alamat`, `hb_0`, `bcg`, `pol_1`, `dpt_hb_hib_1`, `pol_2`, `dpt_hb_hib_2`, `pol_3`, `dpt_hb_hib_3`, `pol_4`, `ipv`, `campak`, `imunisasi_lengkap`) VALUES
(5, 'Dafid Alfarisi', 'laki-laki', '2015-09-01', 'Lukmanul Hakim', 'Ie Rhop', '2015-09-28', '2015-09-29', '2015-09-29', '2015-12-05', '2015-12-05', '2015-02-05', '2015-03-05', '2015-04-05', '2015-04-05', NULL, '2015-06-05', NULL),
(6, 'Zakiul Fatta', 'laki-laki', '2016-07-19', 'Junaidi', 'Ie Rhop', NULL, '2017-04-21', '2017-04-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Cut Safia', 'perempuan', '2015-09-19', 'Riosmadi', 'Ie Rhop', '2015-09-19', '2015-09-29', '2015-09-29', '2015-11-05', '2015-11-05', '2016-01-05', '2016-01-05', '2016-02-05', '2016-02-05', NULL, '2016-06-05', NULL),
(8, 'Dina Amalia', 'perempuan', '2016-05-05', 'Mansur', 'Ie Rhop', '2016-05-05', '2016-07-16', '2016-07-16', '2016-08-05', '2016-08-05', '2016-10-05', '2016-10-05', '2016-11-05', '2017-04-08', '2017-05-06', '2017-02-07', '2017-02-07'),
(9, 'Amali Natasya', 'perempuan', '2016-05-22', 'Sanusi', 'Ie Rhop', '2016-05-23', '2016-07-16', '2016-07-16', '2016-08-05', '2016-08-05', '2016-10-05', '2016-10-05', '2016-11-05', '2016-11-05', '2017-07-06', '2017-02-14', '2017-02-07'),
(10, 'M. Ihsan', 'laki-laki', '2017-02-23', 'Sofyan', 'Ie Rhop', NULL, '2017-04-21', '2017-04-21', '2017-05-10', '2017-06-06', '2017-06-06', '2017-07-06', '2017-07-06', '2017-08-07', '2018-01-06', '2018-01-06', '2018-01-06'),
(11, 'Zayya Rifqa', 'perempuan', '2017-04-19', 'Albiadi', 'Ie Rhop', '2017-04-21', '2017-04-21', '2017-04-21', '2017-06-10', '2017-06-06', '2017-08-07', '2017-07-06', '2017-10-06', '2017-08-06', '2018-01-06', '2018-01-06', '2018-01-06'),
(12, 'M. Habibi', 'laki-laki', '2017-06-27', 'Junaidi', 'Ie Rhop', '2017-06-27', NULL, '2018-03-06', NULL, '2018-04-06', NULL, '2018-05-06', NULL, NULL, NULL, NULL, NULL),
(13, 'Wahyudi', 'laki-laki', '2017-02-04', 'Ibrahim', 'Ie Rhop', '2017-07-06', NULL, '2018-03-06', NULL, '2018-04-06', NULL, '2018-07-06', NULL, NULL, NULL, NULL, NULL),
(14, 'M. Aska Rafasya', 'laki-laki', '2017-08-04', 'Zulmahdi', 'Ie Rhop', '2017-08-04', NULL, '2018-05-06', NULL, '2018-05-06', NULL, '2018-07-06', NULL, NULL, NULL, NULL, NULL),
(15, 'Ramazan', 'laki-laki', '2017-11-05', 'Lukman N', 'Ie Rhop', '2017-11-08', NULL, '2018-05-06', NULL, '2018-05-06', NULL, '2018-07-06', NULL, NULL, NULL, NULL, NULL),
(16, 'Bayi Nahyatun', 'perempuan', '2018-12-03', 'Suami', 'Ie Rhop', '2018-12-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Bayi Fatimah', 'perempuan', '2018-12-17', 'Suami', 'Ie Rhop', '2018-12-17', '2019-02-11', '2019-02-11', '2019-02-12', '2019-03-12', NULL, '2019-04-05', NULL, NULL, NULL, NULL, NULL),
(18, 'Sultan Nur Hadi', 'laki-laki', '2018-01-17', 'Hasballah', 'Pante Sikumbang', '2018-01-17', '2018-03-16', '2018-03-16', '2018-04-16', '2018-04-16', '2018-09-17', '2018-09-17', '2018-10-16', NULL, NULL, NULL, NULL),
(19, 'M. Yazid', 'laki-laki', '2018-10-01', 'Salman', 'Pante Sikumbang', '2018-10-01', '2018-12-15', '2018-12-15', '2019-01-17', '2019-01-17', '2019-02-16', '2019-02-16', '2019-03-16', '2019-03-16', '2019-09-16', NULL, NULL),
(20, 'Faris Adnan', 'laki-laki', '2019-11-15', 'Khalidawati', 'Pante Sikumbang', '2019-11-15', NULL, '2020-01-17', NULL, '2020-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Alaisya Zahra', 'perempuan', '2018-08-01', 'Marhaban', 'Pante Sikumbang', '2018-08-01', '2018-09-17', '2018-09-17', '2018-09-17', '2018-10-16', '2018-10-16', '2018-12-15', '2018-12-15', '2019-01-17', '2019-01-17', NULL, NULL),
(22, 'Aqila', 'perempuan', '2018-08-01', 'Martin', 'Pante Sikumbang', '2018-08-01', '2018-09-17', '2018-09-17', '2018-10-16', '2018-10-16', '2018-11-15', '2018-11-15', '2019-01-17', '2019-01-17', NULL, NULL, NULL),
(23, 'Maisya Aziza', 'perempuan', '2018-09-01', 'Mukhlis', 'Pante Sikumbang', '2018-09-01', '2018-11-15', '2018-11-15', '2018-11-15', '2018-12-15', '2018-12-15', '2019-01-17', '2019-01-18', '2019-05-16', '2019-05-16', '2019-09-16', '2019-09-16'),
(24, 'Naura Rania', 'perempuan', '2018-02-20', 'Wardani', 'Pante Sikumbang', '2018-02-20', '2018-09-16', '2018-09-16', '2018-11-15', '2018-11-15', '2019-02-16', '2019-02-16', '2019-03-16', '2019-03-16', NULL, NULL, NULL),
(25, 'Amira Shakila', 'perempuan', '2019-03-07', 'Marlinawati', 'Pante Sikumbang', '2019-03-07', '2019-04-16', '2019-04-16', '2019-05-16', '2019-05-16', '2019-06-16', '2019-06-16', '2019-07-16', '2019-07-16', NULL, NULL, NULL),
(26, 'Zaratul Aisya', 'perempuan', '2019-06-11', 'Nurhikmah', 'Pante Sikumbang', '2019-06-11', '2019-07-16', '2019-07-16', '2019-07-16', '2019-08-16', '2019-08-16', '2019-10-16', '2019-10-16', '2020-01-17', NULL, NULL, NULL),
(27, 'Bayi Afrizani', 'perempuan', '2019-11-19', 'Afrizani', 'Pante Sikumbang', '2019-11-19', '2020-02-17', '2020-01-17', NULL, '2020-02-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'M. Syakir Al', 'laki-laki', '2017-07-13', 'Almunadia', 'Cot Teubee', '2017-07-17', NULL, NULL, NULL, '2017-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Auzan', 'laki-laki', '2017-07-20', 'Nurul Hidayat', 'Cot Teubee', '2017-07-20', NULL, NULL, NULL, '2017-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Nofa Akbar', 'laki-laki', '2017-11-22', 'Julia', 'Cot Teubee', '2017-11-22', '2018-01-15', '2018-01-15', NULL, '2018-01-14', NULL, '2018-02-15', NULL, '2018-08-14', NULL, NULL, NULL),
(31, 'Azqia', 'perempuan', '2017-09-14', 'Fitriani', 'Cot Teubee', '2017-09-14', NULL, '2017-11-11', '2017-11-11', '2017-12-15', '2017-12-15', '2018-01-15', '2018-01-15', '2018-02-15', NULL, NULL, NULL),
(32, 'Fina Azka', 'perempuan', '2018-01-03', 'Nurul Madina', 'Cot Teubee', '2018-01-03', NULL, '2018-03-12', '2018-04-13', '2018-04-13', NULL, '2018-05-12', NULL, '2018-06-17', NULL, NULL, NULL),
(33, 'Zahira Fairus', 'perempuan', '2018-02-05', 'Afriza Hanum', 'Cot Teubee', '2018-02-05', NULL, '2018-05-12', '2018-06-09', '2018-06-09', '2018-02-17', '2018-02-17', '2018-08-14', '2018-08-14', NULL, '2018-10-13', NULL),
(34, 'M. Wali Alkha', 'laki-laki', '2018-05-06', 'Nur Azizah', 'Cot Teubee', '2018-05-06', NULL, '2018-06-09', NULL, '2018-07-13', NULL, '2018-08-14', NULL, '2018-09-12', NULL, NULL, NULL),
(35, 'Nabila Raila', 'perempuan', '2018-07-02', 'Ajirna', 'Cot Teubee', '2018-07-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Malika Atha', 'perempuan', '2018-08-16', 'Zulhikmah', 'Cot Teubee', '2018-08-16', '2019-03-11', '2018-01-15', '2018-11-15', '2019-01-09', '2019-01-09', '2019-02-11', '2019-02-11', '2019-03-11', NULL, NULL, NULL),
(37, 'Annasyaz', 'perempuan', '2018-09-09', 'Rosdiani', 'Cot Teubee', '2018-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Rafiza Alkal', 'laki-laki', '2018-09-21', 'Fitriani', 'Cot Teubee', '2018-09-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Raja Salman', 'laki-laki', '2018-09-22', 'Safarianti', 'Cot Teubee', '2018-09-22', NULL, '2019-02-11', NULL, '2019-03-11', NULL, '2019-04-11', NULL, '2019-05-11', NULL, NULL, NULL),
(40, 'Rafka Al', 'laki-laki', '2018-10-08', 'Cut Aflizarni', 'Cot Teubee', '2018-10-08', '2019-03-11', '2019-01-09', '2019-01-09', '2019-02-11', '2019-02-11', '2019-03-11', '2019-03-11', '2019-04-11', NULL, NULL, NULL),
(41, 'Alifa Zikra', 'perempuan', '2019-01-01', 'Nurlaili', 'Cot Teubee', '2019-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Maulina', 'perempuan', '2019-01-15', 'Iklima', 'Cot Teubee', '2019-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Naila Ghania', 'perempuan', '2019-01-12', 'Hasnidar', 'Cot Teubee', '2019-01-12', '2019-03-20', '2019-03-20', '2019-05-11', '2019-05-11', '2019-06-11', '2019-06-11', '2019-07-11', '2019-07-11', '2019-11-11', '2019-11-11', NULL),
(44, 'M. Rian Arrasyid', 'laki-laki', '2019-04-09', 'Nova Sari', 'Cot Teubee', '2019-04-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'Siti Zarena Rayya', 'perempuan', '2019-04-17', 'Almunadia', 'Cot Teubee', '2019-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Rafiski Al Farizi', 'laki-laki', '2019-05-02', 'Nur Azizah', 'Cot Teubee', '2019-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Sabrina Fitri', 'perempuan', '2019-06-11', 'Ainal Mardhiah', 'Cot Teubee', '2019-06-11', NULL, '2019-09-11', NULL, '2019-10-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Siti Zulaikha', 'perempuan', '2019-06-22', 'Titin Hartinah', 'Cot Teubee', '2019-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Cut Farrah Faizah', 'perempuan', '2019-07-09', 'Fathiyah', 'Cot Teubee', '2019-07-09', '2019-11-11', '2019-11-11', '2019-11-11', '2019-11-11', '2019-12-11', NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'Bayi Iswati', 'laki-laki', '2019-08-27', 'Iswati', 'Cot Teubee', '2019-08-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Bayi Mahfuzah', 'laki-laki', '2019-09-01', 'Mahfuzah', 'Cot Teubee', '2019-09-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Arsyila Syahada', 'perempuan', '2019-11-01', 'Yuliana', 'Cot Teubee', '2019-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Ausisa Sativa', 'perempuan', '2019-11-10', 'Junaili', 'Cot Teubee', '2019-11-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Safiqa Aurora', 'perempuan', '2019-08-05', 'Muazzimah', 'Ujong Bayu', '2019-08-05', NULL, '2019-11-30', NULL, '2020-01-23', NULL, '2020-03-23', NULL, NULL, NULL, NULL, NULL),
(55, 'M. ALfais', 'laki-laki', '2019-09-02', 'Musnadiah', 'Ujong Bayu', '2019-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Zahwa Akila', 'perempuan', '2019-10-19', 'Aswiana', 'Ujong Bayu', '2019-10-19', NULL, '2020-01-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Siti Raisa', 'perempuan', '2020-01-22', 'Umi Kalsum', 'Ujong Bayu', '2020-01-22', '2020-02-22', '2020-02-22', '2020-02-22', '2020-02-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Balqis', 'perempuan', '2019-05-27', 'Boihaqi', 'Paya Baro', '2019-05-27', NULL, '2019-06-19', '2019-06-19', '2019-07-19', '2019-07-19', '2019-08-19', '2019-09-19', '2019-10-19', NULL, NULL, NULL),
(59, 'Afzalul Dzikri', 'laki-laki', '2019-07-04', 'Azhari', 'Paya Baro', '2019-07-04', NULL, '2019-08-19', NULL, '2019-09-19', NULL, '2019-10-19', NULL, '2019-11-19', NULL, NULL, NULL),
(60, 'M. Rifqan', 'laki-laki', '2019-09-03', 'Azhari', 'Paya Baro', '2019-09-03', NULL, '2020-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Maulidia Rizka', 'perempuan', '2019-11-26', 'Musa Abdullah', 'Paya Baro', '2019-11-26', '2020-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Aurelia Almashira', 'perempuan', '2020-01-05', 'Anwar', 'Paya Baro', '2020-01-05', NULL, '2020-02-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Cut Mira Zatul', 'perempuan', '2015-09-01', 'Saiful', 'Palohme', '2015-09-01', '2015-11-11', '2015-11-11', '2016-01-11', '2016-01-11', '2016-02-11', '2016-02-11', '2016-05-11', '2016-05-11', NULL, '2016-06-14', '2016-06-14'),
(64, 'Hafid Sulfani', 'laki-laki', '2015-12-13', 'Husaini', 'Palohme', '2015-12-14', '2016-01-12', '2016-01-12', '2016-02-11', '2016-02-11', '2016-04-11', '2016-04-11', '2016-05-11', '2016-05-11', NULL, '2016-09-19', '2016-09-19'),
(65, 'Liana Azka Zahira', 'perempuan', '2016-06-10', 'Jailani', 'Palohme', '2016-06-19', '2016-08-11', '2016-08-11', '2016-09-19', '2016-09-19', '2016-10-11', '2016-10-11', '2016-11-16', '2016-11-16', '2017-03-15', '2017-03-15', '2017-03-15'),
(66, 'Cut Meutia Riski', 'perempuan', '2016-07-17', 'Zaini', 'Palohme', '2016-09-17', '2016-10-11', '2016-10-11', '2016-11-16', '2016-11-16', '2016-12-19', '2016-12-19', '2017-02-17', '2017-01-19', '2017-01-19', '2017-06-06', '2017-06-06'),
(67, 'Asyifa', 'perempuan', '2016-10-07', 'Rusli', 'Palohme', '2016-10-07', '2016-11-22', '2016-11-22', '2017-02-17', '2017-02-17', '2017-04-15', '2017-04-15', '2017-05-15', '2017-06-15', '2017-06-15', '2017-08-12', '2017-08-12'),
(68, 'Maulina', 'perempuan', '2016-12-08', 'Rusdi', 'Palohme', '2016-12-09', '2017-01-22', '2017-04-15', '2017-04-22', '2017-06-15', '2017-06-15', '2017-07-15', '2017-07-15', '2017-08-12', '2017-08-12', '2017-10-16', '2017-10-16'),
(69, 'Fatimah Putri', 'perempuan', '2017-05-01', 'Mulyadi', 'Palohme', '2017-05-01', '2017-06-06', '2017-06-06', '2017-08-12', '2017-08-12', '2017-09-16', '2017-09-16', '2017-11-16', '2017-11-16', '2017-12-15', NULL, NULL),
(70, 'Alfin Zikri', 'laki-laki', '2017-09-22', 'Mawardi', 'Palohme', '2017-06-22', '2017-08-29', '2017-08-29', '2017-10-16', '2017-10-16', '2017-11-16', '2017-11-16', '2017-12-15', '2017-12-15', '2018-02-15', NULL, NULL),
(71, 'Aura Nazifa', 'perempuan', '2017-07-19', 'M.Yusuf', 'Palohme', '2017-07-19', '2017-09-15', '2017-09-15', '2017-10-16', '2017-10-16', '2017-11-16', '2017-11-16', '2017-12-15', '2017-12-15', '2018-02-15', NULL, NULL),
(72, 'Dinda Sholeha', 'perempuan', '2017-09-19', 'Bukhari', 'Palohme', '2017-09-20', '2017-11-16', '2017-11-16', '2018-01-16', '2018-01-16', '2018-02-15', '2018-02-15', '2018-03-16', '2018-03-16', '2018-03-16', NULL, NULL),
(73, 'Bayi Rosmiati', 'laki-laki', '2017-12-11', 'Husaini', 'Palohme', '2017-12-12', '2018-01-16', '2018-01-16', '2018-02-15', '2018-02-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Bayi Suryani', 'laki-laki', '2018-01-03', 'Suryani', 'Palohme', '2018-01-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Bayi Lisdawati', 'perempuan', '2018-01-22', 'Amrizal', 'Palohme', '2018-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Cut', 'perempuan', '2016-01-24', 'Rohani', 'Tanjong Raya', '2016-01-24', '2016-05-15', '2016-05-15', '2016-05-15', '2016-06-15', '2016-09-22', '2016-09-22', '2016-10-22', '2016-10-22', NULL, '2017-01-14', NULL),
(77, 'Nurul', 'perempuan', '2016-02-02', 'Irawati', 'Tanjong Raya', '2016-02-02', '2016-05-15', '2016-05-15', '2016-05-15', '2016-06-15', '2016-08-15', '2016-09-15', '2016-10-22', '2016-10-22', NULL, '2016-11-23', NULL),
(78, 'Bilqis', 'perempuan', '2016-12-22', 'Azizah', 'Tanjong Raya', '2016-12-22', '2017-01-21', '2017-03-18', '2017-03-18', '2017-04-21', '2017-04-21', '2017-06-16', '2017-05-20', '2017-08-17', '2017-08-17', NULL, NULL),
(79, 'Alisa', 'perempuan', '2017-01-23', 'Yusniar', 'Tanjong Raya', '2017-01-25', '2017-06-06', '2017-06-06', '2017-09-19', '2017-09-19', '2017-10-20', '2017-10-20', '2017-11-20', '2017-11-20', NULL, '2018-01-20', NULL),
(80, 'Arika', 'perempuan', '2017-05-14', 'Irma', 'Tanjong Raya', '2017-05-14', NULL, '2018-01-19', NULL, '2018-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'Rizka', 'perempuan', '2017-09-23', 'Emi', 'Tanjong Raya', '2017-09-23', NULL, '2017-10-19', NULL, '2017-11-09', NULL, '2017-12-09', NULL, '2018-01-26', '2018-08-16', NULL, NULL),
(82, 'Azka', 'perempuan', '2017-11-16', 'Atra', 'Tanjong Raya', '2017-11-16', NULL, '2018-01-20', NULL, '2018-01-19', NULL, '2018-03-19', NULL, NULL, NULL, NULL, NULL),
(83, 'Nisa', 'perempuan', '2017-05-06', 'Fatimah', 'Tanjong Raya', '2017-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'Cut Nisa', 'perempuan', '2018-05-16', 'Suryani', 'Tanjong Raya', '2018-05-16', NULL, '2018-07-18', NULL, '2018-08-18', NULL, '2018-09-18', NULL, '2018-09-18', NULL, NULL, NULL),
(85, 'Masyitah', 'perempuan', '2018-11-18', 'Nurbani', 'Tanjong Raya', '2018-11-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Syakira', 'perempuan', '2018-12-02', 'Nurlela', 'Tanjong Raya', '2018-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Balqis', 'perempuan', '2019-02-01', 'Darma', 'Tanjong Raya', '2019-02-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Alfatun', 'perempuan', '2019-03-01', 'Nuraini', 'Tanjong Raya', '2019-03-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Aulia', 'perempuan', '2019-03-10', 'Ida', 'Tanjong Raya', '2019-03-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'Bayi Imra', 'perempuan', '2019-12-26', 'Imra', 'Tanjong Raya', '2019-12-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'M.Aris', 'laki-laki', '2017-10-12', 'Yusra', 'Tanjong Raya', '2017-10-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'M.Arkan', 'laki-laki', '2018-06-01', 'Mana', 'Tanjong Raya', '2018-06-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'M.Fatih', 'laki-laki', '2019-04-26', 'Asmaul', 'Tanjong Raya', '2019-04-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'M.hafidz', 'laki-laki', '2018-02-01', 'M.Nazar', 'Pulo Gisa', '2018-02-01', NULL, '2018-08-15', '2018-08-15', '2018-09-17', '2018-09-17', '2018-11-17', NULL, '2018-12-17', NULL, NULL, NULL),
(95, 'Syamil Arrayan', 'laki-laki', '2018-07-17', 'Arwadi', 'Pulo Gisa', '2018-07-19', NULL, '2019-02-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'M.Sadan Nafis', 'laki-laki', '2018-07-28', 'Aswadi', 'Pulo Gisa', '2018-07-30', NULL, '2019-01-16', NULL, '2019-04-18', NULL, '2019-05-18', NULL, NULL, NULL, NULL, NULL),
(97, 'Ahmad Asyakir', 'laki-laki', '2018-11-06', 'Zahidi', 'Pulo Gisa', '2018-11-06', NULL, '2019-01-16', '2019-01-16', '2019-02-20', NULL, '2019-03-18', NULL, '2019-05-18', NULL, NULL, NULL),
(98, 'M.Shakil', 'laki-laki', '2019-01-20', 'Masri', 'Pulo Gisa', '2019-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Nyak Razi', 'laki-laki', '2019-04-05', 'M.Ali', 'Pulo Gisa', '2019-04-06', '2019-06-18', '2019-06-18', '2019-07-18', '2019-07-18', NULL, '2019-09-18', NULL, NULL, NULL, NULL, NULL),
(100, 'Baidhawi', 'laki-laki', '2019-07-23', 'Marzuki', 'Pulo Gisa', '2019-07-24', '2019-10-22', '2019-10-21', '2019-10-21', NULL, '2020-02-11', '2020-02-20', NULL, NULL, NULL, NULL, NULL),
(101, 'M.Shabir', 'laki-laki', '2019-09-25', 'Faizan', 'Pulo Gisa', '2019-09-25', '2020-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Salsabila', 'perempuan', '2019-05-23', 'Yusri', 'Pulo Gisa', '2019-05-23', NULL, '2019-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Safia', 'perempuan', '2019-06-01', 'M.Azmi', 'Pulo Gisa', '2019-06-01', '2019-06-18', '2019-06-18', NULL, '2019-08-08', NULL, '2019-09-19', NULL, '2020-02-20', NULL, '2020-02-20', NULL),
(104, 'Salsabila', 'perempuan', '2019-01-01', 'Fitriani', 'Lingka Kuta', '2019-01-01', '0000-00-00', '2019-02-01', '0000-00-00', '2019-03-01', '0000-00-00', '2019-04-01', '0000-00-00', '2019-05-01', '0000-00-00', '0000-00-00', '0000-00-00'),
(105, 'Kiswa Mahira', 'perempuan', '2019-01-23', 'Lia Zahara', 'Lingka Kuta', '2019-01-23', '0000-00-00', '2019-02-23', '0000-00-00', '2019-03-23', '0000-00-00', '2019-04-23', '0000-00-00', '2019-05-23', '0000-00-00', '0000-00-00', '0000-00-00'),
(106, 'Zakira A', 'perempuan', '2019-02-17', 'Mita Rafami', 'Lingka Kuta', '2019-02-17', '0000-00-00', '2019-03-17', '0000-00-00', '2019-04-17', '0000-00-00', '2019-05-17', '0000-00-00', '2019-06-17', '0000-00-00', '0000-00-00', '0000-00-00'),
(107, 'Cut Arsyila', 'perempuan', '2019-04-05', 'Ida Ruhama', 'Lingka Kuta', '2019-04-05', '2019-05-05', '2019-06-05', '2019-07-05', '2019-08-05', '2019-09-05', '2019-10-05', '2019-11-05', '2019-12-05', '0000-00-00', '2020-02-05', '0000-00-00'),
(108, 'Putri Alya', 'perempuan', '2019-05-07', 'Misbahul', 'Lingka Kuta', '2019-05-07', '0000-00-00', '2019-06-07', '0000-00-00', '2019-07-07', '0000-00-00', '2019-08-07', '0000-00-00', '2019-09-07', '0000-00-00', '0000-00-00', '0000-00-00'),
(109, 'Mizyana', 'perempuan', '2019-06-09', 'Sri Wahyuni', 'Lingka Kuta', '2019-06-09', '2019-07-09', '2019-08-09', '2019-08-09', '2019-09-09', '2019-10-09', '2019-10-09', '2019-11-09', '2019-12-09', '0000-00-00', '0000-00-00', '0000-00-00'),
(110, 'Andara', 'perempuan', '2019-06-30', 'Yenni M', 'Lingka Kuta', '2019-06-30', '2019-07-02', '2019-08-01', '2019-08-01', '2019-09-24', '2019-10-27', '2019-10-27', '2019-11-10', '2019-12-05', '0000-00-00', '0000-00-00', '0000-00-00'),
(111, 'Nabila', 'perempuan', '2019-07-06', 'Engkus', 'Lingka Kuta', '2019-07-06', '2019-08-11', '2019-09-14', '2019-09-14', '2019-10-24', '2019-10-24', '2019-11-09', '2019-11-09', '2019-12-05', '0000-00-00', '0000-00-00', '0000-00-00'),
(112, 'Nashwa', 'perempuan', '2019-08-20', 'Nuralfita', 'Lingka Kuta', '2019-08-20', '2019-09-20', '2019-09-20', '2019-10-20', '2019-11-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(113, 'By Laki-laki', 'laki-laki', '2019-08-03', 'Abdul', 'Lingka Kuta', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Najwa Arifa', 'perempuan', '2016-06-01', 'Nuraini', 'Paloh Kayee Kunyet', '0000-00-00', '0000-00-00', '2017-01-11', '0000-00-00', '2017-02-17', '0000-00-00', '2017-04-04', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(115, 'Atika Zahra', 'perempuan', '2016-07-07', 'Rosnita', 'Paloh Kayee Kunyet', '0000-00-00', '0000-00-00', '2017-01-11', '0000-00-00', '2017-02-20', '0000-00-00', '2017-03-17', '0000-00-00', '2017-04-04', '0000-00-00', '0000-00-00', '0000-00-00'),
(116, 'M. Gibran', 'laki-laki', '2016-08-01', 'Azizah', 'Paloh Kayee Kunyet', '0000-00-00', '0000-00-00', '2017-01-11', '0000-00-00', '2017-02-20', '0000-00-00', '2017-03-22', '0000-00-00', '2017-04-21', '0000-00-00', '0000-00-00', '0000-00-00'),
(117, 'Abdul', 'laki-laki', '2017-01-04', 'Lidawati', 'Paloh Kayee Kunyet', '0000-00-00', '0000-00-00', '2017-04-21', '0000-00-00', '2017-06-20', '0000-00-00', '2017-07-20', '0000-00-00', '2017-09-20', '0000-00-00', '0000-00-00', '0000-00-00'),
(118, 'Abral', 'laki-laki', '2017-03-06', 'Jumiati', 'Paloh Kayee Kunyet', '2017-03-06', '2017-04-21', '2017-04-21', '0000-00-00', '2017-06-20', '0000-00-00', '2017-07-20', '0000-00-00', '2017-09-20', '0000-00-00', '0000-00-00', '0000-00-00'),
(119, 'Anisa Sabila', 'perempuan', '2017-06-07', 'Salmawati', 'Paloh Kayee Kunyet', '2017-06-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(120, 'Muhammad Rayyan', 'laki-laki', '2017-07-06', 'Nasriah', 'Paloh Kayee Kunyet', '2017-07-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(121, 'Shafi Mubarak', 'laki-laki', '2017-11-01', 'Mursyidah', 'Paloh Kayee Kunyet', '2017-11-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(122, 'Ziya Ulhaq', 'laki-laki', '2018-02-01', 'Lindawati', 'Paloh Kayee Kunyet', '2018-02-01', '0000-00-00', '2018-04-20', '0000-00-00', '2018-05-12', '0000-00-00', '2018-06-19', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(123, 'Afifah Talita', 'perempuan', '2018-01-22', 'Maryati', 'Paloh Kayee Kunyet', '0000-00-00', '2019-02-20', '2019-02-20', '0000-00-00', '2019-02-20', '0000-00-00', '2019-04-19', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(124, 'Naziratul Abidah', 'perempuan', '2019-03-06', 'Raihanti', 'Cot Tufah', '2019-03-06', '0000-00-00', '2019-05-10', '0000-00-00', '2019-06-17', '0000-00-00', '2019-09-03', '0000-00-00', '2019-11-12', '0000-00-00', '0000-00-00', '0000-00-00'),
(125, 'Kafiya Humaira', 'perempuan', '2019-03-22', 'Suryana', 'Cot Tufah', '2019-03-22', '0000-00-00', '2019-07-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(126, 'Zidan', 'laki-laki', '2019-04-01', 'Rahmiati', 'Cot Tufah', '0000-00-00', '0000-00-00', '2019-06-17', '0000-00-00', '2019-08-03', '0000-00-00', '2019-10-08', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(127, 'M. Hafdhal', 'laki-laki', '2019-04-12', 'Sapiah', 'Cot Tufah', '2019-04-12', '0000-00-00', '2019-07-13', '0000-00-00', '2019-09-03', '0000-00-00', '2019-10-08', '0000-00-00', '2019-11-12', '0000-00-00', '0000-00-00', '0000-00-00'),
(128, 'Aura Azizah', 'perempuan', '2019-04-28', 'Aklima', 'Cot Tufah', '2019-04-29', '0000-00-00', '2019-06-17', '0000-00-00', '2019-09-03', '0000-00-00', '2019-11-12', '0000-00-00', '2020-01-11', '0000-00-00', '0000-00-00', '0000-00-00'),
(129, 'Muvaddhal', 'laki-laki', '2019-05-01', 'Ruhana', 'Cot Tufah', '2019-05-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(130, 'Syuqran', 'laki-laki', '2019-06-01', 'Nurhayati', 'Cot Tufah', '2019-06-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(131, 'Tanischa', 'perempuan', '2019-06-07', 'Nurmalisda', 'Cot Tufah', '2019-06-07', '0000-00-00', '2019-09-03', '0000-00-00', '2019-10-08', '0000-00-00', '2019-11-12', '0000-00-00', '2020-01-11', '0000-00-00', '0000-00-00', '0000-00-00'),
(132, 'Dilara Shafia', 'perempuan', '2019-07-13', 'Mahdalena', 'Cot Tufah', '2019-07-13', '0000-00-00', '2019-10-08', '0000-00-00', '2019-12-10', '0000-00-00', '2020-01-11', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(133, 'M. Alhanan', 'laki-laki', '2018-01-01', 'Nurhayati', 'Cot Puuk', '2018-01-01', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(134, 'Aqila Humaira', 'perempuan', '2018-01-27', 'Bapak Aqila', 'Cot Puuk', '2018-01-27', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(135, 'Arisa Azahra', 'perempuan', '2018-02-01', 'Badriah', 'Cot Puuk', '2018-02-01', '0000-00-00', '2018-03-12', '0000-00-00', '2018-04-11', '0000-00-00', '2018-05-11', '0000-00-00', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00'),
(136, 'M. Yaseer', 'laki-laki', '2018-03-16', 'Maya Sri', 'Cot Puuk', '2018-03-16', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(137, 'Aqifa Syakira', 'perempuan', '2018-05-04', 'Fauziah', 'Cot Puuk', '2018-05-04', '0000-00-00', '2018-08-10', '0000-00-00', '2018-09-10', '0000-00-00', '2018-10-10', '0000-00-00', '2018-12-11', '0000-00-00', '0000-00-00', '0000-00-00'),
(138, 'M. Irsyad', 'laki-laki', '2018-03-28', 'Mauliya', 'Cot Puuk', '2018-03-28', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(139, 'M. Farzan', 'laki-laki', '2018-04-03', 'ti Hawa', 'Cot Puuk', '2018-04-03', '0000-00-00', '2018-08-09', '0000-00-00', '2018-09-10', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(140, 'Fika Alisha', 'perempuan', '2018-06-03', 'Evi', 'Cot Puuk', '2018-06-03', '0000-00-00', '2018-08-10', '0000-00-00', '2018-09-10', '0000-00-00', '2018-10-10', '0000-00-00', '2018-12-11', '0000-00-00', '0000-00-00', '0000-00-00'),
(141, 'Adifa', 'perempuan', '2018-06-18', 'Melisa', 'Cot Puuk', '2018-06-18', '0000-00-00', '2018-08-10', '0000-00-00', '2018-09-10', '0000-00-00', '2018-11-10', '0000-00-00', '2018-12-10', '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `kotajuang`
--

CREATE TABLE `kotajuang` (
  `id_imunisasi` int(11) NOT NULL,
  `nama_bayi` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `hb_0` date DEFAULT NULL,
  `bcg` date DEFAULT NULL,
  `pol_1` date DEFAULT NULL,
  `dpt_hb_hib_1` date DEFAULT NULL,
  `pol_2` date DEFAULT NULL,
  `dpt_hb_hib_2` date DEFAULT NULL,
  `pol_3` date DEFAULT NULL,
  `dpt_hb_hib_3` date DEFAULT NULL,
  `pol_4` date DEFAULT NULL,
  `ipv` date DEFAULT NULL,
  `campak` date DEFAULT NULL,
  `imunisasi_lengkap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kotajuang`
--

INSERT INTO `kotajuang` (`id_imunisasi`, `nama_bayi`, `jenis_kelamin`, `tanggal_lahir`, `nama_ortu`, `alamat`, `hb_0`, `bcg`, `pol_1`, `dpt_hb_hib_1`, `pol_2`, `dpt_hb_hib_2`, `pol_3`, `dpt_hb_hib_3`, `pol_4`, `ipv`, `campak`, `imunisasi_lengkap`) VALUES
(1, 'Bayi Maswani', 'perempuan', '2019-03-16', 'Maswani', 'Menasah Dayah', '2019-03-20', '2019-04-11', '2019-03-20', '2019-05-11', '2019-04-11', '2019-09-11', '2019-05-14', '2019-10-11', '2019-09-11', '2019-12-11', '2019-12-11', '2019-12-11'),
(2, 'Aisyah', 'perempuan', '2019-03-31', 'Yuliana', 'Menasah Dayah', '2019-03-31', '2019-05-14', '2019-05-14', '2019-07-10', '2019-07-10', '2019-08-13', '2019-08-13', '2019-10-11', '2019-10-10', '2019-12-11', '2019-12-11', '2019-12-11'),
(3, 'Muhammad', 'laki-laki', '2019-02-27', 'Lia', 'Menasah Dayah', '2019-03-04', '2019-05-14', '2019-03-12', '2019-03-12', '2019-04-11', '2019-04-11', '2019-05-14', '2019-07-10', '2019-07-10', '2019-12-11', '2019-12-11', '2019-12-11'),
(4, 'Iqbal Fauzan', 'laki-laki', '2018-09-06', 'Rabiah', 'Menasah Dayah', '2018-09-10', '2019-05-14', '2019-02-06', '2019-03-12', '2019-03-12', '2019-07-10', '2019-05-14', '2019-09-11', '2019-07-10', '2019-07-10', '2019-08-13', '2019-08-13'),
(24, 'Putri Azzahra', 'perempuan', '2018-08-28', 'Erawati', 'Menasah Dayah', '2018-08-29', '2018-12-10', '2019-01-11', '2019-01-11', '2019-02-06', '2019-02-06', '2019-03-12', '2019-03-12', '2019-04-11', '2019-05-16', '2019-08-13', '2019-08-13'),
(25, 'M. Adam', 'laki-laki', '2018-11-08', 'Nurmala', 'Menasah Dayah', '2018-11-09', '2019-01-11', '2019-01-11', '2019-03-12', '2019-03-12', '2019-07-10', '2019-07-10', '2019-09-11', '2019-09-11', '2019-10-11', '2019-08-13', '2019-08-13'),
(26, 'Cut Fatimah', 'perempuan', '2018-09-04', 'Rahmianti', 'Menasah Dayah', '2018-09-04', '2019-01-11', '2019-01-11', '2019-02-06', '2019-02-06', '2019-03-12', '2019-03-12', '2019-03-16', '2019-04-11', '2019-04-11', '2019-05-14', '2019-08-13'),
(27, 'Ruhiya', 'perempuan', '2018-05-04', 'Fitriani', 'Menasah Dayah', '2018-05-08', '2018-07-10', '2018-07-10', '2018-08-11', '2018-08-11', '2018-09-12', '2018-12-10', '2018-12-10', '2019-05-14', '2019-02-16', '2019-03-16', '2019-03-16'),
(28, 'Fatimah Azzahra', 'perempuan', '2019-02-01', 'Vivi', 'Menasah Dayah', '2019-03-16', '2019-04-16', '2019-04-16', '2019-05-12', '2019-05-12', '2019-06-17', '2019-06-17', '2019-07-16', '2019-08-16', '2019-09-16', '2019-10-16', '2019-10-16'),
(29, 'Afiq Razin', 'laki-laki', '2019-02-24', 'Nurhayati', 'Menasah Dayah', '2019-02-28', '2019-04-11', '2019-03-12', '2019-05-14', '2019-04-11', '2019-07-10', '2019-05-14', '2019-05-14', '2019-06-16', '2019-07-16', '2019-09-16', '2019-09-16'),
(30, 'Aiza', 'perempuan', '2018-07-24', 'Nanda', 'Geudong Alue', '2018-07-24', '2018-10-16', '2018-10-16', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(31, 'Silvia Darma', 'perempuan', '2018-07-27', 'Nurhayati', 'Geudong Alue', '2018-07-27', '2018-09-12', '2018-09-12', '2018-11-23', '2019-04-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(32, 'Riesa Lidyawati', 'perempuan', '2018-07-29', 'Silvia', 'Geudong Alue', '2018-07-30', '2018-10-16', '2018-10-16', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(33, 'Aisya Alifa', 'perempuan', '2018-07-17', 'Yumiati', 'Geudong Alue', '0000-00-00', '2018-07-18', '2018-07-18', '2018-07-18', '2018-10-16', '2019-01-12', '2019-01-12', '2019-02-12', '2019-02-12', '2019-03-12', '2019-10-15', '2019-10-15'),
(34, 'Siska', 'perempuan', '2018-08-26', 'Rauzana', 'Geudong Alue', '2018-08-27', '2018-10-16', '2018-10-16', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(35, 'Zahratul Rahmi', 'perempuan', '2018-08-24', 'Irmalia', 'Geudong Alue', '2018-08-27', '2018-10-16', '2018-10-16', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '0000-00-00', '2019-10-15'),
(36, 'Azam Fahrezi', 'laki-laki', '2018-08-19', 'Jannah', 'Geudong Alue', '2018-08-20', '2018-11-23', '2018-11-23', '2019-01-12', '2019-04-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-08-12', '2019-10-15'),
(37, 'M.Latiful Asral', 'laki-laki', '2018-08-10', 'Nurhayati', 'Geudong Alue', '2018-08-01', '2018-10-16', '2018-10-16', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(38, 'Gibran Algifari', 'laki-laki', '2018-09-06', 'Nora Tursini', 'Geudong Alue', '2018-09-10', '2018-11-23', '2018-11-23', '2019-02-12', '2019-02-12', '2019-04-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(39, 'Saidina Ali', 'laki-laki', '2018-10-18', 'Muqmina', 'Geudong Alue', '2018-11-23', '2018-11-23', '2019-01-12', '2019-01-12', '2019-02-12', '2019-03-12', '2019-04-12', '2019-05-12', '2019-05-12', '2019-06-12', '2019-10-15', '2019-10-15'),
(40, 'Azalea', 'perempuan', '2019-04-05', 'Fonna Putri', 'Meunasah Reuleut', '2019-04-05', '2019-06-12', '2019-06-12', '2019-07-09', '2019-07-09', '2019-08-09', '2019-08-09', '2020-01-08', '2020-01-08', '2020-02-05', '0000-00-00', '0000-00-00'),
(41, 'M.Arkan', 'laki-laki', '2019-04-12', 'Yulia', 'Meunasah Reuleut', '2019-04-12', '2019-06-12', '2019-06-12', '2019-07-09', '2019-07-09', '2019-08-06', '2019-08-06', '2019-09-06', '2019-07-12', '2020-01-07', '2020-02-05', '2020-02-05'),
(42, 'Azkiyatun Nisa', 'perempuan', '2019-04-10', 'Kurniati', 'Meunasah Reuleut', '2019-04-10', '2019-06-12', '2019-06-12', '2019-07-09', '2019-07-09', '2019-08-09', '2019-08-09', '2019-07-12', '2020-01-08', '2020-01-08', '2020-02-05', '2020-02-05'),
(43, 'Farah Ziba', 'perempuan', '2019-04-07', 'Siti Nurhaliza', 'Meunasah Reuleut', '2019-04-07', '2019-06-14', '2019-06-14', '2019-07-09', '2019-07-09', '2019-08-06', '2019-08-06', '2019-09-06', '2019-09-06', '2019-12-10', '2020-01-07', '2020-01-07'),
(44, 'M. Azzam', 'laki-laki', '2019-04-15', 'Roslina', 'Meunasah Reuleut', '2019-04-15', '2019-06-14', '2019-06-14', '2019-07-09', '2019-07-09', '2019-08-09', '2019-08-09', '2019-09-06', '2019-09-06', '2019-12-10', '2020-01-08', '2020-01-08'),
(45, 'Kenesya Putri', 'perempuan', '2019-04-08', 'Kasmiati', 'Meunasah Reuleut', '2019-04-08', '2019-06-14', '2019-06-14', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(46, 'Riskia Lutfi', 'perempuan', '2019-05-24', 'Yanti Octavia', 'Meunasah Reuleut', '2019-05-24', '2019-07-09', '2019-07-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(47, 'Azril Rafif', 'laki-laki', '2019-05-06', 'Sari Andini', 'Meunasah Reuleut', '2019-07-05', '2019-07-05', '2019-08-05', '2019-08-05', '2019-09-05', '2019-09-05', '2019-10-05', '2019-10-05', '2019-11-05', '2019-12-05', '2020-02-05', '2020-02-05'),
(48, 'Al Hafiz', 'laki-laki', '2019-04-15', 'Zahraini', 'Meunasah Reuleut', '2019-04-15', '2019-06-14', '2019-06-14', '2019-07-09', '2019-07-09', '2019-08-09', '2019-08-09', '2019-09-06', '2019-09-06', '2019-12-10', '2020-01-08', '2020-01-08'),
(49, 'Putri Anzalna', 'perempuan', '2019-04-15', 'Roslina', 'Meunasah Reuleut', '2019-04-15', '2019-06-14', '2019-06-14', '2019-07-09', '2019-07-09', '2019-08-09', '2019-08-09', '2019-09-06', '2019-09-06', '2019-12-10', '2020-01-08', '2020-01-08'),
(50, 'Nabila Suci', 'perempuan', '2019-05-11', 'Heny', 'Buket Teukuh', '0000-00-00', '2019-06-12', '2019-06-12', '2019-07-05', '2019-07-05', '2019-08-05', '2019-08-05', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(51, 'Mufadhalul Fajri', 'laki-laki', '2019-06-25', 'Nanda', 'Buket Teukuh', '2019-06-27', '0000-00-00', '2019-09-06', '2019-09-06', '2019-10-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(52, 'M. Rizky', 'laki-laki', '2019-07-09', 'Mutia', 'Buket Teukuh', '2019-07-10', '0000-00-00', '2019-09-06', '0000-00-00', '2019-10-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(53, 'Bayi Juliana', 'perempuan', '2019-07-11', 'Juliana', 'Buket Teukuh', '2019-07-14', '0000-00-00', '2019-09-06', '0000-00-00', '2019-10-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(54, 'Izza Muzaiyana', 'perempuan', '2019-08-13', 'Marlena', 'Buket Teukuh', '2019-08-16', '0000-00-00', '2019-09-06', '0000-00-00', '2019-10-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(55, 'Bayi Dewi', 'perempuan', '2019-08-05', 'Dewi Santi', 'Buket Teukuh', '2019-08-07', '0000-00-00', '2019-10-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(56, 'Noval Athaila', 'laki-laki', '2019-09-12', 'Musnidar', 'Buket Teukuh', '2019-09-18', '0000-00-00', '2020-01-04', '0000-00-00', '2020-02-05', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(57, 'Bayi Rina', 'laki-laki', '2019-09-04', 'Satta Rina', 'Buket Teukuh', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(58, 'M. Rafa Haziq', 'laki-laki', '2019-09-16', 'Nelly Andriani', 'Buket Teukuh', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(59, 'Inara', 'perempuan', '2019-08-20', 'Septia', 'Buket Teukuh', '0000-00-00', '2019-09-20', '2019-09-20', '2019-11-06', '2019-11-06', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(60, 'Munandar', 'laki-laki', '2018-04-10', 'Reni', 'Geulanggang Baro', '2018-04-11', '2018-06-25', '2018-06-25', '2018-07-18', '2018-07-18', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18'),
(61, 'Anasya', 'perempuan', '2018-04-15', 'Ana M', 'Geulanggang Baro', '2018-04-14', '2018-06-25', '2018-06-25', '2018-07-18', '2018-07-18', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18'),
(62, 'Riski', 'laki-laki', '2018-05-10', 'Aisyah', 'Geulanggang Baro', '2018-05-15', '2018-06-25', '2018-06-25', '2018-07-18', '2018-07-18', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2019-01-18', '2019-02-19', '2019-02-19'),
(63, 'M. Putra', 'laki-laki', '2018-05-13', 'Amalia', 'Geulanggang Baro', '2018-05-14', '2018-06-25', '2018-06-25', '2018-07-18', '2018-07-18', '2018-10-19', '2018-10-19', '2018-11-21', '2019-01-18', '2019-02-19', '2019-03-19', '2019-03-19'),
(64, 'Nafiz Ramadhan', 'laki-laki', '2018-06-04', 'Yusnita', 'Geulanggang Baro', '2018-06-07', '2018-06-25', '2018-06-25', '2018-07-18', '2018-07-18', '2018-10-19', '2018-10-19', '2018-11-21', '2019-01-18', '2019-02-19', '2019-03-19', '2019-03-19'),
(65, 'TM Ariandi', 'laki-laki', '2018-08-02', 'Sri Haryani', 'Geulanggang Baro', '2018-08-05', '2018-10-19', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18', '2019-02-10', '2019-02-10', '2019-03-16', '2019-03-16'),
(66, 'Raffa', 'laki-laki', '2018-10-10', 'Cut Halimah', 'Geulanggang Baro', '2018-10-19', '2018-10-19', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18', '2019-02-10', '2019-02-10', '2019-03-16', '2019-03-16'),
(67, 'Raesya Salsabila', 'perempuan', '2018-09-19', 'Wahyuni', 'Geulanggang Baro', '2018-09-19', '2018-10-19', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18', '2019-02-10', '2019-02-10', '2019-03-16', '2019-03-16'),
(68, 'Reza Putra', 'laki-laki', '2018-09-10', 'Maryati', 'Geulanggang Baro', '2018-09-10', '2018-10-19', '2018-10-19', '2018-10-19', '2018-11-21', '2018-11-21', '2019-01-18', '2019-01-18', '2019-02-10', '2019-02-10', '2019-03-16', '2019-03-16'),
(69, 'Rafie Pratama', 'laki-laki', '2018-11-02', 'Tri Pujianti', 'Geulanggang Baro', '2018-11-02', '2018-11-21', '2018-11-21', '2018-12-18', '2018-12-18', '2018-12-18', '2019-01-18', '2019-01-18', '2019-02-10', '2019-02-10', '2019-03-16', '2019-03-16'),
(70, 'M. Ramadhan', 'laki-laki', '2019-05-21', 'Sri Wildawati', 'Blang Tingkeum', '2019-05-22', '2019-06-19', '2019-06-19', '2019-07-12', '2019-07-12', '2019-08-16', '2019-08-16', '2019-10-15', '2019-10-15', '0000-00-00', '2020-02-12', '0000-00-00'),
(71, 'Shifra Salsabila', 'perempuan', '2019-06-12', 'Emi Rossa', 'Blang Tingkeum', '2019-06-12', '2019-06-19', '2019-06-19', '0000-00-00', '2019-08-16', '0000-00-00', '2019-09-13', '0000-00-00', '2020-01-15', '0000-00-00', '0000-00-00', '0000-00-00'),
(72, 'Nabila Fazilla', 'perempuan', '2019-06-20', 'Dewi Fazilla', 'Blang Tingkeum', '2019-06-24', '2019-07-12', '2019-07-12', '2019-08-16', '2019-08-12', '2019-09-13', '2019-10-15', '2019-12-13', '2019-12-13', '0000-00-00', '0000-00-00', '0000-00-00'),
(73, 'Aulia Izzati', 'perempuan', '2019-08-20', 'Bariarti', 'Blang Tingkeum', '2019-08-21', '2019-09-13', '2019-09-13', '2019-11-13', '2019-11-13', '2020-01-15', '2020-01-15', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(74, 'Aska Sidqi', 'laki-laki', '2019-08-20', 'Sumarni', 'Blang Tingkeum', '2019-08-21', '2019-09-13', '2019-09-13', '2019-11-13', '2019-11-13', '2020-01-15', '2020-01-15', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(75, 'M. Riski', 'laki-laki', '2019-10-04', 'Rara Amanda', 'Blang Tingkeum', '2019-10-05', '2019-12-13', '2019-12-13', '2020-02-12', '2020-02-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(76, 'Nabila Safira', 'perempuan', '2019-11-15', 'Mawarni', 'Blang Tingkeum', '2019-11-16', '2019-12-13', '2019-12-13', '2020-02-12', '2020-02-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(77, 'M. Bilal', 'laki-laki', '2019-11-15', 'Jumiana', 'Blang Tingkeum', '2019-11-16', '2020-01-20', '2020-02-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(78, 'Aisya Salsabila', 'perempuan', '2020-02-01', 'Eva Fara Mutia', 'Blang Tingkeum', '2020-02-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2019-10-15', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(79, 'Bayi Fitri', 'laki-laki', '2020-02-01', 'Fitri Eliza', 'Blang Tingkeum', '2020-02-03', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(80, 'M. Qaisan', 'laki-laki', '2019-04-14', 'Elliza', 'Meunasah Blang', '2019-04-14', '2019-05-08', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-01-08', '2020-01-08'),
(81, 'Gebrina Herlanda', 'perempuan', '2019-05-02', 'Yusmeliza', 'Meunasah Blang', '2019-05-02', '2019-05-08', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-01-08', '2020-01-08'),
(82, 'M. Ikram', 'laki-laki', '2019-05-15', 'Yusnidar', 'Meunasah Blang', '2019-05-16', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '0000-00-00', '0000-00-00'),
(83, 'Akif', 'laki-laki', '2019-05-15', 'Lailawati', 'Meunasah Blang', '2019-05-16', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-02-16', '2020-02-16'),
(84, 'Syecha', 'perempuan', '2019-05-12', 'Raudhatul', 'Meunasah Blang', '2019-05-13', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '0000-00-00', '0000-00-00'),
(85, 'Malik Ibrahim', 'laki-laki', '2019-03-19', 'Desrina ', 'Meunasah Blang', '2019-03-20', '2019-04-14', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '0000-00-00', '0000-00-00', '0000-00-00'),
(86, 'M. Hilal', 'laki-laki', '2019-06-10', 'Rahmani', 'Meunasah Blang', '2019-06-10', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(87, 'Hifza Annasya', 'perempuan', '2019-06-21', 'Yulia Fauza', 'Meunasah Blang', '2019-06-21', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(88, 'M. Rafi', 'laki-laki', '2019-06-07', 'Suryani', 'Meunasah Blang', '2019-06-07', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(89, 'Bayi Rizayani', 'perempuan', '2020-06-02', 'Rizayani', 'Meunasah Blang', '2019-06-03', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(90, 'Zulaikha', 'perempuan', '2019-04-14', 'Nurul Aulia', 'Geulanggang Gampong', '2019-04-14', '2019-05-08', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-01-08', '2020-01-08'),
(91, 'Ahmad', 'laki-laki', '2019-05-02', 'Trisna Hayati', 'Geulanggang Gampong', '2019-05-02', '2019-05-08', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-01-08', '2020-01-08'),
(92, 'Naura Rania', 'perempuan', '2019-05-15', 'Ajirni', 'Geulanggang Gampong', '2019-05-16', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '0000-00-00', '0000-00-00'),
(93, 'Noratul Husna', 'perempuan', '2019-05-15', 'Ernita', 'Geulanggang Gampong', '2019-05-16', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2020-02-16', '2020-02-16'),
(94, 'M. Rizki', 'laki-laki', '2019-05-12', 'Sura Rosa', 'Geulanggang Gampong', '2019-05-13', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '0000-00-00', '0000-00-00'),
(95, 'Arisha', 'perempuan', '2019-03-19', 'Tursina', 'Geulanggang Gampong', '2019-03-20', '2019-04-14', '2019-05-08', '2019-06-12', '2019-06-12', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '0000-00-00', '0000-00-00', '0000-00-00'),
(96, 'Yusuf Habibi', 'laki-laki', '2019-06-10', 'Nurlaili', 'Geulanggang Gampong', '2019-06-10', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(97, 'Razzan', 'laki-laki', '2019-06-21', 'Marziati', 'Geulanggang Gampong', '2019-06-21', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(98, 'Aqifa Naila', 'perempuan', '2019-06-07', 'Mairiani', 'Geulanggang Gampong', '2019-06-07', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(99, 'Salsabila', 'perempuan', '2020-06-02', 'Mutia', 'Geulanggang Gampong', '2019-06-03', '2019-07-08', '2019-07-08', '2019-07-08', '2019-08-07', '2019-08-07', '2019-09-07', '2019-09-07', '2019-10-07', '2019-10-07', '0000-00-00', '0000-00-00'),
(100, 'Syafa Humaina', 'perempuan', '2019-04-27', 'Fatimah Zahara', 'Geudong-geudong', '2019-04-24', '2019-07-19', '2019-07-19', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2020-01-18', '0000-00-00'),
(101, 'Afifa Syahira', 'perempuan', '2019-05-30', 'Nilawati', 'Geudong-geudong', '2019-05-30', '2019-07-19', '2019-07-19', '2019-11-19', '2019-11-19', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(102, 'Muhammad Alfatih', 'laki-laki', '2019-06-13', 'Murniati', 'Geudong-geudong', '2019-06-13', '2019-08-21', '2019-08-21', '2019-09-20', '0000-00-00', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00'),
(103, 'M. Rizki', 'laki-laki', '2019-07-23', 'Sri Imelda', 'Geudong-geudong', '2019-07-23', '2019-08-21', '2019-08-21', '2019-09-20', '0000-00-00', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00'),
(104, 'M. Zain', 'laki-laki', '2019-06-28', 'Risna Riyanti', 'Geudong-geudong', '2019-06-28', '2019-08-21', '2019-08-21', '2019-09-20', '2019-09-20', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00'),
(105, 'Aqsa', 'laki-laki', '2019-08-07', 'Herliana', 'Geudong-geudong', '2019-08-07', '2019-09-20', '2019-09-20', '2019-10-20', '2019-10-20', '2019-11-19', '2019-11-19', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(106, 'Salsabila Putri', 'perempuan', '2019-08-07', 'Husna', 'Geudong-geudong', '2019-08-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(107, 'Naufal', 'laki-laki', '2019-09-14', 'Risti', 'Geudong-geudong', '2019-09-14', '2019-10-20', '2019-10-20', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(108, 'Sarah', 'perempuan', '2019-08-27', 'Fitria Syahwal', 'Geudong-geudong', '2019-08-27', '2019-09-20', '2019-10-20', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(109, 'Zaskia Amania', 'perempuan', '2019-08-26', 'Imazul Hima', 'Geudong-geudong', '2019-08-26', '2019-11-19', '2019-11-19', '2019-12-20', '2019-12-20', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(110, 'Syamil', 'laki-laki', '2018-12-03', 'Khairunnisa', 'Meunasah Capa', '2018-12-04', '2019-01-23', '2019-01-23', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(111, 'Rarda Khadijah', 'perempuan', '2019-01-18', 'Kartika', 'Meunasah Capa', '2019-01-18', '2019-02-19', '2019-02-19', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(112, 'Sabrina', 'perempuan', '2019-02-16', 'Una Agustina', 'Meunasah Capa', '2019-02-17', '2019-04-16', '2019-04-16', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(113, 'Oemal Hamzah', 'perempuan', '2019-01-22', 'Rahmil Izza', 'Meunasah Capa', '2019-01-22', '2019-02-19', '2019-02-19', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(114, 'T. Daffa', 'laki-laki', '2019-03-11', 'Cut Putri', 'Meunasah Capa', '2019-03-12', '2019-04-16', '2019-04-16', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(115, 'Khalil Safian', 'laki-laki', '2019-02-21', 'Elsa', 'Meunasah Capa', '2019-02-22', '2019-04-16', '2019-04-16', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(116, 'M. Rohit', 'laki-laki', '2019-02-21', 'Putri Oktaviani', 'Meunasah Capa', '2019-02-22', '2019-04-16', '2019-04-16', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(117, 'Fadil', 'laki-laki', '2019-03-09', 'Fauziah', 'Meunasah Capa', '2019-03-10', '2019-04-16', '2019-04-16', '2019-04-16', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-10-19', '2019-10-19'),
(118, 'Erika Dara Fonna', 'perempuan', '2019-04-12', 'Asmawati', 'Meunasah Capa', '2019-04-12', '2019-05-18', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-08-21', '2019-08-21', '2019-10-19', '2019-10-19'),
(119, 'Putri Dara Fonna', 'perempuan', '2019-04-22', 'Nora', 'Meunasah Capa', '2019-04-22', '2019-05-18', '2019-05-18', '2019-05-18', '2019-06-22', '2019-06-22', '2019-07-17', '2019-07-17', '2019-08-21', '2019-08-21', '2019-10-19', '2019-10-19'),
(120, 'Qanitha Hafiza', 'perempuan', '2018-12-10', 'Fitriyani', 'Lhok Awe Teungoh', '2018-12-11', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(121, 'Khairul Azzahdi', 'laki-laki', '2018-12-15', 'Suryani', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(122, 'Fitri Azizah', 'perempuan', '2018-12-20', 'Safati', 'Lhok Awe Teungoh', '2018-12-21', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(123, 'M. Fadhil', 'laki-laki', '2019-01-01', 'Nurasma', 'Lhok Awe Teungoh', '2019-01-02', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(124, 'Siti Mulyana', 'perempuan', '2019-01-05', 'Sakdiah', 'Lhok Awe Teungoh', '2019-01-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-12-05', '0000-00-00'),
(125, 'Zikril Maula', 'perempuan', '2019-01-10', 'Rini', 'Lhok Awe Teungoh', '2019-01-16', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-12-06', '0000-00-00'),
(126, 'Ahmad Affar', 'laki-laki', '2019-01-15', 'Fitri', 'Lhok Awe Teungoh', '2019-01-16', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-12-06', '0000-00-00'),
(127, 'C. Najla', 'perempuan', '2019-01-16', 'Irna', 'Lhok Awe Teungoh', '2019-01-17', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-12-06', '0000-00-00'),
(128, 'M. Farhan A', 'laki-laki', '2019-02-02', 'Fitri', 'Lhok Awe Teungoh', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '0000-00-00', '2019-12-06', '0000-00-00'),
(129, 'Alvin', 'laki-laki', '2019-03-02', 'Nilawati', 'Lhok Awe Teungoh', '2019-03-03', '2019-05-07', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '2019-07-05', '2019-07-05', '2019-08-06', '0000-00-00', '2019-12-06', '0000-00-00'),
(130, 'Lukman Hakim', 'laki-laki', '2019-03-02', 'Sri Wahyuni', 'Lhok Awe Teungoh', '2019-03-03', '2019-05-07', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '2019-07-05', '2019-07-05', '2019-08-06', '0000-00-00', '2019-12-06', '0000-00-00'),
(131, 'Annis H', 'perempuan', '2019-03-02', 'Rini', 'Lhok Awe Teungoh', '2019-03-03', '2019-05-07', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '2019-07-05', '2019-07-05', '2019-08-06', '0000-00-00', '2019-12-06', '0000-00-00'),
(132, 'Siti Fatimah', 'perempuan', '2019-03-02', 'Nurasma', 'Lhok Awe Teungoh', '2019-03-03', '2019-05-07', '2019-05-07', '2019-05-07', '2019-06-11', '2019-06-11', '2019-07-05', '2019-07-05', '2019-08-06', '0000-00-00', '2019-12-06', '0000-00-00'),
(133, 'Alesa', 'perempuan', '2018-12-15', 'Nur Annalia', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(134, 'Salman Alfarisi', 'laki-laki', '2018-12-15', 'Zuraida', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(135, 'Cut Fahira', 'perempuan', '2018-12-15', 'Lusiana', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(136, 'Fitri Azizah', 'perempuan', '2018-12-15', 'Sakdiah', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(137, 'Azkia Maysyura', 'perempuan', '2018-12-15', 'Siti Sundari', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(138, 'M. Jamal', 'laki-laki', '2018-12-15', 'Mardhiah', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(139, 'Siti Naryam', 'perempuan', '2018-12-15', 'Nurlaili', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(140, 'M. Arif', 'laki-laki', '2018-12-15', 'Nisfa M', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(141, 'T. Azko f', 'laki-laki', '2018-12-15', 'Hernita', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(142, 'M. Karim', 'laki-laki', '2018-12-15', 'Nuraina', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(143, 'A. Zahara', 'perempuan', '2018-12-15', 'Theysa', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '0000-00-00', '2019-11-05', '0000-00-00'),
(144, 'T. Sultan', 'laki-laki', '2018-12-15', 'Zahara', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(145, 'Azuhra Faira', 'perempuan', '2018-12-15', 'Ismalita', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(146, 'Muhammad Nabil', 'laki-laki', '2018-12-15', 'Siti Fatimah', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(147, 'Afkarul Latif', 'laki-laki', '2018-12-15', 'Susanti', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(148, 'Zaki M. Latif', 'laki-laki', '2018-12-15', 'Fadzilah', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(149, 'Raja Alzikri', 'laki-laki', '2018-12-15', 'Mariana', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(150, 'Syifa Anida', 'perempuan', '2018-12-15', 'Yovi', 'Lhok Awe Teungoh', '2018-12-16', '2019-02-06', '2019-02-06', '2019-03-05', '2019-03-05', '2019-04-05', '2019-04-05', '2019-06-11', '2019-06-11', '2019-11-05', '0000-00-00', '0000-00-00'),
(151, 'M. Raffa', 'laki-laki', '2018-03-10', 'Tia Wardani', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(152, 'Asyifa', 'perempuan', '2018-03-10', 'Nurmala', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(153, 'Dina Mustia', 'perempuan', '2018-03-10', 'Aisyah', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(154, 'Tisya', 'perempuan', '2018-03-10', 'Anita', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(155, 'Haifa', 'perempuan', '2018-03-10', 'Herawati', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(156, 'Nabil Alfatih', 'laki-laki', '2018-03-10', 'Farida', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(157, 'M. Abu Bakar', 'laki-laki', '2018-03-10', 'Irawati', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(158, 'Alkhalifin', 'laki-laki', '2018-03-10', 'Susi', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(159, 'Abizar', 'laki-laki', '2018-03-10', 'Zuraida', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(160, 'Elea Azzahra', 'perempuan', '2018-03-10', 'Ratna', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(161, 'Nabihan Khaliq', 'laki-laki', '2018-03-10', 'Elinawati', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(162, 'Eileen Farishta', 'perempuan', '2018-03-10', 'Maysarah', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(163, 'Asrafa', 'laki-laki', '2018-03-10', 'Syafiani', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(164, 'Raida Shabira', 'perempuan', '2018-03-10', 'Wulan Nindira', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(165, 'M. Gibhran', 'laki-laki', '2018-03-10', 'Puji Kusuma', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(166, 'Rafardhan', 'laki-laki', '2018-03-10', 'Yani', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(167, 'Cut Kayla', 'perempuan', '2018-03-10', 'Sri Mahdalena', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(168, 'Ahza Alfareqi', 'laki-laki', '2018-03-10', 'Riska', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(169, 'Wilona', 'perempuan', '2018-03-10', 'Intan', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(170, 'Abdul Zaid', 'laki-laki', '2018-03-10', 'Erlinda', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(171, 'M. Ghaffar', 'laki-laki', '2018-03-10', 'Dara Yana', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(172, 'Raiza', 'laki-laki', '2018-03-10', 'Nurazni', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(173, 'Arkhan', 'laki-laki', '2018-03-10', 'Kartini', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(174, 'Syifa Nazira', 'perempuan', '2018-03-10', 'Sarida', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(175, 'Teuku Zafran', 'laki-laki', '2018-03-10', 'Refnita', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(176, 'Shanum', 'perempuan', '2018-03-10', 'Nenden', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(177, 'Manfa', 'laki-laki', '2018-03-10', 'Juniarti', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(178, 'Bayi Rinawati', 'perempuan', '2018-03-10', 'Rinawati', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(179, 'Bayi Fauziah', 'laki-laki', '2018-03-10', 'Fauziah', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(180, 'Bayi Sartika', 'laki-laki', '2018-03-10', 'Sartika', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(181, 'Bayi Elfrada', 'laki-laki', '2018-03-10', 'Elfrada', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(182, 'Bayi Tuti Liana', 'laki-laki', '2018-03-10', 'Tuti Liana', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(183, 'Bayi Nanda Kirana', 'laki-laki', '2018-03-10', 'Nanda Kirana', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(184, 'Bayi Rosmita', 'perempuan', '2018-03-10', 'Rosmita', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(185, 'Bayi Nirmala', 'laki-laki', '2018-03-10', 'Nirmala', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(186, 'Bayi Nila Kusuma', 'perempuan', '2018-03-10', 'Nila Kusuma', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(187, 'Aditama', 'laki-laki', '2018-03-10', 'Sari', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(188, 'Bayi Hasminal', 'laki-laki', '2018-03-10', 'Hasminal', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(189, 'Bayi Nova Delia', 'laki-laki', '2018-03-10', 'Nova Delia', 'Bandar Bireuen 1', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(190, 'Hifza Rumaisha', 'perempuan', '2018-03-10', 'Akmalia', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(191, 'Ibrahim Hajid', 'laki-laki', '2018-03-10', 'Eva', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(192, 'Syamila', 'perempuan', '2018-03-10', 'Miyem', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(193, 'Nazra Salwa', 'perempuan', '2018-03-10', 'Mira Tania', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(194, 'M. Aulia Fatih', 'laki-laki', '2018-03-10', 'Heri Nadia', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(195, 'M. Rizky', 'laki-laki', '2018-03-10', 'Ulyana', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(196, 'M. Alfatah', 'laki-laki', '2018-03-10', 'Hidayah', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(197, 'Hafiza', 'perempuan', '2018-03-10', 'Nova Riskia', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(198, 'Aisya Ayunda', 'perempuan', '2018-03-10', 'Suwarni', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(199, 'M. Alghazali', 'laki-laki', '2018-03-10', 'Dewi', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(200, 'Nafika', 'perempuan', '2018-03-10', 'Nurlaili', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(201, 'Haura', 'perempuan', '2018-03-10', 'Reva', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00'),
(202, 'Arinal', 'laki-laki', '2018-03-10', 'Cut', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(203, 'Tiara', 'perempuan', '2018-03-10', 'Hasmanidar', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(204, 'M. Arsyad', 'laki-laki', '2018-03-10', 'Anggun', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(205, 'Mubaraq', 'laki-laki', '2018-03-10', 'Raihan', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(206, 'Rafqi', 'laki-laki', '2018-03-10', 'Syamsiah', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(207, 'Bayi Susanti', 'perempuan', '2018-03-10', 'Susasnti', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(208, 'Bayi Cut Meutia', 'laki-laki', '2018-03-10', 'Cut Meutia', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(209, 'Alisya', 'perempuan', '2018-03-10', 'Deswita', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(210, 'Najwa Azkia', 'perempuan', '2018-03-10', 'Ainal Mardhiah', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(211, 'M. Rafif', 'laki-laki', '2018-03-10', 'Yenni', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(212, 'Arrayan', 'laki-laki', '2018-03-10', 'Najriah', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(213, 'Sultan', 'laki-laki', '2018-03-10', 'Nurakmal', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(214, 'Nashratunnisa', 'perempuan', '2018-03-10', 'Ida Wati', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(215, 'Cut Rania', 'perempuan', '2018-03-10', 'Cut Ria', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(216, 'Naura', 'perempuan', '2018-03-10', 'Anita', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00', '0000-00-00'),
(217, 'Nayla', 'perempuan', '2018-03-10', 'Nasrah', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(218, 'Bayi Rina', 'perempuan', '2018-03-10', 'Rina', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(219, 'Cut Muzayinah', 'perempuan', '2018-03-10', 'Yunni', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(220, 'Sahira', 'perempuan', '2018-03-10', 'Fitria Ningsih', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(221, 'Uwais Alqarni', 'laki-laki', '2018-03-10', 'Susilawati', 'BTN', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(222, 'M. Azzam', 'laki-laki', '2018-03-10', 'Aida', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(223, 'Shilfara', 'perempuan', '2018-03-10', 'Sarita', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(224, 'Adam', 'laki-laki', '2018-03-10', 'Putri Hayati', 'BTN', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00');
INSERT INTO `kotajuang` (`id_imunisasi`, `nama_bayi`, `jenis_kelamin`, `tanggal_lahir`, `nama_ortu`, `alamat`, `hb_0`, `bcg`, `pol_1`, `dpt_hb_hib_1`, `pol_2`, `dpt_hb_hib_2`, `pol_3`, `dpt_hb_hib_3`, `pol_4`, `ipv`, `campak`, `imunisasi_lengkap`) VALUES
(225, 'M. Hazard', 'laki-laki', '2018-03-10', 'Aulia Rahmi', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(226, 'Cut Dina', 'perempuan', '2018-03-10', 'Hasliana', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(227, 'Naufal', 'laki-laki', '2018-03-10', 'Nurantiah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(228, 'Mahatir', 'laki-laki', '2018-03-10', 'Yusrawati', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(229, 'M. Bilal', 'laki-laki', '2018-03-10', 'Maryamah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(230, 'Zayyan', 'laki-laki', '2018-03-10', 'Mira', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(231, 'Raisya', 'perempuan', '2018-03-10', 'Juliana', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(232, 'M. Tanzil', 'laki-laki', '2018-03-10', 'Dahliana', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(233, 'Rifai', 'laki-laki', '2018-03-10', 'Rizka Fonna', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(234, 'Cut Putroe', 'perempuan', '2018-03-10', 'Cut Erna', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(235, 'Fadhil', 'laki-laki', '2018-03-10', 'Fatimah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(236, 'M. Afnan', 'laki-laki', '2018-03-10', 'Sekar Ayu', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(237, 'Fayadh', 'laki-laki', '2018-03-10', 'Nasriah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(238, 'Erdogan', 'laki-laki', '2018-03-10', 'Dewi Rianti', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(239, 'Hafiza', 'perempuan', '2018-03-10', 'Nova Riskia', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(240, 'Aisya Ayunda', 'perempuan', '2018-03-10', 'Suwarni', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(241, 'M. Alghazali', 'laki-laki', '2018-03-10', 'Dewi', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(242, 'Nafika', 'perempuan', '2018-03-10', 'Nurlaili', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(243, 'Haura', 'perempuan', '2018-03-10', 'Reva', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00'),
(244, 'Tiara', 'perempuan', '2018-03-10', 'Hasmanidar', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(245, 'M. Arsyad', 'laki-laki', '2018-03-10', 'Anggun', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(246, 'Mubaraq', 'laki-laki', '2018-03-10', 'Raihan', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(247, 'Rafqi', 'laki-laki', '2018-03-10', 'Syamsiah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(248, 'Alisya', 'perempuan', '2018-03-10', 'Deswita', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(249, 'Najwa Azkia', 'perempuan', '2018-03-10', 'Ainal Mardhiah', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(250, 'M. Rafif', 'laki-laki', '2018-03-10', 'Yenni', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(251, 'Adhlan', 'laki-laki', '2018-03-10', 'Zahara', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(252, 'Eshal Marzia', 'perempuan', '2018-03-10', 'Cut Fitria', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(253, 'Cut Nada', 'perempuan', '2018-03-10', 'Nurhidayati', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(254, 'M. Altawaqal', 'laki-laki', '2018-03-10', 'Rozatil Ula', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(255, 'Naylatul', 'perempuan', '2018-03-10', 'Rosmiati', 'Cot Gapu', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(256, 'M. Altaf', 'laki-laki', '2018-03-10', 'Zuraida', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(257, 'Aida Putri', 'perempuan', '2018-03-10', 'Badriah', 'Blang Reuling', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(258, 'Rizky Arayyan', 'laki-laki', '2018-03-10', 'Andriani', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(259, 'Nabila', 'perempuan', '2018-03-10', 'Nurhayati', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(260, 'Putra Aqil', 'laki-laki', '2018-03-10', 'Asmarawati', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(261, 'Raisatul Amira', 'perempuan', '2018-03-10', 'Miftahul', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(262, 'M. Irfan', 'laki-laki', '2018-03-10', 'Nurul Rahmi', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(263, 'Arfan Naufal', 'laki-laki', '2018-03-10', 'Jamilah', 'Blang Reuling', '2018-03-13', '2018-04-07', '2018-04-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(264, 'Nauratul Najwa', 'perempuan', '2018-03-10', 'Nurlaili', 'Blang Reuling', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(265, 'M. Arsyil', 'laki-laki', '2018-03-10', 'Yulidar', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(266, 'Salman Farisi', 'laki-laki', '2018-03-10', 'Nursiah', 'Blang Reuling', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(267, 'Aufa Ilhamdi', 'laki-laki', '2018-03-10', 'Nurhayati', 'Blang Reuling', '2018-03-13', '0000-00-00', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(268, 'Nadia Fadilla', 'perempuan', '2018-03-10', 'Nurleli', 'Blang Reuling', '2018-03-13', '0000-00-00', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(269, 'Raisa', 'perempuan', '2018-03-10', 'Jannaton', 'Blang Reuling', '2018-03-13', '2018-04-07', '0000-00-00', '2018-05-12', '2018-05-12', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(270, 'M. Ikram', 'laki-laki', '2018-03-10', 'Nurlina', 'Blang Reuling', '2018-03-13', '2018-04-07', '0000-00-00', '2018-05-12', '2018-05-12', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(271, 'M. Al Qusyari', 'laki-laki', '2018-03-10', 'Nurlaili', 'Blang Reuling', '2018-03-13', '2018-04-07', '0000-00-00', '2018-05-12', '2018-05-12', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(272, 'M. Afdhal', 'laki-laki', '2018-03-10', 'Yusrawati', 'Blang Reuling', '2018-03-13', '2018-04-07', '0000-00-00', '2018-05-12', '2018-05-12', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(273, 'Khairul Amri', 'laki-laki', '2018-03-10', 'Mariani', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(274, 'M. Alif', 'laki-laki', '2018-03-10', 'Nasriati', 'Blang Reuling', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(275, 'Malek Adam', 'laki-laki', '2018-03-10', 'Amelia', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00'),
(276, 'Arsyila Putri', 'perempuan', '2018-03-10', 'Wardiani', 'Gampong Baro', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '0000-00-00'),
(277, 'Latifa Humaira', 'perempuan', '2018-03-10', 'Mariani', 'Gampong Baro', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(278, 'M. Izzan Arrafiqi', 'laki-laki', '2018-03-10', 'Maulina Sari', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(279, 'Annisa Humaira', 'perempuan', '2018-03-10', 'Yusma', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(280, 'Habibi', 'laki-laki', '2018-03-10', 'Renni', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(281, 'Abdul Malik', 'laki-laki', '2018-03-10', 'Vivi Amelia', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(282, 'M. Syibran', 'laki-laki', '2018-03-10', 'Ruaida', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(283, 'M. Ghibran', 'laki-laki', '2018-03-10', 'Fatrami', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(284, 'Faiqa Hayya', 'perempuan', '2018-03-10', 'Amirullah', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00', '0000-00-00'),
(285, 'Shez Qiana', 'perempuan', '2018-03-10', 'Eva Rosali', 'Gampong Baro', '2018-03-13', '2018-04-07', '2018-04-07', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(286, 'M. ALhafidz', 'laki-laki', '2018-03-10', 'Feni Ferdia', 'Gampong Baro', '2018-03-13', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00'),
(287, 'Freya Mahren', 'perempuan', '2018-03-10', 'Nova Mauliza', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(288, 'Alifa Aisyah', 'perempuan', '2018-03-10', 'Fahrunnisa', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(289, 'Siti Aisyah', 'perempuan', '2018-03-10', 'Nurjihan', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(290, 'Khanza Almera', 'perempuan', '2018-03-10', 'Hasnani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(291, 'T. Arkhan', 'laki-laki', '2018-03-10', 'Melizar', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(292, 'M. Kenzi', 'laki-laki', '2018-03-10', 'Olivia', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(293, 'Bayi Isnur', 'laki-laki', '2018-03-10', 'Isnur', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(294, 'Alaysa', 'perempuan', '2018-03-10', 'Cut Elvi', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(295, 'M. Zabir Jifran', 'laki-laki', '2018-03-10', 'Mina Lusiana', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(296, 'M. Salman Alfarisi', 'laki-laki', '2018-03-10', 'Lina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(297, 'Syafalia', 'perempuan', '2018-03-10', 'Rahmayani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(298, 'Bayi Yuli', 'perempuan', '2018-03-10', 'Yuli Fitria', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(299, 'Azkadina Syahira', 'perempuan', '2018-03-10', 'Muazzimah', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(300, 'M. Aithan', 'laki-laki', '2018-03-10', 'Nurlaili', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00'),
(301, 'Haura Mafaza', 'perempuan', '2018-03-10', 'Marlina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(302, 'Bayi Iqwana', 'perempuan', '2018-03-10', 'Iqwana', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(303, 'Danis Lutfan', 'laki-laki', '2018-03-10', 'Irmalinda', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(304, 'Bayi Irma', 'perempuan', '2018-03-10', 'Irmahayati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(305, 'Azkia', 'perempuan', '2018-03-10', 'Marzalena', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(306, 'Fathan', 'laki-laki', '2018-03-10', 'Fera Yulianti', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '0000-00-00', '0000-00-00', '0000-00-00', '2018-12-15', '0000-00-00'),
(307, 'Bayi Maya', 'perempuan', '2018-03-10', 'Maya Sofia', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(308, 'Fairul Azzam', 'laki-laki', '2018-03-10', 'Safwati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '0000-00-00', '2018-12-15', '0000-00-00'),
(309, 'Altaf Ghifari', 'laki-laki', '2018-03-10', 'Chairani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(310, 'Brisya Syafika', 'perempuan', '2018-03-10', 'Bariah', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(311, 'M. Alvi Faiz', 'laki-laki', '2018-03-10', 'Ismalaini', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '0000-00-00', '0000-00-00'),
(312, 'Faza Unaysa', 'perempuan', '2018-03-10', 'Shinta Laria', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(313, 'Razka', 'laki-laki', '2018-03-10', 'Fariza', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(314, 'Adkia Masywa', 'perempuan', '2018-03-10', 'Riski Geubrina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(315, 'Adiba Khanza', 'perempuan', '2018-03-10', 'Anju Ifrizal', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(316, 'M. Alfatah', 'laki-laki', '2018-03-10', 'Erlina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(317, 'Arika', 'perempuan', '2018-03-10', 'Mutia Wati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(318, 'Fitrah', 'laki-laki', '2018-03-10', 'Yusmanita', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(319, 'M. Afkar', 'laki-laki', '2018-03-10', 'Nurlaili', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(320, 'Aurel Qistina', 'perempuan', '2018-03-10', 'Nurmasyitah', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(321, 'M. Hafidz', 'laki-laki', '2018-03-10', 'Nurhayati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(322, 'M. Navis', 'laki-laki', '2018-03-10', 'Leli', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(323, 'Cut Razan', 'perempuan', '2018-03-10', 'Rosmalinda', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(324, 'Rachel Faria', 'perempuan', '2018-03-10', 'Haslina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(325, 'M. Gaza', 'laki-laki', '2018-03-10', 'Melisa', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(326, 'Ratu Alina', 'perempuan', '2018-03-10', 'Yasti Mastura', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(327, 'Putra Anugrah', 'laki-laki', '2018-03-10', 'Dini', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(328, 'M. Syauqi', 'laki-laki', '2018-03-10', 'Ratna Sari', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(329, 'M. Syauqan', 'laki-laki', '2018-03-10', 'Ratna Sari', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(330, 'Ahmad Muaz', 'laki-laki', '2018-03-10', 'Ti Aminah', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(331, 'Bayi Mulyani', 'laki-laki', '2018-03-10', 'Mulyani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(332, 'M. Alfarezi', 'laki-laki', '2018-03-10', 'Eliani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(333, 'Alfatih Aqsa', 'laki-laki', '2018-03-10', 'Rukmini', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(334, 'Ziad Zumal', 'laki-laki', '2018-03-10', 'Nurshalla', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(335, 'Witan', 'laki-laki', '2018-03-10', 'Asridawati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(336, 'M. Gafran', 'laki-laki', '2018-03-10', 'Yulia Sari', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(337, 'Alesya', 'perempuan', '2018-03-10', 'Ronalita', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(338, 'Nurasyifa', 'perempuan', '2018-03-10', 'Rosmawar', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(339, 'M. Faris', 'laki-laki', '2018-03-10', 'Mutia', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(340, 'M. Al Azam', 'laki-laki', '2018-03-10', 'Marwiddah', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(341, 'Zahratun Najwa', 'perempuan', '2018-03-10', 'Mulyani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(342, 'M. Ziar Aqmar', 'laki-laki', '2018-03-10', 'Khairunnisa', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(343, 'Ahzar Zurrahman', 'laki-laki', '2018-03-10', 'Linda Wati', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(344, 'Afifah Nasita', 'perempuan', '2018-03-10', 'Rosnita', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(345, 'Salma Nabila', 'perempuan', '2018-03-10', 'Agustina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(346, 'Salwa Nafisa', 'perempuan', '2018-03-10', 'Agustina', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(347, 'Sultan', 'laki-laki', '2018-03-10', 'Lia Wardani', 'Pulo Ara', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(348, 'Abi Rafdi', 'laki-laki', '2018-03-10', 'Sri Br Gintng', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(349, 'Nisfu Shahira', 'perempuan', '2018-03-10', 'Nur Afrah', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(350, 'Abzan Hidayatullah', 'laki-laki', '2018-03-10', 'Ertina', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(351, 'Alghazali', 'laki-laki', '2018-03-10', 'Ema Liana', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(352, 'Hamdan Syukran', 'laki-laki', '2018-03-10', 'Nurlinda Wati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(353, 'Dila Fitria', 'perempuan', '2018-03-10', 'Yanti Arizona', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(354, 'Putri Nabila', 'perempuan', '2018-03-10', 'Maryani', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(355, 'M. Rafli', 'laki-laki', '2018-03-10', 'Rahmawati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(356, 'Muhammad Zaid', 'laki-laki', '2018-03-10', 'Nurmasyitah', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(357, 'M. Albi Fardan', 'laki-laki', '2018-03-10', 'Sumilawati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(358, 'M. Riswan', 'laki-laki', '2018-03-10', 'Nursiah', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(359, 'M. Khadafi', 'laki-laki', '2018-03-10', 'Asnidar', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(360, 'Khairin Munzilin', 'laki-laki', '2018-03-10', 'Nurhayati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(361, 'Syifa', 'perempuan', '2018-03-10', 'Lia Safitri', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(362, 'Ahmad Wildan', 'laki-laki', '2018-03-10', 'Raihan', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(363, 'Arzaq Arzhafi', 'laki-laki', '2018-03-10', 'jasmaniar', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(364, 'Rania Humaira', 'perempuan', '2018-03-10', 'Ainun', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(365, 'M. Arkhan', 'laki-laki', '2018-03-10', 'Isma Yunita', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(366, 'Alifna Rizki', 'laki-laki', '2018-03-10', 'Yusdiana', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(367, 'M. Zaid', 'laki-laki', '2018-03-10', 'Masyitah', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(368, 'Haikal Raditya', 'laki-laki', '2018-03-10', 'Yeni Rahmawati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(369, 'Nazila Ardini', 'perempuan', '2018-03-10', 'Khairunnisa', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(370, 'Bayi Rosdiana', 'perempuan', '2018-03-10', 'Rosdiana', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(371, 'M. Hafiz', 'laki-laki', '2018-03-10', 'Priyanti', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(372, 'M. Abizar', 'laki-laki', '2018-03-10', 'Eva Malinda', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(373, 'M. Taufik', 'laki-laki', '2018-03-10', 'Yusra', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(374, 'Kesyha Nur', 'perempuan', '2018-03-10', 'Lia Suwarni', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(375, 'Medina', 'perempuan', '2018-03-10', 'Ulfi', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(376, 'Afifa Fitiya', 'perempuan', '2018-03-10', 'Ida Parida', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(377, 'Mya Qalesya', 'perempuan', '2018-03-10', 'Khalizayana', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(378, 'M. Hanif', 'laki-laki', '2018-03-10', 'Suhelvi', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(379, 'M. Iqbal', 'laki-laki', '2018-03-10', 'Kanadia', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(380, 'Khadafi', 'laki-laki', '2018-03-10', 'Nova Eliza', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(381, 'Ahmad Rifai', 'laki-laki', '2018-03-10', 'Evanda', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(382, 'Cut Hanifa', 'perempuan', '2018-03-10', 'Cut Herra', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(383, 'Fatan Alfarezi', 'laki-laki', '2018-03-10', 'Jumiati', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(384, 'M. Ghibran', 'laki-laki', '2018-03-10', 'Nana Apriana', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15'),
(385, 'Febrina Riski', 'perempuan', '2018-03-10', 'Fitri Yani', 'Meunasah Gadong', '2018-03-13', '2018-04-07', '2018-04-07', '2018-05-12', '2018-05-12', '2018-06-09', '2018-06-09', '2018-07-13', '2018-07-13', '2018-07-13', '2018-12-15', '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `divisi` varchar(30) NOT NULL,
  `puskesmas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`id`, `username`, `password`, `nama`, `divisi`, `puskesmas`) VALUES
(1, 'midhat', '123', 'Midhat', 'B. Imunisasi ', 'Kotajuang'),
(2, 'martunis', '123', 'Martunis', 'B. Imunisasi', 'Gandapura');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `gandapura`
--
ALTER TABLE `gandapura`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `kotajuang`
--
ALTER TABLE `kotajuang`
  ADD PRIMARY KEY (`id_imunisasi`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `gandapura`
--
ALTER TABLE `gandapura`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `kotajuang`
--
ALTER TABLE `kotajuang`
  MODIFY `id_imunisasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=386;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
