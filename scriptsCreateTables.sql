USE TCC;

DROP TABLE TB_ALUNOS;

CREATE TABLE IF NOT EXISTS TB_ALUNOS (CD_REGISTRO INT NOT NULL AUTO_INCREMENT  
									  ,SITUACAO BOOLEAN /*TRUE PARA ATIVO E FALSE PARA INATIVO*/
									  ,NOME VARCHAR(100) NOT NULL
                                      ,TEL1 VARCHAR(25)
                                      ,TEL2 VARCHAR(25)
                                      ,PROFISSAO VARCHAR (50)
                                      ,SEXO VARCHAR(15)
                                      ,ESTADO_CIVIL INT 
                                      ,RG VARCHAR(25)
                                      ,CPF VARCHAR(20) UNIQUE
                                      ,DT_NASCIMENTO VARCHAR(20)
                                      ,NM_MAE VARCHAR(100)
                                      ,NM_PAI VARCHAR(100)
                                      ,NM_EMER VARCHAR(100)
                                      ,TEL_EMER VARCHAR(25)
                                      ,PARENTESCO INT
                                      ,END_RUA VARCHAR(100)
                                      ,END_NUMERO VARCHAR(10)
                                      ,END_BAIRRO VARCHAR(50)
                                      ,END_CIDADE VARCHAR(50)
                                      ,END_ESTADO INT 
                                      ,END_CEP VARCHAR(25)
                                      ,IMG_PERFIL BLOB,
PRIMARY KEY(CD_REGISTRO)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS TB_MEMBROS (CD_MEMBRO INT NOT NULL AUTO_INCREMENT
									   ,NM_MEMBRO VARCHAR(50) UNIQUE,
PRIMARY KEY(CD_MEMBRO)
)ENGINE = INNODB; -- PARA FUNCIONAR INDICES PARA RESTRIÇÃO DE APAGAR TABELAS PAI E FILHAS

CREATE TABLE IF NOT EXISTS TB_EXERCICIOS (CD_EXERCICIO INT NOT NULL AUTO_INCREMENT
										  ,NM_EXERCICIO VARCHAR(50) UNIQUE
                                          ,CD_MEMBRO INT,
PRIMARY KEY(CD_EXERCICIO),
CONSTRAINT FOREIGN KEY (CD_MEMBRO) REFERENCES TB_MEMBROS (CD_MEMBRO) ON DELETE RESTRICT
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS TB_REPETICOES (CD_REPETICAO INT NOT NULL AUTO_INCREMENT
										   ,NM_REPETICAO VARCHAR(50) UNIQUE,
PRIMARY KEY(CD_REPETICAO)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS TB_MODALIDADES (CD_MODALIDADE INT NOT NULL AUTO_INCREMENT
										,NM_MODALIDADE VARCHAR(50) UNIQUE,
PRIMARY KEY(CD_MODALIDADE)
)ENGINE = INNODB;

DROP TABLE TB_MOD_ALUNOS;

CREATE TABLE IF NOT EXISTS TB_MOD_ALUNOS (CD_MOD_ALUNO INT NOT NULL AUTO_INCREMENT
										  ,CD_REGISTRO INT(3)
                                          ,CD_MODALIDADE1 INT(3)
                                          ,CD_MODALIDADE2 INT(3)
                                          ,CD_MODALIDADE3 INT(3)
                                          ,CD_MODALIDADE4 INT(3)
                                          ,CD_MODALIDADE5 INT(3)
                                          ,CD_MODALIDADE6 INT(3)
                                          ,CD_MODALIDADE7 INT(3)
                                          ,CD_MODALIDADE8 INT(3),
PRIMARY KEY(CD_MOD_ALUNO),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE1) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE2) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE3) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE4) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE5) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE6) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE7) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT,
CONSTRAINT FOREIGN KEY (CD_MODALIDADE8) REFERENCES TB_MODALIDADES (CD_MODALIDADE) ON DELETE RESTRICT
)ENGINE = INNODB;

DROP TABLE TB_PLANOS_VALORES;

