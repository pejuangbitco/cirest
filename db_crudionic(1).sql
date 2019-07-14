-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jul 2019 pada 17.01
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
(11, 'DFR TLKLP - TLDKU', 'BETUNG', 'IDM+'),
(12, 'DFR KRSAN 1,2', 'BUKIT SIGUNTANG', 'IDM'),
(13, 'DFR BRANG 1,2', 'MARIANA', 'IDM+'),
(14, 'DFR KRSAN 1,2', 'BUNGARAN', 'IDM+'),
(15, 'DFR BKSAM 1,2', 'LAHAT', 'IDM'),
(16, 'DFR LBGAU 1,2', 'LAHAT', 'IDM'),
(17, 'DFR PGLAM 1,2', 'LAHAT', 'IDM+'),
(18, 'DFR SBING 1,2', 'LAHAT', 'IDM+'),
(19, 'DFR LBGAU 1,2', 'PEKALONGAN', 'IDM'),
(20, 'DFR MUSI 1,2', 'PEKALONGAN', 'IDM'),
(21, 'DFR SKMDU 1,2', 'PEKALONGAN', 'IDM');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_ip`
--

CREATE TABLE `alat_ip` (
  `id_alat` int(11) NOT NULL,
  `lokasi_alat` varchar(100) NOT NULL,
  `nomor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_ip`
--

INSERT INTO `alat_ip` (`id_alat`, `lokasi_alat`, `nomor`) VALUES
(1, 'DISPATCHER 1', 3013),
(2, 'DISPATCHER 2', 3013),
(3, 'SPV REALTIME', 3013),
(4, 'PLTGU KERAMASAN ', 3013),
(5, 'GI KERAMASAN ', 3111),
(6, 'GI BUNGARAN', 3112),
(7, 'GI SUNGAI KEDUKAN ', 3113),
(8, 'GI MARIANA ', 3114),
(9, 'GI NEW JAKABARING ', 3115),
(10, 'GIS KOTA TIMUR', 3116),
(11, 'GI BOOM BARU ', 3121),
(12, 'GI SUNGAI JUARO ', 3122),
(13, 'GI TALANG RATU ', 3123),
(14, 'GI SEDUDUK PUTIH ', 3124),
(15, 'GI BUKIT SIGUNTANG ', 3125),
(16, 'GIS KOTA BARAT', 0),
(17, 'PLTD SUNGAI JUARO', 3126),
(18, 'GI BORANG ', 3131),
(19, 'GI SEKAYU', 0),
(20, 'GI BETUNG ', 3132),
(21, 'GI BETUNG 275 Kv', 0),
(22, 'GI SUNGAI LILIN', 0),
(23, 'GI SUNGAI LILIN 275 kv', 0),
(24, 'GI TALANG KELAPA ', 3133),
(25, 'PLTGU AGP BORANG', 3134),
(26, 'GI KENTEN', 0),
(27, 'GI TANJUNG API API ', 3137),
(28, 'PLTG GT11 INDRALAYA', 3138),
(29, 'PLTG GT12 INDRALAYA', 3139),
(30, 'GI PRABUMULIH ', 3141);

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_ms`
--

CREATE TABLE `alat_ms` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `jenis_alat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_ms`
--

