-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020 年 11 月 10 日 05:29
-- 伺服器版本： 10.4.10-MariaDB
-- PHP 版本： 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mini_shop`
--

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) DEFAULT NULL COMMENT '處理狀態',
  PRIMARY KEY (`bill_sn`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill`
--

INSERT INTO `bill` (`bill_sn`, `user_sn`, `bill_total`, `bill_date`, `bill_status`) VALUES
(2, 2, 560, '2020-11-10 03:16:36', '已出貨');

-- --------------------------------------------------------

--
-- 資料表結構 `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計',
  PRIMARY KEY (`bill_sn`,`goods_sn`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `bill_detail`
--

INSERT INTO `bill_detail` (`bill_sn`, `goods_sn`, `goods_amount`, `goods_total`) VALUES
(2, 10, 1, 280),
(2, 4, 1, 280);

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

DROP TABLE IF EXISTS `goods`;
CREATE TABLE IF NOT EXISTS `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期',
  PRIMARY KEY (`goods_sn`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(4, 'RJ 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 2, '2020-11-10 02:52:59'),
(5, 'SHOOKY 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 1, '2020-11-10 02:53:48'),
(6, 'TATA 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 1, '2020-11-10 02:54:15'),
(7, 'MANG 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 3, '2020-11-10 02:54:36'),
(8, 'KOYA 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 1, '2020-11-10 02:55:10'),
(9, 'CHIMMY 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 2, '2020-11-10 02:55:33'),
(10, 'COOKY 公仔磁鐵', '<ul>\r\n	<li>\r\n	<p>商品特色</p>\r\n\r\n	<ul>\r\n		<li>可愛身形 立體設計</li>\r\n		<li>背部帶有磁鐵 吸力十足</li>\r\n		<li>有了拿來固定備忘錄跟記事都顯得更加方便不容易忘記</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p>銷售重點</p>\r\n\r\n	<ul>\r\n		<li>官方正版，韓國原廠進口。</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n', 280, 10, '2020-11-10 02:55:52');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址',
  PRIMARY KEY (`user_sn`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(2, 'root', 'root', '$2y$10$/b8zYipyjp9NUnIu7RTrNu6.tT0Rs7BhZkJsUycvRkmcqXsZ4pKhy', 'ea950019@yahoo.comtw', '先生', '0988609122', '950', '台東縣', '臺東市', '正氣路160');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
