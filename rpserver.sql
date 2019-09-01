-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 01 2019 г., 16:01
-- Версия сервера: 5.7.26
-- Версия PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `rpserver`
--

-- --------------------------------------------------------

--
-- Структура таблицы `barbershop`
--

DROP TABLE IF EXISTS `barbershop`;
CREATE TABLE IF NOT EXISTS `barbershop` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `camData` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `business`
--

DROP TABLE IF EXISTS `business`;
CREATE TABLE IF NOT EXISTS `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `coord` text NOT NULL,
  `price` int(11) NOT NULL,
  `ownerId` int(255) DEFAULT '0',
  `margin` int(11) DEFAULT '0',
  `balance` int(11) NOT NULL DEFAULT '0',
  `buyerMenuCoord` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `business`
--

INSERT INTO `business` (`id`, `title`, `coord`, `price`, `ownerId`, `margin`, `balance`, `buyerMenuCoord`) VALUES
(1, 'Cheap Car Dealership', '{\"x\":-29.219728469848633,\"y\":-1104.144287109375,\"z\":26.422351837158203,\"rot\":142.34906005859375,\"dim\":0}', 50000, 0, 50, 6250, '{\"x\":-32.041526794433594,\"y\":-1111.332763671875,\"z\":26.42235565185547,\"rot\":150.4487762451172,\"dim\":0}'),
(2, 'Gas Station', '{\"x\":-708.84912109375,\"y\":-904.8486938476562,\"z\":19.21558952331543,\"rot\":51.527191162109375,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":-708.268798828125,\"y\":-913.8108520507812,\"z\":19.21558952331543,\"rot\":67.15875244140625,\"dim\":0}'),
(3, 'Gas Station', '{\"x\":-528.3827514648438,\"y\":-1221.4591064453125,\"z\":18.454971313476562,\"rot\":139.79269409179688,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":-531.498046875,\"y\":-1220.0782470703125,\"z\":18.454986572265625,\"rot\":70.37006378173828,\"dim\":0}'),
(4, 'Clothing Shop', '{\"x\":-816.0496826171875,\"y\":-1073.33935546875,\"z\":11.328017234802246,\"rot\":22.369535446166992,\"dim\":0}', 50000, 1, 30, 1275, '{\"x\":-819.4534301757812,\"y\":-1073.4404296875,\"z\":11.328108787536621,\"rot\":271.8993835449219,\"dim\":0}'),
(5, 'Clothing Shop', '{\"x\":-164.94847106933594,\"y\":-301.8280944824219,\"z\":39.7332763671875,\"rot\":241.71243286132812,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":-162.8515625,\"y\":-303.28570556640625,\"z\":39.7332763671875,\"rot\":78.5982666015625,\"dim\":0}'),
(6, 'Gas Station', '{\"x\":-341.57080078125,\"y\":-1474.848388671875,\"z\":30.75067901611328,\"rot\":180.7527313232422,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":-342.2067565917969,\"y\":-1482.8126220703125,\"z\":30.706193923950195,\"rot\":83.8430404663086,\"dim\":0}'),
(7, 'Clothing Shop', '{\"x\":74.72164154052734,\"y\":-1387.560302734375,\"z\":29.376131057739258,\"rot\":170.62612915039062,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":76.39775848388672,\"y\":-1389.846435546875,\"z\":29.37614631652832,\"rot\":355.1409606933594,\"dim\":0}'),
(8, 'Gas Station', '{\"x\":151.4234619140625,\"y\":-1558.3037109375,\"z\":29.261756896972656,\"rot\":304.3770751953125,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":167.4439239501953,\"y\":-1553.885498046875,\"z\":29.26176643371582,\"rot\":223.1997833251953,\"dim\":0}'),
(9, 'Clothing Shop', '{\"x\":127.45389556884766,\"y\":-224.4263916015625,\"z\":54.557838439941406,\"rot\":65.25889587402344,\"dim\":0}', 50000, 0, 0, 0, '{\"x\":125.2824935913086,\"y\":-223.22354125976562,\"z\":54.557838439941406,\"rot\":244.79681396484375,\"dim\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `cheapcardealership`
--

DROP TABLE IF EXISTS `cheapcardealership`;
CREATE TABLE IF NOT EXISTS `cheapcardealership` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `newCarCoord` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `cheapcardealership`
--

INSERT INTO `cheapcardealership` (`id`, `newCarCoord`) VALUES
(1, '{\"x\":-49.68840026855469,\"y\":-1110.1292724609375,\"z\":26.08631706237793,\"rot\":77.84756469726562,\"dim\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `clothingshop`
--

DROP TABLE IF EXISTS `clothingshop`;
CREATE TABLE IF NOT EXISTS `clothingshop` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `camData` text,
  `buyerStandCoord` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `clothingshop`
--

INSERT INTO `clothingshop` (`id`, `camData`, `buyerStandCoord`) VALUES
(4, '{\"x\":-822.83,\"y\":-1069.4,\"z\":11.33,\"rz\":298.82,\"viewangle\":35}', '{\"x\":-820.04541015625,\"y\":-1067.449462890625,\"z\":11.328038215637207,\"rot\":106.8011245727539,\"dim\":0}'),
(5, '{\"x\":-169.1,\"y\":-297.34,\"z\":39.73,\"rz\":192.5,\"viewangle\":35}', '{\"x\":-168.31973266601562,\"y\":-300.4559326171875,\"z\":39.73331069946289,\"rot\":310.7257995605469,\"dim\":0}'),
(7, '{\"x\":71.5,\"y\":-1390.53,\"z\":29.38,\"rz\":365.45,\"viewangle\":35}', '{\"x\":71.1639404296875,\"y\":-1387.438720703125,\"z\":29.376150131225586,\"rot\":184.5663299560547,\"dim\":0}'),
(9, '{\"x\":119.97,\"y\":-227.46,\"z\":54.56,\"rz\":152.96,\"viewangle\":35}', '{\"x\":118.0619125366211,\"y\":-232.85935974121094,\"z\":54.557838439941406,\"rot\":324.996337890625,\"dim\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `commercialcardealership`
--

DROP TABLE IF EXISTS `commercialcardealership`;
CREATE TABLE IF NOT EXISTS `commercialcardealership` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `newCarCoord` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `gasstation`
--

DROP TABLE IF EXISTS `gasstation`;
CREATE TABLE IF NOT EXISTS `gasstation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fillingCoord` text,
  `camData` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gasstation`
