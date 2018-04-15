-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for osx10.13 (x86_64)
--
-- Host: localhost    Database: WolfInn
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BillInfo`
--

DROP TABLE IF EXISTS `BillInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BillInfo` (
  `SSN` varchar(11) NOT NULL,
  `payType` varchar(128) NOT NULL,
  `billingAddress` varchar(50) NOT NULL,
  `cardNum` int(20) DEFAULT NULL,
  PRIMARY KEY (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BillInfo`
--

LOCK TABLES `BillInfo` WRITE;
/*!40000 ALTER TABLE `BillInfo` DISABLE KEYS */;
INSERT INTO `BillInfo` VALUES ('440-9328','cash','24 BST Dr , Dallas TX 14',NULL),('593-9846','credit','980 TRT St , Raleigh NC',1052),('777-8352','hotel credit','7720 MHT St , Greensboro NC',3020),('858-9430','credit','231 DRY St , Rochester NY 78',2497);
/*!40000 ALTER TABLE `BillInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookingInfo`
--

DROP TABLE IF EXISTS `BookingInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookingInfo` (
  `BookingID` int(11) NOT NULL,
  `checkin` time NOT NULL,
  `checkout` time DEFAULT NULL,
  `startdate` date NOT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookingInfo`
--

LOCK TABLES `BookingInfo` WRITE;
/*!40000 ALTER TABLE `BookingInfo` DISABLE KEYS */;
INSERT INTO `BookingInfo` VALUES (201,'15:17:00','10:22:00','2017-05-10','2017-05-13'),(202,'16:11:00','09:27:00','2017-05-10','2017-05-13'),(203,'15:45:00','11:10:00','2017-05-10','2017-05-14'),(204,'14:30:00','10:00:00','2017-05-10','2017-05-12');
/*!40000 ALTER TABLE `BookingInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CateringStaff`
--

DROP TABLE IF EXISTS `CateringStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CateringStaff` (
  `StaffId` int(11) DEFAULT NULL,
  KEY `staff_id_in_catering_staff` (`StaffId`),
  CONSTRAINT `staff_id_in_catering_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CateringStaff`
--

LOCK TABLES `CateringStaff` WRITE;
/*!40000 ALTER TABLE `CateringStaff` DISABLE KEYS */;
INSERT INTO `CateringStaff` VALUES (104);
/*!40000 ALTER TABLE `CateringStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `CustID` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNum` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`CustID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1001,'David','1980-01-30','david@gmail.com','123'),(1002,'Sarah','1971-01-30','sarah@gmail.com','456'),(1003,'Josep','1987-01-30','joseph@gmail.com','789'),(1004,'Lucy','1985-01-30','lucy@gmail.com','213'),(2001,'Brandon','1985-02-24','bran@gmail.com','214'),(2002,'Candy','1988-12-15','can@gmail.com','215'),(2003,'Alpar','1981-11-25','apl@gmail.com','216'),(2004,'Jennifer','1984-07-18','jenn@gmail.com','217'),(2005,'Scarlet','1990-05-20','scar@gmail.com','218'),(2006,'Abhi','1991-02-07','abhi@gmail.com','219');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FrontDeskStaff`
--

DROP TABLE IF EXISTS `FrontDeskStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FrontDeskStaff` (
  `StaffId` int(11) DEFAULT NULL,
  KEY `staff_id_in_frontdesk_staff` (`StaffId`),
  CONSTRAINT `staff_id_in_frontdesk_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FrontDeskStaff`
--

LOCK TABLES `FrontDeskStaff` WRITE;
/*!40000 ALTER TABLE `FrontDeskStaff` DISABLE KEYS */;
INSERT INTO `FrontDeskStaff` VALUES (103),(106);
/*!40000 ALTER TABLE `FrontDeskStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotel`
--

DROP TABLE IF EXISTS `Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hotel` (
  `HotelId` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `managerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`HotelId`),
  UNIQUE KEY `address` (`address`),
  KEY `manager_in_hotel` (`managerId`),
  CONSTRAINT `manager_in_hotel` FOREIGN KEY (`managerId`) REFERENCES `Manager` (`StaffId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotel`
--

LOCK TABLES `Hotel` WRITE;
/*!40000 ALTER TABLE `Hotel` DISABLE KEYS */;
INSERT INTO `Hotel` VALUES (1,'Hotel A','21 ABC St , Raleigh NC 27','919',100),(2,'Hotel B','25 XYZ St , Rochester NY 54','718',101),(3,'Hotel C','29 PQR St , Greensboro NC 27','984',102),(4,'Hotel D','28 GHW St , Raleigh NC 32','920',105);
/*!40000 ALTER TABLE `Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HotelCity`
--

DROP TABLE IF EXISTS `HotelCity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HotelCity` (
  `address` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`address`),
  CONSTRAINT `xyz` FOREIGN KEY (`address`) REFERENCES `Hotel` (`address`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HotelCity`
--

LOCK TABLES `HotelCity` WRITE;
/*!40000 ALTER TABLE `HotelCity` DISABLE KEYS */;
INSERT INTO `HotelCity` VALUES ('21 ABC St , Raleigh NC 27','Raleigh'),('25 XYZ St , Rochester NY 54','Rochester'),('28 GHW St , Raleigh NC 32','Raleigh'),('29 PQR St , Greensboro NC 27','Greensboro');
/*!40000 ALTER TABLE `HotelCity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invoice` (
  `InvoiceID` int(11) NOT NULL,
  `InvoiceDate` date NOT NULL,
  `totalAmt` float(11) NOT NULL,
  PRIMARY KEY (`InvoiceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Manager`
--

DROP TABLE IF EXISTS `Manager`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Manager` (
  `StaffId` int(11) DEFAULT NULL,
  KEY `staff_id_in_manager` (`StaffId`),
  CONSTRAINT `staff_id_in_manager` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Manager`
--

LOCK TABLES `Manager` WRITE;
/*!40000 ALTER TABLE `Manager` DISABLE KEYS */;
INSERT INTO `Manager` VALUES (100),(101),(102),(105);
/*!40000 ALTER TABLE `Manager` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PresidentialSuite`
--

DROP TABLE IF EXISTS `PresidentialSuite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PresidentialSuite` (
  `HotelId` int(11) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  PRIMARY KEY (`HotelId`,`RoomNum`),
  KEY `room_in_suite` (`RoomNum`),
  CONSTRAINT `hotel_in_suite` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_in_suite` FOREIGN KEY (`RoomNum`) REFERENCES `Room` (`roomNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PresidentialSuite`
--

LOCK TABLES `PresidentialSuite` WRITE;
/*!40000 ALTER TABLE `PresidentialSuite` DISABLE KEYS */;
INSERT INTO `PresidentialSuite` VALUES (4,1);
/*!40000 ALTER TABLE `PresidentialSuite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `HotelId` int(11) NOT NULL,
  `roomNum` int(11) NOT NULL,
  `category` varchar(50) NOT NULL,
  `avail` tinyint(1) NOT NULL,
  `capacity` int(11) NOT NULL,
  PRIMARY KEY (`roomNum`,`HotelId`),
  KEY `hotel_in_room` (`HotelId`),
  CONSTRAINT `hotel_in_room` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,1,'Economy',1,1),(4,1,'Presidential',1,4),(1,2,'Deluxe',1,2),(3,2,'Executive',0,3),(2,3,'Economy',1,1),(1,5,'Deluxe',1,2);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoomPrice`
--

DROP TABLE IF EXISTS `RoomPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoomPrice` (
  `Category` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`Category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomPrice`
--

LOCK TABLES `RoomPrice` WRITE;
/*!40000 ALTER TABLE `RoomPrice` DISABLE KEYS */;
INSERT INTO `RoomPrice` VALUES ('Deluxe',200),('Economy',100),('Executive',1000),('Presidential',5000);
/*!40000 ALTER TABLE `RoomPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoomServiceStaff`
--

DROP TABLE IF EXISTS `RoomServiceStaff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoomServiceStaff` (
  `StaffId` int(11) DEFAULT NULL,
  KEY `staff_id_in_roomservice_staff` (`StaffId`),
  CONSTRAINT `staff_id_in_roomservice_staff` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomServiceStaff`
--

LOCK TABLES `RoomServiceStaff` WRITE;
/*!40000 ALTER TABLE `RoomServiceStaff` DISABLE KEYS */;
INSERT INTO `RoomServiceStaff` VALUES (107);
/*!40000 ALTER TABLE `RoomServiceStaff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceCost`
--

DROP TABLE IF EXISTS `ServiceCost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceCost` (
  `serviceType` varchar(50) NOT NULL,
  `cost` int(11) NOT NULL,
  PRIMARY KEY (`serviceType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceCost`
--

LOCK TABLES `ServiceCost` WRITE;
/*!40000 ALTER TABLE `ServiceCost` DISABLE KEYS */;
INSERT INTO `ServiceCost` VALUES ('dry cleaning',16),('gyms',15),('phone bills',5),('room service',10),('special requests',20);
/*!40000 ALTER TABLE `ServiceCost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceRecord`
--

DROP TABLE IF EXISTS `ServiceRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceRecord` (
  `ServiceId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `serviceType` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ServiceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceRecord`
--

LOCK TABLES `ServiceRecord` WRITE;
/*!40000 ALTER TABLE `ServiceRecord` DISABLE KEYS */;
INSERT INTO `ServiceRecord` VALUES (1,'2017-05-10','16:17:00','dry cleaning'),(2,'2017-05-10','17:17:00','gyms'),(3,'2017-05-10','17:17:00','gyms'),(4,'2017-05-11','06:17:00','room service'),(5,'2017-05-10','16:17:00','phone bills');
/*!40000 ALTER TABLE `ServiceRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `StaffId` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `jobTitle` varchar(50) NOT NULL,
  `phoneNum` varchar(15) NOT NULL,
  `age` int(5) NOT NULL,
  `avail` tinyint(1) NOT NULL DEFAULT 1,
  `address` varchar(75) DEFAULT NULL,
  `department` varchar(20) NOT NULL,
  PRIMARY KEY (`StaffId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
INSERT INTO `Staff` VALUES (100,'Mary','Manager','654',40,1,'90 ABC St , Raleigh NC 27','Management'),(101,'John','Manager','564',45,1,'798 XYZ St , Rochester NY 54','Management'),(102,'Carol','Manager','546',55,1,'351 MH St , Greensboro NC 27','Management'),(103,'Emma','Front Desk Staff','546',55,1,'49 ABC St , Raleigh NC 27','Management'),(104,'Ava','Catering Staff','777',55,1,'425 RG St , Raleigh NC 27','Catering'),(105,'Peter','Manager','724',52,1,'475 RG St , Raleigh NC 27','Management'),(106,'Olivia','Front Desk Staff','799',27,1,'325 PD St , Raleigh NC 27','Management'),(107,'Ashley','Room Service Staff','749',25,1,'125 PD St , Asheville NC 37','Management');
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generateInvoice`
--

DROP TABLE IF EXISTS `generateInvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generateInvoice` (
  `InvoiceID` int(11) NOT NULL,
  `BookingId` int(11) NOT NULL,
  PRIMARY KEY (`BookingId`,`InvoiceID`),
  KEY `invoice_id_in_invoice` (`InvoiceID`),
  CONSTRAINT `booking_id_in_invoice` FOREIGN KEY (`BookingId`) REFERENCES `BookingInfo` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `invoice_id_in_invoice` FOREIGN KEY (`InvoiceID`) REFERENCES `Invoice` (`InvoiceID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generateInvoice`
--

LOCK TABLES `generateInvoice` WRITE;
/*!40000 ALTER TABLE `generateInvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `generateInvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gets`
--

DROP TABLE IF EXISTS `gets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gets` (
  `CustId` int(11) NOT NULL,
  `BookingId` int(11) NOT NULL,
  PRIMARY KEY (`CustId`,`BookingId`),
  KEY `booking_id_in_gets` (`BookingId`),
  CONSTRAINT `booking_id_in_gets` FOREIGN KEY (`BookingId`) REFERENCES `BookingInfo` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cust_id_in_gets` FOREIGN KEY (`CustId`) REFERENCES `Customer` (`CustID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gets`
--

LOCK TABLES `gets` WRITE;
/*!40000 ALTER TABLE `gets` DISABLE KEYS */;
INSERT INTO `gets` VALUES (1001,201),(1002,202),(1003,201),(1004,204),(2001,202),(2002,204);
/*!40000 ALTER TABLE `gets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `has`
--

DROP TABLE IF EXISTS `has`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `has` (
  `SSN` varchar(11) NOT NULL,
  `BookingId` int(11) NOT NULL,
  PRIMARY KEY (`SSN`,`BookingId`),
  UNIQUE KEY `BookingId` (`BookingId`),
  KEY `booking_id_in_has` (`BookingId`),
  CONSTRAINT `booking_id_in_has` FOREIGN KEY (`BookingId`) REFERENCES `BookingInfo` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `has_ibfk_1` FOREIGN KEY (`SSN`) REFERENCES `BillInfo` (`SSN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `has`
--

LOCK TABLES `has` WRITE;
/*!40000 ALTER TABLE `has` DISABLE KEYS */;
/*!40000 ALTER TABLE `has` ENABLE KEYS */;
INSERT INTO has VALUES ('593-9846', 201), ('777-8352', 202), ('858-9430', 203), ('440-9328', 204);
UNLOCK TABLES;

