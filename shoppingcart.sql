-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: shopping_cart
-- ------------------------------------------------------
-- Server version	8.0.25

use shoppingcart;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (11,'admin','123'),(12,'admin1','admin'),(13,'admin','admin123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `discount_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (89,'wooden chair','1',5000,20,'admin','https://cdn.xxl.thumbs.canstockphoto.com/chair-stock-image_csp5611096.jpg',28);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(45) NOT NULL,
  `category_type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'bulb','light'),(2,'Cell phone ','Accessories ');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(45) NOT NULL,
  `product_type` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `product_desc` varchar(45) NOT NULL,
  `stocks` int NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (32,'black chair','chair',599,'bed',96,'https://images.woodenstreet.de/image/cache/data%2Foffice-chair%2Fblack-and-red-designer-gaming-chair%2Ffront-408x408.jpg'),(33,'brown chair','chair',499,'bed',100,'https://st.depositphotos.com/1327777/2164/i/600/depositphotos_21643105-stock-photo-chair-in-room.jpg'),(34,'bunk chair','chair',666,'bed',97,'https://content.jdmagicbox.com/comp/coimbatore/t9/0422px422.x422.190505193007.u5t9/catalogue/sastika-chairs-and-services-gandhipuram-coimbatore-coimbatore-chair-repair-and-services-yre929sstl.jpg?clr=382e38'),(35,'super bed','bed',899,'bed',98,'https://www.ulcdn.net/opt/www.ulcdn.net/images/taxon_images/taxon/11150/taxon_col_2/King-size-beds.jpg'),(36,'white sofa','sofa',10000,'bed',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmEWSvG3G6uZ_gcwEOXEL7Y3J6sTduH8OAF3AdBeXggcjw_wNg-BP6oEmQSN9Dmd-xvtY&usqp=CAU'),(37,'armchair','chair',5999,'nice chair',98,'https://www.ulcdn.net/images/products/297356/product/Genoa_Floral_Wing_Chair_LP.jpg?1591871194'),(38,'traditional sofa','sofa',5999,'nice chair',100,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5UYHFQI--LqGFP_PCm_g9WEent2rywfLqxA&usqp=CAU'),(39,'brown sofa','sofa',2999,'nice chair',100,'https://st.hzcdn.com/simgs/pictures/living-rooms/u-shape-sectional-sleeper-sofa-alpine-by-nordholtz-5-695-mig-furniture-design-inc-img~8c0105ed0a1f15f0_4-2497-1-7d105a5.jpg'),(40,'folding  chair','chair',1999,'nice chair',99,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSh8sVDwV0p42j3ggWL725-pzh0v4GxFtLeQ&usqp=CAU'),(41,'wing','chair',9999,'nice chair',99,'https://cdn4.thearmchair.in/spree/images/large/FRTBDT11WN10015/clovis-capra-6-seater-dining-table-set-FRTBDT11WN10015-lifestyle.jpg?1502916601'),(42,'egg chair','chair',9999,'nice chair',100,'https://stylesatlife.com/wp-content/uploads/2021/03/Small-Dining-Table-Design-1.jpg.webp'),(43,'stool','chair',9999,'nice ',65,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3AtVGkgpOuEBFoseOliTIxmnR6IuUokQgLQ&usqp=CAU'),(44,'dining set','chair',9999,'nice ',99,'https://i.ytimg.com/vi/5MybWq5b2is/maxresdefault.jpg'),(47,'sofa and bed','beds',3000,'nice ',99,'https://ii1.pepperfry.com/media/catalog/product/t/i/1600x800/tivoli-sofa-cum-bed-in-tan-colour-by-vittoria-tivoli-sofa-cum-bed-in-tan-colour-by-vittoria-gl1tqg.jpg'),(48,'Single Size Bed','beds',2000,'nice ',98,'https://ii1.pepperfry.com/media/catalog/product/c/l/800x880/clara-upholstered-single-size-bed-in-natural-finish-clara-upholstered-single-size-bed-in-natural-fin-dsofog.jpg'),(49,'Bunk Size Bed','beds',8000,'nice ',100,'https://m.media-amazon.com/images/I/71gtNu-M76L._SL1280_.jpg'),(50,'Modern Bed','beds',8000,'nice ',100,'https://cdn.trendir.com/wp-content/uploads/2017/07/low-mod-loft-king-contemporary.jpg'),(51,'White chair','chair',299,'nice',99,'https://www.ikea.com/in/en/images/products/skruvsta-swivel-chair-ysane-white__0724712_pe734595_s5.jpg'),(52,'water bed','bed',200,'water bed',100,'https://5.imimg.com/data5/XB/RQ/UW/SELLER-18801875/water-bed-500x500.jpg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_log`
--

DROP TABLE IF EXISTS `sales_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `product_price` int NOT NULL,
  `quantity` int NOT NULL,
  `date` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_log`
--

LOCK TABLES `sales_log` WRITE;
/*!40000 ALTER TABLE `sales_log` DISABLE KEYS */;
INSERT INTO `sales_log` VALUES (15,'anu','dinning',999,1,'10-8-2022-12:55:03'),(16,'san','chair',568,1,'10-8-2022-15:35:7'),(17,'ram','bed',399,1,'10-8-2022-18:27:22'),(18,'mohan','bed',499,1,'10-8-2022-18:27:22'),(19,'vikas','chair',599,1,'10-8-2022-18:30:22'),(20,'priya','chair',899,1,'10-8-2022-18:30:22'),(27,'vani','dinning',699,1,'10-8-2022-18:40:22'),(28,'amju','bed',999,1,'10-8-2022-18:40:22'),(29,'shetty','bed',1000,1,'10-8-2022-18:40:22'),(30,'mini','chair',699,1,'10-8-2022-18:40:22');
/*!40000 ALTER TABLE `sales_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--


DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'john','admin','john123'),(3,'romo','admin','romo123'),(6,'sanju','user','sanj1122'),(14,'admin','admin','admin123'),(17,'user1','user','user123'),(19,'sanjana','user','sanj1122');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `product_price` float NOT NULL,
  `quantity` int NOT NULL,
  `total_amt` float NOT NULL,
  `username` varchar(45) NOT NULL,
  `img_url` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (10,'white sofa',1,4999,4979,'admin','https://i.ytimg.com/vi/5MybWq5b2is/maxresdefault.jpg\''),(14,'Leather Sofa',1,5999,5979,'sanju','https://st.hzcdn.com/simgs/pictures/living-rooms/u-shape-sectional-sleeper-sofa-alpine-by-nordholtz-5-695-mig-furniture-design-inc-img~8c0105ed0a1f15f0_4-2497-1-7d105a5.jpg'),(15,'Single Size Bed',1,2000,1980,'san','https://ii1.pepperfry.com/media/catalog/product/c/l/800x880/clara-upholstered-single-size-bed-in-natural-finish-clara-upholstered-single-size-bed-in-natural-fin-dsofog.jpg'),(16,'folding  chair',1,1999,1979,'sanju','https://cdn.decoist.com/wp-content/uploads/2016/10/Ingenious-design-of-the-sofa-combines-the-classic-chaise-lounge-form-with-the-comfort-of-a-couch.jpg'),(17,'Bunk Size Bed',1,8000,7980,'sanju','https://m.media-amazon.com/images/I/71gtNu-M76L._SL1280_.jpg');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 10-8-2022 22:39:43
