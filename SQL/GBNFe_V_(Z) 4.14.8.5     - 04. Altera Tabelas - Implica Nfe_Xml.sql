/*  GBNFe_V_(Z) 4.14.4.29 - 04.    Altera Tabelas - Implica Nfe_Xml.sql - By Edson Lima ; 29.04.2014 ; 16:08
    OBS: USAR SOMENTE SE A VERSÃO A SER ATUALIZADA FOR IGUAL OU SUPERIOR A VERSÃO 4.14.4.4
*/  

Use NFe

-- Indexação secundária de tabelas do nfe

 CREATE  INDEX [IX_nfe]   ON [dbo].[nfe]([demi], [situacao]) ON [PRIMARY]
GO
 CREATE  INDEX [IX_nfe_1] ON [dbo].[nfe]([serie]) ON [PRIMARY]
GO

-----------------

 CREATE  INDEX [IX_nfe_MDFe] ON [dbo].[nfe_MDFe]([cSitConf], [dEmi]) ON [PRIMARY]
GO

-----------------

 CREATE  INDEX [IX_nfe_itens] ON [dbo].[nfe_itens]([cfop]) ON [PRIMARY]
GO

-----------------------------------------------------------------------------

-- a. Inclusão de atributos

-- 1. Emitente
--- 1.1. Emitente.Certificado_NumSerie2    -    Inclusão da coluna Certificado_NumSerie2 como tipo varchar(100) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'Certificado_NumSerie2')
 begin
  Print 'Manutenção na Tabela Emitente...'

  Alter Table emitente
   add Certificado_NumSerie2 VarChar(100) null
  Print '   Certificado_NumSerie2... Coluna Criada!'
 end
GO

-----------------------------------------------------------------------------

-- 2. NFe_Xml
Print 'Manutenção na Tabela NFe_Xml...'

--- 2.1. NFe_Xml.Nota5    -    Inclusão da coluna xml_nota5 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota5')
 begin
  Alter Table nfe_xml
   add xml_nota5 Text null
  Print '   xml_nota5... Coluna Criada!'
 end
GO

--- 2.2. NFe_Xml.Nota6    -    Inclusão da coluna xml_nota6 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota6')
 begin
  Alter Table nfe_xml
   add xml_nota6 Text null
  Print '   xml_nota6... Coluna Criada!'
 end
GO

--- 2.3. NFe_Xml.Nota7    -    Inclusão da coluna xml_nota7 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota7')
 begin
  Alter Table nfe_xml
   add xml_nota7 Text null
  Print '   xml_nota7... Coluna Criada!'
 end
GO

--- 2.4. NFe_Xml.Nota8    -    Inclusão da coluna xml_nota8 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota8')
 begin
  Alter Table nfe_xml
   add xml_nota8 Text null
  Print '   xml_nota8... Coluna Criada!'
 end
GO

---------------------------------------------------------------------------------------------------

-- 3. Table - tabela de manifestação do destinatário
Print 'Criação da Tabela nfe_MDFe...'

-- 3.1. nfe_MDFe

