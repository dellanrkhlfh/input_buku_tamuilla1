-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Feb 2024 pada 04.19
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tamubuku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bt_login`
--

CREATE TABLE `bt_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bt_login`
--

INSERT INTO `bt_login` (`username`, `password`) VALUES
('illa', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bt_tamu`
--

CREATE TABLE `bt_tamu` (
  `no` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pesan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bt_tamu`
--

INSERT INTO `bt_tamu` (`no`, `nama`, `email`, `pesan`) VALUES
(12, 'illa', 'illafauziah0@gmail.com', 'halo ganteng!'),
(13, 'Della nrkhlfh', 'kepolo@gmai.com', 'lopyu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bt_user`
--

CREATE TABLE `bt_user` (
  `no` int(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bt_user`
--

INSERT INTO `bt_user` (`no`, `nama`, `ttl`, `alamat`, `username`, `password`) VALUES
(4, 'illa', '21 juni', 'kp sagaranten', 'illa', 'admin'),
(5, 'hhhh', '25 desember', 'kp sagaranten', 'lala', '1122');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bt_tamu`
--
ALTER TABLE `bt_tamu`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `bt_user`
--
ALTER TABLE `bt_user`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bt_tamu`
--
ALTER TABLE `bt_tamu`
  MODIFY `no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `bt_user`
--
ALTER TABLE `bt_user`
  MODIFY `no` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
