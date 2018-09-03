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

SELECT CD_MEMBRO FROM TB_MEMBROS WHERE NM_MEMBRO = '';

SELECT * FROM TB_MEMBROS;

SELECT * FROM TB_EXERCICIOS;

SELECT * FROM TB_REPETICOES;

SELECT * FROM TB_TREINOSA;
SELECT * FROM TB_TREINOSB;
SELECT * FROM TB_TREINOSC;

TRUNCATE TB_TREINOSA;
TRUNCATE TB_TREINOSB;
TRUNCATE TB_TREINOSC;

SELECT NM_EXERCICIO FROM TB_EXERCICIOS WHERE CD_MEMBRO = 20 ORDER BY 1;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = FALSE;

SELECT NM_MEMBRO FROM TB_MEMBROS ORDER BY NM_MEMBRO ASC;

SELECT * FROM TB_ALUNOS WHERE SITUACAO = TRUE;

DELETE FROM TB_MEMBROS WHERE CD_MEMBRO = 10;

SELECT CD_EXERCICIO FROM TB_EXERCICIOS WHERE NM_EXERCICIO = ;

SELECT CD_REPETICAO FROM TB_REPETICOES WHERE NM_REPETICAO = ;

-- TENHO CD_TREINO E CD_REGISTRO

SELECT NM_MEMBRO FROM TB_MEMBROS A,TB_TREINOSA B, TB_ALUNOS C WHERE B AND C.CD_REGISTRO = 3 ;

      
USE TCC;      