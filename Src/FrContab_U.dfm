object FrContab: TFrContab
  Left = 242
  Top = 133
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 563
  ClientWidth = 1115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panel: TPanel
    Left = 0
    Top = 0
    Width = 1115
    Height = 63
    Align = alTop
    Caption = 'ENVIA XMLs POR EMAIL'
    Color = 11249818
    Font.Charset = ANSI_CHARSET
    Font.Color = 7091712
    Font.Height = -35
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    DesignSize = (
      1115
      63)
    object Sb: TSpeedButton
      Left = 1092
      Top = 0
      Width = 23
      Height = 22
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 'Fechar'
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993333333
        999333777FF37FF377733339993333399933333777F777F77733333399933399
        93333333777F7377733333333999399933333333377737773333333333999993
        3333333333737F73333333333339993333333333333777FF3333333333999993
        333333333337773FF3333333399939993333333337377737FF33333399933399
        93333333773777377FF333399933333999333337773777F777FF339993333333
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
      OnClick = SbClick
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 535
    Width = 1115
    Height = 28
    AutoHint = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Width = 50
      end>
    UseSystemFont = False
  end
  object panel113: TPanel
    Left = 0
    Top = 63
    Width = 1115
    Height = 472
    Align = alClient
    TabOrder = 2
    object SpeedButton: TSpeedButton
      Left = 472
      Top = 36
      Width = 83
      Height = 22
      Cursor = crHandPoint
      Caption = ' &Processar'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555555555FFFFFFFFFF5555500000000005555557777777777F55550BFBFBFB
        FB0555557F555555557F55500FBFBFBFBF0555577F555555557F550B0BFBFBFB
        FB05557F7F555555557F500F0FBFBFBFBF05577F7F555555557F0B0B0BFBFBFB
        FB057F7F7F555555557F0F0F0FBFBFBFBF057F7F7FFFFFFFFF750B0B00000000
        00557F7F7777777777550F0FB0FBFB0F05557F7FF75FFF7575550B0007000070
        55557F777577775755550FB0FBFB0F0555557FF75FFF75755555000700007055
        5555777577775755555550FBFB0555555555575FFF7555555555570000755555
        5555557777555555555555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButtonClick
    end
    object SpeedButton51: TSpeedButton
      Left = 564
      Top = 36
      Width = 83
      Height = 22
      Cursor = crHandPoint
      Caption = '          &Sair'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
        0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
        0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
        0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
        0333337F777FFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
      OnClick = SpeedButton51Click
    end
    object grp1: TGroupBox
      Left = 30
      Top = -2
      Width = 243
      Height = 63
      Caption = ' Per'#237'odo  '
      TabOrder = 0
      object grp2: TGroupBox
        Left = 12
        Top = 12
        Width = 105
        Height = 43
        Caption = ' Inicial '
        TabOrder = 0
        object dtp1: TDateTimePicker
          Left = 8
          Top = 14
          Width = 85
          Height = 21
          Date = 42768.363246967580000000
          Time = 42768.363246967580000000
          TabOrder = 0
          OnExit = dtp1Exit
        end
      end
      object grp3: TGroupBox
        Left = 126
        Top = 10
        Width = 105
        Height = 43
        Caption = ' Final '
        TabOrder = 1
        object dtp2: TDateTimePicker
          Left = 8
          Top = 14
          Width = 85
          Height = 21
          Date = 42768.363688958340000000
          Time = 42768.363688958340000000
          TabOrder = 0
          OnExit = dtp2Exit
        end
      end
    end
    object grp4: TGroupBox
      Left = 282
      Top = 4
      Width = 183
      Height = 55
      Caption = ' Inicial '
      TabOrder = 1
      object CheckBox91: TCheckBox
        Left = 8
        Top = 20
        Width = 87
        Height = 17
        Caption = 'MDe'
        TabOrder = 0
      end
      object CheckBox92: TCheckBox
        Left = 98
        Top = 20
        Width = 79
        Height = 17
        Caption = 'NFe'
        TabOrder = 1
      end
    end
  end
end
