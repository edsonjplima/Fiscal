/*
  SCRIPT PARA VERIFICAR DUPLICIDADE NA CHAVE DE TABELAS DO BANCO NFe ; By Renildo ; 08.03.2016 ; 08:31
*/

USE NFe

-- 1. Veiculos

Select Codigo_loja, dEmi, nNF, Modelo, Serie, Count( nnf )
 From nfe_veiculo
  Group By Codigo_loja, dEmi, nNF, Modelo, Serie
   Having Count( nnf ) > 1
   order by demi desc

-- 2. Volumes

Select Codigo_loja, dEmi, nNF, Modelo, Serie, Count( nnf )
 From nfe_volume
  Group By Codigo_loja, dEmi, nNF, Modelo, Serie
   Having Count( nnf ) > 1
   order by demi desc

-- 3. Informações

Select Codigo_loja, dEmi, nNF, inf_campo, Modelo, Serie, Count( nnf )
 From nfe_informacoes
  Group By Codigo_loja, dEmi, nNF, inf_campo, Modelo, Serie
   Having Count( nnf ) > 1
   order by demi desc

-- 3. nfe_referenciada_mod1

Select Codigo_loja, dEmi, nNF, Modelo, Serie, Count( nnf )
 From nfe_referenciada_mod1
  Group By Codigo_loja, dEmi, nNF, Modelo, Serie
   Having Count( nnf ) > 1
   order by demi desc

-- 5. notas_inutilizadas

Select Codigo_loja, nota, ano, Modelo, Serie, Count( nota )
 From notas_inutilizadas
  Group By Codigo_loja, nota, ano, Modelo, Serie
   Having Count( nota ) > 1