INSERT INTO `alat_ms` (`id_alat`, `nama_alat`, `jenis_alat`) VALUES
(1, 'Suhu Ruangan', 'KONDISI LINGKUNGAN'),
(2, 'kelembapan', 'KONDISI LINGKUNGAN'),
(3, 'kebersihan', 'KONDISI LINGKUNGAN'),
(4, 'Lampu Penerangan', 'KONDISI LINGKUNGAN'),
(5, 'Server SCADA', 'KONDISI FUNGSI SERVER'),
(6, 'Server Sub Sistem Komunikasi', 'KONDISI FUNGSI SERVER'),
(7, 'Server Historikal', 'KONDISI FUNGSI SERVER'),
(8, 'Server EMS', 'KONDISI FUNGSI SERVER'),
(9, 'Server DTS', 'KONDISI FUNGSI SERVER'),
(10, 'Workstation Dispatcher', 'KONDISI FUNGSI WORKSTATION'),
(11, 'Workstation Engineer', 'KONDISI FUNGSI WORKSTATION'),
(12, 'Workstation Update Database', 'KONDISI FUNGSI WORKSTATION'),
(13, 'Workstation DTS', 'KONDISI FUNGSI WORKSTATION'),
(14, 'Switch', 'KONDISI FUNGSI LAN'),
(15, 'Router', 'KONDISI FUNGSI LAN'),
(16, 'Network / LAN', 'KONDISI FUNGSI LAN'),
(17, 'Power Supply', 'KONDISI FUNGSI PERIPHERAL'),
(18, 'GPS', 'KONDISI FUNGSI PERIPHERAL'),
(19, 'Master Clock', 'KONDISI FUNGSI PERIPHERAL'),
(20, 'Storage', 'KONDISI FUNGSI PERIPHERAL'),
(21, 'Mimic / Layar Tayang', 'KONDISI FUNGSI PERIPHERAL'),
(22, 'Projector', 'KONDISI FUNGSI PERIPHERAL'),
(23, 'Static Display', 'KONDISI FUNGSI PERIPHERAL'),
(24, 'Recorder ', 'KONDISI FUNGSI PERIPHERAL'),
(25, 'Printer', 'KONDISI FUNGSI PERIPHERAL'),
(26, 'Hotline', 'KONDISI FUNGSI PENUNJANG'),
(27, 'Voice Recorder', 'KONDISI FUNGSI PENUNJANG'),
(28, 'Server Offline Database', 'KONDISI FUNGSI PENUNJANG'),
(29, 'Server Pengukur Frekuensi', 'KONDISI FUNGSI PENUNJANG');

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

--
-- Dumping data untuk tabel `alat_plc`
--

