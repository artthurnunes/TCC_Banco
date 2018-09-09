USE TCC;  
SELECT * FROM TB_MEMBROS;
SELECT * FROM TB_EXERCICIOS;
SELECT * FROM TB_REPETICOES;
SELECT * FROM TB_TREINOSA;
SELECT * FROM TB_TREINOSB;
SELECT * FROM TB_TREINOSC;
SELECT * FROM TB_ALUNOS;
SELECT * FROM TB_MODALIDADES;

-- TABELA ALUNOS
SELECT 			CD_REGISTRO,SITUACAO,NOME,TEL1,TEL2,PROFISSAO,SEXO,ESTADO_CIVIL
				,RG,CPF,DT_NASCIMENTO,NM_MAE,NM_PAI,NM_EMER,TEL_EMER,PARENTESCO,END_RUA
				,END_NUMERO,END_BAIRRO,END_CIDADE,END_ESTADO,END_CEP
	FROM		TB_ALUNOS ORDER BY NOME ASC;
      
SELECT * FROM TB_ALUNOS WHERE NOME LIKE '%%' ORDER BY NOME ASC;
SELECT * FROM TB_ALUNOS WHERE SITUACAO = FALSE;
SELECT * FROM TB_ALUNOS WHERE SITUACAO = TRUE;

-- TABELA MEMBROS

SELECT CD_MEMBRO FROM TB_MEMBROS WHERE NM_MEMBRO = '';
SELECT NM_MEMBRO FROM TB_MEMBROS ORDER BY NM_MEMBRO ASC;
DELETE FROM TB_MEMBROS WHERE CD_MEMBRO = 10;
SELECT NM_MEMBRO FROM TB_MEMBROS A,TB_TREINOSA B, TB_ALUNOS C WHERE B AND C.CD_REGISTRO = 3 ;

-- TABELA EXERCÍCIOS

SELECT NM_EXERCICIO FROM TB_EXERCICIOS WHERE CD_MEMBRO = 20 ORDER BY 1;
SELECT CD_EXERCICIO FROM TB_EXERCICIOS WHERE NM_EXERCICIO = ;
SELECT CD_REPETICAO FROM TB_REPETICOES WHERE NM_REPETICAO = ;


TRUNCATE TB_TREINOSA;
TRUNCATE TB_TREINOSB;
TRUNCATE TB_TREINOSC;





      
    