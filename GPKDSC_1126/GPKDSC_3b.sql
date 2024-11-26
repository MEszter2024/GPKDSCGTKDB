-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 19. 16:42
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
-- Adatbázis: `feladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telefonszam`
--

CREATE TABLE `telefonszam` (
  `Tid` int(4) NOT NULL,
  `mobil` varchar(10) DEFAULT NULL,
  `tulaj` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `telefonszam`
--
ALTER TABLE `telefonszam`
  ADD PRIMARY KEY (`Tid`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `telefonszam`
--
ALTER TABLE `telefonszam`
  ADD CONSTRAINT `fk_dolgozo_id` FOREIGN KEY (`Tid`) REFERENCES `dolgozo` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
