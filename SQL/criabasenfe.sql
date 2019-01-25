IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name = N'NFe_Tacaja')
	DROP DATABASE [NFe_Tacaja]
GO

CREATE DATABASE [NFe_Tacaja]  ON (NAME = N'NFe_Data', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL\data\NFe_Tacaja_Data.MDF' , SIZE = 872, FILEGROWTH = 10%) LOG ON (NAME = N'NFe_Log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL\data\NFe_Tacaja_Log.LDF' , SIZE = 2110, FILEGROWTH = 10%)
 COLLATE Latin1_General_CI_AS
GO

exec sp_dboption N'NFe_Tacaja', N'autoclose', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'bulkcopy', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'trunc. log', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'torn page detection', N'true'
GO

exec sp_dboption N'NFe_Tacaja', N'read only', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'dbo use', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'single', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'autoshrink', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'ANSI null default', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'recursive triggers', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'ANSI nulls', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'concat null yields null', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'cursor close on commit', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'default to local cursor', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'quoted identifier', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'ANSI warnings', N'false'
GO

exec sp_dboption N'NFe_Tacaja', N'auto create statistics', N'true'
GO

exec sp_dboption N'NFe_Tacaja', N'auto update statistics', N'true'
GO

use [NFe_Tacaja]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NFeE_Fat_NFeE_Mov]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NFeE_Fat] DROP CONSTRAINT FK_NFeE_Fat_NFeE_Mov
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[FK_NFeE_Ite_NFeE_Mov]') and OBJECTPROPERTY(id, N'IsForeignKey') = 1)
ALTER TABLE [dbo].[NFeE_Ite] DROP CONSTRAINT FK_NFeE_Ite_NFeE_Mov
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[fn_data]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[fn_data]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[formatarCNPJ]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[formatarCNPJ]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[formatarCPF]') and xtype in (N'FN', N'IF', N'TF'))
drop function [dbo].[formatarCPF]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[s_le_arquivo_texto]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[s_le_arquivo_texto]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_bkp]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_bkp]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_calcula_digito_chave]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_calcula_digito_chave]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_consulta_nfe]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_consulta_nfe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_exclui_nfe]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_exclui_nfe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_importa_nfe]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_importa_nfe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_insere_notas_inutilizadas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_insere_notas_inutilizadas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_le_nfe]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_le_nfe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_ler_nfe_textos]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_ler_nfe_textos]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_a_serem_geradas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_a_serem_geradas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_canceladas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_canceladas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_denegadas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_denegadas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_em_contingencia]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_em_contingencia]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_inutilizadas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_inutilizadas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_nfe_transmitidas]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_nfe_transmitidas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Fat]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Fat]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Fat_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Fat_Old]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Ite]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Ite]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Ite_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Ite_Old]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Mov]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Mov]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Mov_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFeE_Mov_Old]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFe_CCe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[NFe_CCe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[critica_importacao]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[critica_importacao]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[destinatario]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[destinatario]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[emitente]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[emitente]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_MDFe]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_MDFe]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_duplicatas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_duplicatas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_faturas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_faturas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_informacoes]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_informacoes]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_itens]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_itens]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_itens_DI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_itens_DI]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_itens_DI_ADI]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_itens_DI_ADI]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_cupon]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_referenciada_cupon]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_mod1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_referenciada_mod1]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_prural]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_referenciada_prural]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_veiculo]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_veiculo]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_volume]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_volume]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_xml]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[nfe_xml]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[notas_inutilizadas]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[notas_inutilizadas]
GO

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[transportadora]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[transportadora]
GO

exec sp_addsrvrolemember N'BUILTIN\Administradores', sysadmin
GO

