--*********************************************************
-- By Edson Lima -
-- Altera todas as procedures
-- Deve ser utilizada apartir da versão 5.15.11.3 do GBNFe
-- GBNFe_V_(Z) 5.15.11.3  - 07. Atera Tabelas
--             Implica na implantação do projeto NFCe
-- DATA DA PENULTIMA ALTERAÇÃO: 15/08/2019T1035
-- DATA DA ÚLTIMA ALTERAÇÃO...: 16/11/2020T1730
--*********************************************************

USE NFe
GO

-----------------------------------------------------------------------------

-- a. Inclusão de atributos

-- 1. Emitente
--- 1.1. Emitente.Certificado_CSC    -    Inclusão da coluna Certificado_CSC como tipo varchar(100) null 
Print 'Manutenção na Tabela Emitente...'

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'CSC')
 begin
  Alter Table emitente
   add CSC VarChar(100) null

  Print 'emitente.CSC........... Coluna Adicionada!'
 end
GO

--- 1.2. Emitente.Certificado_IdCSC    -    Inclusão da coluna Certificado_IdCSC como tipo varchar(50) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'IdCSC')
 begin
  Alter Table emitente
   add IdCSC VarChar(50) null

  Print 'emitente.IdCSC........... Coluna Adicionada!'
 end
GO

--- 1.3. Emitente.DANFE_ImpNFe    -    Inclusão da coluna DANFE_ImpNFe como tipo varchar(50) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_ImpNFe')
 begin
  Alter Table emitente
   add DANFE_ImpNFe VarChar(50) null

  Print 'emitente.DANFE_ImpNFe........... Coluna Adicionada!'
 end
GO

--- 1.4. Emitente.DANFE_ImpNFCe    -    Inclusão da coluna DANFE_ImpNFCe como tipo varchar(50) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_ImpNFCe')
 begin
  Alter Table emitente
   add DANFE_ImpNFCe VarChar(50) null

  Print 'emitente.DANFE_ImpNFCe........... Coluna Adicionada!'
 end
GO

--- 1.5. Emitente.DANFE_ExibeFatura    -    Inclusão da coluna DANFE_ExibeFatura como tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_ExibeFatura')
 begin
  Alter Table emitente
   add DANFE_ExibeFatura Char(1) null

  Print 'emitente.DANFE_ExibeFatura........... Coluna Adicionada!'
 end
GO

--- 1.6. Emitente.DANFE_ExpandiLogo    -    Inclusão da coluna DANFE_ExpandiLogo como tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_ExpandiLogo')
 begin
  Alter Table emitente
   add DANFE_ExpandiLogo Char(1) null

  Print 'emitente.DANFE_ExpandiLogo........... Coluna Adicionada!'
 end
GO

--- 1.7. Emitente.DANFE_TipoDANF    -    Inclusão da coluna DANFE_TipoDANF como tipo char(10) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_TipoDANF')
 begin
  Alter Table emitente
   add DANFE_TipoDANF Char(1) null

  Print 'emitente.DANFE_TipoDANF........... Coluna Adicionada!'
 end
GO

--- 1.8. Emitente.DANFE_TipoDANFCE    -    Inclusão da coluna DANFE_TipoDANFCE como tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_TipoDANFCE')
 begin
  Alter Table emitente
   add DANFE_TipoDANFCE Char(1) null

  Print 'emitente.DANFE_TipoDANFCE........... Coluna Adicionada!'
 end
GO

--- 1.9. Emitente.fone    -    Alteração da coluna fone para tipo char(20) null 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'fone')
 begin
  Alter Table emitente
   Alter Column fone Char(20) null

  Print 'emitente.fone........... Coluna Alterada!'
 end
GO

--- 1.10. Emitente.DANFE_QtdCopNFCe    -    Cria da coluna QtdCopNFCe para tipo int) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_QtdCopNFCe')
 begin
  Alter Table emitente
   add DANFE_QtdCopNFCe int null

  Print 'emitente.DANFE_QtdCopNFCe........... Coluna Adicionada!'
 end
GO

--- 1.11. Emitente.DANFE_EdEmail    -    Cria da coluna DANFE_EdEmail para tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_EdEmail')
 begin
  Alter Table emitente
   add DANFE_EdEmail char(1) null

  Print 'emitente.DANFE_EdEmail........... Coluna Adicionada!'
 end
GO

--- 1.12. Emitente.OUTROS_ExcTmp    -    Cria da coluna OUTROS_ExcTmp para tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'OUTROS_ExcTmp')
 begin
  Alter Table emitente
   add OUTROS_ExcTmp char(1) null

  Print 'emitente.OUTROS_ExcTmp........... Coluna Adicionada!'
 end
GO

--- 1.13. Emitente.OUTROS_DtIni    -    Cria da coluna OUTROS_DtIni para tipo datetime(8) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'OUTROS_DtIni')
 begin
  Alter Table emitente
   add OUTROS_DtIni datetime null

  Print 'emitente.OUTROS_DtIni........... Coluna Adicionada!'
 end
GO

--- 1.14. Removendo a coluna Emitente.ERP
--- Código que solta uma coluna com uma restrição padrão
DECLARE @ConstraintName nvarchar(200)
SELECT @ConstraintName = Name FROM SYS.DEFAULT_CONSTRAINTS WHERE PARENT_OBJECT_ID = OBJECT_ID('emitente') AND PARENT_COLUMN_ID = (SELECT column_id FROM sys.columns WHERE NAME = N'ERP' AND object_id = OBJECT_ID(N'emitente'))
IF @ConstraintName IS NOT NULL
EXEC('ALTER TABLE emitente DROP CONSTRAINT ' + @ConstraintName)
IF EXISTS (SELECT * FROM syscolumns WHERE id=object_id('emitente') AND name='ERP')
 begin
  EXEC('ALTER TABLE emitente DROP COLUMN ERP')
  Print 'Emitente.ERP........... Coluna Removida!'
 end

--- 1.14a. Removendo a coluna Emitente.DBERP
--- Código que solta uma coluna com uma restrição padrão
DECLARE @ConstraintDBERP nvarchar(200)
SELECT @ConstraintDBERP = Name FROM SYS.DEFAULT_CONSTRAINTS WHERE PARENT_OBJECT_ID = OBJECT_ID('emitente') AND PARENT_COLUMN_ID = (SELECT column_id FROM sys.columns WHERE NAME = N'DBERP' AND object_id = OBJECT_ID(N'emitente'))
IF @ConstraintDBERP IS NOT NULL
EXEC('ALTER TABLE emitente DROP CONSTRAINT ' + @ConstraintDBERP)
IF EXISTS (SELECT * FROM syscolumns WHERE id=object_id('emitente') AND name='DBERP')
 begin
  EXEC('ALTER TABLE emitente DROP COLUMN DBERP')
  Print 'Emitente.DBERP........... Coluna Removida!'
 end

--- 1.15. Emitente.CodMtC    -    Inclusão da coluna CodMtC como tipo int null

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'CodMtC')
 begin
  Alter Table emitente
   add CodMtC Int null
  Print 'emitente.CodMtC........... Coluna Adicionada!'
 end
GO

--- 1.16. Emitente.CodMtD    -    Inclusão da coluna CodMtD como tipo int null

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'CodMtD')
 begin
  Alter Table emitente
   add CodMtD Int null
  Print 'emitente.CodMtD........... Coluna Adicionada!'
 end
GO

--- 1.17. Emitente.CodMtI    -    Inclusão da coluna CodMtI como tipo int null

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'CodMtI')
 begin
  Alter Table emitente
   add CodMtI Int null
  Print 'emitente.CodMtI........... Coluna Adicionada!'
 end
GO

--- 1.19. Emitente.Email_TLS      -    Inclusão da coluna Email_TLS como tipo char(1) not null defaut 'N'

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'Email_TLS')
 begin
  Alter Table emitente
   add Email_TLS Char(1) not null Default('N')
  Print 'emitente.Email_TLS.............. Coluna Adicionada!'
 end
GO

--- 1.20. Emitente.Versao         -    Inclusão da coluna Versao como tipo varchar(6) not null defaut 've310'

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'Versao')
 begin
  Alter Table emitente
   add Versao Varchar(6) not null Default('ve310')
  Print 'emitente.Versao.............. Coluna Adicionada!'
 end
GO

--- 1.21. Emitente.DANFE_ForSai    -    Cria da coluna DANFE_ForSai para tipo char(1) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'DANFE_ForSai')
 begin
  Alter Table emitente
   add DANFE_ForSai char(1) null

  Print 'emitente.DANFE_ForSai........... Coluna Adicionada!'
 end
GO

--- 1.22. Emitente.Email_Pass    -    Alteração da coluna Email_Pass para tipo varchar(255) null 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'Email_Pass')
 begin
  Alter Table emitente
   Alter Column Email_Pass Varchar(255) null

  Print 'emitente.Email_Pass........... Coluna Alterada!'
 end
GO

--- 1.23. Emitente.RT_UFExige    -    Criação da coluna RT_UFExige tipo char(1) not null 
--- RT = Responsável Técnico

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_UFExige')
 begin
  Alter Table emitente
   add RT_UFExige char(1) not null Default('N')

  Print 'emitente.RT_UFExige........... Coluna Adicionada!'
 end
GO

--- 1.24. Emitente.RT_idCSRT    -    Criação da coluna RT_idCSRT tipo char(02) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_idCSRT')
 begin
  Alter Table emitente
   add RT_idCSRT char(02) not null Default('0')

  Print 'emitente.RT_idCSRT........... Coluna Adicionada!'
 end
GO

--- 1.25. Emitente.RT_CSRT    -    Criação da coluna RT_CSRT tipo varchar(60) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_CSRT')
 begin
  Alter Table emitente
   add RT_CSRT varchar(60) not null Default('')

  Print 'emitente.RT_CSRT........... Coluna Adicionada!'
 end
GO

--- 1.26. Emitente.RT_CNPJ    -    Criação da coluna RT_CNPJ tipo char(14) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_CNPJ')
 begin
  Alter Table emitente
   add RT_CNPJ char(14) not null Default('05869444000181')

  Print 'emitente.RT_CNPJ........... Coluna Adicionada!'
 end
GO

