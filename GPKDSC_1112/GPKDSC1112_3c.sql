-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 15. 15:41
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

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `fonok`
--

CREATE TABLE `fonok` (
  `fonokID` int(4) NOT NULL,
  `dolgozoID` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `fonok`
--
ALTER TABLE `fonok`
  ADD PRIMARY KEY (`fonokID`),
  ADD KEY `dolgozoID` (`dolgozoID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `fonok`
--
ALTER TABLE `fonok`
  ADD CONSTRAINT `fonok_ibfk_1` FOREIGN KEY (`dolgozoID`) REFERENCES `dolgozo1` (`Did`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
