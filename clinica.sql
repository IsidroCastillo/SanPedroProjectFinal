CREATE DATABASE  IF NOT EXISTS `clinica` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `clinica`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: clinica
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `cita`
--

DROP TABLE IF EXISTS `cita`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cita` (
  `idCita` int(11) NOT NULL AUTO_INCREMENT,
  `fecha_cita` date DEFAULT NULL,
  `fecha_emisioncita` datetime DEFAULT NULL,
  `medico_idMedico` int(11) NOT NULL,
  `paciente_idPaciente` int(11) NOT NULL,
  `motivo` varchar(50) DEFAULT NULL,
  `horacita` char(10) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`idCita`,`medico_idMedico`,`paciente_idPaciente`),
  KEY `fk_cita_medico_idx` (`medico_idMedico`),
  KEY `fk_cita_paciente1_idx` (`paciente_idPaciente`),
  CONSTRAINT `fk_cita_medico` FOREIGN KEY (`medico_idMedico`) REFERENCES `medico` (`idMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_cita_paciente1` FOREIGN KEY (`paciente_idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cita`
--

LOCK TABLES `cita` WRITE;
/*!40000 ALTER TABLE `cita` DISABLE KEYS */;
INSERT INTO `cita` VALUES (1,'2019-01-19','2019-01-19 03:14:07',7,1,'dolor en el pecho','4:00','H'),(2,'2019-07-02','2019-07-02 00:00:00',1,1,'Dolor de Pecho','4:00','H'),(3,'2019-07-02','2019-07-02 02:09:42',1,1,'Dolor de cabeza','6:00','H'),(4,'2019-07-07','2019-07-02 02:12:42',1,1,'xddddddddddddddddd','14:30','H'),(5,'2019-07-05','2019-07-02 02:15:07',1,1,'dsadsadsad','8:00','H'),(6,'2019-07-02','2019-07-02 02:26:05',1,1,'dsadsad','13:00','H'),(7,'2019-07-02','2019-07-02 02:30:26',1,1,'','14:00','H'),(8,'2019-07-03','2019-07-03 02:05:10',1,1,'Dolor de pecho','19:00','H'),(12,'2019-07-03','2019-07-03 22:36:22',1,2,'','20:30','H'),(13,'2019-07-04','2019-07-03 22:57:13',1,1,'dasdsadsa','12:00','H'),(14,'2019-07-04','2019-07-03 22:58:52',1,1,'','13:00','H');
/*!40000 ALTER TABLE `cita` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallehistoriaclinica`
--

