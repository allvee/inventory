/*
SQLyog Enterprise - MySQL GUI v8.14 
MySQL - 5.5.19 : Database - inventory_one
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`inventory_one` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `inventory_one`;

/*Table structure for table `brand` */

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `brand_status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`brand_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `brand` */

insert  into `brand`(`brand_id`,`category_id`,`brand_name`,`brand_status`) values (1,1,'Finibus','active'),(2,1,'Lorem','active'),(3,1,'Ipsum','active'),(4,8,'Dolor','active'),(5,8,'Amet','active'),(6,6,'Aliquam','active'),(7,6,'Maximus','active'),(8,10,'Venenatis','active'),(9,10,'Ligula','active'),(10,3,'Vitae','active'),(11,3,'Auctor','active'),(12,5,'Luctus','active'),(13,5,'Justo','active'),(14,2,'Phasellus','active'),(15,2,'Viverra','active'),(16,4,'Elementum','active'),(17,4,'Odio','active'),(18,7,'Tellus','active'),(19,7,'Curabitur','active'),(20,9,'Commodo','active'),(21,9,'Nullam','active'),(22,11,'Quisques','active'),(24,11,'XYZ','active');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(250) NOT NULL,
  `category_status` enum('active','inactive') NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`category_id`,`category_name`,`category_status`) values (1,'LED Bulb','active'),(2,'LED Lights','active'),(3,'LED Down Lights','active'),(4,'LED Panel Light','active'),(5,'LED Lamp','active'),(6,'LED Concealed Light','active'),(7,'LED Spot Light','active'),(8,'LED Ceiling Light','active'),(9,'LED Tube Light','active'),(10,'LED Driver','active'),(11,'Led Floods Light','active'),(13,'LED Outdoor Lighting','active'),(14,'LED Indoor Lights','active');

/*Table structure for table `inventory_order` */

DROP TABLE IF EXISTS `inventory_order`;