--

INSERT INTO `gasstation` (`id`, `fillingCoord`, `camData`) VALUES
(2, '{\"x\":-723.29,\"y\":-934.49,\"z\":19.21,\"r\":7}', '{\"x\":-723.32,\"y\":-934.81,\"z\":21.21,\"rz\":48.17,\"viewangle\":100}'),
(3, '{\"x\":-526.78,\"y\":-1210.34,\"z\":18.18,\"r\":7}', '{\"x\":-526.78,\"y\":-1210.34,\"z\":20.18,\"rz\":248.82,\"viewangle\":100}'),
(6, '{\"x\":-319.29,\"y\":-1471.58,\"z\":30.55,\"r\":10}', '{\"x\":-311.16,\"y\":-1491.27,\"z\":32.45,\"rz\":28.99,\"viewangle\":100}'),
(8, '{\"x\":175.59,\"y\":-1561.92,\"z\":29.26,\"r\":10}', '{\"x\":153.92,\"y\":-1572.21,\"z\":31.24,\"rz\":285.94,\"viewangle\":25}');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `regdate` varchar(255) NOT NULL,
  `logdate` varchar(255) DEFAULT NULL,
  `position` text,
  `lang` varchar(10) NOT NULL DEFAULT 'eng',
  `health` int(3) NOT NULL DEFAULT '100',
  `adminlvl` int(2) NOT NULL DEFAULT '0',
  `loyality` int(255) NOT NULL DEFAULT '0',
  `socialclub` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `firstName`, `lastName`, `password`, `ip`, `regdate`, `logdate`, `position`, `lang`, `health`, `adminlvl`, `loyality`, `socialclub`) VALUES
(1, '1', 'Sergey', 'Kozlov', '5e28ac8ff79fe586304cbcc4188b43a4', '127.0.0.1', '2019-9-1 13:36:07', '2019-9-1 18:57:24', '{\"x\":124.1,\"y\":-218.3,\"z\":54.7,\"rot\":159.1,\"dim\":0}', 'rus', 100, 2, 0, 'avanturist100rus');

-- --------------------------------------------------------

