-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 30 nov. 2022 à 21:13
-- Version du serveur : 8.0.27
-- Version de PHP : 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `altansia`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE `actualite` (
  `id` int NOT NULL,
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style_img` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `actualite`
--

INSERT INTO `actualite` (`id`, `section`, `text`, `image`, `titre`, `style_img`) VALUES
(1, 'actualite', '\r\nALTANSIA S.A.S. est un cabinet de conseil en innovation spécialisé sur les technologies de convergence Web, Business Intelligence et Big Data. Elle intervient également sur vos problématiques liées à la Cyber-sécurité.', 'assets/img/altansia.png', 'ALTANSIA', '66%'),
(2, 'actualite', 'Classement des entreprises qui recrutent le plus de profils en data', 'assets/img/histoire.png', 'CLASSEMENT ALTANSIA', '80%'),
(4, 'actualite', 'Pour relever le défi de la transformation digitale, la SNCF mise sur les IoT et le Big Data…\r\nD’ici 2020, la société entend permettre à ses usagers d’utiliser un réseau Wi-Fi à bord de ses trains.\r\nAinsi, grâce aux capteurs présents sur les rails, el', 'assets/img/sncf.png', 'À vitesse grand V, vers le futur !', '88%'),
(5, 'valeur', 'savoir-faire', 'assets/like.png', NULL, NULL),
(6, 'valeur', 'Expérience', 'assets/experience.png', NULL, NULL),
(7, 'valeur', 'Ambition', 'assets/growth.png', NULL, NULL),
(8, 'valeur', 'Succès', 'assets/trust.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `base`
--

CREATE TABLE `base` (
  `id` int NOT NULL,
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `base`
--

INSERT INTO `base` (`id`, `section`, `image`, `adresse`, `path`) VALUES
(2, 'logo', 'assets/img/altansia.png', NULL, NULL),
(6, 'twitter', NULL, NULL, 'https://twitter.com/altansia'),
(7, 'linkedIn', NULL, NULL, 'https://www.linkedin.com/company/altansia/mycompany/verification/'),
(8, 'adresse', 'assets/map.png', '8 rue Philibert Delorme 75017 PARIS', 'https://goo.gl/maps/BvuStz1NcnPPiMmS6');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int NOT NULL,
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `titre` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `section`, `image`, `text`, `titre`) VALUES
(1, 'section1', 'assets/big-data2.png', 'Big Data', 'Apporter notre conseil et notre\n            expertise en réponse à vos enjeux métiers en matière de :'),
(2, 'section1', 'assets/business-intelligence.png', 'Business Intelligence', NULL),
(3, 'section1', 'assets/web2.png', 'Web', NULL),
(4, 'section1', 'assets/analysis.png', 'Analytics', NULL),
(5, 'section1', 'assets/data-management.png', 'Data management', NULL),
(6, 'section2', 'assets/ingenieur.png', 'Chef de Projets', 'Mobiliser nos meilleurs talents :'),
(7, 'section2', 'assets/business-analyst.png', 'Business Analysts', NULL),
(8, 'section2', 'assets/expert.png', 'Experts', ''),
(9, 'section2', 'assets/programmeur.png', 'Ingénieurs Etudes et Développement', NULL),
(10, 'section3', 'assets/img/cli.png', NULL, 'Nos clients'),
(11, 'section3', 'assets/img/cli2.jfif', NULL, NULL),
(12, 'section3', 'assets/img/cli3.png', NULL, NULL),
(13, 'section3', 'assets/img/cli4.png', NULL, NULL),
(14, 'section3', 'assets/img/cli5.jfif', NULL, NULL),
(15, 'section3', 'assets/img/cli6.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `offre`
--

CREATE TABLE `offre` (
  `id` int NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(3000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `offre`
--

INSERT INTO `offre` (`id`, `titre`, `text`, `email`) VALUES
(1, 'Consultant(e) décisionnel', 'Sous la responsabilité du Chef de Projet, tu es amené(e) à appréhender le métier de consultant en Business Intelligence autour de la mise en place d’un système d’aide à la décision mis à disposition de la direction d’une entreprise. Au sein d’un centre de service pour un de nos clients de la distribution, tu as pour mission de :\r\n• Collaborer sur les sujets de BI et Big data afin de répondre aux problématiques de gestion de l’approvisionnement, des offres produit et de la fidélité client. En contribution de l’équipe CGI, tu découvres :\r\n• Le Big Data au travers du développement de l’Enterprise Data Hub basé sur les technologies Talend Big Data, Hive, Impala et Spark\r\n• La BI au travers de la maintenance du Système d’Information Décisionnel basée sur les technologies Oracle Exadata, Informatica et MicroStrategy Qualités requises pour réussir dans ce rôle :\r\n• Tu es en dernière année de cycle d’ingénieur ou de Licence\r\n• Tu maitrises le langage SQL\r\n• Tu possèdes une connaissance des principes de l’informatique décisionnelle.\r\n• Tu apportes tes idées pour résoudre les projets, tu es autonome, rigoureux et adaptable, à l’écoute, et possèdes un esprit critique.\r\n• La connaissance d’une technologie d’intégration de données est un plus\r\n ', 'yasmineharti06@gmail.com'),
(2, 'Scrum master', 'La prestation se déroulera dans le cadre du projet Programme XXX. Le projet est ambitieux et une deuxième squad agile va être crée pour assurer un nouveau chantier sur la souscription des contrats d\'assurance. Dans ce cadre, la prestation consiste à contribuer à/aux\r\n•Contributions au fonctionnement en mode Agile de l\'entité projet en assistance avec le Centre Agile\r\n•Suivi/gestion des cérémonies (daily, poker planning, sprint planning, grooming, rétro, ...)\r\n•Gestion/suivi du backlog\r\n•Assistance du Product Owner dans la gestion du produit / service et la priorisation du backlog\r\n•Gestion de la visibilité sur l\'avancée des travaux au travers des indicateurs Agile\r\nEn partenariat avec le PO, définir les priorités du métier afin d\'établir la Roadmap qui sera ensuite traduite en release applicative La liste des livrables attendus sont Estimation des User stories en story points Priorisation des Users stories du backlog Sprint retrospectives documentées (DO/DON\'T) KPIs ((burn rate, velocité, ...) Définition au préalable du périmètre défini pour chaque sprint Suivi projet Support aux comités, suivi du planning, suivi du budget, documentation, suivi de l\'entité, respect qualité.', 'yasmineharti06@gmail.com'),
(3, 'Consultant(e) décisionnel', 'Sous la responsabilité du Chef de Projet, tu es amené(e) à appréhender le métier de consultant en Business Intelligence autour de la mise en place d’un système d’aide à la décision mis à disposition de la direction d’une entreprise. Au sein d’un centre de service pour un de nos clients de la distribution, tu as pour mission de :\r\n• Collaborer sur les sujets de BI et Big data afin de répondre aux problématiques de gestion de l’approvisionnement, des offres produit et de la fidélité client. En contribution de l’équipe CGI, tu découvres :\r\n• Le Big Data au travers du développement de l’Enterprise Data Hub basé sur les technologies Talend Big Data, Hive, Impala et Spark\r\n• La BI au travers de la maintenance du Système d’Information Décisionnel basée sur les technologies Oracle Exadata, Informatica et MicroStrategy Qualités requises pour réussir dans ce rôle :\r\n• Tu es en dernière année de cycle d’ingénieur ou de Licence\r\n• Tu maitrises le langage SQL\r\n• Tu possèdes une connaissance des principes de l’informatique décisionnelle.\r\n• Tu apportes tes idées pour résoudre les projets, tu es autonome, rigoureux et adaptable, à l’écoute, et possèdes un esprit critique.\r\n• La connaissance d’une technologie d’intégration de données est un plus\r\n• La maîtrise de la programmation orientée objet est un plus (.Net ou JEE)', 'yasmineharti06@gmail.com'),
(4, 'Scrum master', 'La prestation se déroulera dans le cadre du projet Programme XXX. Le projet est ambitieux et une deuxième squad agile va être crée pour assurer un nouveau chantier sur la souscription des contrats d\'assurance. Dans ce cadre, la prestation consiste à contribuer à/aux\r\n•Contributions au fonctionnement en mode Agile de l\'entité projet en assistance avec le Centre Agile\r\n•Suivi/gestion des cérémonies (daily, poker planning, sprint planning, grooming, rétro, ...)\r\n•Gestion/suivi du backlog\r\n•Assistance du Product Owner dans la gestion du produit / service et la priorisation du backlog\r\n•Gestion de la visibilité sur l\'avancée des travaux au travers des indicateurs Agile\r\nEn partenariat avec le PO, définir les priorités du métier afin d\'établir la Roadmap qui sera ensuite traduite en release applicative La liste des livrables attendus sont Estimation des User stories en story points Priorisation des Users stories du backlog Sprint retrospectives documentées (DO/DON\'T) KPIs ((burn rate, velocité, ...) Définition au préalable du périmètre défini pour chaque sprint Suivi projet Support aux comités, suivi du planning, suivi du budget, documentation, suivi de l\'entité, respect qualité', 'yasmineharti06@gmail.com'),
(5, 'Candidature', 'Candidature spontanée', 'yasmineharti06@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `partenaire`
--

CREATE TABLE `partenaire` (
  `id` int NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `partenaire`
--

INSERT INTO `partenaire` (`id`, `image`) VALUES
(1, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/1.png'),
(2, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/2.png'),
(3, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/3.png'),
(4, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/4.png'),
(5, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/5.png'),
(6, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/6.png'),
(7, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/7.png'),
(8, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/1.png'),
(9, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/2.png'),
(10, 'https://s3-us-west-2.amazonaws.com/s.cdpn.io/557257/3.png');

-- --------------------------------------------------------

--
-- Structure de la table `qui_sommes_nous`
--

CREATE TABLE `qui_sommes_nous` (
  `id` int NOT NULL,
  `section` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titre` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `libelle` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `qui_sommes_nous`
--

INSERT INTO `qui_sommes_nous` (`id`, `section`, `image`, `text`, `titre`, `libelle`) VALUES
(1, 'qsn-1', '', 'ALTANSIA S.A.S. est un cabinet de conseil en innovation spécialisé sur les technologies de convergence Web, Business Intelligence et Big Data. Elle intervient également sur vos problématiques liées à la Cyber-sécurité.', 'A propos de', 'Nous'),
(2, 'qsn-2', 'https://i.ibb.co/qpz1hvM/About-us.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'Lorem ipsum dolor sit amet, consectetur', NULL),
(3, 'CEO', 'assets/img/yvan.jfif', '', 'Yvan petton', 'CEO'),
(4, 'CEO', 'assets/img/david.jfif', '', 'David Hattab', 'Product Manager'),
(5, 'temoignage', NULL, '“ J’ai été séduit par la société ALTANSIA, de par son positionnement innovant me permettant de réaliser des missions enrichissantes mais aussi d’apporter mes compétences pour les projets internes de R&D, sur les technologies mobiles et de sécurité des données . ”', 'Y.G., CHEF DE PROJET MOBILITÉ.', NULL),
(6, 'temoignage', NULL, '“Altansia a su apporter son expertise en matière de modélisation, nous permettant ainsi de construire un premier socle applicatif solide, évolutif et répondant parfaitement aux besoins de nos clients internes ”', 'X.D., DIRECTION INNOVATION.', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `base`
--
ALTER TABLE `base`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `offre`
--
ALTER TABLE `offre`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `partenaire`
--
ALTER TABLE `partenaire`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `qui_sommes_nous`
--
ALTER TABLE `qui_sommes_nous`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actualite`
--
ALTER TABLE `actualite`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `base`
--
ALTER TABLE `base`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `offre`
--
ALTER TABLE `offre`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `partenaire`
--
ALTER TABLE `partenaire`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `qui_sommes_nous`
--
ALTER TABLE `qui_sommes_nous`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