CREATE TABLE [dbo].[NFeE_Fat] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodFat] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL ,
	[DatFat] [datetime] NOT NULL ,
	[ValFat] [decimal](12, 2) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFeE_Fat_Old] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodFat] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL ,
	[DatFat] [datetime] NOT NULL ,
	[ValFat] [decimal](12, 2) NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFeE_Ite] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodPro] [varchar] (60) COLLATE Latin1_General_CI_AS NOT NULL ,
	[SeqIte] [int] NOT NULL ,
	[NomPro] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[CodNCM] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[SitTri] [varchar] (4) COLLATE Latin1_General_CI_AS NULL ,
	[CodCfo] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Unidade] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[EAN13] [varchar] (13) COLLATE Latin1_General_CI_AS NULL ,
	[cEAN] [varchar] (13) COLLATE Latin1_General_CI_AS NULL ,
	[QtdPro] [decimal](12, 3) NULL ,
	[ValPro] [decimal](12, 6) NULL ,
	[ValDes] [decimal](12, 2) NULL ,
	[ValTot] [decimal](12, 2) NULL ,
	[BasIcm] [decimal](12, 2) NULL ,
	[AlqIcm] [decimal](5, 2) NULL ,
	[ValIcm] [decimal](12, 2) NULL ,
	[BasIpi] [decimal](12, 2) NULL ,
	[AlqIpi] [decimal](5, 2) NULL ,
	[ValIpi] [decimal](12, 2) NULL ,
	[BasSbt] [decimal](12, 2) NULL ,
	[ValSbt] [decimal](12, 2) NULL ,
	[ValSeg] [decimal](12, 2) NULL ,
	[ValFre] [decimal](12, 2) NULL ,
	[ValOut] [decimal](12, 2) NULL ,
	[ValPis] [decimal](12, 2) NULL ,
	[ValCfs] [decimal](12, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFeE_Ite_Old] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodPro] [varchar] (60) COLLATE Latin1_General_CI_AS NOT NULL ,
	[NomPro] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[CodNCM] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[SitTri] [varchar] (4) COLLATE Latin1_General_CI_AS NULL ,
	[CodCfo] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[Unidade] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[EAN13] [varchar] (13) COLLATE Latin1_General_CI_AS NULL ,
	[cEAN] [varchar] (13) COLLATE Latin1_General_CI_AS NULL ,
	[QtdPro] [decimal](12, 3) NULL ,
	[ValPro] [decimal](12, 6) NULL ,
	[ValDes] [decimal](12, 2) NULL ,
	[ValTot] [decimal](12, 2) NULL ,
	[BasIcm] [decimal](12, 2) NULL ,
	[AlqIcm] [decimal](5, 2) NULL ,
	[ValIcm] [decimal](12, 2) NULL ,
	[BasIpi] [decimal](12, 2) NULL ,
	[AlqIpi] [decimal](5, 2) NULL ,
	[ValIpi] [decimal](12, 2) NULL ,
	[BasSbt] [decimal](12, 2) NULL ,
	[ValSbt] [decimal](12, 2) NULL ,
	[ValSeg] [decimal](12, 2) NULL ,
	[ValFre] [decimal](12, 2) NULL ,
	[ValOut] [decimal](12, 2) NULL ,
	[ValPis] [decimal](12, 2) NULL ,
	[ValCfs] [decimal](12, 2) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFeE_Mov] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[SubSerie] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[DatNot] [datetime] NULL ,
	[BasIcm] [float] NULL ,
	[ValIcm] [float] NULL ,
	[BasSbt] [float] NULL ,
	[ValSbt] [float] NULL ,
	[ValPro] [float] NULL ,
	[ValFre] [float] NULL ,
	[TipFre] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[ValSeg] [float] NULL ,
	[ValDes] [float] NULL ,
	[ValOut] [float] NULL ,
	[BasIpi] [float] NULL ,
	[ValIpi] [float] NULL ,
	[ValPis] [decimal](12, 2) NULL ,
	[ValCfs] [decimal](12, 2) NULL ,
	[ValNot] [float] NULL ,
	[NtrOpr] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[ForPag] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[ChvNfe] [varchar] (44) COLLATE Latin1_General_CI_AS NULL ,
	[ObsMov] [varchar] (250) COLLATE Latin1_General_CI_AS NULL ,
	[CnpjTrp] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[InsEstTrp] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[NomeTrp] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[NomFanTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[EnderecoTrp] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[SetorTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[CidadeTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[UFTrp] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[IBGETrp] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[CepTrp] [varchar] (9) COLLATE Latin1_General_CI_AS NULL ,
	[PlacaVei] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[UFVei] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[CnpjDst] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[InsEstDst] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[PosMov] [char] (1) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstSbtEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[NomEmt] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[NomFanEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[EnderecoEmt] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[SetorEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[CidadeEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[UFEmt] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[IBGEEmt] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[CepEmt] [varchar] (9) COLLATE Latin1_General_CI_AS NULL ,
	[FoneEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[EmailEmt] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Status] [char] (3) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFeE_Mov_Old] (
	[CodEmp] [int] NOT NULL ,
	[CnpjEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CodNot] [int] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[SubSerie] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[DatNot] [datetime] NULL ,
	[BasIcm] [float] NULL ,
	[ValIcm] [float] NULL ,
	[BasSbt] [float] NULL ,
	[ValSbt] [float] NULL ,
	[ValPro] [float] NULL ,
	[ValFre] [float] NULL ,
	[TipFre] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[ValSeg] [float] NULL ,
	[ValDes] [float] NULL ,
	[ValOut] [float] NULL ,
	[BasIpi] [float] NULL ,
	[ValIpi] [float] NULL ,
	[ValPis] [decimal](12, 2) NULL ,
	[ValCfs] [decimal](12, 2) NULL ,
	[ValNot] [float] NULL ,
	[NtrOpr] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[ForPag] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[ChvNfe] [varchar] (44) COLLATE Latin1_General_CI_AS NULL ,
	[ObsMov] [varchar] (250) COLLATE Latin1_General_CI_AS NULL ,
	[CnpjTrp] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[InsEstTrp] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[NomeTrp] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[NomFanTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[EnderecoTrp] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[SetorTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[CidadeTrp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[UFTrp] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[IBGETrp] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[CepTrp] [varchar] (9) COLLATE Latin1_General_CI_AS NULL ,
	[PlacaVei] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[UFVei] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[CnpjDst] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[InsEstDst] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[PosMov] [char] (1) COLLATE Latin1_General_CI_AS NOT NULL ,
	[InsEstSbtEmt] [varchar] (18) COLLATE Latin1_General_CI_AS NULL ,
	[NomEmt] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[NomFanEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[EnderecoEmt] [varchar] (75) COLLATE Latin1_General_CI_AS NULL ,
	[SetorEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[CidadeEmt] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[UFEmt] [varchar] (2) COLLATE Latin1_General_CI_AS NULL ,
	[IBGEEmt] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[CepEmt] [varchar] (9) COLLATE Latin1_General_CI_AS NULL ,
	[FoneEmt] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[EmailEmt] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Status] [char] (3) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[NFe_CCe] (
	[idLote] [bigint] NULL ,
	[Codigo_Loja] [int] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[Evento] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Ver_Laiaute] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[id] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cOrgao] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[chave_nfe] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[dhEvento] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[tpEvento] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[nSeqEvento] [int] NULL ,
	[Ver_CCe] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[desc_Evento] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[xCondUso] [varchar] (700) COLLATE Latin1_General_CI_AS NULL ,
	[cStat] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[xMotivo] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[emailDest] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[dhRegEvento] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[nProt] [varchar] (15) COLLATE Latin1_General_CI_AS NULL ,
	[UTC] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[xCorrecao] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL ,
	[Demi] [datetime] NOT NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[critica_importacao] (
	[retorno] [varchar] (100) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[destinatario] (
	[codigo] [int] NOT NULL ,
	[razao_social] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[endereco] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[complemento] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[numero] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[bairro] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (8) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_municipio] [char] (7) COLLATE Latin1_General_CI_AS NULL ,
	[municipio] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[fone] [char] (20) COLLATE Latin1_General_CI_AS NULL ,
	[email] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[cnpj] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[insc_estadual] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[suframa] [char] (9) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_pais] [char] (5) COLLATE Latin1_General_CI_AS NULL ,
	[nome_pais] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[indIEDest] [char] (1) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[emitente] (
	[codigo_loja] [int] NOT NULL ,
	[razao_social] [varchar] (60) COLLATE Latin1_General_CI_AS NOT NULL ,
	[nome_fantasia] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[endereco] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[complemento] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[numero] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[bairro] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (8) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_municipio] [char] (7) COLLATE Latin1_General_CI_AS NULL ,
	[municipio] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[fone] [char] (20) COLLATE Latin1_General_CI_AS NULL ,
	[cnpj] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[insc_estadual] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[insc_estadual_subs] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[suframa] [char] (9) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_pais] [char] (5) COLLATE Latin1_General_CI_AS NULL ,
	[nome_pais] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[regime_tributario] [int] NULL ,
	[Certificado_NumSerie] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_QtdCopias] [int] NULL ,
	[DANFE_Visualiza] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_LogoMarca] [varchar] (250) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_LocSRV] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_CAMSRV] [varchar] (250) COLLATE Latin1_General_CI_AS NULL ,
	[Web_Ambiente] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Web_Visualizar] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Proxy_Host] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Proxy_Porta] [int] NULL ,
	[Proxy_User] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Proxy_Pass] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[Email_NEeMAIL] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Host] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Port] [int] NULL ,
	[Email_User] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Pass] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[Email_SSL] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Assunto] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Assunto_Canc] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[Email_CC] [varchar] (600) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Mensagem] [text] COLLATE Latin1_General_CI_AS NULL ,
	[UFSbt] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Email_Assunto_CCe] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_HorariodeVerao] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_FusoHorario] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_UsaHorarioDF] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_ImportaTxt] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[Certificado_NumSerie2] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[CSC] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[IdCSC] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_ImpNFe] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_ImpNFCe] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_ExibeFatura] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_ExpandiLogo] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_TipoDANF] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_TipoDANFCE] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[DANFE_QtdCopNFCe] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[natOp] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_destinatario] [int] NULL ,
	[codigo_transportadora] [int] NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[dSaiEnt] [datetime] NULL ,
	[tpNF] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[indPag] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[verProc] [char] (7) COLLATE Latin1_General_CI_AS NULL ,
	[base_calculo_icms] [numeric](12, 2) NULL ,
	[vl_icms] [numeric](12, 2) NULL ,
	[base_calculo_st] [numeric](12, 2) NULL ,
	[vl_st] [numeric](12, 2) NULL ,
	[total_nf] [numeric](12, 2) NULL ,
	[total_produtos] [numeric](12, 2) NULL ,
	[vl_frete] [numeric](12, 2) NULL ,
	[vl_seguro] [numeric](12, 2) NULL ,
	[vl_desconto] [numeric](12, 2) NULL ,
	[vl_ipi] [numeric](12, 2) NULL ,
	[vl_pis] [numeric](12, 2) NULL ,
	[vl_cofins] [numeric](12, 2) NULL ,
	[vl_outros] [numeric](12, 2) NULL ,
	[tipo_frete] [int] NULL ,
	[protocolo] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[recibo] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[chave_nfe] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[nr_dpec] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[data_geracao] [datetime] NULL ,
	[data_hora_recebimento] [datetime] NULL ,
	[situacao] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[motivo] [varchar] (100) COLLATE Latin1_General_CI_AS NULL ,
	[inf_complementar] [varchar] (900) COLLATE Latin1_General_CI_AS NULL ,
	[finalidade] [int] NULL ,
	[inf_fisco] [varchar] (2000) COLLATE Latin1_General_CI_AS NULL ,
	[vl_ii] [decimal](15, 2) NULL ,
	[evento_CCe] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[xCorrecao_CCe] [varchar] (1000) COLLATE Latin1_General_CI_AS NULL ,
	[cStat_CCe] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[xMotivo_CCe] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[dhRegEvento_CCe] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[nProt_CCe] [varchar] (15) COLLATE Latin1_General_CI_AS NULL ,
	[vTotTrib] [decimal](12, 2) NULL ,
	[DatNFCe] [datetime] NULL ,
	[CalcHoraNFCe] [char] (1) COLLATE Latin1_General_CI_AS NOT NULL ,
	[indFinal] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[indPres] [char] (1) COLLATE Latin1_General_CI_AS NULL ,
	[vBCUFDest] [decimal](18, 0) NULL ,
	[pFCPUFDest] [decimal](18, 0) NULL ,
	[pICMSUFDest] [decimal](18, 0) NULL ,
	[pICMSInter] [decimal](18, 0) NULL ,
	[pICMSInterPart] [decimal](18, 0) NULL ,
	[vFCPUFDest] [decimal](18, 0) NULL ,
	[vICMSUFDest] [decimal](18, 0) NULL ,
	[vICMSUFRemet] [decimal](18, 0) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_MDFe] (
	[Xml_Aut] [char] (1) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Xml_Bai] [char] (1) COLLATE Latin1_General_CI_AS NOT NULL ,
	[idLote] [bigint] IDENTITY (1, 1) NOT NULL ,
	[Codigo_loja] [int] NOT NULL ,
	[Chave_nfe] [varchar] (50) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Evento] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Ver_leiaute] [varchar] (30) COLLATE Latin1_General_CI_AS NULL ,
	[id] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cOrgao] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[dhEvento] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[tpEvento] [char] (6) COLLATE Latin1_General_CI_AS NULL ,
	[nSeqEvento] [int] NULL ,
	[verEvento] [char] (10) COLLATE Latin1_General_CI_AS NULL ,
	[desEvento] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[xJust] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[cStat] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[xMotivo] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[dhRegEvento] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[nProt] [varchar] (15) COLLATE Latin1_General_CI_AS NULL ,
	[NSU] [varchar] (15) COLLATE Latin1_General_CI_AS NULL ,
	[xNome] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cnpj_cpf] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[IE] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[dEmi] [datetime] NULL ,
	[tpNF] [smallint] NULL ,
	[vNF] [decimal](15, 2) NULL ,
	[digVal] [varchar] (28) COLLATE Latin1_General_CI_AS NULL ,
	[dhRecbto] [varchar] (25) COLLATE Latin1_General_CI_AS NULL ,
	[cSitNFe] [int] NULL ,
	[cSitConf] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_duplicatas] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[num_duplicata] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL ,
	[dvenc] [datetime] NULL ,
	[valor] [numeric](12, 2) NULL ,
	[tPag] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[cCnpj] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[tBand] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[cAut] [char] (20) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_faturas] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[num_fatura] [varchar] (15) COLLATE Latin1_General_CI_AS NOT NULL ,
	[vl_original] [numeric](12, 2) NULL ,
	[vl_desconto] [numeric](12, 2) NULL ,
	[vl_liquido] [numeric](12, 2) NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_informacoes] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[inf_campo] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL ,
	[inf_complementar] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_itens] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[sequencia] [int] NOT NULL ,
	[cfop] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_item] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[descricao] [varchar] (120) COLLATE Latin1_General_CI_AS NULL ,
	[qtd] [numeric](12, 4) NULL ,
	[unidade] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[pr_total] [numeric](12, 2) NULL ,
	[pr_unitario] [numeric](21, 10) NULL ,
	[pc_icms] [numeric](5, 2) NULL ,
	[base_calculo_icms] [numeric](12, 2) NULL ,
	[vl_icms] [numeric](12, 2) NULL ,
	[reducao_icms] [numeric](12, 2) NULL ,
	[NCM] [varchar] (8) COLLATE Latin1_General_CI_AS NULL ,
	[ean] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[pc_ipi] [numeric](5, 2) NULL ,
	[base_calculo_ipi] [numeric](12, 2) NULL ,
	[vl_desconto] [numeric](12, 2) NULL ,
	[vl_ipi] [numeric](12, 2) NULL ,
	[pis_cst] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[pis_base_calculo] [numeric](12, 2) NULL ,
	[pis_percentual] [numeric](5, 2) NULL ,
	[pis_valor] [numeric](12, 2) NULL ,
	[cofins_cst] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[cofins_base_calculo] [numeric](12, 2) NULL ,
	[cofins_percentual] [numeric](5, 2) NULL ,
	[cofins_valor] [numeric](12, 2) NULL ,
	[cst] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[inf_adicional] [varchar] (500) COLLATE Latin1_General_CI_AS NULL ,
	[ind_total] [int] NULL ,
	[vl_frete] [numeric](12, 2) NULL ,
	[vl_seguro] [numeric](12, 2) NULL ,
	[vl_outros] [numeric](12, 2) NULL ,
	[base_icms_st] [decimal](12, 2) NULL ,
	[vl_icms_st] [decimal](12, 2) NULL ,
	[pc_icms_st] [decimal](5, 2) NULL ,
	[cEANTrib] [varchar] (14) COLLATE Latin1_General_CI_AS NULL ,
	[CodSIMP] [varchar] (9) COLLATE Latin1_General_CI_AS NULL ,
	[ipi_cst] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[vTotTrib] [decimal](12, 2) NULL ,
	[vl_II] [decimal](15, 2) NULL ,
	[xPed] [varchar] (15) COLLATE Latin1_General_CI_AS NULL ,
	[nItemPed] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[CEST] [char] (7) COLLATE Latin1_General_CI_AS NULL ,
	[serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[vBCUFDest] [decimal](18, 0) NULL ,
	[pFCPUFDest] [decimal](18, 0) NULL ,
	[pICMSUFDest] [decimal](18, 0) NULL ,
	[pICMSInter] [decimal](18, 0) NULL ,
	[pICMSInterPart] [decimal](18, 0) NULL ,
	[VFCPUFDest] [decimal](18, 0) NULL ,
	[VICMSUFDest] [decimal](18, 0) NULL ,
	[VICMSUFRemet] [decimal](18, 0) NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_itens_DI] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[sequencia] [int] NOT NULL ,
	[numero_di] [char] (10) COLLATE Latin1_General_CI_AS NOT NULL ,
	[data_DI] [datetime] NULL ,
	[local_desembaraco] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[uf_desembaraco] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[data_desembaraco] [datetime] NULL ,
	[codigo_exportador] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_itens_DI_ADI] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[sequencia] [int] NOT NULL ,
	[numero_di] [char] (10) COLLATE Latin1_General_CI_AS NOT NULL ,
	[numero_ADI] [int] NOT NULL ,
	[sequencia_ADI] [int] NOT NULL ,
	[codigo_fabricante] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[valor_desconto] [numeric](15, 2) NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_referenciada_cupon] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[Mod] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[ECF] [int] NULL ,
	[COO] [int] NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_referenciada_mod1] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[AAMM] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[CNPJ] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[Mod] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Ser] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[r_nNF] [bigint] NULL ,
	[chave_nfe] [varchar] (50) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_referenciada_prural] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[UF] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[AAMM] [char] (4) COLLATE Latin1_General_CI_AS NULL ,
	[CNPJ] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[insc_estadual] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[Mod] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[Ser] [char] (3) COLLATE Latin1_General_CI_AS NULL ,
	[r_nNF] [bigint] NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_veiculo] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[placa] [char] (10) COLLATE Latin1_General_CI_AS NOT NULL ,
	[veiculo] [varchar] (20) COLLATE Latin1_General_CI_AS NOT NULL ,
	[uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[rntc] [varchar] (20) COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_volume] (
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[qtd_volume] [int] NULL ,
	[especie] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[marca] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[numero_volume] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[peso_liquido] [numeric](15, 3) NULL ,
	[peso_bruto] [numeric](15, 3) NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[nfe_xml] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[origem] [varchar] (20) COLLATE Latin1_General_CI_AS NULL ,
	[dt_inclusao] [datetime] NULL ,
	[codigo_loja] [int] NOT NULL ,
	[dEmi] [datetime] NOT NULL ,
	[nNF] [bigint] NOT NULL ,
	[xml_nota] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota1] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota2] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota3] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota4] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota5] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota6] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota7] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota8] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota9] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota10] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota11] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota12] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota13] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota14] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota15] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota16] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota17] [text] COLLATE Latin1_General_CI_AS NULL ,
	[Modelo] [char] (2) COLLATE Latin1_General_CI_AS NOT NULL ,
	[Serie] [char] (3) COLLATE Latin1_General_CI_AS NOT NULL ,
	[xml_nota18] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota19] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota20] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota21] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota22] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota23] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota24] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota25] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota26] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota27] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota28] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota29] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota30] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota31] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota32] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota33] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota34] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota35] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota36] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota37] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota38] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota39] [text] COLLATE Latin1_General_CI_AS NULL ,
	[xml_nota40] [text] COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[notas_inutilizadas] (
	[codigo_loja] [int] NOT NULL ,
	[nota] [int] NOT NULL ,
	[ano] [int] NOT NULL ,
	[Modelo] [int] NOT NULL ,
	[Serie] [int] NOT NULL ,
	[justificativa] [varchar] (255) COLLATE Latin1_General_CI_AS NULL ,
	[data_inclusao] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[transportadora] (
	[codigo] [int] NOT NULL ,
	[razao_social] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[endereco] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[complemento] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[numero] [varchar] (6) COLLATE Latin1_General_CI_AS NULL ,
	[bairro] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[cep] [char] (8) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_municipio] [char] (7) COLLATE Latin1_General_CI_AS NULL ,
	[municipio] [varchar] (60) COLLATE Latin1_General_CI_AS NULL ,
	[codigo_uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[uf] [char] (2) COLLATE Latin1_General_CI_AS NULL ,
	[fone] [char] (20) COLLATE Latin1_General_CI_AS NULL ,
	[cnpj] [char] (14) COLLATE Latin1_General_CI_AS NULL ,
	[insc_estadual] [varchar] (14) COLLATE Latin1_General_CI_AS NULL 
) ON [PRIMARY]
GO

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
GO

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
GO

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
GO

ALTER TABLE [dbo].[NFe_CCe] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_CCe] PRIMARY KEY  CLUSTERED 
	(
		[Codigo_Loja],
		[nNF],
		[Evento],
		[Demi],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[destinatario] WITH NOCHECK ADD 
	CONSTRAINT [PK_destinatario] PRIMARY KEY  CLUSTERED 
	(
		[codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[emitente] WITH NOCHECK ADD 
	CONSTRAINT [PK_emitente] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_MDFe] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_MDFe] PRIMARY KEY  CLUSTERED 
	(
		[Codigo_loja],
		[Chave_nfe],
		[Evento]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_duplicatas] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_duplicatas] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[num_duplicata],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_faturas] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_faturas] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[num_fatura],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_informacoes] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_informacoes] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[inf_campo],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_itens] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_itens] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[sequencia],
		[Modelo],
		[serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_itens_DI] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_itens_DI] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[sequencia],
		[numero_di],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_itens_DI_ADI] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_itens_DI_ADI] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[sequencia],
		[numero_di],
		[numero_ADI],
		[sequencia_ADI],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_referenciada_cupon] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_referenciada_cupon] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_referenciada_mod1] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_referenciada_mod1] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_referenciada_prural] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_referenciada_prural] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_veiculo] WITH NOCHECK ADD 
	CONSTRAINT [PK_NFe_Veiculo] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_volume] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_volume] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[nfe_xml] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_Xml] PRIMARY KEY  CLUSTERED 
	(
		[id],
		[codigo_loja],
		[nNF],
		[dEmi],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[notas_inutilizadas] WITH NOCHECK ADD 
	CONSTRAINT [PK_notas_inutilizadas] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[nota],
		[ano],
		[Modelo],
		[Serie]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[transportadora] WITH NOCHECK ADD 
	CONSTRAINT [PK_transportadora] PRIMARY KEY  CLUSTERED 
	(
		[codigo]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[NFeE_Mov] WITH NOCHECK ADD 
	CONSTRAINT [DF_NFeE_Mov_PosMov] DEFAULT ('P') FOR [PosMov]
GO

ALTER TABLE [dbo].[NFe_CCe] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_CCe__Modelo__37FA4C37] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_CCe__Serie__1E05700A] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe__CalcHoraNFC__1EF99443] DEFAULT ('S') FOR [CalcHoraNFCe]
GO

