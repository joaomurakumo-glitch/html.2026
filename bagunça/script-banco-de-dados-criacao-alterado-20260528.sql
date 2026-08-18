--CREATE DATABASE Db_Agenda;
--GO

USE Db_Agenda;
GO

CREATE TABLE TB_Pais (
	Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Pais PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Abreviatura VARCHAR(50),
	DtCadastro DATETIME,
	DtAlteracao DATETIME
);
GO

--SP_HELP TB_Pais

DECLARE @dataHora DATETIME = GetDate()

INSERT INTO TB_Pais (nome, abreviatura, DtCadastro)
VALUES ('BRASIL', 'BR', @dataHora)
     , ('ARGENTINA', 'AR', @dataHora)
     , ('CHILE', 'CL', GetDate())
     , ('URUGUAI', 'UY', '20260526')
	 , ('PARAGUAY', 'PY', '20260525');

--DELETE FROM TB_Pais WHERE Codigo in (3, 4, 5, 6, 7, 8)
--EXEC sp_rename 'TB_Pais.Abreviatura', 'Abrev', 'COLUMN'
--EXEC sp_rename 'TB_Pais.Abrev', 'Abreviatura', 'COLUMN'


CREATE TABLE TB_Estado (
	Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Estado PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Abreviatura VARCHAR(50),
	Pais INTEGER NOT NULL 
	     CONSTRAINT FK_Estado_01
		 FOREIGN KEY 
		 REFERENCES TB_Pais (Codigo),
    DtCadastro DATETIME,
	DtAlteracao DATETIME
);

SELECT * FROM TB_Pais
SELECT * FROM TB_Estado

INSERT INTO	TB_Estado (nome, abreviatura, pais, dtcadastro) VALUES
  ('ACRE', 'AC', 1, GetDate())

INSERT INTO	TB_Estado (nome, abreviatura, pais, dtcadastro) VALUES
  ('ALAGOAS', 'AL', 1, GetDate())
, ('AMAPÁ', 'AP', 1, GetDate())
, ('AMAZONAS', 'AM', 1, GetDate())
, ('BAHIA', 'BA', 1, GetDate())
, ('CEARÁ', 'CE', 1, GetDate())
, ('DISTRITO FEDERAL', 'DF', 1, GetDate())
, ('ESPIRITO SANTO', 'ES', 1, GetDate())
, ('GOIÁS', 'GO', 1, GetDate())
, ('MARANHÃO', 'MA', 1, GetDate())
, ('MATO GROSSO', 'MT', 1, GetDate())
, ('MATO GROSSO DO SUL', 'MS', 1, GetDate())
, ('MINAS GERAIS', 'MG', 1, GetDate())
, ('PARA', 'PA', 1, GetDate())
, ('PARAÍBA', 'PB', 1, GetDate())
, ('PARANÁ', 'PR', 1, GetDate())
, ('PERNAMBUCO', 'PE', 1, GetDate())
, ('PIAUÍ', 'PI', 1, GetDate())
, ('RIO DE JANEIRO', 'RJ', 1, GetDate())
, ('RIO GRANDE DO NORTE', 'RN', 1, GetDate())
, ('RIO GRANDE DO SUL', 'RS', 1, GetDate())
, ('RONDÔNIA', 'RO', 1, GetDate())
, ('RORAIMA', 'RR', 1, GetDate())
, ('SANTA CATARINA', 'SC', 1, GetDate())
, ('SÃO PAULO', 'SP', 1, GetDate())
, ('SERGIPE', 'SE', 1, GetDate())
, ('TOCANTINS', 'TO', 1, GetDate())


INSERT INTO	TB_Estado (nome, abreviatura, pais, dtcadastro) VALUES
  ('BUENOS AIRES', 'BA', 2, GetDate())
, ('CÓRDOBA', 'CB', 2, GetDate())
, ('SANTA FE', 'SF', 2, GetDate())
, ('MENDOZA', 'MZ', 2, GetDate())
, ('TUCUMÁN', 'TM', 2, GetDate())
, ('ENTRE RIOS', 'ER', 2, GetDate())
, ('SALTA', 'SA', 2, GetDate())
, ('CHACO', 'CC', 2, GetDate())
, ('CORRIENTES', 'CR', 2, GetDate())
, ('NUEQÉN', 'NQ', 2, GetDate())

