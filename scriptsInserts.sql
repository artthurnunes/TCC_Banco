INSERT INTO TB_ALUNOS (SITUACAO,NOME,TEL1,TEL2,PROFISSAO,SEXO,ESTADO_CIVIL,RG,CPF,DT_NASCIMENTO 
					   ,NM_MAE,NM_PAI,NM_EMER,TEL_EMER,PARENTESCO,END_RUA,END_NUMERO,END_BAIRRO,END_CIDADE 
					   ,END_ESTADO,END_CEP) 
			VALUES (TRUE,'Damiana Nunes','(19) 3887-7450','(19) 98387-7421','Assistente','Masculino',2,'13.874.741','845.547.841-31'
				    ,'01/02/1987','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',3,'Rua Alvares de Carvalho','1205'
                    ,'Jd St Ângelo','Sumaré',3,'13.654-541'),
                    (TRUE,'Arthur Nunes','(19) 3887-7450','(19) 98387-7421','Assistente','Masculino',2,'13.874.741','846.741.554-54'
				    ,'01/02/1987','Maria das Dores','João da Silva','Benedito Souza','(19) 3598-5412',3,'Rua Alvares de Carvalho','1205'
                    ,'Jd St Ângelo','Sumaré',3,'13.654-541');
                       
INSERT INTO TB_ALUNOS (NOME,CPF) VALUES ('A','2');

SELECT * FROM TB_ALUNOS;

USE TCC;

TRUNCATE TB_ALUNOS;