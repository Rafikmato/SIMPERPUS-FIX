-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2022 at 04:05 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `pass`) VALUES
(2, 'Mohamad Rafiq Mato', 'rafik', '$2y$10$/YJ2eh/QWLIP7.3KcRbosuZ38cat6lDobUQ7TcyuSvl/2HcHGIa8a'),
(3, 'Namira Panelewen', 'namira', '$2y$10$/YJ2eh/QWLIP7.3KcRbosuZ38cat6lDobUQ7TcyuSvl/2HcHGIa8a'),
(4, 'Ilham Dwiki', 'ilham', '$2y$10$/YJ2eh/QWLIP7.3KcRbosuZ38cat6lDobUQ7TcyuSvl/2HcHGIa8a'),
(5, 'Vaughn Foye', 'admin', '$2y$10$/YJ2eh/QWLIP7.3KcRbosuZ38cat6lDobUQ7TcyuSvl/2HcHGIa8a');

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `nisn` varchar(20) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(10) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `thn_masuk` varchar(4) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`nisn`, `nama_lengkap`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `id_kelas`, `thn_masuk`, `foto`, `pass`, `username`) VALUES
('', 'Naysilla Aurellia Chamil', '', 'Gorontalo', '2008-12-05', 'P', 2, '', '', '', ''),
('0007718206', 'FIKRI YANDHI ABAS', '', 'GORONTALO', '2006-08-11', 'L', 19, '', '', '', ''),
('0019297849', 'SITI MUTIA ISNAINI KADIR', '', 'GORONTALO', '2007-08-05', 'P', 21, '', '', '', ''),
('0024949738', 'Putri Dian Karundeng', '', 'Gorontalo', '2006-06-06', 'P', 17, '', '', '', ''),
('0032933627', 'Rahmat Harun', '', 'Gorontalo', '2003-11-14', 'L', 17, '', '', '', ''),
('0033659179', 'MOH. ZULKARNAIN ADAM', '', 'GORONTALO', '2003-01-19', 'L', 9, '', '', '', ''),
('0036303293', 'MUH. FALDY AYUB PUHI', '', 'Gorontalo', '2003-02-07', 'L', 12, '', '', '', ''),
('0037344602', 'Moh. Fajrin Hioda', '', 'Kabila', '2003-08-15', 'L', 11, '', '', '', ''),
('0042584002', 'FIRNAWATI OTAHA', '', 'GORONTALO', '2004-07-20', 'P', 20, '', '', '', ''),
('0043877495', 'Yudistira Tangkudung', '', 'Gorontalo', '2004-05-18', 'L', 20, '', '', '', ''),
('0044006321', 'MOH.DG AGSAN MANGGATA', '', 'GORONTALO', '2004-07-27', 'L', 13, '', '', '', ''),
('0045164512', 'Moh. Riski Febrianto Amanu', '', 'Gorontalo', '2004-06-02', 'L', 20, '', '', '', ''),
('0045598624', 'MOH. FADLI HAPPY', '', 'GORONTALO', '2004-07-25', 'L', 10, '', '', '', ''),
('0046228343', 'RIYAN R. ALI', '', 'GORONTALO', '2006-06-21', 'L', 16, '', '', '', ''),
('0046243885', 'FADLAN SURAHMAN', '', 'GORONTALO', '2004-03-13', 'L', 16, '', '', '', ''),
('0046755689', 'Ikbal Ali', '', 'Kabila', '2004-03-03', 'L', 20, '', '', '', ''),
('0047050627', 'Hayikal M. Latif', '', 'Biak', '2004-05-18', 'L', 16, '', '', '', ''),
('0051053449', 'NURHAYATI ISMAIL', '', 'GORONTALO', '2005-07-12', 'P', 12, '', '', '', ''),
('0051154022', 'Aldi Musa', '', 'Gorontalo', '2005-11-05', 'L', 11, '', '', '', ''),
('0051727119', 'ABD. KARIM OTAHA', '', 'GORONTALO', '2005-12-01', 'L', 16, '', '', '', ''),
('0052064899', 'IBRAHIM ADAM', '', 'Kabila', '2005-09-16', 'L', 18, '', '', '', ''),
('0055178570', 'Abdul Razak Mooduto', '', 'Gorontalo', '2005-11-19', 'L', 15, '', '', '', ''),
('0055223891', 'ZULKARNAIN AHMAD', '', 'GORONTALO', '2005-05-20', 'L', 6, '', '', '', ''),
('0055577657', 'NUR LAILA NALOLE', '', 'GORONTALO', '2005-04-27', 'P', 12, '', '', '', ''),
('0055885090', 'MOH. ALFIAN MOLI', '', 'GORONTALO', '2005-10-01', 'L', 10, '', '', '', ''),
('0056137745', 'Nia Pratiwi Usman', '', 'Gorontalo', '2005-11-09', 'P', 18, '', '', '', ''),
('0057357873', 'SAMSUDIN ISIMA', '', 'Gorontalo', '2005-06-16', 'L', 10, '', '', '', ''),
('0057791979', 'Firman Rezky Pramana Ilonu', '', 'Desa Dutohe Kec. Kab', '2005-12-24', 'L', 18, '', '', '', ''),
('0058657819', 'HUSAIN USMAN', '', 'GORONTALO', '2006-09-19', 'L', 11, '', '', '', ''),
('0058930853', 'Tri Alya Abudi', '', 'Gorontalo', '2006-11-14', 'P', 17, '', '', '', ''),
('0059045358', 'Mohamad Akbar Idris', '', 'Gorontalo', '2005-12-19', 'L', 15, '', '', '', ''),
('0059117464', 'FATHURRAHMAN ANYO', '', 'GORONTALO', '2005-11-24', 'L', 16, '', '', '', ''),
('0059240942', 'RAHMAT RIFAI RAHIM', '', 'GORONTALO', '2005-12-20', 'L', 21, '', '', '', ''),
('0059918753', 'DELVI HUNTA', '', 'Kabila', '2005-11-17', 'P', 15, '', '', '', ''),
('0061187169', 'Asraf Alwafit Rahmati', '', 'Gorontalo', '2006-12-21', 'L', 16, '', '', '', ''),
('0061393510', 'ISKANDAR LALU', '', 'GORONTALO', '2006-03-07', 'L', 22, '', '', '', ''),
('0061751802', 'INDRIYANSI SAUD', '', 'GORONTALO', '2006-12-31', 'P', 22, '', '', '', ''),
('0061829690', 'AUREL MOESLIM PALADA', '', 'GORONTALO', '2006-11-16', 'L', 19, '', '', '', ''),
('0061880219', 'Siti Aulia Mile', '', 'Gorontalo', '2006-09-07', 'P', 20, '', '', '', ''),
('0061949116', 'Nabila Salsabila Latif', '', 'Biak', '2006-02-01', 'P', 6, '', '', '', ''),
('0061975602', 'ANANDA MIKOLA USMAN', '', 'Gorontalo', '2006-05-08', 'L', 20, '', '', '', ''),
('0062005634', 'NUR FATRA GAFAR', '', 'GORONTALO', '2006-07-12', 'P', 22, '', '', '', ''),
('0062068024', 'SALSHA RAHMATIA MANSUR', '', 'Gorontalo', '2006-08-01', 'P', 21, '', '', '', ''),
('0062123738', 'Fidyawati Anwar', '', 'Gorontalo', '2006-06-24', 'P', 4, '', '', '', ''),
('0062376472', 'Rahmatullah Abas', '', 'Gorontalo', '2006-04-04', 'L', 19, '', '', '', ''),
('0062387902', 'Mohamad Riski Laingo', '', 'Kab. Gorontalo', '2006-12-21', 'L', 19, '', '', '', ''),
('0062441204', 'AHMAD HIDAYAT PAKAYA', '', 'GORONTALO', '2006-06-11', 'L', 21, '', '', '', ''),
('0062461435', 'Abdul Wahid Akuba', '', 'Kab. Gorontalo', '2006-12-14', 'L', 17, '', '', '', ''),
('0062487537', 'DEA ANASTASYA UMAR', '', 'Kabila', '2006-03-31', 'P', 17, '', '', '', ''),
('0062525632', 'Sahrul Mustapa', '', 'Gorontalo', '2006-10-08', 'L', 22, '', '', '', ''),
('0062580227', 'HAJIRA NASIBU', '', 'LIMBATIHU', '2006-03-03', 'P', 2, '', '', '', ''),
('0062606050', 'RIA RAMADHANI TUNE', '', 'GORONTALO', '2006-09-29', 'P', 15, '', '', '', ''),
('0062713298', 'Rehan R. Lakuna', '', 'Kabila', '2006-11-17', 'L', 19, '', '', '', ''),
('0062724063', 'SAEFUL ANWAR HULUKATI', '', 'GORONTALO', '2006-05-08', 'L', 15, '', '', '', ''),
('0062845701', 'YOHANA MOHAMAD', '', 'KABILA', '2006-11-27', 'P', 18, '', '', '', ''),
('0062889659', 'MOHAMMAD AL FAREL DEU', '', 'Gorontalo', '2006-12-21', 'L', 21, '', '', '', ''),
('0062902016', 'Farel Ibrahim', '', 'Batuputih', '2006-12-15', 'L', 17, '', '', '', ''),
('0062961156', 'MOH. SYAHRUL ADAM', '', 'LUWUK', '2006-08-17', 'L', 21, '', '', '', ''),
('0063034324', 'Mohammad Fajrin Hasan', '', 'Gorontalo', '2006-07-31', 'L', 15, '', '', '', ''),
('0063046145', 'Riski Rahman', '', 'Gorontalo', '2007-05-05', 'L', 17, '', '', '', ''),
('0063186842', 'AGUSTINA DJANO', '', 'Gorontalo', '2006-08-04', 'P', 17, '', '', '', ''),
('0063251189', 'Yuspriyanto Melu', '', 'Gorontalo', '2006-08-19', 'L', 22, '', '', '', ''),
('0063330791', 'Moh. Iqbal Hamidi', '', 'Gorontalo', '2006-05-18', 'L', 5, '', '', '', ''),
('0063356529', 'ABDUL RAJAB MAHMUD', '', 'GORONTALO', '2006-08-15', 'L', 22, '', '', '', ''),
('0063374108', 'USNIATI PAMPAILE', '', 'Sinombayuga', '2006-04-26', 'P', 5, '', '', '', ''),
('0063403710', 'NUR RAMADANI LAHATI', '', 'GORONTALO', '2006-09-27', 'P', 15, '', '', '', ''),
('0063472689', 'Ilham Ramadhan Igirisa', '', 'Gorontalo', '2006-09-28', 'L', 21, '', '', '', ''),
('0063727370', 'TALITHA PUTRI PEDJU', '', 'GORONTALO', '2006-11-10', 'P', 17, '', '', '', ''),
('0063939808', 'Siti Nursaleha Latama', '', 'Gorontalo', '2006-06-06', 'P', 22, '', '', '', ''),
('0064009860', 'Moh. Arif Yusuf', '', 'Gorontalo', '2006-08-13', 'L', 12, '', '', '', ''),
('0064142893', 'Anggun Cahyani Ahmad', '', 'Suwawa', '2006-04-05', 'P', 22, '', '', '', ''),
('0064242014', 'FITRAH MAHARDIKA HIOLA', '', 'GORONTALO', '2006-10-29', 'L', 22, '', '', '', ''),
('0064441605', 'FADILAA A. NALOLE', '', 'GORONTALO', '2006-03-13', 'P', 8, '', '', '', ''),
('0064512044', 'MOHAMAD RASID', '', 'GORONTALO', '2006-03-20', 'L', 20, '', '', '', ''),
('0064522531', 'FITRAH RAMADHANI HASAN', '', 'Gorontalo', '2006-10-10', 'P', 16, '', '', '', ''),
('0064529043', 'DEWI ANJANI SAPUTRA', '', 'Kabila', '2006-11-21', 'P', 21, '', '', '', ''),
('0064652291', 'Moh. Haikal Lahidun', '', 'Panggulo', '2006-03-13', 'L', 10, '', '', '', ''),
('0064812998', 'Mohamad Noval Putra Moo', '', 'Tilong Kabila', '2006-11-24', 'L', 16, '', '', '', ''),
('0064834625', 'Saffana Nurhidayah Dunggio', '', 'Gorontalo', '2006-11-03', 'P', 17, '', '', '', ''),
('0064880352', 'LIA APRILIANI RAUF', '', 'GORONTALO', '2006-04-11', 'P', 17, '', '', '', ''),
('0064946675', 'SYAHRIL S. DJAILANI', '', 'Gorontalo', '2006-09-17', 'L', 17, '', '', '', ''),
('0065200376', 'AURELYA DESWITA NALOLE', '', 'GORONTALO', '2006-12-30', 'P', 19, '', '', '', ''),
('0065260754', 'FADHIL ALIANSYAH TOWAPA', '', 'GORONTALO', '2006-11-09', 'L', 19, '', '', '', ''),
('0065267591', 'IRMAWATI TAMBIYO', '', 'BOTUMOITO', '2006-09-04', 'P', 20, '', '', '', ''),
('0065298984', 'SUCI NURSIYAH DJULAINI', '', 'GORONTALO', '2006-10-30', 'P', 15, '', '', '', ''),
('0065420107', 'Gusnar Polimengo', '', 'Gorontalo', '2006-08-01', 'L', 18, '', '', '', ''),
('0065464479', 'NURFADILLAH ADAM', '', 'GORONTALO', '2006-08-03', 'P', 22, '', '', '', ''),
('0065500824', 'MOHAMAD RIFALDI AMIRI', '', 'GORONTALO', '2006-06-18', 'L', 17, '', '', '', ''),
('0065630960', 'SITI FAMALIA AHMAD', '', 'GORONTALO', '2006-07-07', 'P', 20, '', '', '', ''),
('0065641851', 'AGUSTINA BARUADI', '', 'Kabila', '2006-08-28', 'P', 18, '', '', '', ''),
('0065864399', 'GREYS AYUDIA ABDULLAH', '', 'GORONTALO', '2006-11-05', 'P', 15, '', '', '', ''),
('0065950889', 'Ayisa Lalu', '', 'Gorontalo', '2005-10-11', 'P', 15, '', '', '', ''),
('0066157484', 'Abdul Zainal Karim', '', 'Gorontalo', '2006-11-12', 'L', 14, '', '', '', ''),
('0066172475', 'Hajrin Nabil Mahmud', '', 'Gorontalo', '2006-01-26', 'L', 10, '', '', '', ''),
('0066214222', 'REINALDY JEREMIAS KOLONDAM', '', 'Gorontalo', '2006-08-23', 'L', 15, '', '', '', ''),
('0066222100', 'CELVIN JULIO PUTRA', '', 'GORONTALO', '2006-07-21', 'L', 22, '', '', '', ''),
('0066256399', 'IBRAHIM SALIMANI', '', 'GORONTALO', '2006-03-19', 'L', 17, '', '', '', ''),
('0066269632', 'Olivianti Mahmud', '', 'Gorontalo', '2006-11-17', 'P', 21, '', '', '', ''),
('0066274373', 'Rahmawati Nuayi', '', 'Bone Bolango', '2006-10-14', 'P', 22, '', '', '', ''),
('0066383548', 'ISMAIL MOHAMAD', '', 'KABILA', '2006-08-04', 'L', 22, '', '', '', ''),
('0066397710', 'Bunga Aulia P. Umadji', '', 'Gorontalo', '2006-11-23', 'P', 22, '', '', '', ''),
('0066525721', 'RAYA OKTAFIANI YUSUF', '', 'GORONTALO', '2006-10-24', 'P', 19, '', '', '', ''),
('0066747243', 'MOH. RIZAL DAUD', '', 'Gorontalo', '2006-09-20', 'L', 17, '', '', '', ''),
('0066801529', 'MUHAZIR TAMBIPI', '', 'Gorontalo', '2006-02-06', 'L', 19, '', '', '', ''),
('0066858098', 'DEOLOVA UNA', '', 'GORONTALO', '2006-12-08', 'P', 19, '', '', '', ''),
('0066994326', 'Nur Fadila Ismail', '', 'Gorontalo', '2006-11-20', 'P', 21, '', '', '', ''),
('0067073923', 'MELANIE SINTYA LAHMUDA', '', 'GORONTALO', '2007-01-20', 'P', 16, '', '', '', ''),
('0067209771', 'Ririn Steviani Dangkua', '', 'Gorontalo', '2006-07-12', 'P', 16, '', '', '', ''),
('0067241601', 'ADELIA DJAFAR', '', 'GORONTALO', '2006-04-21', 'P', 18, '', '', '', ''),
('0067277258', 'MOHAMAD ISRAD THALIB', '', 'Gorontalo', '2006-08-02', 'L', 21, '', '', '', ''),
('0067379300', 'NUR ANNISA LUKUM', '', 'GORONTALO', '2006-07-03', 'P', 17, '', '', '', ''),
('0067595302', 'HAIRUNNISA BAKARI', '', 'GORONTALO', '2006-02-09', 'P', 21, '', '', '', ''),
('0067630602', 'ANGGRAINI', '', 'LUWUK', '2006-08-10', 'P', 21, '', '', '', ''),
('0067688485', 'ZAKARIA FAJAR', '', 'GORONTALO', '2006-10-04', 'L', 16, '', '', '', ''),
('0067744419', 'Mulyanto Hasan', '', 'Gorontalo', '2006-07-14', 'L', 20, '', '', '', ''),
('0067759496', 'Zaskia Azzahra Amin', '', 'Gorontalo', '2006-12-11', 'P', 22, '', '', '', ''),
('0067763893', 'Sri Ameliani Mohune', '', 'Kabila', '2006-09-20', 'P', 21, '', '', '', ''),
('0067767936', 'Wahyudin Umar', '', 'Gorontalo', '2006-11-26', 'L', 15, '', '', '', ''),
('0067819722', 'Fadillah Malii', '', 'Gorontalo', '2006-05-31', 'P', 17, '', '', '', ''),
('0067978345', 'REZKY RAMADHANI KADIR', '', 'GORONTALO', '2006-10-20', 'P', 21, '', '', '', ''),
('0068058988', 'Rizal Moha', '', 'Gorontalo', '2006-11-05', 'L', 20, '', '', '', ''),
('0068273821', 'FADEL MUSA', '', 'Gorontalo', '2006-06-25', 'L', 6, '', '', '', ''),
('0068312257', 'Savrina Aulia Djailani', '', 'Kabila', '2006-07-14', 'P', 19, '', '', '', ''),
('0068315559', 'MOHAMAD GIVAR GOBEL', '', 'PADENGO', '2006-10-18', 'L', 18, '', '', '', ''),
('0068339289', 'Kartika Ahmad', '', 'Gorontalo', '2007-08-25', 'P', 18, '', '', '', ''),
('0068412255', 'SITI AULIA USMAN', '', 'GORONTALO', '2006-06-26', 'P', 15, '', '', '', ''),
('0068461799', 'MOH. JULFIKAR HUSAIN', '', 'Gorontalo', '2006-12-26', 'L', 18, '', '', '', ''),
('0068542291', 'SENTIA HUSAIN', '', 'OLUHUTA', '2006-08-15', 'P', 22, '', '', '', ''),
('0068575465', 'Zulfa Anggraini Ibrahim', '', 'Gorontalo', '2006-12-26', 'P', 19, '', '', '', ''),
('0068597950', 'Fadlan Atalapu', '', 'Kabila', '2006-10-17', 'L', 19, '', '', '', ''),
('0068648183', 'NUR OCTAVHIA R. PADIKU', '', 'GORONTALO', '2006-10-19', 'P', 19, '', '', '', ''),
('0068758318', 'RAHMAT DANIEL', '', 'GORONTALO', '2006-10-05', 'L', 15, '', '', '', ''),
('0068783991', 'DIMAS PRASETYO SAFII', '', 'Gorontalo', '2006-12-12', 'L', 18, '', '', '', ''),
('0068866533', 'Apriyanto Umar', '', 'Gorontalo', '2006-04-11', 'L', 9, '', '', '', ''),
('0068882930', 'NAZLIA YUSUF', '', 'GORONTALO', '2006-09-18', 'P', 19, '', '', '', ''),
('0069361548', 'REHAN ISMAIL', '', 'Gorontalo', '2006-07-28', 'L', 13, '', '', '', ''),
('0069427207', 'Zidan Pakaya', '', 'Kabila', '2006-08-02', 'L', 20, '', '', '', ''),
('0069495629', 'SITI KAYLA KHALISTA DEU', '', 'JAYAPURA', '2006-09-30', 'P', 22, '', '', '', ''),
('0069574048', 'GINDA RATU PRIYASA LIMONU', '', 'GORONTALO', '2008-04-21', 'P', 11, '', '', '', ''),
('0069592278', 'ANDIKA SAPUTRA AMIR', '', 'GORONTALO', '2006-12-06', 'L', 11, '', '', '', ''),
('0069599242', 'SRI NINGSI HUSA', '', 'GORONTALO', '2006-12-15', 'P', 16, '', '', '', ''),
('0069664502', 'Moh. Praditya Baladraf', '', 'Suwawa', '2006-11-20', 'L', 17, '', '', '', ''),
('0069722758', 'RAHMAD MOHAMAD', '', 'GORONTALO', '2006-12-10', 'L', 9, '', '', '', ''),
('0069736263', 'Laila Fitri Hartono', '', 'Gorontalo', '2006-09-23', 'P', 20, '', '', '', ''),
('0069827826', 'Fatrisia Polumulo', '', 'Kabila', '2006-06-14', 'P', 23, '', '', '', ''),
('0071082193', 'Annisa Nur Rahma Azahra Barani', '', 'Gorontalo', '2007-11-01', 'P', 15, '', '', '', ''),
('0071129746', 'SITI AUDRIA BOBIHU', '', 'Tolinggula', '2007-04-17', 'P', 9, '', '', '', ''),
('0071159615', 'ZAINAB MOHAMAD', '', 'Gorontalo', '2007-02-03', 'P', 14, '', '', '', ''),
('0071208488', 'MARIO DWI YAHYA ADAM', '', 'GORONTALO', '2007-03-06', 'L', 15, '', '', '', ''),
('0071305221', 'Mohammad Zulfitra Putra Samu', '', 'Gorontalo', '2007-10-18', 'L', 20, '', '', '', ''),
('0071458699', 'INADIAH ROHIM', '', 'GORONTALO', '2007-05-26', 'P', 7, '', '', '', ''),
('0071537109', 'Galant Wahyudi Saputra Suryadi', '', 'Gorontalo', '2007-06-13', 'L', 15, '', '', '', ''),
('0071583710', 'APRILIYA SAWALI', '', 'KABILA', '2007-04-27', 'P', 17, '', '', '', ''),
('0071742850', 'Moh. Farel Apriyansa Putra Hunowu', '', 'Suwawa', '2007-05-25', 'L', 16, '', '', '', ''),
('0071747177', 'Pahrel Mile', '', 'Gorontalo', '2007-07-30', 'L', 12, '', '', '', ''),
('0071875195', 'MOH. RIFALDI MAHMUD', '', 'GORONTALO', '2007-08-22', 'L', 20, '', '', '', ''),
('0071895823', 'David Febriyansyah Halubangga', '', 'Suwawa', '2007-02-16', 'L', 20, '', '', '', ''),
('0071897143', 'DELSIANA GULE', '', 'KABILA', '2007-12-01', 'P', 9, '', '', '', ''),
('0071951395', 'Syaqila Raudyatuzahrah M.Ismail', '', 'Suwawa', '2007-12-01', 'P', 11, '', '', '', ''),
('0071976027', 'MOHAMMAD FADEL TALANGGAI', '', 'GORONTALO', '2007-04-21', 'L', 18, '', '', '', ''),
('0072006033', 'Feli Aulia Iladati', '', 'Gorontalo', '2007-12-16', 'P', 12, '', '', '', ''),
('0072013592', 'Nur Fadillah Kuku', '', 'Gorontalo', '2007-09-05', 'P', 11, '', '', '', ''),
('0072031067', 'Awaludin Mahmud', '', 'Gorontalo', '2007-12-14', 'L', 7, '', '', '', ''),
('0072044327', 'SUCI ANDRIANI KASIM', '', 'Gorontalo', '2007-05-11', 'P', 20, '', '', '', ''),
('0072044814', 'YATI UMAR', '', 'GORONTALO', '2007-06-26', 'P', 14, '', '', '', ''),
('0072057062', 'MARYAM MUKALAB', '', 'GORONTALO', '2007-07-20', 'P', 18, '', '', '', ''),
('0072115061', 'KHAIRUN NUR', '', 'GORONTALO', '2007-08-10', 'P', 5, '', '', '', ''),
('0072133602', 'Juliana Idris', '', 'Gorontalo', '2007-07-22', 'P', 13, '', '', '', ''),
('0072239947', 'Rukaiyah Mooduto', '', 'Gorontalo', '2007-06-09', 'P', 5, '', '', '', ''),
('0072249359', 'Adrian Syah P. Igirisa', '', 'Gorontalo', '2007-12-02', 'L', 15, '', '', '', ''),
('0072279185', 'Erpina Otolomo', '', 'Gorontalo', '2007-09-11', 'P', 13, '', '', '', ''),
('0072285255', 'ARIYANTO YUNUS', '', 'GORONTALO', '2007-03-23', 'L', 18, '', '', '', ''),
('0072309314', 'NUR ANNISA DWI RAHMAN', '', 'GORONTALO', '2007-08-31', 'P', 18, '', '', '', ''),
('0072339554', 'SITTI NADHIVA HALEDA', '', 'GORONTALO', '2007-12-31', 'P', 20, '', '', '', ''),
('0072394400', 'Abdul Rohim Ente', '', 'Kotamobagu', '2007-08-05', 'L', 13, '', '', '', ''),
('0072419780', 'TRI NATALIA USMAN', '', 'Gorontalo', '2007-12-25', 'P', 6, '', '', '', ''),
('0072421430', 'YUSRIL ANTO', '', 'Gorontalo', '2007-03-31', 'L', 12, '', '', '', ''),
('0072444822', 'APRIYANA ABDUL RAUF', '', 'GORONTALO', '2007-04-23', 'P', 18, '', '', '', ''),
('0072457994', 'Nazwa Desvita Eyato', '', 'Gorontalo', '2007-12-17', 'P', 8, '', '', '', ''),
('0072631076', 'ANISA DOMPAS', '', 'Gorontalo', '2007-04-23', 'P', 6, '', '', '', ''),
('0072683411', 'Ye Alwi Bin Syeh Abubakar', '', 'Gorontalo', '2007-11-04', 'L', 9, '', '', '', ''),
('0072788599', 'Desy Patrisia Anali', '', 'Gorontalo', '2007-04-18', 'P', 15, '', '', '', ''),
('0072867765', 'PUTRI NATASYA MAHMUD', '', 'GORONTALO', '2007-11-23', 'P', 14, '', '', '', ''),
('0072889856', 'RAMDHAN KOBISI', '', 'Gorontalo', '2007-08-25', 'L', 14, '', '', '', ''),
('0072898800', 'MUHAMMAD REZKY FADILLAH', '', 'GORONTALO', '2007-06-28', 'L', 14, '', '', '', ''),
('0072900615', 'MOH. NURUL FAZRIL ULOLI', '', 'GORONTALO', '2007-08-09', 'L', 22, '', '', '', ''),
('0073014371', 'Rahmad Rezki Noldinus Konijo', '', 'Gorontalo', '2007-08-26', 'L', 22, '', '', '', ''),
('0073059644', 'Sri Intan Meilan Igirisa', '', 'Gorontalo', '2007-05-10', 'P', 18, '', '', '', ''),
('0073193717', 'Moh Rizaldi Rahman', '', 'Gorontalo', '2007-05-23', 'L', 17, '', '', '', ''),
('0073220161', 'Dwi Putra Chandra', '', 'Gorontalo', '2007-04-17', 'L', 17, '', '', '', ''),
('0073286263', 'Nur Rahma Lakoro', '', 'Gorontalo', '2007-06-03', 'P', 15, '', '', '', ''),
('0073327596', 'KARTINI D. PULUHULAWA', '', 'GORONTALO', '2007-08-15', 'P', 16, '', '', '', ''),
('0073427288', 'MUTIARA HULUKATI', '', 'GORONTALO', '2007-10-01', 'P', 8, '', '', '', ''),
('0073444240', 'ABD. FIRMANSYAH AHAYA', '', 'GORONTALO', '2007-04-02', 'L', 20, '', '', '', ''),
('0073447008', 'AMANDA JULIANI SAMANI', '', 'GORONTALO', '2007-07-15', 'P', 16, '', '', '', ''),
('0073479682', 'Ezra Mohammad Kau', '', 'Gorontalo', '2007-07-18', 'L', 15, '', '', '', ''),
('0073561515', 'RIO REYFAN MOHAMAD', '', 'Gorontalo', '2007-06-26', 'L', 11, '', '', '', ''),
('0073572377', 'RAMA', '', 'Jakarta', '2007-11-12', 'L', 5, '', '', '', ''),
('0073586588', 'Indra Ramadan Makmur', '', 'Gorontalo', '2007-09-17', 'L', 9, '', '', '', ''),
('0073634499', 'Pinkan Reditha Korah', '', 'Gorontalo', '2007-05-14', 'P', 22, '', '', '', ''),
('0073638897', 'Mayshila Alwi', '', 'Gorontalo', '2007-05-27', 'P', 18, '', '', '', ''),
('0073691963', 'Salsa Billah Al Hasni', '', 'Gorontalo', '2007-11-25', 'P', 20, '', '', '', ''),
('0073698262', 'Fitriyanti Kasim', '', 'Gorontalo', '2007-03-22', 'P', 13, '', '', '', ''),
('0073702790', 'Zuhriya Anggraini Mustapa', '', 'Bone Bolango', '2007-05-06', 'P', 15, '', '', '', ''),
('0073707724', 'Jahra Fadila Lasai', '', 'Gorontalo', '2007-02-17', 'P', 16, '', '', '', ''),
('0073721757', 'Moh. Yusfrianto Kasim', '', 'Gorontalo', '2007-05-12', 'L', 20, '', '', '', ''),
('0073726499', 'SITI ZAHRA SAFANI KADIR', '', 'KABILA', '2007-02-27', 'P', 19, '', '', '', ''),
('0073729928', 'Galang Ksatria Mahendra Samu', '', 'Gorontalo', '2007-11-04', 'L', 9, '', '', '', ''),
('0073744260', 'Mohamad Apriyanto Nusi', '', 'Gorontalo', '2007-04-06', 'L', 19, '', '', '', ''),
('0073761670', 'Windi Widyawati Lakadjo', '', 'Gorontalo', '2007-03-06', 'P', 19, '', '', '', ''),
('0073781339', 'MARSYA DUNGGIO', '', 'GORONTALO', '2007-09-18', 'P', 6, '', '', '', ''),
('0073786411', 'NUR SAFITRI OKTAVIANI PAKAYA', '', 'Gorontalo', '2007-10-19', 'P', 13, '', '', '', ''),
('0073803138', 'ADITYA HASAN', '', 'Gorontalo', '2007-06-26', 'L', 15, '', '', '', ''),
('0073835096', 'Putri Alisha Hulukati', '', 'Gorontalo', '2007-08-08', 'P', 13, '', '', '', ''),
('0073853537', 'SITI RAHMA ALIA LAKORO', '', 'GORONTALO', '2007-12-26', 'P', 12, '', '', '', ''),
('0073873778', 'RENALDI KUNDARA', '', 'TILAMUTA', '2007-10-18', 'L', 7, '', '', '', ''),
('0073906697', 'NOVITIYA RAHMA MOHA', '', 'Gorontalo', '2007-11-19', 'P', 8, '', '', '', ''),
('0073913159', 'MOHAMAD FAREL POLAMOLO', '', 'Gorontalo', '2007-10-01', 'L', 9, '', '', '', ''),
('0073918774', 'ALFIAH FATHUL RAHMA NGARENG', '', 'GORONTALO', '2007-02-07', 'P', 19, '', '', '', ''),
('0073930758', 'FITRA MURDJAI', '', 'GORONTALO', '2007-11-08', 'P', 8, '', '', '', ''),
('0073952741', 'Andika Dukoiyo', '', 'Pagimana', '2007-11-24', 'L', 13, '', '', '', ''),
('0073976914', 'Mohamad Fahril Dilo', '', 'Gorontalo', '2007-03-07', 'L', 4, '', '', '', ''),
('0073981180', 'KHAIRUNNISA PUTRI YUSUF', '', 'Kabila', '2007-12-01', 'P', 8, '', '', '', ''),
('0074000025', 'Muhammad Rangga Bague', '', 'Gorontalo', '2007-03-19', 'L', 21, '', '', '', ''),
('0074003158', 'NUR FADILLAH USMAN', '', 'GORONTALO', '2007-09-16', 'P', 12, '', '', '', ''),
('0074008287', 'AQMAL DIMAS PUTRA LADJO', '', 'Bekasi', '2007-06-09', 'L', 16, '', '', '', ''),
('0074057795', 'Aulia Putri Hulukati', '', 'Gorontalo', '2007-03-16', 'P', 14, '', '', '', ''),
('0074062470', 'MOHAMAD SYAWAL HAMID', '', 'GORONTALO', '2007-10-29', 'L', 10, '', '', '', ''),
('0074105355', 'PRADITYA PAKANA', '', 'GORONTALO', '2007-06-08', 'L', 18, '', '', '', ''),
('0074257522', 'ANNISA DIDIPU', '', 'GORONTALO', '2007-11-15', 'P', 11, '', '', '', ''),
('0074366040', 'RAHAYU PUTRIANI SAMSI', '', 'GORONTALO', '2007-01-22', 'P', 16, '', '', '', ''),
('0074397314', 'Mohamad Umran Husain', '', 'Gorontalo', '2007-01-18', 'L', 21, '', '', '', ''),
('0074407493', 'Rosmita Adelia Ismail', '', 'Gorontalo', '2007-07-06', 'P', 22, '', '', '', ''),
('0074497489', 'ARIEL A SANA\'U', '', 'GORONTALO', '2007-01-10', 'L', 17, '', '', '', ''),
('0074499168', 'Mohamad Nabil Ibrahim', '', 'Gorontalo', '2007-06-16', 'L', 19, '', '', '', ''),
('0074533321', 'ABDUL WAHID MAHMUD', '', 'GORONTALO', '2007-07-27', 'L', 12, '', '', '', ''),
('0074564578', 'FAISAL IRAWAN BONE', '', 'Gorontalo', '2007-11-15', 'L', 16, '', '', '', ''),
('0074816867', 'INGANTA AGIL TARIGAN', '', 'GORONTALO', '2007-11-03', 'L', 18, '', '', '', ''),
('0074883578', 'MUH ISAL YUSUF', '', 'Sorong', '2007-04-22', 'L', 19, '', '', '', ''),
('0074938040', 'Adelya Putri Hizratul Yunus', '', 'Gorontalo', '2007-01-16', 'P', 20, '', '', '', ''),
('0074979608', 'Moh Rezki mutiara', '', 'Gorontalo', '2007-07-19', 'L', 14, '', '', '', ''),
('0074989356', 'APRILIANTI GIU', '', 'Kabila', '2007-04-16', 'P', 16, '', '', '', ''),
('0074990168', 'Anggun Dwiramadani Ali', '', 'Olele', '2007-09-12', 'P', 8, '', '', '', ''),
('0075034512', 'Syahrul Ramadhan Arsyad', '', 'Gorontalo', '2007-10-04', 'L', 14, '', '', '', ''),
('0075050909', 'Sindriyani Nalole', '', 'Gorontalo', '2007-12-01', 'P', 21, '', '', '', ''),
('0075073974', 'RESTU ALFITRAH REZKY ILONU', '', 'Gorontalo', '2007-07-29', 'L', 11, '', '', '', ''),
('0075106454', 'Nursanti Abdullah', '', 'Gorontalo', '2007-06-24', 'P', 12, '', '', '', ''),
('0075152722', 'Nurhayati Ishak', '', 'Gorontalo', '2007-05-17', 'P', 16, '', '', '', ''),
('0075304729', 'MUTIA ADAM', '', 'Kabila', '2007-12-27', 'P', 8, '', '', '', ''),
('0075326115', 'FATHYA NUR FADIlLA HIPPY', '', 'KABILA', '2007-10-20', 'P', 19, '', '', '', ''),
('0075328812', 'RIZKY ABDUL ALRAHMAN HUNO', '', 'Luwuk,Kab.Banggai', '2007-12-05', 'L', 7, '', '', '', ''),
('0075439101', 'Perdi Yantu', '', 'Gorontalo', '2007-05-26', 'L', 16, '', '', '', ''),
('0075469700', 'Fazrul Adhiansyah Rahman', '', 'Gorontalo', '2007-07-04', 'L', 13, '', '', '', ''),
('0075519568', 'Fadlun Panigoro', '', 'Suwawa', '2007-03-09', 'P', 21, '', '', '', ''),
('0075522674', 'SITI NIFA RAMADHANI LANTI', '', 'Gorontalo', '2007-09-21', 'P', 15, '', '', '', ''),
('0075614478', 'Nur Aida Sarino', '', 'Gorontalo', '2007-06-04', 'P', 16, '', '', '', ''),
('0075746364', 'Evayanti Usman', '', 'Gorontalo', '2007-12-21', 'P', 23, '', '', '', ''),
('0075777841', 'RAHMAT SAPUTRA BOYUHU', '', 'MALUKU', '2007-03-24', 'L', 18, '', '', '', ''),
('0075826345', 'Akmal Labadjo', '', 'Bone Bolango', '2007-01-18', 'L', 17, '', '', '', ''),
('0075837037', 'Nur Rahma E. Masia', '', 'Huwongo', '2007-09-12', 'P', 20, '', '', '', ''),
('0075839164', 'ANGGRAINI PUTRI PADIKU', '', 'Manado', '2007-11-13', 'P', 13, '', '', '', ''),
('0075869735', 'ABDUL KASIM POILI', '', 'Gorontalo', '2007-04-25', 'L', 19, '', '', '', ''),
('0075877455', 'KEYSYA NURCAHYANI PAKAYA', '', 'GORONTALO', '2007-12-02', 'P', 22, '', '', '', ''),
('0075933029', 'MOHAMAD AL-AZHAR NASARU', '', 'Gorontalo', '2007-11-04', 'L', 8, '', '', '', ''),
('0075949416', 'SITI QIRANIAH NASARU', '', 'GORONTALO', '2007-11-10', 'P', 10, '', '', '', ''),
('0076001257', 'Nurfadila Hanafi', '', 'Gorontalo', '2007-10-29', 'P', 14, '', '', '', ''),
('0076037963', 'Rara Wahyuni Adarani', '', 'Gorontalo', '2007-06-11', 'P', 20, '', '', '', ''),
('0076050053', 'Sulastri Paulus', '', 'Kabila', '2007-08-06', 'P', 6, '', '', '', ''),
('0076095120', 'Rahmiyati Hakim', '', 'Gorontalo', '2007-05-01', 'P', 18, '', '', '', ''),
('0076169774', 'Nazul Ilhamsa Napu', '', 'Gorontalo', '2007-11-09', 'L', 11, '', '', '', ''),
('0076176105', 'Fadlan Umar', '', 'Gorontalo', '2007-09-19', 'L', 7, '', '', '', ''),
('0076194517', 'Muhadjir Baruadi', '', 'Kabila', '2007-07-05', 'L', 21, '', '', '', ''),
('0076232769', 'MOH SYAHRUL RAMADHAN', '', 'GORONTALO', '2007-09-13', 'L', 5, '', '', '', ''),
('0076301341', 'Natasya Putri Adam', '', 'Gorontalo', '2007-11-06', 'P', 15, '', '', '', ''),
('0076395527', 'Moh. Reja Ismail', '', 'Gorontalo', '2007-03-01', 'L', 18, '', '', '', ''),
('0076471572', 'RIZKY WAHYUDA IYABU', '', 'Gorontalo', '2007-07-10', 'L', 15, '', '', '', ''),
('0076481856', 'SITI NUR ZUMAIRAH JUSUF', '', 'Kec.Tilamuta Kab.Boa', '2007-07-06', 'P', 17, '', '', '', ''),
('0076580298', 'SRI SINTIA WATI MANTU', '', 'Gorontalo', '2007-12-14', 'P', 1, '', '', '', ''),
('0076611681', 'Nur Layla Anggraini Adam', '', 'Gorontalo', '2007-08-26', 'P', 20, '', '', '', ''),
('0076686418', 'RINJANI GIAND PAKAYA', '', 'GORONTALO', '2007-11-20', 'P', 11, '', '', '', ''),
('0076827406', 'NURDJANA KADJA', '', 'Gorontalo', '2007-01-03', 'P', 10, '', '', '', ''),
('0077004107', 'Muamar Dzaky Satrio', '', 'Gorontalo', '2007-01-27', 'L', 8, '', '', '', ''),
('0077014341', 'Siti Nazila Sako', '', 'Gorontalo', '2007-06-03', 'P', 16, '', '', '', ''),
('0077141202', 'RISKIYANTO THAIB', '', 'GORONTALO', '2007-11-19', 'L', 23, '', '', '', ''),
('0077150013', 'FARAH RAHMAYANTI LAHAY', '', 'Gorontalo', '2007-11-14', 'P', 8, '', '', '', ''),
('0077233099', 'Abdul Halim Polamolo', '', 'Kabila', '2007-03-03', 'L', 22, '', '', '', ''),
('0077302055', 'Nadya Natalia Lahabu', '', 'Gorontalo', '2007-12-25', 'P', 9, '', '', '', ''),
('0077413197', 'MOHAMAD FARUL PUTERA HUNOWU', '', 'TEMANGGUNG', '2007-07-29', 'L', 17, '', '', '', ''),
('0077464388', 'NUR ALIYAH PUTRI USMAN', '', 'Gorontalo', '2007-05-24', 'P', 21, '', '', '', ''),
('0077507313', 'ADRIAN HURAJU', '', 'KAB. GORONTALO', '2007-06-01', 'L', 16, '', '', '', ''),
('0077515315', 'MOHAMAD RAHIM SAPUTRA', '', 'GORONTALO', '2007-05-15', 'L', 21, '', '', '', ''),
('0077571042', 'Alfareza Ahmad', '', 'Gorontalo', '2007-01-11', 'L', 15, '', '', '', ''),
('0077572023', 'MOH. ABDUL KHALID MADJID', '', 'GORONTALO', '2007-01-07', 'L', 15, '', '', '', ''),
('0077582722', 'REYNALDY MOPANGGA', '', 'Gorontalo', '2007-11-18', 'L', 2, '', '', '', ''),
('0077706003', 'ABD Fajar Kobis', '', 'Gorontalo', '2007-05-31', 'L', 19, '', '', '', ''),
('0077810332', 'Galang Pratama', '', 'Makassar', '2007-04-12', 'L', 21, '', '', '', ''),
('0077822584', 'FAREL A. HULUKATI', '', 'GORONTALO', '2007-10-01', 'L', 8, '', '', '', ''),
('0077841401', 'MOH. FAHRY PIKOLI', '', 'Gorontalo', '2007-11-03', 'L', 14, '', '', '', ''),
('0077869893', 'Nayla Amai', '', 'Gorontalo', '2007-03-29', 'P', 17, '', '', '', ''),
('0077994020', 'SITI NURHIDAYAH BITO', '', 'GORONTALO', '2007-03-09', 'P', 16, '', '', '', ''),
('0078047550', 'Mirnawati Deu', '', 'Gorontalo', '2007-03-02', 'P', 3, '', '', '', ''),
('0078049959', 'INTAN PURNAMASARI KIAYI', '', 'KABILA', '2007-04-11', 'P', 16, '', '', '', ''),
('0078136928', 'Bunga Wista Permata Buato', '', 'Gorontalo', '2007-10-30', 'P', 13, '', '', '', ''),
('0078141482', 'Siti Nur Fadila Suleman', '', 'Gorontalo', '2007-03-03', 'P', 14, '', '', '', ''),
('0078155336', 'ABDUL WAHYU HASAN', '', 'Gorontalo', '2007-06-29', 'L', 10, '', '', '', ''),
('0078170212', 'Mohamad Rasya Afandi', '', 'Gorontalo', '2007-07-29', 'L', 19, '', '', '', ''),
('0078198348', 'MOHAMAD SYAHRIL H. NASIR', '', 'Gorontalo', '2007-01-11', 'L', 20, '', '', '', ''),
('0078342485', 'NENG WULANDARI', '', 'GORONTALO', '2007-06-24', 'P', 18, '', '', '', ''),
('0078377848', 'NADYA FATIMAH BADJARAT', '', 'Kabila', '2007-11-08', 'P', 10, '', '', '', ''),
('0078395919', 'SITI RAHMA LADJO', '', 'Gorontalo', '2007-04-01', 'P', 6, '', '', '', ''),
('0078398147', 'APRILIA SYAHRANI S. HAMZAH', '', 'Gorontalo', '2007-11-03', 'P', 8, '', '', '', ''),
('0078399643', 'MOHAMMAD YUSUF SYAWAL', '', 'GORONTALO', '2007-06-15', 'L', 22, '', '', '', ''),
('0078430372', 'NURUL PRATIWI TAMBIPI', '', 'BONE BOLANGO', '2007-10-22', 'P', 9, '', '', '', ''),
('0078440370', 'DWI RAHMATIA LATUWO', '', 'Kabila', '2007-09-02', 'P', 11, '', '', '', ''),
('0078450252', 'Rahmiyati Inaku', '', 'Gorontalo', '2014-12-31', 'P', 20, '', '', '', ''),
('0078487191', 'SITI NURFADILLAH MASSA', '', 'Gorontalo', '2007-04-01', 'P', 17, '', '', '', ''),
('0078499168', 'Mohamad Nabil Hasan', '', 'Kabila', '2007-01-11', 'L', 17, '', '', '', ''),
('0078510578', 'Febianty Salsabila Tahir', '', 'Gorontalo', '2007-02-27', 'P', 15, '', '', '', ''),
('0078517555', 'Septiansyach Kondoalumang', '', 'Gorontalo', '2007-12-27', 'L', 22, '', '', '', ''),
('0078535909', 'BUNGA AULIYA ANDI PATONGAI', '', 'Wawondula', '2007-05-18', 'P', 19, '', '', '', ''),
('0078537981', 'MOH. MAULID SUMAGA', '', 'GORONTALO', '2007-04-26', 'L', 11, '', '', '', ''),
('0078564097', 'ALFIANSYAH OTOLOMO', '', 'Gorontalo', '2007-02-10', 'L', 17, '', '', '', ''),
('0078700956', 'SYAHRINI', '', 'TETE B', '2007-12-04', 'P', 16, '', '', '', ''),
('0078716540', 'MOHAMAD ILHAM H. TADU', '', 'Gorontalo', '2007-05-20', 'L', 23, '', '', '', ''),
('0078726333', 'Muhammad Rafly Adam', '', 'GORONTALO', '2007-05-03', 'L', 9, '', '', '', ''),
('0078744905', 'AFDIANSYAH LALU', '', 'Gorontalo', '2007-10-19', 'L', 12, '', '', '', ''),
('0078779702', 'NUR AZIZAH HAKIM', '', 'Gorontalo', '2007-10-27', 'P', 14, '', '', '', ''),
('0078810286', 'Rifki Arif Haipi', '', 'Gorontalo', '2007-07-28', 'L', 16, '', '', '', ''),
('0078857135', 'MOHAMAD RIZKY DJAFAR', '', 'Gorontalo', '2007-04-11', 'L', 11, '', '', '', ''),
('0078975891', 'Suci Rahmawaty Syukur', '', 'Gorontalo', '2007-12-13', 'P', 21, '', '', '', ''),
('0079010021', 'M. RAMADIYANSAH PUTRA HASAN', '', 'Gorontalo', '2007-12-06', 'L', 8, '', '', '', ''),
('0079011309', 'SITI FADILLAH PATUTE', '', 'Gorontalo', '2007-11-27', 'P', 9, '', '', '', ''),
('0079016926', 'Ramdan Abdullah', '', 'Gorontalo', '2007-09-30', 'L', 8, '', '', '', ''),
('0079020416', 'MOH. NABIL SALIM', '', 'GORONTALO', '2007-11-13', 'L', 16, '', '', '', ''),
('0079032587', 'Aldina Sakira Djakaria', '', 'Ternate', '2007-05-27', 'P', 21, '', '', '', ''),
('0079050234', 'FAHRUL YUNUS MAKU', '', 'KABILA', '2007-02-16', 'L', 20, '', '', '', ''),
('0079052081', 'DHIA FADILAH GURUSINGA', '', 'TOLUAYA', '2007-12-08', 'P', 18, '', '', '', ''),
('0079214761', 'MOHAMAD ARYA USMAN', '', 'GORONTALO', '2007-07-07', 'L', 9, '', '', '', ''),
('0079291639', 'DELVIRA AULIA PUTRI ABADA', '', 'Gorontalo', '2007-02-07', 'P', 18, '', '', '', ''),
('0079369736', 'Sriwiyanti Alimun', '', 'Gorontalo', '2007-04-21', 'P', 22, '', '', '', ''),
('0079442285', 'Pirsa Purnama Harun', '', 'Gorontalo', '2007-07-29', 'P', 20, '', '', '', ''),
('0079475007', 'SANDRAWATI BOTUTIHE', '', 'GORONTALO', '2007-08-05', 'P', 14, '', '', '', ''),
('0079736544', 'Abdurahman Kantu', '', 'Gorontalo', '2007-02-15', 'L', 18, '', '', '', ''),
('0079852833', 'NURSIYAH SUE', '', 'GORONTALO', '2007-06-16', 'P', 10, '', '', '', ''),
('0079927698', 'Mohamad Rasya Al Kahfi Toma', '', 'Gorontalo', '2007-07-04', 'L', 16, '', '', '', ''),
('0079957064', 'RINDY RIANI YUSUF', '', 'KABILA', '2007-01-16', 'P', 20, '', '', '', ''),
('0081006243', 'Nurhayati Abdullah', '', 'Gorontalo', '2008-11-01', 'P', 23, '', '', '', ''),
('0081117536', 'Bunga Fidelya Nayi', '', 'Pinolosian', '2008-07-04', 'P', 14, '', '', '', ''),
('0081127988', 'PRISCILLA SEPTYAWATI BUATO', '', 'SUWAWA', '2008-07-12', 'P', 6, '', '', '', ''),
('0081193989', 'Nur Fadila Saba', '', 'Gorontalo', '2008-07-08', 'P', 23, '', '', '', ''),
('0081295706', 'Fitri Apriyanti Ali', '', 'Gorontalo', '2008-04-27', 'P', 7, '', '', '', ''),
('0081327556', 'NURMALA FEBRIANTI HUBU', '', 'GORONTALO', '2008-02-03', 'P', 13, '', '', '', ''),
('0081410938', 'ABDUL RAHMAN REYNALDI MA\'RUF', '', 'Gorontalo', '2008-04-10', 'L', 1, '', '', '', ''),
('0081416063', 'SITI TARISYAH NAYU', '', 'Gorontalo', '2008-02-01', 'P', 13, '', '', '', ''),
('0081456059', 'NUR - AHIRA MURSID', '', 'SOGITIA', '2007-05-02', 'P', 11, '', '', '', ''),
('0081551126', 'MOH FAZRIN ANTU', '', 'OLUHUTA', '2008-01-09', 'L', 12, '', '', '', ''),
('0081578435', 'WISNU FIRMANSYAH YUSUF', '', 'Gorontalo', '2008-12-02', 'L', 6, '', '', '', ''),
('0081749422', 'SRINAZWANI RAHMAN', '', 'DULUPI', '2008-03-12', 'P', 11, '', '', '', ''),
('0081765777', 'Samuel Cristian Toebola', '', 'Gorontalo', '2008-09-23', 'L', 7, '', '', '', ''),
('0081767854', 'Andriyanto Septian Oka', '', 'Kabila', '2008-09-28', 'L', 8, '', '', '', ''),
('0081801693', 'Fadhila Kadir', '', 'Gorontalo', '2008-09-28', 'P', 10, '', '', '', ''),
('0081820158', 'SAHNUN NAYLA PUTRI PASILIA', '', 'Sumedang', '2008-06-14', 'P', 10, '', '', '', ''),
('0081899015', 'SRI ANGGRIANI ADAM', '', 'Gorontalo', '2008-08-05', 'P', 5, '', '', '', ''),
('0082033201', 'MOHAMAD RIVALDY SULEMAN', '', 'Gorontalo', '2008-10-28', 'L', 3, '', '', '', ''),
('0082040181', 'Siti Khoirunnisa Faisal', '', 'Gorontalo', '2008-02-29', 'P', 11, '', '', '', ''),
('0082067026', 'RAHMATIA MUSTAPA', '', 'Gorontalo', '2008-05-02', 'P', 23, '', '', '', ''),
('0082157227', 'KHAIDIR ALI SAHADAT', '', 'GORONTALO', '2008-12-04', 'L', 14, '', '', '', ''),
('0082175117', 'MOHAMAD FAHKRI AL FIKRI ADAM', '', 'SUWAWA', '2008-12-28', 'L', 2, '', '', '', ''),
('0082269016', 'Hilwa Zazkia Lakoro', '', 'Gorontal', '2008-12-10', 'P', 13, '', '', '', ''),
('0082270586', 'FADILATUL JANNAH UMADJI', '', 'Kabila', '2008-04-20', 'P', 11, '', '', '', ''),
('0082436548', 'SITI MUTMAINAH HASAN', '', 'GORONTALO', '2008-11-25', 'P', 13, '', '', '', ''),
('0082518825', 'Cahaya Makmur', '', 'Suwawa', '2008-12-27', 'P', 5, '', '', '', ''),
('0082524116', 'MOHAMAD FAHRI HASAN', '', 'GORONTALO', '2008-05-21', 'L', 5, '', '', '', ''),
('0082626931', 'RAFLIYANTO MOHAMAD', '', 'Gorontalo', '2008-12-02', 'L', 4, '', '', '', ''),
('0082729427', 'Moh. Ilham Deu', '', 'Bitung', '2008-07-17', 'L', 3, '', '', '', ''),
('0082751429', 'SITI NURSALIMA HASAN', '', 'Kabila', '2008-06-10', 'P', 8, '', '', '', ''),
('0082807407', 'nurjahwa yunus', '', 'Gorontalo', '2008-10-04', 'P', 5, '', '', '', ''),
('0082922687', 'Vidya Wardana Asimin', '', 'Kabila', '2008-07-04', 'P', 10, '', '', '', ''),
('0082929535', 'RAHMAT IBRAHIM', '', 'GORONTALO', '2008-03-24', 'L', 9, '', '', '', ''),
('0082958933', 'Definza Puti', '', 'Oluhuta', '2008-12-10', 'P', 11, '', '', '', ''),
('0083011865', 'RIVANI ISMAIL', '', 'KAB. GORONTALO', '2008-07-01', 'P', 1, '', '', '', ''),
('0083066076', 'NURAINI MUSA', '', 'Kabila', '2008-07-20', 'P', 12, '', '', '', ''),
('0083094870', 'MUH. FITRAH P', '', 'Pisou', '2008-10-01', 'L', 8, '', '', '', ''),
('0083122251', 'MOH. ARGA SYAHPUTRA BAKRI', '', 'Gorontalo', '2008-07-31', 'L', 8, '', '', '', ''),
('0083209431', 'Mohamad Nur Fickar Lapananda', '', 'Gorontalo', '2008-05-12', 'L', 12, '', '', '', ''),
('0083223624', 'SITI AMALIA ULOLI', '', 'GORONTALO', '2008-10-01', 'P', 1, '', '', '', ''),
('0083241770', 'M. Ridho Al Juve', '', 'Pringkumpul', '2008-12-13', 'L', 23, '', '', '', ''),
('0083358549', 'VANAYA FISILMI KAFFAH MAMONTO', '', 'Gorontalo', '2008-09-25', 'P', 9, '', '', '', ''),
('0083392494', 'PUTRIYA NUR MOHI NAPU', '', 'Gorontalo', '2008-06-26', 'P', 9, '', '', '', ''),
('0083413148', 'RAHMAWATI LALU', '', 'Gorontalo', '2007-12-22', 'P', 12, '', '', '', ''),
('0083511978', 'Mekar Ayu Mapparebbang', '', 'Bakung', '2008-06-24', 'P', 12, '', '', '', ''),
('0083529483', 'SITI HUMAYRA B. YUSUF', '', 'Gorontalo', '2008-07-12', 'P', 10, '', '', '', ''),
('0083602494', 'Rahmat Aditya Abdullah', '', 'Gorontalo', '2009-08-01', 'L', 5, '', '', '', ''),
('0083653010', 'Salsabila Mahmud', '', 'Kabila', '2008-02-14', 'P', 13, '', '', '', ''),
('0083790025', 'alfira agustiani djakaria', '', 'gorontalo', '2008-08-09', 'P', 23, '', '', '', ''),
('0083867946', 'AZIZIA REVILINA BONE', '', 'Gorontalo', '2008-10-17', 'P', 1, '', '', '', ''),
('0083938146', 'MOH. RISKI ADAM', '', 'GORONTALO', '2008-07-27', 'L', 7, '', '', '', ''),
('0084068037', 'FAUZUL TRIDAFA MAKASAU', '', 'Gorontalo', '2008-01-26', 'L', 13, '', '', '', ''),
('0084078176', 'Nurmila Ali', '', 'Gorontalo', '2008-03-26', 'P', 11, '', '', '', ''),
('0084113059', 'FARADILA K. MUSA', '', 'Kabila', '2008-06-02', 'P', 5, '', '', '', ''),
('0084178448', 'ALFIN ABDULRAHMAN', '', 'Kabila', '2008-02-13', 'L', 11, '', '', '', ''),
('0084227868', 'YULISTIANA LASOMA', '', 'GORONTALO', '2008-07-24', 'P', 14, '', '', '', ''),
('0084272142', 'Anna Al Thafunnisa Bentu', '', 'Kabila', '2008-03-24', 'P', 10, '', '', '', ''),
('0084294500', 'RYFAI\'Z AMUNE', '', 'GORONTALO', '2008-10-22', 'L', 2, '', '', '', ''),
('0084316224', 'IRMA DAMA', '', 'GORONTALO', '2008-07-19', 'P', 11, '', '', '', ''),
('0084364395', 'SYAHNIDA IRMALIANA PALOWA', '', 'Gorontalo', '2008-07-19', 'P', 8, '', '', '', ''),
('0084365311', 'NAGIEB SURAHMAN', '', 'GORONTALO', '2008-02-27', 'L', 4, '', '', '', ''),
('0084385318', 'Rahmat Manti', '', 'Gorontalo', '2008-10-21', 'L', 3, '', '', '', ''),
('0084441926', 'MERIZKI AKUNA', '', 'Gorontalo', '2008-03-10', 'L', 1, '', '', '', ''),
('0084470954', 'RICHARD KEVIN MANUEKE', '', 'Dutohe Barat', '2008-09-14', 'L', 1, '', '', '', ''),
('0084498073', 'MOH. HIKMAL BOUTI', '', 'Gorontalo', '2008-05-18', 'L', 9, '', '', '', ''),
('0084508360', 'Putri Abas', '', 'Gorontalo', '2008-01-02', 'P', 5, '', '', '', ''),
('0084509885', 'SULISTIYA KONDOALUMANG', '', 'Gorontalo', '2008-10-24', 'P', 7, '', '', '', ''),
('0084624104', 'ROSLINDA HULUKATI', '', 'KABILA', '2008-08-30', 'P', 2, '', '', '', ''),
('0084762273', 'PUTRI RAMADHANI YUSUF', '', 'Gorontalo', '2008-09-17', 'P', 23, '', '', '', ''),
('0084815042', 'Cahya Rahmatia Mile', '', 'Gorontalo', '2008-07-31', 'P', 5, '', '', '', ''),
('0084830066', 'Sefrilyani Riani Ruchban', '', 'Gorontalo', '2008-09-25', 'P', 11, '', '', '', ''),
('0084890673', 'CAHAYA SABRIA ULFI UTAMI LAYA', '', 'Gorontalo', '2008-05-22', 'P', 10, '', '', '', ''),
('0084928148', 'Satrio Saputra Daud', '', 'Gorontalo', '2008-12-09', 'L', 6, '', '', '', ''),
('0084990116', 'Moh Riski K', '', 'Tolitoli', '2008-08-27', 'L', 11, '', '', '', ''),
('0085007890', 'Nawadla Manueke', '', 'Gorontalo', '2008-03-17', 'P', 13, '', '', '', ''),
('0085183167', 'DIKA PRASSETYA', '', 'Manado', '2008-07-11', 'L', 12, '', '', '', ''),
('0085189572', 'Khairunisya Ismail', '', 'Kabila', '2008-05-23', 'P', 12, '', '', '', ''),
('0085193006', 'NUR ALISA MOHAMAD', '', 'GORONTALO', '2008-06-18', 'P', 8, '', '', '', ''),
('0085228025', 'AMNA MOHAMAD', '', 'Gorontalo', '2008-12-16', 'P', 1, '', '', '', ''),
('0085236313', 'KHUMAIRAH SALSABILA', '', 'GORONTALO', '2008-11-09', 'P', 4, '', '', '', ''),
('0085241458', 'Wahyulanti Ishak', '', 'Kab. Gorontalo', '2008-01-13', 'P', 14, '', '', '', ''),
('0085241896', 'AKBAR MAULANA LAHATI', '', 'GORONTALO', '2008-03-17', 'L', 14, '', '', '', ''),
('0085279898', 'All Faiq Hidayat Rauf', '', 'Gorontalo', '2009-05-08', 'L', 14, '', '', '', ''),
('0085287784', 'ADRIANSYAH PUTRA ISMAIL', '', 'GORONTALO', '2008-08-23', 'L', 10, '', '', '', ''),
('0085404420', 'RIZKYA WAHYUNI SAPUTRI', '', 'Gorontalo', '2008-06-10', 'P', 14, '', '', '', ''),
('0085471507', 'SRI RAHAYU PUTRI MOHI', '', 'KABILA', '2008-05-21', 'P', 10, '', '', '', ''),
('0085541925', 'SYAFIA RAMADHANI YUSUF', '', 'GORONTALO', '2008-09-14', 'P', 5, '', '', '', ''),
('0085605809', 'MOH. ALFATH MADINA', '', 'KABILA', '2008-01-31', 'L', 10, '', '', '', ''),
('0085629046', 'AMELIA DAUD', '', 'GORONTALO', '2008-05-20', 'P', 9, '', '', '', ''),
('0085731262', 'Mohamad Reza Noiyo', '', 'Gorontalo', '2008-07-22', 'L', 7, '', '', '', ''),
('0085765675', 'Diva Adelia Abas', '', 'Gorontalo', '2008-01-15', 'P', 8, '', '', '', ''),
('0085843403', 'LARAS PURBA NINGRUM', '', 'Gorontalo', '2008-06-03', 'P', 23, '', '', '', ''),
('0085856705', 'ARGA MILE', '', 'GORONTALO', '2008-05-14', 'L', 1, '', '', '', ''),
('0085916936', 'ARIEL PRATAMA SHERINIAN LAHAY', '', 'GORONTALO', '2008-03-10', 'L', 9, '', '', '', ''),
('0085927270', 'MAGFIRAH ABDULRAHMAN', '', 'Kabila', '2008-01-04', 'P', 12, '', '', '', ''),
('0085928384', 'FITRAN RAHIM', '', 'Gorontalo', '2008-09-28', 'L', 4, '', '', '', ''),
('0085929042', 'RIFKY RAMADHAN TOMA', '', 'Gorontalo', '2008-09-02', 'L', 1, '', '', '', ''),
('0085992910', 'Meywanti Suleman', '', 'Gorontalo', '2008-05-05', 'P', 11, '', '', '', ''),
('0086015650', 'NUR SINTIA OTOLOMO', '', 'GORONTALO', '2008-08-09', 'P', 8, '', '', '', ''),
('0086017793', 'ALIFIA MAHMUD', '', 'GORONTALO', '2008-05-06', 'P', 9, '', '', '', ''),
('0086101261', 'Ridho Ramadhan Olii', '', 'Gorontalo', '2008-09-27', 'L', 14, '', '', '', ''),
('0086107123', 'MARCELL ADOLONG', '', 'Gorontalo', '2008-03-15', 'L', 13, '', '', '', ''),
('0086168981', 'Fauzi Rizkiyawan Sangi', '', 'Pinogu', '2008-11-28', 'L', 5, '', '', '', ''),
('0086182474', 'NUR ALYA HUSAIN', '', 'GORONTALO', '2008-03-18', 'P', 9, '', '', '', ''),
('0086205259', 'Nur Mahdiyah Pakaya', '', 'Gorontalo', '2008-05-20', 'P', 13, '', '', '', ''),
('0086207194', 'Tri Sultan Pakaya', '', 'Gorontalo', '2008-09-23', 'L', 6, '', '', '', ''),
('0086240071', 'Bagaskoro Dwi Saputro', '', 'Gorontalo', '2008-05-30', 'L', 11, '', '', '', ''),
('0086264036', 'SALSA RAMADHANI KADIR', '', 'GORONTALO', '2008-09-23', 'P', 4, '', '', '', ''),
('0086329179', 'NUR AIDIL ISHAK', '', 'GORONTALO', '2008-12-08', 'P', 7, '', '', '', ''),
('0086375409', 'YURIKE HASAN', '', 'Gorontalo', '2008-03-12', 'P', 7, '', '', '', ''),
('0086541998', 'NURAZIZAH KAPLAM', '', 'Gorontalo', '2007-12-28', 'P', 8, '', '', '', ''),
('0086650737', 'MOHAMAD FAHRI AFDAL MOHI', '', 'GORONTALO', '2008-04-05', 'L', 3, '', '', '', ''),
('0086687599', 'SINTIA HASAN', '', 'Gorontalo', '2008-03-20', 'P', 4, '', '', '', ''),
('0086805749', 'SAFIRA ANGRAINI PAN MANGIDI', '', 'Gorontalo', '2008-09-26', 'P', 2, '', '', '', ''),
('0086812567', 'MOH. FAHRIANSYA NUSI', '', 'Gorontalo', '2008-08-21', 'L', 23, '', '', '', ''),
('0086826983', 'MEYLISA P. HAMZAH', '', 'GORONTALO', '2008-05-06', 'P', 9, '', '', '', ''),
('0086864941', 'PUTRI NAYSHILA SALIMANI', '', 'GORONTALO', '2008-03-05', 'P', 10, '', '', '', ''),
('0086979623', 'RIBALDI SYAFAR UMAR', '', 'Suwawa', '2008-09-08', 'L', 13, '', '', '', ''),
('0086997069', 'Riska Djailani', '', 'Gorontalo', '2008-06-15', 'P', 13, '', '', '', ''),
('0087039669', 'NUR APRILIA DAUD', '', 'KABILA', '2008-04-29', 'P', 14, '', '', '', ''),
('0087206078', 'Febriyanto Rizky Mohamad', '', 'Gorontalo', '2008-02-15', 'L', 9, '', '', '', ''),
('0087312479', 'Nazwa Ayu Salsabila', '', 'Gorontalo', '2008-10-22', 'P', 10, '', '', '', ''),
('0087369322', 'MOH. AKMAL PANIGORO', '', 'GORONTALO', '2008-05-28', 'L', 13, '', '', '', ''),
('0087439854', 'Fadhlur Rahman Djafar', '', 'Kabila', '2008-03-04', 'L', 10, '', '', '', ''),
('0087484069', 'MUHAMMAD BASYIR RAMADHAN BITO', '', 'GORONTALO', '2008-09-06', 'L', 5, '', '', '', ''),
('0087567261', 'MOHAMAD RIZKI FAUZI AHMAD', '', 'GORONTALO', '2008-08-27', 'L', 3, '', '', '', ''),
('0087581896', 'MOH. REHAN MONOARFA', '', 'Gorontalo', '2008-02-27', 'L', 9, '', '', '', ''),
('0087606694', 'RAFLI PAKAYA', '', 'Gorontalo', '2008-07-11', 'L', 13, '', '', '', ''),
('0087626572', 'ALIF ZAKARIA', '', 'GORONTALO', '2008-09-17', 'L', 10, '', '', '', ''),
('0087637216', 'Mohamad Reisyah Naeri', '', 'Kabila', '2008-08-25', 'L', 23, '', '', '', ''),
('0087653010', 'NUR ANISA MAKRUN', '', 'Kaidundu Barat', '2008-10-23', 'P', 6, '', '', '', ''),
('0087727319', 'KHAIRUL FAUZAN LANTONI', '', 'Gorontalo', '2008-12-02', 'L', 3, '', '', '', ''),
('0087728161', 'Putra Permana Rasya Isa', '', 'Gorontalo', '2008-08-02', 'L', 14, '', '', '', ''),
('0087733104', 'Nabila Ramhadani Biahimo', '', 'Gorontalo', '2008-09-17', 'P', 3, '', '', '', ''),
('0087827865', 'Moh. Andika Pratama Adam', '', 'Gorontalo', '2008-07-03', 'L', 14, '', '', '', ''),
('0087866272', 'NURFADILA IBRAHIM', '', 'GORONTALO', '2008-03-30', 'P', 9, '', '', '', ''),
('0087879320', 'Chrystin Junilisya Hamatia', '', 'Gorontalo', '2008-06-17', 'P', 14, '', '', '', ''),
('0088055093', 'SITI ANNISA GOBEL', '', 'GORONTALO', '2008-08-11', 'P', 2, '', '', '', ''),
('0088058128', 'Ahmad Saleh', '', 'Gorontalo', '2008-02-25', 'L', 14, '', '', '', ''),
('0088068180', 'Margaretha Abudi', '', 'Gorontalo', '2008-06-27', 'P', 10, '', '', '', ''),
('0088120277', 'Wizra Mahardika Junus', '', 'Gorontalo', '2008-08-12', 'P', 12, '', '', '', ''),
('0088190842', 'SUCI AFRIANI USMAN', '', 'GORONTALO', '2008-01-01', 'P', 10, '', '', '', ''),
('0088223598', 'MUTIA PANTI', '', 'GORONTALO', '2008-08-27', 'P', 7, '', '', '', ''),
('0088244173', 'SITI AWALIA YASIN', '', 'Kabila', '2008-04-24', 'P', 14, '', '', '', ''),
('0088324046', 'ZULFIKAR MAHMUD', '', 'GORONTALO', '2008-06-30', 'L', 23, '', '', '', ''),
('0088395253', 'KESYA PUTRI MASSA', '', 'Gorontalo', '2008-03-10', 'P', 11, '', '', '', ''),
('0088416742', 'KRESYA HASAN', '', 'Gorontalo', '2008-01-17', 'P', 14, '', '', '', ''),
('0088456371', 'MOH. IBRAHIM DUAWULU', '', 'GORONTALO', '2008-07-13', 'L', 13, '', '', '', ''),
('0088466710', 'MOHAMAD RIFKI ISMAIL', '', 'GORONTALO', '2008-03-29', 'L', 12, '', '', '', ''),
('0088487305', 'RAHMATIA Y. MOLI', '', 'Gorontalo', '2008-01-02', 'P', 10, '', '', '', ''),
('0088499424', 'Farras Maftuh Igirisa', '', 'Gorontalo', '2008-04-24', 'L', 12, '', '', '', ''),
('0088531216', 'RAHMATIYA HALID', '', 'Gorontalo', '2008-11-16', 'P', 11, '', '', '', ''),
('0088546712', 'SUCI APRILIAWATY DJAFAR', '', 'Gorontalo', '2008-04-10', 'P', 12, '', '', '', ''),
('0088572400', 'ILHAM A. KASIM', '', 'Gorontalo', '2008-06-18', 'L', 10, '', '', '', ''),
('0088600202', 'Muhammad Farhan Dalu', '', 'Gorontalo', '2008-03-19', 'L', 8, '', '', '', ''),
('0088736156', 'Laila Putri Husain', '', 'Gorontalo', '2008-09-12', 'P', 1, '', '', '', ''),
('0088739136', 'MOH RIZKI ADAM', '', 'KABILA', '2008-11-20', 'L', 4, '', '', '', ''),
('0088770965', 'APRILIA S AHMAD', '', 'KABILA', '2008-04-02', 'P', 9, '', '', '', ''),
('0088802493', 'DESY CLAUDIA R. SYAWAL', '', 'Gorontalo', '2008-09-22', 'P', 1, '', '', '', ''),
('0088835892', 'Dwi Muji Rahayu', '', 'Gorontalo', '2008-10-26', 'P', 10, '', '', '', ''),
('0088895244', 'ABDUL ADAM DANIAL', '', 'GORONTALO', '2008-07-18', 'L', 4, '', '', '', ''),
('0088928584', 'CITRA YUNINGSI AMIRI', '', 'GORONTALO', '2008-11-27', 'P', 3, '', '', '', ''),
('0088955250', 'SRI FATRAYANI ANATASYA ADAM', '', 'Gorontalo', '2008-09-29', 'P', 6, '', '', '', ''),
('0088996904', 'Cesia Pratiwi Karim', '', 'Gorontalo', '2008-12-10', 'P', 2, '', '', '', ''),
('0089098699', 'AQBAR FAUZAN BAU', '', 'GORONTALO', '2008-06-04', 'L', 8, '', '', '', ''),
('0089123380', 'MAGFIRA HULUKATI', '', 'GORONTALO', '2008-08-31', 'P', 3, '', '', '', ''),
('0089145594', 'Nazlia Amune', '', 'Kab. Gorontalo', '2008-03-11', 'P', 11, '', '', '', ''),
('0089157042', 'Mutiara Diko', '', 'Bitung', '2008-01-25', 'P', 12, '', '', '', ''),
('0089193251', 'Andini Rukaiyah Yusuf', '', 'Kabila', '2007-11-21', 'P', 12, '', '', '', ''),
('0089207362', 'DWITA ANGGREINI PUTRI KOBISI', '', 'GORONTALO', '2008-03-21', 'P', 14, '', '', '', ''),
('0089295164', 'PUTRI ANASTSYA LASIDO', '', 'Kabila', '2008-07-01', 'P', 4, '', '', '', ''),
('0089301520', 'AHMAD SYAHRIL SUPARDI', '', 'Kabila', '2008-02-08', 'L', 3, '', '', '', ''),
('0089319299', 'MUHAMMAD AFGANSYAH MANOPPO', '', 'Gorontalo', '2008-05-19', 'L', 10, '', '', '', ''),
('0089390450', 'FADLAN USMAN', '', 'GORONTALO', '2008-08-30', 'L', 2, '', '', '', ''),
('0089404694', 'Mohammad Rifki Anwar', '', 'Gorontalo', '2008-05-28', 'L', 5, '', '', '', ''),
('0089421431', 'Mohamad Fahri Djafar', '', 'Kabila', '2008-09-25', 'L', 6, '', '', '', ''),
('0089501962', 'MOHAMMAD FAJAR HASAN', '', 'Gorontalo', '2008-02-25', 'L', 23, '', '', '', ''),
('0089524898', 'MARSYA FADILA', '', 'Gorontalo', '2008-02-15', 'P', 13, '', '', '', ''),
('0089532622', 'SUCY S. DJAILANI', '', 'Gorontalo', '2008-06-07', 'P', 8, '', '', '', ''),
('0089548899', 'Siti Farawansyah Naeri', '', 'Kabila', '2008-08-25', 'P', 12, '', '', '', ''),
('0089590765', 'MOHAMAD REYHAN ABDULLAH', '', 'GORONTALO', '2008-11-12', 'L', 2, '', '', '', ''),
('0089795764', 'Moh.Rehan Djafar', '', 'Gorontalo', '2008-11-07', 'L', 1, '', '', '', ''),
('0089820651', 'Fachri Septian Rahman', '', 'Gorontalo', '2008-09-10', 'L', 6, '', '', '', ''),
('0089838238', 'IQBAL MANTU', '', 'GORONTALO', '2008-12-29', 'L', 6, '', '', '', ''),
('0089847281', 'REZKY ADITYA ALI', '', 'Luwuk', '2008-10-14', 'L', 10, '', '', '', ''),
('0089889185', 'NUR RAHMA BARUADI', '', 'Gorontalo', '2008-06-19', 'P', 8, '', '', '', ''),
('0089982094', 'Julianty Y. Wijaya', '', 'Gorontalo', '2008-07-06', 'P', 9, '', '', '', ''),
('0091169153', 'SEYSIA AULIA ISA', '', 'Gorontalo', '2009-03-12', 'P', 6, '', '', '', ''),
('0091218984', 'TIARA ALMAGAFIRAH MAKSUM', '', 'GORONTALO', '2009-09-03', 'P', 23, '', '', '', ''),
('0091224562', 'zaskia ibrahim', '', 'Gorontalo', '2009-05-12', 'P', 7, '', '', '', ''),
('0091264440', 'Andin Julianti Eksan', '', 'Gorontalo', '2009-07-02', 'P', 7, '', '', '', ''),
('0091295161', 'AISYA FITRAMADHANI YUSUF', '', 'GORONTALO', '2009-09-09', 'P', 4, '', '', '', ''),
('0091440108', 'Marsya Yuwansya Kadir', '', 'Gorontalo', '2009-07-07', 'P', 1, '', '', '', ''),
('0091671410', 'Salsabila Ramadhani Sandagang', '', 'Luwuk', '2009-09-07', 'P', 23, '', '', '', ''),
('0091864806', 'Siti Radillawati Isa', '', 'Gorontalo', '2009-04-14', 'P', 4, '', '', '', ''),
('0091872261', 'SITI RAHMA ULOLI', '', 'GORONTALO', '2009-03-25', 'P', 2, '', '', '', ''),
('0091892754', 'NURFADILLAH Y MOLI', '', 'GORONTALO', '2009-03-24', 'P', 5, '', '', '', '');
INSERT INTO `anggota` (`nisn`, `nama_lengkap`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `id_kelas`, `thn_masuk`, `foto`, `pass`, `username`) VALUES
('0091954983', 'MUHAMMAD KURNIA USMAN', '', 'GORONTALO', '2009-08-29', 'L', 1, '', '', '', ''),
('0092016878', 'INAYAH MAHARANI MAHMUD', '', 'GORONTALO', '2009-01-17', 'P', 5, '', '', '', ''),
('0092041616', 'Siti Nurjihan Putri Ades', '', 'Gorontalo', '2009-01-10', 'P', 1, '', '', '', ''),
('0092067306', 'MOHAMAD ADITIYA SULEMAN', '', 'Gorontalo', '2009-04-18', 'L', 3, '', '', '', ''),
('0092162341', 'NABILA NURFIDYA AHMAD', '', 'Gorontalo', '2009-05-01', 'P', 4, '', '', '', ''),
('0092168399', 'FAHRI MUTALA', '', 'GORONTALO', '2009-01-17', 'L', 23, '', '', '', ''),
('0092448017', 'SITI FADILA USMAN', '', 'BITUNG', '2009-01-24', 'P', 7, '', '', '', ''),
('0092458182', 'MOHAMAD GILANG HULUKATI', '', 'Gorontalo', '2009-03-03', 'L', 7, '', '', '', ''),
('0092483761', 'PUTRI ADELIA ADAM', '', 'GORONTALO', '2009-12-23', 'P', 2, '', '', '', ''),
('0092562406', 'Ubayd Abd Hafid Ma\'ruf', '', 'GORONTALO', '2009-06-30', 'L', 5, '', '', '', ''),
('0092577065', 'Abdul Raif Isa', '', 'Kabila', '2009-06-09', 'L', 6, '', '', '', ''),
('0092632451', 'NAZWATUN HASANA UMAR', '', 'Gorontalo', '2009-06-14', 'P', 7, '', '', '', ''),
('0092674790', 'MOH. VALLEN PUTRA TAMBIYO', '', 'Gorontalo', '2009-02-13', 'L', 23, '', '', '', ''),
('0092739929', 'Adri Anzah Manangin', '', 'Gorontalo', '2009-08-13', 'L', 2, '', '', '', ''),
('0092823925', 'ALISSYA BOTUTIHE', '', 'GORONTALO', '2009-06-04', 'P', 2, '', '', '', ''),
('0092849614', 'MOHAMAD ILHAM KASIM', '', 'Gorontalo', '2009-02-06', 'L', 6, '', '', '', ''),
('0092891873', 'INAYAH TODOLO', '', 'SUWAWA', '2009-05-05', 'P', 2, '', '', '', ''),
('0093174849', 'HARDIKA SAPUTRA NABU', '', 'Gorontalo', '2009-01-06', 'L', 3, '', '', '', ''),
('0093229947', 'IKHSAN NURHIDAYAH ZUMARDIN', '', 'KAB. GORONTALO', '2009-03-21', 'L', 1, '', '', '', ''),
('0093357380', 'JUNIARDI STIEFANUS JOSHUA CHARLIE BALANDATU', '', 'Gorontalo', '2009-06-16', 'L', 23, '', '', '', ''),
('0093379705', 'Husniyah Djafar', '', 'Gorontalo', '2009-05-13', 'P', 1, '', '', '', ''),
('0093386792', 'NURAIN USMAN', '', 'GORONTALO', '2009-01-24', 'P', 3, '', '', '', ''),
('0093412984', 'SITI RADIATHUL UTINA', '', 'GORONTALO', '2009-04-14', 'P', 5, '', '', '', ''),
('0093430045', 'SALSABILA LIMEHU', '', 'BONGOIME', '2009-05-10', 'P', 5, '', '', '', ''),
('0093557481', 'Alfathir Abdurrahman Sude', '', 'Gorontalo', '2009-06-12', 'L', 4, '', '', '', ''),
('0093849112', 'MOH. REZKY Y. KADIR', '', 'BONGOPINI', '2009-03-06', 'L', 7, '', '', '', ''),
('0093945274', 'Gusnar Alif', '', 'Waipia', '2009-01-28', 'L', 4, '', '', '', ''),
('0093949993', 'SRI YURNIYANINGSIH TAHIR', '', 'GORONTALO', '2009-06-16', 'P', 3, '', '', '', ''),
('0094001110', 'Luluk Hatim Mufidah Arbi', '', 'Sintang', '2009-05-07', 'P', 3, '', '', '', ''),
('0094115740', 'RAISA RAMADHANI NOHO', '', 'GORONTALO', '2009-09-09', 'P', 7, '', '', '', ''),
('0094161066', 'Moh.Revan Ibrahim', '', 'Gorontalo', '2009-12-10', 'L', 3, '', '', '', ''),
('0094193445', 'FARAH INDIRA HUNTA', '', 'GORONTALO', '2009-01-20', 'P', 3, '', '', '', ''),
('0094296516', 'ALFATUR R. RAHMAN', '', 'BINTAUNA', '2009-09-11', 'L', 2, '', '', '', ''),
('0094306249', 'ABDUL ISMAIL HASYIM', '', 'GORONTALO', '2009-09-23', 'L', 3, '', '', '', ''),
('0094350492', 'ZASKIA AMALIA YUSUF', '', 'GORONTALO', '2009-02-18', 'P', 3, '', '', '', ''),
('0094417461', 'SAFRIL MASA', '', 'GORONTALO', '2009-04-01', 'L', 8, '', '', '', ''),
('0094459829', 'FEBRIYANDIN ISHAK', '', 'Gorontalo', '2009-02-11', 'P', 4, '', '', '', ''),
('0094751648', 'SITI QEIINA AL\'QNASIH HASAN', '', 'GORONTALO', '2009-01-26', 'P', 2, '', '', '', ''),
('0094910445', 'NURFADILLAH YASIN', '', 'GORONTALO', '2009-07-07', 'P', 3, '', '', '', ''),
('0095076928', 'NUR ADILAH MAR\'ATUN SOLIHAH', '', 'Gorontalo', '2009-03-12', 'P', 4, '', '', '', ''),
('0095102198', 'NUR CAHYANI ENTE', '', 'GORONTALO', '2009-05-23', 'P', 7, '', '', '', ''),
('0095204887', 'Moh.Tegar Ekapratias', '', 'Gorontalo', '2009-05-02', 'L', 3, '', '', '', ''),
('0095267779', 'NUR HALISA ISIMA', '', 'KABILA', '2009-02-23', 'P', 6, '', '', '', ''),
('0095430510', 'FEBRIYANTI DAUD', '', 'Gorontalo', '2009-02-01', 'P', 6, '', '', '', ''),
('0095531581', 'ZAHRA NAZIFA KASIM', '', 'GORONTALO', '2009-01-01', 'P', 2, '', '', '', ''),
('0095563893', 'FAISAL MAKU', '', 'GORONTALO', '2009-03-01', 'L', 7, '', '', '', ''),
('0095586469', 'Ramlah Abdullah', '', 'Gorontalo', '2009-09-02', 'P', 7, '', '', '', ''),
('0095786098', 'NAYSILA A. SAMAUNA', '', 'GORONTALO', '2009-03-19', 'P', 4, '', '', '', ''),
('0095853223', 'NABILA PUTRI HASAN', '', 'Gorontalo', '2009-03-29', 'P', 9, '', '', '', ''),
('0095880255', 'SITI SYIFA MUSTAPA', '', 'GORONTALO', '2009-01-28', 'P', 3, '', '', '', ''),
('0096096742', 'FATMAWATI KAMSIA', '', 'GORONTALO', '2009-02-22', 'P', 23, '', '', '', ''),
('0096339843', 'DEA MULYANI YUSUF', '', 'GORONTALO', '2009-07-02', 'P', 6, '', '', '', ''),
('0096390408', 'NASYA KHAIRA MAR\'AH AHMAD', '', 'Gorontalo', '2009-03-29', 'P', 23, '', '', '', ''),
('0096624940', 'CHIKA HAPSARI NUPU', '', 'GORONTALO', '2009-01-26', 'P', 23, '', '', '', ''),
('0096666112', 'HARLAN TRIANSYAH KARIM', '', 'Gorontalo', '2009-04-30', 'L', 2, '', '', '', ''),
('0096727273', 'NURSIFA YUSUF', '', 'GORONTALO', '2009-02-03', 'P', 7, '', '', '', ''),
('0096823304', 'Putri Adelia Mahmud', '', 'Gorontalo', '2009-04-21', 'P', 6, '', '', '', ''),
('0096839525', 'ANASTASYA KAHALI', '', 'Gorontalo', '2009-04-21', 'P', 2, '', '', '', ''),
('0096975980', 'NAJWA NAIYA TAHILI', '', 'TOMPASO', '2009-03-28', 'P', 3, '', '', '', ''),
('0097077384', 'Wahyuni humalanggi', '', 'Poowo', '2009-06-24', 'P', 1, '', '', '', ''),
('0097155721', 'MOH. FARID DUNGGIO', '', 'Gorontalo', '2009-06-21', 'L', 6, '', '', '', ''),
('0097181634', 'SITI ARYANI PANESA HULUKATI', '', 'PAGUYAMAN', '2009-06-28', 'P', 4, '', '', '', ''),
('0097263550', 'ALFIN GUSMADHANI ILAHUDE', '', 'GORONTALO', '2009-08-31', 'L', 3, '', '', '', ''),
('0097340243', 'Dwi Rahmi Tangahu', '', 'Suwawa', '2009-05-09', 'P', 2, '', '', '', ''),
('0097452696', 'MONALISA BOTUTIHE', '', 'Gorontalo', '2009-01-17', 'P', 5, '', '', '', ''),
('0097486695', 'SALSABILLAH AURELIA MONOARFA', '', 'GORONTALO', '2009-01-20', 'P', 7, '', '', '', ''),
('0097631727', 'ALDZAKY H. LAMATO', '', 'GORONTALO', '2009-05-11', 'L', 1, '', '', '', ''),
('0097939584', 'SALMAN AL FARIZI AMIN', '', 'Gorontalo', '2009-02-02', 'L', 2, '', '', '', ''),
('0097989731', 'nuraprilia katili', '', 'Gorontalo', '2009-04-27', 'P', 5, '', '', '', ''),
('0098076190', 'DIMAS KARIM', '', 'GORONTALO', '2009-03-23', 'L', 2, '', '', '', ''),
('0098085065', 'PUTRI BALGIS AULIA', '', 'PALU', '2009-03-10', 'P', 1, '', '', '', ''),
('0098085546', 'AYU ANNIFA  RAHMATIA HALUTI', '', 'Gorontalo', '2009-07-15', 'P', 3, '', '', '', ''),
('0098108749', 'Reyhan Fahrezki Mile', '', 'Gorontalo', '2009-06-26', 'L', 23, '', '', '', ''),
('0098133642', 'Anisa Eka Putri', '', 'Gorontalo', '2009-02-08', 'P', 23, '', '', '', ''),
('0098138224', 'NUR AIN HUSA', '', 'GORONTALO', '2009-07-19', 'P', 4, '', '', '', ''),
('0098438307', 'MOHAMAD FAREL KARIM', '', 'Kabila', '2009-07-10', 'L', 7, '', '', '', ''),
('0098444479', 'NUR SYAMSIAH RAHMA M. BOTUTIHE', '', 'SUWAWA', '2009-04-06', 'P', 1, '', '', '', ''),
('0098508270', 'DWI PUTRI NAZILAH ISMAIL', '', 'GORONTALO', '2009-06-18', 'P', 4, '', '', '', ''),
('0098516816', 'Aliff Putra Harnawan', '', 'Manado', '2009-07-10', 'L', 23, '', '', '', ''),
('0098609809', 'SRI AULIA S. BILUNTU', '', 'Gorontalo', '2009-01-10', 'P', 2, '', '', '', ''),
('0098609847', 'NUR APRILIA ADAM', '', 'GORONTALO', '2009-04-23', 'P', 1, '', '', '', ''),
('0098812154', 'FIQKI ALDIYANSAH MAUDI', '', 'Gorontalo', '2009-04-16', 'L', 4, '', '', '', ''),
('0098871022', 'STEFANI MOOTALU', '', 'GORONTALO', '2009-10-19', 'P', 7, '', '', '', ''),
('0098878357', 'REGITA TINO', '', 'Marisa', '2009-05-15', 'P', 4, '', '', '', ''),
('0098919501', 'FAHRIL KURNIAWAN DIDIPU', '', 'GORONTALO', '2009-02-15', 'L', 1, '', '', '', ''),
('0098925030', 'SRI FAHRIA SUMARDI', '', 'GORONTALO', '2009-11-09', 'P', 3, '', '', '', ''),
('0099089696', 'ANDRIYANTO SAPUTRA HASAN', '', 'Gorontalo', '2009-01-31', 'L', 1, '', '', '', ''),
('0099111068', 'SITI NURHALIZAH KARIM', '', 'GORONTALO', '2009-05-02', 'P', 3, '', '', '', ''),
('0099149600', 'DIMAS SAPUTRA HIYANGO', '', 'GORONTALO', '2009-06-18', 'L', 1, '', '', '', ''),
('0099171259', 'ABDUL TORIK YUSUF', '', 'Gorontalo', '2009-10-23', 'L', 2, '', '', '', ''),
('0099202638', 'MUTIA ADAM', '', 'KABILA', '2009-08-19', 'P', 23, '', '', '', ''),
('0099259554', 'PUTRI REGINA HAPPY', '', 'GORONTALO', '2009-01-21', 'P', 3, '', '', '', ''),
('0099287039', 'MUH. ZULKIFLI KUKU', '', 'Kabila', '2009-06-20', 'L', 4, '', '', '', ''),
('0099403051', 'Moh. Firmansyah Usman', '', 'Gorontalo', '2009-03-21', 'L', 4, '', '', '', ''),
('0099413022', 'NIA REVALINA ABDURRAHMAN', '', 'Gorontalo', '2009-05-11', 'P', 1, '', '', '', ''),
('0099499583', 'NAZWA SAPUTRI DALILU', '', 'KABILA', '2009-01-01', 'P', 2, '', '', '', ''),
('0099604081', 'Aura Aulia Latif', '', 'Gorontalo', '2009-05-28', 'P', 5, '', '', '', ''),
('0099721978', 'MOHAMAD REYHAN IBRAHIM ANTU', '', 'GORONTALO', '2009-10-20', 'L', 7, '', '', '', ''),
('0099723135', 'SALSABILLA PUTRI DJUI', '', 'KABILA', '2009-10-13', 'P', 3, '', '', '', ''),
('0099743418', 'MUH. ADRIAN NAFSAL YAMANI A. DUKALANG', '', 'MAKASSAR', '2009-07-22', 'L', 4, '', '', '', ''),
('0099845385', 'Nuraini Syahbania Panigoro', '', 'Gorontalo', '2009-07-30', 'P', 2, '', '', '', ''),
('0099892070', 'AHMAD KASIM', '', 'Kabila', '2009-01-02', 'L', 5, '', '', '', ''),
('0101668638', 'IMELDA YAHYA', '', 'Manado', '2010-02-12', 'P', 23, '', '', '', ''),
('0101818666', 'Lisya Azyyati Aulia Syahrun', '', 'Gorontalo', '2010-01-10', 'P', 6, '', '', '', ''),
('0102754675', 'GRESLIYA LASENA', '', 'GORONTALO', '2010-01-02', 'P', 23, '', '', '', ''),
('0104557844', 'Muhammad Akbar Sulila', '', 'Gorontalo', '2010-05-16', 'L', 6, '', '', '', ''),
('0105960636', 'Intan Putri Nur Aini Pakai', '', 'Gorontalo', '2010-05-19', 'P', 6, '', '', '', ''),
('0108959751', 'Aira Magfirah A. Mahmud', '', 'Gorontalo', '2010-01-27', 'P', 2, '', '', '', ''),
('3045372521', 'Sri Rosalinda Botutihe', '', 'Gorontalo', '2004-05-29', 'P', 19, '', '', '', ''),
('3054703434', 'Robin Ilahude', '', 'Duminanga', '2005-06-05', 'L', 21, '', '', '', ''),
('3065774576', 'Moh. Fahrul Otoluwa', '', 'Gorontalo', '2006-12-29', 'L', 16, '', '', '', ''),
('3069094150', 'Mohammad Din Fadillah', '', 'Tangerang', '2006-02-04', 'L', 22, '', '', '', ''),
('3070720549', 'NAZWA PUTRI KIRANI', '', 'Gorontalo', '2007-01-05', 'P', 5, '', '', '', ''),
('3071303958', 'TAUFIQULLHAJ MIOLO', '', 'Gorontalo', '2007-12-17', 'L', 9, '', '', '', ''),
('3071442452', 'IBRAHIM TANGIA', '', 'Gorontalo', '2007-06-28', 'L', 10, '', '', '', ''),
('3071518159', 'NIZWAN PUTRA R. AHMAD', '', 'Gorontalo', '2007-03-07', 'L', 8, '', '', '', ''),
('3072145764', 'Zahra Safia Choirunnisa', '', 'Jakarta', '2007-12-05', 'P', 9, '', '', '', ''),
('3073127773', 'RIZALDY RAMADHAN IGIRISA', '', 'Gorontalo', '2007-09-29', 'L', 9, '', '', '', ''),
('3073560128', 'Muh. Tharik Alfikri Hadju', '', 'Makasar', '2007-06-02', 'L', 15, '', '', '', ''),
('3075469822', 'Indri Ishak', '', 'Gorontalo', '2007-11-12', 'P', 4, '', '', '', ''),
('3077078866', 'Mohamad Iqbal Botutihe', '', 'Gorontalo', '2007-11-19', 'L', 11, '', '', '', ''),
('3078675371', 'Moh. Rafli Sandadang', '', 'Luwuk', '2007-03-06', 'L', 18, '', '', '', ''),
('3086790888', 'DEVINDA TOMELO', '', 'Paguyaman', '2008-12-28', 'P', 13, '', '', '', ''),
('3086800524', 'Dwi Melisa Idris', '', 'Suwawa', '2008-05-07', 'P', 7, '', '', '', ''),
('3087012719', 'Muh. Alridho Fatiklas Dawali', '', 'Gorontalo', '2008-05-01', 'L', 14, '', '', '', ''),
('3087798596', 'Abdulrahim Asyraf', '', 'Bitung', '2008-01-16', 'L', 5, '', '', '', ''),
('3089154307', 'FAREL FIDYANTO THAIB', '', 'Gorontalo', '2008-04-26', 'L', 11, '', '', '', ''),
('3091255219', 'Zahra Chintia Biya', '', 'Gorontalo', '2009-07-18', 'P', 1, '', '', '', ''),
('3091558702', 'DINDA RAHMAWATI SUKARDI MASSA', '', 'KABILA', '2009-11-02', 'P', 7, '', '', '', ''),
('3093167487', 'Muhamad Isad Nur Rizky Irwan', '', 'Gorontalo', '2009-02-28', 'L', 2, '', '', '', ''),
('3093556678', 'Rayhan Suharto Saud', '', 'Gorontalo', '2009-03-31', 'L', 6, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `kode_isbn` varchar(100) NOT NULL,
  `no_buku` char(6) NOT NULL,
  `judul_buku` varchar(120) NOT NULL,
  `pengarang` varchar(100) NOT NULL,
  `penerbit` varchar(100) NOT NULL,
  `tahun_terbit` varchar(5) NOT NULL,
  `tempat_terbit` varchar(100) NOT NULL,
  `kategori_buku` tinyint(4) NOT NULL,
  `jenis` int(11) DEFAULT NULL,
  `kode_klasifikasi` char(30) NOT NULL,
  `kelas` char(5) DEFAULT NULL,
  `jilid_edisi` varchar(20) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `sumber_dana` varchar(50) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `tanggal_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_isbn`, `no_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `tempat_terbit`, `kategori_buku`, `jenis`, `kode_klasifikasi`, `kelas`, `jilid_edisi`, `jumlah_buku`, `sumber_dana`, `harga_satuan`, `tanggal_input`) VALUES
(4, 'ISBN2021', '5001', 'Kimia', 'argus', 'mufidah', '2020', 'gorontalo', 1, 1, '500', 'VII', 'jilid 1', 30, 'BOS', 70, '2021-11-12 22:21:57'),
(6, '21345', '4001', 'Bahasa Indonesia', 'Balmond', 'Moonton', '2019', 'MLBB', 1, 1, '400', 'VIII', '1', 20, 'BOS', 50000, '2021-11-27 20:02:28'),
(10, 'ISBN001', '10001', 'Komik Boruto', 'Ryan', 'Ryan', '2022', 'Gorontalo', 0, 0, '1000', 'Umum', 'Limited Edition', 5, 'DANA BANSOS', 10000, '2022-01-16 14:29:19'),
(11, 'ISBN002', '8001', 'Sastra', 'Ryan', 'Ryan', '2022', 'Gorontalo', 1, 2, '800', 'IX', 'Limited Edition', 9, 'DANA BANSOS', 20000, '2022-01-16 14:34:30'),
(12, 'ISBN003', '5002', 'Reaksi Nuklir', 'Ricky', 'Ricky', '2022', 'Pakistan', 1, 2, '500', 'IX', 'Limited Edition', 1000, 'DANA KORUPT', 900000, '2022-01-16 14:48:04'),
(13, 'ISBN004', '4002', 'B Ingg', 'Aldi Taher', 'Aldi Taher', '2018', 'Jakarta', 1, 1, '400', 'VIII', 'Limited Edition', 20, 'DANA BANSOS', 150000, '2022-01-16 15:12:26'),
(14, 'ISBN005', '10001', 'Komik One Piece', 'Aldi Taher', 'Aldi Taher', '2018', 'Gorontalo', 0, 0, '1000', 'Umum', 'Limited Edition', 10, 'DANA KORUPT', 10000, '2022-01-16 15:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nuptk` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jk` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `thn_masuk` varchar(4) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `pass` varchar(80) NOT NULL,
  `username` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nuptk`, `nama_lengkap`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `jabatan`, `thn_masuk`, `foto`, `pass`, `username`) VALUES
