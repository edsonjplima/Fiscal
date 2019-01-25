/*
  Script para Atualização da Versão 9.0.8 - Release 332, no Software Gerpa / GBNFe {Campos que serão Alimentados Automaticamente para Integração entre os dois aplicativos}
  By Renildo ; 09.01.2017 ; 08:42
*/

Use Gerpa_Gaucha

-- a. Inclusão de atributos

-- 1. TabEmp
--- 1.1. TabEmp.CodMtC

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'TabEmp' and C.name = 'CodMtC')
 begin
  Alter Table TabEmp
   Add CodMtC Int Null

  Print 'TabEmp.CodMtC....... Incluido!'
 end            
GO

--- 1.2. TabEmp.CodMtD

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'TabEmp' and C.name = 'CodMtD')
 begin
  Alter Table TabEmp
   Add CodMtD Int Null

  Print 'TabEmp.CodMtD....... Incluido!'
 end            
GO

--- 1.3. TabEmp.CodMtI

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'TabEmp' and C.name = 'CodMtI')
 begin
  Alter Table TabEmp
   Add CodMtI Int Null

  Print 'TabEmp.CodMtI....... Incluido!'
 end            
GO

Use NFe_Gaucha

-- a. Inclusão de atributos

-- 1. Emitente
--- 1.1. Emitente.CodMtC

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'Emitente' and C.name = 'CodMtC')
 begin
  Alter Table Emitente
   Add CodMtC Int Null

  Print 'Emitente.CodMtC..... Incluido!'
 end            
GO

--- 1.2. Emitente.CodMtD

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'Emitente' and C.name = 'CodMtD')
 begin
  Alter Table Emitente
   Add CodMtD Int Null

  Print 'Emitente.CodMtD..... Incluido!'
 end            
GO

--- 1.3. Emitente.CodMtI

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'Emitente' and C.name = 'CodMtI')
 begin
  Alter Table Emitente
   Add CodMtI Int Null

  Print 'Emitente.CodMtI..... Incluido!'
 end            
GO

-- 2. NFe
--- 2.1. NFe.CodPed

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'CodPed')
 begin
  Alter Table NFe
   Add CodPed Int Null

  Print 'NFe.CodPed.......... Incluido!'
 end            
GO

-- b. Remoção de Atributo

-- c. Atualização de Conteudo

-- d. Alteração de Atributo

-- e. Remoção de Conteudo

-- f. Exclusao de Objeto

-- g. Inclusão de Objeto

--- 1. Table

--- 2. Triggers

--- 3. ForeignKey

--- 4. Functions

--- 5. Procedures

-- 5. Gerpa
--- 5.1. Gerpa.CodNot

Use Gerpa_Gaucha

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_VrfPed]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_VrfPed]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/********************************************************************************************
 * Procedure...: sp_VrfPed
 * Data........: 16.01.2017 ; 11:32
 * Descrição...: Efetua A Verificação da Existencia do pedido pelo numero da nota
 *               para o Cancelamento Administrativo do Pedido na Inutilização da NFe
 * Retornos....: 00    :   Disponibilidade para o Cancelamento Administrativo
 *               ??    :   Qualquer outro valor, pedido não existe
 *
 * Revisão.....: XXXXXXXXXX ; 99.99.9999 : 99:99
 ********************************************************************************************/
CREATE   Proc sp_VrfPed @CodEmp Int, @CodNot Int
As

Declare @CodPed int

if( Select Count(*)
  from MovPed                    
   where   CodEmp    = @CodEmp  and
           CodNot    = @CodNot ) > 0
  Return CodPed


GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO

/********************************************************************************************/

-- 5. Gerpa
--- 5.2. Gerpa.CodNot

Use Gerpa_Gaucha

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[sp_VrfCanNot]') and OBJECTPROPERTY(id, N'IsProcedure') = 1)
drop procedure [dbo].[sp_VrfCanNot]
GO

SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO





/********************************************************************************************
 * Procedure...: sp_VrfCanNot
 * Data........: 09.01.2017 ; 10:20
 * Descrição...: Efetua A Verificação da Disponibilidade para o Cancelamento Administrativo da NFe Informada {Será Utilizada pelo GBNFe}
 * Retornos....: 01..14: Indisponibilidade para o Cancelamento Administrativo
 *               00    :   Disponibilidade para o Cancelamento Administrativo
 *
 * Revisão.....: XXXXXXXXXX ; 99.99.9999 : 99:99
 ********************************************************************************************/