--- 1.27. Emitente.RT_xContato    -    Criação da coluna RT_xContato tipo varchar(60) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_xContato')
 begin
  Alter Table emitente
   add RT_xContato varchar(60) not null Default('GB Informatica Ltda')

  Print 'emitente.RT_xContato........... Coluna Adicionada!'
 end
GO

--- 1.28. Emitente.RT_email    -    Criação da coluna RT_email tipo varchar(60) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_email')
 begin
  Alter Table emitente
   add RT_email varchar(60) not null Default('gbinformatica@terra.com.br')

  Print 'emitente.RT_email........... Coluna Adicionada!'
 end
GO

--- 1.29. Emitente.RT_fone    -    Criação da coluna RT_fone tipo char(14) null 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'emitente' and C.name = 'RT_fone')
 begin
  Alter Table emitente
   add RT_fone char(14) not null Default('62939982588')

  Print 'emitente.RT_fone........... Coluna Adicionada!'
 end
GO

--*********************************************************
-- 2. NFe_Xml
Print 'Manutenção na Tabela NFe_Xml...'

--- 2.0. NFe.Xml (deleta o indice i_nfe_xml)

IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'i_nfe_xml') 
 begin
  DROP INDEX nfe_Xml.i_nfe_xml
  Print 'NFe.i_nfe_xml........... Indice Excluído!'
 end
GO

--- 2.1. NFe_Xml.Nota9    -    Inclusão da coluna xml_nota9 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota9')
 begin
  Alter Table nfe_xml
   add xml_nota9 Text null
  Print 'nfe_xml.xml_nota9........... Coluna Adicionada!'
 end
GO

--- 2.2. NFe_Xml.Nota10   -    Inclusão da coluna xml_nota10 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota10')
 begin
  Alter Table nfe_xml
   add xml_nota10 Text null
  Print 'nfe_xml.xml_nota10........... Coluna Adicionada!'
 end
GO

--- 2.3. NFe_Xml.Nota11    -    Inclusão da coluna xml_nota11 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota11')
 begin
  Alter Table nfe_xml
   add xml_nota11 Text null
  Print 'nfe_xml.xml_nota11........... Coluna Adicionada!'
 end
GO

--- 2.4. NFe_Xml.Nota12    -    Inclusão da coluna xml_nota12 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota12')
 begin
  Alter Table nfe_xml
   add xml_nota12 Text null
  Print 'nfe_xml.xml_nota12........... Coluna Adicionada!'
 end
GO

--- 2.5. NFe_Xml.Nota13    -    Inclusão da coluna xml_nota13 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota13')
 begin
  Alter Table nfe_xml
   add xml_nota13 Text null
  Print 'nfe_xml.xml_nota13........... Coluna Adicionada!'
 end
GO

--- 2.6. NFe_Xml.Nota14    -    Inclusão da coluna xml_nota14 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota14')
 begin
  Alter Table nfe_xml
   add xml_nota14 Text null
  Print 'nfe_xml.xml_nota14........... Coluna Adicionada!'
 end
GO

--- 2.7. NFe_Xml.Nota15    -    Inclusão da coluna xml_nota15 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota15')
 begin
  Alter Table nfe_xml
   add xml_nota15 Text null
  Print 'nfe_xml.xml_nota15........... Coluna Adicionada!'
 end
GO

--- 2.8. NFe_Xml.Nota16    -    Inclusão da coluna xml_nota16 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota16')
 begin
  Alter Table nfe_xml
   add xml_nota16 Text null
  Print 'nfe_xml.xml_nota16........... Coluna Adicionada!'
 end
GO

--- 2.9. NFe_Xml.Nota17    -    Inclusão da coluna xml_nota17 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota17')
 begin
  Alter Table nfe_xml
   add xml_nota17 Text null
  Print 'nfe_xml.xml_nota17........... Coluna Adicionada!'
 end
GO

--- 2.10. NFe_Xml.Nota18    -    Inclusão da coluna xml_nota18 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota18')
 begin
  Alter Table nfe_xml
   add xml_nota18 Text null
  Print 'nfe_xml.xml_nota18........... Coluna Adicionada!'
 end
GO

--- 2.11. NFe_Xml.Nota19    -    Inclusão da coluna xml_nota19 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota19')
 begin
  Alter Table nfe_xml
   add xml_nota19 Text null
  Print 'nfe_xml.xml_nota19........... Coluna Adicionada!'
 end
GO

--- 2.12. NFe_Xml.Nota20    -    Inclusão da coluna xml_nota20 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota20')
 begin
  Alter Table nfe_xml
   add xml_nota20 Text null
  Print 'nfe_xml.xml_nota20........... Coluna Adicionada!'
 end
GO

--- 2.13. NFe_Xml.Nota21    -    Inclusão da coluna xml_nota21 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota21')
 begin
  Alter Table nfe_xml
   add xml_nota21 Text null
  Print 'nfe_xml.xml_nota21........... Coluna Adicionada!'
 end
GO

--- 2.14. NFe_Xml.Nota22    -    Inclusão da coluna xml_nota22 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota22')
 begin
  Alter Table nfe_xml
   add xml_nota22 Text null
  Print 'nfe_xml.xml_nota22........... Coluna Adicionada!'
 end
GO

--- 2.15. NFe_Xml.Nota23    -    Inclusão da coluna xml_nota23 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota23')
 begin
  Alter Table nfe_xml
   add xml_nota23 Text null
  Print 'nfe_xml.xml_nota23........... Coluna Adicionada!'
 end
GO

--- 2.16. NFe_Xml.Nota24    -    Inclusão da coluna xml_nota24 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota24')
 begin
  Alter Table nfe_xml
   add xml_nota24 Text null
  Print 'nfe_xml.xml_nota24........... Coluna Adicionada!'
 end
GO

--- 2.17. NFe_Xml.Nota25    -    Inclusão da coluna xml_nota25 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota25')
 begin
  Alter Table nfe_xml
   add xml_nota25 Text null
  Print 'nfe_xml.xml_nota25........... Coluna Adicionada!'
 end
GO

--- 2.18. NFe_Xml.Nota26    -    Inclusão da coluna xml_nota26 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota26')
 begin
  Alter Table nfe_xml
   add xml_nota26 Text null
  Print 'nfe_xml.xml_nota26........... Coluna Adicionada!'
 end
GO

--- 2.19. NFe_Xml.Nota27    -    Inclusão da coluna xml_nota27 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota27')
 begin
  Alter Table nfe_xml
   add xml_nota27 Text null
  Print 'nfe_xml.xml_nota27........... Coluna Adicionada!'
 end
GO

--- 2.20. NFe_Xml.Nota28    -    Inclusão da coluna xml_nota28 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota28')
 begin
  Alter Table nfe_xml
   add xml_nota28 Text null
  Print 'nfe_xml.xml_nota28........... Coluna Adicionada!'
 end
GO

--- 2.21. NFe_Xml.Nota29    -    Inclusão da coluna xml_nota29 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota29')
 begin
  Alter Table nfe_xml
   add xml_nota29 Text null
  Print 'nfe_xml.xml_nota29........... Coluna Adicionada!'
 end
GO

--- 2.22. NFe_Xml.Nota30    -    Inclusão da coluna xml_nota30 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota30')
 begin
  Alter Table nfe_xml
   add xml_nota30 Text null
  Print 'nfe_xml.xml_nota30........... Coluna Adicionada!'
 end
GO

--- 2.23. NFe_Xml.Nota31    -    Inclusão da coluna xml_nota31 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota31')
 begin
  Alter Table nfe_xml
   add xml_nota31 Text null
  Print 'nfe_xml.xml_nota31........... Coluna Adicionada!'
 end
GO

--- 2.24. NFe_Xml.Nota32    -    Inclusão da coluna xml_nota32 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota32')
 begin
  Alter Table nfe_xml
   add xml_nota32 Text null
  Print 'nfe_xml.xml_nota32........... Coluna Adicionada!'
 end
GO

--- 2.25. NFe_Xml.Nota33    -    Inclusão da coluna xml_nota33 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota33')
 begin
  Alter Table nfe_xml
   add xml_nota33 Text null
  Print 'nfe_xml.xml_nota33........... Coluna Adicionada!'
 end
GO

--- 2.26. NFe_Xml.Nota34    -    Inclusão da coluna xml_nota34 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota34')
 begin
  Alter Table nfe_xml
   add xml_nota34 Text null
  Print 'nfe_xml.xml_nota34........... Coluna Adicionada!'
 end
GO

--- 2.27. NFe_Xml.Nota35    -    Inclusão da coluna xml_nota35 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota35')
 begin
  Alter Table nfe_xml
   add xml_nota35 Text null
  Print 'nfe_xml.xml_nota35........... Coluna Adicionada!'
 end
GO

--- 2.28. NFe_Xml.Nota36    -    Inclusão da coluna xml_nota36 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota36')
 begin
  Alter Table nfe_xml
   add xml_nota36 Text null
  Print 'nfe_xml.xml_nota36........... Coluna Adicionada!'
 end
GO

--- 2.29. NFe_Xml.Nota37    -    Inclusão da coluna xml_nota37 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota37')
 begin
  Alter Table nfe_xml
   add xml_nota37 Text null
  Print 'nfe_xml.xml_nota37........... Coluna Adicionada!'
 end
GO

--- 2.30. NFe_Xml.Nota38    -    Inclusão da coluna xml_nota38 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota38')
 begin
  Alter Table nfe_xml
   add xml_nota38 Text null
  Print 'nfe_xml.xml_nota38........... Coluna Adicionada!'
 end
GO

--- 2.31. NFe_Xml.Nota39    -    Inclusão da coluna xml_nota39 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota39')
 begin
  Alter Table nfe_xml
   add xml_nota39 Text null
  Print 'nfe_xml.xml_nota39........... Coluna Adicionada!'
 end
GO

--- 2.32. NFe_Xml.Nota40    -    Inclusão da coluna xml_nota40 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota40')
 begin
  Alter Table nfe_xml
   add xml_nota40 Text null
  Print 'nfe_xml.xml_nota40........... Coluna Adicionada!'
 end
GO

