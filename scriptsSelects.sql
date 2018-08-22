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

SELECT * FROM TB_MEMBROS;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = FALSE;

SELECT NM_MEMBRO FROM TB_MEMBROS ORDER BY NM_MEMBRO ASC;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = TRUE;
      
USE TCC;      