CREATE TABLE `inventory_order` (
  `inventory_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `inventory_order_total` double(10,2) NOT NULL,
  `inventory_order_date` date NOT NULL,
  `inventory_order_name` varchar(255) NOT NULL,
  `inventory_order_address` text NOT NULL,
  `payment_status` enum('cash','credit') NOT NULL,
  `inventory_order_status` varchar(100) NOT NULL,
  `inventory_order_created_date` date NOT NULL,
  PRIMARY KEY (`inventory_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

/*Data for the table `inventory_order` */

insert  into `inventory_order`(`inventory_order_id`,`user_id`,`inventory_order_total`,`inventory_order_date`,`inventory_order_name`,`inventory_order_address`,`payment_status`,`inventory_order_status`,`inventory_order_created_date`) values (1,7,4939.20,'2017-11-08','David Harper','3188 Straford Park\r\nHarold, KY 41635','credit','active','2017-11-08'),(2,7,1310.40,'2017-11-08','Trevor Webster','4275 Indiana Avenue\r\nHonolulu, HI 96816','cash','active','2017-11-08'),(3,6,265.65,'2017-11-08','Russell Barrett','4687 Powder House Road\r\nJupiter, FL 33478','cash','active','2017-11-08'),(4,6,1546.80,'2017-11-08','Doloris Turner','3057 Collins Avenue\r\nWesterville, OH 43081','credit','active','2017-11-08'),(5,5,1409.00,'2017-11-08','Georgette Blevins','863 Simpson Avenue\r\nSteelton, PA 17113','cash','active','2017-11-08'),(6,5,558.90,'2017-11-08','Nancy Brook','3460 Viking Drive\r\nBarnesville, OH 43713','credit','active','2017-11-08'),(7,4,1286.25,'2017-11-08','Joseph Smith','190 Metz Lane\r\nCharlestown, MA 02129','cash','active','2017-11-08'),(8,4,1520.00,'2017-11-08','Maria Lafleur','3878 Elkview Drive\r\nPort St Lucie, FL 33452','credit','active','2017-11-08'),(9,4,1604.00,'2017-11-08','David Smith','4757 Little Acres Lane\r\nLoraine, IL 62349','cash','active','2017-11-08'),(10,3,1724.80,'2017-11-08','Michelle Hayes','1140 C Street\r\nWorcester, MA 01609','cash','active','2017-11-08'),(11,3,1859.40,'2017-11-08','Brenna Hamilton','2845 Davis Avenue\r\nPetaluma, CA 94952','cash','active','2017-11-08'),(12,3,2038.40,'2017-11-08','Robbie McKenzie','3016 Horizon Circle\r\nEatonville, WA 98328','credit','active','2017-11-08'),(13,2,573.00,'2017-11-08','Jonathan Allen','2426 Evergreen Lane\r\nAlhambra, CA 91801','cash','active','2017-11-08'),(14,2,1196.35,'2017-11-08','Mildred Paige','3167 Oakway Lane\r\nReseda, CA 91335','cash','active','2017-11-08'),(15,2,1960.00,'2017-11-08','Elva Lott','4032 Aaron Smith Drive\r\nHarrisburg, PA 17111','credit','active','2017-11-08'),(16,2,2700.00,'2017-11-08','Eric Johnson','616 Devils Hill Road\r\nJackson, MS 39213','cash','active','2017-11-08'),(17,1,5615.20,'2017-11-09','Doris Oliver','2992 Sycamore Fork Road Hopkins, MN 55343','cash','active','2017-11-09'),(26,1,2278.50,'2017-11-27','Janet Richardsons','4799 Ryder Avenue Everett, WA 98210','credit','inactive','2017-11-27');

/*Table structure for table `inventory_order_product` */

DROP TABLE IF EXISTS `inventory_order_product`;

CREATE TABLE `inventory_order_product` (
  `inventory_order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `inventory_order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL,
  PRIMARY KEY (`inventory_order_product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

/*Data for the table `inventory_order_product` */

insert  into `inventory_order_product`(`inventory_order_product_id`,`inventory_order_id`,`product_id`,`quantity`,`price`,`tax`) values (3,1,1,10,141.00,12.00),(4,1,3,4,800.00,5.00),(5,2,2,3,350.00,12.00),(6,2,17,2,60.00,12.00),(7,3,15,1,125.00,5.00),(8,3,17,2,60.00,12.00),(12,4,18,4,90.00,12.00),(13,4,20,3,100.00,18.00),(14,4,1,5,141.00,12.00),(15,5,4,2,550.00,12.00),(16,5,10,1,150.00,18.00),(17,6,8,5,15.00,18.00),(18,6,7,2,210.00,12.00),(19,7,16,7,175.00,5.00),(23,8,19,5,120.00,18.00),(24,8,11,5,85.00,12.00),(25,8,12,5,60.00,12.00),(26,9,13,3,200.00,18.00),(27,9,9,2,400.00,12.00),(28,10,9,3,400.00,12.00),(29,10,11,4,85.00,12.00),(30,11,6,6,250.00,15.00),(31,11,12,2,60.00,12.00),(32,12,2,4,350.00,12.00),(33,12,7,2,210.00,12.00),(34,13,18,3,90.00,12.00),(35,13,7,1,210.00,12.00),(36,13,8,2,15.00,18.00),(37,14,6,2,250.00,15.00),(38,14,13,1,200.00,18.00),(39,14,16,1,175.00,5.00),(40,14,17,3,60.00,12.00),(41,15,2,5,350.00,12.00),(42,16,4,4,550.00,12.00),(43,16,13,1,200.00,18.00),(46,17,21,2,500.00,18.00),(47,17,3,5,800.00,5.00),(48,17,7,1,210.00,12.00),(49,0,23,5,30.00,12.00),(50,0,12,5,60.00,12.00),(51,0,16,5,175.00,5.00),(52,0,6,5,250.00,15.00),(53,0,16,5,175.00,5.00),(54,0,7,5,210.00,12.00),(55,0,7,5,210.00,12.00),(56,0,7,5,210.00,12.00),(57,25,14,5,250.00,18.00),(58,25,11,5,85.00,12.00),(79,26,16,6,175.00,5.00),(80,26,7,5,210.00,12.00);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(300) NOT NULL,
  `product_description` text,
  `product_quantity` int(11) NOT NULL,
  `product_unit` varchar(150) NOT NULL,
  `product_base_price` double(10,2) DEFAULT '0.00',
  `product_tax` decimal(4,2) DEFAULT '0.00',
  `product_minimum_order` double(10,2) DEFAULT NULL,
  `product_enter_by` int(11) NOT NULL,
  `product_status` enum('active','inactive') DEFAULT NULL,
  `product_date` date NOT NULL,
  `product_serial_number` varchar(300) DEFAULT NULL,
  `product_vendor_name` varchar(300) DEFAULT NULL,
  `product_assets_id_hq` varchar(300) DEFAULT NULL,
  `product_assets_number` varchar(300) DEFAULT NULL,
  `product_type` varchar(300) DEFAULT NULL,
  `product_usd_price` decimal(10,2) DEFAULT '0.00',
  `product_project_name` varchar(300) DEFAULT NULL,
  `product_room` varchar(300) DEFAULT NULL,
  `product_location` varchar(300) DEFAULT NULL,
  `product_district` varchar(300) DEFAULT NULL,
  `product_usd_cutoff` varchar(300) DEFAULT NULL,
  `product_condition` varchar(300) DEFAULT NULL,
  `product_remarks` text,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`product_id`,`category_id`,`brand_id`,`product_name`,`product_description`,`product_quantity`,`product_unit`,`product_base_price`,`product_tax`,`product_minimum_order`,`product_enter_by`,`product_status`,`product_date`,`product_serial_number`,`product_vendor_name`,`product_assets_id_hq`,`product_assets_number`,`product_type`,`product_usd_price`,`product_project_name`,`product_room`,`product_location`,`product_district`,`product_usd_cutoff`,`product_condition`,`product_remarks`) values (1,1,1,'4W LED Bulb','Base Type	B22, E27\r\nBulb Material	Aluminium\r\nItem Width	5 (cm)\r\nItem Height	10 (cm)\r\nItem Weight	0.07 (kg)',100,'Nos',141.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,3,'17W B22 LED Bulb','Item Height	14.2 (cm)\r\nColor Temperature (Kelvin)	6500\r\nItem Weight	0.19 (kg)\r\nBulb Material	Aluminium\r\nBase Color	Aluminium\r\nVoltage	240\r\nUsages	Household, Commercial, Kitchen',150,'Nos',350.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,8,5,'18W LED Ceiling Light','Round Ceiling Light 18w',75,'Nos',800.00,'5.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,8,4,'Round LED Ceiling Light','Relying on our expertise in this domain, we are into offering Round LED Ceiling Light.	',50,'Nos',550.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,6,6,'7W LED Concealed Light','Dimension \'3\" \'\r\n50000 hours burning life\r\ncost effective\r\nhigh quality led',85,'Nos',240.00,'15.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,7,'9w LED Concealed Light','dimension \'3\" \'\r\n50000 hours burning life\r\ncost effective\r\nhigh quality led',65,'Nos',250.00,'15.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,10,9,'24W Street Light Led Driver','Dc Voltage	36v\r\nRated Current	600ma\r\nRated Power	22w',120,'Nos',210.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,10,8,'BP1601 ICs','Backed by immense industry-experience & latest designing techniques, we are engaged in providing BP1601 ICs.',200,'Nos',15.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,3,11,'5W LED Square Downlight','Wattage: 5 Watt\r\nInput Voltage: 150V to 265V, 50/60Hz\r\nLumens: 500 lumen (approx)\r\nPower Factor: 0.90pf',50,'Nos',400.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,3,10,'10W LED Square Downlight','Wattage: 10 Watt\r\nInput Voltage: 150V to 265V, 50/60Hz\r\nLumens: 1000 lumen (approx)\r\nPower Factor: 0.90pf',40,'Nos',150.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,5,13,' 9w Deluxe LED Lamp','Lighting Color	Cool Daylight\r\nBase Type	B22',100,'Nos',85.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,5,12,'5w LED Lamp','Lighting Color	Cool Daylight\r\nBody Material	Aluminum\r\nBase Type	B22',75,'Nos',60.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,2,14,'15W Big LED Bay Light','Wattage: 15 Watt\r\nInput Voltage: 100V - 265V, 50/60Hz\r\nLumens: 1500 lumen (approx)\r\nPower Factor: 0.90pf',60,'Nos',200.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,2,15,'15W Small LED Bay Light','Wattage: 15 Watt\r\nInput Voltage: 100V -265V, 50/60Hz\r\nLumens: 1500 lumen (approx)\r\nPower Factor: 0.90pf',55,'Nos',250.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,4,16,'12W LED Panel Light','Body Material	Aluminum\r\nLighting Type	LED\r\nApplications	Hotel, House, etc',85,'Nos',125.00,'5.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,4,17,'15W LED Panel Light','IP Rating	IP40\r\nBody Material	Aluminum\r\nLighting Type	LED',40,'Nos',175.00,'5.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,7,19,'3W Round LED Spotlight','Lighting Color	Cool White\r\nBody Material	Aluminum\r\nCertification	ISO\r\nInput Voltage(V)	12 V\r\nIP Rating	IP33, IP40, IP44',100,'Nos',60.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,7,18,'3W Square LED Spotlight','Lighting Color	Cool White\r\nBody Material	Aluminum\r\nInput Voltage(V)	12 V\r\nIP Rating	IP33, IP40',85,'Nos',90.00,'12.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,9,20,'18W LED Tube Light','Tube Base Type	T5\r\nIP Rating	IP66',180,'Nos',120.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,9,21,'10W Ready Tube Light','Body Material	Aluminum, Ceramic\r\nPower	10W',200,'Nos',100.00,'18.00',0.00,1,'active','2017-11-08',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,11,22,'90W LED Flood Lights','Lighting Color	Cool White, Pure White, Warm White\r\nBody Material	Ceramic, Chrome, Iron\r\nIP Rating	IP33, IP40, IP44, IP55, IP66',20,'Nos',500.00,'18.00',0.00,1,'active','2017-11-09',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(23,1,3,'15 Watt LED Bulb','15 Watt LED Bulb',150,'Nos',30.00,'12.00',0.00,1,'active','2017-11-21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(24,1,1,'aaaaaaaaaa','aaaaaaaaaaaa',150,'Nos',30.00,'12.00',NULL,1,'active','2018-09-30',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(25,1,1,'bbbbbbbbbbb','bbbbbbbbbbbbb',150,'Nos',30.00,'12.00',NULL,1,'active','2018-09-30','Serial ','Vendor ','Assets ','Assets Number','Type','2.00','Name of Project','Room','Location','District','USD_Cutoff','Condition','Remariks');

/*Table structure for table `user_details` */

DROP TABLE IF EXISTS `user_details`;

CREATE TABLE `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_email` varchar(200) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_name` varchar(200) NOT NULL,
  `user_type` enum('master','user') NOT NULL,
  `user_status` enum('Active','Inactive') NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `user_details` */

insert  into `user_details`(`user_id`,`user_email`,`user_password`,`user_name`,`user_type`,`user_status`) values (1,'john_smith@gmail.com','$2y$10$0Yo2F.EetL3yhB8l6MNvcOH8AYNS0SuXLOoAQr1qXJa3uPASWV0NC','John Smith','master','Active'),(2,'donahuber@gmail.com','$2y$10$Ex.JTn6Cu7lCHgaJoCBVeu0qer0cFp2X1qTIpPg2qfIkkuj3LjjMK','Dona L. Huber','user','Active'),(3,'roy_hise@gmail.com','$2y$10$XlyVI9an5B6rHW3SS9vQpesJssKJxzMQYPbSaR7dnpWjDI5fpxJSS','Roy Hise','user','Active'),(4,'peter_goad@gmail.com','$2y$10$n1B.FdHNwufTkmzp/pNqc.EiwjB8quQ1tBCEC7nkaldI5pS.et04e','Peter Goad','user','Active'),(5,'sarah_thomas@gmail.com','$2y$10$s57SErOPlgkIZf1lxzlX3.hMt8LSSKaYig5rusxghDm7LW8RtQc/W','Sarah Thomas','user','Active'),(6,'edna_william@gmail.com','$2y$10$mfMXnH.TCmg5tlYRhqjxu.ILly8s9.qsLKOpyxgUl6h1fZt6x/B5C','Edna William','user','Active'),(8,'john_parks@gmail.com','$2y$10$WtsZUxIIz/N4NoIW0Db.pu0VfLWcPs6TyQ8SkpVHLDLGhdNOfALC.','John Park','user','Active'),(10,'peter_parker@gmail.com','$2y$10$0Yo2F.EetL3yhB8l6MNvcOH8AYNS0SuXLOoAQr1qXJa3uPASWV0NC','Mark Parker','user','Active'),(11,'nazibul.14@gmail.com','$2y$10$5zvRZwBHia/ALykJvqnpU.fdHC6Ivysf0uAlkc.WzG9mzZWHEiJ3m','nazibul','user','Active');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