--- 2.33. NFe_Xml.Serie    -    Inclusão da coluna Serie como tipo char(3) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'Serie')
 begin
  Alter Table nfe_xml
   add Serie char (03) not null Default('1')
  Print 'nfe_xml.Serie........... Coluna Adicionada!'
 end
GO

--- 2.34. NFe_Xml.codigo_loja    -    Alteração do codigo_loja para not null

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'codigo_loja')
 begin
  Alter Table nfe_xml
   Alter Column  codigo_loja int not null

  Print 'NFe_Xml.codigo_loja........... Coluna Alterada!'
 end
GO

--- 2.35. NFe_Xml.dEmi    -    Alteração do dEmi para not null

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'dEmi')
 begin
  Alter Table nfe_xml
   Alter Column  dEmi datetime not null

  Print 'NFe_Xml.dEmi........... Coluna Alterada!'
 end
GO

--- 2.36. NFe_Xml.nNF    -    Alteração do nNF para not null

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'nNF')
 begin
  Alter Table nfe_xml
   Alter Column  nNF bigint not null

  Print 'NFe_Xml.nNF........... Coluna Alterada!'
 end
GO


--*********************************************************
-- 3. NFe_duplicatas
Print 'Manutenção na Tabela de duplicatas...'

--- 3.1. tPag    -    Inclusão da coluna tPag como tipo char (2) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'tPag')
 begin
  Alter Table nfe_duplicatas
   add tPag   char (2) null

  Print 'nfe_duplicatas.tPag........... Coluna Adicionada!'
 end
GO

--- 3.1a. IndPag    -    Inclusão da coluna IndPag como tipo char (2) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'IndPag')
 begin
  Alter Table nfe_duplicatas
   add IndPag   char (1) null

  Print 'nfe_duplicatas.IndPag........... Coluna Adicionada!'
 end
GO

--- 3.2. cCnpj    -    Inclusão da coluna cCnpj como tipo char (14) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'cCnpj')
 begin
  Alter Table nfe_duplicatas
   add cCnpj   char (14) null

  Print 'nfe_duplicatas.cCnpj........... Coluna Adicionada!'
 end
GO

--- 3.3. tBand    -    Inclusão da coluna cCnpj como tipo char (2) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'tBand')
 begin
  Alter Table nfe_duplicatas
   add tBand   char (2) null

  Print 'nfe_duplicatas.tBand........... Coluna Adicionada!'
 end
GO

--- 3.4. cAut     -    Inclusão da coluna cAut como tipo char (20) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'cAut')
 begin
  Alter Table nfe_duplicatas
   add cAut   char (20) null

  Print 'nfe_duplicatas.cAut........... Coluna Adicionada!'
 end
GO

--- 3.5. nfe_duplicatas.Serie     -    Inclusão da coluna Serie como tipo char(3) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'Serie')
 begin
  Alter Table nfe_duplicatas
   add Serie   char (03) not null Default('1')

  Print 'nfe_duplicatas.Serie........... Coluna Adicionada!'
 end
GO

--- 3.6. nfe_duplicatas.vTroco     -    Inclusão da coluna vTroco como tipo numeric(16,2) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_duplicatas' and C.name = 'vTroco')
 begin
  Alter Table nfe_duplicatas
   add vTroco   numeric(16,2) null

  Print 'nfe_duplicatas.vTroco........... Coluna Adicionada!'
 end
GO

-----------------------------------------------------------------------------

/*
  Script para Atualização da Versão 9.0.8 - Release 282, NFe {INTEGRAÇÃO}
  By Renildo ; 19.11.2015 ; 11:32
*/

-- 0. Renomeando Atributo {FORA DA SEQUENCIA, DEVIDO INCLUSÃO COM MESMO NOME}

--*********************************************************
-- 1. NFe_Referenciada_Cupon
--- 1.1. NFe_Referenciada_Cupon.Modelo

if  exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'Modelo') and
not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'Mod')
 begin
  EXEC sp_rename 'NFe_Referenciada_Cupon.[Modelo]', 'Mod', 'COLUMN'

  Print 'NFe_Referenciada_Cupon.Modelo........ Coluna Renomeada!'
 end
GO

-- 2. NFe_Referenciada_Mod1
--- 2.1. NFe_Referenciada_Mod1.Modelo

if  exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Mod1' and C.name = 'Modelo') and
not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Mod1' and C.name = 'Mod')
 begin
  EXEC sp_rename 'NFe_Referenciada_Mod1.Modelo', 'Mod', 'COLUMN'

  Print 'NFe_Referenciada_Mod1.Modelo........ Coluna Renomeada!'
 end
GO

--- 2.2. NFe_Referenciada_Mod1.Serie

if  exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Mod1' and C.name = 'Serie') and
not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Mod1' and C.name = 'Ser')
 begin
  EXEC sp_rename 'NFe_Referenciada_Mod1.Serie', 'Ser', 'COLUMN'

  Print 'NFe_Referenciada_Mod1.Serie........ Coluna Renomeada!'
 end
GO

--- 2.3. NFe_Referenciada_mod1.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'Modelo')
 begin
  Alter Table NFe_Referenciada_mod1
   Add Modelo Char(02) Not Null Default('55')

  Print 'NFe_Referenciada_mod1.Modelo.. Coluna Adicionada!'
 end
GO

--- 2.5. NFe_Referenciada_mod1.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'Serie')
 begin
  Alter Table NFe_Referenciada_mod1
   Add Serie Char(03) Not Null Default('1')

  Print 'NFe_Referenciada_mod1.Serie.. Coluna Adicionada!'
 end
GO

--- 2.6. NFe_Referenciada_mod1.codigo_loja

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'codigo_loja')
 begin
  Alter Table NFe_Referenciada_mod1
   Alter Column  codigo_loja int not null

  Print 'NFe_Referenciada_mod1.codigo_loja........... Coluna Alterada!'
 end
GO

--- 2.7. NFe_Referenciada_mod1.dEmi

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'dEmi')
 begin
  Alter Table NFe_Referenciada_mod1
   Alter Column  dEmi datetime not null

  Print 'NFe_Referenciada_mod1.dEmi........... Coluna Alterada!'
 end
GO

--- 2.8. NFe_Referenciada_mod1.nNF

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'nNF')
 begin
  Alter Table NFe_Referenciada_mod1
   Alter Column  nNF bigint not null

  Print 'NFe_Referenciada_mod1.nNF........... Coluna Alterada!'
 end
GO

--- 2.9. NFe_Referenciada_mod1.Chave_nfe

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_mod1' and C.name = 'Chave_nfe')
 begin
  Alter Table NFe_Referenciada_mod1
   Add Chave_nfe Varchar(50) Null

  Print 'NFe_Referenciada_mod1.Chave_nfe.. Coluna Adicionada!'
 end
GO

-- 3. NFe_Referenciada_prural
--- 3.1. NFe_Referenciada_prural.Modelo

if  exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Modelo') and
not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Mod')
 begin
  EXEC sp_rename 'NFe_Referenciada_prural.Modelo', 'Mod', 'COLUMN'

  Print 'NFe_Referenciada_prural.Modelo........ Coluna Renomeada para Mod!'
 end
GO

--- 3.2. NFe_Referenciada_prural.Serie

if  exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Serie') and
not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Ser')
 begin
  EXEC sp_rename 'NFe_Referenciada_prural.Serie', 'Ser', 'COLUMN'

  Print 'NFe_Referenciada_prural.Serie........ Coluna Renomeada para Ser!'
 end
GO

--- 3.3. NFe_Referenciada_prural.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Modelo')
 begin
  Alter Table NFe_Referenciada_prural
   Add Modelo Char(02) Not Null Default('55')

  Print 'NFe_Referenciada_prural.Modelo........... Coluna Adicionada!'
 end
GO

--- 3.5. NFe_Referenciada_prural.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'Serie')
 begin
  Alter Table NFe_Referenciada_prural
   Add Serie Char(03) Not Null Default('1')

  Print 'NFe_Referenciada_prural.Serie.. Coluna Adicionada!'
 end
GO

--- 3.6. NFe_Referenciada_prural.codigo_loja

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'codigo_loja')
 begin
  Alter Table NFe_Referenciada_prural
   Alter Column  codigo_loja int not null

  Print 'NFe_Referenciada_prural.codigo_loja........... Coluna Alterada!'
 end
GO

--- 3.7. NFe_Referenciada_prural.dEmi

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'dEmi')
 begin
  Alter Table NFe_Referenciada_prural
   Alter Column  dEmi datetime not null

  Print 'NFe_Referenciada_prural.dEmi........... Coluna Alterada!'
 end
GO

--- 3.8. NFe_Referenciada_prural.nNF

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_prural' and C.name = 'nNF')
 begin
  Alter Table NFe_Referenciada_prural
   Alter Column  nNF bigint not null

  Print 'NFe_Referenciada_prural.nNF........... Coluna Alterada!'
 end
GO

-- a. Inclusão de atributos

-- 1. NFe_Duplicatas
--- 1.1. NFe_Duplicatas.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Duplicatas' and C.name = 'Modelo')
 begin
  Alter Table NFe_Duplicatas
   Add Modelo Char(02) Not Null Default('55')

  Print '1.1.NFe_Duplicatas.Modelo........... Coluna Adicionada!'
 end
GO

-- 2. NFe_Faturas
--- 2.1. NFe_Faturas.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Faturas' and C.name = 'Modelo')
 begin
  Alter Table NFe_Faturas
   Add Modelo Char(02) Not Null Default('55')

  Print '2.1. NFe_Faturas.Modelo........... Coluna Adicionada!'
 end
GO

--- 2.1. NFe_Faturas.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Faturas' and C.name = 'Serie')
 begin
  Alter Table NFe_Faturas
   Add Serie Char(03) not null Default('001')

  Print '2.1. NFe_Faturas.Serie........... Coluna Adicionada!'
 end
GO

-- 3. NFe_Informacoes
--- 3.1. NFe_Informacoes.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Informacoes' and C.name = 'Modelo')
 begin
  Alter Table NFe_Informacoes
   Add Modelo Char(02) Not Null Default('55')

  Print '3.1. NFe_Informacoes.Modelo........... Coluna Adicionada!'
 end
GO

