-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Erstellungszeit: 12. Apr 2017 um 15:39
-- Server Version: 10.0.29-MariaDB-0+deb8u1
-- PHP-Version: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Datenbank: `Next_Life`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bank`
--

CREATE TABLE IF NOT EXISTS `bank` (
  `Benutzer` varchar(30) NOT NULL,
  `Kontonr` int(30) NOT NULL,
  `Antwort` varchar(30) NOT NULL,
  `Kennwort` varchar(30) NOT NULL,
  `Serial` varchar(32) NOT NULL,
  `Geld` int(30) NOT NULL,
`bankid` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `bank`
--



-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `houses`
--

CREATE TABLE IF NOT EXISTS `houses` (
`ID` int(6) NOT NULL,
  `X` float DEFAULT NULL,
  `Y` float DEFAULT NULL,
  `Z` float DEFAULT NULL,
  `INTERIOR` int(10) DEFAULT NULL,
  `INTX` float DEFAULT NULL,
  `INTY` float DEFAULT NULL,
  `INTZ` float DEFAULT NULL,
  `MONEY` int(20) DEFAULT '0',
  `WEAP1` varchar(45) DEFAULT '0',
  `WEAP2` varchar(45) DEFAULT '0',
  `WEAP3` varchar(45) DEFAULT '0',
  `LOCKED` int(2) DEFAULT '0',
  `PRICE` int(10) DEFAULT '0',
  `OWNER` varchar(32) DEFAULT 'no-one',
  `RENTABLE` int(2) DEFAULT '0',
  `RENTALPRICE` int(10) DEFAULT '0',
  `RENT1` varchar(32) DEFAULT 'no-one',
  `RENT2` varchar(32) DEFAULT 'no-one',
  `RENT3` varchar(32) DEFAULT 'no-one',
  `RENT4` varchar(32) DEFAULT 'no-one',
  `RENT5` varchar(32) DEFAULT 'no-one'
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `houses`
--

INSERT INTO `houses` (`ID`, `X`, `Y`, `Z`, `INTERIOR`, `INTX`, `INTY`, `INTZ`, `MONEY`, `WEAP1`, `WEAP2`, `WEAP3`, `LOCKED`, `PRICE`, `OWNER`, `RENTABLE`, `RENTALPRICE`, `RENT1`, `RENT2`, `RENT3`, `RENT4`, `RENT5`) VALUES
(108, 648.854, -1489.57, 14.8418, 6, 2308.76, -1212.55, 1049.02, 0, '0', '0', '0', 0, 13000, 'Black', 0, 0, 'no-one', 'no-one', 'no-one', 'no-one', 'no-one');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sfpd`
--

