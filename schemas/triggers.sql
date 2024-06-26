-- fazendo um trigger E UMA NOVA TABELA
-- SEMPRE QUE A TABELA VENDAS FOR ALTERADA ESSE TRIGGER VA SER ACIONADO E VAII ATUALIZA A TABELA TB_FATVENDEDOR
    
CREATE TABLE TB_FATVENDEDOR (
    VENDEDOR VARCHAR2(60),
    QUANTIDADE INT,
    VALOR_FAT FLOAT
);

SELECT * FROM TB_FATVENDEDOR;

CREATE OR REPLACE TRIGGER TGR_INS_FATVEND
BEFORE INSERT ON VENDAS
FOR EACH ROW

DECLARE
    V_COUNT INT:= 0;
BEGIN 
    SELECT COUNT(1)
    INTO V_COUNT
    FROM TB_FATVENDEDOR;
    
    IF V_COUNT > 0 THEN
        DELETE FROM TB_FATVENDEDOR;  
    END IF;
        
    INSERT INTO TB_FATVENDEDOR (VENDEDOR, QUANTIDADE, VALOR_FAT)
    SELECT 
        VENDEDOR, 
        SUM(QUANTIDADE) + :NEW.QUANTIDADE, 
        SUM(VALOR_UNIT * QUANTIDADE) + :NEW.VALOR_UNIT
    FROM 
        VENDAS
    GROUP BY 
        VENDEDOR;
END;






