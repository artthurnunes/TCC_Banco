UPDATE TB_FREQUENCIA_ALUNOS SET HR_SAIDA = '20:01',ON_OFF = FALSE WHERE CD_REGISTRO = 3 AND DT_ENTRADA = '13/09/2018';

UPDATE TB_ALUNOS SET CD_MODALIDADE = 1 WHERE CD_REGISTRO = 1;

DELETE FROM TB_MODALIDADES WHERE CD_MODALIDADE = 1;

UPDATE TB_ALUNOS SET SITUACAO = TRUE WHERE CD_REGISTRO = 3;

UPDATE TB_ALUNOS SET NOME = 'A',CPF = 'BDSFSSF' WHERE CD_REGISTRO = 4;

UPDATE TB_DESPESAS_PROGRAMADAS SET PAGO = false WHERE NM_DESPESA = 'Luz';