--
-- Структура таблицы `usersbody`
--

DROP TABLE IF EXISTS `usersbody`;
CREATE TABLE IF NOT EXISTS `usersbody` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `gender` varchar(1) DEFAULT NULL,
  `skindata` text,
  `facedata` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersbody`
--

INSERT INTO `usersbody` (`id`, `gender`, `skindata`, `facedata`) VALUES
(1, 'm', '[12,31,12,0]', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]');

-- --------------------------------------------------------

--
-- Структура таблицы `usersclothes`
--

DROP TABLE IF EXISTS `usersclothes`;
CREATE TABLE IF NOT EXISTS `usersclothes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hats` text,
  `glasses` text,
  `tops` text,
  `legs` text,
  `feet` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersclothes`
--

INSERT INTO `usersclothes` (`id`, `hats`, `glasses`, `tops`, `legs`, `feet`) VALUES
(1, '{\"number\":1,\"color\":5}', '{\"number\":2,\"color\":5}', '{\"number\":7,\"color\":4,\"underColor\":0}', '{\"number\":3,\"color\":4}', '{\"number\":0,\"color\":14}');

-- --------------------------------------------------------

--
-- Структура таблицы `usersfaction`
--

DROP TABLE IF EXISTS `usersfaction`;
CREATE TABLE IF NOT EXISTS `usersfaction` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `rank` int(2) DEFAULT '0',
  `info` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersfaction`
--

INSERT INTO `usersfaction` (`id`, `name`, `rank`, `info`) VALUES
(1, 'police', 2, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `usersheadoverlay`
--

DROP TABLE IF EXISTS `usersheadoverlay`;
CREATE TABLE IF NOT EXISTS `usersheadoverlay` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `hair` tinyint(2) NOT NULL,
  `hairColor` text NOT NULL,
  `brow` text NOT NULL,
  `beard` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersheadoverlay`
--

INSERT INTO `usersheadoverlay` (`id`, `hair`, `hairColor`, `brow`, `beard`) VALUES
(1, 15, '{\"c1\":49,\"c2\":15}', '{\"s\":29,\"o\":0}', '{\"s\":26,\"o\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `usersjail`
--

DROP TABLE IF EXISTS `usersjail`;
CREATE TABLE IF NOT EXISTS `usersjail` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `inside` tinyint(1) NOT NULL DEFAULT '0',
  `time` int(255) NOT NULL DEFAULT '0',
  `violations` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersjail`
--

INSERT INTO `usersjail` (`id`, `inside`, `time`, `violations`) VALUES
(1, 0, 0, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `usersmoney`
--

DROP TABLE IF EXISTS `usersmoney`;
CREATE TABLE IF NOT EXISTS `usersmoney` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `cash` bigint(255) NOT NULL DEFAULT '1500',
  `bank` bigint(255) NOT NULL DEFAULT '0',
  `tax` bigint(255) NOT NULL DEFAULT '0',
  `fines` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usersmoney`
--

INSERT INTO `usersmoney` (`id`, `cash`, `bank`, `tax`, `fines`) VALUES
(1, 247688225, 52050000, 49995, '[]');

-- --------------------------------------------------------

--
-- Структура таблицы `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `fuel` float NOT NULL,
  `fuelTank` int(255) NOT NULL,
  `fuelRate` int(255) NOT NULL,
  `price` int(255) NOT NULL,
  `ownerId` int(255) NOT NULL,
  `whoCanOpen` text NOT NULL,
  `factionName` varchar(255) DEFAULT NULL,
  `primaryColor` text NOT NULL,
  `secondaryColor` text NOT NULL,
  `numberPlate` varchar(10) NOT NULL,
  `coord` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vehicles`
--

INSERT INTO `vehicles` (`id`, `model`, `title`, `fuel`, `fuelTank`, `fuelRate`, `price`, `ownerId`, `whoCanOpen`, `factionName`, `primaryColor`, `secondaryColor`, `numberPlate`, `coord`) VALUES
(1, 'brioso', 'Grotti Brioso R/A', 39.956, 40, 5, 50000, 1, '[1]', NULL, '[129,86,166]', '[129,86,166]', '5XRHMFB', '{\"x\":-61.9,\"y\":-1116.1,\"z\":25.6,\"rot\":183.3,\"dim\":0}');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
