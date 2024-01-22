CREATE DATABASE  IF NOT EXISTS `quanlychungcumini` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quanlychungcumini`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: quanlychungcumini
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `dangnhap`
--

DROP TABLE IF EXISTS `dangnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dangnhap` (
  `ID` varchar(20) NOT NULL,
  `MatKhau` varchar(45) NOT NULL,
  `TenNguoiDung` varchar(45) NOT NULL,
  `CapBac` int NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `MaDV` varchar(10) NOT NULL,
  `MaT` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenDV` varchar(45) NOT NULL,
  `LoaiDV` varchar(45) NOT NULL,
  `GiaDV` decimal(20,0) NOT NULL,
  PRIMARY KEY (`MaDV`,`MaT`),
  KEY `dichuvu_ibfk_1_idx` (`MaT`),
  CONSTRAINT `dichvu_ibfk_1` FOREIGN KEY (`MaT`) REFERENCES `toanha` (`MaT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL AUTO_INCREMENT,
  `ID` varchar(20) NOT NULL,
  `MaT` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaP` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SoDien` int DEFAULT NULL,
  `NgayXuatHD` date NOT NULL,
  `TongTien` decimal(20,0) NOT NULL,
  PRIMARY KEY (`MaHD`),
  KEY `MaT` (`MaT`),
  KEY `MaP` (`MaP`),
  KEY `MaK` (`MaK`),
  KEY `hoadon_ibfk_5_idx` (`ID`),
  CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaT`) REFERENCES `toanha` (`MaT`),
  CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`MaP`) REFERENCES `phong` (`MaP`),
  CONSTRAINT `hoadon_ibfk_4` FOREIGN KEY (`MaK`) REFERENCES `khachthue` (`MaK`),
  CONSTRAINT `hoadon_ibfk_5` FOREIGN KEY (`ID`) REFERENCES `dangnhap` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inhoadon`
--

DROP TABLE IF EXISTS `inhoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inhoadon` (
  `MaHD` int NOT NULL AUTO_INCREMENT,
  `ID` varchar(20) NOT NULL,
  `MaT` varchar(45) NOT NULL,
  `MaP` varchar(45) NOT NULL,
  `MaK` varchar(45) NOT NULL,
  `SoDien` int DEFAULT NULL,
  `NgayXuatHD` date NOT NULL,
  `TongTien` decimal(20,0) NOT NULL,
  PRIMARY KEY (`MaHD`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `khachthue`
--

DROP TABLE IF EXISTS `khachthue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachthue` (
  `MaK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaP` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaT` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenK` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `GioiTinh` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `CCCD` varchar(17) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `SDT` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Que` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgayThue` date NOT NULL,
  PRIMARY KEY (`MaK`),
  KEY `MaP` (`MaP`),
  KEY `MaT` (`MaT`),
  CONSTRAINT `khachthue_ibfk_1` FOREIGN KEY (`MaP`) REFERENCES `phong` (`MaP`),
  CONSTRAINT `khachthue_ibfk_2` FOREIGN KEY (`MaT`) REFERENCES `toanha` (`MaT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phong` (
  `MaP` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `MaT` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `LoaiP` varchar(20) NOT NULL,
  `TrangThai` tinyint NOT NULL,
  `GiaP` decimal(20,0) NOT NULL,
  PRIMARY KEY (`MaP`,`MaT`),
  KEY `MaT` (`MaT`),
  CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`MaT`) REFERENCES `toanha` (`MaT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reports`
--

DROP TABLE IF EXISTS `reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reports` (
  `report_name` varchar(255) NOT NULL,
  `report_jasper` blob NOT NULL,
  PRIMARY KEY (`report_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thanhvien`
--

DROP TABLE IF EXISTS `thanhvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thanhvien` (
  `MaTV` varchar(10) NOT NULL,
  `MaK` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `TenTV` varchar(30) NOT NULL,
  `GioiTinh` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `CCCD` varchar(17) DEFAULT NULL,
  `SDT` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Que` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`MaTV`,`MaK`),
  KEY `MaK` (`MaK`),
  CONSTRAINT `thanhvien_ibfk_1` FOREIGN KEY (`MaK`) REFERENCES `khachthue` (`MaK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `thongkehoadon`
--

DROP TABLE IF EXISTS `thongkehoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thongkehoadon` (
  `STT` int NOT NULL AUTO_INCREMENT,
  `NgayXuatHD` date NOT NULL,
  `TongTien` decimal(20,0) NOT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `toanha`
--

DROP TABLE IF EXISTS `toanha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `toanha` (
  `MaT` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  PRIMARY KEY (`MaT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-11 16:51:28
