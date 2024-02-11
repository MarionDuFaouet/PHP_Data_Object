-- sauvegarde de ma base de données

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 08 fév. 2024 à 14:08
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `abc`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `NumeroCommande` int(11) NOT NULL,
  `Dates` date DEFAULT NULL,
  `IDServeur` int(11) NOT NULL,
  `NumeroTable` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`NumeroCommande`, `Dates`, `IDServeur`, `NumeroTable`) VALUES
(1, '2022-05-08', 1, 2),
(2, '2022-05-08', 2, 11),
(3, '2022-05-08', 4, 1),
(4, '2022-05-08', 1, 9),
(5, '2022-05-08', 2, 4),
(6, '2022-05-08', 4, 12),
(7, '2022-05-08', 1, 8),
(8, '2022-05-08', 2, 6),
(9, '2022-05-12', 4, 14),
(10, '2022-05-12', 1, 3),
(11, '2022-05-12', 2, 6),
(12, '2022-05-12', 4, 12),
(13, '2022-05-12', 1, 8),
(14, '2022-05-12', 2, 4),
(15, '2022-05-12', 4, 5),
(16, '2022-05-13', 1, 13),
(17, '2022-05-13', 2, 4),
(18, '2022-05-15', 4, 7),
(19, '2022-05-15', 4, 1),
(20, '2022-05-15', 1, 2),
(21, '2022-05-15', 2, 4),
(22, '2022-05-15', 4, 1),
(23, '2022-05-15', 1, 9),
(24, '2022-05-15', 1, 13),
(25, '2022-05-15', 1, 8),
(26, '2022-05-15', 2, 11),
(27, '2022-05-15', 4, 12);

-- --------------------------------------------------------

--
-- Structure de la table `contenir`
--

CREATE TABLE `contenir` (
  `NumeroCommande` int(11) NOT NULL,
  `RefProduit` int(11) NOT NULL,
  `Quantite` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `contenir`
--

INSERT INTO `contenir` (`NumeroCommande`, `RefProduit`, `Quantite`) VALUES
(1, 1, 4),
(2, 4, 2),
(2, 5, 2),
(2, 16, 1),
(3, 2, 3),
(3, 7, 2),
(4, 14, 1),
(5, 10, 3),
(5, 11, 2),
(5, 15, 1),
(5, 16, 1),
(6, 2, 5),
(7, 1, 2),
(7, 7, 3),
(8, 4, 1),
(8, 5, 4),
(8, 16, 2),
(9, 9, 2),
(10, 10, 1),
(10, 15, 1),
(11, 13, 3),
(12, 2, 11),
(13, 2, 1),
(13, 13, 1),
(14, 6, 2),
(14, 15, 1),
(15, 1, 2),
(15, 7, 3),
(15, 12, 3),
(16, 1, 2),
(17, 1, 2),
(17, 2, 1),
(17, 7, 3),
(17, 8, 3),
(17, 9, 2),
(18, 13, 1),
(19, 3, 3),
(19, 16, 2),
(20, 1, 6),
(20, 10, 6),
(20, 14, 2),
(21, 14, 1),
(22, 8, 3),
(22, 9, 3),
(23, 4, 4),
(23, 5, 2),
(23, 7, 6),
(24, 2, 6),
(25, 10, 3),
(25, 11, 4),
(25, 16, 4),
(26, 13, 3),
(27, 1, 4),
(27, 2, 4),
(27, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE `produit` (
  `RefProduit` int(11) NOT NULL,
  `Description` varchar(50) DEFAULT NULL,
  `PU` decimal(15,2) DEFAULT NULL
) ;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`RefProduit`, `Description`, `PU`) VALUES
(1, 'Durand', 0.00),
(2, 'Fontaine', 0.00),
(3, 'Traoré', 0.00),
(4, 'Robert', 0.00),
(5, 'Menu', 2.20),
(6, 'Menu luxe', 2.20),
(7, 'Breizh Cola', 2.20),
(8, 'Glace 2 boules', 2.20),
(9, 'Banana split', 2.20),
(10, 'Entrecôte frites', 2.20),
(11, 'Saumon courgettes', 2.20),
(12, 'Whisky', 4.80),
(13, 'Moules fraiches (au kilo)', 2.20),
(14, 'Mercurey', 2.20),
(15, 'Fixin (demi)', 2.20),
(16, 'Badoit', 2.20);

-- --------------------------------------------------------

--
-- Structure de la table `serveur`
--

CREATE TABLE `serveur` (
  `IDServeur` int(11) NOT NULL,
  `Nom` varchar(50) DEFAULT NULL,
  `Prenom` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `serveur`
--

INSERT INTO `serveur` (`IDServeur`, `Nom`, `Prenom`) VALUES
(1, 'Durand', 'Pierre'),
(2, 'Fontaine', 'Marie'),
(3, 'Traoré', 'Hamari'),
(4, 'Robert', 'Julia'),
(5, '4', '4'),
(6, '2', '4'),
(7, '4', '6'),
(8, '1', '8'),
(9, '1', '4'),
(10, '2', '6'),
(11, '2', '4'),
(12, '4', '4'),
(13, '1', '6'),
(14, '4', '4'),
(15, NULL, '4');

-- --------------------------------------------------------

--
-- Structure de la table `tables`
--

CREATE TABLE `tables` (
  `NumeroTable` int(11) NOT NULL,
  `IDServeur` int(11) DEFAULT NULL,
  `nbCouverts` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tables`
--

INSERT INTO `tables` (`NumeroTable`, `IDServeur`, `nbCouverts`) VALUES
(1, 4, 4),
(2, 1, 10),
(3, 1, 4),
(4, 2, 2),
(5, 4, 4),
(6, 2, 4),
(7, 4, 6),
(8, 1, 8),
(9, 1, 4),
(10, 2, 6),
(11, 2, 4),
(12, 4, 4),
(13, 1, 6),
(14, 4, 4);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`NumeroCommande`),
  ADD KEY `IDServeur` (`IDServeur`),
  ADD KEY `NumeroTable` (`NumeroTable`);

--
-- Index pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD PRIMARY KEY (`NumeroCommande`,`RefProduit`),
  ADD KEY `RefProduit` (`RefProduit`);

--
-- Index pour la table `produit`
--
ALTER TABLE `produit`
  ADD PRIMARY KEY (`RefProduit`);

--
-- Index pour la table `serveur`
--
ALTER TABLE `serveur`
  ADD PRIMARY KEY (`IDServeur`);

--
-- Index pour la table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`NumeroTable`),
  ADD KEY `IDServeur` (`IDServeur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `serveur`
--
ALTER TABLE `serveur`
  MODIFY `IDServeur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_2` FOREIGN KEY (`NumeroTable`) REFERENCES `tables` (`NumeroTable`);

--
-- Contraintes pour la table `contenir`
--
ALTER TABLE `contenir`
  ADD CONSTRAINT `contenir_ibfk_1` FOREIGN KEY (`NumeroCommande`) REFERENCES `commande` (`NumeroCommande`),
  ADD CONSTRAINT `contenir_ibfk_2` FOREIGN KEY (`RefProduit`) REFERENCES `produit` (`RefProduit`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