CREATE TABLE IF NOT EXISTS TB_PLANOS_VALORES (CD_PLANO INT NOT NULL AUTO_INCREMENT
											  ,NM_PLANO VARCHAR(30)
                                              ,VALOR FLOAT(8),
PRIMARY KEY(CD_PLANO)
)ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS TB_PLANOS_ALUNOS (CD_PLANO_ALUNO INT NOT NULL AUTO_INCREMENT
											 ,CD_REGISTRO INT(3)
                                             ,CD_PLANO INT(3)
                                             ,VALOR FLOAT(8)
                                             ,TP_DESCONTO VARCHAR(2)
                                             ,DESCONTO FLOAT (8)
                                             ,VENCIMENTO INT(2),
PRIMARY KEY(CD_PLANO_ALUNO),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO) ON DELETE RESTRICT
)ENGINE = INNODB;
  
DROP TABLE tb_frequencia_alunos;
  
CREATE TABLE IF NOT EXISTS TB_FREQUENCIA_ALUNOS(CD_FREQUENCIA INT NOT NULL AUTO_INCREMENT
                                                ,CD_REGISTRO INT(3)
                                                ,DT_ENTRADA VARCHAR(12)
                                                ,HR_ENTRADA VARCHAR(10)
                                                ,HR_SAIDA VARCHAR(10),
PRIMARY KEY(CD_FREQUENCIA),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO) ON DELETE RESTRICT
)ENGINE = INNODB;

DROP TABLE TB_TREINOSA;

