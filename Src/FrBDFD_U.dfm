object FrBDFD: TFrBDFD
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros do Banco de Dados FireDac'
  ClientHeight = 427
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 689
    Height = 295
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object grp12: TGroupBox
      Left = 10
      Top = 24
      Width = 328
      Height = 251
      TabOrder = 0
      DesignSize = (
        328
        251)
      object grp13: TGroupBox
        Left = 6
        Top = 16
        Width = 89
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' LoginPrompt:  '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object chk_LoginPrompt_NFe: TCheckBox
          Left = 36
          Top = 16
          Width = 15
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp14: TGroupBox
        Left = 6
        Top = 63
        Width = 79
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' DriverID: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object cbb_DriverID_NFe: TComboBox
          Left = 8
          Top = 14
          Width = 61
          Height = 21
          Color = 15792383
          Ctl3D = False
          ItemIndex = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = 'MSSQL'
          Items.Strings = (
            'ADS'
            'ASA'
            'DB2'
            'DS'
            'FB'
            'IB'
            'IBLite'
            'Infx'
            'Mongo'
            'MSAcc'
            'MSSQL'
            'MySQL'
            'ODBC'
            'Ora'
            'PG'
            'SQLite'
            'TData'
            'TDBX')
        end
      end
      object grp18: TGroupBox
        Left = 6
        Top = 110
        Width = 315
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Server: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object edt_Server_NFe: TEdit
          Left = 8
          Top = 14
          Width = 297
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp19: TGroupBox
        Left = 6
        Top = 157
        Width = 107
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' UserName: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object edt_UserName_NFe: TEdit
          Left = 8
          Top = 14
          Width = 89
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp20: TGroupBox
        Left = 119
        Top = 157
        Width = 202
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Password: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object edt_Password_NFe: TEdit
          Left = 8
          Top = 14
          Width = 183
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          PasswordChar = '*'
          TabOrder = 0
        end
      end
      object grp15: TGroupBox
        Left = 94
        Top = 63
        Width = 227
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Database: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object edt_Database_NFe: TEdit
          Left = 10
          Top = 14
          Width = 207
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp16: TGroupBox
        Left = 6
        Top = 204
        Width = 89
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Connected: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        object chk_Connected_NFe: TCheckBox
          Left = 36
          Top = 16
          Width = 13
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp28: TGroupBox
        Left = 101
        Top = 16
        Width = 109
        Height = 41
        Hint = 'Efetua autentica'#231#227'o por usu'#225'rio'
        Anchors = [akLeft, akTop, akRight]
        Caption = ' OSAuthent: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        object OSAuthent_NFe: TCheckBox
          Left = 36
          Top = 16
          Width = 15
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
    object grp17: TGroupBox
      Left = 352
      Top = 24
      Width = 328
      Height = 251
      TabOrder = 1
      DesignSize = (
        328
        251)
      object grp21: TGroupBox
        Left = 6
        Top = 16
        Width = 89
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' LoginPrompt:  '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object chk_LoginPrompt_Ger: TCheckBox
          Left = 36
          Top = 16
          Width = 15
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp22: TGroupBox
        Left = 6
        Top = 63
        Width = 79
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' DriverID: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object cbb_DriverID_Ger: TComboBox
          Left = 8
          Top = 14
          Width = 61
          Height = 21
          Color = 15792383
          Ctl3D = False
          ItemIndex = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = 'MSSQL'
          Items.Strings = (
            'ADS'
            'ASA'
            'DB2'
            'DS'
            'FB'
            'IB'
            'IBLite'
            'Infx'
            'Mongo'
            'MSAcc'
            'MSSQL'
            'MySQL'
            'ODBC'
            'Ora'
            'PG'
            'SQLite'
            'TData'
            'TDBX')
        end
      end
      object grp23: TGroupBox
        Left = 6
        Top = 110
        Width = 315
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Server: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object edt_Server_Ger: TEdit
          Left = 8
          Top = 14
          Width = 297
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp24: TGroupBox
        Left = 6
        Top = 157
        Width = 107
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' UserName: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object edt_UserName_Ger: TEdit
          Left = 8
          Top = 14
          Width = 89
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp25: TGroupBox
        Left = 119
        Top = 157
        Width = 202
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Password: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object edt_Password_Ger: TEdit
          Left = 8
          Top = 14
          Width = 183
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          PasswordChar = '*'
          TabOrder = 0
        end
      end
      object grp26: TGroupBox
        Left = 94
        Top = 63
        Width = 227
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Database: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object edt_Database_Ger: TEdit
          Left = 10
          Top = 14
          Width = 207
          Height = 19
          Color = 15792383
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
      end
      object grp27: TGroupBox
        Left = 6
        Top = 204
        Width = 89
        Height = 41
        Hint = 
          'Exclui os arquivos tempor'#225'rio, gerados e recebidos da SEFAZ dura' +
          'nte os envios, consultas, etc.'
        Caption = ' Connected: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        object chk_Connected_Ger: TCheckBox
          Left = 36
          Top = 16
          Width = 13
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object grp29: TGroupBox
        Left = 101
        Top = 16
        Width = 109
        Height = 41
        Hint = 'Efetua autentica'#231#227'o por usu'#225'rio'
        Anchors = [akLeft, akTop, akRight]
        Caption = ' OSAuthent: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        object OSAuthent_Ger: TCheckBox
          Left = 36
          Top = 16
          Width = 15
          Height = 17
          Color = 15792383
          Ctl3D = False
          ParentColor = False
          ParentCtl3D = False
          TabOrder = 0
        end
      end
    end
    object pnl5: TPanel
      Left = 0
      Top = 0
      Width = 689
      Height = 25
      Align = alTop
      BevelOuter = bvNone
      Caption = 
        'N F e                                                           ' +
        '              E R P'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    Caption = 'PAR'#194'METROS FIREDAC'
    Color = 11249818
    Font.Charset = ANSI_CHARSET
    Font.Color = 7091712
    Font.Height = -35
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object pnl3: TPanel
    Left = 0
    Top = 358
    Width = 689
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object pnl4: TPanel
      Left = 382
      Top = 0
      Width = 307
      Height = 41
      Align = alRight
      TabOrder = 0
      object btn1: TBitBtn
        Left = 161
        Top = 7
        Width = 129
        Height = 25
        Hint = 'Fecha param'#234'tros'
        Caption = '         &Fechar'
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
          F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
          000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
          338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
          45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
          3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
          F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
          000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
          338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
          4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
          8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
          333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
          0000}
        NumGlyphs = 2
        TabOrder = 0
        OnClick = btn1Click
      end
      object btnSalvarConfig: TBitBtn
        Left = 17
        Top = 7
        Width = 129
        Height = 25
        Hint = 'Salva os par'#226'metros no arquivo de emitente'
        Caption = '&Gravar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
          7700333333337777777733333333008088003333333377F73377333333330088
          88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
          000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
          FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
          99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
          99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
          99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
          93337FFFF7737777733300000033333333337777773333333333}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnSalvarConfigClick
      end
    end
  end
  object stat1: TStatusBar
    Left = 0
    Top = 399
    Width = 689
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
end
