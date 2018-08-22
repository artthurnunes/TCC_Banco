USE TCC;

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
)DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS TB_MEMBROS (CD_MEMBRO INT NOT NULL AUTO_INCREMENT
									   ,NM_MEMBRO VARCHAR(50) UNIQUE,
PRIMARY KEY(CD_MEMBRO)
)DEFAULT CHARSET = utf8;

CREATE TABLE IF NOT EXISTS TB_EXERCICIOS (CD_EXERCICIO INT NOT NULL AUTO_INCREMENT
										  ,NM_EXERCICIO VARCHAR(50) UNIQUE
                                          ,CD_MEMBRO INT,
PRIMARY KEY(CD_EXERCICIO),
FOREIGN KEY (CD_MEMBRO) REFERENCES TB_MEMBROS (CD_MEMBRO)
)DEFAULT CHARSET = utf8;


DROP TABLE tb_alunos;

DESC tb_alunos;

SELECT * FROM TB_ALUNOS;