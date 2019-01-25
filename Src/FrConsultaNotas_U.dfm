object FrConsultaNotas: TFrConsultaNotas
  Left = 345
  Top = 221
  Width = 704
  Height = 460
  BorderIcons = [biSystemMenu]
  Caption = 'Consulta notas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 7
    Top = 16
    Width = 56
    Height = 13
    Caption = 'Destinat'#225'rio'
  end
  object BitBtn2: TBitBtn
    Left = 603
    Top = 390
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = BitBtn2Click
    Kind = bkClose
  end
  object Edit1: TEdit
    Left = 68
    Top = 11
    Width = 373
    Height = 22
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyDown = Edit1KeyDown
  end
  object Panel1: TPanel
    Left = 8
    Top = 48
    Width = 667
    Height = 337
    BevelOuter = bvNone
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 0
      Top = 0
      Width = 667
      Height = 337
      Align = alClient
      Caption = ' Dados das notas '
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object StrGrid2: TStringGrid
        Left = 2
        Top = 16
        Width = 663
        Height = 319
        Align = alClient
        ColCount = 1
        DefaultColWidth = 256
        DefaultRowHeight = 16
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        TabOrder = 0
        OnDblClick = StrGrid2DblClick
        OnKeyPress = StrGrid2KeyPress
        OnSelectCell = StrGrid2SelectCell
      end
    end
  end
  object BitBtn4: TBitBtn
    Left = 603
    Top = 11
    Width = 70
    Height = 22
    Caption = 'Processa'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object Query1: TQuery
    DatabaseName = 'venda'
    Left = 488
    Top = 16
  end
end