/****** Object:  Table [dbo].[nfe_MDFe]    Script Date: 15/05/2014 09:25:48 ******/
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_MDFe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 BEGIN

  /****** Object:  Table [dbo].[nfe_MDFe]    Script Date: 15/05/2014 09:25:48 ******/
  CREATE TABLE		[dbo].[nfe_MDFe] (
			[Xml_Aut]	[char]		(1)	COLLATE Latin1_General_CI_AS	NOT NULL ,
			[Xml_Bai]	[char]          (1)	COLLATE Latin1_General_CI_AS	NOT NULL ,
			[idLote]	[bigint] IDENTITY (1, 1) 				NOT NULL ,
			[Codigo_loja]	[int]							NOT NULL ,
			[Chave_nfe]	[varchar]	(50)	COLLATE Latin1_General_CI_AS	NOT NULL ,
			[Evento]	[char]		(2)	COLLATE Latin1_General_CI_AS	NOT NULL ,
			[Ver_leiaute]	[varchar]	(30)	COLLATE Latin1_General_CI_AS	NULL ,
			[id]		[varchar]	(60)	COLLATE Latin1_General_CI_AS	NULL ,
			[cOrgao]	[char]		(2)	COLLATE Latin1_General_CI_AS	NULL ,
			[dhEvento]	[varchar]	(25)	COLLATE Latin1_General_CI_AS	NULL ,
			[tpEvento]	[char]		(6)	COLLATE Latin1_General_CI_AS	NULL ,
			[nSeqEvento]	[int]							NULL ,
			[verEvento]	[char]		(10)	COLLATE Latin1_General_CI_AS	NULL ,
			[desEvento]	[varchar]	(60)	COLLATE Latin1_General_CI_AS	NULL ,
			[xJust]		[varchar]	(255)	COLLATE Latin1_General_CI_AS	NULL ,
			[cStat]		[char]		(3)	COLLATE Latin1_General_CI_AS	NULL ,
			[xMotivo]	[varchar]	(255)	COLLATE Latin1_General_CI_AS	NULL ,
			[dhRegEvento]	[varchar]	(25)	COLLATE Latin1_General_CI_AS	NULL ,
			[nProt]		[varchar]	(15)	COLLATE Latin1_General_CI_AS	NULL ,
			[NSU]		[varchar]	(15)	COLLATE Latin1_General_CI_AS	NULL ,
			[xNome]		[varchar]	(60)	COLLATE Latin1_General_CI_AS	NULL , 
			[cnpj_cpf]	[varchar]	(14)	COLLATE Latin1_General_CI_AS	NULL ,
			[IE]		[varchar]	(14)	COLLATE Latin1_General_CI_AS	NULL ,
			[dEmi]		[datetime]						NULL ,
			[tpNF]		[smallint]						NULL ,
			[vNF]		[decimal]	(15, 2)					NULL ,
			[digVal]	[varchar]	(28)	COLLATE Latin1_General_CI_AS	NULL ,
			[dhRecbto]	[varchar]	(25)	COLLATE Latin1_General_CI_AS	NULL ,
			[cSitNFe]	[int]							NULL ,
			[cSitConf]	[int]							NULL
  ) ON [PRIMARY]

  ALTER TABLE [dbo].[nfe_MDFe] WITH NOCHECK ADD 
	CONSTRAINT [DF_nfe_MDFe_Xml_Aut] DEFAULT ('0') FOR [Xml_Aut]

  ALTER TABLE [dbo].[nfe_MDFe] WITH NOCHECK ADD 
	CONSTRAINT [DF_nfe_MDFe_Xml_Bai] DEFAULT ('0') FOR [Xml_Bai]

  ALTER TABLE [dbo].[nfe_MDFe] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_MDFe] PRIMARY KEY  CLUSTERED 
		(
			[codigo_loja],
			[Chave_nfe],
			[Evento]
		)  ON [PRIMARY] 

  Print '   nfe_MDFe... Tabela Criada!'
 END
GO

-----------------------------------------------------------------------------------------------------

-- 4. Table - nfe_referenciada_mod1
Print 'Manutenção da Tabela nfe_referenciada_mod1...'

--- 4.1. chave_nfe    -    Inclusão da coluna chave_nfe como tipo varchar(50) 
if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_mod1' and C.name = 'chave_nfe')
 begin
  Alter Table nfe_referenciada_mod1
   add chave_nfe varchar(50) null
  Print '   chave_nfe... Coluna Criada!'
 end
GO

--- 4.2. modelo    -    Alteração da coluna modelo para tipo char(2) 
if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_mod1' and C.name = 'modelo')
 begin
  Alter Table nfe_referenciada_mod1
   Alter Column  modelo char(2) null
  Print '   modelo... Coluna Alterada !'
 end
GO

--- 4.3. serie    -    Alteração da coluna serie para tipo char(3) 
if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_mod1' and C.name = 'serie')
 begin
  Alter Table nfe_referenciada_mod1
   Alter Column  serie char(3) null
  Print '   serie... Coluna Alterada !'
 end
