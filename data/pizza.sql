-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Lun 25 Avril 2016 à 11:52
-- Version du serveur :  5.5.42
-- Version de PHP :  5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `pizza`
--

-- --------------------------------------------------------

--
-- Structure de la table `pizza`
--

CREATE TABLE `pizza` (
  `id` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL,
  `image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pizza`
--

INSERT INTO `pizza` (`id`, `nom`, `image`) VALUES
(1, 'base', 'https://onceuponawoodenspoon.files.wordpress.com/2012/09/skinny-base-tomato.jpg'),
(2, 'fromage', 'http://nicopizz.com/produit/8111409344%20fromages.jpg'),
(3, 'champignon', 'http://recette4.supertoinette.com/126887/thumb/500/500/pizza-aux-champignons-et-fromages-126887.jpg'),
(4, 'salami', 'http://www.selin.be/images/pizza-salami.jpg'),
(5, 'jambon', 'http://www.fastandfood.fr/wp-content/uploads/2013/10/pizza_paris6.jpg'),
(6, 'fromageChampignon', 'http://p7.storage.canalblog.com/75/47/969033/86115807_o.jpg'),
(7, 'fromageJambon', 'http://www.dineandmove.fr/wp-content/uploads/2015/02/DSC04483.jpg'),
(8, 'fromageSalami', 'http://www.pizzamania.be/images/pizza-salami.jpg'),
(9, 'salamiJambon', 'https://pixabay.com/static/uploads/photo/2011/03/21/11/05/pizza-topping-5671_960_720.jpg'),
(10, 'salamiChampignon', 'https://t1.ftcdn.net/jpg/00/07/57/04/500_F_7570468_HAC3rzl2sx1yAoyVzCT0lJxlg6St8QUF.jpg'),
(11, 'JambonChampignonSalami', 'http://previews.123rf.com/images/pejo/pejo1108/pejo110800151/10363543-Fresh-pizza-au-salami-et-jambon-Banque-d''images.jpg'),
(12, 'salamiJambonFromage', 'http://onecard.vn/files/20130421/1366543720_Thu%207%20-%20Pizza%20Jambon%20ba%20chi.jpg'),
(13, 'fromageChampignonSalami', 'https://t1.ftcdn.net/jpg/00/07/78/18/500_F_7781887_2VhJfMU1o8Vk23ZeqyrSYzuBgcqIsKjk.jpg'),
(14, 'fromageChampignonJambon', 'http://www.lacuisinefacile.com/wp-content/uploads/2010/05/pizza-reine.jpg'),
(15, 'fromageChampignonJambonSalami', 'http://thumbs.dreamstime.com/x/pizza-avec-du-jambon-les-champignons-de-couche-et-le-salami-18099092.jpg'),
(16, 'JambonChampignon', 'http://res.cloudinary.com/hv9ssmzrz/image/fetch/c_fill,f_auto,h_365,q_80,w_650/http://s3-eu-west-1.amazonaws.com/images-ca-1-0-1-eu/photo_photos/original/152/pizza_flickr_4932057475_2a9ce50750_b.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`),
  ADD UNIQUE KEY `image_UNIQUE` (`image`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