CREATE TABLE IF NOT EXISTS TB_TREINOSA (CD_TREINOA INT NOT NULL AUTO_INCREMENT
									   ,DT_INICIO VARCHAR(20)
                                       ,DT_FIM VARCHAR(20)
                                       ,CD_REGISTRO INT(3)
                                       ,GRUPO_MUSCULARA1 INT(3)
                                       ,EXERCICIOA1 INT(3)
                                       ,REPETICAOA1 INT(3)
                                       ,OBSERVACAOA1 VARCHAR(50)
                                       ,EXERCICIOA1_1 INT(3)
                                       ,REPETICAOA1_1 INT(3)
                                       ,OBSERVACAOA1_1 VARCHAR(20)
                                       ,EXERCICIOA1_2 INT(3)
                                       ,REPETICAOA1_2 INT(3)
                                       ,OBSERVACAOA1_2 VARCHAR(20)
                                       ,EXERCICIOA1_3 INT(3)
                                       ,REPETICAOA1_3 INT(3)
                                       ,OBSERVACAOA1_3 VARCHAR(20)
                                       ,EXERCICIOA1_4 INT(3)
                                       ,REPETICAOA1_4 INT(3)
                                       ,OBSERVACAOA1_4 VARCHAR(20)
                                       ,EXERCICIOA1_5 INT(3)
                                       ,REPETICAOA1_5 INT(3)
                                       ,OBSERVACAOA1_5 VARCHAR(20)
                                       ,EXERCICIOA1_6 INT(3)
                                       ,REPETICAOA1_6 INT(3)
                                       ,OBSERVACAOA1_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARA2 INT(3)
                                       ,EXERCICIOA2 INT(3)
                                       ,REPETICAOA2 INT(3)
                                       ,OBSERVACAOA2 VARCHAR(50)
                                       ,EXERCICIOA2_1 INT(3)
                                       ,REPETICAOA2_1 INT(3)
                                       ,OBSERVACAOA2_1 VARCHAR(20)
                                       ,EXERCICIOA2_2 INT(3)
                                       ,REPETICAOA2_2 INT(3)
                                       ,OBSERVACAOA2_2 VARCHAR(20)
                                       ,EXERCICIOA2_3 INT(3)
                                       ,REPETICAOA2_3 INT(3)
                                       ,OBSERVACAOA2_3 VARCHAR(20)
                                       ,EXERCICIOA2_4 INT(3)
                                       ,REPETICAOA2_4 INT(3)
                                       ,OBSERVACAOA2_4 VARCHAR(20)
                                       ,EXERCICIOA2_5 INT(3)
                                       ,REPETICAOA2_5 INT(3)
                                       ,OBSERVACAOA2_5 VARCHAR(20)
                                       ,EXERCICIOA2_6 INT(3)
                                       ,REPETICAOA2_6 INT(3)
                                       ,OBSERVACAOA2_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARA3 INT(3)
                                       ,EXERCICIOA3 INT(3)
                                       ,REPETICAOA3 INT(3)
                                       ,OBSERVACAOA3 VARCHAR(50)
                                       ,EXERCICIOA3_1 INT(3)
                                       ,REPETICAOA3_1 INT(3)
                                       ,OBSERVACAOA3_1 VARCHAR(20)
                                       ,EXERCICIOA3_2 INT(3)
                                       ,REPETICAOA3_2 INT(3)
                                       ,OBSERVACAOA3_2 VARCHAR(20)
                                       ,EXERCICIOA3_3 INT(3)
                                       ,REPETICAOA3_3 INT(3)
                                       ,OBSERVACAOA3_3 VARCHAR(20)
                                       ,EXERCICIOA3_4 INT(3)
                                       ,REPETICAOA3_4 INT(3)
                                       ,OBSERVACAOA3_4 VARCHAR(20)
                                       ,EXERCICIOA3_5 INT(3)
                                       ,REPETICAOA3_5 INT(3)
                                       ,OBSERVACAOA3_5 VARCHAR(20)
                                       ,EXERCICIOA3_6 INT(3)
                                       ,REPETICAOA3_6 INT(3)
                                       ,OBSERVACAOA3_6 VARCHAR(20)
									
									   ,GRUPO_MUSCULARA4 INT(3)
                                       ,EXERCICIOA4 INT(3)
                                       ,REPETICAOA4 INT(3)
                                       ,OBSERVACAOA4 VARCHAR(50)
                                       ,EXERCICIOA4_1 INT(3)
                                       ,REPETICAOA4_1 INT(3)
                                       ,OBSERVACAOA4_1 VARCHAR(20)
                                       ,EXERCICIOA4_2 INT(3)
                                       ,REPETICAOA4_2 INT(3)
                                       ,OBSERVACAOA4_2 VARCHAR(20)
                                       ,EXERCICIOA4_3 INT(3)
                                       ,REPETICAOA4_3 INT(3)
                                       ,OBSERVACAOA4_3 VARCHAR(20)
                                       ,EXERCICIOA4_4 INT(3)
                                       ,REPETICAOA4_4 INT(3)
                                       ,OBSERVACAOA4_4 VARCHAR(20)
                                       ,EXERCICIOA4_5 INT(3)
                                       ,REPETICAOA4_5 INT(3)
                                       ,OBSERVACAOA4_5 VARCHAR(20)
                                       ,EXERCICIOA4_6 INT(3)
                                       ,REPETICAOA4_6 INT(3)
                                       ,OBSERVACAOA4_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARA5 INT(3)
                                       ,EXERCICIOA5 INT(3)
                                       ,REPETICAOA5 INT(3)
                                       ,OBSERVACAOA5 VARCHAR(50)
                                       ,EXERCICIOA5_1 INT(3)
                                       ,REPETICAOA5_1 INT(3)
                                       ,OBSERVACAOA5_1 VARCHAR(20)
									   ,EXERCICIOA5_2 INT(3)
                                       ,REPETICAOA5_2 INT(3)
                                       ,OBSERVACAOA5_2 VARCHAR(20)
									   ,EXERCICIOA5_3 INT(3)
                                       ,REPETICAOA5_3 INT(3)
                                       ,OBSERVACAOA5_3 VARCHAR(20)
                                       ,EXERCICIOA5_4 INT(3)
                                       ,REPETICAOA5_4 INT(3)
                                       ,OBSERVACAOA5_4 VARCHAR(20)
                                       ,EXERCICIOA5_5 INT(3)
                                       ,REPETICAOA5_5 INT(3)
                                       ,OBSERVACAOA5_5 VARCHAR(20)
                                       ,EXERCICIOA5_6 INT(3)
                                       ,REPETICAOA5_6 INT(3)
                                       ,OBSERVACAOA5_6 VARCHAR(20),

PRIMARY KEY(CD_TREINOA),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO)
)ENGINE = INNODB;
						
DROP TABLE TB_TREINOSB;
                                