('123456789', 'Pak guru', '5234324', 'gorontalo', '2021-11-16', 'Laki Laki', 'Staff pengajar', '2020', '1636752565.0117618edcb502dca.png', '$2y$10$En1Dr6.AWMuvpHzzDmfBKuxpHOeNgrh3EROKGlzY19EFkwfSvk73u', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `history_buku`
--

CREATE TABLE `history_buku` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `waktu_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history_buku`
--

INSERT INTO `history_buku` (`id`, `id_buku`, `jumlah`, `waktu_input`) VALUES
(3, 1, 5, '2021-06-06 18:55:11'),
(4, 1, 10, '2021-06-06 18:55:29'),
(5, 2, 20, '2021-06-07 02:08:03'),
(6, 3, 5, '2021-06-07 02:08:46'),
(7, 1, 3, '2021-11-04 13:54:12'),
(8, 3, 8, '2021-11-04 14:20:19'),
(9, 1, 2, '2021-11-05 21:50:27'),
(10, 1, 2, '2021-11-10 21:44:14'),
(11, 4, 30, '2021-11-12 21:21:57'),
(12, 5, 2, '2021-11-16 22:49:42'),
(13, 6, 20, '2021-11-27 19:02:28'),
(14, 4, 1, '2021-11-27 19:02:58'),
(15, 4, 2, '2021-12-15 03:04:20'),
(16, 7, 5, '2022-01-16 13:12:17'),
(17, 8, 5, '2022-01-16 13:12:24'),
(18, 9, 5, '2022-01-16 13:12:35'),
(19, 10, 5, '2022-01-16 13:29:19'),
(20, 11, 10, '2022-01-16 13:34:30'),
(21, 12, 1000, '2022-01-16 13:48:04'),
(22, 13, 20, '2022-01-16 14:12:26'),
(23, 14, 5, '2022-01-16 14:13:14'),
(24, 14, 5, '2022-01-16 14:15:47');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'VII-A'),
(2, 'VII-B'),
(3, 'VII-C'),
(4, 'VII-D'),
(5, 'VII-E'),
(6, 'VII-F'),
(7, 'VII-G'),
(8, 'VIII-A'),
(9, 'VIII-B'),
(10, 'VIII-C'),
(11, 'VIII-D'),
(12, 'VIII-E'),
(13, 'VIII-F'),
(14, 'VIII-G'),
(15, 'IX-A'),
(16, 'IX-B'),
(17, 'IX-C'),
(18, 'IX-D'),
(19, 'IX-E'),
(20, 'IX-F'),
(21, 'IX-G'),
(22, 'IX-H'),
(23, 'VII-H'),
(24, 'VII-H');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `kode_klasifikasi` char(30) NOT NULL,
  `klasifikasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`kode_klasifikasi`, `klasifikasi`) VALUES
('000', 'Karya Umum'),
('100', 'Filsafat'),
('1000', 'Novel'),
('200', 'Agama'),
('2000', 'Ensiklopedia'),
('300', 'Ips'),
('400', 'Bahasa'),
('500', 'Ipa'),
('600', 'Ilmu Pengetahuan Praktis'),
('700', 'Kesenian/Olahraga'),
('800', 'Kesastraan'),
('900', 'Sejarah');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `nisnORuname` varchar(50) NOT NULL,
  `token` varchar(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `nisnORuname`, `token`, `timestamp`) VALUES
(13, 'rafik', 'wYhZi82RQI', '2021-12-15 03:34:03'),
(14, 'namira', '39mO8KR2MZ', '2021-12-16 06:58:48'),
(15, 'ilham', 'uy4AwyMHUb', '2021-12-15 03:34:18'),
(16, 'fikar', 'CJOFzVYAEC', '2021-11-05 23:24:32'),
(17, 'admin', '6wOFOWztAq', '2022-01-16 14:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `non_buku`
--

CREATE TABLE `non_buku` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `no_buku` char(10) NOT NULL,
  `buku` varchar(10) NOT NULL,
  `kode_klasifikasi` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`no_buku`, `buku`, `kode_klasifikasi`) VALUES
('0001', 'test1', '000'),
('1001', 'test2', '100'),
('1002', 'test3', '100');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `nisn` varchar(20) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `lama` int(3) NOT NULL,
  `tgl_jatuh_tempo` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `denda` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_buku`, `nisn`, `nuptk`, `tgl_pinjam`, `lama`, `tgl_jatuh_tempo`, `tgl_kembali`, `denda`) VALUES
(1, 4, '0062387902', '0', '2021-12-12', 3, '2021-12-15', '2021-12-15', 0),
(2, 11, '0007718206', '0', '2022-01-16', 2, '2022-01-18', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nuptk`);

--
-- Indexes for table `history_buku`
--
ALTER TABLE `history_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`kode_klasifikasi`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `non_buku`
--
ALTER TABLE `non_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`no_buku`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `nisn` (`nisn`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `history_buku`
--
ALTER TABLE `history_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `non_buku`
--
ALTER TABLE `non_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`nisn`) REFERENCES `anggota` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
