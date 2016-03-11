-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 11 Mars 2016 à 14:46
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `copyright`
--

-- --------------------------------------------------------

--
-- Structure de la table `avoir`
--

CREATE TABLE IF NOT EXISTS `avoir` (
  `ID_TYPE_CUISINE` int(11) NOT NULL,
  `ID_HEBERGEMENT` int(11) NOT NULL,
  PRIMARY KEY (`ID_TYPE_CUISINE`,`ID_HEBERGEMENT`),
  KEY `I_FK_AVOIR_TYPE_CUISINE` (`ID_TYPE_CUISINE`),
  KEY `I_FK_AVOIR_HOTEL` (`ID_HEBERGEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `camping`
--

CREATE TABLE IF NOT EXISTS `camping` (
  `ID_HEBERGEMENT` int(11) NOT NULL,
  `NOM_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `ADRESSE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `VILLE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `chambre_hote`
--

CREATE TABLE IF NOT EXISTS `chambre_hote` (
  `ID_HEBERGEMENT` int(11) NOT NULL,
  `NOMBRE_CHAMBRE_HOTE` smallint(6) DEFAULT NULL,
  `CUISINE_CHAMBRE_HOTE` tinyint(1) DEFAULT NULL,
  `NOM_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `ADRESSE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `VILLE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE IF NOT EXISTS `departement` (
  `ID_DEPARTEMENT` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_DEPARTEMENT` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_DEPARTEMENT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=977 ;

--
-- Contenu de la table `departement`
--

INSERT INTO `departement` (`ID_DEPARTEMENT`, `LIBELLE_DEPARTEMENT`) VALUES
(1, 'Ain'),
(2, 'Aisne'),
(3, 'Allier'),
(4, 'Alpes-de-Haute-Provence'),
(5, 'Hautes-Alpes'),
(6, 'Alpes-Maritimes'),
(7, 'Ardèche'),
(8, 'Ardennes'),
(9, 'Ariège'),
(10, 'Aube'),
(11, 'Aude'),
(12, 'Aveyron'),
(13, 'Bouches-du-Rhône'),
(14, 'Calvados'),
(15, 'Cantal'),
(16, 'Charente'),
(17, 'Charente-Maritime'),
(18, 'Cher'),
(19, 'Corrèze'),
(20, 'Corse-du-sud'),
(21, 'Haute-corse'),
(22, 'Côte-d''or'),
(23, 'Côtes-d''armor'),
(24, 'Creuse'),
(25, 'Dordogne'),
(26, 'Doubs'),
(27, 'Drôme'),
(28, 'Eure'),
(29, 'Eure-et-Loir'),
(30, 'Finistère'),
(31, 'Gard'),
(32, 'Haute-Garonne'),
(33, 'Gers'),
(34, 'Gironde'),
(35, 'Hérault'),
(36, 'Ile-et-Vilaine'),
(37, 'Indre'),
(38, 'Indre-et-Loire'),
(39, 'Isère'),
(40, 'Jura'),
(41, 'Landes'),
(42, 'Loir-et-Cher'),
(43, 'Loire'),
(44, 'Haute-Loire'),
(45, 'Loire-Atlantique'),
(46, 'Loiret'),
(47, 'Lot'),
(48, 'Lot-et-Garonne'),
(49, 'Lozère'),
(50, 'Maine-et-Loire'),
(51, 'Manche'),
(52, 'Marne'),
(53, 'Haute-Marne'),
(54, 'Mayenne'),
(55, 'Meurthe-et-Moselle'),
(56, 'Meuse'),
(57, 'Morbihan'),
(58, 'Moselle'),
(59, 'Nièvre'),
(60, 'Nord'),
(61, 'Oise'),
(62, 'Orne'),
(63, 'Pas-de-Calais'),
(64, 'Puy-de-Dôme'),
(65, 'Pyrénées-Atlantiques'),
(66, 'Hautes-Pyrénées'),
(67, 'Pyrénées-Orientales'),
(68, 'Bas-Rhin'),
(69, 'Haut-Rhin'),
(70, 'Rhône'),
(71, 'Haute-Saône'),
(72, 'Saône-et-Loire'),
(73, 'Sarthe'),
(74, 'Savoie'),
(75, 'Haute-Savoie'),
(76, 'Paris'),
(77, 'Seine-Maritime'),
(78, 'Seine-et-Marne'),
(79, 'Yvelines'),
(80, 'Deux-Sèvres'),
(81, 'Somme'),
(82, 'Tarn'),
(83, 'Tarn-et-Garonne'),
(84, 'Var'),
(85, 'Vaucluse'),
(86, 'Vendée'),
(87, 'Vienne'),
(88, 'Haute-Vienne'),
(89, 'Vosges'),
(90, 'Yonne'),
(91, 'Territoire de Belfort'),
(92, 'Essonne'),
(93, 'Hauts-de-Seine'),
(94, 'Seine-Saint-Denis'),
(95, 'Val-de-Marne'),
(96, 'Val-d''oise'),
(971, 'Guadeloupe'),
(972, 'Martinique'),
(973, 'Guyane'),
(974, 'Réunion'),
(976, 'Mayotte');

-- --------------------------------------------------------

--
-- Structure de la table `equipement_camping`
--

CREATE TABLE IF NOT EXISTS `equipement_camping` (
  `ID_EQUIPEMENT_CAMPING` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_EQUIPEMENT_CAMPING` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_EQUIPEMENT_CAMPING`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- --------------------------------------------------------

--
-- Structure de la table `gerant`
--

CREATE TABLE IF NOT EXISTS `gerant` (
  `ID_GERANT` int(11) NOT NULL AUTO_INCREMENT,
  `NOM_GERANT` varchar(128) DEFAULT NULL,
  `PRENOM_GERANT` varchar(128) DEFAULT NULL,
  `LOGIN` varchar(50) NOT NULL,
  `MDP` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_GERANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `gerer`
--

CREATE TABLE IF NOT EXISTS `gerer` (
  `ID_HEBERGEMENT` int(11) NOT NULL,
  `ID_GERANT` int(11) NOT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`,`ID_GERANT`),
  KEY `I_FK_GERER_HEBERGEMENT` (`ID_HEBERGEMENT`),
  KEY `I_FK_GERER_GERANT` (`ID_GERANT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `hebergement`
--

CREATE TABLE IF NOT EXISTS `hebergement` (
  `ID_HEBERGEMENT` int(11) NOT NULL AUTO_INCREMENT,
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `NOM_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `ADRESSE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `VILLE_HEBERGEMENT` varchar(128) DEFAULT NULL,
  `HORAIRES` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`),
  KEY `I_FK_HEBERGEMENT_DEPARTEMENT` (`ID_DEPARTEMENT`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `ID_HEBERGEMENT` int(11) NOT NULL,
  `RESTAURANT_HOTEL` tinyint(1) DEFAULT NULL,
  `CHEF_RESTAURANT_HOTEL` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `inspecteur`
--

CREATE TABLE IF NOT EXISTS `inspecteur` (
  `ID_INSPECTEUR` int(11) NOT NULL AUTO_INCREMENT,
  `ID_SPECIALITE` int(11) NOT NULL,
  `NOM_INSPECTEUR` varchar(128) DEFAULT NULL,
  `PERNOM_INSPECTEUR` varchar(128) DEFAULT NULL,
  `LOGIN` varchar(50) NOT NULL,
  `MDP` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_INSPECTEUR`),
  KEY `I_FK_INSPECTEUR_SPECIALITE` (`ID_SPECIALITE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

-- --------------------------------------------------------

--
-- Structure de la table `posseder`
--

CREATE TABLE IF NOT EXISTS `posseder` (
  `ID_EQUIPEMENT_CAMPING` int(11) NOT NULL,
  `ID_HEBERGEMENT` int(11) NOT NULL,
  PRIMARY KEY (`ID_EQUIPEMENT_CAMPING`,`ID_HEBERGEMENT`),
  KEY `I_FK_POSSEDER_EQUIPEMENT_CAMPING` (`ID_EQUIPEMENT_CAMPING`),
  KEY `I_FK_POSSEDER_CAMPING` (`ID_HEBERGEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `saison`
--

CREATE TABLE IF NOT EXISTS `saison` (
  `ID_SAISON` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_SAISON` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_SAISON`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `saison`
--

INSERT INTO `saison` (`ID_SAISON`, `LIBELLE_SAISON`) VALUES
(1, 'Hiver 2016'),
(2, 'Printemps 2016'),
(3, 'Eté 2016'),
(4, 'Automne 2016');

-- --------------------------------------------------------

--
-- Structure de la table `specialite`
--

CREATE TABLE IF NOT EXISTS `specialite` (
  `ID_SPECIALITE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_SPECIALITE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_SPECIALITE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `specialite`
--

INSERT INTO `specialite` (`ID_SPECIALITE`, `LIBELLE_SPECIALITE`) VALUES
(1, 'Hôtel'),
(2, 'Camping'),
(3, 'Chambres d''hôtes');

-- --------------------------------------------------------

--
-- Structure de la table `type_cuisine`
--

CREATE TABLE IF NOT EXISTS `type_cuisine` (
  `ID_TYPE_CUISINE` int(11) NOT NULL AUTO_INCREMENT,
  `LIBELLE_TYPE_CUISINE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPE_CUISINE`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Structure de la table `visiter`
--

CREATE TABLE IF NOT EXISTS `visiter` (
  `ID_HEBERGEMENT` int(11) NOT NULL,
  `ID_INSPECTEUR` int(11) NOT NULL,
  `ID_SAISON` int(11) NOT NULL,
  `NOMBRE_ETOILE_VISITE` smallint(6) DEFAULT NULL,
  `DATE_HEURE_VISITE` datetime DEFAULT NULL,
  `CONTRE_VISITE` tinyint(1) DEFAULT NULL,
  `COMMENTAIRE_VISITE` varchar(255) DEFAULT NULL,
  `TYPE_VISITE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_HEBERGEMENT`,`ID_INSPECTEUR`,`ID_SAISON`),
  KEY `I_FK_VISITER_HEBERGEMENT` (`ID_HEBERGEMENT`),
  KEY `I_FK_VISITER_INSPECTEUR` (`ID_INSPECTEUR`),
  KEY `I_FK_VISITER_SAISON` (`ID_SAISON`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `avoir`
--
ALTER TABLE `avoir`
  ADD CONSTRAINT `avoir_ibfk_2` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hotel` (`ID_HEBERGEMENT`),
  ADD CONSTRAINT `avoir_ibfk_1` FOREIGN KEY (`ID_TYPE_CUISINE`) REFERENCES `type_cuisine` (`ID_TYPE_CUISINE`);

--
-- Contraintes pour la table `camping`
--
ALTER TABLE `camping`
  ADD CONSTRAINT `camping_ibfk_1` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hebergement` (`ID_HEBERGEMENT`);

--
-- Contraintes pour la table `chambre_hote`
--
ALTER TABLE `chambre_hote`
  ADD CONSTRAINT `chambre_hote_ibfk_1` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hebergement` (`ID_HEBERGEMENT`);

--
-- Contraintes pour la table `gerer`
--
ALTER TABLE `gerer`
  ADD CONSTRAINT `gerer_ibfk_2` FOREIGN KEY (`ID_GERANT`) REFERENCES `gerant` (`ID_GERANT`),
  ADD CONSTRAINT `gerer_ibfk_1` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hebergement` (`ID_HEBERGEMENT`);

--
-- Contraintes pour la table `hebergement`
--
ALTER TABLE `hebergement`
  ADD CONSTRAINT `hebergement_ibfk_1` FOREIGN KEY (`ID_DEPARTEMENT`) REFERENCES `departement` (`ID_DEPARTEMENT`);

--
-- Contraintes pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `hotel_ibfk_1` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hebergement` (`ID_HEBERGEMENT`);

--
-- Contraintes pour la table `inspecteur`
--
ALTER TABLE `inspecteur`
  ADD CONSTRAINT `inspecteur_ibfk_1` FOREIGN KEY (`ID_SPECIALITE`) REFERENCES `specialite` (`ID_SPECIALITE`);

--
-- Contraintes pour la table `posseder`
--
ALTER TABLE `posseder`
  ADD CONSTRAINT `posseder_ibfk_2` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `camping` (`ID_HEBERGEMENT`),
  ADD CONSTRAINT `posseder_ibfk_1` FOREIGN KEY (`ID_EQUIPEMENT_CAMPING`) REFERENCES `equipement_camping` (`ID_EQUIPEMENT_CAMPING`);

--
-- Contraintes pour la table `visiter`
--
ALTER TABLE `visiter`
  ADD CONSTRAINT `visiter_ibfk_4` FOREIGN KEY (`ID_INSPECTEUR`) REFERENCES `inspecteur` (`ID_INSPECTEUR`),
  ADD CONSTRAINT `visiter_ibfk_1` FOREIGN KEY (`ID_HEBERGEMENT`) REFERENCES `hebergement` (`ID_HEBERGEMENT`),
  ADD CONSTRAINT `visiter_ibfk_3` FOREIGN KEY (`ID_SAISON`) REFERENCES `saison` (`ID_SAISON`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
