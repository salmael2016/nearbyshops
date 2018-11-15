-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Jeu 15 Novembre 2018 à 14:20
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nearbyshops`
--

-- --------------------------------------------------------

--
-- Structure de la table `preferred_shops`
--

CREATE TABLE `preferred_shops` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_pref` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `shops`
--

CREATE TABLE `shops` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` text,
  `description` text,
  `distance` mediumint(9) DEFAULT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `shops`
--

INSERT INTO `shops` (`id`, `name`, `description`, `distance`, `image`) VALUES
(1, 'mus. Proin vel', 'justo nec ante. Maecenas mi felis, adipiscing', 828, 'shop1.jpg'),
(2, 'interdum', 'tellus. Nunc', 480, 'shop2.jpg'),
(3, 'eu tempor erat', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus', 468, 'shop3.jpg'),
(4, 'sollicitudin a, malesuada', 'enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit', 155, 'shop4.jpg'),
(5, 'tellus eu', 'adipiscing lobortis', 257, 'shop5.jpg'),
(6, 'quam a', 'viverra.', 829, 'shop6.jpg'),
(7, 'ac tellus. Suspendisse', 'parturient montes, nascetur ridiculus mus. Aenean', 947, 'shop7.jpg'),
(8, 'libero. Integer', 'nec ante blandit', 776, 'shop8.jpg'),
(9, 'diam. Sed diam', 'Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed', 451, 'shop9.jpg'),
(10, 'augue eu tellus.', 'luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce', 47, 'shop10.jpg'),
(11, 'ante ipsum', 'molestie sodales. Mauris blandit enim consequat purus. Maecenas libero', 858, 'shop9.jpg'),
(12, 'enim, gravida', 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus', 663, 'shop8.jpg'),
(13, 'Donec felis orci,', 'Suspendisse ac metus vitae', 922, 'shop6.jpg'),
(14, 'eu enim. Etiam', 'nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium', 304, 'shop7.jpg'),
(15, 'Donec felis', 'nec quam. Curabitur vel lectus. Cum sociis natoque penatibus et magnis dis parturient montes,', 467, 'shop4.jpg'),
(16, 'lacus. Etiam bibendum', 'ante', 39, 'shop2.jpg'),
(17, 'at,', 'Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam', 894, 'shop5.jpg'),
(18, 'nec tellus. Nunc', 'Fusce', 305, 'shop1.jpg'),
(19, 'ante blandit viverra.', 'ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh', 313, 'shop10.jpg'),
(20, 'tincidunt tempus', 'Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non', 940, 'shop3.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `unliked_shops`
--

CREATE TABLE `unliked_shops` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_unlike` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `email` varchar(80) NOT NULL,
  `country` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `address`, `email`, `country`) VALUES
(1, 'dsgsdg', 'dsgdsg', 'sfdgs', 'sgsdqg', 'sgwss', 'dgsdg@fhfh.ffdhds', 'United States'),
(2, 'salmael', 'salam1994', 'salma', 'elkhattabi', 'fklqsjf', 'salma@el.com', 'United States');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `preferred_shops`
--
ALTER TABLE `preferred_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `unliked_shops`
--
ALTER TABLE `unliked_shops`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `preferred_shops`
--
ALTER TABLE `preferred_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT pour la table `unliked_shops`
--
ALTER TABLE `unliked_shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
