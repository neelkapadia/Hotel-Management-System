-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for osx10.12 (x86_64)
--
-- Host: localhost    Database: wolfinn
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
  `totalAmt` float NOT NULL,
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
/*!40000 ALTER TABLE `Manager` ENABLE KEYS */;
INSERT INTO `Manager` VALUES (100); 
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
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RoomPrice`
--

DROP TABLE IF EXISTS `RoomPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RoomPrice` (
  `HotelId` int(11) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  PRIMARY KEY (`HotelId`,`Category`),
  CONSTRAINT `hotel_in_room_price` FOREIGN KEY (`HotelId`) REFERENCES `Hotel` (`HotelId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RoomPrice`
--

LOCK TABLES `RoomPrice` WRITE;
/*!40000 ALTER TABLE `RoomPrice` DISABLE KEYS */;
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
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
INSERT INTO `Staff` VALUES (100,'Mary','Manager','654',40,1,'90 ABC St , Raleigh NC 27','Management');
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

-- Dump completed on 2018-04-15 20:58:36
