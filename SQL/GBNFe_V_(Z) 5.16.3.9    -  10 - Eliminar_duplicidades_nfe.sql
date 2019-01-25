/*
  SCRIPT PARA FAZER UMA COPIA BACKUP DAS TABELAS E ELIMINA OS REGISTRO IGUAIS OU MENORES QUE DATA
  DE EMISSÃO INDICADA NO TEXTO ; By Renildo ; 08.03.2016 ; 08:31
*/

USE NFe

-- 1. Veiculos

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_veiculo_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  select * into nfe_veiculo_old
   from nfe_veiculo
    where
     demi <= '2012-11-08'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_veiculo_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  Delete
   from nfe_veiculo
    where
     demi <= '2012-11-08'
 end
go

-- 2. Volumes

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_volume_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  select * into nfe_volume_old
   from nfe_volume
    where
     demi <= '2012-11-08'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_volume_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  Delete
   from nfe_volume
    where
     demi <= '2012-11-08'
 end
go

-- 3. Informações

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_informacoes_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  select * into nfe_informacoes_old
   from nfe_informacoes
    where
     demi <= '2012-11-08'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_informacoes_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  Delete
   from nfe_informacoes
    where
     demi <= '2012-11-08'
 end
go

-- 4. nfe_referenciada_mod1

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_mod1_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  select * into nfe_referenciada_mod1_old
   from nfe_referenciada_mod1
    where nnf in (41767)
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_mod1_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  Delete
   from nfe_referenciada_mod1
    where nnf = (41767)
 end
go

-- 5. notas_inutilizadas

if not exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[notas_inutilizadas_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  select * into notas_inutilizadas_old
   from notas_inutilizadas
    where nota in (4771)
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[notas_inutilizadas_old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
  Delete
   from notas_inutilizadas
    where nota = (4771)
 end
go