-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 02.30
-- Versi server: 10.1.31-MariaDB
-- Versi PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_crudionic`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_dfr`
--

CREATE TABLE `alat_dfr` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `daerah` varchar(50) NOT NULL,
  `idm` enum('IDM','IDM+') NOT NULL DEFAULT 'IDM'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_dfr`
--

INSERT INTO `alat_dfr` (`id_alat`, `nama_alat`, `daerah`, `idm`) VALUES
(1, 'BORANG', 'BORANG', 'IDM'),
(2, 'DFR TLKLP 1,2', 'BORANG', 'IDM'),
(3, 'DFR SJARO 1,2', 'BORANG', 'IDM+'),
(4, 'DFR SDPTH 1,2', 'BORANG', 'IDM+'),
(5, 'DFR BTRJA 1,2', 'BUKIT ASAM', 'IDM'),
(6, 'DFR GUMEG 1,2', 'BUKIT ASAM', 'IDM'),
(7, 'DFR MRINA 1,2', 'KERAMASAN', 'IDM'),
(8, 'DFR KRSAN 1,2', 'SIMPANG TIGA', 'IDM'),
(9, 'DFR PBLIH 1,2', 'SIMPANG TIGA', 'IDM'),
(10, 'DFR KRSAN 1,2', 'TALANG KELAPA', 'IDM+'),
(11, 'DFR TLKLP - TLDKU', 'BETUNG', 'IDM+');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_dfr`
--

CREATE TABLE `form_dfr` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_dfr`
--

INSERT INTO `form_dfr` (`id`, `alat`, `kondisi`, `tanggal`) VALUES
(1, 1, 'NOK', '2019-07-13'),
(2, 2, 'NOK', '2019-07-13'),
(3, 3, 'NOK', '2019-07-13'),
(4, 4, 'NOK', '2019-07-13'),
(5, 1, 'NOK', '2019-07-13'),
(6, 1, 'NOK', '2019-07-13'),
(7, 2, 'NOK', '2019-07-13'),
(8, 3, 'NOK', '2019-07-13'),
(9, 1, 'NOK', '2019-07-13'),
(10, 2, 'NOK', '2019-07-13'),
(11, 3, 'NOK', '2019-07-13'),
(12, 4, 'NOK', '2019-07-13'),
(13, 5, 'NOK', '2019-07-13'),
(14, 6, 'NOK', '2019-07-13'),
(15, 1, 'NOK', '2019-07-13'),
(16, 2, 'NOK', '2019-07-13'),
(17, 3, 'NOK', '2019-07-13'),
(18, 4, 'NOK', '2019-07-13'),
(19, 5, 'NOK', '2019-07-13'),
(20, 6, 'NOK', '2019-07-13'),
(21, 7, 'NOK', '2019-07-13'),
(22, 8, 'OK', '2019-07-13'),
(23, 9, 'OK', '2019-07-13'),
(24, 1, 'NOK', '2019-07-13'),
(25, 2, 'NOK', '2019-07-13'),
(26, 3, 'NOK', '2019-07-13'),
(27, 4, 'NOK', '2019-07-13'),
(28, 5, 'NOK', '2019-07-13'),
(29, 6, 'NOK', '2019-07-13'),
(30, 7, 'NOK', '2019-07-13'),
(31, 8, 'OK', '2019-07-13'),
(32, 9, 'OK', '2019-07-13'),
(33, 10, 'NOK', '2019-07-13'),
(34, 11, 'OK', '2019-07-13'),
(35, 1, 'OK', '2019-07-13'),
(36, 2, 'OK', '2019-07-13'),
(37, 3, 'OK', '2019-07-13'),
(38, 4, 'OK', '2019-07-13'),
(39, 1, 'NOK', '2019-07-13'),
(40, 2, 'NOK', '2019-07-13'),
(41, 3, 'NOK', '2019-07-13'),
(42, 4, 'NOK', '2019-07-13'),
(43, 5, 'NOK', '2019-07-13'),
(44, 6, 'OK', '2019-07-13'),
(45, 7, 'OK', '2019-07-13'),
(46, 8, 'OK', '2019-07-13'),
(47, 9, 'OK', '2019-07-13'),
(48, 10, 'OK', '2019-07-13'),
(49, 11, 'OK', '2019-07-13'),
(50, 11, 'NOK', '2019-07-13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_customer`
--

