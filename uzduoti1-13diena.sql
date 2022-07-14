-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 14 2022 г., 06:12
-- Версия сервера: 5.7.36
-- Версия PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `uzduoti1-13diena`
--

-- --------------------------------------------------------

--
-- Структура таблицы `destytojai`
--

DROP TABLE IF EXISTS `destytojai`;
CREATE TABLE IF NOT EXISTS `destytojai` (
  `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Vardas` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `destytojai`
--

INSERT INTO `destytojai` (`id`, `Vardas`) VALUES
(1, 'Adams'),
(2, 'Jones'),
(3, 'Smith'),
(4, 'Baker');

-- --------------------------------------------------------

--
-- Структура таблицы `fakultetas`
--

DROP TABLE IF EXISTS `fakultetas`;
CREATE TABLE IF NOT EXISTS `fakultetas` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `Fakultet0_pavadinimas` varchar(30) NOT NULL,
  `telefonas` decimal(10,0) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fakultetas`
--

INSERT INTO `fakultetas` (`id`, `Fakultet0_pavadinimas`, `telefonas`) VALUES
(1, 'Howeser', '60192'),
(2, 'Langley', '45869');

-- --------------------------------------------------------

--
-- Структура таблицы `programos`
--

DROP TABLE IF EXISTS `programos`;
CREATE TABLE IF NOT EXISTS `programos` (
  `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT,
  `kurso_ID` varchar(30) NOT NULL,
  `Programos_pavadinimas` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `programos`
--

INSERT INTO `programos` (`id`, `kurso_ID`, `Programos_pavadinimas`) VALUES
(1, 'IS318', 'Date programing	'),
(2, 'IS318', 'Database');

-- --------------------------------------------------------

--
-- Структура таблицы `programos_lygis`
--

DROP TABLE IF EXISTS `programos_lygis`;
CREATE TABLE IF NOT EXISTS `programos_lygis` (
  `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT,
  `lygio_simbolis` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `programos_lygis`
--

INSERT INTO `programos_lygis` (`id`, `lygio_simbolis`) VALUES
(1, 'A'),
(2, 'B');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
