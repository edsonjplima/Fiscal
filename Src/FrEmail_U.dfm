object FrEmail: TFrEmail
  Left = 499
  Top = 121
  BorderIcons = []
  BorderStyle = bsDialog
  ClientHeight = 600
  ClientWidth = 820
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stat1: TStatusBar
    Left = 0
    Top = 571
    Width = 820
    Height = 29
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBtnText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Panels = <
      item
        Alignment = taCenter
        Text = 'Mensagens: '
        Width = 76
      end
      item
        Width = 50
      end>
    UseSystemFont = False
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 820
    Height = 63
    Align = alTop
    BevelOuter = bvNone
    Caption = 'eMAIL'
    Color = 11249818
    Font.Charset = ANSI_CHARSET
    Font.Color = 7091712
    Font.Height = -40
    Font.Name = 'MS Serif'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    DesignSize = (
      820
      63)
    object Sb12: TSpeedButton
      Left = 797
      Top = 0
      Width = 23
      Height = 22
      Cursor = crHandPoint
      Hint = 'Fecha Janela de eMail'
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
      OnClick = Sb12Click
      OnMouseMove = Sb12MouseMove
    end
    object pnl2: TPanel
      Left = 582
      Top = 40
      Width = 229
      Height = 17
      Anchors = [akRight, akBottom]
      BevelOuter = bvNone
      Color = 11249818
      Font.Charset = ANSI_CHARSET
      Font.Color = 8388863
      Font.Height = -16
      Font.Name = 'MS Serif'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object pnl3: TPanel
    Left = 701
    Top = 63
    Width = 119
    Height = 508
    Align = alRight
    TabOrder = 2
    DesignSize = (
      119
      508)
    object Sb: TSpeedButton
      Left = 10
      Top = 10
      Width = 100
      Height = 45
      Cursor = crHandPoint
      Hint = 'Envia eMail para os destinat'#225'rios selecionados'
      Caption = '&ENVIAR'
      Flat = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clTeal
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        0400000000000001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333FFF333333333333000333333333
        3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
        3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
        0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
        BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
        33337777773FF733333333333300033333333333337773333333333333333333
        3333333333333333333333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentFont = False
      OnClick = SbClick
      OnMouseMove = SbMouseMove
    end
    object Sb11: TSpeedButton
      Left = 10
      Top = 460
      Width = 100
      Height = 40
      Cursor = crHandPoint
      Hint = 'Fecha Janela de eMail'
      Anchors = [akTop, akRight]
      Caption = '      &Fechar'
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
      OnClick = Sb11Click
      OnMouseMove = Sb11MouseMove
    end
  end
  object pnl4: TPanel
    Left = 0
    Top = 63
    Width = 701
    Height = 508
    Align = alClient
    TabOrder = 3
    object grp1: TGroupBox
      Left = 8
      Top = 136
      Width = 383
      Height = 129
      Hint = 'Mensagem do eMail'
      Align = alCustom
      Caption = ' Mensagem: '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      OnMouseMove = grp1MouseMove
      DesignSize = (
        383
        129)
      object g1: TGauge
        Left = 10
        Top = 108
        Width = 363
        Height = 13
        Anchors = [akLeft, akTop, akRight]
        Color = 15792383
        ParentColor = False
        Progress = 0
      end
      object Mensagem: TMemo
        Left = 10
        Top = 16
        Width = 363
        Height = 89
        Anchors = [akLeft, akTop, akRight]
        Color = 15792383
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnEnter = MensagemEnter
        OnExit = MensagemExit
        OnKeyDown = MensagemKeyDown
      end
    end
    object grp3: TGroupBox
      Left = 8
      Top = 92
      Width = 685
      Height = 44
      Hint = 'Assunto do eMail'
      Align = alCustom
      Caption = ' Assunto: '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      OnMouseMove = grp3MouseMove
      DesignSize = (
        685
        44)
      object medt1_Assunto: TEdit
        Left = 10
        Top = 16
        Width = 665
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 15792383
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
      end
    end
    object grp4: TGroupBox
      Left = 8
      Top = 48
      Width = 685
      Height = 44
      Hint = 'eMails adicionais (CC), separados por v'#237'rgula ou ponto-e-v'#237'rgula'
      Align = alCustom
      Caption = ' Com Copias (Cc):  '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      OnMouseMove = grp4MouseMove
      DesignSize = (
        685
        44)
      object medt_Cc: TEdit
        Left = 10
        Top = 16
        Width = 665
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkSoft
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecLowerCase
        Color = 15792383
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = medt_CcExit
      end
    end
    object grp5: TGroupBox
      Left = 8
      Top = 6
      Width = 685
      Height = 44
      Hint = 'Dados que identifica quem est'#225' enviando o email '
      Align = alCustom
      Caption = ' De: '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      OnMouseMove = grp5MouseMove
      DesignSize = (
        685
        44)
      object medt1_QSel: TEdit
        Left = 10
        Top = 16
        Width = 666
        Height = 21
        Anchors = [akLeft, akTop, akRight]
        BevelKind = bkSoft
        BorderStyle = bsNone
        Color = 15792383
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object grp2: TGroupBox
      Left = 400
      Top = 136
      Width = 293
      Height = 129
      Hint = 'eMails retornados com problemas do provedor de email'
      Align = alCustom
      Caption = ' eMails Inv'#225'lidos: '
      Color = 14544639
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clTeal
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      OnMouseMove = grp2MouseMove
      DesignSize = (
        293
        129)
      object eMailsInvalidos: TMemo
        Left = 6
        Top = 16
        Width = 277
        Height = 105
        Anchors = [akLeft, akTop, akRight]
        Color = 15792383
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object pnl5: TPanel
      Left = 1
      Top = 271
      Width = 699
      Height = 236
      Align = alBottom
      BevelOuter = bvLowered
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      object Sb13: TSpeedButton
        Left = 570
        Top = 8
        Width = 112
        Height = 35
        Cursor = crHandPoint
        Hint = 'Inicia a pesquisa'
        Caption = '&PESQUISAR'
        Flat = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clTeal
        Font.Height = -13
        Font.Name = 'Arial Black'
        Font.Style = [fsBold]
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333333333333333333FFF333333333333000333333333
          3333777FFF3FFFFF33330B000300000333337F777F777773F333000E00BFBFB0
          3333777F773333F7F333000E0BFBF0003333777F7F3337773F33000E0FBFBFBF
          0333777F7F3333FF7FFF000E0BFBF0000003777F7F3337777773000E0FBFBFBF
          BFB0777F7F33FFFFFFF7000E0BF000000003777F7FF777777773000000BFB033
          33337777773FF733333333333300033333333333337773333333333333333333
          3333333333333333333333333333333333333333333333333333333333333333
          3333333333333333333333333333333333333333333333333333}
        NumGlyphs = 2
        ParentFont = False
        OnClick = Sb13Click
        OnMouseMove = Sb13MouseMove
      end
      object grp6: TGroupBox
        Left = 2
        Top = 4
        Width = 501
        Height = 39
        Hint = 'Busca pelo nome do destinat'#225'rio'
        Align = alCustom
        Caption = ' Busca Pelo Nome do Destinat'#225'rio: '
        Color = 14544639
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        OnMouseMove = grp6MouseMove
        DesignSize = (
          501
          39)
        object medt_Cc1: TEdit
          Left = 8
          Top = 14
          Width = 482
          Height = 19
          Hint = 'Quantidade de itens selecionados'
          Anchors = [akLeft, akTop, akRight]
          BevelKind = bkSoft
          BorderStyle = bsNone
          Color = 15792383
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyPress = medt_Cc1KeyPress
        end
      end
      object pnl6: TPanel
        Left = 2
        Top = 49
        Width = 697
        Height = 180
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object cxTLE: TcxTreeList
          Left = 0
          Top = 0
          Width = 697
          Height = 180
          Hint = 'Dados dos destinat'#225'rios e escolha para envio do email'
          Align = alClient
          Bands = <
            item
              Caption.AlignHorz = taCenter
              Caption.Text = 'D E S T I N A T '#193' R I O S'
              Styles.Content = FrGBNFe.cxContent2
            end>
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = ''
          Navigator.Buttons.CustomButtons = <>
          Navigator.Buttons.First.Visible = True
          Navigator.Buttons.Prior.Visible = True
          Navigator.Buttons.Next.Visible = True
          Navigator.Buttons.NextPage.Visible = True
          Navigator.Buttons.Last.Visible = True
          Navigator.Buttons.Insert.Enabled = False
          Navigator.Buttons.Insert.Visible = False
          Navigator.Buttons.Append.Enabled = False
          Navigator.Buttons.Append.Visible = False
          Navigator.Buttons.Delete.Enabled = False
          Navigator.Buttons.Delete.Visible = False
          Navigator.Buttons.Edit.Enabled = False
          Navigator.Buttons.Edit.Visible = False
          Navigator.Buttons.Post.Enabled = False
          Navigator.Buttons.Post.Visible = False
          Navigator.Buttons.Cancel.Enabled = False
          Navigator.Buttons.Cancel.Visible = False
          Navigator.Buttons.Refresh.Enabled = False
          Navigator.Buttons.Refresh.Visible = False
          Navigator.Buttons.SaveBookmark.Enabled = False
          Navigator.Buttons.SaveBookmark.Visible = False
          Navigator.Buttons.GotoBookmark.Enabled = False
          Navigator.Buttons.GotoBookmark.Visible = False
          Navigator.Buttons.Filter.Enabled = False
          Navigator.Buttons.Filter.Visible = False
          Navigator.InfoPanel.DisplayMask = 'navigator'
          Navigator.InfoPanel.Visible = True
          Navigator.Visible = True
          OptionsView.Bands = True
          PopupMenu = PopupMenu
          StateImages = FrGBNFe.ImageList1
          Styles.Content = FrGBNFe.cxContent2
          Styles.BandHeader = FrGBNFe.cxBandHeader
          Styles.ColumnHeader = FrGBNFe.cxColumnHeader
          TabOrder = 0
          OnCustomDrawDataCell = cxTLECustomDrawDataCell
          OnEditing = cxTLEEditing
          OnMouseMove = cxTLEMouseMove
          object cxTLEbSel: TcxTreeListColumn
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.Alignment = taCenter
            Properties.DisplayChecked = 'True'
            Properties.DisplayUnchecked = 'False'
            Properties.NullStyle = nssUnchecked
            Caption.AlignHorz = taCenter
            Caption.Text = 'SEL'
            DataBinding.ValueType = 'Boolean'
            Options.Sorting = False
            Width = 37
            Position.ColIndex = 0
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTLEiCdD: TcxTreeListColumn
            PropertiesClassName = 'TcxMaskEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.EditMask = '!99999;1;_'
            Caption.AlignHorz = taCenter
            Caption.Text = 'C'#243'digo'
            DataBinding.ValueType = 'String'
            Options.Editing = False
            Options.Sorting = False
            Width = 50
            Position.ColIndex = 1
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTLEsxNo: TcxTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Styles.Content = FrGBNFe.cxContent
            Caption.AlignHorz = taCenter
            Caption.Text = 'Nome / Raz'#227'o Social do Destinat'#225'rio'
            DataBinding.ValueType = 'String'
            Options.Editing = False
            Width = 311
            Position.ColIndex = 2
            Position.RowIndex = 0
            Position.BandIndex = 0
            SortOrder = soAscending
            SortIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
          object cxTLEsMai: TcxTreeListColumn
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Caption.AlignHorz = taCenter
            Caption.Text = 'e-Mail'
            DataBinding.ValueType = 'String'
            Options.Editing = False
            Options.Sorting = False
            Width = 280
            Position.ColIndex = 3
            Position.RowIndex = 0
            Position.BandIndex = 0
            Summary.FooterSummaryItems = <>
            Summary.GroupFooterSummaryItems = <>
          end
        end
      end
    end
  end
  object PopupMenu: TPopupMenu
    Left = 24
    Top = 14
    object ConsultaWeb5MarcaTodas1: TMenuItem
      Caption = '&Marca Todas'
      ShortCut = 49229
      OnClick = ConsultaWeb5MarcaTodas1Click
    end
    object ConsultaWeb5DesmarcarTodas1: TMenuItem
      Caption = '&Desmarcar Todas'
      ShortCut = 49220
      OnClick = ConsultaWeb5DesmarcarTodas1Click
    end
  end
end