DROP TABLE IF EXISTS `detallehistoriaclinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallehistoriaclinica` (
  `historia_clinica_idHistoria_clinica` int(11) NOT NULL,
  `cita_idCita` int(11) NOT NULL,
  PRIMARY KEY (`historia_clinica_idHistoria_clinica`,`cita_idCita`),
  KEY `fk_detalleHistoriaClinica_cita1_idx` (`cita_idCita`),
  CONSTRAINT `fk_detalleHistoriaClinica_cita1` FOREIGN KEY (`cita_idCita`) REFERENCES `cita` (`idCita`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleHistoriaClinica_historia_clinica1` FOREIGN KEY (`historia_clinica_idHistoria_clinica`) REFERENCES `historia_clinica` (`idHistoria_clinica`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallehistoriaclinica`
--

LOCK TABLES `detallehistoriaclinica` WRITE;
/*!40000 ALTER TABLE `detallehistoriaclinica` DISABLE KEYS */;
INSERT INTO `detallehistoriaclinica` VALUES (1,1),(1,2),(1,3),(1,4),(1,5);
/*!40000 ALTER TABLE `detallehistoriaclinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallehorario`
--

DROP TABLE IF EXISTS `detallehorario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallehorario` (
  `idsemana` int(11) NOT NULL,
  `idmedico` int(11) NOT NULL,
  `idHorarios` int(11) DEFAULT NULL,
  KEY `fk_semana_idx` (`idsemana`),
  KEY `fk_medico_idx` (`idmedico`),
  CONSTRAINT `fk_medico` FOREIGN KEY (`idmedico`) REFERENCES `medico` (`idMedico`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_semana` FOREIGN KEY (`idsemana`) REFERENCES `semana` (`idSemana`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallehorario`
--

LOCK TABLES `detallehorario` WRITE;
/*!40000 ALTER TABLE `detallehorario` DISABLE KEYS */;
INSERT INTO `detallehorario` VALUES (1,1,1),(3,1,2),(3,7,2),(3,8,2),(4,8,3),(4,7,2),(4,1,3);
/*!40000 ALTER TABLE `detallehorario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallereceta`
--

DROP TABLE IF EXISTS `detallereceta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallereceta` (
  `indicaciones` varchar(50) NOT NULL,
  `medicina_idMedicina` int(11) NOT NULL,
  `receta_idReceta` int(11) NOT NULL,
  PRIMARY KEY (`medicina_idMedicina`,`receta_idReceta`),
  KEY `fk_detalleReceta_receta1_idx` (`receta_idReceta`),
  CONSTRAINT `fk_detalleReceta_medicina1` FOREIGN KEY (`medicina_idMedicina`) REFERENCES `medicina` (`idMedicina`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_detalleReceta_receta1` FOREIGN KEY (`receta_idReceta`) REFERENCES `receta` (`idReceta`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallereceta`
--

LOCK TABLES `detallereceta` WRITE;
/*!40000 ALTER TABLE `detallereceta` DISABLE KEYS */;
INSERT INTO `detallereceta` VALUES ('Aplicar Diariamente por una semana',13,1),('Usar Cuando se Exponga al sol',14,1);
/*!40000 ALTER TABLE `detallereceta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dia` (
  `idDia` int(11) NOT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idDia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (1,'Lunes'),(2,'Martes'),(3,'Miercoles'),(4,'Jueves'),(5,'Viernes'),(6,'Sabado'),(7,'Domingo'),(8,'Descanso');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especialidad`
--

DROP TABLE IF EXISTS `especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especialidad` (
  `idEspecialidad` int(11) NOT NULL AUTO_INCREMENT,
  `precio` varchar(45) DEFAULT NULL,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEspecialidad`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especialidad`
--

LOCK TABLES `especialidad` WRITE;
/*!40000 ALTER TABLE `especialidad` DISABLE KEYS */;
INSERT INTO `especialidad` VALUES (1,'50','Neurólogo'),(2,'45','Pediatra'),(3,'55','Dermatologia'),(4,'50','Cirugia Pediatrica'),(5,'65','Cardiologia'),(6,'50','Cirugia General'),(7,'50','Pscicologia');
/*!40000 ALTER TABLE `especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_clinica`
--

DROP TABLE IF EXISTS `historia_clinica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia_clinica` (
  `idHistoria_clinica` int(11) NOT NULL AUTO_INCREMENT,
  `paciente_idPaciente` int(11) NOT NULL,
  PRIMARY KEY (`idHistoria_clinica`,`paciente_idPaciente`),
  KEY `fk_historia_clinica_paciente1_idx` (`paciente_idPaciente`),
  CONSTRAINT `fk_historia_clinica_paciente1` FOREIGN KEY (`paciente_idPaciente`) REFERENCES `paciente` (`idPaciente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_clinica`
--

LOCK TABLES `historia_clinica` WRITE;
/*!40000 ALTER TABLE `historia_clinica` DISABLE KEYS */;
INSERT INTO `historia_clinica` VALUES (1,1);
/*!40000 ALTER TABLE `historia_clinica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horariomedico`
--

DROP TABLE IF EXISTS `horariomedico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horariomedico` (
  `idHorario` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idSemana` int(11) NOT NULL,
  `idTurno` int(11) NOT NULL,
  `idMedico` int(11) NOT NULL,
  `idDia` int(11) DEFAULT NULL,
  PRIMARY KEY (`idHorario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horariomedico`
--

LOCK TABLES `horariomedico` WRITE;
/*!40000 ALTER TABLE `horariomedico` DISABLE KEYS */;
INSERT INTO `horariomedico` VALUES (1,'2019-07-01',7,1,1,1),(2,'2019-07-02',7,2,1,2),(3,'2019-07-03',7,3,1,3),(4,'2019-07-04',7,2,1,4),(5,'2019-07-05',7,1,1,5),(6,'2019-07-06',7,4,1,6),(7,'2019-07-07',7,2,1,7),(8,'2019-07-01',7,1,8,1),(9,'2019-07-02',7,1,8,2),(10,'2019-07-03',7,2,8,3),(11,'2019-07-04',7,2,8,4),(12,'2019-07-05',7,3,8,5),(13,'2019-07-06',7,4,8,6),(14,'2019-07-07',7,2,8,7),(15,'2019-07-01',7,1,7,1),(16,'2019-07-02',7,2,7,2),(17,'2019-07-03',7,4,7,3),(18,'2019-07-04',7,2,7,4),(19,'2019-07-05',7,1,7,5),(20,'2019-07-06',7,6,7,6),(21,'2019-07-07',7,1,7,7);
/*!40000 ALTER TABLE `horariomedico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horarios` (
  `idhorarios` int(11) NOT NULL,
  `idDia` int(11) DEFAULT NULL,
  `idTurno` int(11) DEFAULT NULL,
  KEY `fk_dia_idx` (`idDia`),
  KEY `fk_turno_idx` (`idTurno`),
  CONSTRAINT `fk_turno` FOREIGN KEY (`idTurno`) REFERENCES `turno` (`idTurno`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (1,1,1),(1,2,1),(1,3,2),(1,4,3),(1,5,1),(1,6,2),(1,7,4),(2,1,2),(2,2,2),(2,3,3),(2,4,4),(2,5,2),(2,6,3),(2,7,1),(3,1,4),(3,2,1),(3,3,2),(3,4,3),(3,5,3),(3,6,2),(3,7,1);
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horasturno`
--

DROP TABLE IF EXISTS `horasturno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `horasturno` (
  `idhorasTurno` int(11) NOT NULL,
  `idTurno` int(11) NOT NULL,
  `Descripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horasturno`
--

LOCK TABLES `horasturno` WRITE;
/*!40000 ALTER TABLE `horasturno` DISABLE KEYS */;
INSERT INTO `horasturno` VALUES (1,1,'6:00'),(1,1,'7:00'),(1,1,'8:00'),(1,1,'9:00'),(1,1,'9:30'),(1,1,'10:00'),(1,1,'10:30'),(1,1,'11:00'),(1,1,'11:30'),(2,2,'12:00'),(2,2,'12:30'),(2,2,'13:00'),(2,2,'13:30'),(2,2,'14:00'),(2,2,'14:30'),(2,2,'15:00'),(2,2,'15:30'),(2,2,'16:00'),(2,2,'16:30'),(2,2,'17:00'),(3,3,'17:00'),(3,3,'17:30'),(3,3,'18:00'),(3,3,'18:30'),(3,3,'19:00');
/*!40000 ALTER TABLE `horasturno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicina`
--

DROP TABLE IF EXISTS `medicina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medicina` (
  `idMedicina` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`idMedicina`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicina`
--

LOCK TABLES `medicina` WRITE;
/*!40000 ALTER TABLE `medicina` DISABLE KEYS */;
INSERT INTO `medicina` VALUES (1,'Enfagrow Premium Pro Mental Sabor Vainilla'),(2,'Geriaplus Defense sabor Vainilla'),(3,'Multivitaminas Tableta Efervescente'),(4,'Valupass Cápsulas'),(5,'Vick ZZZ 50 Mg Tableta Recubierta'),(6,'Bisolvon para Niños 4 Mg/5 Ml '),(7,'Artanbix 50 Mg Tabletas Recubiertas'),(8,'Cardivas 25 Mg Tabletas Recubiertas'),(9,'Cit-Cal D3 1500 Mg/200 UI'),(10,'Calcio, Vit. D3, Vit. B6, Lisina Aminocal'),(11,'Calcibone Natal Forte'),(12,'Alergilab 5 Mg Tabletas'),(13,'Rapiler 2.5Mg/5Ml'),(14,'Corifan 10 Mg/Ml Solución Inyectable'),(15,'Bresol Tabletas'),(16,'Kimlux Forte 15 Mg - 4 Mg'),(17,'Aproxol 1G'),(18,'Mezyn 5 Mg'),(19,'Clinda C 300 Mg Cápsulas'),(20,'Clofar 500 Mg'),(21,'DiProfeket 150 Mg');
/*!40000 ALTER TABLE `medicina` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medico`
--

DROP TABLE IF EXISTS `medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medico` (
  `idMedico` int(11) NOT NULL AUTO_INCREMENT,
  `especialidad_idEspecialidad` int(11) NOT NULL,
  `nombrecompleto` varchar(100) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idMedico`),
  KEY `fk_medico_especialidad1_idx` (`especialidad_idEspecialidad`),
  KEY `fk_medico_usuario1_idx` (`usuario_idUsuario`),
  CONSTRAINT `fk_medico_especialidad1` FOREIGN KEY (`especialidad_idEspecialidad`) REFERENCES `especialidad` (`idEspecialidad`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_medico_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medico`
--

LOCK TABLES `medico` WRITE;
/*!40000 ALTER TABLE `medico` DISABLE KEYS */;
INSERT INTO `medico` VALUES (1,1,'Juan Perez Diaz','12345678','diaz@gmail.com','H',1),(7,1,'Diego Diaz Perez','15975385','diego@gmail.com','H',3),(8,1,'Carlos Beltran araujo','12345684','carlos@hotmail.com','H',11),(9,2,'Diego Diaz Perez','14725896','perez@gmail.com','H',4),(10,5,'Joseph Salazar Atalaya','14253685','atalaya@gmail.com','H',5),(11,7,'Marco Alave Espinola','12365445','marco@hotmail.com','H',6),(12,7,'Cristian Perez alave','14725896','cristian@outlook.com','H',7),(13,5,'Moises Diaz Castillo','25896314','moises@gmail.com','H',8),(14,2,'Nestor Diaz Flores','14785236','nestor@hotmail.com','H',9),(15,2,'Selene Flores Lopez','14785252','selenon@gmail.com','H',10),(16,1,'Juan Carlos Messi Farfan','15935778','messi@gmail.com','H',12);
/*!40000 ALTER TABLE `medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paciente` (
  `idPaciente` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecompleto` varchar(100) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `fecha_nacimiento` varchar(50) DEFAULT NULL,
  `celular` char(9) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `usuario_idUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idPaciente`,`usuario_idUsuario`),
  KEY `fk_paciente_usuario1_idx` (`usuario_idUsuario`),
  CONSTRAINT `fk_paciente_usuario1` FOREIGN KEY (`usuario_idUsuario`) REFERENCES `usuario` (`idUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (1,'Jordy Risco Delgado','60800055','adas@gmail.com','el milagro','2019-06-15','919191912','H',2),(2,'Isidro Castillo','12345678','castillo@gmail.com','el porvenir','1994-06-15','123456789','H',11);
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receta`
--

DROP TABLE IF EXISTS `receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receta` (
  `idReceta` int(11) NOT NULL AUTO_INCREMENT,
  `cita_idCita` int(11) NOT NULL,
  `recomendaciones` varchar(400) DEFAULT NULL,
  `codigoValidacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idReceta`,`cita_idCita`),
  KEY `fk_receta_cita1_idx` (`cita_idCita`),
  CONSTRAINT `fk_receta_cita1` FOREIGN KEY (`cita_idCita`) REFERENCES `cita` (`idCita`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receta`
--

LOCK TABLES `receta` WRITE;
/*!40000 ALTER TABLE `receta` DISABLE KEYS */;
INSERT INTO `receta` VALUES (1,1,' Lo recomendable es utilizar  protección solar en todas las áreas que vayas a exponer al sol','78Zog4yRbBtWgXCVZd6HByUthBkRQto359KVP4wKtHb6S');
/*!40000 ALTER TABLE `receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semana`
--

DROP TABLE IF EXISTS `semana`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `semana` (
  `idSemana` int(11) NOT NULL,
  `fecha_Inicio` varchar(45) DEFAULT NULL,
  `fecha_Fin` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSemana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semana`
--

LOCK TABLES `semana` WRITE;
/*!40000 ALTER TABLE `semana` DISABLE KEYS */;
INSERT INTO `semana` VALUES (1,'31/12/2018','06/01/2019'),(2,'07/02/2019','13/01/2019'),(3,'03/06/2019','09/06/2019'),(4,'10/06/2019','16/06/2019'),(5,'17/06/2019','23/06/2019'),(6,'24/06/2019','30/06/2019'),(7,'01/07/2019','07/07/2019'),(8,'08/07/2019','14/07/2019');
/*!40000 ALTER TABLE `semana` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipousuario`
--

DROP TABLE IF EXISTS `tipousuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipousuario` (
  `idTipoUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idTipoUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipousuario`
--

LOCK TABLES `tipousuario` WRITE;
/*!40000 ALTER TABLE `tipousuario` DISABLE KEYS */;
INSERT INTO `tipousuario` VALUES (1,'Medico'),(2,'Paciente');
/*!40000 ALTER TABLE `tipousuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `idTurno` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `horario_inicio` varchar(10) DEFAULT NULL,
  `horario_fin` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idTurno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES (1,'Mañana ','6:00','12:00'),(2,'Tarde','12:00','17:00'),(3,'Noche','17:00','22:00'),(4,'Descanso',' -',' -');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(10) DEFAULT NULL,
  `contraseña` varchar(280) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  `tipousuario_idTipoUsuario` int(11) NOT NULL,
  PRIMARY KEY (`idUsuario`,`tipousuario_idTipoUsuario`),
  KEY `fk_tipoUsu_idx` (`tipousuario_idTipoUsuario`),
  CONSTRAINT `fk_tipoUsu` FOREIGN KEY (`tipousuario_idTipoUsuario`) REFERENCES `tipousuario` (`idTipoUsuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'12345678','123456','H',1),(2,'60800055','123456','H',2),(3,'MED01','123456','H',1),(4,'MED02','123456','H',1),(5,'MED03','159357','H',1),(6,'MED04','123456','H',1),(7,'MED05','123','H',1),(8,'MED06','123','H',1),(9,'MED07','147258','H',1),(10,'MED08','159357','H',1),(11,'14725836','123456','H',1),(12,'15935778','admin','H',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'clinica'
--

--
-- Dumping routines for database 'clinica'
--
/*!50003 DROP PROCEDURE IF EXISTS `spAgregarPaciente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spAgregarPaciente`(


in usu varchar(10),
in contraseña varchar(280),
in estado char(1),

in idTipo int,

in nombreC varchar(100),
in dni char(8),
in corr varchar(45),
in dire varchar(45),
in fecha varchar(50),
in cel char(9),
in estad char(1)

)
BEGIN
DECLARE idUsuario INTEGER(10);

insert into usuario (usuario,contraseña,estado,tipoUsuario_idTipoUsuario) values (usu,contraseña,estado,idTipo);
SET idUsuario=LAST_INSERT_ID();

insert into paciente (nombrecompleto,dni,correo,direccion,fecha_nacimiento,celular,estado,usuario_idUsuario) 
values (nombreC,dni,corr,dire,fecha,cel,estad,idUsuario);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_horarioMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_horarioMedico`(in usu varchar(10) , in contra varchar(280))
BEGIN
SELECT d.descripcion as descripcion ,t.horario_inicio as horario_inicio
	,t.horario_fin as horario_fin ,s.fecha_Inicio as fecha_inicio ,s.fecha_Fin as
	fecha_fin ,t.descripcion as turno
	FROM detallehorario dh inner join horarios h on dh.idHorarios =
	h.idhorarios
	inner join dia d on h.idDia = d.idDia
	inner join turno t on h.idTurno = t.idTurno
	inner join semana s on dh.idsemana = s.idSemana
	inner join medico m on dh.idmedico = m.idMedico
    inner join usuario u on m.usuario_idUsuario = u.idUsuario
	where dh.idsemana=4 and u.usuario = usu and u.contraseña = contra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listaCitas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listaCitas`(in usu varchar(10) , in contra varchar(280))
BEGIN
SELECT idCita,date_format(fecha_cita,'%d/%m/%Y') as fecha,p.nombrecompleto,motivo,horacita as hora FROM cita c 
inner join paciente p on c.paciente_idPaciente = p.idPaciente
inner join medico m on m.idMedico = c.medico_idMedico
inner join usuario u on u.idUsuario = m.usuario_idUsuario
where u.usuario = usu and u.contraseña = contra
;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listarMedicoPorEspecialidad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarMedicoPorEspecialidad`(in idEs int)
BEGIN
select nombrecompleto,dni,correo from medico m 
	inner join especialidad e on m.especialidad_idEspecialidad = e.idEspecialidad
		where e.idEspecialidad = idEs;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_listarMedicos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_listarMedicos`(in id int)
BEGIN
select idMedico,nombrecompleto,dni,correo,u.estado,u.contraseña as password from medico m
inner join usuario u on m.usuario_idUsuario = u.idUsuario
where idMedico = id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_logeoMedico` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_logeoMedico`(in usu varchar(10) , in contra varchar(280))
BEGIN
SELECT idUsuario,usuario,contraseña,idMedico,nombrecompleto,dni 
	FROM usuario u 
		inner join medico m on u.idUsuario = m.usuario_idUsuario
			where u.usuario = usu and contraseña = contra;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_medicoXfecha` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_medicoXfecha`(in idMedico int , in fecha date)
BEGIN
SELECT d.descripcion as descripcion ,t.horario_inicio as horario_inicio
	,t.horario_fin as horario_fin ,s.fecha_Fin as
	fecha_inicio,s.fecha_Inicio as fecha_fin,t.descripcion as turno, fecha as fechaTurno FROM horariomedico hm
				inner join semana s on s.idSemana = hm.idSemana
					inner join dia d on hm.idDia = d.idDia
						inner join turno t on hm.idTurno = t.idTurno
								where hm.idMedico = idMedico and hm.fecha = fecha;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registroCita` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registroCita`(
in fecha date,
in idMed int,
in idPaci int ,
in motiv varchar(45),
in horacita char(10)

)
BEGIN
insert into cita (
fecha_cita,fecha_emisioncita,medico_idMedico,paciente_idPaciente,motivo,horacita,estado
) values (
fecha,now(),idMed,idPaci,motiv,horacita,'H'
);



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-04  0:20:25