--
-- Table structure for table `isAssigned`
--

DROP TABLE IF EXISTS `isAssigned`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isAssigned` (
  `BookingId` int(11) NOT NULL,
  `HotelId` int(11) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  PRIMARY KEY (`BookingId`,`HotelId`,`RoomNum`),
  KEY `booking_id_in_assigned` (`BookingId`),
  KEY `rrom_in_assigned` (`RoomNum`),
  KEY `hotel_id_in_assigned` (`HotelId`),
  CONSTRAINT `booking_id_in_assigned` FOREIGN KEY (`BookingId`) REFERENCES `BookingInfo` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `hotel_id_in_assigned` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rrom_in_assigned` FOREIGN KEY (`RoomNum`) REFERENCES `Room` (`roomNum`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isAssigned`
--

LOCK TABLES `isAssigned` WRITE;
/*!40000 ALTER TABLE `isAssigned` DISABLE KEYS */;
INSERT INTO `isAssigned` VALUES (201,1,1),(202,1,2),(203,2,3),(204,3,2);
/*!40000 ALTER TABLE `isAssigned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isAssignedCaterer`
--

DROP TABLE IF EXISTS `isAssignedCaterer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isAssignedCaterer` (
  `StaffId` int(11) NOT NULL,
  `HotelId` int(11) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  PRIMARY KEY (`HotelId`,`StaffId`,`RoomNum`),
  KEY `staff_id_in_assigned_c` (`StaffId`),
  KEY `room_in_assigned_c` (`RoomNum`),
  CONSTRAINT `hotel_id_in_assigned_c` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_in_assigned_c` FOREIGN KEY (`RoomNum`) REFERENCES `Room` (`roomNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_id_in_assigned_c` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isAssignedCaterer`
--

LOCK TABLES `isAssignedCaterer` WRITE;
/*!40000 ALTER TABLE `isAssignedCaterer` DISABLE KEYS */;
/*!40000 ALTER TABLE `isAssignedCaterer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `isAssignedRoomService`
--

DROP TABLE IF EXISTS `isAssignedRoomService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `isAssignedRoomService` (
  `StaffId` int(11) NOT NULL,
  `HotelId` int(11) NOT NULL,
  `RoomNum` int(11) NOT NULL,
  PRIMARY KEY (`HotelId`,`StaffId`,`RoomNum`),
  KEY `staff_id_in_assigned_r` (`StaffId`),
  KEY `room_in_assigned_r` (`RoomNum`),
  CONSTRAINT `hotel_id_in_assigned_r` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `room_in_assigned_r` FOREIGN KEY (`RoomNum`) REFERENCES `Room` (`roomNum`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_id_in_assigned_r` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `isAssignedRoomService`
--

LOCK TABLES `isAssignedRoomService` WRITE;
/*!40000 ALTER TABLE `isAssignedRoomService` DISABLE KEYS */;
/*!40000 ALTER TABLE `isAssignedRoomService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linkService`
--

DROP TABLE IF EXISTS `linkService`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkService` (
  `BookingId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  PRIMARY KEY (`ServiceId`,`BookingId`),
  KEY `service_in_invoice` (`ServiceId`),
  KEY `booking_id_in_linkservice` (`BookingId`),
  CONSTRAINT `booking_id_in_linkservice` FOREIGN KEY (`BookingId`) REFERENCES `BookingInfo` (`BookingID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `service_in_linkservice` FOREIGN KEY (`ServiceId`) REFERENCES `ServiceRecord` (`ServiceId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linkService`
--

LOCK TABLES `linkService` WRITE;
/*!40000 ALTER TABLE `linkService` DISABLE KEYS */;
INSERT INTO `linkService` VALUES (201,1),(201,2),(202,3),(203,4),(204,5);
/*!40000 ALTER TABLE `linkService` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updates` (
  `StaffId` int(11) NOT NULL,
  `ServiceId` int(11) NOT NULL,
  PRIMARY KEY (`StaffId`,`ServiceId`),
  KEY `service_in_update` (`ServiceId`),
  CONSTRAINT `service_in_update` FOREIGN KEY (`ServiceId`) REFERENCES `ServiceRecord` (`ServiceId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_id_in_update` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `updates`
--

LOCK TABLES `updates` WRITE;
/*!40000 ALTER TABLE `updates` DISABLE KEYS */;
INSERT INTO `updates` VALUES (106,5),(107,1),(107,2),(107,3),(107,4);
/*!40000 ALTER TABLE `updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksFor`
--

DROP TABLE IF EXISTS `worksFor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worksFor` (
  `StaffId` int(11) NOT NULL,
  `HotelId` int(11) NOT NULL,
  PRIMARY KEY (`StaffId`,`HotelId`),
  UNIQUE KEY `StaffId` (`StaffId`),
  KEY `staff_id_in_worksFor` (`StaffId`),
  KEY `hotel_id_in_worksFor` (`HotelId`),
  CONSTRAINT `hotel_id_in_worksFor` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `staff_id_in_worksFor` FOREIGN KEY (`StaffId`) REFERENCES `Staff` (`StaffId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worksFor`
--

LOCK TABLES `worksFor` WRITE;
/*!40000 ALTER TABLE `worksFor` DISABLE KEYS */;
INSERT INTO `worksFor` VALUES (100,1),(101,2),(102,3),(103,1),(104,1),(105,4),(106,4);
/*!40000 ALTER TABLE `worksFor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-09  2:21:27