INSERT INTO	TB_Estado (nome, abreviatura, pais, dtcadastro) VALUES
  ('MONTEVIDEO', 'MO', 4, GetDate())
, ('CANELONES', 'CA', 4, GetDate())
, ('MALDONADO', 'MA', 4, GetDate())
, ('COLONIA', 'CO', 4, GetDate())
, ('SALTO', 'SA', 4, GetDate())
, ('PAYSANDÚ', 'PA', 4, GetDate())
, ('RIVIERA', 'RI', 4, GetDate())
, ('ROCHA', 'RO', 4, GetDate())
, ('TACUAREMBÓ', 'TA', 4, GetDate())
, ('DURAZNO', 'DU', 4, GetDate())

--		lista de estados com seus respectivos países
--		nome_estado, sigla_estado, nome_pais, sigla_pais

SELECT TB_Estado.nome AS 'Nome do Estado'
     , TB_Estado.abreviatura AS 'Sigla do Estado'
     , TB_Pais.nome AS 'Nome do País'
	 , TB_Pais.abreviatura  AS 'Sigla do País'
FROM TB_Estado
INNER JOIN TB_Pais ON TB_Pais.codigo = TB_Estado.pais
ORDER BY TB_Pais.Nome,TB_Estado.nome

CREATE TABLE TB_Cidade (
	Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Cidade PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Abreviatura VARCHAR(50),
	Estado INTEGER NOT NULL 
	       CONSTRAINT FK_Cidade_01
		   FOREIGN KEY 
		   REFERENCES TB_Estado (Codigo),
    DtCadastro DATETIME,
	DtAlteracao DATETIME
);


SELECT * FROM TB_Estado WHERE Abreviatura IN ('PR','SC','SP','RJ', 'RS')


-- PARANÁ (PR)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('CURITIBA', 'CTBA', 16, GetDate())
, ('LONDRINA', 'LDA', 16, GetDate())
, ('MARINGÁ', 'MGA', 16, GetDate())
, ('FOZ DO IGUAÇU', 'FOZ', 16, GetDate());


-- SANTA CATARINA (SC)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('FLORIANÓPOLIS', 'FLN', 24, GetDate())
, ('JOINVILLE', 'JOI', 24, GetDate())
, ('BLUMENAU', 'BLU', 24, GetDate())
, ('CHAPECÓ', 'CHA', 24, GetDate());


-- SÃO PAULO (SP)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('SÃO PAULO', 'SP', 25, GetDate())
, ('CAMPINAS', 'CPQ', 25, GetDate())
, ('SANTOS', 'STS', 25, GetDate())
, ('RIBEIRÃO PRETO', 'RPO', 25, GetDate());


-- RIO DE JANEIRO (RJ)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('RIO DE JANEIRO', 'RIO', 19, GetDate())
, ('NITERÓI', 'NIT', 19, GetDate())
, ('PETRÓPOLIS', 'PET', 19, GetDate())
, ('CAMPOS DOS GOYTACAZES', 'CDG', 19, GetDate());


-- RIO GRANDE DO SUL (RS)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('PORTO ALEGRE', 'POA', 21, GetDate())
, ('CAXIAS DO SUL', 'CXS', 21, GetDate())
, ('PELOTAS', 'PEL', 21, GetDate())
, ('SANTA MARIA', 'SMA', 21, GetDate());

-- 
--
--
--
--
--
--

