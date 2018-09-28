
USE TCC;
DROP DATABASE PRODUCAO;
CREATE DATABASE TCC;  
SELECT * FROM TB_MEMBROS;
SELECT * FROM TB_EXERCICIOS;
SELECT * FROM TB_REPETICOES;
SELECT * FROM TB_TREINOSA;
SELECT * FROM TB_TREINOSB;
SELECT * FROM TB_TREINOSC;
SELECT * FROM TB_ALUNOS;
SELECT * FROM TB_MODALIDADES;
SELECT * FROM TB_MOD_ALUNOS;
SELECT * FROM TB_PLANOS_VALORES;
SELECT * FROM TB_PLANOS_ALUNOS;
SELECT * FROM TB_FREQUENCIA_ALUNOS_HISTORICO;
SELECT * FROM TB_FREQUENCIA_ALUNOS;
SELECT * FROM TB_EQUIPAMENTOS;
SELECT * FROM TB_SENHAS;
SELECT * FROM TB_DESPESAS_PROGRAMADAS;
SELECT * FROM TB_HISTORICO_PAGAMENTOS_ALUNOS;

UPDATE tb_historico_pagamentos_alunos SET DT_PAGAMENTO = '2018/09/25',VALOR_PAGO = 80 WHERE CD_REGISTRO = 3;

UPDATE tb_historico_pagamentos_alunos SET PROXIMO_VENCIMENTO = DATE_FORMAT(now(),'%Y-%m-31') WHERE CD_PAGAMENTO = 3;

UPDATE TB_HISTORICO_PAGAMENTOS_ALUNOS SET PROXIMO_VENCIMENTO = DATE_FORMAT(PROXIMO_VENCIMENTO,'%Y-%m-21') WHERE CD_REGISTRO = 3;

DELETE FROM tb_historico_pagamentos_alunos WHERE CD_PAGAMENTO = 2;

INSERT INTO tb_historico_pagamentos_alunos (CD_REGISTRO,PROXIMO_VENCIMENTO) VALUES (3,'2018/09/25');

INSERT INTO tb_historico_pagamentos_alunos (CD_REGISTRO,PROXIMO_VENCIMENTO) VALUES (3,ADDDATE(DATE_FORMAT(now(),'%Y-%m-30'),INTERVAL 1 MONTH));

SELECT A.CD_REGISTRO,A.NOME,A.TEL1, DATE_FORMAT(D.DT_ENTRADA,'%e/%m/%Y'),B.VALOR,DATE_FORMAT(C.PROXIMO_VENCIMENTO,'%e/%m/%Y') FROM TB_ALUNOS A INNER JOIN TB_PLANOS_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO INNER JOIN TB_HISTORICO_PAGAMENTOS_ALUNOS C ON C.CD_REGISTRO = A.CD_REGISTRO INNER JOIN TB_FREQUENCIA_ALUNOS D ON D.CD_REGISTRO = A.CD_REGISTRO WHERE C.PROXIMO_VENCIMENTO < NOW();

SELECT B.NOME,B.TEL1, DATE_FORMAT(A.DT_ENTRADA,'%e/%m/%Y'), DATEDIFF(NOW(),A.DT_ENTRADA), MAX(C.DT_FIM) FROM TB_FREQUENCIA_ALUNOS A INNER JOIN TB_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO LEFT JOIN TB_TREINOSA C ON C.CD_REGISTRO = A.CD_REGISTRO GROUP BY A.CD_REGISTRO ORDER BY 4;

SELECT A.CD_REGISTRO,A.NOME,A.TEL1, DATE_FORMAT(D.DT_ENTRADA,'%e/%m/%Y'),B.VALOR,DATE_FORMAT(C.PROXIMO_VENCIMENTO,'%e/%m/%Y') 
FROM TB_ALUNOS A 
INNER JOIN TB_PLANOS_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO
INNER JOIN TB_HISTORICO_PAGAMENTOS_ALUNOS C ON C.CD_REGISTRO = A.CD_REGISTRO
INNER JOIN TB_FREQUENCIA_ALUNOS D ON D.CD_REGISTRO = A.CD_REGISTRO WHERE C.PROXIMO_VENCIMENTO < NOW();

SELECT A.CD_REGISTRO,A.NOME,A.TEL1, DATE_FORMAT(D.DT_ENTRADA,'%e/%m/%Y'),B.VALOR,MAX(DATE_FORMAT(C.PROXIMO_VENCIMENTO,'%e/%m/%Y')) FROM TB_ALUNOS A INNER JOIN TB_PLANOS_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO INNER JOIN TB_HISTORICO_PAGAMENTOS_ALUNOS C ON C.CD_REGISTRO = A.CD_REGISTRO LEFT JOIN TB_FREQUENCIA_ALUNOS D ON D.CD_REGISTRO = A.CD_REGISTRO WHERE C.PROXIMO_VENCIMENTO < NOW() GROUP BY A.CD_REGISTRO,A.NOME,A.TEL1,D.DT_ENTRADA,B.VALOR;

