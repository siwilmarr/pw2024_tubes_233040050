-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 05:26 AM
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
-- Database: `pw2024_tubes_233040050`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'None'),
(2, 'Pro Max');

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `id` int NOT NULL,
  `gambar_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `detail` varchar(10000) NOT NULL,
  `kategori_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `technology`
--

INSERT INTO `technology` (`id`, `gambar_produk`, `nama_produk`, `harga_beli`, `detail`, `kategori_id`) VALUES
(1, '11.jpeg', 'Iphone 11', 'Rp.6.09jt-Rp.7.79jt\r\n', 'UMUM <br>\r\nTahun Rilis	2019\r\nJaringan	2G, 3G, 4G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	150.9 x 75.7 x 8.3 mm\r\nBerat	194 gram\r\nKetahanan	-IP68\r\nFitur Lainnya	- Material kaca (bagian depan dan penutup belakang)\r\n- Material aluminium (rangka)\r\n- Tahan debu dan air (hingga 2 m selama 30 menit)\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Liquid Retina IPS LCD\r\nUkuran	6.1 inci\r\nRefresh Rate	60 Hz\r\nResolusi	828 x 1792 piksel\r\nRasio	19.5:9\r\nKerapatan	326 ppi\r\nProteksi	Corning Gorilla Glass\r\nFitur Lainnya	- Lapisan antigores berbahan kaca\r\n- Lapisan oleofibik (antiminyak)\r\n- True-tone\r\n- Wide color gamut\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	 Apple A13 Bionic\r\nCPU	Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)\r\nGPU	 Apple GPU (4-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	4 GB\r\nMemori Internal	64 GB, 128 GB, 256 GB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/1.8\r\n12 MP (ultrawide), f/2.4\r\nFitur	Dual pixel PDAF, OIS, dual-LED dual-tone flash, HDR, panorama, Video: Hingga 4K@24/30/60fps\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nFitur	SL 3D (sensor kedalaman atau biometrik), HDR, Video: Hingga 4K@24/30/60 fps, gyro-EIS\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	3110 mAh\r\nFitur	Pengisian cepat 18W (klaim 50% dalam 30 menit), USB Power Delivery 2.0, Qi wireless charging\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 13, dapat ditingkatkan ke iOS 15.2\r\nSensor	Face ID, akselerometer, giroskop, proksimitas, kompas, barometer\r\nJack 3.5mm	Tidak Ada\r\nWarna	Hijau, Hitam, Merah, Kuning, Putih, Ungu\r\nFitur Lainnya	 Apple Pay, Siri, Dukungan UWB (Ultra Wideband)', 1),
(2, '11pm.jpeg\r\n', 'Iphone 11 Pro Max\r\n\r\n', 'Rp.6.03jt-Rp.8.05jt\r\n', 'UMUM <br>\r\nTahun Rilis	2019\r\nJaringan	2G, 3G, 4G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	158 x 77.8 x 8.1 mm\r\nBerat	226 gram\r\nKetahanan	-IP68\r\nFitur Lainnya	- Material kaca (bagian depan dan penutup belakang)\r\n- Material stainless steel (rangka)\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.5 inci\r\nRefresh Rate	60 Hz\r\nResolusi	1242 x 2688 piksel\r\nRasio	19.5:9\r\nKerapatan	458 ppi\r\nProteksi	Corning Gorilla Glass\r\nFitur Lainnya	- Lapisan antigores dan antiminyak (oleofobik)\r\n- Wide color gamut\r\n- True-tone\r\n- HDR10\r\n- Dolby Vision\r\n- Tingkat kecerahan layar: 800 nit (HBM), 1200 nit (puncak)\r\n<br><br>\r\n\r\nHARDWARE <br>\r\nChipset	Apple A13 Bionic\r\nCPU	Hexa-core (2x2.65 GHz Lightning + 4x1.8 GHz Thunder)\r\nGPU	Apple GPU (4-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	4 GB\r\nMemori Internal	64 GB, 256 GB, 512 GB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	3\r\nKonfigurasi	\r\n12 MP (wide), f/1.8\r\n12 MP (ultrawide), f/2.0\r\n12 MP (telephoto), f/2.4\r\nFitur	dual pixel PDAF, OIS, perbesaran optik 2x, dual-LED dual-tone flash, HDR, Video: Hingga 4K@24/30/60fps\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nFitur	SL 3D (sensor kedalaman atau biometrik), HDR, Video: Hingga 4K@24/30/60 fps, gyro-EIS\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	3969 mAh\r\nFitur	Pengisian cepat 20W (klaim 50% dalam 30 menit), USB Power Delivery 2.0, Qi wireless charging\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 13, dapat ditingkatkan ke iOS 15.2\r\nSensor	Face ID, akselerometer, giroskop, proksimitas, kompas, barometer\r\nJack 3.5mm	Tidak Ada\r\nWarna	Matte Space Gray, Matte Silver, Matte Gold, Matte Midnight Green\r\nFitur Lainnya	Apple Pay, Siri, dukungan UWB (Ultra Wideband), speaker stereo', 2),
(3, '12.jpeg\r\n\r\n', 'Iphone 12\r\n\r\n', 'Rp.8.2jt-Rp.13.6jt\r\n', 'UMUM <br>\r\nTahun Rilis	2020\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM, Dual SIM (Slot Hybrid)\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	146.7 x 71.5 x 7.4 mm\r\nBerat	164 gram\r\nKetahanan	IP68\r\nFitur Lainnya	Apple Pay (Visa, MasterCard, AMEX certified)\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.1 inci\r\nRefresh Rate	60 Hz\r\nResolusi	1170 x 2532 piksel\r\nRasio	19.5:9\r\nKerapatan	460 ppi\r\nProteksi	Ceramic Shield glass\r\nFitur Lainnya	- HDR10, Dolby Vision, wide color gamut, true-tone\r\n- Kecerahan 625 nit (HBM), 1200 nit (puncak)\r\n- Rasio layar ke bodi 86%\r\n<br><br>\r\n\r\nHARDWARE <br>\r\nChipset	Apple A14 Bionic\r\nCPU	Hexa-core (2x3.1 GHz Firestorm + 4x1.8 GHz Icestorm)\r\nGPU	Apple GPU (4-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	4 GB\r\nMemori Internal	64 GB, 128 GB, 256 GB\r\nJenis Memori	NVMe\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/1.6\r\n12 MP (ultrawide), f/2.4\r\nFitur	Wide: dual pixel PDAF, OIS; Ultrawide: FoV 120˚; Umum: Dual-LED dual-tone flash, HDR (photo/panorama), Video: 4K@24/30/60fps, 1080p@30/60/120/240fps, HDR, Dolby Vision HDR (up to 30fps), stereo sound rec.\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nMP (depth),\r\nFitur	HDR, Video: Hingga 4K@24/30/60fps\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	2815 mAh\r\nFitur	Pengisian cepat 20W (USB Power Delivery 2,0), pengisian nirkabel MagSafe 15W, pengisian nirkabel magnetik Qi 7.5W\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 14.1\r\nSensor	Akselerometer, proksimitas, cahaya, kompas, giroskop, barometer\r\nJack 3.5mm	Tidak Ada\r\nWarna	Black, White, Red, Green, Blue, Purple\r\nFitur Lainnya	- Stereo speaker\r\n- Dukungan Ultra Wideband (UWB)', 1),
(4, '12pm.jpeg', 'Iphone 12 Pro Max', 'Rp.8.5jt-Rp.11.8jt', 'UMUM <br>\r\nTahun Rilis	2020\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM, Dual SIM (Slot Hybrid)\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	160,8 x 78,1 x 7,4 mm\r\nBerat	228 gram\r\nKetahanan	IP68\r\nFitur Lainnya	- Gorilla Glass\r\n- Rangka baja tahan karat\r\n- IP68 tahan debu / air (hingga 6 meter selama 30 menit)\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.7 inci\r\nRefresh Rate	60 Hz\r\nResolusi	1284 x 2778 piksel\r\nRasio	19,5:9\r\nKerapatan	458 ppi\r\nProteksi	\r\nFitur Lainnya	- Scratch-resistant ceramic glass\r\n- oleophobic coating\r\n- Gorilla Glass\r\n- Rangka baja tahan karat\r\n- IP68 tahan debu / air (hingga 6 meter selama 30 menit)\r\n- HDR10\r\n- Kecerahan tipikal 800 nit\r\n- Dolby Vision\r\n- Wide color gamut\r\n- True-tone\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A14 Bionic\r\nCPU	Hexa-core\r\nGPU	Apple GPU (Grafis 4-inti)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	6 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	4\r\nKonfigurasi	\r\n12 MP (wide), f/1.6\r\n12 MP (telephoto), f/2.2\r\n12 MP (ultrawide), f/2.4\r\nMP (ToF Lidar),\r\nFitur	[\"OIS\",\"PDAF\",\"dual pixel PDAF\",\"sensor-shift stabilization (IBIS)\",\"Dual-LED dual-tone flash\",\"panorama\",\"HDR\",\"Stereo Sound Recording\",\"Dolby Vision HDR\",\"10-bit HDR\"]\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nFitur	[\"HDR\",\"gyro-EIS\",\"SL 3D\",\"Video: Hingga 4K@24\\/30\\/60fps\"]\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	3687 mAh\r\nFitur	[\"Wireless Charging\",\"Fast Charging 20W\",\"Wireless Charging 15W\",\"USB Power Delivery 2,0\"]\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 14 (Saat Dirilis)\r\nSensor	[\"Accelerometer\",\"Gyro\",\"Proximity\",\"Compass\",\"Barometer\",\"Face ID\",\"Siri\",\"Apple Pay (Visa, MasterCard, AMEX bersertifikat)\"]\r\nJack 3.5mm	Tidak Ada\r\nWarna	Silver, Graphite, Gold, Pacific Blue\r\nFitur Lainnya	Pengeras suara dengan speaker stereo', 2),
(5, '13.jpeg', 'Iphone 13', 'Rp.10.9jt-Rp.15.4jt\r\n', 'UMUM <br>\r\nTahun Rilis	2021\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	146.7 x 71.5 x 7.7 mm\r\nBerat	174 gram\r\nKetahanan	- IP68 (hingga 6 m selama 30 menit)\r\nFitur Lainnya	- Gorilla Glass (penutup belakang dan bagian depan)\r\n- Aluminium (rangka)\r\n- Apple Pay\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.1 inci\r\nRefresh Rate	60 Hz\r\nResolusi	1170 x 2532 piksel\r\nRasio	19.5:9\r\nKerapatan	460 ppi\r\nProteksi	Kaca keramik antigores, lapisan antiminyak\r\nFitur Lainnya	- HDR10\r\n- Dolby Vision\r\n- Kecerahan: 800 nit (khas), 1200 nit (puncak)\r\n- True-tone\r\n- Wide color gamut\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A15 Bionic\r\nCPU	Hexa-core (2x3.24 GHz + 4x2.0 GHz)\r\nGPU	Apple GPU (4-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	4 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/1.6\r\n12 MP (ultrawide), f/2.4\r\nFitur	[\"dual pixel PDAF\",\"Dual-LED dual-tone flash\",\"panorama\",\"HDR\",\"Dolby Vision HDR\",\"sensor shift OIS\",\"Video: 4K@24\\/30\\/60fps\",\"\"]\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	1\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nFitur	[\"HDR\",\"gyro-EIS\",\"SL 3D\",\"Video: 4K@24\\/30\\/60fps\",\"depth sensor\"]\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	3240 mAh\r\nFitur	[\"Fast Charging 20W\",\"USB Power Delivery 2,0\",\"MagSafe wireless charging 15W\",\"Qi magnetic fast wireless charging 7.5W\"]\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 15\r\nSensor	[\"Accelerometer\",\"Gyro\",\"Proximity\",\"Compass\",\"Barometer\",\"Ultra Wideband (UWB)\",\"Siri natural language commands and dictation\"]\r\nJack 3.5mm	Tidak Ada\r\nWarna	Starlight, Midnight, Blue, Pink, Red\r\nFitur Lainnya	Speaker Stereo', 1),
(6, '13pm.jpeg', 'Iphone 13 Pro Max', 'Rp.13.9jt-Rp.16.7jt\r\n', 'UMUM <br>\r\nTahun Rilis	2021\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	160.8 x 78.1 x 7.7 mm\r\nBerat	240 gram\r\nKetahanan	- IP68 (hingga 6 m selama 30 menit)\r\nFitur Lainnya	- Gorilla Glass (penutup belakang dan bagian depan)\r\n- Stainless steel (rangka)\r\n- Apple Pay\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.7 inci\r\nRefresh Rate	120 Hz\r\nResolusi	1284 x 2778 piksel\r\nRasio	19.5:9\r\nKerapatan	458 ppi\r\nProteksi	Kaca keramik antigores, lapisan antiminyak\r\nFitur Lainnya	- HDR10\r\n- Dolby Vision\r\n- Kecerahan: 1000 nit (khas), 1200 nit (puncak)\r\n- True-tone\r\n- Wide color gamut\r\nx\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A15 Bionic\r\nCPU	Hexa-core (2x3.24 GHz Avalanche + 4x2.0 GHz Blizzard)\r\nGPU	Apple GPU (5-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	6 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB, 1 TB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	3\r\nKonfigurasi	\r\n12 MP (wide), f/1.5\r\n12 MP (telephoto), f/2.8\r\n12 MP (ultrawide), f/1.8\r\nFitur	[\"PDAF\",\"dual pixel PDAF\",\"panorama\",\"HDR\",\"Dolby Vision HDR\",\"10-bit HDR\",\"sensor shift OIS\",\"Video: 4K@24\\/30\\/60fps\",\"Pro Res\",\"Cinematic Mode\",\"TOF 3D LiDAR Scanner\"]\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	1\r\nKonfigurasi	\r\n12 MP (wide), f/2.2\r\nFitur	[\"HDR\",\"gyro-EIS\",\"SL 3D\",\"Video: 4K@24\\/30\\/60fps\",\"depth sensor\"]\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	4352 mAh\r\nFitur	[\"Fast Charging 20W\",\"USB Power Delivery 2,0\",\"MagSafe wireless charging 15W\",\"Qi magnetic fast wireless charging 7.5W\"]\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 15\r\nSensor	[\"Accelerometer\",\"Gyro\",\"Proximity\",\"Compass\",\"Barometer\",\"Ultra Wideband (UWB)\",\"Siri natural language commands and dictation\"]\r\nJack 3.5mm	Tidak Ada\r\nWarna	Graphite, Gold, Silver, Sierra Blue\r\nFitur Lainnya	Speaker Stereo', 2),
(7, '14.jpeg', 'Iphone 14', 'Rp.12.9jt-Rp.19.9jt\r\n', 'UMUM <br>\r\nTahun Rilis	2022\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	146.7 x 71.5 x 7.8 mm\r\nBerat	172 gram\r\nKetahanan	IP68 (hingga 6 m selama 30 menit)\r\nFitur Lainnya	- Gorilla Glass (penutup belakang dan bagian depan)\r\n- Aluminium (rangka)\r\n- Apple Pay\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	Super Retina XDR OLED\r\nUkuran	6.1 inci\r\nRefresh Rate	60 Hz\r\nResolusi	1170 x 2532 piksel\r\nRasio	19.5:9\r\nKerapatan	460 ppi\r\nProteksi	Kaca keramik antigores, lapisan antiminyak\r\nFitur Lainnya	- HDR10\r\n- Dolby Vision\r\n- Kecerahan: 800 nit (khas), 1200 nit (puncak)\r\n- True-tone\r\n- Wide color gamut\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A15 Bionic\r\nCPU	Hexa-core (2x3.24 GHz + 4x2.0 GHz)\r\nGPU	Apple GPU (5-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	6 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	2\r\nKonfigurasi	\r\n12 MP (wide), f/1.5\r\n12 MP (ultrawide), f/2.4\r\nFitur	dual pixel PDAF, sensor-shift OIS, LED flash, HDR (photo/panorama), Video: 1080p@25/30/60/120/240fps, HDR, Dolby Vision HDR (up to 60fps), Cinematic mode (4K@30fps), stereo sound rec.\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	1\r\nKonfigurasi	\r\n12 MP (wide), f/.9\r\nFitur	PDAF SL 3D, (depth/biometrics sensor),HDR, Cinematic mode (4K@30fps), Video: 4K@24/25/30/60fps, 1080p@25/30/60/120fps, gyro-EIS\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.3, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	3279 mAh\r\nFitur	Fast charging, 50% in 30 min (advertised) USB Power Delivery 2.0, MagSafe wireless charging 15W Qi magnetic fast wireless charging 7.5W\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 16\r\nSensor	Face ID, accelerometer, gyro, proximity, compass, barometer, Ultra Wideband (UWB) mendukung darurat SOS via satellite\r\nJack 3.5mm	Tidak Ada\r\nWarna	Starlight, Midnight, Blue, Red, Purple\r\nFitur Lainnya	-SOS Darurat via satelit (SMS)', 1),
(8, '14pm.jpeg', 'Iphone 14 Pro max', 'Rp.16.9jt-Rp.23.4jt\r\n', 'UMUM <br>\r\nTahun Rilis	2022\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	160.7 x 77.6 x 7.9 mm\r\nBerat	240 gram\r\nKetahanan	IP68 (hingga 6 m selama 30 menit)\r\nFitur Lainnya	- Gorilla Glass (penutup belakang dan bagian depan)\r\n- Stainless steel (rangka)\r\n- Apple Pay\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	LTPO Super Retina XDR OLED\r\nUkuran	6.7 inci\r\nRefresh Rate	120 Hz\r\nResolusi	1290 x 2796 piksel\r\nRasio	19.5:9\r\nKerapatan	460 ppi\r\nProteksi	Kaca keramik antigores, lapisan antiminyak\r\nFitur Lainnya	- Always-On display\r\n- HDR10\r\n- Dolby Vision\r\n- Kecerahan: 1000 nit, 2000 nit (HBM)\r\n- True-tone\r\n- Wide color gamut\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A16 Bionic\r\nCPU	Hexa-core (2x3.46 GHz Avalanche + 4x Blizzard)\r\nGPU	Apple GPU (5-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	6 GB\r\nMemori Internal	128 GB, 256 GB, 512 GB, 1 TB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	3\r\nKonfigurasi	\r\n48 MP (wide), f/1.5\r\n12 MP (telephoto), f/2.8\r\n12 MP (ultrawide), f/2.2\r\nMP (ToF Lidar),\r\nFitur	dual pixel PDAF, sensor-shift OIS, Telephoto: PDAF, OIS, 3x optical zoom, ultrawide: dual pixel PDAF. Fitur Umum: LED flash (adaptive), HDR (photo/panorama). Video: 4K@24/25/30/60fps, 1080p@25/30/60/120/240fps, 10-bit HDR, Dolby Vision HDR (up to 60fps), ProRes, Cinematic mode (4K@30fps), stereo sound rec.\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	1\r\nKonfigurasi	\r\n12 MP (wide), f/1.9\r\nFitur	SL 3D, (depth/biometrics sensor), HDR, Cinematic mode (4K@30fps). Video: 4K@24/25/30/60fps, 1080p@25/30/60/120fps, gyro-EIS\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, hotspot\r\nBluetooth	5.3, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS, A-GPS, GLONASS, GALILEO, QZSS\r\nUSB	Lightning, USB 2.0\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	4323 mAh\r\nFitur	Fast charging, 50% in 30 min (advertised) USB Power Delivery 2.0, MagSafe wireless charging 15W, Qi magnetic fast wireless charging 7.5W\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 16\r\nSensor	Face ID, accelerometer, gyro, proximity, compass, barometer, Ultra Wideband (UWB) support\r\nJack 3.5mm	Tidak Ada\r\nWarna	Space Black, Silver, Gold, Deep Purple\r\nFitur Lainnya	SOS Darurat via satelit (SMS)', 2),
(9, '15pm.jpeg', 'Iphone 15 Pro max', 'Rp.22.999.000', 'UMUM <br>\r\nTahun Rilis	2023\r\nJaringan	2G, 3G, 4G, 5G\r\nSIM Card	Single SIM\r\neSIM	Ya\r\n<br><br>\r\nBODY <br>\r\nDimensi	159.9 x 76.7 x 8.3 mm\r\nBerat	221 gram\r\nKetahanan	IP68\r\nFitur Lainnya	- Tahan debu seluruh sisi dan tahan air hingga kedalaman 6 m selama 30 menit\r\n- Material: kaca buatan Corning (bagian depan dan belakang), titanium (frame)\r\n- Action button yang fungsinya bisa dikustomisasi\r\n<br><br>\r\nLAYAR UTAMA <br>\r\nJenis	LTPO Super Retina XDR OLED\r\nUkuran	6.7 inci\r\nRefresh Rate	120 Hz\r\nResolusi	1290 x 2796 piksel\r\nRasio	19.5:9\r\nKerapatan	460 ppi\r\nProteksi	Ceramic Shield Glass\r\nFitur Lainnya	- HDR10, Dolby Vision\r\n- Tingkat kecerahan: 1000 nit (HBM), 2000 nit (puncak)\r\n- Rasio layar ke bodi 89.8%\r\n<br><br>\r\nHARDWARE <br>\r\nChipset	Apple A17 Pro \r\nCPU	Hexa-core (2x3.78 GHz Performance core + 4x2.02 GHz Efficiency core)\r\nGPU	Apple GPU (6-core graphics)\r\n<br><br>\r\nMEMORI <br>\r\nRAM	8 GB\r\nMemori Internal	256 GB, 512 GB, 1 TB\r\nMemori Eksternal	Tidak Ada\r\n<br><br>\r\nKAMERA UTAMA <br>\r\nJumlah Kamera	3\r\nKonfigurasi	\r\n48 MP (wide), f/1.8\r\n12 MP (ultrawide), f/2.2\r\n12 MP (telephoto), f/2.8\r\nFitur	Wide: dual pixel PDAF, sensor-shift OIS; Ultrawide: FoV 120˚; Tele: PDAF, 3D sensor‑shift OIS, perbesaran optis 5x; Umum: Dual-LED dual-tone flash, HDR (photo/panorama), TOF 3D LiDAR; Video: Hingga 4K@24/25/30/60fps, ProRes, Cinematic mode (4K@24/30fps), gyro-EIS\r\n<br><br>\r\nKAMERA DEPAN <br>\r\nJumlah Kamera	1\r\nKonfigurasi	\r\n12 MP (wide), f/1.9\r\nFitur	PDAF, SL 3D, HDR, Video: Hingga 4K@24/25/30/60fps, Cinematic mode (4K@30fps), gyro-EIS\r\n<br><br>\r\nKONEKTIVITAS <br>\r\nWLAN	Wi-Fi 802.11 a/b/g/n/ac/6e, dual-band, hotspot\r\nBluetooth	5.3, A2DP, LE\r\nInfrared	Tidak Ada\r\nNFC	Ada\r\nGPS	GPS (L1+L5), GLONASS, GALILEO, BDS, QZSS, NavIC\r\nUSB	Tipe-C 3.0, DisplayPort\r\n<br><br>\r\nBATERAI <br>\r\nJenis	Li-Ion\r\nKapasitas	4441 mAh\r\nFitur	Pengisian cepat 20W PD 2.0 (klaim 50% dalam 30 menit). pengisian nirkabel MagSafe 15W, pengisian nirkabel Qi 7.5W\r\n<br><br>\r\nFITUR <br>\r\nOS (Saat Rilis)	iOS 17\r\nSensor	Face ID, akselerometer, cahaya, giroskop, proksimitas, kompas, barometer\r\nJack 3.5mm	Tidak Ada\r\nWarna	Black Titanium, White Titanium, Blue Titanium, Natural Titanium\r\nFitur Lainnya	- Speaker stereo\r\n- Dukungan Ultra Wideband 2 (UWB)\r\n- Dukungan pengiriman pesan darurat SOS via satelit', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$E8mL1dhV26mMN4HPZ1q08uD1C0KjDivNSfRD.ZL76f9of4CoMtR.q');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `technology`
--
ALTER TABLE `technology`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `technology`
--
ALTER TABLE `technology`
  ADD CONSTRAINT `technology_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