ALTER TABLE [dbo].[nfe_MDFe] WITH NOCHECK ADD 
	CONSTRAINT [DF_nfe_MDFe_Xml_Aut] DEFAULT ('0') FOR [Xml_Aut],
	CONSTRAINT [DF_nfe_MDFe_Xml_Bai] DEFAULT ('0') FOR [Xml_Bai]
GO

ALTER TABLE [dbo].[nfe_duplicatas] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Dupli__Model__2C88998B] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__nfe_dupli__Serie__15702A09] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_faturas] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Fatur__Model__2D7CBDC4] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Fatur__Serie__184C96B4] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_informacoes] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Infor__Model__2E70E1FD] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Infor__Serie__1940BAED] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_itens] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Itens__Model__2F650636] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Itens__serie__1A34DF26] DEFAULT ('001') FOR [serie]
GO

ALTER TABLE [dbo].[nfe_itens_DI] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Itens__Model__30592A6F] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Itens__Serie__1B29035F] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_itens_DI_ADI] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Itens__Model__314D4EA8] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Itens__Serie__1C1D2798] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_referenciada_cupon] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Refer__Model__324172E1] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Refer__Serie__1D114BD1] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_referenciada_mod1] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Refer__Model__3335971A] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Refer__Serie__16644E42] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_referenciada_prural] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Refer__Model__3429BB53] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_Refer__Serie__1758727B] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_veiculo] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Veicu__Model__351DDF8C] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_veicu__Serie__1FEDB87C] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_volume] WITH NOCHECK ADD 
	CONSTRAINT [DF__NFe_Volum__Model__361203C5] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__NFe_volum__Serie__20E1DCB5] DEFAULT ('001') FOR [Serie]
GO

ALTER TABLE [dbo].[nfe_xml] WITH NOCHECK ADD 
	CONSTRAINT [DF_nfe_xml_dt_inclusao] DEFAULT (getdate()) FOR [dt_inclusao],
	CONSTRAINT [DF__NFe_Xml__Modelo__370627FE] DEFAULT ('55') FOR [Modelo],
	CONSTRAINT [DF__nfe_xml__Serie__147C05D0] DEFAULT ('001') FOR [Serie]
GO

 CREATE  INDEX [IX_nfe] ON [dbo].[nfe]([dEmi], [situacao]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_nfe_MDFe] ON [dbo].[nfe_MDFe]([cSitConf], [dEmi]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_nfe_informacoes] ON [dbo].[nfe_informacoes]([codigo_loja], [dEmi], [nNF]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_nfe_itens] ON [dbo].[nfe_itens]([cfop]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_nfe_veiculo] ON [dbo].[nfe_veiculo]([codigo_loja], [dEmi], [nNF]) ON [PRIMARY]
GO

 CREATE  INDEX [IX_nfe_volume] ON [dbo].[nfe_volume]([codigo_loja], [dEmi], [nNF]) ON [PRIMARY]
GO

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
GO

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
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




























CREATE    proc [dbo].[s_le_arquivo_texto] @origem varchar(255), @arquivo varchar(255), @ok bit output
as

set nocount on

---------------------------------------------------
-- Variaveis
---------------------------------------------------
declare @oriArq varchar (1000)

declare @x int
declare @cont int
declare @atual int
declare @linha varchar(8000)
declare @id_linha int

declare @tabela varchar(200)
declare @col int
declare @tamanho int

declare @exe varchar(8000)

declare @alias varchar(200)
declare @campos varchar(8000)
declare @update varchar(8000)
set @ok = 0

---------------------------------------------------
-- Importa arquivo Criptografado em coluna unica
---------------------------------------------------
create table #result (existe int null, dire int null, parent int null)
create table #temp (desc_linha varchar(8000) null)

set @oriArq = @origem + @arquivo

insert #result
exec master..xp_fileexist @oriArq

set @oriArq = '''' + @oriArq + ''''


