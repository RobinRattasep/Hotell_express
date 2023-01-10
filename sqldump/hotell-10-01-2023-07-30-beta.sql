-- MariaDB dump 10.19  Distrib 10.5.12-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `hotell`
--

DROP TABLE IF EXISTS `hotell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotell` (
  `description` varchar(2500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(2500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotell`
--

LOCK TABLES `hotell` WRITE;
/*!40000 ALTER TABLE `hotell` DISABLE KEYS */;
INSERT INTO `hotell`(description, address) VALUES ('Accusantium eum quasi incidunt et velit ducimus et dolorem.','Janetterinne 0 986\n27879 Pohjois-Joelkoski, Ahvenanmaa'),('Quae sed et ipsum delectus.','Leatie 230 590\n45895 Länsi-Miikaniemi'),('Qui consequatur dicta maxime sequi voluptatum.','Pirttikangaskatu 02\n73863 Etelä-Teppojoki, Etelä-Savo'),('Saepe nisi minima impedit iusto accusantium id qui.','Heikkikaarre 48 718\n45458 Uusi-Christeljärvi'),('At voluptate veritatis dolores fugit explicabo enim.','Hepomäkikierros 5\n26910 Itä-Nadjaniemi, Etelä-Savo'),('Illo fugit nihil molestias vero.','Beedasilta 50 826\n63445 Pohjois-Juliusvesi'),('Aliquid iusto accusamus quibusdam voluptatum unde culpa.','Adarinne 71\n87573 Jimikoski, Varsinais-Suomi'),('Ipsum quia exercitationem necessitatibus id molestiae qui excepturi.','Eerikakierros 9 215\n06705 Alanenmäki'),('Ipsam doloribus dolores illum adipisci suscipit velit.','Kukkalakaarre 0 259\n89668 Ovaskalahti'),('Eum sapiente et deserunt labore vero doloremque.','Lucakuja 1 097\n73203 Nataliajoki');
/*!40000 ALTER TABLE `hotell` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-10  7:30:13
