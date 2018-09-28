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
-- Dumping data for table `tb_alunos`
--

LOCK TABLES `tb_alunos` WRITE;
/*!40000 ALTER TABLE `tb_alunos` DISABLE KEYS */;
INSERT INTO `tb_alunos` VALUES (1,1,'Arthur Roberto Pereira Nunes','(19)98387 6779','','Assistênte de Sistemas','Masculino',1,'13.345.432\'','394.878.748-30','05/10/1989','Célia Maria Pereira ','Roberto Américo Nunes','Damiana Nunes','98128 5336',3,'Rua Flora Ferreira Gomes','81','Parque Florelly','Sumaré',25,'13.178.224',NULL);
/*!40000 ALTER TABLE `tb_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_despesas_programadas`
--

LOCK TABLES `tb_despesas_programadas` WRITE;
/*!40000 ALTER TABLE `tb_despesas_programadas` DISABLE KEYS */;
INSERT INTO `tb_despesas_programadas` VALUES (1,'Agua',90.89,'2018-10-10',0,1),(2,'Aluguel',1000,'2018-10-10',0,1);
/*!40000 ALTER TABLE `tb_despesas_programadas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_equipamentos`
--

LOCK TABLES `tb_equipamentos` WRITE;
/*!40000 ALTER TABLE `tb_equipamentos` DISABLE KEYS */;
INSERT INTO `tb_equipamentos` VALUES (1,'Esteira 1','27/09/2018','Esteiras do Brasil','1',3.89,'3 anos','27/09/2018','Esteiras do Brasil','3 anos','27/01/2019','Esteiras do Brasil',1),(2,'Esteira 2','27/09/2018','Esteiras do Brasil','2',4.039,'3 anos','27/09/2018','Esteiras do Brasil','3 anos','27/01/2018','Esteiras do Brasil',1);
/*!40000 ALTER TABLE `tb_equipamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_exercicios`
--

LOCK TABLES `tb_exercicios` WRITE;
/*!40000 ALTER TABLE `tb_exercicios` DISABLE KEYS */;
INSERT INTO `tb_exercicios` VALUES (1,'RETO',12),(2,'SUPRA',12),(3,'OBLIQUO',12),(4,'ESTEIRA',11),(5,'BICICLETA',11),(6,'CORDA',11),(8,'ROSCA INVERSA',6),(9,'ROLAMENTO DE BARRA',6),(10,'HALTER GIRO',6),(11,'ROSCA DIRETA',4),(12,'SCOTTY',4),(13,'ALTERNADO',4),(14,'CONCENTRADO',4),(15,'PUXADA FRENTE',2),(16,'PUXADA TRAS ',2),(17,'CAVALINHO',2),(18,'REMADA BAIXA',2),(19,'PECK DECK FECHADO',2),(20,'MESA FLEXORA',10),(21,'ELEVAÇÃO COM CANELEIRAS',10),(22,'ELEVAÇÃO LATERAL',3),(23,'ELEVAÇÃO FRONTAL',3),(24,'ELEVAÇÃO UNILATERAL NO CROSS',3),(25,'SMITH COM BARRA SOLTA FRENTE',3),(26,'SMITH COM BARRA SOLTA TRAS',3),(27,'BURRINHO',9),(28,'PANTURRILHA NO LEG 45',9),(29,'PANTURRILHA COM CORPO',12),(30,'SUPINO RETO',1),(31,'SUPINO INCLINADO',1),(32,'SUPINO DECLINADO',1),(33,'CROSS OVER',1),(34,'PECK DECK',1),(35,'MESA EXTENSORA',7),(36,'SMITH',7),(37,'AVANÇO',7),(38,'AGACHAMENTO',8),(39,'LEG 45',8),(40,'TESTA',5),(42,'TRICEPS CORDA',5),(43,'TRICEPS UNILATERAL',5);
/*!40000 ALTER TABLE `tb_exercicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_frequencia_alunos`
--

LOCK TABLES `tb_frequencia_alunos` WRITE;
/*!40000 ALTER TABLE `tb_frequencia_alunos` DISABLE KEYS */;
INSERT INTO `tb_frequencia_alunos` VALUES (1,'2018-09-27');
/*!40000 ALTER TABLE `tb_frequencia_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_frequencia_alunos_historico`
--

LOCK TABLES `tb_frequencia_alunos_historico` WRITE;
/*!40000 ALTER TABLE `tb_frequencia_alunos_historico` DISABLE KEYS */;
INSERT INTO `tb_frequencia_alunos_historico` VALUES (1,1,'2018-09-27','21:47:02','21:54:35',0);
/*!40000 ALTER TABLE `tb_frequencia_alunos_historico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_historico_pagamentos_alunos`
--

LOCK TABLES `tb_historico_pagamentos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_historico_pagamentos_alunos` DISABLE KEYS */;
INSERT INTO `tb_historico_pagamentos_alunos` VALUES (1,1,'2018-10-05',NULL,NULL);
/*!40000 ALTER TABLE `tb_historico_pagamentos_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_membros`
--

LOCK TABLES `tb_membros` WRITE;
/*!40000 ALTER TABLE `tb_membros` DISABLE KEYS */;
INSERT INTO `tb_membros` VALUES (12,'ABDOMEN'),(11,'AERÓBICO'),(6,'ANTE BRAÇO'),(4,'BÍCEPS'),(2,'COSTAS'),(10,'GLÚTEOS'),(3,'OMBRO'),(9,'PANTURRILHA'),(1,'PEITO'),(7,'POSTERIOR DE COXA'),(8,'QUADRICEPS'),(5,'TRÍCEPS');
/*!40000 ALTER TABLE `tb_membros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_mod_alunos`
--

LOCK TABLES `tb_mod_alunos` WRITE;
/*!40000 ALTER TABLE `tb_mod_alunos` DISABLE KEYS */;
INSERT INTO `tb_mod_alunos` VALUES (1,1,4,1,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tb_mod_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_modalidades`
--

LOCK TABLES `tb_modalidades` WRITE;
/*!40000 ALTER TABLE `tb_modalidades` DISABLE KEYS */;
INSERT INTO `tb_modalidades` VALUES (4,'BOXE'),(2,'CROSS FIT'),(5,'DANÇA'),(3,'FUNCIONAL'),(1,'MUSCULAÇÃO'),(6,'NATAÇÃO');
/*!40000 ALTER TABLE `tb_modalidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_planos_alunos`
--

LOCK TABLES `tb_planos_alunos` WRITE;
/*!40000 ALTER TABLE `tb_planos_alunos` DISABLE KEYS */;
INSERT INTO `tb_planos_alunos` VALUES (1,1,1,100,'%',0,5);
/*!40000 ALTER TABLE `tb_planos_alunos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_planos_valores`
--

LOCK TABLES `tb_planos_valores` WRITE;
/*!40000 ALTER TABLE `tb_planos_valores` DISABLE KEYS */;
INSERT INTO `tb_planos_valores` VALUES (1,'Mensal',100),(2,'Bimestral',90),(3,'Trimestral',80),(4,'Semestral',65);
/*!40000 ALTER TABLE `tb_planos_valores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_repeticoes`
--

LOCK TABLES `tb_repeticoes` WRITE;
/*!40000 ALTER TABLE `tb_repeticoes` DISABLE KEYS */;
INSERT INTO `tb_repeticoes` VALUES (8,'12x10x8x6'),(1,'3x10'),(2,'3x12'),(3,'3x15'),(6,'4x10'),(7,'4x12'),(4,'4x6'),(5,'4x8'),(9,'6x8x10x12'),(10,'fadiga');
/*!40000 ALTER TABLE `tb_repeticoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_senhas`
--

LOCK TABLES `tb_senhas` WRITE;
/*!40000 ALTER TABLE `tb_senhas` DISABLE KEYS */;
INSERT INTO `tb_senhas` VALUES ('','USUÁRIO DE TESTES','','teste@outlook.com');
/*!40000 ALTER TABLE `tb_senhas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_treinosa`
--

LOCK TABLES `tb_treinosa` WRITE;
/*!40000 ALTER TABLE `tb_treinosa` DISABLE KEYS */;
INSERT INTO `tb_treinosa` VALUES (1,'27/09/2018','27/10/2018',1,1,30,1,'',31,1,'',32,1,'',34,2,'Peck Deck e cross fazer junto.',33,2,'',33,8,'',33,8,'',4,13,2,'',14,1,'',11,3,'',12,6,'',13,8,'',13,8,'',13,8,'',12,1,6,'',1,3,'',1,3,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'');
/*!40000 ALTER TABLE `tb_treinosa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_treinosb`
--

LOCK TABLES `tb_treinosb` WRITE;
/*!40000 ALTER TABLE `tb_treinosb` DISABLE KEYS */;
INSERT INTO `tb_treinosb` VALUES (1,1,2,15,1,'',16,1,'',18,1,'',19,1,'Fazer junto peck deck e cavalinho',17,8,'',17,8,'',17,8,'',5,40,1,'',42,1,'',43,1,'',40,8,'',40,8,'',40,8,'',40,8,'',12,3,3,'',3,3,'',3,3,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',12,3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'',3,8,'');
/*!40000 ALTER TABLE `tb_treinosb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `tb_treinosc`
--

LOCK TABLES `tb_treinosc` WRITE;
/*!40000 ALTER TABLE `tb_treinosc` DISABLE KEYS */;
INSERT INTO `tb_treinosc` VALUES (1,1,3,23,2,'',22,1,'',24,1,'',25,1,'',23,8,'',23,8,'',23,8,'',10,21,1,'',20,1,'',21,8,'',21,8,'',21,8,'',21,8,'',21,8,'',9,27,3,'',28,3,'',27,8,'',27,8,'',27,8,'',27,8,'',27,8,'',8,38,1,'',39,3,'',38,8,'',38,8,'',38,8,'',38,8,'',38,8,'',7,37,3,'',35,3,'',36,3,'',37,8,'',37,8,'',37,8,'',37,8,'');
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

-- Dump completed on 2018-09-27 22:01:52