if (select existe from #result) = 1
begin
	set @exe = 'bulk insert #temp from ' + @OriArq
	exec (@exe)
end
else
begin
	select Erro = 'Arquivo n∆o encontrado =' + @arquivo
	return
end


---------------------------------------------------
-- Verifica se existem registros
---------------------------------------------------
select top 1 desc_linha into #linha from #temp
if  @@rowcount = 0 goto FIM

------------------------------------------------------------------------------------
-- Verifica se eh uma tabela especial (se ja existe o tamanho das colunas definido)
------------------------------------------------------------------------------------
create table #tamanho2
(
	coluna tinyint,
	tamanho int
)


-----------------------------------------------------------------
-- Identifica a quantidade e o tamanho da maior coluna
-----------------------------------------------------------------
if @@rowcount = 0
begin 
	create table #tamanho
	(
		linha int,
		coluna tinyint,
		tamanho int
	)
	
	
	declare cur cursor read_only
	for select desc_linha from #temp
	
	open cur
	fetch next from cur into @linha
	
	set @id_linha = 1
	
	while (@@fetch_status <> -1)
	begin
		if (@@fetch_status <> -2)
		begin
		----------------------------------
		set @x = 1
		set @atual = -1
		set @cont = 0
			
		while (@x <> @atual)
		begin
			set @atual = @x
			set @cont = @cont + 1
			set @x = @x + patindex('%|%',substring(@linha,@x,8000))
		
			insert #tamanho (linha,coluna,tamanho) values (@id_linha,@cont,(@x-@atual)*3)
		end
		----------------------------------
		end
		
		fetch next from cur into @linha
		set @id_linha = @id_linha + 1
	
	
	end
	
	close cur
	deallocate cur

	----------------------------update #tamanho set tamanho = 7000 where tamanho > 7000 ----> TEMPORµRIO: EVITA QUE HAJA DE OVERFLOW.	
	
	insert	#tamanho2
	(
		coluna,
		tamanho
	)
	select	coluna,
		max(isnull(tamanho,1))
	from	#tamanho
	group	by coluna
	
	
	delete #tamanho2 where tamanho = 0
end
else
	set @cont = (select count(*) from #tamanho2)+1



---------------------------------------------------
-- Adiciona colunas na tabela temporaria
---------------------------------------------------
set @tabela = '#' + replace(@arquivo,'.txt','')
create table #LeArquivo (id1 int)


declare cur cursor read_only
for select coluna,tamanho from #tamanho2 order by coluna


open cur
fetch next from cur into @col,@tamanho


while (@@fetch_status <> -1)
begin
	if (@@fetch_status <> -2)
	begin
	----------------------------------
	set @exe = 'alter table #LeArquivo add campo' + cast(@col as varchar) + ' varchar(' + cast(@tamanho as varchar) + ')'
	exec (@exe)
	----------------------------------
	end
	
	fetch next from cur into @col,@tamanho
end

close cur
deallocate cur


set @exe = 'alter table #LeArquivo drop column id1'
exec (@exe)


-- 	select * from #leArquivo
-- 	select * from #temp

------------------------------------------------------
-- Importa arquivo Criptografado em colunas separadas
------------------------------------------------------
set @exe = 'bulk insert #LeArquivo from ' + @oriArq + ' with (codepage = ''raw'', rowterminator = ''|\n'', fieldterminator = ''|'')'
exec (@exe)


------------------------------------------------------
-- Adiciona quebra de linha tabela temporaria
------------------------------------------------------
--onde for encontrado _._ substituir por char(13)
set @col = 0
set @exe = 'update #LeArquivo set '

while(@col < @cont-1)
begin
	set @col = @col + 1
	set @exe = @exe + 'campo' + cast(@col as varchar) + ' = replace(campo'+cast(@col as varchar)+',''-.-'',char(13)),'
end

set @exe = left(@exe,len(@exe)-1)
exec (@exe)


------------------------------------------------------
-- Renomeia nome das colunas da tabela temporaria
------------------------------------------------------
create table #alias (alias varchar(200))

set @col = 0
set @campos = ''
set @update = ''

while(@col < @cont - 1)
begin
	set @col = @col + 1
	set @exe = 'select top 1 campo' + cast(@col as varchar) + ' from #LeArquivo where campo1 like ''codigo%'''
	insert #alias exec(@exe)
	set @alias = (select alias from #alias)
	truncate table #alias
	
	set @campos = @campos + 'campo' + cast(@col as varchar) + ' as ' + @alias + ','
	
	set @update = @update + ' campo'+cast(@col as varchar)+' = '+'isnull('+'campo'+cast(@col as varchar)+','''') ,' 
end

set @campos = left(@campos,len(@campos)-1) -- Remove a ultima ','
set @update = left(@update,len(@update)-1) -- Remove a ultima ','

-- Deleta o primeiro registro, o qual contem o nome das colunas
set @exe = 'delete #LeArquivo where ' + 'campo' + cast(@col as varchar) + ' = ''' + @alias + ''''
exec(@exe)

-- Troca Null por ''    <<-- isso pq n∆o passa pela fn_criptografa
set @exe = 'update #LeArquivo set '+@update
exec(@exe)

-- Apaga tabela temporaria global se existir
set @exe = 'if object_id(''tempdb..#' + @tabela + ''') > 0 drop table #' + @tabela
exec(@exe)

-- Mostra resultado da query com os campos renomeados
set @exe = 'select ' + @campos + ' into #' + @tabela + ' from #LeArquivo'
exec(@exe)


-- Define status como executado sem erros
set @ok = 1
return

------------------------------------------------------
-- Finaliza sem registros
------------------------------------------------------
FIM:
return





















GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO


































CREATE          proc [dbo].[sp_bkp] @gCamBak varchar(255)
as

set nocount on

DECLARE @BackupFile varchar(255),
	@DB varchar(30),
	@Description varchar(255),
	@Name varchar(30),
	@MediaName varchar(30),  
	@BackupDirectory nvarchar(200),
	@senha varchar(15)

-- Derruba todas as conexoes
 alter database nfe
 set restricted_user with rollback immediate

-------------------------------------------------------
SET	@BackupDirectory = @gCamBak     -- Antes ==> 'c:\'
SET	@DB = 'nfe'
-------------------------------------------------------

SET @Name = @DB + ' (Backup Full)'
SET @MediaName = 'bkp_' + @DB + '_' + CONVERT(varchar, CURRENT_TIMESTAMP , 112)
SET @BackupFile = @BackupDirectory + 'bkp_' + @DB + '_' + 'Full' + '_' + CONVERT(varchar, CURRENT_TIMESTAMP , 112) + '.bak'
SET @Description = 'Full' + ' Backup at ' + CONVERT(varchar, CURRENT_TIMESTAMP) + '.'


BACKUP DATABASE @DB TO DISK = @BackupFile WITH
INIT,
NAME = @Name,
DESCRIPTION = @Description,
MEDIANAME = @MediaName,
MEDIADESCRIPTION = @Description,
STATS = 1

 alter database nfe set multi_user


































GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




































CREATE            proc [dbo].[sp_calcula_digito_chave] @codigo_loja int, @nota bigint, @tpemissao char(1),@demissao datetime, @Modelo char(2), @Serie char(3)
as

declare @digito int
declare @codigo_destinatario int
declare @chave varchar(44)

if not exists (select * from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = cast(@Serie as integer)) begin
  select 'Nota n∆o existe' as chave
  return 
end  

/*
 cUF - C¢digo da UF do emitente do Documento Fiscal
 AAMM - Ano e Màs de emiss∆o da NF-e
 CNPJ - CNPJ do emitente
 mod - Modelo do Documento Fiscal
 Serie - Serie do Documento Fiscal
 nNF - N£mero do Documento Fiscal
 cNF - C¢digo NumÇrico que comp‰e a Chave de Acesso
 cDV - D°gito Verificador da Chave de Acesso
*/

--(select demi,(replicate('0', 2 - len(rtrim(cast(month(demi) as varchar(02))))  ) + cast(month(demi) as varchar)) from nfe where codigo_loja = 2 and nnf = '243')
 
set @chave = (select codigo_uf from emitente where codigo_loja = @codigo_loja)

set @chave = @chave + (select (substring(cast(year(demi)as varchar),3,2)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie) 

set @chave = @chave + (select (replicate('0', 2 - len(cast(month(demi) as varchar))) + cast(month(demi) as varchar)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie)

set @chave = @chave + rtrim((select cnpj from emitente where codigo_loja = @codigo_loja)) + @modelo + rtrim(ltrim((select (replicate('0', 3 - len(serie)) + serie ) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie)))
set @chave = @chave + rtrim(ltrim((select (replicate('0', 9 - len(@nota))) + cast(@nota as varchar(9)))))
set @chave = @chave + @tpemissao 
set @chave = @chave + rtrim(ltrim((select (replicate('0', 8 - len(@nota))) + cast(@nota as varchar(8)))))

--select @chave
 
if (len(@chave) != 43) begin
  select 'Erro de tamanho da chave' as chave
  return 
end  
   
set @digito =  (
							substring(@chave,1,1)*4 +
							substring(@chave,2,1)*3 +
							substring(@chave,3,1)*2 +
							substring(@chave,4,1)*9 +
							substring(@chave,5,1)*8 +
							substring(@chave,6,1)*7 +
							substring(@chave,7,1)*6 +
							substring(@chave,8,1)*5 +
							substring(@chave,9,1)*4 +
							substring(@chave,10,1)*3 +
							substring(@chave,11,1)*2 + 
							substring(@chave,12,1)*9 +
							substring(@chave,13,1)*8 + 
							substring(@chave,14,1)*7 +
							substring(@chave,15,1)*6 +
							substring(@chave,16,1)*5 +
							substring(@chave,17,1)*4 +
							substring(@chave,18,1)*3 +
							substring(@chave,19,1)*2 +
							substring(@chave,20,1)*9 +
							substring(@chave,21,1)*8 +
							substring(@chave,22,1)*7 +
							substring(@chave,23,1)*6 +
							substring(@chave,24,1)*5 +
							substring(@chave,25,1)*4 +
							substring(@chave,26,1)*3 +
							substring(@chave,27,1)*2 +
							substring(@chave,28,1)*9 +
							substring(@chave,29,1)*8 +
							substring(@chave,30,1)*7 +
							substring(@chave,31,1)*6 +
							substring(@chave,32,1)*5 +
							substring(@chave,33,1)*4 +
							substring(@chave,34,1)*3 +
							substring(@chave,35,1)*2 +
							substring(@chave,36,1)*9 +
							substring(@chave,37,1)*8 +
							substring(@chave,38,1)*7 +
							substring(@chave,39,1)*6 +
							substring(@chave,40,1)*5 +
							substring(@chave,41,1)*4 +
							substring(@chave,42,1)*3 +
							substring(@chave,43,1)*2 
						     ) % 11 

if (@digito <= 1) begin
  set @digito = 0
end
if (@digito > 1) begin
  set @digito = 11 - @digito
end  
set @chave = @chave + cast(@digito as varchar)

select @chave as chave
























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO






























CREATE      proc [dbo].[sp_consulta_nfe] @razao_social varchar(255), @demissao datetime
as

set nocount on

if @razao_social = '' set @razao_social = null
if @demissao = '' set @demissao = null

Select                                                 
t2.razao_social,                                       
t1.nnf,                                                
t1.protocolo,                                          
t1.recibo,                                             
t1.chave_nfe,
t1.situacao,
t1.motivo,
t1.CalcHoraNFCe

from nfe t1                                            
inner join destinatario t2 on t1.codigo_destinatario = t2.codigo   
where t1.chave_nfe is not null
and (t2.razao_social like ('%' + @razao_social + '%') or @razao_social is null)
and (t1.demi = @demissao or @demissao is null)
order by 1






























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO






























CREATE      proc [dbo].[sp_exclui_nfe] @codigo_loja int,@nnf varchar(09), @demissao dateTIME, @Modelo char(2), @Serie char(3)
as

set nocount on

delete from nfe_itens 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_itens_di 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_itens_DI_ADI 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_referenciada_cupon
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_referenciada_mod1
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_referenciada_prural
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_duplicatas
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_faturas
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_informacoes
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_veiculo
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe_volume
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie

delete from nfe
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie
































GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





































CREATE              proc [dbo].[sp_importa_nfe] @origem varchar(255), @retorno varchar(100) output
as

set nocount on

----------------------------------------------
-- Variaveis
----------------------------------------------
declare @exe nvarchar(4000)
declare @insert varchar(5)
declare @ok bit

----------------------------------------------------------------------------------------
-- ler os textos e joga em tabela tempor†rias
----------------------------------------------------------------------------------------
set @retorno = 'Erro ao importar os textos'

if object_id('tempdb..##emitente') > 0 drop table ##emitente
exec s_le_arquivo_texto @origem, 'emitente.txt', @ok output
set @retorno = ''
if @ok = 0 goto vazio

if object_id('tempdb..##emitente') > 0 drop table ##emitente
exec s_le_arquivo_texto @origem, 'emitente.txt', @ok output
set @retorno = 'Arquivo texto vazio: emitente'
if @ok = 0 goto vazio
if object_id('tempdb..##destinatario') > 0 drop table ##destinatario
exec s_le_arquivo_texto @origem, 'destinatario.txt', @ok output
set @retorno = 'Arquivo texto vazio: destinatario'
if @ok = 0 goto vazio
if object_id('tempdb..##transportadora') > 0 drop table ##transportadora
exec s_le_arquivo_texto @origem, 'transportadora.txt', @ok output
set @retorno = 'Arquivo texto vazio: transportadora'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe') > 0 drop table ##nfe
exec s_le_arquivo_texto @origem, 'nfe.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_informacoes') > 0 drop table ##nfe_informacoes
exec s_le_arquivo_texto @origem, 'nfe_informacoes.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_informacoes'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_itens') > 0 drop table ##nfe_itens
exec s_le_arquivo_texto @origem, 'nfe_itens.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_itens'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_faturas') > 0 drop table ##nfe_faturas
exec s_le_arquivo_texto @origem, 'nfe_faturas.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_faturas'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_duplicatas') > 0 drop table ##nfe_duplicatas
exec s_le_arquivo_texto @origem, 'nfe_duplicatas.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_duplicatas'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_volume') > 0 drop table ##nfe_volume
exec s_le_arquivo_texto @origem, 'nfe_volume.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_volume'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_veiculo') > 0 drop table ##nfe_veiculo
exec s_le_arquivo_texto @origem, 'nfe_veiculo.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_veiculo'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_resumo') > 0 drop table ##nfe_resumo
exec s_le_arquivo_texto @origem, 'nfe_resumo.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_resumo'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_referenciada_mod1') > 0 drop table ##nfe_referenciada_mod1
exec s_le_arquivo_texto @origem, 'nfe_referenciada_mod1.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_referenciada_mod1'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_referenciada_prural') > 0 drop table ##nfe_referenciada_prural
exec s_le_arquivo_texto @origem, 'nfe_referenciada_prural.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_referenciada_prural'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_referenciada_cupon') > 0 drop table ##nfe_referenciada_cupon
exec s_le_arquivo_texto @origem, 'nfe_referenciada_cupon.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_referenciada_cupon'
if @ok = 0 goto vazioif object_id('tempdb..##nfe_itens_DI') > 0 drop table ##nfe_itens_DI
exec s_le_arquivo_texto @origem, 'nfe_itens_DI.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_itens_DI'
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_itens_DI_ADI') > 0 drop table ##nfe_itens_DI_ADI
exec s_le_arquivo_texto @origem, 'nfe_itens_DI_ADI.txt', @ok output
set @retorno = 'Arquivo texto vazio: nfe_itens_DI_ADI'
if @ok = 0 goto vazio
----------------------------------------------------------------------------------------
-- critica quantidade de resgistros
----------------------------------------------------------------------------------------
set @retorno = 'Erro ao criticar os textos'

if (select qtd_nfe from ##nfe_resumo) <> (select COUNT(*) from ##nfe) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe'
  return
end;
if (select qtd_nfe_itens from ##nfe_resumo) <> (select COUNT(*) from ##nfe_itens) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_itens'
  return
end;
if (select qtd_nfe_informacoes from ##nfe_resumo) <> (select COUNT(*) from ##nfe_informacoes) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_informacoes'
  return
end;
if (select qtd_nfe_duplicatas from ##nfe_resumo) <> (select COUNT(*) from ##nfe_duplicatas) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_duplicatas'
  return
end;
if (select qtd_nfe_faturas from ##nfe_resumo) <> (select COUNT(*) from ##nfe_faturas) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_faturas'
  return
end;
if (select qtd_nfe_veiculo from ##nfe_resumo) <> (select COUNT(*) from ##nfe_veiculo) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_veiculo'
  return
end;
if (select qtd_nfe_volume from ##nfe_resumo) <> isnull((select COUNT(*) from ##nfe_volume),0) begin
  set @retorno = 'Erro na quantidade de registros importados: nfe_volume'
  return
end;
if (select qtd_emitente from ##nfe_resumo) <> (select COUNT(*) from ##emitente) begin
  set @retorno = 'Erro na quantidade de registros importados: emitente'
  return
end;
if (select qtd_destinatario from ##nfe_resumo) <> (select COUNT(*) from ##destinatario) begin
  set @retorno = 'Erro na quantidade de registros importados: destinatario'
  return
end;
if (select qtd_transportadora from ##nfe_resumo) <> (select COUNT(*) from ##transportadora) begin
  set @retorno = 'Erro na quantidade de registros importados: transportadora'
  return
end;

set @retorno = ''

begin tran

----------------------------------------------------------------------------------------
-- Insere registros emitente
----------------------------------------------------------------------------------------
--regrava
update t1 set 
         razao_social            = t2.razao_social
        ,nome_fantasia           = t2.nome_fantasia
        ,endereco                = t2.endereco
        ,complemento             = t2.complemento
        ,numero                  = t2.numero
        ,bairro                  = t2.bairro
        ,cep                     = t2.cep
        ,codigo_municipio        = t2.codigo_municipio
        ,municipio               = t2.municipio
        ,codigo_uf               = t2.codigo_uf
        ,uf                      = t2.uf
        ,fone                    = left(t2.fone,10)
        ,cnpj                    = t2.cnpj
        ,insc_estadual           = t2.insc_estadual
        ,insc_estadual_subs      = t2.insc_estadual_subs
        ,suframa                 = t2.suframa
        ,codigo_pais             = t2.codigo_pais
        ,nome_pais               = t2.nome_pais
        ,regime_tributario       = t2.regime_tributario
        -- by Edson Lima ; 2013/02/25 ; 09:06
        ,UFSbt                   = t2.UFSbt

from emitente t1
inner join ##emitente t2 on t1.codigo_loja = t2.codigo_loja 

insert	emitente
(        
         codigo_loja
	,razao_social
	,nome_fantasia
	,endereco
	,complemento
	,numero
	,bairro
	,cep
	,codigo_municipio
	,municipio
	,codigo_uf
	,uf
	,fone
	,cnpj
	,insc_estadual
	,insc_estadual_subs
	,suframa
	,codigo_pais
	,nome_pais
	,regime_tributario
        -- by Edson Lima ; 2013/02/25 ; 09:06
	,UFSbt
         )
select	
         t1.codigo_loja
        ,t1.razao_social
        ,t1.nome_fantasia
        ,t1.endereco
        ,t1.complemento
        ,t1.numero
        ,t1.bairro
        ,t1.cep
        ,t1.codigo_municipio
        ,t1.municipio
        ,t1.codigo_uf
        ,t1.uf
        ,t1.fone
        ,t1.cnpj
        ,t1.insc_estadual
        ,t1.insc_estadual_subs
        ,t1.suframa
        ,t1.codigo_pais
        ,t1.nome_pais
        ,t1.regime_tributario
        -- by Edson Lima ; 2013/02/25 ; 09:06
        ,t1.UFSbt

from ##emitente t1
        left join emitente t2 on t1.codigo_loja = t2.codigo_loja
       where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros destinatario
----------------------------------------------------------------------------------------

update ##destinatario set fone = REPLACE(fone,'-','')
update ##destinatario set fone = REPLACE(fone,'(','')
update ##destinatario set fone = REPLACE(fone,')','')
update ##destinatario set fone = REPLACE(fone,'.','')
update ##destinatario set cep = REPLACE(cep,'.','')
update ##destinatario set cep = REPLACE(cep,'-','')

update ##destinatario set insc_estadual = REPLACE(insc_estadual,'.','')
update ##destinatario set insc_estadual = REPLACE(insc_estadual,'-','')
update ##destinatario set insc_estadual = REPLACE(insc_estadual,';','')
update ##destinatario set insc_estadual = REPLACE(insc_estadual,'/','')
update ##destinatario set insc_estadual = REPLACE(insc_estadual,'\','')

update ##transportadora set insc_estadual = REPLACE(insc_estadual,'.','')
update ##transportadora set insc_estadual = REPLACE(insc_estadual,'-','')
update ##transportadora set insc_estadual = REPLACE(insc_estadual,';','')
update ##transportadora set insc_estadual = REPLACE(insc_estadual,'/','')
update ##transportadora set insc_estadual = REPLACE(insc_estadual,'\','')

--regrava
update t1 set 
         razao_social            = t2.razao_social
        ,endereco                = t2.endereco
        ,complemento             = t2.complemento
        ,numero                  = t2.numero
        ,bairro                  = t2.bairro
        ,cep                     = t2.cep
        ,codigo_municipio        = t2.codigo_municipio
        ,municipio               = t2.municipio
        ,codigo_uf               = t2.codigo_uf
        ,uf                      = t2.uf
        ,fone                    = left(t2.fone,10)
        ,email                   = t2.email
        ,cnpj                    = t2. cnpj
        ,insc_estadual           = t2.insc_estadual
        ,suframa                 = t2.suframa
        ,codigo_pais             = t2.codigo_pais
        ,nome_pais               = t2.nome_pais
        -- by Edson Lima ; 2015/12/17 ; 14:48 
        ,IndIEDest               = t2.IndIEDest

from destinatario t1
     inner join ##destinatario t2 on t1.codigo = t2.codigo

insert	destinatario
(
         razao_social
        ,endereco
        ,complemento
        ,numero
        ,bairro
        ,cep
        ,codigo_municipio
        ,municipio
        ,codigo_uf
        ,uf
        ,fone
        ,email
        ,cnpj
        ,insc_estadual
        ,suframa
        ,codigo_pais
        ,nome_pais
        -- by Edson Lima ; 2015/12/17 ; 14:48 
        ,IndIEDest 
         )
select	
         t1.razao_social
        ,t1.endereco
        ,t1.complemento
        ,t1.numero
        ,t1.bairro
        ,t1.cep
        ,t1.codigo_municipio
        ,t1.municipio
        ,t1.codigo_uf
        ,t1.uf
        ,t1.fone
        ,t1.email
        ,t1.cnpj
        ,t1.insc_estadual
        ,t1.suframa
        ,t1.codigo_pais
        ,t1.nome_pais
        -- by Edson Lima ; 2015/12/17 ; 14:48 
        ,t1.IndIEDest

from ##destinatario t1
     left join destinatario t2 on t1.codigo = t2.codigo 
    where t2.codigo is null

----------------------------------------------------------------------------------------
-- Insere registros transportadora
----------------------------------------------------------------------------------------

update ##transportadora set fone = REPLACE(fone,'-','')
update ##transportadora set fone = REPLACE(fone,'(','')
update ##transportadora set fone = REPLACE(fone,')','')
update ##transportadora set fone = REPLACE(fone,'.','')

--regrava
update t1 set 

         razao_social            = t2.razao_social
        ,endereco                = t2.endereco
        ,complemento             = t2.complemento
        ,numero                  = t2.numero
        ,bairro                  = t2.bairro
        ,cep                     = t2.cep
        ,codigo_municipio        = t2.codigo_municipio
        ,municipio               = t2.municipio
        ,codigo_uf               = t2.codigo_uf
        ,uf                      = t2.uf
        ,fone                    = left(t2.fone,10)
        ,cnpj                    = t2. cnpj
        ,insc_estadual           = t2.insc_estadual

from transportadora t1
inner join ##transportadora t2 on t1.codigo = t2.codigo

insert	transportadora
(
         codigo
        ,razao_social
        ,endereco
        ,complemento
        ,numero
        ,bairro
        ,cep
        ,codigo_municipio
        ,municipio        ,codigo_uf
        ,uf
        ,fone
        ,cnpj
        ,insc_estadual
         )

select
         t1.codigo
        ,t1.razao_social
        ,t1.cnpj
        ,t1.endereco
        ,t1.complemento
        ,t1.numero
        ,t1.bairro
        ,t1.cep
        ,t1.codigo_municipio
        ,t1.municipio
        ,left(t1.fone,10)
        ,t1.codigo_uf
        ,t1.uf
        ,t1.insc_estadual

from ##transportadora t1
         left join transportadora t2 on t1.codigo = t2.codigo
        where t2.codigo is null

----------------------------------------------------------------------------------------
-- Insere registros nfe
----------------------------------------------------------------------------------------
--acerta campos
update	##nfe
          set dEmi               = dbo.fn_data(dEmi),
              dSaiEnt            = dbo.fn_data(dSaiEnt)
	
update ##nfe set  base_calculo_icms = 0 where base_calculo_icms    = ''
update ##nfe set  vl_icms           = 0 where vl_icms              = ''
update ##nfe set  base_calculo_st   = 0 where base_calculo_st      = ''
update ##nfe set  vl_st             = 0 where vl_st                = ''
update ##nfe set  total_nf          = 0 where total_nf             = ''
update ##nfe set  total_produtos    = 0 where total_produtos       = ''
update ##nfe set  vl_frete          = 0 where vl_frete             = ''
update ##nfe set  vl_seguro         = 0 where vl_seguro            = ''
update ##nfe set  vl_desconto       = 0 where vl_desconto          = ''
update ##nfe set  vl_ipi            = 0 where vl_ipi               = ''
update ##nfe set  vl_pis            = 0 where vl_pis               = ''
update ##nfe set  vl_cofins         = 0 where vl_cofins            = ''
update ##nfe set  vl_outros         = 0 where vl_outros            = ''
update ##nfe set  vl_ii             = 0 where vl_ii                = ''
update ##nfe set  vTotTrib          = 0 where vTotTrib             = ''		-- By Edson Lima 2013/05/30T2041 ---> linha incluida

update ##nfe set  base_calculo_icms = replace (base_calculo_icms,',','.')
update ##nfe set  vl_icms           = replace (vl_icms,',','.')
update ##nfe set  base_calculo_st   = replace (base_calculo_st,',','.')
update ##nfe set  vl_st             = replace (vl_st,',','.')
update ##nfe set  total_nf          = replace (total_nf,',','.')
update ##nfe set  total_produtos    = replace (total_produtos,',','.')
update ##nfe set  vl_frete          = replace (vl_frete,',','.')
update ##nfe set  vl_seguro         = replace (vl_seguro,',','.')
update ##nfe set  vl_desconto       = replace (vl_desconto,',','.')
update ##nfe set  vl_ipi            = replace (vl_ipi,',','.')
update ##nfe set  vl_pis            = replace (vl_pis,',','.')
update ##nfe set  vl_cofins         = replace (vl_cofins,',','.')
update ##nfe set  vl_outros         = replace (vl_outros,',','.')
update ##nfe set  vl_ii             = replace (vl_ii,',','.')
update ##nfe set  vTotTrib          = replace (vTotTrib,',','.')		-- By Edson Lima 2013/05/30T2041 ---> linha incluida
	
--apaga nfe
delete t1
from nfe t1
inner join ##nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
where t1.chave_nfe is null

insert	nfe
(
    codigo_loja,
    dEmi,
    nNF,
    Modelo,
    Serie,
    natOp,
    codigo_destinatario,
    codigo_transportadora,
    dSaiEnt,
    tpNF,
    indPag,
    verProc,
    base_calculo_st,
    vl_st,
    base_calculo_icms,
    vl_icms,
    total_nf,
    total_produtos,
    vl_frete,
    vl_seguro,
    vl_desconto,
    vl_ipi,
    vl_pis,
    vl_cofins,
    vl_outros,
    tipo_frete,
    inf_complementar,
    inf_fisco,
    finalidade,
    vl_ii,
    vTotTrib,								-- By Edson Lima 2013/05/30T2041 ---> linha incluida
    indFinal,                                            		-- By Edson Lima 2016/01/20T2041 ---> linha incluida
    indPres                                                             -- By Edson Lima 2016/01/20T2041 ---> linha incluida
	)

select
    t1.codigo_loja,
    t1.dEmi,
    t1.nNF,
    t1.Modelo,
    t1.Serie,
    t1.natOp,
    t1.codigo_destinatario,
    t1.codigo_transportadora,
    t1.dSaiEnt,
    t1.tpNF,
    t1.indPag,
    t1.verProc,
    cast(t1.base_calculo_st as numeric(12,2)),
    cast(t1.vl_st as numeric(12,2)),
    cast(t1.base_calculo_icms as numeric(12,2)),
    cast(t1.vl_icms as numeric(12,2)),
    cast(t1.total_nf as numeric(12,2)),
    cast(t1.total_produtos as numeric(12,2)),
    cast(t1.vl_frete as numeric(12,2)),
    cast(t1.vl_seguro as numeric(12,2)),
    cast(t1.vl_desconto as numeric(12,2)),
    cast(t1.vl_ipi as numeric(12,2)),
    cast(t1.vl_pis as numeric(12,2)),
    cast(t1.vl_cofins as numeric(12,2)),    cast(t1.vl_outros as numeric(12,2)),
    t1.tipo_frete,
    t1.inf_complementar,
    t1.inf_fisco,
    t1.finalidade,
    cast(t1.vl_ii as numeric(12,2)),
    cast(t1.vTotTrib as numeric(12,2)),				-- By Edson Lima 2013/05/30T2041 ---> linha incluida
    f1.indFinal,                                                -- By Edson Lima 2016/01/20T2041 ---> linha incluida
    f1.indPres                                                  -- By Edson Lima 2016/01/20T2041 ---> linha incluida

from ##nfe t1
left join nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros nfe informaá‰es complementares
----------------------------------------------------------------------------------------
--acerta datas

update	##nfe_informacoes set
	dEmi = dbo.fn_data(dEmi)
	
--apaga nfe
delete t1
from nfe_informacoes t1
inner join ##nfe_informacoes t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_informacoes
(
    codigo_loja,
	dEmi,
	nNF,
	inf_campo,
        Modelo,
        Serie,
	inf_complementar)

select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	substring(t1.inf_campo,1,20),
        t1.Modelo,
        t1.Serie,
	substring(t1.inf_complementar,1,60)
from ##nfe_informacoes t1
left join nfe_informacoes t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros itens de nfe
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_itens set
	dEmi = dbo.fn_data(dEmi)

update ##nfe_itens set qtd  = 0 where qtd = ''
update ##nfe_itens set pr_total  = 0 where pr_total = ''
update ##nfe_itens set pr_unitario  = 0 where pr_unitario = ''
update ##nfe_itens set pc_icms  = 0 where pc_icms = ''
update ##nfe_itens set base_calculo_icms  = 0 where base_calculo_icms = ''
update ##nfe_itens set vl_icms  = 0 where vl_icms = ''
update ##nfe_itens set reducao_icms  = 0 where reducao_icms = ''
update ##nfe_itens set pc_ipi  = 0 where pc_ipi = ''
update ##nfe_itens set base_calculo_ipi  = 0 where base_calculo_ipi = ''
update ##nfe_itens set vl_desconto  = 0 where vl_desconto = ''
update ##nfe_itens set vl_ipi  = 0 where vl_ipi = ''
update ##nfe_itens set pis_base_calculo  = 0 where pis_base_calculo = ''
update ##nfe_itens set pis_percentual  = 0 where pis_percentual = ''
update ##nfe_itens set pis_valor  = 0 where pis_valor = ''
update ##nfe_itens set cofins_base_calculo  = 0 where cofins_base_calculo = ''
update ##nfe_itens set cofins_percentual  = 0 where cofins_percentual = ''
update ##nfe_itens set cofins_valor  = 0 where cofins_valor = ''
update ##nfe_itens set vl_frete  = 0 where vl_frete = ''
update ##nfe_itens set vl_outros  = 0 where vl_outros = ''
update ##nfe_itens set vl_seguro  = 0 where vl_seguro = ''
update ##nfe_itens set base_icms_st  = 0 where base_icms_st = ''
update ##nfe_itens set vl_icms_st  = 0 where vl_icms_st = ''
update ##nfe_itens set pc_icms_st  = 0 where pc_icms_st = ''
update ##nfe_itens set vl_ii = 0 where vl_ii = ''			-- By Edson Lima 2014/04/04T0824 ---> linha incluida
update ##nfe_itens set vTotTrib = 0 where vTotTrib = ''			-- By Edson Lima 2013/05/30T2041 ---> linha incluida
update ##nfe_itens set xPed = 0 where xPed = ''				-- By Edson Lima 2014/12/01T1006 ---> linha incluida
update ##nfe_itens set nItemPed = 0 where nItemPed = ''			-- By Edson Lima 2014/12/01T1006 ---> linha incluida

update ##nfe_itens set  qtd = replace (qtd,',','.')
update ##nfe_itens set  pr_total = replace (pr_total,',','.')
update ##nfe_itens set  pr_unitario = replace (pr_unitario,',','.')
update ##nfe_itens set  pc_icms = replace (pc_icms,',','.')
update ##nfe_itens set  base_calculo_icms = replace (base_calculo_icms,',','.')
update ##nfe_itens set  vl_icms = replace (vl_icms,',','.')
update ##nfe_itens set  reducao_icms = replace (reducao_icms,',','.')
update ##nfe_itens set  pc_ipi = replace (pc_ipi,',','.')
update ##nfe_itens set  base_calculo_ipi = replace (base_calculo_ipi,',','.')
update ##nfe_itens set  vl_desconto = replace (vl_desconto,',','.')
update ##nfe_itens set  vl_ipi = replace (vl_ipi,',','.')
update ##nfe_itens set  pis_base_calculo = replace (pis_base_calculo,',','.')
update ##nfe_itens set  pis_percentual = replace (pis_percentual,',','.')
update ##nfe_itens set  pis_valor = replace (pis_valor,',','.')
update ##nfe_itens set  cofins_base_calculo = replace (cofins_base_calculo,',','.')
update ##nfe_itens set  cofins_percentual = replace (cofins_percentual,',','.')
update ##nfe_itens set  cofins_valor = replace (cofins_valor,',','.')
update ##nfe_itens set  ncm = replace (ncm,'.','')
update ##nfe_itens set  ncm = replace (ncm,'-','')
update ##nfe_itens set  ncm = replace (ncm,'+','')
update ##nfe_itens set  ncm = replace (ncm,'(','')
update ##nfe_itens set  ncm = replace (ncm,')','')
update ##nfe_itens set  vl_outros = replace (vl_outros,',','.')
update ##nfe_itens set  vl_frete = replace (vl_frete,',','.')
update ##nfe_itens set  vl_seguro = replace (vl_seguro,',','.')
update ##nfe_itens set  base_icms_st = replace (base_icms_st,',','.')
update ##nfe_itens set  vl_icms_st = replace (vl_icms_st,',','.')
update ##nfe_itens set  pc_icms_st = replace (pc_icms_st,',','.')
update ##nfe_itens set  vl_ii = replace (vl_ii,',','.')					-- By Edson Lima 2014/04/04T0824 ---> linha incluida
update ##nfe_itens set  vTotTrib = replace (vTotTrib,',','.')				-- By Edson Lima 2013/05/30T2041 ---> linha incluida
update ##nfe_itens set  xPed = replace (xPed, '', '')					-- By Edson Lima 2014/12/01T1006 ---> linha incluida
update ##nfe_itens set  nItemPed = replace (nItemPed, '', '') 				-- By Edson Lima 2014/12/01T1006 ---> linha incluida
update ##nfe_itens set  cfop = replace (cfop,'.','')
update ##nfe_itens set  CodSIMP = replace (CodSIMP,'.','')
	
--apaga nfe_itens
delete t1
from nfe_itens t1
inner join ##nfe_itens t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf 
where t3.chave_nfe is null

insert	nfe_itens
(
    codigo_loja,
	dEmi,
	nNF,
	sequencia,
        Modelo,
        Serie,
	cfop,
	codigo_item,
	descricao,
	qtd,
	unidade,
	pr_total,
	pr_unitario,
	pc_icms,
	base_calculo_icms,
	vl_icms,
	ncm,
	ean,
	pc_ipi,
	vl_ipi,
	base_calculo_ipi,
	vl_desconto,
	cst,
	reducao_icms,
	pis_cst,						-- by Edson Lima ; 02.01.2013 ; 10:45 - linha inclu°da
	pis_base_calculo,
	pis_percentual,
	pis_valor,
	cofins_cst,
	cofins_base_calculo,
	cofins_percentual,
	cofins_valor,
	inf_adicional,
	ind_total,
	vl_frete,
	vl_outros,
	vl_seguro,
	base_icms_st,
	vl_icms_st,
	pc_icms_st,
	cEANTrib,
	CodSIMP,
	vl_ii,							-- By Edson Lima 2014/04/04T0824 ---> linha incluida
	vTotTrib,						-- By Edson Lima 2013/05/30T2041 ---> linha incluida
	xPed,							-- By Edson Lima 2014/12/01T0831 ---> linha incluida
	nItemPed,						-- By Edson Lima 2014/12/01T0831 ---> linha incluida
        cfop,                   			        -- By Edson Lima 2016/01/20T1622 ---> linha incluida
        CodSIMP,                          			-- By Edson Lima 2016/01/20T1622 ---> linha incluida
        CEST                             			-- By Edson Lima 2016/01/20T1622 ---> linha incluida
	)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.sequencia,
        t1.Modelo,
        t1.Serie,
	t1.cfop,
	t1.codigo_item,
	t1.descricao,
	cast(t1.qtd as numeric(12,4)),
	t1.unidade,
	cast(t1.pr_total as numeric(12,2)),
	cast(t1.pr_unitario as numeric(12,4)),
	cast(t1.pc_icms as numeric(4,2)),
	cast(t1.base_calculo_icms as numeric(12,2)),
	cast(t1.vl_icms as numeric(12,2)),
	left(t1.ncm,8) as ncm,
	t1.ean,
	cast(t1.pc_ipi as numeric(4,2)),
	cast(t1.vl_ipi as numeric(12,2)),
	cast(t1.base_calculo_ipi as numeric(12,2)),
	cast(t1.vl_desconto as numeric(12,2)),
	t1.cst,
	t1.reducao_icms,
	t1.pis_cst,					-- by Edson Lima ; 02.01.2013 ; 10:45 - linha inclu°da
	cast(t1.pis_base_calculo as numeric(12,2)),
	cast(t1.pis_percentual as numeric(4,2)),
	cast(t1.pis_valor as numeric(12,2)),
	t1.cofins_cst,
	cast(t1.cofins_base_calculo as numeric(12,2)),
	cast(t1.cofins_percentual as numeric(4,2)),
	cast(t1.cofins_valor as numeric(12,2)),
	substring(t1.inf_adicional,1,120),
	t1.ind_total,
	cast(t1.vl_frete as numeric(12,2)),
	cast(t1.vl_outros as numeric(12,2)),
	cast(t1.vl_seguro as numeric(12,2)),
	cast(t1.base_icms_st as numeric(12,2)),
	cast(t1.vl_icms_st as numeric(12,2)),
	cast(t1.pc_icms_st as numeric(5,2)),
	t1.cEANTrib,
	t1.CodSIMP,
	cast(t1.vl_ii as numeric(12,2)),		-- By Edson Lima 2014/04/04T0824 ---> linha incluida
	cast(t1.vTotTrib as numeric(12,2)),		-- By Edson Lima 2013/05/30T2041 ---> linha incluida
	t1.xPed,					-- By Edson Lima 2014/12/01T0831 ---> linha incluida
	t1.nItemPed,					-- By Edson Lima 2014/12/01T0831 ---> linha incluida
        t1.cfop,               			        -- By Edson Lima 2016/01/20T1622 ---> linha incluida
        t1.CodSIMP,                    			-- By Edson Lima 2016/01/20T1622 ---> linha incluida
        t1.CEST                        			-- By Edson Lima 2016/01/20T1622 ---> linha incluida

from ##nfe_itens t1
left join nfe_itens t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf and t1.sequencia = t2.sequencia
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros itens de nfe da DI
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_itens_DI set
	dEmi = dbo.fn_data(dEmi), data_DI = dbo.fn_data(data_DI), data_desembaraco = dbo.fn_data(data_desembaraco)

--apaga nfe_itens_di
delete t1
from nfe_itens_di t1
inner join ##nfe_itens_di t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf 
where t3.chave_nfe is null

insert	nfe_itens_di
(
    codigo_loja,
	dEmi,
	nNF,
	sequencia,
	numero_di,
	data_DI,
        Modelo,
        Serie,
	local_desembaraco,
	uf_desembaraco,
	data_desembaraco,
	codigo_exportador
	)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.sequencia,
	t1.numero_di,
        t1.Modelo,
        t1.Serie,
	t1.data_DI,
	t1.local_desembaraco,
	t1.uf_desembaraco,
	t1.data_desembaraco,
	t1.codigo_exportador

from ##nfe_itens_DI t1
left join nfe_itens_DI t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf and t1.sequencia = t2.sequencia and t1.numero_di = t2.numero_di
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros itens de nfe da DI-ADI
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_itens_DI_ADI set
	dEmi = dbo.fn_data(dEmi)

update ##nfe_itens_DI_ADI set  valor_desconto = 0 where valor_desconto is null
update ##nfe_itens_DI_ADI set  valor_desconto = 0 where valor_desconto = ''
update ##nfe_itens_DI_ADI set  valor_desconto = replace (valor_desconto,',','.')

--apaga nfe_itens_di
delete t1
from nfe_itens_DI_ADI t1
inner join ##nfe_itens_di_adi t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf 
where t3.chave_nfe is null

insert	nfe_itens_DI_ADI
(
    codigo_loja,
	dEmi,
	nNF,
	sequencia,
	numero_di,
	numero_ADI,
	sequencia_ADI,
        Modelo,
        Serie,
	codigo_fabricante,
	valor_desconto
	)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.sequencia,
	t1.numero_di,
	t1.numero_ADI,
	t1.sequencia_ADI,
        t1.Modelo,
        t1.Serie,
	t1.codigo_fabricante,
	cast(t1.valor_desconto as numeric(12,2))

from ##nfe_itens_DI_adi t1
left join nfe_itens_DI_adi t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf and t1.sequencia = t2.sequencia and t1.numero_di = t2.numero_di and t1.numero_ADI = t2.numero_ADI and t1.sequencia_ADI = t2.sequencia_ADI
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros faturas
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_faturas set
	dEmi = dbo.fn_data(dEmi)

update ##nfe_faturas set vl_original = 0 where vl_original = ''
update ##nfe_faturas set vl_desconto = 0 where vl_desconto = ''
update ##nfe_faturas set vl_liquido = 0 where vl_liquido = ''

update ##nfe_faturas set  vl_original = replace (vl_original,',','.')
update ##nfe_faturas set  vl_desconto = replace (vl_desconto,',','.')
update ##nfe_faturas set  vl_liquido = replace (vl_liquido,',','.')

delete t1
from nfe_faturas t1
inner join ##nfe_faturas t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_faturas
(
    codigo_loja,
	dEmi,
	nNF,
	num_fatura,
        Modelo,
        Serie,
	vl_original,
	vl_desconto,
	vl_liquido)select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.num_fatura,
        t1.Modelo,
        t1.Serie,
	cast(t1.vl_original as numeric(12,2)),
	cast(t1.vl_desconto as numeric(12,2)),
	cast(t1.vl_liquido  as numeric(12,2))

from ##nfe_faturas t1
left join nfe_faturas t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf and t1.num_fatura = t2.num_fatura
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros duplicatas
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_duplicatas set
	dEmi = dbo.fn_data(dEmi),
	dVenc = dbo.fn_data(dVenc)

update ##nfe_duplicatas set valor = 0 where valor = ''

update ##nfe_duplicatas set  valor = replace (valor,',','.')
	
delete t1
from nfe_duplicatas t1
inner join ##nfe_duplicatas t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_duplicatas
(
    codigo_loja,
	dEmi,
	nNF,
	num_duplicata,
        Modelo,
        Serie,
	dvenc,
	valor) 
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.num_duplicata,
        t1.Modelo,
        t1.Serie,
	t1.dvenc,
	cast(t1.valor as numeric(12,2)) 

from ##nfe_duplicatas t1
left join nfe_duplicatas t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf and t1.num_duplicata = t2.num_duplicata
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros volume
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_volume set
	dEmi = dbo.fn_data(dEmi)
	
update ##nfe_volume set qtd_volume = 0 where qtd_volume = ''
update ##nfe_volume set peso_liquido = 0 where peso_liquido = ''
update ##nfe_volume set peso_bruto = 0 where peso_bruto = ''

update ##nfe_volume set  qtd_volume = replace (qtd_volume,',','.')
update ##nfe_volume set  peso_liquido = replace (peso_liquido,',','.')
update ##nfe_volume set  peso_bruto = replace (peso_bruto,',','.')

delete t1
from nfe_volume t1
inner join ##nfe_volume t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_volume
(
    codigo_loja,
	dEmi,
	nNF,
        Modelo,
        Serie,
	qtd_volume,
	especie,
	marca,
	numero_volume,
	peso_liquido,
	peso_bruto)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
        t1.Modelo,
        t1.Serie,
	t1.qtd_volume,
	t1.especie,
	t1.marca,
	t1.numero_volume,
	cast(t1.peso_liquido as numeric(12,2)),
	cast(t1.peso_bruto as numeric(12,2))

from ##nfe_volume t1
left join nfe_volume t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros veiculo
----------------------------------------------------------------------------------------
--acerta datas
update	##nfe_veiculo set
	dEmi = dbo.fn_data(dEmi)
	
update ##nfe_veiculo set  placa = replace (placa,'-','')
	
delete t1
from nfe_veiculo t1
inner join ##nfe_veiculo t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_veiculo
(
    codigo_loja,
	dEmi,
	nNF,
        Modelo,
        Serie,
	veiculo,
	placa,
	uf,
	rntc)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
        t1.Modelo,
        t1.Serie,
	t1.veiculo,
	t1.placa,
	t1.uf,
	t1.rntc

from ##nfe_veiculo t1
left join nfe_veiculo t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere nota referenciada: nfe_referenciada_mod1 
----------------------------------------------------------------------------------------
delete t1
from nfe_referenciada_mod1 t1
inner join ##nfe_referenciada_mod1 t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_referenciada_mod1
(
    codigo_loja,
	dEmi,
	nNF,
	UF,
	AAMM,
	CNPJ,
	Modelo,
	Serie,
	r_nNF)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.UF,
	t1.AAMM,
	t1.CNPJ,
	t1.Modelo,
	t1.Serie,
	t1.r_nNF
from ##nfe_referenciada_mod1 t1
left join nfe_referenciada_mod1 t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere nota referenciada: nfe_referenciada_prural 
----------------------------------------------------------------------------------------
delete t1
from nfe_referenciada_prural t1
inner join ##nfe_referenciada_prural t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_referenciada_prural
(
    codigo_loja,
	dEmi,
	nNF,
	UF,
	AAMM,
	CNPJ,
	insc_estadual,
	Modelo,
	Serie,
	r_nNF)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.UF,
	t1.AAMM,
	t1.CNPJ,
	t1.insc_estadual,
	t1.Modelo,
	t1.Serie,
	t1.r_nNF
from ##nfe_referenciada_prural t1
left join nfe_referenciada_prural t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere nota referenciada: nfe_referenciada_cupon 
----------------------------------------------------------------------------------------
--acerta campos
update	##nfe_referenciada_cupon set
	dEmi = dbo.fn_data(dEmi)

delete t1
from nfe_referenciada_cupon t1
inner join ##nfe_referenciada_cupon t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
inner join nfe t3 on t1.codigo_loja = t3.codigo_loja and t1.demi = t3.demi and t1.nnf = t3.nnf
where t3.chave_nfe is null

insert	nfe_referenciada_cupon
(
    codigo_loja,
	dEmi,
	nNF,
	Modelo,
        Serie,
	ECF,
	COO)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.Modelo,
        t1.Serie,
	t1.ECF,
	t1.COO
from ##nfe_referenciada_cupon t1
left join nfe_referenciada_cupon t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf 
where t2.codigo_loja is null

set @retorno = ''

commit

return

VAZIO:
return
































GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO




























CREATE    proc [dbo].[sp_insere_notas_inutilizadas] @codigo_loja int,@nota bigint,@ano int,@modelo int,@serie int,@justificativa varchar(255)
as

if object_id('notas_inutilizadas') = 0 begin
	create table notas_inutilizadas (
	codigo_loja      int,
	nota             int,
	ano              int,
	Modelo           int,
	Serie            int,
	justificativa    varchar(255),
	data_inclusao    datetime
	)
end

insert into notas_inutilizadas (
	codigo_loja,
	nota,
	ano,
	Modelo,
	Serie,
	justificativa,
	data_inclusao)
values (
@codigo_loja,
@nota,
@ano,
@Modelo,
@Serie,
@justificativa,
GETDATE())




























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO




































CREATE               proc [dbo].[sp_le_nfe] @codigo_loja int, @nota varchar(09),@demi as datetime, @Modelo char(2), @Serie char(3)
as

set nocount on

-- Gerando data da NFCe quando o modelo for igual a 65 - by Renildo 2015-12-9

if @Modelo = '65'
 update nfe
  set DatNFCe = Cast( Cast( dEmi As Varchar(11) ) + ' ' + Cast( DatePart( hh, GetDate() ) As Varchar(02) ) + ':' +
                                                          Cast( DatePart( mi, GetDate() ) As Varchar(02) ) + ':' +
                                                          Cast( DatePart( ss, GetDate() ) As Varchar(02) ) As DateTime )
 where codigo_loja    = @codigo_loja and
       nnf            = @nota        and
       dEmi           = @demi        and
       Modelo         = @Modelo      and
       Serie          = @Serie       and
      (DatNFCe       is null         or    CalcHoraNFCe = 'S')



-- Selecionando notas

Select distinct
 t1.natOp                                       as nfe_natOp
,t1.Modelo                                      as nfe_Modelo
,t1.nNF                                         as nfe_nnf
,t1.dEmi                                        as nfe_demi
,t1.DatNFCe                                     as nfe_DatNFCe
,t1.Serie                                       as nfe_Serie
,t1.dSaiEnt                                     as nfe_dSaiEnt
,t1.tpNF                                        as nfe_tpNF
,t1.indPag                                      as nfe_indPag
,t1.verProc                                     as nfe_verProc
,t1.base_calculo_icms                           as nfe_base_calculo_icms
,t1.vl_icms                                     as nfe_vl_icms
,t1.base_calculo_st                             as nfe_base_calculo_st
,t1.vl_st                                       as nfe_vl_st
,t1.total_nf                                    as nfe_total_nf
,t1.total_produtos                              as nfe_total_produtos
,t1.vl_frete                                    as nfe_vl_frete
,t1.vl_seguro                                   as nfe_vl_seguro
,t1.vl_desconto                                 as nfe_vl_desconto
,t1.vl_ipi                                      as nfe_vl_ipi
,t1.vl_pis                                      as nfe_vl_pis
,t1.vl_cofins                                   as nfe_vl_cofins
,t1.vl_outros                                   as nfe_vl_outros
,t1.tipo_frete                                  as nfe_tipo_frete
,t1.data_hora_recebimento                       as nfe_data_hora_recebimento
,t1.inf_complementar                            as nfe_inf_complementar
,t1.inf_fisco                                   as nfe_inf_fisco
,t1.finalidade                                  as nfe_finalidade
,t1.vl_ii                                       as nfe_vl_ii
,t1.vTotTrib                                    as vTotTrib		   -- By Edson Lima 2013/05/30T2041 ---> linha incluida
,t1.DatNFCe                                     as nfe_DatNFCe             -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                as nfe_nProt_CCe           -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                    as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                     as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.vBCUFDest	                                as nfe_vBCUFDest           -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.pFCPUFDest	                                as nfe_pFCPUFDest          -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.pICMSUFDest	                                as nfe_pICMSUFDest         -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.pICMSInter	                                as nfe_pICMSInter          -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.pICMSInterPart                              as nfe_pICMSInterPart      -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vFCPUFDest	                                as nfe_vFCPUFDest          -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vICMSUFDest	                                as nfe_vICMSUFDest         -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vICMSUFRemet                                as nfe_vICMSUFRemet        -- by Edson Lima ; 26.04.2016 ; 16:30

,t0.codigo_loja                                 as emi_codigo_loja
,t0.razao_social                                as emi_razao_social
,t0.nome_fantasia                               as emi_nome_fantasia
,t0.cnpj                                        as emi_cnpj
,t0.endereco                                    as emi_endereco
,t0.complemento                                 as emi_complemento
,t0.numero                                      as emi_numero
,t0.bairro                                      as emi_bairro
,t0.cep                                         as emi_cep
,t0.codigo_municipio                            as emi_codigo_municipio
,t0.municipio                                   as emi_municipio
,t0.fone                                        as emi_fone
,t0.codigo_uf                                   as emi_codigo_uf
,t0.uf                                          as emi_uf
,t0.insc_estadual                               as emi_insc_estadual
,t0.suframa                                     as emi_suframa
,t0.codigo_pais                                 as emi_codigo_pais
,t0.nome_pais                                   as emi_nome_pais
,t0.Certificado_NumSerie                        as emi_Certificado_NumSerie
 
,t2.razao_social                                as des_razao_social
,t2.cnpj                                        as des_cnpj
,t2.endereco                                    as des_endereco
,t2.complemento                                 as des_complemento
,t2.numero                                      as des_numero
,t2.bairro                                      as des_bairro
,t2.cep                                         as des_cep
,t2.codigo_municipio                            as des_codigo_municipio
,t2.municipio                                   as des_municipio
,t2.fone                                        as des_fone
,t2.codigo_uf                                   as des_codigo_uf
,t2.uf                                          as des_uf
,t2.insc_estadual                               as des_insc_estadual
,t2.suframa                                     as des_suframa
,t2.codigo_pais                                 as des_codigo_pais
,t2.nome_pais                                   as des_nome_pais
,t2.email                                       as des_email               -- By Edson Lima 19.3.2013 --> Incluida
,t2.indIEDest                                   as des_indIEDest           -- By Edson LIma 22.1.2016 --> Incluida 
 
,isnull(t3.razao_social,'')                     as tra_razao_social
,isnull(t3.cnpj,'')                             as tra_cnpj
,isnull(t3.endereco,'')                         as tra_endereco
,isnull(t3.complemento,'')                      as tra_complemento
,isnull(t3.numero,'')                           as tra_numero
,isnull(t3.bairro,'')                           as tra_bairro
,isnull(t3.cep,'')                              as tra_cep
,isnull(t3.codigo_municipio,'')                 as tra_codigo_municipio
,isnull(t3.municipio,'')                        as tra_municipio
,isnull(t3.fone,'')                             as tra_fone
,isnull(t3.codigo_uf,'0')                       as tra_codigo_uf
,isnull(t3.uf,'')                               as tra_uf
,isnull(t3.insc_estadual,'')                    as tra_insc_estadual
 
,isnull(t4.qtd_volume,0)                        as vol_qtd_volume
,isnull(t4.especie,'')                          as vol_especie
,isnull(t4.marca,'')                            as vol_marca
,isnull(t4.numero_volume,0)                     as vol_numero_volume
,isnull(t4.peso_liquido,0)                      as vol_peso_liquido
,isnull(t4.peso_bruto,0)                        as vol_peso_bruto
 
,isnull(t5.veiculo,'')                          as vei_veiculo
,isnull(t5.placa,'')                            as vei_placa
,isnull(t5.uf,'')                               as vei_uf
,isnull(t5.rntc,'')                             as vei_rntc
 
from nfe t1
inner join emitente       t0 on t1.codigo_loja = t0.codigo_loja
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
left  join transportadora t3 on t1.codigo_transportadora = t3.codigo
left  join nfe_volume     t4 on t1.codigo_loja = t4.codigo_loja and t1.demi = t4.demi and t1.nnf = t4.nnf and t1.Modelo = t4.Modelo and cast(t1.Serie as integer) = cast(t4.Serie as integer)
left  join nfe_veiculo    t5 on t1.codigo_loja = t5.codigo_loja and t1.demi = t5.demi and t1.nnf = t5.nnf and t1.Modelo = t5.Modelo and cast(t1.Serie as integer) = cast(t5.Serie as integer)
where t1.codigo_loja = @codigo_loja
and t1.nnf    = @nota
and t1.dEmi   = @demi
and t1.Modelo = @Modelo
and t1.Serie  = cast(@Serie as integer)






GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





























CREATE     proc [dbo].[sp_ler_nfe_textos]  @gCamTxt varchar(400)  
as

set nocount on

declare @retorno varchar(100) 
declare @dir nvarchar(400)
declare @cmd nvarchar(400)
declare @pasta varchar(400)
declare @resp int

-------------somente para lembrar
------EXEC sp_configure 'show advanced options', 1
------RECONFIGURE
------EXEC sp_configure ëxp_cmdshellí, 1
------RECONFIGURE;
------GO

set @retorno = ''

set @dir = rtrim(@gCamTxt)   -- -- by Edson Lima ; 4.4.2012 ; 11:22 ; Alterado - Antes tinha um texto com o caminho do diretÛrio onde deveria achar os arquivos

if (object_id('tempdb..#ArquivosPasta') > 0) drop table #ArquivosPasta
create table #ArquivosPasta (Arquivo varchar(400) null)

set @cmd = 'dir  ' + @dir + '*. /w /b' +  ' > ' + @Dir + 'ArquivosPasta.txt'
exec @resp = master..xp_cmdshell @cmd , no_output

set @cmd = 'bulk insert #ArquivosPasta ' + ' from  ''' + @Dir  + 'ArquivosPasta.txt''' + ' with (   codepage  = ''raw'')'
exec master..xp_cmdshell @cmd, no_output
exec sp_executesql @cmd

delete from critica_importacao

declare @arquivo varchar(50)
declare curI cursor read_only for
select arquivo from #ArquivosPasta

open curI

fetch next from curI into @arquivo
while (@@fetch_status <> -1)
	begin
		if (@@fetch_status <> -2)
		begin

			set @pasta = ''
			set @pasta = @dir + @arquivo + '\'
			
			--BEGIN TRY
			exec sp_importa_nfe @pasta, @retorno output
			if @retorno <> '' begin
			  insert into critica_importacao
			  select @retorno as retorno
			  break
			  return
			end
			
			set @cmd = 'mkdir  ' + @pasta + 'bkp'
			exec @resp = master..xp_cmdshell @cmd , no_output
			set @cmd = 'copy  ' + @pasta + '*.txt ' + @pasta + 'bkp'
			exec @resp = master..xp_cmdshell @cmd , no_output
			
			set @cmd = 'del  ' + @pasta + '*.txt'
			exec @resp = master..xp_cmdshell @cmd , no_output
			if   @resp <> 0 begin
			  delete from critica_importacao
			  insert into critica_importacao
			  select 'Erro ao deletar arquivos: ' + cast(@resp as varchar) as retorno
			  break
			  return
			end

		end
		fetch next from curI into @arquivo
	end

close curI
deallocate curI




























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO















































CREATE                                   proc [dbo].[sp_nfe_a_serem_geradas] @codigo_loja int, @Modelo char(2), @Serie char(3)
as

set nocount on

Select distinct
 ''                                              as checado
,t1.natOp                                        as nfe_natOp
,t1.Serie                                        as nfe_Serie              -- By Edson Lima 3.2.2012 ---> linha incluida
,t1.nNF                                          as nfe_nnf
,t1.Modelo                                       as nfe_Modelo
,t1.dEmi                                         as nfe_demi               -- By Edson Lima 3.2.2012 ---> linha incluida  --> Antes --> ,Cast( t1.dEmi As Datetime )                         as nfe_demi
,t1.total_nf                                     as nfe_total_nf
,t1.protocolo                                    as nfe_protocolo
,t1.recibo                                       as nfe_recibo
,t1.chave_nfe                                    as nfe_chave_nfe
,t1.codigo_destinatario                          as nfe_codigo_destinatario
,t1.situacao                                     as nfe_situacao
,t1.motivo                                       as nfe_motivo 
,t1.data_hora_recebimento                        as nfe_data_hora_recebimento
,t1.nr_dpec                                      as nfe_nr_dpec
,t1.DatNFCe                                      as nfe_DatNFCe            -- by Edson Lima ; 01.01.2016 ; 08:00
,t1.CalcHoraNFCe                                 as nfe_nProt_CCe          -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                     as nfe_indFinal           -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres            -- by Edson Lima ; 21.01.2016 ; 17:28

,t2.razao_social                                 as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
      else dbo.formatarCPF(t2.cnpj)   end	 as des_cnpj

from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
--left  join notas_inutilizadas t3 on  t3.codigo_loja = t1.codigo_loja and t3.nota = t1.nnf 
where (t1.codigo_loja          = @codigo_loja)
and   (t1.Modelo               = @Modelo or @Modelo = '')                  -- by Edson Lima ; 21.01.2016 ; 17:28
and   (t1.Serie                = @Serie or @Serie = '')                    -- by Edson Lima ; 11.02.2016 ; 17:37
and
    ( ( (t1.situacao <> '100') and (t1.situacao <> '150')  and (t1.situacao <> '101') and (t1.situacao <> '135')  and
        (t1.situacao <> '136') and (t1.situacao <> '151')  and (t1.situacao <> '155') and (t1.situacao <> 'CONT') and
        (t1.situacao <> 'FSDA')and (t1.situacao <> '124')  and (t1.situacao <> '301') and (t1.situacao <> '302')  and
        (t1.situacao <> '110') and (t1.situacao <> 'EPEC') and (t1.situacao <> 'OFFL'))
or
        (t1.situacao is null) )

order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                              -- By Edson Lima 11.2.2016




























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO







































CREATE                   proc [dbo].[sp_nfe_canceladas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3)
as

set nocount on

Select distinct
''                                               as Checado
,t1.natOp                                        as nfe_natOp
,t1.codigo_loja                                  as nfe_codigo_loja        -- By Edson Lima 19.3.2013 --> Incluida
,t1.Serie                                        as nfe_Serie              -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                          as nfe_nnf
,t1.Modelo                                       as nfe_Modelo
,t1.dEmi                                         as nfe_demi
,t1.total_nf                                     as nfe_total_nf
,t1.protocolo                                    as nfe_protocolo
,t1.recibo                                       as nfe_recibo
,t1.chave_nfe                                    as nfe_chave_nfe
,t1.codigo_destinatario                          as nfe_codigo_destinatario
,t1.situacao                                     as nfe_situacao
,t1.motivo                                       as nfe_motivo 
,t1.data_hora_recebimento                        as nfe_data_hora_recebimento
,t1.nr_dpec                                      as nfe_nr_dpec
,t1.DatNFCe                                      as nfe_DatNFCe            -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                 as nfe_nProt_CCe          -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                     as nfe_indFinal           -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres            -- by Edson Lima ; 21.01.2016 ; 17:28
 
,t2.razao_social                                 as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj) end      as des_cnpj

from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
where (t1.codigo_loja          = @codigo_loja)
and   (t1.chave_nfe           is not null)                                 -- By Edson Lima 6.2.2012 --->  Linha Inserida
and   (t1.dEmi                >= @data_inicio or @nota <> 0)               -- By Edson Lima 6.2.2012 --->  Linha Inserida
and   (t1.dEmi                <= @data_final or @nota <> 0)                -- By Edson Lima 6.2.2012 --->  Linha Inserida
and   (t1.nnf                  = @nota or @nota = 0)                       -- By Edson Lima 6.2.2012 --->  Linha Inserida
and   (t1.codigo_destinatario  = @destinatario or @destinatario = 0)       -- By Edson Lima ; 2012/03/06 ---> filtra por destinatario
and   (t1.Modelo               = @Modelo or @Modelo = '')                  -- By Edson Lima ; 2015/11/27 ---> filtra por Modelo
and   (t1.Serie                = @Serie or @Serie = '')                    -- By Edson Lima ; 2016/02/11 ---> filtra por Serie
and   ( (IsNull(t1.situacao, '') = '101') or (IsNull(t1.situacao, '') = '135') or (IsNull(t1.situacao, '') = '136') or
        (IsNull(t1.situacao, '') = '151') or (IsNull(t1.situacao, '') = '155') ) 
                                                                           -- by Edson ; 2013/03/19 ; 14:49 ; o Status 101 continua somente para efeito de compatibilidade 
order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                              -- By Edson Lima 11.2.2016
























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS OFF 
GO






































CREATE                  proc [dbo].[sp_nfe_denegadas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3)
as

set nocount on

Select distinct
''                                                      as Checado
,t1.natOp                                               as nfe_natOp
,t1.Serie                                               as nfe_Serie 
,t1.nNF                                                 as nfe_nnf
,t1.Modelo                                              as nfe_Modelo
,t1.dEmi                                                as nfe_demi
,t1.total_nf                                            as nfe_total_nf
,t1.protocolo                                           as nfe_protocolo
,t1.recibo                                              as nfe_recibo
,t1.chave_nfe                                           as nfe_chave_nfe
,t1.codigo_destinatario                                 as nfe_codigo_destinatario
,t1.situacao                                            as nfe_situacao
,t1.motivo                                              as nfe_motivo 
,t1.data_hora_recebimento                               as nfe_data_hora_recebimento
,t1.nr_dpec                                             as nfe_nr_dpec
,t1.DatNFCe                                             as nfe_DatNFCe             -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                        as nfe_nProt_CCe           -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                            as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                             as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
 
,t2.razao_social                                        as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj) end             as des_cnpj

from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
where t1.codigo_loja = @codigo_loja
and t1.chave_nfe is not null                         
--and (t1.dEmi >= @data_inicio or @nota <> 0)          
--and (t1.dEmi <= @data_final or @nota <> 0)           
and (t1.nnf                    = @nota         or @nota = 0)  
and (t1.codigo_destinatario    = @destinatario or @destinatario = 0)      -- By Edson Lima ; 2012/03/06 ---> filtra por destinatario
and (t1.Modelo                 = @Modelo or @Modelo = '')                 -- By Edson Lima ; 2015/11/27 ---> filtra por Modelo
and (t1.Serie                  = @Serie or @Serie = '')                   -- By Edson Lima ; 2015/11/27 ---> filtra por Serie
and ( (IsNull(t1.situacao, '') = '301')        or (IsNull(t1.situacao, '') = '302') or (IsNull(t1.situacao, '') = '110') )

order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                        -- By Edson Lima 11.2.2016























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

















































CREATE                        proc [dbo].[sp_nfe_em_contingencia] @codigo_loja int, @Modelo char(2), @Serie char(3)
as

set nocount on

Select distinct
 ''                                             as checado
,t1.natOp                                       as nfe_natOp
,t1.Serie                                       as nfe_Serie               -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                         as nfe_nnf
,t1.Modelo                                      as nfe_Modelo
,t1.dEmi                                        as nfe_demi
,t1.total_nf                                    as nfe_total_nf
,t1.protocolo                                   as nfe_protocolo
,t1.recibo                                      as nfe_recibo
,t1.chave_nfe                                   as nfe_chave_nfe
,t1.codigo_destinatario                         as nfe_codigo_destinatario
,t1.situacao                                    as nfe_situacao
,t1.motivo                                      as nfe_motivo 
,t1.data_hora_recebimento                       as nfe_data_hora_recebimento
,t1.nr_dpec                                     as nfe_nr_dpec
,t1.DatNFCe                                     as nfe_DatNFCe             -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                as nfe_nProt_CCe           -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                    as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                     as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
 
,t2.razao_social			        as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj) end     as des_cnpj
from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
--left  join notas_inutilizadas t3 on  t3.codigo_loja = t1.codigo_loja and t3.nota = t1.nnf 
where (t1.codigo_loja          = @codigo_loja)
and   (t1.Modelo               = @Modelo or @Modelo = '')                  -- By Edson Lima 27.11.2015 ---> filtra pelo Modelo
and   (t1.Serie                = @Serie or @Serie = '')                    -- By Edson Lima 11.02.2016 ---> filtra pelo Serie
and ( (IsNull(t1.situacao, '') = '124')  or (IsNull(t1.situacao, '') = 'CONT') or (IsNull(t1.situacao, '') = 'FSDA')
   or (IsNull(t1.situacao, '') = 'EPEC') or (IsNull(t1.situacao, '') = 'OFFL') )
--and t3.nota is null

order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                        -- By Edson Lima 11.2.2016 






























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO
































CREATE       proc [dbo].[sp_nfe_inutilizadas] @codigo_loja int, @Modelo int, @Serie int
as

set nocount on

Select distinct
 t3.codigo_loja						-- by EL 22.2.2012 - linha incluida
,t3.Nota                                as nfe_nnf
,t3.data_inclusao                       as nfe_demi
,t3.justificativa
,t3.ano
,t3.modelo
,t3.serie

from notas_inutilizadas t3
where (t3.codigo_loja = @codigo_loja)			-- by EL 22.2.2012 - linha incluida
and   (t3.Modelo      = @Modelo or @Modelo = 0)         -- by EL 27.11.2015 - filtra pelo Modelo
and   (t3.Serie       = @Serie or @Serie = 0)           -- by EL 11.02.2016 - filtra pelo Serie

order by t3.data_inclusao, t3.modelo, t3.Serie






























GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO















































CREATE                       proc [dbo].[sp_nfe_transmitidas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3)
as

set nocount on

Select distinct
 ''                                              as checado
,t1.natOp                                        as nfe_natOp
,t1.codigo_loja                                  as nfe_codigo_loja         -- By Edson Lima 19.3.2013 --> Incluida
,t1.Serie                                        as nfe_Serie               -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                          as nfe_nnf
,t1.Modelo                                       as nfe_Modelo
,t1.dEmi                                         as nfe_demi
,t1.total_nf                                     as nfe_total_nf
,t1.protocolo                                    as nfe_protocolo
,t1.recibo                                       as nfe_recibo
,t1.chave_nfe                                    as nfe_chave_nfe
,t1.codigo_destinatario                          as nfe_codigo_destinatario
,t1.situacao                                     as nfe_situacao
,t1.motivo                                       as nfe_motivo 
,t1.data_hora_recebimento                        as nfe_data_hora_recebimento
,t1.nr_dpec                                      as nfe_nr_dpec
,t1.evento_CCe                                   as nfe_evento_CCe          -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.xCorrecao_CCe                                as nfe_xCorrecao_CCe       -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.cStat_CCe                                    as nfe_cStat_CCe           -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.xMotivo_CCe                                  as nfe_xMotivo_CCe         -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.dhRegEvento_CCe                              as nfe_dhRegEvento_CCe     -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.nProt_CCe                                    as nfe_nProt_CCe           -- by Edson Lima ; 04.01.2013 ; 08:00
,t1.DatNFCe                                      as nfe_DatNFCe             -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                 as nfe_nProt_CCe           -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                     as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28

,t2.razao_social				 as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)
	  else dbo.formatarCPF(t2.cnpj) end      as des_cnpj
from nfe t1

inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo

where t1.codigo_loja         = @codigo_loja
and t1.chave_nfe            is not null
and (t1.dEmi                >= @data_inicio or @nota <> 0)
and (t1.dEmi                <= @data_final or @nota <> 0)
and (t1.nnf                  = @nota or @nota = 0)
and (t1.codigo_destinatario  = @destinatario or @destinatario = 0)   -- By Edson Lima ; 2012/03/06 ---> filtra por destinatario
and (t1.Modelo               = @Modelo or @Modelo = '')              -- By Edson Lima ; 2015/11/27 ---> filtra por Modelo
and (t1.Serie                = @Serie or @Serie = '')                -- By Edson Lima ; 2016/02/11 ---> filtra por Serie
and ( (IsNull(t1.situacao, '') = '100') or (IsNull(t1.situacao, '') = '150') )

order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                        -- By Edson Lima 11.2.2016 













GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



CREATE function [dbo].[fn_data] (@data varchar(10))
returns varchar(10)
as
begin	
    set @data = replace(@data,'-','/')
	if substring (@data,3,1) <> '/' set @data = '0' + @data
	if substring (@data,6,1) <> '/' set @data = substring(@data,1,3) + '0' + right(@data,6)

	set @data = right(@data,4) +'/'+ substring(@data,4,2) +'/'+ left(@data,2)
	if isdate(@data) = 0 set @data = '1900/01/01'
	
	set @data = replace (@data,'/','-')
	return @data
end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



create function [dbo].[formatarCNPJ](@cnpj char(14))                        
                                returns char(18)                as                begin                        declare @retorno varchar(18)                        set @retorno = substring(@cnpj,1,2) + '.' + substring(@cnpj,3,3) + '.' + substring(@cnpj,6,3) + '/' + substring(@cnpj,9,4) + '-' + substring(@cnpj,13,2)                        return @retorno                end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

SET QUOTED_IDENTIFIER ON 
GO
SET ANSI_NULLS ON 
GO



create function [dbo].[formatarCPF](@cpf char(11))                         returns char(14)                as                begin                         declare @retorno varchar(14)                         set @retorno = substring(@cpf,1,3) + '.' + substring(@cpf,4,3) + '.' + substring(@cpf,7,3) + '-' + substring(@cpf,10,2)                          return @retorno                end



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