CREATE TABLE `master_customer` (
  `customer_id` int(11) NOT NULL,
  `name_customer` varchar(50) DEFAULT NULL,
  `desc_customer` text,
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_customer`
--

INSERT INTO `master_customer` (`customer_id`, `name_customer`, `desc_customer`, `created_at`) VALUES
(1, 'Chandra Gustiya', 'Yea simple easy', '2019-05-15'),
(2, 'Hi Digital Update IONIC 4', 'Work it yes', '2019-05-15'),
(3, 'GOOD IONIC', 'Channel recommened', '2019-05-15'),
(17, 'IONIC 4 CRUD PHP MYSQL', 'Simple Description', '2019-05-18'),
(18, 'IONIC 4 LOGIN PHP MYSQL', 'Simple Description', '2019-05-18'),
(19, 'IONIC SIMPLE', 'Ionic Simple Description', '2019-05-18'),
(20, 'HAPPY CODING', 'IOnic Happy Simple Description', '2019-05-19'),
(21, 'IONIC EASY', 'Easy Simple Description', '2019-05-19'),
(22, 'IONIC HAPPY', 'Ionic Simple', '2019-05-19'),
(23, 'IONIC', 'Simple Description', '2019-05-19'),
(24, 'IONIC FRAMEWORK XXXXX', 'Simple Description Framework', '2019-05-19'),
(26, 'aaa', 'aaa', '2019-07-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `master_user`
--

CREATE TABLE `master_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `status` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `master_user`
--

INSERT INTO `master_user` (`user_id`, `username`, `password`, `status`) VALUES
(4, 'dev', '5e8edd851d2fdfbd7415232c67367cc3', 'y'),
(5, 'syad', '202cb962ac59075b964b07152d234b70', 'y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(11) NOT NULL,
  `isi_pesan` text NOT NULL,
  `dari` varchar(100) NOT NULL,
  `untuk` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `dibalas` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `isi_pesan`, `dari`, `untuk`, `tanggal`, `dibalas`) VALUES
(4, 'w', 'w', 'w', '2019-07-11', 0),
(5, 'w', 'w', 'w', '2019-06-07', 0),
(6, 'qqq', 'w', 'w', '2019-07-11', 0),
(7, 's', 'w', 'w', '2019-07-11', 0),
(8, 'ya', 'admin', 'bejo', '2019-07-11', 0),
(9, 'weee', 'admin', 'bejo', '2019-07-13', 0),
(13, 'rrrrr', 'admin', 'bejo', '2019-07-13', 0),
(14, 'ttt', 'admin', 'bejo', '2019-07-13', 0),
(17, 'dibalas dari aplikasi', 'admin', 'user1', '2019-07-13', 1),
(19, 'urab', 'user1', 'admin', '2019-07-13', 1),
(20, 'DARI CHROM', 'admin', 'user1', '2019-07-13', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama`, `username`, `password`, `status`) VALUES
(1, 'admin', 'adm', '1', 'admin'),
(2, 'user1', 'usr', '1', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alat_dfr`
--
ALTER TABLE `alat_dfr`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `form_dfr`
--
ALTER TABLE `form_dfr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `master_customer`
--
ALTER TABLE `master_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indeks untuk tabel `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alat_dfr`
--
ALTER TABLE `alat_dfr`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `form_dfr`
--
ALTER TABLE `form_dfr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `master_customer`
--
ALTER TABLE `master_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `master_user`
--
ALTER TABLE `master_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
