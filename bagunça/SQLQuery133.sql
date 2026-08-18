--CREATE DATABASE Db_agenda;
--GO

USE Db_agenda;
GO

/*
CREATE TABLE Tb_pais (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT Pk_pais PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    DtCadastro DATETIME, 
    DtAlteracao DATETIME,
);
GO
*/

SP_HELP Tb_pais (MOSTRA A TABELA)

SELECT * FROM Tb_pais

DECLARE @DataHora DATETIME = GetDate()

PRINT @DataHora


INSERT INTO Tb_pais (Nome, Abreviatura, DtCadastro)
VALUES ('BRASIL', 'BR', @DataHora)
     , ('ARGENTINA', 'AR',@DataHora);
GO

CREATE TABLE Tb_estado (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT Pk_estado PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    Pais INTEGER NOT NULL
        CONSTRAINT Fk_estado_01
        FOREIGN KEY
        REFERENCES Tb_pais(Codigo),
    DtCadastro DATETIME, 
   DtAlteracao DATETIME,
    );


INSERT INTO Tb_estado(Nome, Abreviatura, Pais, DtCadastro) VALUES
    ('ACRE', 'AC', 1, GetDate()),
    ('AMAPÁ', 'AP', 1, GetDate()),
    ('AMAZONAS', 'AC', 1, GetDate()),
    ('PARÁ', 'PA', 1, GetDate()),
    ('RONDÔNIA', 'RO', 1, GetDate()),
    ('RORAIMA', 'RR', 1, GetDate()),
    ('TOCANTIS', 'TO', 1, GetDate()),
    ('ALAGOAS', 'AC', 1, GetDate()),
    ('BAHIA', 'BA', 1, GetDate()),
    ('CEARA', 'CE', 1, GetDate()),
    ('MARANHÃO', 'MA', 1, GetDate()),
    ('PARAÍBA', 'PB', 1, GetDate()),
    ('PERNANBUCO', 'PE', 1, GetDate()),
    ('PIAUI', 'PI', 1, GetDate()),
    ('RIO GRANDE DO NORTE', 'RN', 1, GetDate()),
    ('SERGIPE', 'SE', 1, GetDate()),
    ('DISTRITO FEDERAL', 'DF', 1, GetDate()),
    ('GOIÁS', 'GO', 1, GetDate()),
   ('MATO GROSSO', 'MT', 1, GetDate()),
    ('MATO GROSSO DO SUL', 'MS', 1, GetDate()),
    ('ESPIRITO SANTO', 'ES', 1, GetDate()),
    ('MINAS GERAIS', 'MG', 1, GetDate()),
    ('RIO DE JANEIRO', 'RJ', 1, GetDate()),
    ('SÃO PAULO', 'SP', 1, GetDate()),
    ('PARANÁ', 'PR', 1, GetDate()),
   ('RIO GRANDE SO SUL', 'RS', 1, GetDate()),
    ('SANTA CATARINA', 'SC', 1, GetDate());
    GO


   SELECT * FROM Tb_estado



    INSERT INTO Tb_estado(Nome, Abreviatura, Pais, DtCadastro) VALUES
    ('BUENOS AIRES', 'BA', 2, GetDate()),
    ('CATAMARCA', 'CT', 2, GetDate()),
    ('CHACO', 'CC', 2, GetDate()),
    ('CHUBUT', 'CH', 2, GetDate()),
    ('CÓRDOBA', 'CB', 2, GetDate()),
    ('CORRIENTES', 'CR', 2, GetDate()),
    ('ENTRE RÍOS', 'ER', 2, GetDate()),
    ('FORMOSA', 'FO', 2, GetDate()),
    ('JUJUY', 'JY', 2, GetDate()),
    ('LA PAMPA', 'LP', 2, GetDate()),
    ('LA RIOJA', 'LR', 2, GetDate()),
    ('MENDOZA', 'MZ', 2, GetDate()),
    ('MISIONES', 'MN', 2, GetDate()),
    ('NEUQUÉN', 'NQ', 2, GetDate()),
    ('RÍO NEGRO', 'RN', 2, GetDate()),
    ('SALTA', 'SA', 2, GetDate()),
    ('SAN JUAN', 'SJ', 2, GetDate()),
    ('SAN LUIS', 'SL', 2, GetDate()),
    ('SANTA CRUZ', 'SC', 2, GetDate()),
    ('SANTA FE', 'SF', 2, GetDate()),
    ('SANTIAGO DEL ESTERO', 'SE', 2, GetDate()),
    ('TIERRA DEL FUEGO', 'TF', 2, GetDate()),
    ('TUCUMÁN', 'TM', 2, GetDate()),
    ('CIDADE AUTÔNOMA DE BUENOS AIRES', 'CABA', 2, GetDate());
    GO


   SELECT * FROM Tb_estado