GO

-----------------------------------------------------------------------------------------------------

-- 4a. Table - nfe_referenciada_prural
Print 'Manutenção da Tabela nfe_referenciada_prural...'

--- 4a.1. modelo    -    Alteração da coluna modelo para tipo char(2) 
if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_prural' and C.name = 'modelo')
 begin
  Alter Table nfe_referenciada_prural
   Alter Column  modelo char(2) null
  Print '   modelo... Coluna Alterada !'
 end
GO

--- 4a.2. serie    -    Alteração da coluna serie para tipo char(3) 
if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_prural' and C.name = 'serie')
 begin
  Alter Table nfe_referenciada_prural
   Alter Column  serie char(3) null
  Print '   serie... Coluna Alterada !'
 end
GO


------------------------------------------------------------------------------------------------------

/*
  Script para criar tabelas que serão utilizadas na importação do XML ; By Renildo ; 20.05.2014 ; 10:12
*/

-- 5. NFeE	- Nota fiscal de Entradas
Print 'Operação de backup nas Tabelas NFeE_Fat, NFeE_Ite, NFeE_Mov...'

/*-----------------------------------------------------------------------------------------------------
   Script para salvar a tabela NFeE_Ite para a NFe_Ite_Old ; By Edson ; 31.03.2015 ; 14:42
-----------------------------------------------------------------------------------------------------*/
if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Ite_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 BEGIN

  Select * into NFeE_Fat_Old from NFeE_Fat
    Print '   NFeE_Fat_Old... Backup efetuado!'
  Select * into NFeE_Ite_Old from NFeE_Ite
    Print '   NFeE_Ite_Old... Backup efetuado!'
  Select * into NFeE_Mov_Old from NFeE_Mov
    Print '   NFeE_Mov_Old... Backup efetuado!'

  Drop Table NFeE_Fat
    Print '   NFeE_Fat... Tabela Excluida!'
  Drop Table NFeE_Ite
    Print '   NFeE_Ite... Tabela Excluida!'
  Drop Table NFeE_Mov
    Print '   NFeE_Mov... Tabela Excluida!'

 END
GO

/*-----------------------------------------------------------------------------------------------------
  Script para criar tabelas que serão utilizadas na importação do XML	; By Renildo ; 20.05.2014 ; 10:12
	5.1.	Tabela NFeE_Fat ; By Edson ; 20.05.2014 ; 10:55
-----------------------------------------------------------------------------------------------------*/
Print 'Criando Tabelas NFeE_Fat, NFeE_Ite, NFeE_Mov...'

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Fat]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 BEGIN
	CREATE TABLE	[dbo].[NFeE_Fat] (
			[CodEmp]	[int]			NOT NULL ,
			[CnpjEmt]	[varchar]	(18)	NOT NULL ,
			[InsEstEmt]	[varchar]	(25)	NOT NULL ,
			[CodNot]	[int]			NOT NULL ,
			[Modelo]	[char]		(2)	NOT NULL ,
			[Serie]		[char]		(3)	NOT NULL ,
			[CodFat]	[varchar]	(15)	NOT NULL ,
			[DatFat]	[datetime]		NOT NULL ,
			[ValFat]	[decimal]	(12, 2)	NOT NULL 
	) ON [PRIMARY]

	ALTER TABLE [dbo].[NFeE_Fat] WITH NOCHECK ADD 
		CONSTRAINT [PK_NFeE_Fat] PRIMARY KEY  CLUSTERED 
		(
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie],
			[CodFat]
		)  ON [PRIMARY] 

  Print '   NFeE_Fat... Tabela Criada!'
 END

GO

