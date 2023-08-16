-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2023 at 04:22 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skripsi-imam`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_pelanggaran`
--

CREATE TABLE `data_pelanggaran` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `pelanggaran_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_pelanggaran`
--

INSERT INTO `data_pelanggaran` (`id`, `siswa_id`, `pelanggaran_id`, `tanggal`, `jam`, `created_at`, `updated_at`) VALUES
(1, 3, 4, '2023-08-09', '20:37:00', '2023-08-15 15:50:17', '2023-08-15 15:50:17'),
(2, 3, 4, '0123-01-31', '03:12:00', '2023-08-15 15:50:17', '2023-08-15 15:50:17');

-- --------------------------------------------------------

--
-- Table structure for table `data_prestasi`
--

CREATE TABLE `data_prestasi` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) DEFAULT NULL,
  `prestasi_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `nama_prestasi` varchar(255) DEFAULT NULL,
  `penyelengara` varchar(255) DEFAULT NULL,
  `juara` tinyint(4) DEFAULT NULL,
  `detail` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_siswa`
--

CREATE TABLE `data_siswa` (
  `id` int(11) NOT NULL,
  `no` varchar(10) DEFAULT NULL,
  `nama` varchar(250) DEFAULT NULL,
  `nipd` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(15) DEFAULT NULL,
  `nisn` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(50) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_siswa`
--

INSERT INTO `data_siswa` (`id`, `no`, `nama`, `nipd`, `jenis_kelamin`, `nisn`, `tempat_lahir`, `tanggal_lahir`, `nik`, `agama`, `created_at`, `updated_at`) VALUES
(3, '1', 'ALYA ELIANA PUTRI', '8056', 'Perempuan', '0067949200', 'TULUNGAGUNG', '2006-09-16', '3504135609060002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(4, '2', 'AZAH NURAINI', '8025', 'Perempuan', '0056458352', 'Tulungagung', '2005-07-14', '3504135407050001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(5, '3', 'AIS MUFIDATUL HABIBAH', '8460', 'Perempuan', '0071131771', 'TULUNGAGUNG', '2007-03-13', '3504135303070002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(6, '4', 'Aan Kurniawan', '8026', 'Laki-laki', '0061411016', 'Tulungagung', '2006-05-06', '3504130605060003', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(7, '5', 'AAN SAPUTRA', '8379', 'Laki-laki', '0051205000', 'TRENGGALEK', '2005-05-26', '3503042605050001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(8, '6', 'ABEL ZAIMATUN NISA', '8027', 'Perempuan', '0068164371', 'TULUNGAGUNG', '2006-03-12', '3504145203060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(9, '7', 'ABHIRAMA RAFLI ERIANSYAH', '8028', 'Laki-laki', '0051620928', 'TULUNGAGUNG', '2005-09-30', '3504133009050004', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(10, '8', 'ABIDAH CHIARA HULWA', '7609', 'Perempuan', '3056884112', 'TULUNGAGUNG', '2005-01-01', '3504134101050002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(11, '9', 'Achmat Bagus Pebrianto', '8793', 'Laki-laki', '0067390070', 'Trenggalek', '2006-12-30', '3503043012060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(12, '10', 'ADANI AFROZA MAHRUNNISA', '8442', 'Perempuan', '0066641361', 'TULUNGAGUNG', '2006-06-22', '3504146206060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(13, '11', 'ADE PRADA UTAMA', '7610', 'Laki-laki', '0047039811', 'Tulungagung', '2004-09-14', '3504111409040001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(14, '12', 'ADE RIA SAPUTRI', '8794', 'Perempuan', '0067497015', 'TULUNGAGUNG', '2006-10-05', '3504124510060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(15, '13', 'Adek Angga Saputra', '8029', 'Laki-laki', '0059928422', 'Tulungagung', '2005-10-07', '3504130710050001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(16, '14', 'ADELIA DIYAH PUTRI', '7612', 'Perempuan', '0053636460', 'Tulungagung', '2005-06-28', '3504126806050001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(17, '15', 'ADELIA GALUH KINANTI', '8030', 'Perempuan', '0055293653', 'Tulungagung', '2005-10-24', '3504136410050001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(18, '16', 'FENDI PRASAKTI', '8166', 'Laki-laki', '0051963496', 'TULUNGAGUNG', '2005-06-24', '3504142406050002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(20, '17', 'FERDIANTO LUHUR HANDONO WARIH', '8567', 'Laki-laki', '0062851503', 'Tulungagung', '2006-09-28', '3504122809060002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(21, '18', 'Ferdilla Aulia Nurwahani', '8167', 'Perempuan', '0030222138', 'Tulungagung', '2003-07-25', '3504106507030003', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(22, '19', 'FERI ANDIKA SAPUTRA', '8817', 'Laki-laki', '0075784721', 'KLATEN', '2007-03-08', '3310060803070002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(23, '20', 'FERIESHA AURIELYA SUTRISNO', '8569', 'Perempuan', '0069552768', 'TULUNGAGUNG', '2006-08-06', '3504134608060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(24, '21', 'GALANG ANGGA SAPUTRA', '8398', 'Laki-laki', '0036171575', 'TULUNGAGUNG', '2003-04-13', '3504131304030001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(25, '22', 'Galang Pratama Putra', '7724', 'Laki-laki', '0046993874', 'Tulungagung', '2004-12-09', '3504110912040003', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(26, '23', 'GALIH CHANDRA KIRANA', '7726', 'Laki-laki', '0047150001', 'TULUNGAGUNG', '2004-01-30', '3504133001040002', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(27, '24', 'GEA ARTIKA LAILATUL NANDA', '8576', 'Perempuan', '0065168931', 'TULUNGAGUNG', '2006-10-06', '3504114610060001', 'Islam', '2023-08-15 15:50:05', '2023-08-15 15:50:05'),
(28, '25', 'Gideon Nanda Wicaksono', '7727', 'Laki-laki', '0046997150', 'Tulungagung', '2004-09-25', '3504112509040002', 'Kristen', '2023-08-15 15:50:05', '2023-08-15 15:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `master_pelanggaran`
--

CREATE TABLE `master_pelanggaran` (
  `id` int(11) NOT NULL,
  `jenis_pelanggaran` varchar(100) DEFAULT NULL,
  `pelanggaran` text DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_pelanggaran`
--

INSERT INTO `master_pelanggaran` (`id`, `jenis_pelanggaran`, `pelanggaran`, `poin`, `created_at`, `updated_at`) VALUES
(4, ' SIKAP PERILAKU', 'Mencoret-coret atau mengotori dinding, pintu, meja, kursi, pagar sekolah\r\n', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(5, 'SIKAP PERILAKU', 'Berperilaku jorok atau asusila baik didalam maupun diluar sekolah', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(6, 'SIKAP PERILAKU', 'Menggunakan fasilitas toilet sesuai gender', 30, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(7, 'SIKAP PERILAKU', 'Menggunakan fasilitas toilet sesuai gender', 40, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(8, 'SIKAP PERILAKU', 'Merusak sarana dan prasarana sekolah', 40, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(9, 'SIKAP PERILAKU', 'Mengancam / mengintimidasi teman sekelas / teman sekolah', 75, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(10, 'SIKAP PERILAKU', 'Membawa / merokok saat masih mengenakan seragam sekolah.', 100, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(11, 'SIKAP PERILAKU', 'Menyalahgunakan media sosial yang merugikan pihak lain yang berhubungan dengan \r\nsekolah', 100, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(12, 'SIKAP PERILAKU', 'Membawa senjata tajam, senjata api dsb. Di sekolah', 150, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(13, 'SIKAP PERILAKU', 'Terlibat langsung maupun tidak langsung perkelahian/tawuran di sekolah,di luar \r\nsekolah atau antar sekolah.', 150, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(14, 'SIKAP PERILAKU', ' Mengikuti aliran/perkumpulan/geng terlarang/komunitas LGBT dan radikalisme.\r\n', 150, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(15, 'SIKAP PERILAKU', '. Membawa, menggunakan atau mengedarkan miras dan narkoba', 250, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(16, 'SIKAP PERILAKU', 'Membawa dan/atau membuat VCD Porno, buku porno, majalah porno atau sesuatu \r\nyang berbau pornografi dan pornoaksi.', 200, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(17, 'SIKAP PERILAKU', 'Mencuri di sekolah dan diluar sekolah', 200, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(18, 'SIKAP PERILAKU', 'Terlibat tindakan kriminal, mencemarkan nama baik sekolah.\r\n', 250, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(19, 'SIKAP PERILAKU', 'Terbukti hamil atau menghamili.', 250, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(20, 'SIKAP PERILAKU', 'Terbukti menikah', 250, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(21, 'KERAJINAN', 'Datang terlambat', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(22, 'KERAJINAN', 'Dikantin saat jam pelajaran', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(23, 'KERAJINAN', 'Tidak mengikuti pelajaran/meninggalkan kelas tanpa izin', 20, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(24, 'KERAJINAN', 'Tidak mengikuti kegiatan sekolah', 20, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(25, 'KERAPIAN', 'Tidak berseragam sesuai dengan ketentuan', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(26, 'KERAPIAN', 'Tidak memasukan baju seragam sekolah', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(27, 'KERAPIAN', 'Melipat lengan baju', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(28, 'KERAPIAN', 'Seragam yang dicoret-coret', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(29, 'KERAPIAN', 'Celana atau rok bawah tidak dikelim', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(30, 'KERAPIAN', 'Tidak memakai ikat pinggang', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(31, 'KERAPIAN', 'Seragam atribut tidak lengkap', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(32, 'KERAPIAN', 'Setiap senin dan selasa wajib bersepatu hitam kaos kaki putih', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53'),
(33, 'KERAPIAN', 'Rambut tidak boleh panjang (peserta didik putra)', 10, '2023-08-15 15:49:53', '2023-08-15 15:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `master_penanganan_pelanggaran`
--

CREATE TABLE `master_penanganan_pelanggaran` (
  `id` int(11) NOT NULL,
  `kategori_pelanggaran` enum('pelanggaran ringan','pelanggaran sedang','pelanggaran berat') DEFAULT NULL,
  `rentang_skor_bawah` int(11) DEFAULT NULL,
  `rentang_skor_atas` int(11) DEFAULT NULL,
  `tindak_lanjut` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_prestasi`
--

CREATE TABLE `master_prestasi` (
  `id` int(11) NOT NULL,
  `jenis_prestasi` varchar(100) DEFAULT NULL,
  `nama_prestasi` text DEFAULT NULL,
  `poin` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_prestasi`
--

INSERT INTO `master_prestasi` (`id`, `jenis_prestasi`, `nama_prestasi`, `poin`, `created_at`, `updated_at`) VALUES
(1, 'asdasd', 'asd', 2321, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(2, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tingkat nasional ', 100, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(3, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tingkat provinsi', 75, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(4, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tingkat kota/kabupaten', 50, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(5, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tingkat kecamatan', 25, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(6, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'mengikuti lomba sebagai peserta didik(tidak juara)', 10, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(7, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'mengikuti pelatihan LDKMS', 15, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(8, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'Diangkat menjadi ketua OSIS', 25, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(9, 'BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'Diangkat Menjadi pengurus osis', 20, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(10, 'TIDAK BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tidak pernah alpa(bagi peserta didik yang mempunyai catatan pelanggaran)', 25, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(11, 'TIDAK BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'tidak pernah terlambat selama 1 bulan berturut turut(bagi peserta didik yang mempunyai catatan pelanggaran)', 15, '2023-08-15 15:50:00', '2023-08-15 15:50:00'),
(12, 'TIDAK BERPRESTASI AKADEMIK DAN NON AKADEMIK', 'mampu menujukkan catatan pelajaran lengkap dalam waktu yang telah ditentukan', 30, '2023-08-15 15:50:00', '2023-08-15 15:50:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_pelanggaran`
--
ALTER TABLE `data_pelanggaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `pelanggaran_id` (`pelanggaran_id`);

--
-- Indexes for table `data_prestasi`
--
ALTER TABLE `data_prestasi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `prestasi_id` (`prestasi_id`);

--
-- Indexes for table `data_siswa`
--
ALTER TABLE `data_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_pelanggaran`
--
ALTER TABLE `master_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_penanganan_pelanggaran`
--
ALTER TABLE `master_penanganan_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_prestasi`
--
ALTER TABLE `master_prestasi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_pelanggaran`
--
ALTER TABLE `data_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_siswa`
--
ALTER TABLE `data_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `master_pelanggaran`
--
ALTER TABLE `master_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `master_penanganan_pelanggaran`
--
ALTER TABLE `master_penanganan_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_prestasi`
--
ALTER TABLE `master_prestasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_pelanggaran`
--
ALTER TABLE `data_pelanggaran`
  ADD CONSTRAINT `data_pelanggaran_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `data_siswa` (`id`),
  ADD CONSTRAINT `data_pelanggaran_ibfk_2` FOREIGN KEY (`pelanggaran_id`) REFERENCES `master_pelanggaran` (`id`);

--
-- Constraints for table `data_prestasi`
--
ALTER TABLE `data_prestasi`
  ADD CONSTRAINT `data_prestasi_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `data_siswa` (`id`),
  ADD CONSTRAINT `data_prestasi_ibfk_2` FOREIGN KEY (`prestasi_id`) REFERENCES `master_prestasi` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