INSERT INTO Tb_pais (Nome, Abreviatura, DtCadastro) VALUES
('CHILE', 'CL', GetDate()),
('URUGUAI', 'UY',GetDate()),
('PARAGUAY', 'PY',GetDate())
GO

SELECT * FROM Tb_pais

SELECT Tb_pais.Nome 'Nome do Pais'
     , Tb_pais.Abreviatura 'Sigla do Pais'
      ,Tb_estado.Nome  'Nome do Estado'
      , Tb_estado.Abreviatura  'Sigla do Estado'
FROM Tb_estado
INNER JOIN Tb_pais ON Tb_pais.Codigo = Tb_estado.Pais
ORDER BY Tb_pais.Nome, Tb_estado.Nome





CREATE TABLE Tb_cidade (
      Codigo INTEGER IDENTITY (1,1) CONSTRAINT Pk_cidade PRIMARY KEY,
      Nome VARCHAR (150) NOT NULL,
      Abreviatura VARCHAR(50),
      Estado INTEGER NOT NULL
             CONSTRAINT Fk_cidade_01
             FOREIGN KEY
             REFERENCES Tb_estado(Codigo),
      DtCadastro DATETIME, 
      DtAlteracao DATETIME

 );

 
 INSERT INTO Tb_cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
-- ACRE
('Rio Branco', 'RB', 1, GETDATE()),
('Cruzeiro do Sul', 'CS', 1, GETDATE()),
('Sena Madureira', 'SM', 1, GETDATE()),
('Tarauacá', 'TA', 1, GETDATE()),

-- AMAPÁ
('Macapá', 'MC', 2, GETDATE()),
('Santana', 'ST', 2, GETDATE()),
('Laranjal do Jari', 'LJ', 2, GETDATE()),
('Oiapoque', 'OI', 2, GETDATE()),

-- AMAZONAS
('Manaus', 'MN', 3, GETDATE()),
('Parintins', 'PA', 3, GETDATE()),
('Itacoatiara', 'IT', 3, GETDATE()),
('Tefé', 'TF', 3, GETDATE()),

-- PARÁ
('Belém', 'BL', 4, GETDATE()),
('Santarém', 'SA', 4, GETDATE()),
('Marabá', 'MB', 4, GETDATE()),
('Altamira', 'AL', 4, GETDATE()),

-- RONDÔNIA
('Porto Velho', 'PV', 5, GETDATE()),
('Ji-Paraná', 'JP', 5, GETDATE()),
('Ariquemes', 'AR', 5, GETDATE()),
('Vilhena', 'VI', 5, GETDATE()),

-- RORAIMA
('Boa Vista', 'BV', 6, GETDATE()),
('Rorainópolis', 'RO', 6, GETDATE()),
('Caracaraí', 'CA', 6, GETDATE()),
('Pacaraima', 'PC', 6, GETDATE()),

-- TOCANTINS
('Palmas', 'PL', 7, GETDATE()),
('Araguaína', 'AR', 7, GETDATE()),
('Gurupi', 'GU', 7, GETDATE()),
('Porto Nacional', 'PN', 7, GETDATE()),

-- ALAGOAS
('Maceió', 'MC', 8, GETDATE()),
('Arapiraca', 'AR', 8, GETDATE()),
('Palmeira dos Índios', 'PI', 8, GETDATE()),
('Rio Largo', 'RL', 8, GETDATE()),