-- LISTA DE ALUNOS EM ATRAZO AINDA ESTA TRAZENDO MAIS DE UM, ACHO QUE É O VALOR, MOSTAR O ULTIMO SOMENTE
SELECT A.CD_REGISTRO,A.NOME,A.TEL1, DATE_FORMAT(D.DT_ENTRADA,'%e/%m/%Y')
		,(SELECT VALOR FROM tb_planos_alunos ORDER BY CD_PLANO_ALUNO DESC LIMIT 1),MAX(DATE_FORMAT(C.PROXIMO_VENCIMENTO,'%e/%m/%Y')) 
FROM TB_ALUNOS A 
INNER JOIN TB_PLANOS_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO 
INNER JOIN TB_HISTORICO_PAGAMENTOS_ALUNOS C ON C.CD_REGISTRO = A.CD_REGISTRO 
LEFT JOIN TB_FREQUENCIA_ALUNOS D ON D.CD_REGISTRO = A.CD_REGISTRO 
WHERE C.PROXIMO_VENCIMENTO < NOW() 
GROUP BY A.CD_REGISTRO,A.NOME,A.TEL1,D.DT_ENTRADA;


SELECT VALOR FROM tb_planos_alunos where CD_REGISTRO = 3 order BY CD_PLANO_ALUNO DESC LIMIT 1;

SELECT CD_REGISTRO, MAX(PROXIMO_VENCIMENTO) FROM TB_HISTORICO_PAGAMENTOS_ALUNOS WHERE CD_REGISTRO = 3;


SELECT DT_FIM FROM TB_TREINOSA ORDER BY DT_FIM DESC LIMIT 1;

SELECT CD_REGISTRO,MAX(DT_FIM) FROM TB_TREINOSA GROUP BY CD_REGISTRO; 

DELETE FROM TB_DESPESAS_PROGRAMADAS WHERE CD_DESPESA = 2;


-- TRUNCATE TB_FREQUENCIA_ALUNOS_HISTORICO;
-- TRUNCATE TB_FREQUENCIA_ALUNOS;


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

-- TABELA FREQUENCIA 
SELECT MAX(DT_ENTRADA) FROM TB_FREQUENCIA_ALUNOS;
SELECT * FROM TB_FREQUENCIA_ALUNOS WHERE CD_REGISTRO = 3 ORDER BY CD_FREQUENCIA DESC LIMIT 1;
SELECT * FROM TB_FREQUENCIA_ALUNOS WHERE DATEDIFF(NOW(),DT_ENTRADA) > 7;
SELECT DATEDIFF(NOW(),DT_ENTRADA) FROM TB_FREQUENCIA_ALUNOS WHERE CD_REGISTRO = 3;
SELECT SYSDATE() FROM DUAL;
SELECT DATEDIFF(NOW(),DT_ENTRADA) FROM TB_FREQUENCIA_ALUNOS;

SELECT B.NOME,B.TEL1, DATE_FORMAT(A.DT_ENTRADA,'%e/%m/%Y'), DATEDIFF(NOW(),A.DT_ENTRADA) 
FROM TB_FREQUENCIA_ALUNOS A 
INNER JOIN TB_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO 
WHERE DATEDIFF(NOW(),DT_ENTRADA) > 6 ORDER BY B.NOME ASC;

SELECT B.NOME,B.TEL1, DATE_FORMAT(A.DT_ENTRADA,'%e/%m/%Y'), DATEDIFF(NOW(),A.DT_ENTRADA) ,C.DT_FIM FROM TB_FREQUENCIA_ALUNOS A INNER JOIN TB_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO LEFT JOIN TB_TREINOSA C ON C.CD_REGISTRO = A.CD_REGISTRO;
WHERE A.CD_REGISTRO = 3 ; -- TRAZ TODOS OS ALUNOS, ATE OS QUE AINDA NAO TEM TREINO CADASTRADO

-- APAGAR SE NAO DER CERTO
SELECT B.NOME,B.TEL1, DATE_FORMAT(A.DT_ENTRADA,'%e/%m/%Y'), DATEDIFF(NOW(),A.DT_ENTRADA) ,C.DT_FIM
FROM TB_FREQUENCIA_ALUNOS A 
INNER JOIN TB_ALUNOS B ON B.CD_REGISTRO = A.CD_REGISTRO
LEFT JOIN TB_TREINOSA C ON C. = (SELECT MAX(CD_TREINOSA) FROM TB_TREINOSA C2 WHERE C2.CD_REGISTRO = A.CD_REGISTRO);



SELECT MAX(DT_FIM) FROM TB_TREINOSA;

-- TABELA SENHA 

SELECT NOME FROM TB_SENHAS WHERE USUARIO = '3';
DESC TB_SENHAS;

TRUNCATE TB_TREINOSA;
TRUNCATE TB_TREINOSB;
TRUNCATE TB_TREINOSC;
TRUNCATE TB_MOD_ALUNOS;


SELECT * FROM TB_PLANOS_ALUNOS A INNER JOIN TB_PLANOS_VALORES B ON B.CD_PLANO = A.CD_PLANO WHERE CD_PLANO_ALUNO = 1;

SELECT CD_DESPESA FROM TB_DESPESAS_PROGRAMADAS WHERE NM_DESPESA LIKE '%LUZ%';

SELECT * FROM TB_DESPESAS_PROGRAMADAS WHERE PAGO <> TRUE ;

SELECT * FROM TB_HISTORICO_PAGAMENTOS_ALUNOS;



