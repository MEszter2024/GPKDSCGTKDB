-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 11. 17:33
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `gpkdsc`
--

--
-- A tábla adatainak kiíratása `auto`
--

INSERT INTO `auto` (`rendszam`, `tipus`, `szin`, `kor`, `ar`, `tulaj`) VALUES
('FER-831', 'Opel Astra', 'piros', 18, 390, 101),
('GDF-525', 'Renault Twingo', 'fekete', 16, 280, 0),
('HUB-936', 'Suzuki Swift', 'fekete', 16, 500, 0),
('IXL-239', 'Suzuki Swift', 'zold', 15, 450, 105),
('JAH-425', 'Skoda Fabia', 'piros', 13, 620, 102),
('JCD-443', 'Opel Astra', 'fehér', 12, 280, 0),
('KAP-290', 'BMW 316', 'fekete', 6, 3250, 102),
('KFT-204', 'Opel Astra', 'szurke', 7, 1250, 106),
('MLM-211', 'Toyota Yaris', 'feher', 3, 1850, 105);

--
-- A tábla adatainak kiíratása `tulajdonos`
--

INSERT INTO `tulajdonos` (`Tkod`, `Nev`, `Cim`, `Telefon`) VALUES
('100', 'Kis Janos', 'Eger', 209555666),
('101', 'Kis Janos', 'Eger', 206555666),
('102', 'Kis Éva', 'Szerencs', 308764432),
('103', 'Retek Ödön', 'Miskolc', 308764432),
('104', 'Virág Zoltán', 'Nyék', 703355440),
('105', 'Nagy Eszter', 'Ózd', 703355440),
('106', 'Kovács Magor', 'Szerencs', 703855444),
('107', 'Kovács Magor', 'Szerencs', 703855444),
('109', 'Asztal Antal', 'Eger', 209555666);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
