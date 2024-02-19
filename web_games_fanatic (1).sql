-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 19. 11:45
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `web_games_fanatic`
--
CREATE DATABASE IF NOT EXISTS `web_games_fanatic` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `web_games_fanatic`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `alkatreszek`
--

CREATE TABLE `alkatreszek` (
  `alkatresz_id` int(11) NOT NULL,
  `alkatresz_info` varchar(255) NOT NULL,
  `alkatresz_megjelenes` date NOT NULL,
  `alkatresz_garancia` int(11) NOT NULL,
  `alkatresz_ar` int(11) NOT NULL,
  `alkatresz_kep` varchar(100) NOT NULL,
  `alkatresz_eszkozid` int(11) NOT NULL,
  `alkatresz_komponensid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `alkatreszek`
--

INSERT INTO `alkatreszek` (`alkatresz_id`, `alkatresz_info`, `alkatresz_megjelenes`, `alkatresz_garancia`, `alkatresz_ar`, `alkatresz_kep`, `alkatresz_eszkozid`, `alkatresz_komponensid`) VALUES
(1, 'ASRock B450M PRO4 AMD B450 SocketAM4 mATX alaplap (90-MXB8F0-A0UAYZ)\r\n', '2018-01-01', 3, 45900, 'kep01.jpg', 1, 2),
(2, 'Corsair 32GB DDR4 3200MHz Kit(2x16GB) Vengeance RGB Pro Black', '2023-03-29', 3, 36299, 'kep02.jpg', 1, 3),
(3, 'Kingston 32GB DDR4 2666MHz (2x16GB) Fury Beast', '2021-11-02', 1, 28699, 'kep03.jpg', 1, 3),
(4, 'Asus ROG Strix 850W - Fekete [Moduláris, 80+ Gold]', '2023-03-28', 1, 54999, 'kep4.jpg', 1, 6),
(5, 'Aerocool Cylon RGB 700W 80+', '2021-09-13', 1, 20699, 'kep5.jpg', 1, 6),
(6, 'Inter-Tech IT-6505 Retro Micro Tower Fekete', '2021-09-13', 1, 15899, 'kep6.jpg', 1, 5),
(7, 'Zalman Z3 Neo RGB (Ablakos) - Fekete', '2022-03-28', 2, 18999, 'kep7.jpg', 1, 5),
(8, 'Kingston A400 480GB [2.5\"/SATA3]', '2021-09-13', 1, 13399, 'kep8.jpg', 1, 7),
(9, 'AMD Ryzen 7 5700X AM4 (100-100000926WOF)', '2022-04-28', 3, 73799, 'kep9.jpg', 1, 4),
(10, 'Intel Core i5 12400F BOX (1700)', '2021-12-31', 3, 58799, 'kep10.jpg', 1, 4),
(12, 'Xbox Vezeték nélküli Kontroller (Stormcloud Vapor Special Edition)', '2023-08-08', 1, 24890, 'kep11.jpg', 4, 8),
(13, 'Nacon Xbox Series Pro Compact Kontroller - (Pastel Blue)', '2022-11-01', 1, 9990, 'kep12.jpg', 4, 8),
(14, 'Nintendo Switch Pro Kontroller', '2019-05-16', 2, 29999, 'kep13.jpg', 2, 8),
(15, 'Nintendo Switch Joy-Con (Pair) (Red-Blue)', '2019-08-21', 2, 29999, 'kep14.jpg', 2, 8),
(16, 'Nintendo Switch Mario Kart Racing Wheel Pro Mini (HORI)', '2019-04-17', 2, 22999, 'kep15.jpg', 2, 8),
(17, 'PlayStation 5 (PS5) DualSense™ kontroller (Cobalt Blue)', '2022-10-18', 1, 27890, 'kep16.jpg', 3, 8),
(18, 'PULSE Explore™ vezeték nélküli fülhallgató', '2022-07-22', 3, 89999, 'kep17.jpg', 3, 8),
(19, 'Logitech G29 Driving Force Racing Kormány', '2019-04-17', 2, 97999, 'kep18.jpg', 3, 8),
(20, 'Playstation 4 (PS4) Dualshock 4 kontroller (Black) ', '2016-09-15', 1, 23999, 'kep19.jpg', 3, 8),
(21, 'Playstation 4 (PS4) Nacon Revolution Pro Unlimited Kontroller', '2020-11-10', 2, 44990, 'kep20.jpg', 3, 8),
(26, 'Radeon RX-580 Videokártya, 8GB, GDDR5, 256 bit', '2017-04-18', 2, 76000, 'kep23.jpg', 1, 1),
(29, 'ASUS Dual GeForce RTX 4060 OC videokártya, 8 GB GDDR6, 128-bit', '2023-06-29', 2, 160000, 'kep24.jpg', 1, 1),
(30, 'Radeon RX-580, 8GB, GDDR5, 256 bit\n', '2017-04-18', 2, 76000, 'kep23.jpg', 1, 1),
(31, 'ASUS Dual GeForce RTX 4060 OC, 8 GB GDDR6, 128-bit', '2023-06-29', 2, 160000, 'kep24.jpg', 1, 1),
(32, 'AMD Ryzen 7 7800X3D 4.4GHz 8-Cores Box Processzor', '2013-02-14', 1, 160000, 'kep25.jpg', 1, 4),
(33, 'Intel Core i5-13600K 3.5GHz 14-Core Box Processzor\r\n', '2023-06-20', 3, 122000, 'kep26.jpg', 1, 4),
(34, 'Intel Core i9-14900K 3.2GHz Box Processzor', '2023-10-17', 2, 248999, 'kep27.jpg', 1, 4),
(35, 'Intel Core i7-13700K 2.5GHz 16-Core Box Processzor', '2022-08-03', 3, 160000, 'kep28.jpg', 1, 4),
(36, 'AMD Ryzen 5 4500 6-Core 3.6GHz AM4 Box Processzor', '2022-04-04', 2, 25999, 'kep29.jpg', 1, 4),
(37, 'SAPPHIRE PULSE AMD Radeon RX 6700 XT 12GB GDDR6 192bit', '2023-03-17', 4, 148999, 'kep30.jpg', 1, 1),
(38, 'SAPPHIRE Radeon RX 7800 XT NITRO 16G GDDR6 ', '2023-08-25', 3, 239999, 'kep31.jpg', 1, 1),
(39, 'ASUS GeForce RTX 4090 OC 24GB GDDR6X', '2023-01-09', 3, 999990, 'kep32.jpg', 1, 1),
(40, 'GIGABYTE GeForce RTX 4070 WINDFORCE 12G GDDR6X OC', '2023-04-13', 4, 247000, 'kep33.jpg', 1, 1),
(41, 'ASRock Intel Arc A770 Phantom Gaming D 8GB OC', '2022-01-28', 2, 99990, 'kep35.jpg', 1, 1),
(42, 'ASUS TUF GAMING Z690-PLUS', '2023-01-04', 2, 143700, 'kep36.jpg', 1, 2),
(43, 'MSI MAG B650 Tomahawk WIFI Alaplap', '2022-09-04', 3, 80990, 'kep37.jpg', 1, 2),
(44, 'ASRock H310CM-DVS', '2018-09-12', 2, 17290, 'kep38.jpg', 1, 2),
(45, 'ASUS TUF GAMING B760M-PLUS', '2023-05-30', 3, 64990, 'kep39.jpg', 1, 2),
(46, 'GIGABYTE Z790 AORUS ELITE AX', '2022-10-31', 3, 105790, 'kep40.jpg', 1, 2),
(47, 'ASUS ROG MAXIMUS Z690 HERO EVA EDITION', '2023-04-29', 4, 230000, 'kep41.png', 1, 2),
(48, 'G.SKILL Aegis 16GB (2x8GB) DDR4 3000MHz F4-3000C16D-16GISB', '2022-08-12', 1, 13690, 'kep42.jpg', 1, 3),
(49, 'Kingston FURY Beast RGB 32GB (2x16GB) DDR4 3200MHz KF432C16BBAK2/32', '2023-01-12', 2, 28290, 'kep43.jpg', 1, 3),
(50, 'G.SKILL Trident Z5 Neo RGB 32GB (2x16GB) DDR5 6000MHz F5-6000J3038F16GX2-TZ5NR', '2023-07-19', 3, 56390, 'kep44.jpg', 1, 3),
(51, 'Kingston FURY Renegade 32GB (2x16GB) DDR5 6000MHz KF560C32RSK2-32', '2023-11-09', 2, 50600, 'kep45.jpg', 1, 3),
(52, 'G.SKILL Ripjaws V K2 32GB (2x16GB) DDR4 3600MHz F4-3600C18D-32GVK', '2022-07-24', 1, 28400, 'kep46.jpg', 1, 3),
(53, 'NZXT H7 Flow CM-H71FG', '2022-08-06', 3, 44490, 'kep47.jpg', 1, 5),
(54, 'be quiet! Pure Base 500DX (BGW37/BGW38)', '2022-03-17', 2, 41940, 'kep48.png', 1, 5),
(55, 'Aerocool CS-107 V1 (CS-107-A-BK-V1)', '2021-11-29', 2, 8990, 'kep49.jpg', 1, 5),
(56, 'Zalman S2 TG', '2020-12-21', 1, 14390, 'kep50.png', 1, 5),
(57, 'Fractal Design NORTH charc TG (FD-C-NOR1C-02)', '2023-09-26', 2, 63900, 'kep51.png', 1, 5),
(58, 'Lian Li LANCOOL 216 ARGB', '2023-08-23', 3, 45400, 'kep52.jpg', 1, 5),
(59, 'ASUS ROG Strix Helios EVA Edition', '2023-08-12', 4, 257620, 'kep53.jpg', 1, 5),
(60, 'Seasonic G12 GC-750W Gold (1Y751GCRT3A10X)', '2019-09-17', 2, 34625, 'kep54.jpg', 1, 6),
(61, 'GIGABYTE GP-UD750GM\r\n', '2022-08-25', 1, 33650, 'kep55.jpg', 1, 6),
(62, 'Approx APP500LITEBV2 500W', '2022-06-04', 2, 5800, 'kep56.jpg', 1, 6),
(63, 'be quiet! Pure Power 12 M 750W 80+ Gold (BN343)', '2023-06-27', 2, 46790, 'kep57.jpg', 1, 6),
(64, 'CHIEFTEC CSN-650C 650W Gold', '2022-10-28', 3, 25770, 'kep58.jpg', 1, 6),
(65, 'Kingston NV2 1TB M.2 PCIe NVMe (SNV2S/1000G)', '2023-07-14', 2, 20990, 'kep59.jpg', 1, 7),
(66, 'Kingston KC3000 1TB M 2 NVMe PCIe (SKC3000S/1024G)', '2021-08-02', 1, 33990, 'kep60.jpg', 1, 7),
(67, 'Kingston FURY Renegade 1TB M.2 PCIe NVMe (SFYRS/1000G)', '2023-07-28', 1, 34690, 'kep61.jpg', 1, 7),
(68, 'Samsung 2.5 870 EVO 1TB SATA3 (MZ-77E1T0B)', '2023-09-21', 3, 32990, 'kep62.jpg', 1, 7),
(69, 'Seagate Lange 15.36TB SAS 12Gb/s, 15mm, 0.7DWPD, SED, HF, RoHS - XS15360TE70014', '2023-12-01', 5, 2386099, 'kep63.jpg', 1, 7),
(70, 'Thrustmaster T-3PM Pedals', '2019-09-27', 2, 49990, 'kep64.jpg\n', 4, 8),
(71, 'Thrustmaster Racing Clamp\r\n', '2020-06-09', 2, 41790, 'kep65.jpg', 3, 8),
(72, 'Logitech Driving Force Shifter', '2021-11-29', 3, 17890, 'kep66.jpg', 4, 8);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `comment`
--

CREATE TABLE `comment` (
  `Comment_id` int(11) NOT NULL,
  `Comment_nev` varchar(50) NOT NULL,
  `Comment_szoveg` text NOT NULL,
  `Comment_ido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `comment`
--

INSERT INTO `comment` (`Comment_id`, `Comment_nev`, `Comment_szoveg`, `Comment_ido`) VALUES
(1, 'Lajos', 'Ez egy comment', '2024-01-03'),
(5, 'Anna', 'A Prince of Persia: The Lost Crown:\r\nNagyon ocsmány. Én azért reménykedtem benne, hogy hozza az ubisoftos lehengerlő látványvilágot de ez még mobilon is szégyen lenne. Eskü ha nem mondod az ott egy könyvtár vagy erdő én nem jövök rá :D', '2023-09-24'),
(8, 'Devil', 'Nem túlzás, ez a Godzilla film tényleg sokkal jobban fókuszál az egyik szereplő lelki drámájára és karakterfejlődésére, mint az Egy Gyík tombolására. Tulajdonképpen, aki pusztításpornót vár az szerintem csalódni fog, mert szerintem Godzilla a vásznon limitált ideig mutatkozik... bár azon jelenetek minden képkockája arany. A zene, a feszültség, a dráma, amit Godzilla jelenléte és ténykedése okoz. Olyan szinten komponálják meg a szörny jeleneteit, ami talán csak eszköz arra, hogy érzékeltessék azt a traumát, amit Japán átélt a második világháború után és az adott karakterek érzelmeit sokkal hatásosabban tudja kifejezni, mint az eddigi Gojira filmek, amelyek többsége tényleg nem nagyon próbált meg a B filmeknél magasabbra törni. Bár én a 2004-es Final Wars-t is kifejezetten imádon.', '2024-01-12'),
(11, 'Levente', 'Call of Duty: Modern Warfare III - multiplayer:\r\nMivel kicsit untam a BF et, gondoltam adok neki egy esélyt... gyalázat. A kampány is meg a multi is. A régi/új mapok jól néznek ki, de ilyen egy aljas szemét játékkal még nem volt dolgom. 2 jó meccs után berak csalók meg aimassistok köcsögök mellé. Ha összeszedek 2 killt, direkt bespawnol mögém egy ellenfelet, hogy biztosan megdögöljek, neki meg biztosan legyen egy killje. Valamikor 2 hitből kinyírok vkit, valamikor 9 hit után is elszalad, de én 1 másodperc alatt megdöglök. Hagyjuk má, miez?!?! BF ben 3.5 4.5 ös k/d m van átlagban és nem csalok. Akkor valszeg nem velem lehet a gond. Jameg, milyen perk az, hogy nincs lépéshangod. Eddig sem lehetett ezt hallani codban, de mostmár végképp nem. Az agymosott amcsi rétegnek ez kell, hát hajrá. A jutubereket meg mindig könnyű lobbiba teszik, hogy promotálják a játékot. Undorító ez az egész. Ment is a refund, meg is jött. Maradok a Battlefieldeknél, még mindig hatalms élményt ad.', '2023-11-24'),
(41, 'Árpa János', 'Szerintem a facebooknak nem sok értelme van. Mindenki felesleges dolgokat tesz fel oda.', '2024-01-17');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eszkozok`
--

CREATE TABLE `eszkozok` (
  `eszkozok_id` int(11) NOT NULL,
  `eszkozok_nev` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eszkozok`
--

INSERT INTO `eszkozok` (`eszkozok_id`, `eszkozok_nev`) VALUES
(1, 'Pc\r\n'),
(2, 'Nintendo'),
(3, 'PlayStation'),
(4, 'Xbox');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `film`
--

CREATE TABLE `film` (
  `film_id` int(11) NOT NULL,
  `film_cim` varchar(50) NOT NULL,
  `film_datum` date NOT NULL,
  `film_hossz` int(11) NOT NULL,
  `film_kep` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `film`
--

INSERT INTO `film` (`film_id`, `film_cim`, `film_datum`, `film_hossz`, `film_kep`) VALUES
(1, 'Wandavision', '0000-00-00', 0, '1.png'),
(2, 'Loki', '0000-00-00', 0, '2.png'),
(3, 'Falcon and the winter soldier', '0000-00-00', 0, '3.png'),
(57, 'ada', '2024-02-21', 155, 'adad');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `hasznalttermekek`
--

CREATE TABLE `hasznalttermekek` (
  `hasznalt_id` int(11) NOT NULL,
  `hasznalt_info` varchar(255) NOT NULL,
  `hasznalt_feltettev` date NOT NULL,
  `hasznalt_eladoEmail` varchar(255) NOT NULL,
  `hasznalt_allapot` varchar(255) NOT NULL,
  `hasznalt_ar` int(11) NOT NULL,
  `hasznalt_kep` varchar(255) NOT NULL,
  `hasznalt_eszkozid` int(11) NOT NULL,
  `hasznalt_komponensid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `hasznalttermekek`
--

INSERT INTO `hasznalttermekek` (`hasznalt_id`, `hasznalt_info`, `hasznalt_feltettev`, `hasznalt_eladoEmail`, `hasznalt_allapot`, `hasznalt_ar`, `hasznalt_kep`, `hasznalt_eszkozid`, `hasznalt_komponensid`) VALUES
(20, 'Billentyűzet', '2024-01-11', 'FazekasSandor@gmail.com', 'korszerű', 14990, 'photo_1704889156009_photo.jpg', 2, 8),
(23, 'Számítógép', '2024-01-11', 'Sándor.dul@gmail.com', 'Korszerű', 545000, 'photo_1704889360754_photo.jpg', 2, 8),
(26, 'Számítógép', '2024-01-11', 'Sándor.dul@gmail.com', 'Korszerű', 545000, 'photo_1704889362651_photo.jpg', 2, 8),
(29, 'Fejhallgató', '2024-01-11', 'Feled.Elem@gmail.com', 'Sérült', 9900, 'photo_1704889455859_photo.jpg', 2, 8),
(35, 'Alaplap', '2024-01-15', 'Fazekasodon@gmail.com', 'Új', 59000, 'photo_1705304301182_photo.jpg', 2, 2),
(72, '4060 OC', '2024-02-07', 'Kelemen.andri@gmail.com', 'Használt', 85000, 'photo_1707297012748_photo.jpg', 2, 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jatekok`
--

CREATE TABLE `jatekok` (
  `jatekok_id` int(11) NOT NULL,
  `jatekok_nev` varchar(255) NOT NULL,
  `jatekok_db` int(11) NOT NULL,
  `jatekok_megjelenes` date NOT NULL,
  `jatekok_ar` int(11) NOT NULL,
  `jatekok_kep` varchar(100) NOT NULL,
  `jatekok_eszkozid` int(11) NOT NULL,
  `jatekok_trailer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jatekok`
--

INSERT INTO `jatekok` (`jatekok_id`, `jatekok_nev`, `jatekok_db`, `jatekok_megjelenes`, `jatekok_ar`, `jatekok_kep`, `jatekok_eszkozid`, `jatekok_trailer`) VALUES
(1, 'Forza Horizon 5 ', 8, '2021-11-01', 12990, 'kep111.jpg', 4, 'https://www.youtube.com/embed/FYH9n37B7Yw?si=ZwfrgWezqUIm-SOn'),
(2, 'Forza Horizon 5 ', 5, '2021-11-01', 13990, 'kep112.jpg', 1, 'https://www.youtube.com/embed/FYH9n37B7Yw?si=ZIySiElO4rWAhYNS'),
(3, 'The Sims 4 - For Rent (EP15)\r\n', 3, '2023-12-07', 15399, 'kep113.jpg', 1, 'https://www.youtube.com/embed/sdhU5tRCqYc?si=JMfv3DEoMv6qoEm2'),
(4, 'Plants Vs Zombies: Battle For Neighborville\r\n', 54, '2019-10-18', 3990, 'kep114.jpg', 1, 'https://www.youtube.com/embed/RwYjx4VPzx0?si=O8P7hZ9KSD3T96ha'),
(5, 'LEGO The Hobbit\r\n', 23, '2014-04-11', 1499, 'kep115.jpg', 4, 'https://www.youtube.com/embed/83OMunaBvqU?si=ckQUokZMFjeMNr09'),
(6, 'Dead Space\r\n', 2, '2023-01-27', 8990, 'kep116.jpg', 1, 'https://www.youtube.com/embed/ctQl9wa3ydE?si=2dYuJQMjikedscpQ'),
(7, 'The Witcher 3: Wild Hunt Game of The Year Edition (GOTY)', 14, '2016-08-30', 6990, 'kep117.jpg', 4, 'https://www.youtube.com/embed/Vr27jM9Lk6M?si=sslMNa8MpQ8_AU_v'),
(8, 'Jujutsu Kaisen Cursed Clash\r\n', 0, '2024-02-02', 24999, 'kep118.jpg', 4, 'https://www.youtube.com/embed/7jk31aQbHwA?si=UG1T6Vo7VWU2LPyc'),
(9, 'Red Dead Redemption 2\r\n', 12, '2018-10-26', 9990, 'kep119.jpg', 4, 'https://www.youtube.com/embed/gmA6MrX81z4?si=QpUEL-fM0A76ey1G'),
(10, 'Call of Duty: Modern Warfare (2019)\r\n', 29, '2019-10-25', 11990, 'kep120.jpg', 4, 'https://www.youtube.com/embed/bH1lHCirCGI?si=dURWgqDfqo4q57Xh'),
(11, 'Nintendo Super Smash Bros. Ultimate (Super Smash Bros. Ultimate)', 5, '2018-06-19', 19999, 'kep121.jpg', 2, 'https://www.youtube.com/embed/cjdfqXIM-Ko?si=ikIup2DCiFplOkR9'),
(12, 'Animal Crossing: New Horizons', 7, '2020-04-23', 18999, 'kep122.jpg', 2, 'https://www.youtube.com/embed/_3YNL0OWio0?si=ZTJcfnTMn1rKeHy1'),
(13, 'The Legend of Zelda: Tears of the Kingdom', 24, '2023-03-15', 23999, 'kep123.jpg', 2, 'https://www.youtube.com/embed/2SNF4M_v7wc?si=W0tGMnaMGEzvaDDT'),
(14, 'Luigi\'s Mansion 3', 9, '2019-09-12', 14999, 'kep124.jpg', 2, 'https://www.youtube.com/embed/RSGgCfbYrg0?si=vYt3TmxHNxGfhJOc'),
(15, 'Pokémon Legends: Arceus', 12, '2022-12-14', 22999, 'kep125.jpg', 2, 'https://www.youtube.com/embed/wOEHUANP-vo?si=wY56-2CmlwrvgBk8'),
(16, 'Demon\'s Souls', 6, '2020-09-15', 20000, 'kep126.jpg', 3, 'https://www.youtube.com/embed/2TMs2E6cms4?si=6elTPWVGwrRcijDl'),
(17, 'Ghost of Tsushima', 6, '2020-07-07', 18999, 'kep127.jpg', 3, 'https://www.youtube.com/embed/rTNfgIAi3pY?si=gSAxOm6b1kUXeX2Q'),
(18, 'God of War Ragnarök', 6, '2023-05-24', 23999, 'kep128.jpg', 3, 'https://www.youtube.com/embed/hfJ4Km46A-0?si=ha0i3u8L73dPInfu'),
(19, 'The Last of Us Part II', 6, '2020-03-18', 22999, 'kep129.jpg', 3, 'https://www.youtube.com/embed/Ye3st9z6jQY?si=Wn5ErKBvfi90bB-2'),
(20, 'Horizon Forbidden West', 6, '2022-08-17', 19999, 'kep130.jpg', 3, 'https://www.youtube.com/embed/Lq594XmpPBg?si=9oeQpDUbaoDt_JYE'),
(21, 'Dragon’s Dogma II', 5, '2024-01-01', 30000, 'kep131.jpg', 3, 'https://www.youtube.com/embed/cT0rIgaiPWA?si=9_S2w3p7YkeTrCi8'),
(22, 'Rise of the Ronin', 4, '2024-01-02', 25000, 'kep132.jpg', 3, 'https://www.youtube.com/embed/zS8EvlTGCiE?si=8P_1vkUhMBB2_jCl'),
(23, 'Avatar: Frontiers of Pandora', 17, '2023-11-15', 27999, 'kep133.jpg', 3, 'https://www.youtube.com/embed/RDzw1EKnaIA?si=yX6l92PAR4W9Invr'),
(24, 'A Plague Tale: Innocence', 8, '2023-10-18', 11999, 'kep134.jpg', 3, 'https://www.youtube.com/embed/H4FOb16Nenk?si=QFloIpvMX-I9Qudh'),
(25, 'Star Wars: Jedi Survivor', 7, '2023-03-22', 26999, 'kep135.jpg', 3, 'https://www.youtube.com/embed/VRaobDJjiec?si=_w7HJoQvFoGDvWh7'),
(26, 'Tekken 8: Ultimate Edition\r\nPC', 5, '2024-01-07', 42999, 'kep136.jpg', 1, 'https://www.youtube.com/embed/9jJiNa4HoD0?si=RU0fvt6k9C-ZJvw2'),
(27, 'Cyberpunk 2077 Ultimate Edition', 2077, '2018-11-19', 14000, 'kep137.jpg', 1, 'https://www.youtube.com/embed/Ugb80d5lxEM?si=ns1WPgtmEXrsQ4yM'),
(28, 'Need for Speed Unbound\r\nPC', 4, '2023-05-10', 19999, 'kep138.jpg', 1, 'https://www.youtube.com/embed/H2Y8XCe7F9E?si=NAdhDAyGIihE4wFe'),
(29, 'It Takes Two', 6, '2023-05-17', 14999, 'kep139.jpg', 1, 'https://www.youtube.com/embed/GAWHzGNcTEw?si=406qQ9_rMin-GIgf'),
(30, 'EA Sports FC 24\r\nPC', 4, '2023-07-13', 24999, 'kep140.jpg', 1, 'https://www.youtube.com/embed/XhP3Xh4LMA8?si=Mp_vPKcWvsMtxCnr'),
(31, 'Omori', 7, '2022-09-21', 14000, 'kep141.jpg', 2, 'https://www.youtube.com/embed/erzgjfU271g?si=oc6nJL3NJG1Eq0Na'),
(32, 'Demon Slayer - Kimetsu no Yaiba - Sweep the Board!', 6, '2022-03-24', 25999, 'kep142.jpg', 2, 'https://www.youtube.com/embed/Q5Y8-Qccxo4?si=fKC4aRyYrAEQ4AK8'),
(33, 'Super Mario Bros. Wonder', 11, '2020-06-10', 22680, 'kep143.jpg', 2, 'https://www.youtube.com/embed/XvQNlGKNC6o?si=3sjOCCWCagD1RM7x'),
(34, 'Metroid Prime 4', 1, '2024-05-22', 44500, 'kep144.jpg', 2, 'https://www.youtube.com/embed/nFbDmTjS_MI?si=CuMGSsw2xFg5nPtu'),
(35, 'Eiyuden Chronicles: Hundred Heroes', 5, '2023-07-20', 22590, 'kep145.jpg', 2, 'https://www.youtube.com/embed/wCd2voodS08?si=WzJieNbJ2EKBnWPI'),
(36, 'Skull and Bones Premium Edition', 22, '2024-06-10', 44000, 'kep146.jpg', 4, 'https://www.youtube.com/embed/aJy3FXGb6ok?si=mu03oDHI4Ycruy2c'),
(37, 'CYGNI: All Guns Blazing', 15, '2023-12-05', 22350, 'kep147.jpg', 4, 'https://www.youtube.com/embed/cE2g5wIpB-Y?si=yZv19OXGntVSt2-T'),
(38, 'Metal Gear Solid: Master Collection Vol. 1', 9, '2023-11-08', 18999, 'kep148.jpg', 4, 'https://www.youtube.com/embed/Ej-I-Qv8UkE?si=SwcC5WonulWLhh_v'),
(39, 'Hogwarts Legacy', 12, '2023-05-13', 24666, 'kep148.jpg', 4, 'https://www.youtube.com/embed/BtyBjOW8sGY?si=Z_ZJpJZvNd2EyTkX'),
(40, 'Starfield', 22, '2023-05-25', 33000, 'kep148.jpg', 4, 'https://www.youtube.com/embed/kfYEiTdsyas?si=ba4EDCZuN82zRJVN'),
(41, 'Watch Dogs Legion', 11, '2022-07-15', 4999, 'kep150.jpg', 4, 'https://www.youtube.com/embed/srXrGKGAU20?si=pROQA15Ng6t_Wrcd');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `komponens`
--

CREATE TABLE `komponens` (
  `komponens_id` int(11) NOT NULL,
  `komponens_nev` varchar(255) NOT NULL,
  `komponens_eszkozokid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `komponens`
--

INSERT INTO `komponens` (`komponens_id`, `komponens_nev`, `komponens_eszkozokid`) VALUES
(1, 'Videókártya', 1),
(2, 'Alaplap', 1),
(3, 'Memória', 1),
(4, 'Processzor', 1),
(5, 'Számítógépház', 1),
(6, 'Tápegység', 1),
(7, 'SSD', 1),
(8, 'Egyéb', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rendeles`
--

CREATE TABLE `rendeles` (
  `rendeles_id` int(11) NOT NULL,
  `rendeles_nev` varchar(255) NOT NULL,
  `rendeles_email` varchar(100) NOT NULL,
  `rendeles_telefonszam` varchar(100) NOT NULL,
  `rendeles_datum` date NOT NULL,
  `rendeles_osszar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rendeles`
--

INSERT INTO `rendeles` (`rendeles_id`, `rendeles_nev`, `rendeles_email`, `rendeles_telefonszam`, `rendeles_datum`, `rendeles_osszar`) VALUES
(2, 'Kiss Pista', 'Kp@gmail.com', '06306943152', '2023-06-21', 65000),
(5, 'Fazekas Sándor', 'FaziSándor@gmail.com', '06203556220', '2022-10-10', 450000),
(8, 'Hajdú Lajos ', 'Hajdulajos@gmail.com', '0305745521', '2023-07-28', 25000),
(14, 'Miklós Dömötör', 'DömiMiki@freemail.hu', '06209864355', '2023-08-03', 20000),
(41, 'Ádám Kis', 'Kisadam@gmail.com', '06208554316', '2024-01-01', 85000),
(44, 'Ádám Kis', 'Kisadam@gmail.com', '06208554316', '2024-01-03', 95000),
(68, 'Sajtos Balázs', 'bazsi00@gmail.com', '06202559684', '2024-01-04', 35600),
(71, 'Sajtos Ádám', 'Ádi009@gmail.com', '06509864352', '2024-01-17', 25000),
(77, 'Kis Imre', 'Kimi090@freemail.hu', '06309468355', '2024-01-17', 29999),
(89, 'Fazekas ádám', 'Fazekasadam@gmail.com', '06202553594', '2024-01-22', 68988),
(90, 'Beles Árpád', 'Bápi@gmail.com', '06209864948', '2024-02-01', 45900);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
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
-- Tábla szerkezet ehhez a táblához `szavazat_jatekok`
--

CREATE TABLE `szavazat_jatekok` (
  `szavazat_id` int(11) NOT NULL,
  `szavazat_jatek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szavazat_jatekok`
--

INSERT INTO `szavazat_jatekok` (`szavazat_id`, `szavazat_jatek`) VALUES
(1, 17),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 2),
(8, 17),
(9, 1),
(10, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
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
(14, 'valaki', 'valaki@gmail.com', '$2a$08$2I9RHv7Yt6ljopICRKZq9.c/PzU.jDQU2zqtSD16A3kjQjbBuhw1a', '2024-02-06 17:37:10', '2024-02-06 17:37:10');

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
('2024-02-06 17:37:10', '2024-02-06 17:37:10', 1, 14),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 2),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 2, 3),
('2020-08-02 15:04:00', '2020-08-02 15:04:00', 3, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `velemeny`
--

CREATE TABLE `velemeny` (
  `velemeny` int(11) NOT NULL,
  `velemeny_id` int(11) NOT NULL,
  `velemeny_nev` varchar(255) NOT NULL,
  `velemeny_szoveg` text NOT NULL,
  `velemeny_ido` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `velemeny`
--

INSERT INTO `velemeny` (`velemeny`, `velemeny_id`, `velemeny_nev`, `velemeny_szoveg`, `velemeny_ido`) VALUES
(2, 1, 'Gábor', 'A két partot összekötő terep változatos kivonata a mérsékelt övi, trópusi és sivatagos vidékeket is kínáló országnak.', '2024-01-17'),
(3, 12, 'Pista', 'Tulajdonképpen feladat nincs is, az alapvető hangsúly a saját ház megszerzésén, annak berendezésén, majd kibővítésén van, ezen körforgás pedig igazából az idők végezetéig tart.', '2023-12-20'),
(4, 24, 'Ezra', 'Zabolátlanul és megfékezhetetlenül terjed a pestis, emberek halnak ezrével keresztjelölt ajtajaik mögött, az egyház és az inkvizíció pedig bűnbakokat keres, miközben a Százéves háború továbbra is engesztelhetetlen intenzitással tombol.', '2023-11-21'),
(6, 23, 'János', 'A legtöbb játékos számára egyértelmű volt, hogy egy Far Cry-t kapunk majd Avatar skinnel.', '2024-01-09'),
(7, 10, 'Tibi', 'Nem elég jó. Nagyon nagy gép igénye van és nem tud semmivel többet mint egy kora beli hasonló kategóriás játék.', '2023-11-22'),
(8, 27, 'Bianka', 'A dlc-vel együtt éri megvenni.', '2024-01-15'),
(9, 37, 'Nerd', 'Nagyon várom, előfizettem rá.', '2024-01-01'),
(11, 6, 'Matilda', 'A történet nagy vonalakban ugyanaz, mint az eredeti Dead Space-ben.', '2023-10-26'),
(12, 16, 'Musztafa', 'Szinte rá sem ismertem Boletaria démonoktól hemzsegő királyságára, amikor először elindítottam a játékot.', '2023-11-23'),
(13, 18, 'Mercedes', 'A God of War: Ragnarök esetében azonban nem arról van szó, hogy a veterán fejlesztőbrigád egyáltalán nem ejtett hibákat', '2023-12-13'),
(17, 2, 'Helga', 'Igazán lebilincselő játék!\r\n\r\nElőnyök\r\nGyönyörű grafika, hangulatos nagyon a játékmenet, ha akarnék sem tudnék rosszat mondani erről a játékról.\r\n\r\nHátrányok\r\nNem tapasztaltam ilyet!', '2023-11-09'),
(18, 3, 'Ági', 'Rendkívül jó fejek,olyan világban élünk amikor olyan játék engine-nek vannak amik képességeit lassan nehéz lesz megkülönböztetni a valóságtól,de medence nincs a sims4ben mert az \"bonyolult\" és technikailag nehezen lett volna megoldható. Ugyan kérlek... (ha megkapják ingyen,ha nem,ez szánalmas)', '2024-01-05'),
(19, 4, 'Alexa', 'Nekem nagyon tetszik, de ennél a résznél közel se alakult ki akkora hype mint elődjeinél.', '2024-01-04'),
(20, 26, 'Marci', 'Bíztam benne hogy végre a Tekken elmozdul egy realisztikusabb ábrázolás felé, de maradt a búcsús színkavalkád műanyag karakterekkel. Kár érte . . .', '2023-11-30'),
(21, 28, 'Attila', 'Én most tolom és sajnos azt tapasztalom mint pár korábbi részben is hogy rohadt nagy mázli kell hogy első tudj lenni. Ja és alapból ha szar kocsival mész aminek teljesítménye lentebb van a többi versenyzőhöz képest még akkor sem tudsz győzni ha hibátlanul mész végig az egész pályán. (tesztelve van szóval nem írok hülyeséget) Illetve az is érdekes hogy egy 400+ os kocsival is kihívás egy verseny nem is kicsit - és mondom úgy hogy a fokozat a legkönnyebb! Szóval önmagában jó játék lenne de a nehézségi szint nagyon nem a kezdőknek vagy azoknak van kitalálva akik nem sok időt játszanak. Csodálkoztam is mivel én az Underground óta tolom a szériát és így sem ajánlanám olyannak aki először játszik ilyennel azért előtte nem árt pár részt kitolni hozzá...', '2023-05-20'),
(22, 29, 'Sámson', 'A második Boss fighton vagyunk túl feleségemmel. Egyszerűen imádjuk. Bárcsak több ilyen igényes kreatív és szerethető játék készülne. Már az is fura hogy manapság ennyire szegényes a coop fogalma egy konzol esetében.', '2023-09-25'),
(23, 30, 'Amália', 'A sokadik ugyanolyan Fifa, átcímkézve, friss átigazolásokkal...\r\nHol vannak már azok az idők, amikor évről évre kaptunk valami újat, ami merőben más volt az előző évihez képest és éreztük, hogy fejlődik folyamatosan a játék.\r\nSebaj, remélem idén is sokan megveszik majd, hogy jövőre az EA-nek megint ne kelljen megdolgoznia a pénzéért, mivel így is tucatjával fogy.', '2023-09-15'),
(33, 7, 'Rita', 'Ilyen előélettel, ilyen magasra helyezett léccel általában összeroppanni szokás, de a CDP a Witcher 2 óta eltelt évek óta alatt gyakorlatilag a kelet-európai Rockstarrá vált:', '2015-01-15'),
(34, 8, 'Ibolya', 'A játékmenet szempontjából reménytelenül kötődöm a harmadik személyű történetjátékokhoz. A The Last of Us számomra lényegében otthont ad a PS5 kontroller mögött, így nem mondhatom, hogy a Mario Karton kívül rengeteg harci játékélményem van. Amikor azonban az arcomba intesz Satoru Gojo-t, hallgatok, szóval félreteszem a nézeteltéréseimet, és harcolok ezekben a Cursed Technique 2 vs 2 stílusban.', '2024-01-02'),
(35, 9, 'Ábel', 'Arthur azóta a csapat tagja, amióta az eszét tudja és bár alapból mogorva, sőt, az átlagnál talán kicsit lassabb felfogásúnak érződik, valójában nagyon is tisztában van azzal, hogy az idejük lassan, de biztosan le fog járni, ugyanakkor elképzelni sem tudja, mihez kezdene fogadott családja és annak karizmatikus vezetője, Dutch nélkül.', '2018-01-24'),
(36, 11, 'Enikő', 'És bár időnként úgy érezte, hogy néhány gyengébb darabjának levágása még erősebb és következetesebb egésszé tehette volna az Ultimate-et, a kiváló új mechanikai és esztétikai kiegészítések révén sokkal több, mint a régi ötletek újrafeldolgozása.', '2020-01-17'),
(37, 13, 'Kobi', 'A boss-csaták epikusak, a világtervezés Link képességeinek és a környezetnek tökéletes szimbiózisa, és figyelemre méltó a játék azon képessége, hogy megkövetelje a kreativitást és a találékonyságot.', '2022-08-24'),
(38, 14, 'Mario', 'Nagyon szép is, nagyszerű fény- és ködeffektusokkal, számos különféle stílusú környezettel, amelyeket felfedezhet, valamint a várható rajzfilmes karakter-animációkkal. De ami a legfontosabb, remekül is játszik', '2020-05-14'),
(39, 15, 'Józsi', 'Ehhez kapcsolódik számos Legends: Arceus lenyűgözőbb érintése, különösen abban, hogy a vad Pokémonok hogyan reagálnak rád, vagy egyszerűen csak léteznek a világban valódi lények, jellegzetes viselkedési sajátosságokkal.', '2024-05-10'),
(40, 17, 'Eszter', 'A Ghost of Tsushima harca olyan, mint egy boszorkánysör, amelyet a Batman Arkham sorozat, az Origins Assassin’s Creeds előtti filmek, a Sekiro: Shadows Die Twice és a Kurosawa-filmek teljes könyvtárából készítenek. És ahogy a boszorkányok főzetei szoktak lenni, az eredmény varázslatos. Mint minden nagy harci rendszer, ez is könnyen érthető felületi szinten: vannak könnyű támadások, amelyek gyorsan sebzhetnek és legyőzik a lassabb csapásokat, vannak olyan súlyos támadások, amelyek több sebzést okoznak, és áttörhetik az ellenséges őröket, valamint egy blokkgomb, amely megvéd bizonyos támadások ellen. , és egy kitérő gomb a nem védhető támadások elkerülésére.', '2020-04-17'),
(41, 19, 'Topográfus', 'Innentől Ellie útja valami sokkal ambiciózusabbá nő. A 2. rész ügyesen kezeli a zombi-apokalipszis utáni Seattle utcáin zajló háborút, egy kiterjedt, új szereplőgárdát, és néhány zsigerbevágó nyereményt az elhúzódó érzelmek ellen. A The Last of Us erőteljes befejezése felkavart az elmúlt hét évben. . A The Last of Us 2. részének története ugyanolyan mesterien van kezelve, mint az eredetiben.', '2023-12-20'),
(42, 20, 'Ember', 'Aloy ismét egy időérzékeny küldetésben van, amely tele van rejtélyekkel, nem utolsósorban a karakterekben, akik közül sokan szilárdan a barátok vagy ellenségek szürke övezetében vannak. Számos fordulattal rendelkezik, és Aloy utazásának végéig sejtettem, hogyan is fog ez sikerülni. Ez az út nem rövid; az átjátszásom (amely meglehetősen laza tempóban zajlott, és egészséges mennyiségű mellékküldetést is magában foglalt) körülbelül 32 órát vett igénybe.', '2023-10-11'),
(43, 21, 'Banán', 'A demóm közvetlenül Vermund emberi birodalmán kívül kezdődött, és szabad uralmat adott nekem, hogy menjek, ahová csak akarok. Volt egy maroknyi küldetésem, amelyeket követhettem, és a gyalogjaimat már beállítottam ezeknek a küldetéseknek a ismeretében, vagyis egyszerűen hagyhattam, hogy ők vezessék az utat, és nem kellett azzal foglalkoznom, hogy folyamatosan előhozzam a térképet, és ügyeljek arra, hogy továbbra is az úton vagyok-e. . A küldetések terén tapasztalattal és tudással rendelkező gyalogok nem újdonság a Dragon\'s Dogma számára, és időnként átvezetnek néhány trükkös követhető ösvényen, de itt a Dragon\'s Dogma 2-ben sokkal megbízhatóbb volt.', '2024-01-01'),
(44, 22, 'Villő', 'Az olyan játékokkal, mint a Ninja Gaiden, Nioh és Wo Long: Fallen Dynasty, a Team Ninja tud egy-két dolgot a robusztus és kifizetődő játékrendszerekkel rendelkező szamuráj játékok fejlesztéséről. Ennek ellenére a fent említett játékok egyike sem tekinthető nyílt világú játéknak, és mindegyik viszonylag lineáris narratívákat tartalmaz, amelyek általában önálló küldetéseket tartalmaznak.', '2022-11-15'),
(45, 28, 'Tibor', 'Nem jön be a képregényes stílus.', '2021-01-20');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `alkatreszek`
--
ALTER TABLE `alkatreszek`
  ADD PRIMARY KEY (`alkatresz_id`),
  ADD KEY `alkatresz_eszkozid` (`alkatresz_eszkozid`),
  ADD KEY `alkatresz_komponensid` (`alkatresz_komponensid`);

--
-- A tábla indexei `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Comment_id`);

--
-- A tábla indexei `eszkozok`
--
ALTER TABLE `eszkozok`
  ADD PRIMARY KEY (`eszkozok_id`);

--
-- A tábla indexei `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`film_id`);

--
-- A tábla indexei `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  ADD PRIMARY KEY (`hasznalt_id`),
  ADD KEY `hasznalt_eszkozid` (`hasznalt_eszkozid`,`hasznalt_komponensid`),
  ADD KEY `hasznalt_komponensid` (`hasznalt_komponensid`);

--
-- A tábla indexei `jatekok`
--
ALTER TABLE `jatekok`
  ADD PRIMARY KEY (`jatekok_id`),
  ADD KEY `jatekok_eszkozid` (`jatekok_eszkozid`);

--
-- A tábla indexei `komponens`
--
ALTER TABLE `komponens`
  ADD PRIMARY KEY (`komponens_id`),
  ADD KEY `komponens_eszkozokid` (`komponens_eszkozokid`);

--
-- A tábla indexei `rendeles`
--
ALTER TABLE `rendeles`
  ADD PRIMARY KEY (`rendeles_id`);

--
-- A tábla indexei `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `szavazat_jatekok`
--
ALTER TABLE `szavazat_jatekok`
  ADD PRIMARY KEY (`szavazat_id`);

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
-- A tábla indexei `velemeny`
--
ALTER TABLE `velemeny`
  ADD PRIMARY KEY (`velemeny`),
  ADD KEY `velemeny_idd` (`velemeny_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `alkatreszek`
--
ALTER TABLE `alkatreszek`
  MODIFY `alkatresz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT a táblához `comment`
--
ALTER TABLE `comment`
  MODIFY `Comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT a táblához `eszkozok`
--
ALTER TABLE `eszkozok`
  MODIFY `eszkozok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `film`
--
ALTER TABLE `film`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT a táblához `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  MODIFY `hasznalt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT a táblához `jatekok`
--
ALTER TABLE `jatekok`
  MODIFY `jatekok_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT a táblához `komponens`
--
ALTER TABLE `komponens`
  MODIFY `komponens_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `rendeles`
--
ALTER TABLE `rendeles`
  MODIFY `rendeles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT a táblához `szavazat_jatekok`
--
ALTER TABLE `szavazat_jatekok`
  MODIFY `szavazat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT a táblához `velemeny`
--
ALTER TABLE `velemeny`
  MODIFY `velemeny` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `alkatreszek`
--
ALTER TABLE `alkatreszek`
  ADD CONSTRAINT `alkatreszek_ibfk_1` FOREIGN KEY (`alkatresz_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`),
  ADD CONSTRAINT `alkatreszek_ibfk_2` FOREIGN KEY (`alkatresz_komponensid`) REFERENCES `komponens` (`komponens_id`);

--
-- Megkötések a táblához `hasznalttermekek`
--
ALTER TABLE `hasznalttermekek`
  ADD CONSTRAINT `hasznalttermekek_ibfk_1` FOREIGN KEY (`hasznalt_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`),
  ADD CONSTRAINT `hasznalttermekek_ibfk_2` FOREIGN KEY (`hasznalt_komponensid`) REFERENCES `komponens` (`komponens_id`);

--
-- Megkötések a táblához `jatekok`
--
ALTER TABLE `jatekok`
  ADD CONSTRAINT `jatekok_ibfk_1` FOREIGN KEY (`jatekok_eszkozid`) REFERENCES `eszkozok` (`eszkozok_id`);

--
-- Megkötések a táblához `komponens`
--
ALTER TABLE `komponens`
  ADD CONSTRAINT `komponens_ibfk_1` FOREIGN KEY (`komponens_eszkozokid`) REFERENCES `eszkozok` (`eszkozok_id`);

--
-- Megkötések a táblához `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `velemeny`
--
ALTER TABLE `velemeny`
  ADD CONSTRAINT `velemeny_ibfk_1` FOREIGN KEY (`velemeny_id`) REFERENCES `jatekok` (`jatekok_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
