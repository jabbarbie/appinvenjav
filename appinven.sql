-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.36-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping data for table appinven.barang: ~6 rows (approximately)
/*!40000 ALTER TABLE `barang` DISABLE KEYS */;
INSERT INTO `barang` (`id`, `kodebarang`, `barang`, `anggaran`) VALUES
	(1, '9898', 'Kursi Goyang', 190000),
	(2, '89898', 'Jangkar ', 800000),
	(3, '22323', 'sate', 290000),
	(4, '7878', 'Kursi', 800000),
	(5, '898989', 'Oke', 200000),
	(6, '78787', 'Soffel', 800000),
	(7, '88888', 'Sate Kambing', 800000);
/*!40000 ALTER TABLE `barang` ENABLE KEYS */;

-- Dumping data for table appinven.realisasi: ~1 rows (approximately)
/*!40000 ALTER TABLE `realisasi` DISABLE KEYS */;
INSERT INTO `realisasi` (`id`, `barangId`, `realisasi`, `tanggal`) VALUES
	(1, 1, 80000, '2020-01-22 02:57:34'),
	(2, 1, 500000, '2020-01-22 05:51:12'),
	(3, 7, 600000, '2020-01-22 05:51:27'),
	(4, 6, 2000, '2020-01-22 07:07:30');
/*!40000 ALTER TABLE `realisasi` ENABLE KEYS */;

-- Dumping data for table appinven.setting: ~0 rows (approximately)
/*!40000 ALTER TABLE `setting` DISABLE KEYS */;
INSERT INTO `setting` (`tokenKey`, `tokenSecret`) VALUES
	('879af692', 'lnAXBX6a3A31DCpu');
/*!40000 ALTER TABLE `setting` ENABLE KEYS */;

-- Dumping data for table appinven.user: ~0 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `username`, `pass`, `kategori`) VALUES
	(1, 'developer', 'admin', 'admin'),
	(2, 'mandor', 'user', 'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
