-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Nov 2021 pada 16.29
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

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
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `pass` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `username`, `pass`) VALUES
(1, 'Golden Papa', 'admin', '$2y$10$I5IxmVPbLdBlpCorvg193./TtvQyulEjiKk7qNzC8LMtiLCFiL2kC'),
(2, 'Mohamad Rafiq Mato', 'rafik', '$2y$10$q1uWtjkpznclaTm9RxfJeudNW4OWwYthNRn./E6PYzLie/EXSDTje'),
(3, 'Namira Panelewen', 'namira', '$2y$10$pyhA3k/TxN2WxmcudvHvx.DhPRGBKmiXX9Opexs0axIOLgUFdZg1G'),
(4, 'Ilham Dwiki', 'ilham', '$2y$10$iyq2QiAACoHUf77QbdTS5OqxlLrDB6AprwB.ja5st2xZK5rmIRrfS');

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
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
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`nisn`, `nama_lengkap`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `id_kelas`, `thn_masuk`, `foto`, `pass`, `username`) VALUES
('0026327019', 'Mohamad Rafiq Mato', '21312321', 'Gorontalo', '2021-11-22', 'Laki Laki', 7, '', '1636034773.32046183e8d54e3b4.png', '$2y$10$U8kq2MUAuSw7PlwGJLJC3uZV.XU7ROm/V0nrbjcEEoE6ckuf.rry6', '0026327019'),
('20130193', 'Namira anzani panelewen', '4124123123', 'Kotamobagu', '2024-06-04', 'Perempuan', 1, '2020', '1636036597.81826183eff5c7c0f.png', '$2y$10$Ooq34xN1G3YEUiN/f6C/7O1N3f3Y6jRB/qU0tdvGt5gR7/yGGrj2O', '20130193'),
('2141212', 'Ilham dwiki putra rumondor', '082121412421', 'Tilamuta', '2024-10-18', 'Laki Laki', 4, '2020', '1636036645.19036183f0252e78b.png', '$2y$10$kVTazN1HELAcaCkBSTyGZug3eeUyiyJuXc3R0LzrX1Rz6pxtloHyS', '2141212'),
('532419051', 'Wahyu Setiawan Usman', '08325235912', 'Gorontalo', '2001-09-11', 'Laki Laki', 14, '2016', '1622965176.612560bc7bb89587d.jpg', '$2y$10$/Zb4RmFw49DXlIybfvvzaeAW6nmgfs.5izuPRM29kvMbizPEq6PFK', 'wahyusman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
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
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id_buku`, `kode_isbn`, `no_buku`, `judul_buku`, `pengarang`, `penerbit`, `tahun_terbit`, `tempat_terbit`, `kategori_buku`, `kode_klasifikasi`, `jilid_edisi`, `jumlah_buku`, `sumber_dana`, `harga_satuan`, `tanggal_input`) VALUES
(1, 'ISBN2021', '5001', 'Eksperimen Kimia', 'Pemuda Tersesat', 'Sapurata', '2021', 'Gorontalo', 0, '500', 'Jilid 1 edisi 1', 18, 'DANA BOS', 50000, '2021-06-06 20:55:11'),
(2, 'ISBN2018', '8001', 'Sastra Bahasa', 'Sutisna', 'Sinar Gempita', '2018', 'Siduarjo', 1, '800', 'Jilid 1 edisi 1', 16, 'DANA BOS', 12500, '2021-06-07 04:08:03'),
(3, 'ISBN2019', '1001', 'Filsafat Kependidikan', 'Suterjo', 'Sinar Gembira', '2019', 'Siduarjo', 1, '100', 'Jilid 1 edisi 2', 13, 'DANA BOS', 20000, '2021-06-07 04:08:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
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
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nuptk`, `nama_lengkap`, `no_hp`, `tempat_lahir`, `tgl_lahir`, `jk`, `jabatan`, `thn_masuk`, `foto`, `pass`, `username`) VALUES
('32314141', 'Pak Guru', '082296663930', 'Gorontalo', '1929-09-21', 'Laki Laki', 'Guru Kelas', '2015', '1622485983.858760b52bdfd1a6b.png', '$2y$10$pNliNEwyHsgCTzMuG5/Z.elJUp2ZEUkInYbz2z8b1rmHQO0riYMXK', '32314141'),
('765345435345', 'Pian', '0888123823', 'Gorontalo', '1990-06-23', 'Laki Laki', 'Kepala Sekolah', '2001', '1622964931.604960bc7ac393ace.png', '$2y$10$KWOn8x1RCfw8Zt9bG70.KORHphD4RBwrx0Em0hCPVac.HoIBckfaK', 'pian2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_buku`
--

CREATE TABLE `history_buku` (
  `id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `waktu_input` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history_buku`
--

INSERT INTO `history_buku` (`id`, `id_buku`, `jumlah`, `waktu_input`) VALUES
(3, 1, 5, '2021-06-06 18:55:11'),
(4, 1, 10, '2021-06-06 18:55:29'),
(5, 2, 20, '2021-06-07 02:08:03'),
(6, 3, 5, '2021-06-07 02:08:46'),
(7, 1, 3, '2021-11-04 13:54:12'),
(8, 3, 8, '2021-11-04 14:20:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
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
-- Struktur dari tabel `klasifikasi`
--

CREATE TABLE `klasifikasi` (
  `kode_klasifikasi` char(3) NOT NULL,
  `klasifikasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `klasifikasi`
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
-- Struktur dari tabel `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `nisnORuname` varchar(50) NOT NULL,
  `token` varchar(11) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `log`
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
(13, 'rafik', 'MpcGT6AS1B', '2021-11-04 15:15:43'),
(14, 'namira', 'Iav9SYDHAe', '2021-11-04 15:05:09'),
(15, 'ilham', 'f3Bnr6ipOC', '2021-11-04 15:26:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `non_buku`
--

CREATE TABLE `non_buku` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `tanggal_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `non_buku`
--

INSERT INTO `non_buku` (`id`, `nama`, `jumlah`, `tanggal_masuk`) VALUES
(1, 'Globe', 20, '2021-06-06'),
(2, 'Alat Peraga', 15, '2021-06-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `test`
--

CREATE TABLE `test` (
  `no_buku` char(10) NOT NULL,
  `buku` varchar(10) NOT NULL,
  `kode_klasifikasi` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `test`
--

INSERT INTO `test` (`no_buku`, `buku`, `kode_klasifikasi`) VALUES
('0001', 'test1', '000'),
('1001', 'test2', '100'),
('1002', 'test3', '100');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
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
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_buku`, `nisn`, `nuptk`, `tgl_pinjam`, `lama`, `tgl_jatuh_tempo`, `tgl_kembali`, `denda`) VALUES
(21, 2, '0026327019', '0', '2021-11-04', 5, '2021-11-09', '0000-00-00', 0),
(22, 2, '20130193', '0', '2021-11-04', 1, '2021-11-05', '0000-00-00', 0),
(23, 2, '20130193', '0', '2021-11-04', 1, '2021-11-05', '0000-00-00', 0),
(24, 2, '20130193', '0', '2021-11-04', 1, '2021-11-05', '0000-00-00', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`nisn`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nuptk`);

--
-- Indeks untuk tabel `history_buku`
--
ALTER TABLE `history_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `klasifikasi`
--
ALTER TABLE `klasifikasi`
  ADD PRIMARY KEY (`kode_klasifikasi`);

--
-- Indeks untuk tabel `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `non_buku`
--
ALTER TABLE `non_buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`no_buku`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `history_buku`
--
ALTER TABLE `history_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `non_buku`
--
ALTER TABLE `non_buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
