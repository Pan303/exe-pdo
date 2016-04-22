-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 22 Avril 2016 à 09:40
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `pizza`
--

-- --------------------------------------------------------

--
-- Structure de la table `pizza_has_ingredients`
--

CREATE TABLE IF NOT EXISTS `pizza_has_ingredients` (
  `pizza_id` int(10) unsigned NOT NULL,
  `ingredients_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`pizza_id`,`ingredients_id`),
  KEY `fk_pizza_has_ingredients_ingredients1_idx` (`ingredients_id`),
  KEY `fk_pizza_has_ingredients_pizza1_idx` (`pizza_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pizza_has_ingredients`
--

INSERT INTO `pizza_has_ingredients` (`pizza_id`, `ingredients_id`) VALUES
(5, 1),
(9, 1),
(11, 1),
(12, 1),
(14, 1),
(15, 1),
(2, 2),
(6, 2),
(7, 2),
(8, 2),
(13, 2),
(14, 2),
(15, 2),
(3, 3),
(6, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(4, 4),
(7, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(15, 4);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `pizza_has_ingredients`
--
ALTER TABLE `pizza_has_ingredients`
  ADD CONSTRAINT `fk_pizza_has_ingredients_pizza1` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pizza_has_ingredients_ingredients1` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
