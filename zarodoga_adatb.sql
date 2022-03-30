-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Feb 09. 20:11
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `zarodoga_adatb`
--
CREATE DATABASE IF NOT EXISTS `zarodoga_adatb` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `zarodoga_adatb`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elmenyek`
--

CREATE TABLE `elmenyek` (
  `elmeny_id` int(11) NOT NULL,
  `datum` date NOT NULL,
  `szoveg` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kep_id` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `elmenyek`
--

INSERT INTO `elmenyek` (`elmeny_id`, `datum`, `szoveg`, `kep_id`) VALUES
(25, '2022-01-02', 'A mikulás ma meglátogatott!', '1.jpg'),
(26, '2022-01-02', 'Liza kapott egy babát, én egy kisautót.', '2.jpg'),
(27, '2022-01-02', 'Kifestőztem.', '3.jpg'),
(28, '2022-01-02', 'Anya csinált mézeskalácsot. Segítettem.', ''),
(29, '2022-01-02', 'Elmentünk vásárolni, találkoztam a mikulás manójával.', ''),
(30, '2022-01-03', 'Elmentünk Borit megsétáltatni.', ''),
(31, '2022-01-03', 'Festettem.', ''),
(32, '2022-01-05', 'Ma jött Gizi néni és elmentünk vele az állatkertbe. Láttam sok pingvint!', ''),
(62, '2022-01-15', 'Macska', ''),
(64, '2022-01-15', 'Játék', ''),
(65, '2022-01-15', 'Valamit', ''),
(69, '2022-01-19', 'Értelmes szöveg', 'photo_1642500941763_7dead757-55ab-4642-b137-49028b3c2351.jpg'),
(96, '2022-02-07', 'Előadást tartottam anyának az iskolával!', 'photo_1644138882678_bb362ce9-6d63-4121-8b6e-e60d8812ddfb.png'),
(97, '2022-02-07', 'Anyával és apával ma karaokezni mentünk! Nagyon sokat énekeltem és nevettünk!', '1034050885-H.jpg'),
(98, '2022-02-07', 'Kaptam egy új Barbie babát.', 'mUOqfsvw.jpeg'),
(99, '2022-02-07', 'Rajzoltam egy kutyust.', 'asian-kid-drawing-and-do-homework-on-the-bed-anek-suwannaphoom.jpg'),
(100, '2022-02-07', 'Összefestékeztem magam festés közben!', 'festek.jpg'),
(101, '2022-02-07', 'A lila festék a kedvenc festékem!', 'fb5458c70748b1149b7082813806afc3.jpg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jo_tulaj`
--

CREATE TABLE `jo_tulaj` (
  `jo_tulaj_id` int(11) NOT NULL,
  `jo_tulaj_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `jo_tulaj_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jo_tulaj`
--

INSERT INTO `jo_tulaj` (`jo_tulaj_id`, `jo_tulaj_nev`, `jo_tulaj_kep`) VALUES
(1, 'Kedves', 'kedves.png'),
(2, 'Jószívű', 'joszivu.png'),
(3, 'Szeretek egyedül lenni', 'szeretek_egyedul_lenni.png'),
(4, 'Szeretek felnőttekkel lenni', 'szeretek_felnottekkel_lenni.png'),
(5, 'Okos', 'okos.png'),
(6, 'Figyelmes', 'figyelmes.png'),
(7, 'Lelkiismeretes', 'lelkiismeretes.png'),
(8, 'Bátor', 'bator.png'),
(9, 'Engedelmes', 'engedelmes.png'),
(10, 'Őszinte', 'oszinte.png'),
(11, 'Válogatós', 'valogatos.png');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kedvelem`
--

CREATE TABLE `kedvelem` (
  `kedvelem_id` int(11) NOT NULL,
  `kedvelem_1_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_1` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_2_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_2` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_3_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_3` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_4_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `kedvelem_4` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `kedvelem`
--

INSERT INTO `kedvelem` (`kedvelem_id`, `kedvelem_1_kep`, `kedvelem_1`, `kedvelem_2_kep`, `kedvelem_2`, `kedvelem_3_kep`, `kedvelem_3`, `kedvelem_4_kep`, `kedvelem_4`) VALUES
(1, '0', 'Sajtos makaróni', '0', 'Kiskocsizás', '0', 'Kutyasétáltatás', '0', 'Jégkrém'),
(2, '0', 'Sepregetés', '0', 'Rendrakás', '0', 'Keksz', '0', 'Pisztácia'),
(3, '0', 'Olvasás gyakorlása', '0', 'Mákos guba', '0', 'Töltött káposzta', '0', 'Rendezés'),
(4, 'photo_1642587270775_2cfcdd68-3d15-4155-811c-a420cd375759.jpg', 'Igen', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(5, 'photo_1642587345937_3083fb2d-c2c0-4809-930b-586d69c4934b.jpg', 'Nem', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined', 'undefined'),
(6, 'photo_1642587421321_7ef5479d-9342-41b2-9e4f-595c2c6a2922.jpg', 'A', 'undefined', 'B', 'undefined', 'C', 'undefined', 'D');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `roles`
--

INSERT INTO `roles` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'user', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(2, 'moderator', '2020-08-02 14:57:31', '2020-08-02 14:57:31'),
(3, 'admin', '2020-08-02 14:57:31', '2020-08-02 14:57:31');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rossz_tulaj`
--

CREATE TABLE `rossz_tulaj` (
  `rossz_tulaj_id` int(11) NOT NULL,
  `rossz_tulaj_nev` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `rossz_tulaj_kep` varchar(255) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rossz_tulaj`
--

INSERT INTO `rossz_tulaj` (`rossz_tulaj_id`, `rossz_tulaj_nev`, `rossz_tulaj_kep`) VALUES
(1, 'Hirtelen haragú', 'hirtelen_haragu.png'),
(2, 'R', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szemelyek`
--

CREATE TABLE `szemelyek` (
  `szemelyek_id` int(11) NOT NULL,
  `szul_datum` date NOT NULL,
  `lakcim` varchar(255) COLLATE utf32_hungarian_ci NOT NULL,
  `lakcim_kep` varchar(255) COLLATE utf32_hungarian_ci NOT NULL,
  `auto_szine` varchar(255) COLLATE utf32_hungarian_ci NOT NULL,
  `auto_marka` varchar(255) COLLATE utf32_hungarian_ci NOT NULL,
  `auto_kep` varchar(255) COLLATE utf32_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_hungarian_ci;

--
-- A tábla adatainak kiíratása `szemelyek`
--

INSERT INTO `szemelyek` (`szemelyek_id`, `szul_datum`, `lakcim`, `lakcim_kep`, `auto_szine`, `auto_marka`, `auto_kep`) VALUES
(1, '2012-11-09', 'Budapest, Hársfa utca 9.', '0', 'Piros', 'Nissan Sentra', '0'),
(2, '2010-05-23', 'Pécs, Dió út 23.', '0', 'Kék', 'Chevrolet Malibu', '0'),
(3, '2008-04-10', 'Kecske u. 23.', '0', 'Zöld', 'Land Rover Range Evoque', '0'),
(4, '2005-01-29', 'Zuhogó utca 33.', '0', 'Piros', 'Skoda Fabia', '0'),
(5, '2012-09-18', 'János út 43.', '0', 'Zöld', 'BMW X5', '0');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'user', 'user', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'mod', 'mod', '$2a$08$gXM4pyuhZFlC72PeAwxrUOR0uA31/d2PdgnHP35JGV.0bQNiZBatS', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'admin', 'admin', '$2a$08$97Ze1/hXfOX44WdC62Rq8uRkog9HYC1HukRX8eld2ZEKPyenM5v.G', '2020-08-02 15:03:59', '2020-08-02 15:03:59'),
(15, 'k.dorina', 'ksdorina0725@gmail.com', '$2a$08$GFPAiYUe7Y1F7uAzJf/Z6OhlTWybhGZjdcbbwTOVzfc3BUDsCeaHe', '2022-01-31 09:17:44', '2022-01-31 09:17:44');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user_roles`
--

CREATE TABLE `user_roles` (
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `roleId` int(11) NOT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `user_roles`
--

INSERT INTO `user_roles` (`createdAt`, `updatedAt`, `roleId`, `userId`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 1, 3),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3),
('2022-01-24 12:26:44', '2022-01-24 12:26:44', 3, 14),
('2022-01-31 09:17:44', '2022-01-31 09:17:44', 3, 15);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `elmenyek`
--
ALTER TABLE `elmenyek`
  ADD PRIMARY KEY (`elmeny_id`);

--
-- A tábla indexei `jo_tulaj`
--
ALTER TABLE `jo_tulaj`
  ADD PRIMARY KEY (`jo_tulaj_id`);

--
-- A tábla indexei `kedvelem`
--
ALTER TABLE `kedvelem`
  ADD PRIMARY KEY (`kedvelem_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `rossz_tulaj`
--
ALTER TABLE `rossz_tulaj`
  ADD PRIMARY KEY (`rossz_tulaj_id`);

--
-- A tábla indexei `szemelyek`
--
ALTER TABLE `szemelyek`
  ADD PRIMARY KEY (`szemelyek_id`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`roleId`,`userId`),
  ADD KEY `userId` (`userId`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `elmenyek`
--
ALTER TABLE `elmenyek`
  MODIFY `elmeny_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT a táblához `jo_tulaj`
--
ALTER TABLE `jo_tulaj`
  MODIFY `jo_tulaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `kedvelem`
--
ALTER TABLE `kedvelem`
  MODIFY `kedvelem_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `rossz_tulaj`
--
ALTER TABLE `rossz_tulaj`
  MODIFY `rossz_tulaj_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `szemelyek`
--
ALTER TABLE `szemelyek`
  MODIFY `szemelyek_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