--- 3.2. NFe_Informacoes.inf_campo

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Informacoes' and C.name = 'inf_campo')
 begin
  Alter Table NFe_Informacoes
   Alter Column  inf_campo varchar(20) not null

  Print '3.2. NFe_Informacoes.inf_campo........... Coluna Alterada!'
 end
GO

--- 3.2a. NFe_Informacoes.inf_campo

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Informacoes' and C.name = 'inf_campo')
 begin
  Alter Table NFe_Informacoes
   Add  inf_campo varchar(20) not null

  Print '3.2a. NFe_Informacoes.inf_campo........... Coluna Adicionada!'
 end
GO

--- 3.3. NFe_Informacoes.Serie

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Informacoes' and C.name = 'Serie')
 begin
  Alter Table NFe_Informacoes
   Add  Serie char(03) not null Default('1')

  Print '3.3. NFe_Informacoes.Serie........... Coluna Adicionada!'
 end
GO

--*********************************************************
-- 4. NFe_Itens
--- 4.1. NFe_Itens.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'Modelo')
 begin
  Alter Table NFe_Itens
   Add Modelo Char(02) Not Null Default('55')

  Print '4.1. NFe_Itens.Modelo......... Coluna Adicionada!'
 end
GO

--- 4.2. NFe_Itens.CEST

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'codigo_CEST')
 begin
  exec sp_rename 'NFe_Itens.codigo_CEST', 'CEST', 'column'

  Print '4.2. NFe_CEST........... Coluna Renomeada!'
 end
GO

--- 4.3. NFe_Itens.CEST

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'CEST')
 begin
  Alter Table NFe_Itens
   Add CEST Char(07) Null

  Print '4.3. NFe_Itens.CEST......... Coluna Adicionada!'
 end
GO

--- 4.4. NFe_Itens.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'Serie')
 begin
  Alter Table NFe_Itens
   Add serie Char(03) not null Default('1')

  Print '4.4. NFe_Itens.Serie......... Coluna Adicionada!'
 end
GO

--- 4.5. NFe_Itens.vBCUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCUFDest')
 begin
  Alter Table NFe_Itens
   Add vBCUFDest  numeric(12,2) Null

  Print '4.5. NFe_Itens.vBCUFDest........... Coluna Adicionada!'
 end
GO

--- 4.6. NFe_Itens.pFCPUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pFCPUFDest')
 begin
  Alter Table NFe_Itens
   Add pFCPUFDest  numeric(8,4) Null

  Print '4.6. NFe_Itens.pFCPUFDest........... Coluna Adicionada!'
 end
GO

--- 4.7. NFe_Itens.pICMSUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSUFDest')
 begin
  Alter Table NFe_Itens
   Add pICMSUFDest  numeric(8,4) Null

  Print '4.7. NFe_Itens.pICMSUFDest........... Coluna Adicionada!'
 end
GO

--- 4.8. NFe_Itens.pICMSInter 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSInter')
 begin
  Alter Table NFe_Itens
   Add pICMSInter  numeric(5,2) Null

  Print '4.8. NFe_Itens.pICMSInter........... Coluna Adicionada!'
 end
GO

--- 4.9. NFe_Itens.pICMSInterPart 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSInterPart')
 begin
  Alter Table NFe_Itens
   Add pICMSInterPart  numeric(8,4) Null

  Print '4.9. NFe_Itens.pICMSInterPart........... Coluna Adicionada!'
 end
GO

--- 4.10. NFe_Itens.VFCPUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VFCPUFDest')
 begin
  Alter Table NFe_Itens
   Add VFCPUFDest  numeric(13,2) Null

  Print '4.10. NFe_Itens.VFCPUFDest........... Coluna Adicionada!'
 end
GO

--- 4.11. NFe_Itens.VICMSUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VICMSUFDest')
 begin
  Alter Table NFe_Itens
   Add VICMSUFDest  numeric(12,2) Null

  Print '4.11. NFe_Itens.VICMSUFDest........... Coluna Adicionada!'
 end
GO

--- 4.12. NFe_Itens.VICMSUFRemet 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VICMSUFRemet')
 begin
  Alter Table NFe_Itens
   Add VICMSUFRemet  numeric(12,2) Null

  Print '4.12. NFe_Itens.VICMSUFRemet........... Coluna Adicionada!'
 end
GO

--- 4.13. NFe_Itens.vBCUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCUFDest')
 begin
  Alter Table NFe_Itens
   Alter Column vBCUFDest  numeric(16,2) Null

  Print '4.13. NFe_Itens.vBCUFDest........... Coluna Alterada!'
 end
GO

--- 4.14. NFe_Itens.pFCPUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pFCPUFDest')
 begin
  Alter Table NFe_Itens
   Alter Column pFCPUFDest  numeric(8,4) Null

  Print '4.14. NFe_Itens.pFCPUFDest........... Coluna Alterada!'
 end
GO

--- 4.15. NFe_Itens.pICMSUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSUFDest')
 begin
  Alter Table NFe_Itens
   Alter Column pICMSUFDest  numeric(8,4) Null

  Print '4.15. NFe_Itens.pICMSUFDest........... Coluna Alterada!'
 end
GO

--- 4.16. NFe_Itens.pICMSInter 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSInter')
 begin
  Alter Table NFe_Itens
   Alter Column pICMSInter  numeric(5,2) Null

  Print '4.16. NFe_Itens.pICMSInter........... Coluna Alterada!'
 end
GO

--- 4.17. NFe_Itens.pICMSInterPart 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pICMSInterPart')
 begin
  Alter Table NFe_Itens
   Alter Column pICMSInterPart  numeric(8,4) Null

  Print '4.17. NFe_Itens.pICMSInterPart........... Coluna Alterada!'
 end
GO

--- 4.18. NFe_Itens.VFCPUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VFCPUFDest')
 begin
  Alter Table NFe_Itens
   Alter Column VFCPUFDest  numeric(16,2) Null

  Print '4.18. NFe_Itens.VFCPUFDest........... Coluna Alterada!'
 end
GO

--- 4.18. NFe_Itens.VICMSUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VICMSUFDest')
 begin
  Alter Table NFe_Itens
   Alter Column VICMSUFDest  numeric(16,2) Null

  Print '4.18. NFe_Itens.VICMSUFDest........... Coluna Alterada!'
 end
GO

--- 4.19. NFe_Itens.VICMSUFRemet 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'VICMSUFRemet')
 begin
  Alter Table NFe_Itens
   Alter Column VICMSUFRemet  numeric(12,2) Null

  Print '4.19. NFe_Itens.VICMSUFRemet........... Coluna Alterada!'
 end
GO

--- 4.20. Adicionado a coluna NFe_Itens.vICMSDeson

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSDeson')
 begin
  Alter Table NFe_Itens
   Add vICMSDeson  decimal(12,2) Null

  Print '4.20. NFe_Itens.vICMSDeson........... Coluna Adicionada!'
 end
GO

--- 4.20a. Alterando a coluna NFe_Itens.vICMSDeson

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSDeson')
 begin
  Alter Table NFe_Itens
   Alter Column vICMSDeson  numeric(16,2) Null

  Print '4.20a. NFe_Itens.vICMSDeson........... Coluna Alterada!'
 end
GO

--- 4.21. Adicionado a coluna NFe_Itens.motDesICMS

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'motDesICMS')
 begin

  Alter Table NFe_Itens
   Add motDesICMS Char(2) null

  Print '4.21. NFe_Itens.motDesICMS........... Coluna Adicionada!'
 end
GO

--- 4.22. Removendo a coluna NFe_Itens.nLote

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'nLote')
 begin

  Alter Table NFe_Itens
   Drop column nLote

  Print '4.22. NFe_Itens.nLote........... Coluna Removida!'

 end
GO
 
--- 4.23. Removendo a coluna NFe_Itens.qLote

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'qLote')
 begin

  Alter Table NFe_Itens
   Drop column qLote

  Print '4.23. NFe_Itens.qLote........... Coluna Removida!'

 end
GO

--- 4.24. Removendo a coluna NFe_Itens.dFab

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'dFab')
 begin

  Alter Table NFe_Itens
   Drop column dFab

  Print '4.24. NFe_Itens.dFab........... Coluna Removida!'

 end
GO

--- 4.25. Removendo a coluna NFe_Itens.dVal

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'dVal')
 begin

  Alter Table NFe_Itens
   Drop column dVal

  Print '4.25. NFe_Itens.dVal........... Coluna Removida!'
 end
GO

--- 4.26. Adicionado a coluna NFe_Itens.cProdANVISA

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'cProdANVISA')
 begin

  Alter Table NFe_Itens
   Add cProdANVISA varchar(13) Null

  Print '4.26. NFe_Itens.cProdANVISAt........... Coluna Adicionada!'
 end
GO

--- 4.26a. Adicionado a coluna NFe_Itens.xMotivoIsencao

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'xMotivoIsencao')
 begin

  Alter Table NFe_Itens
   Add xMotivoIsencao varchar(255) Null

  Print '4.26a. NFe_Itens.xMotivoIsencao........... Coluna Adicionada!'
 end
GO

--- 4.27. Adicionado a coluna NFe_Itens.vPMC

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vPMC')
 begin

  Alter Table NFe_Itens
   Add vPMC decimal(13,2) Null

  Print '4.27. NFe_Itens.vPMC........... Coluna Adicionada!'
 end
GO

--- 4.27a. Alterando a coluna NFe_Itens.vPMC

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vPMC')
 begin

  Alter Table NFe_Itens
   Alter Column vPMC  numeric(16,2) Null

  Print '4.27a. NFe_Itens.vPMC........... Coluna Alterada!'
 end
GO

--- 4.28. Adicionado a coluna NFe_Itens.descANP

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'descANP')
 begin

  Alter Table NFe_Itens
   Add descANP varchar(95) Null

  Print '4.28. NFe_Itens.descANP........... Coluna Adicionada!'
 end
GO

--- 4.29. Adicionado a coluna NFe_Itens.pGLP

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGLP')
 begin

  Alter Table NFe_Itens
   Add pGLP decimal(8,4) Null

  Print '4.29. NFe_Itens.pGLP........... Coluna Adicionada!'
 end
GO