-- BUENOS AIRES (BA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('LA PLATA', 'LPT', 28, GetDate())
, ('MAR DEL PLATA', 'MDP', 28, GetDate())
, ('BAHÍA BLANCA', 'BBL', 28, GetDate())
, ('TANDIL', 'TDL', 28, GetDate());


-- CÓRDOBA (CB)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('CÓRDOBA', 'CBA', 29, GetDate())
, ('VILLA CARLOS PAZ', 'VCP', 29, GetDate())
, ('RÍO CUARTO', 'RCU', 29, GetDate())
, ('ALTA GRACIA', 'AGR', 29, GetDate());


-- SANTA FE (SF)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('ROSARIO', 'ROS', 30, GetDate())
, ('SANTA FE', 'STF', 30, GetDate())
, ('RAFAELA', 'RAF', 30, GetDate())
, ('VENADO TUERTO', 'VTT', 30, GetDate());


-- MENDOZA (MZ)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('MENDOZA', 'MDZ', 31, GetDate())
, ('SAN RAFAEL', 'SRF', 31, GetDate())
, ('GODOY CRUZ', 'GCR', 31, GetDate())
, ('LUJÁN DE CUYO', 'LDC', 31, GetDate());


-- TUCUMÁN (TM)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('SAN MIGUEL DE TUCUMÁN', 'SMT', 32, GetDate())
, ('TAFÍ VIEJO', 'TFV', 32, GetDate())
, ('YERBA BUENA', 'YBU', 32, GetDate())
, ('CONCEPCIÓN', 'CON', 32, GetDate());


-- ENTRE RIOS (ER)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('PARANÁ', 'PNA', 33, GetDate())
, ('CONCORDIA', 'CCD', 33, GetDate())
, ('GUALEGUAYCHÚ', 'GGU', 33, GetDate())
, ('CONCEPCIÓN DEL URUGUAY', 'CDU', 33, GetDate());


-- SALTA (SA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('SALTA', 'SLT', 34, GetDate())
, ('TARTAGAL', 'TTG', 34, GetDate())
, ('ORÁN', 'ORN', 34, GetDate())
, ('CAFAYATE', 'CFY', 34, GetDate());


-- CHACO (CC)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('RESISTENCIA', 'RES', 35, GetDate())
, ('SÁENZ PEÑA', 'SPN', 35, GetDate())
, ('VILLA ÁNGELA', 'VAN', 35, GetDate())
, ('BARRANQUERAS', 'BAR', 35, GetDate());


-- CORRIENTES (CR)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('CORRIENTES', 'COR', 36, GetDate())
, ('GOYA', 'GOY', 36, GetDate())
, ('PASO DE LOS LIBRES', 'PDL', 36, GetDate())
, ('MERCEDES', 'MER', 36, GetDate());


-- NUEQÉN (NQ)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('NEUQUÉN', 'NQN', 37, GetDate())
, ('SAN MARTÍN DE LOS ANDES', 'SMA', 37, GetDate())
, ('CUTRAL CÓ', 'CTC', 37, GetDate())
, ('ZAPALA', 'ZAP', 37, GetDate());

-- 
--
--
--
--
--
--


-- MONTEVIDEO (MO)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('MONTEVIDEO', 'MVD', 38, GetDate())
, ('SANTIAGO VÁZQUEZ', 'STV', 38, GetDate())
, ('PASO DE LA ARENA', 'PLA', 38, GetDate())
, ('COLÓN', 'COL', 38, GetDate());


-- CANELONES (CA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('LAS PIEDRAS', 'LPI', 39, GetDate())
, ('PANDO', 'PAN', 39, GetDate())
, ('CIUDAD DE LA COSTA', 'CLC', 39, GetDate())
, ('CANELONES', 'CAN', 39, GetDate());


-- MALDONADO (MA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('PUNTA DEL ESTE', 'PDE', 40, GetDate())
, ('MALDONADO', 'MAL', 40, GetDate())
, ('SAN CARLOS', 'SCA', 40, GetDate())
, ('PIRIÁPOLIS', 'PIR', 40, GetDate());


-- COLONIA (CO)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('COLONIA DEL SACRAMENTO', 'CDS', 41, GetDate())
, ('CARMELO', 'CAR', 41, GetDate())
, ('NUEVA HELVECIA', 'NHV', 41, GetDate())
, ('ROSARIO', 'ROS', 41, GetDate());


-- SALTO (SA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('SALTO', 'SLT', 42, GetDate())
, ('CONSTITUCIÓN', 'CON', 42, GetDate())
, ('BELÉN', 'BEL', 42, GetDate())
, ('DAYMÁN', 'DAY', 42, GetDate());


-- PAYSANDÚ (PA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('PAYSANDÚ', 'PAY', 43, GetDate())
, ('GUICHÓN', 'GUI', 43, GetDate())
, ('QUEBRACHO', 'QBR', 43, GetDate())
, ('PORVENIR', 'POR', 43, GetDate());


-- RIVIERA (RI)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('RIVERA', 'RIV', 44, GetDate())
, ('MINAS DE CORRALES', 'MDC', 44, GetDate())
, ('TRANQUERAS', 'TRQ', 44, GetDate())
, ('VICHADERO', 'VIC', 44, GetDate());


-- ROCHA (RO)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('ROCHA', 'ROC', 45, GetDate())
, ('CHUY', 'CHY', 45, GetDate())
, ('LA PALOMA', 'LPA', 45, GetDate())
, ('CASTILLOS', 'CAS', 45, GetDate());


-- TACUAREMBÓ (TA)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('TACUAREMBÓ', 'TAC', 46, GetDate())
, ('PASO DE LOS TOROS', 'PDT', 46, GetDate())
, ('SAN GREGORIO DE POLANCO', 'SGP', 46, GetDate())
, ('ANSINA', 'ANS', 46, GetDate());


-- DURAZNO (DU)
INSERT INTO TB_Cidade (Nome, Abreviatura, Estado, DtCadastro) VALUES
  ('DURAZNO', 'DUR', 47, GetDate())
, ('SARANDÍ DEL YÍ', 'SDY', 47, GetDate())
, ('CARLOS REYLES', 'CRY', 47, GetDate())
, ('CENTENARIO', 'CEN', 47, GetDate());



SELECT * FROM TB_Cidade

/*

 Nome     Abrev    Nome     Abrev   Nome   Abrev  
 Cidade   Cidade   Estado   Estado  Pais   Pais

 */


/*

	STORED PROCEDURE - MANUTENÇÃO DE PAÍSES

	@Acao -> 'C', 'U', 'D'

CREATE TABLE TB_Pais (
	Codigo INTEGER IDENTITY(1,1) CONSTRAINT PK_Pais PRIMARY KEY,
	Nome VARCHAR(150) NOT NULL,
	Abreviatura VARCHAR(50),
	DtCadastro DATETIME,
	DtAlteracao DATETIME
);
 */

 alter table TB_PAIS add DtAlteracao DateTime

 CREATE OR ALTER PROCEDURE SP_PAIS_EDITAR
 (
	@Acao CHAR(1),
	@Cd INTEGER = null,
	@Nm VARCHAR(150) = NULL, 
	@Abrev VARCHAR(150) = NULL
 )
 AS
 BEGIN
	SET NOCOUNT ON;

 	IF @Acao = 'C'
	BEGIN
		INSERT INTO TB_Pais (Nome, Abreviatura, DtCadastro)
		VALUES (@Nm, @Abrev, GETDATE());

		SELECT SCOPE_IDENTITY() AS PK_Pais;
	END

	ELSE IF @Acao = 'U'
	BEGIN
		UPDATE TB_Pais 
		SET
			Nome = @Nm,
			Abreviatura = @Abrev,
			DtAlteracao = GETDATE()
		WHERE
			Codigo = @Cd;

		SELECT @Cd AS PK_Pais;
	END

	ELSE IF @Acao = 'D'
	BEGIN
		DELETE FROM TB_Pais WHERE Codigo = @Cd;

		SELECT @Cd AS PK_Pais;
	END

	ELSE
	BEGIN
		RAISERROR('Ação inválida', 16, 1);
	END
 END;
 GO

--DELETE FROM TB_Pais WHERE Codigo > 5
SELECT * FROM TB_Pais

EXEC SP_PAIS_EDITAR 'C', 'BOLIVIA'
EXEC SP_PAIS_EDITAR @Abrev = 'VZ', @Acao = 'C', @Nm = 'VENEZUELA'
EXEC SP_PAIS_EDITAR 'U', 11, 'BOLÍVIA', 'BV' 
EXEC SP_PAIS_EDITAR 'D', 11 












