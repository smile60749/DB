-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2016 年 06 月 12 日 12:05
-- 伺服器版本: 5.5.39
-- PHP 版本： 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 資料庫： `db`
--

-- --------------------------------------------------------

--
-- 資料表結構 `arrive`
--

CREATE TABLE IF NOT EXISTS `arrive` (
  `city` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `arrive`
--

INSERT INTO `arrive` (`city`) VALUES
('南投'),
('台中'),
('台北'),
('台南'),
('台東'),
('嘉義'),
('基隆'),
('宜蘭'),
('屏東'),
('彰化'),
('新竹'),
('桃園'),
('澎湖'),
('花蓮'),
('苗栗'),
('連江'),
('金門'),
('雲林'),
('高雄');

-- --------------------------------------------------------

--
-- 資料表結構 `departure`
--

CREATE TABLE IF NOT EXISTS `departure` (
  `city` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `departure`
--

INSERT INTO `departure` (`city`) VALUES
('南投'),
('台中'),
('台北'),
('台南'),
('台東'),
('嘉義'),
('基隆'),
('宜蘭'),
('屏東'),
('彰化'),
('新竹'),
('桃園'),
('澎湖'),
('花蓮'),
('苗栗'),
('連江'),
('金門'),
('雲林'),
('高雄');

-- --------------------------------------------------------

--
-- 資料表結構 `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `add` varchar(20) COLLATE utf8_bin NOT NULL,
  `tel` varchar(20) COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `star` varchar(20) COLLATE utf8_bin NOT NULL,
  `price` varchar(20) COLLATE utf8_bin NOT NULL,
  `arrive_city` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `hotel`
--

INSERT INTO `hotel` (`name`, `add`, `tel`, `type`, `star`, `price`, `arrive_city`) VALUES
('一田屋旅店', '台東南南', '089-772289', '飯店      ', '★★★★☆', '3000      ', '台東'),
('三角公園  ', '台東西西', '阿災      ', '公園      ', '☆☆☆☆☆', '0', '台東'),
('勳家      ', '台北      ', '0800000003', '住宅      ', '★★★★★', '0         ', '台北'),
('旻家      ', '新竹      ', '0800000006', '住宅      ', '★★★★★', '0', '新竹'),
('楊家      ', '桃園      ', '0800000005', '住宅      ', '★★★★★', '0         ', '桃園'),
('沐泉      ', '台東咚咚', '089-327789', '民宿      ', '★★★★☆', '1800      ', '台東'),
('潘家      ', '台北      ', '0800000004', '住宅      ', '★★★★★', '0         ', '台北'),
('知本老爺  ', '台東      ', '089-515688', '飯店      ', '★★★★★', '4000      ', '台東'),
('福華大旅店', '台中', '0800011068', '飯店      ', '★★★★★', '3000      ', '台中'),
('福華大旅店', '台北', '0800011068', '飯店      ', '★★★★★', '3000      ', '台北'),
('福華大旅店', '新竹', '0800011068', '飯店      ', '★★★★★', '3000      ', '新竹'),
('福華大旅店', '高雄', '0800011068', '飯店      ', '★★★★★', '3000      ', '高雄'),
('臭家      ', '高雄      ', '0800000002', '住宅      ', '★★★☆☆', '0', '高雄'),
('蓉家      ', '高雄      ', '0800000001', '住宅      ', '★★★★★', '0         ', '高雄'),
('金聯酒店  ', '台東      ', '089-510666', '飯店      ', '★★★★☆', '3000      ', '台東');

-- --------------------------------------------------------

--
-- 資料表結構 `move`
--

CREATE TABLE IF NOT EXISTS `move` (
  `departure_city` varchar(20) COLLATE utf8_bin NOT NULL,
  `traffic_tool` varchar(20) COLLATE utf8_bin NOT NULL,
  `arrive_city` varchar(20) COLLATE utf8_bin NOT NULL,
  `cost` varchar(20) COLLATE utf8_bin NOT NULL,
  `time` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `move`
--

INSERT INTO `move` (`departure_city`, `traffic_tool`, `arrive_city`, `cost`, `time`) VALUES
('南投', '機車', '台中', '200', '2 h'),
('南投', '汽車', '台東', '500', '4 h'),
('南投', '汽車', '高雄', '500', '3 h'),
('南投', '腳', '桃園', '500', '10 h'),
('台中', '機車', '台北', '400', '5 h'),
('台北', '火箭', '連江', '5000000', '30 m'),
('台南', '汽車', '屏東', '500', '3 h'),
('台東', '飛機', '台北', '2000', '1.5 h'),
('台東', '飛機', '高雄', '1000', '1 h'),
('台東', '馬', '屏東', '馬糧', '5 h'),
('嘉義', '汽車', '基隆', '700', '7 h'),
('嘉義', '汽車', '彰化', '300', '2 h'),
('基隆', '腳', '台北', '100', '2 h'),
('基隆', '腳', '花蓮', '400', '10 h'),
('宜蘭', '汽車', '台東', '', '4 h'),
('宜蘭', '汽車', '屏東', '900', '4 h'),
('宜蘭', '汽車', '苗栗', '800', '8 h'),
('宜蘭', '甲鐵城', '高雄', '50000', '50 m'),
('屏東', '鐵馬', '高雄', '100', '3 h'),
('彰化', '鐵馬', '花蓮', '800', '16 h'),
('新竹', '甲鐵城', '金門', '鮮血', '30 m'),
('桃園', '機車', '台北', '200', '3 h'),
('桃園', '飛機', '宜蘭', '1000', '20 m'),
('桃園', '飛機', '高雄', '1500', '1.5 h'),
('澎湖', '機車', '澎湖', '100', '30 m'),
('澎湖', '火箭', '新竹', '300000', '10 m'),
('花蓮', '汽車', '宜蘭', '300', '2 h'),
('苗栗', '機車', '彰化', '100', '1 h'),
('連江', '竹蜻蜓', '台北', '銅鑼燒*1', '30 m'),
('金門', '任意門', '花蓮', '銅鑼燒*20', '3 s'),
('金門', '機車', '連江', '0', '0'),
('雲林', '飛機', '苗栗', '500', '10 m'),
('高雄', '幽浮', '台北', '以身相許', '1 s'),
('高雄', '腳', '彰化', '0', '明年'),
('高雄', '飛機', '桃園', '1000', '30 m');

-- --------------------------------------------------------

--
-- 資料表結構 `traffic`
--

CREATE TABLE IF NOT EXISTS `traffic` (
  `tool` varchar(20) COLLATE utf8_bin NOT NULL,
  `departure_city` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- 資料表的匯出資料 `traffic`
--

INSERT INTO `traffic` (`tool`, `departure_city`) VALUES
('機車', '南投'),
('汽車', '南投'),
('腳', '南投'),
('機車', '台中'),
('火箭', '台北'),
('汽車', '台南'),
('飛機', '台東'),
('馬', '台東'),
('汽車', '嘉義'),
('腳', '基隆'),
('汽車', '宜蘭'),
('鐵馬', '屏東'),
('鐵馬', '彰化'),
('甲鐵城', '新竹'),
('機車', '桃園'),
('飛機', '桃園'),
('機車', '澎湖'),
('汽車', '花蓮'),
('機車', '苗栗'),
('竹蜻蜓', '連江'),
('任意門', '金門'),
('機車', '金門'),
('飛機', '雲林'),
('幽浮', '高雄');

-- --------------------------------------------------------

--
-- 資料表結構 `vieww`
--

CREATE TABLE IF NOT EXISTS `vieww` (
`mid` int(20) NOT NULL,
  `name` varchar(20) COLLATE utf8_bin NOT NULL,
  `addd` varchar(20) COLLATE utf8_bin NOT NULL,
  `type` varchar(20) COLLATE utf8_bin NOT NULL,
  `arrive_city` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=46 ;

--
-- 資料表的匯出資料 `vieww`
--

INSERT INTO `vieww` (`mid`, `name`, `addd`, `type`, `arrive_city`) VALUES
(1, '肉圓', '彰化北北', '吃', '彰化'),
(2, '八大森林樂園', '屏東潮州', '遊樂區', '屏東'),
(3, '大魯閣草衙道', '高雄前鎮', '購物商城', '高雄'),
(4, '九份老街', '新北瑞芳', '觀光', '台北'),
(5, '天空步道', '桃園復興', '觀光', '桃園'),
(6, '東沙群島', '高雄東沙', '觀光', '高雄'),
(7, '花園夜市', '台南北區', '吃', '台南'),
(9, '阿里山', '嘉義阿里山', '觀光', '嘉義'),
(10, '侯硐貓村', '台北侯硐', '觀光', '台北'),
(12, '城隍廟', '新竹北區', '吃', '新竹'),
(13, '肉圓', '屏東南南', '吃', '屏東'),
(14, '幾米公園', '宜蘭市', '觀光', '宜蘭'),
(15, '新社花海', '台中新社', '觀光', '台中'),
(16, '義大世界', '高雄大樹', '遊樂場', '高雄'),
(17, '義大遊樂場', '高雄大樹', '購物商城', '高雄'),
(18, '七里香', '台東市場', '吃', '台東'),
(19, '101', '台北市信義區', '觀光', '台北'),
(20, '西門町', '台北北南', '觀光', '台北'),
(22, '旗津漁港', '高雄旗津', '觀光', '高雄'),
(24, '七星潭', '花蓮', '觀光', '花蓮'),
(25, '宮原眼科', '台中', '吃', '台中'),
(26, '科工館', '台中忠中', '觀光', '台中'),
(28, '夢時代', '高雄南北', '購物商城', '高雄'),
(29, '大遠百', '高雄三多', '觀光', '高雄'),
(30, '新光三越', '高雄三多', '購物商城', '高雄'),
(32, '黃季蔥油餅', '台東海濱', '吃', '台東'),
(33, '嵐院', '台東市場', '吃', '台東'),
(34, 'sogo', '高雄三多', '購物商城', '高雄'),
(36, '紅毛城', '台北淡水', '觀光', '台北'),
(37, '漁人碼頭', '台北淡水', '觀光', '台北'),
(41, '不厭亭', '台北九份', '觀光', '台北'),
(42, '711', '台東', '吃', '台東'),
(44, '蚵仔煎', '基隆廟口', '吃', '基隆'),
(45, '逢甲夜市', '逢甲', '吃', '台中');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `arrive`
--
ALTER TABLE `arrive`
 ADD PRIMARY KEY (`city`);

--
-- 資料表索引 `departure`
--
ALTER TABLE `departure`
 ADD PRIMARY KEY (`city`);

--
-- 資料表索引 `hotel`
--
ALTER TABLE `hotel`
 ADD PRIMARY KEY (`name`,`arrive_city`), ADD KEY `arrive_city` (`arrive_city`);

--
-- 資料表索引 `move`
--
ALTER TABLE `move`
 ADD PRIMARY KEY (`departure_city`,`traffic_tool`,`arrive_city`), ADD KEY `traffic_tool` (`traffic_tool`), ADD KEY `arrive_city` (`arrive_city`);

--
-- 資料表索引 `traffic`
--
ALTER TABLE `traffic`
 ADD PRIMARY KEY (`tool`,`departure_city`), ADD KEY `departure_city` (`departure_city`);

--
-- 資料表索引 `vieww`
--
ALTER TABLE `vieww`
 ADD PRIMARY KEY (`mid`,`name`,`arrive_city`), ADD KEY `arrive_city` (`arrive_city`);

--
-- 在匯出的資料表使用 AUTO_INCREMENT
--

--
-- 使用資料表 AUTO_INCREMENT `vieww`
--
ALTER TABLE `vieww`
MODIFY `mid` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=46;
--
-- 已匯出資料表的限制(Constraint)
--

--
-- 資料表的 Constraints `hotel`
--
ALTER TABLE `hotel`
ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`arrive_city`) REFERENCES `arrive` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `move`
--
ALTER TABLE `move`
ADD CONSTRAINT `move_ibfk_1` FOREIGN KEY (`departure_city`) REFERENCES `traffic` (`departure_city`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `move_ibfk_2` FOREIGN KEY (`traffic_tool`) REFERENCES `traffic` (`tool`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `move_ibfk_3` FOREIGN KEY (`arrive_city`) REFERENCES `arrive` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `traffic`
--
ALTER TABLE `traffic`
ADD CONSTRAINT `traffic_ibfk_1` FOREIGN KEY (`departure_city`) REFERENCES `departure` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- 資料表的 Constraints `vieww`
--
ALTER TABLE `vieww`
ADD CONSTRAINT `vieww_ibfk_1` FOREIGN KEY (`arrive_city`) REFERENCES `arrive` (`city`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
