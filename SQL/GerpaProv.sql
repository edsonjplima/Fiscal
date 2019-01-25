USE [Gerpa]
GO
/****** Object:  Table [dbo].[ActAdt]    Script Date: 17/04/2018 16:55:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActAdt](
	[CodEmp] [int] NOT NULL,
	[CodAdt] [int] NOT NULL,
	[CodAct] [int] IDENTITY(1,1) NOT NULL,
	[DatAct] [datetime] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValAct] [decimal](12, 2) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
 CONSTRAINT [PK_ActAdt] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAdt] ASC,
	[CodAct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgcOrd]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgcOrd](
	[CodEmp] [int] NOT NULL,
	[CodOrd] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[ValCms] [decimal](12, 2) NULL,
 CONSTRAINT [PK_AgcOrd] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrd] ASC,
	[CodFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AgcRsv]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgcRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[ValCms] [decimal](12, 2) NULL,
 CONSTRAINT [PK_AgcRsv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC,
	[CodFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlqPed]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlqPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[TipBlq] [varchar](6) NOT NULL,
	[DatBlq] [datetime] NOT NULL,
	[HorBlq] [char](5) NOT NULL,
	[DscBlq] [varchar](250) NOT NULL,
	[PosBlq] [char](1) NOT NULL,
	[TipLib] [char](1) NULL,
	[DatLib] [datetime] NULL,
	[HorLib] [char](5) NULL,
	[Login] [varchar](15) NULL,
 CONSTRAINT [PK_BlqPed] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[TipBlq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChaPro]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChaPro](
	[CodEmp] [int] NOT NULL,
	[CodCha] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ObsPro] [varchar](75) NULL,
	[QtdPro] [float] NOT NULL,
	[ValPro] [float] NULL,
	[ValDes] [float] NOT NULL,
	[ValSug] [float] NULL,
 CONSTRAINT [PK_ChaPro] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCha] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChaSrv]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChaSrv](
	[CodEmp] [int] NOT NULL,
	[CodCha] [int] NOT NULL,
	[CodSrv] [int] NOT NULL,
	[ObsSrv] [varchar](75) NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NOT NULL,
	[QtdSrv] [int] NOT NULL,
 CONSTRAINT [PK_ChaSrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCha] ASC,
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliCnt]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliCnt](
	[CodCli] [int] NOT NULL,
	[Contato] [varchar](75) NOT NULL,
	[CodPrf] [int] NULL,
	[FoneD] [varchar](25) NULL,
	[DatNas] [datetime] NULL,
	[Email] [varchar](75) NULL,
	[Comunicador] [varchar](75) NULL,
	[SeqCnt] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_TabCliCnt] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[Contato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliCul]    Script Date: 17/04/2018 16:55:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliCul](
	[CodCli] [int] NOT NULL,
	[CodSfr] [char](9) NOT NULL,
	[CodCul] [int] NOT NULL,
	[Hectares] [decimal](12, 2) NOT NULL,
	[ObsCul] [varchar](250) NULL,
	[HectaresT] [decimal](12, 2) NULL,
	[PercAtend] [decimal](5, 2) NULL,
 CONSTRAINT [PK_CliCul] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[CodSfr] ASC,
	[CodCul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliGrt]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliGrt](
	[CodCli] [int] NOT NULL,
	[CodGrt] [int] NOT NULL,
	[ValGrt] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_CliGrt] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[CodGrt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliOco]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliOco](
	[CodCli] [int] NOT NULL,
	[DatOco] [datetime] NOT NULL,
	[HorOco] [char](5) NOT NULL,
	[CodMot] [int] NOT NULL,
	[ObsOco] [varchar](250) NULL,
	[Retorno] [char](1) NOT NULL,
	[LoginOco] [varchar](15) NULL,
	[DatRet] [datetime] NULL,
	[HorRet] [char](5) NULL,
	[Lembrete] [varchar](250) NULL,
	[DatCnf] [datetime] NULL,
	[HorCnf] [char](5) NULL,
	[ObsCnf] [varchar](250) NULL,
	[LoginCnf] [varchar](15) NULL,
 CONSTRAINT [PK_CliOco] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[DatOco] ASC,
	[HorOco] ASC,
	[CodMot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliPrc]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliPrc](
	[CodEmp] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[ValPro] [decimal](12, 4) NOT NULL,
 CONSTRAINT [PK_CliPrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCli] ASC,
	[CodPro] ASC,
	[CodVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliPrm]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliPrm](
	[CodCli] [int] NOT NULL,
	[CodPrm] [int] NOT NULL,
	[StsPrm] [char](1) NOT NULL,
	[DscPrm] [varchar](75) NULL,
	[Preco] [decimal](12, 2) NULL,
	[Prazo] [varchar](75) NULL,
 CONSTRAINT [PK_CliPrm] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[CodPrm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliPro]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliPro](
	[CodCli] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodPdC] [varchar](15) NOT NULL,
 CONSTRAINT [PK_CliPro] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliPtS]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliPtS](
	[CodCli] [int] NOT NULL,
	[PatrimonioS] [varchar](50) NOT NULL,
	[ValorEst] [money] NOT NULL,
 CONSTRAINT [PK_TabCliPtS] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[PatrimonioS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliRfB]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliRfB](
	[CodCli] [int] NOT NULL,
	[Banco] [varchar](15) NOT NULL,
	[Agencia] [varchar](15) NOT NULL,
	[Conta] [varchar](15) NOT NULL,
	[Fone] [varchar](15) NULL,
	[Abertura] [datetime] NULL,
	[Gerente] [varchar](50) NULL,
	[Conceito] [char](1) NULL,
	[ObsRfB] [varchar](250) NULL,
 CONSTRAINT [PK_TabCliBnc] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[Banco] ASC,
	[Agencia] ASC,
	[Conta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliRfC]    Script Date: 17/04/2018 16:55:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliRfC](
	[CodCli] [int] NOT NULL,
	[Empresa] [varchar](50) NOT NULL,
	[CodCid] [int] NOT NULL,
	[Fone] [varchar](15) NULL,
	[Informante] [varchar](50) NULL,
	[DatPriCmp] [datetime] NULL,
	[ValPriCmp] [decimal](12, 2) NULL,
	[DatUltCmp] [datetime] NULL,
	[ValUltCmp] [decimal](12, 2) NULL,
	[Conceito] [char](1) NULL,
	[ObsRfC] [varchar](250) NULL,
 CONSTRAINT [PK_TabCliRfC] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[Empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliSlc]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliSlc](
	[CodCli] [int] NOT NULL,
	[SeqSlc] [int] IDENTITY(1,1) NOT NULL,
	[SeqTlh] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [float] NOT NULL,
	[DatSlc] [datetime] NOT NULL,
	[HorSlc] [char](5) NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[ObsSlc] [varchar](250) NULL,
	[StsSlc] [char](1) NOT NULL,
	[DatIni] [datetime] NULL,
	[DatTer] [datetime] NULL,
 CONSTRAINT [PK_CliSlc] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[SeqSlc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliSoc]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliSoc](
	[CodCli] [int] NOT NULL,
	[Socio] [varchar](50) NOT NULL,
	[Cpf] [char](14) NOT NULL,
	[Rg] [varchar](25) NULL,
	[DatNas] [datetime] NULL,
	[Participacao] [float] NOT NULL,
	[EstCiv] [char](1) NULL,
	[Conjuge] [varchar](50) NULL,
	[CpfC] [char](14) NULL,
	[RgC] [varchar](25) NULL,
	[SocRsp] [char](1) NOT NULL,
 CONSTRAINT [PK_TabCliSoc] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[Socio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliTlh]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliTlh](
	[CodCli] [int] NOT NULL,
	[SeqTlh] [int] IDENTITY(1,1) NOT NULL,
	[NomDsc1] [varchar](50) NOT NULL,
	[NomDsc2] [varchar](50) NOT NULL,
 CONSTRAINT [PK_CliTlh] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[SeqTlh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliUmd]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliUmd](
	[CodCli] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[UmdIni] [decimal](5, 2) NOT NULL,
	[UmdFin] [decimal](5, 2) NOT NULL,
	[TaxSrv] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_CliUmd] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC,
	[CodPro] ASC,
	[UmdIni] ASC,
	[UmdFin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CliVei]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CliVei](
	[CodCli] [int] NOT NULL,
	[Veiculo] [varchar](50) NOT NULL,
	[Ano] [int] NOT NULL,
	[ValorMrc] [money] NOT NULL,
 CONSTRAINT [PK_TabCliVei] PRIMARY KEY NONCLUSTERED 
(
	[CodCli] ASC,
	[Veiculo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CmpRHC]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CmpRHC](
	[CodEmp] [int] NOT NULL,
	[CodRHC] [int] NOT NULL,
	[CodEsp] [char](2) NOT NULL,
	[ValPag] [decimal](12, 2) NOT NULL,
	[ValJur] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[CodBan] [char](5) NULL,
	[CodAge] [varchar](10) NULL,
	[CodCnt] [varchar](12) NULL,
 CONSTRAINT [PK_CmpRHR] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRHC] ASC,
	[CodEsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CntGrp]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CntGrp](
	[LncApr] [int] NULL,
	[CodCli] [int] NULL,
	[CodFor] [int] NULL,
	[CodPro] [int] NULL,
	[CodCon] [int] NULL,
	[CodTip] [int] NULL,
	[CodVec] [int] NULL,
	[CodFun] [int] NULL,
	[SeqTit] [int] NULL,
	[CodRng] [int] NULL,
	[CodSrv] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CpfCnt]    Script Date: 17/04/2018 16:55:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CpfCnt](
	[CodBan] [char](5) NOT NULL,
	[CodAge] [varchar](10) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[Cnpj] [varchar](18) NOT NULL,
	[CodCmp] [int] NULL,
	[Emitente] [varchar](75) NULL,
 CONSTRAINT [PK_CpfCnt] PRIMARY KEY CLUSTERED 
(
	[CodBan] ASC,
	[CodAge] ASC,
	[CodCnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CtcSlc]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CtcSlc](
	[CodEmp] [int] NOT NULL,
	[CodSlc] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTip] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[FrmPgt] [varchar](25) NOT NULL,
	[PrzEtg] [int] NOT NULL,
	[TipFre] [char](1) NOT NULL,
	[CodPed] [int] NOT NULL,
	[NomVen] [varchar](25) NOT NULL,
	[Fone] [varchar](25) NULL,
 CONSTRAINT [PK_CtcSlc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodSlc] ASC,
	[CodFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DepPed]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[PedDep] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[CodFor] [int] NULL,
 CONSTRAINT [PK_DepPed] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[PedDep] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetBan]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetBan](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[LinVal] [int] NULL,
	[ColVal] [int] NULL,
	[LinExt] [int] NULL,
	[ColExt] [int] NULL,
	[LinNom] [int] NULL,
	[ColNom] [int] NULL,
	[LinCid] [int] NULL,
	[ColCid] [int] NULL,
	[ColDia] [int] NULL,
	[ColMes] [int] NULL,
	[ColAno] [int] NULL,
	[LinEje] [int] NULL,
	[GUID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_DetBan] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocCnh]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocCnh](
	[CodEmp] [int] NOT NULL,
	[CodCnh] [int] NOT NULL,
	[SeqDoc] [int] IDENTITY(1,1) NOT NULL,
	[ModDoc] [char](2) NOT NULL,
	[CodDoc] [int] NOT NULL,
	[SerDoc] [int] NOT NULL,
	[DatDoc] [datetime] NOT NULL,
	[ValDoc] [decimal](12, 2) NOT NULL,
	[ChvNFe] [varchar](44) NULL,
 CONSTRAINT [PK_DocCnh] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCnh] ASC,
	[SeqDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocPed]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[SeqDoc] [int] IDENTITY(1,1) NOT NULL,
	[ModDoc] [char](2) NOT NULL,
	[CodDoc] [int] NOT NULL,
	[SerDoc] [int] NOT NULL,
	[DatDoc] [datetime] NOT NULL,
	[ValDoc] [decimal](12, 2) NOT NULL,
	[ChvNFe] [varchar](44) NULL,
 CONSTRAINT [PK_DocPed] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[SeqDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspFunB]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspFunB](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ValFun] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_DspFunB] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC,
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspFunC]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspFunC](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ValFun] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_DspFunC] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC,
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspFunP]    Script Date: 17/04/2018 16:55:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspFunP](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[CodFun] [int] NOT NULL,
	[ValFun] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_DspFunP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodTit] ASC,
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspFunQ]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspFunQ](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[CodChe] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ValFun] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_DspFunQ] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[CodChe] ASC,
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspOs]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspOs](
	[CodEmp] [int] NOT NULL,
	[CodOs] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodDoc] [varchar](25) NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[DatDsp] [datetime] NOT NULL,
	[CodHan] [int] NOT NULL,
	[CmpHan] [varchar](75) NULL,
	[QtdDsp] [decimal](12, 3) NOT NULL,
	[ValDsp] [decimal](12, 3) NOT NULL,
	[Odometro] [decimal](12, 2) NULL,
	[Cobranca] [char](2) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[DtVen1] [datetime] NULL,
	[ValFt1] [decimal](12, 2) NULL,
	[DtVen2] [datetime] NULL,
	[ValFt2] [decimal](12, 2) NULL,
	[DtVen3] [datetime] NULL,
	[ValFt3] [decimal](12, 2) NULL,
	[DtVen4] [datetime] NULL,
	[ValFt4] [decimal](12, 2) NULL,
	[DtVen5] [datetime] NULL,
	[ValFt5] [decimal](12, 2) NULL,
 CONSTRAINT [PK_DspOs] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOs] ASC,
	[CodFor] ASC,
	[CodDoc] ASC,
	[TipDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DspVeiE]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DspVeiE](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[ValVei] [decimal](12, 2) NOT NULL,
	[Odometro] [decimal](12, 2) NULL,
	[CodVeiCvl] [varchar](8) NULL,
 CONSTRAINT [PK_DspVeiE] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC,
	[CodVei] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpTpN]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpTpN](
	[CodEmp] [int] NOT NULL,
	[CodTip] [int] NOT NULL,
	[ObsFsc] [varchar](250) NULL,
 CONSTRAINT [PK_EmpTpN] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodTip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EqpOrd]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EqpOrd](
	[CodEmp] [int] NOT NULL,
	[CodOrd] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ValCms] [decimal](12, 2) NULL,
	[NmrEtg] [int] NULL,
 CONSTRAINT [PK_EqpOrd] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrd] ASC,
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstBxP]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstBxP](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[SeqEsP] [int] IDENTITY(1,1) NOT NULL,
	[DatPag] [datetime] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatEst] [datetime] NOT NULL,
	[HorEst] [char](5) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ValPag] [decimal](12, 2) NOT NULL,
	[ValJur] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValPagR] [decimal](12, 2) NULL,
	[ValJurR] [decimal](12, 2) NULL,
	[ValDesR] [decimal](12, 2) NULL,
	[ValCot] [decimal](7, 4) NULL,
	[CodHan] [int] NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[CodMot] [int] NOT NULL,
 CONSTRAINT [PK_EstBxP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodTit] ASC,
	[SeqEsP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstBxR]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstBxR](
	[CodEmp] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[SeqEsR] [int] IDENTITY(1,1) NOT NULL,
	[DatPag] [datetime] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatEst] [datetime] NOT NULL,
	[HorEst] [char](5) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodCli] [int] NOT NULL,
	[ValPag] [decimal](12, 2) NOT NULL,
	[ValJur] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[CodHan] [int] NOT NULL,
	[TipBai] [char](1) NOT NULL,
	[CodGrT] [int] NULL,
	[CodMot] [int] NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[ValPagR] [decimal](12, 2) NULL,
	[ValJurR] [decimal](12, 2) NULL,
	[ValDesR] [decimal](12, 2) NULL,
	[ValCot] [decimal](7, 4) NULL,
	[GerCpl] [char](1) NULL,
 CONSTRAINT [PK_EstBxR] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodTit] ASC,
	[SeqEsR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstChe]    Script Date: 17/04/2018 16:55:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstChe](
	[CodEmp] [int] NOT NULL,
	[CodREC] [int] NOT NULL,
	[CodHst] [int] IDENTITY(1,1) NOT NULL,
	[SeqChe] [int] NOT NULL,
	[PosChe] [char](2) NOT NULL,
	[DatEst] [datetime] NOT NULL,
	[HorEst] [char](5) NOT NULL,
	[LogEst] [varchar](15) NOT NULL,
	[CodMot] [int] NULL,
 CONSTRAINT [PK_EstChe] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodREC] ASC,
	[CodHst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpCtb]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpCtb](
	[CodEmp] [int] NOT NULL,
	[AnoExp] [int] NOT NULL,
	[MesExp] [int] NOT NULL,
	[DatExp] [datetime] NOT NULL,
	[HorExp] [char](8) NOT NULL,
	[Login] [varchar](15) NOT NULL,
 CONSTRAINT [PK_ExpCtb] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[AnoExp] ASC,
	[MesExp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatCmp]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatCmp](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
	[CodFor] [int] NOT NULL,
 CONSTRAINT [PK_FatCmp] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPed] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatCnh]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatCnh](
	[CodEmp] [int] NOT NULL,
	[CodCnh] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
 CONSTRAINT [PK_FatCnh] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodCnh] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatCnhP]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatCnhP](
	[CodEmp] [int] NOT NULL,
	[CodCnh] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
 CONSTRAINT [PK_FatCnhP] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodCnh] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatEst]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatEst](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[ValFatD] [money] NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
 CONSTRAINT [PK_FatEst] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatOS]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatOS](
	[CodEmp] [int] NOT NULL,
	[CodOS] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[DatPrg] [datetime] NOT NULL,
	[ValFat] [decimal](12, 2) NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
 CONSTRAINT [PK_FatOS] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOS] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatPed]    Script Date: 17/04/2018 16:55:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[ValFatR] [money] NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[Status] [char](3) NOT NULL,
 CONSTRAINT [PK_FATPED_1__13] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatRsv]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[ValFat] [money] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[DatPrg] [datetime] NULL,
 CONSTRAINT [PK_FatRsv] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FatSrv]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FatSrv](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatFat] [datetime] NOT NULL,
	[DatPrg] [datetime] NULL,
	[ValFat] [decimal](12, 2) NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[Status] [char](3) NOT NULL,
 CONSTRAINT [PK_FatSrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[DatFat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FecCai]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FecCai](
	[CodEmp] [int] NOT NULL,
	[DatCai] [datetime] NOT NULL,
 CONSTRAINT [PK_FecCai] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[DatCai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FecCha]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FecCha](
	[CodEmp] [int] NOT NULL,
	[CodFec] [int] IDENTITY(1,1) NOT NULL,
	[DatFec] [datetime] NOT NULL,
	[HorFec] [char](5) NOT NULL,
	[LogFec] [varchar](15) NOT NULL,
	[CodCli] [int] NOT NULL,
	[QtdReg] [int] NOT NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[ValPro] [decimal](12, 2) NULL,
	[ValCha] [decimal](12, 2) NULL,
 CONSTRAINT [PK_FecCha] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FecCms]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FecCms](
	[CodEmp] [int] NOT NULL,
	[SeqFec] [int] IDENTITY(1,1) NOT NULL,
	[DatFec] [datetime] NOT NULL,
	[HorFec] [char](8) NULL,
	[LogFec] [varchar](15) NULL,
	[CodFor] [int] NOT NULL,
	[QtdReg] [int] NOT NULL,
	[ValTot] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
 CONSTRAINT [PK_FecCms] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqFec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FecCmsN]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FecCmsN](
	[CodEmp] [int] NOT NULL,
	[SeqFec] [int] IDENTITY(1,1) NOT NULL,
	[DatFec] [datetime] NOT NULL,
	[HorFec] [char](8) NULL,
	[LogFec] [varchar](15) NULL,
	[CodVen] [int] NOT NULL,
	[QtdReg] [int] NOT NULL,
	[ValTot] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
 CONSTRAINT [PK_FecCmsN] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqFec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForCCt]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForCCt](
	[CodFor] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodAge] [varchar](10) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[Favorecido] [varchar](75) NULL,
	[Identif] [varchar](25) NULL,
	[ObsCnt] [varchar](250) NULL,
 CONSTRAINT [PK_ForCCt] PRIMARY KEY CLUSTERED 
(
	[CodFor] ASC,
	[CodBan] ASC,
	[CodAge] ASC,
	[CodCnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForCms]    Script Date: 17/04/2018 16:55:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForCms](
	[CodFor] [int] NOT NULL,
	[CodEst] [char](2) NOT NULL,
	[CodCms] [int] NOT NULL,
 CONSTRAINT [PK_ForCms] PRIMARY KEY CLUSTERED 
(
	[CodFor] ASC,
	[CodEst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForCnt]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForCnt](
	[CodFor] [int] NOT NULL,
	[Contato] [varchar](75) NOT NULL,
	[CodPrf] [int] NULL,
	[FoneD] [varchar](25) NULL,
	[DatNas] [datetime] NULL,
	[Email] [varchar](75) NULL,
	[Comunicador] [varchar](75) NULL,
 CONSTRAINT [PK_ConFor] PRIMARY KEY NONCLUSTERED 
(
	[CodFor] ASC,
	[Contato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForPro]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForPro](
	[CodFor] [int] NOT NULL,
	[CodPdF] [varchar](25) NOT NULL,
	[CodPro] [int] NOT NULL,
 CONSTRAINT [PK_ForPro] PRIMARY KEY CLUSTERED 
(
	[CodFor] ASC,
	[CodPdF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ForProE]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ForProE](
	[CodFor] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodPdF] [varchar](25) NOT NULL,
 CONSTRAINT [PK_ForProE] PRIMARY KEY CLUSTERED 
(
	[CodFor] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunART]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunART](
	[CodFun] [int] NOT NULL,
	[CodART] [bigint] NOT NULL,
	[RctIni] [int] NULL,
	[RctFin] [int] NULL,
	[RctAtu] [int] NULL,
	[RctMsk] [varchar](20) NULL,
	[CodEmp] [int] NULL,
 CONSTRAINT [PK_FunART] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[CodART] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunART_OLD]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunART_OLD](
	[CodFun] [int] NOT NULL,
	[CodART] [bigint] NOT NULL,
	[RctIni] [int] NULL,
	[RctFin] [int] NULL,
	[RctAtu] [int] NULL,
	[RctMsk] [varchar](20) NULL,
	[CodEmp] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunCCt]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunCCt](
	[CodFun] [int] NOT NULL,
	[DatLnc] [datetime] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ObsHan] [varchar](250) NULL,
	[ValCre] [decimal](12, 2) NULL,
	[ValDeb] [decimal](12, 2) NULL,
	[TipLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
 CONSTRAINT [PK_FunCCt] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[DatLnc] ASC,
	[CodHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunCom]    Script Date: 17/04/2018 16:55:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunCom](
	[CodFun] [int] NOT NULL,
	[CodGru] [int] NOT NULL,
	[CodCom] [int] NOT NULL,
	[MrgMin] [decimal](5, 2) NOT NULL,
	[MrgBas] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_FunCom] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[CodGru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunCPz]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunCPz](
	[CodFun] [int] NOT NULL,
	[CodGru] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[CodCom] [int] NOT NULL,
 CONSTRAINT [PK_FunCPz] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[CodGru] ASC,
	[CodVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunCrt]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunCrt](
	[CodFun] [int] NOT NULL,
	[DatCrt] [datetime] NOT NULL,
	[HorCrt] [char](5) NOT NULL,
	[CodCrt] [int] NOT NULL,
	[PrimParc] [varchar](250) NULL,
	[SeguParc] [varchar](250) NULL,
	[ObsCrt] [varchar](250) NULL,
 CONSTRAINT [PK_FunCrt] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[DatCrt] ASC,
	[HorCrt] ASC,
	[CodCrt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunDep]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunDep](
	[CodFun] [int] NOT NULL,
	[NomDep] [varchar](50) NOT NULL,
	[DatNsc] [datetime] NOT NULL,
	[GrauPrtsc] [char](2) NOT NULL,
 CONSTRAINT [PK_FunDep] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[NomDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunEvt]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunEvt](
	[CodFun] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValCre] [decimal](12, 2) NULL,
	[ValDeb] [decimal](12, 2) NULL,
 CONSTRAINT [PK_FunEvt] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[CodHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunOco]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunOco](
	[CodFun] [int] NOT NULL,
	[DatOco] [datetime] NOT NULL,
	[HorOco] [char](5) NOT NULL,
	[CodMot] [int] NOT NULL,
	[ObsOco] [varchar](75) NULL,
	[Retorno] [char](1) NOT NULL,
	[LoginOco] [varchar](15) NULL,
	[DatRet] [datetime] NULL,
	[HorRet] [char](5) NULL,
	[Lembrete] [varchar](75) NULL,
	[DatCnf] [datetime] NULL,
	[HorCnf] [char](5) NULL,
	[ObsCnf] [varchar](250) NULL,
	[LoginCnf] [varchar](15) NULL,
 CONSTRAINT [PK_FunOco] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[DatOco] ASC,
	[HorOco] ASC,
	[CodMot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunSlr]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunSlr](
	[CodFun] [int] NOT NULL,
	[DatSlr] [datetime] NOT NULL,
	[CodDpt] [int] NOT NULL,
	[CodPrf] [int] NOT NULL,
	[Salario] [decimal](12, 2) NOT NULL,
	[CodMot] [int] NOT NULL,
	[ObsSlr] [varchar](250) NULL,
 CONSTRAINT [PK_FunSlr] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC,
	[DatSlr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GNtEst]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GNtEst](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[CodNtr] [int] NOT NULL,
	[QtdInf] [decimal](12, 3) NOT NULL,
	[QtdApr] [decimal](12, 3) NOT NULL,
	[Concentracao] [decimal](6, 3) NOT NULL,
 CONSTRAINT [PK_GNtEst] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC,
	[CodPro] ASC,
	[CodLot] ASC,
	[CodLcz] ASC,
	[CodNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstChe]    Script Date: 17/04/2018 16:55:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstChe](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[CodChe] [int] NOT NULL,
	[CodHst] [int] IDENTITY(1,1) NOT NULL,
	[PosChe] [char](1) NOT NULL,
	[DatHst] [datetime] NOT NULL,
	[HorHst] [char](5) NOT NULL,
	[CodMot] [int] NULL,
	[CodLan] [int] NULL,
	[LogHst] [varchar](15) NOT NULL,
	[BanHst] [char](5) NULL,
	[CntHst] [varchar](12) NULL,
	[BanTrs] [char](5) NULL,
	[CntTrs] [varchar](12) NULL,
	[CodRHC] [int] NULL,
	[SeqChe] [int] NULL,
	[Status] [char](2) NULL,
	[ValPag] [decimal](12, 2) NULL,
	[CodFor] [int] NULL,
 CONSTRAINT [PK_HstChe] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[CodChe] ASC,
	[CodHst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstNgR]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstNgR](
	[CodEmp] [int] NOT NULL,
	[CodRng] [int] NOT NULL,
	[DatRng] [datetime] NOT NULL,
	[HorRng] [char](5) NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[CodCli] [int] NOT NULL,
	[QtdTit] [int] NOT NULL,
	[ValTit] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValEnt] [decimal](12, 2) NULL,
	[QtdPrc] [int] NULL,
	[TaxJur] [float] NULL,
	[CodHcp] [int] NULL,
	[Cobranca] [varchar](8) NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ObsHan] [varchar](250) NULL,
	[ValCot] [decimal](7, 4) NULL,
 CONSTRAINT [PK_HstNgR] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRng] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstOrc]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstOrc](
	[CodEmp] [int] NOT NULL,
	[CodOrc] [int] NOT NULL,
	[SeqHst] [int] IDENTITY(1,1) NOT NULL,
	[TipHst] [char](1) NOT NULL,
	[DscHst] [varchar](100) NULL,
	[VlrAnt] [varchar](100) NOT NULL,
	[VlrNov] [varchar](100) NOT NULL,
	[DatHst] [datetime] NOT NULL,
	[HorHst] [char](5) NOT NULL,
	[Login] [varchar](15) NOT NULL,
 CONSTRAINT [PK_HstOrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrc] ASC,
	[SeqHst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstPrc]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstPrc](
	[CodEmp] [int] NOT NULL,
	[SeqAtz] [int] IDENTITY(1,1) NOT NULL,
	[DatAtz] [datetime] NULL,
	[HorAtz] [char](5) NULL,
	[LogAtz] [varchar](15) NULL,
	[ArqAtz] [char](1) NULL,
	[TipAtz] [char](1) NULL,
	[ValAtz] [decimal](12, 4) NULL,
 CONSTRAINT [PK_HstPrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqAtz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstPrcPro]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstPrcPro](
	[CodEmp] [int] NOT NULL,
	[SeqAtz] [int] NOT NULL,
	[SeqAtzPro] [int] IDENTITY(1,1) NOT NULL,
	[CodCli] [int] NULL,
	[CodPro] [int] NULL,
	[CodVec] [int] NULL,
	[ValPro] [decimal](12, 4) NULL,
	[ValAtz] [decimal](12, 4) NULL,
 CONSTRAINT [PK_HstPrcPro] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqAtz] ASC,
	[SeqAtzPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HstPrv]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HstPrv](
	[CodEmp] [int] NOT NULL,
	[CodHst] [int] IDENTITY(1,1) NOT NULL,
	[DatGer] [datetime] NOT NULL,
	[HorGer] [char](5) NOT NULL,
	[MesAno] [char](7) NOT NULL,
	[PerVar] [decimal](6, 2) NULL,
 CONSTRAINT [PK_HstPrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodHst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InuCnh]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InuCnh](
	[CodEmp] [int] NOT NULL,
	[NmrCTe] [int] NOT NULL,
	[DatInu] [datetime] NOT NULL,
	[AnoInu] [int] NOT NULL,
	[CodMot] [int] NOT NULL,
 CONSTRAINT [PK_InuCnh] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[NmrCTe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteAlm]    Script Date: 17/04/2018 16:55:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteAlm](
	[CodEmp] [int] NOT NULL,
	[CodAlm] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[TipAct] [char](1) NOT NULL,
 CONSTRAINT [PK_IteAlm] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAlm] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteChe]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteChe](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[CodChe] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[ValPag] [money] NOT NULL,
	[ValPagR] [money] NULL,
	[ValJur] [money] NULL,
	[ValJurR] [money] NULL,
	[ValDes] [money] NULL,
	[ValDesR] [money] NULL,
 CONSTRAINT [PK___9__13] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[CodChe] ASC,
	[CodFor] ASC,
	[CodTit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteCmp]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteCmp](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [money] NOT NULL,
	[QtdPro] [float] NOT NULL,
	[Icms] [decimal](5, 2) NULL,
	[Ipi] [decimal](5, 2) NULL,
	[ValIpi] [decimal](12, 2) NULL,
	[QtdRmv] [float] NULL,
 CONSTRAINT [PK_IteCmp] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPed] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteCtc]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteCtc](
	[CodEmp] [int] NOT NULL,
	[CodSlc] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [decimal](12, 3) NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValFre] [decimal](12, 2) NULL,
	[Status] [char](1) NULL,
 CONSTRAINT [PK_IteCtc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodSlc] ASC,
	[CodPro] ASC,
	[CodFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteEst]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteEst](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[SitTri] [char](3) NOT NULL,
	[ValPro] [money] NOT NULL,
	[ValProD] [money] NULL,
	[QtdPro] [float] NOT NULL,
	[ValDes] [float] NOT NULL,
	[Icms] [decimal](5, 2) NULL,
	[Ipi] [decimal](5, 2) NULL,
	[ValIpi] [decimal](12, 2) NULL,
	[ValCst] [money] NULL,
	[BasIcm] [decimal](12, 2) NULL,
	[PerRed] [decimal](7, 4) NULL,
	[ValVen] [float] NULL,
	[ValAum] [decimal](12, 3) NULL,
	[QtdDev] [float] NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[CodCfo] [char](5) NULL,
	[CodNCM] [varchar](8) NULL,
	[ValIcm] [decimal](12, 2) NULL,
	[DscIcmCst] [char](1) NOT NULL,
	[BasSbt] [decimal](12, 2) NULL,
	[ValSbt] [decimal](12, 2) NULL,
	[ValSeg] [decimal](12, 2) NULL,
	[ValFre] [decimal](12, 2) NULL,
	[ValOut] [decimal](12, 2) NULL,
	[IcmsDev] [decimal](5, 2) NULL,
	[PerRedDev] [decimal](7, 4) NULL,
	[SitTriDev] [char](3) NULL,
	[LvVCtb] [decimal](12, 2) NULL,
	[LvVIse] [decimal](12, 2) NULL,
	[LvVOut] [decimal](12, 2) NULL,
	[ValFis] [char](1) NULL,
	[CmpPro] [varchar](250) NULL,
	[MrcPne] [int] NULL,
	[ModPne] [int] NULL,
	[MedPne] [int] NULL,
	[QLnPne] [int] NULL,
	[ValTot] [decimal](12, 2) NULL,
	[BasSbtObs] [decimal](12, 2) NULL,
	[ValSbtObs] [decimal](12, 2) NULL,
	[BasIcmDv] [decimal](12, 2) NULL,
	[ValIcmDv] [decimal](12, 2) NULL,
	[BasSbTDv] [decimal](12, 2) NULL,
	[ValSbTDv] [decimal](12, 2) NULL,
	[ValSegDv] [decimal](12, 2) NULL,
	[ValFreDv] [decimal](12, 2) NULL,
	[ValOutDv] [decimal](12, 2) NULL,
	[ValIpiDv] [decimal](12, 2) NULL,
	[ValTVF] [decimal](12, 2) NULL,
	[CmpProDv] [varchar](250) NULL,
	[ValAtu] [float] NULL,
 CONSTRAINT [PK_IteEst] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteExp]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteExp](
	[CodEmp] [int] NOT NULL,
	[AnoExp] [int] NOT NULL,
	[MesExp] [int] NOT NULL,
	[Modulo] [char](2) NOT NULL,
	[DatExp] [datetime] NOT NULL,
	[HorExp] [char](8) NOT NULL,
	[Login] [varchar](15) NOT NULL,
 CONSTRAINT [PK_IteExp] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[AnoExp] ASC,
	[MesExp] ASC,
	[Modulo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteFqT]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteFqT](
	[CodEmp] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[DatFqT] [datetime] NOT NULL,
	[SeqFqT] [int] IDENTITY(1,1) NOT NULL,
	[TipFqT] [char](1) NOT NULL,
	[HorIni] [char](5) NOT NULL,
	[HorFin] [char](5) NOT NULL,
	[DurFqT] [char](5) NULL,
	[ObsFqT] [varchar](250) NULL,
 CONSTRAINT [PK_IteFqT] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFun] ASC,
	[DatFqT] ASC,
	[SeqFqT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteMtq]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteMtq](
	[CodEmp] [int] NOT NULL,
	[DatMed] [datetime] NOT NULL,
	[Periodo] [int] NOT NULL,
	[CodTnq] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdMedI] [int] NULL,
	[QtdProI] [float] NULL,
	[QtdMedF] [int] NULL,
	[QtdProF] [float] NULL,
 CONSTRAINT [PK_IteMtq] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[DatMed] ASC,
	[Periodo] ASC,
	[CodTnq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteOP]    Script Date: 17/04/2018 16:55:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteOP](
	[CodEmp] [int] NOT NULL,
	[CodOP] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_IteOP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOP] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteOrc]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteOrc](
	[CodEmp] [int] NOT NULL,
	[CodOrc] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [float] NULL,
	[QtdPro] [float] NOT NULL,
	[ValDes] [float] NOT NULL,
	[CmpPro] [varchar](250) NULL,
	[ValSug] [float] NULL,
 CONSTRAINT [PK_IteOrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrc] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItePed]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItePed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [money] NOT NULL,
	[ValProR] [money] NULL,
	[QtdPro] [float] NOT NULL,
	[ValDes] [float] NOT NULL,
	[SitTri] [char](3) NULL,
	[CmpPro] [varchar](250) NULL,
	[CodCom] [int] NULL,
	[QtdEnt] [float] NULL,
	[CodART] [bigint] NULL,
	[CodRct] [int] NULL,
	[Icms] [decimal](5, 2) NULL,
	[CodCmsA] [int] NULL,
	[ValSug] [float] NULL,
	[PerRed] [decimal](7, 4) NULL,
	[QtdDev] [float] NULL,
	[QtdCjg] [float] NULL,
	[EmpCjg] [int] NULL,
	[SitCjg] [char](1) NOT NULL,
	[PedCjg] [int] NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[CodCfo] [char](5) NULL,
	[BasIcm] [decimal](12, 2) NULL,
	[BasIcmR] [decimal](12, 2) NULL,
	[ValIcm] [decimal](12, 2) NULL,
	[ValIcmR] [decimal](12, 2) NULL,
	[Ipi] [decimal](5, 2) NULL,
	[ValIpi] [decimal](12, 2) NULL,
	[ValPta] [decimal](12, 4) NULL,
	[CodSml] [int] NULL,
	[BasSbT] [decimal](12, 2) NULL,
	[ValSbT] [decimal](12, 2) NULL,
	[ValRcb] [float] NULL,
	[ValOut] [decimal](12, 2) NULL,
	[BasSbtObs] [decimal](12, 2) NULL,
	[ValSbtObs] [decimal](12, 2) NULL,
	[ValFre] [decimal](12, 2) NULL,
	[ValSeg] [decimal](12, 2) NULL,
	[BasIcmUFd] [decimal](12, 2) NULL,
	[AlqFECP] [decimal](5, 2) NULL,
	[AlqICMSd] [decimal](5, 2) NULL,
	[AlqICMSr] [decimal](5, 2) NULL,
	[AlqDIF] [decimal](5, 2) NULL,
	[AlqDIFd] [decimal](5, 2) NULL,
	[AlqDIFr] [decimal](5, 2) NULL,
	[ValFECP] [decimal](12, 2) NULL,
	[ValDIFd] [decimal](12, 2) NULL,
	[ValDIFr] [decimal](12, 2) NULL,
	[Iva] [decimal](5, 2) NULL,
 CONSTRAINT [PK_ITEPED_1__13] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteRct]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteRct](
	[CodEmp] [int] NOT NULL,
	[CodART] [bigint] NOT NULL,
	[CodRct] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodCul] [int] NOT NULL,
	[CodAge] [int] NOT NULL,
	[CodApl] [int] NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[AreTrt] [varchar](25) NOT NULL,
	[NumrApl] [varchar](25) NULL,
	[IntvApl] [varchar](25) NULL,
	[ObsRct] [varchar](250) NULL,
	[Dosagem] [decimal](12, 3) NULL,
	[NomAgeC] [varchar](250) NULL,
 CONSTRAINT [PK_IteRct] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodART] ASC,
	[CodRct] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteRet]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteRet](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[SeqRet] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[TipOco] [char](1) NOT NULL,
	[CodOco] [char](2) NOT NULL,
	[CodMoc] [char](2) NOT NULL,
	[DatEnt] [datetime] NULL,
	[DatCre] [datetime] NULL,
	[BanCre] [char](5) NULL,
	[AgeCre] [varchar](10) NULL,
	[ValTrf] [decimal](12, 3) NULL,
	[ValDsp] [decimal](12, 3) NULL,
	[ValAbt] [decimal](12, 3) NULL,
	[ValDes] [decimal](12, 3) NULL,
	[ValRec] [decimal](12, 3) NULL,
	[ValJur] [decimal](12, 3) NULL,
	[ValLnc] [decimal](12, 3) NULL,
	[Status] [char](1) NOT NULL,
	[EmpTit] [int] NOT NULL,
	[SeqBxR] [int] NULL,
 CONSTRAINT [PK_IteRet] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[SeqRet] ASC,
	[CodTit] ASC,
	[TipOco] ASC,
	[CodOco] ASC,
	[CodMoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteRms]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteRms](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[SeqRms] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[TipOco] [char](1) NOT NULL,
	[CodOco] [char](2) NULL,
	[CodMoc] [char](2) NULL,
	[Taxjur] [decimal](5, 3) NULL,
	[CodMoc2] [char](2) NULL,
 CONSTRAINT [PK_IteRms] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[SeqRms] ASC,
	[CodTit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteRmsSrs]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteRmsSrs](
	[CodEmp] [int] NOT NULL,
	[CodRms] [int] NOT NULL,
	[SeqIte] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[CodCli] [int] NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[DatVen] [datetime] NOT NULL,
	[Valor] [decimal](12, 2) NOT NULL,
	[SeqBxR] [int] NOT NULL,
	[DatPag] [datetime] NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_IteRmsSrs] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRms] ASC,
	[SeqIte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteRsv]    Script Date: 17/04/2018 16:55:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [money] NOT NULL,
	[QtdPro] [float] NOT NULL,
	[ValDes] [float] NOT NULL,
	[CodCom] [int] NULL,
	[CmpPro] [varchar](250) NULL,
	[CodCmsA] [int] NULL,
	[ValSug] [float] NULL,
	[QtdRmv] [float] NULL,
	[ValRcb] [float] NULL,
	[DatEtg] [datetime] NULL,
	[CodGUIi] [varchar](38) NULL,
 CONSTRAINT [PK_IteRsv] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteSlc]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteSlc](
	[CodEmp] [int] NOT NULL,
	[CodSlc] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CmpPro] [varchar](75) NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[QtdApv] [decimal](12, 3) NULL,
	[JstApv] [varchar](75) NULL,
 CONSTRAINT [PK_IteSlc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodSlc] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteSrv]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteSrv](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[CodSrv] [int] NOT NULL,
	[CmpSrv] [varchar](250) NULL,
	[QtdSrv] [int] NOT NULL,
	[ValSrv] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](5, 2) NOT NULL,
	[CodCom] [int] NULL,
	[CodCmsA] [int] NULL,
	[ValIRR] [decimal](12, 2) NULL,
	[ValISS] [decimal](12, 2) NULL,
	[ValINS] [decimal](12, 2) NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[ValCSL] [decimal](12, 2) NULL,
 CONSTRAINT [PK_IteSrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteUsu]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteUsu](
	[CodEmp] [int] NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[Processo] [varchar](50) NOT NULL,
	[Executa] [bit] NOT NULL,
	[Grava] [bit] NOT NULL,
	[Exclui] [bit] NOT NULL,
	[Imprime] [bit] NOT NULL,
 CONSTRAINT [PK_IteUsu] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[Login] ASC,
	[Processo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteVDr]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteVDr](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPed] [varchar](25) NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[ValPro] [decimal](12, 4) NOT NULL,
	[DatFat] [datetime] NULL,
	[ValFat] [decimal](12, 2) NULL,
	[PerCms] [decimal](7, 4) NULL,
	[ValCms] [decimal](12, 2) NULL,
	[DscIcm] [decimal](12, 2) NULL,
	[DscFrt] [decimal](12, 2) NULL,
	[DscFnc] [decimal](12, 2) NULL,
	[SeqFat] [int] IDENTITY(1,1) NOT NULL,
	[FecVDr] [int] NULL,
 CONSTRAINT [PK_IteVDr] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPed] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteVec]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteVec](
	[CodVec] [int] NOT NULL,
	[DiaVec] [int] NOT NULL,
	[DatVec] [char](5) NOT NULL,
	[PerVec] [int] NULL,
 CONSTRAINT [PK_ITEVEC_1__10] PRIMARY KEY CLUSTERED 
(
	[CodVec] ASC,
	[DiaVec] ASC,
	[DatVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IteVol]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IteVol](
	[Volume] [int] NOT NULL,
	[Altura] [int] NOT NULL,
	[Litros] [float] NOT NULL,
 CONSTRAINT [PK_IteVol] PRIMARY KEY NONCLUSTERED 
(
	[Volume] ASC,
	[Altura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LayOutRc]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LayOutRc](
	[CodEmp] [int] NOT NULL,
	[CodLay] [int] NOT NULL,
	[Fonte_GO] [varchar](50) NULL,
	[LinhaPol_GO] [int] NULL,
	[Responsavel_LnGO] [int] NULL,
	[Responsavel_ClGO] [int] NULL,
	[Responsavel_TfGO] [int] NULL,
	[Crea_LnGO] [int] NULL,
	[Crea_ClGO] [int] NULL,
	[Crea_TfGO] [int] NULL,
	[Visto_LnGO] [int] NULL,
	[Visto_ClGO] [int] NULL,
	[Visto_TfGO] [int] NULL,
	[Endereco_LnGO] [int] NULL,
	[Endereco_ClGO] [int] NULL,
	[Endereco_TfGO] [int] NULL,
	[Municipio_LnGO] [int] NULL,
	[Municipio_ClGO] [int] NULL,
	[Municipio_TfGO] [int] NULL,
	[Usuario_LnGO] [int] NULL,
	[Usuario_ClGO] [int] NULL,
	[Usuario_TfGO] [int] NULL,
	[Propriedade_LnGO] [int] NULL,
	[Propriedade_ClGO] [int] NULL,
	[Propriedade_TfGO] [int] NULL,
	[LocalProp_LnGO] [int] NULL,
	[LocalProp_ClGO] [int] NULL,
	[LocalProp_TfGO] [int] NULL,
	[Distrito_LnGO] [int] NULL,
	[Distrito_ClGO] [int] NULL,
	[Distrito_TfGO] [int] NULL,
	[Cultura_LnGO] [int] NULL,
	[Cultura_ClGO] [int] NULL,
	[Cultura_TfGO] [int] NULL,
	[Area_LnGO] [int] NULL,
	[Area_ClGO] [int] NULL,
	[Area_TfGO] [int] NULL,
	[Diag_LnGO] [int] NULL,
	[Diag_ClGO] [int] NULL,
	[Diag_TfGO] [int] NULL,
	[Agente_LnGO] [int] NULL,
	[Agente_ClGO] [int] NULL,
	[Agente_TfGO] [int] NULL,
	[NomeCom_LnGO] [int] NULL,
	[NomeCom_ClGO] [int] NULL,
	[NomeCom_TfGO] [int] NULL,
	[Concentracao_LnGO] [int] NULL,
	[Concentracao_ClGO] [int] NULL,
	[Concentracao_TfGO] [int] NULL,
	[Formulacao_LnGO] [int] NULL,
	[Formulacao_ClGO] [int] NULL,
	[Formulacao_TfGO] [int] NULL,
	[ClasseTox_LnGO] [int] NULL,
	[ClasseTox_ClGO] [int] NULL,
	[ClasseTox_TfGO] [int] NULL,
	[Dosagem_LnGO] [int] NULL,
	[Dosagem_ClGO] [int] NULL,
	[Dosagem_TfGO] [int] NULL,
	[Aplicacoes_LnGO] [int] NULL,
	[Aplicacoes_ClGO] [int] NULL,
	[Aplicacoes_TfGO] [int] NULL,
	[Carencia_LnGO] [int] NULL,
	[Carencia_ClGO] [int] NULL,
	[Carencia_TfGO] [int] NULL,
	[Total_LnGO] [int] NULL,
	[Total_ClGO] [int] NULL,
	[Total_TfGO] [int] NULL,
	[Epoca_LnGO] [int] NULL,
	[Epoca_ClGO] [int] NULL,
	[Epoca_TfGO] [int] NULL,
	[Obs_LnGO] [int] NULL,
	[Obs_ClGO] [int] NULL,
	[Obs_TfGO] [int] NULL,
	[Local_LnGO] [int] NULL,
	[Local_ClGO] [int] NULL,
	[Local_TfGO] [int] NULL,
	[GrupoQuimico_LnGO] [int] NULL,
	[GrupoQuimico_ClGO] [int] NULL,
	[GrupoQuimico_TfGO] [int] NULL,
	[Antidoto_LnGO] [int] NULL,
	[Antidoto_ClGO] [int] NULL,
	[Antidoto_TfGO] [int] NULL,
	[CgcCpf_LnGO] [int] NULL,
	[CgcCpf_ClGO] [int] NULL,
	[CgcCpf_TfGO] [int] NULL,
	[Fonte_MS] [varchar](50) NULL,
	[LinhaPol_MS] [int] NULL,
	[Produtor_LnMS] [int] NULL,
	[Produtor_ClMS] [int] NULL,
	[Produtor_TfMS] [int] NULL,
	[Imovel_LnMS] [int] NULL,
	[Imovel_ClMS] [int] NULL,
	[Imovel_TfMS] [int] NULL,
	[Localizacao_LnMS] [int] NULL,
	[Localizacao_ClMS] [int] NULL,
	[Localizacao_TfMS] [int] NULL,
	[Cultura_LnMS] [int] NULL,
	[Cultura_ClMS] [int] NULL,
	[Cultura_TfMS] [int] NULL,
	[Area_LnMS] [int] NULL,
	[Area_ClMS] [int] NULL,
	[Area_TfMS] [int] NULL,
	[Tratar_LnMS] [int] NULL,
	[Tratar_ClMS] [int] NULL,
	[Tratar_TfMS] [int] NULL,
	[Diag_LnMS] [int] NULL,
	[Diag_ClMS] [int] NULL,
	[Diag_TfMS] [int] NULL,
	[Produto_LnMS] [int] NULL,
	[Produto_ClMS] [int] NULL,
	[Produto_TfMS] [int] NULL,
	[Ativo_LnMS] [int] NULL,
	[Ativo_ClMS] [int] NULL,
	[Ativo_TfMS] [int] NULL,
	[Dosagem_LnMS] [int] NULL,
	[Dosagem_ClMS] [int] NULL,
	[Dosagem_TfMS] [int] NULL,
	[Qtdade_LnMS] [int] NULL,
	[Qtdade_ClMS] [int] NULL,
	[Qtdade_TfMS] [int] NULL,
	[Vazao_LnMS] [int] NULL,
	[Vazao_ClMS] [int] NULL,
	[Vazao_TfMS] [int] NULL,
	[Aplicacao_LnMS] [int] NULL,
	[Aplicacao_ClMS] [int] NULL,
	[Aplicacao_TfMS] [int] NULL,
	[Epoca_LnMS] [int] NULL,
	[Epoca_ClMS] [int] NULL,
	[Epoca_TfMS] [int] NULL,
	[PrimeirosSoc_LnMS] [int] NULL,
	[PrimeirosSoc_ClMS] [int] NULL,
	[PrimeirosSoc_TfMS] [int] NULL,
	[Obs_LnMS] [int] NULL,
	[Obs_ClMS] [int] NULL,
	[Obs_TfMS] [int] NULL,
	[ClasseTox_LnMS] [int] NULL,
	[ClasseTox_ClMS] [int] NULL,
	[ClasseTox_TfMS] [int] NULL,
	[Carencia_LnMS] [int] NULL,
	[Carencia_ClMS] [int] NULL,
	[Carencia_TfMS] [int] NULL,
	[Toxicidade_LnMS] [int] NULL,
	[Toxicidade_ClMS] [int] NULL,
	[Toxicidade_TfMS] [int] NULL,
	[Profissional_LnMS] [int] NULL,
	[Profissional_ClMS] [int] NULL,
	[Profissional_TfMS] [int] NULL,
	[Crea_LnMS] [int] NULL,
	[Crea_ClMS] [int] NULL,
	[Crea_TfMS] [int] NULL,
	[Visto_LnMS] [int] NULL,
	[Visto_ClMS] [int] NULL,
	[Visto_TfMS] [int] NULL,
	[Endereco_LnMS] [int] NULL,
	[Endereco_ClMS] [int] NULL,
	[Endereco_TfMS] [int] NULL,
	[Cidade_LnMS] [int] NULL,
	[Cidade_ClMS] [int] NULL,
	[Cidade_TfMS] [int] NULL,
	[Local_LnMS] [int] NULL,
	[Local_ClMS] [int] NULL,
	[Local_TfMS] [int] NULL,
	[CpfResp_LnMS] [int] NULL,
	[CpfResp_ClMS] [int] NULL,
	[CpfResp_TfMS] [int] NULL,
	[CpfProd_LnMS] [int] NULL,
	[CpfProd_ClMS] [int] NULL,
	[CpfProd_TfMS] [int] NULL,
	[Fonte_MT] [varchar](50) NULL,
	[LinhaPol_MT] [int] NULL,
	[Usuario_LnMT] [int] NULL,
	[Usuario_ClMT] [int] NULL,
	[Usuario_TfMT] [int] NULL,
	[Fone_LnMT] [int] NULL,
	[Fone_ClMT] [int] NULL,
	[Fone_TfMT] [int] NULL,
	[Localizacao_LnMT] [int] NULL,
	[Localizacao_ClMT] [int] NULL,
	[Localizacao_TfMT] [int] NULL,
	[Cultura_LnMT] [int] NULL,
	[Cultura_ClMT] [int] NULL,
	[Cultura_TfMT] [int] NULL,
	[Diag_LnMT] [int] NULL,
	[Diag_ClMT] [int] NULL,
	[Diag_TfMT] [int] NULL,
	[Produto_LnMT] [int] NULL,
	[Produto_ClMT] [int] NULL,
	[Produto_TfMT] [int] NULL,
	[Area_LnMT] [int] NULL,
	[Area_ClMT] [int] NULL,
	[Area_TfMT] [int] NULL,
	[Dosagem_LnMT] [int] NULL,
	[Dosagem_ClMT] [int] NULL,
	[Dosagem_TfMT] [int] NULL,
	[Aplicacoes_LnMT] [int] NULL,
	[Aplicacoes_ClMT] [int] NULL,
	[Aplicacoes_TfMT] [int] NULL,
	[Formulacao_LnMT] [int] NULL,
	[Formulacao_ClMT] [int] NULL,
	[Formulacao_TfMT] [int] NULL,
	[Modalidade_LnMT] [int] NULL,
	[Modalidade_ClMT] [int] NULL,
	[Modalidade_TfMT] [int] NULL,
	[Total_LnMT] [int] NULL,
	[Total_ClMT] [int] NULL,
	[Total_TfMT] [int] NULL,
	[Concentracao_LnMT] [int] NULL,
	[Concentracao_ClMT] [int] NULL,
	[Concentracao_TfMT] [int] NULL,
	[Epoca_LnMT] [int] NULL,
	[Epoca_ClMT] [int] NULL,
	[Epoca_TfMT] [int] NULL,
	[Intervalo_LnMT] [int] NULL,
	[Intervalo_ClMT] [int] NULL,
	[Intervalo_TfMT] [int] NULL,
	[Responsavel_LnMT] [int] NULL,
	[Responsavel_ClMT] [int] NULL,
	[Responsavel_TfMT] [int] NULL,
	[Endereco_LnMT] [int] NULL,
	[Endereco_ClMT] [int] NULL,
	[Endereco_TfMT] [int] NULL,
	[Data_LnMT] [int] NULL,
	[Data_ClMT] [int] NULL,
	[Data_TfMT] [int] NULL,
	[Cpf_LnMT] [int] NULL,
	[Cpf_ClMT] [int] NULL,
	[Cpf_TfMT] [int] NULL,
	[Crea_LnMT] [int] NULL,
	[Crea_ClMT] [int] NULL,
	[Crea_TfMT] [int] NULL,
	[Visto_LnMT] [int] NULL,
	[Visto_ClMT] [int] NULL,
	[Visto_TfMT] [int] NULL,
 CONSTRAINT [PK_LayOutRc] PRIMARY KEY CLUSTERED 
(
	[CodLay] ASC,
	[CodEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LncApr]    Script Date: 17/04/2018 16:55:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LncApr](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[NomLan] [varchar](60) NOT NULL,
	[DatLan] [datetime] NOT NULL,
	[ValLan] [money] NOT NULL,
	[TipLan] [char](2) NOT NULL,
	[TipLiv] [char](1) NOT NULL,
 CONSTRAINT [PK___11__10] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LncAprPC]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LncAprPC](
	[CodEmp] [int] NOT NULL,
	[CodLnc] [int] NOT NULL,
	[PisCfs] [char](1) NOT NULL,
	[CodHan] [int] NOT NULL,
	[DatLnc] [datetime] NOT NULL,
	[ValLnc] [decimal](12, 2) NOT NULL,
	[TipOpr] [char](1) NULL,
	[CodPrt] [int] NULL,
	[CodPro] [int] NULL,
	[NtzCrd] [char](2) NULL,
	[OrgCrd] [char](1) NULL,
	[ObsHan] [varchar](250) NULL,
	[CodCta] [varchar](25) NULL,
 CONSTRAINT [PK_LncAprPC] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLnc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogUsr]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogUsr](
	[CodEmp] [int] NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[IpHost] [varchar](15) NULL,
	[Maquina] [varchar](50) NULL,
	[Processo] [varchar](100) NULL,
	[DatLog] [datetime] NOT NULL,
	[HorLog] [varchar](5) NOT NULL,
	[ObsLog] [varchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotAlm]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotAlm](
	[CodEmp] [int] NOT NULL,
	[CodAlm] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_LotAlm] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAlm] ASC,
	[CodPro] ASC,
	[CodFor] ASC,
	[CodLot] ASC,
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotBtd]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotBtd](
	[CodEmp] [int] NOT NULL,
	[CodOp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodBtd] [int] NOT NULL,
	[CodMtP] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_LotBtd] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOp] ASC,
	[CodPro] ASC,
	[CodBtd] ASC,
	[CodMtP] ASC,
	[CodFor] ASC,
	[CodLot] ASC,
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotEst]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotEst](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[QtdPro] [float] NOT NULL,
	[DatVld] [datetime] NOT NULL,
	[Safra] [varchar](9) NULL,
	[QtdDev] [float] NULL,
	[PdtSmt] [int] NULL,
	[InsRns] [varchar](15) NULL,
 CONSTRAINT [PK_LotEst] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC,
	[CodPro] ASC,
	[CodLot] ASC,
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotPed]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[QtdPro] [float] NOT NULL,
	[QtdDev] [float] NULL,
 CONSTRAINT [PK_LotPed] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[CodPro] ASC,
	[CodFor] ASC,
	[CodLot] ASC,
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LotTrf]    Script Date: 17/04/2018 16:55:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotTrf](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[DatMov] [datetime] NOT NULL,
	[SeqMov] [int] IDENTITY(1,1) NOT NULL,
	[TipMov] [char](1) NOT NULL,
	[QtdPro] [float] NOT NULL,
 CONSTRAINT [PK_LotTrf] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPro] ASC,
	[CodLot] ASC,
	[CodLcz] ASC,
	[DatMov] ASC,
	[SeqMov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedTnq]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedTnq](
	[CodEmp] [int] NOT NULL,
	[DatMed] [datetime] NOT NULL,
	[Periodo] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ObsMed] [varchar](250) NULL,
 CONSTRAINT [PK_MedTnq] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[DatMed] ASC,
	[Periodo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MldUsu]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MldUsu](
	[CodMld] [int] IDENTITY(1,1) NOT NULL,
	[NomMld] [varchar](50) NOT NULL,
	[PosUsu] [char](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModSrv]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModSrv](
	[CodSrv] [int] NOT NULL,
	[CodMod] [int] NOT NULL,
	[FrqSrv] [int] NULL,
	[TolAcm] [int] NULL,
	[TolAbx] [int] NULL,
 CONSTRAINT [PK_ModSrv] PRIMARY KEY CLUSTERED 
(
	[CodSrv] ASC,
	[CodMod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovAdt]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovAdt](
	[CodEmp] [int] NOT NULL,
	[CodAdt] [int] NOT NULL,
	[DatAdt] [datetime] NOT NULL,
	[CodFun] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValAdt] [decimal](12, 2) NOT NULL,
	[TipAdt] [char](1) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ObsHan] [varchar](250) NULL,
	[PosAdt] [char](1) NOT NULL,
	[CodHCp] [int] NULL,
	[TipLnc] [char](1) NOT NULL,
 CONSTRAINT [PK_MovAdt] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovAdtC]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovAdtC](
	[CodEmp] [int] NOT NULL,
	[CodAdt] [int] NOT NULL,
	[DatAdt] [datetime] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValCre] [decimal](12, 2) NOT NULL,
	[ValDeb] [decimal](12, 2) NOT NULL,
	[TipAdt] [char](1) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ObsHan] [varchar](250) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
	[ValTrB] [decimal](12, 2) NULL,
	[ValCot] [decimal](7, 4) NULL,
 CONSTRAINT [PK_MovAdtC] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovAdtF]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovAdtF](
	[CodEmp] [int] NOT NULL,
	[CodAdt] [int] NOT NULL,
	[DatAdt] [datetime] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValCre] [decimal](12, 2) NOT NULL,
	[ValDeb] [decimal](12, 2) NOT NULL,
	[TipAdt] [char](1) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ObsHan] [varchar](250) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
	[Dinheiro] [decimal](12, 2) NOT NULL,
	[ChequeV] [decimal](12, 2) NOT NULL,
	[ChequeP] [decimal](12, 2) NOT NULL,
	[CodHCp] [int] NULL,
	[ValCot] [decimal](7, 4) NULL,
 CONSTRAINT [PK_MovAdtF] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAdt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovAlm]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovAlm](
	[CodEmp] [int] NOT NULL,
	[CodAlm] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[DatAlm] [datetime] NOT NULL,
	[Login] [varchar](15) NULL,
	[ObsAlm] [varchar](250) NULL,
	[PosAlm] [char](1) NOT NULL,
	[CodMot] [int] NULL,
	[CodDoc] [varchar](25) NULL,
	[CodCli] [int] NULL,
	[TipLnc] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
	[EmpTrf] [int] NULL,
 CONSTRAINT [PK_MovAlm] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodAlm] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovBan]    Script Date: 17/04/2018 16:55:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovBan](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[DatLan] [datetime] NOT NULL,
	[CodLan] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[CodDoc] [varchar](30) NOT NULL,
	[ValCre] [decimal](12, 2) NULL,
	[ValDeb] [decimal](12, 2) NULL,
	[ObsHan] [varchar](250) NULL,
	[CodChe] [int] NULL,
	[CodHcp] [int] NULL,
	[OrgLnc] [char](2) NOT NULL,
	[CaiLnc] [int] NULL,
	[Transferencia] [char](1) NOT NULL,
	[EmpRms] [int] NULL,
	[BanRms] [char](5) NULL,
	[CntRms] [varchar](12) NULL,
	[LanRms] [int] NULL,
	[CodCai] [int] NULL,
	[TipLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
	[CfrPos] [char](1) NOT NULL,
	[CfrObs] [varchar](250) NULL,
 CONSTRAINT [PK_MovBan] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovBxP]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovBxP](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[SeqBxP] [int] NOT NULL,
	[DatPag] [datetime] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[ValPag] [money] NOT NULL,
	[ValPagR] [money] NULL,
	[ValJur] [money] NULL,
	[ValJurR] [money] NULL,
	[ValDes] [money] NULL,
	[ValDesR] [money] NULL,
	[CodHan] [int] NOT NULL,
	[Moeda] [char](1) NULL,
	[ValCot] [money] NULL,
	[TipBai] [char](1) NOT NULL,
	[CodChe] [int] NULL,
	[CodCai] [int] NULL,
	[DatOpr] [datetime] NULL,
	[HorOpr] [char](5) NULL,
	[Login] [varchar](15) NULL,
	[Dinheiro] [decimal](12, 2) NULL,
	[ChequeV] [decimal](12, 2) NULL,
	[ChequeP] [decimal](12, 2) NULL,
	[Cartao] [decimal](12, 2) NULL,
	[Vale] [decimal](12, 2) NULL,
	[Outros] [decimal](12, 2) NULL,
	[SitBxP] [char](1) NOT NULL,
	[SaqSpr] [int] NULL,
	[SeqLnc] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MOVBXP_1__10] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodTit] ASC,
	[SeqBxP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovBxR]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovBxR](
	[CodEmp] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[SeqBxR] [int] NOT NULL,
	[DatPag] [datetime] NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodCli] [int] NOT NULL,
	[ValPag] [money] NOT NULL,
	[ValPagR] [money] NULL,
	[ValJur] [money] NULL,
	[ValJurR] [money] NULL,
	[ValDes] [money] NULL,
	[ValDesR] [money] NULL,
	[CodHan] [int] NOT NULL,
	[CodVen] [int] NULL,
	[TipBai] [char](1) NOT NULL,
	[Moeda] [char](1) NULL,
	[ValCot] [money] NULL,
	[GerCpl] [char](1) NULL,
	[CodCai] [int] NULL,
	[CodPed] [int] NULL,
	[SeqRet] [int] NULL,
	[DatOpr] [datetime] NULL,
	[HorOpr] [char](5) NULL,
	[Login] [varchar](15) NULL,
	[Dinheiro] [decimal](12, 2) NULL,
	[ChequeV] [decimal](12, 2) NULL,
	[ChequeP] [decimal](12, 2) NULL,
	[Cartao] [decimal](12, 2) NULL,
	[Vale] [decimal](12, 2) NULL,
	[Outros] [decimal](12, 2) NULL,
	[SitBxR] [char](1) NOT NULL,
	[SeqChR] [int] NULL,
	[DatCre] [datetime] NULL,
	[RetDep] [int] NULL,
	[SeqLnc] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_MOVBXR_1__10] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodTit] ASC,
	[SeqBxR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCai]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCai](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[DatCai] [datetime] NOT NULL,
	[CodHan] [int] NOT NULL,
	[CodDoc] [varchar](30) NULL,
	[ValCre] [decimal](12, 2) NULL,
	[ValDeb] [decimal](12, 2) NULL,
	[CodOrg] [int] NULL,
	[CodNot] [varchar](15) NULL,
	[OrgLnc] [char](2) NOT NULL,
	[TipLnc] [char](1) NULL,
	[Dinheiro] [decimal](12, 2) NULL,
	[ChequeV] [decimal](12, 2) NULL,
	[ChequeP] [decimal](12, 2) NULL,
	[Cartao] [decimal](12, 2) NULL,
	[Vale] [decimal](12, 2) NULL,
	[Outros] [decimal](12, 2) NULL,
	[ObsHan] [varchar](250) NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodHCp] [int] NULL,
	[CodCai] [int] NULL,
	[DatOpr] [datetime] NULL,
	[HorOpr] [char](5) NULL,
	[Login] [varchar](15) NULL,
	[CfrPos] [char](1) NOT NULL,
	[CfrObs] [varchar](250) NULL,
 CONSTRAINT [PK_MovCai] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCha]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCha](
	[CodEmp] [int] NOT NULL,
	[CodCha] [int] NOT NULL,
	[DatCha] [datetime] NOT NULL,
	[HorCha] [varchar](5) NOT NULL,
	[CodCli] [int] NOT NULL,
	[NomReq] [varchar](25) NOT NULL,
	[Solicitacao] [varchar](250) NOT NULL,
	[CodMtC] [int] NOT NULL,
	[CodDoc] [varchar](25) NULL,
	[CodAte] [int] NULL,
	[CodTec] [int] NULL,
	[DatIni] [datetime] NULL,
	[DatTer] [datetime] NULL,
	[HorIni] [varchar](5) NULL,
	[HorTer] [varchar](5) NULL,
	[Diagnostico] [varchar](250) NULL,
	[Garantia] [char](1) NULL,
	[CodMtG] [int] NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[ValPro] [decimal](12, 2) NULL,
	[ValCha] [decimal](12, 2) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[PosCha] [char](1) NOT NULL,
	[CodFec] [int] NULL,
 CONSTRAINT [PK_MovCha] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCha] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovChe]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovChe](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[CodChe] [int] NOT NULL,
	[ValChe] [money] NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[DatDep] [datetime] NOT NULL,
	[Nominal] [varchar](75) NULL,
	[Utilizado] [text] NULL,
	[CodHan] [int] NOT NULL,
	[TipOpe] [char](1) NOT NULL,
	[TipChe] [char](1) NOT NULL,
	[CodLan] [int] NULL,
	[PosChe] [char](1) NOT NULL,
	[OrgLan] [char](1) NULL,
	[Emitido] [char](1) NULL,
	[CodHcp] [int] NULL,
	[EmpRms] [int] NULL,
	[BanRms] [char](5) NULL,
	[CntRms] [varchar](12) NULL,
	[LanRms] [int] NULL,
	[LanCai] [int] NULL,
	[CodAge] [varchar](10) NULL,
	[CodCmp] [int] NULL,
	[Cnpj] [varchar](18) NULL,
	[Emitente] [varchar](75) NULL,
	[CMC7] [varchar](36) NULL,
	[CodCli] [int] NULL,
	[Status] [char](2) NOT NULL,
	[SeqChR] [int] NULL,
	[ValTrc] [decimal](12, 2) NULL,
	[SeqChe] [int] IDENTITY(1,1) NOT NULL,
	[CfrPos] [char](1) NOT NULL,
	[CfrObs] [varchar](250) NULL,
	[C1] [char](1) NULL,
	[C2] [char](1) NULL,
	[C3] [char](1) NULL,
	[Temporario] [char](1) NOT NULL,
	[DatPag] [datetime] NULL,
	[ValPag] [decimal](12, 2) NULL,
 CONSTRAINT [PK___8__13] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[CodChe] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCmp]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCmp](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatPed] [datetime] NOT NULL,
	[DatEnt] [datetime] NOT NULL,
	[CodVec] [int] NOT NULL,
	[CodTip] [int] NOT NULL,
	[TaxJur] [float] NULL,
	[TipJur] [char](1) NOT NULL,
	[ObsPed] [varchar](250) NULL,
	[ValPed] [money] NULL,
	[Moeda] [char](1) NULL,
	[TipFre] [char](1) NULL,
	[ValFre] [decimal](12, 2) NULL,
	[Status] [char](1) NOT NULL,
	[ValSbt] [decimal](12, 2) NULL,
	[CodSfr] [int] NULL,
	[CodCph] [int] NULL,
	[TipLnc] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
 CONSTRAINT [PK_MovCmp] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCms]    Script Date: 17/04/2018 16:55:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCms](
	[CodEmp] [int] NOT NULL,
	[SeqCms] [int] IDENTITY(1,1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPrv] [int] NULL,
	[CodFec] [int] NULL,
	[PosCms] [char](1) NOT NULL,
	[ValCre] [decimal](12, 2) NOT NULL,
	[ValDeb] [decimal](12, 2) NOT NULL,
	[CodHan] [int] NULL,
	[DatLnc] [datetime] NULL,
	[DatPrg] [datetime] NULL,
	[DatFec] [datetime] NULL,
	[ObsCms] [varchar](250) NULL,
	[CodVen] [int] NULL,
	[CmsVen] [decimal](5, 3) NULL,
	[CodCmsV] [int] NULL,
 CONSTRAINT [PK_MovCms] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqCms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCmsN]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCmsN](
	[CodEmp] [int] NOT NULL,
	[SeqCms] [int] IDENTITY(1,1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[CodVen] [int] NOT NULL,
	[CodPro] [int] NULL,
	[CodFec] [int] NULL,
	[ValCre] [decimal](12, 2) NULL,
	[ValDeb] [decimal](12, 2) NULL,
	[CodHan] [int] NOT NULL,
	[DatLnc] [datetime] NOT NULL,
	[DatPrg] [datetime] NULL,
	[DatFec] [datetime] NULL,
	[ObsCms] [varchar](250) NULL,
	[PosCms] [char](1) NOT NULL,
	[CodPed] [int] NULL,
	[CodTit] [varchar](15) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
 CONSTRAINT [PK_MovCmsN] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqCms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCnh]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCnh](
	[CodEmp] [int] NOT NULL,
	[CodCnh] [int] NOT NULL,
	[DatCnh] [datetime] NOT NULL,
	[CodTip] [int] NOT NULL,
	[InsIcm] [char](1) NULL,
	[PerRed] [float] NULL,
	[GerDup] [char](1) NULL,
	[CodRem] [int] NOT NULL,
	[CodDst] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[NotFsc] [varchar](50) NOT NULL,
	[ValFsc] [money] NOT NULL,
	[EspVol] [varchar](25) NOT NULL,
	[PesCrg] [decimal](12, 3) NOT NULL,
	[ValTnl] [money] NOT NULL,
	[ValFre] [money] NOT NULL,
	[ValBas] [money] NULL,
	[Icms] [float] NULL,
	[ValIcm] [money] NULL,
	[ValSeg] [money] NULL,
	[ValCnh] [money] NULL,
	[CodSeg] [int] NULL,
	[Apolice] [varchar](25) NULL,
	[CodTra] [int] NOT NULL,
	[CodMot] [int] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[FreCmb] [money] NULL,
	[Adiantamento] [money] NULL,
	[IcmsRecolhido] [money] NULL,
	[CodVec] [int] NOT NULL,
	[CodNtC] [int] NULL,
	[DatNtC] [datetime] NULL,
	[CodCan] [int] NULL,
	[DatCan] [datetime] NULL,
	[ObsFsc] [varchar](250) NULL,
	[ObsCnh] [varchar](250) NULL,
	[PosCnh] [char](1) NOT NULL,
	[TipDplC] [char](1) NULL,
	[Marca] [varchar](25) NULL,
	[CodCidC] [int] NULL,
	[CodCidE] [int] NULL,
	[TolQbr] [float] NULL,
	[EmiRsv] [char](1) NULL,
	[TipFre] [char](1) NOT NULL,
	[DatEtg] [datetime] NULL,
	[CodRspCTe] [int] NULL,
	[DscRspCTe] [varchar](255) NULL,
	[ReciboCTe] [varchar](30) NULL,
	[ChaveCTe] [varchar](60) NULL,
	[LoteCTe] [varchar](30) NULL,
	[ProtocoloCTe] [varchar](30) NULL,
	[ModeloNF] [char](2) NULL,
	[SerieNF] [char](3) NULL,
	[DataNF] [datetime] NULL,
	[QtdPro] [decimal](12, 3) NULL,
	[CodOrd] [int] NULL,
	[ChaveNF] [varchar](44) NULL,
	[CodClt] [int] NULL,
	[CodEtg] [int] NULL,
	[CodTmd] [int] NULL,
	[vTotTrib] [decimal](12, 2) NULL,
	[Averba] [char](1) NOT NULL,
	[DataAvb] [datetime] NULL,
	[CodRspAvb] [int] NULL,
	[DscRspAvb] [varchar](255) NULL,
	[ProtocoloAvb] [varchar](25) NULL,
	[TipSrv] [char](1) NOT NULL,
	[ChvCTeAnt] [char](44) NULL,
 CONSTRAINT [PK_MovCnh] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodCnh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCot]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCot](
	[DatCot] [datetime] NOT NULL,
	[ValCot] [decimal](12, 4) NOT NULL,
 CONSTRAINT [PK_MovCot] PRIMARY KEY CLUSTERED 
(
	[DatCot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovCrg]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovCrg](
	[CodEmp] [int] NOT NULL,
	[CodCrg] [int] IDENTITY(1,1) NOT NULL,
	[DatCrg] [datetime] NOT NULL,
	[CodPed] [varchar](25) NULL,
	[Status] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CidCrg] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[NomTra] [varchar](75) NULL,
	[NomCon] [varchar](75) NOT NULL,
	[CodCli] [int] NOT NULL,
	[CidEtg] [varchar](75) NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[NomDcg] [varchar](75) NULL,
	[PesCrg] [decimal](12, 3) NOT NULL,
	[FreCon] [decimal](12, 2) NOT NULL,
	[FreEmp] [decimal](12, 2) NOT NULL,
	[ObsCrg] [varchar](250) NULL,
	[NmrCtr] [varchar](15) NULL,
 CONSTRAINT [PK_MovCrg] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCrg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovDoc]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovDoc](
	[CodEmp] [int] NOT NULL,
	[CodDoc] [int] IDENTITY(1,1) NOT NULL,
	[TipDoc] [char](1) NOT NULL,
	[TipPro] [char](1) NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodCre] [int] NULL,
	[DatEmi] [datetime] NOT NULL,
	[DatVen] [datetime] NOT NULL,
	[DatEnt] [datetime] NOT NULL,
	[Safra] [char](9) NULL,
	[QtdPro] [float] NOT NULL,
	[PesPro] [float] NOT NULL,
	[ValDoc] [money] NULL,
	[CodTs1] [int] NULL,
	[CodTs2] [int] NULL,
	[AreaPnt] [varchar](25) NULL,
	[ProducaoEst] [varchar](25) NULL,
 CONSTRAINT [PK_MovDoc] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovDspP]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovDspP](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[CodPne] [int] NOT NULL,
	[QtdDsp] [float] NOT NULL,
	[ValDsp] [float] NOT NULL,
 CONSTRAINT [PK_MovDspP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC,
	[CodPne] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovDspV]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovDspV](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] NOT NULL,
	[DatLan] [datetime] NOT NULL,
	[DatDsp] [datetime] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[CodFun] [int] NULL,
	[CodDoc] [varchar](25) NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[CodFor] [int] NULL,
	[CodHan] [int] NOT NULL,
	[ObsHan] [varchar](180) NULL,
	[QtdLan] [float] NOT NULL,
	[ValCre] [float] NULL,
	[ValDeb] [float] NULL,
	[Odometro] [float] NULL,
	[CodCidC] [int] NULL,
	[CodCidD] [int] NULL,
	[PerCom] [decimal](5, 2) NULL,
	[CodVeiCvl] [varchar](8) NULL,
 CONSTRAINT [PK_MovDSpV] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovEst]    Script Date: 17/04/2018 16:55:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovEst](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NOT NULL,
	[Modelo] [char](2) NOT NULL,
	[Serie] [char](3) NOT NULL,
	[SubSerie] [char](2) NULL,
	[DatEnt] [datetime] NOT NULL,
	[DatNot] [datetime] NOT NULL,
	[ValNot] [money] NOT NULL,
	[ValNotD] [money] NULL,
	[BasIcm] [money] NULL,
	[ValIcm] [money] NULL,
	[BasSbt] [money] NULL,
	[ValSbt] [money] NULL,
	[ValPro] [money] NOT NULL,
	[BasIpi] [money] NULL,
	[ValIpi] [money] NULL,
	[ValFre] [money] NULL,
	[ValCnh] [money] NULL,
	[ValSeg] [money] NULL,
	[ValOut] [money] NULL,
	[ValDes] [money] NULL,
	[CodTip] [int] NOT NULL,
	[GerDup] [char](1) NULL,
	[TipFre] [char](1) NOT NULL,
	[CodPed] [int] NULL,
	[PosEnt] [char](1) NOT NULL,
	[CodVec] [int] NULL,
	[TaxJur] [float] NULL,
	[TipJur] [char](1) NULL,
	[PreEst] [char](1) NULL,
	[Moeda] [char](1) NULL,
	[Deposito] [char](1) NULL,
	[PedDep] [int] NULL,
	[ObsEst] [varchar](250) NULL,
	[PedTrf] [int] NULL,
	[EmpTrf] [int] NULL,
	[PedEnt] [int] NULL,
	[ValCot] [decimal](7, 4) NULL,
	[ChvNFe] [varchar](50) NULL,
	[EntDev] [char](1) NOT NULL,
	[PedDvC] [int] NULL,
	[PedDvV] [int] NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[CodVei] [char](8) NULL,
	[CodMtr] [int] NULL,
	[CodSfr] [int] NULL,
	[CodCph] [int] NULL,
	[CodBtd] [int] NULL,
	[BasSbtObs] [decimal](12, 2) NULL,
	[ValSbtObs] [decimal](12, 2) NULL,
	[ForPed] [int] NULL,
	[NtzCrd] [char](2) NULL,
	[OrgCrd] [char](1) NULL,
	[ValTVF] [decimal](12, 2) NULL,
	[PedVen] [int] NULL,
	[SitDcF] [char](2) NOT NULL,
	[CodCidC] [int] NULL,
	[CodCidE] [int] NULL,
 CONSTRAINT [PK_MovEst] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodNot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovFqT]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovFqT](
	[CodEmp] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[DatFqT] [datetime] NOT NULL,
	[HorTrb] [char](5) NULL,
	[HorExt] [char](5) NULL,
	[HorDsc] [char](5) NULL,
	[HorRfc] [char](5) NULL,
	[HorEsp] [char](5) NULL,
	[HorPrn] [char](5) NULL,
	[ObsFqT] [varchar](250) NULL,
 CONSTRAINT [PK_MovFqT] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFun] ASC,
	[DatFqT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovLot]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovLot](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[CodLcz] [varchar](15) NOT NULL,
	[DatVld] [datetime] NOT NULL,
	[Safra] [varchar](9) NULL,
	[DatEnt] [datetime] NULL,
	[PdtSmt] [int] NULL,
	[InsRns] [varchar](15) NULL,
 CONSTRAINT [PK_MovLot] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPro] ASC,
	[CodLot] ASC,
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovOP]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovOP](
	[CodEmp] [int] NOT NULL,
	[CodOP] [int] NOT NULL,
	[DatAbe] [datetime] NOT NULL,
	[HorAbe] [char](5) NOT NULL,
	[DatFec] [datetime] NULL,
	[HorFec] [char](5) NULL,
	[CodDoc] [varchar](25) NULL,
	[CodFun] [int] NOT NULL,
	[ObsOP] [varchar](250) NULL,
	[PosOP] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
 CONSTRAINT [PK_MovOP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovOpg]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovOpg](
	[CodEmp] [int] NOT NULL,
	[CodOpg] [int] IDENTITY(1,1) NOT NULL,
	[DatOpg] [datetime] NOT NULL,
	[TipOpg] [char](1) NOT NULL,
	[CodOrg] [int] NOT NULL,
	[CodDoc] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValOpg] [decimal](12, 2) NOT NULL,
	[PosOpg] [char](1) NOT NULL,
	[TipPag] [char](1) NULL,
	[DatPag] [datetime] NULL,
	[HorPag] [char](5) NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[Login] [varchar](15) NULL,
	[ValAbt] [decimal](12, 2) NULL,
 CONSTRAINT [PK_MovOpg] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOpg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovOrc]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovOrc](
	[CodEmp] [int] NOT NULL,
	[CodOrc] [int] NOT NULL,
	[DatOrc] [datetime] NOT NULL,
	[DatVld] [datetime] NULL,
	[CodCli] [int] NULL,
	[NomCli] [varchar](75) NOT NULL,
	[Fone1] [varchar](25) NULL,
	[Email] [varchar](75) NULL,
	[Contato] [varchar](25) NULL,
	[CodVen] [int] NULL,
	[CodVec] [int] NOT NULL,
	[TipFre] [char](1) NOT NULL,
	[ValFre] [decimal](12, 2) NULL,
	[Moeda] [char](1) NOT NULL,
	[ValPro] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValOrc] [decimal](12, 2) NULL,
	[ObsOrc] [varchar](600) NULL,
	[PosOrc] [char](1) NOT NULL,
	[CodPed] [int] NULL,
	[TipDoc] [char](1) NOT NULL,
	[CodAge] [int] NULL,
	[CodRsv] [int] NULL,
	[EmpTrf] [int] NULL,
	[Status] [char](1) NOT NULL,
	[ObsInt] [varchar](600) NULL,
	[ValSrv] [decimal](12, 2) NULL,
 CONSTRAINT [PK_MovOrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovOS]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovOS](
	[CodEmp] [int] NOT NULL,
	[CodOS] [int] NOT NULL,
	[DatAbe] [datetime] NOT NULL,
	[HorAbe] [char](5) NOT NULL,
	[DatFec] [datetime] NULL,
	[HorFec] [char](5) NULL,
	[TipOS] [char](1) NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[OdmAbe] [decimal](12, 2) NOT NULL,
	[CodDoc] [varchar](25) NULL,
	[CodFun] [int] NOT NULL,
	[ValOS] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[CodFor] [int] NULL,
	[CodNot] [int] NULL,
	[Cobranca] [varchar](8) NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodHan] [int] NULL,
	[CodHCp] [int] NULL,
	[TaxJur] [decimal](12, 2) NULL,
	[TipJur] [char](1) NULL,
	[ForPag] [char](1) NULL,
	[PosOS] [char](1) NOT NULL,
	[ValPag] [decimal](12, 2) NULL,
	[CodVeiCvl] [varchar](8) NULL,
	[OdmFec] [decimal](12, 2) NULL,
	[CodMtr] [int] NULL,
	[CodAdt] [int] NULL,
	[TipCTe] [char](1) NULL,
	[NmrCTeP] [int] NULL,
	[NmrCTeT] [int] NULL,
	[ChvCTeT] [varchar](44) NULL,
	[DatCTeT] [datetime] NULL,
	[CliCTeT] [int] NULL,
	[PesCrg] [decimal](12, 3) NULL,
	[ValTnl] [decimal](12, 2) NULL,
	[ValFre] [decimal](12, 2) NULL,
	[ValQTc] [decimal](12, 2) NULL,
	[CidClt] [int] NULL,
	[CidEtg] [int] NULL,
	[CobrancaR] [varchar](8) NULL,
	[CodBanR] [char](5) NULL,
	[CodCntR] [varchar](12) NULL,
	[DatVen] [datetime] NULL,
	[ObsOS] [varchar](250) NULL,
	[ValPdg] [decimal](12, 2) NULL,
	[ValAdt] [decimal](12, 2) NULL,
	[ValAcr] [decimal](12, 2) NULL,
	[AbtFre] [decimal](12, 2) NULL,
	[DtPFec] [datetime] NULL,
 CONSTRAINT [PK_MovOS] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOS] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPag]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPag](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[DatVen] [datetime] NOT NULL,
	[DatPag] [datetime] NULL,
	[ValNom] [money] NOT NULL,
	[ValNomR] [money] NULL,
	[ValPag] [money] NULL,
	[ValPagR] [money] NULL,
	[ValJur] [money] NULL,
	[ValDes] [money] NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodHan] [int] NOT NULL,
	[ObsHan] [varchar](250) NULL,
	[CodNot] [int] NULL,
	[TaxJur] [float] NULL,
	[TipJur] [char](1) NULL,
	[DatPrg] [datetime] NULL,
	[Moeda] [char](1) NULL,
	[TipLnc] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodHCp] [int] NULL,
	[Status] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
	[DatOpr] [datetime] NULL,
	[ValCot] [decimal](7, 4) NULL,
	[SitTit] [char](1) NOT NULL,
	[DatSit] [datetime] NULL,
	[CodMot] [int] NULL,
 CONSTRAINT [PK_MOVPAG_1__10] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodTit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPed]    Script Date: 17/04/2018 16:55:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatPed] [datetime] NOT NULL,
	[CodRsv] [int] NULL,
	[TipPed] [char](1) NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodVen] [int] NULL,
	[CodCom] [int] NULL,
	[CodCmE] [int] NULL,
	[CodTip] [int] NOT NULL,
	[Icms] [float] NULL,
	[InsIcm] [char](1) NULL,
	[PerRed] [float] NULL,
	[PreEst] [char](1) NULL,
	[PreRsv] [char](1) NULL,
	[GerDup] [char](1) NULL,
	[NotEnt] [char](1) NULL,
	[TipVnd] [char](1) NULL,
	[CodPedFT] [int] NULL,
	[CodVec] [int] NOT NULL,
	[TipFre] [char](1) NOT NULL,
	[CodTra] [int] NULL,
	[CodVei] [char](8) NULL,
	[CodNot] [int] NULL,
	[DatNot] [datetime] NULL,
	[ValPro] [money] NULL,
	[ValProR] [money] NULL,
	[ValDes] [money] NULL,
	[ValDesR] [money] NULL,
	[ValFre] [money] NULL,
	[ValFreR] [money] NULL,
	[ValPed] [money] NULL,
	[ValPedR] [money] NULL,
	[ValNot] [money] NULL,
	[ValNotR] [money] NULL,
	[ValBas] [money] NULL,
	[ValBasR] [money] NULL,
	[ValIcm] [money] NULL,
	[ValIcmR] [money] NULL,
	[BasSbt] [money] NULL,
	[ValSbt] [money] NULL,
	[TaxJur] [float] NULL,
	[CodCan] [int] NULL,
	[DatCan] [datetime] NULL,
	[ObsFsc] [varchar](250) NULL,
	[ObsPed] [varchar](250) NULL,
	[Moeda] [char](1) NULL,
	[ValCot] [money] NULL,
	[PosPed] [char](1) NOT NULL,
	[CodFat] [int] NULL,
	[DatFat] [datetime] NULL,
	[Importado] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
	[Deposito] [char](1) NULL,
	[PedDep] [int] NULL,
	[FecCha] [int] NULL,
	[CodOrc] [int] NULL,
	[EmpTrf] [int] NULL,
	[TipDoc] [char](1) NOT NULL,
	[CodCup] [int] NULL,
	[DatCup] [datetime] NULL,
	[CodAge] [int] NULL,
	[CodCmsA] [int] NULL,
	[PedAgp] [int] NULL,
	[ChvNFe] [varchar](50) NULL,
	[PedDev] [char](1) NOT NULL,
	[PedDvV] [int] NULL,
	[ForDvC] [int] NULL,
	[NotDvC] [int] NULL,
	[ValIpi] [float] NULL,
	[LncCms] [char](1) NOT NULL,
	[ExpNFe] [char](1) NOT NULL,
	[PedCup] [int] NULL,
	[ObsCrp] [varchar](250) NULL,
	[PosCup] [char](1) NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[CodMtr] [int] NULL,
	[ValRcl] [decimal](12, 2) NULL,
	[CodOrd] [int] NULL,
	[DtSNot] [datetime] NULL,
	[QtdVol] [int] NULL,
	[EspVol] [varchar](25) NULL,
	[CodSfr] [int] NULL,
	[CodCph] [int] NULL,
	[CodCul] [int] NULL,
	[CpfCup] [varchar](18) NULL,
	[NomCup] [varchar](35) NULL,
	[ValOut] [decimal](12, 2) NULL,
	[CodPedRVF] [int] NULL,
	[CodDoc] [varchar](25) NULL,
	[ChvNFeDv] [varchar](50) NULL,
	[BasSbtObs] [decimal](12, 2) NULL,
	[ValSbtObs] [decimal](12, 2) NULL,
	[ValCnh] [decimal](12, 2) NULL,
	[ValSeg] [decimal](12, 2) NULL,
	[CodPgd] [int] NULL,
	[BasIcmUFd] [decimal](12, 2) NULL,
	[ValFECP] [decimal](12, 2) NULL,
	[ValDIFd] [decimal](12, 2) NULL,
	[ValDIFr] [decimal](12, 2) NULL,
	[ModNot] [char](2) NULL,
	[SerNot] [char](3) NULL,
	[CodRmn] [int] NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[FunASv] [int] NULL,
	[FunFSv] [int] NULL,
 CONSTRAINT [PK_MOVPED_1__13] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPMP]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPMP](
	[CodEmp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[DatPMP] [datetime] NOT NULL,
	[ValPMP] [decimal](12, 4) NOT NULL,
 CONSTRAINT [PK_MovPMP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPro] ASC,
	[DatPMP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPne]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPne](
	[CodEmp] [int] NOT NULL,
	[CodLan] [int] IDENTITY(1,1) NOT NULL,
	[CodPne] [int] NOT NULL,
	[DatMov] [datetime] NOT NULL,
	[CodMvP] [int] NOT NULL,
	[CodVeiA] [char](8) NULL,
	[EixoA] [char](3) NULL,
	[CodVeiD] [char](8) NULL,
	[EixoD] [char](3) NULL,
 CONSTRAINT [PK_MovPne] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPrA]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPrA](
	[CodEmp] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodDoc] [varchar](25) NOT NULL,
	[DatPrA] [datetime] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[NomCdt] [varchar](50) NOT NULL,
	[CodPro] [int] NOT NULL,
	[ValPro] [decimal](12, 4) NOT NULL,
	[PesBrt] [decimal](12, 3) NOT NULL,
	[TarVei] [decimal](12, 3) NULL,
	[QtDUmd] [decimal](12, 3) NULL,
	[QtDImp] [decimal](12, 3) NULL,
	[QtDQbr] [decimal](12, 3) NULL,
	[QtDEvd] [decimal](12, 3) NULL,
	[QtDSrv] [decimal](12, 3) NULL,
	[QtdDes] [decimal](12, 3) NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[ObsPrA] [varchar](250) NULL,
	[PosPrA] [char](1) NOT NULL,
	[CodFec] [int] NULL,
	[NmrTqP] [varchar](15) NULL,
	[TipEnt] [char](1) NOT NULL,
	[SeqPrA] [int] IDENTITY(1,1) NOT NULL,
	[TxPArm] [decimal](5, 2) NULL,
	[TxPQTc] [decimal](5, 2) NULL,
	[TxPExp] [decimal](5, 2) NULL,
	[TxPArmCrc] [int] NULL,
	[DtSPrA] [datetime] NULL,
	[CodPsg] [int] NULL,
	[QtDArd] [decimal](12, 3) NULL,
	[QtDQbd] [decimal](12, 3) NULL,
	[TipMov] [char](1) NOT NULL,
 CONSTRAINT [PK_MovPrA] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCli] ASC,
	[CodDoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPrv]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPrv](
	[CodEmp] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[MesPrv] [int] NOT NULL,
	[AnoPrv] [int] NOT NULL,
	[ValPrv] [decimal](12, 2) NOT NULL,
	[ObsPrv] [varchar](250) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [int] NULL,
 CONSTRAINT [PK_MovPrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodHan] ASC,
	[MesPrv] ASC,
	[AnoPrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovPsg]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovPsg](
	[CodEmp] [int] NOT NULL,
	[CodPsg] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodSfr] [varchar](9) NULL,
	[ValPro] [decimal](12, 4) NOT NULL,
	[CodNot] [int] NULL,
	[Modelo] [char](2) NULL,
	[Serie] [char](3) NULL,
	[DatNot] [datetime] NULL,
	[ChvNFe] [varchar](44) NULL,
	[CodVei] [char](8) NOT NULL,
	[NomCdt] [varchar](50) NOT NULL,
	[TipOpe] [char](1) NOT NULL,
	[TipMov] [char](1) NOT NULL,
	[DatEnt] [datetime] NOT NULL,
	[HorEnt] [char](8) NOT NULL,
	[PesEnt] [decimal](12, 3) NOT NULL,
	[DatSai] [datetime] NULL,
	[HorSai] [char](8) NULL,
	[PesSai] [decimal](12, 3) NULL,
	[PesBrt] [decimal](12, 3) NULL,
	[TxUmd] [decimal](5, 2) NULL,
	[TxImp] [decimal](5, 2) NULL,
	[TxQbr] [decimal](5, 2) NULL,
	[TxEvd] [decimal](5, 2) NULL,
	[QtDUmd] [decimal](12, 3) NULL,
	[QtDImp] [decimal](12, 3) NULL,
	[QtDQbr] [decimal](12, 3) NULL,
	[QtDEvd] [decimal](12, 3) NULL,
	[QtDSrv] [decimal](12, 3) NULL,
	[QtdDes] [decimal](12, 3) NULL,
	[PesLiq] [decimal](12, 3) NULL,
	[TxPArm] [decimal](5, 2) NULL,
	[TxPQTc] [decimal](5, 2) NULL,
	[TxPExp] [decimal](5, 2) NULL,
	[TxPArmCrc] [int] NULL,
	[PosPsg] [char](1) NOT NULL,
	[CliACg] [int] NULL,
	[CodNotSbt] [int] NULL,
	[ModeloSbt] [char](2) NULL,
	[SerieSbt] [char](3) NULL,
	[DatNotSbt] [datetime] NULL,
	[ChvNFeSbt] [varchar](44) NULL,
	[QtDArd] [decimal](12, 3) NULL,
	[QtDQbd] [decimal](12, 3) NULL,
	[TxArd] [decimal](5, 2) NULL,
	[TxQbd] [decimal](5, 2) NULL,
	[ObsPsg] [varchar](250) NULL,
	[SeqSlc] [int] NULL,
 CONSTRAINT [PK_MovPsg] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPsg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovQlm]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovQlm](
	[CodEmp] [int] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[DatLan] [datetime] NOT NULL,
	[CodCon] [int] NOT NULL,
	[OdmIni] [float] NOT NULL,
	[OdmFin] [float] NOT NULL,
	[Saldo] [float] NOT NULL,
 CONSTRAINT [PK_MovQlm] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodVei] ASC,
	[DatLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovQlmP]    Script Date: 17/04/2018 16:55:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovQlmP](
	[CodEmp] [int] NOT NULL,
	[CodPne] [int] NOT NULL,
	[CodVei] [char](8) NOT NULL,
	[DatLan] [datetime] NOT NULL,
	[Eixo] [char](3) NULL,
	[Saldo] [float] NULL,
	[QlmIni] [float] NULL,
	[QlmFin] [float] NULL,
	[FlgEst] [bit] NOT NULL,
 CONSTRAINT [PK_MovQlmP] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodPne] ASC,
	[CodVei] ASC,
	[DatLan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovRct]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovRct](
	[CodEmp] [int] NOT NULL,
	[CodART] [bigint] NOT NULL,
	[CodRct] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[DatRct] [datetime] NOT NULL,
	[ObsRct] [varchar](250) NULL,
	[CodPed] [int] NULL,
	[RctDgt] [varchar](20) NULL,
 CONSTRAINT [PK_MovRct] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodART] ASC,
	[CodRct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovRec]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovRec](
	[CodEmp] [int] NOT NULL,
	[CodTit] [varchar](15) NOT NULL,
	[CodCli] [int] NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[DatVen] [datetime] NOT NULL,
	[DatPag] [datetime] NULL,
	[ValNom] [money] NOT NULL,
	[ValNomR] [money] NULL,
	[ValPag] [money] NULL,
	[ValPagR] [money] NULL,
	[ValJur] [money] NULL,
	[ValDes] [money] NULL,
	[TaxJur] [float] NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodHan] [int] NOT NULL,
	[ObsHan] [varchar](250) NULL,
	[CodPed] [int] NULL,
	[CodVen] [int] NULL,
	[ForPag] [char](1) NULL,
	[DatPrg] [datetime] NULL,
	[Moeda] [char](1) NULL,
	[ValCot] [money] NULL,
	[SeqTit] [int] NOT NULL,
	[SeqRms] [int] NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[Status] [char](3) NOT NULL,
	[FecCha] [int] NULL,
	[CodHCp] [int] NULL,
	[DatOpr] [datetime] NULL,
	[SitTit] [char](1) NOT NULL,
	[DatSit] [datetime] NULL,
	[CodMot] [int] NULL,
	[CodRng] [int] NULL,
	[LncCms] [char](1) NOT NULL,
	[DatCre] [datetime] NULL,
	[FtrDRc] [float] NULL,
	[CodPgd] [int] NULL,
 CONSTRAINT [PK_MOVREC_1__10] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodTit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_MovRecSeqTit] UNIQUE NONCLUSTERED 
(
	[CodEmp] ASC,
	[SeqTit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovRmn]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovRmn](
	[CodEmp] [int] NOT NULL,
	[CodRmn] [int] NOT NULL,
	[DatRmn] [datetime] NOT NULL,
	[HorRmn] [char](5) NOT NULL,
	[LogRmn] [varchar](15) NULL,
	[CodVei] [char](8) NULL,
	[CodTra] [int] NULL,
	[CodMtr] [int] NULL,
	[ObsRmn] [varchar](250) NULL,
 CONSTRAINT [PK_MovRmn] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRmn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovRsv]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[DatRsv] [datetime] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodVen] [int] NULL,
	[CodCom] [int] NULL,
	[CodTip] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[ValPro] [money] NOT NULL,
	[ValDes] [money] NULL,
	[ValRsv] [money] NULL,
	[ObsRsv] [varchar](600) NULL,
	[Moeda] [char](1) NULL,
	[TaxJur] [float] NULL,
	[CodAge] [int] NULL,
	[CodCmsA] [int] NULL,
	[TipDoc] [char](1) NOT NULL,
	[DatVld] [datetime] NULL,
	[Status] [char](1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrc] [int] NULL,
	[CodTra] [int] NULL,
	[CodVei] [char](8) NULL,
	[CodDoc] [varchar](25) NULL,
	[TipCrg] [char](2) NOT NULL,
	[ObsInt] [varchar](600) NULL,
	[CodSfr] [int] NULL,
	[CodCph] [int] NULL,
	[CodCul] [int] NULL,
	[CodCidC] [int] NULL,
	[CodCidE] [int] NULL,
	[CodPgd] [int] NULL,
	[TipTra] [char](1) NOT NULL,
	[Troca] [char](1) NOT NULL,
	[CodCulT] [int] NULL,
	[ValCulT] [decimal](12, 2) NULL,
	[QtdProT] [decimal](12, 3) NULL,
	[CodGUI] [varchar](38) NULL,
	[PedAtc] [int] NULL,
 CONSTRAINT [PK_MovRsv] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovSrv]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovSrv](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[DatPed] [datetime] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodTip] [int] NOT NULL,
	[GerDup] [char](1) NULL,
	[CodVec] [int] NOT NULL,
	[CodVen] [int] NULL,
	[CodCom] [int] NULL,
	[CodAge] [int] NULL,
	[CodCmsA] [int] NULL,
	[TaxJur] [decimal](5, 2) NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValPed] [decimal](12, 2) NULL,
	[ValNot] [decimal](12, 2) NULL,
	[CodNot] [int] NULL,
	[DatNot] [datetime] NULL,
	[CodFat] [int] NULL,
	[DatFat] [datetime] NULL,
	[CodCan] [int] NULL,
	[DatCan] [datetime] NULL,
	[ObsPed] [varchar](250) NULL,
	[ObsFsc] [varchar](250) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[TipLnc] [char](1) NOT NULL,
	[PosPed] [char](1) NOT NULL,
	[FecCha] [int] NULL,
	[ValRtc] [decimal](12, 2) NULL,
	[ChvNFSe] [varchar](44) NULL,
	[FecVDr] [int] NULL,
	[FunASv] [int] NULL,
	[FunFSv] [int] NULL,
	[FecPed] [int] NULL,
 CONSTRAINT [PK_MovSrv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MovVDr]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MovVDr](
	[CodEmp] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodPed] [varchar](25) NOT NULL,
	[DatPed] [datetime] NOT NULL,
	[DatEtg] [datetime] NOT NULL,
	[Moeda] [char](1) NOT NULL,
	[CodSfr] [int] NULL,
	[CodCli] [int] NOT NULL,
	[CodVen] [int] NULL,
	[CodCom] [int] NULL,
	[ObsVDr] [varchar](250) NULL,
	[ValPed] [decimal](12, 2) NULL,
	[PosVDr] [char](1) NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_MovVDr] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodFor] ASC,
	[CodPed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OcoRec]    Script Date: 17/04/2018 16:55:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OcoRec](
	[CodEmp] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[DatOco] [datetime] NOT NULL,
	[HorOco] [char](5) NOT NULL,
	[CodMot] [int] NOT NULL,
	[CodTit] [varchar](15) NULL,
	[ObsOco] [varchar](250) NULL,
	[PesOco] [varchar](50) NULL,
	[Retorno] [char](1) NOT NULL,
	[DatRet] [datetime] NULL,
	[HorRet] [char](5) NULL,
	[Lembrete] [varchar](250) NULL,
	[PesRet] [varchar](50) NULL,
	[DatCnf] [datetime] NULL,
	[HorCnf] [char](5) NULL,
	[LogCnf] [varchar](15) NULL,
	[ObsCnf] [varchar](250) NULL,
	[Login] [varchar](15) NULL,
	[LoginOco] [varchar](15) NULL,
 CONSTRAINT [PK_OcoRec] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodCli] ASC,
	[DatOco] ASC,
	[HorOco] ASC,
	[CodMot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpBtd]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpBtd](
	[CodEmp] [int] NOT NULL,
	[CodOp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodBtd] [int] NOT NULL,
	[DatBtd] [datetime] NOT NULL,
	[PesBtd] [decimal](12, 3) NOT NULL,
	[QtdBtd] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[CodLot] [varchar](25) NOT NULL,
	[VldLot] [datetime] NOT NULL,
	[QtdPdz] [decimal](12, 3) NULL,
	[DatFec] [datetime] NULL,
	[HorFec] [char](5) NULL,
	[CstDrt] [decimal](12, 4) NULL,
	[CstIdr] [decimal](12, 4) NULL,
	[LpzArs] [char](1) NOT NULL,
	[CodArs] [int] NULL,
	[QtdArs] [decimal](12, 3) NULL,
	[ProAnt] [int] NULL,
 CONSTRAINT [PK_OpBtd] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOp] ASC,
	[CodPro] ASC,
	[CodBtd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpBtdMCc]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpBtdMCc](
	[CodEmp] [int] NOT NULL,
	[CodOp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodBtd] [int] NOT NULL,
	[ProPdz] [int] NOT NULL,
	[QtdPTt] [decimal](12, 3) NULL,
	[CDFPro] [decimal](12, 4) NULL,
	[VlPCIF] [decimal](12, 4) NULL,
	[VlPCDF] [decimal](12, 4) NULL,
	[VlPTot] [decimal](12, 4) NULL,
	[PrtPCT] [float] NULL,
	[CIFPTt] [decimal](12, 4) NULL,
	[CstTtF] [decimal](12, 4) NULL,
	[CstIdr] [decimal](12, 4) NULL,
 CONSTRAINT [PK_OpBtdMCc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOp] ASC,
	[CodPro] ASC,
	[CodBtd] ASC,
	[ProPdz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpBtdMtP]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpBtdMtP](
	[CodEmp] [int] NOT NULL,
	[CodOp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodBtd] [int] NOT NULL,
	[CodMtP] [int] NOT NULL,
	[QtdMtP] [decimal](12, 3) NOT NULL,
	[QtdEst] [decimal](12, 3) NULL,
 CONSTRAINT [PK_OpBtdMtP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOp] ASC,
	[CodPro] ASC,
	[CodBtd] ASC,
	[CodMtP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OpNtr]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OpNtr](
	[CodEmp] [int] NOT NULL,
	[CodOp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodMtP] [int] NOT NULL,
	[CodNtr] [int] NOT NULL,
	[SeqNtr] [char](2) NULL,
	[NivMin] [decimal](12, 3) NOT NULL,
	[Concentracao] [decimal](6, 3) NOT NULL,
	[QtPAtv] [decimal](12, 3) NOT NULL,
	[PesIgd] [decimal](12, 3) NOT NULL,
	[PesUnd] [decimal](12, 3) NOT NULL,
	[NivMax] [decimal](12, 3) NULL,
 CONSTRAINT [PK_OpNtr] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOp] ASC,
	[CodPro] ASC,
	[CodMtP] ASC,
	[CodNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrdCrg]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrdCrg](
	[CodEmp] [int] NOT NULL,
	[CodOrd] [int] NOT NULL,
	[DatOrd] [datetime] NOT NULL,
	[StsOrd] [char](1) NOT NULL,
	[PosOrd] [char](1) NOT NULL,
	[CodRsv] [int] NOT NULL,
	[TipCrg] [char](2) NOT NULL,
	[CodCli] [int] NULL,
	[SeqTlh] [int] NULL,
	[SeqSlc] [int] NULL,
	[CodPro] [int] NOT NULL,
	[CodSml] [int] NOT NULL,
	[SldRsv] [float] NULL,
	[QtdPro] [float] NOT NULL,
	[QtdProF] [float] NULL,
	[CodFor] [int] NULL,
	[CodCmp] [int] NULL,
	[SldCmp] [float] NULL,
	[CodNtF] [int] NULL,
	[DtPCrg] [datetime] NOT NULL,
	[DtPDsc] [datetime] NOT NULL,
	[FreEmp] [decimal](12, 2) NULL,
	[FreMtr] [decimal](12, 2) NULL,
	[FreIcm] [decimal](12, 4) NULL,
	[CodTra] [int] NULL,
	[NomTra] [varchar](75) NULL,
	[CodMtr] [int] NULL,
	[NomMtr] [varchar](75) NULL,
	[CodVei] [char](8) NULL,
	[NomVei] [varchar](75) NULL,
	[CodFP1] [int] NULL,
	[PerFP1] [decimal](5, 2) NULL,
	[TpPFP1] [char](2) NULL,
	[DtPFP1] [datetime] NULL,
	[CodFP2] [int] NULL,
	[PerFP2] [decimal](5, 2) NULL,
	[TpPFP2] [char](2) NULL,
	[DtPFP2] [datetime] NULL,
	[CodFP3] [int] NULL,
	[TpPFP3] [char](2) NULL,
	[DtPFP3] [datetime] NULL,
	[ObsOrd] [varchar](250) NULL,
	[NumeroNF] [int] NULL,
	[ModeloNF] [char](2) NULL,
	[SerieNF] [char](3) NULL,
	[DataNF] [datetime] NULL,
	[ValorNF] [decimal](12, 2) NULL,
	[TipFre] [char](1) NULL,
	[CodPed] [int] NULL,
	[CodCnh] [int] NULL,
	[ObsFsc] [varchar](250) NULL,
	[ChaveNF] [varchar](44) NULL,
	[CodForNF] [int] NULL,
	[CodDstNF] [int] NULL,
	[RNTRC] [varchar](25) NULL,
	[EnvACr] [char](1) NOT NULL,
	[EvAPg1] [char](1) NOT NULL,
	[EvAPg2] [char](1) NOT NULL,
	[EvAPg3] [char](1) NOT NULL,
	[CodCidC] [int] NULL,
	[CodCidE] [int] NULL,
	[CodSfr] [int] NULL,
	[CodCph] [int] NULL,
	[CodCul] [int] NULL,
	[TipTra] [char](1) NOT NULL,
	[EstVei] [char](2) NULL,
	[CPFMtr] [varchar](14) NULL,
	[CodCv1] [varchar](8) NULL,
	[CodCv2] [varchar](8) NULL,
	[CodCv3] [varchar](8) NULL,
 CONSTRAINT [PK_OrdCrg] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PatPro]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PatPro](
	[CodEmp] [int] NOT NULL,
	[CodPat] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[TipRat] [char](1) NOT NULL,
	[PerRat] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_PatPro] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPat] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PlnCtb]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PlnCtb](
	[CodCta] [varchar](25) NOT NULL,
	[NomCta] [varchar](60) NOT NULL,
	[NivCta] [int] NOT NULL,
	[TipCta] [char](1) NOT NULL,
	[NtzCta] [char](2) NOT NULL,
	[DatCad] [datetime] NOT NULL,
 CONSTRAINT [PK_PlnCtb] PRIMARY KEY CLUSTERED 
(
	[CodCta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PneVei]    Script Date: 17/04/2018 16:55:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PneVei](
	[CodVei] [varchar](8) NOT NULL,
	[CodPne] [int] NOT NULL,
	[Eixo] [char](3) NOT NULL,
 CONSTRAINT [PK_PneVei] PRIMARY KEY NONCLUSTERED 
(
	[CodVei] ASC,
	[CodPne] ASC,
	[Eixo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrgRsv]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrgRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[DtIPrg] [datetime] NOT NULL,
	[DtFPrg] [datetime] NOT NULL,
	[QtdPrg] [decimal](12, 3) NOT NULL,
	[ObsPrg] [varchar](250) NULL,
 CONSTRAINT [PK_PrgRsv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC,
	[CodPro] ASC,
	[DtIPrg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProApl]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProApl](
	[CodPro] [int] NOT NULL,
	[CodApl] [int] NOT NULL,
	[ObsApl] [text] NULL,
 CONSTRAINT [PK_ProApl] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[CodApl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCls]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCls](
	[CodPro] [int] NOT NULL,
	[TipCls] [char](1) NOT NULL,
	[PrcCls] [decimal](5, 2) NOT NULL,
	[FtrEnt] [decimal](5, 2) NOT NULL,
	[FtrSai] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_ProCls] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[TipCls] ASC,
	[PrcCls] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCps]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCps](
	[CodPro] [int] NOT NULL,
	[CodMtP] [int] NOT NULL,
	[CodNtr] [int] NOT NULL,
	[SeqNtr] [char](2) NULL,
	[NivMin] [decimal](12, 3) NOT NULL,
	[NivMax] [decimal](12, 3) NULL,
	[Concentracao] [decimal](6, 3) NOT NULL,
	[QtPAtv] [decimal](12, 3) NOT NULL,
	[PesIgd] [decimal](12, 3) NOT NULL,
	[PesUnd] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_ProCps] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[CodMtP] ASC,
	[CodNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProCul]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProCul](
	[CodPro] [int] NOT NULL,
	[CodCul] [int] NOT NULL,
	[CodAge] [int] NOT NULL,
	[Dosagem] [varchar](25) NULL,
	[Qtdade] [float] NULL,
	[Vazao] [varchar](50) NULL,
	[NumeroApl] [varchar](10) NULL,
	[MetodoApl] [varchar](500) NULL,
	[Carencia] [varchar](50) NULL,
	[Diagnos] [varchar](50) NULL,
	[Epoca] [varchar](500) NULL,
	[Orientacoes] [varchar](500) NULL,
	[QtdadeF] [float] NULL,
	[UnDosagem] [varchar](50) NULL,
	[Calda] [float] NULL,
	[CaldaF] [float] NULL,
	[UnCalda] [varchar](50) NULL,
	[IntervaloApl] [varchar](25) NULL,
 CONSTRAINT [PK_CulPro] PRIMARY KEY NONCLUSTERED 
(
	[CodPro] ASC,
	[CodCul] ASC,
	[CodAge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProGNt]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProGNt](
	[CodPro] [int] NOT NULL,
	[CodNtr] [int] NOT NULL,
	[TipNtr] [char](2) NOT NULL,
	[QtdNtr] [decimal](12, 3) NOT NULL,
	[UndNtr] [char](2) NOT NULL,
 CONSTRAINT [PK_ProGNt] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[CodNtr] ASC,
	[TipNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProMtP]    Script Date: 17/04/2018 16:55:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProMtP](
	[CodPro] [int] NOT NULL,
	[CodMtP] [int] NOT NULL,
 CONSTRAINT [PK_ProMtP] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[CodMtP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProNtr]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProNtr](
	[CodPro] [int] NOT NULL,
	[CodNtr] [int] NOT NULL,
	[CtgNtr] [char](1) NOT NULL,
 CONSTRAINT [PK_ProNtr] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[CodNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProOS]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProOS](
	[CodEmp] [int] NOT NULL,
	[CodOS] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[TipPro] [char](1) NOT NULL,
	[ValPro] [decimal](12, 5) NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_ProOS] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOS] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProPrc]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProPrc](
	[CodEmp] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[ValPro] [decimal](12, 4) NOT NULL,
 CONSTRAINT [PK_ProPrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPro] ASC,
	[CodVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProUmd]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProUmd](
	[CodPro] [int] NOT NULL,
	[UmdIni] [decimal](5, 2) NOT NULL,
	[UmdFin] [decimal](5, 2) NOT NULL,
	[TaxSrv] [decimal](5, 2) NOT NULL,
 CONSTRAINT [PK_ProUmd] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC,
	[UmdIni] ASC,
	[UmdFin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrvCms]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrvCms](
	[CodEmp] [int] NOT NULL,
	[SeqPrv] [int] IDENTITY(1,1) NOT NULL,
	[CodCli] [int] NOT NULL,
	[DatPed] [datetime] NULL,
	[DatVen] [datetime] NULL,
	[CodPed] [int] NULL,
	[CodNot] [int] NULL,
	[CodFor] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdPro] [decimal](12, 3) NOT NULL,
	[ValPro] [decimal](12, 3) NOT NULL,
	[ValTot] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
	[PerDes] [decimal](5, 3) NULL,
	[CodCmsE] [int] NULL,
	[CmsEmp] [decimal](5, 3) NULL,
	[CodVen] [int] NULL,
	[CodCmsV] [int] NULL,
	[CmsVen] [decimal](5, 3) NULL,
	[ObsPrv] [varchar](250) NULL,
	[TipLnc] [char](1) NOT NULL,
	[PosPrv] [char](1) NOT NULL,
	[DatImp] [datetime] NULL,
 CONSTRAINT [PK_PrvCms] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqPrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResEsC]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResEsC](
	[CodEmp] [int] NOT NULL,
	[CodREC] [int] NOT NULL,
	[CodRHC] [int] NOT NULL,
	[DatEst] [datetime] NOT NULL,
	[HorEst] [char](5) NOT NULL,
	[LogEst] [varchar](15) NOT NULL,
 CONSTRAINT [PK_ResEsC] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodREC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResGrP]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResGrP](
	[CodEmp] [int] NOT NULL,
	[SeqGrP] [int] IDENTITY(1,1) NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[AnoIni] [int] NOT NULL,
	[MesIni] [int] NOT NULL,
	[DiaVen] [int] NOT NULL,
	[QtdPrc] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[CodHcp] [int] NULL,
	[ValNom] [decimal](12, 2) NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[TaxJur] [decimal](5, 2) NULL,
	[TipJur] [char](1) NOT NULL,
	[ObsGrP] [varchar](250) NULL,
	[LogGrP] [varchar](15) NULL,
	[DatGrP] [datetime] NULL,
	[HorGrP] [char](8) NULL,
 CONSTRAINT [PK_ResGrP] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqGrP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResGrR]    Script Date: 17/04/2018 16:55:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResGrR](
	[CodEmp] [int] NOT NULL,
	[SeqGrR] [int] IDENTITY(1,1) NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[AnoIni] [int] NOT NULL,
	[MesIni] [int] NOT NULL,
	[DiaVen] [int] NOT NULL,
	[QtdPrc] [int] NOT NULL,
	[CodCli] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[CodHcp] [int] NULL,
	[ValNom] [decimal](12, 2) NOT NULL,
	[TipDoc] [varchar](12) NOT NULL,
	[Cobranca] [varchar](8) NOT NULL,
	[TaxJur] [decimal](5, 2) NULL,
	[ObsGrR] [varchar](250) NULL,
	[LogGrR] [varchar](15) NULL,
	[DatGrR] [datetime] NULL,
	[HorGrR] [char](8) NULL,
 CONSTRAINT [PK_ResGrR] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[SeqGrR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResHsC]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResHsC](
	[CodEmp] [int] NOT NULL,
	[CodRHC] [int] NOT NULL,
	[DatHst] [datetime] NOT NULL,
	[HorHst] [char](5) NOT NULL,
	[LogHst] [varchar](15) NOT NULL,
	[QtdChe] [int] NULL,
	[Status] [char](2) NOT NULL,
	[TipOpr] [char](1) NOT NULL,
	[TipDep] [char](1) NOT NULL,
	[CodBan] [char](5) NULL,
	[CodAge] [varchar](10) NULL,
	[CodCnt] [varchar](12) NULL,
	[ValChe] [decimal](12, 2) NULL,
	[ValJur] [decimal](12, 2) NULL,
	[ValDes] [decimal](12, 2) NULL,
	[CodRms] [int] NULL,
	[CodSeq] [int] NULL,
	[AgeEtg] [varchar](10) NULL,
	[Serie] [int] NULL,
	[CodFor] [int] NULL,
 CONSTRAINT [PK_ResHsC] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRHC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResRet]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResRet](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[SeqRet] [int] NOT NULL,
	[DatRet] [datetime] NOT NULL,
	[HorRet] [char](5) NOT NULL,
	[LocRet] [varchar](250) NOT NULL,
 CONSTRAINT [PK_ResRet] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[SeqRet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResRms]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResRms](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[SeqRms] [int] NOT NULL,
	[DatRms] [datetime] NOT NULL,
	[HorRms] [char](5) NOT NULL,
	[LocRms] [varchar](250) NOT NULL,
	[TipOco] [char](1) NOT NULL,
	[CodOco] [char](2) NULL,
	[CodMoc] [char](2) NULL,
	[TaxJur] [decimal](5, 3) NULL,
	[CodMoc2] [char](2) NULL,
 CONSTRAINT [PK_ResRms] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC,
	[SeqRms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResRmsSrs]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResRmsSrs](
	[CodEmp] [int] NOT NULL,
	[CodRms] [int] NOT NULL,
	[Frequencia] [char](1) NOT NULL,
	[DatIni] [datetime] NOT NULL,
	[DatFin] [datetime] NOT NULL,
	[TipRms] [char](1) NOT NULL,
	[DatRms] [datetime] NOT NULL,
	[HorRms] [char](5) NOT NULL,
	[LocRms] [varchar](250) NOT NULL,
	[Login] [varchar](15) NOT NULL,
 CONSTRAINT [PK_ResRmsSrs] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRms] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SlcCmp]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SlcCmp](
	[CodEmp] [int] NOT NULL,
	[CodSlc] [int] NOT NULL,
	[DatSlc] [datetime] NOT NULL,
	[FnlSlc] [char](1) NOT NULL,
	[CodFun] [int] NOT NULL,
	[CodCCs] [varchar](3) NOT NULL,
	[ObsSlc] [varchar](250) NULL,
	[PosSlc] [char](2) NOT NULL,
	[Status] [char](1) NOT NULL,
 CONSTRAINT [PK_SlcCmp] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodSlc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmlOrc]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmlOrc](
	[CodEmp] [int] NOT NULL,
	[CodOrc] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodSml] [int] NOT NULL,
 CONSTRAINT [PK_SmlOrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrc] ASC,
	[CodPro] ASC,
	[CodSml] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SmlRsv]    Script Date: 17/04/2018 16:55:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SmlRsv](
	[CodEmp] [int] NOT NULL,
	[CodRsv] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[CodSml] [int] NOT NULL,
	[FreEmp] [decimal](12, 2) NULL,
	[FreMtr] [decimal](12, 2) NULL,
	[DscEmp] [decimal](12, 2) NULL,
	[FreMtP] [decimal](12, 2) NULL,
	[ValPro] [decimal](12, 3) NULL,
 CONSTRAINT [PK_SmlRsv] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodRsv] ASC,
	[CodPro] ASC,
	[CodSml] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SrvOrc]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SrvOrc](
	[CodEmp] [int] NOT NULL,
	[CodOrc] [int] NOT NULL,
	[CodSrv] [int] NOT NULL,
	[CmpSrv] [varchar](250) NULL,
	[QtdSrv] [int] NOT NULL,
	[ValSrv] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](5, 2) NULL,
 CONSTRAINT [PK_SrvOrc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOrc] ASC,
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SrvOS]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SrvOS](
	[CodEmp] [int] NOT NULL,
	[CodOS] [int] NOT NULL,
	[CodSrv] [int] NOT NULL,
	[TipSrv] [char](1) NOT NULL,
	[CodFun] [int] NULL,
	[ValSrv] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_SrvOS] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOS] ASC,
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SrvPed]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SrvPed](
	[CodEmp] [int] NOT NULL,
	[CodPed] [int] NOT NULL,
	[CodSrv] [int] NOT NULL,
	[CmpSrv] [varchar](250) NULL,
	[QtdSrv] [int] NOT NULL,
	[ValSrv] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](5, 2) NULL,
	[CodCom] [int] NULL,
	[CodCmsA] [int] NULL,
	[ValIRR] [decimal](12, 2) NULL,
	[ValISS] [decimal](12, 2) NULL,
	[ValINS] [decimal](12, 2) NULL,
	[ValPis] [decimal](12, 2) NULL,
	[ValCfs] [decimal](12, 2) NULL,
	[ValCSL] [decimal](12, 2) NULL,
 CONSTRAINT [PK_SrvPed] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPed] ASC,
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabAge]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabAge](
	[CodAge] [int] IDENTITY(1,1) NOT NULL,
	[NomAge] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabAge] PRIMARY KEY NONCLUSTERED 
(
	[CodAge] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabApl]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabApl](
	[CodApl] [int] IDENTITY(1,1) NOT NULL,
	[NomApl] [varchar](100) NOT NULL,
	[EPIApl] [varchar](100) NULL,
 CONSTRAINT [PK_TabApl] PRIMARY KEY CLUSTERED 
(
	[CodApl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabAti]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabAti](
	[CodAti] [int] IDENTITY(1,1) NOT NULL,
	[NomAti] [varchar](50) NOT NULL,
	[CatTrr] [char](3) NULL,
	[CodSIMP] [varchar](5) NULL,
 CONSTRAINT [PK_TabAti] PRIMARY KEY NONCLUSTERED 
(
	[CodAti] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabBak]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabBak](
	[CodBak] [int] NOT NULL,
	[NomBak] [varchar](30) NOT NULL,
	[PathBk] [varchar](50) NOT NULL,
	[DatBak] [datetime] NOT NULL,
	[HorBak] [char](5) NULL,
	[Login] [varchar](15) NULL,
PRIMARY KEY CLUSTERED 
(
	[CodBak] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabBan]    Script Date: 17/04/2018 16:55:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabBan](
	[CodBan] [char](5) NOT NULL,
	[NomBan] [varchar](45) NOT NULL,
	[CbrBnc] [char](3) NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[SeqRms] [int] NULL,
 CONSTRAINT [PK___2__37] PRIMARY KEY CLUSTERED 
(
	[CodBan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCai]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCai](
	[CodCai] [int] IDENTITY(1,1) NOT NULL,
	[NomCai] [varchar](35) NOT NULL,
	[CntRdz] [int] NULL,
 CONSTRAINT [PK_TabCai] PRIMARY KEY CLUSTERED 
(
	[CodCai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCat]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCat](
	[CodCat] [int] IDENTITY(1,1) NOT NULL,
	[NomCat] [varchar](50) NOT NULL,
	[TipCat] [char](1) NOT NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TabCat] PRIMARY KEY NONCLUSTERED 
(
	[CodCat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCCs]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCCs](
	[CodCCs] [varchar](3) NOT NULL,
	[NomCCs] [varchar](75) NOT NULL,
	[Classe] [char](1) NOT NULL,
 CONSTRAINT [PK_TabCCs] PRIMARY KEY CLUSTERED 
(
	[CodCCs] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCFn]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCFn](
	[CodCFn] [varchar](10) NOT NULL,
	[NomCFn] [varchar](75) NOT NULL,
	[AtvCFn] [char](1) NOT NULL,
	[Classe] [char](1) NOT NULL,
	[Nivel] [char](1) NOT NULL,
 CONSTRAINT [PK_TabCFn] PRIMARY KEY CLUSTERED 
(
	[CodCFn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCfo]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCfo](
	[CodCfo] [char](5) NOT NULL,
	[NomCfo] [varchar](50) NOT NULL,
	[TipOpe] [char](1) NOT NULL,
	[OrgOpe] [char](1) NOT NULL,
	[ViaNot] [char](1) NOT NULL,
	[PisCfs] [char](1) NOT NULL,
	[ApvIcm] [char](1) NOT NULL,
	[CodCta] [varchar](25) NULL,
 CONSTRAINT [PK_TabCfo] PRIMARY KEY NONCLUSTERED 
(
	[CodCfo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCid]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCid](
	[CodCid] [int] IDENTITY(1,1) NOT NULL,
	[NomCid] [varchar](50) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[Cep] [varchar](9) NULL,
	[CodIBGE] [int] NULL,
	[CodSIMP] [varchar](7) NULL,
	[CodEAG] [int] NULL,
 CONSTRAINT [PK_TabCid] PRIMARY KEY NONCLUSTERED 
(
	[CodCid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCli]    Script Date: 17/04/2018 16:55:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCli](
	[CodCli] [int] NOT NULL,
	[NomCli] [varchar](75) NOT NULL,
	[NomFan] [varchar](50) NULL,
	[Endereco] [varchar](75) NOT NULL,
	[Setor] [varchar](50) NULL,
	[CodCid] [int] NOT NULL,
	[Cep] [varchar](9) NULL,
	[EnderecoC] [varchar](75) NULL,
	[SetorC] [varchar](50) NULL,
	[CodCidC] [int] NULL,
	[CepC] [varchar](9) NULL,
	[Fone1] [varchar](25) NULL,
	[Fone2] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[Email] [varchar](100) NULL,
	[TipCli] [char](1) NOT NULL,
	[Cnpj] [varchar](18) NOT NULL,
	[InsEst] [varchar](25) NOT NULL,
	[ICMS] [float] NULL,
	[Propriedade] [varchar](50) NULL,
	[Area] [float] NULL,
	[Registro] [varchar](50) NULL,
	[Comarca] [varchar](25) NULL,
	[Arrendatario] [varchar](50) NULL,
	[CnpjA] [varchar](18) NULL,
	[Fiador] [varchar](50) NULL,
	[CnpjF] [varchar](18) NULL,
	[CodAti] [int] NOT NULL,
	[CodReg] [int] NOT NULL,
	[CodFun] [int] NOT NULL,
	[ClaCli] [char](1) NOT NULL,
	[CodMtz] [int] NULL,
	[DatCad] [datetime] NOT NULL,
	[Cobranca] [varchar](8) NULL,
	[TrabCheq] [char](1) NOT NULL,
	[CptSocIni] [money] NULL,
	[CptSocAtu] [money] NULL,
	[CptSocAlt] [datetime] NULL,
	[CptSocMtA] [char](1) NULL,
	[MediaVenda] [money] NULL,
	[MediaCompra] [money] NULL,
	[Estoque] [money] NULL,
	[CapitalGiro] [money] NULL,
	[Sede] [char](1) NULL,
	[ValorSede] [money] NULL,
	[Serasa] [varchar](250) NULL,
	[Spc] [varchar](250) NULL,
	[Conceito] [char](1) NULL,
	[DatAtz] [datetime] NULL,
	[Limite] [decimal](12, 2) NULL,
	[Contador] [varchar](50) NULL,
	[CRC] [varchar](15) NULL,
	[FoneC] [varchar](15) NULL,
	[FaxC] [varchar](15) NULL,
	[EMailC] [varchar](75) NULL,
	[AreaPnt] [float] NULL,
	[AreaPst] [float] NULL,
	[SistPlantio] [char](1) NULL,
	[CapArmaz] [float] NULL,
	[Obs] [varchar](250) NULL,
	[HomePage] [varchar](75) NULL,
	[Analisa] [char](1) NOT NULL,
	[PosCli] [char](1) NOT NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[CodFor] [int] NULL,
	[PR] [varchar](25) NULL,
	[Sexo] [char](1) NULL,
	[DatNas] [datetime] NULL,
	[RG] [varchar](25) NULL,
	[EstCivil] [char](2) NULL,
	[Mae] [varchar](50) NULL,
	[Pai] [varchar](50) NULL,
	[TipoRes] [char](1) NULL,
	[TempRes] [varchar](15) NULL,
	[ValorRes] [decimal](12, 2) NULL,
	[PossuiCartao] [char](1) NULL,
	[DescCartao] [varchar](50) NULL,
	[ChequeEsp] [char](1) NULL,
	[LocalTrab] [varchar](50) NULL,
	[FoneTrab] [varchar](25) NULL,
	[DatAdm] [datetime] NULL,
	[Cargo] [int] NULL,
	[Salario] [decimal](12, 2) NULL,
	[Conjuge] [varchar](50) NULL,
	[DatNasJ] [datetime] NULL,
	[CpfJ] [varchar](14) NULL,
	[RgJ] [varchar](25) NULL,
	[LocalTrabJ] [varchar](50) NULL,
	[FoneTrabJ] [varchar](25) NULL,
	[DatAdmJ] [datetime] NULL,
	[CargoJ] [int] NULL,
	[SalarioJ] [decimal](12, 2) NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
	[CodMotStR] [int] NULL,
	[EnderecoA] [varchar](100) NULL,
	[FoneA] [varchar](25) NULL,
	[OrgaoRg] [varchar](15) NULL,
	[UFRg] [char](2) NULL,
	[PropRes] [varchar](50) NULL,
	[EnderecoP] [varchar](100) NULL,
	[FoneP] [varchar](25) NULL,
	[ChefeTrab] [varchar](50) NULL,
	[ObsTrab] [varchar](250) NULL,
	[FuncExerc] [varchar](250) NULL,
	[FuncExercJ] [varchar](250) NULL,
	[CodSIMP] [varchar](7) NULL,
	[CntRdz] [int] NULL,
	[CntRdzAdt] [int] NULL,
	[PosFSP] [char](1) NULL,
	[DtEFSP] [datetime] NULL,
	[ObsFSP] [varchar](75) NULL,
	[Pastagem] [varchar](75) NULL,
	[Rota] [varchar](250) NULL,
	[Distancia] [decimal](12, 2) NULL,
	[Leite] [char](1) NOT NULL,
	[LeiteCria] [int] NULL,
	[LeiteRecria] [int] NULL,
	[LeiteEngorda] [int] NULL,
	[Corte] [char](1) NOT NULL,
	[CorteCria] [int] NULL,
	[CorteRecria] [int] NULL,
	[CorteEngorda] [int] NULL,
	[CtrICMS] [char](1) NULL,
	[CodMKT] [int] NULL,
	[Suframa] [varchar](15) NULL,
	[Iva] [decimal](5, 2) NULL,
	[IcmsIC] [decimal](5, 2) NULL,
 CONSTRAINT [PK___16__10] PRIMARY KEY CLUSTERED 
(
	[CodCli] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCmb]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCmb](
	[CodCmb] [int] IDENTITY(1,1) NOT NULL,
	[NomCmb] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabCmb] PRIMARY KEY NONCLUSTERED 
(
	[CodCmb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCnt]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCnt](
	[CodEmp] [int] NOT NULL,
	[CodBan] [char](5) NOT NULL,
	[CodCnt] [varchar](12) NOT NULL,
	[NomCnt] [varchar](45) NOT NULL,
	[CodAge] [varchar](10) NULL,
	[NomAge] [varchar](45) NULL,
	[CodCed] [varchar](10) NULL,
	[NomCed] [varchar](45) NULL,
	[Convenio] [varchar](20) NULL,
	[EmpTit] [char](1) NOT NULL,
	[Aceite] [varchar](1) NULL,
	[Carteira] [varchar](10) NULL,
	[Registrada] [char](1) NOT NULL,
	[Especie] [varchar](10) NULL,
	[LocalPgto] [varchar](45) NULL,
	[CodChe] [int] NULL,
	[OprCed] [varchar](3) NULL,
	[DvCnt] [char](1) NULL,
	[DvAge] [char](1) NULL,
	[DvCed] [char](1) NULL,
	[TrfBnc] [decimal](12, 4) NULL,
	[SeqRms] [int] NULL,
	[DatRms] [datetime] NULL,
	[LocRms] [varchar](250) NULL,
	[SeqRet] [int] NULL,
	[DatRet] [datetime] NULL,
	[LocRet] [varchar](250) NULL,
	[GUID] [uniqueidentifier] NOT NULL,
	[Variacao] [varchar](3) NULL,
	[BalMns] [char](1) NOT NULL,
	[CntRdz] [int] NULL,
	[BanDpL] [char](5) NULL,
	[CntDpL] [varchar](12) NULL,
	[BanCst] [char](5) NULL,
	[CntCst] [varchar](12) NULL,
	[BanDsc] [char](5) NULL,
	[CntDsc] [varchar](12) NULL,
	[BanCau] [char](5) NULL,
	[CntCau] [varchar](12) NULL,
	[TipCnt] [char](1) NOT NULL,
 CONSTRAINT [PK___1__37] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodBan] ASC,
	[CodCnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCom]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCom](
	[CodCom] [int] IDENTITY(1,1) NOT NULL,
	[NomCom] [varchar](50) NOT NULL,
	[PerCom] [float] NOT NULL,
	[TipCom] [char](1) NOT NULL,
 CONSTRAINT [PK_TabCom] PRIMARY KEY NONCLUSTERED 
(
	[CodCom] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCon]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCon](
	[CodCon] [int] NOT NULL,
	[NomCon] [varchar](50) NOT NULL,
	[Endereco] [varchar](50) NOT NULL,
	[Setor] [varchar](25) NULL,
	[CodCid] [int] NOT NULL,
	[Cep] [varchar](9) NULL,
	[Fone] [varchar](20) NULL,
	[Rg] [varchar](25) NOT NULL,
	[Cpf] [varchar](14) NOT NULL,
	[Nacional] [varchar](25) NULL,
	[EstCiv] [char](1) NOT NULL,
	[CodPrf] [int] NOT NULL,
	[DatNas] [datetime] NULL,
	[CatCnh] [varchar](15) NULL,
	[RegCnh] [varchar](15) NULL,
	[DatVal] [datetime] NULL,
	[DatEmi] [datetime] NULL,
	[DatHab] [datetime] NULL,
	[ObsCon] [text] NULL,
	[PosCon] [char](1) NOT NULL,
	[Fone2] [varchar](15) NULL,
	[Fax] [varchar](15) NULL,
 CONSTRAINT [PK_TabCon] PRIMARY KEY NONCLUSTERED 
(
	[CodCon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCor]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCor](
	[CodCor] [int] IDENTITY(1,1) NOT NULL,
	[NomCor] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabCor] PRIMARY KEY NONCLUSTERED 
(
	[CodCor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCtb]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCtb](
	[TipPar] [char](2) NOT NULL,
	[CodRef] [varchar](15) NOT NULL,
	[CodCmp] [varchar](15) NOT NULL,
	[CntRdz] [int] NOT NULL,
 CONSTRAINT [PK_TabCtb] PRIMARY KEY CLUSTERED 
(
	[TipPar] ASC,
	[CodRef] ASC,
	[CodCmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabCul]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabCul](
	[CodCul] [int] IDENTITY(1,1) NOT NULL,
	[NomCul] [varchar](50) NOT NULL,
	[CstHct] [decimal](12, 2) NULL,
	[GBMobl] [char](1) NOT NULL,
	[ValCul] [decimal](12, 2) NULL,
 CONSTRAINT [PK_TabCul] PRIMARY KEY NONCLUSTERED 
(
	[CodCul] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabDIF]    Script Date: 17/04/2018 16:55:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabDIF](
	[AnoDIF] [int] NOT NULL,
	[AlqUFd] [decimal](5, 2) NOT NULL,
	[AlqUFr] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TabDIF] PRIMARY KEY CLUSTERED 
(
	[AnoDIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabDpt]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabDpt](
	[CodDpt] [int] IDENTITY(1,1) NOT NULL,
	[NomDpt] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TabDpt] PRIMARY KEY CLUSTERED 
(
	[CodDpt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabDsc]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabDsc](
	[CodEmp] [int] NOT NULL,
	[TipReg] [char](2) NOT NULL,
	[CodReg] [int] NOT NULL,
	[DscMaxPro] [decimal](5, 2) NOT NULL,
	[DscMaxAdc] [decimal](5, 2) NOT NULL,
	[DatDsc] [datetime] NULL,
	[HorDsc] [char](5) NULL,
	[Login] [varchar](15) NULL,
	[PrzMedMax] [int] NULL,
 CONSTRAINT [PK_TabDsc] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[TipReg] ASC,
	[CodReg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEmb]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEmb](
	[CodEmb] [int] IDENTITY(1,1) NOT NULL,
	[NomEmb] [varchar](100) NOT NULL,
	[Unidade] [varchar](6) NOT NULL,
	[Qtdade] [float] NOT NULL,
	[Peso] [float] NOT NULL,
	[PesoEmb] [float] NULL,
	[QtdadeAccera] [float] NULL,
	[TipEmb] [char](1) NULL,
	[QtdadeEAG] [float] NULL,
	[UnidadeEAG] [char](1) NULL,
 CONSTRAINT [PK_TabEmb] PRIMARY KEY NONCLUSTERED 
(
	[CodEmb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEmp]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEmp](
	[CodEmp] [int] IDENTITY(1,1) NOT NULL,
	[NomEmp] [varchar](50) NOT NULL,
	[NomFan] [varchar](25) NOT NULL,
	[Endereco] [varchar](50) NOT NULL,
	[Complemento] [varchar](25) NULL,
	[Numero] [int] NULL,
	[Setor] [varchar](25) NULL,
	[CodCid] [int] NULL,
	[Cep] [varchar](9) NULL,
	[Fone] [varchar](20) NOT NULL,
	[Fax] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Cnpj] [varchar](18) NOT NULL,
	[InsEst] [varchar](25) NOT NULL,
	[InsEstSbt] [varchar](25) NULL,
	[InsMun] [varchar](15) NULL,
	[Junta] [varchar](15) NULL,
	[Despacho] [datetime] NULL,
	[Atividade] [varchar](10) NULL,
	[CodPrc] [int] NOT NULL,
	[CodCmc] [int] NOT NULL,
	[CodFun] [int] NULL,
	[TipJur] [char](1) NOT NULL,
	[TaxJur] [float] NULL,
	[TaxDsc] [float] NULL,
	[Modelo] [char](2) NULL,
	[Serie] [char](3) NULL,
	[SubSerie] [char](2) NULL,
	[CodNot] [int] NULL,
	[DatNot] [datetime] NULL,
	[CodNtc] [int] NULL,
	[DatNtc] [datetime] NULL,
	[TipDplC] [char](1) NULL,
	[RsvMnl] [char](1) NULL,
	[PedMnl] [char](1) NULL,
	[CnhMnl] [char](10) NULL,
	[CodRsv] [int] NULL,
	[CodPed] [int] NULL,
	[CodCnh] [int] NULL,
	[VldMin] [char](1) NULL,
	[LivEntE] [int] NULL,
	[LivEntI] [int] NULL,
	[LivSaiE] [int] NULL,
	[LivSaiI] [int] NULL,
	[LivAprIcm] [int] NULL,
	[InicLiv] [int] NULL,
	[CodHanJR] [int] NULL,
	[CodHanJP] [int] NULL,
	[CodHanDC] [int] NULL,
	[CodHanDR] [int] NULL,
	[CodDie] [int] NULL,
	[CapDie] [float] NULL,
	[LivDie] [int] NULL,
	[CheBnc] [char](1) NULL,
	[JurCax] [money] NULL,
	[VecCpl] [int] NULL,
	[CodAlm] [int] NULL,
	[CodDsp] [int] NULL,
	[CstPro] [char](1) NOT NULL,
	[ProCpl] [int] NULL,
	[PortaWeb] [int] NULL,
	[CodBan] [char](5) NULL,
	[CodCnt] [varchar](12) NULL,
	[CodCrt] [int] NULL,
	[CodMenB1] [int] NULL,
	[CodMenB2] [int] NULL,
	[CodCai] [int] NULL,
	[CodMvB] [int] NULL,
	[CodFat] [int] NULL,
	[PagCnh] [char](1) NOT NULL,
	[HomePage] [varchar](75) NULL,
	[Smtp] [varchar](75) NULL,
	[SmtpUsuario] [varchar](25) NULL,
	[SmtpSenha] [varchar](25) NULL,
	[CodMotCh] [int] NULL,
	[CodHanCDC] [int] NULL,
	[CodHanCDD] [int] NULL,
	[CodVecFT] [int] NULL,
	[CheCai] [char](1) NOT NULL,
	[CntFatR] [char](1) NOT NULL,
	[PathLogo] [varchar](150) NULL,
	[Gratuidade] [char](1) NOT NULL,
	[CntCre] [int] NULL,
	[CntDeb] [int] NULL,
	[EmpCtb] [int] NULL,
	[CodLan] [int] NULL,
	[CodSubCai] [int] NULL,
	[Origem] [int] NULL,
	[SeqBxP] [int] NULL,
	[SeqBxR] [int] NULL,
	[CodHanCnh] [int] NULL,
	[SeqBol] [int] NULL,
	[IpHost] [varchar](15) NULL,
	[TipLmt] [char](1) NOT NULL,
	[VldPed] [char](1) NOT NULL,
	[VrfLmt] [char](1) NOT NULL,
	[ClcPMP] [char](1) NOT NULL,
	[IcmsPMP] [decimal](7, 4) NULL,
	[CodRmsSrs] [int] NOT NULL,
	[NomCtd] [varchar](35) NULL,
	[CPFCtd] [varchar](11) NULL,
	[CRCCtd] [varchar](10) NULL,
	[FoneCtd] [varchar](11) NULL,
	[EmailCtd] [varchar](50) NULL,
	[ModCPR] [int] NOT NULL,
	[BlqCliSemMvt] [int] NOT NULL,
	[BlqCliSemAtz] [int] NOT NULL,
	[TpNPorEmp] [char](1) NOT NULL,
	[TlrVct] [int] NOT NULL,
	[CodCha] [int] NULL,
	[VrfAlm] [char](1) NOT NULL,
	[VldEst] [char](1) NOT NULL,
	[ObsRct] [varchar](250) NULL,
	[CodOrc] [int] NULL,
	[VldOrc] [int] NOT NULL,
	[CodAdt] [int] NULL,
	[CodAdtF] [int] NULL,
	[CodAdtC] [int] NULL,
	[TpDocNF] [char](1) NOT NULL,
	[TpDocCp] [char](1) NOT NULL,
	[TpDocMn] [char](1) NOT NULL,
	[CodECFp] [int] NULL,
	[CodECFf] [varchar](25) NULL,
	[CodSrv] [int] NULL,
	[CodNotS] [int] NULL,
	[DatNotS] [datetime] NULL,
	[ClcIss] [char](1) NOT NULL,
	[InfCst] [char](1) NOT NULL,
	[DefPrc] [char](1) NOT NULL,
	[VldValPro] [char](1) NOT NULL,
	[VldValDes] [char](1) NOT NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
	[AnFRstBnc] [char](1) NOT NULL,
	[AnFRstChq] [char](1) NOT NULL,
	[TaxInf] [decimal](5, 2) NULL,
	[TaxDef] [decimal](5, 2) NULL,
	[VrfEst] [char](1) NOT NULL,
	[VldRsv] [int] NOT NULL,
	[DscJur] [decimal](5, 2) NULL,
	[TlrSemJur] [char](1) NOT NULL,
	[DscArd] [decimal](5, 2) NULL,
	[AtzPrcEst] [char](1) NOT NULL,
	[CodMotRnR] [int] NULL,
	[CodHanRnR] [int] NULL,
	[LmtPrcRnR] [int] NULL,
	[LmtCncV] [int] NULL,
	[DscRngR] [decimal](5, 2) NULL,
	[LmtDtAlm] [char](1) NOT NULL,
	[DtLmtAlm] [datetime] NULL,
	[EdtJurDsc] [char](1) NOT NULL,
	[TaxCst] [decimal](5, 2) NULL,
	[TaxPis] [decimal](5, 2) NULL,
	[TaxCfs] [decimal](5, 2) NULL,
	[TaxIcm] [decimal](5, 2) NULL,
	[MrgLuc] [decimal](5, 2) NULL,
	[MrgNeg] [decimal](5, 2) NULL,
	[DscIcmCst] [char](1) NOT NULL,
	[CodMotStR] [int] NULL,
	[CodHanDvC] [int] NULL,
	[CodHanDvV] [int] NULL,
	[EmtPedPnd] [char](1) NOT NULL,
	[EstCjg] [char](1) NOT NULL,
	[EmpCjg] [int] NULL,
	[CodSIMP] [varchar](10) NULL,
	[IstSIMP] [varchar](7) NULL,
	[LmtDtCst] [char](1) NOT NULL,
	[DtIncCst] [datetime] NULL,
	[VldVenVst] [char](1) NOT NULL,
	[CodHanAbC] [int] NULL,
	[CodHanAbV] [int] NULL,
	[LncCmsNrm] [char](1) NOT NULL,
	[LncChqRec] [char](1) NOT NULL,
	[CodHanEsC] [int] NULL,
	[SeqChR] [int] NULL,
	[CodHanChR] [int] NULL,
	[LibTrcChR] [char](1) NOT NULL,
	[CodHanTrC] [int] NULL,
	[CodHanDfC] [int] NULL,
	[MrgPrc] [char](1) NOT NULL,
	[RtBncCrBan] [char](1) NOT NULL,
	[CodNotDv] [int] NULL,
	[MapECF] [int] NULL,
	[ForTrf] [int] NULL,
	[ImpAplNFe] [char](1) NOT NULL,
	[LmtVndAbe] [int] NULL,
	[VlrMinFat] [decimal](12, 2) NULL,
	[RatCstSDf] [char](1) NOT NULL,
	[CodCfoRdZ] [char](5) NULL,
	[CodPRSF] [int] NULL,
	[BanTrs] [char](5) NULL,
	[CntTrs] [varchar](12) NULL,
	[CodCfoSbt] [char](5) NULL,
	[RgmTrbNFe] [char](1) NOT NULL,
	[EFDVrs] [int] NOT NULL,
	[EFDPrf] [char](1) NOT NULL,
	[EFDAtv] [char](1) NOT NULL,
	[ForVen] [int] NULL,
	[ForReg] [int] NULL,
	[EFDVctIcms] [int] NULL,
	[EFDCdgRct] [varchar](15) NULL,
	[VldRngCli] [char](1) NOT NULL,
	[TpExpCtb] [char](1) NOT NULL,
	[LivIvt] [int] NULL,
	[AlqPis] [decimal](5, 2) NULL,
	[AlqCfs] [decimal](5, 2) NULL,
	[CodLncPC] [int] NULL,
	[SerieCTe] [char](3) NULL,
	[RNTRC] [varchar](25) NULL,
	[ModeloCTe] [char](2) NOT NULL,
	[CodOrd] [int] NULL,
	[RegEC] [varchar](15) NULL,
	[CodHanTB] [int] NULL,
	[EFDPCVrs] [int] NOT NULL,
	[EFDPCNatPJ] [char](2) NULL,
	[EFDPCAtv] [char](1) NOT NULL,
	[TxPArm] [decimal](5, 2) NULL,
	[TxPQTc] [decimal](5, 2) NULL,
	[TxPExp] [decimal](5, 2) NULL,
	[TxPArmCrc] [int] NULL,
	[VldVlrCtb] [char](1) NOT NULL,
	[CodOS] [int] NULL,
	[DscPisCfs] [char](1) NOT NULL,
	[CodHanCmF] [int] NULL,
	[CodHanDRc] [int] NULL,
	[TpExpCtbCMV] [char](1) NOT NULL,
	[CodHanDAF] [int] NULL,
	[CodPsg] [int] NULL,
	[AlqIRPJ] [decimal](5, 2) NULL,
	[AlqCSLL] [decimal](5, 2) NULL,
	[ImpDtSNFe] [char](1) NOT NULL,
	[EstadoSbt] [char](2) NULL,
	[CodCdDIEF] [int] NULL,
	[CodHanRcF] [int] NULL,
	[ItgGBAgro] [char](1) NOT NULL,
	[SfrRqr] [char](1) NOT NULL,
	[CphRqr] [char](1) NOT NULL,
	[CulRqr] [char](1) NOT NULL,
	[CodHanSP] [int] NULL,
	[CodHanDP] [int] NULL,
	[CodHanTT] [int] NULL,
	[CodHanPgF] [int] NULL,
	[SaqSpr] [int] NULL,
	[RetDep] [int] NULL,
	[CodHanPdF] [int] NULL,
	[CodHanAdF] [int] NULL,
	[CodHanPgI] [int] NULL,
	[CodPat] [int] NULL,
	[CodMonsanto] [varchar](15) NULL,
	[CodOP] [int] NULL,
	[CodSlc] [int] NULL,
	[CodBtd] [int] NULL,
	[ForPdc] [int] NULL,
	[NotPdc] [int] NULL,
	[TipPdc] [int] NULL,
	[VecPdc] [int] NULL,
	[CliPdc] [int] NULL,
	[MotPdc] [int] NULL,
	[DBNFe] [varchar](25) NOT NULL,
	[MtdAprCst] [char](1) NULL,
	[CrtAprCst] [char](1) NULL,
	[MedQtdPdz] [int] NULL,
	[MedCstIdr] [int] NULL,
	[CodHanRmT] [int] NULL,
	[CodHanDpL] [int] NULL,
	[CodHanDCp] [int] NULL,
	[CodHanChC] [int] NULL,
	[CodHanChD] [int] NULL,
	[CodHanChU] [int] NULL,
	[CodHanPgC] [int] NULL,
	[CodRHC] [int] NULL,
	[CodREC] [int] NULL,
	[LibPed] [char](1) NOT NULL,
	[FecVDr] [int] NULL,
	[RmsChq] [char](1) NOT NULL,
	[TpDocNC] [char](1) NOT NULL,
	[CodNotNFCe] [int] NULL,
	[ModeloNFCe] [char](2) NOT NULL,
	[SerieNFCe] [char](3) NULL,
	[SubSerieNFCe] [char](2) NULL,
	[CTeEmCtg] [char](2) NULL,
	[CTeNiCtg] [int] NULL,
	[CTeNfCtg] [int] NULL,
	[PathLogoRct] [varchar](150) NULL,
	[CodHanRpC] [int] NULL,
	[GBMobl] [char](1) NOT NULL,
	[UtlFncMrL] [char](1) NOT NULL,
	[MrgBrtMin] [decimal](6, 2) NULL,
	[VldLotEst] [char](1) NOT NULL,
	[CodMtC] [int] NULL,
	[CodMtD] [int] NULL,
	[CodMtI] [int] NULL,
	[ProUso] [int] NULL,
	[LczPdc] [varchar](15) NULL,
	[ImpLotNFe] [char](1) NOT NULL,
	[CodMenDep] [int] NULL,
	[AprIPI] [char](1) NOT NULL,
	[EFDCdgRctST] [varchar](15) NULL,
	[PrcIpiIST] [char](1) NOT NULL,
	[AtzDatFat] [char](1) NOT NULL,
	[TrbRGr] [char](1) NOT NULL,
	[CodRmn] [int] NULL,
	[GrPPrA] [char](1) NOT NULL,
	[DtIPedNFe] [datetime] NULL,
 CONSTRAINT [PK_TabEmp] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEPg]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEPg](
	[CodEsp] [int] IDENTITY(1,1) NOT NULL,
	[NomEsp] [varchar](50) NOT NULL,
	[TipCmp] [char](2) NOT NULL,
	[TipItg] [char](1) NOT NULL,
 CONSTRAINT [PK_TabEPg] PRIMARY KEY CLUSTERED 
(
	[CodEsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEsp]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEsp](
	[CodEsp] [int] IDENTITY(1,1) NOT NULL,
	[NomEsp] [varchar](50) NOT NULL,
	[RdtCms] [decimal](5, 2) NULL,
	[PerDpr] [decimal](5, 2) NULL,
	[QtMDpr] [int] NULL,
 CONSTRAINT [PK_TabEsp] PRIMARY KEY NONCLUSTERED 
(
	[CodEsp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEst]    Script Date: 17/04/2018 16:55:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEst](
	[CodEst] [char](2) NOT NULL,
	[NomEst] [varchar](75) NOT NULL,
	[AlqICMS] [decimal](5, 2) NULL,
	[AlqFECP] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TabEst] PRIMARY KEY CLUSTERED 
(
	[CodEst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabEtq]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabEtq](
	[CodPro] [char](15) NOT NULL,
	[NomPro] [varchar](50) NOT NULL,
	[NomEtq] [varchar](30) NOT NULL,
	[Validade] [int] NULL,
 CONSTRAINT [PK_TabEtq] PRIMARY KEY CLUSTERED 
(
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabFor]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabFor](
	[CodFor] [int] NOT NULL,
	[NomFor] [varchar](75) NOT NULL,
	[NomFan] [varchar](50) NULL,
	[Endereco] [varchar](75) NOT NULL,
	[Setor] [varchar](50) NULL,
	[CodCid] [int] NOT NULL,
	[Cep] [varchar](9) NULL,
	[Fone1] [varchar](25) NULL,
	[Fone2] [varchar](25) NULL,
	[Fax] [varchar](25) NULL,
	[Email] [varchar](100) NULL,
	[Cnpj] [varchar](18) NOT NULL,
	[InsEst] [varchar](25) NULL,
	[CodAti] [int] NOT NULL,
	[ForPag] [char](1) NOT NULL,
	[PrzPag] [varchar](25) NULL,
	[DatCad] [datetime] NOT NULL,
	[TipFor] [char](1) NOT NULL,
	[TaxJur] [float] NULL,
	[TipJur] [char](1) NULL,
	[InsEstSbt] [varchar](25) NULL,
	[ClaFor] [char](1) NOT NULL,
	[CodMtz] [int] NULL,
	[HomePage] [varchar](75) NULL,
	[DesCms] [decimal](12, 2) NULL,
	[PosFor] [char](1) NOT NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
	[CodSIMP] [varchar](7) NULL,
	[CntRdz] [int] NULL,
	[CntRdzAdt] [int] NULL,
	[RNTRC] [varchar](25) NULL,
	[DiaPag] [int] NULL,
 CONSTRAINT [PK___20__10] PRIMARY KEY CLUSTERED 
(
	[CodFor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabFrt]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabFrt](
	[CodFrt] [int] IDENTITY(1,1) NOT NULL,
	[NomFrt] [varchar](50) NOT NULL,
	[PesCrg] [decimal](12, 3) NOT NULL,
	[ValKmR] [decimal](12, 2) NOT NULL,
	[ValDsg] [decimal](12, 2) NULL,
 CONSTRAINT [PK_TabFrt] PRIMARY KEY CLUSTERED 
(
	[CodFrt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabFun]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabFun](
	[CodFun] [int] NOT NULL,
	[NomFun] [varchar](75) NOT NULL,
	[Sexo] [char](1) NULL,
	[Cor] [char](1) NULL,
	[TpSangue] [varchar](15) NULL,
	[EstCivil] [char](2) NULL,
	[GrauInstr] [char](2) NULL,
	[DatNsc] [datetime] NULL,
	[CodNtr] [int] NULL,
	[Nacionl] [varchar](15) NULL,
	[Mae] [varchar](50) NULL,
	[Pai] [varchar](50) NULL,
	[ObsFun] [varchar](250) NULL,
	[PathFoto] [varchar](150) NULL,
	[Endereco] [varchar](75) NULL,
	[Setor] [varchar](50) NULL,
	[CodCid] [int] NULL,
	[Cep] [varchar](9) NULL,
	[FoneRes] [varchar](25) NULL,
	[FoneRec] [varchar](25) NULL,
	[FoneCel] [varchar](25) NULL,
	[Email] [varchar](75) NULL,
	[Comunicador] [varchar](75) NULL,
	[Cpf] [varchar](14) NULL,
	[Rg] [varchar](25) NULL,
	[OrgaoRg] [varchar](15) NULL,
	[UFRg] [char](2) NULL,
	[ExpRg] [datetime] NULL,
	[Ctps] [varchar](25) NULL,
	[SerieCtps] [varchar](15) NULL,
	[UFCtps] [char](2) NULL,
	[ExpCtps] [datetime] NULL,
	[Titulo] [varchar](25) NULL,
	[Zona] [int] NULL,
	[Secao] [int] NULL,
	[Pis] [varchar](25) NULL,
	[Reservista] [varchar](25) NULL,
	[Cnh] [varchar](25) NULL,
	[CtgCnh] [varchar](5) NULL,
	[VldCnh] [datetime] NULL,
	[PrHablCnh] [datetime] NULL,
	[CREA] [varchar](25) NULL,
	[VistoGO] [varchar](20) NULL,
	[VistoMG] [varchar](20) NULL,
	[VistoMS] [varchar](20) NULL,
	[VistoMT] [varchar](20) NULL,
	[DatAdm] [datetime] NULL,
	[TipoAdms] [int] NULL,
	[ContratoExp] [char](1) NULL,
	[CodEmp] [int] NULL,
	[CodDpt] [int] NULL,
	[CodPrf] [int] NULL,
	[HorarioTrb] [varchar](50) NULL,
	[Repouso] [varchar](25) NULL,
	[Salario] [decimal](12, 2) NULL,
	[CodBan] [char](5) NULL,
	[CodAge] [varchar](10) NULL,
	[CodCnt] [varchar](12) NULL,
	[PrimParc] [varchar](250) NULL,
	[SeguParc] [varchar](250) NULL,
	[PosFun] [char](1) NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
	[CodCms] [int] NULL,
	[CodCmsF] [int] NULL,
	[Fuma] [char](1) NULL,
	[Bebe] [char](1) NULL,
	[Religiao] [varchar](25) NULL,
	[SeguroVida] [char](1) NULL,
	[ConducaoProp] [char](1) NULL,
	[ValeTransp] [char](1) NULL,
	[ValeRef] [char](1) NULL,
	[EmpregoAnt] [varchar](50) NULL,
	[FoneE] [varchar](25) NULL,
	[MotSaiE] [varchar](250) NULL,
	[Vendedor] [char](1) NOT NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
	[CodHCp] [int] NULL,
	[CodCon] [int] NULL,
	[CodCmsR] [int] NULL,
	[PagSlr] [char](1) NOT NULL,
	[CodCCs] [varchar](3) NULL,
	[VistoPA] [varchar](20) NULL,
	[EnvEmlMobl] [char](1) NOT NULL,
 CONSTRAINT [PK_TabFun] PRIMARY KEY CLUSTERED 
(
	[CodFun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabGru]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabGru](
	[CodGru] [int] IDENTITY(1,1) NOT NULL,
	[NomGru] [varchar](50) NOT NULL,
	[Consumo] [char](1) NOT NULL,
	[CodCat] [int] NULL,
	[CodTrb] [int] NULL,
	[RctAgr] [char](1) NOT NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
	[TaxCst] [decimal](5, 2) NULL,
	[TaxPis] [decimal](5, 2) NULL,
	[TaxCfs] [decimal](5, 2) NULL,
	[TaxIcm] [decimal](5, 2) NULL,
	[MrgLuc] [decimal](5, 2) NULL,
	[MrgNeg] [decimal](5, 2) NULL,
	[CodPRSF] [int] NULL,
	[GBMobl] [char](1) NOT NULL,
 CONSTRAINT [PK_TabGru] PRIMARY KEY NONCLUSTERED 
(
	[CodGru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabHan]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabHan](
	[CodHan] [int] IDENTITY(1,1) NOT NULL,
	[NomHan] [varchar](50) NOT NULL,
	[CodHsi] [int] NOT NULL,
	[TipLnc] [char](1) NULL,
	[TipDsp] [char](1) NULL,
	[AplFnc] [char](1) NOT NULL,
	[HanCtb] [int] NULL,
	[Contab] [char](1) NOT NULL,
	[PosHan] [char](1) NOT NULL,
	[Analisa] [char](1) NOT NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[TipCst] [char](1) NOT NULL,
	[DFC] [char](1) NOT NULL,
	[BalMns] [char](1) NOT NULL,
	[CntRdz] [int] NULL,
	[PisCfs] [char](1) NOT NULL,
	[SeqPisCfs] [int] NULL,
	[CntRdzPrv] [int] NULL,
	[DFN] [char](2) NOT NULL,
	[AlqPis] [decimal](5, 2) NULL,
	[AlqCfs] [decimal](5, 2) NULL,
	[AlqIss] [decimal](5, 2) NULL,
	[CodPro] [int] NULL,
	[CodCFn] [varchar](10) NULL,
 CONSTRAINT [PK_TabHan] PRIMARY KEY NONCLUSTERED 
(
	[CodHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabHCp]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabHCp](
	[CodHCp] [int] IDENTITY(1,1) NOT NULL,
	[NomHCp] [varchar](75) NOT NULL,
	[TipHCp] [char](1) NOT NULL,
	[PosHcp] [char](1) NOT NULL,
 CONSTRAINT [PK_TabHCp] PRIMARY KEY CLUSTERED 
(
	[CodHCp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabHsi]    Script Date: 17/04/2018 16:55:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabHsi](
	[CodHsi] [int] IDENTITY(1,1) NOT NULL,
	[NomHsi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabHsi] PRIMARY KEY NONCLUSTERED 
(
	[CodHsi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabIpN]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabIpN](
	[CodEmp] [int] NOT NULL,
	[TipPro] [char](1) NOT NULL,
	[CstOrg] [char](3) NOT NULL,
	[CfoOrg] [char](5) NOT NULL,
	[SpsNac] [char](1) NOT NULL,
	[CstDst] [varchar](3) NULL,
	[CfoDst] [char](5) NOT NULL,
	[TipTrb] [char](2) NOT NULL,
 CONSTRAINT [PK_TabIpN] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[TipPro] ASC,
	[CstOrg] ASC,
	[CfoOrg] ASC,
	[SpsNac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabJur]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabJur](
	[CodEmp] [int] NOT NULL,
	[CodVec] [int] NOT NULL,
	[TaxJur] [decimal](5, 2) NOT NULL,
	[DatJur] [datetime] NULL,
	[HorJur] [char](5) NULL,
	[Login] [varchar](15) NULL,
	[ImpTPc] [char](1) NOT NULL,
 CONSTRAINT [PK_TabJur] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabLcz]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabLcz](
	[CodLcz] [varchar](15) NOT NULL,
	[NomLcz] [varchar](75) NOT NULL,
 CONSTRAINT [PK_TabLcz] PRIMARY KEY CLUSTERED 
(
	[CodLcz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMed]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMed](
	[CodMed] [int] IDENTITY(1,1) NOT NULL,
	[NomMed] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabMed] PRIMARY KEY NONCLUSTERED 
(
	[CodMed] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMen]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMen](
	[CodMen] [int] IDENTITY(1,1) NOT NULL,
	[NomMen] [varchar](100) NOT NULL,
	[TipMen] [char](1) NOT NULL,
 CONSTRAINT [PK_TabMen] PRIMARY KEY NONCLUSTERED 
(
	[CodMen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMoc]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMoc](
	[CodBan] [char](5) NOT NULL,
	[TipOco] [char](1) NOT NULL,
	[CodOco] [char](2) NOT NULL,
	[CodMoc] [char](2) NOT NULL,
	[NomMoc] [varchar](100) NOT NULL,
	[EfeBax] [char](1) NOT NULL,
 CONSTRAINT [PK_TabMoc] PRIMARY KEY CLUSTERED 
(
	[CodBan] ASC,
	[TipOco] ASC,
	[CodOco] ASC,
	[CodMoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMod]    Script Date: 17/04/2018 16:55:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMod](
	[CodMod] [int] IDENTITY(1,1) NOT NULL,
	[NomMod] [varchar](50) NOT NULL,
	[QtdEix] [int] NOT NULL,
	[CnsMed] [float] NOT NULL,
 CONSTRAINT [PK_TabMod] PRIMARY KEY NONCLUSTERED 
(
	[CodMod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMot]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMot](
	[CodMot] [int] IDENTITY(1,1) NOT NULL,
	[NomMot] [varchar](50) NOT NULL,
	[TipMot] [char](1) NOT NULL,
	[PrtRtn] [char](1) NOT NULL,
	[SitDcF] [char](1) NOT NULL,
	[GBMobl] [char](1) NOT NULL,
 CONSTRAINT [PK_TabMot] PRIMARY KEY NONCLUSTERED 
(
	[CodMot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabMrc]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabMrc](
	[CodMrc] [int] IDENTITY(1,1) NOT NULL,
	[NomMrc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabMrc] PRIMARY KEY NONCLUSTERED 
(
	[CodMrc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabNCM]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabNCM](
	[CodNCM] [varchar](10) NOT NULL,
	[NomNCM] [varchar](250) NOT NULL,
	[AlqNac] [decimal](5, 2) NOT NULL,
	[AlqImp] [decimal](5, 2) NOT NULL,
	[TipTab] [int] NOT NULL,
	[ExcFsc] [int] NULL,
	[NmrVrs] [varchar](10) NULL,
	[AlqEst] [decimal](5, 2) NULL,
	[AlqMnc] [decimal](5, 2) NULL,
	[DtIVig] [datetime] NULL,
	[DtFVig] [datetime] NULL,
	[ChvIdt] [varchar](10) NULL,
	[NomFnt] [varchar](50) NULL,
 CONSTRAINT [PK_TabNCM] PRIMARY KEY CLUSTERED 
(
	[CodNCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabNtc]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabNtc](
	[CodNtc] [int] IDENTITY(1,1) NOT NULL,
	[DatNtc] [datetime] NOT NULL,
	[HorNtc] [char](5) NOT NULL,
	[TitNtc] [varchar](75) NOT NULL,
	[DscNtc] [text] NOT NULL,
	[Imagem] [varchar](250) NULL,
	[Prioridade] [char](1) NOT NULL,
	[DatExp] [datetime] NULL,
	[HorExp] [char](5) NULL,
 CONSTRAINT [PK_TabNtc] PRIMARY KEY CLUSTERED 
(
	[CodNtc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabNtr]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabNtr](
	[CodNtr] [int] IDENTITY(1,1) NOT NULL,
	[NomNtr] [varchar](75) NOT NULL,
	[UndNtr] [char](2) NOT NULL,
	[SeqNtr] [char](2) NULL,
 CONSTRAINT [PK_TabNtr] PRIMARY KEY CLUSTERED 
(
	[CodNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabOco]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabOco](
	[CodBan] [char](5) NOT NULL,
	[TipOco] [char](1) NOT NULL,
	[CodOco] [char](2) NOT NULL,
	[NomOco] [varchar](150) NOT NULL,
	[CtgOco] [char](1) NOT NULL,
	[CorOco] [int] NOT NULL,
 CONSTRAINT [PK_TabOco] PRIMARY KEY CLUSTERED 
(
	[CodBan] ASC,
	[TipOco] ASC,
	[CodOco] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPat]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPat](
	[CodEmp] [int] NOT NULL,
	[CodPat] [int] NOT NULL,
	[NomPat] [varchar](75) NOT NULL,
	[Modelo] [varchar](50) NULL,
	[CodFor] [int] NOT NULL,
	[CodNot] [int] NULL,
	[ModeloNF] [char](2) NULL,
	[SerieNF] [char](3) NULL,
	[ChvNFe] [varchar](44) NULL,
	[DatAqs] [datetime] NOT NULL,
	[ValAqs] [decimal](12, 2) NOT NULL,
	[CstPdc] [char](1) NOT NULL,
	[DatImb] [datetime] NULL,
	[NmrPat] [varchar](25) NULL,
	[DatDpr] [datetime] NOT NULL,
	[PerDpr] [decimal](5, 2) NOT NULL,
	[PerRsd] [decimal](5, 2) NOT NULL,
	[QtMDpr] [int] NOT NULL,
	[NomDpt] [varchar](50) NULL,
	[NomSet] [varchar](50) NULL,
	[NomSec] [varchar](50) NULL,
	[ObsPat] [varchar](250) NULL,
	[PosPat] [char](1) NOT NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
 CONSTRAINT [PK_TabPtm] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodPat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPne]    Script Date: 17/04/2018 16:55:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPne](
	[CodPne] [int] NOT NULL,
	[CodMrc] [int] NOT NULL,
	[CodMod] [int] NOT NULL,
	[CodMed] [int] NOT NULL,
	[QtdLon] [int] NOT NULL,
	[CodFor] [int] NOT NULL,
	[CodFbr] [varchar](20) NULL,
	[DatCmp] [datetime] NULL,
	[ValCmp] [money] NULL,
	[DatCol] [datetime] NULL,
	[CodVei] [char](8) NULL,
	[Eixo] [char](3) NULL,
	[DatRet] [datetime] NULL,
	[CodMot] [int] NULL,
	[PosPne] [char](1) NOT NULL,
	[ObsPne] [varchar](250) NULL,
	[OrgLnc] [char](1) NOT NULL,
	[CodOrg] [varchar](25) NULL,
 CONSTRAINT [PK_TabPne] PRIMARY KEY NONCLUSTERED 
(
	[CodPne] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPnt]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPnt](
	[CodPnt] [int] IDENTITY(1,1) NOT NULL,
	[NomPnt] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TabPnt] PRIMARY KEY NONCLUSTERED 
(
	[CodPnt] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPrf]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPrf](
	[CodPrf] [int] IDENTITY(1,1) NOT NULL,
	[NomPrf] [varchar](50) NOT NULL,
	[OrdCrg] [char](1) NOT NULL,
 CONSTRAINT [PK_TabPrf] PRIMARY KEY NONCLUSTERED 
(
	[CodPrf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPrm]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPrm](
	[Processo] [varchar](50) NOT NULL,
	[Descricao] [varchar](100) NULL,
	[ImgIdx] [int] NULL,
	[Objeto] [varchar](50) NULL,
	[Aba] [varchar](35) NULL,
	[Apelido] [varchar](250) NULL,
	[Visivel] [bit] NULL,
 CONSTRAINT [PK_TabPrm] PRIMARY KEY CLUSTERED 
(
	[Processo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabPro]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabPro](
	[CodPro] [int] NOT NULL,
	[NomPro] [varchar](100) NOT NULL,
	[Modelo] [varchar](50) NULL,
	[NomCom] [varchar](50) NULL,
	[NomCmp1] [varchar](50) NULL,
	[NomCmp2] [varchar](50) NULL,
	[CodEmb] [int] NOT NULL,
	[Peso] [float] NULL,
	[CodGru] [int] NOT NULL,
	[SitTri] [char](3) NOT NULL,
	[ClasFiscal] [varchar](15) NULL,
	[CodEan13] [varchar](14) NULL,
	[Aplicacao] [varchar](900) NULL,
	[CodFor] [int] NOT NULL,
	[EstMin] [float] NULL,
	[ValVen] [money] NULL,
	[Concentracao] [varchar](50) NULL,
	[Formulacao] [varchar](50) NULL,
	[PrincipioAtivo] [varchar](100) NULL,
	[ClasseTox] [varchar](100) NULL,
	[Toxidade] [varchar](100) NULL,
	[GrupoQui] [varchar](100) NULL,
	[Antidoto] [varchar](25) NULL,
	[PrimeiroSocorro] [varchar](500) NULL,
	[TipPro] [char](1) NULL,
	[CodTrr] [int] NULL,
	[Analisa] [char](1) NOT NULL,
	[PosPro] [char](1) NOT NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
	[ClcPMP] [char](1) NOT NULL,
	[FichaEmergencia] [text] NULL,
	[ValCstU] [decimal](12, 3) NULL,
	[ValCstM] [decimal](12, 3) NULL,
	[ValCstR] [decimal](12, 3) NULL,
	[DatCstR] [datetime] NULL,
	[DscMaxPro] [decimal](5, 2) NULL,
	[DscMaxAdc] [decimal](5, 2) NULL,
	[DatCad] [datetime] NULL,
	[CodSIMP] [varchar](9) NULL,
	[STbPis] [char](2) NULL,
	[STbCfs] [char](2) NULL,
	[AlqPis] [decimal](5, 2) NULL,
	[AlqCfs] [decimal](5, 2) NULL,
	[TaxCst] [decimal](5, 2) NULL,
	[TaxPis] [decimal](5, 2) NULL,
	[TaxCfs] [decimal](5, 2) NULL,
	[TaxIcm] [decimal](5, 2) NULL,
	[MrgLuc] [decimal](5, 2) NULL,
	[MrgNeg] [decimal](5, 2) NULL,
	[cEanTrib] [varchar](14) NULL,
	[ValPta] [decimal](12, 4) NULL,
	[STbPisE] [char](2) NULL,
	[STbCfsE] [char](2) NULL,
	[ExpSIMP] [char](1) NOT NULL,
	[CodHan] [int] NULL,
	[SglLot] [varchar](10) NULL,
	[VldLot] [int] NULL,
	[QtMinP] [decimal](12, 3) NULL,
	[QtMaxP] [decimal](12, 3) NULL,
	[RtCPdc] [int] NULL,
	[SeqPro] [char](2) NULL,
	[CodSml] [int] NULL,
	[LczPro] [varchar](25) NULL,
	[CodCEST] [varchar](7) NULL,
	[GBMobl] [char](1) NOT NULL,
	[CodMKT] [int] NULL,
	[TipEmb] [char](1) NULL,
	[CodRef] [varchar](25) NULL,
	[STbIpi] [char](2) NULL,
	[STbIpiE] [char](2) NULL,
	[PathFoto] [varchar](150) NULL,
 CONSTRAINT [PK_TabPro] PRIMARY KEY NONCLUSTERED 
(
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabReg]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabReg](
	[CodReg] [int] IDENTITY(1,1) NOT NULL,
	[NomReg] [varchar](50) NOT NULL,
	[Distancia] [decimal](12, 2) NULL,
	[CodFrt] [int] NULL,
 CONSTRAINT [PK_TabReg] PRIMARY KEY NONCLUSTERED 
(
	[CodReg] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabRNt]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabRNt](
	[CodNtr] [int] NOT NULL,
	[TipNtr] [char](2) NOT NULL,
	[GrpNtr] [char](2) NOT NULL,
	[VlrRef] [decimal](12, 3) NOT NULL,
 CONSTRAINT [PK_TabRNt] PRIMARY KEY CLUSTERED 
(
	[CodNtr] ASC,
	[TipNtr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabRST]    Script Date: 17/04/2018 16:55:37 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabRST](
	[CodEmp] [int] NOT NULL,
	[CodNCM] [varchar](10) NOT NULL,
	[TipRST] [char](2) NOT NULL,
	[AlqMVA] [decimal](6, 2) NULL,
	[AlqICM] [decimal](6, 2) NULL,
	[RdcBas] [decimal](7, 4) NULL,
 CONSTRAINT [PK_TabRST] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodNCM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabRst_OLD]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabRst_OLD](
	[CodEmp] [int] NOT NULL,
	[CodNCM] [varchar](10) NOT NULL,
	[TipRST] [char](2) NOT NULL,
	[AlqMVA] [decimal](6, 2) NULL,
	[AlqICM] [decimal](6, 2) NULL,
	[RdcBas] [decimal](7, 4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabSrv]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabSrv](
	[CodSrv] [int] NOT NULL,
	[NomSrv] [varchar](75) NOT NULL,
	[ValSrv] [decimal](12, 2) NULL,
	[CodHan] [int] NOT NULL,
	[TipSrv] [char](1) NOT NULL,
	[FrqSrv] [int] NULL,
	[TolAcm] [int] NULL,
	[TolAbx] [int] NULL,
 CONSTRAINT [PK_TabSrv] PRIMARY KEY CLUSTERED 
(
	[CodSrv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabSTb]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabSTb](
	[CodSTb] [char](3) NOT NULL,
	[NomSTb] [varchar](250) NOT NULL,
	[ValFis] [char](1) NOT NULL,
 CONSTRAINT [PK_TabSTb] PRIMARY KEY CLUSTERED 
(
	[CodSTb] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabTip]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabTip](
	[CodTip] [int] NOT NULL,
	[NomTip] [varchar](50) NOT NULL,
	[CodCfo] [char](5) NOT NULL,
	[CodHan] [int] NOT NULL,
	[InsIcm] [char](1) NULL,
	[PerRed] [float] NULL,
	[SitTri] [char](3) NULL,
	[PreEst] [char](1) NULL,
	[PreRsv] [char](1) NULL,
	[GerDup] [char](1) NULL,
	[NotEnt] [char](1) NULL,
	[ValFis] [char](1) NULL,
	[VlrAum] [float] NULL,
	[PrcDsc] [float] NULL,
	[ObsTip] [varchar](250) NULL,
	[ObsNot] [varchar](250) NULL,
	[Icms] [float] NULL,
	[TipVnd] [char](1) NULL,
	[InbPrv] [char](1) NULL,
	[IcmTrr] [char](1) NOT NULL,
	[Analisa] [char](1) NOT NULL,
	[PosTip] [char](1) NOT NULL,
	[Deposito] [char](1) NOT NULL,
	[TrbNot] [char](1) NOT NULL,
	[Transf] [char](1) NOT NULL,
	[TipTrf] [int] NULL,
	[AtzCst] [char](1) NOT NULL,
	[MotTrf] [int] NULL,
	[CodSIMP] [varchar](7) NULL,
	[Modelo] [char](2) NULL,
	[Serie] [char](3) NULL,
	[SubSerie] [char](2) NULL,
	[VndCst] [char](1) NOT NULL,
	[CodHanBax] [int] NULL,
	[ExpCtb] [char](2) NOT NULL,
	[RcbFrt] [char](1) NOT NULL,
	[CodSIMPnRg] [varchar](7) NULL,
	[ClcPMP] [char](1) NOT NULL,
	[DepositoT] [char](1) NOT NULL,
	[ExpQion] [char](1) NOT NULL,
	[ExpAccera] [char](1) NOT NULL,
	[GBMobl] [char](1) NOT NULL,
	[ExpEAG] [char](1) NOT NULL,
	[ApvIcm] [char](1) NOT NULL,
	[CodCta] [varchar](25) NULL,
	[DstOpr] [char](1) NULL,
 CONSTRAINT [PK_TabTip] PRIMARY KEY NONCLUSTERED 
(
	[CodTip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabTnq]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabTnq](
	[CodEmp] [int] NOT NULL,
	[CodTnq] [int] NOT NULL,
	[Volume] [int] NOT NULL,
	[CodPro] [int] NOT NULL,
	[QtdMed] [int] NULL,
	[QtdEst] [float] NULL,
 CONSTRAINT [PK_TabTnq] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[CodTnq] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabTrb]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabTrb](
	[CodTrb] [int] NOT NULL,
	[EstOrg] [char](2) NOT NULL,
	[EstDst] [char](2) NOT NULL,
	[TipTrb] [char](2) NOT NULL,
	[SitTrb] [char](3) NOT NULL,
	[IcmsFisSI] [decimal](5, 2) NULL,
	[IcmsJurCI] [decimal](5, 2) NULL,
	[IcmsJurSI] [decimal](5, 2) NULL,
	[RedcFisSI] [decimal](7, 4) NULL,
	[RedcJurCI] [decimal](7, 4) NULL,
	[RedcJurSI] [decimal](7, 4) NULL,
	[PercAum] [decimal](7, 4) NULL,
	[PercDsc] [decimal](7, 4) NULL,
	[CodMen] [int] NULL,
	[IcmsFisCI] [decimal](5, 2) NULL,
	[RedcFisCI] [decimal](7, 4) NULL,
	[Iva] [decimal](5, 2) NULL,
	[Ipi] [decimal](5, 2) NULL,
 CONSTRAINT [PK_TabTrb] PRIMARY KEY CLUSTERED 
(
	[CodTrb] ASC,
	[EstOrg] ASC,
	[EstDst] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabUsu]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabUsu](
	[CodEmp] [int] NOT NULL,
	[Login] [varchar](15) NOT NULL,
	[Senha] [varchar](16) NULL,
	[PosUsu] [char](1) NOT NULL,
	[CodFun] [int] NULL,
 CONSTRAINT [PK_TabUsu] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[Login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabVec]    Script Date: 17/04/2018 16:55:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabVec](
	[CodVec] [int] NOT NULL,
	[NomVec] [varchar](75) NOT NULL,
	[ForPag] [varchar](10) NOT NULL,
	[TipPrz] [char](1) NOT NULL,
	[CrdEnt] [char](1) NULL,
	[CrdPrc] [int] NULL,
	[CrdVar] [int] NULL,
	[TipPag] [char](3) NOT NULL,
	[PrzCrc] [int] NULL,
	[PosVec] [char](1) NOT NULL,
	[GBMobl] [char](1) NOT NULL,
 CONSTRAINT [PK___9__10] PRIMARY KEY CLUSTERED 
(
	[CodVec] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabVei]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabVei](
	[CodVei] [char](8) NOT NULL,
	[NomVei] [varchar](50) NOT NULL,
	[CodCid] [int] NOT NULL,
	[PlacaA] [varchar](11) NULL,
	[Chassi] [varchar](20) NOT NULL,
	[Renavan] [varchar](15) NOT NULL,
	[CodEsp] [int] NOT NULL,
	[CodCmb] [int] NOT NULL,
	[CodMrc] [int] NOT NULL,
	[CodMod] [int] NOT NULL,
	[AnoFab] [int] NOT NULL,
	[AnoMod] [int] NOT NULL,
	[Capacidade] [decimal](12, 3) NULL,
	[Potencia] [varchar](10) NULL,
	[Cilindrada] [varchar](10) NULL,
	[CodCor] [int] NOT NULL,
	[CodPnt] [int] NOT NULL,
	[CodTra] [int] NOT NULL,
	[ObsVei] [text] NULL,
	[CodCon] [int] NULL,
	[PosVei] [char](1) NOT NULL,
	[DatPos] [datetime] NULL,
	[CodMot] [int] NULL,
	[Odometro] [float] NULL,
	[TipVei] [char](1) NOT NULL,
	[CodHCp] [int] NULL,
	[DatOdm] [datetime] NULL,
	[DatAqs] [datetime] NULL,
	[ValAqs] [decimal](12, 2) NULL,
	[ValJur] [decimal](12, 2) NULL,
	[DatDpr] [datetime] NULL,
	[CodGru] [int] NULL,
	[TarVei] [decimal](12, 3) NULL,
	[RNTRC] [varchar](25) NULL,
 CONSTRAINT [PK_TabVei] PRIMARY KEY NONCLUSTERED 
(
	[CodVei] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TabVol]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TabVol](
	[Volume] [int] NOT NULL,
 CONSTRAINT [PK_TabVol] PRIMARY KEY NONCLUSTERED 
(
	[Volume] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo60A]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo60A](
	[CodEmp] [int] NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[SitTri] [char](4) NOT NULL,
	[GTPrc] [decimal](12, 2) NOT NULL,
	[BasIcm] [decimal](12, 2) NULL,
	[AlqIcm] [decimal](12, 2) NULL,
	[ValIcm] [decimal](12, 2) NULL,
	[CodCfo] [char](5) NULL,
 CONSTRAINT [PK_Tipo60A] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[DatEmi] ASC,
	[SitTri] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo60M]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo60M](
	[CodEmp] [int] NOT NULL,
	[DatEmi] [datetime] NOT NULL,
	[DocIni] [int] NOT NULL,
	[DocFin] [int] NOT NULL,
	[ReducaoZ] [int] NOT NULL,
	[GTRnc] [int] NULL,
	[ValBrt] [decimal](12, 2) NOT NULL,
	[ValDes] [decimal](12, 2) NULL,
	[ValAcm] [decimal](12, 2) NOT NULL,
	[ValIse] [decimal](12, 2) NULL,
	[ValOut] [decimal](12, 2) NULL,
	[ValSbT] [decimal](12, 2) NULL,
	[CodCfo] [char](5) NULL,
	[ObsECF] [varchar](250) NULL,
	[MapECF] [int] NULL,
	[ValCnc] [decimal](12, 2) NULL,
	[ValAcr] [decimal](12, 2) NULL,
	[ValLiq] [decimal](12, 2) NULL,
	[TipLnc] [char](1) NOT NULL,
	[PosRes] [char](1) NOT NULL,
 CONSTRAINT [PK_Tipo60M] PRIMARY KEY NONCLUSTERED 
(
	[CodEmp] ASC,
	[DatEmi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpEnt]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpEnt](
	[DatOpe] [datetime] NULL,
	[CodNot] [int] NULL,
	[CodFor] [int] NULL,
	[NomFor] [varchar](75) NULL,
	[Serie] [char](3) NULL,
	[DatNot] [datetime] NULL,
	[QtdPro] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpLMP]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpLMP](
	[DatOpe] [datetime] NOT NULL,
	[CodPro] [int] NOT NULL,
 CONSTRAINT [PK_TmpLMP] PRIMARY KEY NONCLUSTERED 
(
	[DatOpe] ASC,
	[CodPro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpMed]    Script Date: 17/04/2018 16:55:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpMed](
	[DatMed] [datetime] NOT NULL,
	[CodTnq] [int] NOT NULL,
	[QtdProI] [float] NULL,
	[QtdProF] [float] NULL,
	[ObsMed] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TmpSai]    Script Date: 17/04/2018 16:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TmpSai](
	[DatOpe] [datetime] NULL,
	[CodNot] [int] NULL,
	[CodCli] [int] NULL,
	[NomCli] [varchar](75) NULL,
	[Serie] [char](3) NULL,
	[DatNot] [datetime] NULL,
	[QtdPro] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrbCfo]    Script Date: 17/04/2018 16:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrbCfo](
	[CodTrb] [int] NOT NULL,
	[EstOrg] [char](2) NOT NULL,
	[EstDst] [char](2) NOT NULL,
	[CodTip] [int] NOT NULL,
	[CodCfo] [char](5) NOT NULL,
 CONSTRAINT [PK_TrbCfo] PRIMARY KEY CLUSTERED 
(
	[CodTrb] ASC,
	[EstOrg] ASC,
	[EstDst] ASC,
	[CodTip] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeiCps]    Script Date: 17/04/2018 16:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeiCps](
	[CodVei] [char](8) NOT NULL,
	[CodCps] [char](8) NOT NULL,
	[Estado] [char](2) NOT NULL,
	[Renavan] [varchar](15) NULL,
 CONSTRAINT [PK_VeiCps] PRIMARY KEY CLUSTERED 
(
	[CodVei] ASC,
	[CodCps] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VeiRat]    Script Date: 17/04/2018 16:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VeiRat](
	[CodVei] [char](8) NOT NULL,
	[AnoRat] [int] NOT NULL,
	[CodHan] [int] NOT NULL,
	[ValRat] [decimal](12, 2) NOT NULL,
 CONSTRAINT [PK_VeiRat] PRIMARY KEY CLUSTERED 
(
	[CodVei] ASC,
	[AnoRat] ASC,
	[CodHan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VrfOS]    Script Date: 17/04/2018 16:55:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VrfOS](
	[CodEmp] [int] NOT NULL,
	[CodOS] [int] NOT NULL,
	[CodVrf] [int] IDENTITY(1,1) NOT NULL,
	[NomVrf] [varchar](250) NOT NULL,
 CONSTRAINT [PK_VrfOS] PRIMARY KEY CLUSTERED 
(
	[CodEmp] ASC,
	[CodOS] ASC,
	[CodVrf] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ActAdt] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[BlqPed] ADD  CONSTRAINT [DF_BlqPed_PosBlq]  DEFAULT ('P') FOR [PosBlq]
GO
ALTER TABLE [dbo].[ChaPro] ADD  CONSTRAINT [DF_ChaPro_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[ChaSrv] ADD  CONSTRAINT [DF_ChaSrv_ObsHan]  DEFAULT (75) FOR [ObsSrv]
GO
ALTER TABLE [dbo].[ChaSrv] ADD  CONSTRAINT [DF_ChaSrv_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[ChaSrv] ADD  CONSTRAINT [DF__ChaSrv__QtdSrv__6EC13C93]  DEFAULT (1) FOR [QtdSrv]
GO
ALTER TABLE [dbo].[CliOco] ADD  CONSTRAINT [DF_CliOco_Retorno]  DEFAULT ('N') FOR [Retorno]
GO
ALTER TABLE [dbo].[CliSlc] ADD  DEFAULT ('N') FOR [StsSlc]
GO
ALTER TABLE [dbo].[CliSoc] ADD  DEFAULT ('N') FOR [SocRsp]
GO
ALTER TABLE [dbo].[CntGrp] ADD  CONSTRAINT [DF_CntGrp_LncApr]  DEFAULT (0) FOR [LncApr]
GO
ALTER TABLE [dbo].[CntGrp] ADD  DEFAULT (0) FOR [CodFun]
GO
ALTER TABLE [dbo].[DetBan] ADD  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[FatEst] ADD  CONSTRAINT [DF_FatEst_ValFatD]  DEFAULT (0) FOR [ValFatD]
GO
ALTER TABLE [dbo].[FatPed] ADD  CONSTRAINT [DF_FatPed_ValFatR]  DEFAULT (0) FOR [ValFatR]
GO
ALTER TABLE [dbo].[FatPed] ADD  DEFAULT ('NRM') FOR [Status]
GO
ALTER TABLE [dbo].[FatSrv] ADD  CONSTRAINT [DF_FatSrv_Status]  DEFAULT ('NRM') FOR [Status]
GO
ALTER TABLE [dbo].[FunCCt] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[FunCom] ADD  DEFAULT (0) FOR [MrgMin]
GO
ALTER TABLE [dbo].[FunCom] ADD  DEFAULT (0) FOR [MrgBas]
GO
ALTER TABLE [dbo].[FunOco] ADD  CONSTRAINT [DF_FunOco_Retorno]  DEFAULT ('N') FOR [Retorno]
GO
ALTER TABLE [dbo].[GNtEst] ADD  CONSTRAINT [DF_GNtEst_Concentracao]  DEFAULT ((0)) FOR [Concentracao]
GO
ALTER TABLE [dbo].[HstChe] ADD  CONSTRAINT [DF__hstche__HorHst__20AD9DE2]  DEFAULT ('00:00') FOR [HorHst]
GO
ALTER TABLE [dbo].[HstChe] ADD  CONSTRAINT [DF__hstche__LogHst__21A1C21B]  DEFAULT ('GERPA') FOR [LogHst]
GO
ALTER TABLE [dbo].[IteAlm] ADD  DEFAULT ('-') FOR [TipAct]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValPag]  DEFAULT (0) FOR [ValPag]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValPagR]  DEFAULT (0) FOR [ValPagR]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValJur]  DEFAULT (0) FOR [ValJur]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValJurR]  DEFAULT (0) FOR [ValJurR]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[IteChe] ADD  CONSTRAINT [DF_IteChe_ValDesR]  DEFAULT (0) FOR [ValDesR]
GO
ALTER TABLE [dbo].[IteCmp] ADD  DEFAULT (0) FOR [Icms]
GO
ALTER TABLE [dbo].[IteCmp] ADD  DEFAULT (0) FOR [Ipi]
GO
ALTER TABLE [dbo].[IteCmp] ADD  DEFAULT (0) FOR [ValIpi]
GO
ALTER TABLE [dbo].[IteEst] ADD  CONSTRAINT [DF_IteEst_ValProD]  DEFAULT (0) FOR [ValProD]
GO
ALTER TABLE [dbo].[IteEst] ADD  CONSTRAINT [DF_IteEst_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[IteEst] ADD  CONSTRAINT [DF_IteEst_ValCst]  DEFAULT (0) FOR [ValCst]
GO
ALTER TABLE [dbo].[IteEst] ADD  DEFAULT ('S') FOR [DscIcmCst]
GO
ALTER TABLE [dbo].[IteMtq] ADD  CONSTRAINT [DF_IteMtq_QtdMedI]  DEFAULT (0) FOR [QtdMedI]
GO
ALTER TABLE [dbo].[IteMtq] ADD  CONSTRAINT [DF_IteMtq_QtdProI]  DEFAULT (0) FOR [QtdProI]
GO
ALTER TABLE [dbo].[IteMtq] ADD  CONSTRAINT [DF_IteMtq_QtdMedF]  DEFAULT (0) FOR [QtdMedF]
GO
ALTER TABLE [dbo].[IteMtq] ADD  CONSTRAINT [DF_IteMtq_QtdProF]  DEFAULT (0) FOR [QtdProF]
GO
ALTER TABLE [dbo].[IteOrc] ADD  CONSTRAINT [DF_IteOrc_ValPro]  DEFAULT (0) FOR [ValPro]
GO
ALTER TABLE [dbo].[IteOrc] ADD  CONSTRAINT [DF_IteOrc_QtdPro]  DEFAULT (0) FOR [QtdPro]
GO
ALTER TABLE [dbo].[IteOrc] ADD  CONSTRAINT [DF_IteOrc_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[ItePed] ADD  CONSTRAINT [DF_ItePed_ValProR]  DEFAULT (0) FOR [ValProR]
GO
ALTER TABLE [dbo].[ItePed] ADD  CONSTRAINT [DF_ItePed_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[ItePed] ADD  DEFAULT ('P') FOR [SitCjg]
GO
ALTER TABLE [dbo].[IteRet] ADD  CONSTRAINT [DF_IteRet_TipOco]  DEFAULT ('T') FOR [TipOco]
GO
ALTER TABLE [dbo].[IteRms] ADD  CONSTRAINT [DF_IteRms_TipOco]  DEFAULT ('R') FOR [TipOco]
GO
ALTER TABLE [dbo].[IteRmsSrs] ADD  CONSTRAINT [DF_IteRmsSrs_Valor]  DEFAULT (0) FOR [Valor]
GO
ALTER TABLE [dbo].[IteRmsSrs] ADD  CONSTRAINT [DF_IteRmsSrs_Status]  DEFAULT ('G') FOR [Status]
GO
ALTER TABLE [dbo].[IteRsv] ADD  CONSTRAINT [DF_IteRsv_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[IteSrv] ADD  CONSTRAINT [DF_IteSrv_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[IteUsu] ADD  CONSTRAINT [DF_IteUsu_Executa]  DEFAULT (0) FOR [Executa]
GO
ALTER TABLE [dbo].[IteUsu] ADD  CONSTRAINT [DF_IteUsu_Grava]  DEFAULT (0) FOR [Grava]
GO
ALTER TABLE [dbo].[IteUsu] ADD  CONSTRAINT [DF_IteUsu_Exclui]  DEFAULT (0) FOR [Exclui]
GO
ALTER TABLE [dbo].[IteUsu] ADD  CONSTRAINT [DF_IteUsu_Imprime]  DEFAULT (0) FOR [Imprime]
GO
ALTER TABLE [dbo].[LncApr] ADD  CONSTRAINT [DF_LncApr_ValLan]  DEFAULT (0) FOR [ValLan]
GO
ALTER TABLE [dbo].[LncApr] ADD  DEFAULT ('C') FOR [TipLiv]
GO
ALTER TABLE [dbo].[MovAdt] ADD  CONSTRAINT [DF__MovAdt__TipAdt]  DEFAULT ('C') FOR [TipAdt]
GO
ALTER TABLE [dbo].[MovAdt] ADD  CONSTRAINT [DF_MovAdt_PosAdt]  DEFAULT ('P') FOR [PosAdt]
GO
ALTER TABLE [dbo].[MovAdt] ADD  DEFAULT ('D') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovAdtC] ADD  CONSTRAINT [DF_MovAdtC_ValCre]  DEFAULT (0) FOR [ValCre]
GO
ALTER TABLE [dbo].[MovAdtC] ADD  CONSTRAINT [DF_MovAdtC_ValDeb]  DEFAULT (0) FOR [ValDeb]
GO
ALTER TABLE [dbo].[MovAdtC] ADD  CONSTRAINT [DF_MovAdtC_TipAdt]  DEFAULT ('C') FOR [TipAdt]
GO
ALTER TABLE [dbo].[MovAdtC] ADD  CONSTRAINT [DF_MovAdtC_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF_MovAdtF_ValCre]  DEFAULT (0) FOR [ValCre]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF_MovAdtF_ValDeb]  DEFAULT (0) FOR [ValDeb]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF_MovAdtF_TipAdt]  DEFAULT ('C') FOR [TipAdt]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF_MovAdtF_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF__MovAdtF__Dinheiro]  DEFAULT (0) FOR [Dinheiro]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF__MovAdtF__ChequeV]  DEFAULT (0) FOR [ChequeV]
GO
ALTER TABLE [dbo].[MovAdtF] ADD  CONSTRAINT [DF__MovAdtF__ChequeP]  DEFAULT (0) FOR [ChequeP]
GO
ALTER TABLE [dbo].[MovAlm] ADD  CONSTRAINT [DF_MovAlm_PosAlm]  DEFAULT ('P') FOR [PosAlm]
GO
ALTER TABLE [dbo].[MovAlm] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovAlm] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovBan] ADD  CONSTRAINT [DF_MovBan_ValCre]  DEFAULT (0) FOR [ValCre]
GO
ALTER TABLE [dbo].[MovBan] ADD  CONSTRAINT [DF_MovBan_ValDeb]  DEFAULT (0) FOR [ValDeb]
GO
ALTER TABLE [dbo].[MovBan] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovBan] ADD  DEFAULT ('N') FOR [Transferencia]
GO
ALTER TABLE [dbo].[MovBan] ADD  DEFAULT (1) FOR [CodCai]
GO
ALTER TABLE [dbo].[MovBan] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovBan] ADD  DEFAULT ('P') FOR [CfrPos]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MovBxP_ValPagR]  DEFAULT (0) FOR [ValPagR]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MOVBXp_ValJur_2__10]  DEFAULT (0) FOR [ValJur]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MovBxP_ValJurR]  DEFAULT (0) FOR [ValJurR]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MOVBXp_ValDes_1__10]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MovBxP_ValDesR]  DEFAULT (0) FOR [ValDesR]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF_MovBxP_ValCot]  DEFAULT (0) FOR [ValCot]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF__MovBxP__TipBai__39788055]  DEFAULT ('M') FOR [TipBai]
GO
ALTER TABLE [dbo].[MovBxP] ADD  CONSTRAINT [DF__MovBxP__CodCai__4F32B74A]  DEFAULT (1) FOR [CodCai]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [Dinheiro]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [ChequeV]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [ChequeP]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [Cartao]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [Vale]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT (0) FOR [Outros]
GO
ALTER TABLE [dbo].[MovBxP] ADD  DEFAULT ('A') FOR [SitBxP]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_ValPag]  DEFAULT (0) FOR [ValPag]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_ValPagR]  DEFAULT (0) FOR [ValPagR]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MOVBXR_ValJur_2__10]  DEFAULT (0) FOR [ValJur]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_ValJurR]  DEFAULT (0) FOR [ValJurR]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MOVBXR_ValDes_1__10]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_ValDesR]  DEFAULT (0) FOR [ValDesR]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_Moeda]  DEFAULT ('R') FOR [Moeda]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF_MovBxR_ValCot]  DEFAULT (0) FOR [ValCot]
GO
ALTER TABLE [dbo].[MovBxR] ADD  CONSTRAINT [DF__MovBxR__CodCai__5026DB83]  DEFAULT (1) FOR [CodCai]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [Dinheiro]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [ChequeV]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [ChequeP]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [Cartao]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [Vale]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT (0) FOR [Outros]
GO
ALTER TABLE [dbo].[MovBxR] ADD  DEFAULT ('A') FOR [SitBxR]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__ValCre__1471E42F]  DEFAULT (0) FOR [ValCre]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__ValDeb__15660868]  DEFAULT (0) FOR [ValDeb]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__Dinheiro__165A2CA1]  DEFAULT (0) FOR [Dinheiro]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__ChequeV__174E50DA]  DEFAULT (0) FOR [ChequeV]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__ChequeP__18427513]  DEFAULT (0) FOR [ChequeP]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__Cartao__1936994C]  DEFAULT (0) FOR [Cartao]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__Vale__1C1305F7]  DEFAULT (0) FOR [Vale]
GO
ALTER TABLE [dbo].[MovCai] ADD  CONSTRAINT [DF__MovCai__Outros__1D072A30]  DEFAULT (0) FOR [Outros]
GO
ALTER TABLE [dbo].[MovCai] ADD  DEFAULT (1) FOR [CodCai]
GO
ALTER TABLE [dbo].[MovCai] ADD  DEFAULT ('P') FOR [CfrPos]
GO
ALTER TABLE [dbo].[MovCha] ADD  CONSTRAINT [DF_MovCha_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovCha] ADD  CONSTRAINT [DF_MovCha_PosCha]  DEFAULT ('P') FOR [PosCha]
GO
ALTER TABLE [dbo].[MovChe] ADD  DEFAULT ('GR') FOR [Status]
GO
ALTER TABLE [dbo].[MovChe] ADD  DEFAULT ('P') FOR [CfrPos]
GO
ALTER TABLE [dbo].[MovChe] ADD  DEFAULT ('N') FOR [Temporario]
GO
ALTER TABLE [dbo].[MovCmp] ADD  CONSTRAINT [DF_MovCmp_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovCmp] ADD  CONSTRAINT [DF_MovCmp_ValPed]  DEFAULT (0) FOR [ValPed]
GO
ALTER TABLE [dbo].[MovCmp] ADD  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[MovCmp] ADD  DEFAULT (0) FOR [ValSbt]
GO
ALTER TABLE [dbo].[MovCmp] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovCmp] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovCms] ADD  CONSTRAINT [DF__MovCms__TipLnc__4262CC11]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovCms] ADD  CONSTRAINT [DF__MovCms__PosCms__4356F04A]  DEFAULT ('P') FOR [PosCms]
GO
ALTER TABLE [dbo].[MovCms] ADD  CONSTRAINT [DF_MovCms_ValCre]  DEFAULT (0) FOR [ValCre]
GO
ALTER TABLE [dbo].[MovCms] ADD  CONSTRAINT [DF_MovCms_ValDeb]  DEFAULT (0) FOR [ValDeb]
GO
ALTER TABLE [dbo].[MovCmsN] ADD  CONSTRAINT [DF__MovCmsN__TipLnc__261B931E]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovCmsN] ADD  CONSTRAINT [DF__MovCmsN__PosCms__270FB757]  DEFAULT ('P') FOR [PosCms]
GO
ALTER TABLE [dbo].[MovCmsN] ADD  CONSTRAINT [DF__MovCmsN__OrgLnc__2C545AB8]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_PerRed]  DEFAULT (0) FOR [PerRed]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValFsc]  DEFAULT (0) FOR [ValFsc]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValTnl]  DEFAULT (0) FOR [ValTnl]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValFre]  DEFAULT (0) FOR [ValFre]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValBas]  DEFAULT (0) FOR [ValBas]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_Icms]  DEFAULT (0) FOR [Icms]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValIcm]  DEFAULT (0) FOR [ValIcm]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValSeg]  DEFAULT (0) FOR [ValSeg]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_ValCnh]  DEFAULT (0) FOR [ValCnh]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_FreCmb]  DEFAULT (0) FOR [FreCmb]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_Adiantamento]  DEFAULT (0) FOR [Adiantamento]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_IcmsRecolhido]  DEFAULT (0) FOR [IcmsRecolhido]
GO
ALTER TABLE [dbo].[MovCnh] ADD  CONSTRAINT [DF_MovCnh_TolQbr]  DEFAULT (0) FOR [TolQbr]
GO
ALTER TABLE [dbo].[MovCnh] ADD  DEFAULT ('2') FOR [TipFre]
GO
ALTER TABLE [dbo].[MovCnh] ADD  DEFAULT ('N') FOR [Averba]
GO
ALTER TABLE [dbo].[MovCnh] ADD  DEFAULT ('0') FOR [TipSrv]
GO
ALTER TABLE [dbo].[MovDoc] ADD  CONSTRAINT [DF_MovDoc_ValDoc]  DEFAULT (0) FOR [ValDoc]
GO
ALTER TABLE [dbo].[MovDspV] ADD  CONSTRAINT [DF_MovDspV_Odometro]  DEFAULT (0) FOR [Odometro]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValNotD]  DEFAULT (0) FOR [ValNotD]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_BasIcm]  DEFAULT (0) FOR [BasIcm]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValIcm]  DEFAULT (0) FOR [ValIcm]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_BasSbt]  DEFAULT (0) FOR [BasSbt]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValSbt]  DEFAULT (0) FOR [ValSbt]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_BasIpi]  DEFAULT (0) FOR [BasIpi]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValIpi]  DEFAULT (0) FOR [ValIpi]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValFre]  DEFAULT (0) FOR [ValFre]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValCnh]  DEFAULT (0) FOR [ValCnh]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValSeg]  DEFAULT (0) FOR [ValSeg]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValOut]  DEFAULT (0) FOR [ValOut]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovEst] ADD  CONSTRAINT [DF_MovEst_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovEst] ADD  DEFAULT ('N') FOR [EntDev]
GO
ALTER TABLE [dbo].[MovEst] ADD  DEFAULT ('00') FOR [SitDcF]
GO
ALTER TABLE [dbo].[MovOP] ADD  CONSTRAINT [DF_MovOP_PosOP]  DEFAULT ('P') FOR [PosOP]
GO
ALTER TABLE [dbo].[MovOP] ADD  CONSTRAINT [DF_MovOP_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovOP] ADD  CONSTRAINT [DF_MovOP_TipLnc]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovOpg] ADD  CONSTRAINT [DF_MovOpg_PosOpg]  DEFAULT ('P') FOR [PosOpg]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_TipFre]  DEFAULT (1) FOR [TipFre]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_ValFre]  DEFAULT (0) FOR [ValFre]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_Moeda]  DEFAULT ('M') FOR [Moeda]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_ValPro]  DEFAULT (0) FOR [ValPro]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_ValOrc]  DEFAULT (0) FOR [ValOrc]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF_MovOrc_PosOrc]  DEFAULT ('P') FOR [PosOrc]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF__MovOrc__TipDoc__59C61FAD]  DEFAULT ('N') FOR [TipDoc]
GO
ALTER TABLE [dbo].[MovOrc] ADD  CONSTRAINT [DF__MovOrc__Status__65E1DDCF]  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[MovOS] ADD  CONSTRAINT [DF_MovOS_TipOS]  DEFAULT ('P') FOR [TipOS]
GO
ALTER TABLE [dbo].[MovOS] ADD  CONSTRAINT [DF_MovOS_PosOS]  DEFAULT ('P') FOR [PosOS]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MovPag_ValNomR]  DEFAULT (0) FOR [ValNomR]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MOVPAG_ValPag_5__10]  DEFAULT (0) FOR [ValPag]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MovPag_ValPagR]  DEFAULT (0) FOR [ValPagR]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MOVPAG_ValJur_3__10]  DEFAULT (0) FOR [ValJur]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MOVPAG_ValDes_2__10]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MovPag_CodNot]  DEFAULT (0) FOR [CodNot]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MovPag_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF__MovPag__TipLnc__7B5130AA]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovPag] ADD  CONSTRAINT [DF_MovPag_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovPag] ADD  DEFAULT ('N') FOR [Status]
GO
ALTER TABLE [dbo].[MovPag] ADD  DEFAULT ('A') FOR [SitTit]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_Icms]  DEFAULT (0) FOR [Icms]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_PerRed]  DEFAULT (0) FOR [PerRed]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MOVPED_CodNot_2__13]  DEFAULT (0) FOR [CodNot]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValPro_1]  DEFAULT (0) FOR [ValPro]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValProR]  DEFAULT (0) FOR [ValProR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValPro]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValDesR]  DEFAULT (0) FOR [ValDesR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValFre_1]  DEFAULT (0) FOR [ValFre]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValFreR]  DEFAULT (0) FOR [ValFreR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValPed]  DEFAULT (0) FOR [ValPed]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValPedR]  DEFAULT (0) FOR [ValPedR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MOVPED_ValNot_4__150]  DEFAULT (0) FOR [ValNot]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValNotR]  DEFAULT (0) FOR [ValNotR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MOVPED_ValBas_1__150]  DEFAULT (0) FOR [ValBas]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValBasR]  DEFAULT (0) FOR [ValBasR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MOVPED_ValIcm_2__150]  DEFAULT (0) FOR [ValIcm]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValIcmR]  DEFAULT (0) FOR [ValIcmR]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_BasSbt]  DEFAULT (0) FOR [BasSbt]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValSbt]  DEFAULT (0) FOR [ValSbt]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_TaxJur_1]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovPed] ADD  CONSTRAINT [DF_MovPed_ValCot]  DEFAULT (0) FOR [ValCot]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('N') FOR [Importado]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('N') FOR [TipDoc]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('N') FOR [PedDev]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('N') FOR [LncCms]
GO
ALTER TABLE [dbo].[MovPed] ADD  DEFAULT ('N') FOR [ExpNFe]
GO
ALTER TABLE [dbo].[MovPrA] ADD  CONSTRAINT [DF_MovPrA_PosPrA]  DEFAULT ('P') FOR [PosPrA]
GO
ALTER TABLE [dbo].[MovPrA] ADD  DEFAULT ('C') FOR [TipEnt]
GO
ALTER TABLE [dbo].[MovPrA] ADD  DEFAULT ('E') FOR [TipMov]
GO
ALTER TABLE [dbo].[MovPrv] ADD  CONSTRAINT [DF_MovPrv_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovPsg] ADD  CONSTRAINT [DF_MovPsg_PosPsg]  DEFAULT ('P') FOR [PosPsg]
GO
ALTER TABLE [dbo].[MovQlmP] ADD  CONSTRAINT [DF_MovQlmP_Saldo]  DEFAULT (0) FOR [Saldo]
GO
ALTER TABLE [dbo].[MovQlmP] ADD  CONSTRAINT [DF_MovQlmP_QlmIni]  DEFAULT (0) FOR [QlmIni]
GO
ALTER TABLE [dbo].[MovQlmP] ADD  CONSTRAINT [DF_MovQlmP_QlmFin]  DEFAULT (0) FOR [QlmFin]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MovRec_ValNom]  DEFAULT (0) FOR [ValNom]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MovRec_ValNomR]  DEFAULT (0) FOR [ValNomR]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MOVREC_ValPag_4__10]  DEFAULT (0) FOR [ValPag]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MovRec_ValPagR]  DEFAULT (0) FOR [ValPagR]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MOVREC_ValJur_2__10]  DEFAULT (0) FOR [ValJur]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MOVREC_ValDes_1__10]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MovRec_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF_MovRec_ValCot]  DEFAULT (0) FOR [ValCot]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF__MovRec__SeqTit__34B3CB38]  DEFAULT (0) FOR [SeqTit]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF__MovRec__GUID__7D39791C]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF__MovRec__OrgLnc__705EA0EB]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovRec] ADD  CONSTRAINT [DF__MovRec__TipLnc__7C4554E3]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovRec] ADD  DEFAULT ('NRM') FOR [Status]
GO
ALTER TABLE [dbo].[MovRec] ADD  DEFAULT ('A') FOR [SitTit]
GO
ALTER TABLE [dbo].[MovRec] ADD  DEFAULT ('S') FOR [LncCms]
GO
ALTER TABLE [dbo].[MovRsv] ADD  CONSTRAINT [DF_MovRsv_ValPro]  DEFAULT (0) FOR [ValPro]
GO
ALTER TABLE [dbo].[MovRsv] ADD  CONSTRAINT [DF_MovRsv_ValDes]  DEFAULT (0) FOR [ValDes]
GO
ALTER TABLE [dbo].[MovRsv] ADD  CONSTRAINT [DF_MovRsv_ValRsv]  DEFAULT (0) FOR [ValRsv]
GO
ALTER TABLE [dbo].[MovRsv] ADD  CONSTRAINT [DF_MovRsv_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('N') FOR [TipDoc]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('DC') FOR [TipCrg]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('P') FOR [TipTra]
GO
ALTER TABLE [dbo].[MovRsv] ADD  DEFAULT ('N') FOR [Troca]
GO
ALTER TABLE [dbo].[MovSrv] ADD  CONSTRAINT [DF_MovSrv_OrgLnc]  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[MovSrv] ADD  CONSTRAINT [DF_MovSrv_TipLnc]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[MovSrv] ADD  CONSTRAINT [DF_MovSrv_PosPed]  DEFAULT ('P') FOR [PosPed]
GO
ALTER TABLE [dbo].[MovVDr] ADD  CONSTRAINT [DF_MovVDr_Moeda]  DEFAULT ('R') FOR [Moeda]
GO
ALTER TABLE [dbo].[MovVDr] ADD  CONSTRAINT [DF_MovVDr_PosVDr]  DEFAULT ('P') FOR [PosVDr]
GO
ALTER TABLE [dbo].[MovVDr] ADD  CONSTRAINT [DF_MovVDr_Status]  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[OcoRec] ADD  CONSTRAINT [DF_OcoRec_Retorno]  DEFAULT ('N') FOR [Retorno]
GO
ALTER TABLE [dbo].[OpBtd] ADD  DEFAULT ('N') FOR [LpzArs]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  CONSTRAINT [DF_OrdCrg_Status]  DEFAULT ('E') FOR [StsOrd]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  CONSTRAINT [DF_OrdCrg_PosOrd]  DEFAULT ('P') FOR [PosOrd]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  DEFAULT ('N') FOR [EnvACr]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  DEFAULT ('N') FOR [EvAPg1]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  DEFAULT ('N') FOR [EvAPg2]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  DEFAULT ('N') FOR [EvAPg3]
GO
ALTER TABLE [dbo].[OrdCrg] ADD  DEFAULT ('P') FOR [TipTra]
GO
ALTER TABLE [dbo].[PatPro] ADD  CONSTRAINT [DF_PatPro_TipRat]  DEFAULT ('P') FOR [TipRat]
GO
ALTER TABLE [dbo].[ProCul] ADD  CONSTRAINT [DF_CulPro_Qtdade]  DEFAULT (0) FOR [Qtdade]
GO
ALTER TABLE [dbo].[ProCul] ADD  CONSTRAINT [DF_CulPro_NumApl]  DEFAULT (0) FOR [NumeroApl]
GO
ALTER TABLE [dbo].[ProNtr] ADD  DEFAULT ('S') FOR [CtgNtr]
GO
ALTER TABLE [dbo].[ProOS] ADD  CONSTRAINT [DF_ProOS_TipPro]  DEFAULT ('P') FOR [TipPro]
GO
ALTER TABLE [dbo].[PrvCms] ADD  CONSTRAINT [DF__PrvCms__ValTot__4727812E]  DEFAULT (0) FOR [ValTot]
GO
ALTER TABLE [dbo].[PrvCms] ADD  CONSTRAINT [DF__PrvCms__TipLnc__46335CF5]  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[PrvCms] ADD  CONSTRAINT [DF_PrvCms_PosPrv]  DEFAULT ('P') FOR [PosPrv]
GO
ALTER TABLE [dbo].[ResGrP] ADD  CONSTRAINT [DF_ResGrP_TipJur]  DEFAULT ('S') FOR [TipJur]
GO
ALTER TABLE [dbo].[ResHsC] ADD  CONSTRAINT [DF_ResHsC_TipOpr]  DEFAULT ('C') FOR [TipOpr]
GO
ALTER TABLE [dbo].[ResHsC] ADD  CONSTRAINT [DF_ResHsC_TipDep]  DEFAULT ('U') FOR [TipDep]
GO
ALTER TABLE [dbo].[ResRms] ADD  CONSTRAINT [DF_ResRms_TipOco]  DEFAULT ('R') FOR [TipOco]
GO
ALTER TABLE [dbo].[SlcCmp] ADD  CONSTRAINT [DF_SlcCmp_PosSlc]  DEFAULT ('PA') FOR [PosSlc]
GO
ALTER TABLE [dbo].[SlcCmp] ADD  CONSTRAINT [DF_SlcCmp_Status]  DEFAULT ('P') FOR [Status]
GO
ALTER TABLE [dbo].[SrvOS] ADD  CONSTRAINT [DF_SrvOS_TipSrv]  DEFAULT ('P') FOR [TipSrv]
GO
ALTER TABLE [dbo].[TabBan] ADD  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[TabCat] ADD  CONSTRAINT [DF__TabCat__TipCat__0BC78F95]  DEFAULT ('P') FOR [TipCat]
GO
ALTER TABLE [dbo].[TabCfo] ADD  DEFAULT ('S') FOR [OrgOpe]
GO
ALTER TABLE [dbo].[TabCfo] ADD  DEFAULT ('N') FOR [ViaNot]
GO
ALTER TABLE [dbo].[TabCfo] ADD  DEFAULT ('N') FOR [PisCfs]
GO
ALTER TABLE [dbo].[TabCfo] ADD  DEFAULT ('N') FOR [ApvIcm]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_ICMS_1__13]  DEFAULT (0) FOR [ICMS]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_Area]  DEFAULT (0) FOR [Area]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_CptSocIni]  DEFAULT (0) FOR [CptSocIni]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_CptSocAtu]  DEFAULT (0) FOR [CptSocAtu]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_MedVenda]  DEFAULT (0) FOR [MediaVenda]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_Estoque]  DEFAULT (0) FOR [MediaCompra]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_MedCompra]  DEFAULT (0) FOR [Estoque]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_CapGiro]  DEFAULT (0) FOR [CapitalGiro]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF_TabCli_ValorSede]  DEFAULT (0) FOR [ValorSede]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF__TabCli__Analisa__71C7C670]  DEFAULT ('S') FOR [Analisa]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF__TabCli__PosCli__72BBEAA9]  DEFAULT ('A') FOR [PosCli]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF__TabCli__GUID__73B00EE2]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF__TabCli__Leite__25283A3C]  DEFAULT ('N') FOR [Leite]
GO
ALTER TABLE [dbo].[TabCli] ADD  CONSTRAINT [DF__TabCli__Corte__261C5E75]  DEFAULT ('N') FOR [Corte]
GO
ALTER TABLE [dbo].[TabCnt] ADD  CONSTRAINT [DF_TabCnt_EmpTit]  DEFAULT ('N') FOR [EmpTit]
GO
ALTER TABLE [dbo].[TabCnt] ADD  CONSTRAINT [DF_TabCnt_Registrada]  DEFAULT ('N') FOR [Registrada]
GO
ALTER TABLE [dbo].[TabCnt] ADD  CONSTRAINT [DF__TabCnt__GUID__0015E5C7]  DEFAULT (newid()) FOR [GUID]
GO
ALTER TABLE [dbo].[TabCnt] ADD  DEFAULT ('N') FOR [BalMns]
GO
ALTER TABLE [dbo].[TabCnt] ADD  DEFAULT ('E') FOR [TipCnt]
GO
ALTER TABLE [dbo].[TabCom] ADD  DEFAULT ('N') FOR [TipCom]
GO
ALTER TABLE [dbo].[TabCtb] ADD  CONSTRAINT [DF__TabCtb__CodRef__17786E0C]  DEFAULT ('-') FOR [CodRef]
GO
ALTER TABLE [dbo].[TabCtb] ADD  CONSTRAINT [DF__TabCtb__CodCmp__186C9245]  DEFAULT ('-') FOR [CodCmp]
GO
ALTER TABLE [dbo].[TabCul] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabDsc] ADD  CONSTRAINT [DF_TabDsc_DscMaxPro]  DEFAULT (0) FOR [DscMaxPro]
GO
ALTER TABLE [dbo].[TabDsc] ADD  CONSTRAINT [DF_TabDsc_DscMaxAdc]  DEFAULT (0) FOR [DscMaxAdc]
GO
ALTER TABLE [dbo].[TabEmb] ADD  CONSTRAINT [DF_TabEmb_Qtdade]  DEFAULT (0) FOR [Qtdade]
GO
ALTER TABLE [dbo].[TabEmb] ADD  CONSTRAINT [DF_TabEmb_Peso]  DEFAULT (0) FOR [Peso]
GO
ALTER TABLE [dbo].[TabEmb] ADD  CONSTRAINT [DF_TabEmb_PesoEmb]  DEFAULT (0) FOR [PesoEmb]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_TipJur_1]  DEFAULT ('S') FOR [TipJur]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_TaxDsc]  DEFAULT (0) FOR [TaxDsc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CodNot]  DEFAULT (0) FOR [CodNot]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CodNtc]  DEFAULT (0) FOR [CodNtc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CodPed]  DEFAULT (0) FOR [CodPed]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CodCnh]  DEFAULT (0) FOR [CodCnh]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_LivEntE]  DEFAULT (0) FOR [LivEntE]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_LivEntI]  DEFAULT (0) FOR [LivEntI]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_LivSaiE]  DEFAULT (0) FOR [LivSaiE]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_LivSaiI]  DEFAULT (0) FOR [LivSaiI]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_LivAprIcm]  DEFAULT (0) FOR [LivAprIcm]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_InicLiv]  DEFAULT (0) FOR [InicLiv]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CapDie]  DEFAULT (0) FOR [CapDie]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_JurCax]  DEFAULT (0) FOR [JurCax]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_VecCpl]  DEFAULT (0) FOR [VecCpl]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF_TabEmp_CodDsp]  DEFAULT (0) FOR [CodDsp]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CstPro__5649C92D]  DEFAULT ('U') FOR [CstPro]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__PagCnh__33BFA6FF]  DEFAULT ('N') FOR [PagCnh]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CheCai__4979DDF4]  DEFAULT ('N') FOR [CheCai]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CntFatR__4A6E022D]  DEFAULT ('N') FOR [CntFatR]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__Gratuida__4B622666]  DEFAULT ('N') FOR [Gratuidade]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TipLmt__7F76C749]  DEFAULT ('G') FOR [TipLmt]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldPed__006AEB82]  DEFAULT ('S') FOR [VldPed]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VrfLmt__015F0FBB]  DEFAULT ('T') FOR [VrfLmt]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ClcPMP__33B5855E]  DEFAULT ('N') FOR [ClcPMP]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CodRmsSr__280EC888]  DEFAULT (0) FOR [CodRmsSrs]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ModCPR__4FE7AFB8]  DEFAULT (2) FOR [ModCPR]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__BlqCliSe__61123BBA]  DEFAULT (180) FOR [BlqCliSemMvt]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__BlqCliSe__62065FF3]  DEFAULT (180) FOR [BlqCliSemAtz]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpNPorEm__62FA842C]  DEFAULT ('N') FOR [TpNPorEmp]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TlrVct__63EEA865]  DEFAULT (5) FOR [TlrVct]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VrfAlm__1491DFC0]  DEFAULT ('S') FOR [VrfAlm]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldEst__158603F9]  DEFAULT ('L') FOR [VldEst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ObsRct__4EBE8155]  DEFAULT ('LEIA A BULA DO PRODUTO E O VERSO DO SEU RECEITUÁRIO AGRONÔMICO ANTES DE USÁ-LO') FOR [ObsRct]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldOrc__08EB22EA]  DEFAULT ('5') FOR [VldOrc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpDocNF__47A76F72]  DEFAULT ('S') FOR [TpDocNF]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpDocCp__489B93AB]  DEFAULT ('N') FOR [TpDocCp]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpDocMn__498FB7E4]  DEFAULT ('N') FOR [TpDocMn]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ClcIss__6CD8F421]  DEFAULT ('N') FOR [ClcIss]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__InfCst__1B93E30A]  DEFAULT ('N') FOR [InfCst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__DefPrc__1C880743]  DEFAULT ('N') FOR [DefPrc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldValPr__20589827]  DEFAULT ('N') FOR [VldValPro]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldValDe__214CBC60]  DEFAULT ('N') FOR [VldValDes]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__AnFRstBn__27F9B9EF]  DEFAULT ('N') FOR [AnFRstBnc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__AnFRstCh__28EDDE28]  DEFAULT ('N') FOR [AnFRstChq]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VrfEst__2F9ADBB7]  DEFAULT ('P') FOR [VrfEst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldRsv__51EFF3BB]  DEFAULT (5) FOR [VldRsv]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TlrSemJu__00AAE2A4]  DEFAULT ('N') FOR [TlrSemJur]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__AtzPrcEs__019F06DD]  DEFAULT ('N') FOR [AtzPrcEst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LmtDtAlm__220BD66F]  DEFAULT ('N') FOR [LmtDtAlm]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EdtJurDs__22FFFAA8]  DEFAULT ('N') FOR [EdtJurDsc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__DscIcmCs__51BAE991]  DEFAULT ('S') FOR [DscIcmCst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EmtPedPn__0075D87A]  DEFAULT ('S') FOR [EmtPedPnd]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EstCjg__17593DD2]  DEFAULT ('N') FOR [EstCjg]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LmtDtCst__1C1DF2EF]  DEFAULT ('N') FOR [LmtDtCst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldVenVs__22CAF07E]  DEFAULT ('N') FOR [VldVenVst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LncCmsNr__278FA59B]  DEFAULT ('R') FOR [LncCmsNrm]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LncChqRe__2883C9D4]  DEFAULT ('N') FOR [LncChqRec]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LibTrcCh__2977EE0D]  DEFAULT ('N') FOR [LibTrcChR]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__MrgPrc__3D7EE6BA]  DEFAULT ('D') FOR [MrgPrc]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__RtBncCrB__49E4BD9F]  DEFAULT ('P') FOR [RtBncCrBan]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ImpAplNF__2B2B2C55]  DEFAULT ('N') FOR [ImpAplNFe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__RatCstSD__4AA3D7AE]  DEFAULT ('N') FOR [RatCstSDf]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__RgmTrbNF__07ACE5EE]  DEFAULT ('3') FOR [RgmTrbNFe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EFDVrs__0F4E07B6]  DEFAULT (4) FOR [EFDVrs]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EFDPrf__10422BEF]  DEFAULT ('B') FOR [EFDPrf]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EFDAtv__11365028]  DEFAULT ('1') FOR [EFDAtv]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldRngCl__15FB0545]  DEFAULT ('P') FOR [VldRngCli]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpExpCtb__17E34DB7]  DEFAULT ('F') FOR [TpExpCtb]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ModeloCT__642E9F87]  DEFAULT ('57') FOR [ModeloCTe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EFDPCVrs__54B751CD]  DEFAULT (2) FOR [EFDPCVrs]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__EFDPCAtv__55AB7606]  DEFAULT ('2') FOR [EFDPCAtv]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__VldVlrCt__64EDB996]  DEFAULT ('S') FOR [VldVlrCtb]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__DscPisCf__10CC3BD4]  DEFAULT ('S') FOR [DscPisCfs]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__TpExpCtb__554161B2]  DEFAULT ('P') FOR [TpExpCtbCMV]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ImpDtSNF__6D18EB43]  DEFAULT ('N') FOR [ImpDtSNFe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__ItgGBAgr__10622780]  DEFAULT ('N') FOR [ItgGBAgro]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__SfrRqr__5CAD7950]  DEFAULT ('N') FOR [SfrRqr]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CphRqr__5DA19D89]  DEFAULT ('N') FOR [CphRqr]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__CulRqr__5E95C1C2]  DEFAULT ('N') FOR [CulRqr]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__DBNFe__0174E9AB]  DEFAULT ('NFe') FOR [DBNFe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__LibPed__0F58F4AE]  DEFAULT ('N') FOR [LibPed]
GO
ALTER TABLE [dbo].[TabEmp] ADD  CONSTRAINT [DF__TabEmp__RmsChq__3D1FBF5E]  DEFAULT ('N') FOR [RmsChq]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('N') FOR [TpDocNC]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('65') FOR [ModeloNFCe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('N') FOR [UtlFncMrL]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('S') FOR [VldLotEst]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('S') FOR [ImpLotNFe]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('N') FOR [AprIPI]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('S') FOR [PrcIpiIST]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('N') FOR [AtzDatFat]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('F') FOR [TrbRGr]
GO
ALTER TABLE [dbo].[TabEmp] ADD  DEFAULT ('S') FOR [GrPPrA]
GO
ALTER TABLE [dbo].[TabEPg] ADD  CONSTRAINT [DF_TabEPg_TipCmp]  DEFAULT ('DN') FOR [TipCmp]
GO
ALTER TABLE [dbo].[TabEPg] ADD  CONSTRAINT [DF_TabEPg_TipItg]  DEFAULT ('C') FOR [TipItg]
GO
ALTER TABLE [dbo].[TabFor] ADD  CONSTRAINT [DF_TabFor_TaxJur]  DEFAULT (0) FOR [TaxJur]
GO
ALTER TABLE [dbo].[TabFor] ADD  CONSTRAINT [DF__TabFor__ClaFor__35A7EF71]  DEFAULT ('M') FOR [ClaFor]
GO
ALTER TABLE [dbo].[TabFor] ADD  CONSTRAINT [DF__TabFor__PosFor__75985754]  DEFAULT ('A') FOR [PosFor]
GO
ALTER TABLE [dbo].[TabFun] ADD  CONSTRAINT [DF__tabfun__CodSet__01741E54]  DEFAULT (0) FOR [Setor]
GO
ALTER TABLE [dbo].[TabFun] ADD  CONSTRAINT [DF__tabfun__PosFun__61F08603]  DEFAULT ('A') FOR [PosFun]
GO
ALTER TABLE [dbo].[TabFun] ADD  CONSTRAINT [DF__TabFun__Vendedor__58D1FB74]  DEFAULT ('N') FOR [Vendedor]
GO
ALTER TABLE [dbo].[TabFun] ADD  CONSTRAINT [DF__TabFun__PagSlr__5F89E5FB]  DEFAULT ('T') FOR [PagSlr]
GO
ALTER TABLE [dbo].[TabFun] ADD  DEFAULT ('N') FOR [EnvEmlMobl]
GO
ALTER TABLE [dbo].[TabGru] ADD  CONSTRAINT [DF__TabGru__Consumo__4D4A6ED8]  DEFAULT ('S') FOR [Consumo]
GO
ALTER TABLE [dbo].[TabGru] ADD  CONSTRAINT [DF__TabGru__RctAgr__0CBBB3CE]  DEFAULT ('N') FOR [RctAgr]
GO
ALTER TABLE [dbo].[TabGru] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabHan] ADD  CONSTRAINT [DF__TabHan__AplFnc__3A6CA48E]  DEFAULT ('N') FOR [AplFnc]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('S') FOR [Contab]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('A') FOR [PosHan]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('S') FOR [Analisa]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT (0) FOR [ValSrv]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('N') FOR [TipCst]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('N') FOR [DFC]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('S') FOR [BalMns]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('N') FOR [PisCfs]
GO
ALTER TABLE [dbo].[TabHan] ADD  DEFAULT ('N') FOR [DFN]
GO
ALTER TABLE [dbo].[TabHCp] ADD  DEFAULT ('C') FOR [TipHCp]
GO
ALTER TABLE [dbo].[TabHCp] ADD  DEFAULT ('A') FOR [PosHcp]
GO
ALTER TABLE [dbo].[TabJur] ADD  DEFAULT ('N') FOR [ImpTPc]
GO
ALTER TABLE [dbo].[TabMen] ADD  DEFAULT ('B') FOR [TipMen]
GO
ALTER TABLE [dbo].[TabMoc] ADD  CONSTRAINT [DF_TabMoc_EfeBax]  DEFAULT ('N') FOR [EfeBax]
GO
ALTER TABLE [dbo].[TabMod] ADD  CONSTRAINT [DF_TabMod_QtdEix]  DEFAULT (0) FOR [QtdEix]
GO
ALTER TABLE [dbo].[TabMod] ADD  CONSTRAINT [DF_TabMod_CnsMed]  DEFAULT (0) FOR [CnsMed]
GO
ALTER TABLE [dbo].[TabMot] ADD  CONSTRAINT [DF__TabMot__TipMot__3B60C8C7]  DEFAULT ('C') FOR [TipMot]
GO
ALTER TABLE [dbo].[TabMot] ADD  CONSTRAINT [DF__TabMot__PrtRtn__3C54ED00]  DEFAULT ('S') FOR [PrtRtn]
GO
ALTER TABLE [dbo].[TabMot] ADD  DEFAULT ('N') FOR [SitDcF]
GO
ALTER TABLE [dbo].[TabMot] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabNtc] ADD  CONSTRAINT [DF_TabNtc_Prioridade]  DEFAULT ('N') FOR [Prioridade]
GO
ALTER TABLE [dbo].[TabNtr] ADD  DEFAULT ('GR') FOR [UndNtr]
GO
ALTER TABLE [dbo].[TabOco] ADD  CONSTRAINT [DF_TabOco_CorOco]  DEFAULT (0) FOR [CorOco]
GO
ALTER TABLE [dbo].[TabPat] ADD  CONSTRAINT [DF_TabPat_CstPdc]  DEFAULT ('N') FOR [CstPdc]
GO
ALTER TABLE [dbo].[TabPat] ADD  CONSTRAINT [DF_TabPat_PosPat]  DEFAULT ('A') FOR [PosPat]
GO
ALTER TABLE [dbo].[TabPne] ADD  DEFAULT ('M') FOR [OrgLnc]
GO
ALTER TABLE [dbo].[TabPrf] ADD  DEFAULT ('N') FOR [OrdCrg]
GO
ALTER TABLE [dbo].[TabPrm] ADD  CONSTRAINT [DF__tabprm__ImgIdx__185783AC]  DEFAULT (0) FOR [ImgIdx]
GO
ALTER TABLE [dbo].[TabPrm] ADD  CONSTRAINT [DF__tabprm__Menu__26A5A303]  DEFAULT ('') FOR [Objeto]
GO
ALTER TABLE [dbo].[TabPrm] ADD  CONSTRAINT [DF__tabprm__Ativo__5B6E70FD]  DEFAULT (1) FOR [Visivel]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF_TabPro_Peso]  DEFAULT (0) FOR [Peso]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF_TabPro_EstMin]  DEFAULT (0) FOR [EstMin]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF_TabPro_ValVenMd]  DEFAULT (0) FOR [ValVen]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF__TabPro__Analisa__768C7B8D]  DEFAULT ('S') FOR [Analisa]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF__TabPro__PosPro__77809FC6]  DEFAULT ('A') FOR [PosPro]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF__TabPro__ClcPMP__34A9A997]  DEFAULT ('N') FOR [ClcPMP]
GO
ALTER TABLE [dbo].[TabPro] ADD  CONSTRAINT [DF__TabPro__ExpSIMP__563585EB]  DEFAULT ('N') FOR [ExpSIMP]
GO
ALTER TABLE [dbo].[TabPro] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabRNt] ADD  CONSTRAINT [DF_TabRNt_GrpNtr]  DEFAULT ('NP') FOR [GrpNtr]
GO
ALTER TABLE [dbo].[TabSrv] ADD  CONSTRAINT [DF_TabSrv_TipSrv]  DEFAULT ('F') FOR [TipSrv]
GO
ALTER TABLE [dbo].[TabSTb] ADD  DEFAULT ('1') FOR [ValFis]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF_TabTip_PerRed]  DEFAULT (0) FOR [PerRed]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF_TabTip_PrcAum]  DEFAULT (0) FOR [VlrAum]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF_TabTip_PrcDsc]  DEFAULT (0) FOR [PrcDsc]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF_TabTip_Icms]  DEFAULT (0) FOR [Icms]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF__TabTip__IcmTrr__5555A4F4]  DEFAULT ('N') FOR [IcmTrr]
GO
ALTER TABLE [dbo].[TabTip] ADD  CONSTRAINT [DF__TabTip__Analisa__68687968]  DEFAULT ('S') FOR [Analisa]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('A') FOR [PosTip]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [Deposito]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('S') FOR [TrbNot]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [Transf]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [AtzCst]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [VndCst]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('NE') FOR [ExpCtb]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [RcbFrt]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [ClcPMP]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [DepositoT]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [ExpQion]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [ExpAccera]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [ExpEAG]
GO
ALTER TABLE [dbo].[TabTip] ADD  DEFAULT ('N') FOR [ApvIcm]
GO
ALTER TABLE [dbo].[TabTnq] ADD  CONSTRAINT [DF_TabTnq_QtdMed]  DEFAULT (0) FOR [QtdMed]
GO
ALTER TABLE [dbo].[TabTnq] ADD  CONSTRAINT [DF_TabTnq_QtdEst]  DEFAULT (0) FOR [QtdEst]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_TipTrb]  DEFAULT ('TB') FOR [TipTrb]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_IcmFis]  DEFAULT (0) FOR [IcmsFisSI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_IcmJurCI]  DEFAULT (0) FOR [IcmsJurCI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_IcmJurSI]  DEFAULT (0) FOR [IcmsJurSI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_RedFis]  DEFAULT (0) FOR [RedcFisSI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_RedJurCI]  DEFAULT (0) FOR [RedcJurCI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_RedJurSI]  DEFAULT (0) FOR [RedcJurSI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_PerAum]  DEFAULT (0) FOR [PercAum]
GO
ALTER TABLE [dbo].[TabTrb] ADD  CONSTRAINT [DF_TabTrb_PerDsc]  DEFAULT (0) FOR [PercDsc]
GO
ALTER TABLE [dbo].[TabTrb] ADD  DEFAULT (0) FOR [IcmsFisCI]
GO
ALTER TABLE [dbo].[TabTrb] ADD  DEFAULT (0) FOR [RedcFisCI]
GO
ALTER TABLE [dbo].[TabUsu] ADD  CONSTRAINT [DF__tabusu__PosUsu__194BA7E5]  DEFAULT ('C') FOR [PosUsu]
GO
ALTER TABLE [dbo].[TabVec] ADD  CONSTRAINT [DF__TabVec__TipPag__4DB54E83]  DEFAULT ('NRM') FOR [TipPag]
GO
ALTER TABLE [dbo].[TabVec] ADD  CONSTRAINT [DF__TabVec__PosVec__0F18FD8C]  DEFAULT ('A') FOR [PosVec]
GO
ALTER TABLE [dbo].[TabVec] ADD  DEFAULT ('N') FOR [GBMobl]
GO
ALTER TABLE [dbo].[TabVei] ADD  CONSTRAINT [DF_TabVei_Odometro]  DEFAULT (0) FOR [Odometro]
GO
ALTER TABLE [dbo].[TabVei] ADD  DEFAULT ('P') FOR [TipVei]
GO
ALTER TABLE [dbo].[Tipo60M] ADD  DEFAULT ('M') FOR [TipLnc]
GO
ALTER TABLE [dbo].[Tipo60M] ADD  DEFAULT ('P') FOR [PosRes]
GO
ALTER TABLE [dbo].[ActAdt]  WITH CHECK ADD  CONSTRAINT [FK_ActAdt_MovAdt] FOREIGN KEY([CodEmp], [CodAdt])
REFERENCES [dbo].[MovAdt] ([CodEmp], [CodAdt])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ActAdt] CHECK CONSTRAINT [FK_ActAdt_MovAdt]
GO
ALTER TABLE [dbo].[ActAdt]  WITH CHECK ADD  CONSTRAINT [FK_ActAdt_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[ActAdt] CHECK CONSTRAINT [FK_ActAdt_TabHan]
GO
ALTER TABLE [dbo].[AgcOrd]  WITH CHECK ADD  CONSTRAINT [FK_AgcOrd_OrdCrg] FOREIGN KEY([CodEmp], [CodOrd])
REFERENCES [dbo].[OrdCrg] ([CodEmp], [CodOrd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgcOrd] CHECK CONSTRAINT [FK_AgcOrd_OrdCrg]
GO
ALTER TABLE [dbo].[AgcRsv]  WITH CHECK ADD  CONSTRAINT [FK_AgcRsv_MovRsv] FOREIGN KEY([CodEmp], [CodRsv])
REFERENCES [dbo].[MovRsv] ([CodEmp], [CodRsv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AgcRsv] CHECK CONSTRAINT [FK_AgcRsv_MovRsv]
GO
ALTER TABLE [dbo].[BlqPed]  WITH CHECK ADD  CONSTRAINT [FK_BlqPed_MovPed] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovPed] ([CodEmp], [CodPed])
GO
ALTER TABLE [dbo].[BlqPed] CHECK CONSTRAINT [FK_BlqPed_MovPed]
GO
ALTER TABLE [dbo].[ChaPro]  WITH NOCHECK ADD  CONSTRAINT [FK_ChaPro_MovCha] FOREIGN KEY([CodEmp], [CodCha])
REFERENCES [dbo].[MovCha] ([CodEmp], [CodCha])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChaPro] CHECK CONSTRAINT [FK_ChaPro_MovCha]
GO
ALTER TABLE [dbo].[ChaSrv]  WITH NOCHECK ADD  CONSTRAINT [FK_ChaSrv_MovCha] FOREIGN KEY([CodEmp], [CodCha])
REFERENCES [dbo].[MovCha] ([CodEmp], [CodCha])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChaSrv] CHECK CONSTRAINT [FK_ChaSrv_MovCha]
GO
ALTER TABLE [dbo].[ChaSrv]  WITH NOCHECK ADD  CONSTRAINT [FK_ChaSrv_TabHan] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[ChaSrv] CHECK CONSTRAINT [FK_ChaSrv_TabHan]
GO
ALTER TABLE [dbo].[CliCnt]  WITH CHECK ADD  CONSTRAINT [FK_CliCnt_TabPrf] FOREIGN KEY([CodPrf])
REFERENCES [dbo].[TabPrf] ([CodPrf])
GO
ALTER TABLE [dbo].[CliCnt] CHECK CONSTRAINT [FK_CliCnt_TabPrf]
GO
ALTER TABLE [dbo].[CliCul]  WITH CHECK ADD  CONSTRAINT [FK_CliCul_TabCul] FOREIGN KEY([CodCul])
REFERENCES [dbo].[TabCul] ([CodCul])
GO
ALTER TABLE [dbo].[CliCul] CHECK CONSTRAINT [FK_CliCul_TabCul]
GO
ALTER TABLE [dbo].[CliGrt]  WITH CHECK ADD  CONSTRAINT [FK_CliGrt_TabMot] FOREIGN KEY([CodGrt])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[CliGrt] CHECK CONSTRAINT [FK_CliGrt_TabMot]
GO
ALTER TABLE [dbo].[CliOco]  WITH CHECK ADD  CONSTRAINT [FK_CliOco_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[CliOco] CHECK CONSTRAINT [FK_CliOco_TabMot]
GO
ALTER TABLE [dbo].[CliPrm]  WITH CHECK ADD  CONSTRAINT [FK_CliPrm_TabMot] FOREIGN KEY([CodPrm])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[CliPrm] CHECK CONSTRAINT [FK_CliPrm_TabMot]
GO
ALTER TABLE [dbo].[CliSlc]  WITH CHECK ADD  CONSTRAINT [FK_CliSlc_CliTlh] FOREIGN KEY([SeqTlh])
REFERENCES [dbo].[CliTlh] ([SeqTlh])
GO
ALTER TABLE [dbo].[CliSlc] CHECK CONSTRAINT [FK_CliSlc_CliTlh]
GO
ALTER TABLE [dbo].[CmpRHC]  WITH CHECK ADD  CONSTRAINT [FK_CmpRHC_ResHsC] FOREIGN KEY([CodEmp], [CodRHC])
REFERENCES [dbo].[ResHsC] ([CodEmp], [CodRHC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CmpRHC] CHECK CONSTRAINT [FK_CmpRHC_ResHsC]
GO
ALTER TABLE [dbo].[CtcSlc]  WITH CHECK ADD  CONSTRAINT [FK_CtcSlc_SlcCmp] FOREIGN KEY([CodEmp], [CodSlc])
REFERENCES [dbo].[SlcCmp] ([CodEmp], [CodSlc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CtcSlc] CHECK CONSTRAINT [FK_CtcSlc_SlcCmp]
GO
ALTER TABLE [dbo].[CtcSlc]  WITH CHECK ADD  CONSTRAINT [FK_CtcSlc_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[CtcSlc] CHECK CONSTRAINT [FK_CtcSlc_TabTip]
GO
ALTER TABLE [dbo].[DepPed]  WITH CHECK ADD  CONSTRAINT [FK_DepPed_MovPed] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovPed] ([CodEmp], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DepPed] CHECK CONSTRAINT [FK_DepPed_MovPed]
GO
ALTER TABLE [dbo].[DocCnh]  WITH CHECK ADD  CONSTRAINT [FK_DocCnh_MovCnh] FOREIGN KEY([CodEmp], [CodCnh])
REFERENCES [dbo].[MovCnh] ([CodEmp], [CodCnh])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocCnh] CHECK CONSTRAINT [FK_DocCnh_MovCnh]
GO
ALTER TABLE [dbo].[DocPed]  WITH CHECK ADD  CONSTRAINT [FK_DocPed_MovPed] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovPed] ([CodEmp], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DocPed] CHECK CONSTRAINT [FK_DocPed_MovPed]
GO
ALTER TABLE [dbo].[DspFunB]  WITH CHECK ADD  CONSTRAINT [FK_DspFunB_MovBan] FOREIGN KEY([CodEmp], [CodLan])
REFERENCES [dbo].[MovBan] ([CodEmp], [CodLan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspFunB] CHECK CONSTRAINT [FK_DspFunB_MovBan]
GO
ALTER TABLE [dbo].[DspFunC]  WITH CHECK ADD  CONSTRAINT [FK_DspFunC_MovCai] FOREIGN KEY([CodEmp], [CodLan])
REFERENCES [dbo].[MovCai] ([CodEmp], [CodLan])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspFunC] CHECK CONSTRAINT [FK_DspFunC_MovCai]
GO
ALTER TABLE [dbo].[DspFunP]  WITH CHECK ADD  CONSTRAINT [FK_DspFunP_MovPag] FOREIGN KEY([CodEmp], [CodFor], [CodTit])
REFERENCES [dbo].[MovPag] ([CodEmp], [CodFor], [CodTit])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspFunP] CHECK CONSTRAINT [FK_DspFunP_MovPag]
GO
ALTER TABLE [dbo].[DspFunQ]  WITH CHECK ADD  CONSTRAINT [FK_DspFunQ_MovChe] FOREIGN KEY([CodEmp], [CodBan], [CodCnt], [CodChe])
REFERENCES [dbo].[MovChe] ([CodEmp], [CodBan], [CodCnt], [CodChe])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspFunQ] CHECK CONSTRAINT [FK_DspFunQ_MovChe]
GO
ALTER TABLE [dbo].[DspOs]  WITH CHECK ADD  CONSTRAINT [FK_DspOs_MovOS] FOREIGN KEY([CodEmp], [CodOs])
REFERENCES [dbo].[MovOS] ([CodEmp], [CodOS])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspOs] CHECK CONSTRAINT [FK_DspOs_MovOS]
GO
ALTER TABLE [dbo].[DspOs]  WITH CHECK ADD  CONSTRAINT [FK_DspOs_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[DspOs] CHECK CONSTRAINT [FK_DspOs_TabHan]
GO
ALTER TABLE [dbo].[DspVeiE]  WITH CHECK ADD  CONSTRAINT [FK_DspVeiE_MovEst] FOREIGN KEY([CodEmp], [CodFor], [CodNot])
REFERENCES [dbo].[MovEst] ([CodEmp], [CodFor], [CodNot])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DspVeiE] CHECK CONSTRAINT [FK_DspVeiE_MovEst]
GO
ALTER TABLE [dbo].[DspVeiE]  WITH CHECK ADD  CONSTRAINT [FK_DspVeiE_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
GO
ALTER TABLE [dbo].[DspVeiE] CHECK CONSTRAINT [FK_DspVeiE_TabVei]
GO
ALTER TABLE [dbo].[EmpTpN]  WITH CHECK ADD  CONSTRAINT [FK_EmpTpN_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[EmpTpN] CHECK CONSTRAINT [FK_EmpTpN_TabTip]
GO
ALTER TABLE [dbo].[EqpOrd]  WITH CHECK ADD  CONSTRAINT [FK_EqpOrd_OrdCrg] FOREIGN KEY([CodEmp], [CodOrd])
REFERENCES [dbo].[OrdCrg] ([CodEmp], [CodOrd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EqpOrd] CHECK CONSTRAINT [FK_EqpOrd_OrdCrg]
GO
ALTER TABLE [dbo].[EstBxP]  WITH NOCHECK ADD  CONSTRAINT [FK_EstBxP_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[EstBxP] CHECK CONSTRAINT [FK_EstBxP_TabHan]
GO
ALTER TABLE [dbo].[EstBxP]  WITH NOCHECK ADD  CONSTRAINT [FK_EstBxP_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[EstBxP] CHECK CONSTRAINT [FK_EstBxP_TabMot]
GO
ALTER TABLE [dbo].[EstBxR]  WITH NOCHECK ADD  CONSTRAINT [FK_EstBxR_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[EstBxR] CHECK CONSTRAINT [FK_EstBxR_TabHan]
GO
ALTER TABLE [dbo].[EstBxR]  WITH NOCHECK ADD  CONSTRAINT [FK_EstBxR_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[EstBxR] CHECK CONSTRAINT [FK_EstBxR_TabMot]
GO
ALTER TABLE [dbo].[EstChe]  WITH CHECK ADD  CONSTRAINT [FK_EstChe_ResEsC] FOREIGN KEY([CodEmp], [CodREC])
REFERENCES [dbo].[ResEsC] ([CodEmp], [CodREC])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EstChe] CHECK CONSTRAINT [FK_EstChe_ResEsC]
GO
ALTER TABLE [dbo].[FatOS]  WITH CHECK ADD  CONSTRAINT [FK_FatOS_MovOS] FOREIGN KEY([CodEmp], [CodOS])
REFERENCES [dbo].[MovOS] ([CodEmp], [CodOS])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FatOS] CHECK CONSTRAINT [FK_FatOS_MovOS]
GO
ALTER TABLE [dbo].[FatSrv]  WITH CHECK ADD  CONSTRAINT [FK_FatSrv_MovSrv] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovSrv] ([CodEmp], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FatSrv] CHECK CONSTRAINT [FK_FatSrv_MovSrv]
GO
ALTER TABLE [dbo].[ForCCt]  WITH CHECK ADD  CONSTRAINT [FK_ForCCt_TabBan] FOREIGN KEY([CodBan])
REFERENCES [dbo].[TabBan] ([CodBan])
GO
ALTER TABLE [dbo].[ForCCt] CHECK CONSTRAINT [FK_ForCCt_TabBan]
GO
ALTER TABLE [dbo].[ForCms]  WITH CHECK ADD  CONSTRAINT [FK_ForCms_TabCom] FOREIGN KEY([CodCms])
REFERENCES [dbo].[TabCom] ([CodCom])
GO
ALTER TABLE [dbo].[ForCms] CHECK CONSTRAINT [FK_ForCms_TabCom]
GO
ALTER TABLE [dbo].[ForCnt]  WITH CHECK ADD  CONSTRAINT [FK_ForCnt_TabPrf] FOREIGN KEY([CodPrf])
REFERENCES [dbo].[TabPrf] ([CodPrf])
GO
ALTER TABLE [dbo].[ForCnt] CHECK CONSTRAINT [FK_ForCnt_TabPrf]
GO
ALTER TABLE [dbo].[ForProE]  WITH CHECK ADD  CONSTRAINT [FK_ForProE_TabFor] FOREIGN KEY([CodFor])
REFERENCES [dbo].[TabFor] ([CodFor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ForProE] CHECK CONSTRAINT [FK_ForProE_TabFor]
GO
ALTER TABLE [dbo].[FunART]  WITH CHECK ADD  CONSTRAINT [FK_FunART_TabFun] FOREIGN KEY([CodFun])
REFERENCES [dbo].[TabFun] ([CodFun])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[FunART] CHECK CONSTRAINT [FK_FunART_TabFun]
GO
ALTER TABLE [dbo].[FunCCt]  WITH CHECK ADD  CONSTRAINT [FK_FunCCt_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[FunCCt] CHECK CONSTRAINT [FK_FunCCt_TabHan]
GO
ALTER TABLE [dbo].[FunCom]  WITH CHECK ADD  CONSTRAINT [FK_FunCom_TabCom] FOREIGN KEY([CodCom])
REFERENCES [dbo].[TabCom] ([CodCom])
GO
ALTER TABLE [dbo].[FunCom] CHECK CONSTRAINT [FK_FunCom_TabCom]
GO
ALTER TABLE [dbo].[FunCPz]  WITH CHECK ADD  CONSTRAINT [FK_FunCPz_TabCom] FOREIGN KEY([CodCom])
REFERENCES [dbo].[TabCom] ([CodCom])
GO
ALTER TABLE [dbo].[FunCPz] CHECK CONSTRAINT [FK_FunCPz_TabCom]
GO
ALTER TABLE [dbo].[FunCrt]  WITH CHECK ADD  CONSTRAINT [FK_FunCrt_TabMot] FOREIGN KEY([CodCrt])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[FunCrt] CHECK CONSTRAINT [FK_FunCrt_TabMot]
GO
ALTER TABLE [dbo].[FunEvt]  WITH CHECK ADD  CONSTRAINT [FK_FunEvt_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[FunEvt] CHECK CONSTRAINT [FK_FunEvt_TabHan]
GO
ALTER TABLE [dbo].[FunOco]  WITH CHECK ADD  CONSTRAINT [FK_FunOco_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[FunOco] CHECK CONSTRAINT [FK_FunOco_TabMot]
GO
ALTER TABLE [dbo].[FunSlr]  WITH CHECK ADD  CONSTRAINT [FK_FunSlr_TabDpt] FOREIGN KEY([CodDpt])
REFERENCES [dbo].[TabDpt] ([CodDpt])
GO
ALTER TABLE [dbo].[FunSlr] CHECK CONSTRAINT [FK_FunSlr_TabDpt]
GO
ALTER TABLE [dbo].[FunSlr]  WITH CHECK ADD  CONSTRAINT [FK_FunSlr_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[FunSlr] CHECK CONSTRAINT [FK_FunSlr_TabMot]
GO
ALTER TABLE [dbo].[FunSlr]  WITH CHECK ADD  CONSTRAINT [FK_FunSlr_TabPrf] FOREIGN KEY([CodPrf])
REFERENCES [dbo].[TabPrf] ([CodPrf])
GO
ALTER TABLE [dbo].[FunSlr] CHECK CONSTRAINT [FK_FunSlr_TabPrf]
GO
ALTER TABLE [dbo].[GNtEst]  WITH CHECK ADD  CONSTRAINT [FK_GNtEst_LotEst] FOREIGN KEY([CodEmp], [CodFor], [CodNot], [CodPro], [CodLot], [CodLcz])
REFERENCES [dbo].[LotEst] ([CodEmp], [CodFor], [CodNot], [CodPro], [CodLot], [CodLcz])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GNtEst] CHECK CONSTRAINT [FK_GNtEst_LotEst]
GO
ALTER TABLE [dbo].[GNtEst]  WITH CHECK ADD  CONSTRAINT [FK_GNtEst_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[GNtEst] CHECK CONSTRAINT [FK_GNtEst_TabLcz]
GO
ALTER TABLE [dbo].[GNtEst]  WITH CHECK ADD  CONSTRAINT [FK_GNtEst_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[GNtEst] CHECK CONSTRAINT [FK_GNtEst_TabNtr]
GO
ALTER TABLE [dbo].[HstPrcPro]  WITH CHECK ADD  CONSTRAINT [FK_HstPrcPro_HstPrc] FOREIGN KEY([CodEmp], [SeqAtz])
REFERENCES [dbo].[HstPrc] ([CodEmp], [SeqAtz])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HstPrcPro] CHECK CONSTRAINT [FK_HstPrcPro_HstPrc]
GO
ALTER TABLE [dbo].[InuCnh]  WITH CHECK ADD  CONSTRAINT [FK_InuCnh_TabMot] FOREIGN KEY([CodMot])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[InuCnh] CHECK CONSTRAINT [FK_InuCnh_TabMot]
GO
ALTER TABLE [dbo].[IteCmp]  WITH CHECK ADD  CONSTRAINT [FK_IteCmp_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[IteCmp] CHECK CONSTRAINT [FK_IteCmp_TabPro]
GO
ALTER TABLE [dbo].[IteCtc]  WITH CHECK ADD  CONSTRAINT [FK_IteCtc_CtcSlc] FOREIGN KEY([CodEmp], [CodSlc], [CodFor])
REFERENCES [dbo].[CtcSlc] ([CodEmp], [CodSlc], [CodFor])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteCtc] CHECK CONSTRAINT [FK_IteCtc_CtcSlc]
GO
ALTER TABLE [dbo].[IteCtc]  WITH CHECK ADD  CONSTRAINT [FK_IteCtc_IteSlc] FOREIGN KEY([CodEmp], [CodSlc], [CodPro])
REFERENCES [dbo].[IteSlc] ([CodEmp], [CodSlc], [CodPro])
GO
ALTER TABLE [dbo].[IteCtc] CHECK CONSTRAINT [FK_IteCtc_IteSlc]
GO
ALTER TABLE [dbo].[IteEst]  WITH CHECK ADD  CONSTRAINT [FK_IteEst_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[IteEst] CHECK CONSTRAINT [FK_IteEst_TabPro]
GO
ALTER TABLE [dbo].[IteExp]  WITH NOCHECK ADD  CONSTRAINT [FK_IteExp_ExpCtb] FOREIGN KEY([CodEmp], [AnoExp], [MesExp])
REFERENCES [dbo].[ExpCtb] ([CodEmp], [AnoExp], [MesExp])
GO
ALTER TABLE [dbo].[IteExp] NOCHECK CONSTRAINT [FK_IteExp_ExpCtb]
GO
ALTER TABLE [dbo].[IteFqT]  WITH CHECK ADD  CONSTRAINT [FK_IteFqT_MovFqT] FOREIGN KEY([CodEmp], [CodFun], [DatFqT])
REFERENCES [dbo].[MovFqT] ([CodEmp], [CodFun], [DatFqT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteFqT] CHECK CONSTRAINT [FK_IteFqT_MovFqT]
GO
ALTER TABLE [dbo].[IteOP]  WITH CHECK ADD  CONSTRAINT [FK_IteOP_MovOP] FOREIGN KEY([CodEmp], [CodOP])
REFERENCES [dbo].[MovOP] ([CodEmp], [CodOP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteOP] CHECK CONSTRAINT [FK_IteOP_MovOP]
GO
ALTER TABLE [dbo].[IteOrc]  WITH CHECK ADD  CONSTRAINT [FK_IteOrc_MovOrc] FOREIGN KEY([CodEmp], [CodOrc])
REFERENCES [dbo].[MovOrc] ([CodEmp], [CodOrc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteOrc] CHECK CONSTRAINT [FK_IteOrc_MovOrc]
GO
ALTER TABLE [dbo].[IteOrc]  WITH CHECK ADD  CONSTRAINT [FK_IteOrc_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[IteOrc] CHECK CONSTRAINT [FK_IteOrc_TabPro]
GO
ALTER TABLE [dbo].[ItePed]  WITH CHECK ADD  CONSTRAINT [FK_ItePed_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[ItePed] CHECK CONSTRAINT [FK_ItePed_TabPro]
GO
ALTER TABLE [dbo].[IteRct]  WITH CHECK ADD  CONSTRAINT [FK_IteRct_MovRct] FOREIGN KEY([CodEmp], [CodART], [CodRct])
REFERENCES [dbo].[MovRct] ([CodEmp], [CodART], [CodRct])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteRct] CHECK CONSTRAINT [FK_IteRct_MovRct]
GO
ALTER TABLE [dbo].[IteRct]  WITH CHECK ADD  CONSTRAINT [FK_IteRct_TabAge] FOREIGN KEY([CodAge])
REFERENCES [dbo].[TabAge] ([CodAge])
GO
ALTER TABLE [dbo].[IteRct] CHECK CONSTRAINT [FK_IteRct_TabAge]
GO
ALTER TABLE [dbo].[IteRct]  WITH CHECK ADD  CONSTRAINT [FK_IteRct_TabApl] FOREIGN KEY([CodApl])
REFERENCES [dbo].[TabApl] ([CodApl])
GO
ALTER TABLE [dbo].[IteRct] CHECK CONSTRAINT [FK_IteRct_TabApl]
GO
ALTER TABLE [dbo].[IteRct]  WITH CHECK ADD  CONSTRAINT [FK_IteRct_TabCul] FOREIGN KEY([CodCul])
REFERENCES [dbo].[TabCul] ([CodCul])
GO
ALTER TABLE [dbo].[IteRct] CHECK CONSTRAINT [FK_IteRct_TabCul]
GO
ALTER TABLE [dbo].[IteRct]  WITH CHECK ADD  CONSTRAINT [FK_IteRct_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[IteRct] CHECK CONSTRAINT [FK_IteRct_TabPro]
GO
ALTER TABLE [dbo].[IteRet]  WITH CHECK ADD  CONSTRAINT [FK_IteRet_ResRet] FOREIGN KEY([CodEmp], [CodBan], [CodCnt], [SeqRet])
REFERENCES [dbo].[ResRet] ([CodEmp], [CodBan], [CodCnt], [SeqRet])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteRet] CHECK CONSTRAINT [FK_IteRet_ResRet]
GO
ALTER TABLE [dbo].[IteRms]  WITH CHECK ADD  CONSTRAINT [FK_IteRms_ResRms] FOREIGN KEY([CodEmp], [CodBan], [CodCnt], [SeqRms])
REFERENCES [dbo].[ResRms] ([CodEmp], [CodBan], [CodCnt], [SeqRms])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteRms] CHECK CONSTRAINT [FK_IteRms_ResRms]
GO
ALTER TABLE [dbo].[IteRmsSrs]  WITH CHECK ADD  CONSTRAINT [FK_IteRmsSrs_ResRmsSrs] FOREIGN KEY([CodEmp], [CodRms])
REFERENCES [dbo].[ResRmsSrs] ([CodEmp], [CodRms])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteRmsSrs] CHECK CONSTRAINT [FK_IteRmsSrs_ResRmsSrs]
GO
ALTER TABLE [dbo].[IteRsv]  WITH CHECK ADD  CONSTRAINT [FK_IteRsv_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[IteRsv] CHECK CONSTRAINT [FK_IteRsv_TabPro]
GO
ALTER TABLE [dbo].[IteSlc]  WITH CHECK ADD  CONSTRAINT [FK_IteSlc_SlcCmp] FOREIGN KEY([CodEmp], [CodSlc])
REFERENCES [dbo].[SlcCmp] ([CodEmp], [CodSlc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteSlc] CHECK CONSTRAINT [FK_IteSlc_SlcCmp]
GO
ALTER TABLE [dbo].[IteSrv]  WITH CHECK ADD  CONSTRAINT [FK_IteSrv_MovSrv] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovSrv] ([CodEmp], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteSrv] CHECK CONSTRAINT [FK_IteSrv_MovSrv]
GO
ALTER TABLE [dbo].[IteSrv]  WITH CHECK ADD  CONSTRAINT [FK_IteSrv_TabHan] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[IteSrv] CHECK CONSTRAINT [FK_IteSrv_TabHan]
GO
ALTER TABLE [dbo].[IteUsu]  WITH NOCHECK ADD  CONSTRAINT [FK_IteUsu_TabPrm] FOREIGN KEY([Processo])
REFERENCES [dbo].[TabPrm] ([Processo])
GO
ALTER TABLE [dbo].[IteUsu] NOCHECK CONSTRAINT [FK_IteUsu_TabPrm]
GO
ALTER TABLE [dbo].[IteVDr]  WITH CHECK ADD  CONSTRAINT [FK_IteVDr_MovVDr] FOREIGN KEY([CodEmp], [CodFor], [CodPed])
REFERENCES [dbo].[MovVDr] ([CodEmp], [CodFor], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IteVDr] CHECK CONSTRAINT [FK_IteVDr_MovVDr]
GO
ALTER TABLE [dbo].[LncAprPC]  WITH CHECK ADD  CONSTRAINT [FK_LncAprPC_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[LncAprPC] CHECK CONSTRAINT [FK_LncAprPC_TabHan]
GO
ALTER TABLE [dbo].[LotAlm]  WITH CHECK ADD  CONSTRAINT [FK_LotAlm_MovAlm] FOREIGN KEY([CodEmp], [CodAlm])
REFERENCES [dbo].[MovAlm] ([CodEmp], [CodAlm])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LotAlm] CHECK CONSTRAINT [FK_LotAlm_MovAlm]
GO
ALTER TABLE [dbo].[LotAlm]  WITH CHECK ADD  CONSTRAINT [FK_LotAlm_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[LotAlm] CHECK CONSTRAINT [FK_LotAlm_TabLcz]
GO
ALTER TABLE [dbo].[LotBtd]  WITH CHECK ADD  CONSTRAINT [FK_LotBtd_OpBtdMtP] FOREIGN KEY([CodEmp], [CodOp], [CodPro], [CodBtd], [CodMtP])
REFERENCES [dbo].[OpBtdMtP] ([CodEmp], [CodOp], [CodPro], [CodBtd], [CodMtP])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LotBtd] CHECK CONSTRAINT [FK_LotBtd_OpBtdMtP]
GO
ALTER TABLE [dbo].[LotBtd]  WITH CHECK ADD  CONSTRAINT [FK_LotBtd_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[LotBtd] CHECK CONSTRAINT [FK_LotBtd_TabLcz]
GO
ALTER TABLE [dbo].[LotEst]  WITH CHECK ADD  CONSTRAINT [FK_LotEst_IteEst] FOREIGN KEY([CodEmp], [CodFor], [CodNot], [CodPro])
REFERENCES [dbo].[IteEst] ([CodEmp], [CodFor], [CodNot], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LotEst] CHECK CONSTRAINT [FK_LotEst_IteEst]
GO
ALTER TABLE [dbo].[LotEst]  WITH CHECK ADD  CONSTRAINT [FK_LotEst_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[LotEst] CHECK CONSTRAINT [FK_LotEst_TabLcz]
GO
ALTER TABLE [dbo].[LotPed]  WITH CHECK ADD  CONSTRAINT [FK_LotPed_ItePed] FOREIGN KEY([CodEmp], [CodPed], [CodPro])
REFERENCES [dbo].[ItePed] ([CodEmp], [CodPed], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LotPed] CHECK CONSTRAINT [FK_LotPed_ItePed]
GO
ALTER TABLE [dbo].[LotPed]  WITH CHECK ADD  CONSTRAINT [FK_LotPed_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[LotPed] CHECK CONSTRAINT [FK_LotPed_TabLcz]
GO
ALTER TABLE [dbo].[LotTrf]  WITH CHECK ADD  CONSTRAINT [FK_LotTrf_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[LotTrf] CHECK CONSTRAINT [FK_LotTrf_TabEmp]
GO
ALTER TABLE [dbo].[LotTrf]  WITH CHECK ADD  CONSTRAINT [FK_LotTrf_TabFor] FOREIGN KEY([CodFor])
REFERENCES [dbo].[TabFor] ([CodFor])
GO
ALTER TABLE [dbo].[LotTrf] CHECK CONSTRAINT [FK_LotTrf_TabFor]
GO
ALTER TABLE [dbo].[LotTrf]  WITH CHECK ADD  CONSTRAINT [FK_LotTrf_TabLcz] FOREIGN KEY([CodLcz])
REFERENCES [dbo].[TabLcz] ([CodLcz])
GO
ALTER TABLE [dbo].[LotTrf] CHECK CONSTRAINT [FK_LotTrf_TabLcz]
GO
ALTER TABLE [dbo].[LotTrf]  WITH CHECK ADD  CONSTRAINT [FK_LotTrf_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[LotTrf] CHECK CONSTRAINT [FK_LotTrf_TabPro]
GO
ALTER TABLE [dbo].[ModSrv]  WITH CHECK ADD  CONSTRAINT [FK_ModSrv_TabMod] FOREIGN KEY([CodMod])
REFERENCES [dbo].[TabMod] ([CodMod])
GO
ALTER TABLE [dbo].[ModSrv] CHECK CONSTRAINT [FK_ModSrv_TabMod]
GO
ALTER TABLE [dbo].[ModSrv]  WITH CHECK ADD  CONSTRAINT [FK_ModSrv_TabSrv] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabSrv] ([CodSrv])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModSrv] CHECK CONSTRAINT [FK_ModSrv_TabSrv]
GO
ALTER TABLE [dbo].[MovAdt]  WITH CHECK ADD  CONSTRAINT [FK_MovAdt_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovAdt] CHECK CONSTRAINT [FK_MovAdt_TabHan]
GO
ALTER TABLE [dbo].[MovAdtC]  WITH CHECK ADD  CONSTRAINT [FK_MovAdtC_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovAdtC] CHECK CONSTRAINT [FK_MovAdtC_TabHan]
GO
ALTER TABLE [dbo].[MovAdtF]  WITH CHECK ADD  CONSTRAINT [FK_MovAdtF_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovAdtF] CHECK CONSTRAINT [FK_MovAdtF_TabHan]
GO
ALTER TABLE [dbo].[MovBan]  WITH CHECK ADD  CONSTRAINT [FK_MovBan_TabCnt] FOREIGN KEY([CodEmp], [CodBan], [CodCnt])
REFERENCES [dbo].[TabCnt] ([CodEmp], [CodBan], [CodCnt])
GO
ALTER TABLE [dbo].[MovBan] CHECK CONSTRAINT [FK_MovBan_TabCnt]
GO
ALTER TABLE [dbo].[MovBan]  WITH CHECK ADD  CONSTRAINT [FK_MovBan_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovBan] CHECK CONSTRAINT [FK_MovBan_TabHan]
GO
ALTER TABLE [dbo].[MovCai]  WITH CHECK ADD  CONSTRAINT [FK_MovCai_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovCai] CHECK CONSTRAINT [FK_MovCai_TabHan]
GO
ALTER TABLE [dbo].[MovCha]  WITH CHECK ADD  CONSTRAINT [FK_MovCha_TabMot] FOREIGN KEY([CodMtC])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[MovCha] CHECK CONSTRAINT [FK_MovCha_TabMot]
GO
ALTER TABLE [dbo].[MovCha]  WITH CHECK ADD  CONSTRAINT [FK_MovCha_TabMot1] FOREIGN KEY([CodMtG])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[MovCha] CHECK CONSTRAINT [FK_MovCha_TabMot1]
GO
ALTER TABLE [dbo].[MovCmp]  WITH NOCHECK ADD  CONSTRAINT [FK_MovCmp_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[MovCmp] CHECK CONSTRAINT [FK_MovCmp_TabTip]
GO
ALTER TABLE [dbo].[MovCms]  WITH CHECK ADD  CONSTRAINT [FK_MovCms_FecCms] FOREIGN KEY([CodEmp], [CodFec])
REFERENCES [dbo].[FecCms] ([CodEmp], [SeqFec])
GO
ALTER TABLE [dbo].[MovCms] CHECK CONSTRAINT [FK_MovCms_FecCms]
GO
ALTER TABLE [dbo].[MovCms]  WITH CHECK ADD  CONSTRAINT [FK_MovCms_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovCms] CHECK CONSTRAINT [FK_MovCms_TabHan]
GO
ALTER TABLE [dbo].[MovCrg]  WITH CHECK ADD  CONSTRAINT [FK_MovCrg_TabMot] FOREIGN KEY([Status])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[MovCrg] CHECK CONSTRAINT [FK_MovCrg_TabMot]
GO
ALTER TABLE [dbo].[MovDspP]  WITH NOCHECK ADD  CONSTRAINT [FK_MovDspP_TabPne] FOREIGN KEY([CodPne])
REFERENCES [dbo].[TabPne] ([CodPne])
GO
ALTER TABLE [dbo].[MovDspP] CHECK CONSTRAINT [FK_MovDspP_TabPne]
GO
ALTER TABLE [dbo].[MovDspV]  WITH CHECK ADD  CONSTRAINT [FK_MovDspV_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovDspV] CHECK CONSTRAINT [FK_MovDspV_TabHan]
GO
ALTER TABLE [dbo].[MovDspV]  WITH CHECK ADD  CONSTRAINT [FK_MovDspV_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
GO
ALTER TABLE [dbo].[MovDspV] CHECK CONSTRAINT [FK_MovDspV_TabVei]
GO
ALTER TABLE [dbo].[MovEst]  WITH NOCHECK ADD  CONSTRAINT [FK_MovEst_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[MovEst] CHECK CONSTRAINT [FK_MovEst_TabTip]
GO
ALTER TABLE [dbo].[MovFqT]  WITH CHECK ADD  CONSTRAINT [FK_MovFqT_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[MovFqT] CHECK CONSTRAINT [FK_MovFqT_TabEmp]
GO
ALTER TABLE [dbo].[MovFqT]  WITH CHECK ADD  CONSTRAINT [FK_MovFqT_TabFun] FOREIGN KEY([CodFun])
REFERENCES [dbo].[TabFun] ([CodFun])
GO
ALTER TABLE [dbo].[MovFqT] CHECK CONSTRAINT [FK_MovFqT_TabFun]
GO
ALTER TABLE [dbo].[MovLot]  WITH CHECK ADD  CONSTRAINT [FK_MovLot_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[MovLot] CHECK CONSTRAINT [FK_MovLot_TabEmp]
GO
ALTER TABLE [dbo].[MovLot]  WITH CHECK ADD  CONSTRAINT [FK_MovLot_TabFor] FOREIGN KEY([CodFor])
REFERENCES [dbo].[TabFor] ([CodFor])
GO
ALTER TABLE [dbo].[MovLot] CHECK CONSTRAINT [FK_MovLot_TabFor]
GO
ALTER TABLE [dbo].[MovLot]  WITH CHECK ADD  CONSTRAINT [FK_MovLot_TabPro] FOREIGN KEY([CodPro])
REFERENCES [dbo].[TabPro] ([CodPro])
GO
ALTER TABLE [dbo].[MovLot] CHECK CONSTRAINT [FK_MovLot_TabPro]
GO
ALTER TABLE [dbo].[MovOpg]  WITH CHECK ADD  CONSTRAINT [FK_MovOpg_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovOpg] CHECK CONSTRAINT [FK_MovOpg_TabHan]
GO
ALTER TABLE [dbo].[MovOrc]  WITH CHECK ADD  CONSTRAINT [FK_MovOrc_TabCli] FOREIGN KEY([CodCli])
REFERENCES [dbo].[TabCli] ([CodCli])
GO
ALTER TABLE [dbo].[MovOrc] CHECK CONSTRAINT [FK_MovOrc_TabCli]
GO
ALTER TABLE [dbo].[MovOrc]  WITH CHECK ADD  CONSTRAINT [FK_MovOrc_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[MovOrc] CHECK CONSTRAINT [FK_MovOrc_TabEmp]
GO
ALTER TABLE [dbo].[MovOrc]  WITH CHECK ADD  CONSTRAINT [FK_MovOrc_TabFun] FOREIGN KEY([CodVen])
REFERENCES [dbo].[TabFun] ([CodFun])
GO
ALTER TABLE [dbo].[MovOrc] CHECK CONSTRAINT [FK_MovOrc_TabFun]
GO
ALTER TABLE [dbo].[MovOrc]  WITH CHECK ADD  CONSTRAINT [FK_MovOrc_TabVec] FOREIGN KEY([CodVec])
REFERENCES [dbo].[TabVec] ([CodVec])
GO
ALTER TABLE [dbo].[MovOrc] CHECK CONSTRAINT [FK_MovOrc_TabVec]
GO
ALTER TABLE [dbo].[MovOS]  WITH CHECK ADD  CONSTRAINT [FK_MovOS_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
GO
ALTER TABLE [dbo].[MovOS] CHECK CONSTRAINT [FK_MovOS_TabVei]
GO
ALTER TABLE [dbo].[MovPag]  WITH NOCHECK ADD  CONSTRAINT [FK_MovPag_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovPag] CHECK CONSTRAINT [FK_MovPag_TabHan]
GO
ALTER TABLE [dbo].[MovPed]  WITH NOCHECK ADD  CONSTRAINT [FK_MovPed_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[MovPed] CHECK CONSTRAINT [FK_MovPed_TabTip]
GO
ALTER TABLE [dbo].[MovPne]  WITH NOCHECK ADD  CONSTRAINT [FK_MovPne_TabPne] FOREIGN KEY([CodPne])
REFERENCES [dbo].[TabPne] ([CodPne])
GO
ALTER TABLE [dbo].[MovPne] CHECK CONSTRAINT [FK_MovPne_TabPne]
GO
ALTER TABLE [dbo].[MovPrv]  WITH CHECK ADD  CONSTRAINT [FK_MovPrv_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovPrv] CHECK CONSTRAINT [FK_MovPrv_TabHan]
GO
ALTER TABLE [dbo].[MovQlm]  WITH CHECK ADD  CONSTRAINT [FK_MovQlm_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
GO
ALTER TABLE [dbo].[MovQlm] CHECK CONSTRAINT [FK_MovQlm_TabVei]
GO
ALTER TABLE [dbo].[MovQlmP]  WITH NOCHECK ADD  CONSTRAINT [FK_MovQlmP_TabPne] FOREIGN KEY([CodPne])
REFERENCES [dbo].[TabPne] ([CodPne])
GO
ALTER TABLE [dbo].[MovQlmP] CHECK CONSTRAINT [FK_MovQlmP_TabPne]
GO
ALTER TABLE [dbo].[MovQlmP]  WITH CHECK ADD  CONSTRAINT [FK_MovQlmP_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
GO
ALTER TABLE [dbo].[MovQlmP] CHECK CONSTRAINT [FK_MovQlmP_TabVei]
GO
ALTER TABLE [dbo].[MovRct]  WITH CHECK ADD  CONSTRAINT [FK_MovRct_TabCli] FOREIGN KEY([CodCli])
REFERENCES [dbo].[TabCli] ([CodCli])
GO
ALTER TABLE [dbo].[MovRct] CHECK CONSTRAINT [FK_MovRct_TabCli]
GO
ALTER TABLE [dbo].[MovRct]  WITH CHECK ADD  CONSTRAINT [FK_MovRct_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[MovRct] CHECK CONSTRAINT [FK_MovRct_TabEmp]
GO
ALTER TABLE [dbo].[MovRct]  WITH CHECK ADD  CONSTRAINT [FK_MovRct_TabFun] FOREIGN KEY([CodFun])
REFERENCES [dbo].[TabFun] ([CodFun])
GO
ALTER TABLE [dbo].[MovRct] CHECK CONSTRAINT [FK_MovRct_TabFun]
GO
ALTER TABLE [dbo].[MovRec]  WITH NOCHECK ADD  CONSTRAINT [FK_MovRec_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[MovRec] CHECK CONSTRAINT [FK_MovRec_TabHan]
GO
ALTER TABLE [dbo].[MovRmn]  WITH CHECK ADD  CONSTRAINT [FK_MovRmn_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[MovRmn] CHECK CONSTRAINT [FK_MovRmn_TabEmp]
GO
ALTER TABLE [dbo].[MovRsv]  WITH NOCHECK ADD  CONSTRAINT [FK_MovRsv_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[MovRsv] CHECK CONSTRAINT [FK_MovRsv_TabTip]
GO
ALTER TABLE [dbo].[MovSrv]  WITH CHECK ADD  CONSTRAINT [FK_MovSrv_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[MovSrv] CHECK CONSTRAINT [FK_MovSrv_TabTip]
GO
ALTER TABLE [dbo].[MovVDr]  WITH CHECK ADD  CONSTRAINT [FK_MovVDr_TabCom] FOREIGN KEY([CodCom])
REFERENCES [dbo].[TabCom] ([CodCom])
GO
ALTER TABLE [dbo].[MovVDr] CHECK CONSTRAINT [FK_MovVDr_TabCom]
GO
ALTER TABLE [dbo].[MovVDr]  WITH CHECK ADD  CONSTRAINT [FK_MovVDr_TabMot] FOREIGN KEY([CodSfr])
REFERENCES [dbo].[TabMot] ([CodMot])
GO
ALTER TABLE [dbo].[MovVDr] CHECK CONSTRAINT [FK_MovVDr_TabMot]
GO
ALTER TABLE [dbo].[OcoRec]  WITH CHECK ADD  CONSTRAINT [FK_OcoRec_MovRec] FOREIGN KEY([CodEmp], [CodTit])
REFERENCES [dbo].[MovRec] ([CodEmp], [CodTit])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OcoRec] CHECK CONSTRAINT [FK_OcoRec_MovRec]
GO
ALTER TABLE [dbo].[OpBtd]  WITH CHECK ADD  CONSTRAINT [FK_OpBtd_IteOP] FOREIGN KEY([CodEmp], [CodOp], [CodPro])
REFERENCES [dbo].[IteOP] ([CodEmp], [CodOP], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpBtd] CHECK CONSTRAINT [FK_OpBtd_IteOP]
GO
ALTER TABLE [dbo].[OpBtdMCc]  WITH CHECK ADD  CONSTRAINT [FK_OpBtdMCc_OpBtd] FOREIGN KEY([CodEmp], [CodOp], [CodPro], [CodBtd])
REFERENCES [dbo].[OpBtd] ([CodEmp], [CodOp], [CodPro], [CodBtd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpBtdMCc] CHECK CONSTRAINT [FK_OpBtdMCc_OpBtd]
GO
ALTER TABLE [dbo].[OpBtdMtP]  WITH CHECK ADD  CONSTRAINT [FK_OpBtdMtP_OpBtd] FOREIGN KEY([CodEmp], [CodOp], [CodPro], [CodBtd])
REFERENCES [dbo].[OpBtd] ([CodEmp], [CodOp], [CodPro], [CodBtd])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpBtdMtP] CHECK CONSTRAINT [FK_OpBtdMtP_OpBtd]
GO
ALTER TABLE [dbo].[OpNtr]  WITH CHECK ADD  CONSTRAINT [FK_OpNtr_IteOP] FOREIGN KEY([CodEmp], [CodOp], [CodPro])
REFERENCES [dbo].[IteOP] ([CodEmp], [CodOP], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OpNtr] CHECK CONSTRAINT [FK_OpNtr_IteOP]
GO
ALTER TABLE [dbo].[OpNtr]  WITH CHECK ADD  CONSTRAINT [FK_OpNtr_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[OpNtr] CHECK CONSTRAINT [FK_OpNtr_TabNtr]
GO
ALTER TABLE [dbo].[PatPro]  WITH CHECK ADD  CONSTRAINT [FK_PatPro_TabPat] FOREIGN KEY([CodEmp], [CodPat])
REFERENCES [dbo].[TabPat] ([CodEmp], [CodPat])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PatPro] CHECK CONSTRAINT [FK_PatPro_TabPat]
GO
ALTER TABLE [dbo].[PneVei]  WITH NOCHECK ADD  CONSTRAINT [FK_PneVei_TabPne] FOREIGN KEY([CodPne])
REFERENCES [dbo].[TabPne] ([CodPne])
GO
ALTER TABLE [dbo].[PneVei] CHECK CONSTRAINT [FK_PneVei_TabPne]
GO
ALTER TABLE [dbo].[PrgRsv]  WITH CHECK ADD  CONSTRAINT [FK_PrgRsv_IteRsv] FOREIGN KEY([CodEmp], [CodRsv], [CodPro])
REFERENCES [dbo].[IteRsv] ([CodEmp], [CodRsv], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PrgRsv] CHECK CONSTRAINT [FK_PrgRsv_IteRsv]
GO
ALTER TABLE [dbo].[ProApl]  WITH CHECK ADD  CONSTRAINT [FK_ProApl_TabApl] FOREIGN KEY([CodApl])
REFERENCES [dbo].[TabApl] ([CodApl])
GO
ALTER TABLE [dbo].[ProApl] CHECK CONSTRAINT [FK_ProApl_TabApl]
GO
ALTER TABLE [dbo].[ProCps]  WITH CHECK ADD  CONSTRAINT [FK_ProCps_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[ProCps] CHECK CONSTRAINT [FK_ProCps_TabNtr]
GO
ALTER TABLE [dbo].[ProCul]  WITH CHECK ADD  CONSTRAINT [FK_CulPro_TabAge] FOREIGN KEY([CodAge])
REFERENCES [dbo].[TabAge] ([CodAge])
GO
ALTER TABLE [dbo].[ProCul] CHECK CONSTRAINT [FK_CulPro_TabAge]
GO
ALTER TABLE [dbo].[ProCul]  WITH CHECK ADD  CONSTRAINT [FK_CulPro_TabCul] FOREIGN KEY([CodCul])
REFERENCES [dbo].[TabCul] ([CodCul])
GO
ALTER TABLE [dbo].[ProCul] CHECK CONSTRAINT [FK_CulPro_TabCul]
GO
ALTER TABLE [dbo].[ProGNt]  WITH CHECK ADD  CONSTRAINT [FK_ProGNt_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[ProGNt] CHECK CONSTRAINT [FK_ProGNt_TabNtr]
GO
ALTER TABLE [dbo].[ProNtr]  WITH CHECK ADD  CONSTRAINT [FK_ProNtr_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[ProNtr] CHECK CONSTRAINT [FK_ProNtr_TabNtr]
GO
ALTER TABLE [dbo].[ProOS]  WITH CHECK ADD  CONSTRAINT [FK_ProOS_MovOS] FOREIGN KEY([CodEmp], [CodOS])
REFERENCES [dbo].[MovOS] ([CodEmp], [CodOS])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProOS] CHECK CONSTRAINT [FK_ProOS_MovOS]
GO
ALTER TABLE [dbo].[ResGrP]  WITH CHECK ADD  CONSTRAINT [FK_ResGrP_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[ResGrP] CHECK CONSTRAINT [FK_ResGrP_TabHan]
GO
ALTER TABLE [dbo].[ResGrR]  WITH CHECK ADD  CONSTRAINT [FK_ResGrR_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[ResGrR] CHECK CONSTRAINT [FK_ResGrR_TabHan]
GO
ALTER TABLE [dbo].[ResRet]  WITH NOCHECK ADD  CONSTRAINT [FK_ResRet_TabCnt] FOREIGN KEY([CodEmp], [CodBan], [CodCnt])
REFERENCES [dbo].[TabCnt] ([CodEmp], [CodBan], [CodCnt])
GO
ALTER TABLE [dbo].[ResRet] CHECK CONSTRAINT [FK_ResRet_TabCnt]
GO
ALTER TABLE [dbo].[ResRms]  WITH NOCHECK ADD  CONSTRAINT [FK_ResRms_TabCnt] FOREIGN KEY([CodEmp], [CodBan], [CodCnt])
REFERENCES [dbo].[TabCnt] ([CodEmp], [CodBan], [CodCnt])
GO
ALTER TABLE [dbo].[ResRms] CHECK CONSTRAINT [FK_ResRms_TabCnt]
GO
ALTER TABLE [dbo].[SlcCmp]  WITH CHECK ADD  CONSTRAINT [FK_SlcCmp_TabCCs] FOREIGN KEY([CodCCs])
REFERENCES [dbo].[TabCCs] ([CodCCs])
GO
ALTER TABLE [dbo].[SlcCmp] CHECK CONSTRAINT [FK_SlcCmp_TabCCs]
GO
ALTER TABLE [dbo].[SmlRsv]  WITH CHECK ADD  CONSTRAINT [FK_SmlRsv_IteRsv] FOREIGN KEY([CodEmp], [CodRsv], [CodPro])
REFERENCES [dbo].[IteRsv] ([CodEmp], [CodRsv], [CodPro])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SmlRsv] CHECK CONSTRAINT [FK_SmlRsv_IteRsv]
GO
ALTER TABLE [dbo].[SrvOrc]  WITH CHECK ADD  CONSTRAINT [FK_SrvOrc_MovOrc] FOREIGN KEY([CodEmp], [CodOrc])
REFERENCES [dbo].[MovOrc] ([CodEmp], [CodOrc])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SrvOrc] CHECK CONSTRAINT [FK_SrvOrc_MovOrc]
GO
ALTER TABLE [dbo].[SrvOrc]  WITH CHECK ADD  CONSTRAINT [FK_SrvOrc_TabHan] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[SrvOrc] CHECK CONSTRAINT [FK_SrvOrc_TabHan]
GO
ALTER TABLE [dbo].[SrvOS]  WITH CHECK ADD  CONSTRAINT [FK_SrvOS_MovOS] FOREIGN KEY([CodEmp], [CodOS])
REFERENCES [dbo].[MovOS] ([CodEmp], [CodOS])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SrvOS] CHECK CONSTRAINT [FK_SrvOS_MovOS]
GO
ALTER TABLE [dbo].[SrvOS]  WITH CHECK ADD  CONSTRAINT [FK_SrvOS_TabSrv] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabSrv] ([CodSrv])
GO
ALTER TABLE [dbo].[SrvOS] CHECK CONSTRAINT [FK_SrvOS_TabSrv]
GO
ALTER TABLE [dbo].[SrvPed]  WITH CHECK ADD  CONSTRAINT [FK_SrvPed_MovPed] FOREIGN KEY([CodEmp], [CodPed])
REFERENCES [dbo].[MovPed] ([CodEmp], [CodPed])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SrvPed] CHECK CONSTRAINT [FK_SrvPed_MovPed]
GO
ALTER TABLE [dbo].[SrvPed]  WITH CHECK ADD  CONSTRAINT [FK_SrvPed_TabHan] FOREIGN KEY([CodSrv])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[SrvPed] CHECK CONSTRAINT [FK_SrvPed_TabHan]
GO
ALTER TABLE [dbo].[TabCid]  WITH CHECK ADD  CONSTRAINT [FK_TabCid_TabEst] FOREIGN KEY([Estado])
REFERENCES [dbo].[TabEst] ([CodEst])
GO
ALTER TABLE [dbo].[TabCid] CHECK CONSTRAINT [FK_TabCid_TabEst]
GO
ALTER TABLE [dbo].[TabCli]  WITH CHECK ADD  CONSTRAINT [FK_TabCli_TabAti] FOREIGN KEY([CodAti])
REFERENCES [dbo].[TabAti] ([CodAti])
GO
ALTER TABLE [dbo].[TabCli] CHECK CONSTRAINT [FK_TabCli_TabAti]
GO
ALTER TABLE [dbo].[TabCli]  WITH CHECK ADD  CONSTRAINT [FK_TabCli_TabCid] FOREIGN KEY([CodCid])
REFERENCES [dbo].[TabCid] ([CodCid])
GO
ALTER TABLE [dbo].[TabCli] CHECK CONSTRAINT [FK_TabCli_TabCid]
GO
ALTER TABLE [dbo].[TabCli]  WITH CHECK ADD  CONSTRAINT [FK_TabCli_TabFun] FOREIGN KEY([CodFun])
REFERENCES [dbo].[TabFun] ([CodFun])
GO
ALTER TABLE [dbo].[TabCli] CHECK CONSTRAINT [FK_TabCli_TabFun]
GO
ALTER TABLE [dbo].[TabCli]  WITH CHECK ADD  CONSTRAINT [FK_TabCli_TabReg] FOREIGN KEY([CodReg])
REFERENCES [dbo].[TabReg] ([CodReg])
GO
ALTER TABLE [dbo].[TabCli] CHECK CONSTRAINT [FK_TabCli_TabReg]
GO
ALTER TABLE [dbo].[TabCnt]  WITH NOCHECK ADD  CONSTRAINT [FK_TabCnt_TabBan] FOREIGN KEY([CodBan])
REFERENCES [dbo].[TabBan] ([CodBan])
GO
ALTER TABLE [dbo].[TabCnt] CHECK CONSTRAINT [FK_TabCnt_TabBan]
GO
ALTER TABLE [dbo].[TabEmp]  WITH CHECK ADD  CONSTRAINT [FK_TabEmp_TabCid] FOREIGN KEY([CodCid])
REFERENCES [dbo].[TabCid] ([CodCid])
GO
ALTER TABLE [dbo].[TabEmp] CHECK CONSTRAINT [FK_TabEmp_TabCid]
GO
ALTER TABLE [dbo].[TabFor]  WITH CHECK ADD  CONSTRAINT [FK_TabFor_TabAti] FOREIGN KEY([CodAti])
REFERENCES [dbo].[TabAti] ([CodAti])
GO
ALTER TABLE [dbo].[TabFor] CHECK CONSTRAINT [FK_TabFor_TabAti]
GO
ALTER TABLE [dbo].[TabFor]  WITH CHECK ADD  CONSTRAINT [FK_TabFor_TabCid] FOREIGN KEY([CodCid])
REFERENCES [dbo].[TabCid] ([CodCid])
GO
ALTER TABLE [dbo].[TabFor] CHECK CONSTRAINT [FK_TabFor_TabCid]
GO
ALTER TABLE [dbo].[TabFun]  WITH CHECK ADD  CONSTRAINT [FK_TabFun_TabEmp] FOREIGN KEY([CodEmp])
REFERENCES [dbo].[TabEmp] ([CodEmp])
GO
ALTER TABLE [dbo].[TabFun] CHECK CONSTRAINT [FK_TabFun_TabEmp]
GO
ALTER TABLE [dbo].[TabGru]  WITH CHECK ADD  CONSTRAINT [FK_TabGru_TabCat] FOREIGN KEY([CodCat])
REFERENCES [dbo].[TabCat] ([CodCat])
GO
ALTER TABLE [dbo].[TabGru] CHECK CONSTRAINT [FK_TabGru_TabCat]
GO
ALTER TABLE [dbo].[TabGru]  WITH CHECK ADD  CONSTRAINT [FK_TabGru_TabCat1] FOREIGN KEY([CodTrb])
REFERENCES [dbo].[TabCat] ([CodCat])
GO
ALTER TABLE [dbo].[TabGru] CHECK CONSTRAINT [FK_TabGru_TabCat1]
GO
ALTER TABLE [dbo].[TabHan]  WITH CHECK ADD  CONSTRAINT [FK_TabHan_TabHsi] FOREIGN KEY([CodHsi])
REFERENCES [dbo].[TabHsi] ([CodHsi])
GO
ALTER TABLE [dbo].[TabHan] CHECK CONSTRAINT [FK_TabHan_TabHsi]
GO
ALTER TABLE [dbo].[TabMoc]  WITH CHECK ADD  CONSTRAINT [FK_TabMoc_TabBan] FOREIGN KEY([CodBan])
REFERENCES [dbo].[TabBan] ([CodBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TabMoc] CHECK CONSTRAINT [FK_TabMoc_TabBan]
GO
ALTER TABLE [dbo].[TabOco]  WITH CHECK ADD  CONSTRAINT [FK_TabOco_TabBan] FOREIGN KEY([CodBan])
REFERENCES [dbo].[TabBan] ([CodBan])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TabOco] CHECK CONSTRAINT [FK_TabOco_TabBan]
GO
ALTER TABLE [dbo].[TabPne]  WITH NOCHECK ADD  CONSTRAINT [FK_TabPne_TabMed] FOREIGN KEY([CodMed])
REFERENCES [dbo].[TabMed] ([CodMed])
GO
ALTER TABLE [dbo].[TabPne] CHECK CONSTRAINT [FK_TabPne_TabMed]
GO
ALTER TABLE [dbo].[TabPne]  WITH NOCHECK ADD  CONSTRAINT [FK_TabPne_TabMod] FOREIGN KEY([CodMod])
REFERENCES [dbo].[TabMod] ([CodMod])
GO
ALTER TABLE [dbo].[TabPne] CHECK CONSTRAINT [FK_TabPne_TabMod]
GO
ALTER TABLE [dbo].[TabPne]  WITH NOCHECK ADD  CONSTRAINT [FK_TabPne_TabMrc] FOREIGN KEY([CodMrc])
REFERENCES [dbo].[TabMrc] ([CodMrc])
GO
ALTER TABLE [dbo].[TabPne] CHECK CONSTRAINT [FK_TabPne_TabMrc]
GO
ALTER TABLE [dbo].[TabPro]  WITH CHECK ADD  CONSTRAINT [FK_TabPro_TabEmb] FOREIGN KEY([CodEmb])
REFERENCES [dbo].[TabEmb] ([CodEmb])
GO
ALTER TABLE [dbo].[TabPro] CHECK CONSTRAINT [FK_TabPro_TabEmb]
GO
ALTER TABLE [dbo].[TabPro]  WITH CHECK ADD  CONSTRAINT [FK_TabPro_TabFor] FOREIGN KEY([CodFor])
REFERENCES [dbo].[TabFor] ([CodFor])
GO
ALTER TABLE [dbo].[TabPro] CHECK CONSTRAINT [FK_TabPro_TabFor]
GO
ALTER TABLE [dbo].[TabPro]  WITH CHECK ADD  CONSTRAINT [FK_TabPro_TabGru] FOREIGN KEY([CodGru])
REFERENCES [dbo].[TabGru] ([CodGru])
GO
ALTER TABLE [dbo].[TabPro] CHECK CONSTRAINT [FK_TabPro_TabGru]
GO
ALTER TABLE [dbo].[TabRNt]  WITH CHECK ADD  CONSTRAINT [FK_TabRNt_TabNtr] FOREIGN KEY([CodNtr])
REFERENCES [dbo].[TabNtr] ([CodNtr])
GO
ALTER TABLE [dbo].[TabRNt] CHECK CONSTRAINT [FK_TabRNt_TabNtr]
GO
ALTER TABLE [dbo].[TabSrv]  WITH CHECK ADD  CONSTRAINT [FK_TabSrv_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[TabSrv] CHECK CONSTRAINT [FK_TabSrv_TabHan]
GO
ALTER TABLE [dbo].[TabTip]  WITH NOCHECK ADD  CONSTRAINT [FK_TabTip_TabCfo] FOREIGN KEY([CodCfo])
REFERENCES [dbo].[TabCfo] ([CodCfo])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[TabTip] CHECK CONSTRAINT [FK_TabTip_TabCfo]
GO
ALTER TABLE [dbo].[TabTip]  WITH NOCHECK ADD  CONSTRAINT [FK_TabTip_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[TabTip] CHECK CONSTRAINT [FK_TabTip_TabHan]
GO
ALTER TABLE [dbo].[TabTrb]  WITH CHECK ADD  CONSTRAINT [FK_TabTrb_TabMen] FOREIGN KEY([CodMen])
REFERENCES [dbo].[TabMen] ([CodMen])
GO
ALTER TABLE [dbo].[TabTrb] CHECK CONSTRAINT [FK_TabTrb_TabMen]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabCmb] FOREIGN KEY([CodCmb])
REFERENCES [dbo].[TabCmb] ([CodCmb])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabCmb]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabCon] FOREIGN KEY([CodCon])
REFERENCES [dbo].[TabCon] ([CodCon])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabCon]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabCor] FOREIGN KEY([CodCor])
REFERENCES [dbo].[TabCor] ([CodCor])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabCor]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabEsp] FOREIGN KEY([CodEsp])
REFERENCES [dbo].[TabEsp] ([CodEsp])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabEsp]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabMod] FOREIGN KEY([CodMod])
REFERENCES [dbo].[TabMod] ([CodMod])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabMod]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabMrc] FOREIGN KEY([CodMrc])
REFERENCES [dbo].[TabMrc] ([CodMrc])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabMrc]
GO
ALTER TABLE [dbo].[TabVei]  WITH CHECK ADD  CONSTRAINT [FK_TabVei_TabPnt] FOREIGN KEY([CodPnt])
REFERENCES [dbo].[TabPnt] ([CodPnt])
GO
ALTER TABLE [dbo].[TabVei] CHECK CONSTRAINT [FK_TabVei_TabPnt]
GO
ALTER TABLE [dbo].[Tipo60A]  WITH CHECK ADD  CONSTRAINT [FK_Tipo60A_Tipo60M] FOREIGN KEY([CodEmp], [DatEmi])
REFERENCES [dbo].[Tipo60M] ([CodEmp], [DatEmi])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Tipo60A] CHECK CONSTRAINT [FK_Tipo60A_Tipo60M]
GO
ALTER TABLE [dbo].[Tipo60M]  WITH CHECK ADD  CONSTRAINT [FK_Tipo60M_TabCfo] FOREIGN KEY([CodCfo])
REFERENCES [dbo].[TabCfo] ([CodCfo])
GO
ALTER TABLE [dbo].[Tipo60M] CHECK CONSTRAINT [FK_Tipo60M_TabCfo]
GO
ALTER TABLE [dbo].[TrbCfo]  WITH CHECK ADD  CONSTRAINT [FK_TrbCfo_TabCfo] FOREIGN KEY([CodCfo])
REFERENCES [dbo].[TabCfo] ([CodCfo])
GO
ALTER TABLE [dbo].[TrbCfo] CHECK CONSTRAINT [FK_TrbCfo_TabCfo]
GO
ALTER TABLE [dbo].[TrbCfo]  WITH CHECK ADD  CONSTRAINT [FK_TrbCfo_TabTip] FOREIGN KEY([CodTip])
REFERENCES [dbo].[TabTip] ([CodTip])
GO
ALTER TABLE [dbo].[TrbCfo] CHECK CONSTRAINT [FK_TrbCfo_TabTip]
GO
ALTER TABLE [dbo].[TrbCfo]  WITH CHECK ADD  CONSTRAINT [FK_TrbCfo_TabTrb] FOREIGN KEY([CodTrb], [EstOrg], [EstDst])
REFERENCES [dbo].[TabTrb] ([CodTrb], [EstOrg], [EstDst])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrbCfo] CHECK CONSTRAINT [FK_TrbCfo_TabTrb]
GO
ALTER TABLE [dbo].[VeiCps]  WITH CHECK ADD  CONSTRAINT [FK_VeiCps_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VeiCps] CHECK CONSTRAINT [FK_VeiCps_TabVei]
GO
ALTER TABLE [dbo].[VeiRat]  WITH CHECK ADD  CONSTRAINT [FK_VeiRat_TabHan] FOREIGN KEY([CodHan])
REFERENCES [dbo].[TabHan] ([CodHan])
GO
ALTER TABLE [dbo].[VeiRat] CHECK CONSTRAINT [FK_VeiRat_TabHan]
GO
ALTER TABLE [dbo].[VeiRat]  WITH CHECK ADD  CONSTRAINT [FK_VeiRat_TabVei] FOREIGN KEY([CodVei])
REFERENCES [dbo].[TabVei] ([CodVei])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VeiRat] CHECK CONSTRAINT [FK_VeiRat_TabVei]
GO
ALTER TABLE [dbo].[VrfOS]  WITH CHECK ADD  CONSTRAINT [FK_VrfOS_MovOS] FOREIGN KEY([CodEmp], [CodOS])
REFERENCES [dbo].[MovOS] ([CodEmp], [CodOS])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[VrfOS] CHECK CONSTRAINT [FK_VrfOS_MovOS]
GO
