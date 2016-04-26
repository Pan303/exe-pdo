-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:8889
-- Généré le :  Lun 25 Avril 2016 à 19:39
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
-- Structure de la table `droit`
--

CREATE TABLE `droit` (
  `id` int(10) unsigned NOT NULL,
  `ecrit` tinyint(4) NOT NULL,
  `modif` tinyint(4) NOT NULL,
  `supp` tinyint(4) NOT NULL,
  `lintitule` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `droit`
--

INSERT INTO `droit` (`id`, `ecrit`, `modif`, `supp`, `lintitule`) VALUES
(1, 1, 1, 1, 'admin'),
(2, 1, 0, 0, 'redac'),
(3, 0, 1, 1, 'modo');

-- --------------------------------------------------------

--
-- Structure de la table `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(10) unsigned NOT NULL,
  `nom` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ingredients`
--

INSERT INTO `ingredients` (`id`, `nom`) VALUES
(3, 'champignon'),
(2, 'fromage'),
(1, 'jambon'),
(4, 'salami');

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

-- --------------------------------------------------------

--
-- Structure de la table `pizza_has_ingredients`
--

CREATE TABLE `pizza_has_ingredients` (
  `pizza_id` int(10) unsigned NOT NULL,
  `ingredients_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pizza_has_ingredients`
--

INSERT INTO `pizza_has_ingredients` (`pizza_id`, `ingredients_id`) VALUES
(5, 1),
(7, 1),
(9, 1),
(11, 1),
(12, 1),
(14, 1),
(15, 1),
(16, 1),
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
(16, 3),
(4, 4),
(8, 4),
(9, 4),
(10, 4),
(11, 4),
(12, 4),
(13, 4),
(15, 4);

-- --------------------------------------------------------

--
-- Structure de la table `util`
--

CREATE TABLE `util` (
  `id` int(10) unsigned NOT NULL,
  `login` varchar(150) NOT NULL,
  `pass` varchar(200) NOT NULL,
  `droit_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `util`
--

INSERT INTO `util` (`id`, `login`, `pass`, `droit_id`) VALUES
(1, 'admin', 'admin', 1),
(2, 'redac', 'redac', 2),
(3, 'modo', 'modo', 3);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `droit`
--
ALTER TABLE `droit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lintitule_UNIQUE` (`lintitule`);

--
-- Index pour la table `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`);

--
-- Index pour la table `pizza`
--
ALTER TABLE `pizza`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom_UNIQUE` (`nom`),
  ADD UNIQUE KEY `image_UNIQUE` (`image`);

--
-- Index pour la table `pizza_has_ingredients`
--
ALTER TABLE `pizza_has_ingredients`
  ADD PRIMARY KEY (`pizza_id`,`ingredients_id`),
  ADD KEY `fk_pizza_has_ingredients_ingredients1_idx` (`ingredients_id`),
  ADD KEY `fk_pizza_has_ingredients_pizza1_idx` (`pizza_id`);

--
-- Index pour la table `util`
--
ALTER TABLE `util`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login_UNIQUE` (`login`),
  ADD KEY `fk_util_droit_idx` (`droit_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `droit`
--
ALTER TABLE `droit`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `ingredients`
--
ALTER TABLE `ingredients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `pizza`
--
ALTER TABLE `pizza`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `util`
--
ALTER TABLE `util`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `pizza_has_ingredients`
--
ALTER TABLE `pizza_has_ingredients`
  ADD CONSTRAINT `fk_pizza_has_ingredients_ingredients1` FOREIGN KEY (`ingredients_id`) REFERENCES `ingredients` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pizza_has_ingredients_pizza1` FOREIGN KEY (`pizza_id`) REFERENCES `pizza` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `util`
--
ALTER TABLE `util`
  ADD CONSTRAINT `fk_util_droit` FOREIGN KEY (`droit_id`) REFERENCES `droit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
