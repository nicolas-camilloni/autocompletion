-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 20 avr. 2020 à 17:25
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `champions`
--

DROP TABLE IF EXISTS `champions`;
CREATE TABLE IF NOT EXISTS `champions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `champions`
--

INSERT INTO `champions` (`id`, `nom`, `origin`, `class`, `image`) VALUES
(1, 'Ahri', 'Star Guardian', 'Sorcerer', 'img/ahri.png'),
(2, 'Annie', 'Mech Pilot', 'Sorcerer', 'img/annie.png'),
(3, 'Ashe', 'Celestial', 'Sniper', 'img/ashe.png'),
(4, 'Aurelion Sol', 'Rebel', 'Starship', 'img/aurelion.png'),
(5, 'Blitzcrank', 'Chrono', 'Brawler', 'img/blitzcrank.png'),
(6, 'Caitlyn', 'Chrono', 'Sniper', 'img/caitlyn.png'),
(7, 'Chogath', 'Void', 'Brawler', 'img/chogath.png'),
(8, 'Darius', 'Space Pirate', 'Mana-Reaver', 'img/darius.png'),
(9, 'Ekko', 'Cybernetic', 'Infiltrator', 'img/ekko.png'),
(10, 'Ezreal', 'Chrono', 'Blaster', 'img/ezreal.png'),
(11, 'Fiora', 'Cybernetic', 'Blademaster', 'img/fiora.png'),
(12, 'Fizz', 'Mech Pilot\r\n', 'Infiltrator', 'img/fizz.png'),
(13, 'Gangplank', 'Space Pirate\r\n', 'Demolitionist', 'img/gangplank.png'),
(14, 'Graves', 'Space Pirate\r\n', 'Blaster', 'img/graves.png'),
(15, 'Irelia', 'Cybernetic', 'Blademaster', 'img/irelia.png'),
(16, 'Jarvan IV', 'Dark Star', 'Protector', 'img/jarvan.png'),
(17, 'Jayce', 'Space Pirate', 'Vanguard', 'img/jayce.png'),
(18, 'Jhin', 'Dark Star', 'Sniper', 'img/jhin.png'),
(19, 'Jinx', 'Rebel', 'Blaster', 'img/jinx.png'),
(20, 'Kaisa', 'Valkyrie', 'Infiltrator', 'img/kaisa.png'),
(21, 'Karma', 'Dark Star', 'Mystic', 'img/karma.png'),
(22, 'Kassadin', 'Celestial', 'Mana-Reaver', 'img/kassadin.png'),
(23, 'Kayle', 'Valkyrie', 'Blademaster', 'img/kayle.png'),
(24, 'Khazix', 'Void', 'Infiltrator\r\n', 'img/khazix.png'),
(25, 'Leona', 'Cybernetic', 'Vanguard', 'img/leona.png'),
(26, 'Lucian', 'Cybernetic', 'Blaster', 'img/lucian.png'),
(27, 'Lulu', 'Celestial', 'Mystic', 'img/lulu.png'),
(28, 'Lux', 'Dark Star', 'Sorcerer', 'img/lux.png'),
(29, 'Malphite', 'Rebel', 'Brawler\r\n', 'img/malphite.png'),
(30, 'Master Yi', 'Rebel', 'Blademaster', 'img/maitreyi.png'),
(31, 'Miss Fortune', 'Valkyrie', 'Blaster', 'img/missfortune.png'),
(32, 'Mordekaiser', 'Dark Star', 'Vanguard', 'img/mordekaiser.png'),
(33, 'Neeko', 'Star Guardian', 'Protector', 'img/neeko.png'),
(34, 'Poppy', 'Star Guardian', 'Vanguard', 'img/poppy.png'),
(35, 'Rakan', 'Celestial', 'Protector', 'img/rakan.png'),
(36, 'Rumble', 'Mech Pilot', 'Demolitionist', 'img/rumble.png'),
(37, 'Shaco', 'Dark Star', 'Infiltrator', 'img/shaco.png'),
(38, 'Shen', 'Chrono', 'Blademaster', 'img/shen.png'),
(39, 'Sona', 'Rebel', 'Mystic', 'img/sona.png'),
(40, 'Soraka', 'Star Guardian', 'Mystic', 'img/soraka.png'),
(41, 'Syndra', 'Star Guardian', 'Sorcerer', 'img/syndra.png'),
(42, 'Thresh', 'Chrono', 'Mana-Reaver', 'img/thresh.png'),
(43, 'Twisted Fate', 'Chrono', 'Sorcerer', 'img/twistedfate.png'),
(44, 'Velkoz', 'Void', 'Sorcerer', 'img/velkoz.png'),
(45, 'Vi', 'Cybernetic', 'Brawler', 'img/vi.png'),
(46, 'Wukong', 'Chrono', 'Vanguard', 'img/wukong.png'),
(47, 'Xayah', 'Celestial', 'Blademaster', 'img/xayah.png'),
(48, 'Xin Zhao', 'Celestial', 'Protector', 'img/xinzhao.png'),
(49, 'Yasuo', 'Rebel', 'Blademaster', 'img/yasuo.png'),
(50, 'Ziggs', 'Rebel', 'Demolitionist', 'img/ziggs.png'),
(51, 'Zoe', 'Star Guardian', 'Sorcerer', 'img/zoe.png'),
(52, 'Xerath', 'Dark Star', 'Sorcerer', 'img/xerath.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
