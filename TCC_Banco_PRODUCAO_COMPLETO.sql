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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (1,1,'Arthur Roberto Pereira Nunes','(19)98387 6779','','Assistênte de Sistemas','Masculino',1,'13.345.432\'','394.878.748-30','05/10/1989','Célia Maria Pereira ','Roberto Américo Nunes','Damiana Nunes','98128 5336',3,'Rua Flora Ferreira Gomes','81','Parque Florelly','Sumaré',25,'13.178.224',NULL),(2,1,'Damiana Aparecida Nunes','(19)98128 5336','','Farmacêutica','Feminino',1,'12.545.547','557.811.516-57','25/08/1990','Maria Aparecida','Orivaldo Barreto','Arthur Nunes','98387 6779',3,'Rua Flora Ferreira Gomes','81','Parque Florelly','Sumaré',25,'13.178-224',NULL),(3,1,'Arizeu Santana','(19)5541-5415','','Programador','Masculino',2,'15.547.547','245.784.161-08','10/09/1985','Creuza do Nascimento','Joel Moraes Santana','Neuzeli','9841-5845',10,'Rua das Gaivotas','1054','Centro','Sumaré',25,'13.178-215',NULL),(4,1,'Joaquim da Barra','(19)98754-5451','','Professor','Masculino',3,'15.544.541','548.481.651-50','20/01/1970','Julia Meireles','','Julia','8974 3245',1,'Rua das dores','10','Jardim Ãngela','Campinas',25,'13.745-541',NULL),(5,1,'Ana Lucia Nunes','(19)98746-5410','(19)3546-5150','Médica','Feminino',2,'15.541-541','245.158.451-54','01/09/1995','Damiana Nunes','Arthur Nunes','Arthur','98387 6779',0,'Rua Flora Ferreira Gomes','81','Parque Florelly','Sumaré',25,'13.178-224',NULL),(6,0,'Guimareas dos Santos','(19)98745-5412','','Pintor','Masculino',1,'7.874.574','248.794.651-65','27/03/1980','Maria de Jesus','Pedro Nazaré','Hilton','98745-8412',6,'Rua das Naçoes Unidas','28','Jardim dos ipes','Sumaré',25,'13.178-541',NULL),(7,1,'Fernando Barbosa','(11)98745-8742','(19)98742-5412','Empresário','Masculino',1,'13.541-87','546.547.984-65','15/04/1985','Raquel Lima','Robson Almeida Campos','Rafael','(11)7894-5415',2,'Av. dos Amarais','1574','Aclimação','Sumaré',25,'13.178-541',NULL);
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
INSERT INTO `tb_despesas_programadas` VALUES (1,'Agua',90.89,'2018-10-10',0,1),(2,'Aluguel',1000,'2018-10-10',0,1),(4,'Internet',100,'2018-10-05',0,1),(5,'Troca de cabo de aço puxador',20,'2018-09-28',1,0);
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
  `FORNECEDOR_EQUIPAMENTO` varchar(150) DEFAULT NULL,
  `NOTA_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `VALOR_EQUIPAMENTO` float DEFAULT NULL,
  `DT_GARANTIA_EQUIPAMENTO` varchar(12) DEFAULT NULL,
  `DT_ULTIMA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `EMPRESA_MANUTENCAO` varchar(150) DEFAULT NULL,
  `DT_GARANTIA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `DT_PROXIMA_MANUTENCAO` varchar(12) DEFAULT NULL,
  `PROXIMA_EMPRESA` varchar(150) DEFAULT NULL,
  `ATIVO` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`CD_EQUIPAMENTO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_equipamentos`
--

LOCK TABLES `tb_equipamentos` WRITE;
/*!40000 ALTER TABLE `tb_equipamentos` DISABLE KEYS */;
INSERT INTO `tb_equipamentos` VALUES (1,'Esteira 1','27/09/2018','Esteiras do Brasil','1',3.89,'3 anos','27/09/2018','Esteiras do Brasil','3 anos','27/01/2019','Esteiras do Brasil',1),(2,'Esteira 2','27/09/2018','Esteiras do Brasil','2',4.039,'3 anos','27/09/2018','Esteiras do Brasil','3 anos','27/01/2018','Esteiras do Brasil',1),(3,'Peck Deck','28/09/2018','Fitness World','215',5.842,'3 anos','28/09/2018','Fitness World','3 anos','28/02/2018','Fitness World',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;
/*!40000 ALTER TABLE `tb_exercicios` DISABLE KEYS */;
INSERT INTO `tb_exercicios` VALUES (1,'RETO',12),(2,'SUPRA',12),(3,'OBLIQUO',12),(4,'ESTEIRA',11),(5,'BICICLETA',11),(6,'CORDA',11),(8,'ROSCA INVERSA',6),(9,'ROLAMENTO DE BARRA',6),(10,'HALTER GIRO',6),(11,'ROSCA DIRETA',4),(12,'SCOTTY',4),(13,'ALTERNADO',4),(14,'CONCENTRADO',4),(15,'PUXADA FRENTE',2),(16,'PUXADA TRAS ',2),(17,'CAVALINHO',2),(18,'REMADA BAIXA',2),(19,'PECK DECK FECHADO',2),(20,'MESA FLEXORA',10),(21,'ELEVAÇÃO COM CANELEIRAS',10),(22,'ELEVAÇÃO LATERAL',3),(23,'ELEVAÇÃO FRONTAL',3),(24,'ELEVAÇÃO UNILATERAL NO CROSS',3),(25,'SMITH COM BARRA SOLTA FRENTE',3),(26,'SMITH COM BARRA SOLTA TRAS',3),(27,'BURRINHO',9),(28,'PANTURRILHA NO LEG 45',9),(30,'SUPINO RETO',1),(31,'SUPINO INCLINADO',1),(32,'SUPINO DECLINADO',1),(33,'CROSS OVER',1),(34,'PECK DECK',1),(35,'MESA EXTENSORA',7),(36,'SMITH',7),(37,'AVANÇO',7),(38,'AGACHAMENTO',8),(39,'LEG 45',8),(40,'TESTA',5),(42,'TRICEPS CORDA',5),(43,'TRICEPS UNILATERAL',5),(44,'PANTURRILHA COM CORPO',9);
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
INSERT INTO `tb_frequencia_alunos` VALUES (1,'2018-09-27'),(2,'2018-09-28'),(3,'2018-09-28'),(4,'2018-09-28'),(5,'2018-09-28'),(6,'2018-09-28'),(7,'2018-09-20');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_frequencia_alunos_historico`
--