--- 4.29a. Alterando a coluna NFe_Itens.pGLP

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGLP')
 begin

  Alter Table NFe_Itens
   Alter Column pGLP numeric(8,4) Null

  Print '4.29a. NFe_Itens.pGLP........... Coluna Alterada!'
 end
GO

--- 4.30. Adicionado a coluna NFe_Itens.pGNn

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGNn')
 begin

  Alter Table NFe_Itens
   Add pGNn decimal(8,4) Null

  Print '4.30. NFe_Itens.pGNn........... Coluna Adicionada!'
 end
GO

--- 4.30a. Alterando a coluna NFe_Itens.pGNn

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGNn')
 begin

  Alter Table NFe_Itens
   Alter Column pGNn numeric(8,4) Null

  Print '4.30a. NFe_Itens.pGNn........... Coluna Alterada!'
 end
GO

--- 4.31. Adicionado a coluna NFe_Itens.pGNi

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGNi')
 begin

  Alter Table NFe_Itens
   Add pGNi decimal(8,4) Null

  Print '4.31. NFe_Itens.pGNi........... Coluna Adicionada!'
 end
GO

--- 4.31a. Alterando a coluna NFe_Itens.pGNi

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pGNi')
 begin

  Alter Table NFe_Itens
   Alter Column pGNi numeric(8,4) Null

  Print '4.31a. NFe_Itens.pGNi........... Coluna Alterada!'
 end
GO

--- 4.32. Adicionado a coluna NFe_Itens.vPart

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vPart')
 begin

  Alter Table NFe_Itens
   Add vPart decimal(16,2) Null

  Print '4.32. NFe_Itens.vPart........... Coluna Adicionada!'
 end
GO

--- 4.32a. Alterando a coluna NFe_Itens.vPart

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vPart')
 begin

  Alter Table NFe_Itens
   Alter Column vPart numeric(16,2) Null
   
  Print '4.32a. NFe_Itens.vPart........... Coluna Alterada!'
 end
GO

--- 4.33. Adicionado a coluna NFe_Itens.CODIF

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'CODIF')
 begin

  Alter Table NFe_Itens
   Add CODIF char(21) Null

  Print '4.33. NFe_Itens.CODIF........... Coluna Adicionada!'
 end
GO

--- 4.34. Adicionado a coluna NFe_Itens.vBCSTRet

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCSTRet')
 begin

  Alter Table NFe_Itens
   Add vBCSTRet decimal(16,2) Null

  Print '4.34. NFe_Itens.vBCSTRet........... Coluna Adicionada!'
 end
GO

--- 4.34a. Alterando a coluna NFe_Itens.vBCSTRet 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCSTRet')
 begin

  Alter Table NFe_Itens
   Alter Column vBCSTRet numeric(16,2) Null

  Print '4.34a. NFe_Itens.vBCSTRet........... Coluna Alterada!'
 end
GO

--- 4.35. Adicionado a coluna NFe_Itens.vICMSSTRet

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSSTRet')
 begin

  Alter Table NFe_Itens
   Add vICMSSTRet decimal(16,2) Null

  Print '4.35. NFe_Itens.vICMSSTRet........... Coluna Adicionada!'
 end
GO

--- 4.35a. Alterando a coluna NFe_Itens.vICMSSTRet

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSSTRet')
 begin

  Alter Table NFe_Itens
   Alter Column vICMSSTRet numeric(16,2) Null
   
  Print '4.35a. NFe_Itens.vICMSSTRet........... Coluna Alterada!'
 end
GO

--- 4.35b. Adicionado a coluna NFe_Itens.vBCSTDest

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCSTDest')
 begin

  Alter Table NFe_Itens
   Add vBCSTDest decimal(16,2) Null

  Print '4.35b. NFe_Itens.vBCSTDest........... Coluna Adicionada!'
 end
GO

--- 4.35c. Adicionado a coluna NFe_Itens.vICMSSTDest

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSSTDest')
 begin

  Alter Table NFe_Itens
   Add vICMSSTDest decimal(16,2) Null

  Print '4.35c. NFe_Itens.vICMSSTDest........... Coluna Adicionada!'
 end
GO

--- 4.36. Adicionado a coluna NFe_Itens.pCredSN

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pCredSN')
 begin

  Alter Table NFe_Itens
   Add pCredSN decimal(8,4) Null

  Print '4.36. NFe_Itens.pCredSN........... Coluna Adicionada!'
 end
GO

--- 4.36a. Alterando a coluna NFe_Itens.pCredSN

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pCredSN')
 begin

  Alter Table NFe_Itens
   Alter Column pCredSN numeric(8,4) Null

  Print '4.36a. NFe_Itens.pCredSN........... Coluna Alterada!'
 end
GO

--- 4.37. Adicionado a coluna NFe_Itens.vCredICMSSN

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vCredICMSSN')
 begin

  Alter Table NFe_Itens
   Add vCredICMSSN decimal(16,2) Null

  Print '4.37. NFe_Itens.vCredICMSSN........... Coluna Adicionada!'
 end
GO

--- 4.37a. Alterando a coluna NFe_Itens.vCredICMSSN

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vCredICMSSN')
 begin

  Alter Table NFe_Itens
   Alter Column vCredICMSSN numeric(16,2) Null

  Print '4.37a. NFe_Itens.vCredICMSSN........... Coluna Alterada!'
 end
GO

--- 4.38. Adicionado a coluna NFe_Itens.vBCFCPUFDest

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCFCPUFDest')
 begin

  Alter Table NFe_Itens
   Add vBCFCPUFDest decimal(16,2) Null

  Print '4.38. NFe_Itens.vBCFCPUFDest........... Coluna Adicionada!'
 end
GO

--- 4.38a. Alterando a coluna NFe_Itens.vBCFCPUFDest

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vBCFCPUFDest')
 begin

  Alter Table NFe_Itens
   Alter column vBCFCPUFDest numeric(16,2) Null

  Print '4.38a. NFe_Itens.vBCFCPUFDest........... Coluna Alterada!'
 end
GO

--- 4.39. Alterando a coluna NFe_Itens.qtd

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'qtd')
 begin

  Alter Table NFe_Itens
   Alter column qtd numeric(16,4) Null

  Print '4.39. NFe_Itens.qtd........... Coluna Alterada!'
 end
GO

--- 4.40. Adicionado a coluna NFe_Itens.qTemp

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'qTemp')
 begin

  Alter Table NFe_Itens
   Add qTemp decimal(17,4) Null

  Print '4.40. NFe_Itens.qTemp........... Coluna Adicionada!'
 end
GO

--- 4.41. Alterando a coluna NFe_Itens.pr_unitario

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pr_unitario')
 begin

  Alter Table NFe_Itens
   Alter column pr_unitario numeric(22,10) Null

  Print '4.41. NFe_Itens.pr_unitario........... Coluna Alterada!'
 end
GO

--- 4.42. Adicionado a coluna NFe_Itens.uTrib

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'uTrib')
 begin

  Alter Table NFe_Itens
   Add uTrib varchar(6) Null

  Print '4.42. NFe_Itens.uTrib........... Coluna Adicionada!'
 end
GO

--- 4.43. Adicionado a coluna NFe_Itens.qTrib

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'qTrib')
 begin

  Alter Table NFe_Itens
   Add qTrib decimal(16,2) Null

  Print '4.43. NFe_Itens.qTrib........... Coluna Adicionada!'
 end
GO

--- 4.44. Adicionado a coluna NFe_Itens.vUnTrib

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vUnTrib')
 begin

  Alter Table NFe_Itens
   Add vUnTrib decimal(22,10) Null

  Print '4.44. NFe_Itens.vUnTrib........... Coluna Adicionada!'
 end
GO

-- by Edson Lima - 09/09/2020
--- 4.45. Adicionado a coluna NFe_Itens.modBCST

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'modBCST')
 begin

  Alter Table NFe_Itens
   Add modBCST char(1) Null

  Print '4.45. NFe_Itens.modBCST........... Coluna Adicionada!'
 end
GO

--- 4.46. Adicionado a coluna NFe_Itens.pMVAST

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pMVAST')
 begin

  Alter Table NFe_Itens
   Add pMVAST numeric(8,4) Null

  Print '4.46. NFe_Itens.pMVAST........... Coluna Adicionada!'
 end
GO

--- 4.47. Adicionado a coluna NFe_Itens.pRedBCST

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pRedBCST')
 begin

  Alter Table NFe_Itens
   Add pRedBCST numeric(8,4) Null

  Print '4.47. NFe_Itens.pRedBCST........... Coluna Adicionada!'
 end
GO

--- 4.48. Adicionado a coluna NFe_Itens.pc_icms_st

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'pc_icms_st')
 begin

  Alter Table NFe_Itens
   Alter Column pc_icms_st numeric(8,4) Null

  Print '4.48. NFe_Itens.pc_icms_st........... Coluna Alterada!'
 end
GO

--- 4.49. Adicionado a coluna NFe_Itens.cEnq

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'cEnq')
 begin

  Alter Table NFe_Itens
   Add cEnq char(3) Not Null Default('999')

  Print '4.49. NFe_Itens.cEnq........... Coluna Adicionada!'
 end
GO

--- 4.50. Adicionado a coluna NFe_Itens.cBarra

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'cBarra')
 begin

  Alter Table NFe_Itens
   Add cBarra VarChar(30) Null 

  Print '4.50. NFe_Itens.cBarra........... Coluna Adicionada!'
 end
GO

--- 4.51. Adicionado a coluna NFe_Itens.NCM

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'NCM')
 begin

  Alter Table NFe_Itens
   Add NCM VarChar(10) Null 

  Print '4.51. NFe_Itens.NCM........... Coluna Adicionada!'
 end
GO

--- 4.52. Adicionado a coluna NFe_Itens.CodNVE

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'CodNVE')
 begin

  Alter Table NFe_Itens
   Add CodNVE VarChar(6) Null 

  Print '4.52. NFe_Itens.CodNVE........... Coluna Adicionada!'
 end
GO

--- 4.53. Adicionado a coluna NFe_Itens.cBarraTrib

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'cBarraTrib')
 begin

  Alter Table NFe_Itens
   Add cBarraTrib VarChar(30) Null 

  Print '4.53. NFe_Itens.cBarraTrib........... Coluna Adicionada!'
 end
GO

