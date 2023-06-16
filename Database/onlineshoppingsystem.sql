-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: onlineshoppingsystem
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `added_date` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_c0r9atamxvbhjjvy5j8da1kam` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'2020-05-16 00:46:08','admin@gmail.com','admin@123','admin');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('12916');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcart`
--

DROP TABLE IF EXISTS `tblcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `discount_price` varchar(200) DEFAULT NULL,
  `quantity` int NOT NULL,
  `total_price` varchar(200) DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `CART_CUST_FK` (`customer_id`),
  KEY `CART_PROD_FK` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcart`
--

LOCK TABLES `tblcart` WRITE;
/*!40000 ALTER TABLE `tblcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcontact`
--

DROP TABLE IF EXISTS `tblcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcontact` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL,
  `message` varchar(1000) NOT NULL,
  `name` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcontact`
--

LOCK TABLES `tblcontact` WRITE;
/*!40000 ALTER TABLE `tblcontact` DISABLE KEYS */;
INSERT INTO `tblcontact` VALUES (1,'2023-03-16 07:45:42','chetan@gmail.com','I want to do clothes inquiry','Chetan Kadam','Inquiry');
/*!40000 ALTER TABLE `tblcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcustomer`
--

DROP TABLE IF EXISTS `tblcustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcustomer` (
  `id` int DEFAULT NULL,
  `address` varchar(255) NOT NULL,
  `added_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(100) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `password` varchar(60) NOT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `valid` varchar(50) DEFAULT NULL,
  `pin_code` varchar(255) NOT NULL,
  UNIQUE KEY `UK_dwk6cx0afu8bs9o4t536v1j5v` (`email`),
  UNIQUE KEY `UK_o3uty20c6csmx5y4uk2tc5r4m` (`phone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcustomer`
--

LOCK TABLES `tblcustomer` WRITE;
/*!40000 ALTER TABLE `tblcustomer` DISABLE KEYS */;
INSERT INTO `tblcustomer` VALUES (12446,'Pune','2023-03-16 07:59:23','chetan@gmail.com','Male','Chetan Kadam','12345678963','9874123698','LNE','411033'),(12526,'Shankar Kalate Nagar, Wakad, Pune','2023-03-14 13:13:12','kadamk03@gmail.com','Male','Kishor','java@1991','7276763516','U92','411033');
/*!40000 ALTER TABLE `tblcustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfeedback`
--

DROP TABLE IF EXISTS `tblfeedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfeedback` (
  `fid` int NOT NULL AUTO_INCREMENT,
  `cname` varchar(100) DEFAULT NULL,
  `feedback` varchar(400) DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfeedback`
--

LOCK TABLES `tblfeedback` WRITE;
/*!40000 ALTER TABLE `tblfeedback` DISABLE KEYS */;
INSERT INTO `tblfeedback` VALUES (4,'Kishor Kadam','Awesome shopping website portal.',3.5,'2023-03-14 13:57:57','2023-03-14 19:27:57');
/*!40000 ALTER TABLE `tblfeedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorders`
--

DROP TABLE IF EXISTS `tblorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_no` int DEFAULT NULL,
  `customer_name` varchar(200) DEFAULT NULL,
  `mobile_number` varchar(100) DEFAULT NULL,
  `email_id` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `address_type` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `product_name` varchar(400) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `product_price` varchar(100) DEFAULT NULL,
  `product_selling_price` varchar(100) DEFAULT NULL,
  `product_total_price` varchar(100) DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `order_date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `payment_mode` varchar(100) DEFAULT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorders`
--

LOCK TABLES `tblorders` WRITE;
/*!40000 ALTER TABLE `tblorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblproduct`
--

DROP TABLE IF EXISTS `tblproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblproduct` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` varchar(100) DEFAULT NULL,
  `code` varchar(5) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `description` varchar(500) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image_name` varchar(400) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `mrp_price` varchar(200) DEFAULT NULL,
  `product_category` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h3w5r1mx6d0e5c6um32dgyjej` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblproduct`
--

LOCK TABLES `tblproduct` WRITE;
/*!40000 ALTER TABLE `tblproduct` DISABLE KEYS */;
INSERT INTO `tblproduct` VALUES (1,'Active','M8F','2020-08-25 07:07:52','Men blazer is a type of jacket resembling a suit jacket, but cut more casually. A blazer is generally distinguished from a sport coat as a more formal garment and tailored from solid colour fabrics. Blazers often have naval-style metal buttons to reflect their origin as jackets worn by boating club members.','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/18.png','18.png','Mens Blazer','4200','4575','Mens Wear Clothes'),(14,'Active','4SR','2020-08-25 07:32:12','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/11.png','11.png','Air Tshirt Black','320','360','Womens Wear Clothes'),(15,'Active','REI','2020-08-25 07:32:52','Next Blue Blazer','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/12.png','12.png','Next Blue Blazer','5400','6000','Mens Wear Clothes'),(16,'Active','90F','2020-08-25 07:33:28','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/13.png','13.png','Air Tshirt Black','720','900','Womens Wear Clothes'),(17,'Active','SS8','2020-08-25 07:34:08','Maroon Puma Tshirt','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/14.png','14.png','Maroon Puma Tshirt','700','950','Womens Wear Clothes'),(18,'Active','L8L','2020-08-25 07:34:58','Multicoloured TShirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/15.png','15.png','Multicoloured TShirts','250','300','Mens Wear Clothes'),(19,'Active','9NU','2020-08-25 07:35:36','Air Tshirt Black','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/16.png','16.png','Air Tshirt Black','350','400','Womens Wear Clothes'),(20,'Active','WMI','2020-08-25 07:36:09','Dresses','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/17.png','17.png','Dresses','780','850','Womens Wear Clothes'),(21,'Active','KC1','2020-08-25 07:36:48','Wedding Blazers','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/18.png','18.png','Wedding Blazers','2800','3000','Mens Wear Clothes'),(22,'Active','APD','2020-08-25 07:38:46','Dresses','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g1.png','g1.png','Dresses','740','850','Womens Wear Clothes'),(23,'Active','X0V','2020-08-25 07:39:42','Shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g2.png','g2.png','Shirts','625','650','Mens Wear Clothes'),(24,'Active','ITB','2020-08-25 07:40:28','Shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/g3.png','g3.png','Shirts','900','1150','Mens Wear Clothes'),(25,'Active','ULA','2020-08-25 07:41:24','T shirts','F:/project-workspace/OnlineShoppingSystem/WebContent/uploads/mw2.png','mw2.png','T shirts','475','500','Mens Wear Clothes');
/*!40000 ALTER TABLE `tblproduct` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-16 19:36:55