LOCK TABLES `tb_frequencia_alunos_historico` WRITE;
/*!40000 ALTER TABLE `tb_frequencia_alunos_historico` DISABLE KEYS */;
INSERT INTO `tb_frequencia_alunos_historico` VALUES (1,1,'2018-09-27','21:47:02','21:54:35',0),(2,2,'2018-09-28','08:38:24','08:44:13',0),(3,3,'2018-09-28','08:50:16','08:52:19',0),(4,4,'2018-09-28','09:05:28','09:05:36',0),(5,5,'2018-09-28','09:19:07','09:22:56',0),(6,5,'2018-09-28','09:22:52','09:22:56',0),(7,6,'2018-09-28','09:22:59','09:23:02',0),(8,7,'2018-09-28','09:30:25','09:30:30',0);
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_historico_pagamentos_alunos`
--

LOCK TABLES `tb_historico_pagamentos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_historico_pagamentos_alunos` DISABLE KEYS */;
INSERT INTO `tb_historico_pagamentos_alunos` VALUES (1,1,'2018-10-05',NULL,NULL),(2,2,'2018-10-10',NULL,NULL),(3,3,'2018-09-07',NULL,NULL),(4,4,'2018-10-30',NULL,NULL),(5,5,'2018-10-05',NULL,NULL),(6,6,'2018-10-10',NULL,NULL),(7,7,'2018-10-15',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_membros`
--

