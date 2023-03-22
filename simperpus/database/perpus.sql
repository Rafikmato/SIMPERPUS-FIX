-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2021 at 11:50 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

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
(2, 'Mohamad Rafiq Mato', 'rafik', '$2y$10$q1uWtjkpznclaTm9RxfJeudNW4OWwYthNRn./E6PYzLie/EXSDTje'),
(3, 'Namira Panelewen', 'namira', '$2y$10$pyhA3k/TxN2WxmcudvHvx.DhPRGBKmiXX9Opexs0axIOLgUFdZg1G'),
(4, 'Ilham Dwiki', 'ilham', '$2y$10$iyq2QiAACoHUf77QbdTS5OqxlLrDB6AprwB.ja5st2xZK5rmIRrfS');

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
('3223432', 'Bayu Rahmanto', '5234324', 'gorontalo', '2021-11-11', 'Laki Laki', 4, '2020', '1636752507.9457618edc7be6e3e.png', '$2y$10$m4GiNxio8oMKaf7mOirmdepnqTE7nawQ6A7uavDfGtk0jL.Ch43kG', '3223432');

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
  `kode_klasifikasi` char(3) NOT NULL,
  `jilid_edisi` varchar(20) NOT NULL,
  `jumlah_buku` int(11) NOT NULL,
  `sumber_dana` varchar(50) NOT NULL,
  `harga_satuan` int(11) NOT NULL,
  `tanggal_input` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_isbn`, `no_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `tempat_terbit`, `kategori_buku`, `kode_klasifikasi`, `jilid_edisi`, `jumlah_buku`, `sumber_dana`, `harga_satuan`, `tanggal_input`) VALUES
(4, 'ISBN2021', '5001', 'Kimia', 'argus', 'mufidah', '2020', 'gorontalo', 1, '500', 'jilid 1', 30, 'BOS', 70, '2021-11-12 22:21:57'),
(5, 'ISBN2021', '2001', 'Kimia', 'okta', 'mufidah', '2020', 'gorontalo', 0, '200', 'jilid 1', 2, 'BOS', 12000, '2021-11-16 23:49:42');

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
(12, 5, 2, '2021-11-16 22:49:42');

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
(1, 'VII - A'),
(2, 'VII - B'),
(3, 'VII - C'),
(4, 'VIII - A'),
(5, 'VIII - B'),
(6, 'VIII - C'),
(7, 'IX - A'),
(10, 'IX - B'),
(16, 'IX - C');

-- --------------------------------------------------------

--
-- Table structure for table `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `kode_klasifikasi` char(3) NOT NULL,
  `klasifikasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klasifikasi`
--

INSERT INTO `klasifikasi` (`kode_klasifikasi`, `klasifikasi`) VALUES
('000', 'Karya Umum'),
('100', 'Filsafat'),
('200', 'Agama'),
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
(5, 'admin', 'K1ygICIkjj', '2021-06-07 02:04:56'),
(6, '532419051', 'WVzxkavnP1', '2021-06-07 02:02:55'),
(7, '765345435345', 'Rrlg8Md2u0', '2021-06-07 00:48:30'),
(8, 'omGondrong', 'lWoK0vp4FR', '2021-06-06 22:01:44'),
(9, '531418022', 'suRXcHk1eA', '2021-06-06 22:18:56'),
(10, 'azbot11', 'Ec6DIeGsMA', '2021-06-07 02:10:47'),
(11, 'pian2021', '1CCrordVjQ', '2021-06-07 02:11:00'),
(12, 'wahyusman', 'T2FLetCnUL', '2021-06-07 02:10:30'),
(13, 'rafik', 'zu1otS9ZYY', '2021-11-16 22:49:20'),
(14, 'namira', 'RhcGdFO07t', '2021-11-12 08:08:55'),
(15, 'ilham', 'S5jwWGjZgx', '2021-11-05 21:46:52'),
(16, 'fikar', 'CJOFzVYAEC', '2021-11-05 23:24:32');

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
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history_buku`
--
ALTER TABLE `history_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `non_buku`
--
ALTER TABLE `non_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
