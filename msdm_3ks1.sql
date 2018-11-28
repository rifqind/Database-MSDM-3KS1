-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2018 at 07:04 PM
-- Server version: 8.0.11
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `msdm_3ks1`
--

-- --------------------------------------------------------

--
-- Table structure for table `bps_kota`
--

CREATE TABLE `bps_kota` (
  `idKota` int(11) NOT NULL,
  `namaKota` varchar(15) NOT NULL,
  `longitudeKota` varchar(30) NOT NULL,
  `latitudeKota` varchar(30) NOT NULL,
  `jml_pgw_tu` int(11) NOT NULL,
  `jml_pgw_statSos` int(11) NOT NULL,
  `jml_pgw_statPro` int(11) NOT NULL,
  `jml_pgw_statDis` int(11) NOT NULL,
  `jml_pgw_neraca` int(11) NOT NULL,
  `jml_pgw_ipds` int(11) NOT NULL,
  `jml_pgw_fungsional` int(11) NOT NULL,
  `kap_pgw_tu` int(11) NOT NULL,
  `kap_pgw_statSos` int(11) NOT NULL,
  `kap_pgw_statPro` int(11) NOT NULL,
  `kap_pgw_statDis` int(11) NOT NULL,
  `kap_pgw_neraca` int(11) NOT NULL,
  `kap_pgw_ipds` int(11) NOT NULL,
  `kap_pgw_fungsional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bps_provinsi`
--

CREATE TABLE `bps_provinsi` (
  `idProv` int(11) NOT NULL,
  `namaProv` varchar(15) NOT NULL,
  `longitudProv` varchar(30) NOT NULL,
  `latitudeProv` varchar(30) NOT NULL,
  `jml_pgw_tu` int(11) NOT NULL,
  `jml_pgw_statSos` int(11) NOT NULL,
  `jml_pgw_statPro` int(11) NOT NULL,
  `jml_pgw_statDis` int(11) NOT NULL,
  `jml_pgw_neraca` int(11) NOT NULL,
  `jml_pgw_ipds` int(11) NOT NULL,
  `jml_pgw_fungsional` int(11) NOT NULL,
  `kap_pgw_tu` int(11) NOT NULL,
  `kap_pgw_statSos` int(11) NOT NULL,
  `kap_pgw_statPro` int(11) NOT NULL,
  `kap_pgw_statDis` int(11) NOT NULL,
  `kap_pgw_neraca` int(11) NOT NULL,
  `kap_pgw_ipds` int(11) NOT NULL,
  `kap_pgw_fungsional` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bps_pusat`
--

CREATE TABLE `bps_pusat` (
  `idBiro` int(11) NOT NULL,
  `namaBiro` varchar(30) NOT NULL,
  `jumlahPegawai` int(11) NOT NULL,
  `kapasitasPegawai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatanbps_kota`
--

CREATE TABLE `kegiatanbps_kota` (
  `idKegiatan` int(11) NOT NULL,
  `namaKegiatan` varchar(30) NOT NULL,
  `tanggalMulai` datetime NOT NULL,
  `tanggalSelesai` datetime NOT NULL,
  `deskripsiKegiatan` int(11) NOT NULL,
  `idKota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatanbps_prov`
--

CREATE TABLE `kegiatanbps_prov` (
  `idKegiatan` int(11) NOT NULL,
  `namaKegiatan` varchar(30) NOT NULL,
  `tanggalMulai` datetime NOT NULL,
  `tanggalSelesai` datetime NOT NULL,
  `deskripsiKegiatan` tinytext NOT NULL,
  `idProv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kegiatanbps_pusat`
--

CREATE TABLE `kegiatanbps_pusat` (
  `idKegiatan` int(11) NOT NULL,
  `namaKegiatan` varchar(30) NOT NULL,
  `tanggalMulai` datetime NOT NULL,
  `tanggalSelesai` datetime NOT NULL,
  `deskripsiKegiatan` tinytext NOT NULL,
  `idBiro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip` varchar(18) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tanggalLahir` date NOT NULL,
  `jenisKelamin` char(1) NOT NULL,
  `alamat` tinytext NOT NULL,
  `golongan` varchar(4) NOT NULL,
  `jabatan` varchar(30) NOT NULL,
  `pendidikan` varchar(30) NOT NULL,
  `poinPelanggaran` int(11) NOT NULL,
  `poinPrestasi` int(11) NOT NULL,
  `idBiro` int(11) NOT NULL,
  `idProv` int(11) NOT NULL,
  `idKota` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surat_pengajuan`
--

CREATE TABLE `surat_pengajuan` (
  `noSurat` varchar(10) NOT NULL,
  `jenisPengajuan` varchar(10) NOT NULL,
  `tanggalPengajuan` datetime NOT NULL,
  `kantor_awal` varchar(15) NOT NULL,
  `jabatan_awal` varchar(30) NOT NULL,
  `kantor_tujuan` varchar(15) NOT NULL,
  `jabatan_tujuan` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  `nip` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bps_kota`
--
ALTER TABLE `bps_kota`
  ADD PRIMARY KEY (`idKota`);

--
-- Indexes for table `bps_provinsi`
--
ALTER TABLE `bps_provinsi`
  ADD PRIMARY KEY (`idProv`);

--
-- Indexes for table `bps_pusat`
--
ALTER TABLE `bps_pusat`
  ADD PRIMARY KEY (`idBiro`);

--
-- Indexes for table `kegiatanbps_kota`
--
ALTER TABLE `kegiatanbps_kota`
  ADD PRIMARY KEY (`idKegiatan`),
  ADD KEY `kegiatanbps_kota_ibfk_1` (`idKota`);

--
-- Indexes for table `kegiatanbps_prov`
--
ALTER TABLE `kegiatanbps_prov`
  ADD PRIMARY KEY (`idKegiatan`),
  ADD KEY `kegiatanbps_prov_ibfk_1` (`idProv`);

--
-- Indexes for table `kegiatanbps_pusat`
--
ALTER TABLE `kegiatanbps_pusat`
  ADD PRIMARY KEY (`idKegiatan`),
  ADD KEY `kegiatanbps_pusat_ibfk_1` (`idBiro`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `idBiro` (`idBiro`),
  ADD KEY `pegawai_ibfk_2` (`idProv`),
  ADD KEY `idKota` (`idKota`);

--
-- Indexes for table `surat_pengajuan`
--
ALTER TABLE `surat_pengajuan`
  ADD PRIMARY KEY (`noSurat`),
  ADD UNIQUE KEY `nip` (`nip`) USING BTREE;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `kegiatanbps_kota`
--
ALTER TABLE `kegiatanbps_kota`
  ADD CONSTRAINT `kegiatanbps_kota_ibfk_1` FOREIGN KEY (`idKota`) REFERENCES `bps_kota` (`idkota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatanbps_prov`
--
ALTER TABLE `kegiatanbps_prov`
  ADD CONSTRAINT `kegiatanbps_prov_ibfk_1` FOREIGN KEY (`idProv`) REFERENCES `bps_provinsi` (`idprov`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `kegiatanbps_pusat`
--
ALTER TABLE `kegiatanbps_pusat`
  ADD CONSTRAINT `kegiatanbps_pusat_ibfk_1` FOREIGN KEY (`idBiro`) REFERENCES `bps_pusat` (`idbiro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`idBiro`) REFERENCES `bps_pusat` (`idbiro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`idProv`) REFERENCES `bps_provinsi` (`idprov`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`idKota`) REFERENCES `bps_kota` (`idkota`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surat_pengajuan`
--
ALTER TABLE `surat_pengajuan`
  ADD CONSTRAINT `surat_pengajuan_ibfk_1` FOREIGN KEY (`nip`) REFERENCES `pegawai` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
