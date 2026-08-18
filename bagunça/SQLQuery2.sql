-- 1. CRIANDO E SELECIONANDO O BANCO DE DADOS
CREATE DATABASE DB_Agenda;
GO

USE DB_Agenda;
GO

-- 2. CRIANDO A TABELA DE PAÍSES
CREATE TABLE TB_Pais (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Pais PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    DtCadastro DATETIME,
    DtAlteracao DATETIME
);
GO

-- 3. INSERINDO OS PAÍSES
DECLARE @dataHora DATETIME = GETDATE();

INSERT INTO TB_Pais (Nome, Abreviatura, DtCadastro)
VALUES 
 ('BRASIL','BR',@dataHora),
 ('ARGENTINA','ARG',@dataHora),
 ('CHILE','CHL',@dataHora),
 ('URUGUAY','URG',@dataHora);
GO

-- 4. CRIANDO A TABELA DE ESTADOS
CREATE TABLE TB_Estado (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Estado PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    Pais INTEGER NOT NULL CONSTRAINT FK_Estado_01 FOREIGN KEY REFERENCES TB_Pais (Codigo),
    DtCadastro DATETIME,
    DtAlteracao DATETIME
);
GO

-- 5. INSERINDO ESTADOS DO BRASIL (PAÍS ID = 1)
INSERT INTO TB_Estado (Nome, Abreviatura, Pais, DtCadastro) VALUES
 ('ACRE', 'AC', 1, GETDATE()),
 ('ALAGOAS', 'AL', 1, GETDATE()),
 ('AMAPA', 'AP', 1, GETDATE()),
 ('AMAZONAS', 'AM', 1, GETDATE()),
 ('BAHIA', 'BA', 1, GETDATE()),
 ('CEARA', 'CE', 1, GETDATE()),
 ('DISTRITO FEDERAL', 'DF', 1, GETDATE()),
 ('ESPIRITO SANTO', 'ES', 1, GETDATE()),
 ('GOIAS', 'GO', 1, GETDATE()),
 ('MARANHAO', 'MA', 1, GETDATE()),
 ('MATO GROSSO', 'MT', 1, GETDATE()),
 ('MATO GROSSO DO SUL', 'MS', 1, GETDATE()),
 ('PARA', 'PA', 1, GETDATE()),
 ('PERNAMBUCO', 'PE', 1, GETDATE()),
 ('PARAIBA', 'PB', 1, GETDATE()),
 ('PIAUI', 'PI', 1, GETDATE()),
 ('PARANA', 'PR', 1, GETDATE()),
 ('RIO DE JANEIRO', 'RJ', 1, GETDATE()),
 ('RIO GRANDE DO NORTE', 'RN', 1, GETDATE()),
 ('RIO GRANDE DO SUL', 'RS', 1, GETDATE()),
 ('RONDONIA', 'RO', 1, GETDATE()),
 ('RORAIMA', 'RR', 1, GETDATE()),
 ('SANTA CATARINA', 'SC', 1, GETDATE()),
 ('SAO PAULO', 'SP', 1, GETDATE()),
 ('MINAS GERAIS', 'MG', 1, GETDATE());
GO

-- 6. INSERINDO ESTADOS DA ARGENTINA (PAÍS ID = 2)
INSERT INTO TB_Estado (Nome, Abreviatura, Pais, DtCadastro) VALUES
 ('BUENOS AIRES', 'BA', 2, GETDATE()),
 ('CORDOBA', 'CB', 2, GETDATE()),
 ('SANTA FE', 'SF', 2, GETDATE()),
 ('MENDONZA', 'MZ', 2, GETDATE()),
 ('TUCUMAN', 'TM', 2, GETDATE()),
 ('ENTRE RIOS', 'ER', 2, GETDATE()),
 ('SALTA', 'SA', 2, GETDATE()),
 ('CHACO', 'CC', 2, GETDATE()),
 ('CORRIENTES', 'CR', 2, GETDATE()),
 ('NEUQUEN', 'NQ', 2, GETDATE());
GO

-- 7. INSERINDO ESTADOS DO URUGUAI (PAÍS ID = 4)
INSERT INTO TB_Estado (Nome, Abreviatura, Pais, DtCadastro) VALUES
 ('MONTEVIDEO', 'MO', 4, GETDATE()),
 ('CANELONES', 'CA', 4, GETDATE()),
 ('MALDONADO', 'MA', 4, GETDATE()),
 ('COLONIA', 'CO', 4, GETDATE()),
 ('SALTO', 'SA', 4, GETDATE()),
 ('PAYSANDU', 'PA', 4, GETDATE()),
 ('RIVERA', 'RI', 4, GETDATE()),
 ('ROCHA', 'RO', 4, GETDATE()),
 ('TACUAREMBO', 'TA', 4, GETDATE()),
 ('DURAZNO', 'DU', 4, GETDATE());
GO

-- 8. CONSULTA FINAL (INNER JOIN)
SELECT 
    E.Nome AS Estado_Nome, 
    E.Abreviatura AS Estado_UF, 
    P.Nome AS Pais_Nome, 
    P.Abreviatura AS Pais_Sigla
FROM TB_Estado E
INNER JOIN TB_Pais P ON P.Codigo = E.Pais
ORDER BY P.Nome, E.Nome;
GO

-- 9. CRIANDO TABELA DE CIDADE
CREATE TABLE Tb_Cidade (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Cidade PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    Estado INTEGER NOT NULL CONSTRAINT FK_Cidade_01 FOREIGN KEY REFERENCES TB_Estado (Codigo),
    DtCadastro DATETIME,
    DtAlteracao DATETIME
);
GO