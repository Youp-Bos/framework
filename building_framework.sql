-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 22 nov 2021 om 12:04
-- Serverversie: 10.4.19-MariaDB
-- PHP-versie: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `building_framework`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `author`
--

CREATE TABLE `author` (
  `id` int(11) UNSIGNED NOT NULL,
  `naam` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `author`
--

INSERT INTO `author` (`id`, `naam`) VALUES
(1, 'youp');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `book`
--

CREATE TABLE `book` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `publisher`) VALUES
(1, '7_kleine_dwergen', 'fritz', 'New_Times');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `publisher`
--

CREATE TABLE `publisher` (
  `id` int(11) UNSIGNED NOT NULL,
  `naam` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `publisher`
--

INSERT INTO `publisher` (`id`, `naam`) VALUES
(1, 'youp'),
(2, 'youp'),
(3, 'kimberly'),
(4, 'kevin'),
(5, 'justin'),
(6, 'fons'),
(7, 'Fons hartendorp'),
(8, 'ruben beusenkom'),
(9, 'kimberly Hogeveen'),
(10, 'Youp Bos'),
(11, 'Justin plein'),
(12, 'imad k'),
(13, 'Stephan'),
(14, 'captain jack'),
(15, 'jo mama'),
(16, 'Justin plein'),
(17, 'george'),
(18, 'iemand die leuk is'),
(19, 'ik hou van dit man');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `session`
--

CREATE TABLE `session` (
  `id` int(11) UNSIGNED NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Gegevens worden geëxporteerd voor tabel `session`
--

INSERT INTO `session` (`id`, `token`) VALUES
(1, '010116b8a711dcadd5742db5797ebd5e0f4aadb7f55d91b8d495afb14e20a87fd86efbbd8dccce8d2682f79fa68182ddb3cc');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `username` longtext NOT NULL,
  `token` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `todo`
--

CREATE TABLE `todo` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `innertext` varchar(5000) NOT NULL,
  `weight` int(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `todo`
--

INSERT INTO `todo` (`id`, `title`, `innertext`, `weight`) VALUES
(1, 'test', '', 0),
(2, 'test2', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lor', 0),
(3, 'test3', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.  Why do we use it? It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lor', 0),
(4, 'justin todo', 'justin moet zijn kamer opruimen en stofzuigen!!!', 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` longtext NOT NULL,
  `password` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Gegevens worden geëxporteerd voor tabel `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'wachtwoord123');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `todo`
--
ALTER TABLE `todo`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `author`
--
ALTER TABLE `author`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `publisher`
--
ALTER TABLE `publisher`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT voor een tabel `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `todo`
--
ALTER TABLE `todo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT voor een tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
