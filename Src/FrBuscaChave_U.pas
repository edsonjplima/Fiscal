unit FrBuscaChave_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Controls, Vcl.ExtCtrls, Vcl.Buttons,
  System.Classes, Vcl.Menus, Vcl.Forms, Vcl.Graphics, System.Variants,
  FireDAC.Comp.Client, Vcl.Samples.Gauges, System.DateUtils, ACBrNFe,
  pcnAuxiliar, ACBrMDFe, ACBrBase, ACBrDFe, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxCheckBox, cxMaskEdit, cxTextEdit, cxCalendar, dxSkinCaramel,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, dxDateTimeWheelPicker, cxRichEdit,
  cxImageComboBox, cxCurrencyEdit, pcnNFeRTXT, cxContainer, cxEdit, dxCore,
  cxDateUtils, cxDropDownEdit;

type
  TFrBuscaChave = class(TForm)
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    PopupMenu1: TPopupMenu;
    MarcaTodas1: TMenuItem;
    DesmarcaTodas1: TMenuItem;
    GroupBox2: TGroupBox;
    Edit_Busca_Chave: TEdit;
    SpeedButton4: TSpeedButton;
    Panel4: TPanel;
    SpeedButton7: TSpeedButton;
    Panel1: TPanel;
    GroupBox8: TGroupBox;
    Edit_idLote: TEdit;
    GroupBox10: TGroupBox;
    Edit_DataEvento: TEdit;
    GroupBox11: TGroupBox;
    Edit_dtRegEvento: TEdit;
    GroupBox13: TGroupBox;
    Edit_id: TEdit;
    GroupBox14: TGroupBox;
    Edit_Evento: TEdit;
    GroupBox15: TGroupBox;
    Edit_nProt: TEdit;
    GroupBox17: TGroupBox;
    Edit_xJust: TEdit;
    RG_tpEvento: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    RadioGroup1: TRadioGroup;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    GroupBox12: TGroupBox;
    Label12: TLabel;
    CheckBox1: TCheckBox;
    Panel5: TPanel;
    SpeedButton3: TSpeedButton;
    Panel11: TPanel;
    Panel6: TPanel;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    Edit_QSel: TEdit;
    ConsultaWeb5N1: TMenuItem;
    ConsultaWeb5CopiaNChavereadeTransferncia1: TMenuItem;
    ConsultaWeb5ConsultaWeb1: TMenuItem;
    grp1: TGroupBox;
    grp2: TGroupBox;
    Label1: TLabel;
    SbImprMDFe1: TSpeedButton;
    ExcluirxmlsTemp1: TMenuItem;
    ExcluirxmlsTemp1N1: TMenuItem;
    img1: TImage;
    SpeedButton: TSpeedButton;
    SpeedButton51: TSpeedButton;
    ConsultaWeb5N2: TMenuItem;
    AtualizarNota1: TMenuItem;
    cxTLM: TcxTreeList;
    cxTLMbSel: TcxTreeListColumn;
    cxTLMbD_S: TcxTreeListColumn;
    cxTLMbD_B: TcxTreeListColumn;
    cxTLMBImg: TcxTreeListColumn;
    edt_CodEmp: TEdit;
    cxTLMsPOS: TcxTreeListColumn;
    cxTLMsxNo: TcxTreeListColumn;
    cxTLMsCpf: TcxTreeListColumn;
    cxTLMs_IE: TcxTreeListColumn;
    cxTLMsNot: TcxTreeListColumn;
    cxTLMsSer: TcxTreeListColumn;
    cxTLMcVNF: TcxTreeListColumn;
    cxTLMdDEm: TcxTreeListColumn;
    cxTLMsChv: TcxTreeListColumn;
    cxTLMsNSU: TcxTreeListColumn;
    cxTLMsCdL: TcxTreeListColumn;
    cxTLMscSC: TcxTreeListColumn;
    cxTLMscSN: TcxTreeListColumn;
    cxTLMsTpN: TcxTreeListColumn;
    cxTLMdDhR: TcxTreeListColumn;
    cxTLMsDgV: TcxTreeListColumn;
    cxTLMsEve: TcxTreeListColumn;
    SpeedButton5: TSpeedButton;
    HeaderControl1: THeaderControl;
    cxdtp1: TcxDateEdit;
    cxdtp2: TcxDateEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Edit_Chave_nfeKeyPress(Sender: TObject; var Key: Char);
    procedure dxTLBuscaChaveExit(Sender: TObject);
    procedure MarcaTodas1Click(Sender: TObject);
    procedure DesmarcaTodas1Click(Sender: TObject);
    procedure Edit_Busca_ChaveChange(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure RG_tpEventoClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure dxTLBuscaChaveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dxTLBuscaChaveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dxTLBuscaChaveMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure GroupBox15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox17MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CheckBox1Click(Sender: TObject);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3Click(Sender: TObject);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RG_tpEventoExit(Sender: TObject);
    procedure ConsultaWeb5CopiaNChavereadeTransferncia1Click(
      Sender: TObject);
    procedure ConsultaWeb5ConsultaWeb1Click(Sender: TObject);
    procedure SbImprMDFe1Click(Sender: TObject);
    procedure ExcluirxmlsTemp1Click(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure SpeedButtonClick(Sender: TObject);
    procedure AtualizarNota1Click(Sender: TObject);
    procedure cxTLMEditValueChanged(Sender: TcxCustomTreeList;
      AColumn: TcxTreeListColumn);
    procedure cxTLMExit(Sender: TObject);
    procedure cxTLMbSelPropertiesChange(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxdtp1Exit(Sender: TObject);
    procedure cxdtp2PropertiesChange(Sender: TObject);
    procedure cxTLMCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Atualiza(rep : boolean) : Boolean;                                 // Habilita ou desabilita componentes
    function fTrataErro(Status : integer; ChvCompl : string = '') : Boolean;    // Mostra uma mensagem conforme o codigo de retorno + a chave de complemento
    function SenhaMaster(SenMst : String) : boolean;                            // Função que chama a janela da senha master
    function fADAtrib( TemSel : boolean ) : boolean;                            // Ativa e Desativa Atributos dos componentes da janela
    function fTemSel(cxTLM : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Boolean;// Verifica se foi selecionado algum item na treelist (novo berlin)
    function fQtdItensSelMDe(cxTLM : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Integer; // Retorna a quantidade de itens selecionados no MDe
    function ImportarXML(ArqXml : String) : boolean;                            // Procedure que importa o Xml

    Procedure pAtribCon( ClEx: boolean ; cxTLM : TcxTreeList; cxTLMsCdL,
                         cxTLMsChv : TcxTreeListColumn ; FD :  TFDQuery );       // Atribui consulta da TreeList e Monta a query das pendentes
    procedure MarcaBloco( cxTLM : TcxTreeList; blMarca : Boolean;
                          blTodos : Boolean = False );                          // Marca bloco de seleção TreeList
    procedure DelRegErrXML(ArqXml : String);                                    // Deleta os registros com erro do Xml
    procedure MostraDados(Codigo_loja, Chave_nfe : String ; dEmi : TDateTime);  // Mostra os dados selecionados quando clic na grade
    Procedure HaDe(HD : Boolean);                                               // Habilita ou desabilita componentes
    procedure AtuMDe();                                                         // Atualiza as notas mde conforme a sefaz
    Procedure pAtuTLMDFe( cxTLM : TcxTreeList;
                                  cxTLMbSel  :  Tcxtreelistcolumn ;
                                  cxTLMbD_S  :  TcxTreeListColumn ;
                                  cxTLMbD_B  :  Tcxtreelistcolumn ;
                                  cxTLMBIMG  :  Tcxtreelistcolumn ;
                                  cxTLMsPOS  :  Tcxtreelistcolumn ;
                                  cxTLMsEve  :  Tcxtreelistcolumn ;
                                  cxTLMsxNo  :  Tcxtreelistcolumn ;
                                  cxTLMsCpf  :  Tcxtreelistcolumn ;
                                  cxTLMs_IE  :  Tcxtreelistcolumn ;
                                  cxTLMsNot  :  Tcxtreelistcolumn ;
                                  cxTLMsSer  :  Tcxtreelistcolumn ;
                                  cxTLMcVNF  :  Tcxtreelistcolumn ;
                                  cxTLMdDEm  :  Tcxtreelistcolumn ;
                                  cxTLMsChv  :  Tcxtreelistcolumn ;
                                  cxTLMsNSU  :  Tcxtreelistcolumn ;
                                  cxTLMsCdL  :  Tcxtreelistcolumn ;
                                  cxTLMscSC  :  Tcxtreelistcolumn ;
                                  cxTLMscSN  :  Tcxtreelistcolumn ;
                                  cxTLMsTpN  :  Tcxtreelistcolumn ;
                                  cxTLMdDhR  :  Tcxtreelistcolumn ;
                                  cxTLMsDgV  :  Tcxtreelistcolumn ;
                                  FD         :  TFDQuery );                     // Atualiza dados das TreeLest da Consulta de Manifestação
    procedure pSelMDe(FD : TFDQuery ; CN1 : Integer; CN2, CN3: String);         // Filtra a nota MDe

  end;

procedure BlockInput(ABlockInput : boolean); stdcall; external 'USER32.DLL';

var
  FrBuscaChave      : TFrBuscaChave;

implementation

uses DMFD_U, pcnConversao, pcnConversaoNFe, GBNFe_U, FrPar_U, ufrmStatus,
  FrPw_U, FrConsManif_U, FrImportXML_U, FrSenMst_U, FrMens_U,
  ACBrDFeWebService, ACBrNFeWebServices, pcnRetDistDFeInt, pcnNFe,
  ACBrNFeNotasFiscais, pcnEventoNFe, pcnRetEnvEventoNFe, FrContab_U, FrBDFD_U,
  FrInut_U;

{$R *.dfm}

procedure TFrBuscaChave.FormCreate(Sender: TObject);
begin

 //-----------------------------------------------------------------------------
 // Define o tempo de showhint
 //-----------------------------------------------------------------------------
 SetClipboardViewer(Handle);

end;

procedure TFrBuscaChave.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeyPreview do Form pra true
 if not (ActiveControl is  TcxTreeList) then
  begin
   Direction := -1;
   Case Key of
    VK_NEXT, VK_RETURN : Direction := 0;
    VK_PRIOR	 : Direction := 1;
    VK_ESCAPE : Close;
   end;
   if Direction <> -1 then
    begin
    Perform(WM_NEXTDLGCTL, Direction, 0);
    key := 0;
    end;
  end;
end;

procedure TFrBuscaChave.FormShow(Sender: TObject);
var
 x : integer;
begin

 cxdtp1.Date := date() - 20;                                                    // Reduz 20 dias
 cxdtp2.Date := date();                                                         // Data atual
 if not Checkbox1.Checked then
  begin
   cxdtp1.Enabled := False;
   cxdtp2.Enabled := False;
  end;

 // Mostra o código e o nome da empresa
 edt_CodEmp.Text  := FrGBNFe.edt_CodEmp.Text;
 Label1.Caption := FrGBNFe.Label1.Caption;

 // Inicia o gItem como -1
 gItem := -1;

 // Ativa tabela nfe_CDFe
 DMFD.FDQuery14.Active := True;

 if gNivel = '4' then
  begin
   FrBuscaChave.Align       := alBottom;                                        // Expande acima da barra do menu iniciar do windows
   FrBuscaChave.WindowState := wsMaximized;
   FrBuscaChave.Panel11.Caption := 'NFe && NFCe v(FD): Berlin - ' + FrGBNFe.GetBuildInfo('GbNFe.exe');
  end
 else
  begin
   FrBuscaChave.Height := 640;
   FrBuscaChave.Width  := 1049;
   FrBuscaChave.Position := poScreenCenter;
  end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery14.Close;
 DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger     := StrToInt(gCodEmp);
 DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger     := StrToInt(gCodEmp);
 DMFD.FDQuery14.ParamByName('cSitConf').AsString          := '0';
 if Checkbox1.Checked then
  begin
   DMFD.FDQuery14.ParamByName('DtInicial').Value          := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
   DMFD.FDQuery14.ParamByName('DtFinal').Value            := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
  end
 else
  begin
   DMFD.FDQuery14.ParamByName('DtInicial').Value          := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
   DMFD.FDQuery14.ParamByName('DtFinal').Value            := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
  end;
 DMFD.FDQuery14.ParamByName('Chave_nfe').AsString         := FrBuscaChave.Edit_Busca_Chave.Text;
 DMFD.FDQuery14.Open;

 // Zera o contador de itens selecionados
 Edit_QSel.Text := '0';

 // Seta caminho inicial
 FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload        := gCamXml;        // Edson Lima ; 2019-07-29
 FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathEvento                      := gCamXml;
 FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar                      := gCamXml;
 FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathNFe                         := gCamXml;
 FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathInu                         := gCamXml;

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest

  if not DMFD.FDQuery14.IsEmpty then
   pAtuTLMDFe(
               cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
               cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
               cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
               cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
             );

 //-----------------------------------------------------------------------------

 Panel10.Caption      := 'N O V A S';

 //-----------------------------------------------------------------------------

 if (DMFD.FDQuery4['Versao']      = 've3131') then
  FrGBNFe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310
 else if (DMFD.FDQuery4['Versao']      = 've4040') then
  FrGBNFe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
 else
  FrGBNFe.ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

 //-----------------------------------------------------------------------------


end;

procedure TFrBuscaChave.Edit_Chave_nfeKeyPress(Sender: TObject;
  var Key: Char);
begin

 if not (key in['0'..'9', chr(8)]) then Abort;

end;

procedure TFrBuscaChave.dxTLBuscaChaveExit(Sender: TObject);
begin

 // by Edson Lima ; 2013-7-17T1024 ; Chama a procedure de atribuição de seleção da TreeList
 pAtribCon(gClEx, cxTLM, cxTLMsCdL, cxTLMsChv, DMFD.FDQuery14);

end;

procedure TFrBuscaChave.MarcaTodas1Click(Sender: TObject);
begin
 MarcaBloco( cxTLM, True, True );
 RG_tpEvento.Enabled      := True;
end;

procedure TFrBuscaChave.DesmarcaTodas1Click(Sender: TObject);
begin
 MarcaBloco( cxTLM, False, True );
 MenuItem1Click(Sender);
 SpeedButton2.Enabled  := True;
 SpeedButton3.Enabled  := True;
 RG_tpEvento.Enabled   := False;
end;

procedure TFrBuscaChave.Edit_Busca_ChaveChange(Sender: TObject);
begin

 try
  DMFD.FDQuery14.Close;
   DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger      := StrToInt(gCodEmp);
   DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger      := StrToInt(gCodEmp);
   if Checkbox1.Checked then
    begin
     DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
     DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
    end
   else
    begin
     DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
     DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
    end;
   DMFD.FDQuery14.ParamByName('Chave_nfe').AsString          := Trim(Edit_Busca_Chave.Text);
  DMFD.FDQuery14.Open;

  // Zera o contador de itens selecionados
  Edit_QSel.Text := '0';

 except
 end;

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //-----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton2.Hint;
end;

procedure TFrBuscaChave.GroupBox2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox2.Hint;
end;

procedure TFrBuscaChave.SpeedButton4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton4.Hint;
end;

procedure TFrBuscaChave.SpeedButton4Click(Sender: TObject);
begin
 // FrGBNFe.ACBrNFe1.Free;
 close;
end;

//------------------------------------------------------------------------------
// Função....: pAtuTLMDFe
// Objetivo..: Atualiza dados das TreeLest de consulta da manifestação
// Parametros: Recebe a TreeList e a Query - Monta a grade
// Criação...: 2014/5/14T1553
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrBuscaChave.pAtuTLMDFe( cxTLM      : TcxTreeList ;
                                    cxTLMbSel  :  Tcxtreelistcolumn ;
                                    cxTLMbD_S  :  TcxTreeListColumn ;
                                    cxTLMbD_B  :  Tcxtreelistcolumn ;
                                    cxTLMBIMG  :  Tcxtreelistcolumn ;
                                    cxTLMsPOS  :  Tcxtreelistcolumn ;
                                    cxTLMsEve  :  Tcxtreelistcolumn ;
                                    cxTLMsxNo  :  Tcxtreelistcolumn ;
                                    cxTLMsCpf  :  Tcxtreelistcolumn ;
                                    cxTLMs_IE  :  Tcxtreelistcolumn ;
                                    cxTLMsNot  :  Tcxtreelistcolumn ;
                                    cxTLMsSer  :  Tcxtreelistcolumn ;
                                    cxTLMcVNF  :  Tcxtreelistcolumn ;
                                    cxTLMdDEm  :  Tcxtreelistcolumn ;
                                    cxTLMsChv  :  Tcxtreelistcolumn ;
                                    cxTLMsNSU  :  Tcxtreelistcolumn ;
                                    cxTLMsCdL  :  Tcxtreelistcolumn ;
                                    cxTLMscSC  :  Tcxtreelistcolumn ;
                                    cxTLMscSN  :  Tcxtreelistcolumn ;
                                    cxTLMsTpN  :  Tcxtreelistcolumn ;
                                    cxTLMdDhR  :  Tcxtreelistcolumn ;
                                    cxTLMsDgV  :  Tcxtreelistcolumn ;
                                    FD         :  TFDQuery ) ;
var
 T, I        : Integer;
 nodPed      : TcxTreeListNode;

begin

 cxTLM.Clear;

 if FD.RecordCount > 0 Then
  Begin

   cxTLM.BeginUpdate;

   Try

    FD.First;

    // Laço para montar grade

    While Not FD.Eof Do
     begin

      nodPed := cxTLM.Add;

      nodPed.Values[cxTLMbSel.ItemIndex]      := 'False';

      if FD['MDFe_Xml_Aut'] = '0' then
       nodPed.Values[cxTLMbD_S.ItemIndex]     := False
      else
       nodPed.Values[cxTLMbD_S.ItemIndex]     := True;
      if FD['MDFe_Xml_Bai'] = '0' then
       nodPed.Values[cxTLMbD_B.ItemIndex]     := False
      else
       nodPed.Values[cxTLMbD_B.ItemIndex]     := True;

      nodPed.Values[cxTLMsNSU.ItemIndex]      := FD.fieldByName('MDFe_NSU').AsString;
      nodPed.Values[cxTLMsCdL.ItemIndex]      := FD.fieldByName('MDFe_Codigo_loja').AsInteger;
      nodPed.Values[cxTLMsSer.ItemIndex]      := copy(FD.fieldByName('MDFe_Chave_nfe').AsString, 23, 3);
      nodPed.Values[cxTLMsNot.ItemIndex]      := copy(FD.fieldByName('MDFe_Chave_nfe').AsString, 26, 9);
      nodPed.Values[cxTLMsChv.ItemIndex]      := FD.fieldByName('MDFe_Chave_nfe').AsString;
      nodPed.Values[cxTLMsCpf.ItemIndex]      := FD.fieldByName('MDFe_cnpj_cpf').AsString;
      nodPed.Values[cxTLMsxNo.ItemIndex]      := FD.fieldByName('MDFe_xNome').AsString;
      nodPed.Values[cxTLMs_IE.ItemIndex]      := FD.fieldByName('MDFe_IE').AsString;
      nodPed.Values[cxTLMdDEm.ItemIndex]      := FD.fieldByName('MDFe_dEmi').AsDateTime;

      if FD['MDFe_tpNF'] = 0 then
       nodPed.Values[cxTLMsTpN.ItemIndex]     := '0-Entrada'
      else
       nodPed.Values[cxTLMsTpN.ItemIndex]     := '1-Saída';

      nodPed.Values[cxTLMcVNF.ItemIndex]      := FD.fieldByName('MDFe_vNF').AsCurrency;
      nodPed.Values[cxTLMsDgV.ItemIndex]      := FD.fieldByName('MDFe_digVal').AsString;
      nodPed.Values[cxTLMdDhR.ItemIndex]      := FD.fieldByName('MDFe_dhRecbto').AsDateTime;

      Case FD['MDFe_cSitNFe'] of
       1: nodPed.Values[cxTLMscSN.ItemIndex]  := '1-Autorizado';
       2: nodPed.Values[cxTLMscSN.ItemIndex]  := '2-Denegado';
       3: nodPed.Values[cxTLMscSN.ItemIndex]  := '3-Cancelado';
       4: nodPed.Values[cxTLMscSN.ItemIndex]  := '4-Encerrado';
      end;

      Case FD['MDFe_cSitConf'] of
       0: nodPed.Values[cxTLMscSC.ItemIndex]  := '0-Sem Manifestação';
       1: nodPed.Values[cxTLMscSC.ItemIndex]  := '1-Oper. Confirmada';
       2: nodPed.Values[cxTLMscSC.ItemIndex]  := '2-Desconhecida';
       3: nodPed.Values[cxTLMscSC.ItemIndex]  := '3-Op.Não Realizada';
       4: nodPed.Values[cxTLMscSC.ItemIndex]  := '4-Ciência';
       5: nodPed.Values[cxTLMscSC.ItemIndex]  := '5-Denegadas';
       6: nodPed.Values[cxTLMscSC.ItemIndex]  := '6-Canceladas';
       7: nodPed.Values[cxTLMscSC.ItemIndex]  := '7-Terceiros';
       8: nodPed.Values[cxTLMscSC.ItemIndex]  := '8-Encerradas';
      end;

      nodPed.Values[cxTLMBImg.ItemIndex]      := FD['MDFe_cSitConf'];

      Case FD['PosMov'] of
       1 : nodPed.Values[cxTLMsPOS.ItemIndex] := 'NULL';
       2 : nodPed.Values[cxTLMsPOS.ItemIndex] := 'Cancelada';
       3 : nodPed.Values[cxTLMsPOS.ItemIndex] := 'Entrada';
       4 : nodPed.Values[cxTLMsPOS.ItemIndex] := 'Importada';
       5 : nodPed.Values[cxTLMsPOS.ItemIndex] := 'Pendente';
      end;

      nodPed.Values[cxTLMsEve.ItemIndex]      := FD['MDFe_Evento'];

      FD.Next;

     end;
   Finally

    cxTLM.EndUpdate;

   end;

  end;

 Edit_QSel.Text        := '0';
 Edit_idLote.Text      := '';
 Edit_Evento.Text      := '';
 Edit_DataEvento.Text  := '';
 Edit_dtRegEvento.Text := '';

end;

//------------------------------------------------------------------------------
// Função....: pAtribCon
// Objetivo..: Atribui Consulta da TreeList e Monta a Query referenciada
// Parametros: Recebe a TreeList e o nome do campo
// Criação...: 2014/5/14T1458
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrBuscaChave.pAtribCon( ClEx: boolean ; cxTLM : TcxTreeList; cxTLMsCdL,
                             cxTLMsChv : TcxTreeListColumn ; FD :  TFDQuery );
Var
 I          : Integer;
 TemSel     : Boolean;

begin

 // by Edson ; 2014-5-14T1458 ; Atribui consulta da TreeList e Monta a query das pendentes

 TemSel := False;

 if not ClEx then
  begin

   for I := 0 to cxTLM.Count - 1 do

    begin

     FD.First;

     while (not FD.Eof) do
      begin

       FD.FieldByName('Checado').ReadOnly := False;

       if ((FD['MDFe_Codigo_loja'] = cxTLM.Items[I].Texts[cxTLMsCdL.ItemIndex]) and
           (FD['MDFe_Chave_nfe']   = cxTLM.Items[I].Texts[cxTLMsChv.ItemIndex])) then
        begin

         if (cxTLM.Items[I].Texts[00] = 'True') then
          begin

           FD.edit;
           FD['Checado'] := 'Y';
           TemSel := True;

          end
         else
          begin

           FD.edit;
           FD['Checado'] := 'N';

          end;

        end;

       FD.Next;

      end;

    end;

  end

 else

  begin

   gSubtSoma := StrToBool(cxTLM.Items[cxTLM.FocusedNode.Index].Texts[00]);
   cxTLM.Items[cxTLM.FocusedNode.Index].Texts[00] := 'True';
   TemSel := True;

  end;

 gClEx := false;

 fADAtrib(TemSel);

end;

//------------------------------------------------------------------------------
// Função....: fADAtrib
// Objetivo..: Ativa ou desativa atributos dos componentes
// Parametros: Recebe a TreeList e o nome do campo
// Criação...: 2014/12/22T1144
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
function TFrBuscaChave.fADAtrib( TemSel : boolean ) : boolean;
begin

 if TemSel then
  begin
   RG_tpEvento.Enabled   := True;

   case RG_tpEvento.ItemIndex of
    0, 1, 2 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := True;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD;
     end;
    3 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := True;
      Edit_xJust.Enabled    := True;
      Edit_xJust.Color      := $00C4F0FF;
   end;
    4 :
     begin
      SpeedButton1.Enabled  := True;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := False;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD;
     end;
    -1 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := True;
      SpeedButton3.Enabled  := True;
      SpeedButton7.Enabled  := False;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD                                                                                                    ;
     end;
   end;

  end
 else
  begin

   RG_tpEvento.ItemIndex := -1;
   SpeedButton1.Enabled  := False;
   SpeedButton2.Enabled  := True;
   SpeedButton3.Enabled  := True;
   SpeedButton7.Enabled  := False;
   RG_tpEvento.Enabled   := False;

   case RG_tpEvento.ItemIndex of
    0, 1, 2 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := True;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD;
     end;
    3 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := True;
      Edit_xJust.Enabled    := True;
      Edit_xJust.Color      := $00C4F0FF;
   end;
    4 :
     begin
      SpeedButton1.Enabled  := True;
      SpeedButton2.Enabled  := False;
      SpeedButton3.Enabled  := False;
      SpeedButton7.Enabled  := False;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD;
     end;
    -1 :
     begin
      SpeedButton1.Enabled  := False;
      SpeedButton2.Enabled  := True;
      SpeedButton3.Enabled  := True;
      SpeedButton7.Enabled  := False;
      Edit_xJust.Enabled    := False;
      Edit_xJust.Color      := $00DDDDDD                                                                                                    ;
     end;
   end;

  end;

end;

//------------------------------------------------------------------------------
// Função....: MarcaBloco
// Objetivo..: Marca um bloco de Nodes selecionados
// Parametros: Recebe a TreeList a marcar
// Criação...: 2013/7/17T1017
// Autor.....: Edson Lima (Modificador)
//------------------------------------------------------------------------------
procedure TFrBuscaChave.MarcaBloco( cxTLM : TcxTreeList; blMarca : Boolean; blTodos : Boolean = False );
Var
 I       : Integer;
 T, S    : Integer;

begin
 cxTLM.BeginUpdate;

 if (Edit_QSel.Text <> '') then
  T := StrToInt(Edit_QSel.Text);
 S := 0;

 Try
  if blTodos then
   begin
    for I := 0 to cxTLM.Count - 1 do
     begin
      if blMarca then
       begin
        cxTLM.Items[I].Texts[00] := 'True';
        S := (S + 1);
       end
      else
       begin
        cxTLM.Items[I].Texts[00] := 'False';
        S := 0;
       end;
     end;
    T := S;
   end
  else
   for I := 0 to cxTLM.SelectionCount - 1 do
    begin
     if blMarca then
      begin
       cxTLM.Selections[I].Texts[00] := 'True';
       T := (T + 1);
      end
     else
      begin
       cxTLM.Selections[I].Texts[00] := 'False';
       T := (T - 1);
      end;
    end;
 Finally
  cxTLM.EndUpdate;
  cxTLM.Refresh;
  Edit_QSel.Text := IntToStr(T);
 end;
end;

procedure TFrBuscaChave.SpeedButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton1.Hint;
end;

procedure TFrBuscaChave.SpeedButton2Click(Sender: TObject);
begin

 if ( FrConsManif = nil ) then
  FrConsManif := TFrConsManif.Create(Application)
 else
  FrConsManif := TFrConsManif.Create(Application);
 FrConsManif.BringToFront;
 FrConsManif.ShowModal;

end;

procedure TFrBuscaChave.SpeedButton7Click(Sender: TObject);
var
 indContador, vmr, vCntNotPro, z               : integer;
 strPathArquivo, vCha, vArq, vArI              : String;
 vCam, vTxt, vtpE                              : String;
 SearchRec                                     : TSearchRec;
 Result, vmE, vmA, vStatus                     : Integer;
 vAll, vIdYesNo, vIsChecked                    : Boolean;
 Chave, idLote, CNPJ, vEvento, vVer_leiaute    : string;
 lMsg, vtpEvento, vdescEvento, vVerEvento, vId : string;
 TemSel, BaixaXml, vSAbortar                   : boolean;
 vdhEvento                                     : tDateTime;
 X                                             : integer;

begin

 Try

  vSAbortar := False;

  if RG_TpEvento.ItemIndex = -1 then                                            // Veririca o tipo de evento do manifesto
   begin

    Application.Messagebox('ATT: Você precia selecionar um tipo de evento' + Chr(13) +
                           'que irá aplicar às notas selecionadas!','Atenção!',MB_ICONASTERISK+mb_ok);
    exit;

   end;

  Case RG_TpEvento.ItemIndex of

   3 : if length(trim(Edit_xJust.Text)) < 15 then                               // Veririca a qtd de caracteres na justificativa
        begin

         Application.Messagebox('ATT: A justificativa deve ter pelo' + Chr(13) +
                                'menos 15 caracteres!','Atenção!',MB_ICONASTERISK+mb_ok);
         Edit_xJust.Enabled       := True;
         Edit_xJust.Color         := $00C4F0FF;
         Edit_xJust.SetFocus;
         exit;

        end;

  end;

  Case RG_TpEvento.ItemIndex of

   0 : if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                                 'Ciência da Operação ?','Confirme', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then exit;

   1 : if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                                 'Confirmação da Operação ?','Confirme', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then exit;

   2 : if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                                 'Desconhecimento da Operação ?','Confirme', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then exit;

   3 :if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                                 'Operação não Realizada ?','Confirme', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then exit;
  end;

  HaDe(False);                                                                  // Habilita ou Desabilita componentes dutante a consulta

  TemSel           :=    False;                                                 // Inicia como falso a verificação de nota selecionada

  if not fTemSel( cxTLM, cxTLMbSel ) then exit;                                 // verifica se tem item selecionado na treelist

  for X := 0 to cxTLM.Count -1 do                                                 // Percorre a treelist

   begin

    if ( cxTLM.Items[X].Texts[cxTLMbSel.ItemIndex] = 'True' ) then              // Verifica se o item está selecionado

     begin

      // Filtra a nfe selecionada com select
      pSelMDe( DMFD.FDQryGeral2,
               StrToInt(FrGBNFe.edt_CodEmp.Text),
               cxTLM.Items[X].Texts[cxTLMsChv.ItemIndex],
               cxTLM.Items[X].Texts[cxTLMsEve.ItemIndex] );

      if StrToInt(DMFD.FDQryGeral2['MDFe_Evento']) > 19 then                    // Veririca a qtd de evento do manifesto
       begin

        Application.Messagebox('ATT: Você já atingiu a quantidade máxima' + Chr(13) +
                               'de eventos para essa nota de manifesto!','Atenção!',MB_ICONASTERISK+mb_ok);
        exit;

       end;

      TemSel       :=    True;                                                  // Torna verdadeiro se achar nota selecionada
      BaixaXml     :=    False;                                                 // Inicia como falso o marcador da baixa de download
      Chave        :=    DMFD.FDQryGeral2['MDFe_Chave_nfe'];
      idLote       :=    DMFD.FDQryGeral2['MDFe_idLote'];
      CNPJ         :=    DMFD.FDQuery4['cnpj'];
      vEvento      :=    IntToStr(StrToInt(DMFD.FDQryGeral2['MDFe_Evento']) + 1);

      // Verifica se o manifesto está autorizado para gerar eventos
      if DMFD.FDQryGeral2['MDFe_cSitNFe'] = 1 then                                // 1=Uso Autorizada, 2=Uso Denegada, 3=Uso Cancelada e 4=Uso Encerrado
       begin

        // Verifica se o manifesto não foi dado entrada no ERP
        if DMFD.FDQryGeral2['PosMov'] <> 3 then                                   // 3 = E de Entrada
         begin

          FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
          FrGBNFe.ACBrNFe1.EventoNFe.Evento.Clear;

          with FrGBNFe.ACBrNFe1.EventoNFe.Evento.Add do
           begin
            Case RG_TpEvento.ItemIndex of
             0 : begin
                  infEvento.tpEvento       := teManifDestCiencia;
                  vtpEvento                := '210210';
                  vdescEvento              := 'Ciencia da Operacao';
                  BaixaXml                 := True;
                 end;
             1 : begin
                  infEvento.tpEvento       := teManifDestConfirmacao;
                  vtpEvento                := '210200';
                  vdescEvento              := 'Confirmacao da Operacao';
                  BaixaXml                 := True;
                 end;
             2 : begin
                  infEvento.tpEvento       := teManifDestDesconhecimento;
                  vtpEvento                := '210220';
                  vdescEvento              := 'Desconhecimento da Operacao';
                  BaixaXml                 := False;
                 end;
             3 : begin
                  infEvento.tpEvento       := teManifDestOperNaoRealizada;
                  vtpEvento                := '210240';
                  vdescEvento              := 'Operacao nao Realizada';
                  BaixaXml                 := False;
                  infEvento.detEvento.xJust:= Edit_xJust.Text;
                 end;
            end;

            vId                            := 'ID' + vtpEvento + Chave + '1';
            infEvento.id                   := vId;
            infEvento.cOrgao               := 91;

            If (FrPar.rgTipoAmb.ItemIndex = 0) then
             infEvento.tpAmb               := taProducao
            else
             infEvento.tpAmb               := taHomologacao;

            infEvento.CNPJ                 := CNPJ;
            infEvento.chNFe                := Chave;
            infEvento.dhEvento             := now();
            vdhEvento                      := now();
            infEvento.nSeqEvento           := 1;
            infEvento.detEvento.descEvento := vdescEvento;

            if (StrToInt64(DMFD.FDQryGeral2['MDFe_NSU']) < StrToInt64(FrConsManif.Edit_NSU_nfe.Text)) then
             begin
              FrConsManif.Edit_NSU_nfe.Text := DMFD.FDQryGeral2['MDFe_NSU'];
              FrGBNFe.gravarNSU();
             end;

           end;

          if not ( FrGBNFe.ACBrNFe1.EnviarEvento(StrToInt(IDLote)) ) then
           begin
            Application.Messagebox('Abortando processo! Erro de no envio do evento!','Atenção!',mb_iconstop+mb_ok);
            Exit;
           end;

          vVer_leiaute := FrGBNFe.ACBrNFe1.EventoNFe.Evento.Add.InfEvento.versaoEvento;
          vVerEvento   := FrGBNFe.ACBrNFe1.EventoNFe.Evento.Add.InfEvento.detEvento.versao;

          with FrGBNFe.AcbrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento do
           begin
            lMsg :=
                    'Id: '          + Id + #13 +
                    'tpAmb: '       + TpAmbToStr(tpAmb) + #13 +
                    'verAplic: '    + verAplic + #13 +
                    'cOrgao: '      + IntToStr(cOrgao) + #13 +
                    'cStat: '       + IntToStr(cStat) + #13 +
                    'xMotivo: '     + xMotivo + #13 +
                    'chNFe: '       + chNFe + #13 +
                    'tpEvento: '    + TpEventoToStr(tpEvento) + #13 +
                    'xEvento: '     + xEvento + #13 +
                    'nSeqEvento: '  + IntToStr(nSeqEvento) + #13 +
                    'CNPJDest: '    + CNPJDest + #13 +
                    'emailDest: '   + emailDest + #13 +
                    'dhRegEvento: ' + DateTimeToStr(dhRegEvento) + #13 +
                    'nProt: '       + nProt;

            vSAbortar := False;

            vStatus := cStat;
            vtpE    := TpEventoToStr(tpEvento);

            // 135 - Evento registrado e vinculado a NF-e
            // 136 - Evento registrado, mas não vinculado a NF-e
            // 573 - Regeição: Duplicidade de evento
            // 653 - Regeição: NFe Cancelada, arquivo indisponível para download
            // 654 - Rejeição: NF-e Denegada, arquivo indisponível para download
            // 650 - Rejeição: Evento de "Ciência da Operação" para NF-e Cancelada ou Denegada
            // 574 - Rejeição: O autor do evento diverge do emissor da NF-e
            // 575 - Rejeição: O autor do evento diverge do destinatário da NF-e
            // 576 - Rejeição: O autor do evento não é um órgão autorizado a gerar o evento

            if ((cStat = 135) or (cStat = 136) or (cStat = 573) or (cStat = 653) or
                (cStat = 654) or (cStat = 650) or (cStat = 574) or (cStat = 575) or
                (cStat = 576)) then
             begin
              try
               DMFD.FDQryGeral1.DisableControls;
               DMFD.FDQryGeral1.Close;
               DMFD.FDQryGeral1.SQL.Clear;
               DMFD.FDQryGeral1.SQL.Add( 'update nfe_MDFe  set                        ' );
               DMFD.FDQryGeral1.SQL.Add( '      Xml_Aut       = :Xml_Aut              ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  Xml_Bai       = :Xml_Bai              ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  Evento        = :Evento               ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  Ver_leiaute   = :Ver_leiaute          ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  id            = :id                   ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  cOrgao        = :cOrgao               ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  dhEvento      = :dhEvento             ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  tpEvento      = :tpEvento             ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  nSeqEvento    = :nSeqEvento           ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  verEvento     = :verEvento            ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  desEvento     = :desEvento            ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  xJust         = :xJust                ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  cStat         = :cStat                ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  xMotivo       = :xMotivo              ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  dhRegEvento   = :dhRegEvento          ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  cSitConf      = :cSitConf             ' );
               DMFD.FDQryGeral1.SQL.Add( '   ,  nProt         = :nProt                ' );
               DMFD.FDQryGeral1.SQL.Add( '                                            ' );
               DMFD.FDQryGeral1.SQL.Add( '  where Codigo_loja = :Codigo_loja    and   ' );
               DMFD.FDQryGeral1.SQL.Add( '  isnull( Chave_nfe, '''')  Like ''%'' + :Chave_nfe + ''%'' ' );
               DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
               DMFD.FDQryGeral1.ParamByName('Chave_nfe'  ).AsString   := chNFe;

               if BaixaXml then
                begin
                 DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
                 DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
                end
               else
                begin
                 DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';
                 DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';
                end;

               if ((cStat = 135) or (cStat = 136)) then
                DMFD.FDQryGeral1.ParamByName('Evento'      ).Value  := vEvento
               else
                if DMFD.FDQryGeral2['MDFe_Evento'] < 1 then
                 DMFD.FDQryGeral1.ParamByName('Evento'      ).Value  := 1
                else
                 DMFD.FDQryGeral1.ParamByName('Evento'      ).Value  := DMFD.FDQryGeral2['MDFe_Evento'];

               DMFD.FDQryGeral1.ParamByName('Ver_leiaute' ).Value  := vVer_leiaute;
               DMFD.FDQryGeral1.ParamByName('id'          ).Value  := vId;
               DMFD.FDQryGeral1.ParamByName('cOrgao'      ).Value  := cOrgao;
               DMFD.FDQryGeral1.ParamByName('dhEvento'    ).Value  := StrToDateTime( FormatDateTime('dd/mm/yyyy', vdhEvento) );
               DMFD.FDQryGeral1.ParamByName('tpEvento'    ).Value  := tpEvento;
               DMFD.FDQryGeral1.ParamByName('nSeqEvento'  ).Value  := nSeqEvento;
               DMFD.FDQryGeral1.ParamByName('verEvento'   ).Value  := vVerEvento;
               DMFD.FDQryGeral1.ParamByName('desEvento'   ).Value  := xEvento;
               DMFD.FDQryGeral1.ParamByName('xJust'       ).Value  := Edit_xJust.Text;
               DMFD.FDQryGeral1.ParamByName('cStat'       ).Value  := IntToStr(cStat);
               DMFD.FDQryGeral1.ParamByName('xMotivo'     ).Value  := xMotivo;
               DMFD.FDQryGeral1.ParamByName('dhRegEvento' ).Value  := StrToDateTime( FormatDateTime('dd/mm/yyyy', dhRegEvento) );

               // seta as notas de Ciência, Confirmação, Desconhecimento e Não Realizada
               Case RG_TpEvento.ItemIndex of
                0  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 4;   // Ciência
                1  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 1;   // Operação Confirmada
                2  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 2;   // Desconhecida
                3  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 3;   // Operação Não Realizada
               end;

               // seta as notas denegadas, canceladas e de terceiros
               case cStat of
                650           : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 6;  // Cancelada
                653           : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 5;  // Denegada
                654           : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 6;  // Cancelada
                574, 575, 576 : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 7;  // Terceiros
               end;

               DMFD.FDQryGeral1.ParamByName('nProt'       ).Value  := nProt;

               DMFD.FDQryGeral1.ExecSQL;

               case cStat of
                650, 653, 654, 574, 575, 576 : vSAbortar := True;
               end;

               case cStat of
                650, 654      : Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso cancelada!')),'Atenção!',MB_ICONASTERISK+mb_ok);
                653           : Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso denegaga!')),'Atenção!',MB_ICONASTERISK+mb_ok);
                574, 575, 576 : Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso de terceiros!')),'Atenção!',MB_ICONASTERISK+mb_ok);
               end;

              except
               HaDe(True);                                                      // Habilita ou Desabilita componentes dutante a consulta
               Application.Messagebox('ERRO: MDe não alterada !','Atenção!',MB_ICONERROR+mb_ok);
              end;
             end
            else
             begin

              case cStat of

               137, 653, 654 :
                fTrataErro(cStat, (' para a chave: ' + VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])));

               else
                fTrataErro( cStat );

              end;

             end;

           end;

          // Linha enibida pela CR em 13 de janeiro de 2015
          // ShowMessage(lMsg);                                                 // Mosta a mensagem de retorno do manifesto

         end
        else                                                                    // Caso contrário se for igual a 3 = E de Entrada
         begin
          Application.Messagebox(PWideChar(pAnsiString(
           'Att: O manifesto com a chave nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', já foi registrado no estoque,' + Chr(13) +
           'para gerar novo evento de manifesto nesta nota você precisa' + Chr(13) +
           'cancelar o processo de entrada no estoque, depois retornar aqui' + Chr(13) +
           'e fazer novamente este processo!')),'Atenção!',MB_ICONASTERISK+mb_ok);
         end;
       end
      else                                                                      // Caso contrário se o uso for 2-Denegada ou 3-Cancelada
       begin

        if DMFD.FDQryGeral2['MDFe_cSitNFe'] = 2 then                            // 2=Uso Denegado
         Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso denegado!')),'Atenção!',MB_ICONASTERISK+mb_ok)
        else
        if DMFD.FDQryGeral2['MDFe_cSitNFe'] = 3 then                            // 3=Uso Cancelado
         Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso cancelado!')),'Atenção!',MB_ICONASTERISK+mb_ok)
        else
        if DMFD.FDQryGeral2['MDFe_cSitNFe'] = 4 then                            // 3=Uso Encerrado
         Application.Messagebox(PWideChar(pAnsiString('Att: Nota nº ' + copy(DMFD.FDQryGeral2['MDFe_Chave_nfe'], 26, 9) + ', com uso encerrado!')),'Atenção!',MB_ICONASTERISK+mb_ok);

       end;

      //------------------------------------------------------------------------
      // Dispara o download automático

      // aborta processo no caso da nota não poder ser baixada, caso de denegada, cancelada ou de terceiros
      if not vSAbortar then
       begin
        if BaixaXml then
         begin

          vAll            := false;
          vIdYesNo        := false;

          gDeuErrConsiste := false;
          vIsChecked      := false;
          vCntNotPro      := 0;

          gDowAuto := true;

          TemSel       :=    True;                                              // Torna verdadeiro se achar nota selecionada


          with FrGBNFe.ACBrNFe1 do
           begin

//
//            Foi isolado esse bloco por conta de erro de compilação para o novo acbr baixado em 15/02/2019

            WebServices.DistribuicaoDFe.CNPJCPF      :=   DMFD.FDQuery4['cnpj'];

            If FrPar.rgTipoAmb.ItemIndex = 0 then
             Configuracoes.WebServices.Ambiente  := taProducao
            else
             Configuracoes.WebServices.Ambiente  := taHomologacao;

//            DownloadNFe.Download.CNPJ      :=   DMFD.FDQuery4['cnpj'];
//
//            If FrPar.rgTipoAmb.ItemIndex = 0 then
//             DownloadNFe.Download.tpAmb    := taProducao
//            else
//             DownloadNFe.Download.tpAmb    := taHomologacao;
//
//            DownloadNFe.Download.Chaves.Clear;
//            DownloadNFe.Download.Chaves.Add;
//            DownloadNFe.Download.Chaves.Items[DownloadNFe.Download.Chaves.Count-1].chNFe := DMFD.FDQryGeral2['MDFe_Chave_nfe'];

            //------------------------------------------------------------------
            // trunk2
            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload    := gCamXml;        // Edson Lima ; 2019-07-29
            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathEvento                  := gCamXml;
            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar                  := gCamXml;
            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathNFe                     := gCamXml;
            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathInu                     := gCamXml;

            FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSchemas                 := gCamSch;
            Configuracoes.Arquivos.PathSalvar                                   := FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

            // DistribuicaoDFe(cUF,cCNPJ,nUltNSU,nNSU,aChNFe)
            // DistribuicaoDFePorChaveNFe(cUF, cCNPJ, aChNFe)
            // DistribuicaoDFePorNSU(cUF, cCNPJ, nNSU)
            // DistribuicaoDFePorUltNSU(cUF, cCNPJ, nUltNSU)

//            if not ( DistribuicaoDFe( DMFD.FDQuery4['codigo_uf'],
//                             VarToStr(DMFD.FDQuery4['cnpj']),
//                             '0',
//                             VarToStr(DMFD.FDQryGeral2['MDFe_NSU']),
//                             VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe']) ) ) then
//             begin
//
//              Application.Messagebox( PWideChar('O download falhou pra chave:' +
//                                       VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])), 'Download',
//                                       mb_Ok + mb_ICONINFORMATION );
//
//             end;

            if not ( DistribuicaoDFePorChaveNFe(DMFD.FDQuery4['codigo_uf'],
                     VarToStr(DMFD.FDQuery4['cnpj']),
                     VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])) ) then       // Efetua o download do Xml da nota fiscal
             begin

              Application.Messagebox( PWideChar('O download falhou pra chave:' +
                                       VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])), 'Download',
                                       mb_Ok + mb_ICONINFORMATION );

             end;

            //------------------------------------------------------------------

            with WebServices.DistribuicaoDFe.retDistDFeInt do
             begin
              for indContador := 0 to docZip.Count - 1 do
               begin

                // by Edson Lima ; 2015-9-2T1659 ; Trata o mes pra buscar o xml
                vmE := StrToInt(formatdatetime('mm',  StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi'])));
                vmA := StrToInt(formatdatetime('mm',  Now()));

                strPathArquivo := (gCamXml + formatdatetime('yyyy',StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi']))
                                           + formatdatetime('mm',  StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi']))
//                                           + '\Down\' + docZip.Items[indContador].resNFe.chNFe + '-nfe.xml');     Isolado p/atu 15/02/2019
                                           + '\Down\' + docZip.Items[indContador].resDFe.chDFe + '-nfe.xml');

                if (vmA > vmE) then
                 begin
                  for z := vmE to vmA do
                   begin
                    if FileExists(strPathArquivo) then
                     break
                    else
                     strPathArquivo := (gCamXml + formatdatetime('yyyy', Now())
                                                + IntToStrZero(z, 2)
//                                                + '\Down\' + docZip.Items[indContador].resNFe.chNFe + '-nfe.xml'); Isolado p/atu 15/02/2019
                                                + '\Down\' + docZip.Items[indContador].resDFe.chDFe + '-nfe.xml');
                   end;
                 end;

                //--------------------------------------------------------------

                if ((cStat = 138) or(cStat = 139) or (cStat = 140) or (cStat = 555)) then
                 begin

                  ImportarXML(strPathArquivo);                                  // Salva os dados do Xml nas tabelas de entrada
                  gDeuErrConsiste := false;

                  try
                   if ((cStat = 138) or(cStat = 139) or (cStat = 140)) then
                    begin
                     DMFD.FDQryGeral1.DisableControls;
                     DMFD.FDQryGeral1.Close;
                     DMFD.FDQryGeral1.SQL.Clear;
                     DMFD.FDQryGeral1.SQL.Add( 'update nfe_MDFe  set                        ' );
                     DMFD.FDQryGeral1.SQL.Add( '      Xml_Bai       = :Xml_Bai              ' );
                     DMFD.FDQryGeral1.SQL.Add( '                                            ' );
                     DMFD.FDQryGeral1.SQL.Add( '  where Codigo_loja = :Codigo_loja    and   ' );
                     DMFD.FDQryGeral1.SQL.Add( '        Evento      = :Evento         and   ' );
                     DMFD.FDQryGeral1.SQL.Add( '  isnull( Chave_nfe, '''')  Like ''%'' + :Chave_nfe + ''%'' ' );

                     DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
                     DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
                     DMFD.FDQryGeral1.ParamByName('Evento'     ).AsString   := DMFD.FDQryGeral2['MDFe_Evento'];
                     DMFD.FDQryGeral1.ParamByName('Chave_nfe'  ).AsString   := docZip.Items[indContador].resDFe.chDFe;

                     DMFD.FDQryGeral1.ExecSQL;
                    end;

                   except

                    HaDe(True);                                                 // Habilita ou Desabilita componentes dutante a consulta
                    Application.Messagebox('ERRO: MDe não alterada !','Atenção!',MB_ICONERROR+mb_ok);

                   end;

                   lMsg :=
//                           'Id: '          + IntToStr(docZip.Items[indContador].id) + #13 +
                           'Protocolo: '   + docZip.Items[indContador].resDFe.nProt + #13 +
                           'cStat: '       + IntToStr(cStat) + #13 +
                           'xMotivo: '     + xMotivo + #13 +
                           'chNFe: '       + docZip.Items[indContador].resDFe.chDFe;

                   // Linha enibida pela CR em 13 de janeiro de 2015
                   //ShowMessage(lMsg);                                           // Mosta a mensagem de retorno do manifesto

                  end
                 else
                  begin

                   case cStat of

                    137, 653, 654 :
                     fTrataErro(cStat, (' para a chave: ' + VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])));

                    else
                     fTrataErro( cStat );

                   end;

                  end;
               end;
             end;
           end;

          gDowAuto := false;

         end;
       end;

     end;

   end;

  // Simula um clic no RadioGroup para atualizar a tabela
  FrBuscaChave.RadioGroup1Click(Sender);

  // Define o parametro inicial do codigo da loja ; by Edson Lima ;
  DMFD.FDQuery14.Close;
  DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger    := StrToInt(gCodEmp);
  DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger    := StrToInt(gCodEmp);
  case RadioGroup1.ItemIndex of
   0 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '0';
   1 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '4';
   2 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '1';
   3 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '2';
   4 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '3';
   5 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '5';
   6 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '6';
   7 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '7';
   8 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '_';
  end;
  if Checkbox1.Checked then
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
   end
  else
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
   end;
  DMFD.FDQuery14.ParamByName('Chave_nfe').AsString        := FrBuscaChave.Edit_Busca_Chave.Text;
  DMFD.FDQuery14.Open;

  //----------------------------------------------------------------------------
  // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
  if not DMFD.FDQuery14.IsEmpty then
   pAtuTLMDFe(
               cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
               cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
               cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
               cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
             );

  //----------------------------------------------------------------------------

  if Not TemSel then                                                            // Veririca se o usuário selecionou notas
   begin
    Application.Messagebox('ATT: Você não selecionou nenhuma nota!','Atenção!',MB_ICONASTERISK+mb_ok);
    HaDe(True);                                                                 // Habilita ou Desabilita componentes dutante a consulta
    exit;
   end;

  HaDe(True);                                                                   // Habilita ou Desabilita componentes dutante a consulta

 except

  HaDe(True);                                                                   // Habilita ou Desabilita componentes dutante a consulta

 end;

end;

procedure TFrBuscaChave.SpeedButton1Click(Sender: TObject);
var
 indContador, x, vmr, vCntNotPro, Z        : integer;
 strPathArquivo, lMsg, vCha, vArq, vArI    : String;
 TemSel                                    : boolean;
 vCam, vTxt                                : String;
 SearchRec                                 : TSearchRec;
 Result, vmE, vmA                          : Integer;
 vAll, vIdYesNo, vIsChecked                : Boolean;
begin

 vAll            := false;
 vIdYesNo        := false;

 gDeuErrConsiste := false;
 vIsChecked      := false;
 vCntNotPro      := 0;

 if not gImportXML then // Se gImportXML for verdadeiro faz a Importação caso contrario faz donwload
  begin

   Try

    if not gDowAuto then                                                        // Download do xml automática
     if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                               'Download do XML da NF-e ?','Confirme',
                                mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then
      exit;

    HaDe(False);                                                                // Habilita ou Desabilita componentes dutante a consulta

    TemSel           :=    False;                                               // Inicia como falso a verificação de nota selecionada

    if not fTemSel( cxTLM, cxTLMbSel ) then exit;                               // verifica se tem item selecionado na treelist

    for Z := 0 to cxTLM.Count -1 do                                             // Percorre a treelist

     begin

      if ( cxTLM.Items[Z].Texts[cxTLMbSel.ItemIndex] = 'True' )  then                                                    // Verifica se é download automatico

       begin

        // Filtra a nfe selecionada com select
        pSelMDe( DMFD.FDQryGeral2,
                 StrToInt(FrGBNFe.edt_CodEmp.Text),
                 cxTLM.Items[Z].Texts[cxTLMsChv.ItemIndex],
                 cxTLM.Items[Z].Texts[cxTLMsEve.ItemIndex] );

        TemSel       :=    True;                                                // Torna verdadeiro se achar nota selecionada

        with FrGBNFe.ACBrNFe1 do
         begin

//          Bloco enibido durante a atualização do acbr do dia 15/02/2019

            WebServices.DistribuicaoDFe.CNPJCPF      :=   DMFD.FDQuery4['cnpj'];

            If FrPar.rgTipoAmb.ItemIndex = 0 then
             Configuracoes.WebServices.Ambiente  := taProducao
            else
             Configuracoes.WebServices.Ambiente  := taHomologacao;

          //--------------------------------------------------------------------
          // trunk2

          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload      := gCamXml;        // Edson Lima ; 2019-07-29
          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathEvento                    := gCamXml;
          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar                    := gCamXml;
          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathNFe                       := gCamXml;
          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathInu                       := gCamXml;

          FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSchemas                   := gCamSch;
          Configuracoes.Arquivos.PathSalvar                                     := FrGBNFe.ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

          if not ( DistribuicaoDFePorChaveNFe(DMFD.FDQuery4['codigo_uf'],
                   VarToStr(DMFD.FDQuery4['cnpj']),
                   VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])) ) then         // Efetua o download do Xml da nota fiscal
           begin

            Application.Messagebox( PWideChar('O download falhou pra chave:' +
                                     VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])), 'Download',
                                     mb_Ok + mb_ICONINFORMATION );

           end;

          //--------------------------------------------------------------------

          with WebServices.DistribuicaoDFe.retDistDFeInt do
           begin
            for indContador := 0 to docZip.Count - 1 do
             begin

              // by Edson Lima ; 2015-9-2T1659 ; Trata o mes pra buscar o xml
              vmE := StrToInt(formatdatetime('mm',  StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi'])));
              vmA := StrToInt(formatdatetime('mm',  now()));

              strPathArquivo := (gCamXml + formatdatetime('yyyy',StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi']))
                                         + formatdatetime('mm',  StrToDateTime(DMFD.FDQryGeral2['MDFe_dEmi']))
                                         + '\Down\' + docZip.Items[indContador].resDFe.chDFe + '-nfe.xml');

              if (vmA > vmE) then
               begin
                for x := vmE to vmA do
                 begin
                  if FileExists(strPathArquivo) then
                   break
                  else
                   strPathArquivo := (gCamXml + formatdatetime('yyyy', now())
                                              + IntToStrZero(x, 2)
                                              + '\Down\' + docZip.Items[indContador].resDFe.chDFe + '-nfe.xml');
                 end;
               end;

              //----------------------------------------------------------------

              if ((cStat = 138) or (cStat = 139) or (cStat = 140) or (cStat = 555)) then
               begin

                ImportarXML(strPathArquivo);                                    // Salva os dados do Xml nas tabelas de entrada
                gDeuErrConsiste := false;

                try
                 if ((cStat = 138) or (cStat = 139) or (cStat = 140)) then
                  begin
                   DMFD.FDQryGeral1.DisableControls;
                   DMFD.FDQryGeral1.Close;
                   DMFD.FDQryGeral1.SQL.Clear;
                   DMFD.FDQryGeral1.SQL.Add( 'update nfe_MDFe  set                        ' );
                   DMFD.FDQryGeral1.SQL.Add( '      Xml_Bai       = :Xml_Bai              ' );
                   DMFD.FDQryGeral1.SQL.Add( '                                            ' );
                   DMFD.FDQryGeral1.SQL.Add( '  where Codigo_loja = :Codigo_loja    and   ' );
                   DMFD.FDQryGeral1.SQL.Add( '        Evento      = :Evento         and   ' );
                   DMFD.FDQryGeral1.SQL.Add( '  isnull( Chave_nfe, '''')  Like ''%'' + :Chave_nfe + ''%'' ' );

                   DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value       := '1';
                   DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
                   DMFD.FDQryGeral1.ParamByName('Evento'     ).AsString   := DMFD.FDQryGeral2['MDFe_Evento'];
                   DMFD.FDQryGeral1.ParamByName('Chave_nfe'  ).AsString   := docZip.Items[indContador].resDFe.chDFe;

                   DMFD.FDQryGeral1.ExecSQL;
                  end;

                 except
                  HaDe(True);                                                   // Habilita ou Desabilita componentes dutante a consulta
                  Application.Messagebox('ERRO: MDe não alterada !','Atenção!',MB_ICONERROR+mb_ok);
                 end;

                 lMsg :=
//                         'Id: '          + IntToStr(docZip.Items[indContador].Id) + #13 +
                         'Protocolo: '   + docZip.Items[indContador].resDFe.nProt + #13 +
                         'cStat: '       + IntToStr(cStat) + #13 +
                         'xMotivo: '     + xMotivo + #13 +
                         'chNFe: '       + docZip.Items[indContador].resDFe.chDFe;

                end
               else
                begin

                 case cStat of

                  137, 653, 654 :
                   fTrataErro(cStat, (' para a chave: ' + VarToStr(DMFD.FDQryGeral2['MDFe_Chave_nfe'])));

                  else
                   fTrataErro( cStat );

                 end;

                end;
             end;
           end;
         end;
       end;

      if gDowAuto then                                                          // Download do xml automática
       exit;

     end;

    // Define o parametro inicial do codigo da loja ; by Edson Lima ;
    if not gDowAuto then                                                        // Download do xml automática
     begin
      DMFD.FDQuery14.Close;
      DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger     := StrToInt(gCodEmp);
      DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger     := StrToInt(gCodEmp);
      case RadioGroup1.ItemIndex of
       0 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '0';
       1 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '4';
       2 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '1';
       3 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '2';
       4 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '3';
       5 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '5';
       6 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '6';
       7 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '7';
       8 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '_';
      end;
      if Checkbox1.Checked then
       begin
        DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
        DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
       end
      else
       begin
        DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
        DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
       end;
      DMFD.FDQuery14.ParamByName('Chave_nfe').AsString        := FrBuscaChave.Edit_Busca_Chave.Text;
      DMFD.FDQuery14.Open;

      // Zera o contador de itens selecionados
      Edit_QSel.Text := '0';

      //------------------------------------------------------------------------
      // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
      if not DMFD.FDQuery14.IsEmpty then
       pAtuTLMDFe(
                   cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
                   cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
                   cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
                   cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
                 );

      //------------------------------------------------------------------------

     end;

    HaDe(True);                                                                 // Habilita ou Desabilita componentes dutante a consulta

    if ( frmStatus <> nil ) then
     frmStatus.Hide;


    // Rotina de verificação de downloads





    Application.Messagebox( PWideChar('Download finalizado!'), 'Download',
                             mb_Ok + mb_ICONINFORMATION );


   except

    HaDe(True);                                                                 // Habilita ou Desabilita componentes dutante a consulta

   end;

  end

 //*****************************************************************************

 else                                                                           // Verdadeiro se for Importação e Falso se for Download

 //*****************************************************************************
 // by EL ; 2014-11-13T1144 ; Rotina de Importação do XML da NFe
 //*****************************************************************************

  begin

   Try

    if FrImportXML.CheckListBox1.Count < 1 then
     begin
      Application.Messagebox('Não tem itens na caixa de Arq. Xmls a importar!','Informação!',MB_ICONASTERISK+mb_ok);
      exit;
     end;

    if Application.Messagebox('Gostaria de proseguir com o processo de' + Chr(13) +
                              'Importação do XML da NF-e de Entrada?','Confirme', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then exit;

    HaDe(False);                                                                // Habilita ou Desabilita componentes dutante a consulta

    TemSel           :=    False;                                               // Inicia como falso a verificação de nota selecionada

    FrImportXML.Gauge1.Progress       := 0;
    FrImportXML.Gauge1.MaxValue       := FrImportXML.CheckListBox1.Items.Count;

    for x := 0 to Pred(FrImportXML.CheckListBox1.Items.Count) do
     begin

      FrImportXML.Gauge1.Progress := FrImportXML.Gauge1.Progress + 1;

      Application.ProcessMessages;

      if gAbortar then
        begin
         if Application.Messagebox('Gostaria de abortar o processo de' + Chr(13) +
                                   'Importação do Xml  ?','Confirme',
                                    mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdYes then
          begin
           HaDe(True);                                                          // Habilita ou Desabilita componentes dutante a consulta
           FrImportXML.CheckListBox1.Clear;
           Exit;
          end
         else
          gAbortar := False;

        end;

      if FrImportXML.CheckListBox1.Checked[x] then
       begin

        vIsChecked := true;
        vCntNotPro := (vCntNotPro + 1);

        if ( Copy(  FrImportXML.DirectoryListBox1.Directory,
             Length(FrImportXML.DirectoryListBox1.Directory), 1) <> '\' ) then

         vCam := FrImportXML.DirectoryListBox1.Directory + '\'

        else

         vCam := FrImportXML.DirectoryListBox1.Directory;


        vCha := Copy(FrImportXML.CheckListBox1.Items[x], 1, 44);                // Pega a chave do nome do arquivo

        vArq := (vCam      +  Copy(FrImportXML.CheckListBox1.Items[x], 1, Length(FrImportXML.CheckListBox1.Items[x]))); // Pega a nome do completo Arquivo com a Extensão

        vArI := (gCamXMLi  +  Copy(FrImportXML.CheckListBox1.Items[x], 1, Length(FrImportXML.CheckListBox1.Items[x]))); // Pega a nome do completo Arquivo com a Extensão

        TemSel       :=    True;                                                // Torna verdadeiro se achar nota selecionada

        FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
        FrGBNFe.ACBrNFe1.NotasFiscais.LoadFromFile(vArq);

        if FileExists(vArI) then                                                // Caso o arquivo é importado já tenha sido importado
         begin

          if not vAll then
           begin

            FrMens.Memo1.Lines.Text := ( 'Arquivo ' +
                                         Copy(FrImportXML.CheckListBox1.Items[x], 1,
                                         Length(FrImportXML.CheckListBox1.Items[x]))
                                       + ', Consta que já foi importado! Gostaria de proseguir com a Importação do XML de Entrada?');
            FrMens.ShowModal;

            case gmr of

             3 : // Antes --> IdCancel :
              begin

               HaDe(True);                                                      // Habilita ou Desabilita componentes dutante a consulta

               if not gDeuErrConsiste then
                Application.Messagebox('A Importação fei abortada!','Informação!',MB_ICONASTERISK+mb_ok);
               gDeuErrConsiste := false;

               FrImportXML.FileListBox1.Clear;
               FrImportXML.CheckListBox1.Clear;
               FrImportXML.DirectoryListBox1.Directory := gCamXml;
               FrImportXML.DirectoryListBox1.Directory := vCam;

               exit;

              end;

             6, 10 :   // Se a escolha for [Sim] ou [Sim todos]
              begin

               if (gmr = 10) then
                vAll := true
               else
                vAll := false;

               vIdYesNo := true;

               if not ( ImportarXML(vArq) ) then                                // Salva os dados do Xml nas tabelas de entrada
                vCntNotPro := (vCntNotPro - 1);

               FrGBNFe.ACBrNFe1.NotasFiscais.GravarXML(vArI);                   //Salva os XMLs Depois da Importação.

              end;

             7, 9 :    // Se a resposta for [Não] ou [Não Todos]
              begin

               Application.ProcessMessages;

               vCntNotPro := (vCntNotPro - 1);

               if (gmr = 9) then
                vAll := true
               else
                vAll := false;

               vIdYesNo := false;

              end;

            end;

           end
          else
           begin

            if vIdYesNo then
             begin

              Application.ProcessMessages;

              if not ( ImportarXML(vArq) ) then                                 // Salva os dados do Xml nas tabelas de entrada
               vCntNotPro := (vCntNotPro - 1);

              FrGBNFe.ACBrNFe1.NotasFiscais.GravarXML(vArI);                    //Salva os XMLs Depois da Importação.

             end
            else

             if (gmr = 9) then
              vCntNotPro := (vCntNotPro - 1);

           end;
         end
        else  // Caso seja a primeira vez que o arquivo é importado
         begin

          if not ( ImportarXML(vArq) ) then                                     // Salva os dados do Xml nas tabelas de entrada
           vCntNotPro := (vCntNotPro - 1);

          FrGBNFe.ACBrNFe1.NotasFiscais.GravarXML(vArI);                        //Salva os XMLs Depois da Importação.

         end;
       end;
     end;

    HaDe(True);                                                                 // Habilita ou Desabilita componentes dutante a consulta

    if ((not gDeuErrConsiste) and (vIsChecked)) then
     begin
      if (vCntNotPro > 1) then
       vTxt := ' notas foram efetuadas '
      else
       vTxt := ' nota foi efetuada ';
      Application.Messagebox(PWideChar( 'A Importação de ' + IntToStr(vCntNotPro) + vTxt + 'com sucesso!' ),'Informação!',MB_ICONASTERISK+mb_ok);
     end
    else if ((not gDeuErrConsiste) and (not vIsChecked)) then
     begin
      Application.Messagebox('Nenhum registro selecionado!','Informação!',MB_ICONASTERISK+mb_ok);
      exit;
     end;

    gDeuErrConsiste := false;

    FrImportXML.FileListBox1.Clear;
    FrImportXML.CheckListBox1.Clear;
    FrImportXML.DirectoryListBox1.Directory := gCamPesXML;
    FrImportXML.DirectoryListBox1.Directory := vCam;

   except
    HaDe(True);                                                                 // Habilita ou Desabilita componentes dutante a consulta
   end;

  end;

end;

//------------------------------------------------------------------------------
// Procedure: ImportaXML() - Salva os dados do Xml nas tabelas de entrada
//            traz como parametros o caminho e o nome do arquivo Xml
//            by Edson Lima ; 18/06/2014T1517
//------------------------------------------------------------------------------
function TFrBuscaChave.ImportarXML(ArqXml : String) : Boolean;
var
 i, j, k, n, l                  : integer;
 Nota, Node, NodePai, NodeItem  : TTreeNode;
 NFeRTXT                        : TNFeRTXT;
 vTotItens, vTotFat, vTotNot    : Currency;
 vObs, vCST, vCSOSN             : String;
 vImporta                       : Boolean;

begin

 Result := True;

 FrGBNFe.ACBrNFe1.NotasFiscais.Clear;

 //tenta TXT
 FrGBNFe.ACBrNFe1.NotasFiscais.Add;
 NFeRTXT := TNFeRTXT.Create(FrGBNFe.ACBrNFe1.NotasFiscais.Items[0].NFe);
 NFeRTXT.CarregarArquivo(ArqXml);

 if NFeRTXT.LerTxt then
  begin
   NFeRTXT.Free;
  end
 else
  begin
   NFeRTXT.Free;

   //tenta XML
   FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
   try
    FrGBNFe.ACBrNFe1.NotasFiscais.LoadFromFile(ArqXml);
   except
    on E: Exception do Raise Exception.Create('Arquivo XML da NF-e inválido.'+ E.Message);
   end;
  end;

 //----------------------------------------
 // Verificação dos valores contidos no xml
 //----------------------------------------

 vTotItens  := 0;
 vTotFat    := 0;

 FrGBNFe.trvwNFe.Items.Clear;

 for n:=0 to FrGBNFe.ACBrNFe1.NotasFiscais.Count-1 do
  begin
   with FrGBNFe.ACBrNFe1.NotasFiscais.Items[n].NFe do
    begin

      vTotNot     := ( Total.ICMSTot.vNF + Total.ICMSTot.vDesc  +
                       Total.ICMSTot.vOutro );                                  //Guarda o valor total da nota

     for I := 0 to Det.Count-1 do
      begin
       vTotItens := (vTotItens + Det.Items[I].Prod.vProd);
      end;

     for I := 0 to Cobr.Dup.Count-1 do
      begin
       vTotFat := (vTotFat + Cobr.Dup.Items[I].vDup);                           // Guarda o total da fatura
      end;

     if ( Dest.CNPJCPF = DMFD.FDQuery4['cnpj'] ) then
      vImporta := True
     else
      vImporta := false;

    end;

   vTotItens  := 0;
   vTotFat    := 0;

  end;
 //-----------------------------------------------------------------------------
 // Se o cnpj não for igual do destinatário ou transp ou emit não fará importação

 if not vImporta then
  begin
   Result := False;
   Exit;
  end;

 //----------------------------------------
 FrGBNFe.trvwNFe.Items.Clear;
                                                                                //        tabela      campos ñ encontrados
 for n:=0 to FrGBNFe.ACBrNFe1.NotasFiscais.Count-1 do                           //*    =  NFeE_Fat -           -
  begin                                                                         //**   =  NFeE_Ite -  [SitTri] [EAN13] [ValSbt]
   with FrGBNFe.ACBrNFe1.NotasFiscais.Items[n].NFe do                           //***  =  NFeE_Mov -  [SubSerie] [NomFanTrp] [SetorTrp]
    begin                                                                       //                    [IBGETrp]  [CepTrp]    [EmailEmt]

     //-------------------------------------------------------------------------
     // Observações fiscais

     for I:=0 to InfAdic.obsCont.Count-1 do
      begin
       with InfAdic.obsCont.Items[I] do
        begin
         vObs := (trim(xCampo) + trim(xTexto));
         end;
      end;

     for I:=0 to InfAdic.obsFisco.Count-1 do
      begin
       with InfAdic.obsFisco.Items[I] do
        begin
         vObs := (vObs + trim(xCampo) + trim(xTexto));
        end;
      end;

     vObs := (vObs + trim(InfAdic.infCpl) + trim(InfAdic.infAdFisco));

     //-------------------------------------------------------------------------
     // Grava na tabela de movimentos de entrada
     // by Edson Lima ; 13-6-2014 ; 15:18
     //-------------------------------------------------------------------------

     DMFD.FDQryGeral1.DisableControls;
     DMFD.FDQryGeral1.Close;
     DMFD.FDQryGeral1.SQL.Clear;
     DMFD.FDQryGeral1.SQL.Add( ' Select                                          ' );
     DMFD.FDQryGeral1.SQL.Add( '  t1.CodEmp         as  Mov_CodEmp               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CnpjEmt        as  Mov_CnpjEmt              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstEmt      as  Mov_InsEstEmt            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodNot         as  Mov_CodNot               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.Modelo         as  Mov_Modelo               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.Serie          as  Mov_Serie                ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.SubSerie       as  Mov_SubSerie             ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.DatNot         as  Mov_DatNot               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasIcm         as  Mov_BasIcm               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValIcm         as  Mov_ValIcm               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasSbt         as  Mov_BasSbt               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValSbt         as  Mov_ValSbt               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValPro         as  Mov_ValPro               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValFre         as  Mov_ValFre               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.TipFre         as  Mov_TipFre               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValSeg         as  Mov_ValSeg               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValDes         as  Mov_ValDes               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValOut         as  Mov_ValOut               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasIpi         as  Mov_BasIpi               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValIpi         as  Mov_ValIpi               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValPis         as  Mov_ValPis               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValCfs         as  Mov_ValCfs               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValNot         as  Mov_ValNot               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.NtrOpr         as  Mov_NtrOpr               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ForPag         as  Mov_ForPag               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ChvNFe         as  Mov_ChvNFe               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ObsMov         as  Mov_ObsMov               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CnpjTrp        as  Mov_CnpjTrp              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstTrp 	    as  Mov_InsEstTrp            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.NomeTrp        as  Mov_NomeTrp              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.NomFanTrp 	    as  Mov_NomFanTrp            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.EnderecoTrp    as  Mov_EnderecoTrp          ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.SetorTrp       as  Mov_SetorTrp             ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CidadeTrp      as  Mov_CidadeTrp            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.UFTrp 	        as  Mov_UFTrp                ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.IBGETrp        as  Mov_IBGETrp              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CepTrp 	       as  Mov_CepTrp               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.PlacaVei 	     as  Mov_PlacaVei             ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.UFVei 	        as  Mov_UFVei 	              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CnpjDst        as  Mov_CnpjDst              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstDst      as  Mov_InsEstDst            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.PosMov     	   as  Mov_PosMov               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstSbtEmt   as  Mov_InsEstSbtEmt         ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.NomEmt 	       as  Mov_NomEmt               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.NomFanEmt      as  Mov_NomFanEmt            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.EnderecoEmt    as  Mov_EnderecoEmt          ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.SetorEmt 	     as  Mov_SetorEmt    	        ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CidadeEmt      as  Mov_CidadeEmt            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.UFEmt 	        as  Mov_UFEmt 	              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.IBGEEmt        as  Mov_IBGEEmt              ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.CepEmt         as  Mov_CepEmt               ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.FoneEmt 	      as  Mov_FoneEmt 	            ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.EmailEmt 	     as  Mov_EmailEmt 	           ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.Status 	       as  Mov_Status 	             ' );
     DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValDsn 	       as  Mov_ValDsn 	             ' );
     DMFD.FDQryGeral1.SQL.Add( '                                                 ' );
     DMFD.FDQryGeral1.SQL.Add( ' from NFeE_Mov t1 join emitente t2 on t1.CodEmp = t2.Codigo_loja ' );
     DMFD.FDQryGeral1.SQL.Add( '                                                 ' );
     DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and        ' );
     DMFD.FDQryGeral1.SQL.Add( '  isnull( t1.ChvNFe, '''')  Like ''%'' + :ChvNFe + ''%'' ' );
     DMFD.FDQryGeral1.ParamByName('CodEmp'      ).Value {AsInteger}    := StrToInt(gCodEmp);
     DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).Value {AsInteger}    := StrToInt(gCodEmp);
     DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).Value        := Emit.CNPJCPF;
     DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).Value        := Emit.IE;
     DMFD.FDQryGeral1.ParamByName('CodNot'      ).Value {AsInteger}    := Ide.nNF;
     DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
     DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
     DMFD.FDQryGeral1.ParamByName('ChvNFe'      ).Value {AsString}     := procNFe.chNFe;
     DMFD.FDQryGeral1.Open;

     if DMFD.FDQryGeral1.IsEmpty then
      begin

       // Grava novo registro NFeE_Mov
       try
        DMFD.FDQryGeral1.DisableControls;
        DMFD.FDQryGeral1.Close;
        DMFD.FDQryGeral1.SQL.Clear;
        DMFD.FDQryGeral1.SQL.Add( 'Insert into NFeE_Mov (                        ' );
        DMFD.FDQryGeral1.SQL.Add( '      CodEmp                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CnpjEmt                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CodNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  Modelo                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  Serie                                   ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  SubSerie                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  DatNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  BasIcm                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValIcm                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  BasSbt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValSbt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValPro                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValFre                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  TipFre                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValSeg                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValDes                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValOut                                  ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  BasIpi                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValIpi                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValPis                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValCfs                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  NtrOpr                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ForPag                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ChvNFe                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ObsMov                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CnpjTrp                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstTrp 	                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  NomeTrp                                 ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  NomFanTrp 	                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  EnderecoTrp                             ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  SetorTrp                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CidadeTrp                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  UFTrp 		                                ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  IBGETrp                                 ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  CepTrp 	                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  PlacaVei 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  UFVei 		                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CnpjDst                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstDst                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstSbtEmt                            ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  NomEmt 	                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  NomFanEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  EnderecoEmt                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  SetorEmt 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CidadeEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  UFEmt 	                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  IBGEEmt                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  CepEmt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  FoneEmt 	                               ' );
        //DMFD.FDQryGeral1.SQL.Add( '   ,  EmailEmt 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  Status                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   ,  ValDsn                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '                     )                        ' );
        DMFD.FDQryGeral1.SQL.Add( '  Values            (                         ' );
        DMFD.FDQryGeral1.SQL.Add( '     :CodEmp                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CnpjEmt                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :InsEstEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CodNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :Modelo                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :Serie                                   ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :SubSerie                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :DatNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :BasIcm                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValIcm                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :BasSbt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValSbt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValPro                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValFre                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :TipFre                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValSeg                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValDes                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValOut                                  ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :BasIpi                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValIpi                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValPis                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValCfs                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValNot                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :NtrOpr                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ForPag                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ChvNFe                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ObsMov                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CnpjTrp                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :InsEstTrp 	                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :NomeTrp                                 ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :NomFanTrp 	                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :EnderecoTrp                             ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :SetorTrp                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CidadeTrp                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :UFTrp 		                                ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :IBGETrp                                 ' );
        //DMFD.FDQryGeral1.SQL.Add( '   , :CepTrp 	                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :PlacaVei 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :UFVei 		                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CnpjDst                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :InsEstDst                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :InsEstSbtEmt                            ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :NomEmt 	                                ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :NomFanEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :EnderecoEmt                             ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :SetorEmt 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CidadeEmt                               ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :UFEmt 	                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :IBGEEmt                                 ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :CepEmt                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :FoneEmt 	                               ' );
        //DMNFe.ZqryGeral.SQL.Add( '   , :EmailEmt 	                              ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :Status                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '   , :ValDsn                                  ' );
        DMFD.FDQryGeral1.SQL.Add( '                    )                         ' );
        DMFD.FDQryGeral1.ParamByName('CodEmp'      ).Value       :=  StrToInt(gCodEmp);
        DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).Value       :=  copy(Emit.CNPJCPF, 1, 18);
        DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).Value       :=  copy(Emit.IE, 1, 25);
        DMFD.FDQryGeral1.ParamByName('CodNot'      ).Value       :=  Ide.nNF;
        DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value       :=  copy(IntToStr(Ide.modelo), 1, 2);
        DMFD.FDQryGeral1.ParamByName('Serie'       ).Value       :=  copy(IntToStr(Ide.serie), 1, 3);
        //DMFD.FDQryGeral1.ParamByName('SubSerie'    ).Value       :=  '';
        DMFD.FDQryGeral1.ParamByName('DatNot'      ).Value       :=  StrToDateTime( FormatDateTime('dd/mm/yyyy hh:nn:ss', Ide.dEmi) );
        DMFD.FDQryGeral1.ParamByName('BasIcm'      ).AsFloat     :=  Total.ICMSTot.vBC;
        DMFD.FDQryGeral1.ParamByName('ValIcm'      ).AsFloat     :=  Total.ICMSTot.vICMS;
        DMFD.FDQryGeral1.ParamByName('BasSbt'      ).AsFloat     :=  Total.ICMSTot.vBCST;
        DMFD.FDQryGeral1.ParamByName('ValSbt'      ).AsFloat     :=  Total.ICMSTot.vST;
        DMFD.FDQryGeral1.ParamByName('ValPro'      ).AsFloat     :=  Total.ICMSTot.vProd;
        DMFD.FDQryGeral1.ParamByName('ValFre'      ).AsFloat     :=  Total.ICMSTot.vFrete;
        DMFD.FDQryGeral1.ParamByName('TipFre'      ).Value       :=  copy(modFreteToStr(Transp.modFrete), 1, 1);
        DMFD.FDQryGeral1.ParamByName('ValSeg'      ).AsFloat     :=  Total.ICMSTot.vSeg;
        DMFD.FDQryGeral1.ParamByName('ValDes'      ).AsFloat     :=  Total.ICMSTot.vDesc;
        DMFD.FDQryGeral1.ParamByName('ValOut'      ).AsFloat     :=  Total.ICMSTot.vOutro;
        //DMFD.FDQryGeral1.ParamByName('BasIpi'      ).Value       :=  0;
        DMFD.FDQryGeral1.ParamByName('ValIpi'      ).AsFloat     :=  Total.ICMSTot.vIPI;
        DMFD.FDQryGeral1.ParamByName('ValPis'      ).AsFloat     :=  Total.ICMSTot.vPIS;
        DMFD.FDQryGeral1.ParamByName('ValCfs'      ).AsFloat     :=  Total.ICMSTot.vCOFINS;
        DMFD.FDQryGeral1.ParamByName('ValNot'      ).AsFloat     :=  Total.ICMSTot.vNF;
        DMFD.FDQryGeral1.ParamByName('NtrOpr'      ).Value       :=  copy(Ide.natOp, 1, 75);
        DMFD.FDQryGeral1.ParamByName('ForPag'      ).Value       :=  copy(IndpagToStr(Ide.indPag), 1, 1);
        DMFD.FDQryGeral1.ParamByName('ChvNFe'      ).Value       :=  copy(procNFe.chNFe, 1, 44);
        DMFD.FDQryGeral1.ParamByName('ObsMov'      ).Value       :=  copy(vObs, 1, 250);
        DMFD.FDQryGeral1.ParamByName('CnpjTrp'     ).Value       :=  copy(Transp.Transporta.CNPJCPF, 1, 18);
        DMFD.FDQryGeral1.ParamByName('InsEstTrp'   ).Value       :=  copy(Transp.Transporta.IE, 1, 25);
        DMFD.FDQryGeral1.ParamByName('NomeTrp'     ).Value       :=  copy(Transp.Transporta.xNome, 1, 75);
        //DMFD.FDQryGeral1.ParamByName('NomFanTrp'   ).Value       :=  '';
        DMFD.FDQryGeral1.ParamByName('EnderecoTrp' ).Value       :=  copy(Transp.Transporta.xEnder, 1, 75);
        //DMFD.FDQryGeral1.ParamByName('SetorTrp'    ).Value       :=  '';
        DMFD.FDQryGeral1.ParamByName('CidadeTrp'   ).Value       :=  copy(Transp.Transporta.xMun, 1, 50);
        DMFD.FDQryGeral1.ParamByName('UFTrp'       ).Value       :=  copy(Transp.Transporta.UF, 1, 2);
        //DMFD.FDQryGeral1.ParamByName('IBGETrp'     ).Value       :=  '';
        //DMFD.FDQryGeral1.ParamByName('CepTrp'      ).Value       :=  '';
        DMFD.FDQryGeral1.ParamByName('PlacaVei'    ).Value       :=  copy(Transp.veicTransp.placa, 1, 8);
        DMFD.FDQryGeral1.ParamByName('UFVei'       ).Value       :=  copy(Transp.veicTransp.UF, 1, 2);
        DMFD.FDQryGeral1.ParamByName('CnpjDst'     ).Value       :=  copy(Dest.CNPJCPF, 1, 18);
        DMFD.FDQryGeral1.ParamByName('InsEstDst'   ).Value       :=  copy(Dest.IE, 1, 25);
        DMFD.FDQryGeral1.ParamByName('InsEstSbtEmt').Value       :=  copy(Emit.IEST, 1, 18);
        DMFD.FDQryGeral1.ParamByName('NomEmt'      ).Value       :=  copy(Emit.xNome, 1, 75);
        DMFD.FDQryGeral1.ParamByName('NomFanEmt'   ).Value       :=  copy(Emit.xFant, 1, 50);
        DMFD.FDQryGeral1.ParamByName('EnderecoEmt' ).Value       :=  copy(Emit.EnderEmit.xLgr + ',' + Emit.EnderEmit.nro + ' - ' + Emit.EnderEmit.xCpl, 1, 75);
        DMFD.FDQryGeral1.ParamByName('SetorEmt'    ).Value       :=  copy(Emit.EnderEmit.xBairro, 1, 50);
        DMFD.FDQryGeral1.ParamByName('CidadeEmt'   ).Value       :=  copy(Emit.EnderEmit.xMun, 1, 50);
        DMFD.FDQryGeral1.ParamByName('UFEmt'       ).Value       :=  copy(Emit.EnderEmit.UF, 1, 2);
        DMFD.FDQryGeral1.ParamByName('IBGEEmt'     ).Value       :=  copy(Emit.CNAE, 1, 8);
        DMFD.FDQryGeral1.ParamByName('CepEmt'      ).Value       :=  copy(IntToStr(Emit.EnderEmit.CEP), 1, 9);
        DMFD.FDQryGeral1.ParamByName('FoneEmt'     ).Value       :=  copy(Emit.EnderEmit.fone, 1, 25);
        //DMFD.FDQryGeral1.ParamByName('EmailEmt'    ).Value       :=  '';
        DMFD.FDQryGeral1.ParamByName('Status'      ).Value       :=  procNFe.cStat;
        DMFD.FDQryGeral1.ParamByName('ValDsn'      ).AsFloat     :=  Total.ICMSTot.vICMSDeson;
        DMFD.FDQryGeral1.ExecSQL;

       except on e:exception do

        begin

         gDeuErrConsiste := true;
         DelRegErrXML(ArqXml);
         Application.Messagebox( pWideChar( 'ERRO: NFeE_Mov não criada !' + chr(13) +
                                 e.Message ), 'Atenção!', MB_ICONERROR + mb_ok );

        end;

       end;
     end;

    //--------------------------------------------------------------------------
    // Grava na tabela de Itens de entrada
    // by Edson Lima ; 13-6-2014 ; 15:18
    //--------------------------------------------------------------------------

    for I := 0 to Det.Count-1 do
     begin

      DMFD.FDQryGeral1.DisableControls;
      DMFD.FDQryGeral1.Close;
      DMFD.FDQryGeral1.SQL.Clear;
      DMFD.FDQryGeral1.SQL.Add( ' Select                                         ' );
      DMFD.FDQryGeral1.SQL.Add( '  t1.CodEmp         as  Ite_CodEmp              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CnpjEmt        as  Ite_CnpjEmt             ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstEmt      as  Ite_InsEstEmt           ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodNot         as  Ite_CodNot              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.Modelo         as  Ite_Modelo              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.Serie          as  Ite_Serie               ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodPro         as  Ite_CodPro              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.NomPro         as  Ite_NomPro              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.SeqIte         as  Ite_SeqIte              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodNCM         as  Ite_CodNCM              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.SitTri         as  Ite_SitTri              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodCfo         as  Ite_CodCfo              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.Unidade        as  Ite_Unidade             ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.EAN13          as  Ite_EAN13               ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.cEAN           as  Ite_cEAN                ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.QtdPro         as  Ite_QtdPro              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValPro         as  Ite_ValPro              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValDes         as  Ite_ValDes              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValTot         as  Ite_ValTot              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasIcm         as  Ite_BasIcm              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.AlqIcm         as  Ite_AlqIcm              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValIcm         as  Ite_ValIcm              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasIpi         as  Ite_BasIpi              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.AlqIpi         as  Ite_AlqIpi              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValIpi         as  Ite_ValIpi              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.BasSbt         as  Ite_BasSbt              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValSbt         as  Ite_ValSbt              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValSeg         as  Ite_ValSeg              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValFre         as  Ite_ValFre              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValOut 	       as  Ite_ValOut              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValPis         as  Ite_ValPis              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValCfs    	    as  Ite_ValCfs              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValDsn    	    as  Ite_ValDsn              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.MotDsn    	    as  Ite_MotDsn              ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.SQL.Add( ' from NFeE_Ite t1 join emitente t2 on t1.CodEmp = t2.Codigo_loja ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CodPro      = :CodPro      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.SeqIte      = :SeqIte                ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.ParamByName('CodEmp'      ).AsInteger    := StrToInt(gCodEmp);
      DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).AsInteger    := StrToInt(gCodEmp);
      DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).AsString     := Emit.CNPJCPF;
      DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).AsString     := Emit.IE;
      DMFD.FDQryGeral1.ParamByName('CodNot'      ).AsInteger    := Ide.nNF;
      DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
      DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
      DMFD.FDQryGeral1.ParamByName('CodPro'      ).Value        := copy(Det.Items[I].Prod.cProd, 1, 60);
      DMFD.FDQryGeral1.ParamByName('SeqIte'      ).AsInteger    := Det.Items[I].Prod.nItem;
      DMFD.FDQryGeral1.Open;

      if DMFD.FDQryGeral1.IsEmpty then
       begin

        // Grava novo registro NFeE_Ite
        try

         DMFD.FDQryGeral1.DisableControls;
         DMFD.FDQryGeral1.Close;
         DMFD.FDQryGeral1.SQL.Clear;
         DMFD.FDQryGeral1.SQL.Add( 'Insert into NFeE_Ite (                       ' );
         DMFD.FDQryGeral1.SQL.Add( '      CodEmp                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CnpjEmt                                ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstEmt                              ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodNot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  Modelo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  Serie                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  SeqIte                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  NomPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodNCM                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  SitTri                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodCfo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  Unidade                                ' );
         //DMFD.FDQryGeral1.SQL.Add( '   ,  EAN13                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  cEAN                                   ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  QtdPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValDes                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValTot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  BasIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  AlqIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  BasIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  AlqIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  BasSbt                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValSbt                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValSeg                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValFre                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValOut 	  	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValPis                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValCfs    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValDsn    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  MotDsn    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '                     )                       ' );
         DMFD.FDQryGeral1.SQL.Add( '  Values            (                        ' );
         DMFD.FDQryGeral1.SQL.Add( '     :CodEmp                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CnpjEmt                                ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :InsEstEmt                              ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodNot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :Modelo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :Serie                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :SeqIte                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :NomPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodNCM                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :SitTri                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodCfo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :Unidade                                ' );
         //DMFD.FDQryGeral1.SQL.Add( '   , :EAN13                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :cEAN                                   ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :QtdPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValPro                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValDes                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValTot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :BasIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :AlqIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValIcm                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :BasIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :AlqIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValIpi                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :BasSbt                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValSbt                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValSeg                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValFre                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValOut 	                               ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValPis                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValCfs    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValDsn    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :MotDsn    	                            ' );
         DMFD.FDQryGeral1.SQL.Add( '                    )                        ' );
         DMFD.FDQryGeral1.ParamByName('CodEmp'       ).Value    :=  StrToInt(gCodEmp);
         DMFD.FDQryGeral1.ParamByName('CnpjEmt'      ).Value    :=  copy(Emit.CNPJCPF, 1, 18);
         DMFD.FDQryGeral1.ParamByName('InsEstEmt'    ).Value    :=  copy(Emit.IE, 1, 25);
         DMFD.FDQryGeral1.ParamByName('CodNot'       ).Value    :=  Ide.nNF;
         DMFD.FDQryGeral1.ParamByName('Modelo'       ).Value    :=  copy(IntToStr(Ide.modelo), 1, 2);
         DMFD.FDQryGeral1.ParamByName('Serie'	    ).Value    :=  copy(IntToStr(Ide.serie), 1, 3);
         DMFD.FDQryGeral1.ParamByName('CodPro'       ).Value    :=  copy(Det.Items[I].Prod.cProd, 1, 60);
         DMFD.FDQryGeral1.ParamByName('SeqIte'       ).Value    :=  Det.Items[I].Prod.nItem;
         DMFD.FDQryGeral1.ParamByName('NomPro'       ).Value    :=  copy(Det.Items[I].Prod.xProd, 1, 100);
         DMFD.FDQryGeral1.ParamByName('CodNCM'       ).Value    :=  copy(Det.Items[I].Prod.NCM, 1, 8);

         // by Edson Lima ; 2014-10-11T1129 ; Alterado para adequar ao ERP nesta data
         if ( length(CSOSNICMSToStr(Det.Items[I].Imposto.ICMS.CSOSN)) = 3 ) then
          begin

           vCSOSN := OrigToStr(Det.Items[I].Imposto.ICMS.orig) + copy(CSOSNICMSToStr(Det.Items[I].Imposto.ICMS.CSOSN), 1, 3);
           DMFD.FDQryGeral1.ParamByName('SitTri'       ).Value    :=  copy(vCSOSN, 1, 4)

          end

         else

          begin

           vCST := OrigToStr(Det.Items[I].Imposto.ICMS.orig) + CSTICMSToStr(Det.Items[I].Imposto.ICMS.CST);
           DMFD.FDQryGeral1.ParamByName('SitTri'       ).Value    :=  copy(vCST, 1, 3);

          end;

         DMFD.FDQryGeral1.ParamByName('CodCfo'       ).Value    :=  copy(Det.Items[I].Prod.CFOP, 1, 4);
         DMFD.FDQryGeral1.ParamByName('Unidade'      ).Value    :=  copy(Det.Items[I].Prod.uCom, 1, 6);
         //DMFD.FDQryGeral1.ParamByName('EAN13'	      ).Value    :=  0;
         DMFD.FDQryGeral1.ParamByName('cEAN'	        ).Value    :=  copy(Det.Items[I].Prod.cEAN, 1, 13);
         DMFD.FDQryGeral1.ParamByName('QtdPro'       ).AsFloat  :=  Det.Items[I].Prod.qCom;
         DMFD.FDQryGeral1.ParamByName('ValPro'       ).AsFloat  :=  Det.Items[I].Prod.vUnCom;
         DMFD.FDQryGeral1.ParamByName('ValDes'       ).AsFloat  :=  Det.Items[I].Prod.vDesc;
         DMFD.FDQryGeral1.ParamByName('ValTot'       ).AsFloat  :=  Det.Items[I].Prod.vProd;
         DMFD.FDQryGeral1.ParamByName('BasIcm'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.vBC;
         DMFD.FDQryGeral1.ParamByName('AlqIcm'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.pICMS;
         DMFD.FDQryGeral1.ParamByName('ValIcm'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.vICMS;
         DMFD.FDQryGeral1.ParamByName('BasIpi'       ).AsFloat  :=  Det.Items[I].Imposto.IPI.vBC;
         DMFD.FDQryGeral1.ParamByName('AlqIpi'       ).AsFloat  :=  Det.Items[I].Imposto.IPI.pIPI;
         DMFD.FDQryGeral1.ParamByName('ValIpi'       ).AsFloat  :=  Det.Items[I].Imposto.IPI.vIPI;
         DMFD.FDQryGeral1.ParamByName('BasSbt'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.vBCST;
         DMFD.FDQryGeral1.ParamByName('ValSbt'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.vICMSST;
         DMFD.FDQryGeral1.ParamByName('ValSeg'       ).AsFloat  :=  Det.Items[I].Prod.vSeg;
         DMFD.FDQryGeral1.ParamByName('ValFre'       ).AsFloat  :=  Det.Items[I].Prod.vFrete;
         DMFD.FDQryGeral1.ParamByName('ValOut'       ).AsFloat  :=  Det.Items[I].Prod.vOutro;
         DMFD.FDQryGeral1.ParamByName('ValPis'       ).AsFloat  :=  Det.Items[I].Imposto.PIS.vPIS;
         DMFD.FDQryGeral1.ParamByName('ValCfs'       ).AsFloat  :=  Det.Items[I].Imposto.COFINS.vCOFINS;
         DMFD.FDQryGeral1.ParamByName('ValDsn'       ).AsFloat  :=  Det.Items[I].Imposto.ICMS.vICMSDeson;
         DMFD.FDQryGeral1.ParamByName('MotDsn'       ).Value    :=  Det.Items[I].Imposto.ICMS.motDesICMS;

         DMFD.FDQryGeral1.ExecSQL;

         //---------------------------------------------------------------------
         // Grava na tabela de Lotes
         // by Edson Lima ; 26-06-2018 ; 11:29
         //---------------------------------------------------------------------

         for l := 0 to Det.Items[I].Prod.rastro.Count-1 do
          begin

           DMFD.FDQryGeral5.DisableControls;
           DMFD.FDQryGeral5.Close;
           DMFD.FDQryGeral5.SQL.Clear;
           DMFD.FDQryGeral5.SQL.Add( ' Select                                   ' );
           DMFD.FDQryGeral5.SQL.Add( '  t1.CodEmp      as  Lot_CodEmp           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.CnpjEmt     as  Lot_CnpjEmt          ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.InsEstEmt   as  Lot_InsEstEmt        ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.CodNot      as  Lot_CodNot           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.Modelo      as  Lot_Modelo           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.Serie       as  Lot_Serie            ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.CodPro      as  Lot_CodPro           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.SeqIte      as  Lot_SeqIte           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.CodLot      as  Lot_CodLot           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.QtdPro      as  Lot_QtdPro           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.DatFab      as  Lot_DatFab           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.DatVld      as  Lot_DatVld           ' );
           DMFD.FDQryGeral5.SQL.Add( ' ,t1.cAgreg      as  Lot_cAgreg           ' );
           DMFD.FDQryGeral5.SQL.Add( '                                          ' );
           DMFD.FDQryGeral5.SQL.Add( ' from NFeE_Lot t1 join NFeE_Ite t2        ' );
           DMFD.FDQryGeral5.SQL.Add( '      on t1.CodEmp = t2.CodEmp            ' );
           DMFD.FDQryGeral5.SQL.Add( '                                          ' );
           DMFD.FDQryGeral5.SQL.Add( ' where t1.CodEmp    = :CodEmp        and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.CnpjEmt   = :CnpjEmt       and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.InsEstEmt = :InsEstEmt     and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.CodNot    = :CodNot        and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.Modelo    = :Modelo        and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.Serie     = :Serie         and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.CodPro    = :CodPro        and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.SeqIte    = :SeqIte        and  ' );
           DMFD.FDQryGeral5.SQL.Add( '       t1.CodLot    = :CodLot             ' );
           DMFD.FDQryGeral5.SQL.Add( '                                          ' );
           DMFD.FDQryGeral5.ParamByName('CodEmp'      ).AsInteger    := StrToInt(gCodEmp);
           DMFD.FDQryGeral5.ParamByName('CnpjEmt'     ).AsString     := Emit.CNPJCPF;
           DMFD.FDQryGeral5.ParamByName('InsEstEmt'   ).AsString     := Emit.IE;
           DMFD.FDQryGeral5.ParamByName('CodNot'      ).AsInteger    := Ide.nNF;
           DMFD.FDQryGeral5.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
           DMFD.FDQryGeral5.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
           DMFD.FDQryGeral5.ParamByName('CodPro'      ).Value        := copy(Det.Items[I].Prod.cProd, 1, 60);
           DMFD.FDQryGeral5.ParamByName('SeqIte'      ).AsInteger    := Det.Items[I].Prod.nItem;
           DMFD.FDQryGeral5.ParamByName('CodLot'      ).AsString     := copy(Det.Items[I].Prod.rastro[l].nLote, 1, 20);
           DMFD.FDQryGeral5.Open;

           if DMFD.FDQryGeral5.IsEmpty then
            begin

             // Grava novo registro NFeE_Lot
             try

              DMFD.FDQryGeral5.DisableControls;
              DMFD.FDQryGeral5.Close;
              DMFD.FDQryGeral5.SQL.Clear;
              DMFD.FDQryGeral5.SQL.Add( 'Insert into NFeE_Lot (                       ' );
              DMFD.FDQryGeral5.SQL.Add( '      CodEmp                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  CnpjEmt                                ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  InsEstEmt                              ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  CodNot                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  Modelo                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  Serie                                  ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  CodPro                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  SeqIte                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  CodLot                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  QtdPro                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  DatFab                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  DatVld                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   ,  cAgreg                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '                     )                       ' );
              DMFD.FDQryGeral5.SQL.Add( '  Values            (                        ' );
              DMFD.FDQryGeral5.SQL.Add( '     :CodEmp                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :CnpjEmt                                ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :InsEstEmt                              ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :CodNot                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :Modelo                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :Serie                                  ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :CodPro                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :SeqIte                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :CodLot                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :QtdPro                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :DatFab                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :DatVld                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '   , :cAgreg                                 ' );
              DMFD.FDQryGeral5.SQL.Add( '                    )                        ' );
              DMFD.FDQryGeral5.ParamByName('CodEmp'       ).Value    :=  StrToInt(gCodEmp);
              DMFD.FDQryGeral5.ParamByName('CnpjEmt'      ).Value    :=  copy(Emit.CNPJCPF, 1, 18);
              DMFD.FDQryGeral5.ParamByName('InsEstEmt'    ).Value    :=  copy(Emit.IE, 1, 25);
              DMFD.FDQryGeral5.ParamByName('CodNot'       ).Value    :=  Ide.nNF;
              DMFD.FDQryGeral5.ParamByName('Modelo'       ).Value    :=  copy(IntToStr(Ide.modelo), 1, 2);
              DMFD.FDQryGeral5.ParamByName('Serie'	       ).Value    :=  copy(IntToStr(Ide.serie), 1, 3);
              DMFD.FDQryGeral5.ParamByName('CodPro'       ).Value    :=  copy(Det.Items[I].Prod.cProd, 1, 60);
              DMFD.FDQryGeral5.ParamByName('SeqIte'       ).Value    :=  Det.Items[I].Prod.nItem;
              DMFD.FDQryGeral5.ParamByName('CodLot'       ).Value    :=  copy(Det.Items[I].Prod.rastro[l].nLote, 1, 20);
              DMFD.FDQryGeral5.ParamByName('QtdPro'       ).Value    :=  Det.Items[I].Prod.rastro[l].qLote;
              DMFD.FDQryGeral5.ParamByName('DatFab'       ).Value    :=  StrToDateTime( FormatDateTime('dd/mm/yyyy', Det.Items[I].Prod.rastro[l].dFab) );
              DMFD.FDQryGeral5.ParamByName('DatVld'       ).Value    :=  StrToDateTime( FormatDateTime('dd/mm/yyyy', Det.Items[I].Prod.rastro[l].dVal) );
              DMFD.FDQryGeral5.ParamByName('cAgreg'       ).Value    :=  copy(Det.Items[I].Prod.rastro[l].cAgreg, 1, 20);

              DMFD.FDQryGeral5.ExecSQL;

             except on e:exception do

              begin

               gDeuErrConsiste := true;
               DelRegErrXML(ArqXml);
               Application.Messagebox( pWideChar('ERRO: NFeE_Lot não criada !' + chr(13) +
                                       e.Message ), 'Atenção!', MB_ICONERROR + mb_ok );

              end;

             end;

            end;

          end;

        except on e:exception do

         begin

          gDeuErrConsiste := true;
          DelRegErrXML(ArqXml);
          Application.Messagebox( pWideChar('ERRO: NFeE_Ite não criada !' + chr(13) +
                                  e.Message ), 'Atenção!', MB_ICONERROR + mb_ok );

         end;

        end;

       end;

     end;

    //--------------------------------------------------------------------------
    // Grava na tabela de Faturas de entrada
    // by Edson Lima ; 16-6-2014 ; 16:03
    //--------------------------------------------------------------------------

    for I := 0 to Cobr.Dup.Count-1 do
     begin

      DMFD.FDQryGeral1.DisableControls;
      DMFD.FDQryGeral1.Close;
      DMFD.FDQryGeral1.SQL.Clear;
      DMFD.FDQryGeral1.SQL.Add( ' Select                                         ' );
      DMFD.FDQryGeral1.SQL.Add( '  t1.CodEmp         as  Fat_CodEmp              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CnpjEmt        as  Fat_CnpjEmt             ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.InsEstEmt      as  Fat_InsEstEmt           ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodNot         as  Fat_CodNot              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.Modelo         as  Fat_Modelo              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.Serie          as  Fat_Serie               ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.CodFat         as  Fat_CodFat              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.DatFat         as  Fat_DatFat              ' );
      DMFD.FDQryGeral1.SQL.Add( ' ,t1.ValFat         as  Fat_ValFat              ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.SQL.Add( ' from NFeE_Fat t1 join emitente t2 on t1.CodEmp = t2.Codigo_loja ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and       ' );
      DMFD.FDQryGeral1.SQL.Add( '        t1.CodFat      = :CodFat                ' );
      DMFD.FDQryGeral1.SQL.Add( '                                                ' );
      DMFD.FDQryGeral1.ParamByName('CodEmp'      ).AsInteger    := StrToInt(gCodEmp);
      DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).AsInteger    := StrToInt(gCodEmp);
      DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).AsString     := Emit.CNPJCPF;
      DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).AsString     := Emit.IE;
      DMFD.FDQryGeral1.ParamByName('CodNot'      ).AsInteger    := Ide.nNF;
      DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
      DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
      DMFD.FDQryGeral1.ParamByName('CodFat'      ).Value        := Cobr.Dup.Items[I].nDup;
      DMFD.FDQryGeral1.Open;

      if DMFD.FDQryGeral1.IsEmpty then
       begin

        // Grava novo registro NFeE_Fat
        try

         DMFD.FDQryGeral1.DisableControls;
         DMFD.FDQryGeral1.Close;
         DMFD.FDQryGeral1.SQL.Clear;
         DMFD.FDQryGeral1.SQL.Add( 'Insert into NFeE_Fat (                       ' );
         DMFD.FDQryGeral1.SQL.Add( '      CodEmp                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CnpjEmt                                ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  InsEstEmt                              ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodNot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  Modelo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  Serie                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  CodFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  DatFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   ,  ValFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '                     )                       ' );
         DMFD.FDQryGeral1.SQL.Add( '  Values            (                        ' );
         DMFD.FDQryGeral1.SQL.Add( '     :CodEmp                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CnpjEmt                                ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :InsEstEmt                              ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodNot                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :Modelo                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :Serie                                  ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :CodFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :DatFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '   , :ValFat                                 ' );
         DMFD.FDQryGeral1.SQL.Add( '                    )                        ' );

         DMFD.FDQryGeral1.ParamByName('CodEmp'       ).Value    :=  StrToInt(gCodEmp);
         DMFD.FDQryGeral1.ParamByName('CnpjEmt'      ).Value    :=  copy(Emit.CNPJCPF, 1, 18);
         DMFD.FDQryGeral1.ParamByName('InsEstEmt'    ).Value    :=  copy(Emit.IE, 1, 25);
         DMFD.FDQryGeral1.ParamByName('CodNot'       ).Value    :=  Ide.nNF;
         DMFD.FDQryGeral1.ParamByName('Modelo'       ).Value    :=  copy(IntToStr(Ide.modelo), 1, 2);
         DMFD.FDQryGeral1.ParamByName('Serie'		      ).Value    :=  copy(IntToStr(Ide.serie), 1, 3);
         DMFD.FDQryGeral1.ParamByName('CodFat'       ).Value    :=  copy(Cobr.Dup.Items[I].nDup, 1, 15);
         DMFD.FDQryGeral1.ParamByName('DatFat'       ).Value    :=  StrToDateTime( FormatDateTime('dd/mm/yyyy hh:nn:ss', Cobr.Dup.Items[I].dVenc) );
         DMFD.FDQryGeral1.ParamByName('ValFat'       ).AsFloat  :=  Cobr.Dup.Items[I].vDup;
         DMFD.FDQryGeral1.ExecSQL;

        except on e:exception do

         begin

          gDeuErrConsiste := true;
          DelRegErrXML(ArqXml);
          Application.Messagebox( pWideChar('ERRO: NFeE_Fat não criada !' + chr(13) +
                                  e.Message ), 'Atenção!', MB_ICONERROR + mb_ok );

         end;

        end;

       end;

     end;

    end;

  end;

end;

//------------------------------------------------------------------------------
// Procedure: DelRegErrXML() - Deleta reg.com erro do Xml nas tabelas de entrada
//            traz como parametros o caminho e o nome do arquivo Xml
//            by Edson Lima ; 03/03/2015T1436
//------------------------------------------------------------------------------
procedure TFrBuscaChave.DelRegErrXML(ArqXml : String);
var
  i, j, k, n                     : integer;
  Nota, Node, NodePai, NodeItem  : TTreeNode;
  NFeRTXT                        : TNFeRTXT;
  vObs, vCST, vCSOSN             : String;
begin

 FrGBNFe.ACBrNFe1.NotasFiscais.Clear;

 //tenta TXT
 FrGBNFe.ACBrNFe1.NotasFiscais.Add;
 NFeRTXT := TNFeRTXT.Create(FrGBNFe.ACBrNFe1.NotasFiscais.Items[0].NFe);
 NFeRTXT.CarregarArquivo(ArqXml);

 if NFeRTXT.LerTxt then
  NFeRTXT.Free
 else
  begin
   NFeRTXT.Free;

   //tenta XML
   FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
   try
    FrGBNFe.ACBrNFe1.NotasFiscais.LoadFromFile(ArqXml);
   except
    on E: Exception do Raise Exception.Create('Arquivo XML da NF-e inválido.'+ E.Message);
   end;
  end;


 FrGBNFe.trvwNFe.Items.Clear;

 for n:=0 to FrGBNFe.ACBrNFe1.NotasFiscais.Count-1 do
  begin
   with FrGBNFe.ACBrNFe1.NotasFiscais.Items[n].NFe do
    begin

     //-------------------------------------------------------------------------
     // Deleta registro na tabela de movimentos de entrada que deu erro
     // by Edson Lima ; 03-3-2015 ; 15:01
     //-------------------------------------------------------------------------

     DMFD.FDQryGeral1.DisableControls;
     DMFD.FDQryGeral1.Close;
     DMFD.FDQryGeral1.SQL.Clear;
     DMFD.FDQryGeral1.SQL.Add( ' Delete from NFeE_Mov                            ' );
     DMFD.FDQryGeral1.SQL.Add( '                                                 ' );
     DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and        ' );
     DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and        ' );
     DMFD.FDQryGeral1.SQL.Add( '  isnull( t1.ChvNFe, '''')  Like ''%'' + :ChvNFe + ''%'' ' );
     DMFD.FDQryGeral1.ParamByName('CodEmp'      ).Value        := StrToInt(gCodEmp);
     DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).Value        := StrToInt(gCodEmp);
     DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).Value        := Emit.CNPJCPF;
     DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).Value        := Emit.IE;
     DMFD.FDQryGeral1.ParamByName('CodNot'      ).Value        := Ide.nNF;
     DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
     DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
     DMFD.FDQryGeral1.ParamByName('ChvNFe'      ).Value        := procNFe.chNFe;
     DMFD.FDQryGeral1.Open;

     for I := 0 to Det.Count-1 do
      begin
       DMFD.FDQryGeral1.DisableControls;
       DMFD.FDQryGeral1.Close;
       DMFD.FDQryGeral1.SQL.Clear;
       DMFD.FDQryGeral1.SQL.Add( ' Delete from NFeE_Ite                           ' );
       DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CodPro      = :CodPro      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.SeqIte      = :SeqIte                ' );
       DMFD.FDQryGeral1.SQL.Add( '                                                ' );
       DMFD.FDQryGeral1.ParamByName('CodEmp'      ).AsInteger    := StrToInt(gCodEmp);
       DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).AsInteger    := StrToInt(gCodEmp);
       DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).AsString     := Emit.CNPJCPF;
       DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).AsString     := Emit.IE;
       DMFD.FDQryGeral1.ParamByName('CodNot'      ).AsInteger    := Ide.nNF;
       DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
       DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
       DMFD.FDQryGeral1.ParamByName('CodPro'      ).Value        := copy(Det.Items[I].Prod.cProd, 1, 60);
       DMFD.FDQryGeral1.ParamByName('SeqIte'      ).AsInteger    := Det.Items[I].Prod.nItem;
       DMFD.FDQryGeral1.Open;
      end;

     //--------------------------------------------------------------------------
     // Grava na tabela de Faturas de entrada
     // by Edson Lima ; 16-6-2014 ; 16:03
     //--------------------------------------------------------------------------

     for I := 0 to Cobr.Dup.Count-1 do
      begin
       DMFD.FDQryGeral1.DisableControls;
       DMFD.FDQryGeral1.Close;
       DMFD.FDQryGeral1.SQL.Clear;
       DMFD.FDQryGeral1.SQL.Add( ' Select from NFeE_Fat                           ' );
       DMFD.FDQryGeral1.SQL.Add( '  where t1.CodEmp      = :CodEmp      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CnpjEmt     = :CnpjEmt     and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.InsEstEmt   = :InsEstEmt   and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CodNot      = :CodNot      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.Modelo      = :Modelo      and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.Serie       = :Serie       and       ' );
       DMFD.FDQryGeral1.SQL.Add( '        t1.CodFat      = :CodFat                ' );
       DMFD.FDQryGeral1.SQL.Add( '                                                ' );
       DMFD.FDQryGeral1.ParamByName('CodEmp'      ).AsInteger    := StrToInt(gCodEmp);
       DMFD.FDQryGeral1.ParamByName('Codigo_loja' ).AsInteger    := StrToInt(gCodEmp);
       DMFD.FDQryGeral1.ParamByName('CnpjEmt'     ).AsString     := Emit.CNPJCPF;
       DMFD.FDQryGeral1.ParamByName('InsEstEmt'   ).AsString     := Emit.IE;
       DMFD.FDQryGeral1.ParamByName('CodNot'      ).AsInteger    := Ide.nNF;
       DMFD.FDQryGeral1.ParamByName('Modelo'      ).Value        := IntToStr(Ide.modelo);
       DMFD.FDQryGeral1.ParamByName('Serie'       ).Value        := IntToStr(Ide.serie);
       DMFD.FDQryGeral1.ParamByName('CodFat'      ).Value        := Cobr.Dup.Items[I].nDup;
       DMFD.FDQryGeral1.Open;
      end;
    end;
  end;
end;

procedure TFrBuscaChave.MenuItem1Click(Sender: TObject);
begin
 RG_tpEvento.ItemIndex       := -1;
 SpeedButton1.Enabled        := False;
 SpeedButton2.Enabled        := True;
 SpeedButton3.Enabled        := True;
 SpeedButton7.Enabled        := False;
end;

procedure TFrBuscaChave.RG_tpEventoClick(Sender: TObject);
begin

 if (((RadioGroup1.ItemIndex = 1) and (RG_tpEvento.ItemIndex = 0))  or
     ((RadioGroup1.ItemIndex = 2) and (RG_tpEvento.ItemIndex = 1))  or
     ((RadioGroup1.ItemIndex = 3) and (RG_tpEvento.ItemIndex = 2))  or
     ((RadioGroup1.ItemIndex = 4) and (RG_tpEvento.ItemIndex = 3))) then
  begin
   RG_tpEvento.ItemIndex := gItem;
   exit;
  end;
 if ((RadioGroup1.ItemIndex = 0) and (RG_tpEvento.ItemIndex = 4)) then
  begin
   RG_tpEvento.ItemIndex := gItem;
   exit;
  end;
 if ((RadioGroup1.ItemIndex = 5) or (RadioGroup1.ItemIndex = 6)) then
  begin
   RG_tpEvento.ItemIndex := -1;
   exit;
  end;

 if (RadioGroup1.ItemIndex = 7) then
  begin
   RG_tpEvento.ItemIndex := -1;
   exit;
  end;

 if (RadioGroup1.ItemIndex = 8) then
  begin
   RG_tpEvento.ItemIndex := -1;
   exit;
  end;

 gItem := RG_tpEvento.ItemIndex;

 case RG_tpEvento.ItemIndex of
  0, 1, 2 :
   begin
    SpeedButton1.Enabled        := False;
    SpeedButton2.Enabled        := False;
    SpeedButton3.Enabled        := False;
    SpeedButton7.Enabled        := True;
    Edit_xJust.Enabled          := False;
    Edit_xJust.Color            := $00DDDDDD;
   end;
  3 :
   begin
    SpeedButton1.Enabled        := False;
    SpeedButton2.Enabled        := False;
    SpeedButton3.Enabled        := False;
    SpeedButton7.Enabled        := True;
    Edit_xJust.Enabled          := True;
    Edit_xJust.Color            := $00C4F0FF;
 end;
  4 :
   begin
    SpeedButton1.Enabled        := True;
    SpeedButton2.Enabled        := False;
    SpeedButton3.Enabled        := False;
    SpeedButton7.Enabled        := False;
    Edit_xJust.Enabled          := False;
    Edit_xJust.Color            := $00DDDDDD;
   end;
  -1 :
   begin
    SpeedButton1.Enabled        := False;
    SpeedButton2.Enabled        := True;
    SpeedButton3.Enabled        := True;
    SpeedButton7.Enabled        := False;
    Edit_xJust.Enabled          := False;
    Edit_xJust.Color            := $00DDDDDD;
   end;
 end;
end;

procedure TFrBuscaChave.RadioGroup1Click(Sender: TObject);
var
 x : integer;
begin

 gItem := -1;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery14.Close;
 DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger    := StrToInt(gCodEmp);
 DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger    := StrToInt(gCodEmp);
 case RadioGroup1.ItemIndex of
  0 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '0';
  1 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '4';
  2 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '1';
  3 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '2';
  4 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '3';
  5 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '5';
  6 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '6';
  7 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '7';
  8 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '_';
 end;

 case RadioGroup1.ItemIndex of
  0 : Panel10.Caption      := 'N O V A S';
  1 : Panel10.Caption      := 'C I Ê N C I A S   D A   O P E R A Ç Ã O';
  2 : Panel10.Caption      := 'C O N F I R M A Ç Ã O   D A   O P E R A Ç Ã O';
  3 : Panel10.Caption      := 'D E S C O N H E C I M E N T O   D A   O P E R A Ç Ã O';
  4 : Panel10.Caption      := 'O P E R A Ç Ã O   N Ã O   R E A L I Z A D A';
  5 : Panel10.Caption      := 'D E N E G A D A S';
  6 : Panel10.Caption      := 'C A N C E L A D A S';
  7 : Panel10.Caption      := 'T E R C E I R O S';
  8 : Panel10.Caption      := 'T O D A S';
 end;

 if Checkbox1.Checked then
  begin
   DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
   DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
  end
 else
  begin
   DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
   DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
  end;

 DMFD.FDQuery14.ParamByName('Chave_nfe').AsString        := FrBuscaChave.Edit_Busca_Chave.Text;
 DMFD.FDQuery14.Open;

 // Zera o contador de itens selecionados
 Edit_QSel.Text := '0';

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //-----------------------------------------------------------------------------

 MenuItem1Click(Sender);
 RG_tpEvento.Enabled := False;

end;

//------------------------------------------------------------------------------
// Procedure: Mostra ImportaXML() - Salva os dados do Xml nas tabelas de entrada
//            traz como parametros o caminho e o nome do arquivo Xml
//            by Edson Lima ; 18/06/2014T1517
//------------------------------------------------------------------------------
procedure TFrBuscaChave.MostraDados(Codigo_loja, Chave_nfe : String ; dEmi : TDateTime); // Mostra os dados selecionados quando clic na grade
begin

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQryGeral1.DisableControls;
 DMFD.FDQryGeral1.Close;
 DMFD.FDQryGeral1.SQL.Clear;
 DMFD.FDQryGeral1.SQL.Add( ' Select                                          ' );
 DMFD.FDQryGeral1.SQL.Add( '  t1.idLote        as  MDFe_idLote               ' );
 DMFD.FDQryGeral1.SQL.Add( ' ,t1.Evento        as  MDFe_Evento               ' );
 DMFD.FDQryGeral1.SQL.Add( ' ,t1.dhEvento      as  MDFe_dhEvento             ' );
 DMFD.FDQryGeral1.SQL.Add( ' ,t1.dhRegEvento   as  MDFe_dhRegEvento          ' );
 DMFD.FDQryGeral1.SQL.Add( ' ,t1.id            as  MDFe_id                   ' );
 DMFD.FDQryGeral1.SQL.Add( ' ,t1.nProt         as  MDFe_nProt                ' );
 DMFD.FDQryGeral1.SQL.Add( '                                                 ' );
 DMFD.FDQryGeral1.SQL.Add( ' from nfe_MDFe t1 join emitente t2 on t1.Codigo_loja = t2.Codigo_loja ' );
 DMFD.FDQryGeral1.SQL.Add( '  where t1.Codigo_loja = :Codigo_loja and        ' );
 DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and        ' );
 DMFD.FDQryGeral1.SQL.Add( '  isnull( t1.Chave_nfe, '''')  Like  ''%'' + :Chave_nfe + ''%'' ' );

 DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(Codigo_loja);
 DMFD.FDQryGeral1.ParamByName('Chave_nfe').AsString     := Chave_nfe;
 DMFD.FDQryGeral1.Open;

 if not DMFD.FDQryGeral1.IsEmpty then
  begin
   if not (DMFD.FDQryGeral1['MDFe_idLote'] = null) then
    Edit_idLote.Text         :=  IntToStr(DMFD.FDQryGeral1['MDFe_idLote'])
   else
    Edit_idLote.Text         :=  '';

   if not (DMFD.FDQryGeral1['MDFe_Evento'] = null) then
    Edit_Evento.Text         :=  DMFD.FDQryGeral1['MDFe_Evento']
   else
    Edit_Evento.Text         :=  '';

   if not (DMFD.FDQryGeral1['MDFe_dhEvento'] = null) then
    Edit_DataEvento.Text     :=  DMFD.FDQryGeral1['MDFe_dhEvento']
   else
    Edit_DataEvento.Text     :=  '';

   if not (DMFD.FDQryGeral1['MDFe_dhRegEvento'] = null) then
    Edit_dtRegEvento.Text    :=  DMFD.FDQryGeral1['MDFe_dhRegEvento']
   else
    Edit_dtRegEvento.Text    :=  '';

   if not (DMFD.FDQryGeral1['MDFe_id'] = null) then
    Edit_id.Text             :=  DMFD.FDQryGeral1['MDFe_id']
   else
    Edit_id.Text             :=  '';

   if not (DMFD.FDQryGeral1['MDFe_nProt'] = null) then
    Edit_nProt.Text          :=  DMFD.FDQryGeral1['MDFe_nProt']
   else
    Edit_nProt.Text          :=  '';
  end;

end;

procedure TFrBuscaChave.dxTLBuscaChaveKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var
 i                            : integer;
 Codigo_loja, Chave_nfe       : string;
 dEmi                         : TDateTime;
begin

 i           := cxTLM.FocusedNode.Index;
 Codigo_loja := cxTLM.Items[i].Texts[cxTLMsCdL.ItemIndex];
 Chave_nfe   := cxTLM.Items[i].Texts[cxTLMsChv.ItemIndex];
 dEmi        := StrToDateTime(cxTLM.Items[i].Texts[cxTLMdDEm.ItemIndex]);

 MostraDados(Codigo_loja, Chave_nfe, dEmi);

end;

//------------------------------------------------------------------------------
// Procedure: HaDe(HB : Boolean) - habilita ou desabilita componentes
//         traz como parametros true e false
//         by Edson Lima ; 07/07/2014T1034
//------------------------------------------------------------------------------
Procedure TFrBuscaChave.HaDe(hd : Boolean);                                     // Habilita ou desabilita componentes
begin

 if hd then
  begin
   // Habilita componentes dutante a consulta ----------------------------------
   //BlockInput(False); // Habilita mouse e teclado
   cxTLM.Enabled                        := True;
   RadioGroup1.Enabled                  := True;
   FrConsManif.ComboBox1.Enabled        := True;
   FrConsManif.ComboBox2.Enabled        := True;
   FrConsManif.Edit_NSU_nfe.Enabled     := True;
   Edit_Busca_chave.Enabled             := True;
   SpeedButton4.Enabled                 := True;
   Edit_xJust.Enabled                   := True;
   if RG_tpEvento.ItemIndex = 3 then
    Edit_xJust.Color                    := $00C4F0FF
   else
    Edit_xJust.Color                    := $00DDDDDD;
   //----------------------------------------------------------------------------
  end
 else
  begin
   // Dessativa componentes dutante a consulta ----------------------------------
   //BlockInput(True); // Desabilita mouse e teclado
   cxTLM.Enabled                        := False;
   RadioGroup1.Enabled                  := False;
   FrConsManif.ComboBox1.Enabled        := False;
   FrConsManif.ComboBox2.Enabled        := False;
   FrConsManif.Edit_NSU_nfe.Enabled     := False;
   Edit_Busca_chave.Enabled             := False;
   SpeedButton4.Enabled                 := False;
   Edit_xJust.Enabled                   := False;
   Edit_xJust.Color                     := $00DDDDDD;
   //----------------------------------------------------------------------------
  end;

end;

//------------------------------------------------------------------------------
// Função: Atualiza() - Atualiza atravéz da consulta na sefaz
//         Retorna como parametros true e false
//         by Edson Lima ; 07/07/2014T1129
//------------------------------------------------------------------------------
function TFrBuscaChave.Atualiza(rep : boolean) : Boolean;                       // Habilita ou desabilita componentes
var
 cUFAutor, CNPJ, IndNFe, IndEmi, ultNSU, vTpEvento, ANSU   : string;
 ok, Tem_Doctos, vIni                                      : boolean;
 i, vReg                                                   : Integer;
 vSetenta_PorCento                                         : Real;
 cSitConf                                                  : TpcnSituacaoManifDest;

begin

 Try

  vIni := True;
  vReg := 0;

  HaDe(False);                                                                  // Habilita ou Desabilita componentes dutante a consulta

  //----------------------------------------------------------------------------
  // cUFAutor - Unidade Federativa do Destinatário da Nota
  cUFAutor := DMFD.FDQuery4['codigo_uf'];

  //----------------------------------------------------------------------------

  // CNPJ do destinatário da NFe
  CNPJ := DMFD.FDQuery4['cnpj'];

  //----------------------------------------------------------------------------

  // veja NT 2012/002 pág. 11 para identificar os valores possíveis
  // Indicador de NF-e consultada:
  // 0=Todas as NF-e;
  // 1=Somente as NF-e que ainda não tiveram manifestação do destinatário
  //   (Desconhecimento da operação, Operação não Realizada ou Confirmação da Operação);
  // 2=Idem anterior, incluindo as NF-e que também não tiveram a Ciência da Operação.
  indNFe := IntToStr(FrConsManif.ComboBox1.ItemIndex);

  //----------------------------------------------------------------------------

  // *veja NT 2012/002 pág. 11 para identificar os valores possíveis
  // Indicador do Emissor da NF-e:
  // 0=Todos os Emitentes / Remetentes;
  // 1=Somente as NF-e emitidas por emissores / remetentes que não tenham a mesma
  //  raiz do CNPJ do destinatário (para excluir as notas fiscais de transferência
  //  entre filiais).
  IndEmi := IntToStr(FrConsManif.ComboBox2.ItemIndex);

  //----------------------------------------------------------------------------
  // veja NT 2012/002 pág. 11 para identificar os valores possíveis
  // Último NSU recebido pela Empresa.
  // Caso seja informado com zero, ou com um NSU muito antigo, a consulta retornará
  // unicamente as notas fiscais que tenham sido recepcionadas nos últimos 15 dias.

  if FrConsManif.CheckBox1.Checked then
   ultNSU := FrConsManif.Edit_NSU_nfe.Text
  else
   ultNSU := '0';

  //----------------------------------------------------------------------------

  // ANSU - NSU específico
  ANSU := '';

  //----------------------------------------------------------------------------

  Tem_Doctos                          := True;

  if rep then
   begin
    FrConsManif.Gauge1.Progress       := gGauge;
    FrConsManif.Gauge1.MaxValue       := gGauMa;
    ultNSU                            := gUltNSU;
   end
  else
   begin
    FrConsManif.Gauge1.Progress       := 0;
    FrConsManif.Gauge1.MaxValue       := 100;
   end;

  if rep then
   begin
    FrConsManif.Edit1.Text            := gTP;
    FrConsManif.Edit2.Text            := gDL;
    FrConsManif.Edit3.Text            := gRN;
    FrConsManif.Edit4.Text            := gRS;
   end
  else
   begin
    FrConsManif.Edit1.Text            := '0';
    FrConsManif.Edit2.Text            := '0';
    FrConsManif.Edit3.Text            := '0';
    FrConsManif.Edit4.Text            := '0';
    gTP                               := '0';
    gDL                               := '0';
    gRN                               := '0';
    gRS                               := '0';
   end;

  // FrConsManif.Gauge1.MaxValue := 100;                                        // by Edson Lima ; 2016-4-28T1453 ; Foi inibido nesta data

  while Tem_Doctos do
   begin

    if gAbortar then
     if Application.Messagebox('Gostaria de abortar o processo de' + Chr(13) +
                               'Consolidação do manifesto ?','Confirme',
                                mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdYes then //No then
      begin
       FrGBNFe.gravarNSU();
       Exit;
      end
     else
      begin
       gAbortar := False;
      end;

    Tem_Doctos := False;

    FrGBNFe.ACBrNFe1.NotasFiscais.Clear ;
    FrGBNFe.ACBrNFe1.EventoNFe.Evento.Clear ;
//    FrGBNFe.AcbrNFe1.WebServices.ConsNFeDest.retConsNFeDest.ret.Clear ;       - Antes
    FrGBNFe.AcbrNFe1.WebServices.Consulta.Clear ;                               // Alteração acbr 15/02/2019

    try

     FrGBNFe.ACBrNFe1.DistribuicaoDFe(StrToInt(cUFAutor),CNPJ,ultNSU,ANSU);

     //-------------------------------------------------------------------------
     // by Edson Lima ; 2015-9-1T0801 ; Define o contador da toolbar

     if vIni then
      begin
       vReg := (StrToInt(FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.maxNSU) -
                StrToInt(FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU));
       FrConsManif.Gauge1.MaxValue := vReg;
       vIni := false;
      end;

     //-------------------------------------------------------------------------

    except

     HaDe(True);                                                                // Habilita ou Desabilita componentes dutante a consulta
     result := true;
     exit;

    end ;

    if (FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU =
        FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.maxNSU) then
     Tem_Doctos := False
    else
     Tem_Doctos := True;

    FrConsManif.Edit1.Text := IntToStr(StrToInt(FrConsManif.Edit1.text) + 1);
    gTP                    := FrConsManif.Edit1.Text;

    ultNSU  := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
    gUltNSU := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;
    gGauge  := FrConsManif.Gauge1.Progress;
    gGauMa  := FrConsManif.Gauge1.MaxValue;

    if FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then
      FrConsManif.Edit2.Text := IntToStr(StrToInt(FrConsManif.Edit2.text) + 1);

    gDL                      := FrConsManif.Edit2.Text;

    // by Edson Lima ; 2015-9-1T1734 ; Finalizar a barra de progresso
    if not Tem_Doctos then
     begin
      FrConsManif.Gauge1.MaxValue   := vReg;
      FrConsManif.Gauge1.Progress   := vReg;
     end;

    // Retorno de NFe Destinadas
    for i := 0 to FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count -1 do
     begin
      if Trim(FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe) <> '' then
       begin

        //---------------------------------------------------------------------------
        // by Edson Lima ; 2015-9-1T08010 ; processa a barra de progresso

        if Tem_Doctos then
         begin
          FrConsManif.Gauge1.Progress   := FrConsManif.Gauge1.Progress + 1;
         end;

        //-----------------------------------------------------------------------------
        // Grava na tabela de consultas
        // by Edson Lima ; 11-9-2012 ; 17:22
        //-----------------------------------------------------------------------------

        // Define o parametro inicial do codigo da loja ; by Edson Lima ;
        DMFD.FDQryGeral1.DisableControls;
        DMFD.FDQryGeral1.Close;
        DMFD.FDQryGeral1.SQL.Clear;
        DMFD.FDQryGeral1.SQL.Add( ' Select                                          ' );
        DMFD.FDQryGeral1.SQL.Add( '  t1.Xml_Aut       as  MDFe_Xml_Aut              ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.Xml_Bai       as  MDFe_Xml_Bai              ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.idLote        as  MDFe_idLote               ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.NSU           as  MDFe_NSU                  ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.Codigo_loja   as  MDFe_Codigo_loja          ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.Chave_nfe     as  MDFe_Chave_nfe            ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.Evento        as  MDFe_Evento               ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.cnpj_cpf      as  MDFe_cnpj_cpf             ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.xNome         as  MDFe_xNome                ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.IE            as  MDFe_IE                   ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.dEmi          as  MDFe_dEmi                 ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.tpNF          as  MDFe_tpNF                 ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.vNF           as  MDFe_vNF                  ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.digVal        as  MDFe_digVal               ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.dhRecbto      as  MDFe_dhRecbto             ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.cStat         as  MDFe_cStat                ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.xMotivo       as  MDFe_xMotivo              ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.cSitNFe       as  MDFe_cSitNFe              ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t1.cSitConf      as  MDFe_cSitConf             ' );
        DMFD.FDQryGeral1.SQL.Add( ' ,t2.cnpj          as  MEMI_cnpj                 ' );
        DMFD.FDQryGeral1.SQL.Add( '                                                 ' );
        DMFD.FDQryGeral1.SQL.Add( ' from nfe_MDFe t1 join emitente t2 on t1.Codigo_loja = t2.Codigo_loja ' );
        DMFD.FDQryGeral1.SQL.Add( '  where t1.Codigo_loja = :Codigo_loja and        ' );
        DMFD.FDQryGeral1.SQL.Add( '        t2.Codigo_loja = :Codigo_loja and        ' );
        DMFD.FDQryGeral1.SQL.Add( '  isnull( t1.Chave_nfe, '''')  Like ''%'' + :Chave_nfe + ''%'' ' );
        DMFD.FDQryGeral1.SQL.Add( '  Order by t1.dEmi desc                          ' );

        DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
        DMFD.FDQryGeral1.ParamByName('Chave_nfe').AsString     := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe;
        DMFD.FDQryGeral1.Open;

        // mostra a NSU no campo de NSU
        FrConsManif.Edit_NSU_nfe.Text := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.ultNSU;

        if DMFD.FDQryGeral1.IsEmpty then
         begin
          FrConsManif.Edit3.Text := IntToStr(StrToInt(FrConsManif.Edit3.text) + 1);

          gRN                    := FrConsManif.Edit3.Text;

          // Grava novo registro MDe
          try
           DMFD.FDQryGeral1.DisableControls;
           DMFD.FDQryGeral1.Close;
           DMFD.FDQryGeral1.SQL.Clear;
           DMFD.FDQryGeral1.SQL.Add( 'Insert into nfe_MDFe (                       ' );
           DMFD.FDQryGeral1.SQL.Add( '      Xml_Aut                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  Xml_Bai                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  NSU                                    ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  Codigo_loja                            ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  Chave_nfe                              ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  Evento                                 ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  cnpj_cpf                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  xNome                                  ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  IE                                     ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  dEmi                                   ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  tpNF                                   ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  vNF                                    ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  digVal                                 ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  dhRecbto                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  cStat                                  ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  xMotivo                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  cSitNFe                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  cSitConf                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   ,  id                                     ' );
           DMFD.FDQryGeral1.SQL.Add( '                    )                        ' );
           DMFD.FDQryGeral1.SQL.Add( '  Values            (                        ' );
           DMFD.FDQryGeral1.SQL.Add( '     :Xml_Aut                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :Xml_Bai                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :NSU                                    ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :Codigo_loja                            ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :Chave_nfe                              ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :Evento                                 ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :cnpj_cpf                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :xNome                                  ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :IE                                     ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :dEmi                                   ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :tpNF                                   ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :vNF                                    ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :digVal                                 ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :dhRecbto                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :cStat                                  ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :xMotivo                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :cSitNFe                                ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :cSitConf                               ' );
           DMFD.FDQryGeral1.SQL.Add( '   , :id                                     ' );
           DMFD.FDQryGeral1.SQL.Add( '                    )                        ' );

           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resEvento.tpEvento of
            teManifDestConfirmacao            : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
            teManifDestDesconhecimento        : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
            teManifDestOperNaoRealizada       : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
            teManifDestCiencia                : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
            else                                DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';
           end;

           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resEvento.tpEvento of
            teManifDestConfirmacao            : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
            teManifDestDesconhecimento        : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
            teManifDestOperNaoRealizada       : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
            teManifDestCiencia                : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
            else                                DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';
           end;

           DMFD.FDQryGeral1.ParamByName('NSU'        ).AsString   := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
           DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
           DMFD.FDQryGeral1.ParamByName('Chave_nfe'  ).AsString   := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe;
           DMFD.FDQryGeral1.ParamByName('Evento'     ).AsString   := '0';
           DMFD.FDQryGeral1.ParamByName('cnpj_cpf'   ).Value      := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.CNPJCPF;
           DMFD.FDQryGeral1.ParamByName('xNome'      ).Value      := Copy(FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.xNome, 1, 60);
           DMFD.FDQryGeral1.ParamByName('IE'         ).Value      := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.IE;
           DMFD.FDQryGeral1.ParamByName('dEmi'       ).Value      := StrToDateTime( FormatDateTime('dd/mm/yyyy', FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.dhEmi) );
           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.tpNF of
            tnEntrada : DMFD.FDQryGeral1.ParamByName('tpNF'       ).AsString  := '0';
            tnSaida   : DMFD.FDQryGeral1.ParamByName('tpNF'       ).AsString  := '1';
           end;
           DMFD.FDQryGeral1.ParamByName('vNF'        ).AsFloat    := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.vNF;
           DMFD.FDQryGeral1.ParamByName('digVal'     ).Value      := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.digVal;
           DMFD.FDQryGeral1.ParamByName('dhRecbto'   ).Value      := StrToDateTime( FormatDateTime('dd/mm/yyyy hh:nn:ss', FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.dhRecbto) );
           DMFD.FDQryGeral1.ParamByName('cStat'      ).Value      := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat;
           DMFD.FDQryGeral1.ParamByName('xMotivo'    ).Value      := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.xMotivo;
           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.cSitDFe of
            snAutorizado : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).AsString  := '1';
            snDenegado   : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).AsString  := '2';
            snCancelado  : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).AsString  := '3';
            snEncerrado  : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).AsString  := '4';
           end;

           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.cSitDFe of
            snAutorizado :
             begin

              case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resEvento.tpEvento of
               teManifDestConfirmacao            : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := '1';
               teManifDestDesconhecimento        : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := '2';
               teManifDestOperNaoRealizada       : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := '3';
               teManifDestCiencia                : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := '4';
               else                                DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := '0';

              end;

             end;

            // Result := EnumeradoToStr(t, ['1', '2', '3', '4'], [snAutorizado, snDenegado, snCancelado, snEncerrado]);

            snDenegado                  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 5;        // 2

            snCancelado                 : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 6;        // 3

            snEncerrado                 : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 7;        // 4

           end;

           Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resEvento.tpEvento of
            teManifDestConfirmacao            : vTpEvento := '210200';
            teManifDestDesconhecimento        : vTpEvento := '210210';
            teManifDestOperNaoRealizada       : vTpEvento := '210220';
            teManifDestCiencia                : vTpEvento := '210240';
            else                                vTpEvento  := '';
           end;

           if ( vTpEvento <> '' ) then
            begin
             DMFD.FDQryGeral1.ParamByName('Evento'     ).Value  := '1';
             DMFD.FDQryGeral1.ParamByName('id'         ).Value  := 'ID' + vTpEvento + FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resDFe.chDFe + '1';
            end
           else
            begin
             DMFD.FDQryGeral1.ParamByName('id'         ).Value  := '';
             DMFD.FDQryGeral1.ParamByName('Evento'     ).Value  := '0';
            end;

           DMFD.FDQryGeral1.ExecSQL;

          except on e:exception do

           begin

            HaDe(True);                                                         // Habilita ou Desabilita componentes dutante a consulta
            Application.Messagebox( pWideChar(pAnsiString( 'ERRO: MDe não criada !' + chr(13) +
                                    e.Message )),'Atenção!',MB_ICONERROR+mb_ok);
            result := true;

           end;

          end;
         end   // by Edson Lima ; 2015-9-1T1623
        else
         begin
          FrConsManif.Edit4.Text := IntToStr(StrToInt(FrConsManif.Edit4.text) + 1);

          gRS        := FrConsManif.Edit4.Text;
          // Grava novo registro MDe
          //try
          // DMFD.FDQryGeral1.DisableControls;
          // DMFD.FDQryGeral1.Close;
          // DMFD.FDQryGeral1.SQL.Clear;
          // DMFD.FDQryGeral1.SQL.Add( 'update nfe_MDFe  set                        ' );
          // DMFD.FDQryGeral1.SQL.Add( '      Xml_Aut       = :Xml_Aut              ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  Xml_Bai       = :Xml_Bai              ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  NSU           = :NSU                  ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  cnpj_cpf      = :cnpj_cpf             ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  xNome         = :xNome                ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  IE            = :IE                   ' );
          // //DMFD.FDQryGeral1.SQL.Add( '   ,  dEmi          = :dEmi                 ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  tpNF          = :tpNF                 ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  vNF           = :vNF                  ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  digVal        = :digVal               ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  dhRecbto      = :dhRecbto             ' );
          // //DMFD.FDQryGeral1.SQL.Add( '   ,  cStat         = :cStat                ' );
          // //DMFD.FDQryGeral1.SQL.Add( '   ,  xMotivo       = :xMotivo              ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  cSitNFe       = :cSitNFe              ' );
          // DMFD.FDQryGeral1.SQL.Add( '   ,  cSitConf      = :cSitConf             ' );
          // DMFD.FDQryGeral1.SQL.Add( '                                            ' );
          // DMFD.FDQryGeral1.SQL.Add( '  where Codigo_loja = :Codigo_loja and      ' );
          // DMFD.FDQryGeral1.SQL.Add( '  isnull( Chave_nfe, '''')  Like ''%'' + :Chave_nfe + ''%'' ' );
          //
          // DMFD.FDQryGeral1.ParamByName('Codigo_loja').AsInteger  := StrToInt(gCodEmp);
          // DMFD.FDQryGeral1.ParamByName('Chave_nfe').AsString     := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.chNFe;
          //
          // //Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitConf of
          // // smdSemManifestacao       : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';
          // // smdConfirmada            : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
          // // smdDesconhecida          : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';
          // // smdOperacaoNaoRealizada  : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';
          // // smdCiencia               : DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '1';
          // //end;
          //
          // DMFD.FDQryGeral1.ParamByName('Xml_Aut'   ).Value  := '0';             // Provisório
          //
          // //Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitConf of
          // // smdSemManifestacao       : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';
          // // smdConfirmada            : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
          // // smdDesconhecida          : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';
          // // smdOperacaoNaoRealizada  : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';
          // // smdCiencia               : DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '1';
          // //end;
          //
          // DMFD.FDQryGeral1.ParamByName('Xml_Bai'   ).Value  := '0';             // Provisório
          //
          // DMFD.FDQryGeral1.ParamByName('NSU'        ).AsString := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].NSU;
          // DMFD.FDQryGeral1.ParamByName('cnpj_cpf'   ).Value    := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.CNPJCPF;
          // DMFD.FDQryGeral1.ParamByName('xNome'      ).Value    := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.xNome;
          // DMFD.FDQryGeral1.ParamByName('IE'         ).Value    := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.IE;
          // //DMFD.FDQryGeral1.ParamByName('dEmi'       ).Value    := StrToDateTime( FormatDateTime('dd/mm/yyyy', FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.dEmi) );
          // Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.tpNF of
          //  tnEntrada : DMFD.FDQryGeral1.ParamByName('tpNF'       ).Value  := '0';
          //  tnSaida   : DMFD.FDQryGeral1.ParamByName('tpNF'       ).Value  := '1';
          // end;
          // DMFD.FDQryGeral1.ParamByName('vNF'        ).AsFloat  := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.vNF;
          // DMFD.FDQryGeral1.ParamByName('digVal'     ).Value    := FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.digVal;
          // DMFD.FDQryGeral1.ParamByName('dhRecbto'   ).Value    := DateToStr(FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.dhRecbto);
          //
          // Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitNFe of
          //  snAutorizado : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).Value  := '1';
          //  snDenegado   : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).Value  := '2';
          //  snCancelado  : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).Value  := '3';
          //  snEncerrado  : DMFD.FDQryGeral1.ParamByName('cSitNFe'    ).Value  := '4';
          // end;
          //
          // Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitNFe of
          //  snAutorizado :
          //   begin
          //
          //    //Case FrGBNFe.AcbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[i].resNFe.cSitConf of
          //    // smdSemManifestacao       : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 0;
          //    // smdConfirmada            : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 1;
          //    // smdDesconhecida          : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 2;
          //    // smdOperacaoNaoRealizada  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 3;
          //    // smdCiencia               : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 4;
          //    //end;
          //
          //    DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 0;           // Provisório
          //
          //   end;
          //
          //  // Result := EnumeradoToStr(t, ['1', '2', '3', '4'], [snAutorizado, snDenegado, snCancelado, snEncerrado]);
          //  snDenegado                  : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 5;        // 2
          //  snCancelado                 : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 6;        // 3
          //  snEncerrado                 : DMFD.FDQryGeral1.ParamByName('cSitConf'   ).Value  := 7;        // 4
          // end;
          //
          // DMFD.FDQryGeral1.ExecSQL;
          //except
          // HaDe(True);                                                          // Habilita ou Desabilita componentes dutante a consulta
          // Application.Messagebox('ERRO: MDe não alterada !','Atenção!',MB_ICONERROR+mb_ok);
          // result := true;
          //end;
         end;

        //----------------------------------------------------------------------


        // Define o parametro inicial do codigo da loja ; by Edson Lima ;
        DMFD.FDQuery14.Close;
        DMFD.FDQuery14.ParamByName('Codigo_Loja1').AsInteger     := StrToInt(gCodEmp);
        DMFD.FDQuery14.ParamByName('Codigo_Loja2').AsInteger     := StrToInt(gCodEmp);
        case RadioGroup1.ItemIndex of
         0 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '0';
         1 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '4';
         2 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '1';
         3 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '2';
         4 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '3';
         5 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '5';
         6 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '6';
         7 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '7';
         8 : DMFD.FDQuery14.ParamByName('cSitConf').AsString    := '_';
        end;
        if Checkbox1.Checked then
         begin
          DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
          DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
         end
        else
         begin
          DMFD.FDQuery14.ParamByName('DtInicial').Value         := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
          DMFD.FDQuery14.ParamByName('DtFinal').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
         end;
        DMFD.FDQuery14.ParamByName('Chave_nfe').AsString        := FrBuscaChave.Edit_Busca_Chave.Text;
        DMFD.FDQuery14.Open;

         // Zera o contador de itens selecionados
         Edit_QSel.Text := '0';

        //----------------------------------------------------------------------
        // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
        if not DMFD.FDQuery14.IsEmpty then
         pAtuTLMDFe(
                     cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
                     cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
                     cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
                     cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
                   );

        //----------------------------------------------------------------------

       end ;
     end ;

    // Retorno de NFe Destinadas
    FrGBNFe.ACBrNFe1.NotasFiscais.Clear ;
    FrGBNFe.ACBrNFe1.EventoNFe.Evento.Clear ;
   end ;

  Application.ProcessMessages;

  Application.Messagebox('CONSULTA MANIFESTO: Processo terminado com sucesso!','Atenção!',MB_ICONASTERISK+mb_ok);

  HaDe(True);                                                                   // Habilita ou Desabilita componentes dutante a consulta

  FrGBNFe.gravarNSU();

  result := false;

 except

  HaDe(True);                                                                   // Habilita ou Desabilita componentes dutante a consulta

  FrGBNFe.gravarNSU();

  result := true;

 end;

end;


procedure TFrBuscaChave.dxTLBuscaChaveKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 i                            : integer;
 Codigo_loja, Chave_nfe       : string;
 dEmi                         : TDateTime;
begin

 i           := cxTLM.FocusedNode.Index;
 Codigo_loja := cxTLM.Items[i].Texts[cxTLMsCdL.ItemIndex];
 Chave_nfe   := cxTLM.Items[i].Texts[cxTLMsChv.ItemIndex];
 dEmi        := StrToDateTime(cxTLM.Items[i].Texts[cxTLMdDEm.ItemIndex]);

 MostraDados(Codigo_loja, Chave_nfe, dEmi);

end;

//------------------------------------------------------------------------------
// Função: fTrataErro() - Mostra uma mensagem conforme o codigo de retorno
//         Retorna como parametros true e false
//         by Edson Lima ; 09/07/2014T1722
//------------------------------------------------------------------------------
function TFrBuscaChave.fTrataErro(Status : integer; ChvCompl : string = '') : Boolean;                                // Mostra uma mensagem conforme o codigo de retorno
var
 msn : string;
begin

 case Status of
  137 : msn := 'Nenhum documento localizado' + ChvCompl;
  489 : msn := 'CNPJ informado inválido (DV ou zeros)';
  490 : msn := 'CPF informado inválido (DV ou zeros)';
  491 : msn := 'O tpEvento informado inválido';
  492 : msn := 'O verEvento informado inválido';
  493 : msn := 'Evento não atende o Schema XML específico';
  494 : msn := 'Chave de Acesso inexistente';
  572 : msn := 'Erro Atributo ID do evento não corresponde' + Chr(13) + 'a concatenação dos campos (“ID” +' + Chr(13) + 'tpEvento + chNFe + nSeqEvento)';
  573 : msn := 'Duplicidade de Evento';
  574 : msn := 'O autor do evento diverge do' + Chr(13) + 'emissor da NF-e';
  575 : msn := 'O autor do evento diverge do' + Chr(13) + 'destinatário da NF-e';
  576 : msn := 'O autor do evento não é um órgão' + Chr(13) + 'autorizado a gerar o evento';
  577 : msn := 'A data do evento não pode ser' + Chr(13) + 'menor que a data de emissão da NF-e';
  578 : msn := 'A data do evento não pode ser' + Chr(13) + 'maior que a data do processamento';
  579 : msn := 'A data do evento não pode ser menor que a' + Chr(13) + 'data de autorização para NF-e não' + Chr(13) + 'emitida em contingência';
  580 : msn := 'O evento exige uma NF-e autorizada';
  587 : msn := 'Usar somente o namespace padrão da NF-e';
  588 : msn := 'Não é permitida a presença de caracteres' + Chr(13) + 'de edição no início/fim da mensagem ou entre as' + Chr(13) + 'tags da mensagem';
  589 : msn := 'Número do NSU informado superior ao maior' + Chr(13) + 'NSU da base de dados da SEFAZ';
  593 : msn := 'CNPJ-Base consultado difere do CNPJ-Base' + Chr(13) + 'do Certificado Digital';
  594 : msn := 'O número de sequencia do evento informado' + Chr(13) + 'é maior que o permitido';
  595 : msn := 'Obrigatória a informação da' + Chr(13) + 'justificativa do evento';
  596 : msn := 'Evento apresentado fora do prazo: [prazo vigente]';
  614 : msn := 'Chave de Acesso inválida (Código UF inválido)';
  615 : msn := 'Chave de Acesso inválida (Ano menor que' + Chr(13) + '06 ou Ano maior que Ano corrente)';
  616 : msn := 'Chave de Acesso inválida' + Chr(13) + '(Mês menor que 1 ou Mês maior que 12)';
  617 : msn := 'Chave de Acesso inválida' + Chr(13) + '(CNPJ zerado ou dígito inválido)';
  618 : msn := 'Chave de Acesso inválida' + Chr(13) + '(modelo diferente de 55)';
  619 : msn := 'Chave de Acesso inválida (número NF = 0)';
  631 : msn := 'CNPJ-Base do Destinatário difere do' + Chr(13) + 'CNPJ-Base do Certificado Digital';
  632 : msn := 'Solicitação fora de prazo, a NF-e não' + Chr(13) + 'está mais disponível para download';
  633 : msn := 'NF-e indisponível para download devido' + Chr(13) + 'a ausência de Manifestação do Destinatário';
  634 : msn := 'Destinatário da NF-e não tem o mesmo' + Chr(13) + 'CNPJ raiz do solicitante do download';
  650 : msn := 'Evento de "Ciência da Operação" para' + Chr(13) + 'NF-e Cancelada ou Denegada';
  651 : msn := 'Evento de "Desconhecimento da Operação"' + Chr(13) + 'para NF-e Cancelada ou Denegada';

  653 : msn := 'NF-e Cancelada, arquivo' + Chr(13) + 'indisponível para download' + ChvCompl;
  654 : msn := 'NF-e Denegada, arquivo' + Chr(13) + 'indisponível para download' + ChvCompl;
  655 : msn := 'Evento de Ciência da Operação informado' + Chr(13) + 'após a manifestação final do destinatário';
  656 : msn := 'Consumo Indevido';
  657 : msn := 'Código do Órgão diverge do órgão autorizador';
  658 : msn := 'UF do destinatário da Chave de Acesso' + Chr(13) + 'diverge da UF autorizadora';

 else
  msn := 'Mensagem não catalogada !';
 end;

 Application.Messagebox(PWideChar(pAnsiString(msn)), PWideChar(pAnsiString('Rejeição - Status:' + ' ' + IntToStr(Status))), MB_ICONASTERISK+mb_ok);
 result := True;

end;

procedure TFrBuscaChave.SpeedButton7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton7.Hint;
end;

procedure TFrBuscaChave.dxTLBuscaChaveMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := cxTLM.Hint;
end;

procedure TFrBuscaChave.GroupBox15MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox15.Hint;
end;

procedure TFrBuscaChave.GroupBox8MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox8.Hint;
end;

procedure TFrBuscaChave.GroupBox14MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox14.Hint;
end;

procedure TFrBuscaChave.GroupBox10MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox10.Hint;
end;

procedure TFrBuscaChave.GroupBox11MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox11.Hint;
end;

procedure TFrBuscaChave.GroupBox13MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox13.Hint;
end;

procedure TFrBuscaChave.GroupBox17MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox17.Hint;
end;

procedure TFrBuscaChave.GroupBox12MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox2.Hint;
end;

procedure TFrBuscaChave.CheckBox1Click(Sender: TObject);
begin
 if not Checkbox1.Checked then
  begin
   cxdtp1.Enabled := False;
   cxdtp2.Enabled := False;
  end
 else
  begin
   cxdtp1.Enabled := True;
   cxdtp2.Enabled := True;
  end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery14.Close;
  if Checkbox1.Checked then
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
   end
  else
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
   end;
 DMFD.FDQuery14.Open;

 // Zera o contador de itens selecionados
 Edit_QSel.Text := '0';

 //----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.SpeedButton3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton3.Hint;
end;

procedure TFrBuscaChave.SpeedButton3Click(Sender: TObject);
begin

 FrImportXML.DirectoryListBox1.Directory := gCamXml;

 if ( FrImportXML = nil ) then
  FrImportXML := TFrImportXML.Create(Application)
 else
  FrImportXML := TFrImportXML.Create(Application);
 FrImportXML.BringToFront;
 FrImportXML.ShowModal;

end;

//******************************************************************************
// Função que chama a janela da senha master
// by Edson Lima - 2014-12-8T1724
//******************************************************************************
function TFrBuscaChave.SenhaMaster(SenMst : String) : boolean;
var
 vSenMst : string;
begin

 vSenMst := chr(71) + chr(98) + chr(73) + chr(110) + chr(102) + chr(111) + chr(49) + chr(64);

 if SenMst <> '' then
  begin
   if SenMst = vSenMst then
    begin
     gSenMst := vSenMst;
     result  := true;
    end;
  end;

 // Chama a janela de entrada da senha
 if ( FrSenMst = nil ) then
  FrSenMst := TFrSenMst.Create(Application)
 else
  FrSenMst := TFrSenMst.Create(Application);
 FrSenMst.BringToFront;
 FrSenMst.ShowModal;
 //-----------------------------------

 if gSenMst = vSenMst then
  result := true
 else
  result := false;

end;

procedure TFrBuscaChave.GroupBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox1.Hint;
end;

procedure TFrBuscaChave.RG_tpEventoExit(Sender: TObject);
begin
 gItem := RG_tpEvento.ItemIndex;
end;

procedure TFrBuscaChave.ConsultaWeb5CopiaNChavereadeTransferncia1Click(
  Sender: TObject);
begin

 dxTLBuscaChaveExit(Sender);
 FrGBNFe.pCopiaNChaveMDFe(DMFD.FDQuery14);

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //-----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.cxdtp1Exit(Sender: TObject);
begin

 // Faz a contestação da data inicial antiga
 if cxdtp1.Date < (date() - 73000) then                                         // 73000 dias aproximadamente 200 anos
  if Application.MessageBox( 'Data inicial muita antiga !', 'GBNFe - Período', mb_IconInformation + MB_OK ) = IdOk then
   begin
    cxdtp1.SetFocus;
    exit;
   end;

 // Faz a contestação da data final no período
 if cxdtp2.Date < cxdtp1.Date then
  if Application.MessageBox( 'A data inicial não pode ser maior que data final !', 'GBNFe - Período', mb_IconInformation + MB_OK ) = IdOk then
   begin
    cxdtp1.SetFocus;
    exit;
   end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery14.Close;
  if Checkbox1.Checked then
   begin

    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );

   end
  else
   begin

    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );

   end;
 DMFD.FDQuery14.Open;

 // Zera o contador de itens selecionados
 Edit_QSel.Text := '0';

 //----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.cxdtp2PropertiesChange(Sender: TObject);
begin

 // Faz a contestação da data final antiga
 if cxdtp2.Date < (date() - 73000) then                                             // 73000 dias aproximadamente 200 anos
  if Application.MessageBox( 'Data final muito antiga !', 'GBNFe - Período', mb_IconInformation + MB_OK ) = IdOk then
   begin
    cxdtp2.SetFocus;
    exit;
   end;

 // Faz a contestação da data final no período
 if cxdtp2.Date < cxdtp1.Date then
  if Application.MessageBox( 'A data final não pode ser menor que data inicial !', 'GBNFe - Período', mb_IconInformation + MB_OK ) = IdOk then
   begin
    cxdtp2.SetFocus;
    exit;
   end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery14.Close;
  if Checkbox1.Checked then
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp1.Date) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', cxdtp2.Date) );
   end
  else
   begin
    DMFD.FDQuery14.ParamByName('DtInicial').Value           := StrToDateTime( FormatDateTime('dd/mm/yyyy', now() - 180) );
    DMFD.FDQuery14.ParamByName('DtFinal').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', now()) );
   end;
 DMFD.FDQuery14.Open;

 // Zera o contador de itens selecionados
 Edit_QSel.Text := '0';

 //----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest
 pAtuTLMDFe(
             cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
             cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
             cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
             cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
           );

 //----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.cxTLMbSelPropertiesChange(Sender: TObject);
var
 i                               : integer;
 Codigo_loja, Chave_nfe          : string;
 dEmi                            : TDateTime;

begin

 try

  if ( cxTLM.FocusedColumn.ItemIndex = cxTLMbSel.ItemIndex ) then
  begin

   gClEx := true;

   cxTLMExit(Sender);

   i            := cxTLM.FocusedNode.Index;
   Codigo_loja  := cxTLM.Items[i].Texts[cxTLMsCdL.ItemIndex];
   Chave_nfe    := cxTLM.Items[i].Texts[cxTLMsChv.ItemIndex];
   dEmi         := StrToDateTime(cxTLM.Items[i].Texts[cxTLMdDEm.ItemIndex]);

   MostraDados(Codigo_loja, Chave_nfe, dEmi);

  end;

 Except

 end;

end;

procedure TFrBuscaChave.cxTLMCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin

 case AViewInfo.Node.Values[cxTLMBImg.ItemIndex] of

  0: ACanvas.Font.Color := $00804000;
  1: ACanvas.Font.Color := $00356A00;
  2: ACanvas.Font.Color := $005B5757;
  3: ACanvas.Font.Color := $00030303;
  4: ACanvas.Font.Color := $00006262;
  5: ACanvas.Font.Color := $00000071;
  6: ACanvas.Font.Color := $000000EC;
  7: ACanvas.Font.Color := $009D004F;

 end;

end;

procedure TFrBuscaChave.cxTLMEditValueChanged(Sender: TcxCustomTreeList;
  AColumn: TcxTreeListColumn);
var
 I, T           : Integer;
begin

 T := StrToInt(Edit_QSel.Text);

 I :=  cxTLM.FocusedNode.Index;

 if ( (gSubtSoma) = True ) then                                                 // True  se estava selecionada antes de clic
  Edit_QSel.Text := IntToStr(T - 1)
 else
  Edit_QSel.Text := IntToStr(T + 1);

 cxTLMbD_S.Focused := True;

 cxTLMbSelPropertiesChange(Sender);

end;

procedure TFrBuscaChave.cxTLMExit(Sender: TObject);
begin

 // by Edson Lima ; 2013-7-17T1024 ; Chama a procedure de atribuição de seleção da TreeList
 pAtribCon(gClEx, cxTLM, cxTLMsCdL, cxTLMsChv, DMFD.FDQuery14);

end;

procedure TFrBuscaChave.ConsultaWeb5ConsultaWeb1Click(Sender: TObject);
begin

 cxTLMExit(Sender);
 FrGBNFe.pPegaChaveCWM(DMFD.FDQuery14);

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest

  if not DMFD.FDQuery14.IsEmpty then
   pAtuTLMDFe(
               cxTLM,     cxTLMbSel, cxTLMbD_S, cxTLMbD_B, cxTLMBIMG, cxTLMsPOS,
               cxTLMsEve, cxTLMsxNo, cxTLMsCpf, cxTLMs_IE, cxTLMsNot, cxTLMsSer,
               cxTLMcVNF, cxTLMdDEm, cxTLMsChv, cxTLMsNSU, cxTLMsCdL, cxTLMscSC,
               cxTLMscSN, cxTLMsTpN, cxTLMdDhR, cxTLMsDgV, DMFD.FDQuery14
             );

 //-----------------------------------------------------------------------------

end;

procedure TFrBuscaChave.SbImprMDFe1Click(Sender: TObject);
begin
 FrGBNFe.BitBtn10Click(Sender);
end;

procedure TFrBuscaChave.ExcluirxmlsTemp1Click(Sender: TObject);
begin
 FrGBNFe.ConsultaWeb5inuClick(Sender);
end;

procedure TFrBuscaChave.SpeedButton51Click(Sender: TObject);
begin
 FrGBNFe.SpeedButton2Click(Sender);
end;

procedure TFrBuscaChave.SpeedButton5Click(Sender: TObject);
begin

 FrGBNFe.ACBrNFe1.WebServices.StatusServico.Executar;
 showmessage('Status: ' + vartostr(FrGBNFe.ACBrNFe1.WebServices.StatusServico.cStat) + chr(13) +
             'Motivo: ' +  vartostr(FrGBNFe.ACBrNFe1.WebServices.StatusServico.xMotivo));

end;

procedure TFrBuscaChave.SpeedButton5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton5.Hint;
end;

procedure TFrBuscaChave.SpeedButtonClick(Sender: TObject);
begin
 FrGBNFe.SpeedButton1Click(Sender);
end;

//------------------------------------------------------------------------------
// Atualizar registro de notas manifestadas conforme sefaz
// by Edson Lima ; 2016-12-20T1448 ;
//------------------------------------------------------------------------------
procedure TFrBuscaChave.AtuMDe();
var
 strPathArquivo, aux, vDescr       : string;
 x, vmE, vmA                       : Integer;

begin

 DMFD.FDQuery14.first;

 while ( not DMFD.FDQuery14.eof ) do
  begin

   DMFD.FDQuery14.FieldByName('Checado').ReadOnly := False;

   if DMFD.FDQuery14['Checado'] = 'Y' then
    begin

     vAux             := DMFD.FDQuery14['MDFe_Chave_nfe'];

     if vAux <> '' then
      begin

       //-----------------------------------------------------------------------
       // by Edson Lima ; 2015-9-2T1659 ; Trata o mes pra buscar o xml

       vmE := StrToInt(formatdatetime('mm',  StrToDateTime(DMFD.FDQuery14['MDFe_dEmi'])));
       vmA := StrToInt(formatdatetime('mm',  now()));

       strPathArquivo := (gCamXml + formatdatetime('yyyy',StrToDateTime(DMFD.FDQuery14['MDFe_dEmi']))
                                  + formatdatetime('mm',  StrToDateTime(DMFD.FDQuery14['MDFe_dEmi']))
                                  + '\Down\' + vAux + '-nfe.xml');

       if (vmA > vmE) then
        begin
         for x := vmE to vmA do
          begin
           if FileExists(strPathArquivo) then
            break
           else
            strPathArquivo := (gCamXml + formatdatetime('yyyy', now())
                                       + IntToStrZero(x, 2)
                                       + '\Down\' + vAux + '-nfe.xml');
          end;
        end;

       //----------------------------------------------------------------------

       // Consulta Notas Manifestadas
       vAux := strPathArquivo;
       FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
       FrGBNFe.ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
       FrGBNFe.ACBrNFe1.Consultar;

       FrGBNFe.memoLog.Clear;
       FrGBNFe.MemoResp.Lines.Text   := UTF8Encode(FrGBNFe.ACBrNFe1.WebServices.Consulta.RetWS);
       FrGBNFe.MemoLog.Lines.Add(vDescr);
       FrGBNFe.MemoLog.Lines.Add('Status');
       FrGBNFe.MemoLog.Lines.Add('Tipo de Ambiente:'     + TpAmbToStr(FrGBNFe.ACBrNFe1.WebServices.Consulta.TpAmb));
       FrGBNFe.MemoLog.Lines.Add('Versão do Aplicativo: '+ FrGBNFe.ACBrNFe1.WebServices.Consulta.verAplic);
       FrGBNFe.MemoLog.Lines.Add('Código do Status: '    + IntToStr(FrGBNFe.ACBrNFe1.WebServices.Consulta.cStat));
       FrGBNFe.MemoLog.Lines.Add('Código da UF: '        + IntToStr(FrGBNFe.ACBrNFe1.WebServices.Consulta.cUF));
       FrGBNFe.MemoLog.Lines.Add('Descrição: '           + FrGBNFe.ACBrNFe1.WebServices.Consulta.xMotivo);
       FrGBNFe.MemoLog.Lines.Add('Mensagem: '            + FrGBNFe.ACBrNFe1.WebServices.Consulta.Msg);
       FrGBNFe.MemoLog.Lines.Add('Data do recebimento: ' + vartostr(FrGBNFe.ACBrNFe1.WebServices.Consulta.DhRecbto));
       FrGBNFe.MemoLog.Lines.Add('Protocolo: '           + FrGBNFe.ACBrNFe1.WebServices.Consulta.Protocolo);
       FrGBNFe.memoRespWS.Lines.Text := UTF8Encode(FrGBNFe.ACBrNFe1.WebServices.Consulta.RetornoWS);
       FrGBNFe.LoadXML(FrGBNFe.MemoResp, FrGBNFe.WBResposta);
      end;

      if vartostr(FrGBNFe.ACBrNFe1.WebServices.Consulta.cStat) <> '217' then
       begin
       end;

      end;
      DMFD.FDQuery14.Next;
    end;

end;

procedure TFrBuscaChave.AtualizarNota1Click(Sender: TObject);
begin
 AtuMDe();
end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-8-17T0910
// Objetivo: Filtra a nota MDe  (novo berlin)
//------------------------------------------------------------------------------
procedure TFrBuscaChave.pSelMDe(FD : TFDQuery ; CN1 : Integer; CN2, CN3: String);
begin

 // CN1 = Codigo_Loja
 // CN2 = Chave_nfe
 // CN3 = Evento

 try

  FD.Close;
  FD.SQL.Clear;
  FD.SQL.Add( 'Select distinct                                               ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( '  Checado=''''                                                ' );
  FD.SQL.Add( ' ,t1.Xml_Aut               as  MDFe_Xml_Aut                   ' );
  FD.SQL.Add( ' ,t1.Xml_Bai               as  MDFe_Xml_Bai                   ' );
  FD.SQL.Add( ' ,t1.idLote                as  MDFe_idLote                    ' );
  FD.SQL.Add( ' ,t1.Codigo_Loja           as  MDFe_Codigo_Loja               ' );
  FD.SQL.Add( ' ,t1.Chave_nfe             as  MDFe_Chave_nfe                 ' );
  FD.SQL.Add( ' ,t1.Evento                as  MDFe_Evento                    ' );
  FD.SQL.Add( ' ,t1.Ver_Leiaute           as  MDFe_Ver_Leiaute               ' );
  FD.SQL.Add( ' ,t1.id                    as  MDFe_id                        ' );
  FD.SQL.Add( ' ,t1.cOrgao                as  MDFe_cOrgao                    ' );
  FD.SQL.Add( ' ,t1.dhEvento              as  MDFe_dhEvento                  ' );
  FD.SQL.Add( ' ,t1.tpEvento              as  MDFe_tpEvento                  ' );
  FD.SQL.Add( ' ,t1.nSeqEvento            as  MDFe_nSeqEvento                ' );
  FD.SQL.Add( ' ,t1.verEvento             as  MDFe_verEvento                 ' );
  FD.SQL.Add( ' ,t1.desEvento             as  MDFe_desEvento                 ' );
  FD.SQL.Add( ' ,t1.xJust                 as  MDFe_xJust                     ' );
  FD.SQL.Add( ' ,t1.cStat                 as  MDFe_cStat                     ' );
  FD.SQL.Add( ' ,t1.xMotivo               as  MDFe_xMotivo                   ' );
  FD.SQL.Add( ' ,t1.dhRegEvento           as  MDFe_dhRegEvento               ' );
  FD.SQL.Add( ' ,t1.nProt                 as  MDFe_nProt                     ' );
  FD.SQL.Add( ' ,t1.NSU                   as  MDFe_NSU                       ' );
  FD.SQL.Add( ' ,t1.xNome                 as  MDFe_xNome                     ' );
  FD.SQL.Add( ' ,t1.cnpj_cpf              as  MDFe_cnpj_cpf                  ' );
  FD.SQL.Add( ' ,t1.IE                    as  MDFe_IE                        ' );
  FD.SQL.Add( ' ,t1.dEmi                  as  MDFe_dEmi                      ' );
  FD.SQL.Add( ' ,t1.tpNF                  as  MDFe_tpNF                      ' );
  FD.SQL.Add( ' ,t1.vNF                   as  MDFe_vNF                       ' );
  FD.SQL.Add( ' ,t1.digVal                as  MDFe_digVal                    ' );
  FD.SQL.Add( ' ,t1.dhRecbto              as  MDFe_dhRecbto                  ' );
  FD.SQL.Add( ' ,t1.cSitNFe               as  MDFe_cSitNFe                   ' );
  FD.SQL.Add( ' ,t1.cSitConf              as  MDFe_cSitConf                  ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,t2.cnpj                  as  MEMI_cnpj                      ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,PosMov = CASE t3.PosMov                                     ' );
  FD.SQL.Add( '           WHEN ''C'' THEN Cast(''2'' AS Integer)             ' );
  FD.SQL.Add( '           WHEN ''E'' THEN Cast(''3'' AS Integer)             ' );
  FD.SQL.Add( '           WHEN ''I'' THEN Cast(''4'' AS Integer)             ' );
  FD.SQL.Add( '           WHEN ''P'' THEN Cast(''5'' AS Integer)             ' );
  FD.SQL.Add( '           ELSE Cast( ISNULL(t3.PosMov, ''1'') AS Integer)    ' );
  FD.SQL.Add( '  END                                                         ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' from nfe_MDFe t1                                             ' );
  FD.SQL.Add( '         join emitente t2 on t1.codigo_loja = t2.codigo_loja  ' );
  FD.SQL.Add( '    left join NFeE_Mov t3 on t1.Chave_nfe   = t3.ChvNFe       ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' where t1.Codigo_Loja = :Codigo_Loja1                         ' );
  FD.SQL.Add( ' and   t2.Codigo_Loja = :Codigo_Loja2                         ' );
  FD.SQL.Add( ' and   t1.Chave_nfe   = :Chave_nfe                            ' );
  FD.SQL.Add( ' and   t1.Evento      = :Evento                               ' );
  FD.SQL.Add( '                                                              ' );
  FD.ParamByName('codigo_loja1').AsInteger  := CN1;
  FD.ParamByName('Codigo_Loja2').AsInteger  := CN1;
  FD.ParamByName('Chave_nfe').AsString      := CN2;
  FD.ParamByName('Evento').AsString         := CN3;
  FD.Open;

 except on e:exception do

  Application.Messagebox( pWideChar(pAnsiString( 'Tabela MDe inconsistente!' + chr(13) +
                         e.Message )), 'Atenção!', MB_ICONERROR+mb_ok);

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-9-22T1406
// Objetivo: Verifica se foi selecionado algum item na treelist MDe (novo berlin)
//------------------------------------------------------------------------------
function TFrBuscaChave.fTemSel(cxTLM : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Boolean;
var
 I : integer;
begin

 result       := false;

 for I := 0 to cxTLM.Count -1 do
  begin

   if ( cxTLM.Items[I].Texts[cxTLbSel.ItemIndex] = 'True' ) then
    result := true;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2018-04-09T1653
// Objetivo: Retorna a quantidade de itens selecionados no MDe
//------------------------------------------------------------------------------
function TFrBuscaChave.fQtdItensSelMDe(cxTLM : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Integer;
var
 I : integer;
begin

 result := 0;

 for I := 0 to cxTLM.Count -1 do
  begin

   if ( cxTLM.Items[I].Texts[cxTLbSel.ItemIndex] = 'True' ) then
    result := (Result + 1);

  end;

end;

end.

