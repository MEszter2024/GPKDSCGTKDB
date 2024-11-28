-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 26. 14:50
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
-- Tábla szerkezet ehhez a táblához `cím`
--

CREATE TABLE `cím` (
  `Ország` varchar(20) DEFAULT NULL,
  `Város` varchar(20) DEFAULT NULL,
  `Irányítószám` int(4) DEFAULT NULL,
  `Utca` varchar(40) DEFAULT NULL,
  `CímID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `cím`
--

INSERT INTO `cím` (`Ország`, `Város`, `Irányítószám`, `Utca`, `CímID`) VALUES
('Magyarország', 'Budapest', 1011, 'Fő utca 1.', 1),
('Magyarország', 'Pécs', 7621, 'Kossuth Lajos utca 2.', 2),
('Magyarország', 'Debrecen', 4024, 'Piac utca 3.', 3),
('Magyarország', 'Szeged', 6720, 'Tisza Lajos körút 4.', 4),
('Magyarország', 'Veszprém', 8200, 'Váci utca 6.', 5),
('Magyarország', 'Miskolc', 3525, 'Kossuth utca 7.', 6);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyártó`
--

CREATE TABLE `gyártó` (
  `Márka_név` varchar(30) NOT NULL,
  `email_cím` varchar(45) DEFAULT NULL,
  `címId` int(3) DEFAULT NULL,
  `telefonszám` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `gyártó`
--

INSERT INTO `gyártó` (`Márka_név`, `email_cím`, `címId`, `telefonszám`) VALUES
('Aroma', 'aroma@parfum.hu', 4, 45678901),
('Cosmo', 'cosmo@parfum.hu', 3, 345678901),
('Flora', 'flora@parfum.hu', 2, 234567890),
('Luxe', 'luxe@parfum.hu', 1, 12345678),
('Perfume World', 'perfume@parfum.hu', 6, 67890123),
('Scentify', 'scentify@parfum.hu', 5, 567890123);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `parfüm`
--

CREATE TABLE `parfüm` (
  `pkód` int(7) NOT NULL,
  `név` varchar(20) NOT NULL,
  `márka` varchar(30) DEFAULT NULL,
  `ear` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `parfüm`
--

INSERT INTO `parfüm` (`pkód`, `név`, `márka`, `ear`) VALUES
(1000001, 'Luxe Essence', 'Luxe', 15500),
(1000002, 'Flora Bloom', 'Flora', 21500),
(1000003, 'Cosmo Splash', 'Cosmo', 26500),
(1000004, 'Aroma Fresh', 'Aroma', 30500),
(1000005, 'Scentify Glow', 'Scentify', 37500),
(1000006, 'Perfume World', 'Perfume World', 45500);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `telefonszám`
--

CREATE TABLE `telefonszám` (
  `Típus` enum('Helyi','Ügyfélszolgálati') DEFAULT NULL,
  `Szám` int(10) NOT NULL,
  `gyártó_neve` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `telefonszám`
--

INSERT INTO `telefonszám` (`Típus`, `Szám`, `gyártó_neve`) VALUES
('Helyi', 12345678, 'Luxe'),
('Helyi', 45678901, 'Aroma'),
('Helyi', 67890123, 'Perfume World'),
('Ügyfélszolgálati', 234567890, 'Flora'),
('Helyi', 345678901, 'Cosmo'),
('Ügyfélszolgálati', 567890123, 'Scentify');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vásárló`
--

CREATE TABLE `vásárló` (
  `vkód` int(7) NOT NULL,
  `születési_év` int(4) DEFAULT NULL,
  `név` varchar(40) NOT NULL,
  `számlakód` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `vásárló`
--

INSERT INTO `vásárló` (`vkód`, `születési_év`, `név`, `számlakód`) VALUES
(1000001, 1985, 'Kovács Anna', 100000001),
(1000002, 1990, 'Nagy Péter', 100000002),
(1000003, 1982, 'Szabó Zsófia', 100000003),
(1000004, 1975, 'Horváth János', 100000004),
(1000005, 1995, 'Tóth Laura', 100000005),
(1000006, 1988, 'Varga Gábor', 100000006);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vásárlói_kártya`
--

CREATE TABLE `vásárlói_kártya` (
  `kszám` int(10) NOT NULL,
  `Vásárló_neve` varchar(40) DEFAULT NULL,
  `regisztráció_éve` int(4) DEFAULT NULL,
  `vkód` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `vásárlói_kártya`
--

INSERT INTO `vásárlói_kártya` (`kszám`, `Vásárló_neve`, `regisztráció_éve`, `vkód`) VALUES
(1000000001, 'Kovács Anna', 2022, 1000001),
(1000000002, 'Nagy Péter', 2023, 1000002),
(1000000003, 'Szabó Zsófia', 2021, 1000003),
(1000000004, 'Horváth János', 2022, 1000004),
(1000000005, 'Tóth Laura', 2023, 1000005),
(1000000006, 'Varga Gábor', 2020, 1000006);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `üzlet`
--

CREATE TABLE `üzlet` (
  `számlakód` int(9) NOT NULL,
  `név` varchar(20) NOT NULL,
  `Város` varchar(30) DEFAULT NULL,
  `pkód` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `üzlet`
--

INSERT INTO `üzlet` (`számlakód`, `név`, `Város`, `pkód`) VALUES
(100000001, 'Douglas Parfüméria', 'Budapest', 1000001),
(100000002, 'Sephora', 'Pécs', 1000002),
(100000003, 'Müller', 'Debrecen', 1000003),
(100000004, 'DM Drogéria', 'Szeged', 1000004),
(100000005, 'Rossmann', 'Veszprém', 1000005),
(100000006, 'The Body Shop', 'Miskolc', 1000006);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cím`
--
ALTER TABLE `cím`
  ADD PRIMARY KEY (`CímID`);

--
-- A tábla indexei `gyártó`
--
ALTER TABLE `gyártó`
  ADD PRIMARY KEY (`Márka_név`),
  ADD KEY `fk_telefon_szam` (`telefonszám`),
  ADD KEY `fk_CímID` (`címId`);

--
-- A tábla indexei `parfüm`
--
ALTER TABLE `parfüm`
  ADD PRIMARY KEY (`pkód`),
  ADD KEY `fk_marka` (`márka`);

--
-- A tábla indexei `telefonszám`
--
ALTER TABLE `telefonszám`
  ADD PRIMARY KEY (`Szám`);

--
-- A tábla indexei `vásárló`
--
ALTER TABLE `vásárló`
  ADD PRIMARY KEY (`vkód`),
  ADD KEY `fk_szamlakod` (`számlakód`);

--
-- A tábla indexei `vásárlói_kártya`
--
ALTER TABLE `vásárlói_kártya`
  ADD PRIMARY KEY (`kszám`),
  ADD KEY `fk_vkód` (`vkód`);

--
-- A tábla indexei `üzlet`
--
ALTER TABLE `üzlet`
  ADD PRIMARY KEY (`számlakód`),
  ADD KEY `fk_pkod` (`pkód`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `gyártó`
--
ALTER TABLE `gyártó`
  ADD CONSTRAINT `fk_CímID` FOREIGN KEY (`címId`) REFERENCES `cím` (`CímID`),
  ADD CONSTRAINT `fk_telefon_szam` FOREIGN KEY (`telefonszám`) REFERENCES `telefonszám` (`Szám`);

--
-- Megkötések a táblához `parfüm`
--
ALTER TABLE `parfüm`
  ADD CONSTRAINT `fk_marka` FOREIGN KEY (`márka`) REFERENCES `gyártó` (`Márka_név`);

--
-- Megkötések a táblához `vásárló`
--
ALTER TABLE `vásárló`
  ADD CONSTRAINT `fk_szamlakod` FOREIGN KEY (`számlakód`) REFERENCES `üzlet` (`számlakód`);

--
-- Megkötések a táblához `vásárlói_kártya`
--
ALTER TABLE `vásárlói_kártya`
  ADD CONSTRAINT `fk_vkód` FOREIGN KEY (`vkód`) REFERENCES `vásárló` (`vkód`);

--
-- Megkötések a táblához `üzlet`
--
ALTER TABLE `üzlet`
  ADD CONSTRAINT `fk_pkod` FOREIGN KEY (`pkód`) REFERENCES `parfüm` (`pkód`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
