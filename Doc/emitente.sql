/*
   quinta-feira, 20 de setembro de 2012 16:14:41
   User: 
   Server: (LOCAL)
   Database: NFe
   Application: MS SQLEM - Data Tools
*/

BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
CREATE TABLE dbo.Tmp_emitente
	(
	codigo_loja int NOT NULL,
	razao_social varchar(60) NOT NULL,
	nome_fantasia varchar(60) NULL,
	endereco varchar(60) NULL,
	complemento varchar(60) NULL,
	numero varchar(6) NULL,
	bairro varchar(60) NULL,
	cep char(8) NULL,
	codigo_municipio char(7) NULL,
	municipio varchar(60) NULL,
	codigo_uf char(2) NULL,
	uf char(2) NULL,
	fone char(10) NULL,
	cnpj char(14) NULL,
	insc_estadual varchar(14) NULL,
	insc_estadual_subs varchar(14) NULL,
	suframa char(9) NULL,
	codigo_pais varchar(5) NULL,
	nome_pais varchar(50) NULL,
	regime_tributario int NULL,
	Certificado_NumSerie varchar(100) NULL,
	DANFE_QtdCopias int NULL,
	DANFE_Orientacao int NULL,
	DANFE_Visualiza char(1) NULL,
	DANFE_LogoMarca varchar(250) NULL,
	DANFE_LocSRV int NULL,
	DANFE_CAMSRV varchar(250) NULL,
	Web_Ambiente int NULL,
	Web_Visualizar char(1) NULL,
	Proxy_Host varchar(100) NULL,
	Proxy_Porta varchar(10) NULL,
	Proxy_User varchar(100) NULL,
	Proxy_Pass varchar(30) NULL,
	Email_NEeMAIL varchar(100) NULL,
	Email_Host varchar(100) NULL,
	Email_Port varchar(10) NULL,
	Email_User varchar(100) NULL,
	Email_Pass varchar(30) NULL,
	Email_SSL char(1) NULL,
	Email_Assunto varchar(150) NULL,
	Email_Assunto_Canc varchar(150) NULL,
	Email_CC varchar(1000) NULL,
	Email_Mensagem text NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
IF EXISTS(SELECT * FROM dbo.emitente)
	 EXEC('INSERT INTO dbo.Tmp_emitente (codigo_loja, razao_social, nome_fantasia, endereco, complemento, numero, bairro, cep, codigo_municipio, municipio, codigo_uf, uf, fone, cnpj, insc_estadual, insc_estadual_subs, suframa, codigo_pais, nome_pais, regime_tributario, Certificado_NumSerie, DANFE_QtdCopias, DANFE_Orientacao, DANFE_Visualiza)
		SELECT codigo_loja, razao_social, nome_fantasia, endereco, complemento, numero, bairro, cep, codigo_municipio, municipio, codigo_uf, uf, fone, cnpj, insc_estadual, insc_estadual_subs, suframa, codigo_pais, nome_pais, regime_tributario, Certificado_NumSerie, DANFE_QtdCopias, DANFE_Orientacao, CONVERT(char(1), DANFE_Visualiza) FROM dbo.emitente TABLOCKX')
GO
DROP TABLE dbo.emitente
GO
EXECUTE sp_rename N'dbo.Tmp_emitente', N'emitente', 'OBJECT'
GO
ALTER TABLE dbo.emitente ADD CONSTRAINT
	PK_emitente PRIMARY KEY CLUSTERED 
	(
	codigo_loja
	) ON [PRIMARY]

GO
COMMIT
