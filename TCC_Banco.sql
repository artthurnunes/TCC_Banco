-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
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
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;
/*!40000 ALTER TABLE `tb_exercicios` DISABLE KEYS */;
INSERT INTO `tb_exercicios` VALUES (5,'REMADA ALTA',4),(6,'REMADA BAIXA',4),(7,'SUPINO RETO',5),(8,'CANADENSE',5),(9,'CRUSSIFIXO',5),(10,'PULLEY FRENTE ABERTO',4),(11,'SUPINO INCLINADO',5),(12,'ELEVAÇÃO LATERAL',6),(13,'ELEVAÇÃO FRONTAL',6),(14,'CROSS UNILATERAL',6),(17,'ROSCA DIRETA',7),(18,'SCOTTY',7),(19,'CONCENTRADO',7),(20,'AGACHAMENTO',9),(21,'LEG 45º',9),(22,'AGACHAMENTO SMITH',9),(23,'TESTA',8),(24,'PULLEY BARRA V',8),(25,'CORDA NO CROSS',8),(26,'SUPRA',12),(27,'INFRA',12),(28,'OBLIQUO',12),(29,'ESTEIRA',11),(30,'BICICLETA',11),(31,'SPRIT',11),(32,'-',13),(33,'TESTE',14),(34,'TESTE1',14),(35,'TESTE2',14),(36,'TESTES3',14),(37,'TESTE4',14),(38,'TESTE5',14),(39,'TESTE6',14);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membros`
--

LOCK TABLES `tb_membros` WRITE;
/*!40000 ALTER TABLE `tb_membros` DISABLE KEYS */;
INSERT INTO `tb_membros` VALUES (13,'-'),(12,'ABDOMEN'),(11,'AEROBICO'),(7,'BÍCEPS'),(4,'COSTAS'),(6,'OMBRO'),(5,'PEITO'),(9,'PERNA'),(14,'TESTE'),(8,'TRÍCEPS');
/*!40000 ALTER TABLE `tb_membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_repeticoes`
--

DROP TABLE IF EXISTS `tb_repeticoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_repeticoes` (
  `CD_REPETICAO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_REPETICAO` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CD_REPETICAO`),
  UNIQUE KEY `NM_REPETICAO` (`NM_REPETICAO`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_repeticoes`
--

LOCK TABLES `tb_repeticoes` WRITE;
/*!40000 ALTER TABLE `tb_repeticoes` DISABLE KEYS */;
INSERT INTO `tb_repeticoes` VALUES (1,'3x10'),(2,'4x12'),(4,'teste');
/*!40000 ALTER TABLE `tb_repeticoes` ENABLE KEYS */;
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

--
-- Table structure for table `tb_treinosa`
--

DROP TABLE IF EXISTS `tb_treinosa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_treinosa` (
  `CD_TREINOA` int(11) NOT NULL AUTO_INCREMENT,
  `DT_INICIO` varchar(20) DEFAULT NULL,
  `DT_FIM` varchar(20) DEFAULT NULL,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `GRUPO_MUSCULARA1` int(3) DEFAULT NULL,
  `EXERCICIOA1` int(3) DEFAULT NULL,
  `REPETICAOA1` int(3) DEFAULT NULL,
  `OBSERVACAOA1` varchar(50) DEFAULT NULL,
  `EXERCICIOA1_1` int(3) DEFAULT NULL,
  `REPETICAOA1_1` int(3) DEFAULT NULL,
  `OBSERVACAOA1_1` varchar(20) DEFAULT NULL,
  `EXERCICIOA1_2` int(3) DEFAULT NULL,
  `REPETICAOA1_2` int(3) DEFAULT NULL,
  `OBSERVACAOA1_2` varchar(20) DEFAULT NULL,
  `EXERCICIOA1_3` int(3) DEFAULT NULL,
  `REPETICAOA1_3` int(3) DEFAULT NULL,
  `OBSERVACAOA1_3` varchar(20) DEFAULT NULL,
  `EXERCICIOA1_4` int(3) DEFAULT NULL,
  `REPETICAOA1_4` int(3) DEFAULT NULL,
  `OBSERVACAOA1_4` varchar(20) DEFAULT NULL,
  `EXERCICIOA1_5` int(3) DEFAULT NULL,
  `REPETICAOA1_5` int(3) DEFAULT NULL,
  `OBSERVACAOA1_5` varchar(20) DEFAULT NULL,
  `EXERCICIOA1_6` int(3) DEFAULT NULL,
  `REPETICAOA1_6` int(3) DEFAULT NULL,
  `OBSERVACAOA1_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARA2` int(3) DEFAULT NULL,
  `EXERCICIOA2` int(3) DEFAULT NULL,
  `REPETICAOA2` int(3) DEFAULT NULL,
  `OBSERVACAOA2` varchar(50) DEFAULT NULL,
  `EXERCICIOA2_1` int(3) DEFAULT NULL,
  `REPETICAOA2_1` int(3) DEFAULT NULL,
  `OBSERVACAOA2_1` varchar(20) DEFAULT NULL,
  `EXERCICIOA2_2` int(3) DEFAULT NULL,
  `REPETICAOA2_2` int(3) DEFAULT NULL,
  `OBSERVACAOA2_2` varchar(20) DEFAULT NULL,
  `EXERCICIOA2_3` int(3) DEFAULT NULL,
  `REPETICAOA2_3` int(3) DEFAULT NULL,
  `OBSERVACAOA2_3` varchar(20) DEFAULT NULL,
  `EXERCICIOA2_4` int(3) DEFAULT NULL,
  `REPETICAOA2_4` int(3) DEFAULT NULL,
  `OBSERVACAOA2_4` varchar(20) DEFAULT NULL,
  `EXERCICIOA2_5` int(3) DEFAULT NULL,
  `REPETICAOA2_5` int(3) DEFAULT NULL,
  `OBSERVACAOA2_5` varchar(20) DEFAULT NULL,
  `EXERCICIOA2_6` int(3) DEFAULT NULL,
  `REPETICAOA2_6` int(3) DEFAULT NULL,
  `OBSERVACAOA2_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARA3` int(3) DEFAULT NULL,
  `EXERCICIOA3` int(3) DEFAULT NULL,
  `REPETICAOA3` int(3) DEFAULT NULL,
  `OBSERVACAOA3` varchar(50) DEFAULT NULL,
  `EXERCICIOA3_1` int(3) DEFAULT NULL,
  `REPETICAOA3_1` int(3) DEFAULT NULL,
  `OBSERVACAOA3_1` varchar(20) DEFAULT NULL,
  `EXERCICIOA3_2` int(3) DEFAULT NULL,
  `REPETICAOA3_2` int(3) DEFAULT NULL,
  `OBSERVACAOA3_2` varchar(20) DEFAULT NULL,
  `EXERCICIOA3_3` int(3) DEFAULT NULL,
  `REPETICAOA3_3` int(3) DEFAULT NULL,
  `OBSERVACAOA3_3` varchar(20) DEFAULT NULL,
  `EXERCICIOA3_4` int(3) DEFAULT NULL,
  `REPETICAOA3_4` int(3) DEFAULT NULL,
  `OBSERVACAOA3_4` varchar(20) DEFAULT NULL,
  `EXERCICIOA3_5` int(3) DEFAULT NULL,
  `REPETICAOA3_5` int(3) DEFAULT NULL,
  `OBSERVACAOA3_5` varchar(20) DEFAULT NULL,
  `EXERCICIOA3_6` int(3) DEFAULT NULL,
  `REPETICAOA3_6` int(3) DEFAULT NULL,
  `OBSERVACAOA3_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARA4` int(3) DEFAULT NULL,
  `EXERCICIOA4` int(3) DEFAULT NULL,
  `REPETICAOA4` int(3) DEFAULT NULL,
  `OBSERVACAOA4` varchar(50) DEFAULT NULL,
  `EXERCICIOA4_1` int(3) DEFAULT NULL,
  `REPETICAOA4_1` int(3) DEFAULT NULL,
  `OBSERVACAOA4_1` varchar(20) DEFAULT NULL,
  `EXERCICIOA4_2` int(3) DEFAULT NULL,
  `REPETICAOA4_2` int(3) DEFAULT NULL,
  `OBSERVACAOA4_2` varchar(20) DEFAULT NULL,
  `EXERCICIOA4_3` int(3) DEFAULT NULL,
  `REPETICAOA4_3` int(3) DEFAULT NULL,
  `OBSERVACAOA4_3` varchar(20) DEFAULT NULL,
  `EXERCICIOA4_4` int(3) DEFAULT NULL,
  `REPETICAOA4_4` int(3) DEFAULT NULL,
  `OBSERVACAOA4_4` varchar(20) DEFAULT NULL,
  `EXERCICIOA4_5` int(3) DEFAULT NULL,
  `REPETICAOA4_5` int(3) DEFAULT NULL,
  `OBSERVACAOA4_5` varchar(20) DEFAULT NULL,
  `EXERCICIOA4_6` int(3) DEFAULT NULL,
  `REPETICAOA4_6` int(3) DEFAULT NULL,
  `OBSERVACAOA4_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARA5` int(3) DEFAULT NULL,
  `EXERCICIOA5` int(3) DEFAULT NULL,
  `REPETICAOA5` int(3) DEFAULT NULL,
  `OBSERVACAOA5` varchar(50) DEFAULT NULL,
  `EXERCICIOA5_1` int(3) DEFAULT NULL,
  `REPETICAOA5_1` int(3) DEFAULT NULL,
  `OBSERVACAOA5_1` varchar(20) DEFAULT NULL,
  `EXERCICIOA5_2` int(3) DEFAULT NULL,
  `REPETICAOA5_2` int(3) DEFAULT NULL,
  `OBSERVACAOA5_2` varchar(20) DEFAULT NULL,
  `EXERCICIOA5_3` int(3) DEFAULT NULL,
  `REPETICAOA5_3` int(3) DEFAULT NULL,
  `OBSERVACAOA5_3` varchar(20) DEFAULT NULL,
  `EXERCICIOA5_4` int(3) DEFAULT NULL,
  `REPETICAOA5_4` int(3) DEFAULT NULL,
  `OBSERVACAOA5_4` varchar(20) DEFAULT NULL,
  `EXERCICIOA5_5` int(3) DEFAULT NULL,
  `REPETICAOA5_5` int(3) DEFAULT NULL,
  `OBSERVACAOA5_5` varchar(20) DEFAULT NULL,
  `EXERCICIOA5_6` int(3) DEFAULT NULL,
  `REPETICAOA5_6` int(3) DEFAULT NULL,
  `OBSERVACAOA5_6` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOA`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosa`
--

LOCK TABLES `tb_treinosa` WRITE;
/*!40000 ALTER TABLE `tb_treinosa` DISABLE KEYS */;
INSERT INTO `tb_treinosa` VALUES (1,'','',3,14,33,4,'1',34,4,'2',35,4,'3',36,4,'4',37,4,'5',38,4,'6',39,4,'7',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'');
/*!40000 ALTER TABLE `tb_treinosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_treinosb`
--

DROP TABLE IF EXISTS `tb_treinosb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_treinosb` (
  `CD_TREINOB` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `GRUPO_MUSCULARB1` int(3) DEFAULT NULL,
  `EXERCICIOB1` int(3) DEFAULT NULL,
  `REPETICAOB1` int(3) DEFAULT NULL,
  `OBSERVACAOB1` varchar(50) DEFAULT NULL,
  `EXERCICIOB1_1` int(3) DEFAULT NULL,
  `REPETICAOB1_1` int(3) DEFAULT NULL,
  `OBSERVACAOB1_1` varchar(20) DEFAULT NULL,
  `EXERCICIOB1_2` int(3) DEFAULT NULL,
  `REPETICAOB1_2` int(3) DEFAULT NULL,
  `OBSERVACAOB1_2` varchar(20) DEFAULT NULL,
  `EXERCICIOB1_3` int(3) DEFAULT NULL,
  `REPETICAOB1_3` int(3) DEFAULT NULL,
  `OBSERVACAOB1_3` varchar(20) DEFAULT NULL,
  `EXERCICIOB1_4` int(3) DEFAULT NULL,
  `REPETICAOB1_4` int(3) DEFAULT NULL,
  `OBSERVACAOB1_4` varchar(20) DEFAULT NULL,
  `EXERCICIOB1_5` int(3) DEFAULT NULL,
  `REPETICAOB1_5` int(3) DEFAULT NULL,
  `OBSERVACAOB1_5` varchar(20) DEFAULT NULL,
  `EXERCICIOB1_6` int(3) DEFAULT NULL,
  `REPETICAOB1_6` int(3) DEFAULT NULL,
  `OBSERVACAOB1_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARB2` int(3) DEFAULT NULL,
  `EXERCICIOB2` int(3) DEFAULT NULL,
  `REPETICAOB2` int(3) DEFAULT NULL,
  `OBSERVACAOB2` varchar(50) DEFAULT NULL,
  `EXERCICIOB2_1` int(3) DEFAULT NULL,
  `REPETICAOB2_1` int(3) DEFAULT NULL,
  `OBSERVACAOB2_1` varchar(20) DEFAULT NULL,
  `EXERCICIOB2_2` int(3) DEFAULT NULL,
  `REPETICAOB2_2` int(3) DEFAULT NULL,
  `OBSERVACAOB2_2` varchar(20) DEFAULT NULL,
  `EXERCICIOB2_3` int(3) DEFAULT NULL,
  `REPETICAOB2_3` int(3) DEFAULT NULL,
  `OBSERVACAOB2_3` varchar(20) DEFAULT NULL,
  `EXERCICIOB2_4` int(3) DEFAULT NULL,
  `REPETICAOB2_4` int(3) DEFAULT NULL,
  `OBSERVACAOB2_4` varchar(20) DEFAULT NULL,
  `EXERCICIOB2_5` int(3) DEFAULT NULL,
  `REPETICAOB2_5` int(3) DEFAULT NULL,
  `OBSERVACAOB2_5` varchar(20) DEFAULT NULL,
  `EXERCICIOB2_6` int(3) DEFAULT NULL,
  `REPETICAOB2_6` int(3) DEFAULT NULL,
  `OBSERVACAOB2_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARB3` int(3) DEFAULT NULL,
  `EXERCICIOB3` int(3) DEFAULT NULL,
  `REPETICAOB3` int(3) DEFAULT NULL,
  `OBSERVACAOB3` varchar(50) DEFAULT NULL,
  `EXERCICIOB3_1` int(3) DEFAULT NULL,
  `REPETICAOB3_1` int(3) DEFAULT NULL,
  `OBSERVACAOB3_1` varchar(20) DEFAULT NULL,
  `EXERCICIOB3_2` int(3) DEFAULT NULL,
  `REPETICAOB3_2` int(3) DEFAULT NULL,
  `OBSERVACAOB3_2` varchar(20) DEFAULT NULL,
  `EXERCICIOB3_3` int(3) DEFAULT NULL,
  `REPETICAOB3_3` int(3) DEFAULT NULL,
  `OBSERVACAOB3_3` varchar(20) DEFAULT NULL,
  `EXERCICIOB3_4` int(3) DEFAULT NULL,
  `REPETICAOB3_4` int(3) DEFAULT NULL,
  `OBSERVACAOB3_4` varchar(20) DEFAULT NULL,
  `EXERCICIOB3_5` int(3) DEFAULT NULL,
  `REPETICAOB3_5` int(3) DEFAULT NULL,
  `OBSERVACAOB3_5` varchar(20) DEFAULT NULL,
  `EXERCICIOB3_6` int(3) DEFAULT NULL,
  `REPETICAOB3_6` int(3) DEFAULT NULL,
  `OBSERVACAOB3_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARB4` int(3) DEFAULT NULL,
  `EXERCICIOB4` int(3) DEFAULT NULL,
  `REPETICAOB4` int(3) DEFAULT NULL,
  `OBSERVACAOB4` varchar(50) DEFAULT NULL,
  `EXERCICIOB4_1` int(3) DEFAULT NULL,
  `REPETICAOB4_1` int(3) DEFAULT NULL,
  `OBSERVACAOB4_1` varchar(20) DEFAULT NULL,
  `EXERCICIOB4_2` int(3) DEFAULT NULL,
  `REPETICAOB4_2` int(3) DEFAULT NULL,
  `OBSERVACAOB4_2` varchar(20) DEFAULT NULL,
  `EXERCICIOB4_3` int(3) DEFAULT NULL,
  `REPETICAOB4_3` int(3) DEFAULT NULL,
  `OBSERVACAOB4_3` varchar(20) DEFAULT NULL,
  `EXERCICIOB4_4` int(3) DEFAULT NULL,
  `REPETICAOB4_4` int(3) DEFAULT NULL,
  `OBSERVACAOB4_4` varchar(20) DEFAULT NULL,
  `EXERCICIOB4_5` int(3) DEFAULT NULL,
  `REPETICAOB4_5` int(3) DEFAULT NULL,
  `OBSERVACAOB4_5` varchar(20) DEFAULT NULL,
  `EXERCICIOB4_6` int(3) DEFAULT NULL,
  `REPETICAOB4_6` int(3) DEFAULT NULL,
  `OBSERVACAOB4_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARB5` int(3) DEFAULT NULL,
  `EXERCICIOB5` int(3) DEFAULT NULL,
  `REPETICAOB5` int(3) DEFAULT NULL,
  `OBSERVACAOB5` varchar(50) DEFAULT NULL,
  `EXERCICIOB5_1` int(3) DEFAULT NULL,
  `REPETICAOB5_1` int(3) DEFAULT NULL,
  `OBSERVACAOB5_1` varchar(20) DEFAULT NULL,
  `EXERCICIOB5_2` int(3) DEFAULT NULL,
  `REPETICAOB5_2` int(3) DEFAULT NULL,
  `OBSERVACAOB5_2` varchar(20) DEFAULT NULL,
  `EXERCICIOB5_3` int(3) DEFAULT NULL,
  `REPETICAOB5_3` int(3) DEFAULT NULL,
  `OBSERVACAOB5_3` varchar(20) DEFAULT NULL,
  `EXERCICIOB5_4` int(3) DEFAULT NULL,
  `REPETICAOB5_4` int(3) DEFAULT NULL,
  `OBSERVACAOB5_4` varchar(20) DEFAULT NULL,
  `EXERCICIOB5_5` int(3) DEFAULT NULL,
  `REPETICAOB5_5` int(3) DEFAULT NULL,
  `OBSERVACAOB5_5` varchar(20) DEFAULT NULL,
  `EXERCICIOB5_6` int(3) DEFAULT NULL,
  `REPETICAOB5_6` int(3) DEFAULT NULL,
  `OBSERVACAOB5_6` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOB`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosb`
--

LOCK TABLES `tb_treinosb` WRITE;
/*!40000 ALTER TABLE `tb_treinosb` DISABLE KEYS */;
INSERT INTO `tb_treinosb` VALUES (1,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(2,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(3,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(4,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(5,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(6,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(7,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(8,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(9,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(10,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(11,1,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(12,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(13,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(14,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(15,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(16,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(17,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(18,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(19,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(20,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(21,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(22,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'');
/*!40000 ALTER TABLE `tb_treinosb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_treinosc`
--

DROP TABLE IF EXISTS `tb_treinosc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_treinosc` (
  `CD_TREINOC` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `GRUPO_MUSCULARC1` int(3) DEFAULT NULL,
  `EXERCICIOC1` int(3) DEFAULT NULL,
  `REPETICAOC1` int(3) DEFAULT NULL,
  `OBSERVACAOC1` varchar(50) DEFAULT NULL,
  `EXERCICIOC1_1` int(3) DEFAULT NULL,
  `REPETICAOC1_1` int(3) DEFAULT NULL,
  `OBSERVACAOC1_1` varchar(20) DEFAULT NULL,
  `EXERCICIOC1_2` int(3) DEFAULT NULL,
  `REPETICAOC1_2` int(3) DEFAULT NULL,
  `OBSERVACAOC1_2` varchar(20) DEFAULT NULL,
  `EXERCICIOC1_3` int(3) DEFAULT NULL,
  `REPETICAOC1_3` int(3) DEFAULT NULL,
  `OBSERVACAOC1_3` varchar(20) DEFAULT NULL,
  `EXERCICIOC1_4` int(3) DEFAULT NULL,
  `REPETICAOC1_4` int(3) DEFAULT NULL,
  `OBSERVACAOC1_4` varchar(20) DEFAULT NULL,
  `EXERCICIOC1_5` int(3) DEFAULT NULL,
  `REPETICAOC1_5` int(3) DEFAULT NULL,
  `OBSERVACAOC1_5` varchar(20) DEFAULT NULL,
  `EXERCICIOC1_6` int(3) DEFAULT NULL,
  `REPETICAOC1_6` int(3) DEFAULT NULL,
  `OBSERVACAOC1_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARC2` int(3) DEFAULT NULL,
  `EXERCICIOC2` int(3) DEFAULT NULL,
  `REPETICAOC2` int(3) DEFAULT NULL,
  `OBSERVACAOC2` varchar(50) DEFAULT NULL,
  `EXERCICIOC2_1` int(3) DEFAULT NULL,
  `REPETICAOC2_1` int(3) DEFAULT NULL,
  `OBSERVACAOC2_1` varchar(20) DEFAULT NULL,
  `EXERCICIOC2_2` int(3) DEFAULT NULL,
  `REPETICAOC2_2` int(3) DEFAULT NULL,
  `OBSERVACAOC2_2` varchar(20) DEFAULT NULL,
  `EXERCICIOC2_3` int(3) DEFAULT NULL,
  `REPETICAOC2_3` int(3) DEFAULT NULL,
  `OBSERVACAOC2_3` varchar(20) DEFAULT NULL,
  `EXERCICIOC2_4` int(3) DEFAULT NULL,
  `REPETICAOC2_4` int(3) DEFAULT NULL,
  `OBSERVACAOC2_4` varchar(20) DEFAULT NULL,
  `EXERCICIOC2_5` int(3) DEFAULT NULL,
  `REPETICAOC2_5` int(3) DEFAULT NULL,
  `OBSERVACAOC2_5` varchar(20) DEFAULT NULL,
  `EXERCICIOC2_6` int(3) DEFAULT NULL,
  `REPETICAOC2_6` int(3) DEFAULT NULL,
  `OBSERVACAOC2_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARC3` int(3) DEFAULT NULL,
  `EXERCICIOC3` int(3) DEFAULT NULL,
  `REPETICAOC3` int(3) DEFAULT NULL,
  `OBSERVACAOC3` varchar(50) DEFAULT NULL,
  `EXERCICIOC3_1` int(3) DEFAULT NULL,
  `REPETICAOC3_1` int(3) DEFAULT NULL,
  `OBSERVACAOC3_1` varchar(20) DEFAULT NULL,
  `EXERCICIOC3_2` int(3) DEFAULT NULL,
  `REPETICAOC3_2` int(3) DEFAULT NULL,
  `OBSERVACAOC3_2` varchar(20) DEFAULT NULL,
  `EXERCICIOC3_3` int(3) DEFAULT NULL,
  `REPETICAOC3_3` int(3) DEFAULT NULL,
  `OBSERVACAOC3_3` varchar(20) DEFAULT NULL,
  `EXERCICIOC3_4` int(3) DEFAULT NULL,
  `REPETICAOC3_4` int(3) DEFAULT NULL,
  `OBSERVACAOC3_4` varchar(20) DEFAULT NULL,
  `EXERCICIOC3_5` int(3) DEFAULT NULL,
  `REPETICAOC3_5` int(3) DEFAULT NULL,
  `OBSERVACAOC3_5` varchar(20) DEFAULT NULL,
  `EXERCICIOC3_6` int(3) DEFAULT NULL,
  `REPETICAOC3_6` int(3) DEFAULT NULL,
  `OBSERVACAOC3_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARC4` int(3) DEFAULT NULL,
  `EXERCICIOC4` int(3) DEFAULT NULL,
  `REPETICAOC4` int(3) DEFAULT NULL,
  `OBSERVACAOC4` varchar(50) DEFAULT NULL,
  `EXERCICIOC4_1` int(3) DEFAULT NULL,
  `REPETICAOC4_1` int(3) DEFAULT NULL,
  `OBSERVACAOC4_1` varchar(20) DEFAULT NULL,
  `EXERCICIOC4_2` int(3) DEFAULT NULL,
  `REPETICAOC4_2` int(3) DEFAULT NULL,
  `OBSERVACAOC4_2` varchar(20) DEFAULT NULL,
  `EXERCICIOC4_3` int(3) DEFAULT NULL,
  `REPETICAOC4_3` int(3) DEFAULT NULL,
  `OBSERVACAOC4_3` varchar(20) DEFAULT NULL,
  `EXERCICIOC4_4` int(3) DEFAULT NULL,
  `REPETICAOC4_4` int(3) DEFAULT NULL,
  `OBSERVACAOC4_4` varchar(20) DEFAULT NULL,
  `EXERCICIOC4_5` int(3) DEFAULT NULL,
  `REPETICAOC4_5` int(3) DEFAULT NULL,
  `OBSERVACAOC4_5` varchar(20) DEFAULT NULL,
  `EXERCICIOC4_6` int(3) DEFAULT NULL,
  `REPETICAOC4_6` int(3) DEFAULT NULL,
  `OBSERVACAOC4_6` varchar(20) DEFAULT NULL,
  `GRUPO_MUSCULARC5` int(3) DEFAULT NULL,
  `EXERCICIOC5` int(3) DEFAULT NULL,
  `REPETICAOC5` int(3) DEFAULT NULL,
  `OBSERVACAOC5` varchar(50) DEFAULT NULL,
  `EXERCICIOC5_1` int(3) DEFAULT NULL,
  `REPETICAOC5_1` int(3) DEFAULT NULL,
  `OBSERVACAOC5_1` varchar(20) DEFAULT NULL,
  `EXERCICIOC5_2` int(3) DEFAULT NULL,
  `REPETICAOC5_2` int(3) DEFAULT NULL,
  `OBSERVACAOC5_2` varchar(20) DEFAULT NULL,
  `EXERCICIOC5_3` int(3) DEFAULT NULL,
  `REPETICAOC5_3` int(3) DEFAULT NULL,
  `OBSERVACAOC5_3` varchar(20) DEFAULT NULL,
  `EXERCICIOC5_4` int(3) DEFAULT NULL,
  `REPETICAOC5_4` int(3) DEFAULT NULL,
  `OBSERVACAOC5_4` varchar(20) DEFAULT NULL,
  `EXERCICIOC5_5` int(3) DEFAULT NULL,
  `REPETICAOC5_5` int(3) DEFAULT NULL,
  `OBSERVACAOC5_5` varchar(20) DEFAULT NULL,
  `EXERCICIOC5_6` int(3) DEFAULT NULL,
  `REPETICAOC5_6` int(3) DEFAULT NULL,
  `OBSERVACAOC5_6` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOC`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosc`
--

LOCK TABLES `tb_treinosc` WRITE;
/*!40000 ALTER TABLE `tb_treinosc` DISABLE KEYS */;
INSERT INTO `tb_treinosc` VALUES (1,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(2,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(3,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(4,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(5,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(6,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(7,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(8,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(9,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(10,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(11,1,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(12,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(13,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(14,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(15,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(16,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(17,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(18,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(19,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(20,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(21,2,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,''),(22,3,13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',13,32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'',32,1,'');
/*!40000 ALTER TABLE `tb_treinosc` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-02 22:34:09
