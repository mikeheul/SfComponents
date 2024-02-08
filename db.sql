-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           5.7.33 - MySQL Community Server (GPL)
-- SE du serveur:                Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour sfcomponents
CREATE DATABASE IF NOT EXISTS `sfcomponents` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `sfcomponents`;

-- Listage de la structure de la table sfcomponents. article
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfcomponents.article : ~4 rows (environ)
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` (`id`, `title`, `text`, `img`, `alt`) VALUES
	(1, 'Test article', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Porro distinctio impedit id deleniti deserunt amet? Eius quisquam in, voluptatum maxime magni unde maiores illo iusto nulla perferendis aspernatur repellat tempora.', 'https://t4.ftcdn.net/jpg/01/11/66/41/360_F_111664168_0NFelmeU5VLhcGMoqNQGjaYvDDFtGWI7.jpg', 'img'),
	(2, 'La France', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Id maiores maxime omnis perspiciatis ipsa. Quo officia pariatur harum unde vitae fuga error iure optio? Nisi illo laborum enim quod quibusdam!', 'https://t4.ftcdn.net/jpg/06/61/31/09/360_F_661310958_wFUFnw2FFDFme5goUzCrhDBEARUkcMpM.jpg', 'img'),
	(3, 'Symfony', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Id maiores maxime omnis perspiciatis ipsa. Quo officia pariatur harum unde vitae fuga error iure optio? Nisi illo laborum enim quod quibusdam!', 'https://www.francebleu.fr/s3/cruiser-production/2023/06/3bf34c53-bdc4-4d58-9320-894b35aef672/1200x680_sc_gettyimages-892573590.jpg', 'img'),
	(4, 'Design pattern', 'Lorem', 'https://t3.ftcdn.net/jpg/06/61/95/60/360_F_661956054_AjvPOUMNlFqdxrBtRVk6OLM3yqISJ36F.jpg', 'img'),
	(5, 'Mode Symfony', 'Lorem', 'https://t4.ftcdn.net/jpg/01/96/52/31/360_F_196523185_k6LSUluqRnbrVsOskQcujOsxvnhHE87p.jpg', 'img');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;

-- Listage de la structure de la table sfcomponents. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Listage des données de la table sfcomponents.doctrine_migration_versions : ~0 rows (environ)
/*!40000 ALTER TABLE `doctrine_migration_versions` DISABLE KEYS */;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240126082130', '2024-01-26 08:21:44', 83);
/*!40000 ALTER TABLE `doctrine_migration_versions` ENABLE KEYS */;

-- Listage de la structure de la table sfcomponents. messenger_messages
CREATE TABLE IF NOT EXISTS `messenger_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue_name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`id`),
  KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  KEY `IDX_75EA56E016BA31DB` (`delivered_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table sfcomponents.messenger_messages : ~0 rows (environ)
/*!40000 ALTER TABLE `messenger_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messenger_messages` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
