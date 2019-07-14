-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 07.46
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
-- Struktur dari tabel `alat_ip`
--

CREATE TABLE `alat_ip` (
  `id_alat` int(11) NOT NULL,
  `lokasi_alat` varchar(100) NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_ms`
--

CREATE TABLE `alat_ms` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `jenis_alat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_plc`
--

CREATE TABLE `alat_plc` (
  `id_alat` int(11) NOT NULL,
  `lokasi_alat_dari` varchar(200) NOT NULL,
  `lokasi_alat_ke` varchar(200) NOT NULL,
  `plc` enum('ada','-') NOT NULL,
  `pax` enum('ada','-') NOT NULL,
  `mux` enum('ada','-') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_radio`
--

CREATE TABLE `alat_radio` (
  `id_alat` int(11) NOT NULL,
  `lokasi_alat` varchar(100) NOT NULL,
  `sistem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_rtu`
--

CREATE TABLE `alat_rtu` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `kit` varchar(100) NOT NULL,
  `merk` varchar(30) NOT NULL,
  `tipe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_scada`
--

CREATE TABLE `alat_scada` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_dfr`
--

CREATE TABLE `form_dfr` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_dfr`
--

INSERT INTO `form_dfr` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(113, 1, 'NOK', '2019-07-25', 'admin', ''),
(114, 2, 'OK', '2019-07-25', 'admin', ''),
(115, 3, 'OK', '2019-07-25', 'admin', ''),
(116, 4, 'NOK', '2019-07-25', 'admin', ''),
(117, 5, 'OK', '2019-07-25', 'admin', ''),
(118, 6, 'OK', '2019-07-25', 'admin', ''),
(119, 7, 'NOK', '2019-07-25', 'admin', ''),
(120, 8, 'NOK', '2019-07-25', 'admin', ''),
(121, 9, 'NOK', '2019-07-25', 'admin', ''),
(122, 10, 'NOK', '2019-07-25', 'admin', ''),
(123, 11, 'NOK', '2019-07-25', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_ip`
--

CREATE TABLE `form_ip` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_ms`
--

CREATE TABLE `form_ms` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(100) NOT NULL,
  `user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_plc`
--

CREATE TABLE `form_plc` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_radio`
--

CREATE TABLE `form_radio` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_rtu`
--

CREATE TABLE `form_rtu` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_scada`
--

CREATE TABLE `form_scada` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indeks untuk tabel `alat_ip`
--
ALTER TABLE `alat_ip`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `alat_ms`
--
ALTER TABLE `alat_ms`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `alat_plc`
--
ALTER TABLE `alat_plc`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `alat_radio`
--
ALTER TABLE `alat_radio`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `alat_scada`
--
ALTER TABLE `alat_scada`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indeks untuk tabel `form_dfr`
--
ALTER TABLE `form_dfr`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_ip`
--
ALTER TABLE `form_ip`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_ms`
--
ALTER TABLE `form_ms`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_plc`
--
ALTER TABLE `form_plc`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_radio`
--
ALTER TABLE `form_radio`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_rtu`
--
ALTER TABLE `form_rtu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `form_scada`
--
ALTER TABLE `form_scada`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT untuk tabel `alat_ip`
--
ALTER TABLE `alat_ip`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `alat_ms`
--
ALTER TABLE `alat_ms`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `alat_plc`
--
ALTER TABLE `alat_plc`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `alat_radio`
--
ALTER TABLE `alat_radio`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `alat_scada`
--
ALTER TABLE `alat_scada`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_dfr`
--
ALTER TABLE `form_dfr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT untuk tabel `form_ip`
--
ALTER TABLE `form_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_ms`
--
ALTER TABLE `form_ms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_plc`
--
ALTER TABLE `form_plc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_radio`
--
ALTER TABLE `form_radio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_rtu`
--
ALTER TABLE `form_rtu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `form_scada`
--
ALTER TABLE `form_scada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
