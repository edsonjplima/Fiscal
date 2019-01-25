object dmADO: TdmADO
  OldCreateOrder = False
  Left = 911
  Top = 73
  Height = 616
  Width = 279
  object ADODataSet1: TADODataSet
    Parameters = <>
    Left = 210
    Top = 94
  end
  object ADOQuery1: TADOQuery
    Parameters = <>
    Left = 140
    Top = 8
  end
  object ADOQuery2: TADOQuery
    Parameters = <>
    Left = 140
    Top = 50
  end
  object ADOQuery3: TADOQuery
    Parameters = <>
    SQL.Strings = (
      'Select distinct'
      #39#39'                                      as checado'
      ',t1.natOp                               as nfe_natOp'
      
        ',t1.serie                               as nfe_serie   -- By Eds' +
        'on Lima 6.2.2012 --> Incluida'
      ',t1.nNF                                 as nfe_nnf'
      ',t1.dEmi                                as nfe_demi'
      ',t1.total_nf                            as nfe_total_nf'
      ',t1.protocolo                           as nfe_protocolo'
      ',t1.recibo                              as nfe_recibo'
      ',t1.chave_nfe                           as nfe_chave_nfe'
      
        ',t1.codigo_destinatario                 as nfe_codigo_destinatar' +
        'io'
      ',t1.situacao                            as nfe_situacao'
      
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
    Left = 142
    Top = 94
  end
  object ADOQuery4: TADOQuery
    Parameters = <>
    Left = 140
    Top = 138
  end
  object ADOQuery5: TADOQuery
    Parameters = <>
    Left = 140
    Top = 182
  end
  object ADOQuery6: TADOQuery
    Parameters = <>
    Left = 140
    Top = 228
  end
  object ADOQuery7: TADOQuery
    Parameters = <>
    Left = 140
    Top = 278
  end
  object ADOQuery8: TADOQuery
    Parameters = <>
    Left = 140
    Top = 328
  end
  object ADOQuery9: TADOQuery
    Parameters = <>
    Left = 140
    Top = 382
  end
  object ADOQuery10: TADOQuery
    Parameters = <>
    Left = 140
    Top = 436
  end
  object ADOQuery11: TADOQuery
    Parameters = <>
    Left = 140
    Top = 482
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery3
    Left = 68
    Top = 94
  end
  object DataSource2: TDataSource
    Left = 68
    Top = 182
  end
  object DataSource3: TDataSource
    Left = 68
    Top = 228
  end
  object DataSource4: TDataSource
    Left = 68
    Top = 278
  end
  object DataSource5: TDataSource
    Left = 68
    Top = 436
  end
  object DataSource6: TDataSource
    Left = 68
    Top = 482
  end
end
