-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2020 às 20:08
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `devbarber`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberavailability`
--

CREATE TABLE `barberavailability` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `weekday` int(11) NOT NULL,
  `hours` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberavailability`
--

INSERT INTO `barberavailability` (`id`, `id_barber`, `weekday`, `hours`) VALUES
(1, 4, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(2, 4, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(3, 4, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(4, 4, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(5, 5, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(6, 5, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(7, 5, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(8, 5, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(9, 6, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(10, 6, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(11, 6, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(12, 6, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(13, 7, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(14, 7, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(15, 7, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(16, 7, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(17, 8, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(18, 8, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(19, 8, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(20, 8, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(21, 9, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(22, 9, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(23, 9, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(24, 9, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(25, 10, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(26, 10, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(27, 10, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(28, 10, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(29, 11, 0, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(30, 11, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(31, 11, 2, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(32, 11, 3, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(33, 12, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(34, 12, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(35, 12, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(36, 12, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(37, 13, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(38, 13, 1, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(39, 13, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(40, 13, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(41, 14, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(42, 14, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(43, 14, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(44, 14, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(45, 15, 0, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(46, 15, 1, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(47, 15, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(48, 15, 3, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(49, 16, 0, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(50, 16, 1, '08:00,09:00,10:00,11:00,12:00,13:00,14:00,15:00'),
(51, 16, 2, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(52, 16, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(53, 17, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(54, 17, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(55, 17, 2, '10:00,11:00,12:00,13:00,14:00,15:00,16:00,17:00'),
(56, 17, 3, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(57, 18, 0, '07:00,08:00,09:00,10:00,11:00,12:00,13:00,14:00'),
(58, 18, 1, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(59, 18, 2, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00'),
(60, 18, 3, '09:00,10:00,11:00,12:00,13:00,14:00,15:00,16:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberphotos`
--

CREATE TABLE `barberphotos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberphotos`
--

INSERT INTO `barberphotos` (`id`, `id_barber`, `url`) VALUES
(9, 4, '4.png'),
(10, 4, '3.png'),
(11, 4, '1.png'),
(12, 4, '5.png'),
(13, 5, '2.png'),
(14, 5, '5.png'),
(15, 5, '4.png'),
(16, 5, '2.png'),
(17, 6, '4.png'),
(18, 6, '5.png'),
(19, 6, '4.png'),
(20, 6, '2.png'),
(21, 7, '4.png'),
(22, 7, '3.png'),
(23, 7, '4.png'),
(24, 7, '1.png'),
(25, 8, '1.png'),
(26, 8, '5.png'),
(27, 8, '5.png'),
(28, 8, '3.png'),
(29, 9, '1.png'),
(30, 9, '1.png'),
(31, 9, '4.png'),
(32, 9, '4.png'),
(33, 10, '2.png'),
(34, 10, '5.png'),
(35, 10, '1.png'),
(36, 10, '1.png'),
(37, 11, '5.png'),
(38, 11, '1.png'),
(39, 11, '1.png'),
(40, 11, '2.png'),
(41, 12, '2.png'),
(42, 12, '1.png'),
(43, 12, '1.png'),
(44, 12, '5.png'),
(45, 13, '3.png'),
(46, 13, '1.png'),
(47, 13, '4.png'),
(48, 13, '1.png'),
(49, 14, '4.png'),
(50, 14, '4.png'),
(51, 14, '4.png'),
(52, 14, '5.png'),
(53, 15, '1.png'),
(54, 15, '1.png'),
(55, 15, '3.png'),
(56, 15, '4.png'),
(57, 16, '4.png'),
(58, 16, '4.png'),
(59, 16, '1.png'),
(60, 16, '2.png'),
(61, 17, '3.png'),
(62, 17, '5.png'),
(63, 17, '3.png'),
(64, 17, '2.png'),
(65, 18, '3.png'),
(66, 18, '2.png'),
(67, 18, '5.png'),
(68, 18, '1.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberreviews`
--

CREATE TABLE `barberreviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `rate` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbers`
--

CREATE TABLE `barbers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `stars` double(8,2) NOT NULL DEFAULT 0.00,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbers`
--

INSERT INTO `barbers` (`id`, `name`, `avatar`, `stars`, `latitude`, `longitude`) VALUES
(4, 'Daniel Sousa', '1.png', 2.80, '-23.5430907', '-46.6182795'),
(5, 'Amanda Pereira', '2.png', 4.10, '-23.5030907', '-46.6782795'),
(6, 'Daniel Pereira', '3.png', 2.10, '-23.5630907', '-46.6582795'),
(7, 'Bonieky Lacerda', '1.png', 4.50, '-23.5630907', '-46.6282795'),
(8, 'Lucas Lacerda', '1.png', 4.10, '-23.5630907', '-46.6682795'),
(9, 'Amanda Pereira', '3.png', 4.80, '-23.5030907', '-46.6482795'),
(10, 'Gabriel Lacerda', '2.png', 3.70, '-23.5530907', '-46.6982795'),
(11, 'Amanda Alvaro', '3.png', 2.40, '-23.5130907', '-46.6982795'),
(12, 'Daniel Lacerda', '2.png', 2.10, '-23.5430907', '-46.6382795'),
(13, 'Gabriel Pereira', '2.png', 2.40, '-23.5130907', '-46.6282795'),
(14, 'Bonieky Silva', '4.png', 4.60, '-23.5830907', '-46.6882795'),
(15, 'Daniel Diniz', '1.png', 3.20, '-23.5730907', '-46.6182795'),
(16, 'Amanda Silva', '3.png', 3.40, '-23.5830907', '-46.6082795'),
(17, 'Amanda Lacerda', '1.png', 4.70, '-23.5530907', '-46.6082795'),
(18, 'Pedro Oliveira', '1.png', 3.10, '-23.5030907', '-46.6882795');

-- --------------------------------------------------------

--
-- Estrutura da tabela `barberservices`
--

CREATE TABLE `barberservices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barberservices`
--

INSERT INTO `barberservices` (`id`, `id_barber`, `name`, `price`) VALUES
(10, 4, 'Enfeite de Fios', 32.10),
(11, 4, 'Enfeite de Unha', 28.93),
(12, 4, 'Enfeite de Cabelo', 47.14),
(13, 4, 'Enfeite de Fios', 58.81),
(14, 4, 'Corte de Unha', 44.46),
(15, 4, 'Corte de Cabelo', 63.94),
(16, 5, 'Corte de Cabelo', 55.50),
(17, 5, 'Pintura de Fios', 1.58),
(18, 5, 'Corte de Fios', 89.30),
(19, 5, 'Pintura de Cabelo', 93.48),
(20, 6, 'Corte de Sobrancelhas', 89.91),
(21, 6, 'Pintura de Unha', 90.63),
(22, 6, 'Enfeite de Sobrancelhas', 99.54),
(23, 7, 'Aparação de Unha', 82.70),
(24, 7, 'Enfeite de Unha', 51.39),
(25, 7, 'Pintura de Cabelo', 44.71),
(26, 7, 'Enfeite de Unha', 75.26),
(27, 8, 'Aparação de Cabelo', 30.89),
(28, 8, 'Aparação de Sobrancelhas', 84.95),
(29, 8, 'Pintura de Fios', 15.77),
(30, 9, 'Pintura de Sobrancelhas', 77.50),
(31, 9, 'Aparação de Cabelo', 75.24),
(32, 9, 'Corte de Unha', 42.90),
(33, 10, 'Pintura de Cabelo', 14.12),
(34, 10, 'Corte de Fios', 7.60),
(35, 10, 'Pintura de Sobrancelhas', 70.46),
(36, 10, 'Aparação de Sobrancelhas', 25.76),
(37, 10, 'Corte de Fios', 17.90),
(38, 10, 'Corte de Sobrancelhas', 56.65),
(39, 11, 'Pintura de Sobrancelhas', 13.94),
(40, 11, 'Aparação de Unha', 36.70),
(41, 11, 'Aparação de Unha', 69.71),
(42, 12, 'Corte de Cabelo', 30.80),
(43, 12, 'Corte de Unha', 50.97),
(44, 12, 'Corte de Cabelo', 69.45),
(45, 12, 'Enfeite de Unha', 77.56),
(46, 12, 'Enfeite de Sobrancelhas', 23.52),
(47, 12, 'Pintura de Fios', 38.17),
(48, 13, 'Aparação de Cabelo', 37.55),
(49, 13, 'Enfeite de Sobrancelhas', 45.17),
(50, 13, 'Corte de Unha', 15.15),
(51, 13, 'Pintura de Fios', 50.80),
(52, 14, 'Corte de Unha', 79.50),
(53, 14, 'Aparação de Unha', 93.13),
(54, 14, 'Pintura de Unha', 8.17),
(55, 14, 'Corte de Unha', 39.40),
(56, 14, 'Enfeite de Unha', 24.43),
(57, 15, 'Pintura de Cabelo', 86.78),
(58, 15, 'Aparação de Sobrancelhas', 9.19),
(59, 15, 'Pintura de Fios', 60.31),
(60, 15, 'Aparação de Sobrancelhas', 32.87),
(61, 15, 'Pintura de Sobrancelhas', 78.64),
(62, 16, 'Aparação de Unha', 12.89),
(63, 16, 'Aparação de Unha', 85.21),
(64, 16, 'Enfeite de Sobrancelhas', 77.57),
(65, 17, 'Pintura de Cabelo', 42.78),
(66, 17, 'Aparação de Fios', 32.93),
(67, 17, 'Aparação de Fios', 26.84),
(68, 17, 'Enfeite de Unha', 13.35),
(69, 18, 'Enfeite de Unha', 46.33),
(70, 18, 'Pintura de Unha', 8.56),
(71, 18, 'Corte de Unha', 4.48),
(72, 18, 'Aparação de Fios', 44.22);

-- --------------------------------------------------------

--
-- Estrutura da tabela `barbertestimonials`
--

CREATE TABLE `barbertestimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_barber` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` double(8,2) NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `barbertestimonials`
--

INSERT INTO `barbertestimonials` (`id`, `id_barber`, `name`, `rate`, `body`) VALUES
(1, 4, 'Bonieky', 4.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(2, 4, 'Daniel', 3.90, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(3, 4, 'Lucas', 2.10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(4, 5, 'Bonieky', 4.00, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(5, 5, 'Pedro', 2.70, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(6, 5, 'Bonieky', 4.60, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(7, 6, 'Matheus', 3.90, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(8, 6, 'Amanda', 3.30, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(9, 6, 'Lucas', 2.10, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(10, 7, 'Daniel', 4.00, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(11, 7, 'Lucas', 2.10, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(12, 7, 'Gabriel', 2.10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(13, 8, 'Amanda', 2.70, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(14, 8, 'Matheus', 4.40, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(15, 8, 'Lucas', 4.50, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(16, 9, 'Marcos', 3.00, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout'),
(17, 9, 'Amanda', 4.10, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(18, 9, 'Bonieky', 3.30, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(19, 10, 'Pedro', 4.60, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(20, 10, 'Leticia', 2.40, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(21, 10, 'Pedro', 3.50, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(22, 11, 'Marcos', 4.30, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout'),
(23, 11, 'Pedro', 2.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(24, 11, 'Marcos', 3.90, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(25, 12, 'Pedro', 2.40, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(26, 12, 'Lucas', 2.10, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(27, 12, 'Gabriel', 4.80, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(28, 13, 'Matheus', 4.30, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(29, 13, 'Pedro', 3.70, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(30, 13, 'Amanda', 3.00, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(31, 14, 'Amanda', 2.50, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout'),
(32, 14, 'Lucas', 3.20, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(33, 14, 'Marcos', 4.90, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(34, 15, 'Leticia', 4.00, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(35, 15, 'Pedro', 4.50, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(36, 15, 'Bonieky', 2.90, 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humou'),
(37, 16, 'Pedro', 4.30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(38, 16, 'Marcos', 3.80, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(39, 16, 'Amanda', 2.40, 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.'),
(40, 17, 'Gabriel', 3.10, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout'),
(41, 17, 'Leticia', 3.50, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(42, 17, 'Gabriel', 2.20, 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary'),
(43, 18, 'Gabriel', 4.60, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(44, 18, 'Gabriel', 4.30, 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years'),
(45, 18, 'Amanda', 3.30, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_09_16_163511_create_all_tables', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `userappointments`
--

CREATE TABLE `userappointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL,
  `ap_datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `userfavorites`
--

CREATE TABLE `userfavorites` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_barber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `avatar`, `email`, `password`) VALUES
(3, 'Matheus', 'default.png', 'matheus@gmail.com', '$2y$10$ftD/h8ML/Ogh6BoWZ73gdeJ9kjtd8us544bnXbhbZiBqF2YzGBf.a');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbers`
--
ALTER TABLE `barbers`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barberservices`
--
ALTER TABLE `barberservices`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userappointments`
--
ALTER TABLE `userappointments`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `barberavailability`
--
ALTER TABLE `barberavailability`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de tabela `barberphotos`
--
ALTER TABLE `barberphotos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de tabela `barberreviews`
--
ALTER TABLE `barberreviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `barbers`
--
ALTER TABLE `barbers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `barberservices`
--
ALTER TABLE `barberservices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `barbertestimonials`
--
ALTER TABLE `barbertestimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `userappointments`
--
ALTER TABLE `userappointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `userfavorites`
--
ALTER TABLE `userfavorites`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
