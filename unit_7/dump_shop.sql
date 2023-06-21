-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: shop
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Ноутбуки','Так же, как и гаджеты ноутбуки стали частью жизни человека. Это ПК переносного форма, в корпусе у него имеется все компоненты компьютера, а также аккумуляторная батарея. Они бывают большими и маленькими, с разным весом. Время их автономной работы колеблется от 2 до 15 часов в зависимости от «внутренностей» аппарата. В англоязычном мире девайс больше известен как лэптоп и постепенно на просторах стран бывшего СССР это название также распространяется.','114290.120x150.jpg'),(2,'Телефоны','Разнообразные смартфоны прочно вошли в повседневную жизнь каждого человека. За короткий срок появилось примерно тридцать фирм с широким ассортиментом электронного товара. Это английское понятие в переводе означает – умный телефон. Трудно представить выполнение ежедневных дел без мобильного устройства. С каждым годом выпускаются все более интеллектуальные модели с усовершенствованными и новыми свойствами. Распространенными компаниями являются Samsung, Apple, Lenovo, Xiaomi, Meizu, Sony и т.д.','75093.120x150.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goods` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `cost` double DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `category` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'Asus VivoBook D540NA-GQ211T','Р•РєСЂР°РЅ 15.6\" (1366x768) WXGA HD, РјР°С‚РѕРІРёР№ / Intel Pentium N4200 (1.1 - 2.5 Р“Р“С†) / RAM 4 Р“Р‘ / HDD 500 Р“Р‘ / Intel HD Graphics 505 / Р±РµР· РћР” / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / Windows 10 Home 64bit',7999,'asus_d540na_gq211t_images_10642535768.jpg',1),(2,'РќРѕСѓС‚Р±СѓРє Lenovo IdeaPad 330-15AST','Р•РєСЂР°РЅ 15.6\" TN+film (1366x768) HD, РјР°С‚РѕРІРёР№ / AMD E2-9000 (1.8 - 2.2 Р“Р“С†) / RAM 4 Р“Р‘ / HDD 500 Р“Р‘ / AMD Radeon R2 Graphics / Р±РµР· РћР” / LAN / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / DOS / 2.2 РєРі / С‡РѕСЂРЅРёР№',6499,'lenovo_81d600jyra_images_10442255288.jpg',1),(3,'РќРѕСѓС‚Р±СѓРє Dell Inspiron 3573','Р•РєСЂР°РЅ 15.6\" (1366x768) WXGA HD, РіР»СЏРЅСЃРѕРІРёР№ Р· Р°РЅС‚РёРІС–РґР±Р»РёСЃРєРѕРІРёРј РїРѕРєСЂРёС‚С‚СЏРј / Intel Celeron N4000 (1.1 - 2.6 Р“Р“С†) / RAM 4 Р“Р‘ / HDD 500 Р“Р‘ / Intel UHD Graphics 600 / DVDВ±RW / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / Linux / 2.15 РєРі / С‡РѕСЂРЅРёР№',6299,'copy_dell_inspiron_3573_alex299901_5bac934976a22_images_7670670744.jpg',1),(4,'Apple MacBook Pro 15\" Retina Z0V00006S Space Grey (i9 2.9GHz/2TB)','Р­РєСЂР°РЅ 15,4\" IPS (2560x1600) Retina, РіР»СЏРЅС†РµРІС‹Р№ /Intel Core i9(2,9-4,8 Р“Р“С†) / RAM 32 Р“Р‘ / SSD 2 РўР‘ /AMD Radeon Pro 560X, 4 Р“Р‘ GDDR5/ Р±РµР· РћР” / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / macOS High Sierra / 1.83 РєРі / СЃРµСЂС‹Р№',177156,'64306312_images_9249871008.jpg',1),(5,'Apple MacBook Pro 15\" Space Gray (MR9426) 2018','Р­РєСЂР°РЅ 15,4\" IPS (2560x1600) Retina, РіР»СЏРЅС†РµРІС‹Р№ /Intel Core i9(2,9-4,8 Р“Р“С†) / RAM 32 Р“Р‘ / SSD 2 РўР‘ /AMD Radeon Pro 560X, 4 Р“Р‘ GDDR5/ Р±РµР· РћР” / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / macOS High Sierra / 1.83 РєРі / СЃРµСЂС‹Р№',150999,'54573204_images_11323625388.jpg',1),(6,'РќРѕСѓС‚Р±СѓРє Dell Latitude 7414 Rugged Extreme (74i58S2IHD-WBK)','Р•РєСЂР°РЅ 14\" TN (1366x768) WXGA HD, РіР»СЏРЅСЃРѕРІРёР№, Multi-Touch / Intel Core i5-6300U (2.4 - 3.0 Р“Р“С†) / RAM 8 Р“Р‘ / SSD 256 Р“Р‘ / Intel HD Graphics 520 / Р±РµР· РћР” / LAN / Wi-Fi / Bluetooth / 3G / 4G / РІРµР±-РєР°РјРµСЂР° / Windows 10 Pro 64bit / 3.69 РєРі / С‡РѕСЂРЅРёР№',139994,'copy_dell_74i716s3r73_wbk_5c7d0f4b9ffad_images_11230556673.jpg',1),(7,'Apple MacBook Pro 15\" Space Gray (Z0UC0000D/MPTW2) 2017','Р­РєСЂР°РЅ 15\" (2880x1800), IPS / РіР»СЏРЅС†РµРІС‹Р№ / Intel Core i7 (3.1 - 4.1 Р“Р“С†) / RAM 16 Р“Р‘ / SSD 1 РўР‘ / AMD Radeon Pro 560,4 Р“Р‘ / Wi-Fi 802.11 a/b/g/n/ac / Bluetooth 4.2 / Р’РµР±-РєР°РјРµСЂР° HD-РєР°РјРµСЂР° FaceTime 720p 1.3 РњРї / MacOS Sierra / 349.3С…240.7С…15.5 РјРј, 1.83 РєРі / СЃРµСЂС‹Р№',87999,'42607960_images_4743479056.jpg',1),(8,'Apple MacBook A1534 Rose Gold (MNYM2UA/A)','',55523,'75069108_images_11285451942.jpg',1),(9,'РќРѕСѓС‚Р±СѓРє Lenovo ThinkPad X380 Yoga (20LH001HRT) Black','Р•РєСЂР°РЅ 13.3\" IPS (1920x1080) Full HD, Multi-touch, РіР»СЏРЅСЃРѕРІРёР№ / Intel Core i5-8250U (1.6 - 3.4 Р“Р“С†) / RAM 8 Р“Р‘ / SSD 512 Р“Р‘ / Intel UHD Graphics 620 / Р±РµР· РћР” / Mini LAN (RJ-45) / Wi-Fi / Bluetooth / РІРµР±-РєР°РјРµСЂР° / Windows 10 Pro 64bit / 1.43 РєРі / С‡РѕСЂРЅРёР№ / СЃС‚РёР»СѓСЃ\nР”РѕРєР»Р°РґРЅС–С€Рµ: https://rozetka.com.ua/ua/lenovo_20lh001hrt/p47259120/',53611,'lenovo_20lh001hrt_images_10809693627.jpg',1),(10,'Samsung Galaxy M20 4/64GB Ocean Blue (SM-M205FZBWSEK)','Р­РєСЂР°РЅ (6.3\", PLS, 2340С…1080)/ Samsung Exynos 7904 (2 x 1.8 Р“Р“С† + 6 x 1.6 Р“Р“С†)/ РґРІРѕР№РЅР°СЏ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 13 РњРї + 5 РњРї, С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ 8 РњРї/ RAM 4 Р“Р‘/ 64 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD (РґРѕ 512 Р“Р‘)/ 3G/ LTE/ GPS/ Р“Р›РћРќРђРЎРЎ/ BDS/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 8.1 (SE 9.5) / 5000 РјРђ*С‡',6199,'samsung_galaxy_m20_4_64gb_ocean_blue_images_10883949159.jpg',2),(11,'Samsung Galaxy S10 8/128 GB Black (SM-G973FZKDSEK)','Р­РєСЂР°РЅ (6.1\", Dynamic AMOLED, 3040x1440)/ Samsung Exynos 9820 (2 x 2.7 Р“Р“С† + 2 x 2.3 Р“Р“С† + 4 x 1.9 Р“Р“С†)/ С‚СЂРѕР№РЅР°СЏ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 12 РњРї + 12 РњРї + 16 РњРї / С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ 10 РњРї/ RAM 8 Р“Р‘/ 128 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD (РґРѕ 512 Р“Р‘)/ 3G/ LTE/ GPS/ A-GPS / Р“Р›РћРќРђРЎРЎ/ BDS/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 9.0 (Pie) / 3400 РјРђ*С‡/',29999,'samsung_galaxy_s10_6_128_gb_black_sm_g973fzkdsek_images_11052552609.jpg',2),(12,'Huawei P smart+ Black','Р­РєСЂР°РЅ (6.3\", IPS, 2340x1080)/ HiSilicon Kirin 710 (2.2 Р“Р“С† + 1.7 Р“Р“С†)/ РґРІРѕР№РЅР°СЏ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 16 РњРї + 2 РњРї, РґРІРѕР№РЅР°СЏ С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ РєР°РјРµСЂР°: 24 РњРї + 2 РњРї/ RAM 4 Р“Р‘/ 64 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD (РґРѕ 256 Р“Р‘)/ 3G/ LTE/ A-GPS/ Р“Р›РћРќРђРЎРЎ/ BDS/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 8.1 (Oreo)/ 3340 РјРђ*С‡',6999,'huawei_p_smart_plus_black_images_7926542781.jpg',2),(13,'Xiaomi Redmi Note 5 3/32GB Rose Gold (Global Rom + OTA)','Р­РєСЂР°РЅ (5.99\", IPS, 2160x1080)/ Qualcomm Snapdragon 636 (1.8 Р“Р“С†)/ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 12 РњРї + 5 РњРї, С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ РєР°РјРµСЂР°: 13 РњРї/ RAM 3 Р“Р‘/ 32 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD (РґРѕ 128 Р“Р‘)/ 3G/ LTE/ GPS/ GLONASS/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 8.1 (Oreo)/ 4000 РјРђ*С‡',4399,'xiaomi_redmi_note5_332gb_rose_gold_images_5031920016.jpg',2),(14,'Sony Xperia XA2 Black','Р­РєСЂР°РЅ (5.2\", IPS, 1920x1080)/ Qualcomm Snapdragon 630/ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 23 РњРї, С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ РєР°РјРµСЂР°: 8 РњРї/ RAM 3 Р“Р‘/ 32 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD/SDHC (РґРѕ 256 Р“Р‘)/ 3G/ LTE/ GPS/ A-GPS/Р“Р›РћРќРђРЎРЎ/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 8.0 (Oreo)/ 3300 РјРђ*С‡',4777,'sony_xa2_black_images_3386205631.jpg',2),(15,'Samsung Galaxy M20 4/64GB Dark Grey (SM-M205FDAWSEK)','Р­РєСЂР°РЅ (6.3\", PLS, 2340С…1080)/ Samsung Exynos 7904 (2 x 1.8 Р“Р“С† + 6 x 1.6 Р“Р“С†)/ РґРІРѕР№РЅР°СЏ РѕСЃРЅРѕРІРЅР°СЏ РєР°РјРµСЂР°: 13 РњРї + 5 РњРї, С„СЂРѕРЅС‚Р°Р»СЊРЅР°СЏ 8 РњРї/ RAM 4 Р“Р‘/ 64 Р“Р‘ РІСЃС‚СЂРѕРµРЅРЅРѕР№ РїР°РјСЏС‚Рё + microSD (РґРѕ 512 Р“Р‘)/ 3G/ LTE/ GPS/ Р“Р›РћРќРђРЎРЎ/ BDS/ РїРѕРґРґРµСЂР¶РєР° 2С… SIM-РєР°СЂС‚ (Nano-SIM)/ Android 8.1 (SE 9.5) / 5000 РјРђ*С‡\nРџРѕРґСЂРѕР±РЅРµРµ: https://rozetka.com.ua/mobile-phones/c80003/',6199,'samsung_galaxy_m20_4_64gb_darck_grey_images_10883883675.jpg',2);
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'shop'
--

--
-- Dumping routines for database 'shop'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-21 16:45:57
