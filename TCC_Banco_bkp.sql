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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (1,1,'Damiana Nunes','(19) 5413-5417','(19) 98387-7421','Farmacêutica','Feminino',1,'13.874.741','845.547.841-31','25/08/1990','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',1,'Rua Alvares de Carvalho','1205','Jd St Ângelo','Sumaré',5,'13.654-541',NULL),(2,1,'Arthur Nunes','(19) 3887-7450','(19) 98414-5413','Assistênte de Sistemas','Masculino',2,'54.515.547','864.541.574-51','01/02/1987','Celia Maria Pereira','Roberto Américo Nunes','Cleisson Duarte','(19) 3541-5413',3,'Rua Olinda','58','Centro','Sumaré',5,'13.654-541',NULL),(3,1,'Arizeu Santana teste1','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','451.574.841-41','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares 3','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(4,0,'A','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','1','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(5,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','2','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(6,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','3','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(7,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','4','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(8,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','5','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(9,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','6','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(10,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','7','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(11,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','8','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(12,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','9','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(13,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','10','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(14,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','11','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(15,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','12','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(16,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','13','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(17,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','14','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(18,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','15','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(19,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','16','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(20,0,'Arizeu Santana','(19) 5412-5416','(19) 97842-4127','Empresário','Masculino',2,'17.541.571-X','17','01/12/1970','Joana de Carvalho','Rafael Nascimento','Ricardo Soares','(19) 3578-5746',4,'Av João Darco','2548','Cambaré','Americana',8,'15.548-541',NULL),(21,1,'Teste','','','','Feminino',0,'','234.354.556-34','','','','','',0,'','','','',0,'',NULL),(22,1,'sdfsdf','','','','Feminino',0,'','454.354.232-42','','','','','',0,'','','','',0,'',NULL),(23,1,'12345','','','',NULL,0,'','342.434.254-53','','','','','',0,'','','','',0,'',NULL),(24,1,'534535','','','',NULL,0,'','435.356.457-45','','','','','',0,'','','','',0,'',NULL),(25,1,'fssfwrefsfee','','','','Feminino',0,'','325.465.676-75','','','','','',0,'','','','',0,'',NULL),(26,1,'cxvgfdgggtfd','','','',NULL,0,'','454.355.667-65','','','','','',0,'','','','',0,'',NULL),(27,1,'dsfhgfjryuet42rr','','','',NULL,0,'','255.656.876-98','','','','','',0,'','','','',0,'',NULL),(28,1,'ghry46y6t4y4','','','',NULL,0,'','654.766.575-67','','','','','',0,'','','','',0,'',NULL),(29,1,'fdgfdge45yt43t42','','','',NULL,0,'','656.779.790-98','','','','','',0,'','','','',0,'',NULL),(30,1,'fd','','','',NULL,0,'','332.   .   -  ','','','','','',0,'','','','',0,'',NULL),(31,1,'dfgdg','','','',NULL,0,'','545.342.342-34','','','','','',0,'','','','',0,'',NULL),(32,1,'ewrwer','','','',NULL,0,'','4  .   .   -  ','','','','','',0,'','','','',0,'',NULL),(33,1,'sdfsdf','','','',NULL,0,'','343.344.324-32','','','','','',0,'','','','',0,'',NULL),(34,1,'zxccxz','','','',NULL,0,'','432.143.244-33','','','','','',0,'','','','',0,'',NULL),(35,1,'sdfe43','','','',NULL,0,'','342.452.543-54','','','','','',0,'','','','',0,'',NULL),(36,1,'dsfsfwe4w4f','','','',NULL,0,'','435.345.535-34','','','','','',0,'','','','',0,'',NULL),(37,1,'vfdsfdsfsdf','','','',NULL,0,'','242.343.242-42','','','','','',0,'','','','',0,'',NULL),(38,1,'3rewrwr','','','',NULL,0,'','432.424.425-25','','','','','',0,'','','','',0,'',NULL),(39,1,'sdfwr4e','','','',NULL,0,'','324.243.243-42','','','','','',0,'','','','',0,'',NULL),(40,1,'dfgegregtrew','','','',NULL,0,'','342.342.545-24','','','','','',0,'','','','',0,'',NULL),(41,1,'teste cadastro obrigatorio plano','','','',NULL,0,'','343.546.452-33','','','','','',0,'','','','',0,'',NULL),(42,1,'sdfsf4wwtr2t4tr2r','','','','Masculino',0,'','435.435.434-56','','','','','',0,'','','','',0,'',NULL),(43,1,'dfgdgteete5t45','','','',NULL,0,'','242.543.534-32','','','','','',0,'','','','',0,'',NULL),(44,1,'WRFSFSFDFFSGSF','','','','Masculino',0,'','453.664.744-52','','','','','',0,'','','','',0,'',NULL),(45,1,'xdfsdfsd','','','','Masculino',0,'','425.435.345-43','','','','','',0,'','','','',0,'',NULL),(46,1,'sdfsfdr32r3r','','','','Masculino',0,'','432.442.423-43','','','','','',0,'','','','',0,'',NULL);
/*!40000 ALTER TABLE `tb_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_despesas_programadas`
--

DROP TABLE IF EXISTS `tb_despesas_programadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_despesas_programadas` (
  `CD_DESPESA` int(11) NOT NULL AUTO_INCREMENT,
  `NM_DESPESA` varchar(100) DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  `VENCIMENTO` date DEFAULT NULL,
  `PAGO` tinyint(1) DEFAULT '0',
  `PROGRAMADA` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`CD_DESPESA`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_despesas_programadas`
--

LOCK TABLES `tb_despesas_programadas` WRITE;
/*!40000 ALTER TABLE `tb_despesas_programadas` DISABLE KEYS */;
INSERT INTO `tb_despesas_programadas` VALUES (1,'LUZ',80,'2018-09-21',0,1),(3,'Agua',2,'2018-01-01',0,1),(4,'teste',10,'2015-06-21',1,1),(5,'Teste não programado',1000,'2018-09-21',0,0);
/*!40000 ALTER TABLE `tb_despesas_programadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_equipamentos`
--

DROP TABLE IF EXISTS `tb_equipamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_equipamentos` (
  `CD_EQUIPAMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_EQUIPAMENTO` varchar(100) DEFAULT NULL,
  `DT_COMPRA_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `FORNECEDOR_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `NOTA_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `VALOR_EQUIPAMENTO` float DEFAULT NULL,
  `DT_GARANTIA_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `DT_ULTIMA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `EMPRESA_MANUTENCAO` varchar(100) DEFAULT NULL,
  `DT_GARANTIA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `DT_PROXIMA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `PROXIMA_EMPRESA` varchar(100) DEFAULT NULL,
  `ATIVO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CD_EQUIPAMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipamentos`
--

LOCK TABLES `tb_equipamentos` WRITE;
/*!40000 ALTER TABLE `tb_equipamentos` DISABLE KEYS */;
INSERT INTO `tb_equipamentos` VALUES (1,'Peck Deck','22/22/2222','2','2',2,'2','22/22/2222','2','2','22/22/2222','2',1),(2,'33333','33/33/3333','333333','3',3,'3','33/33/3333','333','3333','33/33/3333','333',0);
/*!40000 ALTER TABLE `tb_equipamentos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;
/*!40000 ALTER TABLE `tb_exercicios` DISABLE KEYS */;
INSERT INTO `tb_exercicios` VALUES (1,'SUPINO RETO',1);
/*!40000 ALTER TABLE `tb_exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_frequencia_alunos`
--

DROP TABLE IF EXISTS `tb_frequencia_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_frequencia_alunos` (
  `CD_REGISTRO` int(3) NOT NULL,
  `DT_ENTRADA` date DEFAULT NULL,
  PRIMARY KEY (`CD_REGISTRO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_frequencia_alunos`
--

LOCK TABLES `tb_frequencia_alunos` WRITE;
/*!40000 ALTER TABLE `tb_frequencia_alunos` DISABLE KEYS */;
INSERT INTO `tb_frequencia_alunos` VALUES (1,'2018-09-13'),(2,'2018-09-16'),(3,'2018-09-26');
/*!40000 ALTER TABLE `tb_frequencia_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_frequencia_alunos_historico`
--

DROP TABLE IF EXISTS `tb_frequencia_alunos_historico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_frequencia_alunos_historico` (
  `CD_FREQUENCIA` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `DT_ENTRADA` date DEFAULT NULL,
  `HR_ENTRADA` varchar(10) DEFAULT NULL,
  `HR_SAIDA` varchar(10) DEFAULT NULL,
  `ON_OFF` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`CD_FREQUENCIA`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_frequencia_alunos_historico_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_frequencia_alunos_historico`
--

LOCK TABLES `tb_frequencia_alunos_historico` WRITE;
/*!40000 ALTER TABLE `tb_frequencia_alunos_historico` DISABLE KEYS */;
INSERT INTO `tb_frequencia_alunos_historico` VALUES (1,3,'2018-09-16','10:59:48','19:02:47',0),(2,3,'2018-09-16','11:01:55','19:02:47',0),(3,3,'2018-09-16','19:00:43','19:02:47',0),(4,3,'2018-09-16','19:02:43','19:02:47',0),(5,1,'2018-09-16','21:31:49','21:31:53',0),(6,2,'2018-09-16','21:31:57','21:32:00',0),(7,3,'2018-09-17','15:53:51','15:54:14',0),(8,3,'2018-09-21','16:02:39','16:02:42',0),(9,3,'2018-09-26','18:47:22','18:47:26',0);
/*!40000 ALTER TABLE `tb_frequencia_alunos_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_historico_pagamentos_alunos`
--

DROP TABLE IF EXISTS `tb_historico_pagamentos_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_historico_pagamentos_alunos` (
  `CD_PAGAMENTO` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `PROXIMO_VENCIMENTO` date DEFAULT NULL,
  `DT_PAGAMENTO` date DEFAULT NULL,
  `VALOR_PAGO` float DEFAULT NULL,
  PRIMARY KEY (`CD_PAGAMENTO`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_historico_pagamentos_alunos_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_historico_pagamentos_alunos`
--

LOCK TABLES `tb_historico_pagamentos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_historico_pagamentos_alunos` DISABLE KEYS */;
INSERT INTO `tb_historico_pagamentos_alunos` VALUES (1,3,'2018-09-15',NULL,NULL),(2,46,'2018-10-01',NULL,NULL),(3,24,'2018-10-01',NULL,NULL);
/*!40000 ALTER TABLE `tb_historico_pagamentos_alunos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membros`
--

LOCK TABLES `tb_membros` WRITE;
/*!40000 ALTER TABLE `tb_membros` DISABLE KEYS */;
INSERT INTO `tb_membros` VALUES (1,'PEITO');
/*!40000 ALTER TABLE `tb_membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_mod_alunos`
--

DROP TABLE IF EXISTS `tb_mod_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mod_alunos` (
  `CD_MOD_ALUNO` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `CD_MODALIDADE1` int(3) DEFAULT NULL,
  `CD_MODALIDADE2` int(3) DEFAULT NULL,
  `CD_MODALIDADE3` int(3) DEFAULT NULL,
  `CD_MODALIDADE4` int(3) DEFAULT NULL,
  `CD_MODALIDADE5` int(3) DEFAULT NULL,
  `CD_MODALIDADE6` int(3) DEFAULT NULL,
  `CD_MODALIDADE7` int(3) DEFAULT NULL,
  `CD_MODALIDADE8` int(3) DEFAULT NULL,
  PRIMARY KEY (`CD_MOD_ALUNO`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  KEY `CD_MODALIDADE1` (`CD_MODALIDADE1`),
  KEY `CD_MODALIDADE2` (`CD_MODALIDADE2`),
  KEY `CD_MODALIDADE3` (`CD_MODALIDADE3`),
  KEY `CD_MODALIDADE4` (`CD_MODALIDADE4`),
  KEY `CD_MODALIDADE5` (`CD_MODALIDADE5`),
  KEY `CD_MODALIDADE6` (`CD_MODALIDADE6`),
  KEY `CD_MODALIDADE7` (`CD_MODALIDADE7`),
  KEY `CD_MODALIDADE8` (`CD_MODALIDADE8`),
  CONSTRAINT `tb_mod_alunos_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`),
  CONSTRAINT `tb_mod_alunos_ibfk_2` FOREIGN KEY (`CD_MODALIDADE1`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_3` FOREIGN KEY (`CD_MODALIDADE2`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_4` FOREIGN KEY (`CD_MODALIDADE3`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_5` FOREIGN KEY (`CD_MODALIDADE4`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_6` FOREIGN KEY (`CD_MODALIDADE5`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_7` FOREIGN KEY (`CD_MODALIDADE6`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_8` FOREIGN KEY (`CD_MODALIDADE7`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`),
  CONSTRAINT `tb_mod_alunos_ibfk_9` FOREIGN KEY (`CD_MODALIDADE8`) REFERENCES `tb_modalidades` (`CD_MODALIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mod_alunos`
--

LOCK TABLES `tb_mod_alunos` WRITE;
/*!40000 ALTER TABLE `tb_mod_alunos` DISABLE KEYS */;
INSERT INTO `tb_mod_alunos` VALUES (1,3,3,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_mod_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_modalidades`
--

DROP TABLE IF EXISTS `tb_modalidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_modalidades` (
  `CD_MODALIDADE` int(11) NOT NULL AUTO_INCREMENT,
  `NM_MODALIDADE` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CD_MODALIDADE`),
  UNIQUE KEY `NM_MODALIDADE` (`NM_MODALIDADE`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modalidades`
--

LOCK TABLES `tb_modalidades` WRITE;
/*!40000 ALTER TABLE `tb_modalidades` DISABLE KEYS */;
INSERT INTO `tb_modalidades` VALUES (3,'LUTA'),(1,'MUSCULAÇÃO'),(9,'NATAÇÃO');
/*!40000 ALTER TABLE `tb_modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_planos_alunos`
--

DROP TABLE IF EXISTS `tb_planos_alunos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_planos_alunos` (
  `CD_PLANO_ALUNO` int(11) NOT NULL AUTO_INCREMENT,
  `CD_REGISTRO` int(3) DEFAULT NULL,
  `CD_PLANO` int(3) DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  `TP_DESCONTO` varchar(2) DEFAULT NULL,
  `DESCONTO` float DEFAULT NULL,
  `VENCIMENTO` int(2) DEFAULT NULL,
  PRIMARY KEY (`CD_PLANO_ALUNO`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_planos_alunos_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planos_alunos`
--

LOCK TABLES `tb_planos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_planos_alunos` DISABLE KEYS */;
INSERT INTO `tb_planos_alunos` VALUES (1,3,13,72,'%',10,1),(2,21,13,80,'%',0,1),(5,44,13,80,'%',0,1),(6,3,13,74.2,'R$',5.8,1),(7,3,13,80,'%',0,1),(8,46,13,80,'%',0,1),(9,24,13,80,'%',0,1),(10,3,13,80,'%',0,15);
/*!40000 ALTER TABLE `tb_planos_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_planos_valores`
--

DROP TABLE IF EXISTS `tb_planos_valores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_planos_valores` (
  `CD_PLANO` int(11) NOT NULL AUTO_INCREMENT,
  `NM_PLANO` varchar(30) DEFAULT NULL,
  `VALOR` float DEFAULT NULL,
  PRIMARY KEY (`CD_PLANO`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planos_valores`
--

LOCK TABLES `tb_planos_valores` WRITE;
/*!40000 ALTER TABLE `tb_planos_valores` DISABLE KEYS */;
INSERT INTO `tb_planos_valores` VALUES (13,'Mensal',80);
/*!40000 ALTER TABLE `tb_planos_valores` ENABLE KEYS */;
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
  `USUARIO` varchar(20) NOT NULL,
  `NOME` varchar(100) DEFAULT NULL,
  `SENHA` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(50) NOT NULL,
  PRIMARY KEY (`USUARIO`),
  UNIQUE KEY `USUARIO` (`USUARIO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_senhas`
--

LOCK TABLES `tb_senhas` WRITE;
/*!40000 ALTER TABLE `tb_senhas` DISABLE KEYS */;
INSERT INTO `tb_senhas` VALUES ('','TESTE','','teste@outlook.com'),('anunes','Arthur Nunes','2','artthur.nunes@outlook.com');
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
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosa_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosa`
--

LOCK TABLES `tb_treinosa` WRITE;
/*!40000 ALTER TABLE `tb_treinosa` DISABLE KEYS */;
INSERT INTO `tb_treinosa` VALUES (1,'','',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(2,'','',2,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(3,'','',2,1,1,1,'frsd',1,1,'sdfsdf',1,1,'sdfdsf',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(4,'12/11/1990','12/02/1989',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(5,'  /  /    ','  /  /    ',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(6,'  /  /    ','  /  /    ',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(7,'  /  /    ','  /  /    ',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(8,'  /  /    ','  /  /    ',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(9,'  /  /    ','27/09/2018',3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'');
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
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosb_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosb`
--

LOCK TABLES `tb_treinosb` WRITE;
/*!40000 ALTER TABLE `tb_treinosb` DISABLE KEYS */;
INSERT INTO `tb_treinosb` VALUES (1,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(2,2,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(3,2,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(4,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(5,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(6,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(7,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(8,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(9,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'');
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
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosc_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosc`
--

LOCK TABLES `tb_treinosc` WRITE;
/*!40000 ALTER TABLE `tb_treinosc` DISABLE KEYS */;
INSERT INTO `tb_treinosc` VALUES (1,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(2,2,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(3,2,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'sdfsd',1,1,'fsdf',1,1,'sdfds',1,1,'',1,1,'',1,1,'',1,1,''),(4,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(5,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(6,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(7,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(8,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,''),(9,3,1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'',1,1,'');
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

-- Dump completed on 2018-09-27 19:56:35