/*-----------------------------------------------------------------------------------------------------
  Script para criar tabelas que serão utilizadas na importação do XML	; By Renildo ; 20.05.2014 ; 10:12
	5.2.	Tabela NFeE_Ite ; By Edson ; 20.05.2014 ; 11:00
-----------------------------------------------------------------------------------------------------*/

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Ite]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 BEGIN
	CREATE TABLE	[dbo].[NFeE_Ite] (
			[CodEmp]	[int]			NOT NULL ,
			[CnpjEmt]	[varchar]	(18)	NOT NULL ,
			[InsEstEmt]	[varchar]	(25)	NOT NULL ,
			[CodNot]	[int]			NOT NULL ,
			[Modelo]	[char]		(2)	NOT NULL ,
			[Serie]		[char]		(3)	NOT NULL ,
			[CodPro]	[varchar]	(60)	NOT NULL ,
			[SeqIte]	[int]			NOT NULL ,    
			[NomPro]	[varchar]	(100)	NULL ,
			[CodNCM]	[varchar]	(8)	NULL ,
			[SitTri]	[char]		(4)	NULL ,
			[CodCfo]	[char]		(4)	NULL ,
			[Unidade]	[varchar]	(6)	NULL ,
			[EAN13]		[varchar]	(13)	NULL ,
			[cEAN]		[varchar]	(13)	NULL ,
			[QtdPro]	[decimal]	(12, 3)	NULL ,
			[ValPro]	[decimal]	(12, 6)	NULL ,
			[ValDes]	[decimal]	(12, 2)	NULL ,
			[ValTot]	[decimal]	(12, 2)	NULL ,
			[BasIcm]	[decimal]	(12, 2)	NULL ,
			[AlqIcm]	[decimal]	(5, 2)	NULL ,
			[ValIcm]	[decimal]	(12, 2)	NULL ,
			[BasIpi]	[decimal]	(12, 2)	NULL ,
			[AlqIpi]	[decimal]	(5, 2)	NULL ,
			[ValIpi]	[decimal]	(12, 2)	NULL ,
			[BasSbt]	[decimal]	(12, 2)	NULL ,
			[ValSbt]	[decimal]	(12, 2)	NULL ,
			[ValSeg]	[decimal]	(12, 2)	NULL ,
			[ValFre]	[decimal]	(12, 2)	NULL ,
			[ValOut]	[decimal]	(12, 2)	NULL ,
			[ValPis]	[decimal]	(12, 2)	NULL ,
			[ValCfs]	[decimal]	(12, 2)	NULL 
	) ON [PRIMARY]

	ALTER TABLE [dbo].[NFeE_Ite] WITH NOCHECK ADD 
		CONSTRAINT [PK_NFeE_Ite] PRIMARY KEY  CLUSTERED 
		(
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie],
			[CodPro],
			[SeqIte]          
		)  ON [PRIMARY] 

  Print '   NFeE_Ite... Tabela Criada!'
 END

GO