CREATE TABLE IF NOT EXISTS `sfpd` (
  `Mitglieder` int(2) NOT NULL,
  `Weed` int(30) NOT NULL,
  `Koks` int(30) NOT NULL,
  `Depot` int(30) NOT NULL,
  `Anführer` varchar(30) NOT NULL,
  `Fahrzeuge` int(2) NOT NULL,
  `Zellen` int(3) NOT NULL,
  `GesamtGWD` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ultrabank`
--

CREATE TABLE IF NOT EXISTS `ultrabank` (
  `Name` varchar(20) NOT NULL,
  `Serial` varchar(30) NOT NULL,
  `Sicherheits ID` int(12) NOT NULL,
  `Zinsen` int(12) NOT NULL,
  `Kontonummer` int(12) NOT NULL,
  `Passwort` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ultrakasse`
--

CREATE TABLE IF NOT EXISTS `ultrakasse` (
  `SicherheitsID` int(10) NOT NULL,
  `Kontonummer` int(20) NOT NULL,
  `Serial` varchar(30) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Passwort` varchar(20) NOT NULL,
  `Geld` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_data`
--

CREATE TABLE IF NOT EXISTS `user_data` (
`id` int(50) NOT NULL,
  `Username` varchar(32) NOT NULL DEFAULT '',
  `Passwort` varchar(32) NOT NULL,
  `Serial` varchar(32) NOT NULL,
  `PStatus` varchar(32) NOT NULL,
  `Skin` int(3) DEFAULT NULL,
  `Fuehrerschein` int(3) DEFAULT NULL,
  `Gebannt` int(3) DEFAULT NULL,
  `Rank` int(3) DEFAULT NULL,
  `Spielzeit` int(11) NOT NULL,
  `Motorrad` int(3) DEFAULT NULL,
  `Geld` int(15) DEFAULT NULL,
  `Adminrank` int(15) DEFAULT NULL,
  `Fraktion` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_data`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `user_vehicle`
--

CREATE TABLE IF NOT EXISTS `user_vehicle` (
`id` int(50) NOT NULL,
  `userid` int(50) NOT NULL,
  `x` double NOT NULL,
  `y` double NOT NULL,
  `z` double NOT NULL,
  `rx` double NOT NULL,
  `ry` double NOT NULL,
  `rz` double NOT NULL,
  `model` int(50) NOT NULL,
  `turbo` int(1) NOT NULL,
  `motor` int(1) NOT NULL,
  `turbo_x` int(5) NOT NULL,
  `turbo_y` int(5) NOT NULL,
  `turbo_z` int(5) NOT NULL,
  `uebersetzung` int(255) NOT NULL,
  `tank` int(3) NOT NULL,
  `oil` int(3) NOT NULL,
  `tuv` int(1) NOT NULL,
  `batterie` int(3) NOT NULL,
  `reifen` int(1) NOT NULL,
  `verschleiss` int(3) NOT NULL,
  `bremsen` int(3) NOT NULL,
  `wasser` int(2) NOT NULL,
  `partikelfilter` int(3) NOT NULL,
  `abgaswerte` int(3) NOT NULL,
  `ps` int(4) NOT NULL,
  `gewicht` int(4) NOT NULL,
  `grip` int(3) NOT NULL,
  `nummernschild` varchar(5) NOT NULL,
  `tunings` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `user_vehicle`
--

INSERT INTO `user_vehicle` (`id`, `userid`, `x`, `y`, `z`, `rx`, `ry`, `rz`, `model`, `turbo`, `motor`, `turbo_x`, `turbo_y`, `turbo_z`, `uebersetzung`, `tank`, `oil`, `tuv`, `batterie`, `reifen`, `verschleiss`, `bremsen`, `wasser`, `partikelfilter`, `abgaswerte`, `ps`, `gewicht`, `grip`, `nummernschild`, `tunings`) VALUES
(1, 1, 1545.6999511719, -1686.163, 13.3828, 0, 0, 0, 429, 3, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 500, 0, 0, 'Black', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `Whitelist`
--

CREATE TABLE IF NOT EXISTS `Whitelist` (
`id` int(50) NOT NULL,
  `Serial` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `IP` int(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `Whitelist`
--



-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `WhitelistKicks`
--

CREATE TABLE IF NOT EXISTS `WhitelistKicks` (
  `Name` varchar(20) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `Serial` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Daten für Tabelle `WhitelistKicks`
--


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `world bank`
--

CREATE TABLE IF NOT EXISTS `world bank` (
  `Name` varchar(20) NOT NULL,
  `Serial` varchar(30) NOT NULL,
  `IP` varchar(30) NOT NULL,
  `SicherheitsID 1` int(11) NOT NULL,
  `SicherheitsID 2` int(11) NOT NULL,
  `Bankgeld` int(11) NOT NULL,
  `Kennwort` varchar(11) NOT NULL,
  `BankGeldBackup` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `bank`
--
ALTER TABLE `bank`
 ADD PRIMARY KEY (`bankid`);

--
-- Indizes für die Tabelle `houses`
--
ALTER TABLE `houses`
 ADD PRIMARY KEY (`ID`);

--
-- Indizes für die Tabelle `user_data`
--
ALTER TABLE `user_data`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `user_vehicle`
--
ALTER TABLE `user_vehicle`
 ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `Whitelist`
--
ALTER TABLE `Whitelist`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `bank`
--
ALTER TABLE `bank`
MODIFY `bankid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `houses`
--
ALTER TABLE `houses`
MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT für Tabelle `user_data`
--
ALTER TABLE `user_data`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT für Tabelle `user_vehicle`
--
ALTER TABLE `user_vehicle`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT für Tabelle `Whitelist`
--
ALTER TABLE `Whitelist`
MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
