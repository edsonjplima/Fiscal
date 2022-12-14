/*  GBNFe Versão (Z) 4.13.10.? - By Edson Lima ; 02.10.2013 ; 11:52
    OBS: USAR SOMENTE SE A VERSÃO A SER ATUALIZADA FOR IGUAL OU SUPERIOR A VERSÃO 4.13.10.01
*/  


Use NFe

-----------------------------------------------------------------------------

-- a. Inclusão de atributos

-- 1. NFe_Emitente
--- 1.1. NFe_Emitente.Email_Assunto_CCe

-----------------------------------------------------------------------------

-- 2. NFe_CCe

--- 2.1. NFe_CCe.xCorrecao    -    Exclusão da columna xCorrecao como tipo Text (Memo) 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'xCorrecao')
 begin
  Alter Table NFe_CCe
   drop column xCorrecao
  Print 'NFe_CCe.xCorrecao... Coluna Excluida!'
 end
GO

--- 2.2. NFe_CCe.xCorrecao    -    Inclusão da coluna xCorrecao como tipo varchar

if not exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'xCorrecao')
 begin
  Alter Table NFe_CCe
   add xCorrecao varchar(1000) null
  Print 'NFe_CCe.xCorrecao... Coluna Criada!'
 end
GO

--- 2.3. NFe_CCe.Ver_Evento   -    Exclusão da columna Ver_Evento 

if exists(Select * From syscolumns C Join sysobjects T On C.id = T.id Where T.name = 'NFe_CCe' and C.name = 'Ver_Evento')
 begin
  Alter Table NFe_CCe
   drop column Ver_Evento
  Print 'NFe_CCe.Ver_Evento... Coluna Excluida!'
 end
GO

-----------------------------------------------------------------------------

-- 3. NFe
--- 3.1. NFe.evento_CCe

-----------------------------------------------------------------------------

-- 4. NFe_Itens
--- 4.1. NFe_Itens.ipi_cst

-----------------------------------------------------------------------------

-- b. Remoção de Atributo

-- c. Atualização de Conteudo

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