--- 4.54. Adicionado a coluna NFe_Itens.vICMSSTDeson

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'vICMSSTDeson')
 begin

  Alter Table NFe_Itens
   Add vICMSSTDeson  decimal(16,2) Null

  Print '4.54. NFe_Itens.vICMSSTDeson........... Coluna Adicionada!'
 end
GO

--- 4.55. Adicionado a coluna NFe_Itens.motDesICMSST

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens' and C.name = 'motDesICMSST')
 begin

  Alter Table NFe_Itens
   Add motDesICMSST  decimal(16,2) Null

  Print '4.55. NFe_Itens.motDesICMSST........... Coluna Adicionada!'
 end
GO







--*********************************************************
-- 5. NFe_Itens_DI
--- 5.1. NFe_Itens_DI.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens_DI' and C.name = 'Modelo')
 begin
  Alter Table NFe_Itens_DI
   Add Modelo Char(02) Not Null Default('55')

  Print '5.1. NFe_Itens_DI.Modelo...... Coluna Adicionada!'
 end
GO

--- 5.2. NFe_Itens_Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens_DI' and C.name = 'Serie')
 begin
  Alter Table NFe_Itens_DI
   Add Serie Char(03) not null Default('1')

  Print '5.2. NFe_Itens_DI.Serie...... Coluna Adicionada!'
 end
GO

--- 5.3. Adicionado a coluna NFe_Itens_DI.tpViaTransp

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens_DI' and C.name = 'tpViaTransp')
 begin

  Alter Table NFe_Itens_DI
   Add tpViaTransp Char(2) Null 

  Print '5.3. NFe_Itens_DI.tpViaTransp........... Coluna Adicionada!'
 end
GO

-- 6. NFe_Itens_DI_ADI
--- 6.1. NFe_Itens_DI_ADI.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens_DI_ADI' and C.name = 'Modelo')
 begin
  Alter Table NFe_Itens_DI_ADI
   Add Modelo Char(02) Not Null Default('55')

  Print '6.1. NFe_Itens_DI_ADI.Modelo.. Coluna Adicionada!'
 end
GO

--- 6.2. NFe_Itens_DI_ADI.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Itens_DI_ADI' and C.name = 'Serie')
 begin
  Alter Table NFe_Itens_DI_ADI
   Add Serie Char(03) not null Default('1')

  Print '6.2. NFe_Itens_DI_ADI.Serie.. Coluna Adicionada!'
 end
GO

-- 7. NFe_Referenciada_Cupon
--- 7.1. NFe_Referenciada_Cupon.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'Modelo')
 begin
  Alter Table NFe_Referenciada_Cupon
   Add Modelo Char(02) Not Null Default('55')

  Print '7.1. NFe_Referenciada_Cupon.Modelo.. Coluna Adicionada!'
 end
GO

--- 7.2. NFe_Referenciada_Cupon.codigo_loja

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'codigo_loja')
 begin
  Alter Table NFe_Referenciada_Cupon
   Alter Column  codigo_loja int not null

  Print '7.2. NFe_Referenciada_Cupon.codigo_loja........... Coluna Alterada!'
 end
GO

--- 7.3. NFe_Referenciada_Cupon.dEmi

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'dEmi')
 begin
  Alter Table NFe_Referenciada_Cupon
   Alter Column  dEmi datetime not null

  Print '7.3. NFe_Referenciada_Cupon.dEmi........... Coluna Alterada!'
 end
GO

--- 7.4. NFe_Referenciada_Cupon.nNF

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'nNF')
 begin
  Alter Table NFe_Referenciada_Cupon
   Alter Column  nNF bigint not null

  Print '7.4. NFe_Referenciada_Cupon.nNF........... Coluna Alterada!'
 end
GO

--- 7.5. NFe_Referenciada_Cupon.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Cupon' and C.name = 'Serie')
 begin
  Alter Table NFe_Referenciada_Cupon
   Add Serie Char(03) not null Default('1')

  Print '7.5. NFe_Referenciada_Cupon.Serie........... Coluna Adicionada!'
 end
GO

-- 10. NFe_Veiculo
--- 10.1. NFe_Veiculo.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Veiculo' and C.name = 'Modelo')
 begin
  Alter Table NFe_Veiculo
   Add Modelo Char(02) Not Null Default('55')

  Print '10.1. NFe_Veiculo.Modelo........... Coluna Adicionada!'
 end
GO

-- 11. NFe_Volume
--- 11.1. NFe_Volume.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Volume' and C.name = 'Modelo')
 begin
  Alter Table NFe_Volume
   Add Modelo Char(02) Not Null Default('55')

  Print '11.1. NFe_Volume.Modelo........ Coluna Adicionada!'
 end
GO

-- 12. NFe_Xml
--- 12.1. NFe_Xml.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Xml' and C.name = 'Modelo')
 begin
  Alter Table NFe_Xml
   Add Modelo Char(02) Not Null Default('55')

  Print '12.1. NFe_Xml.Modelo........... Coluna Adicionada!'
 end
GO

-- 13. NFe_CCe
--- 13.1. NFe_CCe.Demi

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'Demi')
 begin
  Alter Table NFe_CCe
   Add Demi datetime Null

  Print '13.1. NFe_CCe.Demi........... Coluna Adicionada!'
 end
GO

--- 13.2. NFe_CCe.Serie

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'Serie')
 begin
  Alter Table NFe_CCe
   Add Serie  char(03) not null Default('1')

  Print '13.2. NFe_CCe.Serie........... Coluna Alterada!'
 end
GO

--- 13.2. NFe_CCe.Modelo

if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'Modelo')
 begin
  Alter Table NFe_CCe
   Add Modelo Char(02) Not Null Default('55')

  Print '13.2. NFe_CCe.Modelo........... Coluna Adicionada!'
 end
GO

-- 14. NFe
--- 14.1. NFe.Modelo 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'Modelo')
 begin
  Alter Table NFe
   Add Modelo Char(02) Not Null Default('55')

  Print '14.1. NFe.Modelo........... Coluna Adicionada!'
 end
GO

--- 14.3. NFe.DatNFCe 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'DatNFCe')
 begin
  Alter Table NFe
   Add DatNFCe datetime Null

  Print '14.3. NFe.DatNFCe........... Coluna Adicionada!'
 end
GO

--- 14.4. NFe.CalcHoraNFCe 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'CalcHoraNFCe')
 begin
  Alter Table NFe
   Add CalcHoraNFCe  char(1) Not Null Default('S')

  Print '14.4. NFe.CalcHoraNFCe........... Coluna Adicionada!'
 end
GO

--- 14.5. NFe.indFinal 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'indFinal')
 begin
  Alter Table NFe
   Add indFinal  char(1) Null

  Print '14.5. NFe.indFinal........... Coluna Adicionada!'
 end
GO

--- 14.4. NFe.indPres 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'indPres')
 begin
  Alter Table NFe
   Add indPres  char(1) Null

  Print '14.4. NFe.indPres........... Coluna Adicionada!'
 end
GO

--- 14.5. NFe.indIEDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe' and C.name = 'indIEDest')
 begin
  Alter Table NFe
   Drop column indIEDest

  Print '14.5. nfe.indIEDest........... Coluna Removida!'
 end
GO

--- 14.6. NFe.vBCUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vBCUFDest')
 begin
  Alter Table NFe
   Drop column vBCUFDest

  Print '14.6. NFe.vBCUFDest........... Coluna Removida!'
 end
GO

--- 14.7. NFe.pFCPUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'pFCPUFDest')
 begin
  Alter Table NFe
   Drop column pFCPUFDest

  Print '14.7. NFe.pFCPUFDest........... Coluna Removida!'
 end
GO

--- 14.8. NFe.pICMSUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'pICMSUFDest')
 begin
  Alter Table NFe
   Drop column pICMSUFDest

  Print '14.8. NFe.pICMSUFDest........... Coluna Removida!'
 end
GO

--- 14.9. NFe.pICMSInter 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'pICMSInter')
 begin
  Alter Table NFe
   Drop column pICMSInter

  Print '14.9. NFe.pICMSInter........... Coluna Removida!'
 end
GO

--- 14.10. NFe.pICMSInterPart 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'pICMSInterPart')
 begin
  Alter Table NFe
   Drop column pICMSInterPart

  Print '14.10. NFe.pICMSInterPart........... Coluna Removida!'
 end
GO

--- 14.11. NFe.vFCPUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vFCPUFDest')
 begin
  Alter Table NFe
   Add vFCPUFDest  numeric(13,2) Null

  Print '14.11. NFe.vFCPUFDest........... Coluna Adicionada!'
 end
GO

--- 14.12. NFe.vICMSUFDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSUFDest')
 begin
  Alter Table NFe
   Add vICMSUFDest  numeric(12,2) Null

  Print '14.12. NFe.vICMSUFDest........... Coluna Adicionada!'
 end
GO

--- 14.13. NFe.vICMSUFRemet 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSUFRemet')
 begin
  Alter Table NFe
   Add vICMSUFRemet  numeric(12,2) Null

  Print '14.13. NFe.vICMSUFRemet........... Coluna Adicionada!'
 end
GO

--- 14.14. NFe.vFCPUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vFCPUFDest')
 begin
  Alter Table NFe
   Alter Column vFCPUFDest  numeric(13,2) Null

  Print '14.14. NFe.vFCPUFDest........... Coluna Alterada!'
 end
GO

--- 14.15. NFe.vICMSUFDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSUFDest')
 begin
  Alter Table NFe
   Alter Column vICMSUFDest  numeric(12,2) Null

  Print '14.15. NFe.vICMSUFDest........... Coluna Alterada!'
 end
GO

--- 14.16. NFe.vICMSUFRemet 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSUFRemet')
 begin
  Alter Table NFe
   Alter Column vICMSUFRemet  numeric(12,2) Null

  Print '14.16. NFe.vICMSUFRemet........... Coluna Alterada!'
 end
GO

--- 14.17. NFe.Serie (deleta o indice IX_nfe_1)

IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'IX_nfe_1') 
 begin
  DROP INDEX nfe.IX_nfe_1 
  Print '14.17. NFe.IX_nfe_1........... Indice Deletado!'
 end
GO