CREATE TABLE IF NOT EXISTS TB_TREINOSB (CD_TREINOB INT NOT NULL AUTO_INCREMENT
									   ,CD_REGISTRO INT(3)
                                       ,GRUPO_MUSCULARB1 INT(3)
                                       ,EXERCICIOB1 INT(3)
                                       ,REPETICAOB1 INT(3)
                                       ,OBSERVACAOB1 VARCHAR(50)
                                       ,EXERCICIOB1_1 INT(3)
                                       ,REPETICAOB1_1 INT(3)
                                       ,OBSERVACAOB1_1 VARCHAR(20)
                                       ,EXERCICIOB1_2 INT(3)
                                       ,REPETICAOB1_2 INT(3)
                                       ,OBSERVACAOB1_2 VARCHAR(20)
                                       ,EXERCICIOB1_3 INT(3)
                                       ,REPETICAOB1_3 INT(3)
                                       ,OBSERVACAOB1_3 VARCHAR(20)
                                       ,EXERCICIOB1_4 INT(3)
                                       ,REPETICAOB1_4 INT(3)
                                       ,OBSERVACAOB1_4 VARCHAR(20)
                                       ,EXERCICIOB1_5 INT(3)
                                       ,REPETICAOB1_5 INT(3)
                                       ,OBSERVACAOB1_5 VARCHAR(20)
                                       ,EXERCICIOB1_6 INT(3)
                                       ,REPETICAOB1_6 INT(3)
                                       ,OBSERVACAOB1_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARB2 INT(3)
                                       ,EXERCICIOB2 INT(3)
                                       ,REPETICAOB2 INT(3)
                                       ,OBSERVACAOB2 VARCHAR(50)
                                       ,EXERCICIOB2_1 INT(3)
                                       ,REPETICAOB2_1 INT(3)
                                       ,OBSERVACAOB2_1 VARCHAR(20)
                                       ,EXERCICIOB2_2 INT(3)
                                       ,REPETICAOB2_2 INT(3)
                                       ,OBSERVACAOB2_2 VARCHAR(20)
                                       ,EXERCICIOB2_3 INT(3)
                                       ,REPETICAOB2_3 INT(3)
                                       ,OBSERVACAOB2_3 VARCHAR(20)
                                       ,EXERCICIOB2_4 INT(3)
                                       ,REPETICAOB2_4 INT(3)
                                       ,OBSERVACAOB2_4 VARCHAR(20)
                                       ,EXERCICIOB2_5 INT(3)
                                       ,REPETICAOB2_5 INT(3)
                                       ,OBSERVACAOB2_5 VARCHAR(20)
                                       ,EXERCICIOB2_6 INT(3)
                                       ,REPETICAOB2_6 INT(3)
                                       ,OBSERVACAOB2_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARB3 INT(3)
                                       ,EXERCICIOB3 INT(3)
                                       ,REPETICAOB3 INT(3)
                                       ,OBSERVACAOB3 VARCHAR(50)
                                       ,EXERCICIOB3_1 INT(3)
                                       ,REPETICAOB3_1 INT(3)
                                       ,OBSERVACAOB3_1 VARCHAR(20)
                                       ,EXERCICIOB3_2 INT(3)
                                       ,REPETICAOB3_2 INT(3)
                                       ,OBSERVACAOB3_2 VARCHAR(20)
                                       ,EXERCICIOB3_3 INT(3)
                                       ,REPETICAOB3_3 INT(3)
                                       ,OBSERVACAOB3_3 VARCHAR(20)
                                       ,EXERCICIOB3_4 INT(3)
                                       ,REPETICAOB3_4 INT(3)
                                       ,OBSERVACAOB3_4 VARCHAR(20)
                                       ,EXERCICIOB3_5 INT(3)
                                       ,REPETICAOB3_5 INT(3)
                                       ,OBSERVACAOB3_5 VARCHAR(20)
                                       ,EXERCICIOB3_6 INT(3)
                                       ,REPETICAOB3_6 INT(3)
                                       ,OBSERVACAOB3_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARB4 INT(3)
                                       ,EXERCICIOB4 INT(3)
                                       ,REPETICAOB4 INT(3)
                                       ,OBSERVACAOB4 VARCHAR(50)
                                       ,EXERCICIOB4_1 INT(3)
                                       ,REPETICAOB4_1 INT(3)
                                       ,OBSERVACAOB4_1 VARCHAR(20)
                                       ,EXERCICIOB4_2 INT(3)
                                       ,REPETICAOB4_2 INT(3)
                                       ,OBSERVACAOB4_2 VARCHAR(20)
                                       ,EXERCICIOB4_3 INT(3)
                                       ,REPETICAOB4_3 INT(3)
                                       ,OBSERVACAOB4_3 VARCHAR(20)
                                       ,EXERCICIOB4_4 INT(3)
                                       ,REPETICAOB4_4 INT(3)
                                       ,OBSERVACAOB4_4 VARCHAR(20)
                                       ,EXERCICIOB4_5 INT(3)
                                       ,REPETICAOB4_5 INT(3)
                                       ,OBSERVACAOB4_5 VARCHAR(20)
                                       ,EXERCICIOB4_6 INT(3)
                                       ,REPETICAOB4_6 INT(3)
                                       ,OBSERVACAOB4_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARB5 INT(3)
                                       ,EXERCICIOB5 INT(3)
                                       ,REPETICAOB5 INT(3)
                                       ,OBSERVACAOB5 VARCHAR(50)
                                       ,EXERCICIOB5_1 INT(3)
                                       ,REPETICAOB5_1 INT(3)
                                       ,OBSERVACAOB5_1 VARCHAR(20)
                                       ,EXERCICIOB5_2 INT(3)
                                       ,REPETICAOB5_2 INT(3)
                                       ,OBSERVACAOB5_2 VARCHAR(20)
                                       ,EXERCICIOB5_3 INT(3)
                                       ,REPETICAOB5_3 INT(3)
                                       ,OBSERVACAOB5_3 VARCHAR(20)
                                       ,EXERCICIOB5_4 INT(3)
                                       ,REPETICAOB5_4 INT(3)
                                       ,OBSERVACAOB5_4 VARCHAR(20)
                                       ,EXERCICIOB5_5 INT(3)
                                       ,REPETICAOB5_5 INT(3)
                                       ,OBSERVACAOB5_5 VARCHAR(20)
                                       ,EXERCICIOB5_6 INT(3)
                                       ,REPETICAOB5_6 INT(3)
                                       ,OBSERVACAOB5_6 VARCHAR(20),
PRIMARY KEY(CD_TREINOB),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO)
)ENGINE = INNODB;

