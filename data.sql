-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2020 at 08:48 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `rong` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `cao` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `hinh`, `rong`, `cao`) VALUES
(1, 'banner_2.png', '990px', '150px');

-- --------------------------------------------------------

--
-- Table structure for table `hoa_don`
--

CREATE TABLE `hoa_don` (
  `id` int(11) NOT NULL,
  `ten_nguoi_mua` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dia_chi` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dien_thoai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hang_duoc_mua` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hoa_don`
--

INSERT INTO `hoa_don` (`id`, `ten_nguoi_mua`, `email`, `dia_chi`, `dien_thoai`, `noi_dung`, `hang_duoc_mua`) VALUES
(1, 'A', 'asd@gmail.com', '123 cao lo', '0123456789', '', '40[|||]2[|||||]1[|||]2[|||||]'),
(2, '1', '2', '344ab', '0123456789', '', '4[|||]1[|||||]'),
(3, 'A', 'ANH@gmai.com', 'ass12', '0193636513', 'ABC', '4[|||][|||||]41[|||]115644[|||||]');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `tenloai` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`maloai`, `tenloai`) VALUES
('DS', 'DS');

-- --------------------------------------------------------

--
-- Table structure for table `menu_ngang`
--

CREATE TABLE `menu_ngang` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `loai_menu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_ngang`
--

INSERT INTO `menu_ngang` (`id`, `ten`, `noi_dung`, `loai_menu`) VALUES
(1, 'Giới thiệu', '<p>\r\n Gà Việt là danh xưng trìu mến chỉ dành cho món ăn gia đình người Việt để thể hiện sự thân thiện một cách nhẹ nhàng. Đúng như tên gọi của mình, nhà hàng Gà Việt mong muốn trở thành địa điểm lý tưởng để quý khách thiết đãi bạn bè, những bữa ăn gia đình ấm cúng cũng như những bữa tiệc trà “Đầy Tình Cảm" </p>', ''),
(2, 'Sản phẩm', '', 'san_pham'),
(5, 'Liên hệ', 'Địa chỉ: Tầng 2, tòa nhà Viettel Tower Viettel Tower, 285 Cách Mạng Tháng Tám, P.12, Q.10, TP.HCM\r\n\r\nGiờ mở cửa: Thứ 2- Thứ 6: 11:00 AM - 2:00 PM | 5:00 PM - 10:00 PM\r\nThứ 7, Chủ Nhật: 8:00 AM - 2:00 PM | 5:00 PM- 10:00 PM <br><br>\r\n\r\nHotline: 0901 363 388<br><br>\r\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `san_pham`
--

CREATE TABLE `san_pham` (
  `id` int(11) NOT NULL,
  `ten` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_dung` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `noi_bat` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `hinh_anh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `gia` int(255) NOT NULL,
  `thuoc_menu` int(255) NOT NULL,
  `trang_chu` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sap_xep_trang_chu` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `maloai` varchar(13) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `san_pham`
--

INSERT INTO `san_pham` (`id`, `ten`, `noi_dung`, `noi_bat`, `hinh_anh`, `gia`, `thuoc_menu`, `trang_chu`, `sap_xep_trang_chu`, `maloai`) VALUES
(1, 'Gà Nướng', '<p>Gà Nướng</p>', 'co', 'ga1.jpg', 250000, 1, 'co', '0', ''),
(2, 'Chân Gà Nướng ', '<p>Chân Gà Nướng </p>', '', 'ga2.jpg', 82000, 1, 'co', '7', 'DS'),
(3, 'Gà Chua Cay', '<p>Gà Chua Cay</p>', '', 'ga3.jpg', 86000, 1, 'co', '0', 'DS'),
(4, 'Gà Chua Ngọt', '<p>Gà Chua Ngọt</p>', '', 'ga4.jpg', 97000, 1, 'co', '3', 'DS'),
(41, 'Gà Kho', '<p>Gà Kho</p>', 'co', 'ga6.jpg', 250000, 1, 'co', '0', ''),
(42, 'Lẩu Gà', '<p>Lẩu Gà</p>', '', 'ga5.jpg', 250000, 1, 'co', '0', ''),
(43, 'Gà Hấp', '<p>Gà Hấp</p>', '', 'ga7.jpg', 99000, 1, 'co', '0', '');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `hinh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lien_ket` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`id`, `hinh`, `lien_ket`) VALUES
(1, 'a1.png', '#'),
(2, 'a2.png', '#'),
(3, 'a3.png', '#'),
(4, 'a4.png', '#');

-- --------------------------------------------------------

--
-- Table structure for table `thong_tin_quan_tri`
--

CREATE TABLE `thong_tin_quan_tri` (
  `id` int(11) NOT NULL,
  `ky_danh` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mat_khau` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `thong_tin_quan_tri`
--

INSERT INTO `thong_tin_quan_tri` (`id`, `ky_danh`, `mat_khau`) VALUES
(1, 'admin', 'c3284d0f94606de1fd2af172aba15bf3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hoa_don`
--
ALTER TABLE `hoa_don`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`maloai`);

--
-- Indexes for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_pham`
--
ALTER TABLE `san_pham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loai` (`maloai`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `hoa_don`
--
ALTER TABLE `hoa_don`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `menu_ngang`
--
ALTER TABLE `menu_ngang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `san_pham`
--
ALTER TABLE `san_pham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `thong_tin_quan_tri`
--
ALTER TABLE `thong_tin_quan_tri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