-- BAHIA
('Salvador', 'SV', 9, GETDATE()),
('Feira de Santana', 'FS', 9, GETDATE()),
('Vitória da Conquista', 'VC', 9, GETDATE()),
('Ilhéus', 'IL', 9, GETDATE()),

-- CEARÁ
('Fortaleza', 'FT', 10, GETDATE()),
('Juazeiro do Norte', 'JN', 10, GETDATE()),
('Sobral', 'SB', 10, GETDATE()),
('Crato', 'CR', 10, GETDATE()),

-- MARANHÃO
('São Luís', 'SL', 11, GETDATE()),
('Imperatriz', 'IM', 11, GETDATE()),
('Caxias', 'CX', 11, GETDATE()),
('Bacabal', 'BC', 11, GETDATE()),

-- PARAÍBA
('João Pessoa', 'JP', 12, GETDATE()),
('Campina Grande', 'CG', 12, GETDATE()),
('Patos', 'PT', 12, GETDATE()),
('Sousa', 'SO', 12, GETDATE()),

-- PERNAMBUCO
('Recife', 'RE', 13, GETDATE()),
('Olinda', 'OL', 13, GETDATE()),
('Caruaru', 'CA', 13, GETDATE()),
('Petrolina', 'PE', 13, GETDATE()),

-- PIAUÍ
('Teresina', 'TE', 14, GETDATE()),
('Parnaíba', 'PA', 14, GETDATE()),
('Picos', 'PI', 14, GETDATE()),
('Floriano', 'FL', 14, GETDATE()),

-- RIO GRANDE DO NORTE
('Natal', 'NT', 15, GETDATE()),
('Mossoró', 'MS', 15, GETDATE()),
('Parnamirim', 'PR', 15, GETDATE()),
('Caicó', 'CC', 15, GETDATE()),

-- SERGIPE
('Aracaju', 'AR', 16, GETDATE()),
('Nossa Senhora do Socorro', 'NS', 16, GETDATE()),
('Lagarto', 'LG', 16, GETDATE()),
('Itabaiana', 'IT', 16, GETDATE()),

-- DISTRITO FEDERAL
('Brasília', 'BS', 17, GETDATE()),
('Taguatinga', 'TG', 17, GETDATE()),
('Ceilândia', 'CE', 17, GETDATE()),
('Gama', 'GM', 17, GETDATE()),

-- GOIÁS
('Goiânia', 'GO', 18, GETDATE()),
('Anápolis', 'AN', 18, GETDATE()),
('Rio Verde', 'RV', 18, GETDATE()),
('Luziânia', 'LU', 18, GETDATE()),

-- MATO GROSSO
('Cuiabá', 'CB', 19, GETDATE()),
('Várzea Grande', 'VG', 19, GETDATE()),
('Rondonópolis', 'RO', 19, GETDATE()),
('Sinop', 'SN', 19, GETDATE()),

-- MATO GROSSO DO SUL
('Campo Grande', 'CG', 20, GETDATE()),
('Dourados', 'DO', 20, GETDATE()),
('Três Lagoas', 'TL', 20, GETDATE()),
('Corumbá', 'CO', 20, GETDATE()),

-- ESPÍRITO SANTO
('Vitória', 'VT', 21, GETDATE()),
('Vila Velha', 'VV', 21, GETDATE()),
('Serra', 'SE', 21, GETDATE()),
('Cariacica', 'CA', 21, GETDATE()),

-- MINAS GERAIS
('Belo Horizonte', 'BH', 22, GETDATE()),
('Uberlândia', 'UB', 22, GETDATE()),
('Contagem', 'CT', 22, GETDATE()),
('Juiz de Fora', 'JF', 22, GETDATE()),

-- RIO DE JANEIRO
('Rio de Janeiro', 'RJ', 23, GETDATE()),
('Niterói', 'NI', 23, GETDATE()),
('Petrópolis', 'PE', 23, GETDATE()),
('Volta Redonda', 'VR', 23, GETDATE()),