LOCK TABLES `tb_membros` WRITE;
/*!40000 ALTER TABLE `tb_membros` DISABLE KEYS */;
INSERT INTO `tb_membros` VALUES (12,'ABDOMEN'),(11,'AERÓBICO'),(6,'ANTE BRAÇO'),(4,'BÍCEPS'),(2,'COSTAS'),(10,'GLÚTEOS'),(3,'OMBRO'),(9,'PANTURRILHA'),(1,'PEITO'),(7,'POSTERIOR DE COXA'),(8,'QUADRICEPS'),(5,'TRÍCEPS');
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_mod_alunos`
--

LOCK TABLES `tb_mod_alunos` WRITE;
/*!40000 ALTER TABLE `tb_mod_alunos` DISABLE KEYS */;
INSERT INTO `tb_mod_alunos` VALUES (1,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL),(2,2,2,5,3,NULL,NULL,NULL,NULL,NULL),(3,3,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,4,4,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,5,2,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,6,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,7,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_modalidades`
--

LOCK TABLES `tb_modalidades` WRITE;
/*!40000 ALTER TABLE `tb_modalidades` DISABLE KEYS */;
INSERT INTO `tb_modalidades` VALUES (4,'BOXE'),(2,'CROSS FIT'),(5,'DANÇA'),(3,'FUNCIONAL'),(1,'MUSCULAÇÃO'),(6,'NATAÇÃO');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planos_alunos`
--

LOCK TABLES `tb_planos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_planos_alunos` DISABLE KEYS */;
INSERT INTO `tb_planos_alunos` VALUES (1,1,1,100,'%',0,5),(2,2,4,60,'R$',5,10),(3,3,1,100,'%',0,15),(4,4,3,80,'%',0,30),(5,3,1,85,'R$',15,7),(6,5,4,65,'%',0,5),(7,6,1,100,'%',0,10),(8,7,1,95,'%',5,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_planos_valores`
--