DROP TABLE TB_TREINOSC;
						
CREATE TABLE IF NOT EXISTS TB_TREINOSC (CD_TREINOC INT NOT NULL AUTO_INCREMENT
								       ,CD_REGISTRO INT(3)
                                       ,GRUPO_MUSCULARC1 INT(3)
                                       ,EXERCICIOC1 INT(3)
                                       ,REPETICAOC1 INT(3)
                                       ,OBSERVACAOC1 VARCHAR(50)
                                       ,EXERCICIOC1_1 INT(3)
                                       ,REPETICAOC1_1 INT(3)
                                       ,OBSERVACAOC1_1 VARCHAR(20)
                                       ,EXERCICIOC1_2 INT(3)
                                       ,REPETICAOC1_2 INT(3)
                                       ,OBSERVACAOC1_2 VARCHAR(20)
                                       ,EXERCICIOC1_3 INT(3)
                                       ,REPETICAOC1_3 INT(3)
                                       ,OBSERVACAOC1_3 VARCHAR(20)
                                       ,EXERCICIOC1_4 INT(3)
                                       ,REPETICAOC1_4 INT(3)
                                       ,OBSERVACAOC1_4 VARCHAR(20)
                                       ,EXERCICIOC1_5 INT(3)
                                       ,REPETICAOC1_5 INT(3)
                                       ,OBSERVACAOC1_5 VARCHAR(20)
                                       ,EXERCICIOC1_6 INT(3)
                                       ,REPETICAOC1_6 INT(3)
                                       ,OBSERVACAOC1_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARC2 INT(3)
                                       ,EXERCICIOC2 INT(3)
                                       ,REPETICAOC2 INT(3)
                                       ,OBSERVACAOC2 VARCHAR(50)
                                       ,EXERCICIOC2_1 INT(3)
                                       ,REPETICAOC2_1 INT(3)
                                       ,OBSERVACAOC2_1 VARCHAR(20)
                                       ,EXERCICIOC2_2 INT(3)
                                       ,REPETICAOC2_2 INT(3)
                                       ,OBSERVACAOC2_2 VARCHAR(20)
                                       ,EXERCICIOC2_3 INT(3)
                                       ,REPETICAOC2_3 INT(3)
                                       ,OBSERVACAOC2_3 VARCHAR(20)
                                       ,EXERCICIOC2_4 INT(3)
                                       ,REPETICAOC2_4 INT(3)
                                       ,OBSERVACAOC2_4 VARCHAR(20)
                                       ,EXERCICIOC2_5 INT(3)
                                       ,REPETICAOC2_5 INT(3)
                                       ,OBSERVACAOC2_5 VARCHAR(20)
                                       ,EXERCICIOC2_6 INT(3)
                                       ,REPETICAOC2_6 INT(3)
                                       ,OBSERVACAOC2_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARC3 INT(3)
                                       ,EXERCICIOC3 INT(3)
                                       ,REPETICAOC3 INT(3)
                                       ,OBSERVACAOC3 VARCHAR(50)
                                       ,EXERCICIOC3_1 INT(3)
                                       ,REPETICAOC3_1 INT(3)
                                       ,OBSERVACAOC3_1 VARCHAR(20)
                                       ,EXERCICIOC3_2 INT(3)
                                       ,REPETICAOC3_2 INT(3)
                                       ,OBSERVACAOC3_2 VARCHAR(20)
                                       ,EXERCICIOC3_3 INT(3)
                                       ,REPETICAOC3_3 INT(3)
                                       ,OBSERVACAOC3_3 VARCHAR(20)
                                       ,EXERCICIOC3_4 INT(3)
                                       ,REPETICAOC3_4 INT(3)
                                       ,OBSERVACAOC3_4 VARCHAR(20)
                                       ,EXERCICIOC3_5 INT(3)
                                       ,REPETICAOC3_5 INT(3)
                                       ,OBSERVACAOC3_5 VARCHAR(20)
                                       ,EXERCICIOC3_6 INT(3)
                                       ,REPETICAOC3_6 INT(3)
                                       ,OBSERVACAOC3_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARC4 INT(3)
                                       ,EXERCICIOC4 INT(3)
                                       ,REPETICAOC4 INT(3)
                                       ,OBSERVACAOC4 VARCHAR(50)
                                       ,EXERCICIOC4_1 INT(3)
                                       ,REPETICAOC4_1 INT(3)
                                       ,OBSERVACAOC4_1 VARCHAR(20)
                                       ,EXERCICIOC4_2 INT(3)
                                       ,REPETICAOC4_2 INT(3)
                                       ,OBSERVACAOC4_2 VARCHAR(20)
                                       ,EXERCICIOC4_3 INT(3)
                                       ,REPETICAOC4_3 INT(3)
                                       ,OBSERVACAOC4_3 VARCHAR(20)
                                       ,EXERCICIOC4_4 INT(3)
                                       ,REPETICAOC4_4 INT(3)
                                       ,OBSERVACAOC4_4 VARCHAR(20)
                                       ,EXERCICIOC4_5 INT(3)
                                       ,REPETICAOC4_5 INT(3)
                                       ,OBSERVACAOC4_5 VARCHAR(20)
                                       ,EXERCICIOC4_6 INT(3)
                                       ,REPETICAOC4_6 INT(3)
                                       ,OBSERVACAOC4_6 VARCHAR(20)
                                       
                                       ,GRUPO_MUSCULARC5 INT(3)
                                       ,EXERCICIOC5 INT(3)
                                       ,REPETICAOC5 INT(3)
                                       ,OBSERVACAOC5 VARCHAR(50)
                                       ,EXERCICIOC5_1 INT(3)
                                       ,REPETICAOC5_1 INT(3)
                                       ,OBSERVACAOC5_1 VARCHAR(20)
                                       ,EXERCICIOC5_2 INT(3)
                                       ,REPETICAOC5_2 INT(3)
                                       ,OBSERVACAOC5_2 VARCHAR(20)
                                       ,EXERCICIOC5_3 INT(3)
                                       ,REPETICAOC5_3 INT(3)
                                       ,OBSERVACAOC5_3 VARCHAR(20)
                                       ,EXERCICIOC5_4 INT(3)
                                       ,REPETICAOC5_4 INT(3)
                                       ,OBSERVACAOC5_4 VARCHAR(20)
                                       ,EXERCICIOC5_5 INT(3)
                                       ,REPETICAOC5_5 INT(3)
                                       ,OBSERVACAOC5_5 VARCHAR(20)
                                       ,EXERCICIOC5_6 INT(3)
                                       ,REPETICAOC5_6 INT(3)
                                       ,OBSERVACAOC5_6 VARCHAR(20),
PRIMARY KEY(CD_TREINOC),
CONSTRAINT FOREIGN KEY (CD_REGISTRO) REFERENCES TB_ALUNOS (CD_REGISTRO)
)ENGINE = INNODB;



ALTER TABLE TB_EXERCICIOS ENGINE=InnoDB;

ALTER TABLE TB_ALUNOS MODIFY COLUMN CPF VARCHAR(20) UNIQUE NOT NULL;

TRUNCATE TB_MEMBROS;

DESC TB_ALUNOS;

DROP TABLE TB_EXERCICIOS;

DROP TABLE TB_MEMBROS;

DESC tb_alunos;

SELECT * FROM TB_ALUNOS;

SELECT * FROM TB_TREINOSC;