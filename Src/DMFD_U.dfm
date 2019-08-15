object DMFD: TDMFD
  OldCreateOrder = False
  Height = 639
  Width = 684
  object FDConNFe: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 118
    Top = 28
  end
  object FDConGer: TFDConnection
    Params.Strings = (
      'User_Name=sa'
      'DriverID=MSSQL')
    FetchOptions.AssignedValues = [evMode, evCursorKind]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvAutoConnect, rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    OnError = FDConGerError
    Left = 598
    Top = 28
  end
  object FDQryGeral1: TFDQuery
    Connection = FDConNFe
    Left = 118
    Top = 80
  end
  object FDQryGeral2: TFDQuery
    Connection = FDConNFe
    SQL.Strings = (
      'select * from nfe')
    Left = 118
    Top = 132
  end
  object DataSource17: TDataSource
    DataSet = FDQryGeral2
    Left = 118
    Top = 414
  end
  object DataSource3: TDataSource
    DataSet = FDQuery3
    Left = 204
    Top = 132
  end
  object DataSource5: TDataSource
    DataSet = FDQuery5
    Left = 204
    Top = 240
  end
  object DataSource6: TDataSource
    DataSet = FDQuery6
    Left = 204
    Top = 292
  end
  object DataSource7: TDataSource
    DataSet = FDQuery7
    Left = 202
    Top = 346
  end
  object FDQuery1: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 294
    Top = 26
  end
  object FDQuery2: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 294
    Top = 80
  end
  object FDQuery3: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      ' Checado='#39#39
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.codigo_loja                         as nfe_codigo_loja   -- ' +
        'By Edson Lima 19.3.2013 --> Incluida'
      
        ',t1.serie                               as nfe_serie         -- ' +
        'By Edson Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.modelo                              as nfe_modelo'
      ',t1.dEmi                                as nfe_demi'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ',t1.CodPed                              as nfe_CodPed'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      #9'  else dbo.formatarCPF(t2.cnpj) end   as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario   t2 on t1.codigo_destinatar' +
        'io = t2.codigo')
    Left = 294
    Top = 132
  end
  object FDQuery4: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 294
    Top = 188
  end
  object FDQuery5: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      ' Checado='#39#39
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.codigo_loja                         as nfe_codigo_loja   -- ' +
        'By Edson Lima 19.3.2013 --> Incluida'
      
        ',t1.Serie                               as nfe_Serie         -- ' +
        'By Edson Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.Modelo                              as nfe_Modelo'
      ',t1.dEmi                                as nfe_demi'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ',t1.CodPed                              as nfe_CodPed'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      '      else dbo.formatarCPF(t2.cnpj) end as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario   t2 on t1.codigo_destinatar' +
        'io = t2.codigo')
    Left = 294
    Top = 240
  end
  object FDQuery6: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      ' Checado='#39#39
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.codigo_loja                         as nfe_codigo_loja   -- ' +
        'By Edson Lima 19.3.2013 --> Incluida'
      
        ',t1.serie                               as nfe_serie         -- ' +
        'By Edson Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.modelo                              as nfe_modelo'
      ',t1.dEmi                                as nfe_demi'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      #9'  else dbo.formatarCPF(t2.cnpj) end   as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario   t2 on t1.codigo_destinatar' +
        'io = t2.codigo')
    Left = 294
    Top = 292
  end
  object FDQuery7: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ' t3.Nota                                as nfe_nnf'
      ',t3.data_inclusao                       as nfe_demi'
      ',t3.justificativa'
      ',t3.ano'
      ',t3.modelo'
      ',t3.serie'
      'from notas_inutilizadas t3'
      '')
    Left = 294
    Top = 346
  end
  object FDQuery8: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 294
    Top = 402
  end
  object FDQuery9: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 294
    Top = 460
  end
  object FDQuery10: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      ' Checado='#39#39
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.serie                               as nfe_serie   -- By Eds' +
        'on Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.dEmi                                as nfe_demi'
      ',t1.Modelo                              as nfe_Modelo'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ',t1.CodPed                              as nfe_CodPed'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      #9'  else dbo.formatarCPF(t2.cnpj) end   as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario   t2 on t1.codigo_destinatar' +
        'io = t2.codigo')
    Left = 468
    Top = 26
  end
  object FDQuery11: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select'
      ''
      ' t1.idLote                      as    CCe_idLote'
      ',t1.Codigo_Loja                 as    CCe_Codigo_Loja'
      ',t1.nNF                         as    CCe_nNF'
      ',t1.dEmi                        as    CCe_dEmi'
      ',t1.Evento                      as    CCe_Evento'
      ',t1.Serie                       as    CCe_Serie'
      ',t1.Modelo                      as    CCe_Modelo'
      ',t1.Ver_Laiaute                 as    CCe_Ver_Laiaute'
      ',t1.id                          as    CCe_id'
      ',t1.cOrgao                      as    CCe_cOrgao'
      ',t1.chave_nfe                   as    CCe_chave_nfe'
      ',t1.dhEvento                    as    CCe_dhEvento'
      ',t1.tpEvento                    as    CCe_tpEvento'
      ',t1.nSeqEvento                  as    CCe_nSeqEvento'
      ',t1.Ver_CCe                     as    CCe_Ver_CCe'
      ',t1.desc_Evento                 as    CCe_desc_Evento'
      ',t1.xCondUso                    as    CCe_xCondUso'
      ',t1.cStat                       as    CCe_cStat'
      ',t1.xMotivo                     as    CCe_xMotivo'
      ',t1.emailDest                   as    CCe_emailDest'
      ',t1.dhRegEvento                 as    CCe_dhRegEvento'
      ',t1.nProt                       as    CCe_nProt'
      ',t1.xCorrecao                   as    CCe_xCorrecao'
      ''
      ',t2.evento_CCe                  as    NFe_evento_CCe'
      ',t2.xCorrecao_CCe               as    NFe_xCorrecao_CCe'
      ',t2.cStat_CCe                   as    NFe_cStat_CCe'
      ',t2.xMotivo_CCe                 as    NFe_xMotivo_CCe'
      ',t2.dhRegEvento_CCe             as    NFe_dhRegEvento_CCe'
      ',t2.nProt_CCe                   as    NFe_nProt_CCe'
      ',t2.data_hora_recebimento       as    NFe_data_hora_recebimento'
      ',t2.situacao                    as    NFe_situacao'
      ',t2.motivo                      as    NFe_motivo'
      ',t2.dEmi                        as    NFe_dEmi'
      ',t2.Modelo                      as    NFe_Modelo'
      ',t2.Serie                       as    NFe_Serie'
      ''
      ',case when len(t3.cnpj) > 11 then dbo.formatarCNPJ(t3.cnpj)'
      '      else dbo.formatarCPF(t3.cnpj) end'
      '                                as Des_cnpj'
      ''
      
        'from nfe_CCe t1 join nfe             t2 on t1.nNF               ' +
        '  = t2.nnf     and'
      
        '                                           t1.dEmi              ' +
        '  = t2.dEmi    and'
      
        '                                           t1.Modelo            ' +
        '  = t2.Modelo  and'
      
        '                                           t1.Serie             ' +
        '  = t2.Serie'
      
        '                join destinatario    t3 on t2.codigo_destinatari' +
        'o = t3.codigo'
      ''
      ' where t1.Codigo_Loja       = :Codigo_Loja        and'
      '       t2.Codigo_Loja       = :Codigo_Loja        and'
      '       isnull( t1.Evento, '#39#39') like '#39'%'#39' + :Evento + '#39'%'#39' and'
      '       isnull( t1.nNF, '#39#39') like '#39'%'#39' + :Nota + '#39'%'#39
      ''
      ' Order by t1.idLote DESC')
    Left = 468
    Top = 80
    ParamData = <
      item
        Name = 'CODIGO_LOJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'EVENTO'
        DataType = ftWideString
        ParamType = ptInput
      end
      item
        Name = 'NOTA'
        DataType = ftWideString
        ParamType = ptInput
      end>
  end
  object FDQuery12: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'select justificativa from notas_inutilizadas')
    Left = 468
    Top = 132
  end
  object FDQuery13: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select'
      ''
      '   Checado='#39#39
      '  ,id'
      '  ,origem'
      '  ,dt_inclusao'
      '  ,codigo_loja'
      '  ,dEmi'
      '  ,nNF'
      '  ,Modelo'
      '  ,Serie'
      
        '  ,xml_nota,   xml_nota1,  xml_nota2,  xml_nota3,  xml_nota4,  x' +
        'ml_nota5'
      
        '  ,xml_nota6,  xml_nota7,  xml_nota8,  xml_nota9,  xml_nota10, x' +
        'ml_nota11'
      
        '  ,xml_nota12, xml_nota13, xml_nota14, xml_nota15, xml_nota16, x' +
        'ml_nota17'
      
        '  ,xml_nota18, xml_nota19, xml_nota20, xml_nota21, xml_nota22, x' +
        'ml_nota23'
      
        '  ,xml_nota24, xml_nota25, xml_nota26, xml_nota27, xml_nota28, x' +
        'ml_nota29'
      
        '  ,xml_nota30, xml_nota31, xml_nota32, xml_nota33, xml_nota34, x' +
        'ml_nota35'
      '  ,xml_nota36, xml_nota37, xml_nota38, xml_nota39, xml_nota40'
      ''
      ' from nfe_xml t1'
      '  where codigo_loja                = :codigo_loja and'
      '        isnull( nNF, '#39#39')  Like '#39'%'#39' + :nNF + '#39'%'#39)
    Left = 468
    Top = 188
    ParamData = <
      item
        Name = 'CODIGO_LOJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'NNF'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object FDQuery14: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      '  Checado='#39#39
      ' ,t1.Xml_Aut               as  MDFe_Xml_Aut'
      ' ,t1.Xml_Bai               as  MDFe_Xml_Bai'
      ' ,t1.idLote                as  MDFe_idLote'
      ' ,t1.Codigo_Loja           as  MDFe_Codigo_Loja'
      ' ,t1.Chave_nfe             as  MDFe_Chave_nfe'
      ' ,t1.Evento                as  MDFe_Evento'
      ' ,t1.Ver_Leiaute           as  MDFe_Ver_Leiaute'
      ' ,t1.id                    as  MDFe_id'
      ' ,t1.cOrgao                as  MDFe_cOrgao'
      ' ,t1.dhEvento              as  MDFe_dhEvento'
      ' ,t1.tpEvento              as  MDFe_tpEvento'
      ' ,t1.nSeqEvento            as  MDFe_nSeqEvento'
      ' ,t1.verEvento             as  MDFe_verEvento'
      ' ,t1.desEvento             as  MDFe_desEvento'
      ' ,t1.xJust                 as  MDFe_xJust'
      ' ,t1.cStat                 as  MDFe_cStat'
      ' ,t1.xMotivo               as  MDFe_xMotivo'
      ' ,t1.dhRegEvento           as  MDFe_dhRegEvento'
      ' ,t1.nProt                 as  MDFe_nProt'
      ' ,t1.NSU                   as  MDFe_NSU'
      ' ,t1.xNome                 as  MDFe_xNome'
      ' ,t1.cnpj_cpf              as  MDFe_cnpj_cpf'
      ' ,t1.IE                    as  MDFe_IE'
      ' ,t1.dEmi                  as  MDFe_dEmi'
      ' ,t1.tpNF                  as  MDFe_tpNF'
      ' ,t1.vNF                   as  MDFe_vNF'
      ' ,t1.digVal                as  MDFe_digVal'
      ' ,t1.dhRecbto              as  MDFe_dhRecbto'
      ' ,t1.cSitNFe               as  MDFe_cSitNFe'
      ' ,t1.cSitConf              as  MDFe_cSitConf'
      ''
      ' ,t2.cnpj                  as  MEMI_cnpj'
      ''
      ''
      
        ' ,PosMov = CASE t3.PosMov WHEN '#39'C'#39'      THEN Cast('#39'2'#39' AS Integer' +
        ')'
      
        '                          WHEN '#39'E'#39'      THEN Cast('#39'3'#39' AS Integer' +
        ')'
      
        '                          WHEN '#39'I'#39'      THEN Cast('#39'4'#39' AS Integer' +
        ')'
      
        '                          WHEN '#39'P'#39'      THEN Cast('#39'5'#39' AS Integer' +
        ')'
      
        '                                        ELSE Cast( ISNULL(t3.Pos' +
        'Mov, '#39'1'#39') AS Integer)'
      '           END'
      ''
      ' ,case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      '       else dbo.formatarCPF(t2.cnpj) end'
      '                           as EMI_cnpj'
      ''
      
        'from nfe_MDFe t1 join emitente t2 on t1.codigo_loja = t2.codigo_' +
        'loja'
      '            left join NFeE_Mov t3 on t1.Chave_nfe   = t3.ChvNFe'
      ''
      
        ' where t1.Codigo_Loja = :Codigo_Loja1                           ' +
        '  and'
      
        '       t2.Codigo_Loja = :Codigo_Loja2                           ' +
        '  and'
      
        '       isnull( t1.cSitConf,  '#39#39') like '#39'%'#39' + :cSitConf  + '#39'%'#39'    ' +
        '  and'
      
        '       isnull( t1.Chave_nfe, '#39#39') like '#39'%'#39' + :Chave_nfe + '#39'%'#39'    ' +
        '  and'
      
        '       isnull( t1.dEmi, '#39#39')      >= :DtInicial                  ' +
        '  and'
      '       isnull( t1.dEmi, '#39#39')      <= :DtFinal'
      ' Order by t1.dEmi DESC')
    Left = 468
    Top = 240
    ParamData = <
      item
        Name = 'CODIGO_LOJA1'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CODIGO_LOJA2'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'CSITCONF'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CHAVE_NFE'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'DTINICIAL'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'DTFINAL'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object FDQuery15: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      ' Select distinct'
      ''
      ' Checado='#39#39
      ',t1.codigo_loja                         as nfe_codigo_loja'
      ',t1.natOp                               as nfe_natOp'
      ',t1.serie                               as nfe_serie'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.dEmi                                as nfe_demi'
      ',t1.Modelo                              as nfe_Modelo'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      #9'  else dbo.formatarCPF(t2.cnpj) end   as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario  t2 on t1.codigo_destinatari' +
        'o = t2.codigo'
      ''
      'where isnull( t1.dEmi, '#39#39')              < :DatCon and'
      '      isnull( t1.codigo_loja, '#39#39')       = :CodEmp and'
      '      isnull( t1.situacao, '#39#39')          = :Situac')
    Left = 468
    Top = 292
    ParamData = <
      item
        Name = 'DATCON'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'CODEMP'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'SITUAC'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object FDQuery16: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      ' Select'
      ''
      '   Checado='#39#39
      '  ,codigo                              as codigo'
      '  ,razao_social                        as razao_social'
      '  ,cnpj                                as cnpj'
      '  ,email                               as email'
      ''
      ' from destinatario'
      ''
      '  where'
      
        '        isnull( razao_social, '#39#39') like '#39'%'#39' + :razao_social  + '#39'%' +
        #39
      '        and email is not null'
      '        and email <> '#39#39
      ''
      '  Order by razao_social')
    Left = 468
    Top = 346
    ParamData = <
      item
        Name = 'RAZAO_SOCIAL'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object DataSource10: TDataSource
    DataSet = FDQuery10
    Left = 384
    Top = 26
  end
  object DataSource11: TDataSource
    DataSet = FDQuery11
    Left = 384
    Top = 80
  end
  object DataSource12: TDataSource
    DataSet = FDQuery12
    Left = 384
    Top = 132
  end
  object DataSource14: TDataSource
    DataSet = FDQuery14
    Left = 384
    Top = 240
  end
  object DataSource15: TDataSource
    DataSet = FDQuery15
    Left = 384
    Top = 292
  end
  object DataSource16: TDataSource
    DataSet = FDQuery16
    Left = 384
    Top = 346
  end
  object DataSource13: TDataSource
    DataSet = FDQuery13
    Left = 384
    Top = 188
  end
  object FDQryGer: TFDQuery
    Connection = FDConGer
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 600
    Top = 80
  end
  object spVrfCanNot: TFDStoredProc
    Connection = FDConGer
    FetchOptions.AssignedValues = [evCursorKind]
    StoredProcName = 'sp_VrfCanNot'
    Left = 600
    Top = 134
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CodEmp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CodPed'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spCanNot: TFDStoredProc
    Connection = FDConGer
    FetchOptions.AssignedValues = [evCursorKind]
    StoredProcName = 'sp_CanNot'
    Left = 600
    Top = 190
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CodEmp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CodPed'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@CodMot'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object spVrfInuNot: TFDStoredProc
    Connection = FDConGer
    FetchOptions.AssignedValues = [evCursorKind]
    StoredProcName = 'sp_VrfInuNot'
    Left = 602
    Top = 240
    ParamData = <
      item
        Position = 1
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        ParamType = ptResult
      end
      item
        Position = 2
        Name = '@CodEmp'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 3
        Name = '@CodNot'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 4
        Name = '@ModNot'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Position = 5
        Name = '@SerNot'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSource18: TDataSource
    DataSet = FDQuery18
    Left = 384
    Top = 402
  end
  object FDQuery18: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select distinct'
      ''
      ' Checado='#39#39
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.codigo_loja                         as nfe_codigo_loja   -- ' +
        'By Edson Lima 19.3.2013 --> Incluida'
      
        ',t1.Serie                               as nfe_Serie         -- ' +
        'By Edson Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.Modelo                              as nfe_Modelo'
      ',t1.dEmi                                as nfe_demi'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      ',t1.motivo                              as nfe_motivo'
      
        ',t1.data_hora_recebimento               as nfe_data_hora_recebim' +
        'ento'
      ',t1.nr_dpec                             as nfe_nr_dpec'
      ',t1.CodPed                              as nfe_CodPed'
      ''
      ',t2.razao_social                        as des_razao_social'
      ',case when len(t2.cnpj) > 11 then dbo.formatarCNPJ(t2.cnpj)'
      '      else dbo.formatarCPF(t2.cnpj) end as des_cnpj'
      ''
      
        'from nfe t1 inner join destinatario   t2 on t1.codigo_destinatar' +
        'io = t2.codigo')
    Left = 468
    Top = 404
  end
  object FDQryGeral3: TFDQuery
    Connection = FDConNFe
    SQL.Strings = (
      'select * from nfe')
    Left = 118
    Top = 186
  end
  object FDQryGeral4: TFDQuery
    Connection = FDConNFe
    SQL.Strings = (
      'select * from nfe')
    Left = 118
    Top = 238
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 208
    Top = 28
  end
  object FDQuery19: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    Left = 472
    Top = 460
  end
  object FDQryGeral5: TFDQuery
    Connection = FDConNFe
    SQL.Strings = (
      'select * from nfe')
    Left = 118
    Top = 292
  end
  object FDQuery20: TFDQuery
    Connection = FDConNFe
    FetchOptions.AssignedValues = [evCursorKind]
    SQL.Strings = (
      'Select'
      ''
      '   Checado='#39#39
      '  ,id'
      '  ,origem'
      '  ,dt_inclusao'
      '  ,codigo_loja'
      '  ,dEmi'
      '  ,nNF'
      '  ,Serie'
      '  ,Modelo'
      
        '  ,xml_nota,   xml_nota1,  xml_nota2,  xml_nota3,  xml_nota4,  x' +
        'ml_nota5'
      
        '  ,xml_nota6,  xml_nota7,  xml_nota8,  xml_nota9,  xml_nota10, x' +
        'ml_nota11'
      
        '  ,xml_nota12, xml_nota13, xml_nota14, xml_nota15, xml_nota16, x' +
        'ml_nota17'
      
        '  ,xml_nota18, xml_nota19, xml_nota20, xml_nota21, xml_nota22, x' +
        'ml_nota23'
      
        '  ,xml_nota24, xml_nota25, xml_nota26, xml_nota27, xml_nota28, x' +
        'ml_nota29'
      
        '  ,xml_nota30, xml_nota31, xml_nota32, xml_nota33, xml_nota34, x' +
        'ml_nota35'
      '  ,xml_nota36, xml_nota37, xml_nota38, xml_nota39, xml_nota40'
      ''
      ' from nfe_xml t1'
      '  where codigo_loja  = :codigo_loja            and'
      '        dEmi >= :dEmi_I                        and'
      '        dEmi <= :dEmi_F')
    Left = 472
    Top = 526
    ParamData = <
      item
        Name = 'CODIGO_LOJA'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'DEMI_I'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end
      item
        Name = 'DEMI_F'
        DataType = ftDate
        FDDataType = dtDate
        ParamType = ptInput
      end>
  end
end
