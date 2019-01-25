use nfe

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Mov_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 
  ---- Tabela Mov Insert
 
  insert into NFeE_Mov
        (CodEmp,       CnpjEmt,      InsEstEmt, CodNot,      Modelo,    Serie, 
         SubSerie,     DatNot,       BasIcm,    ValIcm,      BasSbt,    ValSbt,
         ValPro,       ValFre,       TipFre,    ValSeg,      ValDes,    ValOut, 
         BasIpi,       ValIpi,       ValPis,    ValCfs,      ValNot,    NtrOpr,
         ForPag,       ChvNfe,       ObsMov,    CnpjTrp,     InsEstTrp, NomeTrp, 
         NomFanTrp,    EnderecoTrp,  SetorTrp,  CidadeTrp,   UFTrp,     IBGETrp,
         CepTrp,       PlacaVei,     UFVei,     CnpjDst,     InsEstDst, PosMov,
         InsEstSbtEmt, NomEmt,       NomFanEmt, EnderecoEmt, SetorEmt,  CidadeEmt,
         UFEmt,        IBGEEmt,      CepEmt,    FoneEmt,     EmailEmt,  Status) 
  select CodEmp,       CnpjEmt,      InsEstEmt, CodNot,      Modelo,    Serie, 
         SubSerie,     DatNot,       BasIcm,    ValIcm,      BasSbt,    ValSbt,
         ValPro,       ValFre,       TipFre,    ValSeg,      ValDes,    ValOut, 
         BasIpi,       ValIpi,       ValPis,    ValCfs,      ValNot,    NtrOpr,
         ForPag,       ChvNfe,       ObsMov,    CnpjTrp,     InsEstTrp, NomeTrp, 
         NomFanTrp,    EnderecoTrp,  SetorTrp,  CidadeTrp,   UFTrp,     IBGETrp,
         CepTrp,       PlacaVei,     UFVei,     CnpjDst,     InsEstDst, PosMov,
         InsEstSbtEmt, NomEmt,       NomFanEmt, EnderecoEmt, SetorEmt,  CidadeEmt,
         UFEmt,        IBGEEmt,      CepEmt,    FoneEmt,     EmailEmt,  Status
  from NFeE_Mov_Old 
  where not exists (select CodEmp, CnpjEmt, InsEstEmt, CodNot, Modelo, Serie from NFeE_Mov
                     where NFeE_Mov.CodEmp    = NFeE_Mov_Old.CodEmp    and
                           NFeE_Mov.CnpjEmt   = NFeE_Mov_Old.CnpjEmt   and
                           NFeE_Mov.InsEstEmt = NFeE_Mov_Old.InsEstEmt and
                           NFeE_Mov.CodNot    = NFeE_Mov_Old.CodNot    and
                           NFeE_Mov.Modelo    = NFeE_Mov_Old.Modelo    and
                           NFeE_Mov.Serie     = NFeE_Mov_Old.Serie)   
  Print '   Insert... A Tabela NFeE_Mov Atualizada!'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Ite_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 
  ---- Tabela Ite Insert
 
  insert into NFeE_Ite
        (CodEmp,  CnpjEmt, InsEstEmt, CodNot, Modelo, Serie, 
         CodPro,  SeqIte,  NomPro,    CodNCM, SitTri, CodCfo, 
         Unidade, EAN13,   cEAN,      QtdPro, ValPro, ValDes, 
         ValTot,  BasIcm,  AlqIcm,    ValIcm, BasIpi, AlqIpi, 
         ValIpi,  BasSbt,  ValSbt,    ValSeg, ValFre, ValOut, 
         ValPis,  ValCfs) 
  select CodEmp,  CnpjEmt, InsEstEmt, CodNot, Modelo, Serie, 
         CodPro,  1,       NomPro,    CodNCM, SitTri, CodCfo, 
         Unidade, EAN13,   cEAN,      QtdPro, ValPro, ValDes, 
         ValTot,  BasIcm,  AlqIcm,    ValIcm, BasIpi, AlqIpi, 
         ValIpi,  BasSbt,  ValSbt,    ValSeg, ValFre, ValOut, 
         ValPis,  ValCfs
  from NFeE_Ite_Old
  where not exists (select CodEmp, CnpjEmt, InsEstEmt, CodNot, Modelo, Serie, CodPro from NFeE_Ite
                     where NFeE_Ite.CodEmp    = NFeE_Ite_Old.CodEmp    and
                           NFeE_Ite.CnpjEmt   = NFeE_Ite_Old.CnpjEmt   and
                           NFeE_Ite.InsEstEmt = NFeE_Ite_Old.InsEstEmt and
                           NFeE_Ite.CodNot    = NFeE_Ite_Old.CodNot    and
                           NFeE_Ite.Modelo    = NFeE_Ite_Old.Modelo    and
                           NFeE_Ite.Serie     = NFeE_Ite_Old.Serie     and   
                           NFeE_Ite.CodPro    = NFeE_Ite_Old.CodPro)   
  Print '   Insert... A Tabela NFeE_Ite Atualizada!'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Fat_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin
 
  ---- Tabela Fat Insert
 
  insert into NFeE_Fat
        (CodEmp, CnpjEmt, InsEstEmt, CodNot, Modelo, Serie,
         CodFat, DatFat,  ValFat)  
  select CodEmp, CnpjEmt, InsEstEmt, CodNot, Modelo, Serie, 
         CodFat, DatFat,  ValFat
  from NFeE_Fat_Old 
  where not exists (select CodEmp, CnpjEmt, InsEstEmt, CodNot, Modelo, Serie, CodFat from NFeE_Fat
                     where NFeE_Fat.CodEmp    = NFeE_Fat_Old.CodEmp    and
                           NFeE_Fat.CnpjEmt   = NFeE_Fat_Old.CnpjEmt   and
                           NFeE_Fat.InsEstEmt = NFeE_Fat_Old.InsEstEmt and
                           NFeE_Fat.CodNot    = NFeE_Fat_Old.CodNot    and
                           NFeE_Fat.Modelo    = NFeE_Fat_Old.Modelo    and
                           NFeE_Fat.Serie     = NFeE_Fat_Old.Serie     and   
                           NFeE_Fat.CodFat    = NFeE_Fat_Old.CodFat)   
  Print '   Insert... A Tabela NFeE_Fat Atualizada!'
 end
go

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFeE_Mov_Old]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 begin

 ---- Tabela Mov Update

  update NFeE_Mov set NFeE_Mov.PosMov = NFeE_Mov_Old.PosMov from NFeE_Mov_Old
                                  where NFeE_Mov_Old.CodEmp    = NFeE_Mov.CodEmp and
                                        NFeE_Mov_Old.CnpjEmt   = NFeE_Mov.CnpjEmt and
                                        NFeE_Mov_Old.InsEstEmt = NFeE_Mov.InsEstEmt and
                                        NFeE_Mov_Old.CodNot    = NFeE_Mov.CodNot and
                                        NFeE_Mov_Old.Modelo    = NFeE_Mov.Modelo and
                                        NFeE_Mov_Old.Serie     = NFeE_Mov.Serie
  Print '   PosMov... A Coluna NFeE_Mov Atualizada!'
 end
go