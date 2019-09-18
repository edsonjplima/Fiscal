--*********************************************************
-- Altera todas as procedures
-- Deve ser utilizada apartir da versão 5.15.11.3 do GBNFe
-- GBNFe_V_(FD) 6.17.10.17  - 08. Atualiz. All Proc. 
--             Implica na implantação do projeto NFCe
-- DATA DA PENULTIMA ALTERAÇÃO: 23/02/2016 T 1425
-- DATA DA ÚLTIMA    ALTERAÇÃO: 18-09-2019 T 1342
--*********************************************************

/****** Object:  StoredProcedure [dbo].[sp_ler_nfe_textos]    Script Date: 06/13/2017 15:14:02 ******/

USE [NFe]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_transmitidas;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_transmitidas;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_transmitidas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_transmitidas]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_inutilizadas;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_inutilizadas;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_inutilizadas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_inutilizadas]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_em_contingencia;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_em_contingencia;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_em_contingencia]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_em_contingencia]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_denegadas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_denegadas]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_canceladas;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_canceladas;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_canceladas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_canceladas]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_a_serem_geradas;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_a_serem_geradas;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_a_serem_geradas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_nfe_a_serem_geradas]
GO
/****** Object:  StoredProcedure [dbo].[sp_ler_nfe_textos;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_ler_nfe_textos;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_ler_nfe_textos]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_ler_nfe_textos]
GO
/****** Object:  StoredProcedure [dbo].[sp_le_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_le_nfe;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_le_nfe]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_le_nfe]
GO
/****** Object:  StoredProcedure [dbo].[sp_insere_notas_inutilizadas;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_insere_notas_inutilizadas;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_insere_notas_inutilizadas]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_insere_notas_inutilizadas]
GO
/****** Object:  StoredProcedure [dbo].[sp_importa_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_importa_nfe;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_importa_nfe]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_importa_nfe]
GO
/****** Object:  StoredProcedure [dbo].[sp_exclui_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_exclui_nfe;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_exclui_nfe]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_exclui_nfe]
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_consulta_nfe;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_consulta_nfe]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_consulta_nfe]
GO
/****** Object:  StoredProcedure [dbo].[sp_calcula_digito_chave;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_calcula_digito_chave;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_calcula_digito_chave]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_calcula_digito_chave]
GO
/****** Object:  StoredProcedure [dbo].[sp_bkp;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_bkp;1]
GO
/****** Object:  StoredProcedure [dbo].[sp_bkp]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[sp_bkp]
GO
/****** Object:  StoredProcedure [dbo].[s_le_arquivo_texto;1]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[s_le_arquivo_texto;1]
GO
/****** Object:  StoredProcedure [dbo].[s_le_arquivo_texto]    Script Date: 18/09/2019 13:44:04 ******/
DROP PROCEDURE [dbo].[s_le_arquivo_texto]
GO
/****** Object:  StoredProcedure [dbo].[s_le_arquivo_texto]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
	select Erro = 'Arquivo nÆo encontrado =' + @arquivo
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

-- Troca Null por ''    <<-- isso pq nÆo passa pela fn_criptografa
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
/****** Object:  StoredProcedure [dbo].[s_le_arquivo_texto;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[s_le_arquivo_texto;1] @origem varchar(255), @arquivo varchar(255), @ok bit output
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
	select Erro = 'Arquivo não encontrado =' + @arquivo
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

	----------------------------update #tamanho set tamanho = 7000 where tamanho > 7000 ----> TEMPORÁRIO: EVITA QUE HAJA DE OVERFLOW.	
	
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

-- Troca Null por ''    <<-- isso pq não passa pela fn_criptografa
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
/****** Object:  StoredProcedure [dbo].[sp_bkp]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_bkp] @gCamBak varchar(255), @gNFe varchar(30), @DT varchar(30)
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
 alter database CURRENT
 set restricted_user with rollback immediate

-------------------------------------------------------
SET	@BackupDirectory = @gCamBak
SET	@DB              = @gNFe 
-------------------------------------------------------

SET @Name                   = @DB + ' (Backup Full)'
SET @MediaName              = 'bkp_' + @DB + '_' + CONVERT(varchar, CURRENT_TIMESTAMP , 112)
SET @BackupFile             = @BackupDirectory + '\' + 'bkp_' + 'full_' + @DB + '_' + @DT + '.bak'
SET @Description            = 'Full' + ' Backup at ' + CONVERT(varchar, CURRENT_TIMESTAMP) + '.'

BACKUP DATABASE @DB TO DISK = @BackupFile WITH INIT,
NAME                        = @Name,
DESCRIPTION                 = @Description,
MEDIANAME                   = @MediaName,
MEDIADESCRIPTION            = @Description,
STATS                       = 1

Alter database CURRENT set multi_user
GO
/****** Object:  StoredProcedure [dbo].[sp_bkp;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_bkp;1]
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
SET	@BackupDirectory = 'c:\'
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
/****** Object:  StoredProcedure [dbo].[sp_calcula_digito_chave]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                proc [dbo].[sp_calcula_digito_chave] @codigo_loja int, @nota bigint, @tpemissao char(1),@demissao datetime, @Modelo char(2), @Serie char(3), @CodPed bigint
as

declare @digito int
declare @codigo_destinatario int
declare @chave varchar(44)
declare @cNF bigint                                                                    -- by Edson Lima ; 2017-6-9T09:30

if not exists (select * from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = cast(@Serie as integer)) begin
  select 'Nota nÆo existe' as chave
  return 
end  

set @cNF = CASE WHEN ( @CodPed > 0 ) THEN @CodPed ELSE @nota END                       -- by Edson Lima ; 2017-6-9T09:30
if (len(cast(@cNF as varchar)) > 8)                                                    -- by Edson Lima ; 2017-6-9T09:30
 begin                                                                                 -- by Edson Lima ; 2017-6-9T09:30
  set @cNF = ( substring(cast(@cNF as varchar), len(cast(@cNF as varchar))-8+1, 8) )   -- by Edson Lima ; 2017-6-9T09:30
 end                                                                                   -- by Edson Lima ; 2017-6-9T09:30

/*
 cUF - C¢digo da UF do emitente do Documento Fiscal
 AAMM - Ano e Mˆs de emissÆo da NF-e
 CNPJ - CNPJ do emitente
 mod - Modelo do Documento Fiscal
 Serie - Serie do Documento Fiscal
 nNF - N£mero do Documento Fiscal
 cNF - C¢digo Num‚rico que compäe a Chave de Acesso
 cDV - D¡gito Verificador da Chave de Acesso
*/

