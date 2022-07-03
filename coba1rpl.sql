-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2022 at 08:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coba1rpl`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`) VALUES
(1, 'atak', '$2y$10$F1Ey70BXG0bmCkpwmKTf8e3xkrzKtpniIe4kwrmNGlmFyvLqScW26'),
(4, 'pispot', '$2y$10$FW76Y6pT0F1w3HMDJwxoyO8sVZjEiBN.705z3MwIo7wTcjNSVkpaC');

-- --------------------------------------------------------

--
-- Table structure for table `tabelbahan`
--

CREATE TABLE `tabelbahan` (
  `id_bahan` int(3) NOT NULL,
  `nama_bahan` varchar(26) DEFAULT NULL,
  `id_kategori` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabelbahan`
--

INSERT INTO `tabelbahan` (`id_bahan`, `nama_bahan`, `id_kategori`) VALUES
(1, 'Kurma', 1),
(2, 'Anggur Ivory', 1),
(3, 'Jambu Air', 1),
(4, 'Jambu Cincalo', 1),
(5, 'Apel Manalagi', 1),
(6, 'Semangka Kuning', 1),
(7, 'Jeruk Mandarin', 1),
(8, 'Jeruk Bali Lokal', 1),
(9, 'Pisang Mini', 1),
(10, 'Apel Royal Gala', 1),
(11, 'Apel Granny Smith', 1),
(12, 'Jeruk Sunkist ', 1),
(13, 'Jeruk Valencia', 1),
(14, 'Lemon', 1),
(15, 'Pir Emas', 1),
(16, 'Pir Yali', 1),
(17, 'Pir Manis', 1),
(18, 'Kiwi New Zealand', 1),
(19, 'Kiwi Emas', 1),
(20, 'Lengkeng Bengkok', 1),
(21, 'Apel Malang', 1),
(22, 'Apel Cherry', 1),
(23, 'Jambu Batu', 1),
(24, 'Jambu Kristal', 1),
(25, 'Jeruk Baby', 1),
(26, 'Jeruk Lokal', 1),
(27, 'Mangga Indramayu', 1),
(28, 'Mangga Manalagi', 1),
(29, 'Pisang Kepok', 1),
(30, 'Pepaya Bengkok', 1),
(31, 'Semangka Kuning', 1),
(32, 'Semangka Baby', 1),
(33, 'Nangka Muda', 1),
(34, 'Jeruk Limau', 1),
(35, 'Jeruk Nipis', 1),
(36, 'Anggur Merah ', 1),
(37, 'Anggur Hitam', 1),
(38, 'Anggur Crimson', 1),
(39, 'Melon', 1),
(40, 'Melon Golden', 1),
(41, 'Melon Merah', 1),
(42, 'Manggis', 1),
(43, 'Sirsak', 1),
(44, 'Strawberry', 1),
(45, 'Belimbing', 1),
(46, 'Jamur Shintake', 2),
(47, 'Lobak', 2),
(48, 'Jamur  ', 2),
(49, 'Tauge Pendek', 2),
(50, 'Pakcoy', 2),
(51, 'Daun Seledri', 2),
(52, 'Caism', 2),
(53, 'Bayam Merah', 2),
(54, 'Kangkung', 2),
(55, 'Kalian', 2),
(56, 'Selada ', 2),
(57, 'Selada Air', 2),
(58, 'Parsley ', 2),
(59, 'Kucay', 2),
(60, 'Buncis', 2),
(61, 'Okra', 2),
(62, 'Paprika', 2),
(63, 'Wortel', 2),
(64, 'Kentang', 2),
(65, 'Kol', 2),
(66, 'Timun ', 2),
(67, 'Jagung Manis', 2),
(68, 'Labu', 2),
(69, 'Terong', 2),
(70, 'Tomat', 2),
(71, 'Cabe', 2),
(72, 'Cabe Rawit', 2),
(73, 'Paprika Merah', 2),
(74, 'Paprika Hijau', 2),
(75, 'Bawang Putih', 2),
(76, 'Bawang Merah', 2),
(77, 'Bawang Bombay', 2),
(78, 'Paprika Kuning', 2),
(79, 'Daun Gingseng', 2),
(80, 'Daun Kenikir ', 2),
(81, 'Daun Mint', 2),
(82, 'Akar Alang-alang', 3),
(83, 'Temu Kunci', 3),
(84, 'Lengkuas', 3),
(85, 'Kunyit', 3),
(86, 'Jahe', 3),
(87, 'Kencur', 3),
(88, 'Temulawak', 3),
(89, 'Daun Jeruk ', 3),
(90, 'Daun Salam', 3),
(91, 'Daun Sereh', 3),
(92, 'Tofu Sutra', 3),
(93, 'Tempe ', 3),
(94, 'Tahu Kuning', 3),
(95, 'Tempe Blitar', 3),
(96, 'Saus Lada Hitam', 4),
(97, 'Saus Bangkok', 4),
(98, 'Saus Mayonaise', 4),
(99, 'Saus Barbaque', 4),
(100, 'Saus Salad Italia', 4),
(101, 'Saus Salad  ', 4),
(102, 'Saus Ayam Goreng', 4),
(103, 'Saus Sambal', 4),
(104, 'Sambal Terasi', 4),
(105, 'Sambal Bawang', 4),
(106, 'Saus Tomat', 4),
(107, 'Mayonaise', 4),
(108, 'Saus Teriyaki', 4),
(109, 'Saus Rendaman Asia Chinese', 4),
(110, 'Saus Sukiyaki', 4),
(111, 'Kecap Hitam', 4),
(112, 'Kecap Kedelai', 4),
(113, 'Bumbu Tongseng', 4),
(114, 'Bumbu Opor Ayam', 4),
(115, 'Bumbu Soto Betawi ', 4),
(116, 'Bumbu Tomyum', 4),
(117, 'Kecap Asin', 4),
(118, 'Gula Rendah Kalori', 5),
(119, 'Gula Batu', 5),
(120, 'Madu ', 5),
(121, 'Madu Hutan Hitam ', 5),
(122, 'Gula Pasir ', 5),
(123, 'Gula Halus', 5),
(124, 'Gula Jawa ', 5),
(125, 'Palmsuiker', 5),
(126, 'Gula Semut Organik', 5),
(127, 'Minyak Goreng Jagung', 6),
(128, 'Minyak Goreng Sawit', 6),
(129, 'Minyak Wijen', 6),
(130, 'Mirin', 6),
(131, 'Minyak Kedelai', 6),
(132, 'Minyak Biji Bunga Matahari', 6),
(133, 'Minyak Beras', 6),
(134, 'Minyak Zaitun Murni', 6),
(135, 'Minyak Zaitun  ', 6),
(136, 'Cuka Anggur Merah', 6),
(137, 'Cuka   ', 6),
(138, 'Cuka Apel', 6),
(139, 'Cuka Dapur', 6),
(140, 'Cuka Beras', 6),
(141, 'Cuka Makan', 6),
(142, 'Tepung Bakwan', 7),
(143, 'Tepung Serbaguna', 7),
(144, 'Tepung Bakso Goreng', 7),
(145, 'Tepung Beras', 7),
(146, 'Tepung Maizena', 7),
(147, 'Tepung Terigu', 7),
(148, 'Tepung Panir', 7),
(149, 'Agar-agar', 7),
(150, 'Pudding', 7),
(151, 'Topping Rasa', 7),
(152, 'Ikan Sarden ', 8),
(153, 'Serundeng', 8),
(154, 'Kalengan Buah', 8),
(155, 'Asparagus ', 8),
(156, 'Jamur Kering China', 8),
(157, 'Jamur Kuping', 8),
(158, 'Kacang Merah', 8),
(159, 'Bawang Goreng', 8),
(160, 'Kacang Kastanya ', 8),
(161, 'Kimchi', 8),
(162, 'Manisan', 8),
(163, 'Lada Putih', 8),
(164, 'Ketumbar', 8),
(165, 'Kemiri', 8),
(166, 'Garan Yodium', 9),
(167, 'Bumbu Soto  ', 9),
(168, 'Bumbu Nasi Goreng', 9),
(169, 'Bumbu Rendang', 9),
(170, 'Bumbu Rawon', 9),
(171, 'Lada Putih', 9),
(172, 'Lada Hitam', 9),
(173, 'Ketumbar', 9),
(174, 'Kemiri', 9),
(175, 'Bubuk Cabe', 9),
(176, 'Sup Krim', 10),
(177, 'Makaroni Keju', 10),
(178, 'Mie Korea', 10),
(179, 'Mie Instan ', 10),
(180, 'Spaghetti', 10),
(181, 'Bubur Instan', 10),
(182, 'Pandan Wangi', 11),
(183, 'Beras Putih Organik', 11),
(184, 'Beras Putih  Pulen', 11),
(185, 'Beras Merah ', 11),
(186, 'Beras Basmati ', 11),
(187, 'Beras Ketan', 11),
(188, 'Kacang Tanah', 11),
(189, 'Kacang Kedelai', 11),
(190, 'Kacang Merah', 11),
(191, 'Santan Kelapa ', 12),
(192, 'Susu Kental Manis', 12),
(193, 'Susu Segar Pasteurisasi', 13),
(194, 'Susu Rendah Lemak', 13),
(195, 'Susu UHT', 13),
(196, 'Susu Balita', 13),
(197, 'Susu Bayi', 13),
(198, 'Susu Ibu Hamil', 13),
(199, 'Susu Bubuk', 13),
(200, 'Whipping Cream', 14),
(201, 'Krim Masak ', 14),
(202, 'Telur Ayam', 15),
(203, 'Telur Bebek', 15),
(204, 'Telur Asin ', 15),
(205, 'Telur Puyuh', 15),
(206, 'Margarin Kue', 16),
(207, 'Margarin Rasa Barbeque', 16),
(208, 'Metega Tawar', 16),
(209, 'Mentega Asin ', 16),
(210, 'Margarin Serbaguna', 16),
(211, 'Keju Cheddar', 17),
(212, 'Keju Stick BBQ', 17),
(213, 'Keju Lembaran', 17),
(214, 'Keju Mozarella', 17),
(215, 'Keju Iris ', 17),
(216, 'Keju Parut ', 17),
(217, 'Yogurt Original ', 18),
(218, 'Yogurt Rasa Buah', 18),
(219, 'Lilin', 19),
(220, 'Handuk ', 19),
(221, 'Ember', 19),
(222, 'Gayung ', 19),
(223, 'Ember ', 19),
(224, 'Gantung Pakaian', 19),
(225, 'Jas Hujan ', 19),
(226, 'Kain Lap Microfiber', 19),
(227, 'Lap Serat Bambu', 19),
(228, 'Kain Pel', 19),
(229, 'Kemoceng', 19),
(230, 'Sapu', 19),
(231, 'Sabun Cuci Piring', 20),
(232, 'Sabun Pel', 20),
(233, 'Detergen Bubuk', 20),
(234, 'Detergen Bubuk Matic', 20),
(235, 'Detergen Cair ', 20),
(236, 'Detergen Cair Matic ', 20),
(237, 'Softener ', 20),
(238, 'Daging Shabu-shabu', 21),
(239, 'Iga Sapi Potong', 21),
(240, 'Paru Sapi', 21),
(241, 'Usus Sapi ', 21),
(242, 'Kaki Sapi', 21),
(243, 'Lidah Sapi', 21),
(244, 'Ayam Kampung', 21),
(245, 'Ayam Boiler', 21),
(246, 'Daging Ayam Giling', 21),
(247, 'Paha Atas Ayam', 21),
(248, 'Paha Bawah Ayam', 21),
(249, 'Dada Ayam', 21),
(250, 'Ceker Ayam', 21),
(251, 'Kepala Ayam', 21),
(252, 'Ayam Fillet', 21),
(253, 'Tanderloin Sapi', 21),
(254, 'Sirloin Sapi', 21),
(255, 'Wagyu Sapi', 21),
(256, 'Ikan Bandeng Tanpa Duri', 22),
(257, 'Ikan Bandeng Tanpa Duri', 22),
(258, 'Ikan Mas', 22),
(259, 'Ikan Gurame', 22),
(260, 'Ikan Nila Merah', 22),
(261, 'Udang Kupas Besar', 22),
(262, 'Udang Putih', 22),
(263, 'Cumi Selor', 22),
(264, 'Ikang Tongkol', 22),
(265, 'Ikan Selar', 22),
(266, 'Ikan Bawal Hitam', 22),
(267, 'Ikan Belanak', 22),
(268, 'Ikan Baronang', 22),
(269, 'Ikan Kerapuh ', 22),
(270, 'Ikan Kakap Merah ', 22),
(271, 'Ikan Tengiri', 22),
(272, 'Ikan Salmon', 22),
(273, 'Kopi Hitam Bubuk', 23),
(274, 'Kopi Gula Aren Bubuk ', 23),
(275, 'Kopi Susu Bubuk ', 23),
(276, 'Kopi Arabica Bubuk', 23),
(277, 'Kopi Capicino Bubuk', 23),
(278, 'Teh Celup', 23),
(279, 'Teh Daun', 23),
(280, 'Teh Rosella', 23),
(281, 'Minuman Isotonik', 23),
(282, 'Minuman Bersoda', 23),
(283, 'Sosis', 24),
(284, 'Nugget', 24),
(285, 'Scalop', 24),
(286, 'Kentang Sticl', 24),
(287, 'Ham ', 24),
(288, 'Pentol Ayam', 24),
(289, 'Pentol Daging', 24),
(290, 'Pentol Ikan', 24);

-- --------------------------------------------------------

--
-- Table structure for table `tabelkategori`
--

CREATE TABLE `tabelkategori` (
  `id_kategori` int(2) NOT NULL,
  `nama_kategori` varchar(29) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tabelkategori`
--

INSERT INTO `tabelkategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Buah'),
(2, 'Sayur'),
(3, 'Rempah-Rempah & Kedelai'),
(4, 'Saus & Bumbu Masak'),
(5, 'Gula & Madu'),
(6, 'Minyak & Cuka'),
(7, 'Tepung & Bahan Kue'),
(8, 'Makanan Kering & Kalengan'),
(9, 'Rempah-Rempah Kering'),
(10, 'Mie Pasta & Bubur'),
(11, 'Beras & Biji-Bijian'),
(12, 'Santan & Susu Kental Manis'),
(13, 'Susu'),
(14, 'Krim'),
(15, 'Telur'),
(16, 'Mentega & Margarin'),
(17, 'Keju'),
(18, 'Yogurt'),
(19, 'Perlengkapan Kebersihan Rumah'),
(20, 'Perlengkapan Mencuci'),
(21, 'Daging'),
(22, 'Ikan'),
(23, 'Minuman'),
(24, 'Frozen Food');

-- --------------------------------------------------------

--
-- Table structure for table `tabellist`
--

CREATE TABLE `tabellist` (
  `id_list` int(11) NOT NULL,
  `nama_list` varchar(100) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabellistbahan`
--

CREATE TABLE `tabellistbahan` (
  `id_list_bahan` int(11) NOT NULL,
  `nama_list_bahan` varchar(100) NOT NULL,
  `id_list` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `tabelbahan`
--
ALTER TABLE `tabelbahan`
  ADD PRIMARY KEY (`id_bahan`);

--
-- Indexes for table `tabelkategori`
--
ALTER TABLE `tabelkategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tabellist`
--
ALTER TABLE `tabellist`
  ADD PRIMARY KEY (`id_list`);

--
-- Indexes for table `tabellistbahan`
--
ALTER TABLE `tabellistbahan`
  ADD PRIMARY KEY (`id_list_bahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tabelbahan`
--
ALTER TABLE `tabelbahan`
  MODIFY `id_bahan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=291;

--
-- AUTO_INCREMENT for table `tabelkategori`
--
ALTER TABLE `tabelkategori`
  MODIFY `id_kategori` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tabellist`
--
ALTER TABLE `tabellist`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `tabellistbahan`
--
ALTER TABLE `tabellistbahan`
  MODIFY `id_list_bahan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
