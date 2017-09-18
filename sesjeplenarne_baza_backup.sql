-- phpMyAdmin SQL Dump
-- version 3.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas wygenerowania: 10 Lis 2012, 15:08
-- Wersja serwera: 5.5.12
-- Wersja PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `sesjeplenarne`
--

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `current_glosowanie`
--
CREATE TABLE IF NOT EXISTS `current_glosowanie` (
`glosowanie_id` int(11)
);
-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `current_plenarka`
--
CREATE TABLE IF NOT EXISTS `current_plenarka` (
`plenarka_id` int(11)
);
-- --------------------------------------------------------

--
-- Struktura tabeli dla  `delegaci`
--

CREATE TABLE IF NOT EXISTS `delegaci` (
  `plenar_id` int(10) unsigned NOT NULL,
  `miasto_id` int(10) unsigned NOT NULL,
  `imie` char(40) COLLATE cp1250_polish_ci NOT NULL,
  `nazwisko` char(40) COLLATE cp1250_polish_ci NOT NULL,
  `kod_dostepu` char(50) COLLATE cp1250_polish_ci NOT NULL,
  PRIMARY KEY (`plenar_id`,`miasto_id`),
  KEY `miasto_id` (`miasto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci;

--
-- Zrzut danych tabeli `delegaci`
--

INSERT INTO `delegaci` (`plenar_id`, `miasto_id`, `imie`, `nazwisko`, `kod_dostepu`) VALUES
(1, 96, 'Marta', 'Pysz', '3820'),
(1, 97, 'Gal', 'Anonim', '7586'),
(1, 98, 'Mateusz', 'Kolator', '1865'),
(1, 99, 'Monika', 'Skoczeń', '6983'),
(1, 100, 'Natasza', 'Blek', '5238'),
(1, 101, 'Konrad', 'Pieszko', '6145'),
(1, 102, 'Natasza', 'Blek', '6035'),
(1, 103, 'Mateusz', 'Kolator', '9546'),
(1, 104, 'Wilk', 'Portowy', '1604'),
(1, 105, 'Agnieszka', 'Kobyłko', '3515'),
(1, 106, 'Koziołek', 'Matołek', '4578'),
(1, 107, 'Górnik', 'Jan', '9935'),
(1, 108, 'Super', 'Man', '6718'),
(2, 96, 'Marta', 'Pysz', '2405'),
(2, 97, 'Bartosz', 'Wasilczyk', '7415'),
(2, 98, 'Bartłomiej', 'Wroński', '2332'),
(2, 99, 'Maciej', 'Gralak', '8479'),
(2, 100, 'Karolina', 'Mroczkowska', '9520'),
(2, 101, 'Karolina', 'Sapota', '8776'),
(2, 102, 'Michał', 'Nesteruk', '9940'),
(2, 103, 'Karolina', 'Garnicka', '5399'),
(2, 104, 'Justyna', 'Wiewiórska', '1417'),
(2, 105, 'Aneta', 'Szafraniec', '7335'),
(2, 106, 'Michalina', 'Drejza', '5211'),
(2, 107, 'Daria', 'Juraszek', '2613'),
(2, 108, 'Małgorzata', 'Żochowska', '3721'),
(3, 96, 'Marta', 'Pysz', '9412'),
(3, 97, 'brak', 'brak', '8187'),
(3, 98, 'brak', 'brak', '6723'),
(3, 99, 'Maciej', 'Gralak', '8648'),
(3, 100, 'Karolina', 'Mroczkowska', '1966'),
(3, 101, 'Karolina', 'Sapota', '8238'),
(3, 102, 'Michał', 'Nesteruk', '1226'),
(3, 103, 'Karolina', 'Garnicka', '4489'),
(3, 104, 'Justyna', 'Wiewiórska', '9390'),
(3, 105, 'Aneta', 'Szafraniec', '9054'),
(3, 106, 'Michalina', 'Drejza', '1932'),
(3, 107, 'Daria', 'Juraszek', '1476'),
(3, 108, 'Małgorzata', 'Żochowska', '5643'),
(4, 96, 'Marta', 'Pysz', '8716'),
(4, 97, 'Miachał', 'Walczewski', '7099'),
(4, 98, 'Łukasz', 'Durajski', '3087'),
(4, 99, 'brak', 'brak', '7923'),
(4, 100, 'Karolina', 'Mroczkowska', '6844'),
(4, 101, 'Karolina', 'Sapota', '1588'),
(4, 102, 'Jowita', 'Rucińska', '2931'),
(4, 103, 'Karolina', 'Garnicka', '3704'),
(4, 104, 'Justyna', 'Wiewiórska', '8782'),
(4, 105, 'Karol', 'Pruszyński', '5705'),
(4, 106, 'Michalina', 'Drejza', '1511'),
(4, 107, 'Daria', 'Juraszek', '7560'),
(4, 108, 'Maciej', 'Cyran', '5141'),
(5, 96, 'Monika', 'Skoczeń', '7697'),
(5, 97, 'Michał', 'Walczewski', '1522'),
(5, 98, 'Marta', 'Pilch', '5876'),
(5, 99, 'Marcin', 'Mierzwa', '2472'),
(5, 100, 'Magdalena', 'Rerych', '5064'),
(5, 101, 'Anna', 'Cepowicz', '3435'),
(5, 102, 'Katarzyna', 'Wiśniewska', '7973'),
(5, 103, 'Karolina', 'Garnicka', '7556'),
(5, 104, 'Anna', 'Żuk', '1626'),
(5, 105, 'Robert', 'Chudzik', '6912'),
(5, 106, 'Oskar', 'Gałuszka', '9314'),
(5, 107, 'Marek', 'Dryżałowski', '8338'),
(5, 108, 'Mateusz', 'Spałek', '8688');

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `del_miasta`
--
CREATE TABLE IF NOT EXISTS `del_miasta` (
`imie` char(40)
,`nazwisko` char(40)
,`Name_exp_3` varchar(30)
);
-- --------------------------------------------------------

--
-- Struktura tabeli dla  `glosowania`
--

CREATE TABLE IF NOT EXISTS `glosowania` (
  `glosowanie_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plenarka_id` int(10) unsigned NOT NULL,
  `nazwa` char(250) COLLATE cp1250_polish_ci NOT NULL,
  `typ` char(10) COLLATE cp1250_polish_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zakonczone` tinyint(1) NOT NULL,
  `opiswyniku` char(250) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`glosowanie_id`),
  KEY `plenarka_id` (`plenarka_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci AUTO_INCREMENT=66 ;

--
-- Zrzut danych tabeli `glosowania`
--

INSERT INTO `glosowania` (`glosowanie_id`, `plenarka_id`, `nazwa`, `typ`, `data`, `zakonczone`, `opiswyniku`) VALUES
(2, 1, 'Głosowanie nad jakąś wstępną, mało istotną pierdołą :)', 'Tajne', '2011-10-18 09:43:18', 1, ''),
(3, 1, 'Drugie śmieszne głosowanie z różnymi opcjami', 'Tajne', '2011-10-18 09:46:29', 1, ''),
(4, 1, 'Prezydent Oddziału Wrocław - rewanż', 'Tajne', '2011-10-21 12:59:33', 1, ''),
(5, 1, 'Co najchętniej zabierzesz ze sobą na ZD?', 'Tajne', '2011-10-18 09:52:24', 1, ''),
(6, 1, 'To jest przykładowy tekst głosowania, którego temat jest stosunkowo długi, bo są w nim opisywane jakieś różne biedne pierdoły ,wymieniane są wieloczłonowe nazwiska, ktoś komuś słodzi, ktoś o czymś ględzi itp.', 'Tajne', '2011-10-18 09:54:44', 1, ''),
(7, 1, 'teraz będzie trochę głosowań  " na ilość"', 'Tajne', '2011-10-18 09:55:46', 1, ''),
(8, 1, 'głosowanie 1', 'Tajne', '2011-10-18 09:56:39', 1, ''),
(12, 1, 'głosowanie 5', 'Tajne', '2011-10-18 10:26:20', -1, ''),
(23, 2, 'Wybór Kamili Białek na Członka Honorowego IFMSA-Poland', 'Tajne', '2011-10-22 12:49:46', 1, ''),
(24, 2, 'Wybór Roberta Fastyna na Członka Honorowego IFMSA-Poland', 'Tajne', '2011-10-22 12:51:08', 1, ''),
(34, 2, 'Głosowanie nad wyborem Pawła Jarosza na Członka Honorowego IFMSA-Poland', 'Tajne', '2011-10-22 12:53:46', 1, ''),
(41, 3, 'Głosowanie nad kandydaturą Mateusza Spałka na stanowisko Sekretarza Generalnego IFMSA-Poland na rok 2012', 'Tajne', '2012-11-10 13:32:33', 1, ''),
(42, 3, 'Głosowanie nad kandydaturą Mateusza Kolatora na stanowisko Wiprezydenta IFMSA-Poland ds. zasobów ludzkich na rok 2012', 'Tajne', '2011-11-05 23:35:49', 1, ''),
(43, 3, 'Głosowanie nad kandydaturą Joanny Wojtasik na stanowisko Wiprezydenta IFMSA-Poland ds. marketingu na rok 2012', 'Tajne', '2011-11-06 00:33:12', 1, ''),
(44, 3, 'Głosowanie nad kandydaturą Moniki Pileckiej na stanowisko Skarbnika IFMSA-Poland na rok 2012', 'Tajne', '2011-11-06 00:51:04', 1, ''),
(48, 3, 'Głosowanie nad kandydaturą Adrianny Gołuch na stanowisko Koordynatora Narodowego ds. Zdrowia Publicznego na rok 2012', 'Tajne', '2011-11-06 02:22:32', 1, ''),
(49, 3, 'Głosowanie nad kandydaturą Anny Szczegielniak na stanowisko Koordynatora Narodowego ds. Zdrowia Reprodukcyjnego i AIDS na rok 2012', 'Tajne', '2011-11-06 04:21:48', 1, ''),
(50, 3, 'Głosowanie nad kandydaturą Magdaleny Frankowskiej na stanowisko Koordynatora Narodowego ds. Praw Czlowieka i Pokoju na rok 2012', 'Tajne', '2011-11-06 04:29:48', 1, ''),
(51, 3, 'Głosowanie nad kandydaturą Aleksandra Biesiady na stanowisko Członka Komisji Rewizyjnej na rok 2012', 'Tajne', '2011-11-05 10:36:33', 0, ''),
(52, 1, 'Głosowanie szkoleniowe 1', 'Tajne', '2011-11-05 15:49:56', 1, ''),
(53, 1, 'Głosowanie Szkoleniowe 2', 'Tajne', '2011-11-05 15:50:57', 1, ''),
(54, 1, 'Głosowanie Szkoleniowe 3', 'Tajne', '2011-11-05 15:52:35', 1, ''),
(55, 1, 'Głosowanie Szkoleniowe 2', 'Tajne', '2011-11-05 16:01:06', 0, ''),
(57, 3, 'Wybory na stanowisko Koordynatora Narodowego ds. Praktyk Wakacyjnych na rok 2012', 'Tajne', '2012-03-31 10:51:32', 1, ''),
(58, 3, 'Wybory na stanowisko Koordynatora Narodowego ds. Wymiany Naukowej na rok 2012', 'Tajne', '2011-11-06 04:09:32', 1, ''),
(60, 3, 'Wybory na stanowisko Prezydenta IFMSA-Poland na rok 2012', 'Tajne', '2011-11-05 23:09:27', 1, ''),
(61, 3, 'Głosowanie nad kandydaturą Tomasza Zawadzkiego na stanowisko Koordynatora Narodowago ds. Edukacji Medycznej na rok 2012', 'Tajne', '2011-11-06 04:37:55', 1, ''),
(62, 3, 'Głosowanie nad wyborem Aleksandra Biesiady na członka Komisji Rewizyjnej IFMSA-Poland na rok 2012', 'Tajne', '2011-11-06 01:21:45', 1, ''),
(63, 3, 'Głosowanie nad wyborem Stanisława Żołądka na członka Komisji Rewizyjnej IFMSA-Poland na rok 2012', 'Tajne', '2011-11-06 01:22:14', 1, ''),
(64, 4, 'Kandydatura Oddziału Warszawa na organizatora wiosennego ZD 2013', 'Tajne', '2012-11-07 22:23:28', 1, ''),
(65, 5, 'Głosowanie próbne', 'Tajne', '2012-11-10 13:34:45', 0, '');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `glosy`
--

CREATE TABLE IF NOT EXISTS `glosy` (
  `glos_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `glosowanie_id` int(10) unsigned NOT NULL,
  `opcja` char(100) COLLATE cp1250_polish_ci NOT NULL,
  `glosow` int(10) unsigned NOT NULL,
  PRIMARY KEY (`glos_id`),
  KEY `glosowanie_id` (`glosowanie_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci AUTO_INCREMENT=203 ;

--
-- Zrzut danych tabeli `glosy`
--

INSERT INTO `glosy` (`glos_id`, `glosowanie_id`, `opcja`, `glosow`) VALUES
(7, 3, 'e', 2),
(8, 3, 'd', 1),
(9, 3, 'c', 2),
(10, 3, 'b', 0),
(11, 3, 'a', 2),
(12, 4, 'A gdzie ta wódka?', 0),
(13, 4, 'Lepiej nie my', 0),
(14, 4, 'On', 0),
(15, 4, 'Ty', 0),
(16, 4, 'Ja', 0),
(17, 5, 'Nic (niech inni stawiają flaszkę i popitę)', 2),
(18, 5, 'Popitę (niech inni stawiają flaszkę)', 0),
(19, 5, 'Flaszkę', 1),
(20, 5, 'Namiot i kąpielówki', 3),
(21, 5, 'Bieliznę, ręczniki, suchy prowiant, menażkę', 0),
(22, 5, 'Wstrzymuję się', 0),
(23, 6, 'Za', 1),
(24, 6, 'Przeciw', 3),
(25, 6, 'Wstrzymuję się', 0),
(64, 23, 'Za', 6),
(65, 23, 'Przeciw', 1),
(66, 23, 'Wstrzymuję się', 0),
(67, 24, 'Za', 7),
(68, 24, 'Przeciw', 0),
(69, 24, 'Wstrzymuję się', 0),
(106, 34, 'Za', 7),
(107, 34, 'Przeciw', 0),
(108, 34, 'Wstrzymuję się', 0),
(125, 41, 'Za', 0),
(126, 41, 'Przeciw', 0),
(127, 41, 'Wstrzymuję się', 0),
(128, 42, 'Za', 10),
(129, 42, 'Przeciw', 0),
(130, 42, 'Wstrzymuję się', 0),
(131, 43, 'Za', 9),
(132, 43, 'Przeciw', 1),
(133, 43, 'Wstrzymuję się', 1),
(134, 44, 'Za', 11),
(135, 44, 'Przeciw', 0),
(136, 44, 'Wstrzymuję się', 0),
(143, 48, 'Za', 10),
(144, 48, 'Przeciw', 1),
(145, 48, 'Wstrzymuję się', 0),
(146, 49, 'Za', 10),
(147, 49, 'Przeciw', 0),
(148, 49, 'Wstrzymuję się', 0),
(149, 50, 'Za', 10),
(150, 50, 'Przeciw', 0),
(151, 50, 'Wstrzymuję się', 0),
(152, 51, 'Za', 0),
(153, 51, 'Przeciw', 0),
(154, 51, 'Wstrzymuję się', 0),
(155, 52, 'Za', 4),
(156, 52, 'Przeciw', 2),
(157, 52, 'Wstrzymuję się', 1),
(162, 54, 'Za', 3),
(163, 54, 'Przeciw', 5),
(164, 54, 'Wstrzymuję się', 0),
(165, 55, 'Przeciw Obydwu', 0),
(166, 55, 'Opcja 3', 0),
(167, 55, 'Opcja 2', 0),
(168, 55, 'Opcja 1', 0),
(169, 55, 'Wstrzymuję się', 0),
(174, 57, 'Wstrzymuję się', 0),
(175, 57, 'Przeciw', 0),
(176, 57, 'Marta Wiśniewska (NEO-in), Karolina Kołodziejczyk (NEO-out', 7),
(177, 57, 'Małgorzata Skoblik (NEO-in), Kamila Korzeniewska (NEO-out)', 4),
(178, 58, 'Wstrzymuję się', 2),
(179, 58, 'Przeciw obydwu', 1),
(180, 58, 'Marta Borys', 8),
(181, 58, 'Mariusz Gawrych', 0),
(185, 60, 'Za', 10),
(186, 60, 'Przeciw', 0),
(187, 60, 'Wstrzymuję się', 1),
(188, 61, 'Za', 11),
(189, 61, 'Przeciw', 0),
(190, 61, 'Wstrzymuję się', 0),
(191, 62, 'Za', 9),
(192, 62, 'Przeciw', 0),
(193, 62, 'Wstrzymuję się', 0),
(194, 63, 'Za', 9),
(195, 63, 'Przeciw', 0),
(196, 63, 'Wstrzymuję się', 0),
(197, 64, 'Za', 0),
(198, 64, 'Przeciw', 0),
(199, 64, 'Wstrzymuję się', 0),
(200, 65, 'opcja 1', 0),
(201, 65, 'ocpja 3', 0),
(202, 65, 'opcja 2', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `miasta`
--

CREATE TABLE IF NOT EXISTS `miasta` (
  `miasto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa_delegata` char(30) COLLATE cp1250_polish_ci NOT NULL,
  `nazwa_skrot` char(2) COLLATE cp1250_polish_ci NOT NULL,
  PRIMARY KEY (`miasto_id`),
  UNIQUE KEY `nazwa_skrot` (`nazwa_skrot`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci AUTO_INCREMENT=109 ;

--
-- Zrzut danych tabeli `miasta`
--

INSERT INTO `miasta` (`miasto_id`, `nazwa_delegata`, `nazwa_skrot`) VALUES
(96, 'Delegat Oddziału Wrocław', 'Wr'),
(97, 'Delegat Oddziału Warszawa', 'Wa'),
(98, 'Delegat Oddziału Kraków', 'Kr'),
(99, 'Delegat Oddziału Olsztyn', 'Ol'),
(100, 'Delegat Oddziału Łódź', 'Ld'),
(101, 'Delegat Oddziału Białystok', 'Bi'),
(102, 'Delegat Oddziału Bydgoszcz', 'By'),
(103, 'Delegat Oddziału Gdańsk', 'Gd'),
(104, 'Delegat Oddziału Szczecin', 'Sz'),
(105, 'Delegat Oddziału Lublin', 'Lu'),
(106, 'Delegat Oddziału Poznań', 'Po'),
(107, 'Delegat Oddziału Śląsk', 'Sl'),
(108, 'Delegat Zarządu Głównego', 'ZG');

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `obsluga`
--

CREATE TABLE IF NOT EXISTS `obsluga` (
  `indeks` int(10) unsigned NOT NULL,
  `plenarka_id` int(11) NOT NULL,
  `glosowanie_id` int(11) NOT NULL,
  PRIMARY KEY (`indeks`),
  KEY `plenar_id` (`plenarka_id`,`glosowanie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci;

--
-- Zrzut danych tabeli `obsluga`
--

INSERT INTO `obsluga` (`indeks`, `plenarka_id`, `glosowanie_id`) VALUES
(0, 5, 49);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `oddaneglosy`
--

CREATE TABLE IF NOT EXISTS `oddaneglosy` (
  `plenarka_id` int(10) unsigned NOT NULL,
  `miasto_id` int(10) unsigned NOT NULL,
  `glosowanie_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`plenarka_id`,`miasto_id`,`glosowanie_id`),
  KEY `plenarka_id` (`plenarka_id`),
  KEY `miasto_id` (`miasto_id`),
  KEY `glosowanie_id` (`glosowanie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci;

--
-- Zrzut danych tabeli `oddaneglosy`
--

INSERT INTO `oddaneglosy` (`plenarka_id`, `miasto_id`, `glosowanie_id`) VALUES
(1, 96, 3),
(1, 96, 5),
(1, 96, 8),
(1, 97, 3),
(1, 97, 5),
(1, 97, 7),
(1, 98, 2),
(1, 98, 3),
(1, 98, 5),
(1, 98, 6),
(1, 98, 7),
(1, 98, 8),
(1, 99, 52),
(1, 99, 53),
(1, 99, 54),
(1, 100, 52),
(1, 100, 53),
(1, 100, 54),
(1, 101, 2),
(1, 101, 3),
(1, 101, 5),
(1, 101, 6),
(1, 101, 7),
(1, 101, 8),
(1, 101, 12),
(1, 101, 52),
(1, 101, 53),
(1, 101, 54),
(1, 102, 2),
(1, 102, 3),
(1, 103, 52),
(1, 103, 53),
(1, 103, 54),
(1, 104, 52),
(1, 104, 53),
(1, 104, 54),
(1, 105, 2),
(1, 105, 3),
(1, 105, 53),
(1, 105, 54),
(1, 106, 5),
(1, 106, 6),
(1, 106, 8),
(1, 106, 52),
(1, 106, 53),
(1, 106, 54),
(1, 107, 52),
(1, 107, 53),
(1, 107, 54),
(1, 108, 2),
(1, 108, 3),
(1, 108, 5),
(1, 108, 6),
(1, 108, 7),
(1, 108, 8),
(2, 96, 23),
(2, 96, 24),
(2, 96, 34),
(2, 99, 23),
(2, 99, 24),
(2, 99, 34),
(2, 102, 23),
(2, 102, 24),
(2, 102, 34),
(2, 103, 23),
(2, 103, 24),
(2, 103, 34),
(2, 104, 23),
(2, 104, 24),
(2, 104, 34),
(2, 107, 23),
(2, 107, 24),
(2, 107, 34),
(2, 108, 23),
(2, 108, 24),
(2, 108, 34),
(3, 96, 42),
(3, 96, 43),
(3, 96, 44),
(3, 96, 48),
(3, 96, 49),
(3, 96, 50),
(3, 96, 57),
(3, 96, 58),
(3, 96, 60),
(3, 96, 61),
(3, 96, 62),
(3, 96, 63),
(3, 99, 42),
(3, 99, 43),
(3, 99, 44),
(3, 99, 48),
(3, 99, 49),
(3, 99, 50),
(3, 99, 57),
(3, 99, 58),
(3, 99, 60),
(3, 99, 61),
(3, 100, 42),
(3, 100, 43),
(3, 100, 44),
(3, 100, 48),
(3, 100, 49),
(3, 100, 50),
(3, 100, 57),
(3, 100, 58),
(3, 100, 60),
(3, 100, 61),
(3, 100, 62),
(3, 100, 63),
(3, 101, 42),
(3, 101, 43),
(3, 101, 44),
(3, 101, 48),
(3, 101, 49),
(3, 101, 50),
(3, 101, 57),
(3, 101, 58),
(3, 101, 60),
(3, 101, 61),
(3, 101, 62),
(3, 101, 63),
(3, 102, 42),
(3, 102, 43),
(3, 102, 44),
(3, 102, 48),
(3, 102, 49),
(3, 102, 50),
(3, 102, 57),
(3, 102, 58),
(3, 102, 60),
(3, 102, 61),
(3, 103, 42),
(3, 103, 43),
(3, 103, 44),
(3, 103, 48),
(3, 103, 49),
(3, 103, 50),
(3, 103, 57),
(3, 103, 58),
(3, 103, 60),
(3, 103, 61),
(3, 103, 62),
(3, 103, 63),
(3, 104, 42),
(3, 104, 43),
(3, 104, 44),
(3, 104, 48),
(3, 104, 49),
(3, 104, 50),
(3, 104, 57),
(3, 104, 58),
(3, 104, 60),
(3, 104, 61),
(3, 104, 62),
(3, 104, 63),
(3, 105, 42),
(3, 105, 43),
(3, 105, 44),
(3, 105, 48),
(3, 105, 57),
(3, 105, 58),
(3, 105, 60),
(3, 105, 61),
(3, 105, 62),
(3, 105, 63),
(3, 106, 42),
(3, 106, 43),
(3, 106, 44),
(3, 106, 48),
(3, 106, 49),
(3, 106, 50),
(3, 106, 57),
(3, 106, 58),
(3, 106, 60),
(3, 106, 61),
(3, 106, 62),
(3, 106, 63),
(3, 107, 42),
(3, 107, 43),
(3, 107, 44),
(3, 107, 48),
(3, 107, 49),
(3, 107, 50),
(3, 107, 57),
(3, 107, 58),
(3, 107, 60),
(3, 107, 61),
(3, 107, 62),
(3, 107, 63),
(3, 108, 43),
(3, 108, 44),
(3, 108, 48),
(3, 108, 49),
(3, 108, 50),
(3, 108, 57),
(3, 108, 58),
(3, 108, 60),
(3, 108, 61),
(3, 108, 62),
(3, 108, 63);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `plenarki`
--

CREATE TABLE IF NOT EXISTS `plenarki` (
  `plenarka_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nazwa` char(200) COLLATE cp1250_polish_ci NOT NULL,
  `data` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `data_start` date NOT NULL DEFAULT '0000-00-00',
  `data_end` date NOT NULL DEFAULT '0000-00-00',
  `zakonczona` tinyint(1) NOT NULL,
  PRIMARY KEY (`plenarka_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci AUTO_INCREMENT=6 ;

--
-- Zrzut danych tabeli `plenarki`
--

INSERT INTO `plenarki` (`plenarka_id`, `nazwa`, `data`, `data_start`, `data_end`, `zakonczona`) VALUES
(1, 'Szkolenie', '2011-11-05 15:27:30', '0000-00-00', '0000-00-00', 0),
(2, 'Nadzwyczajne Zgromadzenie Delegatów w Olsztynie 22.10.11', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 0),
(3, 'Zgromadzenie Delegatów Rosnówko 4-6.11.2011', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 0),
(4, 'Zgromadzenie Delegatów w Tleniu 31.03.2012', '0000-00-00 00:00:00', '0000-00-00', '0000-00-00', 0),
(5, 'Zgromadzenie Delegatów w Międzyzdrojach  - szkolenie', '2012-11-10 13:34:08', '0000-00-00', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla  `proofoc`
--

CREATE TABLE IF NOT EXISTS `proofoc` (
  `indeks` int(11) NOT NULL AUTO_INCREMENT,
  `wartosc` int(11) NOT NULL,
  PRIMARY KEY (`indeks`)
) ENGINE=InnoDB  DEFAULT CHARSET=ascii COLLATE=ascii_bin AUTO_INCREMENT=2 ;

--
-- Zrzut danych tabeli `proofoc`
--

INSERT INTO `proofoc` (`indeks`, `wartosc`) VALUES
(1, 4);

-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `raport_kody`
--
CREATE TABLE IF NOT EXISTS `raport_kody` (
`plenarka_id` bigint(10) unsigned
,`delegat` char(30)
,`imie` varchar(40)
,`nazwisko` varchar(40)
,`kod` varchar(50)
);
-- --------------------------------------------------------

--
-- Zastąpiona struktura widoku `raport_zakgloswania`
--
CREATE TABLE IF NOT EXISTS `raport_zakgloswania` (
`plenarka_id` bigint(10) unsigned
,`glos_id` bigint(10) unsigned
,`nazwa` varchar(250)
,`typ` varchar(10)
,`data` timestamp
,`ilosc_glosow` bigint(21)
,`opcja` char(100)
,`glosow` int(10) unsigned
);
-- --------------------------------------------------------

--
-- Struktura tabeli dla  `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `UserID` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `Haslo` char(100) COLLATE cp1250_polish_ci NOT NULL,
  `Nick` char(50) COLLATE cp1250_polish_ci NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB  DEFAULT CHARSET=cp1250 COLLATE=cp1250_polish_ci AUTO_INCREMENT=5 ;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`UserID`, `Haslo`, `Nick`) VALUES
(1, 'sekretarz', 'sekretarz'),
(2, 'delegat', 'delegat'),
(3, 'service', 'service'),
(4, 'prezenter', 'prezenter');

-- --------------------------------------------------------

--
-- Struktura widoku `current_glosowanie`
--
DROP TABLE IF EXISTS `current_glosowanie`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `current_glosowanie` AS select `obsluga`.`glosowanie_id` AS `glosowanie_id` from `obsluga` where (`obsluga`.`indeks` = 0);

-- --------------------------------------------------------

--
-- Struktura widoku `current_plenarka`
--
DROP TABLE IF EXISTS `current_plenarka`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `current_plenarka` AS select `obsluga`.`plenarka_id` AS `plenarka_id` from `obsluga` where (`obsluga`.`indeks` = 0);

-- --------------------------------------------------------

--
-- Struktura widoku `del_miasta`
--
DROP TABLE IF EXISTS `del_miasta`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `del_miasta` AS select `delegaci`.`imie` AS `imie`,`delegaci`.`nazwisko` AS `nazwisko`,(select `miasta`.`nazwa_delegata` from `miasta` where (`miasta`.`miasto_id` = `delegaci`.`miasto_id`)) AS `Name_exp_3` from `delegaci`;

-- --------------------------------------------------------

--
-- Struktura widoku `raport_kody`
--
DROP TABLE IF EXISTS `raport_kody`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raport_kody` AS select (select `delegaci`.`plenar_id` from `delegaci` where ((`delegaci`.`miasto_id` = `miasta`.`miasto_id`) and (`delegaci`.`plenar_id` = (select `current_plenarka`.`plenarka_id` from `current_plenarka`)))) AS `plenarka_id`,`miasta`.`nazwa_delegata` AS `delegat`,(select `delegaci`.`imie` from `delegaci` where ((`delegaci`.`miasto_id` = `miasta`.`miasto_id`) and (`delegaci`.`plenar_id` = (select `current_plenarka`.`plenarka_id` from `current_plenarka`)))) AS `imie`,(select `delegaci`.`nazwisko` from `delegaci` where ((`delegaci`.`miasto_id` = `miasta`.`miasto_id`) and (`delegaci`.`plenar_id` = (select `current_plenarka`.`plenarka_id` from `current_plenarka`)))) AS `nazwisko`,(select `delegaci`.`kod_dostepu` from `delegaci` where ((`delegaci`.`miasto_id` = `miasta`.`miasto_id`) and (`delegaci`.`plenar_id` = (select `current_plenarka`.`plenarka_id` from `current_plenarka`)))) AS `kod` from `miasta`;

-- --------------------------------------------------------

--
-- Struktura widoku `raport_zakgloswania`
--
DROP TABLE IF EXISTS `raport_zakgloswania`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `raport_zakgloswania` AS select (select `glosowania`.`plenarka_id` from `glosowania` where (`glosy`.`glosowanie_id` = `glosowania`.`glosowanie_id`)) AS `plenarka_id`,(select `glosowania`.`glosowanie_id` from `glosowania` where (`glosowania`.`glosowanie_id` = `glosy`.`glosowanie_id`)) AS `glos_id`,(select `glosowania`.`nazwa` from `glosowania` where (`glosowania`.`glosowanie_id` = `glosy`.`glosowanie_id`)) AS `nazwa`,(select `glosowania`.`typ` from `glosowania` where (`glosowania`.`glosowanie_id` = `glosy`.`glosowanie_id`)) AS `typ`,(select `glosowania`.`data` from `glosowania` where (`glosowania`.`glosowanie_id` = `glosy`.`glosowanie_id`)) AS `data`,(select count(0) from `glosy` where (`glosy`.`glosowanie_id` = `glosy`.`glos_id`)) AS `ilosc_glosow`,`glosy`.`opcja` AS `opcja`,`glosy`.`glosow` AS `glosow` from `glosy` where ((select `glosowania`.`zakonczone` from `glosowania` where (`glosy`.`glosowanie_id` = `glosowania`.`glosowanie_id`)) = 1);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `delegaci`
--
ALTER TABLE `delegaci`
  ADD CONSTRAINT `delegaci_ibfk_1` FOREIGN KEY (`plenar_id`) REFERENCES `plenarki` (`plenarka_id`),
  ADD CONSTRAINT `delegaci_ibfk_2` FOREIGN KEY (`miasto_id`) REFERENCES `miasta` (`miasto_id`);

--
-- Ograniczenia dla tabeli `glosowania`
--
ALTER TABLE `glosowania`
  ADD CONSTRAINT `glosowania_ibfk_1` FOREIGN KEY (`plenarka_id`) REFERENCES `plenarki` (`plenarka_id`);

--
-- Ograniczenia dla tabeli `glosy`
--
ALTER TABLE `glosy`
  ADD CONSTRAINT `glosy_ibfk_1` FOREIGN KEY (`glosowanie_id`) REFERENCES `glosowania` (`glosowanie_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ograniczenia dla tabeli `oddaneglosy`
--
ALTER TABLE `oddaneglosy`
  ADD CONSTRAINT `oddaneglosy_ibfk_1` FOREIGN KEY (`plenarka_id`) REFERENCES `plenarki` (`plenarka_id`),
  ADD CONSTRAINT `oddaneglosy_ibfk_2` FOREIGN KEY (`miasto_id`) REFERENCES `miasta` (`miasto_id`),
  ADD CONSTRAINT `oddaneglosy_ibfk_3` FOREIGN KEY (`glosowanie_id`) REFERENCES `glosowania` (`glosowanie_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