CREATE   Proc sp_VrfCanNot @CodEmp Int, @CodPed Int
As
 Declare @EmpTrf   Int,
         @CodNot   Int,
         @CodFor   Int,
         @OrgLnc   Char(01),
	 @TipDoc   Char(01),
         @LtCncV   Int,      
	 @QtDFat   Int,
	 @PosPed   Char(01),
	 @PedDev   Char(01),
	 @NotEnt   Char(01), 
	 @CodVen   Int,      
	 @LncCms   Char(01), 
	 @GerDup   Char(01), 
	 @DevPed   Char(01), 
	 @CodTra   Int,	     
	 @CodNtP   Int,	     
         @CodOrd   Int,      
         @PedAgp   Char(01), 

         @ForDvC   Int,
	 @NotDvC   Int,

         @PedDvV   Int, 

	 @PosOpg   Char(1),
	 @TipPag   Char(1),
 	 @DatPag   DateTime

 -- Obtendo Dados para Consistencia das Integrações

 Select @EmpTrf = M.EmpTrf,
        @OrgLnc = M.OrgLnc,
	@TipDoc = M.TipDoc,
	@LtCncV = E.LmtCncV,  
	@QtDFat = Cast( dbo.fn_DataSemHora( GetDate() ) - M.DatFat AS Integer ), 	
	@PosPed = M.PosPed,						 	 	
        @PedDev = M.PedDev,
	@NotEnt = M.NotEnt,
	@CodVen = M.CodVen,                                                             
	@LncCms = M.LncCms,		 						
	@GerDup = M.GerDup,								
	@DevPed = Case When IsNull( M.PedDvV, 0 ) > 0 Then 'S' Else 'N' End,
	@CodTra = M.CodTra,								
	@CodNtP = M.CodNot,								
        @CodOrd = M.CodOrd,								
	@PedAgp = Case When IsNull( M.PedAgp, 0 ) > 0 Then 'S' Else 'N' End,
        @ForDvC = M.ForDvC,
        @NotDvC = M.NotDvC,
        @PedDvV = M.PedDvV
  From MovPed M Join TabEmp E ON M.CodEmp = E.CodEmp
   Where M.CodEmp = @CodEmp and
         M.CodPed = @CodPed

 -- Consiste Titulos Pagos {Contas a Receber}

 if ( Select Count(*)
       From MovRec
        Where CodEmp = @CodEmp and
	      CodPed = @CodPed and
              OrgLnc = 'P'     and
              TipLnc = 'A'     and
	      ValPag > 0 ) > 0
  Return 1

 -- Consistindo Pedido de Saída em Depósito Integrado a Pedido de Entrada em Depósito

 If ( Select Count(*) From MovPed
       Where CodEmp = @CodEmp and
	     PedDep = @CodPed and
	     OrgLnc = 'D'     and
             TipLnc = 'A'     and
             PosPed in ('P','F') ) > 0
  Return 2

 -- Consistindo Entrada via Transferencia

 if @EmpTrf Is Not Null and @EmpTrf > 0 and @TipDoc In ( 'N', 'A' )
  If ( Select Count(*) From MovEst
        Where CodEmp = @EmpTrf and
              EmpTrf = @CodEmp and
	      PedTrf = @CodPed and
              PosEnt in ('P','A') ) > 0
   Return 3

 -- Consistindo Titulos Pagos {Contas a Pagar}, para Entrada de Contra-Nota no Estoque ; By Renildo ; 05/01/2009 ; 09:36

 If ( Select Count(*) From MovEst
       Where CodEmp = @CodEmp and
             PedEnt = @CodPed and
             PosEnt in ('A') ) > 0
  Begin
   -- Obtendo Dados para Consistência das Integrações

   Select @CodFor = CodFor,
          @CodNot = CodNot
    From MovEst
     Where CodEmp = @CodEmp and
           PedEnt = @CodPed

   -- Verificando se existe título pago
   If( Select Count(*)
        From MovPag
         Where CodEmp = @CodEmp   and
               CodFor = @CodFor   and 
               CodNot = @CodNot   and
               OrgLnc = 'E'       and
               TipLnc = 'A'       And
    	       ValPag > 0 ) > 0
    Return 4
  End

 -- Consistindo Caixa Fechado, se origem for complemento de preço

 if ( Select OrgLnc
       From MovPed
        Where CodEmp = @CodEmp and
	      CodPed = @CodPed ) = 'C'
  Begin
   If ( Select Count(*)
         From MovCai M Join FecCai F On M.CodEmp = F.CodEmp and
	  			        M.DatCai = F.DatCai
  	  Where M.CodEmp = @CodEmp and
	        M.CodNot = @CodPed and
	        M.OrgLnc = 'L'     and	-- By Renildo ; 31.05.2013 ; 10:27 {Era F}
                M.TipLnc = 'A' ) > 0
    Return 5
  End

 -- 6. Consistindo Posição do Pedido para poder Cancelar ; Renildo ; 05.08.2009 ; 10:37

 if @PosPed <> 'F'
  Return 6

 -- 7. Consistindo Limite em Dias para Cancelamento ; Renildo ; 05.08.2009 ; 10:37

 if @QtDFat > 0
  if @QtDFat > @LtCncV
   Return 7

 -- 8. Consistindo se Pedido Devolvido ; Renildo ; 06.08.2009 ; 17:46

 if @PedDev <> 'N'
  Return 8

 -- 9. Consiste se Comissão Fechada ; By Renildo ; 13.08.2009 ; 11:00

 If @CodVen Is Not Null and @CodVen > 0 and ( ( @LncCms = 'S' and @GerDup = 'S' and @NotEnt = 'N' ) or @DevPed = 'S' )
  If Exists( Select CodPed
              From MovCmsN 
               Where
                CodEmp = @CodEmp and
                CodOrg = @CodPed and 
	        OrgLnc = 'F'     and
                PosCms = 'F' )
   Return 9

 -- 10. Consistindo Titulos Pagos {Contas a Pagar}, Gerados Qdo TabTip.RcbFrt = 'S' ; By Renildo ; 21.09.2011 ; 16:43

 If( Select Count(*)
      From MovPag
       Where CodEmp = @CodEmp   and
             CodFor = @CodTra   and 
             CodNot = @CodNtP   and
             OrgLnc = 'P'       and
             TipLnc = 'A'       And
	     ValPag > 0 ) > 0
  Return 10

 -- 11. Consistindo Integração Gerda Via Ordem de Carregamento ; By renildo ; 23.12.2011 ; 07:54

 if IsNull( @CodOrd, 0 ) > 0
  Begin
   -- 11.1. Título Pago "MovPag"

   If( Select Count(*)
        From MovPag
         Where CodEmp = @CodEmp  and
               CodOrg = @CodOrd  and
               OrgLnc = 'O'      and
               TipLnc = 'A'      And
    	       ValPag > 0 ) > 0
    Return 11
  End

 -- 12. Consistindo se Pedido foi Agrupado ; By Renildo ; 08.05.2012 ; 15:26

 if @PedAgp = 'S'
  Return 12

 -- 13. / 14. Consistindo Devolução de Compra / Venda

 if      @OrgLnc = 'E' -- Devolução de Compra
  Begin
   -- . Obtendo Dados da Ordem de Pagamento, se o Caso

   Select @PosOpg = PosOpg,
          @TipPag = TipPag,
          @DatPag = DatPag
    From MovOpg
     Where
      CodEmp = @CodEmp and
      CodOrg = @ForDvC and
      CodDoc = @NotDvC

   -- 13. Se Caixa Fechado, no caso de Ordem de Pagamento, Baixada via Caixa

   if IsNull( @TipPag, '' ) = 'C'
    if dbo.fn_CaixaFechado( @CodEmp, @DatPag, 1 ) > 0
     Return 13

   -- 14. Consiste se Ordem de Pagamento Baixada

   if @PosOpg <> 'P'
    Return 14
  End
 Else If @OrgLnc = 'V' -- Devolução de Venda
  Begin
   -- . Obtendo Dados da Ordem de Pagamento, se o Caso

   Select @PosOpg = PosOpg,
          @TipPag = TipPag,
          @DatPag = DatPag
    From MovOpg
     Where
      CodEmp = @CodEmp and
      CodDoc = @PedDvV and
      TipOpg = 'V'

   -- 13. Se Caixa Fechado, no caso de Ordem de Pagamento, Baixada via Caixa

   if IsNull( @TipPag, '' ) = 'C'
    If dbo.fn_CaixaFechado( @CodEmp, @DatPag, 1 ) > 0
     Return 13

   -- 14. Consiste se Ordem de Pagamento Baixada

   if @PosOpg <> 'P'
    Return 14
  End

 -- Nenhuma Consistência Detectada, Disponibilidade do Cancelamento Administrativo

 RETURN 0



GO
SET QUOTED_IDENTIFIER OFF 
GO
SET ANSI_NULLS ON 
GO