INSERT INTO `alat_plc` (`id_alat`, `lokasi_alat_dari`, `lokasi_alat_ke`, `plc`, `pax`, `mux`) VALUES
(1, 'Keramasan', 'Bukit Siguntang', '', '', ''),
(2, 'Keramasan', 'Bungaran\r\n', '', '', ''),
(3, 'Keramasan', 'Simpang Tiga', '', '', ''),
(4, 'Keramasan', 'Gandus', '', '', ''),
(5, 'Keramasan', 'New Jakabaring', '', '', ''),
(6, 'Keramasan', 'PLTG Jakabaring\r\n', '', '', ''),
(7, 'Mariana', 'Jakabaring\r\n', '', '', ''),
(8, 'Mariana', 'Borang', '', '', ''),
(9, 'Mariana', 'New Jakabaring', '', '', ''),
(10, 'Talang Ratu\r\n', 'Bukit Siguntang', '', '', ''),
(11, 'Talang Ratu\r\n', 'Seduduk Putih', '', '', ''),
(12, 'Seduduk Putih', 'Boom Baru\r\n', '', '', ''),
(13, 'Seduduk Putih', 'Borang', '', '', ''),
(14, 'Sungai Kedukan', 'Bungaran', '', '', ''),
(15, 'Sungai Kedukan', 'Sungai Juaro', '', '', ''),
(16, 'Borang', 'Sungai Juaro', '', '', ''),
(17, 'Kenten', 'Talang Kelapa', '', '', ''),
(18, 'Betung', 'Talang Kelapa', '', '', ''),
(19, 'Gandus', 'Talang Kelapa', '', '', ''),
(20, 'Kenten', 'Tanjung Api - api', '', '', ''),
(21, 'Kenten', 'Borang', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_radio`
--

CREATE TABLE `alat_radio` (
  `id_alat` int(11) NOT NULL,
  `lokasi_alat` varchar(100) NOT NULL,
  `sistem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_radio`
--

INSERT INTO `alat_radio` (`id_alat`, `lokasi_alat`, `sistem`) VALUES
(1, 'Repeater Palembang', 'Sistem Sumsel'),
(2, 'RoIP Palembang-Lampung', 'Sistem Sumsel'),
(3, 'RoIP Palembang-Lokal', 'Sistem Sumsel'),
(4, 'Kantor UPB Sumbagsel', 'Sistem Sumsel'),
(5, 'GI Keramasan', 'Sistem Sumsel'),
(6, 'PLTU Keramasan', 'Sistem Sumsel'),
(7, 'PLTG 1 Keramasan', 'Sistem Sumsel'),
(8, 'PLTG 2 Keramasan', 'Sistem Sumsel'),
(9, 'PLTG 3 Keramasan', 'Sistem Sumsel'),
(10, 'PLTGU Keramasan', 'Sistem Sumsel'),
(11, 'GI Bukit Siguntang', 'Sistem Sumsel'),
(12, 'GI Talang Ratu', 'Sistem Sumsel'),
(13, 'GI Talang Ratu', 'Sistem Sumsel'),
(14, 'GIS Kota Timur', 'Sistem Sumsel'),
(15, 'GI Talang Kelapa', 'Sistem Sumsel'),
(16, 'GI Seduduk Putih', 'Sistem Sumsel'),
(17, 'GI Boom Baru', 'Sistem Sumsel'),
(18, 'GI Sungai Juaro', 'Sistem Sumsel'),
(19, 'PLTD Sungai Juaro', 'Sistem Sumsel'),
(20, 'GI Borang', 'Sistem Sumsel'),
(21, 'PLTG AGP Borang', 'Sistem Sumsel'),
(22, 'PLTG TM 1 Jakabaring', 'Sistem Sumsel'),
(23, 'PLTG TM 2 Jakabaring', 'Sistem Sumsel'),
(24, 'GI New Jakabaring', 'Sistem Sumsel'),
(25, 'GI Sungai Kedukan', 'Sistem Sumsel'),
(26, 'GI Bungaran', 'Sistem Sumsel'),
(27, 'GI Mariana', 'Sistem Sumsel'),
(28, 'GI Simpang Tiga', 'Sistem Sumsel'),
(29, 'PLTG ST 10 Indralaya', 'Sistem Sumsel'),
(30, 'PLTG ST 11 Indralaya', 'Sistem Sumsel'),
(31, 'PLTG ST 12 Indralaya', 'Sistem Sumsel'),
(32, 'Interlink Pangkalan Balai', 'Sistem Sumsel'),
(33, 'GI Betung', 'Sistem Sumsel'),
(34, 'RoIP Prabumulih', 'Sistem Sumsel'),
(35, 'GI Prabumulih	\r\n', 'Sistem Sumsel'),
(36, 'RoIP Gumawang', 'Sistem Sumsel'),
(37, 'GI Gumanang', 'Sistem Sumsel'),
(38, 'RoIP Bukit Asam	\r\n', 'Sistem Bengkulu'),
(39, 'GI Bukit Asam', 'Sistem Bengkulu'),
(40, 'PLTU Bukit Asam', 'Sistem Bengkulu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_rtu`
--

CREATE TABLE `alat_rtu` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(100) NOT NULL,
  `kit` varchar(100) NOT NULL,
  `merk` varchar(100) NOT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_rtu`
--

INSERT INTO `alat_rtu` (`id_alat`, `nama_alat`, `kit`, `merk`, `tipe`) VALUES
(1, 'RTU KRSAN5', 'Keramasan 150', 'Micom', 'C264'),
(2, 'RTU KRSAN4', 'Keramasan 70', 'Micom', 'C264'),
(3, 'SAS JKBRG5', 'Jakabaring', 'GE', 'D400'),
(4, 'RTU BGRAN4', 'Bungaran', 'Micom', 'C264'),
(5, 'RTU SKDKN4', 'Sungai kedukan', 'Micom', 'C264'),
(6, 'RTU SJARO4', 'Suangai Juaro', 'Micom', 'C264'),
(7, 'RTU SDPTH4', 'Seduduk Putih', 'Micom', 'C264'),
(8, 'RTU TRATU4', 'Talang Ratu', 'Micom', 'C264'),
(9, 'RTU BMBRU4', 'Boom Baru', 'Micom', 'C264'),
(10, 'RTU BKSGT4', 'Bukit Siguntang', 'Micom', 'C264'),
(11, 'RTU TLKLP5', 'Talang Kelapa', 'Micom', 'C264'),
(12, 'RTU BTUNG5', 'Betung 150', 'Schneider', ''),
(13, 'SAS BTUNG6', 'Betung 275', 'GE', ''),
(14, 'RTU BRANG5 & BRANG4', 'Borang 150 dan 70', 'Micom', 'C264'),
(15, 'RTU MRINA5', 'Mariana', 'Micom', 'C264'),
(16, 'RTU SPTGA5', 'Simpang Tiga', 'Micom', 'C264'),
(17, 'RTU PBLIH5', 'Prabumulih', 'Micom', 'C264'),
(18, 'SAS SBING5', 'Simpang Belimbing', 'NR', ''),
(19, 'RTU GUMEG5', 'Gunung Megang', 'Micom', 'C264'),
(20, 'RTU BKSAM5', 'Bukit Asam', 'Micom', 'C264'),
(21, 'RTU LAHAT5', 'Lahat 150', 'Siemens', ''),
(22, 'SAS LAHAT6', 'Lahat 275', 'Alstom', ''),
(23, 'SAS PGLAM5', 'Pagar Alam', 'Schneider', ''),
(24, 'SAS MANNA', 'Manna', 'NR', ''),
(25, 'RTU LBGAU5', 'Lubuk Linggau 150', 'Micom', 'C264'),
(26, 'RTU LBGAU6', 'Lubuk Linggau 275', 'Alstom', ''),
(27, 'RTU PKLNG5 & PKLNG4', 'Pekalongan 150 dan 70', 'Micom', 'C264'),
(28, 'RTU MUSI5', 'Musi', 'Micom', 'C264'),
(29, 'RTU TESS4', 'Tess', 'Micom', 'C264');

-- --------------------------------------------------------

--
-- Struktur dari tabel `alat_scada`
--

CREATE TABLE `alat_scada` (
  `id_alat` int(11) NOT NULL,
  `nama_alat` varchar(50) NOT NULL,
  `daerah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alat_scada`
--

INSERT INTO `alat_scada` (`id_alat`, `nama_alat`, `daerah`) VALUES
(1, 'Rectifier 110V #1', 'Ruang UPS	'),
(2, 'Rectifier 110V #2', 'Ruang UPS'),
(3, 'Inverter 110V #1', 'Ruang UPS'),
(4, 'Inverter 110V #2', 'Ruang UPS'),
(5, 'Battery 110V #1', 'Ruang Battery'),
(6, 'Battery 110V #2', 'Ruang Battery'),
(7, 'Diesel Emergency', 'Ruang Battery');

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
(124, 1, 'NOK', '2019-07-18', 'admin', ''),
(125, 2, 'OK', '2019-07-18', 'admin', ''),
(126, 3, 'OK', '2019-07-18', 'admin', ''),
(127, 4, 'NOK', '2019-07-18', 'admin', ''),
(128, 5, 'NOK', '2019-07-18', 'admin', ''),
(129, 6, 'OK', '2019-07-18', 'admin', ''),
(130, 7, 'OK', '2019-07-18', 'admin', ''),
(131, 8, 'NOK', '2019-07-18', 'admin', ''),
(132, 9, 'NOK', '2019-07-18', 'admin', ''),
(133, 10, 'NOK', '2019-07-18', 'admin', ''),
(134, 11, 'NOK', '2019-07-18', 'admin', ''),
(135, 12, 'NOK', '2019-07-18', 'admin', ''),
(136, 13, 'NOK', '2019-07-18', 'admin', ''),
(137, 14, 'OK', '2019-07-18', 'admin', ''),
(138, 15, 'OK', '2019-07-18', 'admin', ''),
(139, 16, 'OK', '2019-07-18', 'admin', ''),
(140, 17, 'OK', '2019-07-18', 'admin', ''),
(141, 18, 'OK', '2019-07-18', 'admin', ''),
(142, 19, 'NOK', '2019-07-18', 'admin', ''),
(143, 20, 'NOK', '2019-07-18', 'admin', ''),
(144, 21, 'NOK', '2019-07-18', 'admin', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_ip`
--

CREATE TABLE `form_ip` (
  `id` int(11) NOT NULL,
  `alat` int(11) NOT NULL,
  `kondisi` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `admin` varchar(50) NOT NULL,
  `user` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_ip`
--

INSERT INTO `form_ip` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(31, 1, 'NOK', '2019-07-18', 'admin', ''),
(32, 2, 'NOK', '2019-07-18', 'admin', ''),
(33, 3, 'NOK', '2019-07-18', 'admin', ''),
(34, 4, 'NOK', '2019-07-18', 'admin', ''),
(35, 5, 'NOK', '2019-07-18', 'admin', ''),
(36, 6, 'NOK', '2019-07-18', 'admin', ''),
(37, 7, 'NOK', '2019-07-18', 'admin', ''),
(38, 8, 'NOK', '2019-07-18', 'admin', ''),
(39, 9, 'NOK', '2019-07-18', 'admin', ''),
(40, 10, 'NOK', '2019-07-18', 'admin', ''),
(41, 11, 'NOK', '2019-07-18', 'admin', ''),
(42, 12, 'NOK', '2019-07-18', 'admin', ''),
(43, 13, 'OK', '2019-07-18', 'admin', ''),
(44, 14, 'OK', '2019-07-18', 'admin', ''),
(45, 15, 'OK', '2019-07-18', 'admin', ''),
(46, 16, 'OK', '2019-07-18', 'admin', ''),
(47, 17, 'NOK', '2019-07-18', 'admin', ''),
(48, 18, 'NOK', '2019-07-18', 'admin', ''),
(49, 19, 'NOK', '2019-07-18', 'admin', ''),
(50, 20, 'NOK', '2019-07-18', 'admin', ''),
(51, 21, 'NOK', '2019-07-18', 'admin', ''),
(52, 22, 'OK', '2019-07-18', 'admin', ''),
(53, 23, 'OK', '2019-07-18', 'admin', ''),
(54, 24, 'OK', '2019-07-18', 'admin', ''),
(55, 25, 'OK', '2019-07-18', 'admin', ''),
(56, 26, 'OK', '2019-07-18', 'admin', ''),
(57, 27, 'OK', '2019-07-18', 'admin', ''),
(58, 28, 'OK', '2019-07-18', 'admin', ''),
(59, 29, 'OK', '2019-07-18', 'admin', ''),
(60, 30, 'OK', '2019-07-18', 'admin', '');

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

--
-- Dumping data untuk tabel `form_ms`
--

INSERT INTO `form_ms` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(1, 1, '55', '2019-07-15', 'admin', ''),
(2, 2, '33', '2019-07-15', 'admin', ''),
(3, 3, 'OK', '2019-07-15', 'admin', ''),
(4, 4, 'NOK', '2019-07-15', 'admin', ''),
(5, 5, 'NOK', '2019-07-15', 'admin', ''),
(6, 6, 'OK', '2019-07-15', 'admin', ''),
(7, 7, 'NOK', '2019-07-15', 'admin', ''),
(8, 8, 'OK', '2019-07-15', 'admin', ''),
(9, 9, 'OK', '2019-07-15', 'admin', ''),
(10, 10, 'OK', '2019-07-15', 'admin', ''),
(11, 11, 'OK', '2019-07-15', 'admin', ''),
(12, 12, 'NOK', '2019-07-15', 'admin', ''),
(13, 13, 'OK', '2019-07-15', 'admin', ''),
(14, 14, 'NOK', '2019-07-15', 'admin', ''),
(15, 15, 'NOK', '2019-07-15', 'admin', ''),
(16, 16, 'OK', '2019-07-15', 'admin', ''),
(17, 17, 'OK', '2019-07-15', 'admin', ''),
(18, 18, 'NOK', '2019-07-15', 'admin', ''),
(19, 19, 'NOK', '2019-07-15', 'admin', ''),
(20, 20, 'NOK', '2019-07-15', 'admin', ''),
(21, 21, 'NOK', '2019-07-15', 'admin', ''),
(22, 22, 'NOK', '2019-07-15', 'admin', ''),
(23, 23, 'OK', '2019-07-15', 'admin', ''),
(24, 24, 'NOK', '2019-07-15', 'admin', ''),
(25, 25, 'OK', '2019-07-15', 'admin', ''),
(26, 26, 'OK', '2019-07-15', 'admin', ''),
(27, 27, 'OK', '2019-07-15', 'admin', ''),
(28, 28, 'NOK', '2019-07-15', 'admin', ''),
(29, 29, 'NOK', '2019-07-15', 'admin', ''),
(30, 30, 'OK', '2019-07-15', 'admin', ''),
(31, 31, 'OK', '2019-07-15', 'admin', ''),
(32, 32, 'NOK', '2019-07-15', 'admin', ''),
(33, 33, 'OK', '2019-07-15', 'admin', '');

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

--
-- Dumping data untuk tabel `form_plc`
--

INSERT INTO `form_plc` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(1, 1, 'NOK', '2019-07-19', 'admin', ''),
(2, 2, 'NOK', '2019-07-19', 'admin', ''),
(3, 3, 'NOK', '2019-07-19', 'admin', ''),
(4, 4, 'NOK', '2019-07-19', 'admin', ''),
(5, 5, 'NOK', '2019-07-19', 'admin', ''),
(6, 6, 'OK', '2019-07-19', 'admin', ''),
(7, 7, 'OK', '2019-07-19', 'admin', ''),
(8, 8, 'OK', '2019-07-19', 'admin', ''),
(9, 9, 'OK', '2019-07-19', 'admin', ''),
(10, 10, 'OK', '2019-07-19', 'admin', ''),
(11, 11, 'OK', '2019-07-19', 'admin', ''),
(12, 12, 'OK', '2019-07-19', 'admin', ''),
(13, 13, 'OK', '2019-07-19', 'admin', ''),
(14, 14, 'OK', '2019-07-19', 'admin', ''),
(15, 15, 'OK', '2019-07-19', 'admin', ''),
(16, 16, 'OK', '2019-07-19', 'admin', ''),
(17, 17, 'NOK', '2019-07-19', 'admin', ''),
(18, 18, 'NOK', '2019-07-19', 'admin', ''),
(19, 19, 'OK', '2019-07-19', 'admin', ''),
(20, 20, 'OK', '2019-07-19', 'admin', ''),
(21, 21, 'OK', '2019-07-19', 'admin', '');

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

--
-- Dumping data untuk tabel `form_radio`
--

INSERT INTO `form_radio` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(1, 1, 'NOK', '2019-07-18', 'admin', ''),
(2, 2, 'NOK', '2019-07-18', 'admin', ''),
(3, 3, 'NOK', '2019-07-18', 'admin', ''),
(4, 4, 'NOK', '2019-07-18', 'admin', ''),
(5, 5, 'NOK', '2019-07-18', 'admin', ''),
(6, 6, 'NOK', '2019-07-18', 'admin', ''),
(7, 7, 'NOK', '2019-07-18', 'admin', ''),
(8, 8, 'NOK', '2019-07-18', 'admin', ''),
(9, 9, 'NOK', '2019-07-18', 'admin', ''),
(10, 10, 'NOK', '2019-07-18', 'admin', ''),
(11, 11, 'NOK', '2019-07-18', 'admin', ''),
(12, 12, 'NOK', '2019-07-18', 'admin', ''),
(13, 13, 'NOK', '2019-07-18', 'admin', ''),
(14, 14, 'OK', '2019-07-18', 'admin', ''),
(15, 15, 'OK', '2019-07-18', 'admin', ''),
(16, 16, 'OK', '2019-07-18', 'admin', ''),
(17, 17, 'OK', '2019-07-18', 'admin', ''),
(18, 18, 'OK', '2019-07-18', 'admin', ''),
(19, 19, 'NOK', '2019-07-18', 'admin', ''),
(20, 20, 'NOK', '2019-07-18', 'admin', ''),
(21, 21, 'NOK', '2019-07-18', 'admin', ''),
(22, 22, 'NOK', '2019-07-18', 'admin', ''),
(23, 23, 'OK', '2019-07-18', 'admin', ''),
(24, 24, 'OK', '2019-07-18', 'admin', ''),
(25, 25, 'OK', '2019-07-18', 'admin', ''),
(26, 26, 'OK', '2019-07-18', 'admin', ''),
(27, 27, 'OK', '2019-07-18', 'admin', ''),
(28, 28, 'OK', '2019-07-18', 'admin', ''),
(29, 29, 'OK', '2019-07-18', 'admin', ''),
(30, 30, 'OK', '2019-07-18', 'admin', ''),
(31, 31, 'NOK', '2019-07-18', 'admin', ''),
(32, 32, 'NOK', '2019-07-18', 'admin', ''),
(33, 33, 'NOK', '2019-07-18', 'admin', ''),
(34, 34, 'NOK', '2019-07-18', 'admin', ''),
(35, 35, 'OK', '2019-07-18', 'admin', ''),
(36, 36, 'NOK', '2019-07-18', 'admin', ''),
(37, 37, 'NOK', '2019-07-18', 'admin', ''),
(38, 38, 'NOK', '2019-07-18', 'admin', ''),
(39, 39, 'NOK', '2019-07-18', 'admin', ''),
(40, 40, 'NOK', '2019-07-18', 'admin', '');

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

--
-- Dumping data untuk tabel `form_rtu`
--

INSERT INTO `form_rtu` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(1, 1, 'NOK', '2019-07-18', 'admin', ''),
(2, 2, 'OK', '2019-07-18', 'admin', ''),
(3, 3, 'OK', '2019-07-18', 'admin', ''),
(4, 4, 'NOK', '2019-07-18', 'admin', ''),
(5, 5, 'NOK', '2019-07-18', 'admin', ''),
(6, 6, 'NOK', '2019-07-18', 'admin', ''),
(7, 7, 'NOK', '2019-07-18', 'admin', ''),
(8, 8, 'NOK', '2019-07-18', 'admin', ''),
(9, 9, 'NOK', '2019-07-18', 'admin', ''),
(10, 10, 'NOK', '2019-07-18', 'admin', ''),
(11, 11, 'NOK', '2019-07-18', 'admin', ''),
(12, 12, 'NOK', '2019-07-18', 'admin', ''),
(13, 13, 'NOK', '2019-07-18', 'admin', ''),
(14, 14, 'OK', '2019-07-18', 'admin', ''),
(15, 15, 'OK', '2019-07-18', 'admin', ''),
(16, 16, 'OK', '2019-07-18', 'admin', ''),
(17, 17, 'OK', '2019-07-18', 'admin', ''),
(18, 18, 'OK', '2019-07-18', 'admin', ''),
(19, 19, 'OK', '2019-07-18', 'admin', ''),
(20, 20, 'OK', '2019-07-18', 'admin', ''),
(21, 21, 'NOK', '2019-07-18', 'admin', ''),
(22, 22, 'OK', '2019-07-18', 'admin', ''),
(23, 23, 'OK', '2019-07-18', 'admin', ''),
(24, 24, 'NOK', '2019-07-18', 'admin', ''),
(25, 25, 'NOK', '2019-07-18', 'admin', ''),
(26, 26, 'NOK', '2019-07-18', 'admin', ''),
(27, 27, 'NOK', '2019-07-18', 'admin', ''),
(28, 28, 'NOK', '2019-07-18', 'admin', ''),
(29, 29, 'NOK', '2019-07-18', 'admin', '');

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

--
-- Dumping data untuk tabel `form_scada`
--

INSERT INTO `form_scada` (`id`, `alat`, `kondisi`, `tanggal`, `admin`, `user`) VALUES
(1, 1, 'NOK', '2019-07-15', 'admin', ''),
(2, 2, 'NOK', '2019-07-15', 'admin', ''),
(3, 3, 'OK', '2019-07-15', 'admin', ''),
(4, 4, 'OK', '2019-07-15', 'admin', ''),
(5, 5, 'OK', '2019-07-15', 'admin', ''),
(6, 6, 'NOK', '2019-07-15', 'admin', ''),
(7, 7, 'NOK', '2019-07-15', 'admin', '');

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
(3, 'dddd', 'user1', 'admin', '2019-07-14', 0),
(4, 'eee', 'user1', 'admin', '2019-07-14', 0),
(5, 'fff', 'user1', 'admin', '2019-07-14', 0);

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
(2, 'user1', 'usr', '1', 'user'),
(3, 'rangga', 'rang123', '123', 'admin'),
(4, 'dian', 'dian29', '29', 'user');

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
-- Indeks untuk tabel `alat_rtu`
--
ALTER TABLE `alat_rtu`
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
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `alat_ip`
--
ALTER TABLE `alat_ip`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `alat_ms`
--
ALTER TABLE `alat_ms`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `alat_plc`
--
ALTER TABLE `alat_plc`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `alat_radio`
--
ALTER TABLE `alat_radio`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `alat_rtu`
--
ALTER TABLE `alat_rtu`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `alat_scada`
--
ALTER TABLE `alat_scada`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `form_dfr`
--
ALTER TABLE `form_dfr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT untuk tabel `form_ip`
--
ALTER TABLE `form_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT untuk tabel `form_ms`
--
ALTER TABLE `form_ms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `form_plc`
--
ALTER TABLE `form_plc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `form_radio`
--
ALTER TABLE `form_radio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `form_rtu`
--
ALTER TABLE `form_rtu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `form_scada`
--
ALTER TABLE `form_scada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
