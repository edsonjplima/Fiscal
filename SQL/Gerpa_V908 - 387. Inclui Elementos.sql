/*
  Script para Atualização da Versão 9.0.9 - Release 387, no Software Gerpa
  By Renildo ; 21.06.2018 ; 10:17
*/

Use NFe

-- a. Inclusão de atributos

-- b. Alteração de Atributo

-- c. Remoção de Atributo

-- d. Atualização de Conteudo

-- e. Remoção de Conteudo

-- f. Exclusao de Objeto

-- g. Inclusão de Objeto

--- 1. Table

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Lot]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Lot]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_Lotes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_Lotes]
GO

CREATE TABLE [dbo].[NFeE_Lot] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18)  NOT NULL ,
	[InsEstEmt] [varchar] (25)  NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2)  NOT NULL ,
	[Serie] [char] (3)  NOT NULL ,
	[CodPro] [varchar] (60)  NOT NULL ,
	[SeqIte] [int] NOT NULL ,
	[CodLot] [varchar] (25)  NOT NULL ,
	[QtdPro] [decimal](12, 3) NOT NULL ,
	[DatFab] [datetime] NOT NULL ,
	[DatVld] [datetime] NOT NULL ,
	[cAgreg] [varchar] (20)  NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_Lotes] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[Modelo] [char] (2)  NOT NULL ,
	[serie] [char] (3)  NOT NULL ,
	[codigo_item] [varchar] (60)  NOT NULL ,
	[CodFor] [int] NOT NULL ,
	[nLote] [varchar] (20)  NOT NULL ,
	[qLote] [numeric](12, 3) NOT NULL ,
	[dFab] [datetime] NOT NULL ,
	[dVal] [datetime] NOT NULL ,
	[cAgreg] [varchar] (20)  NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[NFeE_Lot] WITH NOCHECK ADD 
	CONSTRAINT [PK_NFeE_Lot] PRIMARY KEY  CLUSTERED 
	(
		[CodEmp],
		[CnpjEmt],
		[InsEstEmt],
		[CodNot],
		[Modelo],
		[Serie],
		[CodPro],
		[SeqIte],
		[CodLot]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_Lotes] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_Lotes] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[serie],
		[codigo_item],
		[CodFor],
		[nLote]
	)  ON [PRIMARY] 
GO

--- 2. Triggers

--- 3. ForeignKey

--- 4. Functions

--- 5. Procedures