--- 14.20. Adicionado a coluna Nfe.vICMSDeson

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSDeson')
 begin
  Alter Table NFe
   Add vICMSDeson  decimal(12,2) Null

  Print '14.20. NFe.vICMSDeson........... Coluna Adicionada!'
 end
GO

--- 14.21. Alterando a coluna Nfe.vICMSDeson

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'vICMSDeson')
 begin
  Alter Table NFe
   Alter Column vICMSDeson  numeric(16,2) Null

  Print '14.21. NFe.vICMSDeson........... Coluna Alterada!'
 end
GO

--- 14.25. NFe.CodPed 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'CodPed')
 begin
  Alter Table NFe
   Add CodPed Int Null

  Print '14.25. NFe.CodPed........... Coluna Adicionada!'
 end
GO

--- 14.26. NFe.idDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'idDest')
 begin
  Alter Table NFe
   Add idDest char(1) null Default('0')

  Print '14.26. NFe.idDest........... Coluna Adicionada'
 end
GO

--- 14.27. NFe.UsuTrs 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'UsuTrs')
 begin
  Alter Table NFe
   Add UsuTrs varchar(15) null

  Print '14.27. NFe.UsuTrs........... Coluna Adicionada'
 end
GO

--- 14.28. NFe.UsuCnc 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'UsuCnc')
 begin
  Alter Table NFe
   Add UsuCnc varchar(15) null

  Print '14.28. NFe.UsuCnc........... Coluna Adicionada'
 end
GO

--- 14.29. NFe.autXML 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'autXML')
 begin
  Alter Table NFe
   Add autXML varchar(250) null

  Print '14.29. NFe.autXML........... Coluna Adicionada'
 end
GO

--- 14.30. NFe.CPFNFCe 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'CPFNFCe')
 begin
  Alter Table NFe
   Add CPFNFCe varchar(14) null

  Print '14.30. NFe.CPFNFCe........... Coluna Adicionada'
 end
GO

--- 14.31. NFe.NomeNFCe 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe' and C.name = 'NomeNFCe')
 begin
  Alter Table NFe
   Add NomeNFCe varchar(75) null

  Print '14.31. NFe.NomeNFCe........... Coluna Adicionada'
 end
GO

--*********************************************************
-- 15. Destinatário
--- 15.1. Destinatario.indIEDest

if     exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'indIE') and
   not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'indIEDest') 
 begin
  exec sp_rename 'destinatario.indIE', 'indIEDest', 'column'

  Print '15.1. Destinatario.indIEDest........... Coluna Renomeada!'
 end
GO

--- 15.1a. NFe.indIEDest 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'indIE') and
   exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'indIEDest') 
 begin
  Alter Table destinatario
   Drop column indIE

  Print '14.5. nfe.indIE........... Coluna Removida!'
 end
GO

--- 15.2. Destinatario.indIEDest 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'indIEDest')
 begin
  Alter Table destinatario
   Add indIEDest  char(1) Null

  Print '15.2. Destinatario.indIEDest........... Coluna Adicionada!'
 end
GO

--- 15.3. Destinatario.fone 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'destinatario' and C.name = 'fone')
 begin
  Alter Table destinatario
   Alter Column fone  char(20) Null

  Print '15.3. Destinatario.fone........... Coluna Alterada!'
 end
GO

-- 16. NFe_Veiculo
--- 16.1. NFe_veiculos.Serie

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_veiculo' and C.name = 'Serie')
 begin
  Alter Table NFe_veiculo
   Add Serie  char(03) not null Default('1')

  Print '16.1. NFe_veiculo.Serie........... Coluna Adicionada!'
 end
GO

-- 16. NFe_volume
--- 16.2. NFe_volume.Serie

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_volume' and C.name = 'Serie')
 begin
  Alter Table NFe_volume
   Add Serie  char(03) not null Default('1')

  Print '16.2. NFe_volume.Serie........... Coluna Adicionada!'
 end
GO

-- 17. Transportadora
--- 17.1. transportadora.fone

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'transportadora' and C.name = 'fone')
 begin
  Alter Table transportadora
   Alter Column fone  char(20) Null

  Print '17.1. Transportadora.fone........... Coluna Alterada!'
 end
GO

--- 17.2. transportadora.email

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'transportadora' and C.name = 'email')
 begin
  Alter Table transportadora
   Add email  varchar(250) Null

  Print '17.2. Transportadora.email........... Coluna Adicionada!'
 end
GO

-- 18. notas_inutilizadas
--- 18.1. notas_inutilizadas.codigo_loja

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'codigo_loja')
 begin
  Alter Table notas_inutilizadas
   Alter Column codigo_loja  int not Null

  Print '18.1. notas_inutilizadas.codigo_loja........... Coluna Alterada!'
 end
GO

--- 18.2. notas_inutilizadas.nota

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'nota')
 begin
  Alter Table notas_inutilizadas
   Alter Column nota  int not Null

  Print '18.2. notas_inutilizadas.nota........... Coluna Alterada!'
 end
GO

--- 18.3. notas_inutilizadas.ano

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'ano')
 begin
  Alter Table notas_inutilizadas
   Alter Column ano  int not Null

  Print '18.3. notas_inutilizadas.ano........... Coluna Alterada!'
 end
GO

--- 18.4. notas_inutilizadas.Modelo

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'Modelo')
 begin
  Alter Table notas_inutilizadas
   Alter Column Modelo  int not Null

  Print '18.4. notas_inutilizadas.Modelo........... Coluna Alterada!'
 end
GO

--- 18.5. notas_inutilizadas.Serie

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'Serie')
 begin
  Alter Table notas_inutilizadas
   Alter Column Serie  int not Null

  Print '18.5. notas_inutilizadas.Serie........... Coluna Alterada!'
 end
GO

-- A partir de 01/02/2018

--- 18.6. notas_inutilizadas.tpAmb

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'tpAmb')
 begin
  Alter Table notas_inutilizadas
   Add tpAmb  char(1) not null Default('1')

  Print '18.6. notas_inutilizadas.toAmb........... Coluna Adicionada!'
 end
GO

--- 18.7. notas_inutilizadas.verAplic

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'verAplic')
 begin
  Alter Table notas_inutilizadas
   Add verAplic  varchar(30) Null

  Print '18.7. notas_inutilizadas.verAplic........ Coluna Adicionada!'
 end
GO

--- 18.8. notas_inutilizadas.cStat

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'cStat')
 begin
  Alter Table notas_inutilizadas
   Add cStat  int Not Null Default(102)

  Print '18.8. notas_inutilizadas.cStat........ Coluna Adicionada!'
 end
GO

--- 18.9. notas_inutilizadas.cStat

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'xMotivo')
 begin
  Alter Table notas_inutilizadas
   Add xMotivo varchar(255) Not Null Default('Inutilizacao de numero homologado')

  Print '18.9. notas_inutilizadas.xMotivo........ Coluna Adicionada!'
 end
GO

--- 18.10. notas_inutilizadas.cUF

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'cUF')
 begin
  Alter Table notas_inutilizadas
   Add cUF  int Null

  Print '18.10. notas_inutilizadas.cUF........... Coluna Adicionada!'
 end
GO

--- 18.11. notas_inutilizadas.CNPJ

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'CNPJ')
 begin
  Alter Table notas_inutilizadas
   Add CNPJ  varchar(14) Null

  Print '18.11. notas_inutilizadas.CNPJ........... Coluna Adicionada!'
 end
GO

--- 18.12. notas_inutilizadas.nProt

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'nProt')
 begin
  Alter Table notas_inutilizadas
   Add nProt  varchar(20) Null

  Print '18.12. notas_inutilizadas.nProt........... Coluna Adicionada!'
 end
GO

--- 18.13. notas_inutilizadas.UsuInu

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'notas_inutilizadas' and C.name = 'UsuInu')
 begin
  Alter Table notas_inutilizadas
   Add UsuInu  varchar(15) Null

  Print '18.13. notas_inutilizadas.UsuInu........... Coluna Adicionada!'
 end
GO

-- 19 nfe_MDFe
--- 19.1. nfe_MDFE.cnpj_cpf_des 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_MDFE' and C.name = 'cnpj_cpf_des')
 begin
  Alter Table nfe_MDFe
   DROP COLUMN cnpj_cpf_des

  Print '19.1. nfe_MDFE.cnpj_cpf_des........... Coluna Excluida!'
 end
GO

--- 19.2. nfe_MDFE.CnpjDest

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_MDFE' and C.name = 'CnpjDest')
 begin
  Alter Table nfe_MDFe
   DROP COLUMN CnpjDest

  Print '19.2. nfe_MDFE.CnpjDest........... Coluna Excluida!'
 end
GO

--- 19.3. nfe_MDFE.cnpj_cpf_trp

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_MDFE' and C.name = 'cnpj_cpf_trp')
 begin
  Alter Table nfe_MDFe
   DROP COLUMN cnpj_cpf_trp

  Print '19.3. nfe_MDFE.cnpj_cpf_trp........... Coluna Excluida!'
 end
GO

--*********************************************************
-- 20. Importação de xml Mov

--- 20.1. Adicionado a coluna NFeE_Mov.ValDsn

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Mov' and C.name = 'ValDsn')
 begin
  Alter Table NFeE_Mov
   Add ValDsn  decimal(12,2) Null

  Print '20.1. NFeE_Mov.ValDsn........... Coluna Adicionada!'
 end
GO

--- 20.2. Excluida a tabela NFeE_Mov_Old

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Mov_Old')
 begin
  drop Table NFeE_Mov_Old

  Print '20.2. Tabela NFeE_Mov_Old........... Coluna Excluida!'
 end
GO

--*********************************************************
-- 21. Importação de xml Ite

--- 21.1. Adicionado a coluna NFeE_Ite.ValDsn

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'ValDsn')
 begin
  Alter Table NFeE_Ite
   Add ValDsn  decimal(12,2) Null

  Print '21.1. NFeE_Ite.ValDsn........... Coluna Alterada!'
 end
GO

--- 21.2. Adicionado a coluna NFeE_Ite.MotDsn

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'MotDsn')
 begin

  Alter Table NFeE_Ite
   add MotDsn Char(2) null

  Print '21.2. NFeE_Ite.MotDsn........... Coluna Alterada!'
 end
GO

