object FrTelMen: TFrTelMen
  Left = 482
  Top = 176
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Menu Fiscal'
  ClientHeight = 468
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 73
    Width = 547
    Height = 217
    Align = alTop
    Caption = 'Relat'#243'rios'
    TabOrder = 0
    object RadioGroup1: TRadioGroup
      Left = 129
      Top = 19
      Width = 85
      Height = 73
      Caption = 'Filtrar Por'
      ItemIndex = 0
      Items.Strings = (
        'Data'
        'COO/CRZ')
      TabOrder = 0
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 7
      Top = 19
      Width = 115
      Height = 73
      Caption = 'Tipo de Emiss'#227'o'
      ItemIndex = 0
      Items.Strings = (
        'Impresso'
        'Arquivo')
      TabOrder = 1
    end
    object GroupBox2: TGroupBox
      Left = 219
      Top = 19
      Width = 321
      Height = 73
      Caption = 'Intervalo'
      TabOrder = 2
      object Label1: TLabel
        Left = 17
        Top = 15
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label2: TLabel
        Left = 17
        Top = 39
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 72
        Top = 15
        Width = 100
        Height = 21
        Date = 40523.000000000000000000
        Time = 40523.000000000000000000
        TabOrder = 0
      end
      object DateTimePicker2: TDateTimePicker
        Left = 72
        Top = 39
        Width = 100
        Height = 21
        Date = 40523.000000000000000000
        Time = 40523.000000000000000000
        TabOrder = 1
      end
    end
    object GroupBox3: TGroupBox
      Left = 219
      Top = 19
      Width = 321
      Height = 73
      Caption = 'N'#250'mero'
      TabOrder = 3
      object Label3: TLabel
        Left = 66
        Top = 17
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label4: TLabel
        Left = 165
        Top = 17
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object Edit1: TEdit
        Left = 66
        Top = 36
        Width = 90
        Height = 21
        TabOrder = 0
        OnKeyPress = Edit1KeyPress
      end
      object Edit2: TEdit
        Left = 165
        Top = 36
        Width = 90
        Height = 21
        TabOrder = 1
        OnKeyPress = Edit2KeyPress
      end
    end
    object btnP: TButton
      Left = 143
      Top = 137
      Width = 130
      Height = 33
      Caption = 'Tab. Prod.'
      TabOrder = 4
      OnClick = btnPClick
    end
    object btnR: TButton
      Left = 410
      Top = 137
      Width = 130
      Height = 33
      Caption = 'Mov. por ECF'
      TabOrder = 5
      OnClick = btnRClick
    end
    object Button5: TButton
      Left = 410
      Top = 98
      Width = 130
      Height = 33
      Caption = 'Espelho MFD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 9
      Top = 137
      Width = 130
      Height = 33
      Caption = 'Arquivo MFD'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnClick = Button6Click
    end
    object Button4: TButton
      Left = 276
      Top = 98
      Width = 130
      Height = 33
      Caption = 'LMFS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button3: TButton
      Left = 143
      Top = 98
      Width = 130
      Height = 33
      Caption = 'LMFC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      OnClick = Button3Click
    end
    object Button1: TButton
      Left = 9
      Top = 98
      Width = 130
      Height = 33
      Caption = 'LX'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      OnClick = Button1Click
    end
    object Button7: TButton
      Left = 276
      Top = 137
      Width = 130
      Height = 33
      Caption = 'Estoque'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = PopupMenu1
      TabOrder = 11
      OnClick = Button7Click
    end
    object Button9: TButton
      Left = 143
      Top = 176
      Width = 130
      Height = 33
      Caption = 'Ident. PAF-ECF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 276
      Top = 176
      Width = 130
      Height = 33
      Caption = 'Vendas do Per'#237'odo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 410
      Top = 176
      Width = 130
      Height = 33
      Caption = 'Tab. '#205'ndice T'#233'c. Produ'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnClick = Button11Click
    end
    object Button2: TButton
      Left = 9
      Top = 176
      Width = 130
      Height = 33
      Caption = 'Meios de Pagto.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      OnClick = Button2Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 0
    Width = 547
    Height = 73
    Align = alTop
    Caption = 'Identifica'#231#227'o do Estabelecimento Usu'#225'rio do PAF-ECF'
    TabOrder = 1
    object Label5: TLabel
      Left = 5
      Top = 23
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label6: TLabel
      Left = 33
      Top = 23
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label7: TLabel
      Left = 135
      Top = 23
      Width = 87
      Height = 13
      Caption = 'Inscri'#231#227'o Estadual'
    end
    object Label8: TLabel
      Left = 237
      Top = 23
      Width = 89
      Height = 13
      Caption = 'Inscri'#231#227'o Municipal'
    end
    object Label9: TLabel
      Left = 343
      Top = 23
      Width = 60
      Height = 13
      Caption = 'Raz'#227'o Social'
    end
    object edtUF: TEdit
      Left = 5
      Top = 38
      Width = 26
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 0
    end
    object edtCNPJ: TEdit
      Left = 33
      Top = 38
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 1
    end
    object edtIE: TEdit
      Left = 135
      Top = 38
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object edtIM: TEdit
      Left = 237
      Top = 38
      Width = 100
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 3
    end
    object edtRAZAO: TEdit
      Left = 343
      Top = 38
      Width = 195
      Height = 21
      TabStop = False
      CharCase = ecUpperCase
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 4
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 427
    Width = 547
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 458
      Top = 9
      Width = 80
      Height = 25
      Caption = '&Fecha'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
      Kind = bkClose
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 290
    Width = 547
    Height = 59
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object GroupBox5: TGroupBox
      Left = 0
      Top = 0
      Width = 281
      Height = 59
      Align = alLeft
      Caption = 'Op'#231#227'o v'#225'lida apenas para Mov. por ECF'
      TabOrder = 0
      object Label10: TLabel
        Left = 9
        Top = 25
        Width = 37
        Height = 18
        Caption = 'ECF:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox2: TComboBox
        Left = 57
        Top = 25
        Width = 220
        Height = 26
        Style = csDropDownList
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 0
      end
    end
    object RadioGroup3: TRadioGroup
      Left = 281
      Top = 0
      Width = 260
      Height = 59
      Align = alLeft
      Caption = 'Vendas do Per'#237'odo (Sintegra / SPED)'
      ItemIndex = 0
      Items.Strings = (
        'Conv'#234'nio 57/95'
        'Ato COTEPE/ICMS 09/08')
      TabOrder = 1
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 349
    Width = 547
    Height = 78
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 4
    object RadioGroup4: TRadioGroup
      Left = 0
      Top = 0
      Width = 187
      Height = 78
      Align = alLeft
      Caption = ' Finalidade Arq. Magn'#233'tico (Sintegra)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '1 - Normal'
        '2 - Retifica'#231#227'o total de arquivo')
      ParentFont = False
      TabOrder = 0
    end
    object GroupBox6: TGroupBox
      Left = 380
      Top = 0
      Width = 161
      Height = 78
      Align = alLeft
      Caption = 'SPED'
      TabOrder = 1
      object Label11: TLabel
        Left = 6
        Top = 17
        Width = 40
        Height = 18
        Caption = 'Perfil:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 6
        Top = 41
        Width = 93
        Height = 18
        Caption = 'C'#243'd. Vers'#227'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 103
        Top = 17
        Width = 55
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 0
      end
      object Edit4: TEdit
        Left = 103
        Top = 44
        Width = 55
        Height = 21
        TabStop = False
        CharCase = ecUpperCase
        Color = clBtnFace
        ReadOnly = True
        TabOrder = 1
      end
    end
    object RadioGroup5: TRadioGroup
      Left = 187
      Top = 0
      Width = 193
      Height = 78
      Align = alLeft
      Caption = ' Finalidade Arq. Magn'#233'tico  (SPED)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        '0 - Remessa do Arquivo Original'
        '1 - Remessa do Arquivo Substituto')
      ParentFont = False
      TabOrder = 2
    end
  end
  object qryTabPro: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 233
    Top = 16
  end
  object qryMovCNF: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 65
    Top = 16
  end
  object qryMovRDZ: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 169
    Top = 16
  end
  object qryIteCNF: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 129
    Top = 16
  end
  object qryPagCNF: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 97
    Top = 16
  end
  object qryRDZAliquotas: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 201
    Top = 16
  end
  object qryTabEcf: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select Distinct IdTabEcf '
      'From MovRdz              '
      'Where IdTabEmp = :ilCodEmp')
    Left = 280
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end>
    object qryTabEcfIdTabEcf: TStringField
      FieldName = 'IdTabEcf'
      Origin = 'GBPAF_WST.MovRdz.IdTabEcf'
      Size = 21
    end
  end
  object dsTabEcf: TDataSource
    DataSet = qryTabEcf
    Left = 312
    Top = 16
  end
  object qryMovNot: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      ' TipNot = M.TipOpe, '
      ' Cnpj   = F.CPFCNPJ,   '
      ' InsEst = F.InscEstadual, '
      ' DatNot = M.DataOpe, '
      ' CodEst = D.UF, '
      ' Modelo = M.ModeloNota, '
      ' Serie  = M.SerieNota, '
      ' SubSerie = M.SubSerieNota,'
      
        ' CodNot   = Cast( SubString( Cast( M.NumeroNota As Varchar(15) )' +
        ', 1, 6 ) As Integer ),'
      ' CodCfo   = cast(M.IdTabCfo as Varchar), '
      ' ValNot   = M.VlrNota, '
      ' BasIcm   = M.VlrBcIcms, '
      ' ValIcm   = M.VlrIcms, '
      ' ValIpi   = Convert( Float, M.VlrIpi ),'
      ' ValOut   = Convert( Float, M.VlrOutras ), '
      ' ICMS     = M.AlqIcms, '
      ' Situac   = '#39'N'#39', '
      ' TipFre   = M.TipFre'
      ''
      'From MovNot M  '
      ' Join TabPes F On M.IdTabPes = F.IdTabPes'
      ' Join TabCid D On F.IdTabCid = D.IdTabCid'
      ''
      'Where'
      ' M.IdTabEmp = :iCodEmp and'
      ' M.DataOpe >= :dDatIni and M.DataOpe <= :dDatFin and'
      ' M.PosNot = '#39'A'#39
      ''
      'Order By '
      ' TipNot, '
      ' CodNot'
      ' '
      ' ')
    Left = 65
    Top = 67
    ParamData = <
      item
        DataType = ftInteger
        Name = 'iCodEmp'
        ParamType = ptUnknown
        Value = '1'
      end
      item
        DataType = ftDateTime
        Name = 'dDatIni'
        ParamType = ptUnknown
        Value = '2011/02/01'
      end
      item
        DataType = ftDateTime
        Name = 'dDatFin'
        ParamType = ptUnknown
        Value = '2001/02/28'
      end>
    object qryMovNotTipNot: TStringField
      FieldName = 'TipNot'
      Size = 1
    end
    object qryMovNotCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 18
    end
    object qryMovNotInsEst: TStringField
      FieldName = 'InsEst'
      Size = 25
    end
    object qryMovNotDatNot: TDateTimeField
      FieldName = 'DatNot'
    end
    object qryMovNotCodEst: TStringField
      FieldName = 'CodEst'
      FixedChar = True
      Size = 2
    end
    object qryMovNotModelo: TStringField
      FieldName = 'Modelo'
      FixedChar = True
      Size = 2
    end
    object qryMovNotSerie: TStringField
      FieldName = 'Serie'
      FixedChar = True
      Size = 3
    end
    object qryMovNotSubSerie: TStringField
      FieldName = 'SubSerie'
      FixedChar = True
      Size = 2
    end
    object qryMovNotCodNot: TIntegerField
      FieldName = 'CodNot'
    end
    object qryMovNotCodCfo: TStringField
      FieldName = 'CodCfo'
      FixedChar = True
      Size = 5
    end
    object qryMovNotValNot: TFloatField
      FieldName = 'ValNot'
    end
    object qryMovNotBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object qryMovNotValIcm: TFloatField
      FieldName = 'ValIcm'
    end
    object qryMovNotValIpi: TFloatField
      FieldName = 'ValIpi'
    end
    object qryMovNotValOut: TFloatField
      FieldName = 'ValOut'
    end
    object qryMovNotICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qryMovNotSituac: TStringField
      FieldName = 'Situac'
      Size = 1
    end
    object qryMovNotTipFre: TStringField
      FieldName = 'TipFre'
      Size = 1
    end
  end
  object qryIteNot: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  TipNot         = M.TipOpe, '
      '  Cnpj           = F.CPFCNPJ,   '
      '  Modelo         = M.ModeloNota,    '
      '  Serie          = M.SerieNota, '
      '  SubSerie       = M.SubSerieNota,'
      
        '  CodNot         = Cast( SubString( Cast( M.NumeroNota As Varcha' +
        'r(15) ), 1, 6 ) As Integer ),'
      '  CodCfo         = cast(I.IdTabCfo as Varchar),   '
      '  CodPro         = cast(I.IdTabPro as varchar), '
      '  QtdPro         = I.QtdPro,    '
      '  ValPro         = ( I.QtdPro * I.VlrPro ), '
      '  ValDes         = 0.0,'
      '  BasIcm         = ( I.QtdPro * I.VlrPro ),  '
      '  BasSbt         = '#39'000000000000'#39', '
      '  ValIpi         = Convert( Float, I.VlrIpi ), '
      '  ICMS           = M.AlqIcms,'
      '  ValFre         = Convert( Float, M.VlrFrete ), '
      '  SitTri         = I.IdTabStb'
      ''
      'From IteNot I '
      
        '  Join MovNot M On I.IdTabEmp = M.IdTabEmp and I.IdTabPes = M.Id' +
        'TabPes and I.NumeroNota = M.NumeroNota '
      '  Join TabPes F On M.IdTabPes = F.IdTabPes'
      ''
      'Where'
      '  M.IdTabEmp  = :iCodEmp and'
      '  M.DataOpe  >= :dDatIni and M.DataOpe <= :dDatFin and'
      '  M.PosNot = '#39'A'#39
      ''
      'Order By '
      '  TipNot, '
      '  CodNot, '
      '  CodPro'
      ' ')
    Left = 97
    Top = 67
    ParamData = <
      item
        DataType = ftInteger
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dDatFin'
        ParamType = ptUnknown
      end>
    object qryIteNotTipNot: TStringField
      FieldName = 'TipNot'
      Size = 1
    end
    object qryIteNotCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 18
    end
    object qryIteNotModelo: TStringField
      FieldName = 'Modelo'
      FixedChar = True
      Size = 2
    end
    object qryIteNotSerie: TStringField
      FieldName = 'Serie'
      FixedChar = True
      Size = 3
    end
    object qryIteNotSubSerie: TStringField
      FieldName = 'SubSerie'
      FixedChar = True
      Size = 2
    end
    object qryIteNotCodNot: TIntegerField
      FieldName = 'CodNot'
    end
    object qryIteNotCodCfo: TStringField
      FieldName = 'CodCfo'
      FixedChar = True
      Size = 4
    end
    object qryIteNotCodPro: TStringField
      FieldName = 'CodPro'
      Size = 15
    end
    object qryIteNotValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryIteNotQtdPro: TFloatField
      FieldName = 'QtdPro'
    end
    object qryIteNotValDes: TFloatField
      FieldName = 'ValDes'
    end
    object qryIteNotBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object qryIteNotBasSbt: TStringField
      FieldName = 'BasSbt'
      Size = 12
    end
    object qryIteNotValIpi: TFloatField
      FieldName = 'ValIpi'
    end
    object qryIteNotICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qryIteNotValFre: TFloatField
      FieldName = 'ValFre'
    end
    object qryIteNotSitTri: TStringField
      FieldName = 'SitTri'
      FixedChar = True
      Size = 3
    end
  end
  object qryResECF: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  Ord      = 1,  '
      '  TipReg   = '#39'M'#39', '
      '  DatEmi   = M.DatMov, '
      
        '  CodECFp  = substring ( M.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( M.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',   '
      '  DocIni   = M.CooIni,'
      '  DocFin   = M.CooFin, '
      '  ReducaoZ = M.Crz,   '
      '  GTRnc    = M.Cro,  '
      '  GTIni    = M.ValBru,   '
      '  GTFin    = M.ValGtot,   '
      '  SitTri   = '#39'    '#39', '
      '  GTPrc    = 0.0'
      'From MovRDZ M '
      ''
      'Where'
      '  M.IdTabEmp  = :iCodEmp  and'
      '  M.IdTabEcf   = :iCodEcf and'
      '  M.DatMov   >= :dlDatIni and M.DatMov <= :dlDatFin'
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = A.DatMov,  '
      
        '  CodECFp  = substring ( A.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( A.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = '#39'CANC'#39',       '
      '  GTPrc    = A.ValCanIcms'
      ''
      'From MovRDZ A'
      ''
      'Where'
      '  A.IdTabEmp  = :iCodEmp  and'
      '  A.IdTabEcf   = :iCodEcf and'
      '  A.DatMov   >= :dlDatIni and A.DatMov <= :dlDatFin'
      ''
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = B.DatMov,  '
      
        '  CodECFp  = substring ( B.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( B.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = '#39'DESC'#39',       '
      '  GTPrc    = B.ValDesIcms'
      ''
      'From MovRDZ B '
      ''
      'Where'
      '  B.IdTabEmp  = :iCodEmp  and'
      '  B.IdTabEcf   = :iCodEcf and'
      '  B.DatMov   >= :dlDatIni and B.DatMov <= :dlDatFin'
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = C.DatMov,  '
      
        '  CodECFp  = substring ( C.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( C.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = '#39'F'#39',       '
      '  GTPrc    = C.ValF1_ICMS + C.ValF2_ICMS'
      ''
      'From MovRDZ C '
      ''
      'Where'
      '  C.IdTabEmp  = :iCodEmp  and'
      '  C.IdTabEcf   = :iCodEcf and'
      '  C.DatMov   >= :dlDatIni and C.DatMov <= :dlDatFin'
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = D.DatMov,  '
      
        '  CodECFp  = substring ( D.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( D.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = '#39'I'#39',       '
      '  GTPrc    = D.ValI1_ICMS + D.ValI2_ICMS'
      ''
      'From MovRDZ D '
      ''
      'Where'
      '  D.IdTabEmp  = :iCodEmp  and'
      '  D.IdTabEcf   = :iCodEcf and'
      '  D.DatMov   >= :dlDatIni and D.DatMov <= :dlDatFin'
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = E.DatMov,  '
      
        '  CodECFp  = substring ( E.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( E.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = '#39'N'#39',       '
      '  GTPrc    = E.ValN1_ICMS + E.ValN2_ICMS'
      ''
      'From MovRDZ E '
      ''
      'Where'
      '  E.IdTabEmp  = :iCodEmp  and'
      '  E.IdTabEcf   = :iCodEcf and'
      '  E.DatMov   >= :dlDatIni and E.DatMov <= :dlDatFin'
      ''
      'Union All'
      ''
      'Select'
      '  Ord      = 2,  '
      '  TipReg   = '#39'A'#39', '
      '  DatEmi   = F.DatMov,  '
      
        '  CodECFp  = cast(substring ( F.IdTabEcf, 18, 3) as Integer), --' +
        ' numero seq. os ultimos 3 numeros'
      '  CodECFf  = substring ( F.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39',  '
      '  DocIni   = 0,'
      '  DocFin   = 0, '
      '  ReducaoZ = 0,   '
      '  GTRnc    = 0, '
      '  GTIni    = 0.0, '
      '  GTFin    = 0.0, '
      '  SitTri   = F.Aliquota,       '
      '  GTPrc    = F.ValImposto'
      ''
      'From IteRdzIcms F '
      ''
      'Where'
      '  F.IdTabEmp  = :iCodEmp  and'
      '  F.IdTabEcf   = :iCodEcf and'
      '  F.DatMov   >= :dlDatIni and F.DatMov <= :dlDatFin'
      ''
      'Order By '
      '  CodEcff,'
      '  DatEmi, '
      '  Ord')
    Left = 129
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryResECFOrd: TIntegerField
      FieldName = 'Ord'
    end
    object qryResECFTipReg: TStringField
      FieldName = 'TipReg'
      Size = 1
    end
    object qryResECFDatEmi: TDateTimeField
      FieldName = 'DatEmi'
    end
    object qryResECFCodECFp: TIntegerField
      FieldName = 'CodECFp'
    end
    object qryResECFCodECFf: TStringField
      FieldName = 'CodECFf'
      Size = 15
    end
    object qryResECFModelo: TStringField
      FieldName = 'Modelo'
      Size = 2
    end
    object qryResECFDocIni: TIntegerField
      FieldName = 'DocIni'
    end
    object qryResECFDocFin: TIntegerField
      FieldName = 'DocFin'
    end
    object qryResECFReducaoZ: TIntegerField
      FieldName = 'ReducaoZ'
    end
    object qryResECFGTRnc: TIntegerField
      FieldName = 'GTRnc'
    end
    object qryResECFGTIni: TFloatField
      FieldName = 'GTIni'
    end
    object qryResECFGTFin: TFloatField
      FieldName = 'GTFin'
    end
    object qryResECFSitTri: TStringField
      FieldName = 'SitTri'
      Size = 4
    end
    object qryResECFGTPrc: TFloatField
      FieldName = 'GTPrc'
    end
  end
  object qryTp60I: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  TipReg  = '#39'I'#39', '
      '  DatEmi  = M.DatMov, '
      '  CodECFf = I.IdTabEcf, '
      '  Modelo  = '#39'2D'#39', '
      '  CodCup  = M.CCF,'
      '  CodPro  = cast(I.IdTabPro as Varchar),     '
      '  QtdPro  = I.QtdePro, '
      '  ValPro  = I.ValPro,  '
      '  BasICM  = ( I.QtdePro * I.ValPro ),'
      '  ICMS    = I.Aliquota,       '
      '  ValICM = ( ( I.QtdePro * I.ValPro ) * I.Aliquota / 100 )'
      ''
      'From IteCNF I '
      
        '  Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.Id' +
        'TabEcf and I.CCF = M.CCF'
      ''
      'Where'
      '  M.IdTabEmp = :iCodEmp and'
      '  M.IdTabEcf  = :iCodEcf and'
      '  M.DatMov  >= :dDatIni and M.DatMov <= :dDatFin and'
      '  M.CCF       > 0 and'
      '  M.IndicadorCancelamento = '#39'N'#39
      ''
      'Order by '
      '  DatEmi, '
      '  CodCup, '
      '  CodPro')
    Left = 169
    Top = 67
    ParamData = <
      item
        DataType = ftInteger
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'iCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dDatFin'
        ParamType = ptUnknown
      end>
    object qryTp60ITipReg: TStringField
      FieldName = 'TipReg'
      Size = 1
    end
    object qryTp60IDatEmi: TDateTimeField
      FieldName = 'DatEmi'
    end
    object qryTp60ICodECFf: TStringField
      FieldName = 'CodECFf'
      Size = 15
    end
    object qryTp60IModelo: TStringField
      FieldName = 'Modelo'
      Size = 2
    end
    object qryTp60ICodCup: TIntegerField
      FieldName = 'CodCup'
    end
    object qryTp60ICodPro: TStringField
      FieldName = 'CodPro'
      Size = 15
    end
    object qryTp60IValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryTp60IQtdPro: TFloatField
      FieldName = 'QtdPro'
    end
    object qryTp60IBasICM: TFloatField
      FieldName = 'BasICM'
    end
    object qryTp60IICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qryTp60IValICM: TFloatField
      FieldName = 'ValICM'
    end
  end
  object qryTp60R: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 201
    Top = 67
    object qryTp60RTipReg: TStringField
      FieldKind = fkCalculated
      FieldName = 'TipReg'
      Size = 1
      Calculated = True
    end
    object qryTp60RAnoEmi: TIntegerField
      FieldName = 'AnoEmi'
    end
    object qryTp60RMesEmi: TIntegerField
      FieldName = 'MesEmi'
    end
    object qryTp60RCodPro: TStringField
      FieldName = 'CodPro'
      Size = 15
    end
    object qryTp60RICMS: TFloatField
      FieldName = 'ICMS'
    end
    object qryTp60RValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryTp60RQtdPro: TFloatField
      FieldName = 'QtdPro'
    end
    object qryTp60RBasICM: TFloatField
      FieldName = 'BasICM'
    end
  end
  object qryProIvt: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 233
    Top = 67
    object qryProIvtCodPro: TStringField
      FieldName = 'CodPro'
      Size = 30
    end
    object qryProIvtNomPro: TStringField
      FieldName = 'NomPro'
      Size = 152
    end
    object qryProIvtCodNCM: TStringField
      FieldName = 'CodNCM'
      Size = 8
    end
    object qryProIvtUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 6
    end
    object qryProIvtIPI: TStringField
      FieldName = 'IPI'
      Size = 5
    end
    object qryProIvtICMS: TStringField
      FieldName = 'ICMS'
      Size = 30
    end
    object qryProIvtReducaoICMS: TStringField
      FieldName = 'ReducaoICMS'
      Size = 5
    end
    object qryProIvtBasIcmSbt: TStringField
      FieldName = 'BasIcmSbt'
      Size = 13
    end
    object qryProIvtQtdIvt: TFloatField
      FieldName = 'QtdIvt'
    end
    object qryProIvtCstIvt: TFloatField
      FieldName = 'CstIvt'
    end
    object qryProIvtCodigoPosse: TStringField
      FieldName = 'CodigoPosse'
      Size = 1
    end
    object qryProIvtCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object qryProIvtInsEst: TStringField
      FieldName = 'InsEst'
      Size = 14
    end
    object qryProIvtUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object qryTabPro75: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 280
    Top = 67
    object qryTabPro75CodPro: TStringField
      FieldName = 'CodPro'
      Size = 15
    end
    object qryTabPro75NomPro: TStringField
      FieldName = 'NomPro'
      Size = 127
    end
    object qryTabPro75CodNCM: TStringField
      FieldName = 'CodNCM'
      Size = 8
    end
    object qryTabPro75Unidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 3
    end
    object qryTabPro75IPI: TStringField
      FieldName = 'IPI'
      Size = 5
    end
    object qryTabPro75ICMS: TStringField
      FieldName = 'ICMS'
      Size = 4
    end
    object qryTabPro75ReducaoICMS: TStringField
      FieldName = 'ReducaoICMS'
      Size = 5
    end
    object qryTabPro75BasIcmSbt: TStringField
      FieldName = 'BasIcmSbt'
      Size = 13
    end
  end
  object qryTabEmp: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  CodEmp      = E.IdTabEmp, '
      '  NomEmp      = E.RazaoSocial, '
      '  NomFan      = E.NomeFantasia,  '
      '  Endereco    = E.Endereco, '
      '  Complemento = E.Complemento, '
      '  Numero      = cast (E.Numero as Integer),'
      '  Setor       = E.Bairro,  '
      '  NomCid      = C.Descricao, '
      '  CodIBGE     = C.IBGE , '
      '  Estado      = C.Uf,   '
      '  Cep         = E.Cep,         '
      '  Fone        = E.DDDTelefone + E.Telefone,'
      '  Fax         = E.DDDFax + E.Fax,    '
      '  Email       = E.Email,  '
      '  Cnpj        = E.CPFCNPJ,    '
      '  InsEst      = E.InscEstadual,   '
      '  InsMun      = E.InscMunicipal,      '
      '  InsEstSbt   = '#39#39','
      '  E.NomCtd, '
      '  E.CPFCtd, '
      '  E.CRCCtd,  '
      '  E.CNPJCtd,'
      '  E.CEPCtd,'
      '  E.ENDCtd,'
      '  E.COMPLEMENTOCtd,'
      '  E.NUMEROCtd,'
      '  E.BAIRROCtd,'
      '  E.DDDFoneCtd,'
      '  E.FoneCtd,  '
      '  E.DDDFaxCtd,'
      '  E.FaxCtd,'
      '  E.EmailCtd,'
      '  CodIBGECtd  = Ci.IBGE,'
      '  E.PerfilEFD,'
      '  E.CodVerEFD,'
      '  E.CodCtaInvEFD'
      'From TabEmp E '
      '  Left Join TabCid C  On E.IdTabCid = C.IdTabCid'
      '  Left Join TabCid Ci On E.IdTabCidCtd = Ci.IdTabCid'
      ''
      'Where'
      '   E.IdTabEmp = :iCodEmp')
    Left = 73
    Top = 295
    ParamData = <
      item
        DataType = ftInteger
        Name = 'iCodEmp'
        ParamType = ptUnknown
      end>
    object qryTabEmpCodEmp: TIntegerField
      FieldName = 'CodEmp'
      Origin = 'GERPA.TabEmp.CodEmp'
    end
    object qryTabEmpNomEmp: TStringField
      FieldName = 'NomEmp'
      Origin = 'GERPA.TabEmp.NomEmp'
      Size = 50
    end
    object qryTabEmpNomFan: TStringField
      FieldName = 'NomFan'
      Origin = 'GERPA.TabEmp.NomFan'
      Size = 25
    end
    object qryTabEmpEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'GERPA.TabEmp.Endereco'
      Size = 50
    end
    object qryTabEmpComplemento: TStringField
      FieldName = 'Complemento'
      Origin = 'GERPA.TabEmp.Complemento'
      Size = 25
    end
    object qryTabEmpNumero: TIntegerField
      FieldName = 'Numero'
      Origin = 'GERPA.TabEmp.Numero'
    end
    object qryTabEmpSetor: TStringField
      FieldName = 'Setor'
      Origin = 'GERPA.TabEmp.Setor'
      Size = 25
    end
    object qryTabEmpNomCid: TStringField
      FieldName = 'NomCid'
      Origin = 'GERPA.TabCid.NomCid'
      Size = 50
    end
    object qryTabEmpCodIBGE: TIntegerField
      FieldName = 'CodIBGE'
      Origin = 'GERPA.TabCid.CodIBGE'
    end
    object qryTabEmpEstado: TStringField
      FieldName = 'Estado'
      Origin = 'GERPA.TabCid.Estado'
      FixedChar = True
      Size = 2
    end
    object qryTabEmpCep: TStringField
      FieldName = 'Cep'
      Origin = 'GERPA.TabEmp.Cep'
      Size = 9
    end
    object qryTabEmpFone: TStringField
      FieldName = 'Fone'
      Origin = 'GERPA.TabEmp.Fone'
    end
    object qryTabEmpFax: TStringField
      FieldName = 'Fax'
      Origin = 'GERPA.TabEmp.Fax'
    end
    object qryTabEmpEmail: TStringField
      FieldName = 'Email'
      Origin = 'GERPA.TabEmp.Email'
      Size = 50
    end
    object qryTabEmpCnpj: TStringField
      FieldName = 'Cnpj'
      Origin = 'GERPA.TabEmp.Cnpj'
      Size = 18
    end
    object qryTabEmpInsEst: TStringField
      FieldName = 'InsEst'
      Origin = 'GERPA.TabEmp.InsEst'
      Size = 25
    end
    object qryTabEmpInsMun: TStringField
      FieldName = 'InsMun'
      Origin = 'GERPA.TabEmp.InsMun'
      Size = 15
    end
    object qryTabEmpInsEstSbt: TStringField
      FieldName = 'InsEstSbt'
      Origin = 'GERPA.TabEmp.InsEstSbt'
      Size = 25
    end
    object qryTabEmpNomCtd: TStringField
      FieldName = 'NomCtd'
      Origin = 'GERPA.TabEmp.NomCtd'
      Size = 35
    end
    object qryTabEmpCPFCtd: TStringField
      FieldName = 'CPFCtd'
      Origin = 'GERPA.TabEmp.CPFCtd'
      Size = 11
    end
    object qryTabEmpCRCCtd: TStringField
      FieldName = 'CRCCtd'
      Origin = 'GERPA.TabEmp.CRCCtd'
      Size = 10
    end
    object qryTabEmpFoneCtd: TStringField
      FieldName = 'FoneCtd'
      Origin = 'GERPA.TabEmp.FoneCtd'
      Size = 11
    end
    object qryTabEmpEmailCtd: TStringField
      FieldName = 'EmailCtd'
      Origin = 'GERPA.TabEmp.EmailCtd'
      Size = 50
    end
    object qryTabEmpCNPJCtd: TStringField
      FieldName = 'CNPJCtd'
      Size = 18
    end
    object qryTabEmpCEPCtd: TStringField
      FieldName = 'CEPCtd'
      Size = 10
    end
    object qryTabEmpENDCtd: TStringField
      FieldName = 'ENDCtd'
      Size = 50
    end
    object qryTabEmpCOMPLEMENTOCtd: TStringField
      FieldName = 'COMPLEMENTOCtd'
      Size = 50
    end
    object qryTabEmpNUMEROCtd: TStringField
      FieldName = 'NUMEROCtd'
      Size = 50
    end
    object qryTabEmpBAIRROCtd: TStringField
      FieldName = 'BAIRROCtd'
      Size = 50
    end
    object qryTabEmpDDDFoneCtd: TStringField
      FieldName = 'DDDFoneCtd'
      Size = 2
    end
    object qryTabEmpDDDFaxCtd: TStringField
      FieldName = 'DDDFaxCtd'
      Size = 2
    end
    object qryTabEmpFaxCtd: TStringField
      FieldName = 'FaxCtd'
      Size = 10
    end
    object qryTabEmpCodIBGECtd: TIntegerField
      FieldName = 'CodIBGECtd'
    end
    object qryTabEmpPerfilEFD: TStringField
      FieldName = 'PerfilEFD'
      FixedChar = True
      Size = 1
    end
    object qryTabEmpCodVerEFD: TStringField
      FieldName = 'CodVerEFD'
      Size = 3
    end
    object qryTabEmpCodCtaInvEFD: TStringField
      FieldName = 'CodCtaInvEFD'
      Size = 15
    end
  end
  object qryTabPrt: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  CodPrt      = C.IdTabPes,'
      '  NomPrt      = SubString( C.RazaoSocial,   1, 60 ),'
      '  CdPais      = '#39'01058'#39','
      
        '  Cnpj        = Case When C.Tipo  = '#39'J'#39' Then SubString( dbo.fn_O' +
        'nlyNumbers( C.CPFCnpj   ), 1, 14 ) Else '#39#39' End,'
      
        '  Cpf         = Case When C.Tipo  = '#39'F'#39' Then SubString( dbo.fn_O' +
        'nlyNumbers( C.CPFCnpj   ), 1, 11 ) Else '#39#39' End,'
      
        '  InsEst      = Case When C.InscEstadual <> '#39'ISENTO'#39' Then SubStr' +
        'ing( dbo.fn_OnlyNumbers( C.InscEstadual ), 1, 14 ) Else '#39#39' End,'
      '  CodIBGE     = D.IBGE,'
      '  Suframa     = '#39' '#39','
      '  EndPrt      = SubString(          C.Endereco, 1, 60 ),'
      '  Cep         = SubString( dbo.fn_OnlyNumbers( C.Cep ), 1, 08 ),'
      '  Numero      = SubString(          C.Numero, 1, 10 ),'
      '  Complemento = SubString(          C.Complemento, 1, 60 ),'
      '  Setor       = SubString(          C.Bairro,    1, 60 )'
      ''
      'From TabPes C '
      '  Join TabCid D On C.IdTabCid = D.IdTabCid'
      ''
      'Where '
      '  C.IdTabPes In ( Select '
      '                    E.IdTabPes '
      '                  From MovNot E '
      '                  Where '
      '                    E.IdTabEmp  = :ilCodEmp    And'
      
        '                    E.DataOpe  >= :dlDatIni    And E.DataOpe <= ' +
        ':dlDatFin and'
      '                    E.PosNot = '#39'A'#39
      '                 ) ')
    Left = 105
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryTabPrtCodPrt: TIntegerField
      FieldName = 'CodPrt'
    end
    object qryTabPrtNomPrt: TStringField
      FieldName = 'NomPrt'
      Size = 100
    end
    object qryTabPrtCdPais: TStringField
      FieldName = 'CdPais'
      Size = 5
    end
    object qryTabPrtCnpj: TStringField
      FieldName = 'Cnpj'
      Size = 14
    end
    object qryTabPrtCpf: TStringField
      FieldName = 'Cpf'
      Size = 11
    end
    object qryTabPrtInsEst: TStringField
      FieldName = 'InsEst'
      Size = 25
    end
    object qryTabPrtCodIBGE: TIntegerField
      FieldName = 'CodIBGE'
    end
    object qryTabPrtSuframa: TStringField
      FieldName = 'Suframa'
      Size = 1
    end
    object qryTabPrtEndPrt: TStringField
      FieldName = 'EndPrt'
      Size = 60
    end
    object qryTabPrtCep: TStringField
      FieldName = 'Cep'
      Size = 8
    end
    object qryTabPrtNumero: TStringField
      FieldName = 'Numero'
      Size = 1
    end
    object qryTabPrtComplemento: TStringField
      FieldName = 'Complemento'
      Size = 1
    end
    object qryTabPrtSetor: TStringField
      FieldName = 'Setor'
      Size = 50
    end
  end
  object qryTabProSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  CodPro   = P.IdTabPro,'
      
        '  NomPro   = P.Descricao + Case When P.Modelo Is Not Null And P.' +
        'Modelo <> '#39#39' Then '#39', '#39' + P.Modelo Else '#39#39' End,'
      '  CodEan13 = P.CodBarra,'
      '  CodEmb   = E.IdTabEmb,'
      '  TipPro = Case When P.TipPro = 0 Then '#39'00'#39' Else '#39'07'#39' End,'
      '  CodNCM = SubString( P.CodNCM, 1, 08 )'
      ''
      'From TabPro P'
      '  Join TabEmb E On P.IdTabEmb = E.IdTabEmb'
      ''
      'Where P.IdTabPro In '
      '                    ( Select '
      '                        I.IdTabPro'
      '                      From MovNot T '
      '                        Join TabEmp E On T.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteNot I On T.IdTabEmp = I.IdTabEmp' +
        ' And T.IdTabPes = I.IdTabPes And T.NumeroNota = I.NumeroNota'
      '                      Where '
      '                        T.IdTabEmp = :ilCodEmp And'
      
        '                        T.DataOpe >= :dlDatIni And T.DataOpe <= ' +
        ':dlDatFin and'
      '                        T.PosNot = '#39'A'#39
      '                    ) or'
      ''
      'P.IdTabPro In'
      '                    ( Select '
      '                        I.IdTabPro'
      '                      From MovCNF M '
      '                        Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteCNF I On M.IdTabEmp = I.IdTabEmp' +
        ' And M.CCF = I.CCF'
      '                      Where '
      '                        M.IdTabEmp = :ilCodEmp And'
      
        '                        M.DatMov  >= :dlDatIni And M.DatMov <= :' +
        'dlDatFin'
      '                    )'
      ''
      ''
      'Order By '
      '  NomPro, '
      '  CodPro')
    Left = 177
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryTabProSpedCodPro: TIntegerField
      FieldName = 'CodPro'
    end
    object qryTabProSpedNomPro: TStringField
      FieldName = 'NomPro'
      Size = 152
    end
    object qryTabProSpedCodEan13: TStringField
      FieldName = 'CodEan13'
      Size = 13
    end
    object qryTabProSpedCodEmb: TIntegerField
      FieldName = 'CodEmb'
    end
    object qryTabProSpedTipPro: TStringField
      FieldName = 'TipPro'
      Size = 2
    end
    object qryTabProSpedCodNCM: TStringField
      FieldName = 'CodNCM'
      Size = 8
    end
  end
  object qryTabEmb: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select Distinct'
      '  CodEmb = E.IdTabUnd,'
      '  NomEmb = E.Descricao'
      ''
      'From TabPro P '
      '  Join TabEmb E On E.IdTabEmb = P.IdTabEmb'
      ''
      'Where P.IdTabPro In '
      '                   ( Select '
      '                        I.IdTabPro'
      '                      From MovNot T '
      '                        Join TabEmp E On T.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteNot I On T.IdTabEmp = I.IdTabEmp' +
        ' And T.IdTabPes = I.IdTabPes And T.NumeroNota = I.NumeroNota'
      '                      Where '
      '                        T.IdTabEmp = :ilCodEmp And'
      
        '                        T.DataOpe >= :dlDatIni And T.DataOpe <= ' +
        ':dlDatFin and'
      '                        T.PosNot = '#39'A'#39
      '                    ) or'
      ''
      'P.IdTabPro In'
      '                    ( Select '
      '                        I.IdTabPro'
      '                      From MovCNF M '
      '                        Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteCNF I On M.IdTabEmp = I.IdTabEmp' +
        ' And M.CCF = I.CCF'
      '                      Where '
      '                        M.IdTabEmp = :ilCodEmp And'
      
        '                        M.DatMov  >= :dlDatIni And M.DatMov <= :' +
        'dlDatFin'
      '                    )'
      'Order By '
      '  CodEmb, '
      '  NomEmb'
      '')
    Left = 137
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryTabEmbCodEmb: TStringField
      FieldName = 'CodEmb'
      FixedChar = True
      Size = 6
    end
    object qryTabEmbNomEmb: TStringField
      FieldName = 'NomEmb'
      Size = 100
    end
  end
  object qryMovNotSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  TipNot = Case When M.TipOpe = '#39'E'#39' then '#39'0'#39' else '#39'1'#39' End,'
      
        '  TipEmt = Case When C.CPFCnpj = E.CPFCnpj Then '#39'0'#39' Else '#39'1'#39' End' +
        ','
      '  CodPrt = C.IdTabPes,'
      '  Modelo = M.ModeloNota,'
      '  SitNot = Case When M.SitDoc = '#39'N'#39' Then '#39'00'#39' Else '#39'01'#39' End,'
      '  Serie  = M.SerieNota,'
      '  CodNot = M.NumeroNota,'
      '  ChvNFe = M.ChvNFe,'
      '  DatNot = M.DataNota,'
      '  DatOpe = M.DataOpe,'
      '  ValNot = M.VlrNota,'
      '  ValPro = M.VlrMerc,'
      ''
      '  ForPag = Case When M.TipPag = '#39#192' Vista'#39' Then '#39'0'#39' Else'
      
        '           Case When M.TipPag = '#39'A Prazo'#39' Then '#39'1'#39' Else '#39'9'#39' End ' +
        'End,'
      ''
      '  ValDes = M.VlrDesc,'
      ''
      
        '  TipFre = Case When M.TipFre = '#39'Sem Cobran'#231'a de Frete'#39' Then '#39'9'#39 +
        ' Else'
      
        '           Case When M.TipFre = '#39'Por Conta de Terceiros'#39' Then '#39'0' +
        #39' Else'
      
        '           Case When M.TipFre = '#39'Por Conta do Emitente'#39' Then '#39'1'#39 +
        ' Else '#39'2'#39' end end end,'
      ''
      '  ValFre = M.VlrFrete,'
      '  BasIcm = M.VlrBcIcms,'
      '  ValIcm = M.VlrIcms,'
      '  CodFor = M.IdTabPes,'
      '  CodPed = 0'
      ''
      'From MovNot M  '
      '  Join TabPes C On C.IdTabPes = M.IdTabPes'
      '  Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      ''
      'Where'
      '  M.IdTabEmp = :ilCodEmp And'
      '  M.DataOpe >= :dlDatIni And M.DataOpe <= :dlDatFin and'
      '  M.PosNot = '#39'A'#39
      ''
      'Order By '
      '  TipNot, '
      '  CodNot')
    Left = 209
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryMovNotSpedTipNot: TStringField
      FieldName = 'TipNot'
      Size = 1
    end
    object qryMovNotSpedTipEmt: TStringField
      FieldName = 'TipEmt'
      Size = 1
    end
    object qryMovNotSpedCodPrt: TIntegerField
      FieldName = 'CodPrt'
    end
    object qryMovNotSpedModelo: TStringField
      FieldName = 'Modelo'
      FixedChar = True
      Size = 2
    end
    object qryMovNotSpedSitNot: TStringField
      FieldName = 'SitNot'
      Size = 2
    end
    object qryMovNotSpedSerie: TStringField
      FieldName = 'Serie'
      FixedChar = True
      Size = 3
    end
    object qryMovNotSpedCodNot: TIntegerField
      FieldName = 'CodNot'
    end
    object qryMovNotSpedChvNFe: TStringField
      FieldName = 'ChvNFe'
      Size = 50
    end
    object qryMovNotSpedDatNot: TDateTimeField
      FieldName = 'DatNot'
    end
    object qryMovNotSpedDatOpe: TDateTimeField
      FieldName = 'DatOpe'
    end
    object qryMovNotSpedValNot: TFloatField
      FieldName = 'ValNot'
    end
    object qryMovNotSpedValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryMovNotSpedForPag: TStringField
      FieldName = 'ForPag'
      Size = 1
    end
    object qryMovNotSpedValDes: TFloatField
      FieldName = 'ValDes'
    end
    object qryMovNotSpedTipFre: TStringField
      FieldName = 'TipFre'
      Size = 1
    end
    object qryMovNotSpedValFre: TFloatField
      FieldName = 'ValFre'
    end
    object qryMovNotSpedBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object qryMovNotSpedValIcm: TFloatField
      FieldName = 'ValIcm'
    end
    object qryMovNotSpedCodFor: TIntegerField
      FieldName = 'CodFor'
    end
    object qryMovNotSpedCodPed: TIntegerField
      FieldName = 'CodPed'
    end
  end
  object qryIteNotSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  CodPro  = I.IdTabPro,'
      '  CmpPro  = '#39#39','
      '  QtdPro  = I.QtdPro, '
      '  CodEmb  = P.IdTabEmb,'
      '  ValPro  = ( I.VlrPro * I.QtdPro ) - I.VlrDsc,'
      '  ValDes  = I.VlrDsc,'
      '  MvmEst  = Case When I.MvmEst = '#39'S'#39' Then '#39'0'#39' Else '#39'1'#39' End,'
      '  SitTri  = I.IdTabStb,'
      '  CodCfo  = dbo.fn_OnlyNumbers( I.IdTabCfo ),'
      '  BasIcm  = I.VlrBcIcms,'
      '  AlqIcm  = I.AlqIcms,'
      '  ValIcm  = I.VlrIcms'
      ''
      'From IteNot I '
      
        '  Join MovNot M On I.IdTabEmp = M.IdTabEmp and I.IdTabPes = M.Id' +
        'TabPes and I.NumeroNota = M.NumeroNota '
      '  Join TabPro P On I.IdTabPro = P.IdTabPro'
      ''
      'Where'
      '  I.IdTabEmp   = :ilCodEmp and'
      '  I.IdTabPes   = :ilCodFor and'
      '  I.NumeroNota = :ilCodNot and'
      '  M.PosNot = '#39'A'#39
      ''
      'Order By '
      '  CodPro'
      ''
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 241
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodFor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodNot'
        ParamType = ptUnknown
      end>
    object qryIteNotSpedCodPro: TIntegerField
      FieldName = 'CodPro'
    end
    object qryIteNotSpedCmpPro: TStringField
      FieldName = 'CmpPro'
      Size = 128
    end
    object qryIteNotSpedQtdPro: TFloatField
      FieldName = 'QtdPro'
    end
    object qryIteNotSpedCodEmb: TIntegerField
      FieldName = 'CodEmb'
    end
    object qryIteNotSpedValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryIteNotSpedValDes: TFloatField
      FieldName = 'ValDes'
    end
    object qryIteNotSpedMvmEst: TStringField
      FieldName = 'MvmEst'
      Size = 1
    end
    object qryIteNotSpedSitTri: TStringField
      FieldName = 'SitTri'
      FixedChar = True
      Size = 3
    end
    object qryIteNotSpedCodCfo: TStringField
      FieldName = 'CodCfo'
      Size = 255
    end
    object qryIteNotSpedBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object qryIteNotSpedAlqIcm: TFloatField
      FieldName = 'AlqIcm'
    end
    object qryIteNotSpedValIcm: TFloatField
      FieldName = 'ValIcm'
    end
  end
  object qryResEst: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  SitTri = I.IdTabStb,'
      '  CodCfo = dbo.fn_OnlyNumbers( I.IdTabCfo ),'
      '  AlqIcm = I.AlqIcms,'
      '  ValPro = Sum( ( I.VlrPro * I.QtdPro ) - I.VlrDsc ),'
      '  BasIcm = Sum( I.VlrBcIcms ),'
      '  ValIcm = Sum( I.VlrIcms ),'
      
        '  ValRed = Sum( Case When I.AlqIcms > 0 Then ( I.VlrPro * I.QtdP' +
        'ro ) - I.VlrDsc Else 0 End ) - Sum( I.VlrBcIcms )'
      ''
      'From IteNot I '
      
        '  Join MovNot M On I.IdTabEmp = M.IdTabEmp and I.IdTabPes = M.Id' +
        'TabPes and I.NumeroNota = M.NumeroNota'
      '  Join TabPro P On I.IdTabPro = P.IdTabPro'
      ''
      'Where'
      '  I.IdTabEmp   = :ilCodEmp and'
      '  I.IdTabPes   = :ilCodFor and'
      '  I.NumeroNota = :ilCodNot and'
      '  M.PosNot = '#39'A'#39
      ''
      'Group By '
      '  I.IdTabStb, '
      '  I.IdTabCfo, '
      '  I.AlqIcms')
    Left = 288
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodFor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodNot'
        ParamType = ptUnknown
      end>
    object qryResEstSitTri: TStringField
      FieldName = 'SitTri'
      FixedChar = True
      Size = 3
    end
    object qryResEstCodCfo: TStringField
      FieldName = 'CodCfo'
      Size = 255
    end
    object qryResEstAlqIcm: TFloatField
      FieldName = 'AlqIcm'
    end
    object qryResEstValPro: TFloatField
      FieldName = 'ValPro'
    end
    object qryResEstBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object qryResEstValIcm: TFloatField
      FieldName = 'ValIcm'
    end
    object qryResEstValRed: TFloatField
      FieldName = 'ValRed'
    end
  end
  object qryFatNotSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  F.DatFat, '
      '  F.VlrFat'
      'From FatNot F'
      'Where'
      '  F.IdTabEmp  = :ilCodEmp and'
      '  F.IdTabPes  = :ilCodFor and'
      '  F.NumeroNota  = :ilCodNot'
      'Order By '
      '  F.DatFat'
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 320
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodFor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodNot'
        ParamType = ptUnknown
      end>
    object qryFatNotSpedDatFat: TDateTimeField
      FieldName = 'DatFat'
      Origin = 'GERPA.FatEst.DatFat'
    end
    object qryFatNotSpedValFat: TFloatField
      FieldName = 'ValFat'
      Origin = 'GERPA.FatEst.ValFat'
    end
  end
  object qryInvTot: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      
        '  VlrTotIvt   = Sum(P.ValorCusto * dbo.fn_Estoque( :ilCodEmp, P.' +
        'IdTabPro, :dlDatLim, :dlDatLim,'#39'D'#39' ))'
      'From '
      '  TabPro P'
      'Where'
      
        '  dbo.fn_Estoque( :ilCodEmp, P.IdTabPro, :dlDatLim, :dlDatLim, '#39 +
        'D'#39' ) > 0 and'
      '  P.IdTabPro In '
      '                   ( Select '
      '                        I.IdTabPro'
      '                      From MovNot T '
      '                        Join TabEmp E On T.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteNot I On T.IdTabEmp = I.IdTabEmp' +
        ' And T.IdTabPes = I.IdTabPes And T.NumeroNota = I.NumeroNota'
      '                      Where '
      '                        T.IdTabEmp = :ilCodEmp And'
      
        '                        T.DataOpe >= :dlDatIni And T.DataOpe <= ' +
        ':dlDatFin and'
      '                        T.PosNot = '#39'A'#39
      '                    ) or'
      ''
      'P.IdTabPro In'
      '                    ( Select '
      '                        I.IdTabPro'
      '                      From MovCNF M '
      '                        Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteCNF I On M.IdTabEmp = I.IdTabEmp' +
        ' And M.CCF = I.CCF'
      '                      Where '
      '                        M.IdTabEmp = :ilCodEmp And'
      
        '                        M.DatMov  >= :dlDatIni And M.DatMov <= :' +
        'dlDatFin'
      '                    )')
    Left = 361
    Top = 295
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryInvTotVlrTotIvt: TFloatField
      FieldName = 'VlrTotIvt'
    end
  end
  object qryInventario: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  CodPro      = cast(P.IdTabPro as Varchar), '
      '  Unidade     = P.IdTabEmb,   '
      
        '  QtdIvt      = dbo.fn_Estoque( :ilCodEmp, P.IdTabPro, :dlDatLim' +
        ', :dlDatLim, '#39'D'#39'),'
      '  VlrUnit     = P.ValorCusto,'
      
        '  VlrItem     = P.ValorCusto * dbo.fn_Estoque( :ilCodEmp, P.IdTa' +
        'bPro, :dlDatLim, :dlDatLim, '#39'D'#39' )'
      ''
      'From '
      '  TabPro P'
      ''
      'Where'
      ''
      
        ' dbo.fn_Estoque( :ilCodEmp, P.IdTabPro, :dlDatLim, :dlDatLim, '#39'D' +
        #39' ) > 0 and'
      ' P.IdTabPro In '
      '                   ( Select '
      '                        I.IdTabPro'
      '                      From MovNot T '
      '                        Join TabEmp E On T.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteNot I On T.IdTabEmp = I.IdTabEmp' +
        ' And T.IdTabPes = I.IdTabPes And T.NumeroNota = I.NumeroNota'
      '                      Where '
      '                        T.IdTabEmp = :ilCodEmp And'
      
        '                        T.DataOpe >= :dlDatIni And T.DataOpe <= ' +
        ':dlDatFin and'
      '                        T.PosNot = '#39'A'#39
      '                    ) or'
      ''
      'P.IdTabPro In'
      '                    ( Select '
      '                        I.IdTabPro'
      '                      From MovCNF M '
      '                        Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteCNF I On M.IdTabEmp = I.IdTabEmp' +
        ' And M.CCF = I.CCF'
      '                      Where '
      '                        M.IdTabEmp = :ilCodEmp And'
      
        '                        M.DatMov  >= :dlDatIni And M.DatMov <= :' +
        'dlDatFin'
      '                    )'
      ''
      'Order By '
      '  P.IdTabPro')
    Left = 401
    Top = 295
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryInventarioCodPro: TStringField
      FieldName = 'CodPro'
      Size = 30
    end
    object qryInventarioUnidade: TIntegerField
      FieldName = 'Unidade'
    end
    object qryInventarioQtdIvt: TFloatField
      FieldName = 'QtdIvt'
    end
    object qryInventarioVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qryInventarioVlrItem: TFloatField
      FieldName = 'VlrItem'
    end
  end
  object qryEcfSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  Distinct IdTabEcf,'
      
        '  CodECFp  = substring ( M.IdTabEcf, 18, 3), -- numero seq. os u' +
        'ltimos 3 numeros'
      '  CodECFf  = substring ( M.IdTabEcf, 1, 20), -- numero serie'
      '  Modelo   = '#39'2D'#39'   '
      ''
      'From MovRdz M'
      ''
      'Where'
      '  M.IdTabEmp  = :ilCodEmp'
      '  M.DatMov  >= :dlDatIni And M.DatMov <= :dlDatFin'
      ''
      'Order By '
      '  CodEcff')
    Left = 73
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryEcfSpedIdTabEcf: TStringField
      FieldName = 'IdTabEcf'
      Size = 21
    end
    object qryEcfSpedCodECFp: TStringField
      FieldName = 'CodECFp'
      Size = 3
    end
    object qryEcfSpedCodECFf: TStringField
      FieldName = 'CodECFf'
    end
    object qryEcfSpedModelo: TStringField
      FieldName = 'Modelo'
      Size = 2
    end
  end
  object qryTotParRedZSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'Can-T'#39',                       '
      ' GTPrc    = Sum(A.ValCanIcms)'
      '                                             '
      'From MovRDZ A                                '
      '                                             '
      'Where                                        '
      ' A.IdTabEmp  = 1 and '
      ' A.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' A.DatMov   >= '#39'2011-03-01'#39' and A.DatMov <= '#39'2011-03-31'#39
      'Group By A.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'DT'#39',                          '
      ' GTPrc    = Sum(B.ValDesIcms)'
      '                                             '
      'From MovRDZ B                                '
      '                                             '
      'Where                                        '
      ' B.IdTabEmp  = 1 and '
      ' B.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' B.DatMov   >= '#39'2011-03-01'#39' and B.DatMov <= '#39'2011-03-31'#39
      'Group By B.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'F1'#39',                          '
      ' GTPrc    = Sum(C.ValF1_ICMS)'
      '                                             '
      'From MovRDZ C                                '
      '                                             '
      'Where                                        '
      ' C.IdTabEmp  = 1 and '
      ' C.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' C.DatMov   >= '#39'2011-03-01'#39' and C.DatMov <= '#39'2011-03-31'#39
      'Group By C.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'F2'#39',                          '
      ' GTPrc    = Sum(D.ValF2_ICMS)'
      '                                             '
      'From MovRDZ D                                '
      '                                             '
      'Where                                        '
      ' D.IdTabEmp  = 1 and '
      ' D.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' D.DatMov   >= '#39'2011-03-01'#39' and D.DatMov <= '#39'2011-03-31'#39
      'Group By D.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'I1'#39',                          '
      ' GTPrc    = Sum(E.ValI1_ICMS)'
      '                                             '
      'From MovRDZ E                                '
      '                                             '
      'Where                                        '
      ' E.IdTabEmp  = 1 and '
      ' E.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' E.DatMov   >= '#39'2011-03-01'#39' and E.DatMov <= '#39'2011-03-31'#39
      'Group By E.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'I2'#39',                          '
      ' GTPrc    = Sum(F.ValI2_ICMS)'
      '                                             '
      'From MovRDZ F                                '
      '                                             '
      'Where                                        '
      ' F.IdTabEmp  = 1 and '
      ' F.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' F.DatMov   >= '#39'2011-03-01'#39' and F.DatMov <= '#39'2011-03-31'#39
      'Group By F.IdTabEmp'
      ''
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'N1'#39',                          '
      ' GTPrc    = Sum(G.ValN1_ICMS)'
      '                                             '
      'From MovRDZ G                                '
      '                                             '
      'Where                                        '
      ' G.IdTabEmp  = 1 and '
      ' G.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' G.DatMov   >= '#39'2011-03-01'#39' and G.DatMov <= '#39'2011-03-31'#39
      'Group By G.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = 0,'
      ' SitTri   = '#39'N2'#39',                          '
      ' GTPrc    = Sum(H.ValN2_ICMS)'
      '                                             '
      'From MovRDZ H                                '
      '                                             '
      'Where                                        '
      ' H.IdTabEmp  = 1 and '
      ' H.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' H.DatMov   >= '#39'2011-03-01'#39' and H.DatMov <= '#39'2011-03-31'#39
      'Group By H.IdTabEmp'
      '                                             '
      'Union All                                    '
      '                                             '
      'Select                                       '
      ' NrTot    = I.Indice,'
      ' SitTri   = I.Tipo + I.Aliquota,             '
      ' GTPrc    = Sum(I.ValBaseCalculo)                   '
      '                                             '
      'From IteRdzIcms I                            '
      '                                             '
      'Where                                        '
      ' I.IdTabEmp  = 1 and '
      ' I.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' I.DatMov   >= '#39'2011-03-01'#39' and I.DatMov <= '#39'2011-03-31'#39
      'Group By I.IdTabEmp, I.Indice, I.Tipo, I.Aliquota'
      ''
      'Union All '
      ''
      'Select                                       '
      ' NrTot    = ISS.Indice,'
      ' SitTri   = ISS.Tipo + ISS.Aliquota,             '
      ' GTPrc    = Sum(ISS.ValBaseCalculo)                   '
      '                                             '
      'From IteRdzIssqn ISS                           '
      '                                             '
      'Where                                        '
      ' ISS.IdTabEmp  = 1 and '
      ' ISS.IdTabEcf  = '#39'DR0208BR000000143478'#39' and '
      ' ISS.DatMov   >= '#39'2011-03-01'#39' and ISS.DatMov <= '#39'2011-03-31'#39
      'Group By ISS.IdTabEmp, ISS.Indice, ISS.Tipo, ISS.Aliquota'
      '                                             '
      'Order by                                     '
      ' Sittri                                      ')
    Left = 137
    Top = 343
    object qryTotParRedZSpedNrTot: TIntegerField
      FieldName = 'NrTot'
    end
    object qryTotParRedZSpedSitTri: TStringField
      FieldName = 'SitTri'
      Size = 5
    end
    object qryTotParRedZSpedGTPrc: TFloatField
      FieldName = 'GTPrc'
    end
  end
  object qryIteMovDiaSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  CodPro      = cast(P.IdTabPro as Varchar), '
      '  Unidade     = E.IdTabUnd,   '
      
        '  QtdIvt      = cast(dbo.fn_Estoque( :ilCodEmp, P.IdTabPro, '#39'200' +
        '0/01/01'#39', :dlDatLim) as decimal(13,3)),'
      '  VlrUnit     = P.ValorCusto,'
      
        '  VlrItem     = P.ValorCusto * cast(dbo.fn_Estoque( :ilCodEmp, P' +
        '.IdTabPro, '#39'2000/01/01'#39', :dlDatLim ) as decimal(13,3))'
      ''
      'From '
      '  TabPro P'
      '  join TabEmb E On E.IdTabEmb = P.IdTabEmb'
      'Where'
      ''
      
        ' dbo.fn_Estoque( :ilCodEmp, P.IdTabPro, '#39'2000/01/01'#39', :dlDatLim ' +
        ') > 0 and'
      ' P.IdTabPro In '
      '                   ( Select '
      '                        I.IdTabPro'
      '                      From MovCNF M '
      '                        Join TabEmp E On M.IdTabEmp = E.IdTabEmp'
      
        '                        Join IteCNF I On M.IdTabEmp = I.IdTabEmp' +
        ' And M.CCF = I.CCF'
      '                      Where '
      '                        M.IdTabEmp = :ilCodEmp And'
      '                        M.IdTabEcf  = :slCodEcf And'
      
        '                        M.DatMov  >= :dlDatIni And M.DatMov <= :' +
        'dlDatFin'
      '                    )'
      'Order By '
      '  P.IdTabPro'
      ''
      '')
    Left = 177
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatLim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'slCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryIteMovDiaSpedCodPro: TStringField
      FieldName = 'CodPro'
      Size = 30
    end
    object qryIteMovDiaSpedUnidade: TStringField
      FieldName = 'Unidade'
      FixedChar = True
      Size = 6
    end
    object qryIteMovDiaSpedQtdIvt: TFloatField
      FieldName = 'QtdIvt'
    end
    object qryIteMovDiaSpedVlrUnit: TFloatField
      FieldName = 'VlrUnit'
    end
    object qryIteMovDiaSpedVlrItem: TFloatField
      FieldName = 'VlrItem'
    end
  end
  object qryDocFisSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  CodMod  = '#39'2D'#39','
      
        '  CodSit  = Case When M.IndicadorCancelamento = '#39'N'#39' Then '#39'00'#39' El' +
        'se '#39'02'#39' End,'
      '  NumDoc  = M.CCF,'
      '  DatDoc  = M.DatMov,'
      '  VlrDoc  = M.ValTotal,'
      '  CpfCnpj = P.CpfCnpj,'
      '  NomeAdq = P.RazaoSocial'
      'from MovCnf M'
      '  left join TabPes P on M.IdTabPes = P.IdTabPes'
      'where'
      '  M.IdTabEmp = :ilCodEmp And'
      '  M.IdTabEcf = :slCodEcf And'
      '  M.DatMov  >= :dlDatIni And M.DatMov <= :dlDatFin'
      ''
      'order by'
      '  NumDoc'
      '  ')
    Left = 209
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'slCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryDocFisSpedCodMod: TStringField
      FieldName = 'CodMod'
      Size = 2
    end
    object qryDocFisSpedCodSit: TStringField
      FieldName = 'CodSit'
      Size = 2
    end
    object qryDocFisSpedNumDoc: TIntegerField
      FieldName = 'NumDoc'
    end
    object qryDocFisSpedDatDoc: TDateTimeField
      FieldName = 'DatDoc'
    end
    object qryDocFisSpedVlrDoc: TFloatField
      FieldName = 'VlrDoc'
    end
    object qryDocFisSpedCpfCnpj: TStringField
      FieldName = 'CpfCnpj'
      Size = 18
    end
    object qryDocFisSpedNomeAdq: TStringField
      FieldName = 'NomeAdq'
      Size = 50
    end
  end
  object qryIteDocFisSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  CodItem    = I.IdTabPro,'
      '  QtdItem    = I.QtdePro,'
      '  QtdCanItem = I.QtdeCancelada,'
      '  Unidade    = E.IdTabEmb,'
      '  VlrItem    = ((I.QtdePro * I.ValPro) - I.ValDes) + I.ValAcr,'
      '  CodStb     = S.IdTabStb,'
      '  CodCfo     = dbo.fn_OnlyNumbers( I.IdTabCfo ),'
      '  AliqIcms   = I.Aliquota'
      ''
      'From IteCNF I '
      
        '  Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.Id' +
        'TabEcf and I.CCF = M.CCF  '
      '  Join TabPro P On I.IdTabPro = P.IdTabPro'
      '  join TabEmb E On P.IdTabEmb = E.IdTabEmb '
      '  Join TabTrb T On I.IdTabTrb = T.IdTabTrb'
      '  Join TabStb S On T.IdTabStb = S.IdTabStb'
      ''
      'Where'
      '  M.IdTabEmp  = :ilCodEmp and'
      '  M.IdTabEcf  = :ilCodEcf and'
      '  M.DatMov   >= :dlDatIni and M.DatMov <= :dlDatFin and'
      '  M.CCF       = :ilCCF '
      ''
      'Order by '
      '  I.IdTabPro')
    Left = 241
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCCF'
        ParamType = ptUnknown
      end>
    object qryIteDocFisSpedCodItem: TIntegerField
      FieldName = 'CodItem'
    end
    object qryIteDocFisSpedQtdItem: TFloatField
      FieldName = 'QtdItem'
    end
    object qryIteDocFisSpedQtdCanItem: TFloatField
      FieldName = 'QtdCanItem'
    end
    object qryIteDocFisSpedUnidade: TStringField
      FieldName = 'Unidade'
      Size = 128
    end
    object qryIteDocFisSpedVlrItem: TFloatField
      FieldName = 'VlrItem'
    end
    object qryIteDocFisSpedCodStb: TStringField
      FieldName = 'CodStb'
      Size = 3
    end
    object qryIteDocFisSpedCodCfo: TStringField
      FieldName = 'CodCfo'
      Size = 4
    end
    object qryIteDocFisSpedAliqIcms: TFloatField
      FieldName = 'AliqIcms'
    end
  end
  object QryResDocFisSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  SitTri = T.IdTabStb,'
      '  CodCfo = dbo.fn_OnlyNumbers( I.IdTabCfo ),'
      '  AlqIcm = I.Aliquota,'
      '  ValPro = Sum( ( I.ValPro * I.QtdePro ) - I.ValDes ),'
      '  BasIcm = Sum( ( I.QtdePro * I.ValPro ) ),'
      
        '  ValIcm = Sum(  ( ( I.QtdePro * I.ValPro ) * I.Aliquota / 100 )' +
        ' )'
      ''
      'From IteCNF I '
      '  Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.CCF = M.CCF'
      '  Join TabPro P On I.IdTabPro = P.IdTabPro'
      '  Join TabTrb T On I.IdTabTrb = T.IdTabTrb'
      ''
      'Where'
      '  M.IdTabEmp  = :ilCodEmp and'
      '  M.IdTabEcf  = :ilCodEcf and'
      '  M.DatMov   >= :dlDatIni and M.DatMov <= :dlDatFin'
      ''
      'Group By '
      '  T.IdTabStb, '
      '  I.IdTabCfo, '
      '  I.Aliquota')
    Left = 288
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object QryResDocFisSpedSitTri: TStringField
      FieldName = 'SitTri'
      FixedChar = True
      Size = 3
    end
    object QryResDocFisSpedCodCfo: TStringField
      FieldName = 'CodCfo'
      Size = 255
    end
    object QryResDocFisSpedAlqIcm: TFloatField
      FieldName = 'AlqIcm'
    end
    object QryResDocFisSpedValPro: TFloatField
      FieldName = 'ValPro'
    end
    object QryResDocFisSpedBasIcm: TFloatField
      FieldName = 'BasIcm'
    end
    object QryResDocFisSpedValIcm: TFloatField
      FieldName = 'ValIcm'
    end
  end
  object qryReducaoZSped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select'
      '  DatEmi   = M.DatMov, '
      '  CodECFp  = substring ( M.IdTabEcf, 18, 3), '
      '  CodECFf  = substring ( M.IdTabEcf, 1, 20),'
      '  Modelo   = '#39'2D'#39',   '
      '  DocIni   = M.CooIni,'
      '  DocFin   = M.CooFin, '
      '  ReducaoZ = M.Crz,   '
      '  GTRnc    = M.Cro,  '
      '  GTIni    = M.ValBru,   '
      '  GTFin    = M.ValGtot'
      'From MovRDZ M '
      'Where'
      '  M.IdTabEmp  = :ilIdTabEmp and'
      '  M.IdTabEcf  = :slIdTabEcf and'
      '  M.DatMov   >= :dlDatIni and M.DatMov <= :dlDatFin'
      'Order by'
      '  DatEmi,'
      '  CodECFf')
    Left = 106
    Top = 343
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilIdTabEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'slIdTabEcf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qryReducaoZSpedDatEmi: TDateTimeField
      FieldName = 'DatEmi'
    end
    object qryReducaoZSpedCodECFp: TStringField
      FieldName = 'CodECFp'
      Size = 3
    end
    object qryReducaoZSpedCodECFf: TStringField
      FieldName = 'CodECFf'
    end
    object qryReducaoZSpedModelo: TStringField
      FieldName = 'Modelo'
      Size = 2
    end
    object qryReducaoZSpedDocIni: TIntegerField
      FieldName = 'DocIni'
    end
    object qryReducaoZSpedDocFin: TIntegerField
      FieldName = 'DocFin'
    end
    object qryReducaoZSpedReducaoZ: TIntegerField
      FieldName = 'ReducaoZ'
    end
    object qryReducaoZSpedGTRnc: TIntegerField
      FieldName = 'GTRnc'
    end
    object qryReducaoZSpedGTIni: TFloatField
      FieldName = 'GTIni'
    end
    object qryReducaoZSpedGTFin: TFloatField
      FieldName = 'GTFin'
    end
  end
  object qrySped: TQuery
    DatabaseName = 'GBPAF_SRV'
    SQL.Strings = (
      'Select '
      '  Count(*) as Qtde_Nota,'
      '  Qtde_CNF = 0'
      ''
      'From MovNot M  '
      ''
      'Where'
      '  M.IdTabEmp = :ilCodEmp And'
      '  M.DataOpe >= :dlDatIni And M.DataOpe <= :dlDatFin and'
      '  M.PosNot = '#39'A'#39
      ''
      'Group by M.IdTabEmp'
      ''
      'union all'
      ''
      'Select'
      '  Qtde_Nota = 0,'
      '  Count(*) as Qtde_CNF'
      ''
      'From MovCNF M'
      ''
      'Where'
      '  M.IdTabEmp = :ilCodEmp And'
      '  M.DatMov  >= :dlDatIni And M.DatMov <= :dlDatFin'
      ''
      'Group by M.IdTabEmp')
    Left = 32
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ilCodEmp'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatIni'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dlDatFin'
        ParamType = ptUnknown
      end>
    object qrySpedQtde_Nota: TIntegerField
      FieldName = 'Qtde_Nota'
    end
    object qrySpedQtde_CNF: TIntegerField
      FieldName = 'Qtde_CNF'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 376
    Top = 217
    object EstoqueTOTAL1: TMenuItem
      Caption = 'Estoque TOTAL'
      OnClick = EstoqueTOTAL1Click
    end
    object EstoquePARCIAL1: TMenuItem
      Caption = 'Estoque PARCIAL'
      OnClick = EstoquePARCIAL1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'GBPAF_SRV'
    Left = 441
    Top = 16
  end
end