-- SÃO PAULO
('São Paulo', 'SP', 24, GETDATE()),
('Campinas', 'CP', 24, GETDATE()),
('Santos', 'ST', 24, GETDATE()),
('Ribeirão Preto', 'RP', 24, GETDATE()),

-- PARANÁ
('Curitiba', 'CT', 25, GETDATE()),
('Londrina', 'LD', 25, GETDATE()),
('Maringá', 'MG', 25, GETDATE()),
('Ponta Grossa', 'PG', 25, GETDATE()),

-- RIO GRANDE DO SUL
('Porto Alegre', 'PA', 26, GETDATE()),
('Caxias do Sul', 'CS', 26, GETDATE()),
('Pelotas', 'PE', 26, GETDATE()),
('Santa Maria', 'SM', 26, GETDATE()),

-- SANTA CATARINA
('Florianópolis', 'FL', 27, GETDATE()),
('Joinville', 'JO', 27, GETDATE()),
('Blumenau', 'BL', 27, GETDATE()),
('Chapecó', 'CH', 27, GETDATE());


--SELECT * FROM Tb_estado WHERE Abreviatura IN ('PR', 'SC', 'SP', 'RJ', 'RS')


INSERT INTO Tb_cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
-- BUENOS AIRES
('La Plata', 'LP', 28, GETDATE()),
('Mar del Plata', 'MP', 28, GETDATE()),

-- CATAMARCA
('San Fernando del Valle de Catamarca', 'SC', 29, GETDATE()),
('Belén', 'BE', 29, GETDATE()),

-- CHACO
('Resistencia', 'RS', 30, GETDATE()),
('Presidencia Roque Sáenz Peña', 'SP', 30, GETDATE()),

-- CHUBUT
('Rawson', 'RW', 31, GETDATE()),
('Comodoro Rivadavia', 'CR', 31, GETDATE()),

-- CÓRDOBA
('Córdoba', 'CB', 32, GETDATE()),
('Villa Carlos Paz', 'VP', 32, GETDATE()),

-- CORRIENTES
('Corrientes', 'CO', 33, GETDATE()),
('Goya', 'GY', 33, GETDATE()),

-- ENTRE RÍOS
('Paraná', 'PA', 34, GETDATE()),
('Concordia', 'CC', 34, GETDATE()),

-- FORMOSA
('Formosa', 'FO', 35, GETDATE()),
('Clorinda', 'CL', 35, GETDATE()),

-- JUJUY
('San Salvador de Jujuy', 'SJ', 36, GETDATE()),
('Palpalá', 'PP', 36, GETDATE()),

-- LA PAMPA
('Santa Rosa', 'SR', 37, GETDATE()),
('General Pico', 'GP', 37, GETDATE()),

-- LA RIOJA
('La Rioja', 'LR', 38, GETDATE()),
('Chilecito', 'CH', 38, GETDATE()),

-- MENDOZA
('Mendoza', 'MD', 39, GETDATE()),
('San Rafael', 'SR', 39, GETDATE()),

-- MISIONES
('Posadas', 'PO', 40, GETDATE()),
('Eldorado', 'EL', 40, GETDATE()),

-- NEUQUÉN
('Neuquén', 'NQ', 41, GETDATE()),
('Cutral Có', 'CC', 41, GETDATE()),

-- RÍO NEGRO
('Viedma', 'VD', 42, GETDATE()),
('Bariloche', 'BA', 42, GETDATE()),

-- SALTA
('Salta', 'SA', 43, GETDATE()),
('Tartagal', 'TA', 43, GETDATE()),

-- SAN JUAN
('San Juan', 'SJ', 44, GETDATE()),
('Rawson', 'RW', 44, GETDATE()),

-- SAN LUIS
('San Luis', 'SL', 45, GETDATE()),
('Villa Mercedes', 'VM', 45, GETDATE()),

-- SANTA CRUZ
('Río Gallegos', 'RG', 46, GETDATE()),
('Caleta Olivia', 'CO', 46, GETDATE()),

-- SANTA FE
('Santa Fe', 'SF', 47, GETDATE()),
('Rosario', 'RO', 47, GETDATE()),