--(select demi,(replicate('0', 2 - len(rtrim(cast(month(demi) as varchar(02))))  ) + cast(month(demi) as varchar)) from nfe where codigo_loja = 2 and nnf = '243')
 
set @chave = (select codigo_uf from emitente where codigo_loja = @codigo_loja)

set @chave = @chave + (select (substring(cast(year(demi)as varchar),3,2)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie) 

set @chave = @chave + (select (replicate('0', 2 - len(cast(month(demi) as varchar))) + cast(month(demi) as varchar)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie)

set @chave = @chave + rtrim((select cnpj from emitente where codigo_loja = @codigo_loja)) + @modelo + rtrim(ltrim((select (replicate('0', 3 - len(serie)) + serie ) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao and Modelo = @Modelo and Serie = @Serie)))
set @chave = @chave + rtrim(ltrim((select (replicate('0', 9 - len(@nota))) + cast(@nota as varchar(9)))))
set @chave = @chave + @tpemissao 
set @chave = @chave + rtrim(ltrim((select (replicate('0', 8 - len(@cNF))) + cast(@cNF as varchar(8))))) -- by Edson Lima ; 2017-6-9T09:30

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
/****** Object:  StoredProcedure [dbo].[sp_calcula_digito_chave;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_calcula_digito_chave;1] @codigo_loja int, @nota int, @tpemissao char(1),@demissao datetime
as

declare @digito int
declare @codigo_destinatario int
declare @chave varchar(44)

if not exists (select * from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao) begin
  select 'Nota não existe' as chave
  return 
end  

/*
• cUF - Código da UF do emitente do Documento Fiscal
• AAMM - Ano e Mês de emissão da NF-e
• CNPJ - CNPJ do emitente
• mod - Modelo do Documento Fiscal
• serie - Série do Documento Fiscal
• nNF - Número do Documento Fiscal
• cNF - Código Numérico que compõe a Chave de Acesso
• cDV - Dígito Verificador da Chave de Acesso
*/

--(select demi,(replicate('0', 2 - len(rtrim(cast(month(demi) as varchar(02))))  ) + cast(month(demi) as varchar)) from nfe where codigo_loja = 2 and nnf = '243')
 
set @chave = (select codigo_uf from emitente where codigo_loja = @codigo_loja)

set @chave = @chave + (select (substring(cast(year(demi)as varchar),3,2)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao)
set @chave = @chave + (select (replicate('0', 2 - len(cast(month(demi) as varchar))) + cast(month(demi) as varchar)) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao)

set @chave = @chave + rtrim((select cnpj from emitente where codigo_loja = @codigo_loja)) + '55' + rtrim(ltrim((select (replicate('0', 3 - len(serie)) + serie ) from nfe where codigo_loja = @codigo_loja and nnf = @nota and dEmi = @demissao)))
set @chave = @chave + rtrim(ltrim((select (replicate('0', 9 - len(@nota))) + cast(@nota as varchar(9)))))
set @chave = @chave + @tpemissao --'1' --tpemiss
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
/****** Object:  StoredProcedure [dbo].[sp_consulta_nfe]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
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
/****** Object:  StoredProcedure [dbo].[sp_consulta_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_consulta_nfe;1] @razao_social varchar(255), @demissao datetime
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
t1.motivo
from nfe t1                                            
inner join destinatario t2 on t1.codigo_destinatario = t2.codigo   
where t1.chave_nfe is not null
and (t2.razao_social like ('%' + @razao_social + '%') or @razao_social is null)
and (t1.demi = @demissao or @demissao is null)
order by 1


GO
/****** Object:  StoredProcedure [dbo].[sp_exclui_nfe]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE       proc [dbo].[sp_exclui_nfe] @codigo_loja int, @nnf varchar(09), @_tpemissao char(1), @demissao dateTIME, @Modelo char(2), @Serie char(3), @CodPed BigInt
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
/****** Object:  StoredProcedure [dbo].[sp_exclui_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_exclui_nfe;1] @codigo_loja int,@nnf varchar(10), @demissao dateTIME
as

set nocount on

delete from nfe_itens 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_itens_di 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_itens_DI_ADI 
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_referenciada_cupon
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_referenciada_mod1
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_referenciada_prural
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_duplicatas
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_faturas
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_informacoes
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_veiculo
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe_volume
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao

delete from nfe
where codigo_loja = @codigo_loja and nNF = @nnf and dEmi = @demissao



GO
/****** Object:  StoredProcedure [dbo].[sp_importa_nfe]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
-- ler os textos e joga em tabela tempor rias
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
-- Insere registros nfe informa‡äes complementares
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
	pis_cst,						-- by Edson Lima ; 02.01.2013 ; 10:45 - linha inclu¡da
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
	t1.pis_cst,					-- by Edson Lima ; 02.01.2013 ; 10:45 - linha inclu¡da
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
/****** Object:  StoredProcedure [dbo].[sp_importa_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[sp_importa_nfe;1] @origem varchar(255), @retorno varchar(100) output
as

set nocount on

----------------------------------------------
-- Testes 
----------------------------------------------
-- -- 
  --declare @origem varchar(100)
  --declare @getdate datetime
  
  --set @origem ='G:\_NF_Eletronica\'
  --set @getdate = getdate()

----------------------------------------------
-- Variaveis
----------------------------------------------
declare @exe nvarchar(4000)
declare @insert varchar(5)
declare @ok bit

----------------------------------------------------------------------------------------
-- ler os textos e joga em tabela temporárias
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
if @ok = 0 goto vazio
if object_id('tempdb..##nfe_itens_DI') > 0 drop table ##nfe_itens_DI
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
	razao_social = t2.razao_social
	,cnpj = t2. cnpj
	,endereco = t2.endereco
	,complemento = t2.complemento
	,numero = t2.numero
	,bairro = t2.bairro
	,cep = t2.cep
	,codigo_municipio = t2.codigo_municipio
	,municipio = t2.municipio
	,fone = left(t2.fone,10)
	,codigo_uf = t2.codigo_uf
	,uf = t2.uf
	,insc_estadual = t2.insc_estadual
	,insc_estadual_subs = t2.insc_estadual_subs
	,suframa = t2.suframa
	,codigo_pais = t2.codigo_pais
	,nome_pais = t2.nome_pais
	,regime_tributario = t2.regime_tributario
	,nome_fantasia = t2.nome_fantasia
from emitente t1
inner join ##emitente t2 on t1.codigo_loja = t2.codigo_loja 

insert	emitente
(
	codigo_loja,
	razao_social,
	nome_fantasia,
	cnpj,
	endereco,
	complemento,
	numero,
	bairro,
	cep,
	codigo_municipio,
	municipio,
	fone,
	codigo_uf,
	uf,
	insc_estadual,
	insc_estadual_subs,
	suframa,
	codigo_pais,
	nome_pais,
	regime_tributario)
select	
	t1.codigo_loja,
	t1.razao_social,
	t1.nome_fantasia,
	t1.cnpj,
	t1.endereco,
	t1.complemento,
	t1.numero,
	t1.bairro,
	t1.cep,
	t1.codigo_municipio,
	t1.municipio,
	left(t1.fone,10),
	t1.codigo_uf,
	t1.uf,
	t1.insc_estadual,
	t1.insc_estadual_subs,
	t1.suframa,
	t1.codigo_pais,
	t1.nome_pais,
	t1.regime_tributario
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
	razao_social = t2.razao_social
	,cnpj = t2. cnpj
	,endereco = t2.endereco
	,complemento = t2.complemento
	,numero = t2.numero
	,bairro = t2.bairro
	,cep = t2.cep
	,codigo_municipio = t2.codigo_municipio
	,municipio = t2.municipio
	,fone = left(t2.fone,10)
	,codigo_uf = t2.codigo_uf
	,uf = t2.uf
	,insc_estadual = t2.insc_estadual
	,email = t2.email
	,suframa = t2.suframa
	,codigo_pais = t2.codigo_pais
	,nome_pais = t2.nome_pais
from destinatario t1
inner join ##destinatario t2 on t1.codigo = t2.codigo

insert	destinatario
(
	codigo,
	razao_social,
	cnpj,
	endereco,
	complemento,
	numero,
	bairro,
	cep,
	codigo_municipio,
	municipio,
	fone,
	codigo_uf,
	uf,
	insc_estadual,
	email,
	suframa,
	codigo_pais,
	nome_pais)
select	
	t1.codigo,
	t1.razao_social,
	t1.cnpj,
	t1.endereco,
	t1.complemento,
	t1.numero,
	t1.bairro,
	t1.cep,
	t1.codigo_municipio,
	t1.municipio,
	left(t1.fone,10),
	t1.codigo_uf,
	t1.uf,
	t1.insc_estadual,
	t1.email,
	t1.suframa,
	t1.codigo_pais,
	t1.nome_pais
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
	razao_social = t2.razao_social
	,cnpj = t2. cnpj
	,endereco = t2.endereco
	,complemento = t2.complemento
	,numero = t2.numero
	,bairro = t2.bairro
	,cep = t2.cep
	,codigo_municipio = t2.codigo_municipio
	,municipio = t2.municipio
	,fone = left(t2.fone,10)
	,codigo_uf = t2.codigo_uf
	,uf = t2.uf
	,insc_estadual = t2.insc_estadual
from transportadora t1
inner join ##transportadora t2 on t1.codigo = t2.codigo

insert	transportadora
(
	codigo,
	razao_social,
	cnpj,
	endereco,
	complemento,
	numero,
	bairro,
	cep,
	codigo_municipio,
	municipio,
	fone,
	codigo_uf,
	uf,
	insc_estadual)
select
	t1.codigo,
	t1.razao_social,
	t1.cnpj,
	t1.endereco,
	t1.complemento,
	t1.numero,
	t1.bairro,
	t1.cep,
	t1.codigo_municipio,
	t1.municipio,
	left(t1.fone,10),
	t1.codigo_uf,
	t1.uf,
	t1.insc_estadual
from ##transportadora t1
left join transportadora t2 on t1.codigo = t2.codigo
where t2.codigo is null

----------------------------------------------------------------------------------------
-- Insere registros nfe
----------------------------------------------------------------------------------------
--acerta campos
update	##nfe set
	dEmi = dbo.fn_data(dEmi),
	dSaiEnt = dbo.fn_data(dSaiEnt)
	
update ##nfe set  base_calculo_icms = 0 where base_calculo_icms = ''
update ##nfe set  vl_icms = 0 where vl_icms = ''
update ##nfe set  base_calculo_st = 0 where base_calculo_st = ''
update ##nfe set  vl_st = 0 where vl_st = ''
update ##nfe set  total_nf = 0 where total_nf = ''
update ##nfe set  total_produtos = 0 where total_produtos = ''
update ##nfe set  vl_frete = 0 where vl_frete = ''
update ##nfe set  vl_seguro = 0 where vl_seguro = ''
update ##nfe set  vl_desconto = 0 where vl_desconto = ''
update ##nfe set  vl_ipi = 0 where vl_ipi = ''
update ##nfe set  vl_pis = 0 where vl_pis = ''
update ##nfe set  vl_cofins = 0 where vl_cofins = ''
update ##nfe set  vl_outros = 0 where vl_outros = ''
update ##nfe set  vl_ii = 0 where vl_ii = ''
	
update ##nfe set  base_calculo_icms = replace (base_calculo_icms,',','.')
update ##nfe set  vl_icms = replace (vl_icms,',','.')
update ##nfe set  base_calculo_st = replace (base_calculo_st,',','.')
update ##nfe set  vl_st = replace (vl_st,',','.')
update ##nfe set  total_nf = replace (total_nf,',','.')
update ##nfe set  total_produtos = replace (total_produtos,',','.')
update ##nfe set  vl_frete = replace (vl_frete,',','.')
update ##nfe set  vl_seguro = replace (vl_seguro,',','.')
update ##nfe set  vl_desconto = replace (vl_desconto,',','.')
update ##nfe set  vl_ipi = replace (vl_ipi,',','.')
update ##nfe set  vl_pis = replace (vl_pis,',','.')
update ##nfe set  vl_cofins = replace (vl_cofins,',','.')
update ##nfe set  vl_outros = replace (vl_outros,',','.')
update ##nfe set  vl_ii = replace (vl_ii,',','.')
	
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
	natOp,
	codigo_destinatario,
	codigo_transportadora,
	modelo,
	serie,
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
	vl_ii
	)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.natOp,
	t1.codigo_destinatario,
	t1.codigo_transportadora,
	t1.modelo,
	t1.serie,
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
	cast(t1.vl_cofins as numeric(12,2)),
	cast(t1.vl_outros as numeric(12,2)),
    t1.tipo_frete,
    t1.inf_complementar,
    t1.inf_fisco,
    t1.finalidade,
	cast(t1.vl_ii as numeric(12,2))
from ##nfe t1
left join nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.demi = t2.demi and t1.nnf = t2.nnf
where t2.codigo_loja is null

----------------------------------------------------------------------------------------
-- Insere registros nfe informações complementares
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
	inf_complementar)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	substring(t1.inf_campo,1,20),
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

update ##nfe_itens set  cfop = replace (cfop,'.','')
	
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
    pis_cst,
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
	cEANTrib
	)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.sequencia,
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
    t1.pis_cst,
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
	t1.cEANTrib
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
	vl_original,
	vl_desconto,
	vl_liquido)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.num_fatura,
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
	dvenc,
	valor) 
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.num_duplicata,
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
	veiculo,
	placa,
	uf,
	rntc)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
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
	modelo,
	serie,
	r_nNF)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.UF,
	t1.AAMM,
	t1.CNPJ,
	t1.modelo,
	t1.serie,
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
	modelo,
	serie,
	r_nNF)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.UF,
	t1.AAMM,
	t1.CNPJ,
	t1.insc_estadual,
	t1.modelo,
	t1.serie,
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
	modelo,
	ECF,
	COO)
select
    t1.codigo_loja,
	t1.dEmi,
	t1.nNF,
	t1.modelo,
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
/****** Object:  StoredProcedure [dbo].[sp_insere_notas_inutilizadas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE    proc [dbo].[sp_insere_notas_inutilizadas] @codigo_loja int,         @nota          bigint,       @ano           int,          @modelo int, 
                                                   @serie       int,         @justificativa varchar(255), @data_inclusao datetime,     @tpAmb  char(1),
					    						   @verAplic    varchar(30), @cStat         int,          @xMotivo       varchar(255), @cUF    int,
												   @CNPJ        varchar(14), @nProt         varchar(20),  @UsuInu        varchar(15)
as

if object_id('notas_inutilizadas') = 0 begin
	create table notas_inutilizadas (
	codigo_loja      int,
	nota             int,
	ano              int,
	Modelo           int,
	Serie            int,
	justificativa    varchar(255),
	data_inclusao    datetime,
	tpAmb            char(1),
	verAplic         varchar(30),
	cStat            int,
	xMotivo          varchar(255),
	cUF              int,
	CNPJ             varchar(14),
	nProt            varchar(20),
	UsuInu           varchar(15))
end

if ( Select Count(*) From notas_inutilizadas
     Where Codigo_loja   = @Codigo_loja   and
	       tpAmb         = @tpAmb         and
	       nota          = @nota          and
		   ano           = @ano           and
		   Modelo        = @modelo        and
		   Serie         = @serie ) = 0
begin
	insert into notas_inutilizadas (
		codigo_loja,
		nota,
		ano,
		Modelo,
		Serie,
		justificativa,
		data_inclusao,
		tpAmb,
	    verAplic,
		cStat,
		xMotivo,
	    cUF,
	    CNPJ,
	    nProt,
		UsuInu )
	values (
	@codigo_loja,
	@nota,
	@ano,
	@Modelo,
	@Serie,
	@justificativa,
	@data_inclusao,
	@tpAmb,   
	@verAplic,
	@cStat,
	@xMotivo,
	@cUF,
	@CNPJ,
	@nProt,
	@UsuInu)
end

GO
/****** Object:  StoredProcedure [dbo].[sp_insere_notas_inutilizadas;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[sp_insere_notas_inutilizadas;1] @codigo_loja int,@nota int,@ano int,@modelo int,@serie int,@justificativa varchar(255)
as

if object_id('notas_inutilizadas') = 0 begin
	create table notas_inutilizadas (
	codigo_loja      int,
	nota             int,
	ano              int,
	modelo           int,
	serie            int,
	justificativa    varchar(255),
	data_inclusao    datetime
	)
end

insert into notas_inutilizadas (
	codigo_loja,
	nota,
	ano,
	modelo,
	serie,
	justificativa,
	data_inclusao)
values (
@codigo_loja,
@nota,
@ano,
@modelo,
@serie,
@justificativa,
GETDATE())


GO
/****** Object:  StoredProcedure [dbo].[sp_le_nfe]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE                       proc [dbo].[sp_le_nfe] @codigo_loja int, @nota varchar(09),@demi as datetime, @Modelo char(2), @Serie char(3)
as

set nocount on

-- Gerando data da NFCe quando o modelo for igual a 65 by Renildo 2015-12-9 e 55 by Edson Lima em 02/09/2019

if @Modelo = '65'
 update nfe
  set DatNFCe = Cast( Cast( dEmi As Varchar(11) ) + ' ' + Cast( DatePart( hh, GetDate() ) As Varchar(02) ) + ':' +
                                                          Cast( DatePart( mi, GetDate() ) As Varchar(02) ) + ':' +
                                                          Cast( DatePart( ss, GetDate() ) As Varchar(02) ) As DateTime )
 where codigo_loja    = @codigo_loja and
       nnf            = @nota        and
       dEmi           = @demi        and
       Modelo         = @Modelo      and
       Serie          = cast(@Serie as integer)       and
      (DatNFCe       is null         or    CalcHoraNFCe = 'S')

if @Modelo = '55'
 update nfe
  set DatNFCe = Cast( Cast( dEmi As Varchar(11) ) + ' ' + Cast( DatePart( hh, GetDate() ) As Varchar(02) ) + ':' +
                                                       Cast( DatePart( mi, GetDate() ) As Varchar(02) ) + ':' +
                                                       Cast( DatePart( ss, GetDate() ) As Varchar(02) ) As DateTime )
 where codigo_loja    = @codigo_loja and
       nnf            = @nota        and
       dEmi           = @demi        and
       Modelo         = @Modelo      and
       Serie          = cast(@Serie as integer)       and
      (DatNFCe       is null)

-- Selecionando notas

Select distinct
 t1.codigo_loja                                 as nfe_codigo_loja         -- by Edson Lima ; 05.01.2017 ; 10:13
,t1.natOp                                       as nfe_natOp
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
,t1.vTotTrib                                    as vTotTrib		           -- By Edson Lima 2013/05/30T2041 ---> linha incluida
,t1.DatNFCe                                     as nfe_DatNFCe             -- by Edson Lima ; 01.02.2016 ; 08:00
,t1.CalcHoraNFCe                                as nfe_CalcHoraNFCe        -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                    as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                     as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.vFCPUFDest	                                as nfe_vFCPUFDest          -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vICMSUFDest	                                as nfe_vICMSUFDest         -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vICMSUFRemet                                as nfe_vICMSUFRemet        -- by Edson Lima ; 26.04.2016 ; 16:30
,t1.vICMSDeson                                  as nfe_vICMSDeson          -- by Edson Lima ; 11.10.2016 ; 15:11
,t1.CodPed                                      as nfe_CodPed              -- by Edson Lima ; 05.01.2017 ; 10:13
,t1.idDest                                      as nfe_idDest              -- by Edson Lima ; 06.04.2018 ; 11:29
,t1.UsuTrs                                      as nfe_UsuTrs              -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                      as nfe_UsuCnc              -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.autXML                                      as nfe_autXML              -- by Edson Lima ; 18.09.2019 ; 13:42

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
/****** Object:  StoredProcedure [dbo].[sp_le_nfe;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[sp_le_nfe;1] @codigo_loja int, @nota varchar(06),@demi as datetime
as

set nocount on

Select distinct
 t1.natOp                               as nfe_natOp
,t1.modelo                              as nfe_modelo
,t1.nNF                                 as nfe_nnf
,t1.dEmi                                as nfe_demi
,t1.serie                               as nfe_serie
,t1.dSaiEnt                             as nfe_dSaiEnt
,t1.tpNF                                as nfe_tpNF
,t1.indPag                              as nfe_indPag
,t1.verProc                             as nfe_verProc
,t1.base_calculo_icms                   as nfe_base_calculo_icms
,t1.vl_icms                             as nfe_vl_icms
,t1.base_calculo_st                     as nfe_base_calculo_st
,t1.vl_st                               as nfe_vl_st
,t1.total_nf                            as nfe_total_nf
,t1.total_produtos                      as nfe_total_produtos
,t1.vl_frete		                    as nfe_vl_frete
,t1.vl_seguro							as nfe_vl_seguro
,t1.vl_desconto							as nfe_vl_desconto
,t1.vl_ipi								as nfe_vl_ipi
,t1.vl_pis								as nfe_vl_pis
,t1.vl_cofins							as nfe_vl_cofins
,t1.vl_outros							as nfe_vl_outros
,t1.tipo_frete                          as nfe_tipo_frete
,t1.inf_complementar                    as nfe_inf_complementar
,t1.inf_fisco                           as nfe_inf_fisco
,t1.finalidade                          as nfe_finalidade
,t1.vl_ii                               as nfe_vl_ii
 
,t0.razao_social                        as emi_razao_social
,t0.nome_fantasia                       as emi_nome_fantasia
,t0.cnpj                                as emi_cnpj
,t0.endereco                            as emi_endereco
,t0.complemento                         as emi_complemento
,t0.numero                              as emi_numero
,t0.bairro                              as emi_bairro
,t0.cep                                 as emi_cep
,t0.codigo_municipio                    as emi_codigo_municipio
,t0.municipio                           as emi_municipio
,t0.fone                                as emi_fone
,t0.codigo_uf                           as emi_codigo_uf
,t0.uf                                  as emi_uf
,t0.insc_estadual                       as emi_insc_estadual
,t0.suframa                             as emi_suframa
,t0.codigo_pais                         as emi_codigo_pais
,t0.nome_pais                           as emi_nome_pais
 
,t2.razao_social                        as des_razao_social
,t2.cnpj                                as des_cnpj
,t2.endereco                            as des_endereco
,t2.complemento                         as des_complemento
,t2.numero                              as des_numero
,t2.bairro                              as des_bairro
,t2.cep                                 as des_cep
,t2.codigo_municipio                    as des_codigo_municipio
,t2.municipio                           as des_municipio
,t2.fone                                as des_fone
,t2.codigo_uf                           as des_codigo_uf
,t2.uf                                  as des_uf
,t2.insc_estadual                       as des_insc_estadual
,t2.suframa                             as des_suframa
,t2.codigo_pais                         as des_codigo_pais
,t2.nome_pais                           as des_nome_pais
 
,isnull(t3.razao_social,'')             as tra_razao_social
,isnull(t3.cnpj,'')                     as tra_cnpj
,isnull(t3.endereco,'')                 as tra_endereco
,isnull(t3.complemento,'')              as tra_complemento
,isnull(t3.numero,'')                   as tra_numero
,isnull(t3.bairro,'')                   as tra_bairro
,isnull(t3.cep,'')                      as tra_cep
,isnull(t3.codigo_municipio,'')         as tra_codigo_municipio
,isnull(t3.municipio,'')                as tra_municipio
,isnull(t3.fone,'')                     as tra_fone
,isnull(t3.codigo_uf,'0')               as tra_codigo_uf
,isnull(t3.uf,'')                       as tra_uf
,isnull(t3.insc_estadual,'')            as tra_insc_estadual
 
,isnull(t4.qtd_volume,0)                as vol_qtd_volume
,isnull(t4.especie,'')                  as vol_especie
,isnull(t4.marca,'')                    as vol_marca
,isnull(t4.numero_volume,0)             as vol_numero_volume
,isnull(t4.peso_liquido,0)              as vol_peso_liquido
,isnull(t4.peso_bruto,0)                as vol_peso_bruto
 
,isnull(t5.veiculo,'')                  as vei_veiculo
,isnull(t5.placa,'')                    as vei_placa
,isnull(t5.uf,'')                       as vei_uf
,isnull(t5.rntc,'')                     as vei_rntc
 
from nfe t1
inner join emitente       t0 on t1.codigo_loja = t0.codigo_loja
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
left  join transportadora t3 on t1.codigo_transportadora = t3.codigo
left  join nfe_volume     t4 on t1.codigo_loja = t4.codigo_loja and t1.demi = t4.demi and t1.nnf = t4.nnf
left  join nfe_veiculo    t5 on t1.codigo_loja = t5.codigo_loja and t1.demi = t5.demi and t1.nnf = t5.nnf
where t1.codigo_loja = @codigo_loja
and t1.nnf = @nota
and t1.dEmi = @demi



GO
/****** Object:  StoredProcedure [dbo].[sp_ler_nfe_textos]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
------EXEC sp_configure ‘xp_cmdshell’, 1
------RECONFIGURE;
------GO

set @retorno = ''

set @dir = rtrim(@gCamTxt)   -- -- by Edson Lima ; 4.4.2012 ; 11:22 ; Alterado - Antes tinha um texto com o caminho do diretório onde deveria achar os arquivos

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
/****** Object:  StoredProcedure [dbo].[sp_ler_nfe_textos;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[sp_ler_nfe_textos;1]  @gCamTxt varchar(400)  -- by Edson Lima ; 4.4.2012 ; 11:22 ; Alterado antes mais confirmado nesta data
-- CREATE proc [dbo].[sp_ler_nfe_textos]   -- Antes - by Edson Lima ; 4.4.2012 ; 11:22 ; 
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
------EXEC sp_configure ‘xp_cmdshell’, 1
------RECONFIGURE;
------GO

set @retorno = ''

--set @dir = 'G:\_NF_Eletronica\notas\'
-- set @dir = 'C:\Sistemas\NFe\Txt\'
set @dir = rtrim(@gCamTxt)   -- -- by Edson Lima ; 4.4.2012 ; 11:22 ; Alterado - Antes tinha um texto com o caminho do diretório onde deveria achar os arquivos

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
			
			--renomeia arquivos: somente arquivos gerados no DOS
			--set @cmd = 'ren  ' + @pasta + 'destinat.txt ' + 'destinatario.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_DUPL.txt ' + 'NFE_DUPLICATAS.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_FATU.txt ' + 'NFE_FATUras.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_INFO.txt ' + 'NFE_INFOrmacoes.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_ITEN.txt ' + 'NFE_ITENs.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_RESU.txt ' + 'NFE_RESUmo.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_VEIC.txt ' + 'NFE_VEICulo.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_VOLU.txt ' + 'NFE_VOLUme.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'TRANSPOR.txt ' + 'TRANSPORtadora.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			
			--set @cmd = 'ren  ' + @pasta + 'NFE_R_CU.txt ' + 'NFE_referenciada_cupon.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_R_MO.txt ' + 'NFE_referenciada_mod1.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output
			--set @cmd = 'ren  ' + @pasta + 'NFE_R_PR.txt ' + 'NFE_referenciada_prural.txt' 
			--exec @resp = master..xp_cmdshell @cmd , no_output

			--BEGIN TRY
			exec sp_importa_nfe @pasta, @retorno output
			if @retorno <> '' begin
			  insert into critica_importacao
			  select @retorno as retorno
			  break
			  return
			end
			--END TRY
			--BEGIN CATCH
			--  ROLLBACK
			--  delete from critica_importacao
			--  insert into critica_importacao
			--  select 'Erro ao importar arquivos' as retorno
			--  break
			--  return
			--END CATCH
			
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
/****** Object:  StoredProcedure [dbo].[sp_nfe_a_serem_geradas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                                     proc [dbo].[sp_nfe_a_serem_geradas] @codigo_loja int, @Modelo char(2), @Serie char(3)
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
,t1.CalcHoraNFCe                                 as nfe_CalcHoraNFCe       -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                     as nfe_indFinal           -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.CodPed                                       as nfe_CodPed             -- by Edson Lima ; 05.01.2017 ; 16:00
,t1.idDest                                       as nfe_idDest             -- by Edson Lima ; 06.04.2018 ; 11:29
,t1.UsuTrs                                       as nfe_UsuTrs             -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                       as nfe_UsuCnc             -- by Edson Lima ; 28.08.2019 ; 09:16

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
/****** Object:  StoredProcedure [dbo].[sp_nfe_a_serem_geradas;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE  proc [dbo].[sp_nfe_a_serem_geradas;1] @codigo_loja int
as

set nocount on

Select distinct
 ''                                                      as checado
,t1.natOp                                          as nfe_natOp
,t1.serie                                            as nfe_serie                -- By Edson Lima 3.2.2012 ---> linha incluida
,t1.nNF                                             as nfe_nnf
,t1.dEmi                                            as nfe_demi               -- By Edson Lima 3.2.2012 ---> linha incluida  --> Antes --> ,Cast( t1.dEmi As Datetime )                         as nfe_demi
,t1.total_nf                                        as nfe_total_nf
,t1.protocolo                                     as nfe_protocolo
,t1.recibo                                          as nfe_recibo
,t1.chave_nfe                                   as nfe_chave_nfe
,t1.codigo_destinatario                     as nfe_codigo_destinatario
,(t1.situacao + '-' + t1.motivo)            as nfe_situacao
,t1.data_hora_recebimento               as nfe_data_hora_recebimento
,t1.nr_dpec            as nfe_nr_dpec
 
,t2.razao_social                        as des_razao_social
,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj)     end as des_cnpj
from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
--left  join notas_inutilizadas t3 on  t3.codigo_loja = t1.codigo_loja and t3.nota = t1.nnf 
where t1.codigo_loja = @codigo_loja
and ( IsNull( t1.chave_nfe, '' )  = '' or (t1.chave_nfe = '0'))    -- By Edson Lima 18.4.2012 --> Antes - and (t1.chave_nfe is null)
--and t3.nota is null
order by t1.serie, t1.dEmi, t1.nNF                          -- By Edson Lima 3.2.2012 ---> order by t2.razao_social
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_canceladas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                    proc [dbo].[sp_nfe_canceladas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3)
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
,t1.CalcHoraNFCe                                 as nfe_CalcHoraNFCe       -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                     as nfe_indFinal           -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.UsuTrs                                       as nfe_UsuTrs             -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                       as nfe_UsuCnc             -- by Edson Lima ; 28.08.2019 ; 09:16
 
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
/****** Object:  StoredProcedure [dbo].[sp_nfe_canceladas;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE proc [dbo].[sp_nfe_canceladas;1] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint   -- By Edson Lima 3.2.2012 ---> linha inserida
-- CREATE proc [dbo].[sp_nfe_canceladas] @codigo_loja int                                                                        <-- Antes         -- By Edson Lima 3.2.2012 ---> linha inserida   
as

set nocount on

Select distinct
''                                                         as Checado
,t1.natOp                                            as nfe_natOp
,t1.serie                                              as nfe_serie                    -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                               as nfe_nnf
,t1.dEmi                                              as nfe_demi
,t1.total_nf                                          as nfe_total_nf
,t1.protocolo                                       as nfe_protocolo
,t1.recibo                                            as nfe_recibo
,t1.chave_nfe                                     as nfe_chave_nfe
,t1.codigo_destinatario                       as nfe_codigo_destinatario
,(t1.situacao + '-' +t1.motivo)               as nfe_situacao
,t1.data_hora_recebimento                 as nfe_data_hora_recebimento
,t1.nr_dpec                                         as nfe_nr_dpec
 
,t2.razao_social                        as des_razao_social
,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj)          end    
as des_cnpj
from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
where t1.codigo_loja = @codigo_loja
and t1.chave_nfe is not null                                        -- By Edson Lima 6.2.2012 --->  Linha Inserida
and (t1.dEmi >= @data_inicio or @nota <> 0)             -- By Edson Lima 6.2.2012 --->  Linha Inserida
and (t1.dEmi <= @data_final or @nota <> 0)               -- By Edson Lima 6.2.2012 --->  Linha Inserida
and (t1.nnf = @nota or @nota = 0)                              -- By Edson Lima 6.2.2012 --->  Linha Inserida
and IsNull(t1.situacao, '') = '101'
order by t1.serie, t1.dEmi, t1.nNF       -- By Edson Lima 6.2.2012 ---> order by t2.razao_social
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_denegadas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS OFF
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                   proc [dbo].[sp_nfe_denegadas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3)
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
,t1.CalcHoraNFCe                                        as nfe_CalcHoraNFCe        -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                            as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                             as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.UsuTrs                                              as nfe_UsuTrs              -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                              as nfe_UsuCnc              -- by Edson Lima ; 28.08.2019 ; 09:16
 
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
/****** Object:  StoredProcedure [dbo].[sp_nfe_em_contingencia]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                         proc [dbo].[sp_nfe_em_contingencia] @codigo_loja int, @Modelo char(2), @Serie char(3)
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
,t1.CalcHoraNFCe                                as nfe_CalcHoraNFCe        -- by Edson Lima ; 20.01.2016 ; 15:370
,t1.indFinal                                    as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                     as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.UsuTrs                                      as nfe_UsuTrs              -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                      as nfe_UsuCnc              -- by Edson Lima ; 28.08.2019 ; 09:16
 
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
/****** Object:  StoredProcedure [dbo].[sp_nfe_em_contingencia;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE proc [dbo].[sp_nfe_em_contingencia;1] @codigo_loja int
as

set nocount on

Select distinct
 ''                                                       as checado
,t1.natOp                                           as nfe_natOp
,t1.serie                                             as nfe_serie                    -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                              as nfe_nnf
,t1.dEmi                                             as nfe_demi
,t1.total_nf                                         as nfe_total_nf
,t1.protocolo                                      as nfe_protocolo
,t1.recibo                                           as nfe_recibo
,t1.chave_nfe                                    as nfe_chave_nfe
,t1.codigo_destinatario                      as nfe_codigo_destinatario
,(t1.situacao + '-' + t1.motivo)             as nfe_situacao
,t1.data_hora_recebimento                as nfe_data_hora_recebimento
,t1.nr_dpec                                        as nfe_nr_dpec
 
,t2.razao_social                        as des_razao_social
,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj)     end as des_cnpj
from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
--left  join notas_inutilizadas t3 on  t3.codigo_loja = t1.codigo_loja and t3.nota = t1.nnf 
where t1.codigo_loja = @codigo_loja
and (t1.situacao = '124' or t1.situacao = 'CONT' or t1.situacao = 'FSDA')
--and t3.nota is null
order by t1.serie, t1.dEmi, t1.nNF       -- By Edson Lima 6.2.2012 ---> order by t2.razao_social
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_inutilizadas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
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
,t3.tpAmb
,t3.verAplic
,t3.cStat
,t3.xMotivo
,t3.cUF
,t3.CNPJ
,t3.nProt
,t3.UsuInu

from notas_inutilizadas t3
where (t3.codigo_loja = @codigo_loja)			-- by EL 22.2.2012 - linha incluida
and   (t3.Modelo      = @Modelo or @Modelo = 0)         -- by EL 27.11.2015 - filtra pelo Modelo
and   (t3.Serie       = @Serie or @Serie = 0)           -- by EL 11.02.2016 - filtra pelo Serie

order by t3.data_inclusao, t3.modelo, t3.Serie
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_inutilizadas;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE proc [dbo].[sp_nfe_inutilizadas;1] @codigo_loja int
as

set nocount on

Select distinct
 t3.codigo_loja                                                                -- by EL 22.2.2012 - linha incluida
,t3.Nota                                     as nfe_nnf
,t3.data_inclusao                       as nfe_demi
,t3.justificativa
,t3.ano
,t3.modelo
,t3.serie
from notas_inutilizadas t3
where t3.codigo_loja = @codigo_loja                            -- by EL 22.2.2012 - linha incluida
order by t3.data_inclusao
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_transmitidas]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE                          proc [dbo].[sp_nfe_transmitidas] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint, @destinatario int, @Modelo char(2), @Serie char(3), @Chave varchar(44) = ''
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
,t1.CalcHoraNFCe                                 as nfe_CalcHoraNFCe        -- by Edson Lima ; 19.05.2017 ; 08:25
,t1.indFinal                                     as nfe_indFinal            -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.indPres                                      as nfe_indPres             -- by Edson Lima ; 21.01.2016 ; 17:28
,t1.CodPed                                       as nfe_CodPed              -- by Edson Lima ; 05.01.2017 ; 16:12
,t1.UsuTrs                                       as nfe_UsuTrs              -- by Edson Lima ; 28.08.2019 ; 09:16
,t1.UsuCnc                                       as nfe_UsuCnc              -- by Edson Lima ; 28.08.2019 ; 09:16

,t2.razao_social				 as des_razao_social

,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)
	  else dbo.formatarCPF(t2.cnpj) end      as des_cnpj
from nfe t1

inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo

where 
   (
	t1.codigo_loja             = @codigo_loja
and t1.chave_nfe              is not null
and ( (( t1.dEmi between @data_inicio and @data_final ) and ( @Nota = 0 ) and ( @destinatario = 0 )) or
      (( t1.nnf = @nota )  and  ( t1.codigo_destinatario     = @destinatario or @destinatario = 0 )) or
      (( t1.nnf = @nota or @Nota = 0 ) and ( t1.codigo_destinatario               = @destinatario )) )   -- By Edson Lima ; 2017/10/17 ---> Filtra período, nota e destinatario sem periodo 
and (t1.Modelo                 = @Modelo or @Modelo = '')                                                -- By Edson Lima ; 2015/11/27 ---> filtra por Modelo
and (t1.Serie                  = @Serie or @Serie = '')                                                  -- By Edson Lima ; 2016/02/11 ---> filtra por Serie
and ( (IsNull(t1.situacao, '') = '100') or (IsNull(t1.situacao, '') = '150') )
and (@Chave                    = '')
    ) or
    t1.chave_nfe               = @Chave                                                                  -- By Edson Lima ; 2017/10/17 ---> busca pela chave

order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                                                            -- By Edson Lima 11.2.2016
GO
/****** Object:  StoredProcedure [dbo].[sp_nfe_transmitidas;1]    Script Date: 18/09/2019 13:44:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE proc [dbo].[sp_nfe_transmitidas;1] @codigo_loja int, @data_inicio datetime, @data_final datetime, @nota bigint
as

set nocount on

Select distinct
 ''                                                        as checado
,t1.natOp                                            as nfe_natOp
,t1.serie                                              as nfe_serie                    -- By Edson Lima 3.2.2012 ---> linha inserida
,t1.nNF                                               as nfe_nnf
,t1.dEmi                                              as nfe_demi
,t1.total_nf                                          as nfe_total_nf
,t1.protocolo                                       as nfe_protocolo
,t1.recibo                                            as nfe_recibo
,t1.chave_nfe                                     as nfe_chave_nfe
,t1.codigo_destinatario                       as nfe_codigo_destinatario
,(t1.situacao + '-' +t1.motivo)               as nfe_situacao
,t1.data_hora_recebimento                 as nfe_data_hora_recebimento
,t1.nr_dpec                                         as nfe_nr_dpec
 
,t2.razao_social                        as des_razao_social
,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)              
	  else dbo.formatarCPF(t2.cnpj)          end    
as des_cnpj
from nfe t1
inner join destinatario   t2 on t1.codigo_destinatario = t2.codigo
where t1.codigo_loja = @codigo_loja
and t1.chave_nfe is not null
and (t1.dEmi >= @data_inicio or @nota <> 0)
and (t1.dEmi <= @data_final or @nota <> 0)
and (t1.nnf = @nota or @nota = 0)
and IsNull (t1.situacao, '') = '100'
--and t1.situacao <> '101'
--and t1.situacao <> '124'
order by t1.serie, t1.dEmi, t1.nNF       -- By Edson Lima 3.2.2012 ---> order by t2.razao_social
GO
