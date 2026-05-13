-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 11, 2026 at 07:47 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpuspplg1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_buku`
--

CREATE TABLE `tbl_buku` (
  `idbuku` int NOT NULL,
  `judul` varchar(100) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_buku`
--

INSERT INTO `tbl_buku` (`idbuku`, `judul`, `pengarang`, `penerbit`, `created_at`, `updated_at`) VALUES
(1, 'Habis Gelap Terbitlah Terang', 'RA.Kartini', 'CV.jepara', '2026-04-08 06:05:11', NULL),
(2, 'Aufa Si Pemakan MBG', 'KEM', 'CV SAYUNG', '2026-04-08 05:56:28', NULL),
(3, 'Sipit Ngebak i Gon', 'nlaz', 'CV SAYUNG', '2026-04-08 05:57:21', NULL),
(4, 'Fizi Si Kacamata', 'safa', 'CV SAYUNG', '2026-04-08 05:59:43', NULL),
(5, 'Kem Suka Entut', 'MEMZ', 'CV SAYUNG', '2026-04-08 05:58:25', NULL),
(6, 'Perjalanan MEMZ ID Sampai Sukses', 'rama', 'CV. Prampelan', '2026-04-08 07:22:49', NULL),
(7, 'Supaya Jago Maen ML', 'Pak De', 'CV. Prampelan', '2026-04-13 01:43:28', NULL),
(8, 'Supermen 2', 'china', 'cv.semarang', '2026-05-06 05:11:39', NULL),
(12, 'Supermen1', 'Dr.KH.Nur.s.pd', 'CV.semarang', '2026-04-08 05:52:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peminjaman`
--

CREATE TABLE `tbl_peminjaman` (
  `idpinjam` int NOT NULL,
  `idpetugas` int NOT NULL,
  `idsiswa` int NOT NULL,
  `idbuku` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `waktuupdatepinjam` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_peminjaman`
--

INSERT INTO `tbl_peminjaman` (`idpinjam`, `idpetugas`, `idsiswa`, `idbuku`, `created_at`, `waktuupdatepinjam`) VALUES
(2, 1, 1, 1, '2026-05-11 01:29:19', NULL),
(4, 1, 9, 3, '2026-04-08 05:57:21', NULL),
(5, 1, 5, 1, '2026-05-11 01:32:10', NULL),
(6, 1, 6, 6, '2026-05-11 02:14:03', NULL),
(7, 1, 1, 2, '2026-05-11 05:56:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_petugas`
--

CREATE TABLE `tbl_petugas` (
  `idpetugas` int NOT NULL,
  `namapetugas` varchar(100) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_petugas`
--

INSERT INTO `tbl_petugas` (`idpetugas`, `namapetugas`, `hp`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'suroso', '087709020895', 'skansayy', '12345', '2026-04-13 04:23:30', NULL),
(4, 'sugeng', '800095875444', 'skansay', '12345', '2026-05-11 01:38:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `idsiswa` int NOT NULL,
  `nis` varchar(20) NOT NULL,
  `namasiswa` varchar(100) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`idsiswa`, `nis`, `namasiswa`, `kelas`, `alamat`, `hp`, `created_at`, `updated_at`) VALUES
(1, '2433863', 'Ramadhani Agung Saputra', 'XI PPLG 1', 'Prampelann', '087709020895', '2026-04-08 08:04:59', NULL),
(4, '2433852', 'fizi kacamata', 'XI PPLG 1', 'Desa pilangsari', '8747636542', '2026-04-08 08:17:43', NULL),
(5, '2433868', 'Sopa Khasani', 'XI PPLG 1', 'Desa konoha', '8747636784', '2026-04-13 01:35:16', NULL),
(6, '2433843', 'Aril Wahab', 'XI PPLG 1', 'Desa konoha', '87476367341', '2026-04-13 01:36:15', NULL),
(7, '2433864', 'Rifqi Julian Susanto', 'XI PPLG 1', 'Desa Daleman', '87476367341', '2026-04-13 01:37:00', NULL),
(8, '2433859', 'Muhammad Nala Ajwa', 'XI PPLG 1', 'Desa Gogo', '87476367341', '2026-04-13 01:41:01', NULL),
(9, '2433845', 'Azhar Hakem Widyaananda', 'XI PPLG 1', 'Desa Sapen', '87476367341', '2026-04-13 01:42:02', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD PRIMARY KEY (`idpinjam`),
  ADD KEY `tbl_peminjaman_buku` (`idbuku`),
  ADD KEY `tbl_peminjaman_siswa` (`idsiswa`),
  ADD KEY `tbl_peminjaman_petugas` (`idpetugas`);

--
-- Indexes for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  ADD PRIMARY KEY (`idpetugas`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_buku`
--
ALTER TABLE `tbl_buku`
  MODIFY `idbuku` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  MODIFY `idpinjam` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_petugas`
--
ALTER TABLE `tbl_petugas`
  MODIFY `idpetugas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `idsiswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_peminjaman`
--
ALTER TABLE `tbl_peminjaman`
  ADD CONSTRAINT `tbl_peminjaman_buku` FOREIGN KEY (`idbuku`) REFERENCES `tbl_buku` (`idbuku`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_peminjaman_petugas` FOREIGN KEY (`idpetugas`) REFERENCES `tbl_petugas` (`idpetugas`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `tbl_peminjaman_siswa` FOREIGN KEY (`idsiswa`) REFERENCES `tbl_siswa` (`idsiswa`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
