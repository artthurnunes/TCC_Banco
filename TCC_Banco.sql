-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: tcc
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `tb_alunos`
--

DROP TABLE IF EXISTS `tb_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_alunos` (
  `CD_REGISTRO` int(11) NOT NULL AUTO_INCREMENT,
  `SITUACAO` tinyint(1) DEFAULT NULL,
  `NOME` varchar(100) NOT NULL,
  `TEL1` varchar(25) DEFAULT NULL,
  `TEL2` varchar(25) DEFAULT NULL,
  `PROFISSAO` varchar(50) DEFAULT NULL,
  `SEXO` varchar(15) DEFAULT NULL,
  `ESTADO_CIVIL` int(11) DEFAULT NULL,
  `RG` varchar(25) DEFAULT NULL,
  `CPF` varchar(20) DEFAULT NULL,
  `DT_NASCIMENTO` varchar(20) DEFAULT NULL,
  `NM_MAE` varchar(100) DEFAULT NULL,
  `NM_PAI` varchar(100) DEFAULT NULL,
  `NM_EMER` varchar(100) DEFAULT NULL,
  `TEL_EMER` varchar(25) DEFAULT NULL,
  `PARENTESCO` int(11) DEFAULT NULL,
  `END_RUA` varchar(100) DEFAULT NULL,
  `END_NUMERO` varchar(10) DEFAULT NULL,
  `END_BAIRRO` varchar(50) DEFAULT NULL,
  `END_CIDADE` varchar(50) DEFAULT NULL,
  `END_ESTADO` int(11) DEFAULT NULL,
  `END_CEP` varchar(25) DEFAULT NULL,
  `IMG_PERFIL` blob,
  PRIMARY KEY (`CD_REGISTRO`),
  UNIQUE KEY `CPF` (`CPF`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (1,1,'Damiana Nunes','(19) 5413-5417','(19) 98387-7421','Farmacêutica','Feminino',1,'13.874.741','845.547.841-31','25/08/1990','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',1,'Rua Alvares de Carvalho','1205','Jd St Ângelo','Sumaré',5,'13.654-541',NULL),(2,1,'Arthur Nunes','(19) 3887-7450','(19) 98414-5413','Assistênte de Sistemas','Masculino',2,'54.515.547','864.541.574-51','01/02/1987','Celia Maria Pereira','Roberto Américo Nunes','Cleisson Duarte','(19) 3541-5413',3,'Rua Olinda','58','Centro','Sumaré',5,'13.654-541',NULL),(3,1,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','451.574.841-41','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(4,0,'A','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','1','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(5,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','2','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(6,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','3','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(7,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','4','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(8,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','5','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(9,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','6','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(10,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','7','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(11,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','8','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(12,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','9','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(13,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','10','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(14,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','11','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(15,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','12','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(16,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','13','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(17,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','14','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(18,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','15','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(19,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','16','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(20,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','17','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL);
/*!40000 ALTER TABLE `tb_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_exercicios`
--

DROP TABLE IF EXISTS `tb_exercicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_exercicios` (
  `CD_EXERCICIO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_EXERCICIO` varchar(50) DEFAULT NULL,
  `CD_MEMBRO` int(11) DEFAULT NULL,
  PRIMARY KEY (`CD_EXERCICIO`),
  UNIQUE KEY `NM_EXERCICIO` (`NM_EXERCICIO`),
  KEY `CD_MEMBRO` (`CD_MEMBRO`),
  CONSTRAINT `tb_exercicios_ibfk_1` FOREIGN KEY (`CD_MEMBRO`) REFERENCES `tb_membros` (`CD_MEMBRO`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;
/*!40000 ALTER TABLE `tb_exercicios` DISABLE KEYS */;
INSERT INTO `tb_exercicios` VALUES (5,'REMADA ALTA',4),(6,'REMADA BAIXA',4),(7,'SUPINO RETO',5),(8,'CANADENSE',5),(9,'CRUSSIFIXO',5),(10,'PULLEY FRENTE ABERTO',4),(11,'SUPINO INCLINADO',5),(12,'ELEVAÇÃO LATERAL',6),(13,'ELEVAÇÃO FRONTAL',6),(14,'CROSS UNILATERAL',6);
/*!40000 ALTER TABLE `tb_exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_membros`
--

DROP TABLE IF EXISTS `tb_membros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_membros` (
  `CD_MEMBRO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_MEMBRO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CD_MEMBRO`),
  UNIQUE KEY `NM_MEMBRO` (`NM_MEMBRO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membros`
--

LOCK TABLES `tb_membros` WRITE;
/*!40000 ALTER TABLE `tb_membros` DISABLE KEYS */;
INSERT INTO `tb_membros` VALUES (10,''),(7,'BÍCEPS'),(4,'COSTAS'),(6,'OMBRO'),(5,'PEITO'),(9,'PERNA'),(8,'TRÍCEPS');
/*!40000 ALTER TABLE `tb_membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_senhas`
--

DROP TABLE IF EXISTS `tb_senhas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_senhas` (
  `usuario` varchar(20) DEFAULT NULL,
  `nome` varchar(20) DEFAULT NULL,
  `senha` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_senhas`
--

LOCK TABLES `tb_senhas` WRITE;
/*!40000 ALTER TABLE `tb_senhas` DISABLE KEYS */;
INSERT INTO `tb_senhas` VALUES ('anunes','Arthur','1','artthur.nunes@outlook.com'),('zanetti','Paulo','2','zanetti_trabalho@yahoo.com.br'),('','teste','','email@teste.com');
/*!40000 ALTER TABLE `tb_senhas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-28 17:10:39
