/*  GBNFe Versão (Z) 4.13.12.? - By Edson Lima ; 13.12.2013 ; 14:52
    OBS: USAR SOMENTE SE A VERSÃO A SER ATUALIZADA FOR IGUAL OU SUPERIOR A VERSÃO 4.13.12.13
*/  


Use NFe

-----------------------------------------------------------------------------

-- a. Inclusão de atributos

-- 1. NFe_Emitente
--- 1.1. NFe_Emitente.Email_Assunto_CCe

-----------------------------------------------------------------------------

-- 2. NFe_Xml

--- 2.1. NFe_Xml.Nota1    -    Inclusão da coluna xml_nota1 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota1')
 begin
  Alter Table nfe_xml
   add xml_nota1 Text null
  Print 'xml_nota1... Coluna Criada!'
 end
GO

--- 2.2. NFe_Xml.Nota2    -    Inclusão da coluna xml_nota2 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota2')
 begin
  Alter Table nfe_xml
   add xml_nota2 Text null
  Print 'xml_nota2... Coluna Criada!'
 end
GO

--- 2.3. NFe_Xml.Nota3    -    Inclusão da coluna xml_nota3 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota3')
 begin
  Alter Table nfe_xml
   add xml_nota3 Text null
  Print 'xml_nota3... Coluna Criada!'
 end
GO

--- 2.4. NFe_Xml.Nota4    -    Inclusão da coluna xml_nota4 como tipo Text (Memo) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_xml' and C.name = 'xml_nota4')
 begin
  Alter Table nfe_xml
   add xml_nota4 Text null
  Print 'xml_nota4... Coluna Criada!'
 end
GO

-----------------------------------------------------------------------------

-- 3. NFe_CCe
--- 3.1. NFe_CCe   - Altera a estrutura da coluna Ver_Laiaute de VarChar(10) para VarChar(30)

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_cce' and C.name = 'Ver_Laiaute')
 begin
  Alter Table nfe_cce
   Alter Column  Ver_Laiaute VarChar(30) null
  Print 'Ver_Laiaute... Coluna Alterada !'
 end
GO

-----------------------------------------------------------------------------

-- 4. NFe_Itens
--- 4.1. NFe_Itens.vl_II   -    Inclusão da coluna vl_II como tipo Decimal (15,2) 

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'nfe_Itens' and C.name = 'vl_II')
 begin
  Alter Table nfe_Itens
   add vl_II Decimal (15,2) null
  Print 'vl_II... Coluna Criada!'
 end
GO

-----------------------------------------------------------------------------

-- b. Remoção de Atributo

-- c. Atualização de Conteudo

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
