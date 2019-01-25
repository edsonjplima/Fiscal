object FrConWeb: TFrConWeb
  Left = 378
  Top = 194
  Align = alBottom
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Consulta Web'
  ClientHeight = 441
  ClientWidth = 846
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
  object stat1: TStatusBar
    Left = 0
    Top = 413
    Width = 846
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
    ExplicitWidth = 912
  end
  object pnl1: TPanel
    Left = 0
    Top = 63
    Width = 846
    Height = 134
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 912
    DesignSize = (
      846
      134)
    object imgCaptcha: TImage
      Left = 6
      Top = 4
      Width = 203
      Height = 107
      Center = True
    end
    object lblInit: TLabel
      Left = 6
      Top = 110
      Width = 198
      Height = 13
      Cursor = crHandPoint
      Caption = 'Clique aqui se n'#227'o conseguir visualizar a imagem'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Serif'
      Font.Style = []
      ParentFont = False
      OnClick = lblInitClick
      OnMouseEnter = lblInitMouseEnter
      OnMouseLeave = lblInitMouseLeave
    end
    object pnlBottom: TPanel
      Left = 538
      Top = 1
      Width = 307
      Height = 132
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitLeft = 604
      object btn1: TBitBtn
        Left = 161
        Top = 45
        Width = 129
        Height = 25
        Cursor = crHandPoint
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
      object btnGo: TBitBtn
        Left = 17
        Top = 45
        Width = 129
        Height = 25
        Cursor = crHandPoint
        Hint = 'Salva os par'#226'metros no arquivo de emitente'
        Caption = '       &Consultar'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000000
          000055555F77777777775555000FFFFFFFF0555F777F5FFFF55755000F0F0000
          FFF05F777F7F77775557000F0F0FFFFFFFF0777F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFFFFF70F0F0F0F0000
          00F07F7F7F7F777777570F0F0F0FFFFFFFF07F7F7F7F5FFF55570F0F0F0F000F
          FFF07F7F7F7F77755FF70F0F0F0FFFFF00007F7F7F7F5FF577770F0F0F0F00FF
          0F057F7F7F7F77557F750F0F0F0FFFFF00557F7F7F7FFFFF77550F0F0F000000
          05557F7F7F77777775550F0F0000000555557F7F7777777555550F0000000555
          55557F7777777555555500000005555555557777777555555555}
        NumGlyphs = 2
        TabOrder = 1
        OnClick = btnGoClick
      end
    end
    object grp1: TGroupBox
      Left = 222
      Top = 13
      Width = 267
      Height = 41
      Hint = 
        'Segundo certificado digital - Para o caso que exista dois certif' +
        'icados token com o mesmo cnpj.'
      Anchors = [akLeft, akTop, akRight]
      Caption = ' Chave de Acesso da Nota '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      ExplicitWidth = 333
      DesignSize = (
        267
        41)
      object edtKey: TEdit
        Left = 8
        Top = 14
        Width = 249
        Height = 21
        Hint = 'N'#250'mero de s'#233'rie do certificado digital'
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 15792383
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16512
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 250
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 315
      end
    end
    object grp2: TGroupBox
      Left = 222
      Top = 61
      Width = 131
      Height = 41
      Hint = 
        'Segundo certificado digital - Para o caso que exista dois certif' +
        'icados token com o mesmo cnpj.'
      Anchors = [akLeft, akTop, akRight]
      Caption = '  Digite o c'#243'digo da imagem ao lado '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      ExplicitWidth = 197
      DesignSize = (
        131
        41)
      object edtCode: TEdit
        Left = 8
        Top = 14
        Width = 113
        Height = 21
        Hint = 'N'#250'mero de s'#233'rie do certificado digital'
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 15792383
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16512
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 250
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 179
      end
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 0
    Width = 846
    Height = 63
    Align = alTop
    Caption = 'CONSULTA WEB'
    Color = 11249818
    Font.Charset = ANSI_CHARSET
    Font.Color = 7091712
    Font.Height = -35
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    ExplicitWidth = 912
  end
  object wb1: TWebBrowser
    Left = 0
    Top = 197
    Width = 846
    Height = 216
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 912
    ControlData = {
      4C00000070570000531600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object IdHttp: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = idckmngr1
    Left = 84
    Top = 16
  end
  object idckmngr1: TIdCookieManager
    Left = 58
    Top = 16
  end
end