LOCK TABLES `tb_planos_valores` WRITE;
/*!40000 ALTER TABLE `tb_planos_valores` DISABLE KEYS */;
INSERT INTO `tb_planos_valores` VALUES (1,'Mensal',100),(2,'Bimestral',90),(3,'Trimestral',80),(4,'Semestral',65);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_repeticoes`
--

LOCK TABLES `tb_repeticoes` WRITE;
/*!40000 ALTER TABLE `tb_repeticoes` DISABLE KEYS */;
INSERT INTO `tb_repeticoes` VALUES (8,'12x10x8x6'),(1,'3x10'),(2,'3x12'),(3,'3x15'),(6,'4x10'),(7,'4x12'),(4,'4x6'),(5,'4x8'),(9,'6x8x10x12'),(10,'fadiga');
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
INSERT INTO `tb_senhas` VALUES ('','USUÁRIO DE TESTES','','teste@outlook.com');
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
  `OBSERVACAOA1` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_1` int(3) DEFAULT NULL,
  `REPETICAOA1_1` int(3) DEFAULT NULL,
  `OBSERVACAOA1_1` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_2` int(3) DEFAULT NULL,
  `REPETICAOA1_2` int(3) DEFAULT NULL,
  `OBSERVACAOA1_2` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_3` int(3) DEFAULT NULL,
  `REPETICAOA1_3` int(3) DEFAULT NULL,
  `OBSERVACAOA1_3` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_4` int(3) DEFAULT NULL,
  `REPETICAOA1_4` int(3) DEFAULT NULL,
  `OBSERVACAOA1_4` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_5` int(3) DEFAULT NULL,
  `REPETICAOA1_5` int(3) DEFAULT NULL,
  `OBSERVACAOA1_5` varchar(100) DEFAULT NULL,
  `EXERCICIOA1_6` int(3) DEFAULT NULL,
  `REPETICAOA1_6` int(3) DEFAULT NULL,
  `OBSERVACAOA1_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARA2` int(3) DEFAULT NULL,
  `EXERCICIOA2` int(3) DEFAULT NULL,
  `REPETICAOA2` int(3) DEFAULT NULL,
  `OBSERVACAOA2` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_1` int(3) DEFAULT NULL,
  `REPETICAOA2_1` int(3) DEFAULT NULL,
  `OBSERVACAOA2_1` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_2` int(3) DEFAULT NULL,
  `REPETICAOA2_2` int(3) DEFAULT NULL,
  `OBSERVACAOA2_2` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_3` int(3) DEFAULT NULL,
  `REPETICAOA2_3` int(3) DEFAULT NULL,
  `OBSERVACAOA2_3` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_4` int(3) DEFAULT NULL,
  `REPETICAOA2_4` int(3) DEFAULT NULL,
  `OBSERVACAOA2_4` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_5` int(3) DEFAULT NULL,
  `REPETICAOA2_5` int(3) DEFAULT NULL,
  `OBSERVACAOA2_5` varchar(100) DEFAULT NULL,
  `EXERCICIOA2_6` int(3) DEFAULT NULL,
  `REPETICAOA2_6` int(3) DEFAULT NULL,
  `OBSERVACAOA2_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARA3` int(3) DEFAULT NULL,
  `EXERCICIOA3` int(3) DEFAULT NULL,
  `REPETICAOA3` int(3) DEFAULT NULL,
  `OBSERVACAOA3` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_1` int(3) DEFAULT NULL,
  `REPETICAOA3_1` int(3) DEFAULT NULL,
  `OBSERVACAOA3_1` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_2` int(3) DEFAULT NULL,
  `REPETICAOA3_2` int(3) DEFAULT NULL,
  `OBSERVACAOA3_2` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_3` int(3) DEFAULT NULL,
  `REPETICAOA3_3` int(3) DEFAULT NULL,
  `OBSERVACAOA3_3` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_4` int(3) DEFAULT NULL,
  `REPETICAOA3_4` int(3) DEFAULT NULL,
  `OBSERVACAOA3_4` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_5` int(3) DEFAULT NULL,
  `REPETICAOA3_5` int(3) DEFAULT NULL,
  `OBSERVACAOA3_5` varchar(100) DEFAULT NULL,
  `EXERCICIOA3_6` int(3) DEFAULT NULL,
  `REPETICAOA3_6` int(3) DEFAULT NULL,
  `OBSERVACAOA3_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARA4` int(3) DEFAULT NULL,
  `EXERCICIOA4` int(3) DEFAULT NULL,
  `REPETICAOA4` int(3) DEFAULT NULL,
  `OBSERVACAOA4` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_1` int(3) DEFAULT NULL,
  `REPETICAOA4_1` int(3) DEFAULT NULL,
  `OBSERVACAOA4_1` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_2` int(3) DEFAULT NULL,
  `REPETICAOA4_2` int(3) DEFAULT NULL,
  `OBSERVACAOA4_2` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_3` int(3) DEFAULT NULL,
  `REPETICAOA4_3` int(3) DEFAULT NULL,
  `OBSERVACAOA4_3` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_4` int(3) DEFAULT NULL,
  `REPETICAOA4_4` int(3) DEFAULT NULL,
  `OBSERVACAOA4_4` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_5` int(3) DEFAULT NULL,
  `REPETICAOA4_5` int(3) DEFAULT NULL,
  `OBSERVACAOA4_5` varchar(100) DEFAULT NULL,
  `EXERCICIOA4_6` int(3) DEFAULT NULL,
  `REPETICAOA4_6` int(3) DEFAULT NULL,
  `OBSERVACAOA4_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARA5` int(3) DEFAULT NULL,
  `EXERCICIOA5` int(3) DEFAULT NULL,
  `REPETICAOA5` int(3) DEFAULT NULL,
  `OBSERVACAOA5` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_1` int(3) DEFAULT NULL,
  `REPETICAOA5_1` int(3) DEFAULT NULL,
  `OBSERVACAOA5_1` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_2` int(3) DEFAULT NULL,
  `REPETICAOA5_2` int(3) DEFAULT NULL,
  `OBSERVACAOA5_2` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_3` int(3) DEFAULT NULL,
  `REPETICAOA5_3` int(3) DEFAULT NULL,
  `OBSERVACAOA5_3` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_4` int(3) DEFAULT NULL,
  `REPETICAOA5_4` int(3) DEFAULT NULL,
  `OBSERVACAOA5_4` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_5` int(3) DEFAULT NULL,
  `REPETICAOA5_5` int(3) DEFAULT NULL,
  `OBSERVACAOA5_5` varchar(100) DEFAULT NULL,
  `EXERCICIOA5_6` int(3) DEFAULT NULL,
  `REPETICAOA5_6` int(3) DEFAULT NULL,
  `OBSERVACAOA5_6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOA`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosa_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosa`
--

LOCK TABLES `tb_treinosa` WRITE;
/*!40000 ALTER TABLE `tb_treinosa` DISABLE KEYS */;
INSERT INTO `tb_treinosa` VALUES (1,'27/09/2018','27/10/2018',1,1,30,1,'',31,1,'',32,1,'',34,2,'Peck Deck e cross fazer junto.',33,2,'',33,8,'',33,8,'',4,13,2,'',14,1,'',11,3,'',12,6,'',13,8,'',13,8,'',13,8,'',12,1,6,'',1,3,'',1,3,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(2,'28/09/2018','28/11/2018',2,8,38,8,'',39,3,'',38,8,'',38,8,'',38,8,'',38,8,'',38,8,'',7,37,6,'',36,6,'',35,7,'',37,8,'',37,8,'',37,8,'',37,8,'',9,27,1,'',28,3,'',27,8,'',27,8,'',27,8,'',27,8,'',27,8,'',12,3,10,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(3,'10/08/2018','10/11/2018',3,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(4,'01/07/2018','25/09/2018',4,12,3,8,'TREINO DE BOXE',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(5,'28/07/2018','25/09/2018',6,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'');
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
  `OBSERVACAOB1` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_1` int(3) DEFAULT NULL,
  `REPETICAOB1_1` int(3) DEFAULT NULL,
  `OBSERVACAOB1_1` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_2` int(3) DEFAULT NULL,
  `REPETICAOB1_2` int(3) DEFAULT NULL,
  `OBSERVACAOB1_2` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_3` int(3) DEFAULT NULL,
  `REPETICAOB1_3` int(3) DEFAULT NULL,
  `OBSERVACAOB1_3` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_4` int(3) DEFAULT NULL,
  `REPETICAOB1_4` int(3) DEFAULT NULL,
  `OBSERVACAOB1_4` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_5` int(3) DEFAULT NULL,
  `REPETICAOB1_5` int(3) DEFAULT NULL,
  `OBSERVACAOB1_5` varchar(100) DEFAULT NULL,
  `EXERCICIOB1_6` int(3) DEFAULT NULL,
  `REPETICAOB1_6` int(3) DEFAULT NULL,
  `OBSERVACAOB1_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARB2` int(3) DEFAULT NULL,
  `EXERCICIOB2` int(3) DEFAULT NULL,
  `REPETICAOB2` int(3) DEFAULT NULL,
  `OBSERVACAOB2` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_1` int(3) DEFAULT NULL,
  `REPETICAOB2_1` int(3) DEFAULT NULL,
  `OBSERVACAOB2_1` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_2` int(3) DEFAULT NULL,
  `REPETICAOB2_2` int(3) DEFAULT NULL,
  `OBSERVACAOB2_2` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_3` int(3) DEFAULT NULL,
  `REPETICAOB2_3` int(3) DEFAULT NULL,
  `OBSERVACAOB2_3` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_4` int(3) DEFAULT NULL,
  `REPETICAOB2_4` int(3) DEFAULT NULL,
  `OBSERVACAOB2_4` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_5` int(3) DEFAULT NULL,
  `REPETICAOB2_5` int(3) DEFAULT NULL,
  `OBSERVACAOB2_5` varchar(100) DEFAULT NULL,
  `EXERCICIOB2_6` int(3) DEFAULT NULL,
  `REPETICAOB2_6` int(3) DEFAULT NULL,
  `OBSERVACAOB2_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARB3` int(3) DEFAULT NULL,
  `EXERCICIOB3` int(3) DEFAULT NULL,
  `REPETICAOB3` int(3) DEFAULT NULL,
  `OBSERVACAOB3` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_1` int(3) DEFAULT NULL,
  `REPETICAOB3_1` int(3) DEFAULT NULL,
  `OBSERVACAOB3_1` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_2` int(3) DEFAULT NULL,
  `REPETICAOB3_2` int(3) DEFAULT NULL,
  `OBSERVACAOB3_2` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_3` int(3) DEFAULT NULL,
  `REPETICAOB3_3` int(3) DEFAULT NULL,
  `OBSERVACAOB3_3` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_4` int(3) DEFAULT NULL,
  `REPETICAOB3_4` int(3) DEFAULT NULL,
  `OBSERVACAOB3_4` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_5` int(3) DEFAULT NULL,
  `REPETICAOB3_5` int(3) DEFAULT NULL,
  `OBSERVACAOB3_5` varchar(100) DEFAULT NULL,
  `EXERCICIOB3_6` int(3) DEFAULT NULL,
  `REPETICAOB3_6` int(3) DEFAULT NULL,
  `OBSERVACAOB3_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARB4` int(3) DEFAULT NULL,
  `EXERCICIOB4` int(3) DEFAULT NULL,
  `REPETICAOB4` int(3) DEFAULT NULL,
  `OBSERVACAOB4` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_1` int(3) DEFAULT NULL,
  `REPETICAOB4_1` int(3) DEFAULT NULL,
  `OBSERVACAOB4_1` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_2` int(3) DEFAULT NULL,
  `REPETICAOB4_2` int(3) DEFAULT NULL,
  `OBSERVACAOB4_2` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_3` int(3) DEFAULT NULL,
  `REPETICAOB4_3` int(3) DEFAULT NULL,
  `OBSERVACAOB4_3` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_4` int(3) DEFAULT NULL,
  `REPETICAOB4_4` int(3) DEFAULT NULL,
  `OBSERVACAOB4_4` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_5` int(3) DEFAULT NULL,
  `REPETICAOB4_5` int(3) DEFAULT NULL,
  `OBSERVACAOB4_5` varchar(100) DEFAULT NULL,
  `EXERCICIOB4_6` int(3) DEFAULT NULL,
  `REPETICAOB4_6` int(3) DEFAULT NULL,
  `OBSERVACAOB4_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARB5` int(3) DEFAULT NULL,
  `EXERCICIOB5` int(3) DEFAULT NULL,
  `REPETICAOB5` int(3) DEFAULT NULL,
  `OBSERVACAOB5` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_1` int(3) DEFAULT NULL,
  `REPETICAOB5_1` int(3) DEFAULT NULL,
  `OBSERVACAOB5_1` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_2` int(3) DEFAULT NULL,
  `REPETICAOB5_2` int(3) DEFAULT NULL,
  `OBSERVACAOB5_2` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_3` int(3) DEFAULT NULL,
  `REPETICAOB5_3` int(3) DEFAULT NULL,
  `OBSERVACAOB5_3` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_4` int(3) DEFAULT NULL,
  `REPETICAOB5_4` int(3) DEFAULT NULL,
  `OBSERVACAOB5_4` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_5` int(3) DEFAULT NULL,
  `REPETICAOB5_5` int(3) DEFAULT NULL,
  `OBSERVACAOB5_5` varchar(100) DEFAULT NULL,
  `EXERCICIOB5_6` int(3) DEFAULT NULL,
  `REPETICAOB5_6` int(3) DEFAULT NULL,
  `OBSERVACAOB5_6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOB`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosb_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosb`
--

LOCK TABLES `tb_treinosb` WRITE;
/*!40000 ALTER TABLE `tb_treinosb` DISABLE KEYS */;
INSERT INTO `tb_treinosb` VALUES (1,1,2,15,1,'',16,1,'',18,1,'',19,1,'Fazer junto peck deck e cavalinho',17,8,'',17,8,'',17,8,'',5,40,1,'',42,1,'',43,1,'',40,8,'',40,8,'',40,8,'',40,8,'',12,3,3,'',3,3,'',3,3,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(2,2,11,5,10,'',6,10,'',4,10,'',5,8,'',5,8,'',5,8,'',5,8,'',1,33,1,'',34,1,'',30,1,'',33,8,'',33,8,'',33,8,'',33,8,'',4,13,1,'',14,1,'',11,1,'',13,8,'',13,8,'',13,8,'',13,8,'',12,2,10,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(3,3,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(4,4,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(5,6,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'');
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
  `OBSERVACAOC1` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_1` int(3) DEFAULT NULL,
  `REPETICAOC1_1` int(3) DEFAULT NULL,
  `OBSERVACAOC1_1` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_2` int(3) DEFAULT NULL,
  `REPETICAOC1_2` int(3) DEFAULT NULL,
  `OBSERVACAOC1_2` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_3` int(3) DEFAULT NULL,
  `REPETICAOC1_3` int(3) DEFAULT NULL,
  `OBSERVACAOC1_3` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_4` int(3) DEFAULT NULL,
  `REPETICAOC1_4` int(3) DEFAULT NULL,
  `OBSERVACAOC1_4` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_5` int(3) DEFAULT NULL,
  `REPETICAOC1_5` int(3) DEFAULT NULL,
  `OBSERVACAOC1_5` varchar(100) DEFAULT NULL,
  `EXERCICIOC1_6` int(3) DEFAULT NULL,
  `REPETICAOC1_6` int(3) DEFAULT NULL,
  `OBSERVACAOC1_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARC2` int(3) DEFAULT NULL,
  `EXERCICIOC2` int(3) DEFAULT NULL,
  `REPETICAOC2` int(3) DEFAULT NULL,
  `OBSERVACAOC2` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_1` int(3) DEFAULT NULL,
  `REPETICAOC2_1` int(3) DEFAULT NULL,
  `OBSERVACAOC2_1` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_2` int(3) DEFAULT NULL,
  `REPETICAOC2_2` int(3) DEFAULT NULL,
  `OBSERVACAOC2_2` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_3` int(3) DEFAULT NULL,
  `REPETICAOC2_3` int(3) DEFAULT NULL,
  `OBSERVACAOC2_3` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_4` int(3) DEFAULT NULL,
  `REPETICAOC2_4` int(3) DEFAULT NULL,
  `OBSERVACAOC2_4` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_5` int(3) DEFAULT NULL,
  `REPETICAOC2_5` int(3) DEFAULT NULL,
  `OBSERVACAOC2_5` varchar(100) DEFAULT NULL,
  `EXERCICIOC2_6` int(3) DEFAULT NULL,
  `REPETICAOC2_6` int(3) DEFAULT NULL,
  `OBSERVACAOC2_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARC3` int(3) DEFAULT NULL,
  `EXERCICIOC3` int(3) DEFAULT NULL,
  `REPETICAOC3` int(3) DEFAULT NULL,
  `OBSERVACAOC3` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_1` int(3) DEFAULT NULL,
  `REPETICAOC3_1` int(3) DEFAULT NULL,
  `OBSERVACAOC3_1` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_2` int(3) DEFAULT NULL,
  `REPETICAOC3_2` int(3) DEFAULT NULL,
  `OBSERVACAOC3_2` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_3` int(3) DEFAULT NULL,
  `REPETICAOC3_3` int(3) DEFAULT NULL,
  `OBSERVACAOC3_3` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_4` int(3) DEFAULT NULL,
  `REPETICAOC3_4` int(3) DEFAULT NULL,
  `OBSERVACAOC3_4` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_5` int(3) DEFAULT NULL,
  `REPETICAOC3_5` int(3) DEFAULT NULL,
  `OBSERVACAOC3_5` varchar(100) DEFAULT NULL,
  `EXERCICIOC3_6` int(3) DEFAULT NULL,
  `REPETICAOC3_6` int(3) DEFAULT NULL,
  `OBSERVACAOC3_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARC4` int(3) DEFAULT NULL,
  `EXERCICIOC4` int(3) DEFAULT NULL,
  `REPETICAOC4` int(3) DEFAULT NULL,
  `OBSERVACAOC4` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_1` int(3) DEFAULT NULL,
  `REPETICAOC4_1` int(3) DEFAULT NULL,
  `OBSERVACAOC4_1` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_2` int(3) DEFAULT NULL,
  `REPETICAOC4_2` int(3) DEFAULT NULL,
  `OBSERVACAOC4_2` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_3` int(3) DEFAULT NULL,
  `REPETICAOC4_3` int(3) DEFAULT NULL,
  `OBSERVACAOC4_3` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_4` int(3) DEFAULT NULL,
  `REPETICAOC4_4` int(3) DEFAULT NULL,
  `OBSERVACAOC4_4` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_5` int(3) DEFAULT NULL,
  `REPETICAOC4_5` int(3) DEFAULT NULL,
  `OBSERVACAOC4_5` varchar(100) DEFAULT NULL,
  `EXERCICIOC4_6` int(3) DEFAULT NULL,
  `REPETICAOC4_6` int(3) DEFAULT NULL,
  `OBSERVACAOC4_6` varchar(100) DEFAULT NULL,
  `GRUPO_MUSCULARC5` int(3) DEFAULT NULL,
  `EXERCICIOC5` int(3) DEFAULT NULL,
  `REPETICAOC5` int(3) DEFAULT NULL,
  `OBSERVACAOC5` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_1` int(3) DEFAULT NULL,
  `REPETICAOC5_1` int(3) DEFAULT NULL,
  `OBSERVACAOC5_1` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_2` int(3) DEFAULT NULL,
  `REPETICAOC5_2` int(3) DEFAULT NULL,
  `OBSERVACAOC5_2` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_3` int(3) DEFAULT NULL,
  `REPETICAOC5_3` int(3) DEFAULT NULL,
  `OBSERVACAOC5_3` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_4` int(3) DEFAULT NULL,
  `REPETICAOC5_4` int(3) DEFAULT NULL,
  `OBSERVACAOC5_4` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_5` int(3) DEFAULT NULL,
  `REPETICAOC5_5` int(3) DEFAULT NULL,
  `OBSERVACAOC5_5` varchar(100) DEFAULT NULL,
  `EXERCICIOC5_6` int(3) DEFAULT NULL,
  `REPETICAOC5_6` int(3) DEFAULT NULL,
  `OBSERVACAOC5_6` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`CD_TREINOC`),
  KEY `CD_REGISTRO` (`CD_REGISTRO`),
  CONSTRAINT `tb_treinosc_ibfk_1` FOREIGN KEY (`CD_REGISTRO`) REFERENCES `tb_alunos` (`CD_REGISTRO`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_treinosc`
--

LOCK TABLES `tb_treinosc` WRITE;
/*!40000 ALTER TABLE `tb_treinosc` DISABLE KEYS */;
INSERT INTO `tb_treinosc` VALUES (1,1,3,23,2,'',22,1,'',24,1,'',25,1,'',23,8,'',23,8,'',23,8,'',10,21,1,'',20,1,'',21,8,'',21,8,'',21,8,'',21,8,'',21,8,'',9,27,3,'',28,3,'',27,8,'',27,8,'',27,8,'',27,8,'',27,8,'',8,38,1,'',39,3,'',38,8,'',38,8,'',38,8,'',38,8,'',38,8,'',7,37,3,'',35,3,'',36,3,'',37,8,'',37,8,'',37,8,'',37,8,''),(2,2,10,21,1,'',20,3,'',21,8,'',21,8,'',21,8,'',21,8,'',21,8,'',12,1,10,'',2,10,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(3,3,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(4,4,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,''),(5,6,12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'');
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

-- Dump completed on 2018-09-28  9:40:15
