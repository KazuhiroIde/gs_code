-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 10 朁E21 日 23:26
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `naiyou` text COLLATE utf8_unicode_ci,
  `image` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `naiyou`, `image`, `indate`, `age`) VALUES
(2, '井出和広', 'test@test.jp', 'ジーズアカデミー2', '', '2018-09-22 16:02:50', 30),
(3, '井出和広', 'test1@test.jp', 'ジーズアカデミー5', '', '2018-09-22 16:06:43', 40),
(4, '豊臣秀吉', 'toyotomi@', '天下統一', '', '2018-09-22 16:06:43', 1990),
(5, '徳川家康', 'test@test2.jp', 'ジーズアカデミー4', '', '2018-09-22 16:06:43', 20),
(6, 'ide', 'test.jp', 'ide', '', '2018-09-22 17:20:45', 30),
(7, 'ide', 'test.jp', 'test', '', '2018-09-22 17:20:55', 20),
(8, 'aoki', 'aoki@jp', 'koment', '', '2018-09-22 17:55:59', 10),
(9, '武田信玄', 'takeda@yahoo.co.jp', '風林火山', '', '2017-05-26 18:14:59', 10),
(10, 'ide', 'kuboshun10@iicloud.com', 'test', 'upload/20181020170959d41d8cd98f00b204e9800998ecf8427e.JPG', '2018-10-20 17:09:59', 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `bname` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `burl` text COLLATE utf8_unicode_ci NOT NULL,
  `bcomment` text COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `bname`, `burl`, `bcomment`, `indate`) VALUES
(1, 'なると', 'www.naruto', 'さすけ', '2018-10-07 20:17:50');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ユーザ';

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, '井出和広', 'kuboshun10', 'blackabc', 0, 0),
(2, '徳川家康', 'KAZU.IDE', 'blackabc4', 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
