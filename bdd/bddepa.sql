-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
<<<<<<< HEAD
--
-- Client: localhost
<<<<<<< HEAD
-- Généré le: Mar 05 Avril 2016 à 07:47
=======
--test
-- Client: localhost
-- Généré le: Jeu 31 Mars 2016 à 13:32
>>>>>>> bdd
=======
-- Généré le: Jeu 07 Avril 2016 à 11:45
>>>>>>> 82009cf372699e1863ecd346fd038117dcaa404f
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `bddepa`
--

-- --------------------------------------------------------

--
-- Structure de la table `adherent`
--

CREATE TABLE IF NOT EXISTS `adherent` (
  `id_adherent` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `duree_adherent` int(11) NOT NULL,
  `date_premier_adhesion` date NOT NULL,
  `date_dernier_adhesion` date NOT NULL,
  `statut_adherent` text COLLATE utf8_unicode_ci NOT NULL,
  `id_listev` int(11) NOT NULL,
  PRIMARY KEY (`id_adherent`),
  KEY `id_adherent` (`id_adherent`),
  KEY `fk_id_listev` (`id_listev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `ca`
--

CREATE TABLE IF NOT EXISTS `ca` (
  `id_ca` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  `id_personne_ph` int(11) NOT NULL,
  `id_membrebureau` int(11) NOT NULL,
  PRIMARY KEY (`id_ca`),
  KEY `id_ca` (`id_ca`),
  KEY `fk_id_membrebureau` (`id_membrebureau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `connexion`
--

CREATE TABLE IF NOT EXISTS `connexion` (
  `id_connexion` int(11) NOT NULL,
  `login` text COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL,
  `id_personne_moral` int(11) NOT NULL,
  `id_personne_ph` int(11) NOT NULL,
  PRIMARY KEY (`id_connexion`),
  KEY `id_connexion` (`id_connexion`),
  KEY `fk_id_personnal_moral` (`id_personne_moral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `cotisation`
--

CREATE TABLE IF NOT EXISTS `cotisation` (
  `id_cotisation` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  `date_cotisation` date NOT NULL,
  `montant_cotisation` double NOT NULL,
  `id_recu_fiscal` int(11) NOT NULL,
  PRIMARY KEY (`id_cotisation`),
  KEY `idcotisation` (`id_cotisation`),
  KEY `fk_id_recu_fiscal` (`id_recu_fiscal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `demande_accueil`
--

CREATE TABLE IF NOT EXISTS `demande_accueil` (
  `id_demande` int(16) NOT NULL AUTO_INCREMENT,
<<<<<<< HEAD
  `name` varchar(255) NOT NULL,
=======
  `nom` varchar(255) NOT NULL,
>>>>>>> bdd
  `prenom` varchar(255) NOT NULL,
  `age` int(255) NOT NULL,
  `langue` varchar(255) NOT NULL,
  `adress_origine` varchar(255) NOT NULL,
  `adress_arrivee` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `heure` int(255) NOT NULL,
  `dateDemande` varchar(255) NOT NULL,
  `motif` varchar(255) NOT NULL,
  `etat` varchar(15) NOT NULL,
  `uni` varchar(255) NOT NULL,
  `Alerte` int(12) DEFAULT '0',
  `uniarr` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
<<<<<<< HEAD
  `id_etudiant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_demande`),
  KEY `fk_id_etudiant` (`id_etudiant`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `demande_accueil`
--

INSERT INTO `demande_accueil` (`id_demande`, `name`, `prenom`, `age`, `langue`, `adress_origine`, `adress_arrivee`, `date`, `heure`, `dateDemande`, `motif`, `etat`, `uni`, `Alerte`, `uniarr`, `email`, `id_etudiant`) VALUES
(18, 'loick', 'latifi', 25, 'oui', '16 rue dauphine', '23 rue magellan', '2016-03-29', 1253, '31.03.16', 'motif de votre venue', 'en_cour', 'uni daudau', 0, 'uni desdes', 'loick.2@hotmail.fr', NULL),
(21, 'loick', 'latifi', 25, 'oui', '16 rue dauphine', '23 rue magellan', '2016-03-29', 1253, '31.03.16', 'motif de votre venue', 'en_cour', 'uni daudau', 0, 'uni desdes', 'loick.2@hotmail.fr', NULL);
=======
  `id_etudiant` int(11) NOT NULL,
  PRIMARY KEY (`id_demande`),
  KEY `fk_id_etudiant` (`id_etudiant`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;
>>>>>>> bdd

-- --------------------------------------------------------

--
-- Structure de la table `demande_adhesion`
--

CREATE TABLE IF NOT EXISTS `demande_adhesion` (
  `id_adehesion` int(11) NOT NULL,
  `date` date NOT NULL,
  `nom_demandeur` text COLLATE utf8_unicode_ci NOT NULL,
  `prenom_demandeur` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `motif` text COLLATE utf8_unicode_ci NOT NULL,
  `adresse_demandeur` text COLLATE utf8_unicode_ci NOT NULL,
  `id_personne_ph` int(11) NOT NULL,
  PRIMARY KEY (`id_adehesion`),
  KEY `id_adehesion` (`id_adehesion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `document`
--

CREATE TABLE IF NOT EXISTS `document` (
  `id_document` int(11) NOT NULL,
  `nom_document` text COLLATE utf8_unicode_ci NOT NULL,
  `type_document` text COLLATE utf8_unicode_ci NOT NULL,
  `id_projet` int(11) NOT NULL,
  PRIMARY KEY (`id_document`),
  KEY `id_document` (`id_document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `don`
--

CREATE TABLE IF NOT EXISTS `don` (
  `id_don` int(11) NOT NULL,
  `num_don` int(11) NOT NULL,
  `montant_don` text COLLATE utf8_unicode_ci NOT NULL,
  `objet_don` text COLLATE utf8_unicode_ci NOT NULL,
  `id_recu_fiscal` int(11) NOT NULL,
  `id_personne_moral` int(11) NOT NULL,
  PRIMARY KEY (`id_don`),
  KEY `id_don` (`id_don`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `id_etudiant` int(11) NOT NULL,
  `adresse` text COLLATE utf8_unicode_ci NOT NULL,
  `niveau_etude` text COLLATE utf8_unicode_ci NOT NULL,
  `diplome` text COLLATE utf8_unicode_ci NOT NULL,
<<<<<<< HEAD
  PRIMARY KEY (`id_etudiant`),
=======
>>>>>>> bdd
  KEY `id_etudiant` (`id_etudiant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
<<<<<<< HEAD
=======
-- Structure de la table `listevotant`
--

CREATE TABLE IF NOT EXISTS `listevotant` (
  `id_listev` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `libelle_listev` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_listev`),
  KEY `id_listev` (`id_listev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
>>>>>>> bdd
-- Structure de la table `membrebureau`
--

CREATE TABLE IF NOT EXISTS `membrebureau` (
  `id_membrebureau` int(11) NOT NULL,
  `date_debut` date NOT NULL,
  `date_fin` date NOT NULL,
  PRIMARY KEY (`id_membrebureau`),
  KEY `id_membrebureau` (`id_membrebureau`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id_message` int(11) NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `validation_message` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `id_message` (`id_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_banned`
--

CREATE TABLE IF NOT EXISTS `minibbtable_banned` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `banip` varchar(15) NOT NULL DEFAULT '',
  `banreason` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_forums`
--

CREATE TABLE IF NOT EXISTS `minibbtable_forums` (
  `forum_id` int(10) NOT NULL AUTO_INCREMENT,
  `forum_name` varchar(150) NOT NULL DEFAULT '',
  `forum_desc` text NOT NULL,
  `forum_order` int(10) NOT NULL DEFAULT '0',
  `forum_icon` varchar(255) NOT NULL DEFAULT 'default.gif',
  `topics_count` int(10) NOT NULL DEFAULT '0',
  `posts_count` int(10) NOT NULL DEFAULT '0',
  `forum_group` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `minibbtable_forums`
--

INSERT INTO `minibbtable_forums` (`forum_id`, `forum_name`, `forum_desc`, `forum_order`, `forum_icon`, `topics_count`, `posts_count`, `forum_group`) VALUES
(2, 'Action sociale et solidaritÃ©', 'Discussion Ã  propos des actions de EPA', 2, 'rose.gif', 0, 0, 'Action sociale et solidaritÃ©'),
(3, 'SantÃ© et mutuelle', '', 3, 'default.gif', 0, 0, 'SantÃ© et mutuelle'),
(4, 'Accueil des Ã©tudiants en France', 'Discussion Ã  propos de l''accueil des Ã©tudiants en France.', 1, 'orange.gif', 1, 2, 'Accueil des Ã©tudiants en France');

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_posts`
--

CREATE TABLE IF NOT EXISTS `minibbtable_posts` (
  `post_id` int(10) NOT NULL AUTO_INCREMENT,
  `forum_id` int(10) NOT NULL DEFAULT '1',
  `topic_id` int(10) NOT NULL DEFAULT '1',
  `poster_id` int(10) NOT NULL DEFAULT '0',
  `poster_name` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `post_text` text NOT NULL,
  `post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `poster_ip` varchar(15) NOT NULL DEFAULT '',
  `post_status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `poster_ip` (`poster_ip`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `minibbtable_posts`
--

INSERT INTO `minibbtable_posts` (`post_id`, `forum_id`, `topic_id`, `poster_id`, `poster_name`, `post_text`, `post_time`, `poster_ip`, `post_status`) VALUES
(6, 4, 4, 2, 'dauphinois', 'Aller sur le site principal', '2016-03-30 02:36:36', '0.0.0.0', 0),
(5, 4, 4, 2, 'dauphinois', 'Comment faire pour adhÃ©rer?', '2016-03-30 02:35:25', '0.0.0.0', 0);

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_send_mails`
--

CREATE TABLE IF NOT EXISTS `minibbtable_send_mails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '1',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `active` int(1) unsigned NOT NULL DEFAULT '1',
  `email_code` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_topics`
--

CREATE TABLE IF NOT EXISTS `minibbtable_topics` (
  `topic_id` int(10) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(255) NOT NULL DEFAULT '',
  `topic_poster` int(10) NOT NULL DEFAULT '0',
  `topic_poster_name` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `topic_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_views` int(10) NOT NULL DEFAULT '0',
  `forum_id` int(10) NOT NULL DEFAULT '1',
  `topic_status` tinyint(1) NOT NULL DEFAULT '0',
  `topic_last_post_id` int(10) NOT NULL DEFAULT '1',
  `posts_count` int(10) NOT NULL DEFAULT '0',
  `sticky` int(1) NOT NULL DEFAULT '0',
  `topic_last_post_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topic_last_poster` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_last_post_id` (`topic_last_post_id`),
  KEY `sticky` (`sticky`),
  KEY `posts_count` (`posts_count`),
  KEY `topic_last_post_time` (`topic_last_post_time`),
  KEY `topic_views` (`topic_views`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `minibbtable_topics`
--

INSERT INTO `minibbtable_topics` (`topic_id`, `topic_title`, `topic_poster`, `topic_poster_name`, `topic_time`, `topic_views`, `forum_id`, `topic_status`, `topic_last_post_id`, `posts_count`, `sticky`, `topic_last_post_time`, `topic_last_poster`) VALUES
(4, 'Comment faire pour adhÃ©rer?', 2, 'dauphinois', '2016-03-30 02:35:25', 5, 4, 0, 6, 2, 0, '2016-03-30 02:36:36', 'dauphinois');

-- --------------------------------------------------------

--
-- Structure de la table `minibbtable_users`
--

CREATE TABLE IF NOT EXISTS `minibbtable_users` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL DEFAULT '',
  `user_regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_password` varchar(32) NOT NULL DEFAULT '',
  `user_email` varchar(50) NOT NULL DEFAULT '',
  `user_icq` varchar(50) NOT NULL DEFAULT '',
  `user_website` varchar(100) NOT NULL DEFAULT '',
  `user_occ` varchar(100) NOT NULL DEFAULT '',
  `user_from` varchar(100) NOT NULL DEFAULT '',
  `user_interest` varchar(150) NOT NULL DEFAULT '',
  `user_viewemail` tinyint(1) NOT NULL DEFAULT '0',
  `user_sorttopics` tinyint(1) NOT NULL DEFAULT '0',
  `user_newpwdkey` varchar(32) NOT NULL DEFAULT '',
  `user_newpasswd` varchar(32) NOT NULL DEFAULT '',
  `language` char(3) NOT NULL DEFAULT '',
  `activity` int(1) NOT NULL DEFAULT '1',
  `num_topics` int(10) unsigned NOT NULL DEFAULT '0',
  `num_posts` int(10) unsigned NOT NULL DEFAULT '0',
  `user_custom1` varchar(255) NOT NULL DEFAULT '',
  `user_custom2` varchar(255) NOT NULL DEFAULT '',
  `user_custom3` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`),
  KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `minibbtable_users`
--

INSERT INTO `minibbtable_users` (`user_id`, `username`, `user_regdate`, `user_password`, `user_email`, `user_icq`, `user_website`, `user_occ`, `user_from`, `user_interest`, `user_viewemail`, `user_sorttopics`, `user_newpwdkey`, `user_newpasswd`, `language`, `activity`, `num_topics`, `num_posts`, `user_custom1`, `user_custom2`, `user_custom3`) VALUES
(1, 'admin', '2016-03-21 19:57:12', '63a65625faeb9eaa389529847ef7eb83', 'dramane.bamba@gmail.com', '', '', '', '', '', 0, 0, '', '', 'eng', 1, 0, 0, 'usflag.gif', '', ''),
(2, 'dauphinois', '2016-03-21 20:17:53', '63a65625faeb9eaa389529847ef7eb83', 'dramane.dauphine@gmail.com', '', '', '', '', '', 0, 0, 'e62e2d36692a3b3a4b1e7c75232cc174', 'a578c8d0', 'fre', 1, 1, 2, 'dog.gif', '', '');

-- --------------------------------------------------------

--
-- Structure de la table `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `id_multimedia` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  `objet_multimedia` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_multimedia`),
  KEY `id_multimedia` (`id_multimedia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `my_users`
--

CREATE TABLE IF NOT EXISTS `my_users` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `my_users`
--

INSERT INTO `my_users` (`ID`, `name`, `pass`, `email`) VALUES
(1, 'Admin', 'xyz123', 'test@nodomain.com'),
(2, 'Paul', 'xyz123', 'test2@nodomain.com');

-- --------------------------------------------------------

--
-- Structure de la table `paiement`
--

CREATE TABLE IF NOT EXISTS `paiement` (
  `id_paiement` int(11) NOT NULL,
  `libelle_paiement` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `montant` double NOT NULL,
  `idtypeP` int(11) NOT NULL,
  `id_don` int(11) NOT NULL,
  `id_personne_ph` int(11) NOT NULL,
  `id_subvention` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL,
  PRIMARY KEY (`id_personne_ph`),
  KEY `id_paiement` (`id_paiement`),
  KEY `fk_idtypeP` (`idtypeP`),
  KEY `fk_id_don` (`id_don`),
  KEY `fk_id_subvention` (`id_subvention`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personne_morale`
--

CREATE TABLE IF NOT EXISTS `personne_morale` (
  `id_personne_moral` int(11) NOT NULL,
  `raisonsociale` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_personne_moral`),
  KEY `id_personne_moral` (`id_personne_moral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personne_physique`
--

CREATE TABLE IF NOT EXISTS `personne_physique` (
  `id_personne_ph` int(11) NOT NULL,
  `nom_personne_ph` text COLLATE utf8_unicode_ci NOT NULL,
  `prenom_personne_ph` text COLLATE utf8_unicode_ci NOT NULL,
  `adresse_personne-ph` text COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `tel` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `cp_personne_ph` text COLLATE utf8_unicode_ci NOT NULL,
  `ville_personne_ph` text COLLATE utf8_unicode_ci NOT NULL,
  `origine` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `sexe` varchar(8) COLLATE utf8_unicode_ci NOT NULL,
  `profession` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `centreinterets` text COLLATE utf8_unicode_ci NOT NULL,
  `id_adhesion` int(11) NOT NULL,
  PRIMARY KEY (`id_personne_ph`),
  KEY `id_personne_ph` (`id_personne_ph`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personne_ph_statut`
--

CREATE TABLE IF NOT EXISTS `personne_ph_statut` (
  `idpp_statut` int(11) NOT NULL,
  `id_personne_ph` int(11) NOT NULL,
  `id_statut` int(11) NOT NULL,
  KEY `idpp_statut` (`idpp_statut`),
  KEY `fk_id_statut` (`id_statut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `prelevement`
--

CREATE TABLE IF NOT EXISTS `prelevement` (
  `id_prelevement` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  `date_prelevement` date NOT NULL,
  `montant_prelevement` double NOT NULL,
  `id_cotisation` int(11) NOT NULL,
  `id_don` int(11) NOT NULL,
  PRIMARY KEY (`id_prelevement`),
  KEY `idprelevement` (`id_prelevement`),
  KEY `fk_id_cotisation` (`id_cotisation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `id_projet` int(11) NOT NULL,
  `nom_projet` text COLLATE utf8_unicode_ci NOT NULL,
  `date_debut_projet` date NOT NULL,
  `resume_projet` text COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_projet`),
  KEY `id_projet` (`id_projet`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `relance`
--

CREATE TABLE IF NOT EXISTS `relance` (
  `id_relance` int(11) NOT NULL,
  `temps_relance` int(11) NOT NULL,
  PRIMARY KEY (`id_relance`),
  KEY `id_relance` (`id_relance`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reunion_instance`
--

CREATE TABLE IF NOT EXISTS `reunion_instance` (
  `id_reunion_instance` int(11) NOT NULL,
<<<<<<< HEAD
  `liste_votant` text COLLATE utf8_unicode_ci NOT NULL,
=======
>>>>>>> bdd
  `date` date NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `id_type_reunion` int(11) NOT NULL,
  KEY `id_reunion_instance` (`id_reunion_instance`),
  KEY `fk_id_type_reunion` (`id_type_reunion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `reçu_fiscal`
--

CREATE TABLE IF NOT EXISTS `reçu_fiscal` (
  `id_recu_fiscal` int(11) NOT NULL,
  `num_reçu_fiscal` int(11) NOT NULL,
  PRIMARY KEY (`id_recu_fiscal`),
  KEY `id_recu_fiscal` (`id_recu_fiscal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `statut`
--

CREATE TABLE IF NOT EXISTS `statut` (
  `id_statut` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id_statut`),
  KEY `id_statut` (`id_statut`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `subvention`
--

CREATE TABLE IF NOT EXISTS `subvention` (
  `id_subvention` int(11) NOT NULL,
  `num_subvention` int(11) NOT NULL,
  `montant_subvention` double NOT NULL,
  `beneficiaire` text COLLATE utf8_unicode_ci NOT NULL,
  `lieu` text COLLATE utf8_unicode_ci NOT NULL,
  `nom_titulaire` text COLLATE utf8_unicode_ci NOT NULL,
  `id_projet` int(11) NOT NULL,
  `id_personne_moral` int(11) NOT NULL,
  PRIMARY KEY (`id_subvention`),
  KEY `id_subvention` (`id_subvention`),
  KEY `fk_id_projet` (`id_projet`),
  KEY `fk_id_personne_moral` (`id_personne_moral`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `typepaiement`
--

CREATE TABLE IF NOT EXISTS `typepaiement` (
  `idtypeP` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`idtypeP`),
  KEY `idtypeP` (`idtypeP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `type_reunion`
--

CREATE TABLE IF NOT EXISTS `type_reunion` (
  `id_type_reunion` int(11) NOT NULL,
  `libelle` text COLLATE utf8_unicode_ci NOT NULL,
  KEY `id_type_reunion` (`id_type_reunion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Contraintes pour les tables exportées
--

--
<<<<<<< HEAD
=======
-- Contraintes pour la table `adherent`
--
ALTER TABLE `adherent`
  ADD CONSTRAINT `fk_id_listev` FOREIGN KEY (`id_listev`) REFERENCES `listevotant` (`id_listev`);

--
>>>>>>> bdd
-- Contraintes pour la table `ca`
--
ALTER TABLE `ca`
  ADD CONSTRAINT `fk_id_membrebureau` FOREIGN KEY (`id_membrebureau`) REFERENCES `membrebureau` (`id_membrebureau`);

--
-- Contraintes pour la table `connexion`
--
ALTER TABLE `connexion`
  ADD CONSTRAINT `fk_id_personnal_moral` FOREIGN KEY (`id_personne_moral`) REFERENCES `personne_morale` (`id_personne_moral`);

--
-- Contraintes pour la table `cotisation`
--
ALTER TABLE `cotisation`
  ADD CONSTRAINT `fk_id_recu_fiscal` FOREIGN KEY (`id_recu_fiscal`) REFERENCES `reçu_fiscal` (`id_recu_fiscal`);

--
-- Contraintes pour la table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `fk_idtypeP` FOREIGN KEY (`idtypeP`) REFERENCES `typepaiement` (`idtypeP`),
  ADD CONSTRAINT `fk_id_don` FOREIGN KEY (`id_don`) REFERENCES `don` (`id_don`),
  ADD CONSTRAINT `fk_id_personne_ph` FOREIGN KEY (`id_personne_ph`) REFERENCES `personne_physique` (`id_personne_ph`),
  ADD CONSTRAINT `fk_id_subvention` FOREIGN KEY (`id_subvention`) REFERENCES `subvention` (`id_subvention`);

--
-- Contraintes pour la table `personne_ph_statut`
--
ALTER TABLE `personne_ph_statut`
  ADD CONSTRAINT `fk_id_statut` FOREIGN KEY (`id_statut`) REFERENCES `statut` (`id_statut`);

--
-- Contraintes pour la table `prelevement`
--
ALTER TABLE `prelevement`
  ADD CONSTRAINT `fk_id_cotisation` FOREIGN KEY (`id_cotisation`) REFERENCES `cotisation` (`id_cotisation`);

--
-- Contraintes pour la table `reunion_instance`
--
ALTER TABLE `reunion_instance`
  ADD CONSTRAINT `fk_id_type_reunion` FOREIGN KEY (`id_type_reunion`) REFERENCES `type_reunion` (`id_type_reunion`);

--
-- Contraintes pour la table `subvention`
--
ALTER TABLE `subvention`
  ADD CONSTRAINT `fk_id_personne_moral` FOREIGN KEY (`id_personne_moral`) REFERENCES `personne_morale` (`id_personne_moral`),
  ADD CONSTRAINT `fk_id_projet` FOREIGN KEY (`id_projet`) REFERENCES `projet` (`id_projet`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