-- SANTIAGO DEL ESTERO
('Santiago del Estero', 'SE', 48, GETDATE()),
('La Banda', 'LB', 48, GETDATE()),

-- TIERRA DEL FUEGO
('Ushuaia', 'US', 49, GETDATE()),
('Río Grande', 'RG', 49, GETDATE()),

-- TUCUMÁN
('San Miguel de Tucumán', 'ST', 50, GETDATE()),
('Tafí Viejo', 'TV', 50, GETDATE()),

-- CIDADE AUTÔNOMA DE BUENOS AIRES
('Buenos Aires', 'BA', 51, GETDATE()),
('Puerto Madero', 'PM', 51, GETDATE());

SELECT * FROM Tb_cidade

/*

Nome     Abrev    estado    Abrev    Nome    Abrev
Cidade   Cidade   Nome      Estado   Pais    Pais

*/

SELECT
    Tb_cidade.Nome        AS 'Nome da Cidade',
    Tb_cidade.Abreviatura AS 'Sigla da Cidade',
    Tb_estado.Nome        AS 'Nome do Estado',
    Tb_estado.Abreviatura AS 'Sigla do Estado',
    Tb_pais.Nome          AS 'Nome do País',
    Tb_pais.Abreviatura   AS 'Sigla do País'
FROM Tb_cidade 

INNER JOIN Tb_estado 
    ON Tb_estado.Codigo = Tb_cidade.Estado

INNER JOIN Tb_pais 
    ON Tb_pais.Codigo = Tb_estado.Pais

ORDER BY 
    Tb_pais.Nome,
    Tb_estado.Nome,
    Tb_cidade.Nome;

/*

 STORED PROCEDURE - MANUTENÇÃO DE PAISES

 @Acao -> 'C', 'U', 'D'

 CREATE TABLE Tb_pais (
    Codigo INTEGER IDENTITY(1,1) CONSTRAINT Pk_pais PRIMARY KEY,
    Nome VARCHAR(150) NOT NULL,
    Abreviatura VARCHAR(50),
    DtCadastro DATETIME, 
    DtAlteracao DATETIME,
);
GO

 */

 CREATE OR ALTER PROCEDURE _SP_PAIS_EDITAR
 (
    @Acao CHAR(1),
    @Cd INTEGER = NULL,
    @Nm VARCHAR(150) = NULL,
    @Abrev VARCHAR(150) = NULL
 )
 AS
 BEGIN
    SET NOCOUNT ON;

    IF @Acao = 'C'
    BEGIN 
        INSERT INTO Tb_pais ( Nome, Abreviatura, DtCadastro)
        VALUES (@Nm, @Abrev, GETDATE());

        SELECT SCOPE_IDENTITY() AS Pk_pais;
    END

    ELSE IF @Acao = 'U'
    BEGIN
        UPDATE Tb_pais
        SET 
          Nome = @Nm,
          Abreviatura = @Abrev,
          DtAlteracao = GETDATE()
       WHERE 
          Codigo = @Cd;

       SELECT @Cd AS Pk_pais;
    END

    ELSE IF @Acao = 'D'
    BEGIN
         DELETE FROM Tb_pais WHERE Codigo = @Cd
         SELECT @Cd as Pk_Pais
    END

    ELSE
    BEGIN
        RAISERROR('Acao Inválida', 16, 1);
    END
END;
GO


 SELECT * FROM Tb_pais

 EXEC SP_PAIS_EDITAR 'C', 'ARGENTINA'

 EXEC SP_PAIS_EDITAR @Abrev = 'VZ', @Acao = 'C',@Nm = 'Venezuela'

 EXEC SP_PAIS_EDITAR 'U', NULL, 'ARGENTINA', 'AA'

 SELECT TOP (1000)
       e.Codigo
       ,e.Nome
       ,e.Abreviatura
       ,e.Pais
       ,p.Nome
    FROM Tb_estado AS e
    INNER JOIN Tb_pais AS p ON p.Codigo = e.Pais

    SELECT codigo, nome, abreviatura FROM TB_Pais