USE TCC;

/********************************************** CREATE *******************************************************************************/

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

/********************************************** INSERT *******************************************************************************/


INSERT INTO TB_ALUNOS (SITUACAO,NOME,TEL1,TEL2,PROFISSAO,SEXO,ESTADO_CIVIL,RG,CPF,DT_NASCIMENTO 
					   ,NM_MAE,NM_PAI,NM_EMER,TEL_EMER,PARENTESCO,END_RUA,END_NUMERO,END_BAIRRO,END_CIDADE 
					   ,END_ESTADO,END_CEP) 
			VALUES (TRUE,'Damiana Nunes','(19) 3887-7450','(19) 98387-7421','Assistente','Feminino',1,'13.874.741','845.541.141-34'
				    ,'01/02/1987','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',1,'Rua Alvares de Carvalho','1205'
                    ,'Jd St Ângelo','Sumaré',5,'13.654-541'),
                    (TRUE,'Arthur Nunes','(19) 3887-7450','(19) 98387-7421','Assistente','Masculino',2,'13.874.741','846.742.254-57'
				    ,'01/02/1987','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',3,'Rua Alvares de Carvalho','1205'
                    ,'Jd St Ângelo','Sumaré',3,'13.654-541'),
                    (TRUE,'Arizeu Santana','(19) 3887-7450','(19) 98387-7421','Empresário','Masculino',2,'13.874.741','451.171.841-48'
				    ,'01/02/1987','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',3,'Rua Alvares de Carvalho','1205'
                    ,'Jd St Ângelo','Sumaré',3,'13.654-541');
                    
/********************************************** SELECT *******************************************************************************/

                    
SELECT 			CD_REGISTRO,SITUACAO,NOME,TEL1,TEL2,PROFISSAO,SEXO,ESTADO_CIVIL
				,RG,CPF,DT_NASCIMENTO,NM_MAE,NM_PAI,NM_EMER,TEL_EMER,PARENTESCO,END_RUA
				,END_NUMERO,END_BAIRRO,END_CIDADE,END_ESTADO,END_CEP
	FROM		TB_ALUNOS;
	  ORDER BY NOME ASC;
      
SELECT 			*
	FROM		TB_ALUNOS
		WHERE 	NOME LIKE '%%'
	  ORDER BY NOME ASC;

SELECT * FROM TB_ALUNOS;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = FALSE;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = TRUE;

/********************************************** UPDATE *******************************************************************************/


UPDATE TB_ALUNOS SET SEXO = "Feminino" WHERE CD_REGISTRO = 1;

UPDATE TB_ALUNOS SET SITUACAO = FALSE WHERE CD_REGISTRO IN (7,8,9,10,11,12,13,14);