--- 21.3. Excluida a tabela NFeE_Ite_Old

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite_Old')
 begin
  drop Table NFeE_Ite_Old

  Print '21.3Tabela NFeE_Ite_Old........... Coluna Excluida!'
 end
GO

--- 21.4. Adicionado a coluna NFeE_Ite.cBarra

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'cBarra')
 begin

  Alter Table NFeE_Ite
   add cBarra VarChar(30) null

  Print '21.2. NFeE_Ite.cBarra........... Coluna Adicionada!'
 end
GO

--- 21.4. Adicionado a coluna NFeE_Ite.cBarra

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Ite' and C.name = 'cBarraTrib')
 begin

  Alter Table NFeE_Ite
   add cBarraTrib VarChar(30) null

  Print '21.2. NFeE_Ite.cBarraTrib........... Coluna Adicionada!'
 end
GO

--*********************************************************
-- 22. Importação de xml Fat

--- 22.1. Excluida a tabela NFeE_Fat_Old

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFeE_Fat_Old')
 begin
  drop Table NFeE_Fat_Old

  Print '22.1. Tabela NFeE_Fat_Old........... Coluna Excluida!'
 end
GO

/*-------------------------------------------------
-- by Renildo ; Object:  Table [dbo].[NFe_Lotes] --
-- Script Date: 19/06/2020 11:23:00              --
-- Inclusão a pedido do Renildo atravéz do Paulo --
--                  ----                         --
-- Foram incluido os campos referente a safra  e --
-- como não implementou esses campos estão sendo --
-- excluidos.                                    --
-------------------------------------------------*/

-- 23 Manutenção na tabela nfe_Lotes
--- 23.1. Exclussão do campo nfe_Lotes.Safra

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'Safra')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN Safra

  Print '23.1. nfe_Lotes.Safra........... Coluna Excluida!'
 end
GO

--- 23.2. Exclussão do campo nfe_Lotes.NomeFor

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'NomFor')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN NomFor

  Print '23.2. nfe_Lotes.NomFor........... Coluna Excluida!'
 end
GO

--- 23.3. Exclussão do campo nfe_Lotes.CNPJ

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'CNPJ')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN CNPJ

  Print '23.3. nfe_Lotes.CNPJ........... Coluna Excluida!'
 end
GO

--- 23.4. Exclussão do campo nfe_Lotes.InsRns

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'InsRns')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN InsRns

  Print '23.4. nfe_Lotes.InsRns........... Coluna Excluida!'
 end
GO

--- 23.5. Exclussão do campo nfe_Lotes.Unidade

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'Unidade')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN Unidade

  Print '23.5. nfe_Lotes.Unidade........... Coluna Excluida!'
 end
GO

--- 23.6. Exclussão do campo nfe_Lotes.Peso

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Lotes' and C.name = 'Peso')
 begin
  Alter Table nfe_Lotes
   DROP COLUMN Peso

  Print '23.6. nfe_Lotes.Peso........... Coluna Excluida!'
 end
GO

------------------------------------------

Print '5. Inclusão de Atributo...'

-- 5. Inclusão de Atributo

-- 5. NFe_Referenciada_Mod1
--- 5.1. NFe_Referenciada_Mod1.Sequencia

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[NFe_Referenciada_Mod1]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_Referenciada_Mod1' and C.name = 'Sequencia')
  begin
   Alter Table NFe_Referenciada_Mod1
    Add Sequencia Int IDENTITY(1,1) Not Null

   Print '5.1. NFe_Referenciada_Mod1.Sequencia....... Incluido!'
  end
GO

--- 5.2. nfe_referenciada_prural.Sequencia

if exists (select * from dbo.sysobjects where id = object_id(N'[dbo].[nfe_referenciada_prural]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
 if Not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_referenciada_prural' and C.name = 'Sequencia')
  begin
   Alter Table nfe_referenciada_prural
    Add Sequencia Int IDENTITY(1,1) Not Null
	
   Print '5.2. nfe_referenciada_prural.Sequencia..... Incluido!'
  end
GO

-----------------------------------------------------------------------------

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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe') 
 ALTER TABLE [dbo].[nfe] DROP PK_nfe
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_duplicatas
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_duplicatas') 
 ALTER TABLE [dbo].[nfe_duplicatas] DROP PK_nfe_duplicatas
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_faturas
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_faturas') 
ALTER TABLE [dbo].[nfe_faturas] DROP PK_nfe_faturas
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_informacoes
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_informacoes') 
 ALTER TABLE [dbo].[nfe_informacoes] DROP PK_nfe_informacoes
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_itens
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_itens') 
 ALTER TABLE [dbo].[nfe_itens] DROP PK_nfe_itens
GO

ALTER TABLE [dbo].[nfe_itens] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_itens] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[sequencia],
		[Modelo],
        [Serie]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_itens_DI
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_itens_DI') 
 ALTER TABLE [dbo].[nfe_itens_DI] DROP PK_nfe_itens_DI
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_itens_DI_ADI
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_itens_DI_ADI') 
 ALTER TABLE [dbo].[nfe_itens_DI_ADI] DROP PK_nfe_itens_DI_ADI
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_referenciada_cupon
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_referenciada_cupon') 
 ALTER TABLE [dbo].[nfe_referenciada_cupon] DROP PK_nfe_referenciada_cupon
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_referenciada_mod1
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_referenciada_mod1') 
 ALTER TABLE [dbo].[nfe_referenciada_mod1] DROP PK_nfe_referenciada_mod1
GO

ALTER TABLE [dbo].[nfe_referenciada_mod1] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_referenciada_mod1] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
        [Serie],
		[Sequencia]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_referenciada_prural
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_referenciada_prural') 
 ALTER TABLE [dbo].[nfe_referenciada_prural] DROP PK_nfe_referenciada_prural
GO

ALTER TABLE [dbo].[nfe_referenciada_prural] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_referenciada_prural] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[dEmi],
		[nNF],
		[Modelo],
        [Serie],
		[Sequencia]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_Veiculo
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_NFe_Veiculo') 
 ALTER TABLE [dbo].[NFe_Veiculo] DROP PK_NFe_Veiculo
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_Volume
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_volume') 
 ALTER TABLE [dbo].[nfe_volume] DROP PK_nfe_volume
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

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_CCe
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_CCe')
 ALTER TABLE [dbo].[nfe_CCe] DROP PK_nfe_CCe
GO

ALTER TABLE [dbo].[nfe_CCe] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_CCe] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
		[nNF],
		[Evento],
		[Demi],
		[Modelo],
        [Serie]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - NFe_Xml
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_nfe_Xml')
 ALTER TABLE [dbo].[nfe_Xml] DROP PK_nfe_Xml
GO

ALTER TABLE [dbo].[nfe_Xml] WITH NOCHECK ADD 
	CONSTRAINT [PK_nfe_Xml] PRIMARY KEY  CLUSTERED 
	(
		[id],
		[codigo_loja],
		[nNF],
		[Demi],
		[Modelo],
        [Serie]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - notas_inutilizadas
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_notas_inutilizadas')
 ALTER TABLE [dbo].[notas_inutilizadas] DROP PK_notas_inutilizadas
GO

ALTER TABLE [dbo].[notas_inutilizadas] WITH NOCHECK ADD 
	CONSTRAINT [PK_notas_inutilizadas] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja],
        [tpAmb],
		[nota],
		[ano],
		[Modelo],
		[Serie]

	)  ON [PRIMARY] 
GO


-----------------------------------------------------------------------------
-- Chaveamento da tabela - destinatario
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_destinatario')
 ALTER TABLE [dbo].[destinatario] DROP PK_destinatario
GO

ALTER TABLE [dbo].[destinatario] WITH NOCHECK ADD 
	CONSTRAINT [PK_destinatario] PRIMARY KEY  CLUSTERED 
	(
		[codigo]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - emitente
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_emitente')
 ALTER TABLE [dbo].[emitente] DROP PK_emitente
GO

ALTER TABLE [dbo].[emitente] WITH NOCHECK ADD 
	CONSTRAINT [PK_emitente] PRIMARY KEY  CLUSTERED 
	(
		[codigo_loja]

	)  ON [PRIMARY] 
GO

-----------------------------------------------------------------------------
-- Chaveamento da tabela - transportadora
-----------------------------------------------------------------------------
IF EXISTS (SELECT Name FROM sysindexes WHERE Name = 'PK_transportadora')
 ALTER TABLE [dbo].[transportadora] DROP PK_transportadora
GO

ALTER TABLE [dbo].[transportadora] WITH NOCHECK ADD 
	CONSTRAINT [PK_transportadora] PRIMARY KEY  CLUSTERED 
	(
		[codigo]

	)  ON [PRIMARY] 
GO

/*----------------------------------------------------------
------ by Edson Lima ; Object:  Table [dbo].[NFe_Lotes] ----
------ Script Date: 04/05/2018 13:35:03                 ----
----------------------------------------------------------*/

Print '4. Criação de Tabelas...'

-- 4. Criando tabelas
--- 4.1. NFe.nfe_lotes   -    Criação da tabela Lotes, para rastro

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[nfe_lotes]') AND type in (N'U'))
BEGIN

CREATE TABLE [dbo].[nfe_lotes](
	[codigo_loja] [int] NOT NULL,
	[dEmi] [datetime] NOT NULL,
	[nNF] [bigint] NOT NULL,
	[Modelo] [char](2) NOT NULL,
	[serie] [char](3) NOT NULL,
	[codigo_item] [varchar](60) NOT NULL,
	[CodFor] [int] NOT NULL,
	[nLote] [varchar](20) NOT NULL,
	[qLote] [numeric](12,3) NOT NULL,
	[dFab] [datetime] NOT NULL,
	[dVal] [datetime] NOT NULL,
	[cAgreg] [varchar](20) NULL,

 CONSTRAINT [PK_nfe_lotes] PRIMARY KEY CLUSTERED 
(
	[codigo_loja] ASC,
	[dEmi] ASC,
	[nNF] ASC,
	[Modelo] ASC,
	[serie] ASC,
	[codigo_item] ASC,
    [CodFor] ASC,
	[nLote] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

 Print '4.1. nfe.lotes........... Tabela Criada!'

END
GO

/*------------------------------------------*/

--- 5. Functions

--- 6. Procedures
