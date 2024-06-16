-- criando tabela de produtos
CREATE TABLE PRODUTOS (
    IDPRO INT NOT NULL PRIMARY KEY,
    PRODUTO VARCHAR2(60) NOT NULL,
    LINHA_PROD VARCHAR(40) NOT NULL,
    FORNECEDOR VARCHAR(60) NOT NULL,
    CUSTO_UNITARIO FLOAT
);

-- ADICIONANDO SEQUENCIA DA PRIMARY KEY
CREATE SEQUENCE ID_PRO
        START WITH 1
        INCREMENT BY 1
        NOCACHE;
        
-- inserindo primeiro dado na tabela produtos
INSERT INTO PRODUTOS 
    (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO)
VALUES 
    (ID_PRO.NEXTVAL, 'ABACAXI', 'FRUTAS', 'FAZENDA RECREIO', 1.99);


-- apagando dados existentes na tabela PRODUTOS E VENDAS
DELETE FROM PRODUTOS;

-- adicionando varios produtos de uma vez
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES          
                     (ID_PRO.NEXTVAL, 'ARROZ TIPO 1', 'ALIMENTA��O', 'CRISTAL ALIMENTOS', 15.20);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES        
                     (ID_PRO.NEXTVAL, 'FEIJ�O PRETO', 'ALIMENTA��O', 'BREJEIRO GO', 5.62);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'A��CAR REFINADO', 'ALIMENTA��O', 'CRISTAL ALIMENTOS', 8.23);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES               
                     (ID_PRO.NEXTVAL, 'CAF� FORTE', 'ALIMENTA��O', 'FAZENDEIRO MINEIRO', 4.69);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'OL�O DE SOJA', 'ALIMENTA��O', 'GIRASSOL', 3.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'FUB� DE MILHO', 'ALIMENTA��O', 'FAZENDEIRO MINEIRO', 1.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'SUCO LARANJA', 'BEBIDAS', 'SABOR REFSH', 2.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'SUCO MORANGO', 'BEBIDAS', 'SABOR REFSH', 2.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'SUCO UVA', 'BEBIDAS', 'SABOR REFSH', 2.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'REFIRERANTE COLA', 'BEBIDAS', 'REI LE�O', 5.89);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'REFRIFERANTE GUARAN�', 'BEBIDAS', 'REI LE�O', 4.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'CERVEJA PILSEN 269ML', 'BEBIDAS', 'BANDEIRANTES', 0.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'CERVEJA PILSEN 600ML', 'BEBIDAS', 'BANDEIRANTES', 2.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'CERVEJA PILSEN 350ML', 'BEBIDAS', 'BANDEIRANTES', 1.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'COPO 350ML', 'UTILIDADES', 'UTIL E MORDERNO LTDA', 0.79);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'TA�A 250ML', 'UTILIDADES', 'UTIL E MORDERNO LTDA', 2.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'TULIPA 350ML', 'UTILIDADES', 'UTIL E MORDERNO LTDA', 0.99);
INSERT INTO PRODUTOS (IDPRO, PRODUTO, LINHA_PROD, FORNECEDOR, CUSTO_UNITARIO) VALUES
                     (ID_PRO.NEXTVAL, 'GUARRAFA DE CAF� 1LT', 'UTILIDADES', 'UTIL E MORDERNO LTDA', 10.99);
                     
SELECT * FROM PRODUTOS;