/*-----------------------------------------------------------------------------------------------------
  Script para criar tabelas que serão utilizadas na importação do XML	; By Renildo ; 20.05.2014 ; 10:12
	5.3.	Tabela NFeE_Mov ; By Edson ; 20.05.2014 ; 11:10
-----------------------------------------------------------------------------------------------------*/

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Mov]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 BEGIN
	CREATE TABLE [dbo].[NFeE_Mov] (
			[CodEmp]	[int]			NOT NULL ,
			[CnpjEmt]	[varchar]	(18)	NOT NULL ,
			[InsEstEmt]	[varchar]	(25)	NOT NULL ,
			[CodNot]	[int]			NOT NULL ,
			[Modelo]	[char]		(2)	NOT NULL ,
			[Serie]		[char]		(3)	NOT NULL ,
			[SubSerie]	[char]		(2)	NULL ,
			[DatNot]	[datetime]		NULL ,
			[BasIcm]	[float]			NULL ,
			[ValIcm]	[float]			NULL ,
			[BasSbt]	[float]			NULL ,
			[ValSbt]	[float]			NULL ,
			[ValPro]	[float]			NULL ,
			[ValFre]	[float]			NULL ,
			[TipFre]	[char]		(1)	NULL ,
			[ValSeg]	[float]			NULL ,
			[ValDes]	[float]			NULL ,
			[ValOut]	[float]			NULL ,
			[BasIpi]	[float]			NULL ,
			[ValIpi]	[float]			NULL ,
			[ValPis]	[decimal]	(12, 2)	NULL ,
			[ValCfs]	[decimal]	(12, 2)	NULL ,
			[ValNot]	[float]			NULL ,
			[NtrOpr]	[varchar]	(75)	NULL ,
			[ForPag]	[varchar]	(50)	NULL ,
			[ChvNfe]	[varchar]	(44)	NULL ,
			[ObsMov]	[varchar]	(250)	NULL ,
			[CnpjTrp]	[varchar]	(18)	NULL ,
			[InsEstTrp]	[varchar]	(25)	NULL ,
			[NomeTrp]	[varchar]	(75)	NULL ,
			[NomFanTrp]	[varchar]	(50)	NULL ,
			[EnderecoTrp]	[varchar]	(75)	NULL ,
			[SetorTrp]	[varchar]	(50)	NULL ,
			[CidadeTrp]	[varchar]	(50)	NULL ,
			[UFTrp]		[varchar]	(2)	NULL ,
			[IBGETrp]	[varchar]	(8)	NULL ,
			[CepTrp]	[varchar]	(9)	NULL ,
			[PlacaVei]	[varchar]	(8)	NULL ,
			[UFVei]		[varchar]	(2)	NULL ,
			[CnpjDst]	[varchar]	(18)	NULL ,
			[InsEstDst]	[varchar]	(25)	NULL ,
			[PosMov]	[char]		(1)	NOT NULL ,
			[InsEstSbtEmt]	[varchar]	(18)	NULL ,
			[NomEmt]	[varchar]	(75)	NULL ,
			[NomFanEmt]	[varchar]	(50)	NULL ,
			[EnderecoEmt]	[varchar]	(75)	NULL ,
			[SetorEmt]	[varchar]	(50)	NULL ,
			[CidadeEmt]	[varchar]	(50)	NULL ,
			[UFEmt]		[varchar]	(2)	NULL ,
			[IBGEEmt]	[varchar]	(8)	NULL ,
			[CepEmt]	[varchar]	(9)	NULL ,
			[FoneEmt]	[varchar]	(25)	NULL ,
			[EmailEmt]	[varchar]	(100)	NULL ,
			[Status]	[char]		(3)	NULL 
	) ON [PRIMARY]

	ALTER TABLE [dbo].[NFeE_Mov] WITH NOCHECK ADD 
		CONSTRAINT [PK_NFeE_Mov] PRIMARY KEY  CLUSTERED 
		(
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie]
		)  ON [PRIMARY] 

	/*---------------------*/

	ALTER TABLE [dbo].[NFeE_Mov] WITH NOCHECK ADD 
		CONSTRAINT [DF_NFeE_Mov_PosMov] DEFAULT ('P') FOR [PosMov]

	ALTER TABLE [dbo].[NFeE_Fat] ADD 
		CONSTRAINT [FK_NFeE_Fat_NFeE_Mov] FOREIGN KEY 
		(
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie]
		) REFERENCES [dbo].[NFeE_Mov] (
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie]
		) ON DELETE CASCADE 


	ALTER TABLE [dbo].[NFeE_Ite] ADD 
		CONSTRAINT [FK_NFeE_Ite_NFeE_Mov] FOREIGN KEY 
		(
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie]
		) REFERENCES [dbo].[NFeE_Mov] (
			[CodEmp],
			[CnpjEmt],
			[InsEstEmt],
			[CodNot],
			[Modelo],
			[Serie]
		) ON DELETE CASCADE 

  Print '   NFeE_Mov... Tabela Criada!'
 END

GO

-----------------------------------------------------------------------------

-- 5. NFeE_Ite
--- 5.4. NFeE_Ite.SitTri    -    Alteração da coluna SitTri do tipo char(3) null  p/ char(4)
Print 'Manutenção nas Tabelas NFeE_Fat, NFeE_Ite, NFeE_Mov...'

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'SitTri')
 begin
  Alter Table NFeE_Ite
   Alter Column  SitTri VarChar(4) null
  Print '   SitTri... Coluna Alterada !'
 end
GO

--+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--- 5.5. NFeE_Ite.SeqIte    -    Inclusão da coluna SeqIte do tipo int not null

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'SeqIte')
 begin
  Alter Table NFeE_Ite
   add SeqIte int null
  Print '   SeqIte... Coluna Criada !'
 end
GO
 
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

--- 5.6. NFeE_Mov.Status    -    Inclusão da coluna Status do tipo char(3) null

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Mov' and C.name = 'Status')
 begin
  Alter Table NFeE_Mov
   add Status Char(3) null
  Print '   Status... Coluna Criada !'
 end
GO


-----------------------------------------------------------------------------

-- 6. NFe_Itens
--- 6.1. NFe_Itens.Inf_Adicional    -    Alteração da coluna Inf_Adicional como tipo varchar(120) null  p/ varchar(500)
Print 'Manutenção na Tabela NFe_Itens...'


if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'Inf_Adicional')
 begin
  Alter Table NFe_Itens
   Alter Column  Inf_Adicional VarChar(500) null
  Print 'Inf_Adicional... Coluna Alterada !'
 end
GO

--- 6.2. NFe_Itens.xPed    -    Inclusão da coluna xPed como tipo varchar(15) null
if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'xPed')
 begin
  Alter Table NFe_Itens
   add xPed VarChar(15) null
  Print 'xPed... Coluna Criada!'
 end
GO

--- 6.3. NFe_Itens.nItemPed    -    Inclusão da coluna nItemPed como tipo varchar(6) null
if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'nItemPed')
 begin
  Alter Table NFe_Itens
   add nItemPed VarChar(6) null
  Print 'nItemPed... Coluna Criada!'
 end
GO

--- 6.4. nfe_itens.pr_unitario

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_itens' and C.name = 'pr_unitario')
 begin
  Alter Table nfe_itens
   Alter Column pr_unitario Numeric(21,10) Null
  Print 'nfe_itens.pr_unitario... Alterado!'
 end
GO

-----------------------------------------------------------------------------

-- 8. Destinatario
--- 8.1. Destinatario.IndIE    -    Inclusão da coluna IndIE como tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'IndIE')
 begin
  Print 'Manutenção na Tabela Destinatário...'

  Alter Table destinatario
   add IndIE Char(1) null
  Print '   IndIE... Coluna Criada!'
 end
GO

-----------------------------------------------------------------------------

-- b. Remoção de Atributo

-- c. Atualização de Conteudo

-- by Edson Lima - 2014-12-19T1117
-- Rodar esta rotina somente nas atualizações 
--- 7 nfe_MDFe.cSitNFe    -    Altera os dados da nfe de manifesto para as colunas denegadas e canceladas
Print 'Operação na Tabela nfe_MDFe...'

--- 7.1. NFe_Itens.xPed    -    Inclusão da coluna xPed como tipo varchar(15) null
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_MDFe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  update nfe_MDFe set cSitConf = 5
  WHERE     (cSitNFe = '2') and (cSitConf < 1) 
  Print '   cSitConf... A Coluna Denegadas Atualizada!'
 end
go

--- 7.1. NFe_Itens.xPed    -    Inclusão da coluna xPed como tipo varchar(15) null
if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_MDFe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  update nfe_MDFe set cSitConf = 6
  WHERE     (cSitNFe = '3') and (cSitConf < 1) 
  Print '   cSitConf... A Coluna Canceladas foi Atualizada!'
 end
go



--UpDate MovDspV
-- Set CodVeiCvl = CodVei
--  Where
--   IsNull( CodVeiCvl, '' ) = ''



-- d. Alteração de Atributo

-- e. Remoção de Conteudo

-- f. Inclusao de Conteudo

-- g. Exclusao de Objeto

-- h. Inclusão de Objeto

--- 1. Table

--- 2. Triggers

--- 3. ForeignKey

--- 4. Functions

--- 5. Procedures
