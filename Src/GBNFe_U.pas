﻿unit GBNFe_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, MidasLib,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Winapi.ShellAPi, System.IniFiles, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.OleCtrls, SHDocVw, Data.DB, Vcl.Grids,
  pcnConversaoNFe, ACBrNFe, ACBrUtil, Vcl.Menus, Vcl.Mask, pcnConversao,
  Vcl.ToolWin, FireDAC.Comp.Client, Vcl.Printers, Vcl.ClipBrd, Winapi.WinInet,
  System.DateUtils, System.ImageList, Vcl.OleServer, ExcelXP, Vcl.DBCtrls,
  Vcl.ImgList, IdMessage, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdMailBox, Vcl.AppEvnts, ACBrBase,
  ACBrMDFe, ACBrDFe, IdSSLOpenSSL, IdAttachmentFile, ACBrNFeDANFEClass,
  ACBrNFeDANFeESCPOS, ACBrPosPrinter, ACBrNFeDANFEFR,
  FireDAC.Phys.MSSQL, FireDAC.Phys.Intf, FireDAC.Phys.SQLPreprocessor,
  FireDAC.Phys.ODBCCli, FireDAC.Phys.ODBCWrapper, FireDAC.Phys.SQLGenerator,
  FireDAC.Phys.Meta, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSSQLDef,
  FireDAC.Phys.MSSQLCli, FireDAC.Phys.MSSQLWrapper, FireDAC.Phys.MSSQLMeta,
  ACBrECFVirtual, ACBrECFVirtualBuffer, IdText, ACBrECFVirtualPrinter,
  ACBrECFVirtualNFCe, ACBrMail, ACBrDANFCeFortesFr, ACBrNFeDANFeRLClass,
  ACBrDANFCeFortesFrA4, ACBrMDFeDAMDFeClass, cxGraphics, cxControls,
  dxGDIPlusAPI, dxCore,  cxGeometry, cxLibraryStrs, cxFormats, cxDateUtils,
  cxDWMApi, cxLibraryConsts, cxScrollBar, cxDrawTextUtils,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles,
  cxTL, cxCheckBox, cxMaskEdit, cxTextEdit, cxCalendar, dxDateTimeWheelPicker,
  cxRichEdit, cxCurrencyEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, IdFTP,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxClasses, IdHTTP, ACBrMDFeDAMDFeRLClass,
  ACBrNFeDANFEFRDM, IdExplicitTLSClientServerBase, IdSMTPBase,
  cxInplaceContainer, cxImageComboBox, cxMemo, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, TypInfo, ACBrSMSClass, ACBrSMS, dxActivityIndicator,
  cxContainer, cxEdit, cxDropDownEdit, RLPreviewForm, blcksock, ACBrDFeReport,
  ACBrDFeDANFeReport;

type
 TWebControl = class(TWebBrowser)
end;

type
 TUpdate = class

 private

 public

end;

type
 TFrGBNFe = class(TForm)
  Panel2: TPanel;
  Panel3: TPanel;
  Panel5: TPanel;
  StatusBar1: TStatusBar;
  Panel6: TPanel;
  Panel7: TPanel;
  BitBtn1: TBitBtn;
  BitBtn2: TBitBtn;
  BitBtn4: TBitBtn;
  BitBtn5: TBitBtn;
  BitBtn6: TBitBtn;
  BitBtn7: TBitBtn;
  BitBtn9: TBitBtn;
  PageControl1: TPageControl;
  TabSheet1: TTabSheet;
  TabSheet2: TTabSheet;
  TabSheet3: TTabSheet;
  TabSheet4: TTabSheet;
  MemoResp: TMemo;
  Panel9: TPanel;
  BitBtn12: TBitBtn;
  BitBtn11: TBitBtn;
  BitBtn13: TBitBtn;
  SaveDialog1: TSaveDialog;
  Panel8: TPanel;
  BitBtn10: TBitBtn;
  BitBtn14: TBitBtn;
  Panel4: TPanel;
  GroupBox1: TGroupBox;
  GroupBox9: TGroupBox;
  RadioButton1: TRadioButton;
  RadioButton3: TRadioButton;
  RadioGroup1: TRadioGroup;
  WBResposta: TWebBrowser;
  MemoLog: TMemo;
  trvwNFe: TTreeView;
  Timer1: TTimer;
  ImageList1: TImageList;
  GroupBox2: TGroupBox;
  ACBrNFe1: TACBrNFe;
  GroupBox3: TGroupBox;
  Label1: TLabel;
  GroupBox7: TGroupBox;
  Label12: TLabel;
  Panel10: TPanel;
  PopupMenu2: TPopupMenu;
  Excluinota1: TMenuItem;
  PopupMenu3: TPopupMenu;
  PopupMenu1: TPopupMenu;
  PopupMenu4: TPopupMenu;
  N2: TMenuItem;
  OpenDialog1: TOpenDialog;
  SelecionarTudo1: TMenuItem;
  MarcaDesmarcaTodos1: TMenuItem;
  N5: TMenuItem;
  MarcaDesmarcaTodos2: TMenuItem;
  N6: TMenuItem;
  MarcaDesmarcaTodos3: TMenuItem;
  DesmarcarTudo1: TMenuItem;
  DesmarcarTodas1: TMenuItem;
  DesmarcarTodas2: TMenuItem;
  DesmarcarTodas3: TMenuItem;
  N7: TMenuItem;
  IdSMTP: TIdSMTP;
  IdMessage: TIdMessage;
  HeaderControl1: THeaderControl;
  BitBtn3: TBitBtn;
  TabSheet5: TTabSheet;
  memoRespWS: TMemo;
  GroupBox4: TGroupBox;
  MovepPendentes1: TMenuItem;
  Panel1: TPanel;
  SpeedButton1: TSpeedButton;
  Image1: TImage;
  Panel11: TPanel;
  cxTL: TcxTreeList;
  cxTLbSel: TcxTreeListColumn;
  cxTLsDes: TcxTreeListColumn;
  cxTLsCpf: TcxTreeListColumn;
  cxTLsCod: TcxTreeListColumn;
  cxTLsMod: TcxTreeListColumn;
  cxTLsSer: TcxTreeListColumn;
  cxTLdDem: TcxTreeListColumn;
  cxTLlNot: TcxTreeListColumn;
  cxTLcVal: TcxTreeListColumn;
  cxTLsSit: TcxTreeListColumn;
  cxTLsPro: TcxTreeListColumn;
  cxTLsRec: TcxTreeListColumn;
  cxTLsCha: TcxTreeListColumn;
  ConsultaWeb5inu: TMenuItem;
  ExcluirxmlsTemp2: TMenuItem;
  ExcluirxmlsTemp3: TMenuItem;
  ExcluirxmlsTemp4: TMenuItem;
  BitBtn15: TBitBtn;
  SpeedButton2: TSpeedButton;
  BitBtn16: TBitBtn;
  ACBrMail1: TACBrMail;
  ACBrNFeDANFeRL1: TACBrNFeDANFeRL;
  ACBrNFeDANFCeFortes1: TACBrNFeDANFCeFortes;
  RadioGroup2: TRadioGroup;
  ACBrNFeDANFCeFortesA41: TACBrNFeDANFCeFortesA4;
  ACBrNFeDANFEFR1: TACBrNFeDANFEFR;
  ACBrECFVirtualNFCe1: TACBrECFVirtualNFCe;
  ACBrNFeDANFeESCPOS1: TACBrNFeDANFeESCPOS;
  acbrmdfdmdfrl1: TACBrMDFeDAMDFeRL;
  N8: TMenuItem;
  ConsultaWeb2: TMenuItem;
  N1: TMenuItem;
  ConsultaWeb1: TMenuItem;
  N3: TMenuItem;
  CopiaNChaveClipBoard1: TMenuItem;
  N4: TMenuItem;
  CopiaNChavereadeTransferncia1: TMenuItem;
  ExcluirxmlsTemp5: TMenuItem;
  MenuItem2: TMenuItem;
  ConsultaWeb5: TMenuItem;
  MenuItem4: TMenuItem;
  MenuItem5: TMenuItem;
  MenuItem6: TMenuItem;
  MenuItem7: TMenuItem;
  MenuItem8: TMenuItem;
  PopupMenu5: TPopupMenu;
  btn2: TSpeedButton;
  BitBtn8: TBitBtn;
  ExcluirxmlsTemp1Excluinota2: TMenuItem;
  idftp1: TIdFTP;
  acbrpsprntr1: TACBrPosPrinter;
  btn3: TBitBtn;
  PopupMenu6: TPopupMenu;
  ConsultaWeb5EnviaEmailParaDestinatrios6: TMenuItem;
  IdHttp1: TIdHTTP;
  edt_CodEmp: TEdit;
  edt_CodDes: TEdit;
  edt_NumNNF: TEdit;
  cxTLInut: TcxTreeList;
  cxTLdIDem: TcxTreeListColumn;
  cxTLsIAno: TcxTreeListColumn;
  cxTLsISer: TcxTreeListColumn;
  cxTLsIMod: TcxTreeListColumn;
  cxTLlINot: TcxTreeListColumn;
  cxTLsIJus: TcxTreeListColumn;
  ColumnHeader: TcxStyleRepository;
  cxColumnHeader: TcxStyle;
  BandHeader: TcxStyleRepository;
  cxBandHeader: TcxStyle;
  Content: TcxStyleRepository;
  cxContent: TcxStyle;
  IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
  ACBrSMS1: TACBrSMS;
  ContentOutros: TcxStyle;
  grp1: TGroupBox;
  SBProd: TSpeedButton;
  SBHomol: TSpeedButton;
  ContentOutros1: TcxStyle;
  cxStyleRepository1: TcxStyleRepository;
  ContentOutros2: TcxStyle;
  cxContent1: TcxStyle;
  cxContent2: TcxStyle;
  cxdtp1: TcxDateEdit;
  cxdtp2: TcxDateEdit;
  cxTLbImM: TcxTreeListColumn;
  cxTLstpAm: TcxTreeListColumn;
  cxTLsvApl: TcxTreeListColumn;
  cxTLicdUF: TcxTreeListColumn;
  cxTLsCnpj: TcxTreeListColumn;
  cxTLsnPro: TcxTreeListColumn;
  cxTLicSta: TcxTreeListColumn;
  cxTLsxMot: TcxTreeListColumn;
  lbl1: TLabel;
    cxTLsxInu: TcxTreeListColumn;
    cxTLsTrs: TcxTreeListColumn;
    cxTLsCnc: TcxTreeListColumn;

  Procedure geraenvianf(Sender: TObject);
  Procedure grava_xml_no_banco;
  procedure BitBtn10Click(Sender: TObject);
  procedure BitBtn14Click(Sender: TObject);
  procedure BitBtn13Click(Sender: TObject);
  procedure RadioGroup1Click(Sender: TObject);
  procedure FormCreate(Sender: TObject);
  procedure ACBrNFe1GerarLog(const Mensagem: String);
  procedure ACBrNFe1StatusChange(Sender: TObject);
  procedure BitBtn1Click(Sender: TObject);
  procedure FormKeyDown(Sender: TObject; var Key: Word;
    Shift: TShiftState);
  procedure Timer1Timer(Sender: TObject);
  procedure Destinatrio1Click(Sender: TObject);
  procedure BitBtn2Click(Sender: TObject);
  procedure BitBtn8Click(Sender: TObject);
  procedure Excluinota1Click(Sender: TObject);
  procedure BitBtn9Click(Sender: TObject);
  procedure BitBtn11Click(Sender: TObject);
  procedure MenuItem2Click(Sender: TObject);
  procedure ConsultarnotaemFSDA1Click(Sender: TObject);
  procedure BitBtn4Click(Sender: TObject);
  procedure BitBtn5Click(Sender: TObject);
  procedure BitBtn7Click(Sender: TObject);
  procedure BitBtn6Click(Sender: TObject);
  procedure SelecionarTudo1Click(Sender: TObject);
  procedure MarcaDesmarcaTodos1Click(Sender: TObject);
  procedure MarcaDesmarcaTodos2Click(Sender: TObject);
  procedure DesmarcarTudo1Click(Sender: TObject);
  procedure DesmarcarTodas1Click(Sender: TObject);
  procedure DesmarcarTodas2Click(Sender: TObject);
  procedure FormClose(Sender: TObject; var Action: TCloseAction);
  procedure BitBtn12Click(Sender: TObject);
  procedure SpeedButton1Click(Sender: TObject);
  procedure BitBtn3Click(Sender: TObject);
  procedure MovepPendentes1Click(Sender: TObject);
  procedure ConsultaWeb5inuClick(Sender: TObject);
  procedure trvwNFeExit(Sender: TObject);
  procedure BitBtn15Click(Sender: TObject);
  procedure SpeedButton2Click(Sender: TObject);
  procedure BitBtn16Click(Sender: TObject);
  procedure RadioGroup2Click(Sender: TObject);
  procedure ConsultaWeb2Click(Sender: TObject);
  procedure ConsultaWeb1Click(Sender: TObject);
  procedure CopiaNChaveClipBoard1Click(Sender: TObject);
  procedure MarcaDesmarcaTodos3Click(Sender: TObject);
  procedure DesmarcarTodas3Click(Sender: TObject);
  procedure MenuItem5Click(Sender: TObject);
  procedure MenuItem6Click(Sender: TObject);
  procedure dxSpinEdit1Exit(Sender: TObject);
  procedure btn1MouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  procedure BitBtn2MouseDown(Sender: TObject; Button: TMouseButton;
    Shift: TShiftState; X, Y: Integer);
  procedure btn2Click(Sender: TObject);
  procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn5MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn6MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn7MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn8MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn9MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn11MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn13MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn15MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn16MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure btn3MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn10MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn14MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure BitBtn12MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox9MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure GroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure dxTLCancMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure dxTLContMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure dxTLDenegMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure dxTLInutMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure dxTLTransMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure ConsultaWeb5EnviaEmailParaDestinatrios1Click(
    Sender: TObject);
  procedure ConsultaWeb5EnviaEmailParaDestinatrios6Click(
    Sender: TObject);
  procedure edt_CodEmpKeyPress(Sender: TObject; var Key: Char);
  procedure edt_CodEmpExit(Sender: TObject);
  procedure edt_NumNNFKeyPress(Sender: TObject; var Key: Char);
  procedure cxTLExit(Sender: TObject);
  procedure cxTLMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure SBHomolMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure SBProdMouseMove(Sender: TObject; Shift: TShiftState; X,
    Y: Integer);
  procedure grp1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
  procedure EsconderRespostas1Click(Sender: TObject);
  procedure cxTLKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  procedure FormResize(Sender: TObject);
  procedure cxTLCustomDrawDataCell(Sender: TcxCustomTreeList;
    ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
    var ADone: Boolean);
  procedure cxTLInutCustomDrawDataCell(Sender: TcxCustomTreeList;
    ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
    var ADone: Boolean);
  procedure rlprvwstp1AfterPrint(Sender: TObject);
    procedure FormShow(Sender: TObject);
 private
  { Private declarations }
 public
  { Public declarations }
  function StrZero( cString: String; iInteger: Integer ): String;
  function fIniPen() : boolean;                                                 // função que prepara a query de nfe pendentes
  function EncryptStr(const S: String; Key: Word): String;                      // Encrypta
  function DecryptStr(const S: String; Key: Word): String;                      // Decrypta
  function Crypt(Action, Src: String): String;                                  // Encrypta [E] de Decrypta [D]
  function fUniMap(PServer, PLetra, PSenha :PWideChar): Boolean;                // procedure que compartilha pasta de um outro micro e mapeia com uma letra
  function fDesRed(Letra:PWideChar; Forcada:boolean): String;                   // função disconecta uma unidade mapeada via
  function fGetTempDir: String;                                                 // função que trata da criação dos DirXX.MB e os cria localmente
  function GetBuildInfo(Prog: string): string;                                  // function que retorna a versão do aplicativo
  function OnlyNumbers(var sTexto : String; sRetorno : String = 'N'): String;   // Retorna uma string numerica com somente numeros
  function fConsiste (locErr, cdloj1, cdloj2, demi1, demi2, nnf1, nnf2, ser1,
                      ser2, chv1, chv2, mod1, mod2 :String) : Boolean;          // Função de consistência para evitar duplicidade de nota
  function fGravaCCe ( nNF : Variant; cStat, xMotivo : String ) : Boolean;      // Verifica existência da CCe em uma nota fiscal, Grava e retorna status
  function fCancelaCCe( Codigo_loja, nNF, dEmi: String ) : Boolean;             // Cancela CCe com o Status (580)
  function TamArq( const Arquivo: string ): Integer;                            // Retorna o tamanhoa de um arquivo em bytes
  function AnoBi(Ano: Integer): Boolean;                                        // Calcula o o ano é bi-sexto
  function fLerGer(): Boolean;                                                  // Procedure de leitura do gerente
  function fGraGer(ChvNFe: string ; Cd_Emp, CodPed: Integer): Boolean;          // Procedure de gravação da chave no ERP
  function fVerPAG(iCodNot, iCodEmp, iCodPed: Integer): Boolean;                // Verifica permissão administrativa do ERP
  function fCanCAP(iCodNot, iCodEmp, iCodPed, iCodMot: Integer): Boolean;       // Efetua o Cancelamento Administrativo do PEDIDO
  function fVerBDG(): Boolean;                                                  // Abre o banco de dados gerente relativo e verifica a conecção
  function fVrfInuNot(iCodEmp, iCodNot, iModNot, iSerNot: Integer): Boolean;    // Veririca a existencia do pedido para o cancelamento na inutilização
  function fMensOnShow(iTipMens : Integer ; sVarMens : String): Integer;        // Define dados para mostrar a mensagem fora do onshow
  function fTemSel(cxTL : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Boolean;  // Verifica se foi selecionado algum item na treelist (novo berlin)
  function fMudaVersao( op, md: integer ): boolean;                             // Mudança de versão
  function fFusHor(HorVer, Hor_DF, FusHor :Boolean ; CdUf  :Integer ;
                           CdMun, vdhEve  :String ; dhEve :TDateTime ): TDateTime; // Redenriza o fuso horário
  function fAcessar() : boolean;                                                // function que verifica o acesso da EMP no Banco de Dados FareDac

  procedure pImpr();                                                            // Chama a procedure de impressão
  procedure MarcaBloco( cxTL : TcxTreeList; blMarca : Boolean; blTodos : Boolean = False ); // Marca bloco de seleção TreeList    // xe 10.1 Berlin
  Procedure pAtribSel( dxTL : TcxTreeList; cxTLdDem : TcxTreeListColumn;
                                           cxTLINot : TcxTreeListColumn;
                                           cxTLsMod : TcxTreeListColumn;
                                           cxTLsSer : TcxTreeListColumn;
                                           FD       : TFDQuery );               // Procedure de atribuição de seleção nas querys

  Procedure pAtuTL( cxTL : TcxTreeList; cxTLbSel  :  Tcxtreelistcolumn ;
                                        cxTLsDes  :  Tcxtreelistcolumn ;
                                        cxTLsCpf  :  Tcxtreelistcolumn ;
                                        cxTLsCod  :  Tcxtreelistcolumn ;
                                        cxTLsMod  :  Tcxtreelistcolumn ;
                                        cxTLsSer  :  Tcxtreelistcolumn ;
                                        cxTLdDem  :  Tcxtreelistcolumn ;
                                        cxTLlNot  :  Tcxtreelistcolumn ;
                                        cxTLcVal  :  Tcxtreelistcolumn ;
                                        cxTLsTrs  :  Tcxtreelistcolumn ;
                                        cxTLsCnc  :  Tcxtreelistcolumn ;
                                        cxTLsSit  :  Tcxtreelistcolumn ;
                                        cxTLsPro  :  Tcxtreelistcolumn ;
                                        cxTLsRec  :  Tcxtreelistcolumn ;
                                        cxTLsCha  :  Tcxtreelistcolumn ;
                                        FD        :  TFDQuery );                // Atualiza dados das TreeLest
  procedure GravarConfiguracao ;
  procedure LerConf1;
  procedure LerConf2;                                                           // Ler os dados dos parâmetros
  procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
  procedure LoadXML1(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
  procedure LoadXML2(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
  procedure pAtuNFe();                                                          // Função que le os arquivos textos e Atualiza nfe
  procedure pAtuNFeT();                                                         // Procedure que le os arquivos textos e Atualiza nfe
  procedure pLerEmp();                                                          // Procedure que lê o arquivo empresa
  procedure pVerPas();                                                          // Verifica a existencia das pastas e se não existirem ele as cria
  procedure pAtrCam();                                                          // Atribui caminhos do ini nas variáveis padrão e executavel
  Procedure TransmiteCCe();                                                     // Transmite CCe
  Procedure ConsultaCCe();                                                      // Consulta CCe
  Procedure EnviaEmailCCe();                                                    // Reencia emails da CCe
  procedure pGravaNFe(locErr, c01, c02, c03, c04, c05, c06, c07,
                                   c08, c09, c10, c11, c12, c13,
                                   c14, c15, c16, c17, c18, c19: String;
                              p01, p02, p03, p04, p05, p06, p07,
                                   p08, p09, p10, p11, p12, p13,
                                   p14, p15, p16, p17, p18, p19: Variant;
                              Consiste                         : Boolean);      // Procedure que grava NFe.
  procedure pEnviaEmailCan();                                                   // Procedure envia email de cancelamento
  procedure VerifCert();                                                        // Verifica o vencimento do certificado digital
  procedure GravarIni();                                                        // Grava o arquivo ini na pasta empresa setando qual certificado digital usar
  procedure LerIni();                                                           // Ler o arquivo ini na pasta empresa setando qual certificado digital usar
  procedure GravarNSU();                                                        // Grava o arquivo GBNFe.ini o NSU da manifestação
  procedure LerNSU();                                                           // Ler o arquivo GBNFe.ini o NSU da manifestação
  procedure GravarEMI();                                                        // Grava no arquivo GBNFe.ini o EMI da manifestação
  procedure LerEMI();                                                           // Ler o arquivo GBNFe.ini o EMI da manifestação
  procedure GravarPesXML();                                                     // Grava no arquivo ini o caminho de pesquisa dos xmls
  procedure LerPesXML();                                                        // Ler no arquivo ini o caminho de pesquisa dos xmls
  procedure Copia_Xml_PathLog(var Aux, TpNot : String);                         // Copia o arquivo xml pra pasta Log
  procedure pDefineRel();                                                       // Define o tipo de relatório Danfe Nfe ou NFCe Fortes Report
  procedure pDefineRelFR();                                                     // Define o tipo de relatório Danfe Nfe ou NFCe Fast Report
  procedure pEliminaXml(var Cha, TpNot : String);                               // Elimina os xmls quando a situação for null
  procedure pCopiaNChave(var FD: TFDQuery);                                     // Copia o numero da chave da nota para a área de transferência - ZQ = Qurery.                   // xe 10.1 Berlin
  procedure pCopiaNChaveMDFe(var FD: TFDQuery);                                 // Copia o numero da chave da nota manifestada MDFe para a área de transferência - ZQ = Qurery.  // xe 10.1 Berlin
  procedure pPegaChaveCW(var FD: TFDQuery ; var UFCW : String);                 // Pega a chave e consulta no web sefaz, UF                                                      // xe 10.1 Berlin
  procedure pPegaChaveCWM(var FD: TFDQuery);                                    // Pega a chave de nota do manifesto e consulta no web sefaz                                     // xe 10.1 Berlin
  procedure pExcluiXmlErro(M, S, N : String);                                   // Proc que exclui os xml da nota - M = Modelo, S = Série, N = Nota
  procedure GravarBDFD();                                                       // Grava o arquivo GBNFe.ini o Acesso Banco de Dados FareDac
  procedure LerBDFD();                                                          // Ler o arquivo GBNFe.ini o Acesso Banco de Dados FareDac
  procedure LerBDFD_E();                                                        // ler o arquivo GBNFe.ini e verifica se existe a empresa

  procedure pSelNfe(FD : TFDQuery ; CN1, CN2: Integer ; CN3: TDateTime ;
                                    CN4, CN5: string);                          // Filtra a nota
  procedure pMostraTipoAmb();                                                   // Mostra se o sistema está em produção ou em homologação
  procedure pSuporteSenha();                                                    // Entra com a senha no caso de rotina restrita ao suporte
  procedure pGAV();                                                             // Gera, Assina e Valida as notas NFe e NFCe

 end;

//-----------------------------------------------------------------------------
// by Edson Lima - 2016-6-30T1142
// Funções e procedures globais
//-----------------------------------------------------------------------------

function fValidaEmail( e_mail, EmBrancoSN: String ): Boolean;                   // Valida o campo de email com o '@' e o '.', valida em branco

//-----------------------------------------------------------------------------

const

 // by Edson Lima ; Constante para atribuição do sistema (NOME DA EMPRESA DESENVOLVEDORA) acbr by Edson Lima
 // Texto Encapsulado [ GB Informática Ltda - (62) 3998-2588 e 3998-2383 e 3997-5719 e 3995-9613 ]
 gSistema   : String = chr(71)+  // G
                       chr(66)+  // B
                       chr(32)+  //
                       chr(73)+  // I
                       chr(110)+ // n
                       chr(102)+ // f
                       chr(111)+ // o
                       chr(114)+ // r
                       chr(109)+ // m
                       chr(225)+ // á
                       chr(116)+ // t
                       chr(105)+ // i
                       chr(99)+  // c
                       chr(97)+  // a
                       chr(32)+  //
                       chr(76)+  // L
                       chr(116)+ // t
                       chr(100)+ // d
                       chr(97)+  // a
                       chr(32)+  //
                       chr(45)+  // -
                       chr(32)+  //
                       chr(40)+  // (
                       chr(54)+  // 6
                       chr(50)+  // 2
                       chr(41)+  // )
                       chr(51)+  // 3
                       chr(57)+  // 9
                       chr(57)+  // 9
                       chr(56)+  // 8
                       chr(45)+  // -
                       chr(50)+  // 2
                       chr(53)+  // 5
                       chr(56)+  // 8
                       chr(56)+  // 8
                       chr(47)+  // /
                       chr(51)+  // 3
                       chr(57)+  // 9
                       chr(57)+  // 9
                       chr(56)+  // 8
                       chr(45)+  // -
                       chr(50)+  // 2
                       chr(51)+  // 3
                       chr(56)+  // 8
                       chr(51)+  // 3
                       chr(47)+  // /
                       chr(51)+  // 3
                       chr(57)+  // 9
                       chr(57)+  // 9
                       chr(55)+  // 7
                       chr(45)+  // -
                       chr(53)+  // 5
                       chr(55)+  // 7
                       chr(49)+  // 1
                       chr(57)+  // 9
                       chr(47)+  // /
                       chr(51)+  // 3
                       chr(57)+  // 9
                       chr(57)+  // 9
                       chr(53)+  // 5
                       chr(45)+  // -
                       chr(57)+  // 9
                       chr(54)+  // 6
                       chr(49)+  // 1
                       chr(51);  // 3

 // Dados da empresa GB Informática para impressão na NFe

 c_desc_Evento: String = 'Carta de Correção';
 c_tpEvento   : String = '110110';
 c_xCondUso   : String = 'A Carta de Correção é disciplinada pelo § 1º-A do'     +
                         'art. 7º do Convênio S/N, de 15 de dezembro de 1970'    +
                         'e pode ser utilizada para regularização de erro'       +
                         'ocorrido na emissão de documento fiscal, desde que'    +
                         'o erro não esteja relacionado com: I - as variáveis'   +
                         'que determinam o valor do imposto tais como: base'     +
                         'de cálculo, alíquota, diferença de preço, quantidade,' +
                         'valor da operação ou da prestação; II - a correção de' +
                         'dados cadastrais que implique mudança do'              +
                         'remetente ou do destinatário; III - a data de emissão' +
                         'ou de saída.';

var
 FrGBNFe: TFrGBNFe;

var

 // Variáveis globais
 xAux, vAux                                                               : String;          // xAux e vAux para Query
 gCamPad,        gCamExe,        gCamRep,     gCamSch,          gCamTxt   : String;          // Recebe os caminhos Padrão, Exe, Rap, Schemas\NFe e Txt
 gCamXml,        gCamPdf,        gCamLog,     gCamBak,          gCamDoc   : String;          // Recebe os caminhos Xml, Pdf, Log, Bak e Doc
 gCodEmp,        gUsu,           gNivel,      gInstancias,      gDriExe   : String;          // Codigo da empresa, Usuário, Nível de Acesso e Instãncias
 gExpress,       gOpcao,         gNNF,        gCdloja_Consiste, gNomXML   : String;          // Parâmetros Express, Opção, Num da Nota e Código da loja p/consistência
 gCamXmlI,       gCamCert,       gSenMst,     gSenhaBD,   gdEmiConsiste   : String;          // Recebe o caminho dos, GBNFe.Ini, e a Senha Master - gSenMst, XmlI - Importação de nfe, SenhaBD
 gdEmi_Consiste, gNNF_Consiste,  gSerie_Consiste, gChave_Consiste         : String;          // Data da emissão, número da nota, serie e chave todas p/consistência
 gModelo_Consiste                                                         : string;          // modelo p/consistência
 gAtuCon                                                                  : Boolean = False; // verifica se houve atualização na consulta de exclusão
 gMostraXML                                                               : Boolean = False; // Limpa o treeview - Mostra o xml
 gVerCon                                                                  : Boolean = False; // verifica se tem nota pendente em contingência FSDA
 gVerEpe                                                                  : Boolean = False; // verifica se tem nota pendente em contingência OFFL
 gAtuFSD                                                                  : Boolean = False; // Permite a atualização de fsda
 gDuplic                                                                  : Boolean = False; // Decide se envia email ou não
 gDatConA                                                                 : tDate;           // Data da ultima contigência fsda
 gDatConB                                                                 : tDate;           // Data da ultima contigência fsda
 gCntTmp                                                                  : Integer;         // Contador de tempo pra limpar a Mensagem da StatusBar
 gExcluir                                                                 : Boolean = False; // Excluir durante consulta
 gDeuErrConsiste                                                          : Boolean = False; // Responde se deu erro na consistência
 gDeuErrXml                                                               : Boolean = False; // Responde se deu erro no xml
 gReConsulta                                                              : Boolean = False; // Re Consulta a nfe em fsda movida das transmitidas
 gOpImpr                                                                  : Boolean = False; // Seta false para opção de impressão
 gUltNSU, gTP, gDL, gRN, gRS                                              : String;          // Global para continuar processo de manifesto, NSU e os Totalizadores
 gGauge, gGauMa, gPSCert, gCEIni, gTpNot, gModelo, gSerie                 : Integer;         // Global para continuar processo gouge do manifesto: Gauge. - gPSCert para indicar se usa o 1º ou o segundo certificado digital - Tipo de Nota - Modelo de Nota
 gAutorizado                                                              : Boolean = False; // Define autorização se senha estiver correta
 gAbortar                                                                 : Boolean = False; // Global para abortar rotinas
 gVerifCert                                                               : Boolean = False; // Mostra mensagens do certificado
 gImportXML                                                               : Boolean = False; // Libera o modo de importação do xml
 gClEx                                                                    : Boolean = False; // Define se foi clic ou exit
 gDowAuto                                                                 : Boolean = False; // Define a variável global de download automático
 gCamPesXML, gBuscaChave                                                  : String;          // Caminho de importação do xml - Pega a chave para busca unitária
 gItem, gmr, gTabIndPar                                                   : Integer;         // Guarda a ultima posição do botão de seleção que foi selecionado no "tipo de evento" e gTabIndPar que controla o ultimo tab
 gSelField                                                                : Boolean = False; // Define a variável global de seleção de registros
 gItemSel                                                                 : Boolean = False; // Define estado inicial de item selecionado no manifesto
 gDataEmi                                                                 : tDate;           // Data usada para localizar os arquivos xml em uma operação
 gAnoMes                                                                  : String;          // String para pegar o ano e mês de uma variável qualquer
 gTN                                                                      : String;          // Tipo de Nota
 gTcDgXml                                                                 : Boolean = False; // Tecla digitada na rotina de bd xml
 gXmlNaoEncontrado                                                        : Boolean = False; // Verifica false xml encontrado, true xml não encortrado
 gEdtCodEmp                                                               : Boolean = False; // Seta o readonly do codigo da empresa false = permite alterar e true = inibe
 gGeraXML                                                                 : Boolean = False; // Seta o geraxml para false;
 gExcTmp                                                                  : Boolean = False; // Seta o exctmp para true;
 gCpt                                                                     : Integer = 1;     // 1=FortesReport, 2 = FastReport, Rave
 gAtualiza                                                                : Boolean = False; // Permite a verificação de atualização na entrada do sistema;
 gCnpj                                                                    : string;          // Contém o cnpj do emitente
 gDBERP, gNFe                                                             : string;          // Deverá conter o nome do Sistema Gerente Integrado
 gERP                                                                     : string;          // Enumerado TERP que contem o nome do Sistema ERP
 gCodMtC, gCodMtD, gCodMtI                                                : Integer;         // Deve conter os Códigos de cancelamento, denegação e inutuilização
 gNomMtC, gNomMtD, gNomMtI                                                : string;          // Deve conter os Nomes   do cancelamento, denegação e inutuilização
 gChvNFe                                                                  : string;          // Chave da nota
 gCd_Emp                                                                  : Integer;         // Codigo da loja
 gCodPed                                                                  : Integer;         // Codigo do Pedido no ERP
 gCdPed                                                                   : String;          // Codigo do Pedido para sp_calcula_digito_chave
 gTemLogo                                                                 : Boolean = True;  // Verifica se tem logo marca e dispara mensagem se não tiver
 gTemSqlEmp                                                               : Boolean = False; // Verifica se tem dados do sql registrados para aquela empresa
 gSubtSoma                                                                : Boolean = False; // (Subtrai = true) ou (soma = false) um na quantidade de mde selecionado
 gdhRegEvento                                                             : TDateTimeAlias;  // Data e hora de registro para CCe.
 gImprimindoCCe                                                           : Boolean = True;  // Define se está imprimindo CCe e não precisa mostrar na tela a consulta
 gAbortarXML                                                              : Boolean = False; // Será usado para abortar o processo de salvar o xml
 gConsiste                                                                : Boolean = true;  // Define se a consulta consiste [ true / false ]
 gSimpObg                                                                 : Boolean = false; // Define se a consulta consiste [ true / false ]
 gNãoSalvouIni                                                            : Boolean = False; // Define se o arquivo ini foi salvo ou não
 gLoginPrompt_NFe, gOSAuthent_NFe, gDriverID_NFe, gDatabase_NFe,
 gServer_NFe, gUserName_NFe, gPassword_NFe, gConnected_NFe,
 gCamBD_NFe                                                               : String;
 gTpERP_Ger, gLoginPrompt_Ger, gOSAuthent_Ger, gDriverID_Ger,
 gDatabase_Ger, gServer_Ger, gUserName_Ger, gPassword_Ger,
 gConnected_Ger, gCamBD_Ger                                               : String;

 // Variáveis migradas
 _nota                                                                    : ShortString;    //String[15];
 _demi                                                                    : tdate;
 _chave                                                                   : ShortString;    //string[60];
 _linhas                                                                  : integer;
 _tipo_emissao                                                            : ShortString;    //string[15];
 xjustificativa                                                           : string;
 _tpemissao                                                               : ShortString;    //string[1];

 ipQtdPsq, ilCodEmp                                                       : Integer;
 spCampos, spCond, spOrdem, tpTabPsq                                      : String;
 spResult                                                                 : Array of Variant;

implementation

uses
{$IFNDEF ACBrNFeOpenSSL} ACBrCAPICOM_TLB, JwaWinCrypt, ACBrMSXML2_TLB,  {$ENDIF}
     FrPar_U, FrInut_U, DMFD_U, ufrmStatus, ACBrNFeNotasFiscais,
     FrBackup_U, FrCCe_U, FrBuscaNota_U, FrXML_U, FrBuscaChave_U, FrConsManif_U,
     FrImportXML_U, ACBrDFeSSL, FrConWeb_U, pcnNFe, FrContab_U,
     ACBrNFeWebServices, pcnRetConsSitNFe, pcnRetEnvEventoNFe, pcnEventoNFe,
     FrEmail_U, FrBDFD_U, BDFD_U;

{$R *.dfm}

function Is64Bits: Boolean;
const
  PROCESSOR_ARCHITECTURE_INTEL = $0000;
  PROCESSOR_ARCHITECTURE_IA64 = $0006;
  PROCESSOR_ARCHITECTURE_AMD64 = $0009;
  PROCESSOR_ARCHITECTURE_UNKNOWN = $FFFF;
var
  xSysInfo: TSystemInfo;
begin
  GetNativeSystemInfo(xSysInfo);
  case xSysInfo.wProcessorArchitecture of
    PROCESSOR_ARCHITECTURE_AMD64, PROCESSOR_ARCHITECTURE_IA64:
      Result := True;
  else
    Result := False;
  end;
end;

function IsWindows64: Boolean;

type
  TIsWow64Process = function(AHandle:THandle; var AIsWow64: BOOL): BOOL; stdcall;
var
  vKernel32Handle    : DWORD;
  vIsWow64Process    : TIsWow64Process;
  vIsWow64           : BOOL;

begin

  Result := False;

  vKernel32Handle := LoadLibrary('kernel32.dll');
  if (vKernel32Handle = 0) then Exit;

  try

  @vIsWow64Process := GetProcAddress(vKernel32Handle, 'IsWow64Process');
  if not Assigned(vIsWow64Process) then Exit;

  vIsWow64 := False;
  if (vIsWow64Process(GetCurrentProcess, vIsWow64)) then
    Result := vIsWow64;

  finally
    FreeLibrary(vKernel32Handle);
  end;
end;

//------------------------------------------------------------------------------
//------ Gera e envia o arquivo xml
//------------------------------------------------------------------------------
procedure TFrGBNFe.geraenvianf(Sender: TObject);
var
 aux, xAux, vCon      : string;
 i, c, iCodPed        : integer;
 vCfop                : string;
 vCnpjEmit, vCnpjCert : string;
 vAutXMLCNPJCPFALL    : string;
 vAutXMLCNPJCPFWORD   : string;

begin

 if ( gCpt = 1 ) then
  pDefineRel()                                                                  // Define o tipo de Relatório FortesReport
 else
  pDefineRelFR();                                                               // Define o tipo de Relatório FastReport

 fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                                  // Mudança de versão

 vCfop := '';

 aux := '';
 aux := edt_CodEmp.Text + ',' + '''' + _nota + '''' + ',' + '''';
 aux := aux + FormatDateTime('yyyy/mm/dd', _demi) + '''' + ',';
 aux := aux + '''' + IntToStr(gModelo) + '''' + ',';
 aux := aux + '''' + IntToStr(gSerie)  + '''';

 DMFD.FDQuery1.Close;
 DMFD.FDQuery1.SQL.Clear;
 DMFD.FDQuery1.SQL.Add( 'exec sp_le_nfe ' + aux );
 DMFD.FDQuery1.open;

 vMens := '';

 // Verificando se não foi localizada nenhuma nota
 if DMFD.FDQuery1.IsEmpty then
  begin

   Application.Messagebox('Não foi encontrado nenhuma nota!','Atenção!',mb_iconstop+mb_ok);
   Exit;

  end

 else

  begin
   DMFD.FDQuery1.First;
   While not DMFD.FDQuery1.eof do
    begin
     ACBrNFe1.NotasFiscais.Clear;

     with ACBrNFe1.NotasFiscais.Add.NFe do
      begin

       vAux := _nota;

       //-----------------------------------------------------------------------
       // Informações do Responsável Técnico pelo NF-e NFC-e - insert dos dados
       if ( FrPar.chk_RespTec.Checked ) then
        begin

         ACBrNFe1.Configuracoes.RespTec.IdCSRT := StrToIntDef(FrPar.edt_IdResTec.Text, 0);
         ACBrNFe1.Configuracoes.RespTec.CSRT   := Trim(FrPar.edt_CSRTResTec.Text);

         infRespTec.CNPJ     := FrPar.edt_CNPJResTec.Text;
         infRespTec.xContato := Trim(FrPar.edt_NomeResTec.Text);
         infRespTec.email    := Trim(FrPar.edt_emaildResTec.Text);
         infRespTec.fone     := Trim(FrPar.edt_FoneResTec.Text);

        end;

       //-----------------------------------------------------------------------

       // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
       if ( (DMFD.FDQuery1['nfe_CodPed'] = null) or
            (DMFD.FDQuery1['nfe_CodPed'] = 0) )  then
        gCdPed := VarToStr(DMFD.FDQuery1['nfe_NNf'])
       else
        begin
         if ( Length( VarToStr(DMFD.FDQuery1['nfe_CodPed'])) > 8 ) then
          gCdPed := ( Copy(VarToStr(DMFD.FDQuery1['nfe_CodPed']),
                    Length(VarToStr(DMFD.FDQuery1['nfe_CodPed'])) - 8 + 1, 8) )
         else
          gCdPed := VarToStr(DMFD.FDQuery1['nfe_CodPed']);
        end;

       //infNFe.ID     := vAux;
       Ide.natOp     := DMFD.FDQuery1['nfe_natOp'];
       Ide.nNF       := StrToIntDef(DMFD.FDQuery1['nfe_nnf'], 0);
       Ide.cNF       := StrToIntDef(gCdPed, 0);
       Ide.modelo    := StrToIntDef(DMFD.FDQuery1['nfe_Modelo'], 0);
       gModelo       := StrToIntDef(DMFD.FDQuery1['nfe_Modelo'], 0);
       gSerie        := StrToIntDef(DMFD.FDQuery1['nfe_Serie'], 0);

       if ( (Trim(DMFD.FDQuery1['nfe_serie']) = '') or (DMFD.FDQuery1['nfe_serie'] = null) ) then
        begin
         Ide.serie        :=  1;
         gSerie_Consiste  := '1';
         gSerie           := 1;
        end
       else
        Ide.serie     := StrToIntDef(DMFD.FDQuery1['nfe_serie'], 0);

       // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
       gCdPed := VarToStr(DMFD.FDQuery1['nfe_CodPed']);

       xAux := '';
       xAux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQuery1['nfe_nnf']) +
               '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
       xAux := xAux + FormatDateTime('yyyy/mm/dd',
               VarToDateTime(DMFD.FDQuery1['nfe_demi'])) + '''' + ',' + '''';
       xAux := xAux + IntToStr(gModelo) + '''' + ',' + '''';
       xAux := xAux + VarToStr(DMFD.FDQuery1['nfe_Serie']) + '''' + ',' + '''';
       xAux := xAux + gCdPed + '''';

       DMFD.FDQuery7.Close;
       DMFD.FDQuery7.SQL.Clear;
       DMFD.FDQuery7.SQL.Add( 'exec sp_calcula_digito_chave ' + xAux );
       DMFD.FDQuery7.open;

       // by Edson Lima 2015-12-9T1007 - trunk2 novo
       xAux := '';
       if not DMFD.FDQuery7.IsEmpty then
        xAux := vartostr(DMFD.FDQuery7['chave']);

       xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';

       if (gModelo = 65) then
        Ide.dEmi := (DMFD.FDQuery1['nfe_DatNFCe'])
       else
        Ide.dEmi := (DMFD.FDQuery1['nfe_demi']);

       gDataEmi := Ide.dEmi;                                                    // by Edson Lima 2015-10-14T1107 - trunk2 novo

       if ( gCpt = 1 ) then
        pDefineRel()                                                            // Define o tipo de Relatório FortesReport
       else
        pDefineRelFR();                                                         // Define o tipo de Relatório FastReport

       if ((vartostr(DMFD.FDQuery1['nfe_dSaiEnt']) <> '') and
           (DMFD.FDQuery1['nfe_dSaiEnt'] > StrToDateTime('31/12/2012'))) then
        Ide.dSaiEnt := DMFD.FDQuery1['nfe_dSaiEnt']
       else
        Ide.dSaiEnt   := now();                                                 // By Edson ; 2014/3/7T1405 ; Inserido nesta data referente a implementação da ver3.10

       If FrPar.rgTipoAmb.ItemIndex = 0 then
        Ide.tpAmb := taProducao
       else
        Ide.tpAmb := taHomologacao;

       Ide.tpNF       := tnSaida;

       if vartostr(DMFD.FDQuery1['nfe_tpNF']) = '0' then
        Ide.tpNF      := tnEntrada;

       // by Edson Lima ; 2015-4-1T1251 ; [ idDest ]----------------------------
       DMFD.FDQryGeral1.Close;
       DMFD.FDQryGeral1.SQL.Clear;
       DMFD.FDQryGeral1.SQL.Add( 'Select top 1 cfop                              ' );
       DMFD.FDQryGeral1.SQL.Add( 'from nfe_itens                                 ' );
       DMFD.FDQryGeral1.SQL.Add( 'where cfop > ''4999'' and  cfop < 6000         ' );
       DMFD.FDQryGeral1.SQL.Add( 'and   codigo_loja = :parm1                     ' );
       DMFD.FDQryGeral1.SQL.Add( 'and   demi        = :parm2                     ' );
       DMFD.FDQryGeral1.SQL.Add( 'and   nnf         = :parm3                     ' );
       DMFD.FDQryGeral1.SQL.Add( 'and   modelo      = :parm4                     ' );
       DMFD.FDQryGeral1.SQL.Add( 'and   serie       = :parm5                     ' );
       DMFD.FDQryGeral1.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQryGeral1.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQryGeral1.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQryGeral1.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQryGeral1.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQryGeral1.Open;

       if (DMFD.FDQryGeral1['cfop'] <> null) then
        vCfop := DMFD.FDQryGeral1['cfop']
       else
        vCfop := '0';

       //-----------------------------------------------------------------------
       // Verifica se idDest é nulo, casos onde o gerpa ainda não foi atualizado

       if ( (DMFD.FDQuery1['nfe_idDest'] = null) or (DMFD.FDQuery1['nfe_idDest'] = 0) ) then
        begin

         if ( ((StrToIntDef(vCfop, 0) > 4999) and (StrToIntDef(vCfop, 0) < 6000)) and
                   (DMFD.FDQuery4['uf'] <> DMFD.FDQuery1['des_uf']) ) then
           Ide.idDest := doInterna

         else if ( DMFD.FDQuery1['des_uf'] = 'EX' ) then
          Ide.idDest := doExterior

         else if ( DMFD.FDQuery4['uf'] <> DMFD.FDQuery1['des_uf'] ) then
          Ide.idDest := doInterestadual

         else
          Ide.idDest := doInterna;

        end
       else
        begin

         // Verificando se o cfop é especifico para combustivel para op. interna p/ clientes interestadual
         if ( vCfop = '5667' ) and ( DMFD.FDQuery4['uf'] <> DMFD.FDQuery1['des_uf'] ) then

           Ide.idDest := doInterna

         else
          begin

           case DMFD.FDQuery1.FieldByName('nfe_idDest').AsString[1]  of

            '1' :  Ide.idDest := doInterna;
            '2' :  Ide.idDest := doInterestadual;
            '3' :  Ide.idDest := doExterior;

           end;

          end;

        end;

       //-----------------------------------------------------------------------
       // by Edson Lima ; 2016-1-22T1019 ; Indica operação com Consumidor Final
       // e do Indicador de presença do comprador no estabelecimento comercial
       // ou no momento da operação e o indicador da forma de pagamento
       //-----------------------------------------------------------------------

       // indFinal
//       if not ( DMFD.FDQuery1['nfe_indFinal'] = null ) then
//        begin

         case ( StrToIntDef(DMFD.FDQuery1['nfe_indFinal'], 0) ) of
          0:    Ide.indFinal := cfNao;
          1:    Ide.indFinal := cfConsumidorFinal;
          else  Ide.indFinal := cfNao;
         end;

//        end;

       // indPres
       if not ( DMFD.FDQuery1['nfe_indPres'] = null ) then
        begin

         case FrPar.cbb2.ItemIndex of

          0 :                                                                   // ve3131

           case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
            0:    Ide.indPres := pcNao;
            1:    Ide.indPres := pcPresencial;
            2:    Ide.indPres := pcInternet;
            3:    Ide.indPres := pcTeleatendimento;
            4:    Ide.indPres := pcEntregaDomicilio;
            9:    Ide.indPres := pcOutros;
            else  Ide.indPres := pcOutros;
           end;

          1 :                                                                   // ve4040

           case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
            0:    Ide.indPres := pcNao;
            1:    Ide.indPres := pcPresencial;
            2:    Ide.indPres := pcInternet;
            3:    Ide.indPres := pcTeleatendimento;
            4:    Ide.indPres := pcEntregaDomicilio;
            5:    Ide.indPres := pcPresencialForaEstabelecimento;
            9:    Ide.indPres := pcOutros;
            else  Ide.indPres := pcOutros;
           end;

          2 :                                                                   // ve4031

           begin

            if ( gModelo = 55 ) then
             begin

              case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
               0:    Ide.indPres := pcNao;
               1:    Ide.indPres := pcPresencial;
               2:    Ide.indPres := pcInternet;
               3:    Ide.indPres := pcTeleatendimento;
               4:    Ide.indPres := pcEntregaDomicilio;
               5:    Ide.indPres := pcPresencialForaEstabelecimento;
               9:    Ide.indPres := pcOutros;
               else  Ide.indPres := pcOutros;
              end;

             end

            else

             begin

              case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
               0:    Ide.indPres := pcNao;
               1:    Ide.indPres := pcPresencial;
               2:    Ide.indPres := pcInternet;
               3:    Ide.indPres := pcTeleatendimento;
               4:    Ide.indPres := pcEntregaDomicilio;
               9:    Ide.indPres := pcOutros;
               else  Ide.indPres := pcOutros;
              end;

             end;

           end;

          3 :                                                                   // ve3140

           begin

            if ( gModelo = 55 ) then
             begin

              case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
               0:    Ide.indPres := pcNao;
               1:    Ide.indPres := pcPresencial;
               2:    Ide.indPres := pcInternet;
               3:    Ide.indPres := pcTeleatendimento;
               4:    Ide.indPres := pcEntregaDomicilio;
               9:    Ide.indPres := pcOutros;
               else  Ide.indPres := pcOutros;
              end;

             end

            else

             begin

              case (StrToIntDef(DMFD.FDQuery1['nfe_indPres'], 0)) of
               0:    Ide.indPres := pcNao;
               1:    Ide.indPres := pcPresencial;
               2:    Ide.indPres := pcInternet;
               3:    Ide.indPres := pcTeleatendimento;
               4:    Ide.indPres := pcEntregaDomicilio;
               5:    Ide.indPres := pcPresencialForaEstabelecimento;
               9:    Ide.indPres := pcOutros;
               else  Ide.indPres := pcOutros;
              end;

             end;

           end;

         end;

        end;

       //-----------------------------------------------------------------------

       if (gModelo = 65) then
        begin
         Ide.tpImp     := tiNFCe;
         Ide.indFinal  := cfConsumidorFinal;
         Ide.indPres   := pcPresencial;

         case ( FrPar.cbb2.ItemIndex) of

          0 : Ide.indPag    := ipVista;                                         // ve310

          1 : ;// Retirado a partir da ve400;                                   // ve400

          2 : Ide.indPag    := ipVista;                                         // ve310

          3 : ;// Retirado a partir da ve400;                                   // ve400

         end;

        end
       else if (gModelo = 55) then
        begin

         Ide.tpImp     := tiRetrato;

        end;

       Ide.tpEmis    := teNORMAL;

       ACBrNFe1.Configuracoes.Geral.FormaEmissao := teNORMAL;

       if ((_tipo_emissao = 'fsda') and (gModelo = 55)) then
        begin
         ACBrNFe1.Configuracoes.Geral.FormaEmissao := teFSDA;
         Ide.tpEmis                                := teFSDA;

         if vartostr(DMFD.FDQuery1['nfe_demi']) <> '' then
          Ide.dhCont                               := DMFD.FDQuery1['nfe_demi']
         else
          Ide.dhCont := now();

         Ide.xJust                                 := xJustificativa;
        end
       else if ((_tipo_emissao = 'OffL') and (gModelo = 65)) then
        begin
         ACBrNFe1.Configuracoes.Geral.FormaEmissao := teOffLine;
         Ide.tpEmis                                := teOffLine;

         if vartostr(DMFD.FDQuery1['nfe_DatNFCe']) <> '' then
          Ide.dhCont                             := DMFD.FDQuery1['nfe_DatNFCe']
         else
          Ide.dhCont := now();

         Ide.xJust                                 := xJustificativa;

        end;

       //**********************************************************************
       // by Edson ; 20/6/2012 ; 08:45 ; Marca a nota com ENVI antes de enviar*
       if _tipo_emissao = 'normal' then
        begin
         // by Edson Lima ; 2013/03/12 ; 14:23 ; Se não tiver data_hora_recebimento
         // grava a data atual, caso contrario mantém: Centralizar os updates em um só lugar
         if (VarToStr(DMFD.FDQuery1['nfe_data_hora_recebimento']) = '') then
          pGravaNFe('001', 'situacao',
                           'motivo',
                           'data_hora_recebimento',
                           'UsuTrs',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           'codigo_loja',
                           'demi',
                           'nnf',
                           'serie',
                           'chave_nfe',
                           'modelo',                                            // Nome dos campos
                           'ENVI',
                           'Tentativa de envio sem sucesso',
                           FormatDateTime('yyyy/mm/dd hh:nn:ss', now()),
                           gUsu,
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           edt_CodEmp.Text, FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']),
                           DMFD.FDQuery1['nfe_nnf'],
                           DMFD.FDQuery1['nfe_serie'],
                           '',
                           gModelo,                                             // Conteúdo dos campos
                           true)                                                // Consiste [true/false]
         else
          pGravaNFe('001', 'situacao',
                           'motivo',
                           'UsuTrs',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           'codigo_loja',
                           'demi',
                           'nnf',
                           'serie',
                           'chave_nfe',
                           'modelo',                                            // Nome dos campos
                           'ENVI',
                           'Tentativa de envio sem sucesso',
                           gUsu,
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           edt_CodEmp.Text, FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']),
                           DMFD.FDQuery1['nfe_nnf'],
                           DMFD.FDQuery1['nfe_serie'],
                           '',
                           gModelo,                                             // Conteúdo dos campos
                           true);                                               // Consiste [true/false]
        end;
       //**********************************************************************

       Ide.cUF       := strtointDef(DMFD.FDQuery4['codigo_uf'], 0);
       Ide.cMunFG    := StrToIntDef(DMFD.FDQuery4['codigo_municipio'], 0);

       if DMFD.FDQuery1['nfe_finalidade'] = 1 then Ide.finNFe := fnNormal;
       if DMFD.FDQuery1['nfe_finalidade'] = 2 then Ide.finNFe := fnComplementar;
       if DMFD.FDQuery1['nfe_finalidade'] = 3 then Ide.finNFe := fnAjuste;
       if DMFD.FDQuery1['nfe_finalidade'] = 4 then Ide.finNFe := fnDevolucao;   // by Edson Lima ; 2015-4-1T1328 ; linha imcluida para Devolução

       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                                                             ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                                                               ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_referenciada_mod1 t1                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.nnf = t2.nnf and t1.demi = t2.demi and ' );
       DMFD.FDQuery2.SQL.Add( '                     t1.modelo = t2.modelo                                                         ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.codigo_loja = :parm1                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.demi        = :parm2                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.nnf         = :parm3                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.modelo      = :parm4                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.serie       = :parm5                                                                      ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;
       if not DMFD.FDQuery2.IsEmpty then
        begin
         DMFD.FDQuery2.First;
         While not DMFD.FDQuery2.eof do
          begin
           with Ide.NFref.Add do
            begin

             // By Edson Lima ; 2015-4-2T0938 ; linha incluida
             if ( (strtointDef(DMFD.FDQuery2['mod'], 0) = 55) or
                  (strtointDef(DMFD.FDQuery2['mod'], 0) = 65) ) then
               RefNFe         := DMFD.FDQuery2['chave_nfe']
             else             // Mod 1/1A
              begin
               RefNF.cUF      := strtointDef(DMFD.FDQuery2['uf'], 0);
               RefNF.AAMM     := DMFD.FDQuery2['aamm'];
               RefNF.CNPJ     := DMFD.FDQuery2['cnpj'];
               RefNF.modelo   := strtointDef(DMFD.FDQuery2['mod'], 0);
               RefNF.serie    := strtointDef(DMFD.FDQuery2['Ser'], 0);
               RefNF.nNF      := strtointDef(DMFD.FDQuery2['r_nnf'], 0);
              end;

            end;

         DMFD.FDQuery2.next;
        end;
       end;

       //nfe_referenciada_prural
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                         ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                           ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_referenciada_prural t1                                ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.nnf = t2.nnf and t1.demi = t2.demi and t1.modelo = t2.modelo ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.codigo_loja = :parm1                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.demi        = :parm2                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.nnf         = :parm3                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.modelo      = :parm4                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.serie       = :parm5                                  ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;
       if not DMFD.FDQuery2.IsEmpty then begin
         DMFD.FDQuery2.First;
         While not DMFD.FDQuery2.eof do begin
          with Ide.NFref.Add do
           begin

            RefNFP.cUF     := strtointDef(DMFD.FDQuery2['uf'], 0);
            RefNFP.AAMM    := DMFD.FDQuery2['aamm'];
            RefNFP.CNPJCPF := DMFD.FDQuery2['cnpj'];
            RefNFP.IE      := DMFD.FDQuery2['insc_estadual'];
            RefNFP.modelo  := DMFD.FDQuery2['mod'];
            RefNFP.serie   := strtointDef(DMFD.FDQuery2['Ser'], 0);
            RefNFP.nNF     := strtointDef(DMFD.FDQuery2['r_nnf'], 0);

           end;

          DMFD.FDQuery2.next;
         end;
       end;

       //nfe_referenciada_cupon
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                                                                                    ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                                                                                      ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_referenciada_cupon t1                                                                                            ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t1.codigo_loja = t2.codigo_loja and t1.nnf = t2.nnf and t1.demi = t2.demi and t1.modelo = t2.modelo  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.codigo_loja = :parm1                                                                                             ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.demi        = :parm2                                                                                             ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.nnf         = :parm3                                                                                             ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.modelo      = :parm4                                                                                             ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.serie       = :parm5                                                                                             ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;
       if not DMFD.FDQuery2.IsEmpty then begin
         DMFD.FDQuery2.First;
         While not DMFD.FDQuery2.eof do begin
           with Ide.NFref.Add do
             begin
               if DMFD.FDQuery2['mod'] = ''   then RefECF.modelo  := ECFModRefVazio;
               if DMFD.FDQuery2['mod'] = '2B' then RefECF.modelo  := ECFModRef2B;
               if DMFD.FDQuery2['mod'] = '2C' then RefECF.modelo  := ECFModRef2C;
               if DMFD.FDQuery2['mod'] = '2D' then RefECF.modelo  := ECFModRef2D;
               RefECF.nECF    := DMFD.FDQuery2['ecf'];
               RefECF.ncoo    := DMFD.FDQuery2['coo'];
             end;

           DMFD.FDQuery2.next;
         end;
       end;

       Emit.CNPJCPF           := DMFD.FDQuery1['emi_cnpj'];
       Emit.IE                := DMFD.FDQuery1['emi_insc_estadual'];
       FrGBNFe.ACBrNFe1.SSL.NumeroSerie := DMFD.FDQuery1['emi_Certificado_NumSerie'];
       FrGBNFe.ACBrNFe1.SSL.CarregarCertificado;

       vCnpjEmit := ( Copy(Trim(DMFD.FDQuery4['cnpj']), 1, 8) );
       vCnpjCert := ( Copy(Trim(FrGBNFe.ACBrNFe1.SSL.CertCNPJ), 1, 8) );
       if ( vCnpjEmit <> vCnpjCert ) then
        Application.Messagebox('Obs: O CNPJ do emitente está diferente do' + chr(13) +
                               'CNPJ do certificado digital que foi setado' + chr(13) +
                               'no parametros do emissor!','Atenção!',mb_iconstop+mb_ok);

       // by Edson Lima ; 2013/02/25 ; 09:48 - Condição criada nesta data
       if (DMFD.FDQuery1['des_uf'] = DMFD.FDQuery4['ufSbt']) then
        if ( vCfop <> '5667' ) then
         Emit.IEST             := vartostr(DMFD.FDQuery4['insc_estadual_subs']);

       Emit.xNome             := DMFD.FDQuery4['razao_social'];
       Emit.xFant             := DMFD.FDQuery4['nome_fantasia'];
       Emit.EnderEmit.fone    := DMFD.FDQuery4['fone'];
       Emit.EnderEmit.CEP     := StrToIntDef(DMFD.FDQuery4['cep'], 0);
       Emit.EnderEmit.xLgr    := DMFD.FDQuery4['endereco'];
       if ((DMFD.FDQuery4['numero'] = null) or (DMFD.FDQuery4['numero'] = '')) then
        Emit.EnderEmit.nro     := '0'
       else
        Emit.EnderEmit.nro     := DMFD.FDQuery4['numero'];
       if (DMFD.FDQuery4['complemento'] = null) then
        Emit.EnderEmit.xCpl    := ''
       else
        Emit.EnderEmit.xCpl    := DMFD.FDQuery4['complemento'];
       Emit.EnderEmit.xBairro := DMFD.FDQuery4['bairro'];
       Emit.EnderEmit.cMun    := StrToIntDef(DMFD.FDQuery4['codigo_municipio'], 0);
       Emit.EnderEmit.xMun    := DMFD.FDQuery4['municipio'];
       Emit.EnderEmit.UF      := DMFD.FDQuery4['uf'];
       Emit.enderEmit.cPais   := strtointDef(DMFD.FDQuery4['codigo_pais'], 0);//1058;
       Emit.enderEmit.xPais   := DMFD.FDQuery4['nome_pais'];//'BRASIL';

       if DMFD.FDQuery4['regime_tributario'] = 1 then
        Emit.CRT  := crtSimplesNacional;
       if DMFD.FDQuery4['regime_tributario'] = 2 then
        Emit.CRT  := crtSimplesExcessoReceita;
       if DMFD.FDQuery4['regime_tributario'] = 3 then
        Emit.CRT  := crtRegimeNormal;

       if Ide.tpAmb = taHomologacao then

        begin
         if (DMFD.FDQuery1['des_uf'] = 'EX') then

          Dest.CNPJCPF           := ''

         else

          begin

           if gModelo = 65 then

            begin

             if ( (DMFD.FDQuery1['nfe_CPFNFCe']       = null) or
                  (trim(DMFD.FDQuery1['nfe_CPFNFCe']) = '') ) then
              Dest.CNPJCPF           := OnlyNumber('999999991-31')
             else
              Dest.CNPJCPF           := OnlyNumber(VarToStr(DMFD.FDQuery1['nfe_CPFNFCe']));

             if ( (Trim(DMFD.FDQuery1['des_bairro']) = '') or (DMFD.FDQuery1['des_bairro'] = null) ) then
              Dest.EnderDest.xBairro := 'Centro'
             else
              Dest.EnderDest.xBairro := DMFD.FDQuery1['des_bairro'];

             if ( (Trim(DMFD.FDQuery1['des_endereco']) = '') or (DMFD.FDQuery1['des_endereco'] = null) ) then
              begin
               Dest.EnderDest.CEP     := strtointDef(DMFD.FDQuery1['des_cep'], 0);
               Dest.EnderDest.xLgr    := 'Rua';
               Dest.EnderDest.nro     := '';
               Dest.EnderDest.xCpl    := '';
               Dest.EnderDest.cMun    := strtointDef(DMFD.FDQuery1['des_codigo_municipio'], 0);
               Dest.EnderDest.xMun    := DMFD.FDQuery1['des_municipio'];
               Dest.EnderDest.UF      := DMFD.FDQuery1['des_uf'];
               Dest.EnderDest.Fone    := DMFD.FDQuery1['des_fone'];;
              end;

            end

           else    // Caso 55 em homologação

            begin
             Dest.CNPJCPF           := OnlyNumber(VarToStr(DMFD.FDQuery1['des_cnpj']));
             Dest.EnderDest.CEP     := strtointDef(DMFD.FDQuery1['des_cep'], 0);
             Dest.EnderDest.xLgr    := DMFD.FDQuery1['des_endereco'];
             Dest.EnderDest.nro     := DMFD.FDQuery1['des_numero'];
             Dest.EnderDest.xCpl    := '';
             Dest.EnderDest.xBairro := DMFD.FDQuery1['des_bairro'];
             Dest.EnderDest.cMun    := strtointDef(DMFD.FDQuery1['des_codigo_municipio'], 0);
             Dest.EnderDest.xMun    := DMFD.FDQuery1['des_municipio'];
             Dest.EnderDest.UF      := DMFD.FDQuery1['des_uf'];
             Dest.EnderDest.Fone    := DMFD.FDQuery1['des_fone'];
            end;

          end;

        end

       else     // Caso Produção

        begin

         if (DMFD.FDQuery1['des_uf'] = 'EX') then

           Dest.CNPJCPF           := ''

         else if gModelo = 65 then

          begin

           if ( (DMFD.FDQuery1['nfe_CPFNFCe']       = null) or
                (trim(DMFD.FDQuery1['nfe_CPFNFCe']) = '') ) then
            begin
             if ( (Trim(DMFD.FDQuery1['des_cnpj']) = '')               or
                  (Trim(DMFD.FDQuery1['des_cnpj']) = '00000000000')    or
                  (Trim(DMFD.FDQuery1['des_cnpj']) = '00000000000000') or
                  (DMFD.FDQuery1['des_cnpj'] = null) ) then
              Dest.CNPJCPF         := OnlyNumber('')
             else
              Dest.CNPJCPF         := OnlyNumber(DMFD.FDQuery1['des_cnpj']);
            end
           else
            Dest.CNPJCPF           := OnlyNumber(VarToStr(DMFD.FDQuery1['nfe_CPFNFCe']));

           if ( (Trim(DMFD.FDQuery1['des_bairro']) = '') or (DMFD.FDQuery1['des_bairro'] = null) ) then
            Dest.EnderDest.xBairro := 'Centro'
           else
            Dest.EnderDest.xBairro := DMFD.FDQuery1['des_bairro'];

           if ( (Trim(DMFD.FDQuery1['des_endereco']) = '') or (DMFD.FDQuery1['des_endereco'] = null) ) then
            begin
             Dest.EnderDest.CEP     := strtointDef(DMFD.FDQuery1['des_cep'], 0);
             Dest.EnderDest.xLgr    := 'Rua';
             Dest.EnderDest.nro     := '';
             Dest.EnderDest.xCpl    := '';
             Dest.EnderDest.cMun    := strtointDef(DMFD.FDQuery1['des_codigo_municipio'], 0);
             Dest.EnderDest.xMun    := DMFD.FDQuery1['des_municipio'];
             Dest.EnderDest.UF      := DMFD.FDQuery1['des_uf'];
             Dest.EnderDest.Fone    := DMFD.FDQuery1['des_fone'];;
            end;

          end

          else  // Caso do Modelo = 55

           begin
            Dest.CNPJCPF           := OnlyNumber(VarToStr(DMFD.FDQuery1['des_cnpj']));
            Dest.EnderDest.CEP     := strtointDef(DMFD.FDQuery1['des_cep'], 0);
            Dest.EnderDest.xLgr    := DMFD.FDQuery1['des_endereco'];
            Dest.EnderDest.nro     := DMFD.FDQuery1['des_numero'];
            Dest.EnderDest.xCpl    := '';
            Dest.EnderDest.xBairro := DMFD.FDQuery1['des_bairro'];
            Dest.EnderDest.cMun    := strtointDef(DMFD.FDQuery1['des_codigo_municipio'], 0);
            Dest.EnderDest.xMun    := DMFD.FDQuery1['des_municipio'];
            Dest.EnderDest.UF      := DMFD.FDQuery1['des_uf'];
            Dest.EnderDest.Fone    := DMFD.FDQuery1['des_fone'];
           end
         end;

       (* ----------------------------------------------------------------------------------------------------------------- *)
       (* TAG de grupo de identificação do Local de retirada - <retirada> - Ocorrência 0-N                                  *)
       (* Poderá ser implementado no futuro                                                                                 *)
       (* ----------------------------------------------------------------------------------------------------------------- *)

                                   // Informar os valores desse grupo somente se o  endereço de
                                   // retirada for diferente do endereço do remetente.
                                   // Assim se retirada.xLgr <> '' o gerador grava o grupo no XML

       //Retirada.CNPJCPF := '';     // F02 - CNPJ
       //Retirada.xLgr := '';        // F03 - Logradouro
       //Retirada.nro := '';         // F04 - Número
       //Retirada.xCpl := '';        // F05 - Complemento
       //Retirada.xBairro := '';     // F06 - Bairro
       //Retirada.cMun := 0;         // F07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
       //Retirada.xMun := '';        // F08 - Nome do município   ('EXTERIOR' para operações com o exterior)
       //Retirada.UF := '';          // F09 - Sigla da UF         ('EX' para operações com o exterior.)

       (* ----------------------------------------------------------------------------------------------------------------- *)
       (* TAG de grupo de identificação do Local de entrega - <entrega> - Ocorrência 0-N                                    *)
       (* Poderá ser implementado no futuro                                                                                 *)
       (* ----------------------------------------------------------------------------------------------------------------- *)

                                   // Informar os valores desse grupo somente se o
                                   // endereço de entrega for diferente do endereço do destinatario.
                                   // Assim se entrega.xLgr <> '' o gerador grava o grupo no XML

       //Entrega.CNPJCPF := '';      // G02 - CNPJ
       //Entrega.xLgr := '';         // G03 - Logradouro
       //Entrega.nro := '';          // G04 - Número
       //Entrega.xCpl := '';         // G05 - Complemento
       //Entrega.xBairro := '';      // G06 - Bairro
       //Entrega.cMun := 0;          // G07 - Código do município (Tabela do IBGE - '9999999' para operações com o exterior))
       //Entrega.xMun := '';         // G08 - Nome do município   ('EXTERIOR' para operações com o exterior)
       //Entrega.UF := '';           // G09 - Sigla da UF         ('EX' para operações com o exterior.)

       (* ----------------------------------------------------------------------------------------------------------------- *)


       (* ----------------------------------------------------------------------------------------------------------------- *)
       (* TAG de grupo Pessoas autorizadas a acessar o XML da NF-e G A01 0-10                                               *)
       (* Poderá ser implementado no futuro                                                                                 *)
       (* ----------------------------------------------------------------------------------------------------------------- *)

       // Aqui deve haver a leitura de fornecedores (contadores / atores)

       autXML.Clear;
       vAutXMLCNPJCPFWORD := '';

       if ( (not(DMFD.FDQuery1['nfe_autXML'] = null))       and
            (not(Trim(DMFD.FDQuery1['nfe_autXML']) = '')) ) then
        begin

         vAutXMLCNPJCPFALL := trim(VarToStr(DMFD.FDQuery1['nfe_autXML']));

         for I := 1 to Length(vAutXMLCNPJCPFALL) do
          begin

           if vAutXMLCNPJCPFALL[I] <> ''  then
            begin

              if ( (vAutXMLCNPJCPFALL[I] <> ',')      and
                   (vAutXMLCNPJCPFALL[I] <> ';')      or
                   ( I = Length(vAutXMLCNPJCPFALL)) ) then
               vAutXMLCNPJCPFWORD := (vAutXMLCNPJCPFWORD + vAutXMLCNPJCPFALL[I]);

              if ( (vAutXMLCNPJCPFALL[I] = ',')       or
                   (vAutXMLCNPJCPFALL[I] = ';')       or
                   ( I = Length(vAutXMLCNPJCPFALL)) ) then
               begin

                autXML.Add.CNPJCPF := vAutXMLCNPJCPFWORD;                       // Informar CNPJ ou CPF. Preencher os zeros não significativos.
                vAutXMLCNPJCPFWORD := '';

               end;

            end;

          end;

        end;

       (* ----------------------------------------------------------------------------------------------------------------- *)

       // by Edson Lima ; 2016-1-22T1019 ; Indicador da Ie do Destimatário
       if not ( DMFD.FDQuery1['des_indIEDest'] = null ) then
        begin

         case (StrToIntDef(DMFD.FDQuery1['des_indIEDest'], 0)) of
          1:   // Contribuinte normal
           begin

            Dest.IE := DMFD.FDQuery1['des_insc_estadual'];
            Dest.indIEDest := inContribuinte;

           end;
          2:   // Contribuinte isento - CNPJ e IE isento
           begin

            Dest.IE := '';
            Dest.indIEDest := inIsento;

           end;
          9:  // Não Contribuinte - CPF ou CNPJ sem IE
           begin

            if (gModelo = 65) then
             Dest.IE := ''
            else if ((gModelo = 55) and (Trim(DMFD.FDQuery1['des_insc_estadual']) = 'ISENTO') ) then
             Dest.IE := ''
            else
             Dest.IE := DMFD.FDQuery1['des_insc_estadual'];

            Dest.indIEDest := inNaoContribuinte;

           end;
         end;
        end;

       if Ide.tpAmb = taHomologacao then
        Dest.xNome             := 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL'
       else
        begin

         if (gModelo = 65) then
          begin

           if ( (DMFD.FDQuery1['nfe_NomeNFCe']       = null) or
                (trim(DMFD.FDQuery1['nfe_NomeNFCe']) = '') ) then
            Dest.xNome           := DMFD.FDQuery1['des_razao_social']
           else
            Dest.xNome           := DMFD.FDQuery1['nfe_NomeNFCe'];

          end
         else
          Dest.xNome             := DMFD.FDQuery1['des_razao_social'];

        end;

       Dest.ISUF              := DMFD.FDQuery1['des_suframa'];
       Dest.EnderDest.cPais   := strtointDef(DMFD.FDQuery1['des_codigo_pais'], 0);    //1058;
       Dest.EnderDest.xPais   := DMFD.FDQuery1['des_nome_pais'];                //'BRASIL';

       // By Edson Lima - 2016-6-30T1143 - Verifica o email do destinatário
       if not fValidaEmail(DMFD.FDQuery1['des_email'], 'S') then
        begin
         Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);
         exit;
        end;

       Dest.Email             := DMFD.FDQuery1['des_email'];                    // by Edson ; 2013/03/19 ; 08:37 ; Implementado nesta dada

       //informações complementares
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                           ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                             ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_informacoes t1                          ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on                             ' );
       DMFD.FDQuery2.SQL.Add( '  t1.codigo_loja = t2.codigo_loja and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.nnf         = t2.nnf         and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.demi        = t2.demi        and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.modelo      = t2.modelo                     ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'where                                            ' );
       DMFD.FDQuery2.SQL.Add( '  t2.codigo_loja = :parm1 and                    ' );
       DMFD.FDQuery2.SQL.Add( '  t2.demi        = :parm2 and                    ' );
       DMFD.FDQuery2.SQL.Add( '  t2.nnf         = :parm3 and                    ' );
       DMFD.FDQuery2.SQL.Add( '  t2.modelo      = :parm4 and                    ' );
       DMFD.FDQuery2.SQL.Add( '  t2.serie       = :parm5                        ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;
       if not DMFD.FDQuery2.IsEmpty then begin
         DMFD.FDQuery2.First;
         While not DMFD.FDQuery2.eof do begin
           with InfAdic.obsCont.Add do
             begin
               xCampo     := trim( vartostr(DMFD.FDQuery2['inf_campo']) );
               xTexto     := trim( vartostr(DMFD.FDQuery2['inf_complementar']) );
             end;
           DMFD.FDQuery2.next;
         end;
       end;

       InfAdic.infCpl := trim(vartostr(DMFD.FDQuery1['nfe_inf_complementar']));
       InfAdic.infAdFisco := trim(vartostr(DMFD.FDQuery1['nfe_inf_fisco']));

       // faturas
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                           ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                             ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_faturas t1                              ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on                             ' );
       DMFD.FDQuery2.SQL.Add( '  t1.codigo_loja = t2.codigo_loja and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.nnf         = t2.nnf         and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.demi        = t2.demi        and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.Modelo      = t2.Modelo      and            ' );
       DMFD.FDQuery2.SQL.Add( '  t1.Serie       = t2.Serie                      ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'where                                            ' );
       DMFD.FDQuery2.SQL.Add( '  t2.codigo_loja = :codigo_loja and              ' );
       DMFD.FDQuery2.SQL.Add( '  t2.demi        = :demi        and              ' );
       DMFD.FDQuery2.SQL.Add( '  t2.nnf         = :nnf         and              ' );
       DMFD.FDQuery2.SQL.Add( '  t2.Modelo      = :Modelo      and              ' );
       DMFD.FDQuery2.SQL.Add( '  t2.Serie       = :Serie                        ' );
       DMFD.FDQuery2.SQL.Add( '                                                 ' );
       DMFD.FDQuery2.ParamByName('codigo_loja').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.ParamByName('demi'       ).AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.ParamByName('nnf'        ).AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.ParamByName('Modelo'     ).AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.ParamByName('Serie'      ).AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;

       if not DMFD.FDQuery2.IsEmpty then
        begin

         if (gModelo = 55) then
          begin

           with cobr.Fat do
            begin

             nFat  := DMFD.FDQuery2['num_fatura'];
             vOrig := DMFD.FDQuery2['vl_original'];
             vDesc := DMFD.FDQuery2['vl_desconto'];
             vLiq  := DMFD.FDQuery2['vl_liquido'];

            end;

          end;

        end;

       //duplicatas
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                                 ' );
       DMFD.FDQuery2.SQL.Add( 't1.num_duplicata, cast(t1.dvenc as datetime) as dvenc, t1.valor,       ' );
       DMFD.FDQuery2.SQL.Add( 't1.IndPag, t1.tPag, t1.cCnpj, t1.tBand, t1.cAut, t1.vTroco             ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_duplicatas t1                                                 ' );
       DMFD.FDQuery2.SQL.Add( '                                                                       ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on                                                   ' );
       DMFD.FDQuery2.SQL.Add( '      t1.codigo_loja = t2.codigo_loja and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t1.nnf         = t2.nnf         and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t1.demi        = t2.demi        and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t1.modelo      = t2.modelo      and                              ' );
       DMFD.FDQuery2.SQL.Add( '                                                                       ' );
       DMFD.FDQuery2.SQL.Add( '      t2.codigo_loja = :parm1         and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t2.demi        = :parm2         and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t2.nnf         = :parm3         and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t2.modelo      = :parm4         and                              ' );
       DMFD.FDQuery2.SQL.Add( '      t2.serie       = :parm5                                          ' );
       DMFD.FDQuery2.SQL.Add( '                                                                       ' );
       DMFD.FDQuery2.SQL.Add( '  Order by t1.dvenc                                                    ' );
       DMFD.FDQuery2.SQL.Add( '                                                                       ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;

       if not DMFD.FDQuery2.IsEmpty then
        begin

         While not DMFD.FDQuery2.eof do
          begin

           if (gModelo = 55) then
            begin

             with Cobr.Dup.Add do
              begin
               nDup    := DMFD.FDQuery2['num_duplicata'];

               if ( DMFD.FDQuery2['dvenc'] < date() ) then

                dVenc   := date()

               else

                dVenc   := DMFD.FDQuery2['dvenc'];

               vDup    := DMFD.FDQuery2['valor'];

               if vDup = 0 then
                vDup := DMFD.FDQuery1['nfe_total_nf'];                          // Provisório até corrigir no ERP ; by Edson ; 04-10-2012 ; 08:30

              end;
            end;

           //for I := 1 to qPag do    // caso for adotado a quantidade pagamentos no gerpa

           //if (gModelo = 65) then                                             // antes da ve400

            begin

             with pag.Add do                                                    // A critério de cada UF poderá ser exigido o preenchimento do Grupo Informações de Pagamento para NF-e e/ou NFC-e.
              begin                                                             // PAGAMENTOS apenas para NFC-e

               // indPag
               case FrPar.cbb2.ItemIndex of                                     // Tratamento de Versões

                1 :                                                             // ve40

                 if not ( DMFD.FDQuery2['IndPag'] = null ) then
                  begin

                   case (StrToIntDef(DMFD.FDQuery2['IndPag'], 0)) of
                    1:    IndPag := ipVista;
                    2:    IndPag := ipPrazo;
                    3:    IndPag := ipOutras;
                    else  IndPag := ipNenhum;
                   end;

                  end;

                2 :                                                             // ve40

                 if ( gModelo = 55 ) then
                  begin

                   if not ( DMFD.FDQuery2['IndPag'] = null ) then
                    begin

                     case (StrToIntDef(DMFD.FDQuery2['IndPag'], 0)) of
                      1:    IndPag := ipVista;
                      2:    IndPag := ipPrazo;
                      3:    IndPag := ipOutras;
                      else  IndPag := ipNenhum;
                     end;

                    end;

                  end;

                3 :                                                             // ve40

                 if ( gModelo = 65 ) then
                  begin

                   if not ( DMFD.FDQuery2['IndPag'] = null ) then
                    begin

                     case (StrToIntDef(DMFD.FDQuery2['IndPag'], 0)) of
                      1:    IndPag := ipVista;
                      2:    IndPag := ipPrazo;
                      3:    IndPag := ipOutras;
                      else  IndPag := ipNenhum;
                     end;

                    end;

                  end;

               end;

               if (DMFD.FDQuery2['tPag'] = null) then

                if (gModelo = 55) then
                 tPag := fpDuplicataMercantil
                else
                 tPag := fpDinheiro

               else
                begin

                 case ( FrPar.cbb2.ItemIndex ) of

                  0 :                                                           // ve3131

                   case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                    01 : tPag := fpDinheiro;
                    02 : tPag := fpCheque;
                    03 : tPag := fpCartaoCredito;
                    04 : tPag := fpCartaoDebito;
                    05 : tPag := fpCreditoLoja;
                    10 : tPag := fpValeAlimentacao;
                    11 : tPag := fpValeRefeicao;
                    12 : tPag := fpValePresente;
                    13 : tPag := fpValeCombustivel;
                    99 : tPag := fpOutro;
                   end;

                  1 :                                                           // ve4040

                   case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                    01 : tPag := fpDinheiro;
                    02 : tPag := fpCheque;
                    03 : tPag := fpCartaoCredito;
                    04 : tPag := fpCartaoDebito;
                    05 : tPag := fpCreditoLoja;
                    10 : tPag := fpValeAlimentacao;
                    11 : tPag := fpValeRefeicao;
                    12 : tPag := fpValePresente;
                    13 : tPag := fpValeCombustivel;
                    14 : tPag := fpDuplicataMercantil;
                    15 : tPag := fpBoletoBancario;
                    90 : tPag := fpSemPagamento;
                    99 : tPag := fpOutro;
                   end;

                  2 :                                                           // ve4031

                   if ( gModelo = 55 ) then                                     // ve40
                    begin

                     case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                      01 : tPag := fpDinheiro;
                      02 : tPag := fpCheque;
                      03 : tPag := fpCartaoCredito;
                      04 : tPag := fpCartaoDebito;
                      05 : tPag := fpCreditoLoja;
                      10 : tPag := fpValeAlimentacao;
                      11 : tPag := fpValeRefeicao;
                      12 : tPag := fpValePresente;
                      13 : tPag := fpValeCombustivel;
                      14 : tPag := fpDuplicataMercantil;
                      15 : tPag := fpBoletoBancario;
                      90 : tPag := fpSemPagamento;
                      99 : tPag := fpOutro;
                     end;

                    end

                   else                                                         // ve31

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                      01 : tPag := fpDinheiro;
                      02 : tPag := fpCheque;
                      03 : tPag := fpCartaoCredito;
                      04 : tPag := fpCartaoDebito;
                      05 : tPag := fpCreditoLoja;
                      10 : tPag := fpValeAlimentacao;
                      11 : tPag := fpValeRefeicao;
                      12 : tPag := fpValePresente;
                      13 : tPag := fpValeCombustivel;
                      99 : tPag := fpOutro;
                     end;

                    end;

                  3 :                                                           // ve3140

                   if ( gModelo = 65 ) then                                     // ve40
                    begin

                     case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                      01 : tPag := fpDinheiro;
                      02 : tPag := fpCheque;
                      03 : tPag := fpCartaoCredito;
                      04 : tPag := fpCartaoDebito;
                      05 : tPag := fpCreditoLoja;
                      10 : tPag := fpValeAlimentacao;
                      11 : tPag := fpValeRefeicao;
                      12 : tPag := fpValePresente;
                      13 : tPag := fpValeCombustivel;
                      14 : tPag := fpDuplicataMercantil;
                      15 : tPag := fpBoletoBancario;
                      90 : tPag := fpSemPagamento;
                      99 : tPag := fpOutro;
                     end;

                    end

                   else                                                         // ve31

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tPag'], 0) of
                      01 : tPag := fpDinheiro;
                      02 : tPag := fpCheque;
                      03 : tPag := fpCartaoCredito;
                      04 : tPag := fpCartaoDebito;
                      05 : tPag := fpCreditoLoja;
                      10 : tPag := fpValeAlimentacao;
                      11 : tPag := fpValeRefeicao;
                      12 : tPag := fpValePresente;
                      13 : tPag := fpValeCombustivel;
                      99 : tPag := fpOutro;
                     end;

                    end;

                 end;

                end;

               vPag  := DMFD.FDQuery2['valor'];

               if ((DMFD.FDQuery2['tPag'] = '03') or (DMFD.FDQuery2['tPag'] = '04')) then
                begin

                 cnpj  := DMFD.FDQuery2['cCnpj'];

                 case ( FrPar.cbb2.ItemIndex ) of

                  0 :                                                           // ve3131

                   case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                    01 : tBand := bcVisa;
                    02 : tBand := bcMasterCard;
                    03 : tBand := bcAmericanExpress;
                    04 : tBand := bcSorocred;
                    99 : tBand := bcOutros;
                   end;

                  1 :                                                           // ve4040

                   case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                    01 : tBand := bcVisa;
                    02 : tBand := bcMasterCard;
                    03 : tBand := bcAmericanExpress;
                    04 : tBand := bcSorocred;
                    05 : tBand := bcDinersClub;
                    06 : tBand := bcElo;
                    07 : tBand := bcHipercard;
                    08 : tBand := bcAura;
                    09 : tBand := bcCabal;
                    99 : tBand := bcOutros;
                   end;

                  2 :                                                           // ve4031

                   if ( gModelo = 55 ) then                                     // ve40

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                      01 : tBand := bcVisa;
                      02 : tBand := bcMasterCard;
                      03 : tBand := bcAmericanExpress;
                      04 : tBand := bcSorocred;
                      05 : tBand := bcDinersClub;
                      06 : tBand := bcElo;
                      07 : tBand := bcHipercard;
                      08 : tBand := bcAura;
                      09 : tBand := bcCabal;
                      99 : tBand := bcOutros;
                     end;

                    end

                   else                                                         // ve31

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                      01 : tBand := bcVisa;
                      02 : tBand := bcMasterCard;
                      03 : tBand := bcAmericanExpress;
                      04 : tBand := bcSorocred;
                      99 : tBand := bcOutros;
                     end;

                    end;

                  3 :                                                           // ve3140

                   if ( gModelo = 65 ) then                                     // ve40

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                      01 : tBand := bcVisa;
                      02 : tBand := bcMasterCard;
                      03 : tBand := bcAmericanExpress;
                      04 : tBand := bcSorocred;
                      05 : tBand := bcDinersClub;
                      06 : tBand := bcElo;
                      07 : tBand := bcHipercard;
                      08 : tBand := bcAura;
                      09 : tBand := bcCabal;
                      99 : tBand := bcOutros;
                     end;

                    end

                   else                                                         // ve31

                    begin

                     case StrToIntDef(DMFD.FDQuery2['tBand'], 0) of
                      01 : tBand := bcVisa;
                      02 : tBand := bcMasterCard;
                      03 : tBand := bcAmericanExpress;
                      04 : tBand := bcSorocred;
                      99 : tBand := bcOutros;
                     end;

                    end;

                 end;

                 cAut   := DMFD.FDQuery2['cAut'];

                 // Esta rotina da variável vtroco não faz nada, está a espera de definição pela sefaz
                 case ( FrPar.cbb2.ItemIndex ) of

                  0 : ;// implementado a partir da ve400                        // ve3131

                  1 : ;//vtroco := DMFD.FDQuery2['vTroco'];                     // ve4040

                  2 :                                                           // ve4031

                   if ( gModelo = 55 ) then
                     //vtroco := DMFD.FDQuery2['vTroco'];                       // ve40
                   else
                    ;// implementado a partir da ve400                          // ve31

                  3 :                                                           // ve3140

                   if ( gModelo = 65 ) then
                     //vtroco := DMFD.FDQuery2['vTroco'];                       // ve40
                   else
                    ;// implementado a partir da ve400                          // ve31

                 end;

                end;

               end;

            end;

           DMFD.FDQuery2.next;

          end;

        end

       else

        begin

         with pag.Add do                                                        // A critério de cada UF poderá ser exigido o preenchimento do Grupo Informações de Pagamento para NF-e e/ou NFC-e.
          begin                                                                 // PAGAMENTOS apenas para NFC-e

           case ( FrPar.cbb2.ItemIndex ) of

            1 : tPag := fpSemPagamento;                                         // ve4040

            2 :                                                                 // ve4031

             if ( gModelo = 55 ) then                                           // ve40
              tPag := fpSemPagamento;

            3 :                                                                 // ve3140

             if ( gModelo = 65 ) then                                           // ve40
              tPag := fpSemPagamento;

           end;

           vPag := 0;

          end;

        end;

       //transportador
       Transp.Transporta.CNPJCPF           := DMFD.FDQuery1['tra_cnpj'];
       Transp.Transporta.xEnder            := DMFD.FDQuery1['tra_endereco'];
       Transp.Transporta.xMun              := DMFD.FDQuery1['tra_municipio'];
       Transp.Transporta.UF                := DMFD.FDQuery1['tra_uf'];
       Transp.Transporta.IE                := DMFD.FDQuery1['tra_insc_estadual'];
       Transp.Transporta.xNome             := DMFD.FDQuery1['tra_razao_social'];

       if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '0' then Transp.modFrete:= mfContaEmitente;
       if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '1' then Transp.modFrete:= mfContaDestinatario;
       if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '2' then Transp.modFrete:= mfContaTerceiros;

       case ( FrPar.cbb2.ItemIndex ) of                                         // ve400

        0 : ;// Implementado a partir da ve400                                  // ve3131

        1 :                                                                     // ve4040

         begin

          if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '3' then
           Transp.modFrete:= mfProprioRemetente;
          if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '4' then
           Transp.modFrete:= mfProprioDestinatario;

         end;

        2 :                                                                     // ve4031

         if ( gModelo = 55 ) then                                               // ve40
          begin

           if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '3' then
            Transp.modFrete:= mfProprioRemetente;
           if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '4' then
            Transp.modFrete:= mfProprioDestinatario;

          end

         else                                                                   // ve31

          begin
           // Implementado a partir da ve400
          end;

        3 :

         if ( gModelo = 65 ) then                                               // ve40
          begin

           if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '3' then
            Transp.modFrete:= mfProprioRemetente;
           if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '4' then
            Transp.modFrete:= mfProprioDestinatario;

          end

         else                                                                   // ve31

          begin
           // Implementado a partir da ve400
          end;

       end;

       if vartostr(DMFD.FDQuery1['nfe_tipo_frete']) = '9' then Transp.modFrete:= mfSemFrete;

       //volume
       with Transp.Vol.Add do
        begin
         qVol               := DMFD.FDQuery1['vol_qtd_volume'];
         if qVol = 0 then   // Provisório até corrigir no ERP ; by Edson ; 04-10-2012 ; 08:30
          qVol              := 1;
         Esp                := DMFD.FDQuery1['vol_especie'];
         Marca              := DMFD.FDQuery1['vol_marca'];
         nVol               := DMFD.FDQuery1['vol_numero_volume'];
         PesoL              := DMFD.FDQuery1['vol_peso_liquido'];
         PesoB              := DMFD.FDQuery1['vol_peso_bruto'];
       end;

       //veículo
       Transp.veicTransp.placa           := trim(DMFD.FDQuery1['vei_placa']);
       Transp.veicTransp.uf              := DMFD.FDQuery1['vei_uf'];
       Transp.veicTransp.rntc            := DMFD.FDQuery1['vei_rntc'];

       //***********************************************************************
       // ITENS
       //***********************************************************************

       //itens de notas
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                         ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                           ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.SQL.Add( 'from nfe_itens t1                                              ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t1.codigo_loja = t2.codigo_loja and       ' );
       DMFD.FDQuery2.SQL.Add( '                     t1.nnf         = t2.nnf         and       ' );
       DMFD.FDQuery2.SQL.Add( '                     t1.demi        = t2.demi        and       ' );
       DMFD.FDQuery2.SQL.Add( '                     t1.modelo      = t2.modelo                ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.demi        = :parm2                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.nnf         = :parm3                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.modelo      = :parm4                                  ' );
       DMFD.FDQuery2.SQL.Add( 'and   t2.serie       = :parm5                                  ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.SQL.Add( 'Order by t1.sequencia                                          ' );
       DMFD.FDQuery2.SQL.Add( '                                                               ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
       DMFD.FDQuery2.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
       DMFD.FDQuery2.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
       DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
       DMFD.FDQuery2.Open;

       While not DMFD.FDQuery2.eof do
        begin

         with Det.Add do
          begin

           infAdProd     := vartostr(DMFD.FDQuery2['inf_adicional']);
           Prod.nItem    := DMFD.FDQuery2['sequencia'];
           Prod.CFOP     := DMFD.FDQuery2['cfop'];
           Prod.cEAN     := vartostr(DMFD.FDQuery2['EAN']);
           Prod.cEANtrib := vartostr(DMFD.FDQuery2['cEANtrib']);

           if ((DMFD.FDQuery2['xPed'] <> null) and ( DMFD.FDQuery2['xPed'] <> '')) then
            Prod.xPed     := VarToStr(DMFD.FDQuery2['xPed']);

           if ((DMFD.FDQuery2['nItemPed'] <> null) and ( DMFD.FDQuery2['nItemPed'] <> '')) then
            Prod.nItemPed := VarToStr(DMFD.FDQuery2['nItemPed']);

           if vartostr(DMFD.FDQuery2['vl_ii']) <> '' then
            begin
             Imposto.II.vII := DMFD.FDQuery2['vl_ii'];
            end
           else
            Imposto.II.vII := 0;

           //-------------------------------------------------------------------
           // by Edson Lima ; 2018-05-08 ; Detalhamento específico de medicamen-
           //                              to e de matérias-primas farmaceuticas
           //-------------------------------------------------------------------
           case ( FrPar.cbb2.ItemIndex ) of                                     // ve400

            0 : ;// Implementado a partir da ve400                              // ve3131

            1 :                                                                 // ve4040

             begin

              if not ( DMFD.FDQuery2['cProdANVISA'] = null ) then
               begin
                Prod.med.Add.cProdANVISA     := DMFD.FDQuery2['cProdANVISA'];
                Prod.med.Add.xMotivoIsencao  := DMFD.FDQuery2['xMotivoIsencao'];
                Prod.med.Add.vPMC            := DMFD.FDQuery2['vPMC'];
               end;

             end;

            2 :                                                                 // ve4031

             if ( gModelo = 55 ) then                                           // ve40
              begin

               if not ( DMFD.FDQuery2['cProdANVISA'] = null ) then
                begin
                 Prod.med.Add.cProdANVISA     := DMFD.FDQuery2['cProdANVISA'];
                 Prod.med.Add.xMotivoIsencao  := DMFD.FDQuery2['xMotivoIsencao'];
                 Prod.med.Add.vPMC            := DMFD.FDQuery2['vPMC'];
                end;

              end

             else                                                               // ve31

              begin

               // Implementado a partir da ve400

              end;

            3 :                                                                 // ve3140

             if ( gModelo = 65 ) then                                           // ve40
              begin

               if not ( DMFD.FDQuery2['cProdANVISA'] = null ) then
                begin
                 Prod.med.Add.cProdANVISA     := DMFD.FDQuery2['cProdANVISA'];
                 Prod.med.Add.xMotivoIsencao  := DMFD.FDQuery2['xMotivoIsencao'];
                 Prod.med.Add.vPMC            := DMFD.FDQuery2['vPMC'];
                end;

              end

             else                                                               // ve31

              begin

               // Implementado a partir da ve400

              end;

           end;
           //-------------------------------------------------------------------

           if (DMFD.FDQuery2['cfop'] = '1651') or (DMFD.FDQuery2['cfop'] = '1652') or
              (DMFD.FDQuery2['cfop'] = '1653') or (DMFD.FDQuery2['cfop'] = '1658') or
              (DMFD.FDQuery2['cfop'] = '1659') or (DMFD.FDQuery2['cfop'] = '1660') or
              (DMFD.FDQuery2['cfop'] = '1661') or (DMFD.FDQuery2['cfop'] = '1662') or
              (DMFD.FDQuery2['cfop'] = '1663') or (DMFD.FDQuery2['cfop'] = '1664') or
              (DMFD.FDQuery2['cfop'] = '2651') or (DMFD.FDQuery2['cfop'] = '2652') or
              (DMFD.FDQuery2['cfop'] = '2653') or (DMFD.FDQuery2['cfop'] = '2658') or
              (DMFD.FDQuery2['cfop'] = '2659') or (DMFD.FDQuery2['cfop'] = '2660') or
              (DMFD.FDQuery2['cfop'] = '2661') or (DMFD.FDQuery2['cfop'] = '2662') or
              (DMFD.FDQuery2['cfop'] = '2663') or (DMFD.FDQuery2['cfop'] = '2664') or
              (DMFD.FDQuery2['cfop'] = '3651') or (DMFD.FDQuery2['cfop'] = '3652') or
              (DMFD.FDQuery2['cfop'] = '3653') or (DMFD.FDQuery2['cfop'] = '5651') or
              (DMFD.FDQuery2['cfop'] = '5652') or (DMFD.FDQuery2['cfop'] = '5653') or
              (DMFD.FDQuery2['cfop'] = '5654') or (DMFD.FDQuery2['cfop'] = '5655') or
              (DMFD.FDQuery2['cfop'] = '5656') or (DMFD.FDQuery2['cfop'] = '5657') or
              (DMFD.FDQuery2['cfop'] = '5658') or (DMFD.FDQuery2['cfop'] = '5659') or
              (DMFD.FDQuery2['cfop'] = '5660') or (DMFD.FDQuery2['cfop'] = '5661') or
              (DMFD.FDQuery2['cfop'] = '5662') or (DMFD.FDQuery2['cfop'] = '5663') or
              (DMFD.FDQuery2['cfop'] = '5664') or (DMFD.FDQuery2['cfop'] = '5665') or
              (DMFD.FDQuery2['cfop'] = '5666') or (DMFD.FDQuery2['cfop'] = '5667') or
              (DMFD.FDQuery2['cfop'] = '6651') or (DMFD.FDQuery2['cfop'] = '6652') or
              (DMFD.FDQuery2['cfop'] = '6653') or (DMFD.FDQuery2['cfop'] = '6654') or
              (DMFD.FDQuery2['cfop'] = '6655') or (DMFD.FDQuery2['cfop'] = '6656') or
              (DMFD.FDQuery2['cfop'] = '6657') or (DMFD.FDQuery2['cfop'] = '6658') or
              (DMFD.FDQuery2['cfop'] = '6659') or (DMFD.FDQuery2['cfop'] = '6660') or
              (DMFD.FDQuery2['cfop'] = '6661') or (DMFD.FDQuery2['cfop'] = '6662') or
              (DMFD.FDQuery2['cfop'] = '6663') or (DMFD.FDQuery2['cfop'] = '6664') or
              (DMFD.FDQuery2['cfop'] = '6665') or (DMFD.FDQuery2['cfop'] = '6666') or
              (DMFD.FDQuery2['cfop'] = '6667') or (DMFD.FDQuery2['cfop'] = '7651') or
              (DMFD.FDQuery2['cfop'] = '7654') or (DMFD.FDQuery2['cfop'] = '7667') then
            begin

             with Prod.comb do
              begin

               case ( FrPar.cbb2.ItemIndex ) of                                 // ve400

                0 :                                                             // ve3131

                 begin

                  if (VarToStr(DMFD.FDQuery2['CodSIMP']) <> '') then
                   begin

                    cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0);
                    if (vCfop = '5667') then
                     UFcons     := DMFD.FDQuery4['uf']
                    else
                     UFcons   := DMFD.FDQuery1['des_uf'];

                   end
                  else
                   begin
                    cProdANP := 999999999;
                    UFcons   := DMFD.FDQuery1['des_uf'];
                   end;

                 end;

                1 :                                                             // ve4040

                 begin

                  if (VarToStr(DMFD.FDQuery2['CodSIMP']) = '') then
                   begin

                    Application.Messagebox(PWideChar('Para o CFOP ' +
                      VarToStr(DMFD.FDQuery2['cfop']) +
                      ', O código SIMP é necessário!' + chr(13) + 'No ítem ' +
                      VarToStr(DMFD.FDQuery2['codigo_item']) + '-' +
                      VarToStr(DMFD.FDQuery2['descricao']) + '.'),
                      PWideChar('Atenção!'), mb_iconstop+mb_ok);

                    gSimpObg := true;
                    exit;

                   end
                  else
                   cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0); // E LA01 N 1-1 9 Utilizar a codificação de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/). (NT 2012/003)

                  if ( (     DMFD.FDQuery2['descANP']  = null)   or
                       (trim(DMFD.FDQuery2['descANP']) = ''  ) ) then
                   descANP  := VarToStr(DMFD.FDQuery2['descricao'])             // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                  else
                   descANP  := VarToStr(DMFD.FDQuery2['descANP']);              // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                  if ( DMFD.FDQuery2['pGLP'] <> null ) then
                   pGLP     := DMFD.FDQuery2['pGLP'];                           // E LA01 N 0-1 3v4 Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do GLP derivado de petróleo no produto GLP. Valores de 0 a 1.
                  if ( DMFD.FDQuery2['pGNn'] <> null ) then
                   pGNn     := DMFD.FDQuery2['pGNn'];                           // E LA01 N 0-1 3v4 Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Nacional – GLGNn para o produto GLP. Valores de 0 a 1.
                  if ( DMFD.FDQuery2['pGNi'] <> null ) then
                   pGNi     := DMFD.FDQuery2['pGNi'];                           // E LA01 N 0-1 3v4 Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Importado – GLGNi para o produto GLP. Valores de 0 a 1.
                  if ( DMFD.FDQuery2['vPart'] <> null ) then
                   vPart    := DMFD.FDQuery2['vPart'];                          // E LA01 N 0-1 13v2 Valor de partida (cProdANP=210203001) - Deve ser informado neste campo o valor por quilograma sem ICMS.
                  if ( DMFD.FDQuery2['CODIF'] <> null ) then
                   CODIF    := DMFD.FDQuery2['CODIF'];                          // E LA01 N 0-1 1-21 Código de autorização / registro do CODIF - Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC
                  if ( DMFD.FDQuery2['qTemp'] <> null ) then
                   CODIF    := DMFD.FDQuery2['qTemp'];                          // E LA01 N 0-1 1-21 Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC - Álcool Etílico Anidro Combustível).

                  if (vCfop = '5667') then
                   UFcons   := DMFD.FDQuery4['uf']
                  else
                   UFcons   := DMFD.FDQuery1['des_uf'];

                 end;

                2 :                                                             // ve4031

                 if ( gModelo = 55 ) then                                       // ve40

                  begin

                   if (VarToStr(DMFD.FDQuery2['CodSIMP']) = '') then
                    begin

                     Application.Messagebox(PWideChar('Para o CFOP ' +
                       VarToStr(DMFD.FDQuery2['cfop']) +
                       ', O código SIMP é necessário!' + chr(13) + 'No ítem ' +
                       VarToStr(DMFD.FDQuery2['codigo_item']) + '-' +
                       VarToStr(DMFD.FDQuery2['descricao']) + '.'),
                       PWideChar('Atenção!'), mb_iconstop+mb_ok);

                     gSimpObg := true;
                     exit;

                    end
                   else
                    cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0); // E LA01 N 1-1 9 Utilizar a codificação de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/). (NT 2012/003)

                   if ( (     DMFD.FDQuery2['descANP']  = null)   or
                        (trim(DMFD.FDQuery2['descANP']) = ''  ) ) then
                    descANP  := VarToStr(DMFD.FDQuery2['descricao'])             // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                   else
                    descANP  := VarToStr(DMFD.FDQuery2['descANP']);              // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                   if ( DMFD.FDQuery2['pGLP'] <> null ) then
                    pGLP     := DMFD.FDQuery2['pGLP'];                          // E LA01 N 0-1 3v4 Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do GLP derivado de petróleo no produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['pGNn'] <> null ) then
                    pGNn     := DMFD.FDQuery2['pGNn'];                          // E LA01 N 0-1 3v4 Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Nacional – GLGNn para o produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['pGNi'] <> null ) then
                    pGNi     := DMFD.FDQuery2['pGNi'];                          // E LA01 N 0-1 3v4 Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Importado – GLGNi para o produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['vPart'] <> null ) then
                    vPart    := DMFD.FDQuery2['vPart'];                         // E LA01 N 0-1 13v2 Valor de partida (cProdANP=210203001) - Deve ser informado neste campo o valor por quilograma sem ICMS.
                   if ( DMFD.FDQuery2['CODIF'] <> null ) then
                    CODIF    := DMFD.FDQuery2['CODIF'];                         // E LA01 N 0-1 1-21 Código de autorização / registro do CODIF - Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC
                   if ( DMFD.FDQuery2['qTemp'] <> null ) then
                    CODIF    := DMFD.FDQuery2['qTemp'];                         // E LA01 N 0-1 1-21 Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC - Álcool Etílico Anidro Combustível).

                   if (vCfop = '5667') then
                    UFcons   := DMFD.FDQuery4['uf']
                   else
                    UFcons   := DMFD.FDQuery1['des_uf'];

                  end

                 else                                                           // ve31

                  begin

                   if (VarToStr(DMFD.FDQuery2['CodSIMP']) <> '') then
                    begin

                     cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0);
                     if (vCfop = '5667') then
                      UFcons     := DMFD.FDQuery4['uf']
                     else
                      UFcons   := DMFD.FDQuery1['des_uf'];

                    end
                   else
                    begin
                     cProdANP := 999999999;
                     UFcons   := DMFD.FDQuery1['des_uf'];
                    end;

                  end;

                3 :                                                             // ve3140

                 if ( gModelo = 65 ) then                                       // ve40

                  begin

                   if (VarToStr(DMFD.FDQuery2['CodSIMP']) = '') then
                    begin

                     Application.Messagebox(PWideChar('Para o CFOP ' +
                       VarToStr(DMFD.FDQuery2['cfop']) +
                       ', O código SIMP é necessário!' + chr(13) + 'No ítem ' +
                       VarToStr(DMFD.FDQuery2['codigo_item']) + '-' +
                       VarToStr(DMFD.FDQuery2['descricao']) + '.'),
                       PWideChar('Atenção!'), mb_iconstop+mb_ok);

                     gSimpObg := true;
                     exit;

                    end
                   else
                    cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0); // E LA01 N 1-1 9 Utilizar a codificação de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/). (NT 2012/003)

                   if ( (     DMFD.FDQuery2['descANP']  = null)   or
                        (trim(DMFD.FDQuery2['descANP']) = ''  ) ) then
                    descANP  := VarToStr(DMFD.FDQuery2['descricao'])             // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                   else
                    descANP  := VarToStr(DMFD.FDQuery2['descANP']);              // E LA01 N 1-1 2-95 Utilizar a descrição de produtos do Sistema de Informações de Movimentação de Produtos - SIMP (http://www.anp.gov.br/simp/).
                   if ( DMFD.FDQuery2['pGLP'] <> null ) then
                    pGLP     := DMFD.FDQuery2['pGLP'];                          // E LA01 N 0-1 3v4 Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do GLP derivado de petróleo no produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['pGNn'] <> null ) then
                    pGNn     := DMFD.FDQuery2['pGNn'];                          // E LA01 N 0-1 3v4 Percentual de Gás Natural Nacional – GLGNn para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Nacional – GLGNn para o produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['pGNi'] <> null ) then
                    pGNi     := DMFD.FDQuery2['pGNi'];                          // E LA01 N 0-1 3v4 Percentual de Gás Natural Importado – GLGNi para o produto GLP (cProdANP=210203001) - Informar em número decimal o percentual do Gás Natural Importado – GLGNi para o produto GLP. Valores de 0 a 1.
                   if ( DMFD.FDQuery2['vPart'] <> null ) then
                    vPart    := DMFD.FDQuery2['vPart'];                         // E LA01 N 0-1 13v2 Valor de partida (cProdANP=210203001) - Deve ser informado neste campo o valor por quilograma sem ICMS.
                   if ( DMFD.FDQuery2['CODIF'] <> null ) then
                    CODIF    := DMFD.FDQuery2['CODIF'];                         // E LA01 N 0-1 1-21 Código de autorização / registro do CODIF - Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC
                   if ( DMFD.FDQuery2['qTemp'] <> null ) then
                    CODIF    := DMFD.FDQuery2['qTemp'];                         // E LA01 N 0-1 1-21 Informar apenas quando a UF utilizar o CODIF (Sistema de Controle do Diferimento do Imposto nas Operações com AEAC - Álcool Etílico Anidro Combustível).

                   if (vCfop = '5667') then
                    UFcons   := DMFD.FDQuery4['uf']
                   else
                    UFcons   := DMFD.FDQuery1['des_uf'];

                  end

                 else                                                           // ve31

                  begin

                   if (VarToStr(DMFD.FDQuery2['CodSIMP']) <> '') then
                    begin

                     cProdANP := StrToIntDef(VarToStr(DMFD.FDQuery2['CodSIMP']), 0);
                     if (vCfop = '5667') then
                      UFcons     := DMFD.FDQuery4['uf']
                     else
                      UFcons   := DMFD.FDQuery1['des_uf'];

                    end
                   else
                    begin
                     cProdANP := 999999999;
                     UFcons   := DMFD.FDQuery1['des_uf'];
                    end;

                  end;

               end;

              end;

            end;

           Prod.cProd    := DMFD.FDQuery2['codigo_item'];
           Prod.xProd    := DMFD.FDQuery2['descricao'];
           Prod.uCom     := DMFD.FDQuery2['unidade'];
           Prod.qCom     := strtofloat(DMFD.FDQuery2['qtd']);
           Prod.vUnCom   := DMFD.FDQuery2['pr_unitario'];
           if ( DMFD.FDQuery2['CEST'] <> null ) then
            Prod.CEST    := DMFD.FDQuery2['CEST'];
           Prod.vProd    := DMFD.FDQuery2['pr_total'];
           //-------------------------------------------------------------------

           if ( (DMFD.FDQuery2['uTrib'] = null) or
                (trim(DMFD.FDQuery2['uTrib']) = '') ) then
            Prod.uTrib   := DMFD.FDQuery2['unidade']
           else
            Prod.uTrib   := DMFD.FDQuery2['uTrib'];                             // E 101 C 1-6 1-6 Unidade Tributável

           if ( (DMFD.FDQuery2['qTrib'] = null) or
                (DMFD.FDQuery2['qTrib'] = 0)  ) then
            Prod.qTrib   := DMFD.FDQuery2['qtd']
           else
            Prod.qTrib   := DMFD.FDQuery2['qTrib'];                             // E I01 N 1-1 11v0-4 Informar a quantidade de tributação do produto (v2.0)

           if ( (DMFD.FDQuery2['vUnTrib'] = null) or
                (DMFD.FDQuery2['vUnTrib'] = 0)  )  then
            Prod.vUnTrib := DMFD.FDQuery2['pr_unitario']
           else
            Prod.vUnTrib := DMFD.FDQuery2['vUnTrib'];                           // E I01 N 1-1 11v0-10 Informar o valor unitário de tributação do produto, campo meramente informativo, o contribuinte pode utilizar a precisão desejada (0-10 decimais). Para efeitos de cálculo, o valor unitário será obtido pela divisão do valor do produto pela quantidade tributável (NT 2013/003)

           //-------------------------------------------------------------------
           Prod.NCM      := DMFD.FDQuery2['ncm'];
           Prod.vDesc    := DMFD.FDQuery2['vl_desconto'];

           // by Edson Lima ; 2013/03/15 ; 10:36 ; condição incluida "o tipo desta classe deve ter sido modificada de ACBr"
           if (VarToStr(DMFD.FDQuery2['ind_total']) <> '') then
            Prod.IndTot   := DMFD.FDQuery2['ind_total'];

           Prod.vFrete   := DMFD.FDQuery2['vl_frete'];
           Prod.vSeg     := DMFD.FDQuery2['vl_seguro'];
           Prod.vOutro   := DMFD.FDQuery2['vl_outros'];

           //itens de notas-DI
           DMFD.FDQuery8.Close;
           DMFD.FDQuery8.SQL.Clear;
           DMFD.FDQuery8.SQL.Add( 'Select                                                         ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.SQL.Add( 't1.*                                                           ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.SQL.Add( 'from nfe_itens_DI t1                                           ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.SQL.Add( 'inner join nfe_itens t2 on t1.codigo_loja = t2.codigo_loja and ' );
           DMFD.FDQuery8.SQL.Add( '                           t1.nnf         = t2.nnf         and ' );
           DMFD.FDQuery8.SQL.Add( '                           t1.demi        = t2.demi        and ' );
           DMFD.FDQuery8.SQL.Add( '                           t1.sequencia   = t2.sequencia   and ' );
           DMFD.FDQuery8.SQL.Add( '                           t1.modelo      = t2.modelo          ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.SQL.Add( 'where t2.codigo_loja = :parm1                                  ' );
           DMFD.FDQuery8.SQL.Add( 'and   t2.demi        = :parm2                                  ' );
           DMFD.FDQuery8.SQL.Add( 'and   t2.nnf         = :parm3                                  ' );
           DMFD.FDQuery8.SQL.Add( 'and   t2.sequencia   = :parm4                                  ' );
           DMFD.FDQuery8.SQL.Add( 'and   t2.modelo      = :parm5                                  ' );
           DMFD.FDQuery8.SQL.Add( 'and   t2.serie       = :parm6                                  ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.SQL.Add( 'Order by t1.sequencia                                          ' );
           DMFD.FDQuery8.SQL.Add( '                                                               ' );
           DMFD.FDQuery8.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
           DMFD.FDQuery8.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
           DMFD.FDQuery8.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
           DMFD.FDQuery8.Params[3].AsInteger := DMFD.FDQuery2['sequencia'];
           DMFD.FDQuery8.Params[4].AsString  := DMFD.FDQuery1['nfe_modelo'];
           DMFD.FDQuery8.Params[5].AsString  := DMFD.FDQuery1['nfe_serie'];
           DMFD.FDQuery8.Open;

           While not DMFD.FDQuery8.eof do
            begin

             with Prod.DI.Add do
              begin

               cExportador   := DMFD.FDQuery8['codigo_exportador'];
               dDesemb       := DMFD.FDQuery8['data_desembaraco'];
               UFDesemb      := DMFD.FDQuery8['uf_desembaraco'];
               xLocDesemb    := DMFD.FDQuery8['local_desembaraco'];
               dDi           := DMFD.FDQuery8['data_DI'];
               nDi           := DMFD.FDQuery8['numero_di'];

               //itens de notas-ADI
               DMFD.FDQuery9.Close;
               DMFD.FDQuery9.SQL.Clear;
               DMFD.FDQuery9.SQL.Add( 'Select                                                                   ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.SQL.Add( 't1.*                                                                     ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.SQL.Add( 'from nfe_itens_DI_ADI t1                                                 ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.SQL.Add( 'inner join nfe_itens_DI t2 on t1.codigo_loja = t2.codigo_loja and        ' );
               DMFD.FDQuery9.SQL.Add( '                              t1.nnf         = t2.nnf         and        ' );
               DMFD.FDQuery9.SQL.Add( '                              t1.demi        = t2.demi        and        ' );
               DMFD.FDQuery9.SQL.Add( '                              t1.sequencia   = t2.sequencia   and        ' );
               DMFD.FDQuery9.SQL.Add( '                              t1.numero_di   = t2.numero_di   and        ' );
               DMFD.FDQuery9.SQL.Add( '                              t1.modelo      = t2.modelo                 ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.SQL.Add( 'where       t2.codigo_loja = :parm1                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.demi        = :parm2                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.nnf         = :parm3                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.sequencia   = :parm4                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.numero_di   = :parm5                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.modelo      = :parm6                                      ' );
               DMFD.FDQuery9.SQL.Add( '      and   t2.serie       = :parm7                                      ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.SQL.Add( 'Order by t1.sequencia                                                    ' );
               DMFD.FDQuery9.SQL.Add( '                                                                         ' );
               DMFD.FDQuery9.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
               DMFD.FDQuery9.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
               DMFD.FDQuery9.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
               DMFD.FDQuery9.Params[3].AsInteger := DMFD.FDQuery2['sequencia'];
               DMFD.FDQuery9.Params[4].AsString  := DMFD.FDQuery8['numero_di'];
               DMFD.FDQuery9.Params[5].AsString  := DMFD.FDQuery1['nfe_modelo'];
               DMFD.FDQuery9.Params[6].AsString  := DMFD.FDQuery1['nfe_serie'];
               DMFD.FDQuery9.Open;

               While not DMFD.FDQuery9.eof do
                begin

                 with adi.Add do
                  begin

                   vDescDI       := DMFD.FDQuery9['valor_desconto'];
                   cFabricante   := DMFD.FDQuery9['codigo_fabricante'];
                   nSeqAdi       := DMFD.FDQuery9['sequencia_ADI'];
                   nAdicao       := DMFD.FDQuery9['numero_ADI'];

                  end;

                 DMFD.FDQuery9.next;

                end;

              end;

             DMFD.FDQuery8.next;

            end;

           if (   (FrPar.cbb2.ItemIndex = 1)                      or
                ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then          // ve400
            begin

             // by Edson Lima ; 2018-5-8 ; itens do lote
             DMFD.FDQuery19.Close;
             DMFD.FDQuery19.SQL.Clear;
             DMFD.FDQuery19.SQL.Add( 'Select                                    ' );
             DMFD.FDQuery19.SQL.Add( 't1.*                                      ' );
             DMFD.FDQuery19.SQL.Add( 'from nfe_Lotes t1                         ' );
             DMFD.FDQuery19.SQL.Add( 'inner join nfe_itens t2 on                ' );
             DMFD.FDQuery19.SQL.Add( '      t1.codigo_loja = t2.codigo_loja and ' );
             DMFD.FDQuery19.SQL.Add( '      t1.demi        = t2.demi        and ' );
             DMFD.FDQuery19.SQL.Add( '      t1.nnf         = t2.nnf         and ' );
             DMFD.FDQuery19.SQL.Add( '      t1.modelo      = t2.modelo      and ' );
             DMFD.FDQuery19.SQL.Add( '      t1.serie       = t2.serie       and ' );
             DMFD.FDQuery19.SQL.Add( '      t1.codigo_item = t2.codigo_item     ' );
             DMFD.FDQuery19.SQL.Add( '                                          ' );
             DMFD.FDQuery19.SQL.Add( 'where t2.codigo_loja = :parm0         and ' );
             DMFD.FDQuery19.SQL.Add( '      t2.demi        = :parm1         and ' );
             DMFD.FDQuery19.SQL.Add( '      t2.nnf         = :parm2         and ' );
             DMFD.FDQuery19.SQL.Add( '      t2.modelo      = :parm3         and ' );
             DMFD.FDQuery19.SQL.Add( '      t2.serie       = :parm4         and ' );
             DMFD.FDQuery19.SQL.Add( '      t2.codigo_item = :parm5             ' );
             DMFD.FDQuery19.SQL.Add( '                                          ' );
             DMFD.FDQuery19.SQL.Add( 'Order by t1.codigo_item                   ' );
             DMFD.FDQuery19.SQL.Add( '                                          ' );
             DMFD.FDQuery19.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
             DMFD.FDQuery19.Params[1].AsString  := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']);
             DMFD.FDQuery19.Params[2].AsString  := DMFD.FDQuery1['nfe_nnf'];
             DMFD.FDQuery19.Params[3].AsString  := DMFD.FDQuery1['nfe_modelo'];
             DMFD.FDQuery19.Params[4].AsString  := DMFD.FDQuery1['nfe_serie'];
             DMFD.FDQuery19.Params[5].AsString  := DMFD.FDQuery2['codigo_item'];;
             DMFD.FDQuery19.Open;

             While not DMFD.FDQuery19.eof do                                    // Enquanto não for o fim do lote
              begin

               with Prod.rastro.Add do
                  begin

                   nLote         := DMFD.FDQuery19['nLote'];
                   qLote         := DMFD.FDQuery19['qLote'];
                   dFab          := DMFD.FDQuery19['dFab'];
                   dVal          := DMFD.FDQuery19['dVal'];
                   if ( cAgreg <> null ) then
                    cAgreg       := VarToStr(DMFD.FDQuery19['cAgreg']);

                 end;

               DMFD.FDQuery19.next;                                             // Avança para o próximo registro

              end;

            end;

           // by Edson Lima ; lei da transparencia de impostos
           if DMFD.FDQuery2['vTotTrib'] = null then
            Imposto.vTotTrib := 0
           else
            Imposto.vTotTrib := DMFD.FDQuery2['vTotTrib'];                      // Produtos

           // by Edson Lima ; 2016-10-11 ; Valor do ICMS desonerado
           with Imposto.ICMS do
            begin

             if not (DMFD.FDQuery2['vICMSDeson'] = null) then
              begin

               vICMSDeson     := DMFD.FDQuery2['vICMSDeson'];
               motDesICMS     := DMFD.FDQuery2['motDesICMS'];

              end;

            end;

           // by Edson Lima ; 2016-10-11 ; partilha do ICMS e fundo de probreza
           with Imposto.ICMSUFDest do
            begin

             if (DMFD.FDQuery2['vBCUFDest'] = null) then
              vBCUFDest      := 0
             else
              vBCUFDest      := DMFD.FDQuery2['vBCUFDest'];

             if (   (FrPar.cbb2.ItemIndex = 1)                      or
                  ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                  ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then        // ve400
              begin

               if ( (DMFD.FDQuery2['vBCUFDest']  > 0)   and
                    (DMFD.FDQuery2['pFCPUFDest'] > 0) ) then                    // 09-01-2019 (Renildo) foi mudado de vBCFCPUFDest para vBCUFDeste
                vBCFCPUFDest := DMFD.FDQuery2['vBCUFDest'];

              end;

             if ( DMFD.FDQuery2['pFCPUFDest'] > 0 ) then
              pFCPUFDest     := DMFD.FDQuery2['pFCPUFDest'];

             if ( DMFD.FDQuery2['pICMSUFDest'] = null ) then
              pICMSUFDest    := 0
             else
              pICMSUFDest    := DMFD.FDQuery2['pICMSUFDest'];

             if ( DMFD.FDQuery2['pICMSInter'] = null ) then
              pICMSInter     := 0
             else
              pICMSInter     := DMFD.FDQuery2['pICMSInter'];

             if ( DMFD.FDQuery2['pICMSInterPart'] = null ) then
              pICMSInterPart := 0
             else
              pICMSInterPart := DMFD.FDQuery2['pICMSInterPart'];

             if ( DMFD.FDQuery2['vFCPUFDest'] > 0 ) then
              vFCPUFDest     := DMFD.FDQuery2['vFCPUFDest'];

             if ( DMFD.FDQuery2['vICMSUFDest'] = null ) then
              vICMSUFDest    := 0
             else
              vICMSUFDest    := DMFD.FDQuery2['vICMSUFDest'];

             if ( DMFD.FDQuery2['vICMSUFRemet'] = null ) then
              vICMSUFRemet   := 0
             else
              vICMSUFRemet   := DMFD.FDQuery2['vICMSUFRemet'];

            end;

           with Imposto.ICMS do
            begin

             // Fundo de combate a pobresa (FCP)
             if (   (FrPar.cbb2.ItemIndex = 1)                      or
                  ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                  ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then        // ve400
              begin

               if ( Imposto.ICMSUFDest.pFCPUFDest > 0 ) then
                begin

                 pFCPST	     := Imposto.ICMSUFDest.pFCPUFDest;                  // Percentual relativo ao Fundo de Combate à Pobreza (FCP). Nota: Percentual máximo de 2%, conforme a legislação.
                 pFCPSTRet	  := Imposto.ICMSUFDest.pFCPUFDest;                  // Percentual relativo ao Fundo de Combate à Pobreza (FCP). Nota: Percentual máximo de 2%, conforme a legislação.

                 vFCPST	     := Imposto.ICMSUFDest.vFCPUFDest;                  // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.
                 vFCPSTRet	  := Imposto.ICMSUFDest.vFCPUFDest;                  // Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) retido por substituição tributária.

                end;

               if ( Imposto.ICMSUFDest.vBCFCPUFDest > 0 ) then
                begin

                 vBCFCP	     := Imposto.ICMSUFDest.vBCFCPUFDest;                // Informar o valor da Base de Cálculo do FCP
                 vBCFCPST	   := Imposto.ICMSUFDest.vBCFCPUFDest;                // Informar o valor da Base de Cálculo do FCP
                 vBCFCPSTRet := Imposto.ICMSUFDest.vBCFCPUFDest;                // Informar o valor da Base de Cálculo do FCP retido anteriormente por ST

                end;

               pST	        := ( DMFD.FDQuery2['pc_icms_st'] +
                                Imposto.ICMSUFDest.pFCPUFDest );                // Deve ser informada a alíquota do cálculo do ICMS-ST, já incluso o FCP. Exemplo: alíquota da mercadoria na venda ao consumidor final = 18% e 2% de FCP. A alíquota a ser informada no campo pST deve ser 20%.

              end;

             orig   := oeNacional;

             if DMFD.FDQuery4['regime_tributario'] <> 1 then
              begin

               if length(trim(DMFD.FDQuery2['cst'])) = 3 then
                begin
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '1' then orig   := oeEstrangeiraImportacaoDireta;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '2' then orig   := oeEstrangeiraAdquiridaBrasil;
                 // linhas inseridas by Edson Lima ; 2015-2-26T1046
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '3' then orig   := oeNacionalConteudoImportacaoSuperior40;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '4' then orig   := oeNacionalProcessosBasicos;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '5' then orig   := oeNacionalConteudoImportacaoInferiorIgual40;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '6' then orig   := oeEstrangeiraImportacaoDiretaSemSimilar;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '7' then orig   := oeEstrangeiraAdquiridaBrasilSemSimilar;
                 if copy(vartostr(DMFD.FDQuery2['cst']),1,1) = '8' then orig   := oeNacionalConteudoImportacaoSuperior70;
                 //------------------------------------------------
                end;

               CST    := cst00;

               if length(trim(DMFD.FDQuery2['cst'])) = 3 then
                begin
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '10' then CST    := cst10;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '20' then CST    := cst20;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '30' then CST    := cst30;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '40' then CST    := cst40;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '41' then CST    := cst41;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '50' then CST    := cst50;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '51' then CST    := cst51;

                 if (   (FrPar.cbb2.ItemIndex = 1)                      or
                      ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                      ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then    // ve400
                  begin

                   if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '60' then
                    begin

                     case Prod.comb.cProdANP of

                      210203001, 320101001, 320101002, 320102002, 320102001,
                      320102003, 820101032, 820101027, 820101004, 820101005,
                      820101022, 820101031, 820101030, 820101018, 820101020,
                      820101021, 420105001, 420101005, 420101004, 420102005,
                      820101003, 820101012, 420106002, 830101001, 420301004,
                      420202001, 420301001, 510101002, 510102002, 510201001,
                      510201003, 510301003, 510103001, 510301001, 820101026,
                      320102005, 320201001, 320103001, 220102001, 320301001,
                      320103002, 820101019, 820101014, 820101006, 820101016,
                      820101015, 820101025, 820101017, 820101013, 420102004,
                      420104001, 820101033, 820101034, 420106001, 820101011,
                      510102001, 420301002, 410103001, 410101001, 410102001,
                      430101004, 510101001

                      : CST    := cstRep60

                     else

                      CST    := cst60;

                     end;

                    end;

                  end

                 else                                                           // Ve310

                  if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '60' then CST    := cst60;


                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '70' then CST    := cst70;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '80' then CST    := cst80;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '81' then CST    := cst81;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '90' then CST    := cst90;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '91' then CST    := cstICMSOutraUF;
                 if copy(vartostr(DMFD.FDQuery2['cst']),2,2) = '92' then CST    := cstICMSSN;
                end;
              end
             else
              begin

               CST    := cst41;

               if DMFD.FDQuery2['cst'] = '101' then CSOSN    := csosn101;
               if DMFD.FDQuery2['cst'] = '102' then CSOSN    := csosn102;
               if DMFD.FDQuery2['cst'] = '103' then CSOSN    := csosn103;
               if DMFD.FDQuery2['cst'] = '201' then CSOSN    := csosn201;
               if DMFD.FDQuery2['cst'] = '202' then CSOSN    := csosn202;
               if DMFD.FDQuery2['cst'] = '203' then CSOSN    := csosn203;
               if DMFD.FDQuery2['cst'] = '300' then CSOSN    := csosn300;
               if DMFD.FDQuery2['cst'] = '400' then CSOSN    := csosn400;
               if DMFD.FDQuery2['cst'] = '500' then CSOSN    := csosn500;
               if DMFD.FDQuery2['cst'] = '900' then CSOSN    := csosn900;
              end;

             modBC    := dbiValorOperacao;
             pICMS    := DMFD.FDQuery2['pc_icms'];
             vICMS    := DMFD.FDQuery2['vl_icms'];
             vBC      := DMFD.FDQuery2['base_calculo_icms'];
             pRedBC   := DMFD.FDQuery2['reducao_icms'];
             vBCST    := DMFD.FDQuery2['base_icms_st'];
             vICMSST  := DMFD.FDQuery2['vl_icms_st'];
             pICMSST  := DMFD.FDQuery2['pc_icms_st'];

             if (   (FrPar.cbb2.ItemIndex = 1)                      or
                  ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                  ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then        // ve400
              begin

               // Quando o CST = CST60
               if ( CST = cstRep60 ) then
                begin

                 if ( DMFD.FDQuery2['vBCSTRet'] <> null ) then
                  vBCSTRet    := DMFD.FDQuery2['vBCSTRet']
                 else
                  vBCSTRet    := 0;

                 if ( DMFD.FDQuery2['vICMSSTRet'] <> null ) then
                  vICMSSTRet  := DMFD.FDQuery2['vICMSSTRet']
                 else
                  vICMSSTRet  := 0;

                 if ( DMFD.FDQuery2['vBCSTDest'] <> null ) then
                  vBCSTDest  := DMFD.FDQuery2['vBCSTDest']
                 else
                  vBCSTDest  := 0;

                 if ( DMFD.FDQuery2['vICMSSTDest'] <> null ) then
                  vICMSSTDest  := DMFD.FDQuery2['vICMSSTDest']
                 else
                  vICMSSTDest  := 0;

                end;


               // Quando o CSOSN = csosn101
               if ( CSOSN = csosn101 ) then
                begin

                 if ( DMFD.FDQuery2['pCredSN'] <> null ) then
                  pCredSN     := DMFD.FDQuery2['pCredSN'];

                 if ( DMFD.FDQuery2['vCredICMSSN'] <> null ) then
                  vCredICMSSN := DMFD.FDQuery2['vCredICMSSN'];

                end;

              end;

             //showmessage(vartostr(query2['base_calculo_icms']));

            end;

           with Imposto.IPI do begin
             CST   := ipi00;
             // Incluido by Edson Lima ; 18/12/2012 ; 15:05 --------
             if DMFD.FDQuery2['ipi_cst'] = '00' then CST    := ipi00;
             if DMFD.FDQuery2['ipi_cst'] = '01' then CST    := ipi01;
             if DMFD.FDQuery2['ipi_cst'] = '02' then CST    := ipi02;
             if DMFD.FDQuery2['ipi_cst'] = '03' then CST    := ipi03;
             if DMFD.FDQuery2['ipi_cst'] = '04' then CST    := ipi04;
             if DMFD.FDQuery2['ipi_cst'] = '05' then CST    := ipi05;
             if DMFD.FDQuery2['ipi_cst'] = '49' then CST    := ipi49;
             if DMFD.FDQuery2['ipi_cst'] = '50' then CST    := ipi50;
             if DMFD.FDQuery2['ipi_cst'] = '51' then CST    := ipi51;
             if DMFD.FDQuery2['ipi_cst'] = '52' then CST    := ipi52;
             if DMFD.FDQuery2['ipi_cst'] = '53' then CST    := ipi53;
             if DMFD.FDQuery2['ipi_cst'] = '54' then CST    := ipi54;
             if DMFD.FDQuery2['ipi_cst'] = '55' then CST    := ipi55;
             if DMFD.FDQuery2['ipi_cst'] = '99' then CST    := ipi99;
             //-----------------------------------------------------

             pIPI  := DMFD.FDQuery2['pc_ipi'];
             vIPI  := DMFD.FDQuery2['vl_ipi'];
             vBC   := DMFD.FDQuery2['base_calculo_ipi'];
           end;
           with Imposto.PIS do
            begin
            // posicionado by Edson Lima ; 20/11/2012 ; 14:44
            CST    := pis01;
            if DMFD.FDQuery2['pis_cst'] = '01' then CST    := pis01;
            if DMFD.FDQuery2['pis_cst'] = '02' then CST    := pis02;
            if DMFD.FDQuery2['pis_cst'] = '03' then CST    := pis03;
            if DMFD.FDQuery2['pis_cst'] = '04' then CST    := pis04;
            if DMFD.FDQuery2['pis_cst'] = '05' then CST    := pis05;
            if DMFD.FDQuery2['pis_cst'] = '06' then CST    := pis06;
            if DMFD.FDQuery2['pis_cst'] = '07' then CST    := pis07;
            if DMFD.FDQuery2['pis_cst'] = '08' then CST    := pis08;
            if DMFD.FDQuery2['pis_cst'] = '09' then CST    := pis09;
            if DMFD.FDQuery2['pis_cst'] = '49' then CST    := pis49;
            if DMFD.FDQuery2['pis_cst'] = '50' then CST    := pis50;
            if DMFD.FDQuery2['pis_cst'] = '51' then CST    := pis51;
            if DMFD.FDQuery2['pis_cst'] = '52' then CST    := pis52;
            if DMFD.FDQuery2['pis_cst'] = '53' then CST    := pis53;
            if DMFD.FDQuery2['pis_cst'] = '54' then CST    := pis54;
            if DMFD.FDQuery2['pis_cst'] = '55' then CST    := pis55;
            if DMFD.FDQuery2['pis_cst'] = '56' then CST    := pis56;
            if DMFD.FDQuery2['pis_cst'] = '60' then CST    := pis60;
            if DMFD.FDQuery2['pis_cst'] = '61' then CST    := pis61;
            if DMFD.FDQuery2['pis_cst'] = '62' then CST    := pis62;
            if DMFD.FDQuery2['pis_cst'] = '63' then CST    := pis63;
            if DMFD.FDQuery2['pis_cst'] = '64' then CST    := pis64;
            if DMFD.FDQuery2['pis_cst'] = '65' then CST    := pis65;
            if DMFD.FDQuery2['pis_cst'] = '66' then CST    := pis66;
            if DMFD.FDQuery2['pis_cst'] = '67' then CST    := pis67;
            if DMFD.FDQuery2['pis_cst'] = '70' then CST    := pis70;
            if DMFD.FDQuery2['pis_cst'] = '71' then CST    := pis71;
            if DMFD.FDQuery2['pis_cst'] = '72' then CST    := pis72;
            if DMFD.FDQuery2['pis_cst'] = '73' then CST    := pis73;
            if DMFD.FDQuery2['pis_cst'] = '74' then CST    := pis74;
            if DMFD.FDQuery2['pis_cst'] = '75' then CST    := pis75;
            if DMFD.FDQuery2['pis_cst'] = '98' then CST    := pis98;
            if DMFD.FDQuery2['pis_cst'] = '99' then CST    := pis99;

            vBC    := DMFD.FDQuery2['pis_base_calculo'];
            pPis   := DMFD.FDQuery2['pis_percentual'];
            vPis   := DMFD.FDQuery2['pis_valor'];
           end;

           with Imposto.COFINS do
            begin

             // posicionado by Edson Lima ; 20/11/2012 ; 14:44
             CST    := cof01;
             if DMFD.FDQuery2['cofins_cst'] = '01' then CST    := cof01;
             if DMFD.FDQuery2['cofins_cst'] = '02' then CST    := cof02;
             if DMFD.FDQuery2['cofins_cst'] = '03' then CST    := cof03;
             if DMFD.FDQuery2['cofins_cst'] = '04' then CST    := cof04;
             if DMFD.FDQuery2['cofins_cst'] = '05' then CST    := cof05;
             if DMFD.FDQuery2['cofins_cst'] = '06' then CST    := cof06;
             if DMFD.FDQuery2['cofins_cst'] = '07' then CST    := cof07;
             if DMFD.FDQuery2['cofins_cst'] = '08' then CST    := cof08;
             if DMFD.FDQuery2['cofins_cst'] = '09' then CST    := cof09;
             if DMFD.FDQuery2['cofins_cst'] = '49' then CST    := cof49;
             if DMFD.FDQuery2['cofins_cst'] = '50' then CST    := cof50;
             if DMFD.FDQuery2['cofins_cst'] = '51' then CST    := cof51;
             if DMFD.FDQuery2['cofins_cst'] = '52' then CST    := cof52;
             if DMFD.FDQuery2['cofins_cst'] = '53' then CST    := cof53;
             if DMFD.FDQuery2['cofins_cst'] = '54' then CST    := cof54;
             if DMFD.FDQuery2['cofins_cst'] = '55' then CST    := cof55;
             if DMFD.FDQuery2['cofins_cst'] = '56' then CST    := cof56;
             if DMFD.FDQuery2['cofins_cst'] = '60' then CST    := cof60;
             if DMFD.FDQuery2['cofins_cst'] = '61' then CST    := cof61;
             if DMFD.FDQuery2['cofins_cst'] = '62' then CST    := cof62;
             if DMFD.FDQuery2['cofins_cst'] = '63' then CST    := cof63;
             if DMFD.FDQuery2['cofins_cst'] = '64' then CST    := cof64;
             if DMFD.FDQuery2['cofins_cst'] = '65' then CST    := cof65;
             if DMFD.FDQuery2['cofins_cst'] = '66' then CST    := cof66;
             if DMFD.FDQuery2['cofins_cst'] = '67' then CST    := cof67;
             if DMFD.FDQuery2['cofins_cst'] = '70' then CST    := cof70;
             if DMFD.FDQuery2['cofins_cst'] = '71' then CST    := cof71;
             if DMFD.FDQuery2['cofins_cst'] = '72' then CST    := cof72;
             if DMFD.FDQuery2['cofins_cst'] = '73' then CST    := cof73;
             if DMFD.FDQuery2['cofins_cst'] = '74' then CST    := cof74;
             if DMFD.FDQuery2['cofins_cst'] = '75' then CST    := cof75;
             if DMFD.FDQuery2['cofins_cst'] = '98' then CST    := cof98;
             if DMFD.FDQuery2['cofins_cst'] = '99' then CST    := cof99;

             vBC       := DMFD.FDQuery2['cofins_base_calculo'];
             pCofins   := DMFD.FDQuery2['cofins_percentual'];
             vCofins   := DMFD.FDQuery2['cofins_valor'];

           end;

          end;

         DMFD.FDQuery2.next;

        end;

       // ACBrNFe1.NotasFiscais.Add.NFe.Det.Add.imposto.pis.CST
       Total.ICMSTot.vBC        := DMFD.FDQuery1['nfe_base_calculo_icms'];
       Total.ICMSTot.vICMS      := DMFD.FDQuery1['nfe_vl_icms'];
       Total.ICMSTot.vNF        := DMFD.FDQuery1['nfe_total_nf'];
       Total.ICMSTot.vProd      := DMFD.FDQuery1['nfe_total_produtos'];
       total.icmstot.vBCST      := DMFD.FDQuery1['nfe_base_calculo_st'];
       total.icmstot.vST        := DMFD.FDQuery1['nfe_vl_st'];
       total.icmstot.vFrete     := DMFD.FDQuery1['nfe_vl_frete'];
       total.icmstot.vSeg       := DMFD.FDQuery1['nfe_vl_seguro'];
       total.icmstot.vDesc      := DMFD.FDQuery1['nfe_vl_desconto'];
       total.icmstot.vIpi       := DMFD.FDQuery1['nfe_vl_ipi'];
       total.icmstot.vPis       := DMFD.FDQuery1['nfe_vl_pis'];
       total.icmstot.vCofins    := DMFD.FDQuery1['nfe_vl_cofins'];
       total.icmstot.vOutro     := DMFD.FDQuery1['nfe_vl_outros'];

       // by Edson Lima
       if vartostr(DMFD.FDQuery1['nfe_vl_ii']) <> '' then                       // Nota
        begin
         total.ICMSTot.vII      := DMFD.FDQuery1['nfe_vl_ii'];
        end;

       // by Edson Lima ; 2016-3-22 ; lei da transparencia de impostos
       if DMFD.FDQuery1['vTotTrib'] = null then
        Total.ICMSTot.vTotTrib := 0
       else
        Total.ICMSTot.vTotTrib := DMFD.FDQuery1['vTotTrib'];                    // Nota

       // by Edson Lima ; 2016-10-11 ; valor do ICMS Desonerado
       if not (DMFD.FDQuery1['nfe_vICMSDeson'] = null) then
        Total.ICMSTot.vICMSDeson   := DMFD.FDQuery1['nfe_vICMSDeson'];          // by Edson Lima ; 11/10/2016

       // by Edson Lima ; 2016-3-22 ; partilha do icms e fundo de probreza
       if DMFD.FDQuery1['nfe_vFCPUFDest'] > 0 then
        Total.ICMSTot.vFCPUFDest   := DMFD.FDQuery1['nfe_vFCPUFDest'];

       if DMFD.FDQuery1['nfe_vICMSUFDest'] = null then
        Total.ICMSTot.vICMSUFDest  := 0
       else
        Total.ICMSTot.vICMSUFDest  := DMFD.FDQuery1['nfe_vICMSUFDest'];

       if DMFD.FDQuery1['nfe_vICMSUFRemet'] = null then
        Total.ICMSTot.vICMSUFRemet := 0
       else
        Total.ICMSTot.vICMSUFRemet := DMFD.FDQuery1['nfe_vICMSUFRemet'];

      end;

      //------------------------------------------------------------------------
      // CONTINGÊNCIA
      //------------------------------------------------------------------------
      if ((_tipo_emissao = 'fsda') or (_tipo_emissao = 'OffL')) then            //1- Normal, 2-Contingência FS, 3-Contingência SCAN, 4-EPEC e 5-Contingência FSDA. 9-OFFL
       begin

        if (gModelo = 55) then
         _tpemissao := '5'
        else if (gModelo = 65) then
         _tpemissao := '9';

        // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
        gCdPed := VarToStr(DMFD.FDQuery1['nfe_CodPed']);

        aux := '';
        aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQuery1['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
        aux := aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQuery1['nfe_demi'])) + '''' + ',' + '''';
        Aux := Aux + IntToStr(gModelo) + '''' + ',' + '''';
        Aux := Aux + VarToStr(DMFD.FDQuery1['nfe_Serie']) + '''' + ',' + '''';
        Aux := Aux + gCdPed + '''';

        DMFD.FDQuery7.Close;
        DMFD.FDQuery7.SQL.Clear;
        DMFD.FDQuery7.SQL.Add( 'exec sp_calcula_digito_chave ' + aux );
        DMFD.FDQuery7.open;

        Aux := '';
        if not DMFD.FDQuery7.IsEmpty then
         Aux := vartostr(DMFD.FDQuery7['chave']);

        //----------------------------------------------------------------------
        // by Edson Lima ; 2017-1-5T1027 ; Atribuição de dados nas variáveis do
        //                                 gerente
        //----------------------------------------------------------------------
        gChvNFe := aux;
        gCd_Emp := DMFD.FDQuery1['nfe_codigo_loja'];
        if ( DMFD.FDQuery1['nfe_CodPed'] <> null ) then
         gCodPed := DMFD.FDQuery1['nfe_CodPed']
        else
         gCodPed := 0;
        //----------------------------------------------------------------------

        // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
        gChave_Consiste  := Aux;

        if (gModelo = 65) then
         gTN              := '\NFCe\'                                           // by Edson Lima 2015-10-14T1107 - trunk2 novo ; Global utilizado para setar o nome da pasta
        else
         gTN              := '\NFe\';                                           // by Edson Lima 2015-10-14T1107 - trunk2 novo ; Global utilizado para setar o nome da pasta

        pGAV();

        try
         Copia_Xml_PathLog(Aux, gTN);                                           // by Edson Lima 2015-10-14T1107 - trunk2 novo

         if ( gCpt = 1 ) then
          pDefineRel()                                                          // Define o tipo de Relatório FortesReport
         else
          pDefineRelFR();                                                       // Define o tipo de Relatório FastReport

         pImpr();

         ACBrNFe1.NotasFiscais.GravarXML();

         _chave := aux;

         // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
         pGravaNFe('003', 'data_hora_recebimento',
                          'chave_nfe',
                          'situacao',
                          'motivo',
                          'CalcHoraNFCe',
                          'UsuTrs',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          'codigo_loja',
                          'demi',
                          'nnf',
                          'serie',
                          'chave_nfe',
                          'modelo',                                             // Nome dos campos
                          FormatDateTime('yyyy/mm/dd hh:nn:ss', now()),
                          Aux,
                          AnsiUpperCase(_tipo_emissao),
                          ACBrNFe1.WebServices.EnvEvento.xMotivo,
                          'N',
                          gUsu,
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          edt_CodEmp.Text,
                          FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']),
                          DMFD.FDQuery1['nfe_nnf'],
                          DMFD.FDQuery1['nfe_serie'],
                          Aux,
                          DMFD.FDQuery1['nfe_modelo'],                          // Conteúdo dos campos
                          true);                                                // Consiste [true/false]

        except on e:exception do
         begin

          MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS) + chr(13) + e.Message;
          MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
          memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);

          LoadXML(MemoResp, WBResposta);

         end;

        end;

       end;

      //------------------------------------------------------------------------
      // NORMAL
      //------------------------------------------------------------------------
      if _tipo_emissao = 'normal' then
       begin

        // By Edson ; 2013-10-9T1024 ; rotina incluida para calc.e verif.da chave
        _tpemissao := '1';

        // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
        gCdPed := VarToStr(DMFD.FDQuery1['nfe_CodPed']);

        aux := '';
        aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQuery1['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
        aux := aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQuery1['nfe_demi'])) + '''' + ',' + '''';
        aux := aux + IntToStr(gModelo) + '''' + ',' + '''';
        aux := aux + VarToStr(DMFD.FDQuery1['nfe_Serie']) + '''' + ',' + '''';
        aux := aux + gCdPed + '''';

        DMFD.FDQuery7.Close;
        DMFD.FDQuery7.SQL.Clear;
        DMFD.FDQuery7.SQL.Add( 'exec sp_calcula_digito_chave ' + aux );
        DMFD.FDQuery7.open;

        Aux := '';
        if not DMFD.FDQuery7.IsEmpty then
          Aux := vartostr(DMFD.FDQuery7['chave']);

        //----------------------------------------------------------------------
        // by Edson Lima ; 2017-1-5T1027 ; Atribuição de dados nas variáveis do
        //                                 gerente
        //----------------------------------------------------------------------
        gChvNFe := Aux;
        gCd_Emp := DMFD.FDQuery1['nfe_codigo_loja'];
        if ( DMFD.FDQuery1['nfe_CodPed'] <> null ) then
         gCodPed := DMFD.FDQuery1['nfe_CodPed']
        else
         gCodPed := 0;
        //----------------------------------------------------------------------

        // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
        gChave_Consiste  := Aux;

        if (StrToIntDef(DMFD.FDQuery1['nfe_modelo'], 0) = 65) then
         gTN              := '\NFCe\'
        else
         gTN              := '\NFe\';

        pGAV();

        Copia_Xml_PathLog(Aux, gTN);

        if ( gCpt = 1 ) then
         pDefineRel()                                                           // Define o tipo de Relatório FortesReport
        else
         pDefineRelFR();                                                        // Define o tipo de Relatório FastReport

        //grava o numero do protocolo e o numero do recibo
        if not gGeraXml then
         begin

          try // by Edson Lima ; 2013/02/26 ; 08:26 ; try inserido para obter retorno de erros abortado no ACBR

           if (ACBrNFe1.Enviar(0)) then
            begin

             // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
             pGravaNFe('004', 'protocolo',
                              'recibo',
                              'chave_nfe',
                              'situacao',
                              'motivo',
                              'data_hora_recebimento',
                              'CalcHoraNFCe',
                              'UsuTrs',
                              '',
                              '',
                              '',
                              '',
                              '',
                              'codigo_loja',
                              'demi',
                              'nnf',
                              'serie',
                              'chave_nfe',
                              'modelo',                                         // Nome dos campos
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].nProt,
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec,
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe,
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat,
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].xMotivo,
                              FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].dhRecbto),
                              'N',
                              gUsu,
                              '',
                              '',
                              '',
                              '',
                              '',
                              edt_CodEmp.Text,
                              FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']),
                              DMFD.FDQuery1['nfe_nnf'],
                              DMFD.FDQuery1['nfe_serie'],
                              ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe,
                              DMFD.FDQuery1['nfe_modelo'],                      // Conteúdo dos campos
                              true);                                            // Consiste [true/false]

             //-----------------------------------------------------------------
             // by Edson Lima ; 2017-1-5T1054 ; Grava a chave no pedido do gerente
             if ( (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat) = '100') or
                  (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat) = '150') ) then
              fGraGer( gChvNFe, gCd_Emp, gCodPed );
             //-----------------------------------------------------------------

             //-----------------------------------------------------------------
             // by Edson Lima ; 2017-9-27
             //-----------------------------------------------------------------
             // Caso a exceção seja por denegação
             //-----------------------------------------------------------------
             if (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].xMotivo) =
                'Rejeicao: NF-e esta denegada na base de dados da Secretaria de Fazenda Estadual')  or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].xMotivo) =
                'Uso Denegado : Irregularidade fiscal do destinatario')                             or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '301')  or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '302')  or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '303')  or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '110')  or
                (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '205')  then
              begin

               //---------------------------------------------------------------
               // by Edson Lima ; 2017-1-5 ; Grava a chave no pedido do gerente
               fGraGer( gChvNFe, gCd_Emp, gCodPed );
               //---------------------------------------------------------------

               gExcluir  := True;
               gConsiste := false;                                              // Depende da consistência
               BitBtn8Click(Sender);                                            // Força um click na consulta
               gExcluir  := False;                                              // Seta variável global para ler vários registros
               iCodPed   := gCodPed;

               //---------------------------------------------------------------
               // by Edson Lima ; 2017-1-13T1358
               // Cancelamento do pedido no gerente da nota denegada
               //---------------------------------------------------------------
               // Verifica a precisão administrativa do gerente para cancelamento
               // de nota denegada
               //---------------------------------------------------------------
               if iCodPed <> 0 then
                begin

                 if ( fVerPAG(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed) ) then
                  begin

                   //-------------------------------------------------------------
                   // Efetua o Cancelamento Administrativo do PEDIDO da nota Denegada
                   //-------------------------------------------------------------
                   if (iCodPed <> 6) then
                    begin
                     if not ( fCanCAP(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed, gCodMtD) ) then
                      Application.MessageBox(PWideChar('Nota denegada, mas o pedido não foi cancelado!'), 'Atenção', MB_ICONINFORMATION );
                    end
                   else
                    Application.MessageBox(PWideChar('Número do pedido não informado! Nota cancelada, mas Pedido não!'), 'Atenção', MB_ICONINFORMATION );
                   //-------------------------------------------------------------

                  end
                 else
                  Application.MessageBox(PWideChar('Nota denegada, mas o pedido não foi cancelado!'), 'Atenção', MB_ICONINFORMATION );

                end
               else
                Application.MessageBox(PWideChar('Número do pedido não informado!'), 'Atenção', MB_ICONINFORMATION );
               //-----------------------------------------------------------------

              end;


             memoLog.Clear;
             MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
             MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
             memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
             LoadXML(MemoResp, WBResposta);

            end

           else

            begin

             ACBrNFe1.WebServices.Retorno.Recibo := ACBrNFe1.WebServices.Enviar.Recibo;
             ACBrNFe1.WebServices.Retorno.Executar;
             for i := 0 to ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Count-1 do
              begin
               // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
               pGravaNFe('005', 'protocolo',
                                'recibo',
                                'chave_nfe',
                                'situacao',
                                'motivo',
                                'data_hora_recebimento',
                                'CalcHoraNFCe',
                                'UsuTrs',
                                '',
                                '',
                                '',
                                '',
                                '',
                                'codigo_loja',
                                'demi',
                                'nnf',
                                'serie',
                                'chave_nfe',
                                'modelo',                                       // Nome dos campos
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].nProt,
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec,
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].chDFe,
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat,
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].xMotivo,
                                FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].dhRecbto),
                                'N',
                                gUsu,
                                '',
                                '',
                                '',
                                '',
                                '',
                                edt_CodEmp.Text,
                                FormatDateTime('yyyy/mm/dd', DMFD.FDQuery1['nfe_demi']),
                                DMFD.FDQuery1['nfe_nnf'],
                                DMFD.FDQuery1['nfe_serie'],
                                ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe,
                                DMFD.FDQuery1['nfe_modelo'],                    // Conteúdo dos campos
                                true);                                          // Consiste [true/false]

              end;

             memoLog.Clear;
             MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
             MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
             memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
             LoadXML(MemoResp, WBResposta);

            end;

          Except on e:exception do

           begin

            //-------------------------------------------------------------------
            // Caso a exceção seja por denegação
            //-------------------------------------------------------------------
            if (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].xMotivo) =
               'Rejeicao: NF-e esta denegada na base de dados da Secretaria de Fazenda Estadual')  or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].xMotivo) =
               'Uso Denegado : Irregularidade fiscal do destinatario')                             or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '301')  or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '302')  or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '303')  or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '110')  or
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[i].cStat) = '205')  then
             begin

              //----------------------------------------------------------------
              // by Edson Lima ; 2017-1-5 ; Grava a chave no pedido do gerente
              fGraGer( gChvNFe, gCd_Emp, gCodPed );
              //----------------------------------------------------------------

              gExcluir := True;                                                 // Seta variável global para ler somente um registro
              gConsiste := false;                                               // Depende da consistência
              BitBtn8Click(Sender);                                             // Força um click na consulta
              gExcluir := False;                                                // Seta variável global para ler vários registros
              iCodPed := gCodPed;

              //-----------------------------------------------------------------
              // by Edson Lima ; 2017-1-13T1358
              // Cancelamento do pedido no gerente da nota denegada
              //-----------------------------------------------------------------
              // Verifica a precisão administrativa do gerente para cancelamento
              // de nota denegada
              // -----------------------------------------------------------------
              if iCodPed <> 0 then
               begin

                if ( fVerPAG(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed) ) then
                 begin

                  //-------------------------------------------------------------
                  // Efetua o Cancelamento Administrativo do PEDIDO da nota Denegada
                  //-------------------------------------------------------------
                  if (iCodPed <> 0) then
                   begin
                    if not ( fCanCAP(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed, gCodMtD) ) then
                     Application.MessageBox(PWideChar('Nota denegada, mas o pedido não foi cancelado!'), 'Atenção', MB_ICONINFORMATION );
                   end
                  else
                   Application.MessageBox(PWideChar('Número do pedido não informado! Nota cancelada, mas Pedido não!'), 'Atenção', MB_ICONINFORMATION );
                  //-------------------------------------------------------------

                 end

               else

                Application.MessageBox(PWideChar('Nota denegada, mas o pedido não foi cancelado!'), 'Atenção', MB_ICONINFORMATION );

               end

             else

              Application.MessageBox(PWideChar('Número do pedido não informado!'), 'Atenção', MB_ICONINFORMATION );

             end;

            memoLog.Clear;
            MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
            MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
            memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
            LoadXML(MemoResp, WBResposta);


            Application.Messagebox( PWideChar( 'Inconsistência interna no envio: ' +
                                    vartostr(DMFD.FDQryGeral2['nfe_nnf']) + chr(13) +
                                    e.Message ), PWideChar( 'Envio de NFe & NFCe' ),
                                    MB_ICONINFORMATION + mb_ok );

            pAtuNFe();

           end;

          end;

          memoLog.Clear;
          MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
          MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
          memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
          LoadXML(MemoResp, WBResposta);

         end;                                                                   // fim do envio normal

       end;

     Copia_Xml_PathLog(Aux, gTN);                                               // by Edson Lima 2015-10-14T1107 - trunk2 novo

     ACBrNFe1.NotasFiscais.Clear;
     DMFD.FDQuery1.next;

    end;

  end;

end;

//------------------------------------------------------------------------------

procedure TFrGBNFe.grava_xml_no_banco;
var
 vXml1,  vXml2,  vXml3,  vXml4,  vXml5  : String;
 vXml6,  vXml7,  vXml8,  vXml9,  vXml10 : String;
 vXml11, vXml12, vXml13, vXml14, vXml15 : String;
 vXml16, vXml17, vXml18, vXml19, vXml20 : string;
 vXml21, vXml22, vXml23, vXml24, vXml25 : string;
 vXml26, vXml27, vXml28, vXml29, vXml30 : string;
 vXml31, vXml32, vXml33, vXml34, vXml35 : string;
 vXml36, vXml37, vXml38, vXml39, vXml40 : string;
 vXml41, pXml                           : String;
 i, y                                   : integer;
 z                                      : real;

begin
 with ACBrNFe1.NotasFiscais.Items[0].NFe do
  begin

   //grava xml da nfe
   try
    vXml1 := '';
    vXml2 := '';
    vXml3 := '';
    vXml4 := '';
    vXml5 := '';
    vXml6 := '';
    vXml7 := '';
    vXml8 := '';
    vXml9 := '';
    vXml10 := '';
    vXml11 := '';
    vXml12 := '';
    vXml13 := '';
    vXml14 := '';
    vXml15 := '';
    vXml16 := '';
    vXml17 := '';
    vXml18 := '';
    vXml19 := '';
    vXml20 := '';
    vXml21 := '';
    vXml22 := '';
    vXml23 := '';
    vXml24 := '';
    vXml25 := '';
    vXml26 := '';
    vXml27 := '';
    vXml28 := '';
    vXml29 := '';
    vXml30 := '';
    vXml31 := '';
    vXml32 := '';
    vXml33 := '';
    vXml34 := '';
    vXml35 := '';
    vXml36 := '';
    vXml37 := '';
    vXml38 := '';
    vXml39 := '';
    vXml40 := '';
    vXml41 := '';

    pXml := Trim(ACBrNFe1.NotasFiscais.Items[0].XML);

    z := (Int(Length(pXml) / 8000));
    if z < 9 then
     y := StrToIntDef(copy(FloatToStr(z), 1, 1), 0)
    else if ( (z > 9) and (z < 100) ) then
     y := StrToIntDef(copy(FloatToStr(z), 1, 2), 0)
    else
     y := StrToIntDef(copy(FloatToStr(z), 1, 3), 0);

    while ( y >= 0 ) do
     begin

      if ( (y > 0) and (Length(pXml) > 8000) ) then
       begin
        for i := 1 to 8000 do
         begin
          vXml1 := (vXml1 + pXml[i]);
         end;
       end
      else if ( y = 0) then
       begin
        for i := 1 to (Length(pXml)) do
         begin
          vXml1 := (vXml1 + pXml[i]);
         end;
       end;

      if ( (y > 1) and (Length(pXml) > 16000) ) then
       begin
        for i := 8001 to 16000 do
         begin
          vXml2 := (vXml2 + pXml[i]);
         end;
       end
      else if ( y = 1 ) then
       begin
        for i := 8001 to (Length(pXml)) do
         begin
          vXml2 := (vXml2 + pXml[i]);
         end;
       end;

      if ( (y > 2) and (Length(pXml) > 24000) ) then
       begin
        for i := 16001 to 24000 do
         begin
          vXml3 := (vXml3 + pXml[i]);
         end;
       end
      else if ( y = 2 ) then
       begin
        for i := 16001 to (Length(pXml)) do
         begin
          vXml3 := (vXml3 + pXml[i]);
         end;
       end;

      if ( (y > 3) and (Length(pXml) > 32000) ) then
       begin
        for i := 24001 to 32000 do
         begin
          vXml4 := (vXml4 + pXml[i]);
         end;
       end
      else if ( y = 3 ) then
       begin
        for i := 24001 to (Length(pXml)) do
         begin
          vXml4 := (vXml4 + pXml[i]);
         end;
       end;

      if ( (y > 4) and (Length(pXml) > 40000) ) then
       begin
        for i := 32001 to 40000 do
         begin
          vXml5 := (vXml5 + pXml[i]);
         end;
       end
      else if ( y = 4 ) then
       begin
        for i := 32001 to (Length(pXml)) do
         begin
          vXml5 := (vXml5 + pXml[i]);
         end;
       end;

      if ( (y > 5) and (Length(pXml) > 48000) ) then
       begin
        for i := 40001 to 48000 do
         begin
          vXml6 := (vXml6 + pXml[i]);
         end;
       end
      else if ( y = 5 ) then
       begin
        for i := 40001 to (Length(pXml)) do
         begin
          vXml6 := (vXml6 + pXml[i]);
         end;
       end;

      if ( (y > 6) and (Length(pXml) > 56000) ) then
       begin
        for i := 48001 to 56000 do
         begin
          vXml7 := (vXml7 + pXml[i]);
         end;
       end
      else if ( y = 6 ) then
       begin
        for i := 48001 to (Length(pXml)) do
         begin
          vXml7 := (vXml7 + pXml[i]);
         end;
       end;

      if ( (y > 7) and (Length(pXml) > 64000) ) then
       begin
        for i := 56001 to 64000 do
         begin
          vXml8 := (vXml8 + pXml[i]);
         end;
       end
      else if ( y = 7 ) then
       begin
        for i := 56001 to (Length(pXml)) do
         begin
          vXml8 := (vXml8 + pXml[i]);
         end;
       end;

      if ( (y > 8) and (Length(pXml) > 72000) ) then
       begin
        for i := 64001 to 72000 do
         begin
          vXml9 := (vXml9 + pXml[i]);
         end;
       end
      else if ( y = 8 ) then
       begin
        for i := 64001 to (Length(pXml)) do
         begin
          vXml9 := (vXml9 + pXml[i]);
         end;
       end;

      if ( (y > 9) and (Length(pXml) > 80000) ) then
       begin
        for i := 72001 to 80000 do
         begin
          vXml10 := (vXml10 + pXml[i]);
         end;
       end
      else if ( y = 9 ) then
       begin
        for i := 72001 to (Length(pXml)) do
         begin
          vXml10 := (vXml10 + pXml[i]);
         end;
       end;

      if ( (y > 10) and (Length(pXml) > 88000) ) then
       begin
        for i := 80001 to 88000 do
         begin
          vXml11 := (vXml11 + pXml[i]);
         end;
       end
      else if ( y = 10 ) then
       begin
        for i := 80001 to (Length(pXml)) do
         begin
          vXml11 := (vXml11 + pXml[i]);
         end;
       end;

      if ( (y > 11) and (Length(pXml) > 96000) ) then
       begin
        for i := 88001 to 96000 do
         begin
          vXml12 := (vXml12 + pXml[i]);
         end;
       end
      else if ( y = 11 ) then
       begin
        for i := 88001 to (Length(pXml)) do
         begin
          vXml12 := (vXml12 + pXml[i]);
         end;
       end;

      if ( (y > 12) and (Length(pXml) > 104000) ) then
       begin
        for i := 96001 to 104000 do
         begin
          vXml13 := (vXml13 + pXml[i]);
         end;
       end
      else if ( y = 12 ) then
       begin
        for i := 96001 to (Length(pXml)) do
         begin
          vXml13 := (vXml13 + pXml[i]);
         end;
       end;

      if ( (y > 13) and (Length(pXml) > 112000) ) then
       begin
        for i := 104001 to 112000 do
         begin
          vXml14 := (vXml14 + pXml[i]);
         end;
       end
      else if ( y = 13 ) then
       begin
        for i := 104001 to (Length(pXml)) do
         begin
          vXml14 := (vXml14 + pXml[i]);
         end;
       end;

      if ( (y > 14) and (Length(pXml) > 120000) ) then
       begin
        for i := 112001 to 120000 do
         begin
          vXml15 := (vXml15 + pXml[i]);
         end;
       end
      else if ( y = 14 ) then
       begin
        for i := 112001 to (Length(pXml)) do
         begin
          vXml15 := (vXml15 + pXml[i]);
         end;
       end;

      if ( (y > 15) and (Length(pXml) > 128000) ) then
       begin
        for i := 120001 to 128000 do
         begin
          vXml16 := (vXml16 + pXml[i]);
         end;
       end
      else if ( y = 15 ) then
       begin
        for i := 120001 to (Length(pXml)) do
         begin
          vXml16 := (vXml16 + pXml[i]);
         end;
       end;

      if ( (y > 16) and (Length(pXml) > 136000) ) then
       begin
        for i := 128001 to 136000 do
         begin
          vXml17 := (vXml17 + pXml[i]);
         end;
       end
      else if ( y = 16 ) then
       begin
        for i := 128001 to (Length(pXml)) do
         begin
          vXml17 := (vXml17 + pXml[i]);
         end;
       end;

      if ( (y > 17) and (Length(pXml) > 144000) ) then
       begin
        for i := 136001 to 144000 do
         begin
          vXml18 := (vXml18 + pXml[i]);
         end;
       end
      else if ( y = 17 ) then
       begin
        for i := 136001 to (Length(pXml)) do
         begin
          vXml18 := (vXml18 + pXml[i]);
         end;
       end;

      if ( (y > 18) and (Length(pXml) > 152000) ) then
       begin
        for i := 144001 to 152000 do
         begin
          vXml19 := (vXml19 + pXml[i]);
         end;
       end
      else if ( y = 18 ) then
       begin
        for i := 144001 to (Length(pXml)) do
         begin
          vXml19 := (vXml19 + pXml[i]);
         end;
       end;

      if ( (y > 19) and (Length(pXml) > 160000) ) then
       begin
        for i := 152001 to 160000 do
         begin
          vXml20 := (vXml20 + pXml[i]);
         end;
       end
      else if ( y = 19 ) then
       begin
        for i := 152001 to (Length(pXml)) do
         begin
          vXml20 := (vXml20 + pXml[i]);
         end;
       end;

      if ( (y > 20) and (Length(pXml) > 168000) ) then
       begin
        for i := 160001 to 168000 do
         begin
          vXml21 := (vXml21 + pXml[i]);
         end;
       end
      else if ( y = 20 ) then
       begin
        for i := 160001 to (Length(pXml)) do
         begin
          vXml21 := (vXml21 + pXml[i]);
         end;
       end;

      if ( (y > 21) and (Length(pXml) > 176000) ) then
       begin
        for i := 168001 to 176000 do
         begin
          vXml22 := (vXml22 + pXml[i]);
         end;
       end
      else if ( y = 21 ) then
       begin
        for i := 168001 to (Length(pXml)) do
         begin
          vXml22 := (vXml22 + pXml[i]);
         end;
       end;

      if ( (y > 22) and (Length(pXml) > 184000) ) then
       begin
        for i := 176001 to 184000 do
         begin
          vXml23 := (vXml23 + pXml[i]);
         end;
       end
      else if ( y = 22 ) then
       begin
        for i := 176001 to (Length(pXml)) do
         begin
          vXml23 := (vXml23 + pXml[i]);
         end;
       end;

      if ( (y > 23) and (Length(pXml) > 192000) ) then
       begin
        for i := 184001 to 192000 do
         begin
          vXml24 := (vXml24 + pXml[i]);
         end;
       end
      else if ( y = 23 ) then
       begin
        for i := 184001 to (Length(pXml)) do
         begin
          vXml24 := (vXml24 + pXml[i]);
         end;
       end;

      if ( (y > 24) and (Length(pXml) > 200000) ) then
       begin
        for i := 192001 to 200000 do
         begin
          vXml25 := (vXml25 + pXml[i]);
         end;
       end
      else if ( y = 24 ) then
       begin
        for i := 192001 to (Length(pXml)) do
         begin
          vXml25 := (vXml25 + pXml[i]);
         end;
       end;

      if ( (y > 25) and (Length(pXml) > 208000) ) then
       begin
        for i := 200001 to 208000 do
         begin
          vXml26 := (vXml26 + pXml[i]);
         end;
       end
      else if ( y = 25 ) then
       begin
        for i := 200001 to (Length(pXml)) do
         begin
          vXml26 := (vXml26 + pXml[i]);
         end;
       end;

      if ( (y > 26) and (Length(pXml) > 216000) ) then
       begin
        for i := 208001 to 216000 do
         begin
          vXml27 := (vXml27 + pXml[i]);
         end;
       end
      else if ( y = 26 ) then
       begin
        for i := 208001 to (Length(pXml)) do
         begin
          vXml27 := (vXml27 + pXml[i]);
         end;
       end;

      if ( (y > 27) and (Length(pXml) > 224000) ) then
       begin
        for i := 216001 to 224000 do
         begin
          vXml28 := (vXml28 + pXml[i]);
         end;
       end
      else if ( y = 27 ) then
       begin
        for i := 216001 to (Length(pXml)) do
         begin
          vXml28 := (vXml28 + pXml[i]);
         end;
       end;

      if ( (y > 28) and (Length(pXml) > 232000) ) then
       begin
        for i := 224001 to 232000 do
         begin
          vXml29 := (vXml29 + pXml[i]);
         end;
       end
      else if ( y = 28 ) then
       begin
        for i := 224001 to (Length(pXml)) do
         begin
          vXml29 := (vXml29 + pXml[i]);
         end;
       end;

      if ( (y > 29) and (Length(pXml) > 240000) ) then
       begin
        for i := 232001 to 2400000 do
         begin
          vXml30 := (vXml30 + pXml[i]);
         end;
       end
      else if ( y = 29 ) then
       begin
        for i := 232001 to (Length(pXml)) do
         begin
          vXml30 := (vXml30 + pXml[i]);
         end;
       end;

      if ( (y > 30) and (Length(pXml) > 248000) ) then
       begin
        for i := 240001 to 248000 do
         begin
          vXml31 := (vXml31 + pXml[i]);
         end;
       end
      else if ( y = 30 ) then
       begin
        for i := 240001 to (Length(pXml)) do
         begin
          vXml31 := (vXml31 + pXml[i]);
         end;
       end;

      if ( (y > 31) and (Length(pXml) > 256000) ) then
       begin
        for i := 248001 to 256000 do
         begin
          vXml32 := (vXml32 + pXml[i]);
         end;
       end
      else if ( y = 31 ) then
       begin
        for i := 248001 to (Length(pXml)) do
         begin
          vXml32 := (vXml32 + pXml[i]);
         end;
       end;

      if ( (y > 32) and (Length(pXml) > 264000) ) then
       begin
        for i := 256001 to 264000 do
         begin
          vXml33 := (vXml33 + pXml[i]);
         end;
       end
      else if ( y = 32 ) then
       begin
        for i := 256001 to (Length(pXml)) do
         begin
          vXml33 := (vXml33 + pXml[i]);
         end;
       end;

      if ( (y > 33) and (Length(pXml) > 272000) ) then
       begin
        for i := 264001 to 272000 do
         begin
          vXml34 := (vXml34 + pXml[i]);
         end;
       end
      else if ( y = 33 ) then
       begin
        for i := 264001 to (Length(pXml)) do
         begin
          vXml34 := (vXml34 + pXml[i]);
         end;
       end;

      if ( (y > 34) and (Length(pXml) > 280000) ) then
       begin
        for i := 272001 to 280000 do
         begin
          vXml35 := (vXml35 + pXml[i]);
         end;
       end
      else if ( y = 34 ) then
       begin
        for i := 272001 to (Length(pXml)) do
         begin
          vXml35 := (vXml35 + pXml[i]);
         end;
       end;

      if ( (y > 35) and (Length(pXml) > 288000) ) then
       begin
        for i := 280001 to 288000 do
         begin
          vXml36 := (vXml36 + pXml[i]);
         end;
       end
      else if ( y = 35 ) then
       begin
        for i := 280001 to (Length(pXml)) do
         begin
          vXml36 := (vXml36 + pXml[i]);
         end;
       end;

      if ( (y > 36) and (Length(pXml) > 296000) ) then
       begin
        for i := 288001 to 296000 do
         begin
          vXml37 := (vXml37 + pXml[i]);
         end;
       end
      else if ( y = 36 ) then
       begin
        for i := 288001 to (Length(pXml)) do
         begin
          vXml37 := (vXml37 + pXml[i]);
         end;
       end;

      if ( (y > 37) and (Length(pXml) > 304000) ) then
       begin
        for i := 296001 to 304000 do
         begin
          vXml38 := (vXml38 + pXml[i]);
         end;
       end
      else if ( y = 37 ) then
       begin
        for i := 296001 to (Length(pXml)) do
         begin
          vXml38 := (vXml38 + pXml[i]);
         end;
       end;

      if ( (y > 38) and (Length(pXml) > 312000) ) then
       begin
        for i := 304001 to 312000 do
         begin
          vXml39 := (vXml39 + pXml[i]);
         end;
       end
      else if ( y = 38 ) then
       begin
        for i := 304001 to (Length(pXml)) do
         begin
          vXml39 := (vXml39 + pXml[i]);
         end;
       end;

      if ( (y > 39) and (Length(pXml) > 320000) ) then
       begin
        for i := 312001 to 320000 do
         begin
          vXml40 := (vXml40 + pXml[i]);
         end;
       end
      else if ( y = 39 ) then
       begin
        for i := 312001 to (Length(pXml)) do
         begin
          vXml40 := (vXml40 + pXml[i]);
         end;
       end;

      if ( y = 40 ) then
       begin
        for i := 320001 to (Length(pXml)) do
         begin
          vXml41 := (vXml41 + pXml[i]);
         end;
       end;

      y := -1;

     end;

    DMFD.FDQuery2.DisableControls;
    DMFD.FDQuery2.Close;
    DMFD.FDQuery2.SQL.Clear;
    DMFD.FDQuery2.SQL.Add( 'insert into nfe_xml (                                       ' );
    DMFD.FDQuery2.SQL.Add( 'origem,                                                     ' );
    DMFD.FDQuery2.SQL.Add( 'codigo_loja,                                                ' );
    DMFD.FDQuery2.SQL.Add( 'dEmi,                                                       ' );
    DMFD.FDQuery2.SQL.Add( 'nNF,                                                        ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota,                                                   ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota1,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota2,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota3,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota4,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota5,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota6,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota7,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota8,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota9,                                                  ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota10,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota11,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota12,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota13,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota14,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota15,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota16,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota17,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota18,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota19,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota20,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota21,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota22,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota23,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota24,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota25,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota26,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota27,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota28,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota29,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota30,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota31,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota32,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota33,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota34,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota35,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota36,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota37,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota38,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota39,                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'xml_nota40)                                                 ' );
    DMFD.FDQuery2.SQL.Add( 'values (                                                    ' );
    DMFD.FDQuery2.SQL.Add( ':origem,                                                    ' );
    DMFD.FDQuery2.SQL.Add( ':codigo_loja,                                               ' );
    DMFD.FDQuery2.SQL.Add( ':dEmi,                                                      ' );
    DMFD.FDQuery2.SQL.Add( ':nNF,                                                       ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota,                                                  ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota1,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota2,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota3,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota4,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota5,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota6,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota7,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota8,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota9,                                                 ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota10,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota11,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota12,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota13,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota14,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota15,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota16,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota17,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota18,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota19,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota20,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota21,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota22,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota23,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota24,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota25,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota26,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota27,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota28,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota29,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota30,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota31,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota32,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota33,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota34,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota35,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota36,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota37,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota38,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota39,                                                ' );
    DMFD.FDQuery2.SQL.Add( ':xml_nota40)                                                ' );
    DMFD.FDQuery2.Params[0].AsString    := 'IMPORTA';
    DMFD.FDQuery2.Params[1].AsInteger   := StrToIntDef(edt_CodEmp.Text, 0);
    DMFD.FDQuery2.Params[2].AsString    := FormatDateTime('yyyy/mm/dd', Ide.dEmi);
    DMFD.FDQuery2.Params[3].AsString    := vartostr(Ide.nNF);
    DMFD.FDQuery2.Params[4].AsMemo      := vXml1;
    DMFD.FDQuery2.Params[5].AsMemo      := vXml2;
    DMFD.FDQuery2.Params[6].AsMemo      := vXml3;
    DMFD.FDQuery2.Params[7].AsMemo      := vXml4;
    DMFD.FDQuery2.Params[8].AsMemo      := vXml5;
    DMFD.FDQuery2.Params[9].AsMemo      := vXml6;
    DMFD.FDQuery2.Params[10].AsMemo     := vXml7;
    DMFD.FDQuery2.Params[11].AsMemo     := vXml8;
    DMFD.FDQuery2.Params[12].AsMemo     := vXml9;
    DMFD.FDQuery2.Params[13].AsMemo     := vXml10;
    DMFD.FDQuery2.Params[14].AsMemo     := vXml11;
    DMFD.FDQuery2.Params[15].AsMemo     := vXml12;
    DMFD.FDQuery2.Params[16].AsMemo     := vXml13;
    DMFD.FDQuery2.Params[17].AsMemo     := vXml14;
    DMFD.FDQuery2.Params[18].AsMemo     := vXml15;
    DMFD.FDQuery2.Params[19].AsMemo     := vXml16;
    DMFD.FDQuery2.Params[20].AsMemo     := vXml17;
    DMFD.FDQuery2.Params[21].AsMemo     := vXml18;
    DMFD.FDQuery2.Params[22].AsMemo     := vXml19;
    DMFD.FDQuery2.Params[23].AsMemo     := vXml20;
    DMFD.FDQuery2.Params[24].AsMemo     := vXml21;
    DMFD.FDQuery2.Params[25].AsMemo     := vXml22;
    DMFD.FDQuery2.Params[26].AsMemo     := vXml23;
    DMFD.FDQuery2.Params[27].AsMemo     := vXml24;
    DMFD.FDQuery2.Params[28].AsMemo     := vXml25;
    DMFD.FDQuery2.Params[29].AsMemo     := vXml26;
    DMFD.FDQuery2.Params[30].AsMemo     := vXml27;
    DMFD.FDQuery2.Params[31].AsMemo     := vXml28;
    DMFD.FDQuery2.Params[32].AsMemo     := vXml29;
    DMFD.FDQuery2.Params[33].AsMemo     := vXml30;
    DMFD.FDQuery2.Params[34].AsMemo     := vXml31;
    DMFD.FDQuery2.Params[35].AsMemo     := vXml32;
    DMFD.FDQuery2.Params[36].AsMemo     := vXml33;
    DMFD.FDQuery2.Params[37].AsMemo     := vXml34;
    DMFD.FDQuery2.Params[38].AsMemo     := vXml35;
    DMFD.FDQuery2.Params[39].AsMemo     := vXml36;
    DMFD.FDQuery2.Params[40].AsMemo     := vXml37;
    DMFD.FDQuery2.Params[41].AsMemo     := vXml38;
    DMFD.FDQuery2.Params[42].AsMemo     := vXml39;
    DMFD.FDQuery2.Params[43].AsMemo     := vXml40;
    DMFD.FDQuery2.Params[44].AsMemo     := vXml41;

    try

     DMFD.FDQuery2.ExecSQL;

    except on e:Exception do
     begin

      Application.Messagebox(PWideChar('ERRO: Não inseriu o XML da nfe no banco de dados!' + Char(13) +
                              e.Message),'Atenção!',mb_iconstop+mb_ok);
      exit;

     end;

    end;

    DMFD.FDQuery2.Close;

   finally

    DMFD.FDQuery2.EnableControls;

   end;

   //final - grava xml da nfe

  end;

end;

//------------------------------------------------------------------------------

procedure TFrGBNFe.BitBtn10Click(Sender: TObject);
begin
 if ( FrPar = nil ) then
   FrPar := TFrPar.Create(Application);
 FrPar.BringToFront;
 FrPar.ShowModal;
end;

procedure TFrGBNFe.BitBtn14Click(Sender: TObject);
begin
 // by Edson Lima ; 8.5.2012 ; 10:07 ; Chama a retina de backup
 if ( FrBackup = nil ) then
   FrBackup := TFrBackup.Create(Application);
 FrBackup.BringToFront;
 FrBackup.ShowModal;
end;

procedure TFrGBNFe.BitBtn13Click(Sender: TObject);
begin
 if ( FrInut = nil ) then
   FrInut := TFrInut.Create(Application);
 FrInut.BringToFront;
 FrInut.ShowModal;

 /// By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFe();

end;

procedure TFrGBNFe.RadioGroup1Click(Sender: TObject);
var
  aux : string;
begin

 if not fIniPen() then exit;                                                    // função de coleta de dados

 aux := '';
 aux := edt_CodEmp.Text + ',' + '''' + FormatDateTime('yyyy/mm/dd', cxdtp1.Date) + ''''+ ',';
 aux := aux + '''' + FormatDateTime('yyyy/mm/dd', cxdtp2.Date) + '''' + ',';
 aux := aux + '''' + edt_NumNNF.Text + '''' + ',';
 aux := aux + '''' + edt_CodDes.Text + '''' + ',';
 aux := aux + '''' + IntToStr(RadioGroup2.ItemIndex) + '''';

 pAtuNFe();

 cxTL.BringToFront;

 Case RadioGroup1.ItemIndex of
 0:                                                                             // PENDENTES
  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := True;
   RadioButton1.Enabled := True;
   RadioButton3.Enabled := True;
   RadioButton1.Checked := True;
   RadioButton3.Checked := False;
   BitBtn2.Enabled      := True;
   BitBtn11.Enabled     := False;
   BitBtn9.Enabled      := False;
   BitBtn8.Enabled      := True;
   BitBtn7.Enabled      := False;
   BitBtn6.Enabled      := False;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := False;
   edt_CodDes.Enabled   := False;
   cxdtp1.Enabled       := False;
   cxdtp2.Enabled       := False;
   Panel10.Caption      := 'P E N D E N T E S  -  N O R M A L';
   cxTL.PopupMenu       := PopupMenu2;
  end;

 1:                                                                             // PENDENTES EM CONTINGÊNCIA

  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := False;
   RadioButton1.Enabled := True;
   RadioButton3.Enabled := True;
   RadioButton1.Checked := False;
   RadioButton3.Checked := True;
   BitBtn2.Enabled      := True;
   BitBtn11.Enabled     := False;
   BitBtn9.Enabled      := True;
   BitBtn8.Enabled      := True;
   BitBtn7.Enabled      := False;
   BitBtn6.Enabled      := False;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := False;
   edt_CodDes.Enabled   := False;
   cxdtp1.Enabled       := False;
   cxdtp2.Enabled       := False;
   Panel10.Caption      := 'P E N D E N T E S  -  C O N T I N G Ê N C I A S';
   cxTL.PopupMenu       := PopupMenu4;
   cxTL.BringToFront;
  end;

 2:                                                                             // TRANSMITIDAS

  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := False;
   RadioButton1.Enabled := False;
   RadioButton3.Enabled := False;
   BitBtn2.Enabled      := False;
   BitBtn11.Enabled     := True;
   BitBtn9.Enabled      := True;
   BitBtn8.Enabled      := True;
   BitBtn7.Enabled      := True;
   BitBtn6.Enabled      := True;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := True;
   edt_CodDes.Enabled   := True;
   cxdtp1.Enabled       := True;
   cxdtp2.Enabled       := True;
   Panel10.Caption      := 'T R A N S M I T I D A S';
   cxTL.PopupMenu       := PopupMenu1;
   cxTL.BringToFront;
  end;

 3:                                                                             // DENEGADAS

  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := False;
   RadioButton1.Enabled := False;
   RadioButton3.Enabled := False;
   BitBtn2.Enabled      := False;
   BitBtn11.Enabled     := False;
   BitBtn9.Enabled      := False;
   BitBtn8.Enabled      := False;
   BitBtn7.Enabled      := False;
   BitBtn6.Enabled      := False;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := True;
   edt_CodDes.Enabled   := True;
   cxdtp1.Enabled       := True;
   cxdtp2.Enabled       := True;
   Panel10.Caption      := 'D E N E G A D A S';
   cxTL.PopupMenu       := PopupMenu3;
   cxTL.BringToFront;
  end;

 4:                                                                             // CANCELADAS

  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := False;
   RadioButton1.Enabled := False;
   RadioButton3.Enabled := False;
   BitBtn2.Enabled      := False;
   BitBtn11.Enabled     := False;
   BitBtn9.Enabled      := False;
   BitBtn8.Enabled      := False;
   BitBtn7.Enabled      := False;
   BitBtn6.Enabled      := True;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := True;
   edt_CodDes.Enabled   := True;
   cxdtp1.Enabled       := True;
   cxdtp2.Enabled       := True;
   Panel10.Caption := 'C A N C E L A D A S';
   cxTL.PopupMenu       := PopupMenu5;
   cxTL.BringToFront;
  end;

 5:                                                                             // INUTILIZADAS

  begin
   // Desabilita os botõesde envio
   GroupBox9.Enabled    := False;
   RadioButton1.Enabled := False;
   RadioButton3.Enabled := False;
   BitBtn2.Enabled      := False;
   BitBtn11.Enabled     := False;
   BitBtn9.Enabled      := False;
   BitBtn8.Enabled      := False;
   BitBtn7.Enabled      := False;
   BitBtn6.Enabled      := False;
   BitBtn5.Enabled      := True;
   BitBtn4.Enabled      := True;
   BitBtn3.Enabled      := True;
   BitBtn13.Enabled     := True;
   edt_NumNNF.Enabled   := False;
   edt_CodDes.Enabled   := False;
   cxdtp1.Enabled       := False;
   cxdtp2.Enabled       := False;
   Panel10.Caption      := 'I N U T I L I Z A D A S';
   cxTLInut.BringToFront;
  end;
 end;

 // Tratamento do nível de acesso, passado pelo ERP
 case StrToIntDef(gNivel, 0) of
  0:
   begin
    { Esse nível deixa liberado tudo no GBNFe - Acesso Total                   }
   end;

  1:
   begin
    { Este nível inibe (deixa invisível) o botão do MDe                        }

    BitBtn16.Visible                        := False;
   end;

  2:
   begin
   end;

  3:
   begin
   end;

  4:
   begin
    { Este Libera somente o MDe - Quando informado entra direto na janela do
      MDe maximizada                                                           }

    PopupMenu2.Items[1].Enabled             := False;
    BitBtn1.Enabled                         := False;
    BitBtn2.Enabled                         := False;
    BitBtn3.Enabled                         := False;
    BitBtn4.Enabled                         := False;
    BitBtn5.Enabled                         := False;
    BitBtn6.Enabled                         := False;
    BitBtn7.Enabled                         := False;
    BitBtn8.Enabled                         := False;
    BitBtn9.Enabled                         := False;
    BitBtn10.Enabled                        := False;
    BitBtn11.Enabled                        := False;
    BitBtn13.Enabled                        := False;
    BitBtn14.Enabled                        := False;
    BitBtn15.Enabled                        := False;
    BitBtn16.Enabled                        := True;
    RadioButton1.Enabled                    := False;
    GroupBox9.Enabled                       := False;
   end;

  5:
   begin
    { Quando expecificado, não verifica as NFe selecionadas que estão em
      contigência e as já enviadas ha mais de um dia para seleciona            }

   end;

  6..9:
   begin
    { Livre }

   end;

 else
   begin
    { Livre }

   end;
 end;

end;

procedure TFrGBNFe.FormCreate(Sender: TObject);
var
 i, x              : integer;
 lista             : Tstringlist;
 data_web,
 data_local,
 path_local,
 path,
 arq_servidor      : string;

begin

 //-----------------------------------------------------------------------------
 // configurar para usar a WinCrypt e não a CAPICOM
 //-----------------------------------------------------------------------------
 ACBrNFe1.Configuracoes.Geral.SSLCryptLib   := cryCapicom;
 ACBrNFe1.Configuracoes.Geral.SSLHttpLib    := httpWinINet;
 ACBrNFe1.Configuracoes.Geral.SSLLib        := libWinCrypt;
 ACBrNFe1.Configuracoes.Geral.SSLXmlSignLib := xsMsXml;

 //-----------------------------------------------------------------------------
 // Define o tempo de showhint
 //-----------------------------------------------------------------------------
 SetClipboardViewer(Handle);

 //-----------------------------------------------------------------------------
 // Define o tempo de showhint
 //-----------------------------------------------------------------------------
 Application.HintPause     := 1000;                                             //um segundo para mostrar o hint
 Application.HintHidePause := 30000;                                            //tempo de duração = 30 segundos

 //-----------------------------------------------------------------------------
 // ROTINA DE ATUALIZAÇÃO
 //-----------------------------------------------------------------------------

 if ( gAtualiza ) then
  begin
   if ( InternetCheckConnection('http://www.google.com.br/', 1, 0) ) then
    begin

     arq_servidor := ExtractFileName(Application.ExeName);                      // nome do arquivo e extensão atualizado no servidor
     path         := ExtractFilePath(Application.ExeName);                      // variável com o caminho do exe.
     path_local   := ExtractFilePath(Application.ExeName) + arq_servidor;       // colocar na variavel o caminho do exe da applicação

     //-------------------------------------------------------------------------
     //fazer conexão com o seu servidor ftp onde se encontra o exe atualizado

     IdFTP1.Host     := 'ftp.casadarocaagrop.com.br';                           // host do servidor
     IdFTP1.Username := 'casadaroca1';                                          // login da conta ftp
     IdFTP1.Password := 'nybhg+ne20';                                           // senha da conta ftp
     IdFTP1.Port     := 21;                                                     // porta
     IdFTP1.Passive  := false;                                                  // 'True' se usar proxy
     try
      IdFTP1.Connect;                                                           // conectar ao servidot ftp
      IdFTP1.ChangeDir('/GB/AtualizacaoSoftware/AtualizacaoGeral/AtuNFe');      // apontar para o diretorio do ftp
     except
      IdFtp1.Disconnect;
     end;

     if ( IdFTP1.Connected = true ) then                                        // verifica se esta conectado ao servidor ftp
      begin

       lista         := TStringList.Create;
       lista.Add('ok');
       lista.Clear;
       IdFTP1.List( lista, arq_servidor, true );                                // cria a lista do arquivo do diretorio apontado
       IdFTP1.List(nil);

       for x := 0 to IdFTP1.DirectoryListing.Count -1 do
        begin
         if ( UpperCase(arq_servidor) = UpperCase(IdFTP1.DirectoryListing.Items[x].FileName) ) then
          begin
           data_web      := FormatDateTime( 'dd/mm/yyyy HH:mm:ss',
                            IdFTP1.DirectoryListing.Items[x].ModifiedDate );    // adiciona data do arquivo do servidor ftp a variavel
          end;
        end;

       data_local    := FormatDateTime( 'dd/mm/yyyy HH:mm:ss',
                        FileDateToDateTime(FileAge(path_local)));               // adiciona data do arquivo local a variavel
       FreeAndNil(Lista);                                                       // finaliza o stringlist
       IdFTP1.Disconnect;                                                       // disconecta do servidor ftp

       if ( Trim(data_web) = '' ) then
        data_web := data_local;

       if ( (StrToDateTime(data_web)) > (StrToDateTime(data_local)) ) then      // Aqui se compara os valores das datas dos arquivos
        begin

         // Verifica se o atualizador existe
         if ( FilesExists(PWideChar(ExtractFilePath(Application.ExeName) + 'AtuNFe.exe')) ) then
          begin

           if Application.MessageBox( 'Existe nova versão deste aplicativo para atualizar!' + chr(13) +
                                      'Gostaria de executar esse procedimento agora?',
                                      'Atualização: - GB -', MB_ICONQUESTION + MB_YESNO ) = IdYes then
            begin

             // Chama o AtuNFe.Exe e envia os parêmetros recebidos do ERP
             WinExec(PAnsiChar(AnsiString(ExtractFilePath(Application.ExeName) + 'AtuNFe.exe' +
                            ' /developed_gb_informática_ltda' +
                            ' /' + gCodEmp +
                            ' /' + gUsu +
                            ' /' + gNivel +
                            ' /' + gInstancias +
                            ' /' + gExpress +
                            ' /' + gNNF +
                            ' /' + gOpcao + chr(0) +
                            ' /' + arq_servidor +
                            ' /' + path)),SW_SHOWNORMAL );                      // executa o aplicativo que fara o download
             Application.Terminate;                                             //finalza applicaçao para que seja feita a substituicao do aplicativo

            end;

          end;

        end;

      end;

    end;
  end;

 //-----------------------------------------------------------------------------

 // Seta caminho do executável
 gCamExe := ExtractFilePath(Application.ExeName);                               // Pega o caminho do executavel GBNFe independente de quem o chamou

 // Seta caminho padão
 gCamPad := gCamExe;
 x       := 0;
 for i := Length(gCamPad) - 1 downto 0 do
  if gCamPad[i] = '\' then
   begin
    x := (x + 1);
    gCamPad := Copy(gCamPad, 1, (i-1));
    if x > 0 then
     Break;
   end;
 gCamPad := gCamPad + '\';

 // Atribui cor para WBResposta...
 TWebControl(WBResposta).ParentColor := False;
 TWebControl(WBResposta).Color       := clInfoBk;

 // By EL 9.2.2012
 // Estabelece tamanho do formulario principal
 FrGBNFe.Height := 624;
 FrGBNFe.Width  := 958;

 cxdtp1.Date := date();
 cxdtp2.Date := date();

end;

procedure TFrGBNFe.ACBrNFe1GerarLog(const Mensagem: String);
begin
 memoLog.Lines.Add(Mensagem);
end;

procedure TFrGBNFe.ACBrNFe1StatusChange(Sender: TObject);
begin
 case ACBrNFe1.Status of
  stIdle :
   begin
    if ( frmStatus <> nil ) then
      frmStatus.Hide;
   end;
  stNFeStatusServico :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeRecepcao :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNfeRetRecepcao :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNfeConsulta :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Consultando NFe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNfeCancelamento :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNfeInutilizacao :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeRecibo :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeCadastro :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeEmail :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando Email...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeCCe :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando CCe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stNFeEvento :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Enviando Eventos...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stConsNFeDest :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Consulta NFe Destinada...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stDownloadNFe :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Download da NFe...';
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stAdmCSCNFCe :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Administrando CSC NFCe...'; // ?
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
  stDistDFeInt :
   begin
    if ( frmStatus = nil ) then
      frmStatus := TfrmStatus.Create(Application);
    frmStatus.lblStatus.Caption := 'Destinando DFe Int...'; // ?
    frmStatus.BringToFront;
    frmStatus.Show;
    Application.ProcessMessages;
   end;
 end;
 Application.ProcessMessages;
end;

procedure TFrGBNFe.BitBtn1Click(Sender: TObject);
begin

 fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                                  // Mudança de versão

 PageControl1.TabIndex := 2;

 //-----------------------------------------------------------------------------

 if (DMFD.FDQuery4['Versao']      = 've3131') then
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310
 else if (DMFD.FDQuery4['Versao']      = 've4040') then
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
 else
  ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

 //-----------------------------------------------------------------------------

 try

  ACBrNFe1.WebServices.StatusServico.Executar;

 except on e:Exception do

  ShowMessage(e.Message);

 end;

 MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
 memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetornoWS);
 LoadXML(MemoResp, WBResposta);

 memoLog.Clear;
 MemoLog.Lines.Add('');
 MemoLog.Lines.Add('* -- STATUS - NFe & NFCe -- *');
 MemoLog.Lines.Add('Tipo de Ambiente: '+ TpAmbToStr(ACBrNFe1.WebServices.StatusServico.TpAmb));
 MemoLog.Lines.Add('Versão do Documento Fiscal: '+ ACBrNFe1.WebServices.StatusServico.versao);
 MemoLog.Lines.Add('Versão do Aplicativo: '+ ACBrNFe1.WebServices.StatusServico.verAplic);
 MemoLog.Lines.Add('Código do Status: '+ IntToStr(ACBrNFe1.WebServices.StatusServico.cStat));
 MemoLog.Lines.Add('Código da UF: '+ IntToStr(ACBrNFe1.WebServices.StatusServico.cUF));
 MemoLog.Lines.Add('Descrição: '+ ACBrNFe1.WebServices.StatusServico.xMotivo);

 if ( not(FrGBNFe.Panel7.Visible) ) then
  begin

   Application.Messagebox( PWideChar('* -- STATUS - NFe & NFCe -- *' + chr(13) +
                                     'Tipo de Ambiente: '     + TpAmbToStr(ACBrNFe1.WebServices.StatusServico.TpAmb) + chr(13) +
                                     'Versão do Aplicativo: ' + ACBrNFe1.WebServices.StatusServico.verAplic          + chr(13) +
                                     'Código do Status: '     + IntToStr(ACBrNFe1.WebServices.StatusServico.cStat)   + chr(13) +
                                     'Código da UF: '         + IntToStr(ACBrNFe1.WebServices.StatusServico.cUF)     + chr(13) +
                                     'Descrição: '            + ACBrNFe1.WebServices.StatusServico.xMotivo),
                                     'Atenção!'               , MB_ICONINFORMATION );

  end;

 /// By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFeT();

end;

procedure TFrGBNFe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin

 try

  MyMemo.Lines.SaveToFile(gCamLog + 'temp.xml');

  MyWebBrowser.Navigate(gCamLog + 'temp.xml');

 except

 end;

end;

procedure TFrGBNFe.LoadXML1(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
var
 xAux : string;
 vArq : file;

begin

 if FileExists(gCamLog + gNomXML) then
  begin

   if (gAnoMes = '') then
    begin

     if ( FrXML.PageControl1.TabIndex = 0 ) then
      begin

       if MessageDlg('Arquivo XML [' + gNomXML + '] já existe ! Deseja Salvar? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

         // Salva os arquivos no log
         MyMemo.Lines.SaveToFile(gCamLog + gNomXML);
         MyWebBrowser.Navigate(gCamLog + gNomXML);

        end;

      end

     else

      begin

       try

        // Salva os arquivos no log
        AssignFile(vArq, gCamLog + gNomXML);
        if ( FileIsReadOnly( gCamLog + gNomXML ) ) then
         CloseFile( vArq );
        MyMemo.Lines.SaveToFile(gCamLog + gNomXML);
        MyWebBrowser.Navigate(gCamLog + gNomXML);

       except on e:Exception do

        //ShowMessage(e.Message);

       end;

      end;

    end

   else

    begin

     // Diretórios e arquivos no seu ano e mês correto
     xAux := trim(gCamXml) +                                                    // Caminho do arquivo log (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
             gAnoMes +                                                          // Ano, mês
             '\';

     if not DirectoryExists(xAux) then
      CreateDir(xAux);

     xAux := xAux + 'NFe\';                                                     // NFe

     if not DirectoryExists(xAux) then
      CreateDir(xAux);

     try

      // Salva os arquivos no xml correto
      AssignFile(vArq, gCamLog + gNomXML);
      if ( FileIsReadOnly( gCamLog + gNomXML ) ) then
       CloseFile( vArq );
      MyMemo.Lines.SaveToFile(xAux + gNomXML);
      MyWebBrowser.Navigate(xAux + gNomXML);

     except on e:Exception do

      //howMessage(e.Message);

     end;

    end;
  end

 else

  begin

   if (gAnoMes = '') then
    begin

     MyMemo.Lines.SaveToFile(gCamLog + gNomXML);
     MyWebBrowser.Navigate(gCamLog + gNomXML);


    end
   else
    begin

     // Diretórios e arquivos no seu ano e mês correto
     xAux := trim(gCamXml) +                                                    // Caminho do arquivo log (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
             gAnoMes +                                                          // Ano, mês
             '\';

     if not DirectoryExists(xAux) then
      CreateDir(xAux);

     xAux := xAux + 'NFe\';                                                     // NFe

     if not DirectoryExists(xAux) then
      CreateDir(xAux);

     // Salva os arquivos no xml correto
     MyMemo.Lines.SaveToFile(xAux + gNomXML);
     MyWebBrowser.Navigate(xAux + gNomXML);

    end;
  end;
end;

procedure TFrGBNFe.LoadXML2(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin

 try

  MyMemo.Lines.SaveToFile(gCamLog + 'xml-temp.xml');

  MyWebBrowser.Navigate(gCamLog + 'xml-temp.xml');

 except

 end;

 end;

procedure TFrGBNFe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin

 // Altere a propriedade do KeyPreview do Form pra true
 if not (ActiveControl is  TDbGrid) then
  begin

   Direction := -1;

   if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F1) ) then
    begin
     if ( FrGBNFe.BitBtn1.Enabled ) then                                        // Status
      FrGBNFe.BitBtn1Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F2) ) then

    begin
     if ( FrGBNFe.BitBtn2.Enabled ) then                                        // Enviar NFe
      begin
       gGeraXML := False;
       FrGBNFe.BitBtn2Click(Sender);
      end;
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F3) ) then

    begin
     if ( FrGBNFe.BitBtn5.Enabled ) then                                        // Mostra XML
      FrGBNFe.BitBtn5Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F4) ) then

    begin
     if ( FrGBNFe.BitBtn6.Enabled ) then                                        // Envia eMail
      FrGBNFe.BitBtn6Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F5) ) then

    begin
     if ( FrGBNFe.BitBtn7.Enabled ) then                                        // Gera PDF
      FrGBNFe.BitBtn7Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F6) ) then

    begin

    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F7) ) then

    begin
     if ( FrGBNFe.BitBtn8.Enabled ) then                                        // Consulta
      FrGBNFe.BitBtn8Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F8) ) then

    begin
     if ( FrGBNFe.BitBtn9.Enabled ) then                                        // Imprime
      FrGBNFe.BitBtn9Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F9) ) then

    begin
     if ( FrGBNFe.BitBtn11.Enabled ) then                                       // Cancela
      FrGBNFe.BitBtn11Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F10) ) then

    begin
     if ( FrGBNFe.BitBtn13.Enabled ) then                                       // Inutiliza
      FrGBNFe.BitBtn13Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F11) ) then

    begin
     if ( FrGBNFe.BitBtn4.Enabled ) then                                        // Gera XML-BD
      FrGBNFe.BitBtn4Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssAlt]) and (Key = VK_F12) ) then

    begin
     if ( FrGBNFe.BitBtn15.Enabled ) then                                       // XML NFe_XML
      FrGBNFe.BitBtn15Click(Sender);
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('D')) ) then

    begin
     MarcaBloco( cxTL, False, True );                                           // Desmarca todos ítens
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('E')) ) then

    begin
     ConsultaWeb5inuClick(Sender);                                              // D&eleta xml's Temp
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('M')) ) then

    begin
     MarcaBloco( cxTL, True, True );                                            // Marca todos ítens
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('C')) ) then

    begin
     CopiaNChaveClipBoard1Click(Sender);                                        // Copia chave para área de transfer�ncia
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('P')) ) then

    begin
     MovepPendentes1Click(Sender);                                              // Move nota(s) para pendente
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('S')) ) then

    begin
     ConsultaWeb5EnviaEmailParaDestinatrios6Click(Sender);                      // Abre o envio de email
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('W')) ) then

    begin
     ConsultaWeb2Click(Sender);                                                 // Consulta nota na website serfaz
    end

   else if ( (Shift = [ssCtrl, ssShift]) and (Key = Ord('X')) ) then

    begin
     Excluinota1Click(Sender);                                                  // Exclui nota(s)
    end

   //---------------------------------------------------------------------------

   else if ( (Shift = [ssAlt]) and (Key = VK_F1) ) then

    begin
     if ( FrGBNFe.BitBtn3.Enabled ) then                                        // Carta de Correção
      FrGBNFe.BitBtn3Click(Sender);
    end

   else if ( (Shift = [ssAlt]) and (Key = VK_F2) ) then

    begin
     if ( FrGBNFe.BitBtn16.Enabled ) then                                       // Manifesto MDe
      FrGBNFe.BitBtn16Click(Sender);
    end

   else if ( (Shift = [ssAlt]) and (Key = VK_F11) ) then

    begin
     if ( FrGBNFe.BitBtn10.Enabled ) then                                       // Parâmetros
      FrGBNFe.BitBtn10Click(Sender);
    end

   else if ( (Shift = [ssAlt]) and (Key = VK_F12) ) then

    begin
     if ( FrGBNFe.BitBtn14.Enabled ) then                                       // Backup
      FrGBNFe.BitBtn14Click(Sender);
    end

   else

    Case Key of

     VK_NEXT, VK_RETURN     : Direction := 0;
     VK_PRIOR	              : Direction := 1;
     VK_ESCAPE              : Close;
     VK_F11                 : FrGBNFe.Panel3.Visible := (not (FrGBNFe.Panel3.Visible));
     VK_F12                 : FrGBNFe.Panel7.Visible := (not (FrGBNFe.Panel7.Visible));
     VK_F1                  : FrGBNFe.SpeedButton2Click(Sender);

    end;

   if Direction <> -1 then
    begin

    Perform(WM_NEXTDLGCTL, Direction, 0);
    key := 0;

    end;

  end;

end;

procedure TFrGBNFe.FormResize(Sender: TObject);
begin

 FrGBNFe.BringToFront;

end;

procedure TFrGBNFe.Timer1Timer(Sender: TObject);
begin

 if ((not gVerCon) and (not gVerEpe) and (gNivel = '0') ) then
  begin
   Timer1.Enabled := False;
   VerifCert();                                                                 // by Edson Lima ; 2014-11-11T1632 ; Verifica o vencimento do certificado digital

   // Verifica o caminho do arquivo da logomarca e da base de dados
   //if not FileExists(PWideChar(FrPar.edtLogoMarca.Text)) then
   // Application.Messagebox('Logomarca não encontrada, verifique o caminho da logomarca' + Chr(13) +
   //                        'e do servidor da base de dados em parâmetros!','Informação',MB_ICONINFORMATION+mb_ok);

   Timer1.Enabled := True;
  end;

 // By EL 9.2.2012 - Display de mensagens na barra de status
 StatusBar1.Panels[3].Text := ' ' + gUsu;                                       // By EL 9.2.2012 - Mostra usuário no status bar

 gCntTmp := (gCntTmp + Timer1.Interval);

 if ((gNivel <> '4') and (gNivel <> '5')) then
  begin
   //*****************************************************************************
   // Rotina que verifica notas de contingência em fsda
   // by Edson ; 21/6/2012 ; 14:12
   //*****************************************************************************
   if gExpress <> '1' then
    begin
     if not gVerCon then
      begin
       Timer1.Enabled := False;
       gDatConA := now();
       gDatConB := now();

       // Filtra os registro por data ; by Edson Lima ;  2015-5-25T0857
       DMFD.FDQuery15.Close;
        DMFD.FDQuery15.ParamByName('DatCon').AsString  := FormatDateTime('yyyy/mm/dd', gDatConB);
        DMFD.FDQuery15.ParamByName('CodEmp').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
        DMFD.FDQuery15.ParamByName('Situac').AsString  := 'FSDA';
       DMFD.FDQuery15.Open;

       if not DMFD.FDQuery15.IsEmpty then
        begin
         if MessageDlg('Atenção, pendências para envio em contingência ' + 'FSDA,' + chr(13) +
                       'Lembre-se que pela legislação temos 7 dias p/transmitir !' + chr(13) + chr(13) +
                       'GOSTARIA DE IR PARA O ENVIO DESSA PENDÊNCIA AGORA ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
           gVerCon := True;
           RadioGroup1.ItemIndex := 1;                                          // Contigência (FSDA ou OFF-LINE)
           BitBtn2Click(Sender);
           MarcaDesmarcaTodos1Click(Sender);
           Timer1.Enabled := True;
           gVerCon := True;
           gVerEpe := True;
           exit;
          end
         else
          gVerCon := True;
        end;
       Timer1.Enabled := True;
      end;
     if not gVerEpe then
      begin
       Timer1.Enabled := False;
       gDatConA := now();
       gDatConB := now();

       // Filtra os registro por data ; by Edson Lima ;  2015-5-25T0857
       DMFD.FDQuery15.Close;
        DMFD.FDQuery15.ParamByName('DatCon').AsString  := FormatDateTime('yyyy/mm/dd', gDatConB);
        DMFD.FDQuery15.ParamByName('CodEmp').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
        DMFD.FDQuery15.ParamByName('Situac').AsString  := 'OFFL';
       DMFD.FDQuery15.Open;

       if not DMFD.FDQuery15.IsEmpty then
        begin
         if MessageDlg('Atenção, pendências para envio em contingência ' + 'OFF-LINE,' + chr(13) +
                       'Lembre-se que pela legislação temos 24 hoas p/transmitir !' + chr(13) + chr(13) +
                       'GOSTARIA DE IR PARA O ENVIO DESSA PENDÊNCIA AGORA ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          begin
           gVerEpe := True;
           RadioGroup1.ItemIndex := 1;  // Contigência (FSDA ou OFF-LINE)
           BitBtn2Click(Sender);
           MarcaDesmarcaTodos1Click(Sender);
           Timer1.Enabled := True;
           gVerEpe := True;
           gVerCon := True;
           exit;
          end;
        end;
       gVerEpe := True;
       Timer1.Enabled := True;
      end;
    end;
   //*****************************************************************************

   //*****************************************************************************
   // Rotina que verifica notas de ENVI pendentes pra serem atualizadas
   // by Edson ; 22/6/2012 ; 10:23
   //*****************************************************************************
   if gExpress <> '1' then
    begin
     if not gVerCon then
      begin
       Timer1.Enabled := False;
       gDatConA := now();
       gDatConB := now();

       // Filtra os registro por data ; by Edson Lima ;  2015-5-25T0857
       DMFD.FDQuery15.Close;
        DMFD.FDQuery15.ParamByName('DatCon').AsString  := FormatDateTime('yyyy/mm/dd', gDatConB);
        DMFD.FDQuery15.ParamByName('CodEmp').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
        DMFD.FDQuery15.ParamByName('Situac').AsString  := '';
       DMFD.FDQuery15.Open;

       if not DMFD.FDQuery15.IsEmpty then
        begin

         if MessageDlg('Atenção, existe pendência de nota emitidas com mais' + chr(13) +
                       'de um dia, envie assim possível, caso de duplicidade de' + chr(13) +
                       'nota, é só CONSULTAR! Lembre-se temos 10 dias p/enviar!' + chr(13) + chr(13) +
                       'GOSTARIA DE IR PARA O ENVIO DESSA PENDENCIA AGORA ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          SelecionarTudo1Click(Sender);

        end;

       gVerCon := True;
       Timer1.Enabled := True;
      end;
    end;
   //***************************************************************************

  end;

end;

procedure TFrGBNFe.Destinatrio1Click(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
//
// Modify By Edson 10.2.2012t09:14
// Procedure:    GravaConfiguração
// Description:  Grava dados no arquivo ini de parâmetros
//
//------------------------------------------------------------------------------

procedure TFrGBNFe.GravarConfiguracao;
begin
 //-----------------------------------------------------------------------------
 // Nova forma de ler e gravar os dados, foi modificado o local dos dados de
 // configuração o GBNFe.ini que passa apartir da versão 3.12.9.25 a ser gravado
 // no banco de dados nfe na tabela emitente
 // by Edson Lima ; 11-9-2012 ; 17:22
 //-----------------------------------------------------------------------------
 try

  DMFD.FDQuery4.DisableControls;
  DMFD.FDQuery4.Close;
  DMFD.FDQuery4.SQL.Clear;
  DMFD.FDQuery4.SQL.Add( 'update emitente set                               ' );
  DMFD.FDQuery4.SQL.Add( '  Certificado_NumSerie   = :Certificado_NumSerie, ' );
  DMFD.FDQuery4.SQL.Add( '  Certificado_NumSerie2  = :Certificado_NumSerie2,' );
  DMFD.FDQuery4.SQL.Add( '  CSC                    = :CSC,                  ' );
  DMFD.FDQuery4.SQL.Add( '  IdCSC                  = :IdCSC,                ' );
  DMFD.FDQuery4.SQL.Add( '  Versao                 = :Versao,               ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_QtdCopias        = :DANFE_QtdCopias,      ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_QtdCopNFCe       = :DANFE_QtdCopNFCe,     ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_Visualiza        = :DANFE_Visualiza,      ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_HorariodeVerao   = :DANFE_HorariodeVerao, ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_FusoHorario      = :DANFE_FusoHorario,    ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_UsaHorarioDF     = :DANFE_UsaHorarioDF,   ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ImportaTxt       = :DANFE_ImportaTxt,     ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_LogoMarca        = :DANFE_LogoMarca,      ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_LocSRV           = :DANFE_LocSRV,         ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_CAMSRV           = :DANFE_CAMSRV,         ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ImpNFe           = :DANFE_ImpNFe,         ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ImpNFCe          = :DANFE_ImpNFCe,        ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ExibeFatura      = :DANFE_ExibeFatura,    ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ExpandiLogo      = :DANFE_ExpandiLogo,    ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_TipoDANF         = :DANFE_TipoDANF   ,    ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_TipoDANFCE       = :DANFE_TipoDANFCE,     ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_EdEmail          = :DANFE_EdEmail,        ' );
  DMFD.FDQuery4.SQL.Add( '  DANFE_ForSai           = :DANFE_ForSai,         ' );
  DMFD.FDQuery4.SQL.Add( '  Web_Ambiente           = :Web_Ambiente,         ' );
  DMFD.FDQuery4.SQL.Add( '  Web_Visualizar         = :Web_Visualizar,       ' );
  DMFD.FDQuery4.SQL.Add( '  Proxy_Host             = :Proxy_Host,           ' );
  DMFD.FDQuery4.SQL.Add( '  Proxy_Porta            = :Proxy_Porta,          ' );
  DMFD.FDQuery4.SQL.Add( '  Proxy_User             = :Proxy_User,           ' );
  DMFD.FDQuery4.SQL.Add( '  Proxy_Pass             = :Proxy_Pass,           ' );
  DMFD.FDQuery4.SQL.Add( '  Email_NEeMAIL          = :Email_NEeMAIL,        ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Host             = :Email_Host,           ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Port             = :Email_Port,           ' );
  DMFD.FDQuery4.SQL.Add( '  Email_User             = :Email_User,           ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Pass             = :Email_Pass,           ' );
  DMFD.FDQuery4.SQL.Add( '  Email_SSL              = :Email_SSL,            ' );
  DMFD.FDQuery4.SQL.Add( '  Email_TLS              = :Email_TLS,            ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Assunto          = :Email_Assunto,        ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Assunto_Canc     = :Email_Assunto_Canc,   ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Assunto_CCe      = :Email_Assunto_CCe,    ' );
  DMFD.FDQuery4.SQL.Add( '  Email_CC               = :Email_CC,             ' );
  DMFD.FDQuery4.SQL.Add( '  Email_Mensagem         = :Email_Mensagem,       ' );
  DMFD.FDQuery4.SQL.Add( '  OUTROS_ExcTmp          = :OUTROS_ExcTmp,        ' );
  DMFD.FDQuery4.SQL.Add( '  OUTROS_DtIni           = :OUTROS_DtIni,         ' );
  DMFD.FDQuery4.SQL.Add( '  RT_UFExige             = :RT_UFExige,           ' );
  DMFD.FDQuery4.SQL.Add( '  RT_idCSRT              = :RT_idCSRT,            ' );
  DMFD.FDQuery4.SQL.Add( '  RT_CSRT                = :RT_CSRT,              ' );
  DMFD.FDQuery4.SQL.Add( '  RT_CNPJ                = :RT_CNPJ,              ' );
  DMFD.FDQuery4.SQL.Add( '  RT_xContato            = :RT_xContato,          ' );
  DMFD.FDQuery4.SQL.Add( '  RT_email               = :RT_email,             ' );
  DMFD.FDQuery4.SQL.Add( '  RT_fone                = :RT_fone               ' );
  DMFD.FDQuery4.SQL.Add( ' where codigo_loja = :codigo_loja                 ' );

  //----------------------------------------------------------------------------

  // Mosta qual certificado o usuário está usando
  if FileExists(gCamCert + 'GBNFe.ini') then
   begin

    LerIni();

    if ((gPSCert = 1) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
     begin

      FrPar.CheckBox6.Checked := true;
      FrPar.CheckBox7.Checked := false;

     end;

    if ((gPSCert = 2) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
     begin

      FrPar.CheckBox6.Checked := false;
      FrPar.CheckBox7.Checked := true;

     end;

   end;

  //----------------------------------------------------------------------------
  // Efetua a conecção com os bancos de dados
  // by Edson Lima ; 2017-6-30T1043
  //----------------------------------------------------------------------------
  if FileExists(gCamCert + 'GBNFe.ini') then
   begin

    LerBDFD();

    if not FrPar.chk_Connected_Ger.Checked then
     begin

      if ( FrPar = nil ) then
       FrPar := TFrPar.Create(Application);

      FrPar.PageControl1.TabIndex := 4;
      FrPar.BringToFront;
      FrPar.ShowModal;

     end;

   end;

  DMFD.FDQuery4.ParamByName('Certificado_NumSerie').AsString     := FrPar.edtNumSerie.Text;
  DMFD.FDQuery4.ParamByName('Certificado_NumSerie2').AsString    := FrPar.edtNumSerie2.Text;
  DMFD.FDQuery4.ParamByName('CSC').AsString                      := FrPar.edtCSC.Text;
  DMFD.FDQuery4.ParamByName('IdCSC').AsString                    := FrPar.edtIdCSC.Text;

  //----------------------------------------------------------------------------
  case ( FrPar.cbb2.ItemIndex) of

   0 : DMFD.FDQuery4.ParamByName('Versao').AsString   := 've3131';

   1 : DMFD.FDQuery4.ParamByName('Versao').AsString   := 've4040';

   2 : DMFD.FDQuery4.ParamByName('Versao').AsString   := 've4031';

   3 : DMFD.FDQuery4.ParamByName('Versao').AsString   := 've3140';

  end;
  //----------------------------------------------------------------------------

  DMFD.FDQuery4.ParamByName('DANFE_QtdCopias').AsInteger         := StrToIntDef(FrPar.ed_QtdCopNFe.Text, 0);
  DMFD.FDQuery4.ParamByName('DANFE_QtdCopNFCe').AsInteger        := StrToIntDef(FrPar.ed_QtdCopNFCe.Text, 0);

  if FrPar.CheckBox2.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_Visualiza').AsString         := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_Visualiza').AsString         := 'N';

  if FrPar.CheckBox1.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_HorariodeVerao').AsString    := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_HorariodeVerao').AsString    := 'N';

  if FrPar.CheckBox3.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_FusoHorario').AsString       := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_FusoHorario').AsString       := 'N';

  if FrPar.CheckBox4.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_UsaHorarioDF').AsString      := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_UsaHorarioDF').AsString      := 'N';

  if FrPar.CheckBox5.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_ImportaTxt').AsString        := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_ImportaTxt').AsString        := 'N';

  DMFD.FDQuery4.ParamByName('DANFE_LogoMarca').AsString          := FrPar.edtLogoMarca.Text;

  if FrPar.ragLocSrv.ItemIndex = 0 then
   begin

    DMFD.FDQuery4.ParamByName('DANFE_LocSRV').AsString           := 'L';
    DMFD.FDQuery4.ParamByName('DANFE_CAMSRV').AsString           := FrPar.edtCamSrv.Text;

   end
  else
   begin

    DMFD.FDQuery4.ParamByName('DANFE_LocSRV').AsString           := 'S';
    DMFD.FDQuery4.ParamByName('DANFE_CAMSRV').AsString           := '';

   end;

  DMFD.FDQuery4.ParamByName('DANFE_CAMSRV').AsString             := FrPar.edtCamSrv.Text;
  DMFD.FDQuery4.ParamByName('DANFE_ImpNFe').AsString             := FrPar.edtImpNFe.Text;
  DMFD.FDQuery4.ParamByName('DANFE_ImpNFCe').AsString            := FrPar.edtImpNFCe.Text;

  if FrPar.CheckBox8.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_ExibeFatura').AsString       := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_ExibeFatura').AsString       := 'N';

  case FrPar.cbb1.ItemIndex of

   0 : DMFD.FDQuery4.ParamByName('DANFE_ExpandiLogo').AsString   := 'C';

   1 : DMFD.FDQuery4.ParamByName('DANFE_ExpandiLogo').AsString   := 'E';

   2 : DMFD.FDQuery4.ParamByName('DANFE_ExpandiLogo').AsString   := 'L';

  end;

  DMFD.FDQuery4.ParamByName('DANFE_TipoDANF').AsInteger          := FrPar.cbbTipoDANF.ItemIndex;
  DMFD.FDQuery4.ParamByName('DANFE_TipoDANFCE').AsInteger        := FrPar.cbbTipoDANFCE.ItemIndex;

  if FrPar.CheckBox10.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_EdEmail').AsString           := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_EdEmail').AsString           := 'N';

  if FrPar.Ckb_ForSai.Checked then
   DMFD.FDQuery4.ParamByName('DANFE_ForSai').AsString            := 'S'
  else
   DMFD.FDQuery4.ParamByName('DANFE_ForSai').AsString            := 'N';

  if FrPar.rgTipoAmb.ItemIndex = 0 then
   DMFD.FDQuery4.ParamByName('Web_Ambiente').AsString            := 'P'
  else
   DMFD.FDQuery4.ParamByName('Web_Ambiente').AsString            := 'H';

  if FrPar.ckVisualizar.Checked then
   DMFD.FDQuery4.ParamByName('Web_Visualizar').AsString          := 'S'
  else
   DMFD.FDQuery4.ParamByName('Web_Visualizar').AsString          := 'N';

  DMFD.FDQuery4.ParamByName('Proxy_Host').AsString               := FrPar.edtProxyHost.Text;
  DMFD.FDQuery4.ParamByName('Proxy_Porta').AsInteger             := StrToIntDef(FrPar.edtProxyPorta.Text, 0);
  DMFD.FDQuery4.ParamByName('Proxy_User').AsString               := FrPar.edtProxyUser.Text;

  if not ( trim(FrPar.edtProxySenha.Text) = '' ) then
   DMFD.FDQuery4.ParamByName('Proxy_Pass').AsString              := Crypt( 'E',(trim(FrPar.edtProxySenha.Text)) )
  else
   DMFD.FDQuery4.ParamByName('Proxy_Pass').AsString              := trim(FrPar.edtProxySenha.Text);

  DMFD.FDQuery4.ParamByName('Email_NEeMAIL').AsString            := FrPar.edtNEeMail.Text;
  DMFD.FDQuery4.ParamByName('Email_Host').AsString               := FrPar.edtSmtpHost.Text;
  DMFD.FDQuery4.ParamByName('Email_Port').AsInteger              := StrToIntDef(FrPar.edtSmtpPort.Text, 0);
  DMFD.FDQuery4.ParamByName('Email_User').AsString               := FrPar.edtSmtpUser.Text;
  DMFD.FDQuery4.ParamByName('Email_Pass').AsString               := FrPar.edtSmtpPass.Text;

  if not ( trim(FrPar.edtSmtpPass.Text) = '' ) then
   DMFD.FDQuery4.ParamByName('Email_Pass').AsString              := Crypt( 'E',(trim(FrPar.edtSmtpPass.Text)) )
  else
   DMFD.FDQuery4.ParamByName('Email_Pass').AsString              := trim(FrPar.edtSmtpPass.Text);

  if FrPar.cbEmailSSL.Checked then
   DMFD.FDQuery4.ParamByName('Email_SSL').AsString               := 'S'
  else
   DMFD.FDQuery4.ParamByName('Email_SSL').AsString               := 'N';

  if FrPar.cbEmailTLS.Checked then
   DMFD.FDQuery4.ParamByName('Email_TLS').AsString               := 'S'
  else
   DMFD.FDQuery4.ParamByName('Email_TLS').AsString               := 'N';

  DMFD.FDQuery4.ParamByName('Email_Assunto').AsString            := FrPar.edtEmailAssunto.Text;
  DMFD.FDQuery4.ParamByName('Email_Assunto_Canc').AsString       := FrPar.edtEmailCancAssunto.Text;
  DMFD.FDQuery4.ParamByName('Email_Assunto_CCe').AsString        := FrPar.edtEmailCCeAssunto.Text;
  DMFD.FDQuery4.ParamByName('Email_CC').AsString                 := FrPar.edtEnvCC.Text;
  DMFD.FDQuery4.ParamByName('Email_Mensagem').AsMemo             := FrPar.mmEmailMsg.Text;

  if FrPar.CheckBox.Checked then
   DMFD.FDQuery4.ParamByName('OUTROS_ExcTmp').AsString           := 'S'
  else
   DMFD.FDQuery4.ParamByName('OUTROS_ExcTmp').AsString           := 'N';

  if FrPar.chk_RespTec.Checked then
   DMFD.FDQuery4.ParamByName('RT_UFExige').AsString              := 'S'
  else
   DMFD.FDQuery4.ParamByName('RT_UFExige').AsString              := 'N';

  DMFD.FDQuery4.ParamByName('RT_idCSRT').AsString                := FrPar.edt_IdResTec.Text;
  DMFD.FDQuery4.ParamByName('RT_CSRT').AsString                  := FrPar.edt_CSRTResTec.Text;
  DMFD.FDQuery4.ParamByName('RT_CNPJ').AsString                  := FrPar.edt_CNPJResTec.Text;
  DMFD.FDQuery4.ParamByName('RT_xContato').AsString              := FrPar.edt_NomeResTec.Text;
  DMFD.FDQuery4.ParamByName('RT_email').AsString                 := FrPar.edt_emaildResTec.Text;
  DMFD.FDQuery4.ParamByName('RT_fone').AsString                  := FrPar.edt_FoneResTec.Text;

  DMFD.FDQuery4.ParamByName('codigo_loja').AsString              := edt_CodEmp.Text;
  DMFD.FDQuery4.ParamByName('OUTROS_DtIni').AsString             := FormatDateTime('yyyy/mm/dd', FrPar.cxdtp1.Date);

  try

   DMFD.FDQuery4.ExecSQL;
   pAtuNFe();

  except on e:Exception do
   begin

    Application.Messagebox(PWideChar('ERRO: Parâmetros não gravado !' + Char(13) +
                            e.Message), 'Atenção!',MB_ICONERROR+mb_ok);
    pAtuNFe();

   end;

  end;

  DMFD.FDQuery4.Close;

 finally

  DMFD.FDQuery4.EnableControls;

 end;

 DMFD.FDQuery4.Close;
 DMFD.FDQuery4.SQL.Clear;
 DMFD.FDQuery4.SQL.Add( 'select * from emitente where codigo_loja = ' + edt_CodEmp.Text );
 DMFD.FDQuery4.Open;
 //------------------------------------------------------------------------

 //-----------------------------------------------------------------------------
 // Verifica o caminho do arquivo da logomarca e da base de dados
 if not FileExists(PWideChar(PAnsiChar(FrPar.edtLogoMarca.Text))) then
  begin
   gTemLogo  := False;
  end
 else
  gTemLogo  := True;
 //-----------------------------------------------------------------------------

end;

//------------------------------------------------------------------------------
//
// Modify By Edson 10.2.2012t09:14
// Procedure:    LerConfiguração
// Description:  Ler os dados do arquivo ini de parâmetros
//
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerConf1;
begin
 //-----------------------------------------------------------------------------
 // Nova forma de ler e gravar os dados, foi modificado o local dos dados de
 // configuração o GBNFe.ini que passa apartir da versão 3.12.9.25 a ser gravado
 // no banco de dados nfe na tabela emitente
 // by Edson Lima ; 11-9-2012 ; 17:22
 //-----------------------------------------------------------------------------
 try

  {$IFDEF ACBrNFeOpenSSL}

   FrPar.edtNumSerie.Visible  := False;
   FrPar.edtNumSerie2.Visible := False;
   FrPar.Label25.Visible      := False;
   FrPar.sbtnGetCert.Visible  := False;

  {$ELSE}

  //----------------------------------------------------------------------------
  // Efetua a conecção com os bancos de dados
  // by Edson Lima ; 2017-6-30T1043
  //----------------------------------------------------------------------------
  if FileExists(gCamExe + 'GBNFe.ini') then
   begin

    LerBDFD();

    if not FrPar.chk_Connected_Ger.Checked then
     begin

      if ( FrPar = nil ) then
       FrPar := TFrPar.Create(Application);
      FrPar.PageControl1.TabIndex := 4;
      FrPar.BringToFront;
      FrPar.ShowModal;

     end;

   end;
  //----------------------------------------------------------------------------

  // Mosta qual certificado o usuário está usando
  if FileExists(gCamExe + 'GBNFe.ini') then
   begin
    LerIni();
    if ((gPSCert = 1) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
     begin
      FrPar.CheckBox6.Checked := true;
      FrPar.CheckBox7.Checked := false;
     end;
    if ((gPSCert = 2) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
     begin
      FrPar.CheckBox6.Checked := false;
      FrPar.CheckBox7.Checked := true;
     end;
   end;

  if (DMFD.FDQuery4['Certificado_NumSerie'] <> Null) then
   FrPar.edtNumSerie.Text       := DMFD.FDQuery4['Certificado_NumSerie']
  else
   FrPar.edtNumSerie.Text       := '';

  if (DMFD.FDQuery4['Certificado_NumSerie2'] <> Null) then
   FrPar.edtNumSerie2.Text      := DMFD.FDQuery4['Certificado_NumSerie2']
  else
   FrPar.edtNumSerie2.Text      := '';

  if (DMFD.FDQuery4['CSC'] <> Null) then
   FrPar.edtCSC.Text            := DMFD.FDQuery4['CSC']
  else
   FrPar.edtCSC.Text            := '';

  if (DMFD.FDQuery4['IdCSC'] <> Null) then
   FrPar.edtIdCSC.Text          := DMFD.FDQuery4['IdCSC']
  else
   FrPar.edtIdCSC.Text          := '';

  //----------------------------------------------------------------------------
  if (DMFD.FDQuery4['Versao'] <> Null) then
   begin

    if (DMFD.FDQuery4['Versao']           = 've3131') then
     FrPar.cbb2.ItemIndex        := 0

    else if (DMFD.FDQuery4['Versao']      = 've4040') then
     FrPar.cbb2.ItemIndex        := 1

    else if (DMFD.FDQuery4['Versao']      = 've4031') then
     FrPar.cbb2.ItemIndex        := 2

    else if (DMFD.FDQuery4['Versao']      = 've3140') then
     FrPar.cbb2.ItemIndex        := 3

   end

  else

   FrPar.cbb2.ItemIndex          := 0;
  //----------------------------------------------------------------------------

  if (DMFD.FDQuery4['razao_social'] <> null) then
   FrPar.label3.Caption         := DMFD.FDQuery4['razao_social']
  else
   FrPar.label3.Caption         := '';

  if (DMFD.FDQuery4['nome_fantasia'] <> null) then
   FrPar.label5.Caption         := DMFD.FDQuery4['nome_fantasia']
  else
   FrPar.label5.Caption         := '';

  if (DMFD.FDQuery4['cnpj'] <> null) then
   FrPar.label7.Caption         := DMFD.FDQuery4['cnpj']
  else
   FrPar.label7.Caption         := '';

  FrPar.Label1.Caption          := 'Informe o número de série do certificado ' +
                                   'Disponível no Internet Explorer no menu' + #13 +
                                   'Ferramentas - Opções da Internet - Conteúdo ' +
                                   'Certificados - Exibir - Detalhes - Número do certificado';
  {$ENDIF}

  if (DMFD.FDQuery4['DANFE_QtdCopias'] <> Null) then
   FrPar.ed_QtdCopNFe.Text              := IntToStr(DMFD.FDQuery4['DANFE_QtdCopias'])
  else
   FrPar.ed_QtdCopNFe.Text              := '0';

  if (DMFD.FDQuery4['DANFE_QtdCopNFCe'] <> Null) then
   FrPar.ed_QtdCopNFCe.Text             := IntToStr(DMFD.FDQuery4['DANFE_QtdCopNFCe'])
  else
   FrPar.ed_QtdCopNFCe.Text             := '0';

  if (DMFD.FDQuery4['DANFE_Visualiza'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_Visualiza'] = 'S') then
     FrPar.CheckBox2.Checked     := True
    else
     FrPar.CheckBox2.Checked     := False;
   end
  else
   FrPar.CheckBox2.Checked       := True;

  if (DMFD.FDQuery4['DANFE_HorariodeVerao'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_HorariodeVerao'] = 'S') then
     FrPar.CheckBox1.Checked     := True
    else
     FrPar.CheckBox1.Checked     := False;
   end
  else
   FrPar.CheckBox1.Checked       := False;

  if (DMFD.FDQuery4['DANFE_FusoHorario'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_FusoHorario'] = 'S') then
     FrPar.CheckBox3.Checked     := True
    else
     FrPar.CheckBox3.Checked     := False;
   end
  else
   FrPar.CheckBox3.Checked       := False;

  if (DMFD.FDQuery4['DANFE_UsaHorarioDF'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_UsaHorarioDF'] = 'S') then
     FrPar.CheckBox4.Checked     := True
    else
     FrPar.CheckBox4.Checked     := False;
   end
  else
   FrPar.CheckBox4.Checked       := False;

  if (DMFD.FDQuery4['DANFE_ImportaTxt'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_ImportaTxt'] = 'S') then
     FrPar.CheckBox5.Checked     := True
    else
     FrPar.CheckBox5.Checked     := False;
   end
  else
   FrPar.CheckBox5.Checked       := False;

  if (DMFD.FDQuery4['DANFE_LogoMarca'] <> Null) then
   FrPar.edtLogoMarca.Text       := DMFD.FDQuery4['DANFE_LogoMarca']
  else
   FrPar.edtLogoMarca.Text       := '';

  if (DMFD.FDQuery4['DANFE_LocSRV'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_LocSRV'] = 'S') then
     FrPar.ragLocSrv.ItemIndex   := 1
    else
     FrPar.ragLocSrv.ItemIndex   := 0;
   end
  else
   FrPar.ragLocSrv.ItemIndex     := 1;

  if (DMFD.FDQuery4['DANFE_CAMSRV'] <> Null) then
   FrPar.edtCamSrv.Text          := DMFD.FDQuery4['DANFE_CAMSRV']
  else
   FrPar.edtCamSrv.Text          := '';

  if (DMFD.FDQuery4['DANFE_ImpNFe'] <> Null) then
   FrPar.edtImpNFe.Text          := DMFD.FDQuery4['DANFE_ImpNFe']
  else
   FrPar.edtImpNFe.Text          := '';

  if (DMFD.FDQuery4['DANFE_ImpNFCe'] <> Null) then
   FrPar.edtImpNFCe.Text          := DMFD.FDQuery4['DANFE_ImpNFCe']
  else
   FrPar.edtImpNFCe.Text          := '';

  if (DMFD.FDQuery4['DANFE_ExibeFatura'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_ExibeFatura'] = 'S') then
     FrPar.CheckBox8.Checked     := True
    else
     FrPar.CheckBox8.Checked     := False;
   end
  else
   FrPar.CheckBox8.Checked       := False;

  if (DMFD.FDQuery4['DANFE_ExpandiLogo'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_ExpandiLogo']      = 'C') then
     FrPar.cbb1.ItemIndex        := 0
    else if ( (DMFD.FDQuery4['DANFE_ExpandiLogo'] = 'E')  or
              (DMFD.FDQuery4['DANFE_ExpandiLogo'] = 'S')) then
     FrPar.cbb1.ItemIndex        := 1
    else
     FrPar.cbb1.ItemIndex        := 2
   end
  else
   FrPar.cbb1.ItemIndex          := 2;

  if (DMFD.FDQuery4['DANFE_TipoDANF'] <> Null) then
   FrPar.cbbTipoDANF.ItemIndex   := DMFD.FDQuery4['DANFE_TipoDANF']
  else
   FrPar.cbbTipoDANF.ItemIndex   := 1;

  if (DMFD.FDQuery4['DANFE_TipoDANFCE'] <> Null) then
   FrPar.cbbTipoDANFCE.ItemIndex := DMFD.FDQuery4['DANFE_TipoDANFCE']
  else
   FrPar.cbbTipoDANFCE.ItemIndex := 2;

  if (DMFD.FDQuery4['DANFE_EdEmail'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_EdEmail'] = 'S') then
     FrPar.CheckBox10.Checked     := True
    else
     FrPar.CheckBox10.Checked     := False;
   end
  else
   FrPar.CheckBox10.Checked       := False;

  if (DMFD.FDQuery4['DANFE_ForSai'] <> Null) then
   begin
    if (DMFD.FDQuery4['DANFE_ForSai'] = 'S') then
     FrPar.CkB_ForSai.Checked     := True
    else
     FrPar.CkB_ForSai.Checked     := False;
   end
  else
   FrPar.CkB_ForSai.Checked       := False;

  if (DMFD.FDQuery4['Web_Ambiente'] <> Null) then
   begin
    if (DMFD.FDQuery4['Web_Ambiente'] = 'H') then
     FrPar.rgTipoAmb.ItemIndex   := 1
    else
     FrPar.rgTipoAmb.ItemIndex   := 0;
   end
  else
   FrPar.rgTipoAmb.ItemIndex     := 1;
  if (DMFD.FDQuery4['Web_Visualizar'] <> Null) then
   begin
    if (DMFD.FDQuery4['Web_Visualizar'] = 'S') then
     FrPar.ckVisualizar.Checked  := True
    else
     FrPar.ckVisualizar.Checked  := False;
   end
  else
   FrPar.ckVisualizar.Checked    := False;
  if (DMFD.FDQuery4['Proxy_Host'] <> Null) then
   FrPar.edtProxyHost.Text       := DMFD.FDQuery4['Proxy_Host']
  else
   FrPar.edtProxyHost.Text       := '';
  if (DMFD.FDQuery4['Proxy_Porta'] <> Null) then
   FrPar.edtProxyPorta.Text      := IntToStr(DMFD.FDQuery4['Proxy_Porta'])
  else
   FrPar.edtProxyPorta.Text      := '0';
  if (DMFD.FDQuery4['Proxy_User'] <> Null) then
   FrPar.edtProxyUser.Text       := DMFD.FDQuery4['Proxy_User']
  else
   FrPar.edtProxyUser.Text       := '';
  if ( (DMFD.FDQuery4['Proxy_Pass'] <> Null) and
       (DMFD.FDQuery4['Proxy_Pass'] <> '') ) then
   FrPar.edtProxySenha.Text      := Crypt( 'D',(VarToStr(DMFD.FDQuery4['Proxy_Pass'])) )
  else
   FrPar.edtProxySenha.Text      := '';
  if (DMFD.FDQuery4['Email_NEeMAIL'] <> Null) then
   FrPar.edtNEeMail.Text         := DMFD.FDQuery4['Email_NEeMAIL']
  else
   FrPar.edtNEeMail.Text         := '';
  if (DMFD.FDQuery4['Email_Host'] <> Null) then
   FrPar.edtSmtpHost.Text        := DMFD.FDQuery4['Email_Host']
  else
   FrPar.edtSmtpHost.Text        := '';
  if (DMFD.FDQuery4['Email_Port'] <> Null) then
   FrPar.edtSmtpPort.Text        := IntToStr(DMFD.FDQuery4['Email_Port'])
  else
   FrPar.edtSmtpPort.Text        := '0';
  if (DMFD.FDQuery4['Email_User'] <> Null) then
   FrPar.edtSmtpUser.Text        := DMFD.FDQuery4['Email_User']
  else
   FrPar.edtSmtpUser.Text        := '';

  if ( (DMFD.FDQuery4['Email_Pass'] <> Null) and
       (DMFD.FDQuery4['Email_Pass'] <> '') ) then
   begin

    try
     FrPar.edtSmtpPass.Text      := Crypt( 'D',(VarToStr(DMFD.FDQuery4['Email_Pass'])) );
    except
    end;

   end
  else
   FrPar.edtSmtpPass.Text        := '';

  if (DMFD.FDQuery4['Email_SSL'] <> Null) then
   begin
    if (DMFD.FDQuery4['Email_SSL'] = 'S') then
     FrPar.cbEmailSSL.Checked    := True
    else
     FrPar.cbEmailSSL.Checked    := False;
   end
  else
   FrPar.cbEmailSSL.Checked      := False;
  if (DMFD.FDQuery4['Email_TLS'] <> Null) then
   begin
    if (DMFD.FDQuery4['Email_TLS'] = 'S') then
     FrPar.cbEmailTLS.Checked    := True
    else
     FrPar.cbEmailTLS.Checked    := False;
   end
  else
   FrPar.cbEmailTLS.Checked      := False;
  if (DMFD.FDQuery4['Email_Assunto'] <> Null) then
   FrPar.edtEmailAssunto.Text    := DMFD.FDQuery4['Email_Assunto']
  else
   FrPar.edtEmailAssunto.Text    := 'NFe - Nota Fiscal eLetrônica - Transmitida';
  if (DMFD.FDQuery4['Email_Assunto_Canc'] <> Null) then
   FrPar.edtEmailCancAssunto.Text:= DMFD.FDQuery4['Email_Assunto_Canc']
  else
   FrPar.edtEmailCancAssunto.Text:= 'NFe - Nota Fiscal eLetrônica - Cancelada';
  if (DMFD.FDQuery4['Email_Assunto_CCe'] <> Null) then
   FrPar.edtEmailCCeAssunto.Text:= DMFD.FDQuery4['Email_Assunto_CCe']
  else
   FrPar.edtEmailCCeAssunto.Text:= 'CCe - Carta de Correção';
  if (DMFD.FDQuery4['Email_CC'] <> Null) then
   FrPar.edtEnvCC.Text           := DMFD.FDQuery4['Email_CC']
  else
   FrPar.edtEnvCC.Text           := '';
  if (DMFD.FDQuery4['Email_Mensagem'] <> Null) then
   FrPar.mmEmailMsg.Text         := DMFD.FDQuery4['Email_Mensagem']
  else
   FrPar.mmEmailMsg.Text         := 'Segue anexo os arquivos XML e PDF da' + Chr(13) + 'NFe - (Nota Fiscal eLetrônica)';

  if (DMFD.FDQuery4['OUTROS_ExcTmp'] <> Null) then
   begin
    if (DMFD.FDQuery4['OUTROS_ExcTmp'] = 'S') then
     FrPar.CheckBox.Checked      := True
    else
     FrPar.CheckBox.Checked      := False;
   end
  else
   FrPar.CheckBox.Checked        := False;

  //----------------------------------------------------------------------------

  if (DMFD.FDQuery4['RT_UFExige'] <> Null) then
   begin
    if (DMFD.FDQuery4['RT_UFExige'] = 'S') then
     FrPar.chk_RespTec.Checked   := True
    else
     FrPar.chk_RespTec.Checked   := False;
   end
  else
   FrPar.chk_RespTec.Checked     := False;

  if (DMFD.FDQuery4['RT_idCSRT'] <> Null) then
   FrPar.edt_IdResTec.Text        := DMFD.FDQuery4['RT_idCSRT'  ]
  else
   FrPar.edt_IdResTec.Text        := '0';

  if (DMFD.FDQuery4['RT_CSRT'] <> Null) then
   FrPar.edt_CSRTResTec.Text      := DMFD.FDQuery4['RT_CSRT'    ]
  else
   FrPar.edt_CSRTResTec.Text      := '';

  if (DMFD.FDQuery4['RT_CNPJ'] <> Null) then
   FrPar.edt_CNPJResTec.Text      := DMFD.FDQuery4['RT_CNPJ'    ]
  else
   FrPar.edt_CNPJResTec.Text      := '';

  if (DMFD.FDQuery4['RT_xContato'] <> Null) then
   FrPar.edt_NomeResTec.Text      := DMFD.FDQuery4['RT_xContato']
  else
   FrPar.edt_NomeResTec.Text      := '';

  if (DMFD.FDQuery4['RT_email'] <> Null) then
   FrPar.edt_emaildResTec.Text    := DMFD.FDQuery4['RT_email'   ]
  else
   FrPar.edt_emaildResTec.Text    := '';

  if (DMFD.FDQuery4['RT_fone'] <> Null) then
   FrPar.edt_FoneResTec.Text      := DMFD.FDQuery4['RT_fone'    ]
  else
   FrPar.edt_FoneResTec.Text      := '';

  //----------------------------------------------------------------------------

  if (DMFD.FDQuery4['OUTROS_DtIni'] <> Null) then
   FrPar.cxdtp1.Date             := DMFD.FDQuery4['OUTROS_DtIni']
  else
   FrPar.cxdtp1.Date             := IncMonth(Now(), -3);

  // by Edson Lima ; 2017-1-4T1001 ; Atribui as variáveis globais do Gerente
  gDBERP                         := FrPar.edt_Database_Ger.Text;

  if (DMFD.FDQuery4['CodMtC'] <> Null) then
   gCodMtC                       := DMFD.FDQuery4['CodMtC'];

  if (DMFD.FDQuery4['CodMtD'] <> Null) then
   gCodMtD                       := DMFD.FDQuery4['CodMtD'];

  if (DMFD.FDQuery4['CodMtI'] <> Null) then
   gCodMtI                       := DMFD.FDQuery4['CodMtI'];

  gERP                           := UpperCase(FrPar.edt_TpERP_Ger.Text);
  //----------------------------------------------------------------------------

  // by Edson Lima ; 2015-10-16T0900 ; trunk2 novo - Prenchimento do componente acbrmail

  ACBrMail1.IsHTML              := True;
  ACBrMail1.Host                := FrPar.edtSmtpHost.Text;                      // Host
  ACBrMail1.Port                := FrPar.edtSmtpPort.Text;                      // Número da porta
  ACBrMail1.Username            := FrPar.edtSmtpUser.Text;                      // Username
  ACBrMail1.Password            := FrPar.edtSmtpPass.Text;                      // Password (senha)
  ACBrMail1.From                := FrPar.edtSmtpUser.Text;                      // email do emitente
  ACBrMail1.SetSSL              := FrPar.cbEmailSSL.Checked;                    // SSL - Conexão Segura
  ACBrMail1.SetTLS              := FrPar.cbEmailTLS.Checked;                    // TLS
  ACBrMail1.ReadingConfirmation := False;                                       // Pede confirmação de leitura do email
  ACBrMail1.UseThread           := False;                                       // Aguarda Envio do Email(não usa thread)
  ACBrMail1.FromName            := FrPar.edtNEeMail.Text;                       // Nome do Emitente do email

  // by Edson Lima ; 2017-1-4T1024 ; Ler o sistema ERP
  fLerGer();
  //----------------------------------------------------------------------------

 finally

 end;

end;

//------------------------------------------------------------------------------
//
// Modify By Edson 10.2.2012t09:14
// Procedure:    LerConfiguração 2
// Description:  Ler os dados dos parâmetros
//
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerConf2;
Var
 Ok         : Boolean;
 vPS        : integer;
begin

 try
  {$IFDEF ACBrNFeOpenSSL}

   ACBrNFe1.Configuracoes.Certificados.Certificado  := '';                      // FrPar.edtCaminho.Text;  // by Edson Lima ; 3-4-2012 ; 16:32 ; foi retida apartir dessa data
   ACBrNFe1.Configuracoes.Certificados.Senha        := '';                      // FrPar.edtSenha.Text;    // by Edson Lima ; 3-4-2012 ; 16:32 ; foi retida apartir dessa data

  {$ELSE}

  //Grava e Ler o arquivo ini - by EL - 2014-11-19T1552
  if not FileExists(gCamCert + 'GBNFe.ini') then
   begin
    gCEIni := StrToIntDef(gCodEmp, 0);
    gPSCert := 1;
    GravarIni();
   end;

  // Mosta qual certificado o usuário está usando
  if FileExists(gCamCert + 'GBNFe.ini') then
   begin
    LerIni();
    if ((gPSCert = 1) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
    begin
     ACBrNFe1.Configuracoes.Certificados.NumeroSerie := FrPar.edtNumSerie.Text;
     FrPar.edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
    end;
   if ((gPSCert = 2) and (StrToIntDef(gCodEmp, 0) = gCEIni)) then
    begin
     ACBrNFe1.Configuracoes.Certificados.NumeroSerie := FrPar.edtNumSerie2.Text;
     FrPar.edtNumSerie2.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
    end;
   end;

  {$ENDIF}

  if FrGBNFe.RadioButton1.Checked then
   ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK, '1');
  if FrGBNFe.RadioButton3.Checked then
   ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK, '2');

   // By Edson Lima ; 18/06/2012 ; 09:00
   ACBrNFe1.Configuracoes.WebServices.UF                         := DMFD.FDQuery4['uf'];      // trunk2 ; by Edson Lima ; 2015-10-29T1611 - novo
   ACBrNFe1.Configuracoes.Geral.CSC                              := FrPar.edtCSC.Text;        // trunk2 ; by Edson Lima ; 2015-10-29T1611 - novo
   ACBrNFe1.Configuracoes.Geral.IdCSC                            := FrPar.edtIdCSC.Text;      // trunk2 ; by Edson Lima ; 2015-10-29T1611 - novo
   ACBrNFe1.Configuracoes.Arquivos.Salvar                        := true;
   ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe                := true;
   ACBrNFe1.Configuracoes.Arquivos.PathNFe                       := gCamXml;
   ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload      := gCamXml;                  // Edson Lima ; 2019-07-29
   ACBrNFe1.Configuracoes.Arquivos.PathInu                       := gCamXml;
   ACBrNFe1.Configuracoes.Arquivos.PathEvento                    := gCamXml;
   ACBrNFe1.Configuracoes.Geral.Salvar                           := true;                     // ckSalvar.Checked;
   ACBrNFe1.Configuracoes.Arquivos.PathSalvar                    := gCamLog;                  // trunk2 - Antes => ACBrNFe1.Configuracoes.Geral.PathSalvar         := gCamLog;
   ACBrNFe1.Configuracoes.Arquivos.PathSchemas                   := gCamSch;                  // trunk2 - Antes => ACBrNFe1.Configuracoes.Geral.PathSchemas        := gCamSch;
   ACBrNFe1.Configuracoes.Arquivos.SepararPorMes                 := true;

   // Definição do Ambiente de Transmissão ; by Edson Lima ; 19/10/2012 ; 10:30
   If FrPar.rgTipoAmb.ItemIndex = 0 then
    begin
     ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb       := taProducao;
     ACBrNFe1.Configuracoes.WebServices.Ambiente   := taProducao;
    end
   else
    begin
     ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb       := taHomologacao;
     ACBrNFe1.Configuracoes.WebServices.Ambiente   := taHomologacao;
    end;
   ACBrNFe1.Configuracoes.WebServices.Visualizar := FrPar.ckVisualizar.Checked;
   ACBrNFe1.Configuracoes.WebServices.ProxyHost  := FrPar.edtProxyHost.Text;
   ACBrNFe1.Configuracoes.WebServices.ProxyPort  := FrPar.edtProxyPorta.Text;
   ACBrNFe1.Configuracoes.WebServices.ProxyUser  := FrPar.edtProxyUser.Text;
   ACBrNFe1.Configuracoes.WebServices.ProxyPass  := FrPar.edtProxySenha.Text;

 except

 end;
end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: quarta-feira 1.2.2012 16:09
// Ultima Alt.:
// Descrição..: Procedure que le os arquivos textos e Atualiza nfe
//              Esta procedure contém o mesmo código evento
//              onckick do antigo botão Atualizar.
//--------------------------------------------------------------
procedure TFrGBNFe.pAtuNFe();
var
 aux, vModelo, vSerie     : string;

begin

  Bitbtn4.Visible := true;

 //---------------- executa procedure que le os arquivos txt se tiver setado no parâmetros

 if FrPar.CheckBox5.Checked then
  begin

   try

    DMFD.FDQuery2.DisableControls;
    DMFD.FDQuery2.Close;
    DMFD.FDQuery2.SQL.Clear;
    DMFD.FDQuery2.SQL.Add( 'exec sp_ler_nfe_textos :gCamTxt ' );
    DMFD.FDQuery2.Params[0].AsString := gCamTxt;

    try

     DMFD.FDQuery2.ExecSQL;

    except on e:Exception do

     Application.Messagebox(PWideChar('ERRO: sp_ler_nfe_textos' + Char(13) +
                             e.Message), 'Atenção!',MB_ICONERROR+mb_ok);

    end;

    DMFD.FDQuery2.Close;

   finally

    DMFD.FDQuery2.EnableControls;

   end;

  end;

 //ler o retorno da critica da importação
 DMFD.FDQuery2.Close;
 DMFD.FDQuery2.SQL.Clear;
 DMFD.FDQuery2.SQL.Add( 'select * from critica_importacao' );
 DMFD.FDQuery2.Open;
 DMFD.FDQuery2.first;

 if not (DMFD.FDQuery2.IsEmpty) then
  if vartostr(DMFD.FDQuery2['retorno']) <> '' then
   begin
    MessageDlg(vartostr(DMFD.FDQuery2['retorno']),mtError,[mbOK],0);
   end;

 //----------------------------------------------------------------------------

 vSerie := '';

 case RadioGroup2.ItemIndex of
  0 : vModelo := '';
  1 : vModelo := '55';
  2 : vModelo := '65';
 end;

 aux := '';
 aux := edt_CodEmp.Text + ',' + '''' + vModelo + '''' + ',' + '''';
 aux := aux + vSerie + '''';

 DMFD.FDQuery3.Close;
 DMFD.FDQuery3.SQL.Clear;
 DMFD.FDQuery3.SQL.Add( 'exec sp_nfe_a_serem_geradas ' + aux );
 DMFD.FDQuery3.Open;

 // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest - PENDENTES
 pAtuTL(cxTL, cxTLbSel, cxTLsDes, cxTLsCpf, cxTLsCod, cxTLsMod, cxTLsSer,
              cxTLdDem, cxTLlNot, cxTLcVal, cxTLsTrs, cxTLsCnc, cxTLsSit,
              cxTLsPro, cxTLsRec, cxTLsCha, DMFD.FDQuery3);

 // by Edson Lima ; 4.4.2012 ; 15:30 ; Linha incluida
 pAtuNFeT();

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: sexta-feira 3.2.2012 16:05
// Ultima Alt.:
// Descrição..: Procedure que le os arquivos textos e Atualiza nfe
//              transmitidas. Esta procedure contém o mesmo
//              código evento onckick do antigo botão Atualizar
//              nfe transmitidas.
//
//--------------------------------------------------------------
procedure TFrGBNFe.pAtuNFeT();
var
 aux, vModelo, vSerie    : string;
 nodInu, nodBus          : TcxTreeListNode;
 vMod, vSer              : integer;

begin

 if ( edt_NumNNF.Text = '' ) then edt_NumNNF.Text := '0';
 if ( edt_CodDes.Text = '' ) then edt_CodDes.Text := '0';

 vSerie := '';

 case RadioGroup2.ItemIndex of
  0 : vModelo := '';
  1 : vModelo := '55';
  2 : vModelo := '65';
 end;

 aux := '';
 aux := edt_CodEmp.Text + ',' + '''' + FormatDateTime('yyyy/mm/dd', cxdtp1.Date) + ''''+ ',';
 aux := aux + '''' + FormatDateTime('yyyy/mm/dd', cxdtp2.Date) + '''' + ',';
 aux := aux + '''' + edt_NumNNF.Text + '''' + ',';
 aux := aux + '''' + edt_CodDes.Text + '''' + ',';
 aux := aux + '''' + vModelo + '''' + ',';
 aux := aux + '''' + vSerie + '''';

 cxTL.Align     := alClient;
 cxTLInut.Align := alClient;

 case RadioGroup1.ItemIndex of

  1 :
      begin

       // Ler e execulta a query de contingência
       aux := '';
       aux := edt_CodEmp.Text + ',' + '''' + vModelo + '''' + ',' + '''';
       aux := aux + vSerie + '''';

       DMFD.FDQuery10.Close;
       DMFD.FDQuery10.SQL.Clear;
       DMFD.FDQuery10.SQL.Add( 'exec sp_nfe_em_contingencia ' + aux );
       DMFD.FDQuery10.Open;

       // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest das contingências
       pAtuTL(cxTL, cxTLbSel, cxTLsDes, cxTLsCpf, cxTLsCod, cxTLsMod, cxTLsSer,
                    cxTLdDem, cxTLlNot, cxTLcVal, cxTLsTrs, cxTLsCnc, cxTLsSit,
                    cxTLsPro, cxTLsRec, cxTLsCha, DMFD.FDQuery10);

      end;
  2 :
      begin

       DMFD.FDQuery5.Close;
       DMFD.FDQuery5.SQL.Clear;
       DMFD.FDQuery5.SQL.Add( 'exec sp_nfe_transmitidas ' + aux );
       DMFD.FDQuery5.Open;

       // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest - TRANSMITIDAS
       pAtuTL(cxTL, cxTLbSel, cxTLsDes, cxTLsCpf, cxTLsCod, cxTLsMod, cxTLsSer,
                    cxTLdDem, cxTLlNot, cxTLcVal, cxTLsTrs, cxTLsCnc, cxTLsSit,
                    cxTLsPro, cxTLsRec, cxTLsCha, DMFD.FDQuery5);

      end;
  3 :
      begin

       // Ler e execulta a query de denegadas
       DMFD.FDQryGeral1.Close;
       DMFD.FDQryGeral1.SQL.Clear;
       DMFD.FDQryGeral1.SQL.Add( 'exec sp_nfe_denegadas ' + aux );
       DMFD.FDQryGeral1.Open;

       // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest denegadas
       pAtuTL(cxTL, cxTLbSel, cxTLsDes, cxTLsCpf, cxTLsCod, cxTLsMod, cxTLsSer,
                    cxTLdDem, cxTLlNot, cxTLcVal, cxTLsTrs, cxTLsCnc, cxTLsSit,
                    cxTLsPro, cxTLsRec, cxTLsCha, DMFD.FDQryGeral1);

      end;
  4 :
      begin

       // Ler e execulta a query de canceladas
       DMFD.FDQuery6.Close;
       DMFD.FDQuery6.SQL.Clear;
       DMFD.FDQuery6.SQL.Add( 'exec sp_nfe_canceladas ' + aux );
       DMFD.FDQuery6.Open;

       // by Edson Lima ; 2013-7-26T1609 ; Atualiza dados das TreeLest das Canceladas
       pAtuTL(cxTL, cxTLbSel, cxTLsDes, cxTLsCpf, cxTLsCod, cxTLsMod, cxTLsSer,
                    cxTLdDem, cxTLlNot, cxTLcVal, cxTLsTrs, cxTLsCnc, cxTLsSit,
                    cxTLsPro, cxTLsRec, cxTLsCha, DMFD.FDQuery6);

      end;
  5 :
      begin

       // Ler e execulta a query de inutilizadas
       vSer := 0;

       case RadioGroup2.ItemIndex of
        0 : vMod := 0;
        1 : vMod := 55;
        2 : vMod := 65;
       end;

       aux := '';
       aux := edt_CodEmp.Text + ',' + '''' + IntToStr(vMod) + '''' + ',' + '''';
       aux := aux + IntToStr(vSer) + '''';

       DMFD.FDQuery7.Close;
       DMFD.FDQuery7.SQL.Clear;
       DMFD.FDQuery7.SQL.Add( 'exec sp_nfe_inutilizadas ' + aux );
       DMFD.FDQuery7.Open;

       //----------------------------------------------------------------------------
       // Atribui dados na treelist
       // Monta a grade inutilizadas
       cxTLInut.AdjustColumnsWidth;
       cxTLInut.Clear;

       if DMFD.FDQuery7.RecordCount > 0 Then
        Begin
         cxTLInut.BeginUpdate;

         Try
          DMFD.FDQuery7.First;

          // Laço para montar grade

          While Not DMFD.FDQuery7.Eof Do
           begin
            nodInu := cxTLInut.Add;

            nodInu.Values[cxTLdIDem.ItemIndex]  := DMFD.FDQuery7.fieldByName('nfe_demi').AsDateTime;
            nodInu.Values[cxTLsIAno.ItemIndex]  := DMFD.FDQuery7.fieldByName('ano').AsString;
            nodInu.Values[cxTLsIMod.ItemIndex]  := DMFD.FDQuery7.fieldByName('modelo').AsString;
            nodInu.Values[cxTLsISer.ItemIndex]  := DMFD.FDQuery7.fieldByName('serie').AsString;
            nodInu.Values[cxTLlINot.ItemIndex]  := DMFD.FDQuery7.fieldByName('nfe_nnf').AsInteger;
            nodInu.Values[cxTLsIJus.ItemIndex]  := DMFD.FDQuery7.fieldByName('justificativa').AsString;
            nodInu.Values[cxTLsTpAm.ItemIndex]  := DMFD.FDQuery7.fieldByName('tpAmb').AsString;
            nodInu.Values[cxTLsvApl.ItemIndex]  := DMFD.FDQuery7.fieldByName('verAplic').AsString;
            nodInu.Values[cxTLicdUF.ItemIndex]  := DMFD.FDQuery7.fieldByName('cUF').AsInteger;
            nodInu.Values[cxTLsCnpj.ItemIndex]  := DMFD.FDQuery7.fieldByName('CNPJ').AsString;
            nodInu.Values[cxTLsnPro.ItemIndex]  := DMFD.FDQuery7.fieldByName('nProt').AsString;
            nodInu.Values[cxTLicSta.ItemIndex]  := DMFD.FDQuery7.fieldByName('cStat').AsInteger;
            nodInu.Values[cxTLsxMot.ItemIndex]  := DMFD.FDQuery7.fieldByName('xMotivo').AsString;
            nodInu.Values[cxTLsxInu.ItemIndex]  := DMFD.FDQuery7.fieldByName('UsuInu').AsString;

            DMFD.FDQuery7.Next;
           end;
        Finally
         cxTLInut.EndUpdate;
        end;
       end;

      end;

 end;

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: quarta-feira 8.2.2012 10:05
// Ultima Alt.:
// Descrição..: Procedure que lê o arquivo empresa
//
//--------------------------------------------------------------
procedure TFrGBNFe.pLerEmp();
begin

 DMFD.FDQuery4.Close;
 DMFD.FDQuery4.SQL.Clear;
 DMFD.FDQuery4.SQL.Add( 'select * from emitente            ' );
 DMFD.FDQuery4.SQL.Add( ' where codigo_loja =:codigo_loja  ' );
 DMFD.FDQuery4.ParamByName('codigo_loja').AsInteger := StrToIntDef(gCodEmp, 0);
 DMFD.FDQuery4.Open;

 DMFD.FDQuery4.Active := True;

 if DMFD.FDQuery4.isempty then
  begin

   Application.Messagebox(' Emitente não encontrado!','Atenção!',MB_ICONINFORMATION+mb_ok);
    begin
     PostMessage(FindWindow('tfrgbnfe', nil), WM_CLOSE,0,0);
     Exit;
    end;

   end

  else

   begin

    Label1.Caption := ' ' + vartostr(DMFD.FDQuery4['razao_social']) + ' - ' + vartostr(DMFD.FDQuery4['nome_fantasia']);

    gCnpj          := VarToStr(DMFD.FDQuery4['cnpj']);

    if ( Length(Trim(gCnpj)) = 11 ) then
     gCnpj         := StrZero(gCnpj, 14);

   end;

end;

procedure TFrGBNFe.FormShow(Sender: TObject);
var
 vNNFenc : boolean;

begin

 // Verificação e criação de pastas do sistema gbnfe
 pVerPas();

 //----------------------------------------------------------------------------
 // Efetua a conecção com os bancos de dados
 // by Edson Lima ; 2017-6-30T1043
 //----------------------------------------------------------------------------

 LerBDFD();

 //-----------------------------------------------------------------------------
 // Conectar o banco de dados

 while not ( DMFD.FDConNFe.Connected ) do
  begin

   DMFD.FDConNFe.LoginPrompt                := FrPar.chk_LoginPrompt_NFe.Checked;
   if ( FrPar.OSAuthent_NFe.Checked ) then
    DMFD.FDConNFe.Params.Values['OSAuthent']:= 'Yes'
   else
    DMFD.FDConNFe.Params.Values['OSAuthent']:= 'No';
   DMFD.FDConNFe.Params.Values['MARS']      := 'Yes';
   DMFD.FDConNFe.Params.Values['DriverID']  := FrPar.cbb_DriverID_NFe.Text;
   DMFD.FDConNFe.Params.Values['Database']  := FrPar.edt_Database_NFe.Text;
   DMFD.FDConNFe.Params.Values['Server'  ]  := FrPar.edt_Server_NFe.Text;
   if not ( FrPar.OSAuthent_NFe.Checked ) then
    begin
     DMFD.FDConNFe.Params.Values['UserName']:= FrPar.edt_UserName_NFe.Text;
     DMFD.FDConNFe.Params.Values['Password']:= FrPar.edt_Password_NFe.Text;
    end;

   try

    DMFD.FDConNFe.Connected                  := FrPar.chk_Connected_NFe.Checked;

    DMFD.FDQuery4.Close;
    DMFD.FDQuery4.SQL.Clear;
    DMFD.FDQuery4.SQL.Add( 'select * from emitente            ' );
    DMFD.FDQuery4.SQL.Add( ' where codigo_loja =:codigo_loja  ' );
    DMFD.FDQuery4.ParamByName('codigo_loja').AsInteger := StrToIntDef(gCodEmp, 0);
    DMFD.FDQuery4.Open;

    DMFD.FDQuery4.Active := True;

    if (DMFD.FDQuery4.IsEmpty) then
     begin

      if Application.MessageBox(PWideChar( 'A empresa: ' + gCodEmp +
                                           ', não foi encontrada na tabela de emitentes!'  + Char(13) +
                          'Gostaria de corrigir os dados de conecção?'),
                          PWideChar('Parâmetros FireDAC'),
                          MB_ICONQUESTION + MB_YESNO ) = IdYes then
       begin

        if ( FrBDFD = nil ) then
         FrBDFD := TFrBDFD.Create(Application);
        FrBDFD.BringToFront;
        FrBDFD.ShowModal;

       end
      else
       Halt;

     end;

   except

     if ( FrBDFD = nil ) then
      FrBDFD := TFrBDFD.Create(Application);
     FrBDFD.BringToFront;
     FrBDFD.ShowModal;

   end;

  end;

 if ( DMFD.FDQuery4.IsEmpty ) then
  begin

   Halt;

  end
 else
  begin

   FrGBNFe.BringToFront;
   pLerEmp();                                                                   // By EL 8.2.2012 - Ler e atualiza os dados do emissor
   LerConf1();                                                                  // Ler a tabela emitente e pega os parâmetros

   //---------------------------------------------------------------------------
   // Verifica o caminho do arquivo da logomarca e da base de dados
   if not FileExists(PWideChar(PAnsiChar(FrPar.edtLogoMarca.Text))) then
    begin
     gTemLogo  := False;
    end
   else
    gTemLogo  := True;
   //---------------------------------------------------------------------------

   edt_CodEmp.Text := gCodEmp;                                                  // Atualiza o edt_CodEmp com o gCodEmp passado por parâmetro pelo ERP
   ilCodEmp := StrToIntDef(gCodEmp, 0);

   pAtrCam();                                                                   // Atribui os caminho
   LerConf2();                                                                  // Atribui dados nos parâmetros acbr

   pAtuNFe();                                                                   // Procedure de atualização

   PageControl1.TabIndex := 2;                                                  // Janela de mensagens de retorno

   /// by EL - 14.2.2012 --> Inicia a com as notas pendentes
   RadioGroup1.ItemIndex := 0;   // Pendentes

   // by EL 14.2.2012 -> função de coleta de dados
   fIniPen();

   DMFD.FDQuery3.CachedUpdates  := True;
   DMFD.FDQuery5.CachedUpdates  := True;
   DMFD.FDQuery6.CachedUpdates  := True;
   DMFD.FDQuery10.CachedUpdates := True;

   // Pega a versão e atribui no panel da janela principal
   Panel11.Caption := 'NFe && NFCe v(FD): Berlin - ' + GetBuildInfo('GbNFe.exe');

   // Pega a versão e atribui no panel da janela de Manifesto
   if gNivel = '4' then
    begin
     FrBuscaChave.Panel11.Caption := 'NFe && NFCe v(FD): Berlin - ' + GetBuildInfo('GbNFe.exe');
     FrBuscaChave.SpeedButton2.Visible  := True;
     FrBuscaChave.SpeedButton51.Visible := True;
     FrBuscaChave.img1.Visible          := True;
     FrBuscaChave.Align                 := alBottom;
     FrBuscaChave.WindowState           := wsMaximized;
     FrBuscaChave.HeaderControl1.Visible:= true;
    end;

   //***************************************************************************
   //** ROTINAS DAS CHAMADAS EXPRESS PELO ERP
   //***************************************************************************

   vNNFenc := false;

   if gExpress = '1' then
    begin
     case StrToIntDef(gOpcao, 0) of
      1 : //** ENVIA NOTA FISCAL
       begin
        RadioGroup1.ItemIndex := 0;                                             // seta parâmetro inicial para visualizar nfe a transmitir
        RadioGroup1Click(Sender);                                               // força um clic no evento radiogroup1

        DMFD.FDQuery3.First;                                                    // vai pro inicio da tabela nfe
        while (not DMFD.FDQuery3.eof) do                                        // fica no loop até que encontre o fim
         begin
          if (DMFD.FDQuery3['nfe_nnf'] = StrToIntDef(gNNF, 0)) then             // se a nota for igual a variavel gNNF marca registro
           begin
            DMFD.FDQuery3.FieldByName('Checado').ReadOnly := False;
            DMFD.FDQuery3.Edit;                                                 // edita registro
            DMFD.FDQuery3['Checado'] := 'Y';                                    // marca registro para processamento
            vNNFenc := true;                                                    // especifica que a nota fiscal foi encontrada
           end;
           DMFD.FDQuery3.Next;                                                  // vai para o próximo registro e retorna para o loop
         end;

        try

         BitBtn2Click(Sender);                                                  // força um clic no botão "enviar nota fiscal"

        except on e:Exception do
         begin

          fMensOnShow( 2, 'ERRO NÃO CATALOGADO: Nota Fiscal eletrônica não enviada!' + Chr(13) +
                           e.Message);

          pAtuNFe();
          close;                                                                // se der erro sai do sistema

         end;

        end;

        if not vNNFenc then

         Application.Messagebox('OBS: Nota Fiscal eletrônica não encontrada !',
                                'Atenção!',MB_ICONASTERISK+mb_ok);

        close;                                                                  // se terminar sem problema sai do sistema

       end;

      2 : //** CANCELA NOTA FISCAL
       begin
        RadioGroup1.ItemIndex := 2;                                             // seta parâmetro inicial para visualizar nfe a transmitir
        RadioGroup1Click(Sender);                                               // força um clic no evento radiogroup1
        FrGBNFe.cxdtp1.Date := date() - 2;                                      // seta data da nota para o edt_CodEmp
        btn2Click(Sender);

        DMFD.FDQuery5.First;                                                    // vai pro inicio da tabela nfe
        while (not DMFD.FDQuery5.eof) do                                        // fica no loop até que encontre o fim
         begin
          if (DMFD.FDQuery5['nfe_nnf'] = StrToIntDef(gNNF, 0)) then             // se a nota for igual a variavel gNNF marca registro
           begin
            DMFD.FDQuery5.FieldByName('Checado').ReadOnly := False;
            DMFD.FDQuery5.Edit;                                                 // edita registro
            DMFD.FDQuery5['Checado'] := 'Y';                                    // marca registro para processamento
            vNNFenc := true;                                                    // especifica que a nota fiscal foi encontrada
           end;
           DMFD.FDQuery5.Next;                                                  // vai para o próximo registro e retorna para o loop
         end;

        try

         BitBtn11Click(Sender);                                                 // força um clic no botão "cancelar nota fiscal"

        except on e:Exception do
         begin

          Application.Messagebox(PWideChar('ERRO NÃO CATALOGADO: Nota Fiscal eletrônica não cancelada!' +
                                  e.Message), 'Atenção!',MB_ICONERROR+mb_ok);
          pAtuNFe();
          close;                                                                // se der erro sai do sistema

         end;

        end;

        if not vNNFenc then
         Application.Messagebox('OBS: Nota Fiscal eletrônica não encontrada !',
                                'Atenção!',MB_ICONASTERISK+mb_ok);
        close;                                                                  // se terminar sem problema sai do sistema

       end;

      3 : //** INUTILIZA NOTA FISCAL
       begin
        RadioGroup1.ItemIndex := 0;                                             // seta parâmetro inicial para visualizar nfe a transmitir
        RadioGroup1Click(Sender);                                               // força um clic no evento radiogroup1
        FrInut.Edit4.Text := gNNF;                                              // atribui o valor da variável gNNF para edit da tela de inutilização

        try

         BitBtn13Click(Sender);                                                 // força um clic no botão "inutilizar nota fiscal"

        except

         pAtuNFe();
         close;                                                                 // se der erro sai do sistema

        end;

        close;                                                                  // se terminar sem problema sai do sistema

       end;

      4 : //** CONSULTA NOTA FISCAL
       begin
        RadioGroup1.ItemIndex := 2;                                             // seta parâmetro inicial para visualizar nfe a transmitir
        RadioGroup1Click(Sender);                                               // força um clic no evento radiogroup1
        FrGBNFe.cxdtp1.Date := date() - 2;                                      // seta data da nota para o edt_CodEmp
        btn2Click(Sender);                                                      // força um exit da data inicial

        DMFD.FDQuery5.First;                                                    // vai pro inicio da tabela nfe
        while (not DMFD.FDQuery5.eof) do                                        // fica no loop até que encontre o fim
         begin
          if (DMFD.FDQuery5['nfe_nnf'] = StrToIntDef(gNNF, 0)) then             // se a nota for igual a variavel gNNF marca registro
           begin
            DMFD.FDQuery5.FieldByName('Checado').ReadOnly := False;
            DMFD.FDQuery5.Edit;                                                 // edita registro
            DMFD.FDQuery5['Checado'] := 'Y';                                    // marca registro para processamento
            vNNFenc := true;                                                    // especifica que a nota fiscal foi encontrada
           end;
           DMFD.FDQuery5.Next;                                                  // vai para o próximo registro e retorna para o loop
         end;

        try

         gExcluir := True;                                                      // Seta variável global para ler somente um registro
         BitBtn8Click(Sender);                                                  // força um clic no botão "consulta nota fiscal"
         gExcluir := False;                                                     // Seta variável global para ler vários registros

         if gDeuErrConsiste then Exit;                                          // Aborta no caso de erro

        except on e:Exception do
         begin

          Application.Messagebox(PWideChar('ERRO NÃO CATALOGADO: Nota Fiscal eletrônica não consultada!' + Chr(13) +
                                  e.Message),'Atenção!',MB_ICONERROR+mb_ok);
          pAtuNFe();
       close;                                                                   // se der erro sai do sistema

         end;

        end;

        if not vNNFenc then
         Application.Messagebox('OBS: Nota Fiscal eletrônica não encontrada !',
                                'Atenção!',MB_ICONASTERISK+mb_ok);
      close;                                                                    // se terminar sem problema sai do sistema

       end;

      5 : //** IMPRIMIR NOTA FISCAL
       begin
        RadioGroup1.ItemIndex := 2;                                             // seta parâmetro inicial para visualizar nfe transmitida
        RadioGroup1Click(Sender);                                               // força um clic no evento radiogroup1
        FrGBNFe.cxdtp1.Date := date() - 2;                                      // seta data da nota para o edt_CodEmp
        btn2Click(Sender);                                                      // força um exit da data inicial

        DMFD.FDQuery5.First;                                                    // vai pro inicio da tabela nfe
        while (not DMFD.FDQuery5.eof) do                                        // fica no loop até que encontre o fim
         begin
          if (DMFD.FDQuery5['nfe_nnf'] = StrToIntDef(gNNF, 0)) then             // se a nota for igual a variavel gNNF marca registro
           begin
            DMFD.FDQuery5.FieldByName('Checado').ReadOnly := False;
            DMFD.FDQuery5.Edit;                                                 // edita registro
            DMFD.FDQuery5['Checado'] := 'Y';                                    // marca registro para processamento
            vNNFenc := true;                                                    // especifica que a nota fiscal foi encontrada
           end;
           DMFD.FDQuery5.Next;                                                  // vai para o próximo registro e retorna para o loop
         end;

        try

         BitBtn9Click(Sender);                                                  // força um clic no botão "imprime nota fiscal"

        except on e:Exception do
         begin

          Application.Messagebox(PWideChar('ERRO NÃO CATALOGADO: Nota Fiscal eletrônica não impressa!' + Chr(13) +
                                 e.Message),'Atenção!',MB_ICONERROR+mb_ok);
          pAtuNFe();
          close;                                                                // se der erro sai do sistema

         end;

        end;

        if not vNNFenc then
         Application.Messagebox('OBS: Nota Fiscal eletrônica não encontrada !','Atenção!',MB_ICONASTERISK+mb_ok);

        close;                                                                  // se terminar sem problema sai do sistema

       end;

     end;  // **case
    end;   // **if

   // Ajusta o tamanho do Label1 (razão social) com o tamanho do groupbox3
   Label1.Width := (Groupbox3.Width - 20);

   gVerifCert := True;                                                          // Ativa as mensagens de verificação do certificado digital

   // Inibe a edição do código da empresa
   FrGBNFe.edt_CodEmp.ReadOnly := gEdtCodEmp;

   // Abre direto a janela MDe - Obs não pode haver outros comandos depois deste
   if gNivel = '4' then
    begin
     if ( FrBuscaChave = nil ) then
      FrBuscaChave := TFrBuscaChave.Create(Application)
     else
      FrBuscaChave := TFrBuscaChave.Create(Application);
     FrBuscaChave.BringToFront;
     FrBuscaChave.ShowModal;

     BitBtn12Click(Sender);
    end;

   //---------------------------------------------------------------------------

   if (DMFD.FDQuery4['Versao']      = 've3131') then
    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve310
   else if (DMFD.FDQuery4['Versao']      = 've4040') then
    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400
   else
    ACBrNFe1.Configuracoes.Geral.VersaoDF := ve400;

   //---------------------------------------------------------------------------

   // Mostra se o sistema está em produção ou em homologação e a versão do sistema
   pMostraTipoAmb();

   //---------------------------------------------------------------------------

  end;

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: terça-feira 14.2.2012 9:56
// Ultima Alt.:
// Descrição..: Função que prepara a query de nfe pendentes
//
//--------------------------------------------------------------
function TFrGBNFe.fIniPen() : boolean;
begin

 Case RadioGroup1.ItemIndex of
 0:                                                                             // by EL 14.2.2012 -------->  PENDENTES
  begin

  // By Edson Lima - 1-2-2012 - Ler Arquivos txt e Atualiza
  pAtuNFe;

  DMFD.FDQuery4.Close;
  DMFD.FDQuery4.SQL.Clear;
  DMFD.FDQuery4.SQL.Add( 'select * from emitente where codigo_loja = ' + edt_CodEmp.Text );
  DMFD.FDQuery4.Open;

  if DMFD.FDQuery4.isempty then
  begin
  DMFD.FDQuery4.Close;
  DMFD.FDQuery4.SQL.Clear;
  DMFD.FDQuery4.SQL.Add( 'select * from emitente');
  DMFD.FDQuery4.Open;

  if not DMFD.FDQuery4.IsEmpty then
   begin
   if StrToIntDef(edt_CodEmp.Text, 0) < DMFD.FDQuery4['codigo_loja'] then
    begin
    DMFD.FDQuery4.Last;
    edt_CodEmp.Text := IntToStr(DMFD.FDQuery4['codigo_loja']);
    pAtuNFe;
    DMFD.FDQuery4.Close;
    DMFD.FDQuery4.SQL.Clear;
    DMFD.FDQuery4.SQL.Add( 'select * from emitente where codigo_loja = ' + edt_CodEmp.Text );
    DMFD.FDQuery4.Open;
    end
   else
    begin
    DMFD.FDQuery4.Last;
    if StrToIntDef(edt_CodEmp.Text, 0) > DMFD.FDQuery4['codigo_loja'] then
     begin
     DMFD.FDQuery4.First;
     edt_CodEmp.Text := IntToStr(DMFD.FDQuery4['codigo_loja']);
     pAtuNFe;
     DMFD.FDQuery4.Close;
     DMFD.FDQuery4.SQL.Clear;
     DMFD.FDQuery4.SQL.Add( 'select * from emitente where codigo_loja = ' + edt_CodEmp.Text );
     DMFD.FDQuery4.Open;
     end
    else
     pAtuNFe;
     DMFD.FDQuery4.Close;
     DMFD.FDQuery4.SQL.Clear;
     DMFD.FDQuery4.SQL.Add( 'select * from emitente where codigo_loja = ' + edt_CodEmp.Text );
     DMFD.FDQuery4.Open;
    end;
   end;
  end;

  if DMFD.FDQuery4.IsEmpty then
   begin
   Label1.Font.Color := clRed;
   Label1.Caption := ' NÃO EXISTE EMPRESA CADASTRADA NESSE CÓDIGO !';
   end
  else
   begin
   Label1.Font.Color := clBlue;
   Label1.Caption := ' ' + vartostr(DMFD.FDQuery4['razao_social']) + ' - ' + vartostr(DMFD.FDQuery4['nome_fantasia']);
   end;

  end;


 end;

 result := true;
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: quinta-feira 16.2.2011 10:38
// Ultima Alt.:
// Descrição..: Proc. que verifica a existencia das pastas e se
//              não existirem ele as cria
//
//------------------------------------------------------------ok-
procedure TFrGBNFe.pVerPas();
var
 vPath : string;

begin
 // Cria os respectivos caminhos Emp000Xml, Emp000Pdf, Emp000Log, Emp000Bak, Emp000NFe e Emp000Doc dentro do ..\Arq
 vPath := ( gCamPad + 'Arq' );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp );
 if not DirectoryExists(vPath) then
  begin

   CreateDir(vPath);
   CreateDir(gCamPad + 'Arq\Emp' + gCodEmp + '\Xml');
   CreateDir(gCamPad + 'Arq\Emp' + gCodEmp + '\XmlI');
   CreateDir(gCamPad + 'Arq\Emp' + gCodEmp + '\Pdf');
   CreateDir(gCamPad + 'Arq\Emp' + gCodEmp + '\Log');
   CreateDir(gCamPad + 'Arq\Emp' + gCodEmp + '\Doc');

  end;

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\XmlE' );
 if DirectoryExists(vPath) then
  RemoveDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\XmlS' );
 if DirectoryExists(vPath) then
  RemoveDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\Xml' );
 if not DirectoryExists(vPath)  then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\XmlI' );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\Pdf' );
 if ( not DirectoryExists(vPath) )  then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\Log' );
 if not DirectoryExists(vPath)  then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Arq\Emp' + gCodEmp + '\Doc' );
 if not DirectoryExists(vPath)  then
  CreateDir(vPath);

 // Cria os respectivos caminhos de Textos
 vPath := ( gCamPad + 'Txt' );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 vPath := ( gCamPad + 'Txt\' + gCodEmp );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 // Cria os respectivos caminhos
 vPath := ( gCamPad + 'Arq\Bak' );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 // Cria os caminhos Report a nível do execultável
 vPath := ( gCamExe + 'Report' );
 if not DirectoryExists(vPath) then
  CreateDir(gCamExe + 'Report');

 // Cria os caminhos Schemas dentro do Execultável
 vPath := ( gCamExe + 'Schemas\NFe' );
 if not DirectoryExists(vPath) then
  CreateDir(vPath);

 // by Edson Lima ; 5.4.2012 ; 14:42 ; Atribui caminho para local do PDF e REV

 if ( gCpt = 1 ) then
  pDefineRel()                                                                  // Define o tipo de Relatório FortesReport
 else
  pDefineRelFR();                                                               // Define o tipo de Relatório FastReport

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-8-17T1018
// objective  Enviar NFe e NFCe
//------------------------------------------------------------------------------
procedure TFrGBNFe.BitBtn2Click(Sender: TObject);
var
 I, vC, c, X                          : Integer;
 Para, vI, vP, pAux, aux, vCon, vDmsg : String;
 CC                                   : Tstrings;
 y                                    : dword;

begin

 if ( gCpt = 1 ) then
  pDefineRel()                                                                  // Define o tipo de Relatório FortesReport
 else
  pDefineRelFR();                                                               // Define o tipo de Relatório FastReport

 // Verifica se a logo foi encontrada, caso contrário pergunta se procegue...
 if not gTemLogo then
  begin

   case ( fMensOnShow( 2, 'Logomarca não encontrada, verifique o caminho da logomarca' + Chr(13) +
                          'em parâmetros! Deseja proceguir sem a logomarca?' ) ) of
    ID_NO     : Exit;

   end;

  end;

 ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := 0;

 Case RadioGroup1.ItemIndex of

 0:                                                                             // PENDENTES

  begin

   if RadioButton3.Checked then                                                 // PENDENTES - CONTINGÊNCIA

    begin

     if not fTemSel( cxTL, cxTLbSel ) then exit;                                // verifica se tem item selecionado na treelist

     if MessageDlg('Confirma geração em contingência ' + _tipo_emissao + ':',
                    mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin

       if not(InputQuery('WebServices Contingência', 'Justificativa', xjustificativa)) then exit;
        if length(trim(xjustificativa)) < 15 then
         begin
          MessageDlg('Justificativa deve ter no mínimo 15 caracteres', mtConfirmation,[mbOK],0);
          pAtuNFe;                                                              // Procedure de atualização
          exit;
         end;

       try

        for X := 0 to cxTL.Count -1 do                                          // Percorre a treelist

         begin

          if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then          // Verifica se o item está selecionado

           begin

            // Filtra a nfe selecionada com select
            pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                       StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                       StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                       cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                       cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

            gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
            gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

            //-------------------------------------------------------------------
            // by Edson Lima ; 2016-2-26T1021
            // Aqui está sendo bloqueada a emissão da nfce sem a senha
            //-------------------------------------------------------------------

            if (gModelo = 65) then
             begin

              // No caso de suporte deve entrar com a senha
              FrGBNFe.pSuporteSenha();

             end;

            if ( (gModelo = 55) or  ((gModelo = 65) and (gSenhaBD <> '')) ) then
             begin

              if gModelo = 65 then
               begin
                ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
               end
              else
               begin
                ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
               end;

              if ( gCpt = 1 ) then
               pDefineRel()                                                     // Define o tipo de Relatório FortesReport
              else
               pDefineRelFR();                                                  // Define o tipo de Relatório FastReport

              if (gModelo = 55) then
               begin
                _tipo_emissao := 'fsda';
                _tpemissao := '5';
               end
              else if (gModelo = 65) then
               begin
                _tipo_emissao := 'OffL';
                _tpemissao := '9';
               end;

               //*******************************************************************************
               // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update
               gCdloja_Consiste := edt_CodEmp.Text;
               gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
               gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
               gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
               gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
               gChave_Consiste  := '';                                          // está sendo atribuida depois da sp_calcula_digito_chave
               gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);


               gDataEmi := 0;

               aux := VarToStr(DMFD.FDQryGeral2['nfe_chave_nfe']);

               if (gModelo = 65) then

                begin

                 gTN                                   := '\NFCe\';
                 if not (DMFD.FDQryGeral2['nfe_DatNFCe']   = null) then
                  gDataEmi                             := (DMFD.FDQryGeral2['nfe_DatNFCe']);

                end

               else

                begin

                 gTN                                   := '\NFe\';

                 if not (DMFD.FDQryGeral2['nfe_demi']   = null) then
                  gDataEmi                             := (DMFD.FDQryGeral2['nfe_demi']);

                end;

               //-----------------------------------------------------------------
               // by Edson Lima - 2015-12-18T1559 ; verifica se a situação está null,
               // se sim elimina qualquer xml do sistema, para evitar envio de xml
               // depois de correção e exclusão-----------------------------------

               if ( aux <> '' ) then
                if ( (trim(DMFD.FDQryGeral2['nfe_situacao']) =  null) and ( not (gDataEmi = null))   or
                     (trim(DMFD.FDQryGeral2['nfe_situacao']) =  '')   and ( not (gDataEmi = null)) ) then
                 pEliminaXml(aux, gTN);                                          // Elimina os xmls quando a situação for null

               //-------------------------------------------------------------------

               //-----------------------------------------------------------------
               // by Edson ; 04/12/2012 ; 10:22 ; Testa se a NFe já foi enviada e
               //                                 aguarda retorno da SEFAZ
               //-----------------------------------------------------------------
               // 2016-1-20T1415 - Implementado para resolber mensagem de não
               // envio para sefaz
               //-----------------------------------------------------------------
               vCon := trim(gCamLog) + trim(Aux) + '-nfe.xml';
               if ( (FileExists(vCon)) and ( DMFD.FDQryGeral2['nfe_situacao'] <>  null ) ) then

                begin

                 vMens := 'Verificando a existencia da NFe Nº' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + ' na SEFAZ !';

                 gExcluir := True;                                              // Seta variável global para ler somente um registro
                 gConsiste := false;                                            // Depende da consistência
                 BitBtn8Click(Sender);                                          // Força um click na consulta
                 gExcluir := False;                                             // Seta variável global para ler varios registros

                 if gDeuErrConsiste then Exit;                                  // Aborta no caso de erro

                 // Caso não exista na base sefaz permite excluir ; by Edson Lima ; 17-9-2012 ; 14:00
                 if ( (ACBrNFe1.WebServices.Consulta.cStat > 0) and
                      (vartostr(ACBrNFe1.WebServices.Consulta.cStat) <> '217') ) then

                  begin

                   MessageDlg('Esta nota: ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + ' consta na base SEFAZ' + chr(13) + 'não pode ser gerada em contingência ' + AnsiUpperCase(_tipo_emissao) + '!', mtInformation,[mbOK],0);
                   exit;

                  end;

                 vMens := '';

                end;

               //*******************************************************************

               if ((copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'FSDA') or
                   (copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'OFFL')) then

                begin

                 MessageDlg('Esta nota: ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + ' foi gerada em contingência, não será gerada novamente', mtInformation,[mbOK],0);

                end

               else

                begin

                 vAux         :=   DMFD.FDQryGeral2['nfe_nnf'];
                 _nota        :=   DMFD.FDQryGeral2['nfe_nnf'];
                 _demi        :=   DMFD.FDQryGeral2['nfe_demi'];

                 geraenvianf(FrGBNFe);

                 if gDeuErrConsiste then Exit;

                 xAux := trim(gCamLog) + trim(gChave_Consiste) + '-nfe.xml';
                 ACBrNFe1.NotasFiscais.Clear;
                 ACBrNFe1.NotasFiscais.LoadFromFile(xAux);

                 grava_xml_no_banco;

                end;

             end

            else

             { Mostra mensagem de inconsistencia para tentativa de geração de
               nfce (modelo 65) em contingência.                                 }
             begin
              Application.Messagebox(PWideChar('O ENVIO DO MODELO NFCe EM CONTINGÊNCIA ESTÁ' + char(13) +
                                               'INDISPONÍVEL, ENVIE A NOTA Nº ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + ', NO MODO NORMAL!'), 'ENVIO DE NFCe - ATENÇÃO', mb_iconstop+mb_ok);
             end;

           end;

         end;

       except

        pGAV();
        pAtuNFe;                                                                // Ler Arquivos txt e Atualiza

       end;

      end;

      pAtuNFe;                                                                  // Procedure de atualização

      exit;
    end;

   //---------------------------------------------------------------------------
   // by Edson Lima ; 2017-8-17T1128
   // PENDENTES - NORMAL
   //---------------------------------------------------------------------------

   if not RadioButton1.Checked then exit;

   _tipo_emissao := 'normal';
   _tpemissao := '1';

   if not fTemSel( cxTL, cxTLbSel ) then exit;                                  // verifica se tem item selecionado na treelist

   try                                                                          // Linha incluida para controlar o sistema de atualização

    if gGeraXML then
     vDmsg := 'Confirme a geração do xml de nota(s)!'
    else
     vDmsg := 'Confirme o processo de envio de nota(s)!';

    if MessageDlg(vDmsg, mtConfirmation, [mbYes, mbNo], 0) = mrNo then exit;

    for X := 0 to cxTL.Count -1 do                                              // Percorre a treelist

     begin

      if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then              // Verifica se o item está selecionado

       begin

        // Filtra a nfe selecionada com select
        pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                   StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                   StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                   cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                   cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

        if ( gCpt = 1 ) then
         pDefineRel()                                                           // Define o tipo de Relatório FortesReport
        else
         pDefineRelFR();                                                        // Define o tipo de Relatório FastReport

        //----------------------------------------------------------------------
        // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf
        // na hora do update
        //----------------------------------------------------------------------
        gCdloja_Consiste := edt_CodEmp.Text;
        gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
        gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
        gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
        gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
        gSerie           := StrToIntDef(gSerie_Consiste, 0);
        gModelo          := DMFD.FDQryGeral2['nfe_modelo'];
        gChave_Consiste  := '';                                                 // está sendo atribuida depois da sp_calcula_digito_chave
        gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

        gDataEmi := 0;
        aux := VarToStr(DMFD.FDQryGeral2['nfe_chave_nfe']);

        if (gModelo = 65) then
         begin
          ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
          gTN                                   := '\NFCe\';
          if not (DMFD.FDQryGeral2['nfe_DatNFCe']   = null) then
           gDataEmi                             := (DMFD.FDQryGeral2['nfe_DatNFCe']);
         end
        else
         begin
          ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
          gTN                                   := '\NFe\';
          if not (DMFD.FDQryGeral2['nfe_demi']      = null) then
           gDataEmi                             := (DMFD.FDQryGeral2['nfe_demi']);
         end;

        //----------------------------------------------------------------------
        // by Edson Lima - 2015-12-18T1559 ; verifica se a situação está null,
        // se sim elimina qualquer xml do sistema, para evitar envio de xml
        // depois de correção e exclusão
        //----------------------------------------------------------------------

        if ((copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'FSDA') or
            (copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'OFFL')) then
         begin

          MessageDlg('Esta nota: ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) +
                     ' foi gerada em contingência, não será gerada novamente',
                     mtInformation,[mbOK],0);

         end
        else
         begin

          vAux         := DMFD.FDQryGeral2['nfe_nnf'];
          _nota        := DMFD.FDQryGeral2['nfe_nnf'];
          _demi        := DMFD.FDQryGeral2['nfe_demi'];

          geraenvianf(FrGBNFe);

          // Quando um simp for obrigatório e tiver vindo vazio
          if ( gSimpObg ) then
           begin

            gSimpObg := false;
            exit;

           end;

          if gGeraXml then
           Application.Messagebox(PWideChar('Pronto, já foi gerado o xml da nota: [' + gNNF_Consiste + ' ]'), 'Gerar XML:',MB_ICONINFORMATION+mb_ok)
          else
           begin
            // by Edson Lima ; 2013/03/11 ; 06:57 ; com essa nova abordágem, é
            // possível a continuação após uma rejeição e verificado seu codigo
            // de retorno ;
            if (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat) <> '100') and
               (vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].cStat) <> '150') then exit;

            if gDeuErrConsiste then Exit;

            xAux := vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe);
            if xAux <> '' then
             begin

              xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';
              ACBrNFe1.NotasFiscais.Clear;
              ACBrNFe1.NotasFiscais.LoadFromFile(xAux);

              grava_xml_no_banco;

              //---------------------enviar email
              xAux := vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe);
              //pega os dados do destinatario
              DMFD.FDQuery2.Close;
              DMFD.FDQuery2.SQL.Clear;
              DMFD.FDQuery2.SQL.Add( 'Select                                                     ' );
              DMFD.FDQuery2.SQL.Add( 't1.*                                                       ' );
              DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                       ' );
              DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo    ' );
              DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                              ' );
              DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe = :parm2                                  ' );
              DMFD.FDQuery2.SQL.Add( 'and t2.situacao <> :parm3                                  ' );
              DMFD.FDQuery2.SQL.Add( 'and t2.situacao <> :parm4                                  ' );
              DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
              DMFD.FDQuery2.Params[1].AsString  := (xAux);
              DMFD.FDQuery2.Params[2].AsString  := '101';
              DMFD.FDQuery2.Params[3].AsString  := '151';
              DMFD.FDQuery2.Open;
              if DMFD.FDQuery2.IsEmpty then
               begin
                exit;
               end;

              para := vartostr(DMFD.FDQuery2['email']);

              if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

               begin

                repeat

                 begin

                  if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
                   begin
                    pAtuNFe;                                                    // Procedure de atualização
                    exit;
                   end;

                  para := LowerCase(para);

                  if ( not fValidaEmail(para, 'N') ) then
                   Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

                 end;

                until ( fValidaEmail(para, 'N') );

               end;

              if (trim(para) <> '') then
               begin

                pAux := trim(gCamPdf) + trim(xAux) + '-nfe.pdf';

                xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';

                ACBrNFe1.NotasFiscais.Clear;
                ACBrNFe1.NotasFiscais.LoadFromFile(xAux);

                CC:=TstringList.Create;

                if ( trim(FrPar.edtEnvCC.Text) <> '' ) then
                 for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
                  begin
                   if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
                    begin
                     CC.Add(trim(vI));                                          //especifique um email válido
                     vI := '';
                    end
                   else
                    vI := (vI + FrPar.edtEnvCC.Text[I]);
                  end;

                vI := '';                                                       // Limpa variável
                vC := 0;                                                        // zera contador

                for I := 1 to (Length(Para)+1) do
                 begin
                  if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
                   begin
                    if vC > 0 then
                     CC.Add(trim(vI))                                           // Especifique um email válido
                    else
                     vP := trim(vI);                                            // Atribui apenas o primeiro email

                    vI := '';
                    inc(vC);                                                    // Incrementa 1
                   end
                  else
                   vI := (vI + Para[I]);
                 end;

                Para := vP;

                if not FileExists(pAux) then
                 ACBrNFe1.NotasFiscais.ImprimirPDF;

                try
                 try

                  ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Para
                                        , FrPar.edtEmailAssunto.Text + ' - Nº ' + VarToStr(DMFD.FDQryGeral2['nfe_nnf'])
                                        , FrPar.mmEmailMsg.Lines
                                        , True                                  //Enviar PDF junto
                                        , CC                                    //com copia
                                        , nil
                                         );

                  //Application.MessageBox(PWideChar('Email enviado com sucesso!'), 'Atenção', MB_ICONINFORMATION );

                 except on e:exception do

                  Application.Messagebox( pWideChar( 'Inconsistência no envio do email!' + chr(13) +
                                         e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

                 end;
                finally

                 CC.Free;

                end;

               end;

              //---------------------final - enviar email

             end;

           end;

         end;

       end;

     end;

    pAtuNFe;                                                                    // Procedure de atualização

   except

    pGAV();
    pAtuNFe;                                                                    // Procedure de atualização

   end;

  end;

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2017-8-17T1128
 // EM CONTINGÊNCIA
 //-----------------------------------------------------------------------------

 1: MenuItem2Click(Sender);                                                     // EM CONTINGÊNCIA

 end;

 // By Edson Lima - 1-2-2012 - Ler Arquivos txt e Atualiza
 pAtuNFe;                          // Procedure de atualização

end;

//----------------------------------------------------------------------------
// by Edson Lima ; 2018-4-26T1115 ;
// Consulta notas pendentes, contingências e Transmitidas e atualiza bdados
//----------------------------------------------------------------------------
procedure TFrGBNFe.BitBtn8Click(Sender: TObject);
var
 aux, vDescr, vnRec, xRet : string;
 iCodPed, X               : Integer;
 vNomeUsu                 : string;

begin

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // Loop na TL, verifica se existe seleção

 for X := 0 to cxTL.Count -1 do                                                 // Loop na TL, Percorre a treelist
  begin

   if not gConsiste then
    begin

     if ( (gCdloja_Consiste  = FrGBNFe.edt_CodEmp.Text) and
          (gNNF_Consiste     = cxTL.Items[X].Texts[cxTLlNot.ItemIndex])   and
          (gdEmiConsiste     = cxTL.Items[X].Texts[cxTLdDem.ItemIndex])   and
          (IntToStr(gModelo) = cxTL.Items[X].Texts[cxTLsMod.ItemIndex])   and
          (IntToStr(gSerie)  = cxTL.Items[X].Texts[cxTLsSer.ItemIndex]) ) then

      gConsiste := True;

    end;

   if ( (cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True') and
        (gConsiste) ) then                                                      // Verifica se o item está selecionado
    begin

     pSelNfe( DMFD.FDQryGeral2,
              StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
              StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
              StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
              cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
              cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

     // by Edson Lima ; 2017-1-5T1027 ; Atribui as vars globais
     gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
     gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

     fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                              // Mudança de versão

     // by Edson Lima ; 2017-1-5T1032 ; Define o tipo de relatório
     if ( gCpt = 1 ) then
      pDefineRel()                                                              // FortesReport
     else
      pDefineRelFR();                                                           // FastReport

     // by Edson Lima ; 2017-1-5T1027 ; Atribui as vars globais de consistência
     gCdloja_Consiste := edt_CodEmp.Text;
     gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
     gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
     gDataEmi         := DMFD.FDQryGeral2['nfe_demi'];
     gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
     gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
     gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

     // by Edson Lima ; 2017-1-5T1027 ; Atribuição de dados nas vars do ERP
     gCd_Emp := StrToIntDef(edt_CodEmp.Text, 0);

     if not ( DMFD.FDQryGeral2['nfe_CodPed'] = null ) then
      begin

       iCodPed := DMFD.FDQryGeral2['nfe_CodPed'];
       gCodPed := DMFD.FDQryGeral2['nfe_CodPed'];

      end
     else
      begin

       iCodPed := 0;
       gCodPed := 0;

      end;

     // Verifica o tipo da consulta, seta dados conforme o tipo de consulta
     Case RadioGroup1.ItemIndex of

      0  :                                                                      // Consulta de notas pendentes

       begin

        gChave_Consiste   := '';
        _tpemissao        := '1';                                               // Tipo de envio normal para geração da chave
        vAux              := '';

       end;

      1  :                                                                      // Consulta de notas em contingência

       begin

        gChave_Consiste   := '';
        vAux              := '';

        if ( gModelo = 55 ) then
         _tpemissao        := '5'                                               // Tipo de envio em contingência fsda para geração da chave nfe
        else
         _tpemissao        := '9';                                              // Tipo de envio em contingência offline para geração da chave nfce

        end;

      2  :                                                                      // Consulta de notas transmitidas

       begin

        gChave_Consiste   := DMFD.FDQryGeral2['nfe_chave_nfe'];
        vAux              := DMFD.FDQryGeral2['nfe_chave_nfe'];
        gChvNFe           := vAux;

       end;

     end; // Fim do case

     // by Edson Lima ; 2017-1-5T1027 ; Calcula a chave e o digito verificador
     if ( vAux = '' ) then
      begin

       Aux :=
       edt_CodEmp.Text + ',' + '''' +
       VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
       Aux := Aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQryGeral2['nfe_demi'])) + '''' + ',' + '''';
       Aux := Aux + IntToStr(gModelo) + '''' + ',' + '''';
       Aux := Aux + VarToStr(DMFD.FDQryGeral2['nfe_Serie']) + '''' + ',' + '''';
       Aux := Aux + IntToStr(gCodPed) + '''';

       DMFD.FDQuery1.Close;
       DMFD.FDQuery1.SQL.Clear;
       DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + Aux );
       DMFD.FDQuery1.open;

       if not DMFD.FDQuery1.IsEmpty then
        begin

         if ( Length(VarToStr(DMFD.FDQuery1['chave'])) = 44 ) then
          begin

           vAux              := vartostr(DMFD.FDQuery1['chave']);
           gChave_Consiste   := DMFD.FDQuery1['chave'];

          end
         else
          begin

           Application.Messagebox( PWideChar( 'Retorno: ' +
                                   VarToStr(DMFD.FDQuery1['chave'])),
                                   PWideChar( 'Calcula digito da chave' ),
                                   mb_iconstop+mb_ok );
           exit;

          end;

        end
       else Exit;

      end;

     if (StrToIntDef(DMFD.FDQryGeral2['nfe_modelo'], 0) = 65) then
      gTN              := '\NFCe\'                                              // Global utilizado para setar o nome da pasta
     else
      gTN              := '\NFe\';

     Copia_Xml_PathLog(vAux, gTN);                                              // Copia o arquivo xml pra pasta Log

     // Se a data inicial for maior que a data de emissão, atribui a data de emissão na data inicial
     if (cxdtp1.Date > DMFD.FDQryGeral2['nfe_demi']) then
      cxdtp1.Date := DMFD.FDQryGeral2['nfe_demi'];

     ACBrNFe1.WebServices.Consulta.NFeChave := vAux;

     if ACBrNFe1.WebServices.Consulta.Executar then
      begin

       if gModelo = 55 then
         ACBrNFe1.DistribuicaoDFe(ACBrNFe1.WebServices.Consulta.cUF,
                                  Copy(vAux, 7, 14), '0', '0', vAux );

       xRet := ACBrNFe1.WebServices.Consulta.RetWS;
       xRet := xRet + ACBrNFe1.WebServices.Consulta.Protocolo;
       xRet := xRet + ACBrNFe1.WebServices.Consulta.protNFe.nProt;

       memoLog.Clear;
       MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
       MemoLog.Lines.Add(vDescr);
       MemoLog.Lines.Add('');
       MemoLog.Lines.Add('Status');
       MemoLog.Lines.Add('Tipo de Ambiente:'     + TpAmbToStr(ACBrNFe1.WebServices.Consulta.TpAmb));
       MemoLog.Lines.Add('Versão do Aplicativo: '+ ACBrNFe1.WebServices.Consulta.verAplic);
       MemoLog.Lines.Add('Código do Status: '    + IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
       MemoLog.Lines.Add('Código da UF: '        + IntToStr(ACBrNFe1.WebServices.Consulta.cUF));
       MemoLog.Lines.Add('Descrição: '           + ACBrNFe1.WebServices.Consulta.xMotivo);
       MemoLog.Lines.Add('Mensagem: '            + ACBrNFe1.WebServices.Consulta.Msg);
       MemoLog.Lines.Add('Data do recebimento: ' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto));
       MemoLog.Lines.Add('Protocolo: '           + ACBrNFe1.WebServices.Consulta.Protocolo);
       MemoLog.Lines.Add('Nome do DFe: '         + ACBrNFe1.WebServices.DistribuicaoDFe.NomeArq);

       memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
       LoadXML(MemoResp, WBResposta);

      end;

     // Caminho do xml na pasta log
     vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';

     // Verifica o xml, se o xml estiver sem defeito, consulta grava o xml no bd
     if not ( FileExists(vAux) ) then
      begin

       Application.Messagebox( PWideChar( 'Não foi encontrado o arquivo xml da nota: ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) ),
                               PWideChar( 'Consulta Nota' ),
                               MB_ICONINFORMATION + mb_ok );

      end
     else
      begin

       // Inicia a consulta
       ACBrNFe1.NotasFiscais.Clear;
       ACBrNFe1.NotasFiscais.LoadFromFile(vAux);

       try

        ACBrNFe1.Consultar;

        // Consulta efetuada sem inconsistência
        if gModelo = 65 then
         begin
          vDescr := 'NFC-e:';
          Application.Messagebox(PWideChar(
           'DADOS DA NFC-e : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
           'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
           'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
           'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), MB_ICONINFORMATION+mb_ok);
         end
        else
         begin
          vDescr := 'NF-e:';
          Application.Messagebox(PWideChar(
           'DADOS DA NF-e  : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
           'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
           'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
           'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), MB_ICONINFORMATION+mb_ok);
         end;

        memoLog.Clear;
        MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
        MemoLog.Lines.Add(vDescr);
        MemoLog.Lines.Add('');
        MemoLog.Lines.Add('Status');
        MemoLog.Lines.Add('Tipo de Ambiente:'     + TpAmbToStr(ACBrNFe1.WebServices.Consulta.TpAmb));
        MemoLog.Lines.Add('Versão do Aplicativo: '+ ACBrNFe1.WebServices.Consulta.verAplic);
        MemoLog.Lines.Add('Código do Status: '    + IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
        MemoLog.Lines.Add('Código da UF: '        + IntToStr(ACBrNFe1.WebServices.Consulta.cUF));
        MemoLog.Lines.Add('Descrição: '           + ACBrNFe1.WebServices.Consulta.xMotivo);
        MemoLog.Lines.Add('Mensagem: '            + ACBrNFe1.WebServices.Consulta.Msg);
        MemoLog.Lines.Add('Data do recebimento: ' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto));
        MemoLog.Lines.Add('Protocolo: '           + ACBrNFe1.WebServices.Consulta.Protocolo);
        memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
        LoadXML(MemoResp, WBResposta);

        case ACBrNFe1.WebServices.Consulta.cStat of

         100, 150, 613, 539,                                                    // Autorizado o uso da NF-e
         101, 135, 136, 151, 218, 420,                                          // Cancelamento de NF-e homologado
         102, 206, 256, 563,                                                    // Inutilização de número homologado
         110, 205, 301, 302, 303 :                                              // Uso Denegado
          begin

           case ACBrNFe1.WebServices.Consulta.cStat of

            100, 150, 613, 539 :             vNomeUsu := 'UsuTrs';              // Autorizado o uso da NF-e
            101, 135, 136, 151, 218, 420 :   vNomeUsu := 'UsuCnc';              // Cancelamento de NF-e homologado
            102, 206, 256, 563 :             vNomeUsu := 'UsuInu';              // Inutilização de número homologado
            110, 205, 301, 302, 303 :        vNomeUsu := '';                    // Uso Denegado

           end;

           //-------------------------------------------------------------------
           // Para não inconsistir a chave no hora de salvar a nota com chave
           // que difere do retorno da sefaz
           if ( (ACBrNFe1.WebServices.Consulta.cStat = 613) or
                (ACBrNFe1.WebServices.Consulta.cStat = 539) ) then
            gChave_Consiste := ACBrNFe1.WebServices.Consulta.NFeChave;
           //-------------------------------------------------------------------

           if ( (RadioGroup1.ItemIndex = 0)   or                                // Pendentes
                (RadioGroup1.ItemIndex = 1) ) then                              // Contingência
            grava_xml_no_banco;

           gAtuCon := True;                                                     // seta True para gAtuCon

           if (trim(vNomeUsu) <> '' ) then
            begin

             pGravaNFe('006', 'protocolo',
                              'data_hora_recebimento',
                              'chave_nfe',
                              'situacao',
                              'motivo',
                              vNomeUsu,
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              'codigo_loja',
                              'demi',
                              'nnf',
                              'serie',
                              'chave_nfe',
                              'modelo',                                           // Nome dos campos
                              ACBrNFe1.WebServices.Consulta.Protocolo,
                              FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.consulta.DhRecbto),
                              ACBrNFe1.WebServices.Consulta.NFeChave,
                              ACBrNFe1.WebServices.Consulta.cStat,
                              ACBrNFe1.WebServices.Consulta.xMotivo,
                              gUsu,
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              edt_CodEmp.Text,
                              FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                              DMFD.FDQryGeral2['nfe_nnf'],
                              DMFD.FDQryGeral2['nfe_serie'],
                              ACBrNFe1.WebServices.Consulta.NFeChave,
                              DMFD.FDQryGeral2['nfe_modelo'],                     // Conteúdo dos campos
                              true);                                              // Consiste [true/false]

            end
           else
            begin

             pGravaNFe('006', 'protocolo',
                              'data_hora_recebimento',
                              'chave_nfe',
                              'situacao',
                              'motivo',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              'codigo_loja',
                              'demi',
                              'nnf',
                              'serie',
                              'chave_nfe',
                              'modelo',                                           // Nome dos campos
                              ACBrNFe1.WebServices.Consulta.Protocolo,
                              FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.consulta.DhRecbto),
                              ACBrNFe1.WebServices.Consulta.NFeChave,
                              ACBrNFe1.WebServices.Consulta.cStat,
                              ACBrNFe1.WebServices.Consulta.xMotivo,
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              '',
                              edt_CodEmp.Text,
                              FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                              DMFD.FDQryGeral2['nfe_nnf'],
                              DMFD.FDQryGeral2['nfe_serie'],
                              ACBrNFe1.WebServices.Consulta.NFeChave,
                              DMFD.FDQryGeral2['nfe_modelo'],                     // Conteúdo dos campos
                              true);                                              // Consiste [true/false]

            end;

           //----------------------------------------------------------------------
           // by Edson Lima ; 2017-1-5T1027 ; Atribuição de dados nas variáveis do
           //                                 gerente
           //----------------------------------------------------------------------
           gChvNFe := ACBrNFe1.WebServices.Consulta.NFeChave;
           gCd_Emp := DMFD.FDQryGeral2['nfe_codigo_loja'];
           if ( DMFD.FDQryGeral2['nfe_CodPed'] <> null ) then
            gCodPed := DMFD.FDQryGeral2['nfe_CodPed']
           else
            gCodPed := 0;
           //----------------------------------------------------------------------

           // Grava a chave no pedido do ERP
           fGraGer( gChvNFe, gCd_Emp, gCodPed );

          end;

        end;

       except on e:exception do

        begin

         Application.Messagebox( PWideChar( 'Inconsistência no arquivo xml da nota: ' +
                                 vartostr(DMFD.FDQryGeral2['nfe_nnf']) + chr(13) +
                                 e.Message ), 'Consulta Nota',
                                 MB_ICONINFORMATION + mb_ok );
         gDeuErrXml := True;

        end;

       end;

      end;

     //------------ Fim da consulta no item selecionado da TL -------------------

     // pGAV();

     if gExcluir then Exit;

    end;

  end;
  //------------------------- Fim do loop da TL --------------------------------

 pAtuNFe();

end;



procedure TFrGBNFe.Excluinota1Click(Sender: TObject);
var
 aux, vDescr, vTN      : string;
 dt                    : TDateTime;
 X                     : integer;

begin

 //-----------------------------------------------------------------------------

 case RadioGroup1.ItemIndex of
  0 :
      begin
       vTN := 'pendentes';
       pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery3);  // Chama a procedure de atribuição de seleção da TreeList das pendentes ; by Edson Lima ; 2013-7-17T1024 ; 2017-5-22T1635
      end;
  1 :
      begin
       vTN := 'em contingência';
       pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery10); // Chama a procedure de atribuição de seleção da TreeList das contingências ; by Edson Lima ; 2013-7-17T1024 ; 2017-5-22T1635
      end;
 end;

 if MessageDlg('Continua o processo da exclusão de notas ' + vTN + '?',
                mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

   //---------------------------------------------------------------------------
   if ( RadioGroup1.ItemIndex = 0 ) then                                        // Pendentes
   //---------------------------------------------------------------------------

    begin

     if not fTemSel( cxTL, cxTLbSel ) then exit;                                // verifica se tem item selecionado na treelist

     for X := 0 to cxTL.Count -1 do                                             // Percorre a treelist

      begin

       if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then             // Verifica se o item está selecionado

        begin

         // Filtra a nfe selecionada com select
         pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                    StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                    StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                    cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                    cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

         gDeuErrXml := False;
         gModelo    := DMFD.FDQryGeral2['nfe_Modelo'];
         gSerie     := DMFD.FDQryGeral2['nfe_Serie'];

         if ( gCpt = 1 ) then
          pDefineRel()                                                          // Define o tipo de Relatório FortesReport
         else
          pDefineRelFR();                                                       // Define o tipo de Relatório FastReport

         dt       := DMFD.FDQryGeral2['nfe_demi'];
         vAux     := vartostr(DMFD.FDQryGeral2['nfe_nnf']);

         _tpemissao := '1';

         if ( (gModelo = 55) and (RadioButton3.Checked) ) then
          begin
           _tipo_emissao := 'fsda';
           _tpemissao := '5';
          end
         else if ( (gModelo = 65) and (RadioButton3.Checked) ) then
          begin
           _tipo_emissao := 'OffL';
           _tpemissao := '9';
          end;

         // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
         gCdPed := VarToStr(DMFD.FDQryGeral2['nfe_CodPed']);

         Aux := '';
         Aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
         Aux := Aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQryGeral2['nfe_demi'])) + '''' + ',' + '''';
         Aux := Aux + IntToStr(gModelo) + '''' + ',' + '''';
         Aux := Aux + VarToStr(DMFD.FDQryGeral2['nfe_Serie']) + '''' + ',' + '''';
         Aux := Aux + gCdPed + '''';

         DMFD.FDQuery1.Close;
         DMFD.FDQuery1.SQL.Clear;
         DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + Aux );
         DMFD.FDQuery1.open;

         // by Edson Lima 2015-12-9T1007 - trunk2 novo
         vAux := '';
         if not DMFD.FDQuery1.IsEmpty then
          vAux := vartostr(DMFD.FDQuery1['chave']);

         // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
         gChave_Consiste  := vAux;

         if (gModelo = 65) then
          begin
           gTN                                      := '\NFCe\';
           if not (DMFD.FDQryGeral2['nfe_DatNFCe']   = null) then
            gDataEmi                                := (DMFD.FDQryGeral2['nfe_DatNFCe']);
          end
         else
          begin
           gTN                                      := '\NFe\';
           if not (DMFD.FDQryGeral2['nfe_DatNFCe']   = null) then                          // Antes -> if not (DMFD.FDQryGeral2['nfe_demi'] = null) then
            gDataEmi                                := (DMFD.FDQryGeral2['nfe_DatNFCe']);  // Antes -> gDataEmi := (DMFD.FDQryGeral2['nfe_demi']);
          end;

          if vAux <> '' then
           begin

            // Ajusta a data inicial para a data de emissão
            if (cxdtp1.Date > DMFD.FDQryGeral2['nfe_demi']) then
             cxdtp1.Date := DMFD.FDQryGeral2['nfe_demi'];

            vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';

            if FileExists(vAux) then
             begin

              gAtuCon := True;

              Copia_Xml_PathLog(Aux, gTN);

              ACBrNFe1.NotasFiscais.Clear;
              ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
              ACBrNFe1.Consultar;

              if gModelo = 65 then
               begin
                vDescr := 'NFC-e PENDENTE:';
                Application.Messagebox(PWideChar(
                 'DADOS DA NFC-e : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                 'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                 'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
                 'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), mb_iconstop+mb_ok);
               end
              else
               begin
                vDescr := 'NF-e PENDENTE:';
                Application.Messagebox(PWideChar(
                 'DADOS DA NF-e  : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                 'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                 'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
                 'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), mb_iconstop+mb_ok);
               end;

              memoLog.Clear;
              MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
              MemoLog.Lines.Add(vDescr);
              MemoLog.Lines.Add('Status');
              MemoLog.Lines.Add('Tipo de Ambiente:'     + TpAmbToStr(ACBrNFe1.WebServices.Consulta.TpAmb));
              MemoLog.Lines.Add('Versão do Aplicativo: '+ ACBrNFe1.WebServices.Consulta.verAplic);
              MemoLog.Lines.Add('Código do Status: '    + IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
              MemoLog.Lines.Add('Código da UF: '        + IntToStr(ACBrNFe1.WebServices.Consulta.cUF));
              MemoLog.Lines.Add('Descrição: '           + ACBrNFe1.WebServices.Consulta.xMotivo);
              MemoLog.Lines.Add('Mensagem: '            + ACBrNFe1.WebServices.Consulta.Msg);
              MemoLog.Lines.Add('Data do recebimento: ' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto));
              MemoLog.Lines.Add('Protocolo: '           + ACBrNFe1.WebServices.Consulta.Protocolo);
              memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
              LoadXML(MemoResp, WBResposta);

              // Caso não exista na base sefaz permite excluir ; by Edson Lima ; 17-9-2012 ; 14:00
              if ( (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '217') or
                   (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '613') or
                   (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '539')) then
               begin
                if MessageDlg('(Status 217) NF-e não consta na base de dados da SEFAZ ! ou ' + chr(13) +
                              '(Status 613/539) Chave de Acesso difere da existente em BD !' + chr(13)      +
                              'Confirme a exclusão da NFe nº ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                  //excluir nota
                  try

                   DMFD.FDQuery1.DisableControls;
                   DMFD.FDQuery1.Close;
                   DMFD.FDQuery1.SQL.Clear;
                   DMFD.FDQuery1.SQL.Add( 'exec sp_exclui_nfe ' + aux );

                   try

                    DMFD.FDQuery1.ExecSQL;
                    pExcluiXmlErro(VarToStr(DMFD.FDQryGeral2['nfe_modelo']),
                                   VarToStr(DMFD.FDQryGeral2['nfe_serie']),
                                   VarToStr(DMFD.FDQryGeral2['nfe_nnf']));

                   except on e:Exception do

                    Application.Messagebox(PWideChar('ERRO: Não EXCLUIU este registro!' + Char(13) +
                                            e.Message), 'Atenção!', mb_iconstop+mb_ok);

                   end;

                  finally

                   DMFD.FDQuery1.EnableControls;

                  end;

                 end;

               end;

              gDeuErrXml := False;

             end
            else
             begin

              gAtuCon := False;

              if MessageDlg('Confirme a exclusão da NFe nº ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                //excluir nota
                try

                 DMFD.FDQuery1.DisableControls;
                 DMFD.FDQuery1.Close;
                 DMFD.FDQuery1.SQL.Clear;
                 DMFD.FDQuery1.SQL.Add( 'exec sp_exclui_nfe ' + aux );

                 try

                  DMFD.FDQuery1.ExecSQL;
                  pExcluiXmlErro(VarToStr(DMFD.FDQryGeral2['nfe_modelo']),
                                 VarToStr(DMFD.FDQryGeral2['nfe_serie']),
                                 VarToStr(DMFD.FDQryGeral2['nfe_nnf']));

                 except on e:Exception do

                  Application.Messagebox(PWideChar('ERRO: Não EXCLUIU este registro!' + Char(13) +
                                          e.Message),'Atenção!',mb_iconstop+mb_ok);

                 end;

                finally

                 DMFD.FDQuery1.EnableControls;

                end;

               end;

             end;

           end;
        end;

      end;

     pAtuNFe;                                                                   // Procedure de atualização

     // by Edson ; 20/6/2012 ; 09:20 ; Mostra as notas transmitidas no caso de atualização por consulta
     if gAtuCon then
      begin

       vMens   := '';
       gAtuCon := False

      end;

    end

   //---------------------------------------------------------------------------
   else if ( RadioGroup1.ItemIndex = 1 ) then                                   // Contingência
   //---------------------------------------------------------------------------

    begin

     if not fTemSel( cxTL, cxTLbSel ) then exit;                                // verifica se tem item selecionado na treelist

     for X := 0 to cxTL.Count -1 do                                             // Percorre a treelist

      begin

       if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then             // Verifica se o item está selecionado

        begin

         // Filtra a nfe selecionada com select
         pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                    StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                    StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                    cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                    cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

         gDeuErrXml := False;
         gModelo    := DMFD.FDQryGeral2['nfe_Modelo'];
         gSerie     := DMFD.FDQryGeral2['nfe_Serie'];

         if ( gCpt = 1 ) then
          pDefineRel()                                                          // Define o tipo de Relatório FortesReport
         else
          pDefineRelFR();                                                       // Define o tipo de Relatório FastReport

         dt       := DMFD.FDQryGeral2['nfe_demi'];
         vAux     := vartostr(DMFD.FDQryGeral2['nfe_nnf']);

         _tpemissao := '1';

         if ( (gModelo = 55) and (RadioButton3.Checked) ) then
          begin
           _tipo_emissao := 'fsda';
           _tpemissao := '5';
          end
         else if ( (gModelo = 65) and (RadioButton3.Checked) ) then
          begin
           _tipo_emissao := 'OffL';
           _tpemissao := '9';
          end;

         // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
         gCdPed := VarToStr(DMFD.FDQryGeral2['nfe_CodPed']);

         Aux := '';
         Aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
         Aux := Aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQryGeral2['nfe_demi'])) + '''' + ',' + '''';
         Aux := Aux + IntToStr(gModelo) + '''' + ',' + '''';
         Aux := Aux + VarToStr(DMFD.FDQryGeral2['nfe_Serie']) + '''' + ',' + '''';
         Aux := Aux + gCdPed + '''';

         DMFD.FDQuery1.Close;
         DMFD.FDQuery1.SQL.Clear;
         DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + Aux );
         DMFD.FDQuery1.open;

         // by Edson Lima 2015-12-9T1007 - trunk2 novo
         vAux := '';
         if not DMFD.FDQuery1.IsEmpty then
          vAux := vartostr(DMFD.FDQuery1['chave']);

         // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
         gChave_Consiste  := vAux;

         if (gModelo = 65) then
          begin
           gTN                                   := '\NFCe\';
           if not (DMFD.FDQryGeral2['nfe_DatNFCe']   = null) then
            gDataEmi                             := (DMFD.FDQryGeral2['nfe_DatNFCe']);
          end
         else
          begin
           gTN                                   := '\NFe\';
           if not (DMFD.FDQryGeral2['nfe_demi']      = null) then
            gDataEmi                             := (DMFD.FDQryGeral2['nfe_demi']);
          end;

          if vAux <> '' then
           begin

            // Ajusta a data inicial para a data de emissão
            if (cxdtp1.Date > DMFD.FDQryGeral2['nfe_demi']) then
             cxdtp1.Date := DMFD.FDQryGeral2['nfe_demi'];

            vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';

            if FileExists(vAux) then
             begin

              gAtuCon := True;

              Copia_Xml_PathLog(Aux, gTN);

              ACBrNFe1.NotasFiscais.Clear;
              ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
              ACBrNFe1.Consultar;

              if gModelo = 65 then
               begin
                vDescr := 'NFC-e PENDENTE:';
                Application.Messagebox(PWideChar(
                 'DADOS DA NFC-e : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                 'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                 'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
                 'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), mb_iconstop+mb_ok);
               end
              else
               begin
                vDescr := 'NF-e PENDENTE:';
                Application.Messagebox(PWideChar(
                 'DADOS DA NF-e  : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                 'Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  + '-' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                 'Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
                 'Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13)), PWideChar(vDescr), mb_iconstop+mb_ok);
               end;

              memoLog.Clear;
              MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
              MemoLog.Lines.Add(vDescr);
              MemoLog.Lines.Add('Status');
              MemoLog.Lines.Add('Tipo de Ambiente:'     + TpAmbToStr(ACBrNFe1.WebServices.Consulta.TpAmb));
              MemoLog.Lines.Add('Versão do Aplicativo: '+ ACBrNFe1.WebServices.Consulta.verAplic);
              MemoLog.Lines.Add('Código do Status: '    + IntToStr(ACBrNFe1.WebServices.Consulta.cStat));
              MemoLog.Lines.Add('Código da UF: '        + IntToStr(ACBrNFe1.WebServices.Consulta.cUF));
              MemoLog.Lines.Add('Descrição: '           + ACBrNFe1.WebServices.Consulta.xMotivo);
              MemoLog.Lines.Add('Mensagem: '            + ACBrNFe1.WebServices.Consulta.Msg);
              MemoLog.Lines.Add('Data do recebimento: ' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto));
              MemoLog.Lines.Add('Protocolo: '           + ACBrNFe1.WebServices.Consulta.Protocolo);
              memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
              LoadXML(MemoResp, WBResposta);

              // Caso não exista na base sefaz permite excluir ; by Edson Lima ; 17-9-2012 ; 14:00
              if ( (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '217') or
                   (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '613')or
                   (vartostr(ACBrNFe1.WebServices.Consulta.cStat) = '539') ) then
               begin
                if MessageDlg('(Status 217) NF-e não consta na base de dados da SEFAZ ! ou ' + chr(13) +
                              '(Status 613/539) Chave de Acesso difere da existente em BD !' + chr(13)      +
                              'Confirme a exclusão da NFe nº ' + vartostr(DMFD.FDQuery3['nfe_nnf']), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
                 begin
                  //excluir nota
                  try

                   DMFD.FDQuery1.DisableControls;
                   DMFD.FDQuery1.Close;
                   DMFD.FDQuery1.SQL.Clear;
                   DMFD.FDQuery1.SQL.Add( 'exec sp_exclui_nfe ' + aux );

                   try

                    DMFD.FDQuery1.ExecSQL;
                    pExcluiXmlErro(VarToStr(DMFD.FDQryGeral2['nfe_modelo']),
                                   VarToStr(DMFD.FDQryGeral2['nfe_serie']),
                                   VarToStr(DMFD.FDQryGeral2['nfe_nnf']));

                   except on e:Exception do

                    Application.Messagebox(PWideChar('ERRO: Não EXCLUIU este registro!' + Char(13) +
                                            e.Message), 'Atenção!',mb_iconstop+mb_ok);

                   end;

                  finally

                   DMFD.FDQuery1.EnableControls;

                  end;

                 end;

               end;

              gDeuErrXml := False;

             end
            else
             begin

              gAtuCon := False;

              if MessageDlg('Confirme a exclusão da NFe nº ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']), mtConfirmation, [mbYes, mbNo], 0) = mrYes then
               begin
                //excluir nota
                try

                 DMFD.FDQuery1.DisableControls;
                 DMFD.FDQuery1.Close;
                 DMFD.FDQuery1.SQL.Clear;
                 DMFD.FDQuery1.SQL.Add( 'exec sp_exclui_nfe ' + aux );

                 try

                  DMFD.FDQuery1.ExecSQL;
                  pExcluiXmlErro(VarToStr(DMFD.FDQryGeral2['nfe_modelo']),
                                 VarToStr(DMFD.FDQryGeral2['nfe_serie']),
                                 VarToStr(DMFD.FDQryGeral2['nfe_nnf']));

                 except on e:Exception do

                  Application.Messagebox(PWideChar('ERRO: Não EXCLUIU este registro!' + Char(13) +
                                         e.Message),'Atenção!',mb_iconstop+mb_ok);

                 end;

                finally

                 DMFD.FDQuery1.EnableControls;

                end;

               end;

             end;

           end;

        end;

      end;

     pAtuNFe;                                                                   // Procedure de atualização

     // by Edson ; 20/6/2012 ; 09:20 ; Mostra as notas transmitidas no caso de atualização por consulta
     if gAtuCon then
      begin

       vMens   := '';
       gAtuCon := False

      end;

    end;

  end;

 pAtuNFe;                                                                       // Procedure de atualização

end;

procedure TFrGBNFe.BitBtn9Click(Sender: TObject);
var
 xAux, vPdf, vCaminho : string;
 ProcInfo             : TProcessInformation;
 c, X                 : Integer;

begin

 CloseHandle(ProcInfo.hProcess);

 if RadioGroup1.ItemIndex = 1 then                                              // Contigência FSDA OU OFF-LINE
  begin

   if not fTemSel( cxTL, cxTLbSel ) then exit;                                  // verifica se tem item selecionado na treelist

   for X := 0 to cxTL.Count -1 do                                               // Percorre a treelist

    begin

     if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then               // Verifica se o item está selecionado

      begin

       // Filtra a nfe selecionada com select
       pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                  StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                  StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                  cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                  cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

       gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
       gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

       if ( gCpt = 1 ) then
        pDefineRel()                                                            // Define o tipo de Relatório FortesReport
       else
        pDefineRelFR();                                                         // Define o tipo de Relatório FastReport

       gCdloja_Consiste := edt_CodEmp.Text;
       gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
       gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
       gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
       gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
       gSerie           := StrToIntDef(gSerie_Consiste, 0);
       gChave_Consiste  := '';                                                  // está sendo atribuida depois da sp_calcula_digito_chave
       gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

       xAux := trim(gCamLog) + trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])) + '-nfe.xml';   /// by EL 23.2.2012 -> xAux := trim(FrPar.edtPathLogs.Text) + '\' + trim(vartostr(DMFD.FDQuery5['nfe_chave_nfe'])) + '-nfe.xml';
       vPdf := trim(gCamPdf) + trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])) + '-nfe.pdf';

       if copy(trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])),3,1) = '124' then
        xAux := trim(gCamLog) + trim(vartostr(DMFD.FDQryGeral2['nfe_nr_dpec']));

       if FileExists(vPdf) then
        begin

         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
         ACBrNFe1.NotasFiscais.Imprimir;

        end
       else
        begin

         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
         ACBrNFe1.NotasFiscais.ImprimirPDF;

         pImpr();

        end;

     end;

    end;
  end
 else        // Transmitidas
  begin

   if not fTemSel( cxTL, cxTLbSel ) then exit;                                  // verifica se tem item selecionado na treelist

   for X := 0 to cxTL.Count -1 do                                               // Percorre a treelist

    begin

     if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then               // Verifica se o item está selecionado

      begin

       // Filtra a nfe selecionada com select
       pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                  StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                  StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                  cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                  cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

       gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
       gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

       if ( gCpt = 1 ) then
        pDefineRel()                                                            // Define o tipo de Relatório FortesReport
       else
        pDefineRelFR();                                                         // Define o tipo de Relatório FastReport

       gCdloja_Consiste := edt_CodEmp.Text;
       gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
       gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
       gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
       gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
       gSerie           := StrToIntDef(gSerie_Consiste, 0);
       gChave_Consiste  := '';                                                  // está sendo atribuida depois da sp_calcula_digito_chave
       gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

       xAux  := trim(gCamLog) + trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])) + '-nfe.xml';
       vPdf := trim(gCamPdf) + trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])) + '-nfe.pdf';

       if copy(trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe'])),3,1) = '124' then
        xAux := trim(gCamLog) + trim(vartostr(DMFD.FDQryGeral2['nfe_nr_dpec']));

       if FileExists(vPdf) then
        begin

         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
         //pDefineRelFR();
         ACBrNFe1.NotasFiscais.Imprimir;

        end
       else
        begin

         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
         ACBrNFe1.NotasFiscais.ImprimirPDF;

         pImpr();

        end;

     end;

    end;
  end;

 /// By Edson Lima 3.2.2012 - Antes -->  BitBtn5Click(FrImprimeVenda);
 pAtuNFeT();

end;

procedure TFrGBNFe.BitBtn11Click(Sender: TObject);
var
 I, vC, iCodPed, X, CdUf                  : Integer;
 vNnf, vP, idLote, xAuxC                  : String;
 Para, vChave, vI, xAuxO, xAuxD           : String;
 vdhEvento, vUTC, CdMun, vdhEve           : String;
 ddhEvento, dhEve                         : TDateTime;
 CC, xAuxA, sReplyTo                      : Tstrings;
 vEmailCancAssunto                        : TCaption;
 HorVer, Hor_DF, FusHor                   : Boolean;

begin

 fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                                  // Mudança de versão

 vAux := '';

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // verifica se tem item selecionado na treelist

 //----------------------------------------------------------------------
 ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := 15000;
 ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
 ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas      := 1000;
 ACBrNFe1.Configuracoes.WebServices.Tentativas               := 10;
 ACBrNFe1.Configuracoes.WebServices.TimeOut                  := 15000;
 //----------------------------------------------------------------------

 try

  for X := 0 to cxTL.Count -1 do                                                // Percorre a treelist

   begin

    if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                // Verifica se o item está selecionado

     begin

      // Filtra a nfe selecionada com select
      pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                 StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                 StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                 cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                 cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

      gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
      gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

      fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                             // Mudança de versão

      if gModelo = 65 then
       begin
        ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
       end
      else
       begin
        ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
       end;

      if ( gCpt = 1 ) then
       pDefineRel()                                                             // Define o tipo de Relatório FortesReport
      else
       pDefineRelFR();                                                          // Define o tipo de Relatório FastReport

      gCdloja_Consiste := edt_CodEmp.Text;
      gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
      gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
      gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
      gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
      gSerie           := StrToIntDef(gSerie_Consiste, 0);
      gChave_Consiste  := '';                                                   // está sendo atribuida depois da sp_calcula_digito_chave
      gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

      xAux    := DMFD.FDQryGeral2['nfe_chave_nfe'];
      vChave  := xAux;

      if not ( DMFD.FDQryGeral2['nfe_CodPed'] = null ) then
       iCodPed := DMFD.FDQryGeral2['nfe_CodPed']
      else
       iCodPed := 0;

      if MessageDlg('Confirma cancelamento da nota [ ' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + ' ]?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin

        //----------------------------------------------------------------------
        // by Edson Lima ; 2017-1-9T1130 ; Verifica a precisão adm do ERP para
        //                                 cancelamento
        //----------------------------------------------------------------------
        if iCodPed <> 0 then
         begin
          if not ( fVerPAG(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed) ) then
           Exit;
         end
        else
         Application.MessageBox(PWideChar('Número do pedido não informado!'), 'Atenção', MB_ICONINFORMATION );

        //----------------------------------------------------------------------

        xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';

        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
        ACBrNFe1.Consultar;

        gChave_Consiste  := ACBrNFe1.WebServices.Consulta.NFeChave;

        idLote := ( VarToStr(DMFD.FDQryGeral2['nfe_Serie']) + VarToStr(DMFD.FDQryGeral2['nfe_codigo_loja']) + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) );

        vMens := 'A Justificativa deve ter pelo menos 15 caracteres';
        vAux  := gNomMtC;
        if not(InputQuery('WebServices Cancelamento', 'Justificativa', vAux)) then exit;

         if length(trim(vAux)) < 15 then
         begin

          MessageDlg('Justificativa deve ter no mínimo 15 caracteres', mtInformation,[mbOK],0);
          pAtuNFeT;                                                             // Procedure de atualização
          exit;

         end;

        memoLog.Clear;
        ACBrNFe1.EventoNFe.Evento.Clear;
        ACBrNFe1.EventoNFe.idLote  := StrToIntDef(idLote, 0) ;

        with ACBrNFe1.EventoNFe.Evento.Add do
        begin
         infEvento.tpAmb           := ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb;

         //---------------------------------------------------------------------
         // by Edson ; Verifica a data e hora do evento com UTC da UF
         //---------------------------------------------------------------------
         // Nova rotina
         HorVer := False; Hor_DF := False; FusHor := False;

         if (DMFD.FDQuery4['DANFE_HorariodeVerao'] = 'S') then
          HorVer := True;

         if (DMFD.FDQuery4['DANFE_UsaHorarioDF'] = 'S') then
          Hor_DF := True;

         if (DMFD.FDQuery4['DANFE_FusoHorario'] = 'S') then
          FusHor := True;


         CdUf := StrToIntDef(DMFD.FDQuery4['codigo_uf'], 0);
         CdMun := DMFD.FDQuery4['codigo_municipio'];
         vdhEve := '';
         dhEve := Now();                                                        // Antes --> dhEve := VarToDateTime(ACBrNFe1.WebServices.Consulta.protNFe.dhRecbto);

         infEvento.dhEvento := fFusHor(HorVer, Hor_DF, FusHor, CdUf, CdMun, vdhEve, dhEve );

         infEvento.tpEvento         := teCancelamento;
         infEvento.id               := 'ID' + VarToStr(infEvento.tpEvento) + vChave + '1';
         infEvento.detEvento.xJust  := vAux;
         infEvento.cOrgao           := strtointDef(DMFD.FDQuery4['codigo_uf'], 0);

         //---------------------------------------------------------------------

        end;

        //----------------------------------------------------------------------

        ACBrNFe1.EnviarEvento(StrToIntDef(idLote, 0));
        //----------------------------------------------------------------------
        ACBrNFe1.Configuracoes.WebServices.AguardarConsultaRet      := 0;
        //----------------------------------------------------------------------

        xAuxA := TstringList.Create;

        with ACBrNFe1.EventoNFe do
        begin

         //---------------------------------------------------------------------
         xAuxO :=   trim(gCamPdf) +                                             // Caminho do arquivo Pdf
                    trim(vChave) +                                              // Chave da NFe
                    '-cancelado-nfe.pdf';                                       // Final do nome + tipo (Pdf)

         xAuxD :=   trim(gCamPdf) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.Pdf';                                       // Final do nome + tipo (Pdf)
         //---------------------------------------------------------------------

         xAuxC :=   trim(gCamXml) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    FormatDateTime('yyyymm', Evento.Items[0].InfEvento.dhEvento) + // Ano, mês
                    '\Evento\Cancelamento\' +                                   // Evento e Cancelamento
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.xml';                                       // Final do nome + tipo (xml)

         xAuxA.Add( trim(gCamXml) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    FormatDateTime('yyyymm', Evento.Items[0].InfEvento.dhEvento) + // Ano, mês
                    '\Evento\Cancelamento\' +                                   // Evento e Cancelamento
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.xml' );                                     // Final do nome + tipo (xml)

        end;

        memoLog.Clear;
        MemoResp.Lines.Text   :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
        MemoLog.Lines.Text    :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.Msg);
        memoRespWS.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
        LoadXML(MemoResp, WBResposta);

        vNnf := DMFD.FDQryGeral2['nfe_nnf'];

        // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
        // by Edson Lima ; 18.4.2012 ; 09:58 ; Implementa o email no cancelamento
        if ((VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '101')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '135')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '136')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '151')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '155')) then
         begin
          pGravaNFe('008', 'protocolo',
                           'data_hora_recebimento',
                           'situacao',
                           'motivo',
                           'cStat_CCe',
                           'xMotivo_CCe',
                           'UsuCnc',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           'codigo_loja',
                           'demi',
                           'nnf',
                           'serie',
                           'chave_nfe',
                           'modelo',                                            // Nome dos Campos
                           ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt,
                           FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento),
                           ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                           ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo,
                           '',
                           '',
                           gUsu,
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           edt_CodEmp.Text,
                           FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                           DMFD.FDQryGeral2['nfe_nnf'],
                           DMFD.FDQryGeral2['nfe_serie'],
                           ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe,
                           DMFD.FDQryGeral2['nfe_modelo'],                      // Conteúdo dos campos
                           true);                                               // Consiste [true/false]

          // Verifia se tem carta de correção e se tiver modifica o status da carta para CCe COM NFE CANCELADA
          if fGravaCCe( DMFD.FDQryGeral2['nfe_nnf'], '580', '(NFe Cancelada) - O evento exige uma NF-e autorizada' ) then
           pGravaNFe('008', 'protocolo',
                            'data_hora_recebimento',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            'codigo_loja',
                            'demi',
                            'nnf',
                            'serie',
                            'chave_nfe',
                            'modelo',                                           // Nome dos campos
                            ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt,
                            FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento),
                            '',
                            '',
                            '580',
                            '(NFe Cancelada) - O evento exige uma NF-e autorizada',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            '',
                            edt_CodEmp.Text,
                            FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                            DMFD.FDQryGeral2['nfe_nnf'],
                            DMFD.FDQryGeral2['nfe_serie'],
                            ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.chNFe,
                            DMFD.FDQryGeral2['nfe_modelo'],                     // Conteúdo dos campos
                            true);                                              // Consiste [true/false]

          //--------------------------------------------------------------------
          // by Edson Lima ; 7/1/2014T1026 ; Cancela CCe caso tenha alt. na NFe
          //--------------------------------------------------------------------

          fCancelaCCe(gCdloja_Consiste, gNNF_Consiste, gdEmi_Consiste);

          //--------------------------------------------------------------------

          //--------------------------------------------------------------------
          // by Edson Lima ; 2017-1-11T1031
          // Efetua o Cancelamento Administrativo do PEDIDO
          //--------------------------------------------------------------------
          if iCodPed <> 0 then
           begin
            if not ( fCanCAP(StrToIntDef(gNNF_Consiste, 0), StrToIntDef(edt_CodEmp.Text, 0), iCodPed, gCodMtC) ) then
             Application.MessageBox(PWideChar('Nota cancelada, mas o pedido não!'), 'Atenção', MB_ICONINFORMATION );
           end
          else
           Application.MessageBox(PWideChar('Número do pedido não informado! Nota cancelada, mas Pedido não!'), 'Atenção', MB_ICONINFORMATION );
          //--------------------------------------------------------------------

         end
        else
         begin
          MessageDlg('Nota:[ ' + vNnf + ' ]' + Chr(13) +
                     'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + Chr(13) +
                     ' - Motivo:' + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo + Chr(13) +
                     'REJEIÇÃO', mtInformation, [mbOK], 0);
          exit;
         end;

        // by Edson Lima ; 18.4.2012 ; 09:58 ; Implementa o email no cancelamento
        if ((VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '101')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '135')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '136')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '151')  or
            (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '155')) then
         begin
          //pega os dados do destinatario
          DMFD.FDQuery2.Close;
          DMFD.FDQuery2.SQL.Clear;
          DMFD.FDQuery2.SQL.Add( 'Select                                                               ' );
          DMFD.FDQuery2.SQL.Add( 't1.*                                                                 ' );
          DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                                 ' );
          DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo              ' );
          DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                        ' );
          DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe = :parm2                                            ' );
          DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
          DMFD.FDQuery2.Params[1].AsString  := (vChave);
          DMFD.FDQuery2.Open;
          if DMFD.FDQuery2.IsEmpty then
           begin
            MessageDlg('Nfe cancelada não existe',mtInformation,[mbOK],0);
            exit;
           end;

          para := vartostr(DMFD.FDQuery2['email']);

          if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then
           begin

            repeat

             begin

              if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
               begin
                pAtuNFe;                                                        // Procedure de atualização
                Exit;
               end;

              para := LowerCase(para);

              if ( not fValidaEmail(para, 'N') ) then
               Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

             end;

            until ( fValidaEmail(para, 'N') );

           end;

          if vartostr(DMFD.FDQuery2['email']) <> '' then
           begin
            if FrPar.edtEnvCC.Text = '' then
             IdMessage.CCList.EMailAddresses := 'nfe@gbinformatica.com.br'      //especifique um email válido
            else
             begin

              CC:=TstringList.Create;

              if ( FrPar.edtEnvCC.Text <> '') then
               for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
                begin
                 if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
                  begin
                   CC.Add(trim(vI));                                            //especifique um email válido
                   vI := '';
                  end
                 else
                  vI := (vI + FrPar.edtEnvCC.Text[I]);
                end;

              vI := '';                                                         // Limpa variável
              vC := 0;                                                          // zera contador

              for I := 1 to (Length(Para)+1) do
               begin
                if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
                 begin
                  if vC > 0 then
                   CC.Add(trim(vI))                                             //especifique um email válido
                  else
                   vP := trim(vI);                                              // Atribui apenas o primeiro email

                  vI := '';
                  inc(vC);                                                      // Incrementa 1
                 end
                else
                 vI := (vI + Para[I]);
               end;

              Para := vP;

             end;


             sReplyTo := TStringList.Create;
             sReplyTo.Add('gbinfo.notafiscal@gmail.com');
             vEmailCancAssunto := FrPar.edtEmailCancAssunto.Text + ' - Nº:' + vNnf + ' Cancelada!';

             try

              try

               ACBrNFe1.EventoNFe.Evento.Clear;
               ACBrNFe1.EventoNFe.LerXML(xAuxC);

               if ( gModelo = 65 ) then
                begin

                 if not FileExists(xAuxO) then
                  ACBrNFe1.ImprimirEventoPDF;                                   // Gera Pdf da NFCe

                 CopyFile(PWideChar(xAuxO), PWideChar(xAuxD), False);

                end;

               ACBrNFe1.EnviarEmailEvento(
                          Para                                                  // email do destinatário
                        , vEmailCancAssunto                                     // Asunto
                        , FrPar.mmEmailMsg.Lines                                // Mensagem
                        , CC                                                    // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                        , xAuxA                                                 // Anexos
                        , nil            );            //sReplyTo       );      // ReplyTo - "Responder a"

                Application.MessageBox(PWideChar('Email da nota:[ ' + vNnf + ' ]' + ' enviado com sucesso!'), 'Atenção', MB_ICONINFORMATION );

               except on e:exception do

                Application.Messagebox( pWideChar( 'Inconsistência no envio do email da nota:[ ' + vNnf + ' ]' + ' cancelada!' + chr(13) +
                                        e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

              end;

             finally

              CC.Free;
              xAuxA.Free;
              sReplyTo.Free;

             end;

           end
          else
           MessageDlg('eMail não definido para o destinatário!', mtInformation, [mbOK], 0);

          MessageDlg('Nota:[ ' + vNnf + ' ]' + Chr(13) +
                     'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - Protocolo:' +
                     ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt + Chr(13) +
                     'CANCELADA', mtInformation, [mbOK], 0);

         end;

       end;

     end;

   end;

 except

  pGAV();
  pAtuNFeT();

 end;

 pAtuNFeT();                                                                    // Atualiza grade

end;

procedure TFrGBNFe.MenuItem2Click(Sender: TObject);
var
 aux : string;
 I,vC, X      : Integer;
 Para, vI, vP : String;
 CC           : Tstrings;
 vZerSen      : Boolean;

begin

 gAtuFSD := False;
 vZerSen := True;

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // verifica se tem item selecionado na treelist

 for X := 0 to cxTL.Count -1 do                                                 // Percorre a treelist

  begin

   if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                 // Verifica se o item está selecionado

    begin

     // Filtra a nfe selecionada com select
     pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

     if ( gCpt = 1 ) then
      pDefineRel()                                                              // Define o tipo de Relatório FortesReport
     else
      pDefineRelFR();                                                           // Define o tipo de Relatório FastReport

     //*******************************************************************************
     // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update

     gCdloja_Consiste := edt_CodEmp.Text;
     gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
     gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
     gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
     gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
     gSerie           := StrToIntDef(gSerie_Consiste, 0);
     gModelo          := DMFD.FDQryGeral2['nfe_modelo'];
     gChave_Consiste  := '';                                                    // está sendo atribuida depois da sp_calcula_digito_chave
     gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

     // by Edson Lima - 2015-12-18T1559 ; verifica se a situação está null,
     // se sim elimina qualquer xml do sistema, para evitar envio de xml
     // depois de correção e exclusão-------------------------------------

     gDataEmi := 0;
     aux := VarToStr(DMFD.FDQryGeral2['nfe_chave_nfe']);

     if (gModelo = 65) then
      begin
       ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
       gTN                                   := '\NFCe\';
       if not (DMFD.FDQryGeral2['nfe_DatNFCe']  = null) then
        gDataEmi                             := (DMFD.FDQryGeral2['nfe_DatNFCe']);
      end
     else
      begin
       ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
       gTN                                   := '\NFe\';
       if not (DMFD.FDQryGeral2['nfe_demi']     = null) then
        gDataEmi                             := (DMFD.FDQryGeral2['nfe_demi']);
      end;

     if ( (DMFD.FDQryGeral2['nfe_situacao'] =  null) and ( not (gDataEmi = null))   or
          (DMFD.FDQryGeral2['nfe_situacao'] =  '')   and ( not (gDataEmi = null)) ) then
      pEliminaXml(aux, gTN);                                                    // Elimina os xmls quando a situação for null

     //-------------------------------------------------------------------

     if (gModelo = 55) then
      begin
       _tipo_emissao := 'fsda';
       _tpemissao := '5';
      end
     else if (gModelo = 65) then
      begin
       _tipo_emissao := 'OffL';
       _tpemissao := '9';
      end;

     if ((copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'FSDA') or
         (copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'OFFL')) then
      begin
       //caso não tenha gravado a nota, calcula a chave e a procura
       if vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']) = '' then
        begin
         //procura pelo ano e mes da nota

         //1- Normal, 2-Contingência FS, 3-Contingência SCAN, 4-EPEC, 5-FSDA 9-OFFL

         if copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'FSDA' then
          _tpemissao := '5'
         else if copy(vartostr(DMFD.FDQryGeral2['nfe_situacao']),1,4) = 'OFFL' then
          _tpemissao := '9';

         // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
         gCdPed := VarToStr(DMFD.FDQryGeral2['nfe_CodPed']);

         aux := '';
         aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
         aux := aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQryGeral2['nfe_demi'])) + '''' + ',' + '''';
         aux := aux + IntToStr(gModelo) + '''' + ',' + '''';
         aux := aux + IntToStr(gSerie) + '''' + ',' + '''';
         aux := aux + gCdPed + '''';

         DMFD.FDQuery1.Close;
         DMFD.FDQuery1.SQL.Clear;
         DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + aux );
         DMFD.FDQuery1.open;

         if not DMFD.FDQuery1.IsEmpty then
          vAux := vartostr(DMFD.FDQuery1['chave']);

         // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
         gChave_Consiste  := vAux;

        end
       else
        begin
         vAux         := DMFD.FDQryGeral2['nfe_chave_nfe'];

         // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
         gChave_Consiste  := vAux;
        end;

       if vAux <> '' then
        begin

         // By Edson Lima ; 2015-12-8T1702 - Serve para copiar a nota gerada em contingência
         // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
         gChave_Consiste  := vAux;

         if (gModelo = 65) then
          gTN              := '\NFCe\'                                          // by Edson Lima 2015-10-14T1107 - trunk2 novo ; Global utilizado para setar o nome da pasta
         else
          gTN              := '\NFe\';                                          // by Edson Lima 2015-10-14T1107 - trunk2 novo ; Global utilizado para setar o nome da pasta

         Copia_Xml_PathLog(vAux, gTN);                                          // by Edson Lima 2015-10-14T1107 - trunk2 novo

         vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';
         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(vAux);

         if ( gCpt = 1 ) then
          pDefineRel()                                                          // Define o tipo de Relatório FortesReport
         else
          pDefineRelFR();                                                       // Define o tipo de Relatório FastReport

         //---------------------------------------------------------------------
         // by Edson Lima ; 19/6/2012 ; 15:24 - Se dê erro de rejeição da chave
         // em Contingência, vai para consulta
         //---------------------------------------------------------------------

         try

          ACBrNFe1.Enviar(0);

         except on e:Exception do
          begin

           //consultar a nota transmitida
           ACBrNFe1.NotasFiscais.Clear;
           ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
           ACBrNFe1.Consultar;

           grava_xml_no_banco;

           memoLog.Clear;
           MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
           MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Consulta.Msg);
           memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
           LoadXML(MemoResp, WBResposta);


           if ( (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '613') or
                (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '539') ) then
            begin

             MessageDlg('DADOS DA NOTA : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                        ' Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat) + char(13) +
                        ' ' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                        ' Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo +
                        ' Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13) +
                        ' ESTA NOTA VAI SER MOVIDA PARA PENDENTES, ENVIE E CONSULTE PARA ATUALIZAR!' + char(13) +
                          e.Message, mtInformation,[mbOK],0);
             gAtuFSD := True;

             if ( gSenhaBD <> '' ) then

              vZerSen := False

             else

              begin

               gSenhaBD := 'gb@1';

              end;

             MovepPendentes1Click(Sender);

             if ( vZerSen ) then
              gSenhaBD := '';

             vZerSen := True;

            end
           else
            begin

             MessageDlg('DADOS DA NOTA : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                        ' Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat) + char(13) +
                        ' ' + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                        ' Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo +
                        ' Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13) +
                        ' PENDENCIA NÃO TRATADA CONTACTE O SUPORTE DA SOFT HOUSE RESPONSÁVEL!' + char(13) +
                          e.Message, mtInformation,[mbOK],0);

            end;

           exit;

          end;

         end;

         //consultar a nota transmitida
         ACBrNFe1.NotasFiscais.Clear;
         ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
         ACBrNFe1.Consultar;

         grava_xml_no_banco;

         memoLog.Clear;
         MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
         MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Consulta.Msg);
         memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
         LoadXML(MemoResp, WBResposta);

         Try
          // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
          pGravaNFe('009', 'chave_nfe',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           'codigo_loja',
                           'demi',
                           'nnf',
                           'serie',
                           'chave_nfe',
                           'modelo',                                            // Nome dos campos
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           edt_CodEmp.Text,
                           FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                           DMFD.FDQryGeral2['nfe_nnf'],
                           DMFD.FDQryGeral2['nfe_serie'],
                           DMFD.FDQryGeral2['nfe_chave_nfe'],
                           DMFD.FDQryGeral2['nfe_modelo'],                      // Conteúdo dos campos
                           true)                                                // Consiste [true/false]

         except on e:Exception do
          begin

           memoLog.Clear;
           MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS) + e.Message;
           MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Retorno.Msg);
           memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
           LoadXML(MemoResp, WBResposta);
           Exit;

          end;

         end;

        if (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '100') or
           (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '150') then
         begin
          // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
          pGravaNFe('010', 'protocolo',
                           'recibo',
                           'data_hora_recebimento',
                           'chave_nfe',
                           'situacao',
                           'motivo',
                           'UsuTrs',
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           'codigo_loja',
                           'demi',
                           'nnf',
                           'serie',
                           'chave_nfe',
                           'modelo',                                            // nome dos campos
                           ACBrNFe1.WebServices.Consulta.Protocolo,
                           ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec,
                           FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.consulta.DhRecbto),
                           ACBrNFe1.WebServices.Consulta.NFeChave,
                           ACBrNFe1.WebServices.Consulta.cStat,
                           ACBrNFe1.WebServices.Consulta.xMotivo,
                           gUsu,
                           '',
                           '',
                           '',
                           '',
                           '',
                           '',
                           edt_CodEmp.Text,
                           FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                           DMFD.FDQryGeral2['nfe_nnf'],
                           DMFD.FDQryGeral2['nfe_serie'],
                           ACBrNFe1.WebServices.Consulta.NFeChave,
                           DMFD.FDQryGeral2['nfe_modelo'],                      // Conteúdo dos campos
                           true);                                               // Consiste [true/false]

         end;

        MessageDlg('DADOS DA NOTA : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                          '  Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  +
                          '-'         + vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                       '  Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
             '  Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13) ,mtInformation,[mbOK],0);

        if not gDuplic then                                                     // by Edson ; 2013-11-22T1420 ; Só envia email se não der duplicidade de nota
         begin
          //---------------------enviar email
          xAux := vartostr(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtDFe.Items[0].chDFe);
          //pega os dados do destinatario
          DMFD.FDQuery2.Close;
          DMFD.FDQuery2.SQL.Clear;
          DMFD.FDQuery2.SQL.Add( 'Select                                                     ' );
          DMFD.FDQuery2.SQL.Add( 't1.*                                                       ' );
          DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                       ' );
          DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo    ' );
          DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                              ' );
          DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe = :parm2                                  ' );
          DMFD.FDQuery2.SQL.Add( 'and t2.situacao <> :parm3                                  ' );
          DMFD.FDQuery2.SQL.Add( 'and t2.situacao <> :parm4                                  ' );
          DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
          DMFD.FDQuery2.Params[1].AsString  := (xAux);
          DMFD.FDQuery2.Params[2].AsString  := '101';
          DMFD.FDQuery2.Params[3].AsString  := '151';
          DMFD.FDQuery2.Open;

          if DMFD.FDQuery2.IsEmpty then
           begin
            exit;
           end;

          para := vartostr(DMFD.FDQuery2['email']);

          if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

           begin

            repeat

             begin

              Para := '';

              if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
               begin
                pAtuNFe;                                                        // Procedure de atualização
                Exit;
               end;

              para := LowerCase(para);

              if ( not fValidaEmail(para, 'N') ) then
               Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

             end;

            until ( fValidaEmail(para, 'N') );

           end;

          if (trim(para) <> '') then
           begin
            xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';                    /// by EL - 23.2.2012 -> xAux := trim(FrPar.edtPathLogs.Text) + '\' + trim(xAux) + '-nfe.xml';
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
            CC:=TstringList.Create;

            if ( Trim(FrPar.edtEnvCC.Text) <> '' ) then
             for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
              begin
               if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
                begin
                 CC.Add(trim(vI));                                              //especifique um email válido
                 vI := '';
                end
               else
                vI := (vI + FrPar.edtEnvCC.Text[I]);
              end;

            vI := '';                                                           // Limpa variável
            vC := 0;                                                            // zera contador

            for I := 1 to (Length(Para)+1) do
             begin
              if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
               begin
                if vC > 0 then
                 CC.Add(trim(vI))                                               // Especifique um email válido
                else
                 vP := trim(vI);                                                // Atribui apenas o primeiro email

                vI := '';
                inc(vC);                                                        // Incrementa 1
               end
              else
               vI := (vI + Para[I]);
             end;

             Para := vP;

            ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Para
                                                     , FrPar.edtEmailAssunto.Text + ' - Nº ' + VarToStr(DMFD.FDQuery3['nfe_nnf'])
                                                     , FrPar.mmEmailMsg.Lines
                                                     , True                     //Enviar PDF junto
                                                     , CC                       //com copia
                                                     , nil
                                                      );

            CC.Free;

           end; // final - enviar email

         end;

        gDuplic := False;

       end;

      end;

    end;

  end;

 RadioGroup1Click(FrGBNFe);

end;

procedure TFrGBNFe.ConsultarnotaemFSDA1Click(Sender: TObject);
var
 aux, vnRec : string;
 X          : integer;

begin

 try

  if not fTemSel( cxTL, cxTLbSel ) then exit;                                   // verifica se tem item selecionado na treelist

  for X := 0 to cxTL.Count -1 do                                                // Percorre a treelist

   begin

    if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                // Verifica se o item está selecionado

     begin

      // Filtra a nfe selecionada com select
      pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                 StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                 StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                 cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                 cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

      gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
      gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

      if ( gCpt = 1 ) then
       pDefineRel()                                                             // Define o tipo de Relatório FortesReport
      else
       pDefineRelFR();                                                          // Define o tipo de Relatório FastReport

      gCdloja_Consiste := edt_CodEmp.Text;
      gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
      gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
      gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
      gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
      gSerie           := StrToIntDef(gSerie_Consiste, 0);
      gChave_Consiste  := '';                                                   // está sendo atribuida depois da sp_calcula_digito_chave
      gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

      //procura pelo ano e mes da nota
      // ['1', '2', '3', '4', '5', '6', '7', '8', '9'], [teNormal, teContingencia, teSCAN, teDPEC, teFSDA, teSVCAN, teSVCRS, teSVCSP, teOffLine]);
      if (gModelo = 55) then
       _tpemissao := '5'
      else if (gModelo = 65) then
       _tpemissao := '9';

      // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
      gCdPed := VarToStr(DMFD.FDQryGeral2['nfe_CodPed']);

      aux := '';
      aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
      aux := aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQryGeral2['nfe_demi'])) + '''' + ',' + '''';
      aux := aux + IntToStr(gModelo) + '''' + ',' + '''';
      aux := aux + IntToStr(gSerie) + '''' + ',' + '''';
      aux := aux + gCdPed + '''';

      DMFD.FDQuery1.Close;
      DMFD.FDQuery1.SQL.Clear;
      DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + aux );
      DMFD.FDQuery1.open;

      if not DMFD.FDQuery1.IsEmpty then
       vAux := vartostr(DMFD.FDQuery1['chave']);

      // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
      gChave_Consiste  := vAux;

      if (VarToStr(DMFD.FDQryGeral2['nfe_chave_nfe']) <> '') and (trim(vAux) = '') then
       vAux := DMFD.FDQryGeral2['nfe_chave_nfe'];

      vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';    /// by EL 24.2.2012 -> vAux := trim(FrPar.edtPathLogs.Text) + '\' + trim(vAux) + '-nfe.xml';

      // by Edson Lima ; 2013/03/18 ; 08:45 ; Rotina para o caso de 613/539 = Chave de Acesso difere da existente em BD
      if not FileExists(vAux) then
       begin
        _tpemissao := '1';

        // by Edson Lima ; 2017-6-9T0949 ; Define quem será usado como cNF
        gCdPed := VarToStr(DMFD.FDQuery3['nfe_CodPed']);

        aux := '';
        aux := edt_CodEmp.Text + ',' + '''' + VarToStr(DMFD.FDQuery3['nfe_nnf']) + '''' + ',' + '''' + _tpemissao + '''' + ',' + '''';
        aux := aux + FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQuery3['nfe_demi'])) + '''' + ',' + '''';
        aux := aux + IntToStr(gModelo) + '''' + ',' + '''';
        aux := aux + IntToStr(gSerie) + '''' + ',' + '''';
        aux := aux + gCdPed + '''';

        DMFD.FDQuery1.Close;
        DMFD.FDQuery1.SQL.Clear;
        DMFD.FDQuery1.SQL.Add( 'exec sp_calcula_digito_chave ' + aux );
        DMFD.FDQuery1.open;

        if not DMFD.FDQuery1.IsEmpty then
         vAux := vartostr(DMFD.FDQuery1['chave']);

        // by Edson ; 2013-10-8T1031 ; Variável Global Chave criada para contestar gravação;
        gChave_Consiste  := vAux;

        if (VarToStr(DMFD.FDQuery3['nfe_chave_nfe']) <> '') and (trim(vAux) = '') then
         vAux := DMFD.FDQuery3['nfe_chave_nfe'];

        if vAux <> '' then
         begin
          if (cxdtp1.Date > DMFD.FDQuery3['nfe_demi']) then
            cxdtp1.Date := DMFD.FDQuery3['nfe_demi'];

          vAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';
         end;
       end;
      //********************************************************************

      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(vAux);
      ACBrNFe1.Consultar;

      if (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '100') or
         (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '150') then
       begin
        grava_xml_no_banco;

        // by Edson Lima ; 2013-11-25T1104 ; Rotina acrescina para o a efetiva
        // consulta das notas movidas de transmitidas...
        if gReConsulta then
         vnRec := DMFD.FDQryGeral2['nfe_recibo']
        else
         vnRec := ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec;
        //----------------------------------------------------------------------

        // by Edson Lima ; 2013/03/12 ; 14:23 ; Atualiza a nfe no update centralizado
        pGravaNFe('011', 'protocolo',
                         'recibo',
                         'data_hora_recebimento',
                         'chave_nfe',
                         'situacao',
                         'motivo',
                         'UsuTrs',
                         '',
                         '',
                         '',
                         '',
                         '',
                         '',
                         'codigo_loja',
                         'demi',
                         'nnf',
                         'serie',
                         'chave_nfe',
                         'modelo',                                              // Nome dos campos
                         ACBrNFe1.WebServices.Consulta.Protocolo,
                         vnRec,
                         FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.consulta.DhRecbto),
                         ACBrNFe1.WebServices.Consulta.NFeChave,
                         ACBrNFe1.WebServices.Consulta.cStat,
                         ACBrNFe1.WebServices.Consulta.xMotivo,
                         gUsu,
                         '',
                         '',
                         '',
                         '',
                         '',
                         '',
                         edt_CodEmp.Text,
                         FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']),
                         DMFD.FDQryGeral2['nfe_nnf'],
                         DMFD.FDQryGeral2['nfe_serie'],
                         ACBrNFe1.WebServices.Consulta.NFeChave,
                         DMFD.FDQryGeral2['nfe_modelo'],                        // Conteúdo dos campos
                         true);                                                 // Consiste [true/false]
       end
      else if ( (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '613') or
                (trim(vartostr(ACBrNFe1.WebServices.Consulta.cStat)) = '539') ) then
       begin

        gAtuFSD := True;

       end;

      MessageDlg('DADOS DA NOTA : ' + vartostr(DMFD.FDQryGeral2['nfe_nnf']) + char(13) +
                        '  Status=' + vartostr(ACBrNFe1.WebServices.Consulta.cStat)  +
                                '-' +  vartostr(ACBrNFe1.WebServices.Consulta.xMotivo) + char(13) +
                     '  Protocolo=' + ACBrNFe1.WebServices.Consulta.Protocolo + char(13) +
           '  Data do recebimento=' + vartostr(ACBrNFe1.WebServices.Consulta.DhRecbto) + char(13) ,mtInformation,[mbOK],0);

      memoLog.Clear;
      MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
      MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.Consulta.Msg);
      memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetornoWS);
      LoadXML(MemoResp, WBResposta);

     end;

   end;

 except

  pGAV();
  pAtuNFe();

 end;

 gReConsulta := False;
 RadioGroup1Click(FrGBNFe);

end;

procedure TFrGBNFe.BitBtn4Click(Sender: TObject);
begin

  OpenDialog1.FileName  :=  '';
  OpenDialog1.Title := 'Selecione a NFE';
  OpenDialog1.DefaultExt := '*-nfe.XML';
  OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;
  if OpenDialog1.Execute then begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

    grava_xml_no_banco;

    MessageDlg('Gravado com sucesso',mtInformation,[mbOK],0);

  end;

 /// By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFeT();

end;

procedure TFrGBNFe.BitBtn5Click(Sender: TObject);

var
 i, j, k, n  : integer;
 Nota, Node, NodePai, NodeItem: TTreeNode;

begin

 gMostraXML := True;
 OpenDialog1.FileName  :=  '';
 OpenDialog1.Title := 'Selecione a NFE';
 OpenDialog1.DefaultExt := '*-nfe.XML';
 OpenDialog1.Filter := 'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
 OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Arquivos.PathSalvar;

 if OpenDialog1.Execute then

  begin

   ACBrNFe1.NotasFiscais.Clear;
   ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);
   trvwNFe.Items.Clear;

   for n:=0 to ACBrNFe1.NotasFiscais.Count-1 do
    begin

     with ACBrNFe1.NotasFiscais.Items[n].NFe do
      begin

       Nota := trvwNFe.Items.Add(nil,infNFe.ID);
       trvwNFe.Items.AddChild(Nota,'ID= '                            + infNFe.ID);
       Node := trvwNFe.Items.AddChild(Nota,'procNFe');
       trvwNFe.Items.AddChild(Node,'tpAmb= '                         + TpAmbToStr(procNFe.tpAmb));
       trvwNFe.Items.AddChild(Node,'verAplic= '                      + procNFe.verAplic);
       trvwNFe.Items.AddChild(Node,'chNFe= '                         + procNFe.chNFe);
       trvwNFe.Items.AddChild(Node,'dhRecbto= '                      + DateTimeToStr(procNFe.dhRecbto));
       trvwNFe.Items.AddChild(Node,'nProt= '                         + procNFe.nProt);
       trvwNFe.Items.AddChild(Node,'digVal= '                        + procNFe.digVal);
       trvwNFe.Items.AddChild(Node,'cStat= '                         + IntToStr(procNFe.cStat));
       trvwNFe.Items.AddChild(Node,'xMotivo= '                       + procNFe.xMotivo);
       trvwNFe.Items.AddChild(Node,'cMsg= '                          + IntToStr(procNFe.cMsg));
       trvwNFe.Items.AddChild(Node,'xMsg= '                          + procNFe.xMsg);

       Node := trvwNFe.Items.AddChild(Nota,'Ide');
       trvwNFe.Items.AddChild(Node,'cNF= '                           + IntToStr(Ide.cNF));
       trvwNFe.Items.AddChild(Node,'natOp= '                         + Ide.natOp );

       case ( FrPar.cbb2.ItemIndex ) of

        0 : trvwNFe.Items.AddChild(Node,'indPag= '                   + IndpagToStr(Ide.indPag)); // ve3131

        1 : ;// Retirado a partir da ve400;                                                      // ve4040

        2 :                                                                                      // ve4031

         if ( gModelo = 55 ) then                                                                // ve40
          begin

           // Retirado a partir da ve400;

          end

         else                                                                                    // ve31

          begin

           trvwNFe.Items.AddChild(Node,'indPag= '                   + IndpagToStr(Ide.indPag));  // ve310

          end;

        3 :                                                                                      // ve3140

         if ( gModelo = 65 ) then                                                                // ve40
          begin

           // Retirado a partir da ve400;

          end

         else                                                                                    // ve31

          begin

           trvwNFe.Items.AddChild(Node,'indPag= '                   + IndpagToStr(Ide.indPag)); // ve310

          end;

       end;

       trvwNFe.Items.AddChild(Node,'modelo= '                        + IntToStr(Ide.modelo));
       trvwNFe.Items.AddChild(Node,'serie= '                         + IntToStr(Ide.serie));
       trvwNFe.Items.AddChild(Node,'nNF= '                           + IntToStr(Ide.nNF));
       trvwNFe.Items.AddChild(Node,'dEmi= '                          + DateToStr(Ide.dEmi));
       trvwNFe.Items.AddChild(Node,'dSaiEnt= '                       + DateToStr(Ide.dSaiEnt));
       //trvwNFe.Items.AddChild(Node,'hSaiEnt= '                       +DateToStr(Ide.hSaiEnt));
       trvwNFe.Items.AddChild(Node,'tpNF= '                          + tpNFToStr(Ide.tpNF));
       trvwNFe.Items.AddChild(Node,'finNFe= '                        + FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'verProc= '                       + Ide.verProc);
       trvwNFe.Items.AddChild(Node,'cUF= '                           + IntToStr(Ide.cUF));
       trvwNFe.Items.AddChild(Node,'cMunFG= '                        + IntToStr(Ide.cMunFG));
       trvwNFe.Items.AddChild(Node,'tpImp= '                         + TpImpToStr(Ide.tpImp));
       trvwNFe.Items.AddChild(Node,'tpEmis= '                        + TpEmisToStr(Ide.tpEmis));
       trvwNFe.Items.AddChild(Node,'cDV= '                           + IntToStr(Ide.cDV));
       trvwNFe.Items.AddChild(Node,'tpAmb= '                         + TpAmbToStr(Ide.tpAmb));
       trvwNFe.Items.AddChild(Node,'finNFe= '                        + FinNFeToStr(Ide.finNFe));
       trvwNFe.Items.AddChild(Node,'procEmi= '                       + procEmiToStr(Ide.procEmi));
       trvwNFe.Items.AddChild(Node,'verProc= '                       + Ide.verProc);
       //trvwNFe.Items.AddChild(Node,'dhCont= '                        +DateTimeToStr(Ide.dhCont));
       //trvwNFe.Items.AddChild(Node,'xJust= '                         +Ide.xJust);

       for i:=0 to Ide.NFref.Count-1 do
        begin

         if Ide.NFref.Items[i].refNFe <> '' then
          begin

           Node := trvwNFe.Items.AddChild(Node,'NFRef'               + IntToStrZero(i+1,3));
           trvwNFe.Items.AddChild(Node,'refNFe= '                    + Ide.NFref.Items[i].refNFe);
           trvwNFe.Items.AddChild(Node,'cUF= '                       + IntToStr(Ide.NFref.Items[i].RefNF.cUF));
           trvwNFe.Items.AddChild(Node,'AAMM= '                      + Ide.NFref.Items[i].RefNF.AAMM);
           trvwNFe.Items.AddChild(Node,'CNPJ= '                      + Ide.NFref.Items[i].RefNF.CNPJ);
           trvwNFe.Items.AddChild(Node,'modelo= '                    + IntToStr(Ide.NFref.Items[i].RefNF.modelo));
           trvwNFe.Items.AddChild(Node,'serie= '                     + IntToStr(Ide.NFref.Items[i].RefNF.serie));
           trvwNFe.Items.AddChild(Node,'nNF= '                       + IntToStr(Ide.NFref.Items[i].RefNF.nNF));

          end;

        end;

       Node := trvwNFe.Items.AddChild(Nota,'Emit');
       trvwNFe.Items.AddChild(Node,'CNPJCPF= '                       + Emit.CNPJCPF);
       trvwNFe.Items.AddChild(Node,'IE='                             + Emit.IE);
       trvwNFe.Items.AddChild(Node,'xNome='                          + Emit.xNome);
       trvwNFe.Items.AddChild(Node,'xFant='                          + Emit.xFant );
       trvwNFe.Items.AddChild(Node,'IEST='                           + Emit.IEST);
       trvwNFe.Items.AddChild(Node,'IM='                             + Emit.IM);
       trvwNFe.Items.AddChild(Node,'CNAE='                           + Emit.CNAE);
       trvwNFe.Items.AddChild(Node,'CRT='                            + CRTToStr(Emit.CRT));

       Node := trvwNFe.Items.AddChild(Node,'EnderEmit');
       trvwNFe.Items.AddChild(Node,'Fone='                           + Emit.EnderEmit.fone);
       trvwNFe.Items.AddChild(Node,'CEP='                            + IntToStr(Emit.EnderEmit.CEP));
       trvwNFe.Items.AddChild(Node,'xLgr='                           + Emit.EnderEmit.xLgr);
       trvwNFe.Items.AddChild(Node,'nro='                            + Emit.EnderEmit.nro);
       trvwNFe.Items.AddChild(Node,'xCpl='                           + Emit.EnderEmit.xCpl);
       trvwNFe.Items.AddChild(Node,'xBairro='                        + Emit.EnderEmit.xBairro);
       trvwNFe.Items.AddChild(Node,'cMun='                           + IntToStr(Emit.EnderEmit.cMun));
       trvwNFe.Items.AddChild(Node,'xMun='                           + Emit.EnderEmit.xMun);
       trvwNFe.Items.AddChild(Node,'UF'                              + Emit.EnderEmit.UF);
       trvwNFe.Items.AddChild(Node,'cPais='                          + IntToStr(Emit.EnderEmit.cPais));
       trvwNFe.Items.AddChild(Node,'xPais='                          + Emit.EnderEmit.xPais);

       if Avulsa.CNPJ  <> '' then
        begin

         Node := trvwNFe.Items.AddChild(Nota,'Avulsa');
         trvwNFe.Items.AddChild(Node,'CNPJ='                         + Avulsa.CNPJ);
         trvwNFe.Items.AddChild(Node,'xOrgao='                       + Avulsa.xOrgao);
         trvwNFe.Items.AddChild(Node,'matr='                         + Avulsa.matr );
         trvwNFe.Items.AddChild(Node,'xAgente='                      + Avulsa.xAgente);
         trvwNFe.Items.AddChild(Node,'fone='                         + Avulsa.fone);
         trvwNFe.Items.AddChild(Node,'UF='                           + Avulsa.UF);
         trvwNFe.Items.AddChild(Node,'nDAR='                         + Avulsa.nDAR);
         trvwNFe.Items.AddChild(Node,'dEmi='                         + DateToStr(Avulsa.dEmi));
         trvwNFe.Items.AddChild(Node,'vDAR='                         + FloatToStr(Avulsa.vDAR));
         trvwNFe.Items.AddChild(Node,'repEmi='                       + Avulsa.repEmi);
         trvwNFe.Items.AddChild(Node,'dPag='                         + DateToStr(Avulsa.dPag));

         end;

        Node := trvwNFe.Items.AddChild(Nota,'Dest');
        trvwNFe.Items.AddChild(Node,'CNPJCPF= '                      + Dest.CNPJCPF);
        trvwNFe.Items.AddChild(Node,'IE='                            + Dest.IE);
        trvwNFe.Items.AddChild(Node,'ISUF='                          + Dest.ISUF);
        trvwNFe.Items.AddChild(Node,'xNome='                         + Dest.xNome);
        trvwNFe.Items.AddChild(Node,'email='                         + Dest.Email);

        Node := trvwNFe.Items.AddChild(Node,'EnderDest');
        trvwNFe.Items.AddChild(Node,'Fone='                          + Dest.EnderDest.Fone);
        trvwNFe.Items.AddChild(Node,'CEP='                           + IntToStr(Dest.EnderDest.CEP));
        trvwNFe.Items.AddChild(Node,'xLgr='                          + Dest.EnderDest.xLgr);
        trvwNFe.Items.AddChild(Node,'nro='                           + Dest.EnderDest.nro);
        trvwNFe.Items.AddChild(Node,'xCpl='                          + Dest.EnderDest.xCpl);
        trvwNFe.Items.AddChild(Node,'xBairro='                       + Dest.EnderDest.xBairro);
        trvwNFe.Items.AddChild(Node,'cMun='                          + IntToStr(Dest.EnderDest.cMun));
        trvwNFe.Items.AddChild(Node,'xMun='                          + Dest.EnderDest.xMun);
        trvwNFe.Items.AddChild(Node,'UF='                            + Dest.EnderDest.UF );
        trvwNFe.Items.AddChild(Node,'cPais='                         + IntToStr(Dest.EnderDest.cPais));
        trvwNFe.Items.AddChild(Node,'xPais='                         + Dest.EnderDest.xPais);

        for I := 0 to Det.Count-1 do
         begin
          with Det.Items[I] do
           begin

            NodeItem := trvwNFe.Items.AddChild(Nota,'Produto'        + IntToStrZero(I+1,3));
            trvwNFe.Items.AddChild(NodeItem,'nItem='                 + IntToStr(Prod.nItem) );
            trvwNFe.Items.AddChild(NodeItem,'cProd='                 + Prod.cProd );
            trvwNFe.Items.AddChild(NodeItem,'cEAN='                  + Prod.cEAN);
            trvwNFe.Items.AddChild(NodeItem,'xProd='                 + Prod.xProd);
            trvwNFe.Items.AddChild(NodeItem,'NCM='                   + Prod.NCM);
            trvwNFe.Items.AddChild(NodeItem,'EXTIPI='                + Prod.EXTIPI);
            //trvwNFe.Items.AddChild(NodeItem,'genero='                 +IntToStr(Prod.genero));
            trvwNFe.Items.AddChild(NodeItem,'CFOP='                  + Prod.CFOP);
            trvwNFe.Items.AddChild(NodeItem,'uCom='                  + Prod.uCom);
            trvwNFe.Items.AddChild(NodeItem,'qCom='                  + FloatToStr(Prod.qCom)) ;
            trvwNFe.Items.AddChild(NodeItem,'vUnCom='                + FloatToStr(Prod.vUnCom)) ;
            trvwNFe.Items.AddChild(NodeItem,'CEST='                  + Prod.CEST) ;
            trvwNFe.Items.AddChild(NodeItem,'vProd='                 + FloatToStr(Prod.vProd)) ;

            trvwNFe.Items.AddChild(NodeItem,'cEANTrib='              + Prod.cEANTrib);
            trvwNFe.Items.AddChild(NodeItem,'uTrib='                 + Prod.uTrib);
            trvwNFe.Items.AddChild(NodeItem,'qTrib='                 + FloatToStr(Prod.qTrib));
            trvwNFe.Items.AddChild(NodeItem,'vUnTrib='               + FloatToStr(Prod.vUnTrib)) ;

            trvwNFe.Items.AddChild(NodeItem,'vFrete='                + FloatToStr(Prod.vFrete)) ;
            trvwNFe.Items.AddChild(NodeItem,'vSeg='                  + FloatToStr(Prod.vSeg)) ;
            trvwNFe.Items.AddChild(NodeItem,'vDesc='                 + FloatToStr(Prod.vDesc)) ;
            trvwNFe.Items.AddChild(NodeItem,'vOutro='                + FloatToStr(Prod.vOutro)) ;
            trvwNFe.Items.AddChild(NodeItem,'indTot='                + indTotToStr(Prod.IndTot)) ;
            trvwNFe.Items.AddChild(NodeItem,'xPed='                  + Prod.xPed) ;
            trvwNFe.Items.AddChild(NodeItem,'nItemPedido='           + Prod.nItemPed) ;

            trvwNFe.Items.AddChild(NodeItem,'infAdProd='             + infAdProd);

            for J:=0 to Prod.DI.Count-1 do
             begin
              if Prod.DI.Items[j].nDi <> '' then
               begin
                with Prod.DI.Items[j] do
                 begin

                  NodePai := trvwNFe.Items.AddChild(NodeItem,'DI'    + IntToStrZero(J+1,3));
                  trvwNFe.Items.AddChild(NodePai,'nDi='              + nDi);
                  trvwNFe.Items.AddChild(NodePai,'dDi='              + DateToStr(dDi));
                  trvwNFe.Items.AddChild(NodePai,'xLocDesemb='       + xLocDesemb);
                  trvwNFe.Items.AddChild(NodePai,'UFDesemb='         + UFDesemb);
                  trvwNFe.Items.AddChild(NodePai,'dDesemb='          + DateToStr(dDesemb));
                  trvwNFe.Items.AddChild(NodePai,'cExportador='      + cExportador);;

                  for K:=0 to adi.Count-1 do
                   begin

                    with adi.Items[K] do
                     begin

                      Node := trvwNFe.Items.AddChild(NodePai,'LADI'  + IntToStrZero(K+1,3));
                      trvwNFe.Items.AddChild(Node,'nAdicao='         + IntToStr(nAdicao)) ;
                      trvwNFe.Items.AddChild(Node,'nSeqAdi='         + IntToStr(nSeqAdi)) ;
                      trvwNFe.Items.AddChild(Node,'cFabricante='     + cFabricante);
                      trvwNFe.Items.AddChild(Node,'vDescDI='         + FloatToStr(vDescDI));

                     end;

                   end;

                 end;

               end

              else

               Break;

             end;

            if Prod.veicProd.chassi <> '' then
             begin

              Node := trvwNFe.Items.AddChild(NodeItem,'Veiculo');

              with Prod.veicProd do
               begin

                trvwNFe.Items.AddChild(Node,'tpOP='                  + tpOPToStr(tpOP));
                trvwNFe.Items.AddChild(Node,'chassi='                + chassi) ;
                trvwNFe.Items.AddChild(Node,'cCor='                  + cCor);
                trvwNFe.Items.AddChild(Node,'xCor='                  + xCor);
                trvwNFe.Items.AddChild(Node,'pot='                   + pot);
                trvwNFe.Items.AddChild(Node,'Cilin='                 + Cilin);
                trvwNFe.Items.AddChild(Node,'pesoL='                 + pesoL);
                trvwNFe.Items.AddChild(Node,'pesoB='                 + pesoB);
                trvwNFe.Items.AddChild(Node,'nSerie='                + nSerie);
                trvwNFe.Items.AddChild(Node,'tpComb='                + tpComb);
                trvwNFe.Items.AddChild(Node,'nMotor='                + nMotor);
                trvwNFe.Items.AddChild(Node,'CMT='                   + CMT);
                trvwNFe.Items.AddChild(Node,'dist='                  + dist);
                //trvwNFe.Items.AddChild(Node,'RENAVAM='               + RENAVAM);
                trvwNFe.Items.AddChild(Node,'anoMod='                + IntToStr(anoMod));
                trvwNFe.Items.AddChild(Node,'anoFab='                + IntToStr(anoFab));
                trvwNFe.Items.AddChild(Node,'tpPint='                + tpPint);
                trvwNFe.Items.AddChild(Node,'tpVeic='                + IntToStr(tpVeic));
                trvwNFe.Items.AddChild(Node,'espVeic='               + IntToStr(espVeic));
                trvwNFe.Items.AddChild(Node,'VIN='                   + VIN);
                trvwNFe.Items.AddChild(Node,'condVeic='              + condVeicToStr(condVeic));
                trvwNFe.Items.AddChild(Node,'cMod='                  + cMod);

               end;

             end;

            case ( FrPar.cbb2.ItemIndex ) of                                    // ve400

             0 :                                                                // ve3131

              begin

               for J:=0 to Prod.med.Count-1 do
                begin

                 Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) ) ;

                 with Prod.med.Items[J] do
                  begin

                   trvwNFe.Items.AddChild(Node,'nLote='              + nLote) ;
                   trvwNFe.Items.AddChild(Node,'qLote='              + FloatToStr(qLote)) ;
                   trvwNFe.Items.AddChild(Node,'dFab='               + DateToStr(dFab)) ;
                   trvwNFe.Items.AddChild(Node,'dVal='               + DateToStr(dVal)) ;
                   trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                  end;

                end;

              end;

             1 :                                                                // ve4040

              begin

               for J:=0 to Prod.rastro.Count-1 do
                begin

                 Node := trvwNFe.Items.AddChild(NodeItem,'Rastro'    + IntToStrZero(J+1,6) ) ;

                  with Prod.rastro.Items[J] do
                   begin

                    trvwNFe.Items.AddChild(Node,'nLote='             + nLote) ;
                    trvwNFe.Items.AddChild(Node,'qLote='             + FloatToStr(qLote)) ;
                    trvwNFe.Items.AddChild(Node,'dFab='              + DateToStr(dFab)) ;
                    trvwNFe.Items.AddChild(Node,'dVal='              + DateToStr(dVal)) ;
                    trvwNFe.Items.AddChild(Node,'cAgreg='            + cAgreg) ;

                   end;

                end;

               for J:=0 to Prod.med.Count-1 do
                begin

                 Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento' + IntToStrZero(J+1,3) );
                 with Prod.med.Items[J] do
                  begin

                   trvwNFe.Items.AddChild(Node,'cProdANVISA='        + cProdANVISA) ;
                   trvwNFe.Items.AddChild(Node,'xMotivoIsencao='     + xMotivoIsencao) ;
                   trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                  end;

                end;

              end;

             2 :                                                                // ve4031

              if ( gModelo = 55 ) then                                          // ve40

               begin

                for J:=0 to Prod.rastro.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Rastro'    + IntToStrZero(J+1,6) ) ;

                   with Prod.rastro.Items[J] do
                    begin

                     trvwNFe.Items.AddChild(Node,'nLote='             + nLote) ;
                     trvwNFe.Items.AddChild(Node,'qLote='             + FloatToStr(qLote)) ;
                     trvwNFe.Items.AddChild(Node,'dFab='              + DateToStr(dFab)) ;
                     trvwNFe.Items.AddChild(Node,'dVal='              + DateToStr(dVal)) ;
                     trvwNFe.Items.AddChild(Node,'cAgreg='            + cAgreg) ;

                    end;

                 end;

                for J:=0 to Prod.med.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento' + IntToStrZero(J+1,3) );
                  with Prod.med.Items[J] do
                   begin

                    trvwNFe.Items.AddChild(Node,'cProdANVISA='        + cProdANVISA) ;
                    trvwNFe.Items.AddChild(Node,'xMotivoIsencao='     + xMotivoIsencao) ;
                    trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                   end;

                 end;

               end

              else                                                              // ve31

               begin

                for J:=0 to Prod.med.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) ) ;

                  with Prod.med.Items[J] do
                   begin

                    trvwNFe.Items.AddChild(Node,'nLote='              + nLote) ;
                    trvwNFe.Items.AddChild(Node,'qLote='              + FloatToStr(qLote)) ;
                    trvwNFe.Items.AddChild(Node,'dFab='               + DateToStr(dFab)) ;
                    trvwNFe.Items.AddChild(Node,'dVal='               + DateToStr(dVal)) ;
                    trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                   end;

                 end;

               end;

             3 :                                                                // ve3140

              if ( gModelo = 65 ) then                                          // ve40

               begin

                for J:=0 to Prod.rastro.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Rastro'    + IntToStrZero(J+1,6) ) ;

                   with Prod.rastro.Items[J] do
                    begin

                     trvwNFe.Items.AddChild(Node,'nLote='             + nLote) ;
                     trvwNFe.Items.AddChild(Node,'qLote='             + FloatToStr(qLote)) ;
                     trvwNFe.Items.AddChild(Node,'dFab='              + DateToStr(dFab)) ;
                     trvwNFe.Items.AddChild(Node,'dVal='              + DateToStr(dVal)) ;
                     trvwNFe.Items.AddChild(Node,'cAgreg='            + cAgreg) ;

                    end;

                 end;

                for J:=0 to Prod.med.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento' + IntToStrZero(J+1,3) );
                  with Prod.med.Items[J] do
                   begin

                    trvwNFe.Items.AddChild(Node,'cProdANVISA='        + cProdANVISA) ;
                    trvwNFe.Items.AddChild(Node,'xMotivoIsencao='     + xMotivoIsencao) ;
                    trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                   end;

                 end;

               end

              else                                                              // ve31

               begin

                for J:=0 to Prod.med.Count-1 do
                 begin

                  Node := trvwNFe.Items.AddChild(NodeItem,'Medicamento'+IntToStrZero(J+1,3) ) ;

                  with Prod.med.Items[J] do
                   begin

                    trvwNFe.Items.AddChild(Node,'nLote='              + nLote) ;
                    trvwNFe.Items.AddChild(Node,'qLote='              + FloatToStr(qLote)) ;
                    trvwNFe.Items.AddChild(Node,'dFab='               + DateToStr(dFab)) ;
                    trvwNFe.Items.AddChild(Node,'dVal='               + DateToStr(dVal)) ;
                    trvwNFe.Items.AddChild(Node,'vPMC='               + FloatToStr(vPMC)) ;

                   end;

                 end;

               end;

            end;

            for J:=0 to Prod.arma.Count-1 do
             begin

              Node := trvwNFe.Items.AddChild(NodeItem,'Arma'         + IntToStrZero(J+1,3));

              with Prod.arma.Items[J] do
               begin

                trvwNFe.Items.AddChild(Node,'nSerie='                + nSerie) ;
                trvwNFe.Items.AddChild(Node,'tpArma='                + tpArmaToStr(tpArma)) ;
                trvwNFe.Items.AddChild(Node,'nCano='                 + nCano) ;
                trvwNFe.Items.AddChild(Node,'descr='                 + descr) ;

                end;

             end;

            if (Prod.comb.cProdANP > 0) then
             begin

              NodePai := trvwNFe.Items.AddChild(NodeItem,'Combustivel');

              with Prod.comb do
               begin

                trvwNFe.Items.AddChild(NodePai,'cProdANP='           + IntToStr(cProdANP)) ;
                trvwNFe.Items.AddChild(NodePai,'descANP='            + descANP) ;
                trvwNFe.Items.AddChild(NodePai,'pGLP='               + FloatToStr(pGLP)) ;
                trvwNFe.Items.AddChild(NodePai,'pGNn='               + FloatToStr(pGNn)) ;
                trvwNFe.Items.AddChild(NodePai,'pGNi='               + FloatToStr(pGNi)) ;
                trvwNFe.Items.AddChild(NodePai,'vPart='              + FloatToStr(vPart)) ;
                trvwNFe.Items.AddChild(NodePai,'CODIF='              + CODIF) ;

                trvwNFe.Items.AddChild(NodePai,'qTemp='              + FloatToStr(qTemp)) ;
                trvwNFe.Items.AddChild(NodePai,'UFcons='             + UFcons) ;

                Node := trvwNFe.Items.AddChild(NodePai,'CIDE'        + IntToStrZero(I+1,3)) ;
                trvwNFe.Items.AddChild(Node,'qBCprod='               + FloatToStr(CIDE.qBCprod)) ;
                trvwNFe.Items.AddChild(Node,'vAliqProd='             + FloatToStr(CIDE.vAliqProd)) ;
                trvwNFe.Items.AddChild(Node,'vCIDE='                 + FloatToStr(CIDE.vCIDE)) ;

                Node := trvwNFe.Items.AddChild(NodePai,'encerrante'  + IntToStrZero(I+1,3)) ;            // G LA01 0-1 Informações do grupo de “encerrante” disponibilizado por hardware específico acoplado à bomba de Combustível, definido no controle da venda do Posto Revendedor de Combustível. (NT 2015.002)
                trvwNFe.Items.AddChild(Node,'nBico='                 + FloatToStr(encerrante.nBico)) ;   // N 1-1 1-3 Informar o número do bico utilizado no abastecimento
                trvwNFe.Items.AddChild(Node,'nBomba='                + FloatToStr(encerrante.nBomba)) ;  // N 0-1 1-3 Caso exista, informar o número da bomba utilizada.
                trvwNFe.Items.AddChild(Node,'nTanque='               + FloatToStr(encerrante.nTanque)) ; // N 1-1 1-3 Informar o número do tanque utilizado.
                trvwNFe.Items.AddChild(Node,'vEncIni='               + FloatToStr(encerrante.vEncIni)) ; // N 1-1 12v3 Informar o valor da leitura do contador (Encerrante) no Início do abastecimento.
                trvwNFe.Items.AddChild(Node,'vEncFin='               + FloatToStr(encerrante.vEncFin)) ; // N 1-1 12v3 Informar o valor da leitura do contador (Encerrante) no Término do abastecimento.

                Node := trvwNFe.Items.AddChild(NodePai,'ICMSComb'    +IntToStrZero(I+1,3)) ;
                trvwNFe.Items.AddChild(Node,'vBCICMS='               + FloatToStr(ICMS.vBCICMS)) ;
                trvwNFe.Items.AddChild(Node,'vICMS='                 + FloatToStr(ICMS.vICMS)) ;
                trvwNFe.Items.AddChild(Node,'vBCICMSST='             + FloatToStr(ICMS.vBCICMSST)) ;
                trvwNFe.Items.AddChild(Node,'vICMSST='               + FloatToStr(ICMS.vICMSST)) ;

                if (ICMSInter.vBCICMSSTDest>0) then
                 begin

                  Node := trvwNFe.Items.AddChild(NodePai,'ICMSInter' + IntToStrZero(I+1,3)) ;
                  trvwNFe.Items.AddChild(Node,'vBCICMSSTDest='       + FloatToStr(ICMSInter.vBCICMSSTDest)) ;
                  trvwNFe.Items.AddChild(Node,'vICMSSTDest='         + FloatToStr(ICMSInter.vICMSSTDest)) ;

                 end;

                if (ICMSCons.vBCICMSSTCons>0) then
                 begin

                  Node := trvwNFe.Items.AddChild(NodePai,'ICMSCons'  + IntToStrZero(I+1,3));
                  trvwNFe.Items.AddChild(Node,'vBCICMSSTCons='       + FloatToStr(ICMSCons.vBCICMSSTCons)) ;
                  trvwNFe.Items.AddChild(Node,'vICMSSTCons='         + FloatToStr(ICMSCons.vICMSSTCons)) ;
                  trvwNFe.Items.AddChild(Node,'UFCons='              + ICMSCons.UFcons) ;

                 end;

               end;

             end;

            with Imposto do
             begin

              NodePai := trvwNFe.Items.AddChild(NodeItem,'Imposto');

              if ISSQN.cSitTrib = ISSQNcSitTribVazio then
               begin

                Node := trvwNFe.Items.AddChild(NodePai,'ICMS');

                with ICMS do
                 begin

                  // Simples nacional
                  if (   (FrPar.cbb2.ItemIndex = 1)                      or
                       ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                       ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                   begin

                    if ( (CSOSN = csosn201) and (CSOSN = csosn202) and
                         (CSOSN = csosn203) and (CSOSN = csosn900) ) then
                     begin

                      if ( ICMS.vBCFCPST > 0 ) then
                       trvwNFe.Items.AddChild(Node,'vBCFCPST='        + FloatToStr(ICMS.vBCFCPST));
                      if ( ICMS.pFCPST > 0 ) then
                       trvwNFe.Items.AddChild(Node,'pFCPST='          + FloatToStr(ICMS.pFCPST));
                      if ( ICMS.vFCPST > 0 ) then
                       trvwNFe.Items.AddChild(Node,'vFCPST='          + FloatToStr(ICMS.vFCPST));

                     end;

                    if ( CSOSN = csosn500 ) then
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCPSTRet='        + FloatToStr(ICMS.vBCFCPSTRet));
                      trvwNFe.Items.AddChild(Node,'pFCPSTRet='          + FloatToStr(ICMS.pFCPSTRet));
                      trvwNFe.Items.AddChild(Node,'vFCPSTRet='          + FloatToStr(ICMS.vFCPSTRet));
                      trvwNFe.Items.AddChild(Node,'pST='                + FloatToStr(ICMS.pST));

                     end;

                    if ( CSOSN = csosn101 ) then
                     begin

                      trvwNFe.Items.AddChild(Node,'pCredSN='            + FloatToStr(ICMS.pCredSN));
                      trvwNFe.Items.AddChild(Node,'vCredICMSSN='        + FloatToStr(ICMS.vCredICMSSN));

                     end;


                   end;

                  trvwNFe.Items.AddChild(Node,'CST='                 + CSTICMSToStr(CST));

                  if CST = cst00 then
                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'pFCP='            + FloatToStr(ICMS.pFCP));
                      trvwNFe.Items.AddChild(Node,'vFCP='            + FloatToStr(ICMS.vFCP));

                     end;

                   end

                  else if CST = cst10 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));
                    trvwNFe.Items.AddChild(Node,'modBCST='           + modBCSTToStr(ICMS.modBCST));
                    trvwNFe.Items.AddChild(Node,'pMVAST='            + FloatToStr(ICMS.pMVAST));
                    trvwNFe.Items.AddChild(Node,'pRedBCST='          + FloatToStr(ICMS.pRedBCST));
                    trvwNFe.Items.AddChild(Node,'vBCST='             + FloatToStr(ICMS.vBCST));
                    trvwNFe.Items.AddChild(Node,'pICMSST='           + FloatToStr(ICMS.pICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSST='           + FloatToStr(ICMS.vICMSST));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCPST='        + FloatToStr(ICMS.vBCFCPST));
                      trvwNFe.Items.AddChild(Node,'pFCPST='          + FloatToStr(ICMS.pFCPST));
                      trvwNFe.Items.AddChild(Node,'vFCPST='          + FloatToStr(ICMS.vFCPST));

                     end;

                   end

                  else if CST = cst20 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'pRedBC='            + FloatToStr(ICMS.pRedBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));
                    trvwNFe.Items.AddChild(Node,'vICMSDeson='        + FloatToStr(ICMS.vICMSDeson));
                    trvwNFe.Items.AddChild(Node,'motDesICMS='        + VarToStr(motDesICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCP='          + FloatToStr(ICMS.vBCFCP));
                      trvwNFe.Items.AddChild(Node,'pFCP='            + FloatToStr(ICMS.pFCP));
                      trvwNFe.Items.AddChild(Node,'vFCP='            + FloatToStr(ICMS.vFCP));

                     end;

                   end

                  else if CST = cst30 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBCST='           + modBCSTToStr(ICMS.modBCST));
                    trvwNFe.Items.AddChild(Node,'pMVAST='            + FloatToStr(ICMS.pMVAST));
                    trvwNFe.Items.AddChild(Node,'pRedBCST='          + FloatToStr(ICMS.pRedBCST));
                    trvwNFe.Items.AddChild(Node,'vBCST='             + FloatToStr(ICMS.vBCST));
                    trvwNFe.Items.AddChild(Node,'pICMSST='           + FloatToStr(ICMS.pICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSST='           + FloatToStr(ICMS.vICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSDeson='        + FloatToStr(ICMS.vICMSDeson));
                    trvwNFe.Items.AddChild(Node,'motDesICMS='        + VarToStr(motDesICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCPST='        + FloatToStr(ICMS.vBCFCPST));
                      trvwNFe.Items.AddChild(Node,'pFCPST='          + FloatToStr(ICMS.pFCPST));
                      trvwNFe.Items.AddChild(Node,'vFCPST='          + FloatToStr(ICMS.vFCPST));

                     end;

                   end

                  else if (CST = cst40) or (CST = cst41) or (CST = cst50) then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'vICMSDeson='        + FloatToStr(ICMS.vICMSDeson));
                    trvwNFe.Items.AddChild(Node,'motDesICMS='        + VarToStr(motDesICMS));

                   end

                  else if CST = cst51 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'pRedBC='            + FloatToStr(ICMS.pRedBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCP='          + FloatToStr(ICMS.vBCFCP));
                      trvwNFe.Items.AddChild(Node,'pFCP='            + FloatToStr(ICMS.pFCP));
                      trvwNFe.Items.AddChild(Node,'vFCP='            + FloatToStr(ICMS.vFCP));

                     end;

                   end

                  else if CST = cst60 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'vBCST='             + FloatToStr(ICMS.vBCST));
                    trvwNFe.Items.AddChild(Node,'vICMSST='           + FloatToStr(ICMS.vICMSST));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'pST='             + FloatToStr(ICMS.pST));
                      trvwNFe.Items.AddChild(Node,'vBCFCPSTRet='     + FloatToStr(ICMS.vBCFCPSTRet));
                      trvwNFe.Items.AddChild(Node,'pFCPSTRet='       + FloatToStr(ICMS.pFCPSTRet));
                      trvwNFe.Items.AddChild(Node,'vFCPSTRet='       + FloatToStr(ICMS.vFCPSTRet));

                      trvwNFe.Items.AddChild(Node,'vBCSTRet='        + FloatToStr(ICMS.vBCSTRet));
                      trvwNFe.Items.AddChild(Node,'vICMSSTRet='      + FloatToStr(ICMS.vICMSSTRet));
                      trvwNFe.Items.AddChild(Node,'vBCSTDest='       + FloatToStr(ICMS.vBCSTDest));
                      trvwNFe.Items.AddChild(Node,'vICMSSTDest='     + FloatToStr(ICMS.vICMSSTDest));

                     end;

                   end

                  else if CST = cst70 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'pRedBC='            + FloatToStr(ICMS.pRedBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));
                    trvwNFe.Items.AddChild(Node,'modBCST='           + modBCSTToStr(ICMS.modBCST));
                    trvwNFe.Items.AddChild(Node,'pMVAST='            + FloatToStr(ICMS.pMVAST));
                    trvwNFe.Items.AddChild(Node,'pRedBCST='          + FloatToStr(ICMS.pRedBCST));
                    trvwNFe.Items.AddChild(Node,'vBCST='             + FloatToStr(ICMS.vBCST));
                    trvwNFe.Items.AddChild(Node,'pICMSST='           + FloatToStr(ICMS.pICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSST='           + FloatToStr(ICMS.vICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSDeson='        + FloatToStr(ICMS.vICMSDeson));
                    trvwNFe.Items.AddChild(Node,'motDesICMS='        + VarToStr(motDesICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCPST='        + FloatToStr(ICMS.vBCFCPST));
                      trvwNFe.Items.AddChild(Node,'pFCPST='          + FloatToStr(ICMS.pFCPST));
                      trvwNFe.Items.AddChild(Node,'vFCPST='          + FloatToStr(ICMS.vFCPST));

                     end;

                   end

                  else if CST = cst90 then

                   begin

                    trvwNFe.Items.AddChild(Node,'orig='              + OrigToStr(ICMS.orig));
                    trvwNFe.Items.AddChild(Node,'modBC='             + modBCToStr(ICMS.modBC));
                    trvwNFe.Items.AddChild(Node,'pRedBC='            + FloatToStr(ICMS.pRedBC));
                    trvwNFe.Items.AddChild(Node,'vBC='               + FloatToStr(ICMS.vBC));
                    trvwNFe.Items.AddChild(Node,'pICMS='             + FloatToStr(ICMS.pICMS));
                    trvwNFe.Items.AddChild(Node,'vICMS='             + FloatToStr(ICMS.vICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCP='          + FloatToStr(ICMS.vBCFCP));
                      trvwNFe.Items.AddChild(Node,'pFCP='            + FloatToStr(ICMS.pFCP));
                      trvwNFe.Items.AddChild(Node,'vFCP='            + FloatToStr(ICMS.vFCP));

                     end;

                    trvwNFe.Items.AddChild(Node,'modBCST='           + modBCSTToStr(ICMS.modBCST));
                    trvwNFe.Items.AddChild(Node,'pMVAST='            + FloatToStr(ICMS.pMVAST));
                    trvwNFe.Items.AddChild(Node,'pRedBCST='          + FloatToStr(ICMS.pRedBCST));
                    trvwNFe.Items.AddChild(Node,'vBCST='             + FloatToStr(ICMS.vBCST));
                    trvwNFe.Items.AddChild(Node,'pICMSST='           + FloatToStr(ICMS.pICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSST='           + FloatToStr(ICMS.vICMSST));
                    trvwNFe.Items.AddChild(Node,'vICMSDeson='        + FloatToStr(ICMS.vICMSDeson));
                    trvwNFe.Items.AddChild(Node,'motDesICMS='        + VarToStr(motDesICMS));

                    if (   (FrPar.cbb2.ItemIndex = 1)                      or
                         ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                         ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then // ve400
                     begin

                      trvwNFe.Items.AddChild(Node,'vBCFCPST='        + FloatToStr(ICMS.vBCFCPST));
                      trvwNFe.Items.AddChild(Node,'pFCPST='          + FloatToStr(ICMS.pFCPST));
                      trvwNFe.Items.AddChild(Node,'vFCPST='          + FloatToStr(ICMS.vFCPST));

                     end;

                   end;

                 end;

                // by Edson Lima ; 2016-3-22 ; trata do ICMSUFDest
                Node := trvwNFe.Items.AddChild(NodePai,'ICMSUFDest');

                with ICMSUFDest do
                 begin

                  trvwNFe.Items.AddChild(Node,'vBCUFDest='           + FloatToStr(vBCUFDest));

                  if (   (FrPar.cbb2.ItemIndex = 1)                      or
                       ( (FrPar.cbb2.ItemIndex = 2) and (gModelo=55) )   or
                       ( (FrPar.cbb2.ItemIndex = 3) and (gModelo=65) ) ) then   // ve400
                   begin

                    trvwNFe.Items.AddChild(Node,'vBCFCPUFDest='      + FloatToStr(vBCFCPUFDest));

                   end;

                  trvwNFe.Items.AddChild(Node,'pFCPUFDest='          + FloatToStr(pFCPUFDest));
                  trvwNFe.Items.AddChild(Node,'pICMSUFDest='         + FloatToStr(pICMSUFDest));
                  trvwNFe.Items.AddChild(Node,'pICMSInter='          + FloatToStr(pICMSInter));
                  trvwNFe.Items.AddChild(Node,'pICMSInterPart='      + FloatToStr(pICMSInterPart));
                  trvwNFe.Items.AddChild(Node,'vFCPUFDest='          + FloatToStr(vFCPUFDest));
                  trvwNFe.Items.AddChild(Node,'vICMSUFDest='         + FloatToStr(vICMSUFDest));
                  trvwNFe.Items.AddChild(Node,'vICMSUFRemet='        + FloatToStr(vICMSUFRemet));

                 end;

               end

              else

               begin

                Node := trvwNFe.Items.AddChild(NodePai,'ISSQN');
                with ISSQN do
                 begin
                   trvwNFe.Items.AddChild(Node,'vBC='                + FloatToStr(vBC));
                   trvwNFe.Items.AddChild(Node,'vAliq='              + FloatToStr(vAliq));
                   trvwNFe.Items.AddChild(Node,'vISSQN='             + FloatToStr(vISSQN));
                   trvwNFe.Items.AddChild(Node,'cMunFG='             + IntToStr(cMunFG));
                   trvwNFe.Items.AddChild(Node,'cListServ='          + cListServ);
                 end;

               end;

              if (IPI.vBC > 0) then
               begin

                Node := trvwNFe.Items.AddChild(NodePai,'IPI');

                with IPI do
                 begin

                  trvwNFe.Items.AddChild(Node,'CST='                 + CSTIPIToStr(CST)) ;
                  trvwNFe.Items.AddChild(Node,'clEnq='               + clEnq);
                  trvwNFe.Items.AddChild(Node,'CNPJProd='            + CNPJProd);
                  trvwNFe.Items.AddChild(Node,'cSelo='               + cSelo);
                  trvwNFe.Items.AddChild(Node,'qSelo='               + IntToStr(qSelo));
                  trvwNFe.Items.AddChild(Node,'cEnq='                + cEnq);
                  trvwNFe.Items.AddChild(Node,'vBC='                 + FloatToStr(vBC));
                  trvwNFe.Items.AddChild(Node,'qUnid='               + FloatToStr(qUnid));
                  trvwNFe.Items.AddChild(Node,'vUnid='               + FloatToStr(vUnid));
                  trvwNFe.Items.AddChild(Node,'pIPI='                + FloatToStr(pIPI));
                  trvwNFe.Items.AddChild(Node,'vIPI='                + FloatToStr(vIPI));

                 end;

               end;

                if (II.vBc > 0) then
                 begin
                   Node := trvwNFe.Items.AddChild(NodePai,'II');
                   with II do
                    begin
                      trvwNFe.Items.AddChild(Node,'vBc='             + FloatToStr(vBc));
                      trvwNFe.Items.AddChild(Node,'vDespAdu='        + FloatToStr(vDespAdu));
                      trvwNFe.Items.AddChild(Node,'vII='             + FloatToStr(vII));
                      trvwNFe.Items.AddChild(Node,'vIOF='            + FloatToStr(vIOF));
                    end;
                 end;

                Node := trvwNFe.Items.AddChild(NodePai,'PIS');
                with PIS do
                 begin
                   trvwNFe.Items.AddChild(Node,'CST='                + CSTPISToStr(CST));

                   if (CST = pis01) or (CST = pis02) then
                    begin
                      trvwNFe.Items.AddChild(Node,'vBC='             + FloatToStr(PIS.vBC));
                      trvwNFe.Items.AddChild(Node,'pPIS='            + FloatToStr(PIS.pPIS));
                      trvwNFe.Items.AddChild(Node,'vPIS='            + FloatToStr(PIS.vPIS));
                    end
                   else if CST = pis03 then
                    begin
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(PIS.qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(PIS.vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vPIS='            + FloatToStr(PIS.vPIS));
                    end
                   else if CST = pis99 then
                    begin
                      trvwNFe.Items.AddChild(Node,'vBC='             + FloatToStr(PIS.vBC));
                      trvwNFe.Items.AddChild(Node,'pPIS='            + FloatToStr(PIS.pPIS));
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(PIS.qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(PIS.vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vPIS='            + FloatToStr(PIS.vPIS));
                    end;
                 end;

                if (PISST.vBc>0) then
                 begin
                   Node := trvwNFe.Items.AddChild(NodePai,'PISST');
                   with PISST do
                    begin
                      trvwNFe.Items.AddChild(Node,'vBc='             + FloatToStr(vBc));
                      trvwNFe.Items.AddChild(Node,'pPis='            + FloatToStr(pPis));
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vPIS='            + FloatToStr(vPIS));
                    end;
                   end;

                Node := trvwNFe.Items.AddChild(NodePai,'COFINS');
                with COFINS do
                 begin
                   trvwNFe.Items.AddChild(Node,'CST='                + CSTCOFINSToStr(CST));

                   if (CST = cof01) or (CST = cof02) then
                    begin
                      trvwNFe.Items.AddChild(Node,'vBC='             + FloatToStr(COFINS.vBC));
                      trvwNFe.Items.AddChild(Node,'pCOFINS='         + FloatToStr(COFINS.pCOFINS));
                      trvwNFe.Items.AddChild(Node,'vCOFINS='         + FloatToStr(COFINS.vCOFINS));
                    end
                   else if CST = cof03 then
                    begin
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(COFINS.qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(COFINS.vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vCOFINS='         + FloatToStr(COFINS.vCOFINS));
                    end
                   else if CST = cof99 then
                    begin
                      trvwNFe.Items.AddChild(Node,'vBC='             + FloatToStr(COFINS.vBC));
                      trvwNFe.Items.AddChild(Node,'pCOFINS='         + FloatToStr(COFINS.pCOFINS));
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(COFINS.qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(COFINS.vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vCOFINS='         + FloatToStr(COFINS.vCOFINS));
                    end;
                 end;

                if (COFINSST.vBC > 0) then
                 begin
                   Node := trvwNFe.Items.AddChild(NodePai,'COFINSST');
                   with COFINSST do
                    begin
                      trvwNFe.Items.AddChild(Node,'vBC='             + FloatToStr(vBC));
                      trvwNFe.Items.AddChild(Node,'pCOFINS='         + FloatToStr(pCOFINS));
                      trvwNFe.Items.AddChild(Node,'qBCProd='         + FloatToStr(qBCProd));
                      trvwNFe.Items.AddChild(Node,'vAliqProd='       + FloatToStr(vAliqProd));
                      trvwNFe.Items.AddChild(Node,'vCOFINS='         + FloatToStr(vCOFINS));
                    end;
                 end;
             end;
           end;
         end ;

        NodePai := trvwNFe.Items.AddChild(Nota,'Total');
        Node := trvwNFe.Items.AddChild(NodePai,'ICMSTot');
        trvwNFe.Items.AddChild(Node,'vBC='                           + FloatToStr(Total.ICMSTot.vBC));
        trvwNFe.Items.AddChild(Node,'vICMS='                         + FloatToStr(Total.ICMSTot.vICMS)) ;
        trvwNFe.Items.AddChild(Node,'vBCST='                         + FloatToStr(Total.ICMSTot.vBCST)) ;
        trvwNFe.Items.AddChild(Node,'vST='                           + FloatToStr(Total.ICMSTot.vST)) ;
        trvwNFe.Items.AddChild(Node,'vProd='                         + FloatToStr(Total.ICMSTot.vProd)) ;
        trvwNFe.Items.AddChild(Node,'vFrete='                        + FloatToStr(Total.ICMSTot.vFrete)) ;
        trvwNFe.Items.AddChild(Node,'vSeg='                          + FloatToStr(Total.ICMSTot.vSeg)) ;
        trvwNFe.Items.AddChild(Node,'vDesc='                         + FloatToStr(Total.ICMSTot.vDesc)) ;
        trvwNFe.Items.AddChild(Node,'vII='                           + FloatToStr(Total.ICMSTot.vII)) ;
        trvwNFe.Items.AddChild(Node,'vIPI='                          + FloatToStr(Total.ICMSTot.vIPI)) ;
        trvwNFe.Items.AddChild(Node,'vPIS='                          + FloatToStr(Total.ICMSTot.vPIS)) ;
        trvwNFe.Items.AddChild(Node,'vCOFINS='                       + FloatToStr(Total.ICMSTot.vCOFINS)) ;
        trvwNFe.Items.AddChild(Node,'vOutro='                        + FloatToStr(Total.ICMSTot.vOutro)) ;
        trvwNFe.Items.AddChild(Node,'vNF='                           + FloatToStr(Total.ICMSTot.vNF)) ;
        trvwNFe.Items.AddChild(Node,'vICMSDeson='                    + FloatToStr(Total.ICMSTot.vICMSDeson)) ;
        trvwNFe.Items.AddChild(Node,'vFCPUFDest='                    + FloatToStr(Total.ICMSTot.vFCPUFDest)) ;
        trvwNFe.Items.AddChild(Node,'vICMSUFDest='                   + FloatToStr(Total.ICMSTot.vICMSUFDest)) ;
        trvwNFe.Items.AddChild(Node,'vICMSUFRemet='                  + FloatToStr(Total.ICMSTot.vICMSUFRemet)) ;

        if Total.ISSQNtot.vServ > 0 then
         begin
           Node := trvwNFe.Items.AddChild(NodePai,'ISSQNtot');
           trvwNFe.Items.AddChild(Node,'vServ='                      + FloatToStr(Total.ISSQNtot.vServ)) ;
           trvwNFe.Items.AddChild(Node,'vBC='                        + FloatToStr(Total.ISSQNTot.vBC)) ;
           trvwNFe.Items.AddChild(Node,'vISS='                       + FloatToStr(Total.ISSQNTot.vISS)) ;
           trvwNFe.Items.AddChild(Node,'vPIS='                       + FloatToStr(Total.ISSQNTot.vPIS)) ;
           trvwNFe.Items.AddChild(Node,'vCOFINS='                    + FloatToStr(Total.ISSQNTot.vCOFINS)) ;
         end;

        Node := trvwNFe.Items.AddChild(NodePai,'retTrib');
        trvwNFe.Items.AddChild(Node,'vRetPIS='                       + FloatToStr(Total.retTrib.vRetPIS)) ;
        trvwNFe.Items.AddChild(Node,'vRetCOFINS='                    + FloatToStr(Total.retTrib.vRetCOFINS)) ;
        trvwNFe.Items.AddChild(Node,'vRetCSLL='                      + FloatToStr(Total.retTrib.vRetCSLL)) ;
        trvwNFe.Items.AddChild(Node,'vBCIRRF='                       + FloatToStr(Total.retTrib.vBCIRRF)) ;
        trvwNFe.Items.AddChild(Node,'vIRRF='                         + FloatToStr(Total.retTrib.vIRRF)) ;
        trvwNFe.Items.AddChild(Node,'vBCRetPrev='                    + FloatToStr(Total.retTrib.vBCRetPrev)) ;
        trvwNFe.Items.AddChild(Node,'vRetPrev='                      + FloatToStr(Total.retTrib.vRetPrev)) ;

        NodePai := trvwNFe.Items.AddChild(Nota,'Transp');
        Node := trvwNFe.Items.AddChild(NodePai,'Transporta');
        trvwNFe.Items.AddChild(Node,'modFrete='                      + modFreteToStr(Transp.modFrete));
        trvwNFe.Items.AddChild(Node,'CNPJCPF='                       + Transp.Transporta.CNPJCPF);
        trvwNFe.Items.AddChild(Node,'xNome='                         + Transp.Transporta.xNome);
        trvwNFe.Items.AddChild(Node,'IE='                            + Transp.Transporta.IE);
        trvwNFe.Items.AddChild(Node,'xEnder='                        + Transp.Transporta.xEnder);
        trvwNFe.Items.AddChild(Node,'xMun='                          + Transp.Transporta.xMun);
        trvwNFe.Items.AddChild(Node,'UF='                            + Transp.Transporta.UF);

        Node := trvwNFe.Items.AddChild(NodePai,'retTransp');
        trvwNFe.Items.AddChild(Node,'vServ='                         + FloatToStr(Transp.retTransp.vServ)) ;
        trvwNFe.Items.AddChild(Node,'vBCRet='                        + FloatToStr(Transp.retTransp.vBCRet)) ;
        trvwNFe.Items.AddChild(Node,'pICMSRet='                      + FloatToStr(Transp.retTransp.pICMSRet)) ;
        trvwNFe.Items.AddChild(Node,'vICMSRet='                      + FloatToStr(Transp.retTransp.vICMSRet)) ;
        trvwNFe.Items.AddChild(Node,'CFOP='                          + Transp.retTransp.CFOP);
        trvwNFe.Items.AddChild(Node,'cMunFG='                        + FloatToStr(Transp.retTransp.cMunFG));

        Node := trvwNFe.Items.AddChild(NodePai,'veicTransp');
        trvwNFe.Items.AddChild(Node,'placa='                         + Transp.veicTransp.placa);
        trvwNFe.Items.AddChild(Node,'UF='                            + Transp.veicTransp.UF);
        trvwNFe.Items.AddChild(Node,'RNTC='                          + Transp.veicTransp.RNTC);

        for I:=0 to Transp.Reboque.Count-1 do
         begin
           Node := trvwNFe.Items.AddChild(NodePai,'Reboque'          + IntToStrZero(I+1,3));
           with Transp.Reboque.Items[I] do
            begin
              trvwNFe.Items.AddChild(Node,'placa='                   + placa) ;
              trvwNFe.Items.AddChild(Node,'UF='                      + UF) ;
              trvwNFe.Items.AddChild(Node,'RNTC='                    + RNTC) ;
            end;
         end;

        for I:=0 to Transp.Vol.Count-1 do
         begin
           Node := trvwNFe.Items.AddChild(NodePai,'Volume'           + IntToStrZero(I+1,3));
           with Transp.Vol.Items[I] do
            begin
              trvwNFe.Items.AddChild(Node,'qVol='                    + IntToStr(qVol)) ;
              trvwNFe.Items.AddChild(Node,'esp='                     + esp);
              trvwNFe.Items.AddChild(Node,'marca='                   + marca);
              trvwNFe.Items.AddChild(Node,'nVol='                    + nVol);
              trvwNFe.Items.AddChild(Node,'pesoL='                   + FloatToStr(pesoL)) ;
              trvwNFe.Items.AddChild(Node,'pesoB'                    + FloatToStr(pesoB)) ;

              for J:=0 to Lacres.Count-1 do
               begin
                 Node := trvwNFe.Items.AddChild(Node,'Lacre'         + IntToStrZero(I+1,3)+IntToStrZero(J+1,3) );
                 trvwNFe.Items.AddChild(Node,'nLacre='               + Lacres.Items[J].nLacre) ;
               end;
            end;
         end;

        if (gModelo = 55) then
         begin
          NodePai := trvwNFe.Items.AddChild(Nota,'Cobr');
          Node    := trvwNFe.Items.AddChild(NodePai,'Fat');
          trvwNFe.Items.AddChild(Node,'nFat='                        + Cobr.Fat.nFat);
          trvwNFe.Items.AddChild(Node,'vOrig='                       + FloatToStr(Cobr.Fat.vOrig)) ;
          trvwNFe.Items.AddChild(Node,'vDesc='                       + FloatToStr(Cobr.Fat.vDesc)) ;
          trvwNFe.Items.AddChild(Node,'vLiq='                        + FloatToStr(Cobr.Fat.vLiq)) ;
         end;

        for I:=0 to Cobr.Dup.Count-1 do
         begin
           Node    := trvwNFe.Items.AddChild(NodePai,'Duplicata'     + IntToStrZero(I+1,3));
           with Cobr.Dup.Items[I] do
            begin
              trvwNFe.Items.AddChild(Node,'nDup='                    + nDup) ;
              trvwNFe.Items.AddChild(Node,'dVenc='                   + DateToStr(dVenc));
              trvwNFe.Items.AddChild(Node,'vDup='                    + FloatToStr(vDup)) ;
            end;
         end;

        NodePai := trvwNFe.Items.AddChild(Nota,'InfAdic');
        trvwNFe.Items.AddChild(NodePai,'infCpl='                     + InfAdic.infCpl);
        trvwNFe.Items.AddChild(NodePai,'infAdFisco='                 + InfAdic.infAdFisco);

        for I:=0 to InfAdic.obsCont.Count-1 do
         begin
           Node := trvwNFe.Items.AddChild(NodePai,'obsCont'          +IntToStrZero(I+1,3));
           with InfAdic.obsCont.Items[I] do
            begin
              trvwNFe.Items.AddChild(Node,'xCampo='                  + xCampo) ;
              trvwNFe.Items.AddChild(Node,'xTexto='                  + xTexto);
            end;
         end;

          for I:=0 to InfAdic.obsFisco.Count-1 do
           begin
             Node := trvwNFe.Items.AddChild(NodePai,'obsFisco'       + IntToStrZero(I+1,3));
             with InfAdic.obsFisco.Items[I] do
              begin
                 trvwNFe.Items.AddChild(Node,'xCampo='               + xCampo) ;
                 trvwNFe.Items.AddChild(Node,'xTexto='               + xTexto);
              end;
           end;

          for I:=0 to InfAdic.procRef.Count-1 do
           begin
             Node := trvwNFe.Items.AddChild(NodePai,'procRef'        +IntToStrZero(I+1,3));
             with InfAdic.procRef.Items[I] do
              begin
                trvwNFe.Items.AddChild(Node,'nProc='                 + nProc) ;
                trvwNFe.Items.AddChild(Node,'indProc='               + indProcToStr(indProc));
              end;
           end;

          if (exporta.UFembarq <> '') then
           begin
             Node := trvwNFe.Items.AddChild(Nota,'exporta');
             trvwNFe.Items.AddChild(Node,'UFembarq='                 + exporta.UFembarq) ;
             trvwNFe.Items.AddChild(Node,'xLocEmbarq='               + exporta.xLocEmbarq);
           end;

          if (compra.xNEmp <> '') then
           begin
             Node := trvwNFe.Items.AddChild(Nota,'compra');
             trvwNFe.Items.AddChild(Node,'xNEmp='                    + compra.xNEmp) ;
             trvwNFe.Items.AddChild(Node,'xPed='                     + compra.xPed);
             trvwNFe.Items.AddChild(Node,'xCont='                    + compra.xCont);
           end;
       end;

      PageControl1.ActivePageIndex := 3;

     end;

   end;

  trvwNFe.FullExpand;
  trvwNFe.Select(nota);

 /// By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFeT();

end;

procedure TFrGBNFe.BitBtn7Click(Sender: TObject);
var
 vPdf, vAux, xAux, vCaminho: string;
 ProcInfo                  : TProcessInformation;
 c, X                      : Integer;

begin

 CloseHandle(ProcInfo.hProcess);

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // verifica se tem item selecionado na treelist

 for X := 0 to cxTL.Count -1 do                                                 // Percorre a treelist
  begin

   if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                 // Verifica se o item está selecionado
    begin

     // Filtra a nfe selecionada com select
     pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

     gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
     gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

     if ( gCpt = 1 ) then
      pDefineRel()                                                              // Define o tipo de Relatório FortesReport
     else
      pDefineRelFR();                                                           // Define o tipo de Relatório FastReport

     gCdloja_Consiste := edt_CodEmp.Text;
     gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
     gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
     gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
     gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
     gSerie           := StrToIntDef(gSerie_Consiste, 0);
     gChave_Consiste  := '';                                                    // está sendo atribuida depois da sp_calcula_digito_chave
     gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

     vAux         := DMFD.FDQryGeral2['nfe_chave_nfe'];
     if vAux <> '' then
      begin

       xAux := trim(gCamLog) + trim(vAux) + '-nfe.xml';                          // by EL 24.2.2012 -> xAux := trim(FrPar.edtPathLogs.Text) + '\' + trim(vAux) + '-nfe.xml';
       vPdf := trim(gCamPdf) + trim(vAux) + '-nfe.pdf';

        if FileExists(vPdf) then
         begin

          if Application.MessageBox( 'Pdf já existe, gostaria de recriá-lo?', 'GBNFe - Gera PDF', MB_ICONQUESTION + MB_YESNO ) = IdYes then
           begin
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
            ACBrNFe1.NotasFiscais.ImprimirPDF;

            pImpr();
           end
          else
           begin
            ACBrNFe1.NotasFiscais.Clear;
            ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
            ACBrNFe1.NotasFiscais.Imprimir;
           end;

         end
        else
         begin

          ACBrNFe1.NotasFiscais.Clear;
          ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
          ACBrNFe1.NotasFiscais.ImprimirPDF;

          pImpr();

         end;

      end;

    end;

  end;

 /// By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFeT();

end;

procedure TFrGBNFe.BitBtn6Click(Sender: TObject);
var
 I, vC, X                     : Integer;
 Para, vI, vP                 : String;
 CC                           : Tstrings;
begin

 // by Edson ; 2013/03/21T14:21 ; Estabelece o envio do arquivo de cancelamento por email
 if (RadioGroup1.ItemIndex = 4) then                                            // Canceladas
  begin

   pEnviaEmailCan();
   exit;

  end;

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // verifica se tem item selecionado na treelist

 for X := 0 to cxTL.Count -1 do                                                 // Percorre a treelist

  begin

   if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                 // Verifica se o item está selecionado

    begin

     // Filtra a nfe selecionada com select
     pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

     gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
     gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

     if ( gCpt = 1 ) then
      pDefineRel()                                                              // Define o tipo de Relatório FortesReport
     else
      pDefineRelFR();                                                           // Define o tipo de Relatório FastReport

     gCdloja_Consiste := edt_CodEmp.Text;
     gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
     gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
     gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
     gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
     gSerie           := StrToIntDef(gSerie_Consiste, 0);
     gChave_Consiste  := '';                                                    // está sendo atribuida depois da sp_calcula_digito_chave
     gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

     xAux := trim(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']));
     if xAux <> '' then
      begin
       //pega os dados do destinatario
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                               ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                                 ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo              ' );
       DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                        ' );
       DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe = :parm2                                            ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := (xAux);
       DMFD.FDQuery2.Open;
       if DMFD.FDQuery2.IsEmpty then begin
         MessageDlg('Nfe não existe',mtInformation,[mbOK],0);
         exit;
       end;

       para := '';
       para := vartostr(DMFD.FDQuery2['email']);

       if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

        begin

         repeat

          begin

           if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', para) then
            begin
             pAtuNFe;                                                           // Procedure de atualização
             Exit;
            end;

           para := LowerCase(para);

           if ( not fValidaEmail(para, 'N') ) then
            Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

          end;

         until ( fValidaEmail(para, 'N') );

        end;

       xAux := trim(gCamLog) + trim(xAux) + '-nfe.xml';

       ACBrNFe1.NotasFiscais.Clear;
       ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
       CC:=TstringList.Create;

       if ( FrPar.edtEnvCC.Text <> '') then
        for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
         begin
          if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
           begin
            CC.Add(trim(vI));                                                   //especifique um email válido
            vI := '';
           end
          else
           vI := (vI + FrPar.edtEnvCC.Text[I]);
         end;

       vI := '';                                                                // Limpa variável
       vC := 0;                                                                 // zera contador

       for I := 1 to (Length(Para)+1) do
        begin
         if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
          begin
           if vC > 0 then
            CC.Add(trim(vI))                                                    //especifique um email válido
           else
            vP := trim(vI);                                                     // Atribui apenas o primeiro email

           vI := '';
           inc(vC);                                                             // Incrementa 1
          end
         else
          vI := (vI + Para[I]);
        end;

       Para := vP;

       try
        try

         ACBrNFe1.NotasFiscais.Items[0].EnviarEmail(Para
                  , FrPar.edtEmailAssunto.Text + ' - Nº ' + VarToStr(DMFD.FDQryGeral2['nfe_nnf'])
                  , FrPar.mmEmailMsg.Lines
                  , True                                                        //Enviar PDF junto
                  , CC                                                          //com copia
                  , nil
                                                    );

         Application.MessageBox(PWideChar('Email enviado com sucesso!'), 'Atenção', MB_ICONINFORMATION );

        except on e:exception do

         Application.Messagebox( pWideChar( 'Inconsistência no envio do email!' + chr(13) +
                                e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

        end;
       finally

        CC.Free;

       end;

      end;

    end;

  end;

 pAtuNFeT();

end;

procedure TFrGBNFe.SBHomolMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := SBHomol.Hint;

end;

procedure TFrGBNFe.SBProdMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := SBProd.Hint;

end;

procedure TFrGBNFe.SelecionarTudo1Click(Sender: TObject);
begin
 MarcaBloco( cxTL, True, True );
end;

procedure TFrGBNFe.MarcaDesmarcaTodos1Click(Sender: TObject);
begin
 MarcaBloco( cxTL, True, True );
end;

procedure TFrGBNFe.MarcaDesmarcaTodos2Click(Sender: TObject);
begin
 MarcaBloco( cxTL, True, True );
end;

procedure TFrGBNFe.DesmarcarTudo1Click(Sender: TObject);
begin
 MarcaBloco( cxTL, False, True );
end;

procedure TFrGBNFe.DesmarcarTodas1Click(Sender: TObject);
begin
 MarcaBloco( cxTL, False, True );
end;

procedure TFrGBNFe.DesmarcarTodas2Click(Sender: TObject);
begin
 MarcaBloco( cxTL, False, True );
end;

procedure TFrGBNFe.FormClose(Sender: TObject; var Action: TCloseAction);
var
 hHandle : THandle;
 iExit   : Integer;

begin

 // Exclui os arquivos temporários
 // by Edson Lima ; 2016-8-31T1738
 gExcTmp := True;
 ConsultaWeb5inuClick(Sender);
 //-------------------------------

 if ( ACBrNFe1.DANFE = ACBrNFeDANFeRL1 ) then
  begin
   ACBrNFeDANFERL1.Free;                                                        // trunk2 - Antes => ACBrNFeDANFERave1.Free;
   ACBrNFeDANFCeFortes1.Free;                                                   // trunk2 - Novo
   ACBrNFeDANFCeFortesA41.Free;
  end
 else
  begin

   ACBrNFeDANFEFR1.Free;                                                        // trunk2 - Antes => ACBrNFeDANFERave1.Free;
   ACBrNFeDANFeESCPOS1.Free;                                                    // trunk2 - Novo
   ACBrECFVirtualNFCe1.Free;
  end;

 // Disconeta os bancos de dados
 DMFD.FDConNFe.Connected                  := False;
 DMFD.FDConGer.Connected                  := False;

 IdSSLIOHandlerSocketOpenSSL1.Free;
 IdHttp1.Free;
 idftp1.Free;
 ACBrMail1.Free;
 ACBrSMS1.Free;
 IdMessage.Free;
 IdSMTP.Free;
 ImageList1.Free;
 ColumnHeader.Free;
 Content.Free;
 BandHeader.Free;
 acbrpsprntr1.Free;
 cxStyleRepository1.Free;

 TerminateThread(hHandle, iExit);

 if ( FrPar.CheckBox10.Checked = True ) then
  begin

   winexec('taskkill /f /im GBNFe.exe', SW_HIDE);                               // Encerra o processo gbnfe definitivamente

   if ( Is64Bits ) then
    winexec('pskill64 -t GBNFE.Exe', SW_HIDE)                                   // Encerra o processo gbnfe definitivamente
   else
    winexec('pskill   -t GBNFE.Exe', SW_HIDE);                                  // Encerra o processo gbnfe definitivamente

  end;

end;

procedure TFrGBNFe.BitBtn12Click(Sender: TObject);
begin

 Close;

end;

//---
// Funcao     : StrZero
// Parametros : String Numerica, Quantidade
// Objetivo   : Preencher zeros a esquerda de uma string numerica
//---

Function TFrGBNFe.StrZero( cString: String; iInteger: Integer ): String;
Var
  iInt, i : Integer;
  cStr    : String;

begin
  iInt := 0;
  cStr := '';

  if iInteger > Length( Trim( cString ) ) then                                  {Testa se o tamanho informado é maior que a string passada}
    iInt := ( IInteger - Length( Trim( cString ) ) );

  for i:= 1 to iInt do
    cStr := cStr + '0';

  StrZero := cStr + Trim( cString );
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: segunda-feira 23.4.2012 14:23
// Ultima Alt.:
// Descrição..: Proc. de atribuição de variáveis pra de caminhos
//              padrão e do executavel do arquivo ini
//
//------------------------------------------------------------ok-
procedure TFrGBNFe.pAtrCam(); // Atribui caminhos do ini nas variáveis padrão e executavel
var
 i       : integer;

begin

 if FrPar.ragLocSrv.ItemIndex = 0 then
  gCamPad :=  FrPar.edtCamSrv.Text
 else
  gCamPad := gCamExe;        // Caminho padrão será modificado mais adiante

 if FrPar.ragLocSrv.ItemIndex = 1 then
  begin
   for i := Length(gCamPad) - 1 downto 0 do
    if gCamPad[i] = '\' then
     begin
      gCamPad := Copy(gCamPad, 1, (i-1));
      Break;
     end;
  end;

 gCamPad := gCamPad + '\';

 // Atribui caminhos para as variáveis globais
 gCamRep        := (gCamExe + 'Report\');                              // Caminho dos Arquivos Report
 gCamSch        := (gCamExe + 'Schemas\NFe\');                         // Caminho dos Arquivos de Schemas\NFe
 gCamTxt        := (gCamPad + 'Txt\');                                 // Caminho dos Arquivos Textos - vai pro sp_ler_nfe_textos
 gCamXml        := (gCamPad + 'Arq\Emp' + gCodEmp + '\Xml\');          // Caminho dos Arquivos Xml
 gCamXmlI       := (gCamPad + 'Arq\Emp' + gCodEmp + '\XmlI\');         // Caminho dos Arquivos XmlI de Importação
 gCamCert       := (gCamExe);                                          // Caminho do Arquivo GBNFe.ini
 gCamPdf        := (gCamPad + 'Arq\Emp' + gCodEmp + '\Pdf\');          // Caminho dos Arquivos Pdf
 gCamLog        := (gCamPad + 'Arq\Emp' + gCodEmp + '\Log\');          // Caminho dos Arquivos Log
 gCamBak        := (gCamPad + 'Arq\Bak');                              // Caminho dos Arquivos Bak    - vai pro sp_bak
 gCamDoc        := (gCamPad + 'Arq\Emp' + gCodEmp + '\Doc\');          // Caminho dos Arquivos Doc
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: terça-feira 24.4.2012 10:15
// Ultima Alt.:
// Descrição..: Function que compartilha pasta de um outro micro e
//              mapeia com uma letra
// Obs........: Se "PLetra" for deixada em branco, o acesso será
//              liberado sem ser criada uma unidade lógica.
//              ESTA FUNÇÃO NÃO ESTA SENDO USADA
//------------------------------------------------------------ok-

Function TFrGBNFe.fUniMap(PServer, PLetra, PSenha :PWideChar): Boolean;
var
 err     : DWord;
Begin
 ERR := WNetAddConnection ( PServer , PSenha , PLetra );
 CASE ERR of
  ERROR_ACCESS_DENIED             : ShowMessage ( 'Acesso negado.' );
  ERROR_ALREADY_ASSIGNED          : ShowMessage ( 'A letra do drive especificada já está conectada.' );
  ERROR_BAD_DEV_TYPE              : ShowMessage ( 'O tipo de dispositivo e o tipo de recurso não são compatíveis.' );
  ERROR_BAD_DEVICE                : ShowMessage ( 'Letra inválida.' );
  ERROR_BAD_NET_NAME              : ShowMessage ( 'Nome do servidor não é válido ou não pode ser localizado.' );
  ERROR_BAD_PROFILE               : ShowMessage ( 'Formato incorreto de parâmetros.' );
  ERROR_CANNOT_OPEN_PROFILE       : ShowMessage ( 'Conexão permanente não disponível.' );
  ERROR_DEVICE_ALREADY_REMEMBERED : ShowMessage ( 'Uma entrada para o dispositivo especificado já está no perfil do usuário.' );
  ERROR_EXTENDED_ERROR            : ShowMessage ( 'Erro de rede.' );
  ERROR_INVALID_PASSWORD          : ShowMessage ( 'Senha especificada inválida.' );
  ERROR_NO_NET_OR_BAD_PATH        : ShowMessage ( 'A operação não foi concluída porque a rede não foi inicializada ou caminho é inválido.' );
  ERROR_NO_NETWORK                : ShowMessage ( 'A rede não está presente.' );
 else if Err > 0 then
  ShowMessage (IntToStr(Err));
 end;
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: terça-feira 25.4.2012 14:44
// Ultima Alt.:
// Descrição..: Function Disconecta uma unidade mapeada via
//              programação
//
// Obs........: Letra = Letra atribuida a unidade
//              Forcada = Força o cancelamento do mapeamento
//              ESTA FUNÇÃO NÃO ESTA SENDO USADA
//------------------------------------------------------------ok-

function TFrGBNFe.fDesRed(Letra:PWideChar; Forcada:boolean): String;
begin
 WNetCancelConnection2(Letra, CONNECT_UPDATE_PROFILE, Forcada);

 Case GetLastError() of
  1205: Result := 'Não foi possível abrir o perfil';
  1206: Result := 'Perfil do usuário não encontrado ou inválido';
  1208: Result := 'Ocorreu um Erro específico na rede';
  2138: Result := 'Rede não encontrada ou fora do ar';
  2250: Result := 'Mapeamento inválido ou não encontrado';
  2401: Result := 'Existem muitos arquivos abertos';
 else
  Result := 'Unidade disconectada com sucesso';
 end;
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: quinta-feira 26.4.2012 14:44
// Ultima Alt.:
// Descrição..: Function que trata da criação dos malditos tempo-
//              rarios DirXX.MB e os cria localmente
//
//------------------------------------------------------------ok-

function TFrGBNFe.fGetTempDir: String;
var
 TempDir: Array[0..255] of Char;
begin
 GetTempPath(255, @TempDir);
 Result := StrPas(TempDir);
end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: quinta-feira 26.4.2012 14:44
// Ultima Alt.:
// Descrição..: procedure que retorna a versão do aplicativo
//
//------------------------------------------------------------ok-
//Procedure TFrGBNFe.GBuildInfo(var V1, V2, V3, V4: Word);
//Var
// VerInfoSize, VerValueSize, Dummy: DWORD;
// VerInfo                         : Pointer;
// VerValue                        : PVSFixedFileInfo;
//begin
//
// VerInfoSize := GetFileVersionInfoSize(Pchar(ParamStr(0)), Dummy);
// GetMem(VerInfo, VerInfoSize);
// GetFileVersionInfo(Pchar(ParamStr(0)), 0, VerInfoSize, VerInfo);
// VerQueryValue(VerInfo, '''', Pointer(VerValue), VerValueSize);
//
// //with VerValue do
//  begin
//
//   V1 := VerValue.dwFileVersionMS shr 16;
//   V2 := VerValue.dwFileVersionMS and $FFFF;
//   V3 := VerValue.dwFileVersionLS shr 16;
//   V4 := VerValue.dwFileVersionLS and $FFFF;
//
//  end;
//
// Freemem(VerInfo, VerInfoSize);
//
//end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: quinta-feira 26.4.2012 14:44
// Ultima Alt.:
// Descrição..: function que retorna a versão do aplicativo
//
//------------------------------------------------------------ok-
//function GetVersionInfo: string;
//var
// V1, V2, V3, V4: Word;
//begin
//
// FrGBNFe.GBuildInfo(V1, V2, V3, V4);
// Result := IntToStr(V1) + '.' + IntToStr(V2) + IntToStr(V3) + ' (Build ' + IntToStr(V4) + ')';
//
//end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: quinta-feira 26.4.2012 14:44
// Ultima Alt.:
// Descrição..: function que retorna a versão do aplicativo
//
//------------------------------------------------------------ok-
function GetVersionInfo: string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
 Prog : string;
begin
 Prog := Application.Exename;
 VerInfoSize := GetFileVersionInfoSize(PWideChar(prog), Dummy);
 GetMem(VerInfo, VerInfoSize);
 GetFileVersionInfo(PWideChar(prog), 0, VerInfoSize, VerInfo);
 VerQueryValue(VerInfo, '\', Pointer(VerValue), VerValueSize);

 with VerValue^ do
   begin
    V1 := dwFileVersionMS shr 16;
    V2 := dwFileVersionMS and $FFFF;
    V3 := dwFileVersionLS shr 16;
    V4 := dwFileVersionLS and $FFFF;
   end;

 FreeMem(VerInfo, VerInfoSize);

 result := (IntToStr (v1) + '.' +
            IntToStr (v2) + '.' +
            IntToStr (v3) + '.' +
            IntToStr (v4));
end;

procedure TFrGBNFe.SpeedButton1Click(Sender: TObject);
begin

 Close;

end;

procedure TFrGBNFe.BitBtn3Click(Sender: TObject);
begin
 if ( FrCCe = nil ) then
  FrCCe := TFrCCe.Create(Application)
 else
  FrCCe := TFrCCe.Create(Application);
 FrCCe.BringToFront;
 FrCCe.ShowModal;

 // By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFe();
end;

//------------------------------------------------------------------------------
// Procedure  : TransmiteCCe
// Objetivo   : Efetua a transmissão da CCe para a base SEFAZ
// by Edson Lima ; 29-01-2013 ; 17:27
//------------------------------------------------------------------------------
Procedure TFrGBNFe.TransmiteCCe();
var
 I, vC, CdUf                              : Integer;
 vNnf, vP, Para, vI, xAux                 : String;
 Chave, idLote, CNPJ, nSeqEvento          : String;
 xAuxC, xAuxP, vChave                     : string;
 tpAmb                                    : TpcnTipoAmbiente;
 vUTC, CdMun, vdhEve                      : String;
 ddhEvento, dhEve                         : TDateTime;
 vVer_Laiaute, vcOrgao,    vdhEvento,
 vVer_CCe,   vcStat,       vxMotivo,
 vemailDest, vdhRegEvento, vnProt         : String;
 CC, xAuxA, sReplyTo                      : Tstrings;
 vEmailCancAssunto                        : TCaption;
 HorVer, Hor_DF, FusHor                   : Boolean;

begin

 //*******************************************************************************
 // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update
 gCdloja_Consiste := edt_CodEmp.Text;
 gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery5['nfe_demi']);
 gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
 gNNF_Consiste    := vartostr(DMFD.FDQuery5['nfe_nnf']);
 gSerie_Consiste  := vartostr(DMFD.FDQuery5['nfe_serie']);
 gModelo          := StrToIntDef(DMFD.FDQuery5['nfe_Modelo'], 0);
 gSerie           := StrToIntDef(gSerie_Consiste, 0);
 gChave_Consiste  := '';                                                        // está sendo atribuida depois da sp_calcula_digito_chave
 gModelo_Consiste := vartostr(DMFD.FDQuery5['nfe_modelo']);

 fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                                  // Mudança de versão

 pDefineRel();                                                                  // Define os paramertos dos relatórios

 // Atribuição de variáveis que serão usadas durante a transmissão
 Chave         := DMFD.FDQryGeral2['CCe_chave_nfe'];
 idLote        := DMFD.FDQryGeral2['CCe_idLote'];
 CNPJ          := copy(DMFD.FDQryGeral2['CCe_chave_nfe'], 7, 14);               //  DMFD.FDQuery4['cnpj'];
 nSeqEvento    := DMFD.FDQryGeral2['CCe_nSeqEvento'];
 xAux          := DMFD.FDQuery5['nfe_chave_nfe'];
 vChave        := xAux;
 xAux          := trim(gCamLog) + trim(xAux) + '-nfe.xml';
 vNnf          := gNNF_Consiste;

 if not ( FilesExists(PWideChar(xAux)) ) then
  begin
   Application.Messagebox('NFe não encontrada !','Atenção!',mb_iconstop+mb_ok);
   exit;
  end;

 // by Edson ; 2013/04/01T15:29 ; Contulta a nota na base sefaz para obter dados, ex: a data do evento..
 ACBrNFe1.NotasFiscais.Clear;
 ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
 ACBrNFe1.Consultar;

 if (DMFD.FDQuery4['Web_Ambiente'] <> Null) then
  begin
   if (DMFD.FDQuery4['Web_Ambiente'] = 'H') then
    tpAmb   := taHomologacao
   else
    tpAmb   := taProducao;
  end
 else
  tpAmb     := taHomologacao;

 (* processo de desenvolvimento *)
 ACBrNFe1.EventoNFe.Evento.Clear;
 with ACBrNFe1.EventoNFe.Evento.Add do
  begin
   infEvento.id                  := DMFD.FDQryGeral2['CCe_id'];
   infEvento.cOrgao              := strtointDef(DMFD.FDQuery4['codigo_uf'], 0);
   infEvento.tpAmb               := tpAmb;
   infEvento.CNPJ                := CNPJ;
   infEvento.chNFe               := Chave;

   //---------------------------------------------------------------------------
   // by Edson ; Verifica a data e hora do evento com UTC da UF
   //---------------------------------------------------------------------------
   // Nova rotina
   HorVer := False; Hor_DF := False; FusHor := False;

   if (DMFD.FDQuery4['DANFE_HorariodeVerao'] = 'S') then
    HorVer := True;

   if (DMFD.FDQuery4['DANFE_UsaHorarioDF'] = 'S') then
    Hor_DF := True;

   if (DMFD.FDQuery4['DANFE_FusoHorario'] = 'S') then
    FusHor := True;


   CdUf := StrToIntDef(DMFD.FDQuery4['codigo_uf'], 0);
   CdMun := DMFD.FDQuery4['codigo_municipio'];
   vdhEve := '';
   dhEve := Now();

   infEvento.dhEvento  := fFusHor(HorVer, Hor_DF, FusHor, CdUf, CdMun, vdhEve, dhEve );

   infEvento.tpEvento            := teCCe;
   infEvento.nSeqEvento          := StrToIntDef(nSeqEvento, 0);
   infEvento.detEvento.descEvento:= c_desc_Evento;
   infEvento.detEvento.xCorrecao := DMFD.FDQryGeral2['CCe_xCorrecao'];
   //---------------------------------------------------------------------------

  end;

 //-----------------------------------------------------------------------------
 // by
 //-----------------------------------------------------------------------------
 if ACBrNFe1.EnviarEvento(StrToIntDef(idLote, 0)) then
  begin

   xAuxA := TstringList.Create;

   with ACBrNFe1.EventoNFe do
   begin

    xAuxC := trim(gCamXml) +                                                    // Caminho do arquivo log (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
             FormatDateTime('yyyymm', now()) +                                  // Ano, mês
             '\Evento\CCe\' +                                                   // Evento e CCe
             Evento.Items[0].InfEvento.TipoEvento +                             // Tipo de evento, neste caso (110110)
             trim(vChave) +                                                     // Chave da NFe
             Format('%.2d', [Evento.Items[ 0].InfEvento.nSeqEvento]) +          // Sequencia do Evento com duas casas decimais
             '-procEventoNFe.xml';                                              // Final do nome + tipo (xml)

    xAuxP := trim(gCamPdf) +
             Evento.Items[0].InfEvento.TipoEvento +
             trim(vChave) +
             Format('%.2d', [Evento.Items[0].InfEvento.nSeqEvento]) +
            '-procEventoNFe.PDF';

    xAuxA.Add( trim(gCamXml) +                                                  // Caminho do arquivo log (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
              FormatDateTime('yyyymm', now()) +                                 // Ano, mês
              '\Evento\CCe\' +                                                  // Evento e CCe
              Evento.Items[0].InfEvento.TipoEvento +                            // Tipo de evento, neste caso (110110)
              trim(vChave) +                                                    // Chave da NFe
              Format('%.2d', [Evento.Items[ 0].InfEvento.nSeqEvento]) +         // Sequencia do Evento com duas casas decimais
              '-procEventoNFe.xml' );                                           // Final do nome + tipo (xml)

   end;

   memoLog.Clear;
   MemoResp.Lines.Text   := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetWS);
   MemoLog.Lines.Text    := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.Msg);
   memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.EnvEvento.RetornoWS);
   LoadXML(MemoResp, WBResposta);

   if ((VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '128')  or
       (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '135')  or
       (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '136')) then
    begin
     pGravaNFe('017', 'nProt_CCe',
                      'dhRegEvento_CCe',
                      'cStat_CCe',
                      'xMotivo_CCe',
                      'evento_CCe',
                      'xCorrecao_CCe',
                      '',
                      '',
                      '',
                      '',
                      '',
                      '',
                      '',
                      'codigo_loja',
                      'demi',
                      'nnf',
                      'serie',
                      '',
                      'Modelo',                                                 // Nome dos campos
                      ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt,
                      FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento),
                      ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat,
                      ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo,
                      StrToIntDef(nSeqEvento, 0),
                      DMFD.FDQryGeral2['CCe_xCorrecao'],
                      '',
                      '',
                      '',
                      '',
                      '',
                      '',
                      '',
                      edt_CodEmp.Text,
                      FormatDateTime('yyyy/mm/dd', DMFD.FDQuery5['nfe_demi']),
                      DMFD.FDQuery5['nfe_nnf'],
                      DMFD.FDQuery5['nfe_serie'],
                      '',
                      DMFD.FDQuery5['nfe_Modelo'],                              // Conteúdo dos Módulos
                      false);                                                   // Consiste [true/false]

     //pega os dados do destinatario
     DMFD.FDQuery2.Close;
     DMFD.FDQuery2.SQL.Clear;
     DMFD.FDQuery2.SQL.Add( 'Select                                                       ' );
     DMFD.FDQuery2.SQL.Add( 't1.*                                                         ' );
     DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                         ' );
     DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo      ' );
     DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                ' );
     DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe     = :parm2                                ' );
     DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
     DMFD.FDQuery2.Params[1].AsString  := (vChave);
     DMFD.FDQuery2.Open;
     if DMFD.FDQuery2.IsEmpty then
      begin
       MessageDlg('Destinatário não encontrado! ',mtInformation,[mbOK],0);
       exit;
      end;

     // Atualiza a tabela CCe com os dados retornados da sefaz

     vVer_Laiaute   :=  VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.verAplic);
     vcOrgao        :=  VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cOrgao);
     vdhEvento      :=  FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento);
     vVer_CCe       :=  GetBuildInfo('GbNFe.exe');
     vcStat         :=  VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat);
     vxMotivo       :=  VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo);
     if DMFD.FDQuery2['email'] <> null then
      vemailDest    :=  vartostr(DMFD.FDQuery2['email'])
     else
      vemailDest    :=  '';
     vdhRegEvento   :=  FormatDateTime('yyyy/mm/dd hh:nn:ss', ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento);
     gdhRegEvento   :=  ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.dhRegEvento;
     vnProt         :=  VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt);

     try
      DMFD.FDQuery2.DisableControls;
      DMFD.FDQuery2.Close;
      DMFD.FDQuery2.SQL.Clear;
      DMFD.FDQuery2.SQL.Add( 'Update NFe_CCe Set                                   ' );
      DMFD.FDQuery2.SQL.Add( '    Ver_Laiaute    = :Ver_Laiaute                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,cOrgao         = :cOrgao                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,dhEvento	      = :dhEvento	                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,Ver_CCe	       = :Ver_CCe                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,cStat          = :cStat                          ' );
      DMFD.FDQuery2.SQL.Add( '   ,xMotivo        = :xMotivo                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,emailDest      = :emailDest                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,dhRegEvento    = :dhRegEvento                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,nProt          = :nProt                          ' );
      DMFD.FDQuery2.SQL.Add( 'where                                                ' );
      DMFD.FDQuery2.SQL.Add( '    Codigo_Loja    = :Codigo_Loja  and               ' );
      DMFD.FDQuery2.SQL.Add( '    nNF            = :nNF          and               ' );
      DMFD.FDQuery2.SQL.Add( '    Evento         = :Evento       and               ' );
      DMFD.FDQuery2.SQL.Add( '    dEmi           = :dEmi         and               ' );
      DMFD.FDQuery2.SQL.Add( '    Modelo         = :Modelo       and               ' );
      DMFD.FDQuery2.SQL.Add( '    Serie          = :Serie                          ' );
      DMFD.FDQuery2.ParamByName('Ver_Laiaute').Value  := vVer_Laiaute;
      DMFD.FDQuery2.ParamByName('cOrgao').Value       := vcOrgao;
      DMFD.FDQuery2.ParamByName('dhEvento').Value     := vdhEvento;
      DMFD.FDQuery2.ParamByName('Ver_CCe').Value      := vVer_CCe;
      DMFD.FDQuery2.ParamByName('cStat').Value        := vcStat;
      DMFD.FDQuery2.ParamByName('xMotivo').Value      := vxMotivo;
      DMFD.FDQuery2.ParamByName('emailDest').Value    := vemailDest;
      DMFD.FDQuery2.ParamByName('dhRegEvento').Value  := vdhRegEvento;
      DMFD.FDQuery2.ParamByName('nProt').Value        := vnProt;
      DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToIntDef(edt_CodEmp.Text, 0);
      DMFD.FDQuery2.ParamByName('nNF').Value          := StrToIntDef(FrCCe.Edit_Nota.Text, 0);
      DMFD.FDQuery2.ParamByName('Evento').Value       := FrCCe.Edit_Evento.Text;
      DMFD.FDQuery2.ParamByName('dEmi').Value         := FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQuery5['nfe_demi']));
      DMFD.FDQuery2.ParamByName('Modelo').Value       := VarToStr(DMFD.FDQuery5['nfe_Modelo']);
      DMFD.FDQuery2.ParamByName('Serie').Value        := VarToStr(DMFD.FDQuery5['nfe_Serie']);

      try

       DMFD.FDQuery2.ExecSQL;

      except on e:Exception do

       Application.Messagebox(PWideChar('ERRO: CCe não atualizada!' + Char(13) +
                               e.Message),'Atenção!',mb_iconstop+mb_ok);

      end;

      DMFD.FDQuery2.Close;

     finally

      DMFD.FDQuery2.EnableControls;

     end;

    end

   else

    begin

     MessageDlg('Nota:[ ' + VarToStr(DMFD.FDQuery5['nfe_nnf']) + ' ]' + Chr(13) +
                'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + Chr(13) +
                ' - Motivo:' + ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.xMotivo + Chr(13) +
                'REJEIÇÃO', mtInformation, [mbOK], 0);
     exit;

    end;

   if ((VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '128')  or
       (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '135')  or
       (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '136')) then
    begin

     // Gera PDF e Imprime
     FrCCe.p_ImprimeCCe();

     //pega os dados do destinatario
     DMFD.FDQuery2.Close;
     DMFD.FDQuery2.SQL.Clear;
     DMFD.FDQuery2.SQL.Add( 'Select                                                       ' );
     DMFD.FDQuery2.SQL.Add( 't1.*                                                         ' );
     DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                         ' );
     DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo      ' );
     DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                ' );
     DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe     = :parm2                                ' );
     DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
     DMFD.FDQuery2.Params[1].AsString  := (vChave);
     DMFD.FDQuery2.Open;
     if DMFD.FDQuery2.IsEmpty then
      begin
       MessageDlg('Destinatário não encontrado! ',mtInformation,[mbOK],0);
       exit;
      end;

     //-------------------------------------------------------------------------
     // Envio de email
     //-------------------------------------------------------------------------
     para := vartostr(DMFD.FDQuery2['email']);

     if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

      begin

       repeat

        begin

         if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
          Exit;

         para := LowerCase(para);

         if ( not fValidaEmail(para, 'N') ) then
          Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

        end;

       until ( fValidaEmail(para, 'N') );

      end;

     if (para <> '') then
      begin

       CC:=TstringList.Create;

       if ( FrPar.edtEnvCC.Text <> '' ) then
        begin

         for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do

          begin

           if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or
              (I = Length(FrPar.edtEnvCC.Text)+1)then
            begin

             CC.Add( Trim(vI) );                                                //especifique um email válido
             vI     := '';

            end
           else
            vI := (vI + Trim(FrPar.edtEnvCC.Text[I]));

          end;

         vI := '';                                                              // Limpa variável
         vC := 0;                                                               // zera contador

         for I := 1 to (Length(Para)+1) do
          begin
           if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
            begin
             if vC > 0 then
              CC.Add( Trim(vI) )                                                //especifique um email válido
             else
              vP     := trim(vI);                                               // Atribui apenas o primeiro email

             vI := '';
             inc(vC);                                                           // Incrementa 1
            end
           else
            vI := (vI + Trim(Para[I]));
          end;

         Para := vP;

         sReplyTo := TStringList.Create;
         sReplyTo.Add('gbinfo.notafiscal@gmail.com');
         vEmailCancAssunto := FrPar.edtEmailCancAssunto.Text + ' - Nº:' + vNnf + ' Cancelada!';

         try
          try

           ACBrNFe1.EventoNFe.Evento.Clear;
           ACBrNFe1.EventoNFe.LerXML(xAuxC);
           ACBrNFe1.EnviarEmailEvento(
                      Para                                                      // email do destinatário
                    , vEmailCancAssunto                                         // Asunto
                    , FrPar.mmEmailMsg.Lines                                    // Mensagem
                    , CC                                                        // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                    , xAuxA                                                     // Anexos
                    , nil            );                //sReplyTo       );      // ReplyTo - "Responder a"

           MessageDlg('Carta de Correção ref a NFe:[ ' + vNnf + ' ]' + Chr(13) +
                       'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - Protocolo:' +
                       ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt + Chr(13) +
                       'ENVIADA POR EMAIL !', mtInformation, [mbOK], 0);

           except on e:exception do

            Application.Messagebox( pWideChar( 'Inconsistência no envio do email da nota:[ ' + vNnf + ' ]' + ' CCe!' + chr(13) +
                                    e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

          end;
         finally

          CC.Free;
          xAuxA.Free;
          sReplyTo.Free;

         end;

        end
         else
          MessageDlg('eMail não definido para o destinatário!', mtInformation, [mbOK], 0);

      end;

     if (VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) = '135') then
      MessageDlg('Carta de Correção ref a NFe:[ ' + vNnf + ' ]' + Chr(13) +
                 'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - Protocolo:' +
                 ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt + Chr(13) +
                 'REGISTRADA E VINCULADA A NFE !', mtInformation, [mbOK], 0)
     else
      MessageDlg('Carta de Correção ref a NFe:[ ' + vNnf + ' ]' + Chr(13) +
                 'Status: ' + VarToStr(ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.cStat) + ' - Protocolo:' +
                 ACBrNFe1.WebServices.EnvEvento.EventoRetorno.retEvento.Items[0].RetInfEvento.nProt + Chr(13) +
                 'REGISTRADA, MAS NÃO VINCULADA A NFE !', mtInformation, [mbOK], 0);

    end;
  end
 else
  begin
   with ACBrNFe1.WebServices.EnvEvento do
    begin
     raise Exception.Create('Ocorreram erros ao enviar a Carta de Correção:' + sLineBreak +
                            'Lote: ' + IntToStr(EventoRetorno.idLote) + sLineBreak +
                            'Ambiente: ' + TpAmbToStr(EventoRetorno.tpAmb) + sLineBreak +
                            'Orgao: ' + IntToStr(EventoRetorno.cOrgao) + sLineBreak +
                            sLineBreak +
                            'Status: ' + IntToStr(EventoRetorno.cStat) + sLineBreak +
                            'Motivo: ' + EventoRetorno.xMotivo);
    end;
  end
end;

//------------------------------------------------------------------------------
// Procedure  : ConsultaCCe
// Objetivo   : Efetua a consulta da CCe para a base SEFAZ
// by Edson Lima ; 02-10-2013 ; 17:18
//------------------------------------------------------------------------------
Procedure TFrGBNFe.ConsultaCCe();
var
 i, vC, nSEve                             : Integer;
 vNnf, vP, Para, vI, xAux                 : String;
 Chave, idLote, CNPJ, nSeqEvento          : String;
 xAuxC, vChave, vtpEvento                 : string;
 tpAmb                                    : TpcnTipoAmbiente;
 vUTC                                     : String;
 ddhEvento                                : TDateTime;
 vctpAmb, vcOrgao, vcChave, vcStat,
 vxMotivo, vemailDest, vdhRegEvento,
 vnProt, vVer_Laiaute, vVer_CCe           : String;
 vnSequencia1, vnSequencia2               : Integer;
begin
 //-----------------------------------------------------------------------------
 // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update
 gCdloja_Consiste := edt_CodEmp.Text;
 gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery5['nfe_demi']);
 gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
 gNNF_Consiste    := vartostr(DMFD.FDQuery5['nfe_nnf']);
 gSerie_Consiste  := vartostr(DMFD.FDQuery5['nfe_serie']);
 gSerie           := StrToIntDef(gSerie_Consiste, 0);
 gChave_Consiste  := vartostr(DMFD.FDQuery5['nfe_chave_nfe']);
 gModelo_Consiste := vartostr(DMFD.FDQuery5['nfe_modelo']);

 // Atribuição de variáveis que serão usadas durante a transmissão
 Chave         := DMFD.FDQryGeral2['CCe_chave_nfe'];
 idLote        := DMFD.FDQryGeral2['CCe_idLote'];
 vTpEvento     := DMFD.FDQryGeral2['CCe_TpEvento'];
 CNPJ          := copy(DMFD.FDQryGeral2['CCe_chave_nfe'], 7, 14);               //  DMFD.FDQuery4['cnpj'];
 nSeqEvento    := DMFD.FDQryGeral2['CCe_nSeqEvento'];
 nSEve         := StrToIntDef(nSeqEvento, 0);
 xAux          := DMFD.FDQuery5['nfe_chave_nfe'];
 vChave        := xAux;
 xAux          := trim(gCamLog) + trim(xAux) + '-nfe.xml';
 vNnf          := gNNF_Consiste;
 vC            := 0;

 // by Edson ; 2013/04/01T15:29 ; Contulta a nota na base sefaz para obter dados, ex: a data do evento..
 ACBrNFe1.NotasFiscais.Clear;
 ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
 ACBrNFe1.Consultar;

 With ACBrNFe1.WebServices do
  begin

   vnSequencia1 := consulta.procEventoNFe.Count;

   if (vnSequencia1 < nSEve) then
    begin
     MessageDlg('NF-e sem eventos registrados! - Qtd.Eventos: ' + IntToStr(vnSequencia1) + '',mtInformation,[mbOK],0);
     exit;
    end;

   if consulta.procEventoNFe.Count <> 0 then
    begin

     for i := 0 to consulta.procEventoNFe.Count - 1 do
      begin

       if (VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.InfEvento.TipoEvento) = vtpEvento) then
        begin

         vVer_Laiaute   := VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.verAplic);
         vcOrgao        := VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.cOrgao);
         vVer_CCe       := GetBuildInfo('GbNFe.exe');

         vcStat         := VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.cStat);
         vctpAmb        := TpAmbToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.InfEvento.tpAmb);
         vxMotivo       := VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.xMotivo);
         vnProt         := VarToStr(Consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0].RetInfEvento.nProt);
         vdhRegEvento   := FormatDateTime('yyyy/mm/dd hh:nn:ss', Consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0].RetInfEvento.dhRegEvento);
         gdhRegEvento   := Consulta.procEventoNFe.Items[i].RetEventoNFe.retEvento.Items[0].RetInfEvento.dhRegEvento;
         vcChave        := VarToStr(consulta.procEventoNFe.Items[i].RetEventoNFe.InfEvento.chNFe);

         vC             := i;

        end;

      end;

     if gImprimindoCCe then
      begin
       MessageDlg('DADOS DA CC-e da NOTA: ' + vartostr(DMFD.FDQuery5['nfe_nnf']) + char(13) +
                  ' Status = ' + vcStat + ' - ' + vxMotivo + char(13) +
                  ' Ambiente = ' + vctpAmb + ' - Protocolo = ' + vnProt + char(13) +
                  ' Dt.Reg.Evento = ' + vdhRegEvento + char(13) +
                  ' Chave = ' + vcChave ,mtInformation,[mbOK],0);

       // Mostra Retorno
       memoLog.Clear;
       MemoResp.Lines.Text   := UTF8Encode(Consulta.RetWS);                       // Modificado depois da atualização do acbr de 02/12/2014 de (RetWS) para (Consulta.RetWS)
       MemoLog.Lines.Text    := UTF8Encode(Consulta.Msg);
       memoRespWS.Lines.Text := UTF8Encode(Consulta.RetornoWS);                   // Modificado depois da atualização do acbr de 02/12/2014 de (RetornoWS) para (Consulta.RetornoWS)
       LoadXML(MemoResp, WBResposta);
      end;

     if ((consulta.procEventoNFe.Items[vC].RetEventoNFe.cStat = 128)  or
         (consulta.procEventoNFe.Items[vC].RetEventoNFe.cStat = 135)  or
         (consulta.procEventoNFe.Items[vC].RetEventoNFe.cStat = 136)) then
      begin

       pGravaNFe('017', 'nProt_CCe',
                        'dhRegEvento_CCe',
                        'cStat_CCe',
                        'xMotivo_CCe',
                        'evento_CCe',
                        'xCorrecao_CCe',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        'codigo_loja',
                        'demi',
                        'nnf',
                        'serie',
                        'chave_nfe',
                        'modelo',                                               // Nomes dos campos
                        Consulta.procEventoNFe.Items[vC].RetEventoNFe.retEvento.Items[0].RetInfEvento.nProt,
                        FormatDateTime('yyyy/mm/dd hh:nn:ss', Consulta.procEventoNFe.Items[vC].RetEventoNFe.retEvento.Items[0].RetInfEvento.dhRegEvento),
                        consulta.procEventoNFe.Items[vC].RetEventoNFe.cStat,
                        consulta.procEventoNFe.Items[vC].RetEventoNFe.xMotivo,
                        StrToIntDef(nSeqEvento, 0),
                        DMFD.FDQryGeral2['CCe_xCorrecao'],
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        '',
                        edt_CodEmp.Text,
                        FormatDateTime('yyyy/mm/dd', DMFD.FDQuery5['nfe_demi']),
                        DMFD.FDQuery5['nfe_nnf'],
                        DMFD.FDQuery5['nfe_serie'],
                        consulta.protNFe.chNFe,
                        DMFD.FDQuery5['nfe_modelo'],                            // Conteúdo dos campos
                        true);                                                  // Consiste [true/false]

       //pega os dados do destinatario
       DMFD.FDQuery2.Close;
       DMFD.FDQuery2.SQL.Clear;
       DMFD.FDQuery2.SQL.Add( 'Select                                                       ' );
       DMFD.FDQuery2.SQL.Add( 't1.*                                                         ' );
       DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                         ' );
       DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo      ' );
       DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                ' );
       DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe     = :parm2                                ' );
       DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
       DMFD.FDQuery2.Params[1].AsString  := (vChave);
       DMFD.FDQuery2.Open;

       if DMFD.FDQuery2.IsEmpty then
        begin
         MessageDlg('Nfe não encontrada! ',mtInformation,[mbOK],0);
         exit;
        end;

       if DMFD.FDQuery2['email'] <> null then
        vemailDest    :=  vartostr(DMFD.FDQuery2['email'])
       else
        vemailDest    :=  '';

       // Atualiza a tabela CCe com os dados retornados da sefaz
       try
        DMFD.FDQuery2.DisableControls;
        DMFD.FDQuery2.Close;
        DMFD.FDQuery2.SQL.Clear;
        DMFD.FDQuery2.SQL.Add( 'Update NFe_CCe Set                                   ' );
        DMFD.FDQuery2.SQL.Add( '    Ver_Laiaute    = :Ver_Laiaute                    ' );
        DMFD.FDQuery2.SQL.Add( '   ,cOrgao         = :cOrgao                         ' );
        DMFD.FDQuery2.SQL.Add( '   ,dhEvento	      = :dhEvento	                      ' );
        DMFD.FDQuery2.SQL.Add( '   ,Ver_CCe	       = :Ver_CCe                        ' );
        DMFD.FDQuery2.SQL.Add( '   ,cStat          = :cStat                          ' );
        DMFD.FDQuery2.SQL.Add( '   ,xMotivo        = :xMotivo                        ' );
        DMFD.FDQuery2.SQL.Add( '   ,emailDest      = :emailDest                      ' );
        DMFD.FDQuery2.SQL.Add( '   ,dhRegEvento    = :dhRegEvento                    ' );
        DMFD.FDQuery2.SQL.Add( '   ,nProt          = :nProt                          ' );
        DMFD.FDQuery2.SQL.Add( 'where                                                ' );
        DMFD.FDQuery2.SQL.Add( '    Codigo_Loja    = :Codigo_Loja  and               ' );
        DMFD.FDQuery2.SQL.Add( '    nNF            = :nNF          and               ' );
        DMFD.FDQuery2.SQL.Add( '    Evento         = :Evento       and               ' );
        DMFD.FDQuery2.SQL.Add( '    dEmi           = :dEmi         and               ' );
        DMFD.FDQuery2.SQL.Add( '    Modelo         = :Modelo       and               ' );
        DMFD.FDQuery2.SQL.Add( '    Serie          = :Serie                          ' );
        DMFD.FDQuery2.ParamByName('Ver_Laiaute').Value  := vVer_Laiaute;
        DMFD.FDQuery2.ParamByName('cOrgao').Value       := vcOrgao;
        DMFD.FDQuery2.ParamByName('dhEvento').Value     := vdhRegEvento;
        DMFD.FDQuery2.ParamByName('Ver_CCe').Value      := vVer_CCe;
        DMFD.FDQuery2.ParamByName('cStat').Value        := vcStat;
        DMFD.FDQuery2.ParamByName('xMotivo').Value      := vxMotivo;
        DMFD.FDQuery2.ParamByName('emailDest').Value    := vemailDest;
        DMFD.FDQuery2.ParamByName('dhRegEvento').Value  := vdhRegEvento;
        DMFD.FDQuery2.ParamByName('nProt').Value        := vnProt;
        DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToIntDef(edt_CodEmp.Text, 0);
        DMFD.FDQuery2.ParamByName('nNF').Value          := StrToIntDef(FrCCe.Edit_Nota.Text, 0);
        DMFD.FDQuery2.ParamByName('Evento').Value       := FrCCe.Edit_Evento.Text;
        DMFD.FDQuery2.ParamByName('dEmi').Value         := FormatDateTime('yyyy/mm/dd', VarToDateTime(DMFD.FDQuery5['nfe_demi']));
        DMFD.FDQuery2.ParamByName('Modelo').Value       := VarToStr(DMFD.FDQuery5['nfe_Modelo']);
        DMFD.FDQuery2.ParamByName('Serie').Value        := VarToStr(DMFD.FDQuery5['nfe_Serie']);
        try

         DMFD.FDQuery2.ExecSQL;

        except on e:Exception do

         Application.Messagebox(PWideChar('ERRO: CCe não atualizada!' + Char(13) +
                                e.Message),'Atenção!',mb_iconstop+mb_ok);

        end;

        DMFD.FDQuery2.Close;

       finally

        DMFD.FDQuery2.EnableControls;

       end;

      end
     else
      begin

       MessageDlg('Nota:[ ' + VarToStr(DMFD.FDQuery5['nfe_nnf']) + ' ]' + Chr(13) +
                  'Status: ' + VarToStr(consulta.procEventoNFe.Items[vC].RetEventoNFe.cStat) + Chr(13) +
                  ' - Motivo:' + consulta.procEventoNFe.Items[vC].RetEventoNFe.xMotivo + Chr(13) +
                  'REJEIÇÃO', mtInformation, [mbOK], 0);
       exit;

      end;
    end;
  end;
end;

//------------------------------------------------------------------------------
// Procedure  : EnviaEmailCCe
// Objetivo   : Reenvia emails da CCe
// by Edson Lima ; 13-01-2014 ; 19:09
//------------------------------------------------------------------------------
Procedure TFrGBNFe.EnviaEmailCCe();
var
 I, vC, nSeqEvento                        : Integer;
 vNnf, vP, Para, vI, xAux                 : String;
 Chave, idLote, CNPJ                      : String;
 xAuxC, xAuxP, vChave                     : string;
 tpAmb                                    : TpcnTipoAmbiente;
 vUTC                                     : String;
 ddhEvento, vvdhRegEvento                 : TDateTime;
 vVer_Laiaute, vcOrgao,    vdhEvento,
 vVer_CCe,   vcStat,       vxMotivo,
 vemailDest, vdhRegEvento, vnProt         : String;
 sMensagem, CC, Anexos                    : Tstrings;

begin

 //-----------------------------------------------------------------------------
 // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update
 gCdloja_Consiste := edt_CodEmp.Text;
 gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQuery5['nfe_demi']);
 gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
 gNNF_Consiste    := vartostr(DMFD.FDQuery5['nfe_nnf']);
 gSerie_Consiste  := vartostr(DMFD.FDQuery5['nfe_serie']);
 gSerie           := StrToIntDef(gSerie_Consiste, 0);
 gChave_Consiste  := '';                                                        // está sendo atribuida depois da sp_calcula_digito_chave
 gModelo_Consiste := vartostr(DMFD.FDQuery5['nfe_modelo']);

 // Atribuição de variáveis que serão usadas durante a transmissão
 Chave         := DMFD.FDQryGeral2['CCe_chave_nfe'];
 idLote        := DMFD.FDQryGeral2['CCe_idLote'];
 CNPJ          := copy(DMFD.FDQryGeral2['CCe_chave_nfe'], 7, 14);               //  DMFD.FDQuery4['cnpj'];
 nSeqEvento    := DMFD.FDQryGeral2['CCe_nSeqEvento'];
 xAux          := DMFD.FDQuery5['nfe_chave_nfe'];
 vChave        := xAux;
 xAux          := trim(gCamLog) + trim(xAux) + '-nfe.xml';
 vNnf          := gNNF_Consiste;

 if ( Trim(FrCCe.Edit_dtRegEvento.Text) = '' ) then
  vvdhRegEvento  := Now()
 else if (FrCCe.Edit_dtRegEvento.Text = '30/12/1899' ) then
  begin
   if ( gdhRegEvento <> 30/12/1899 ) then
    vvdhRegEvento  := gdhRegEvento
   else
    begin
     Application.Messagebox('Data de registro desatualizadas, Efetue uma consulta antes!','Atenção!',mb_iconstop+mb_ok);
     Exit;
    end;
  end
 else
  vvdhRegEvento  := StrToDateTime(FrCCe.Edit_dtRegEvento.Text);

 if (DMFD.FDQuery4['Web_Ambiente'] <> Null) then
  begin
   if (DMFD.FDQuery4['Web_Ambiente'] = 'H') then
    tpAmb   := taHomologacao
   else
    tpAmb   := taProducao;
  end
 else
  tpAmb     := taHomologacao;

 CC          := TstringList.Create;
 sMensagem   := TstringList.Create;
 Anexos      := TstringList.Create;
 sMensagem.Add('Segue Documentos CCe anexos');

 //-----------------------------------------------------------------------------

 xAuxP := trim(gCamPDF) +                                                       // Caminho do arquivo pdf (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
          DMFD.FDQryGeral2['CCe_tpEvento'] +                                    // Tipo de evento, neste caso (110110)
          trim(vChave) +                                                        // Chave da NFe
          Format('%.2d', [nSeqEvento]) +                                        // Sequencia do Evento com duas casas decimais
          '-procEventoNFe.pdf';                                                 // Final do nome + tipo (pdf)

 xAuxC := trim(gCamXml) +                                                       // Caminho do arquivo log (gCamXml contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
          FormatDateTime('yyyymm', vvdhRegEvento) +                             // Ano, mês
          '\Evento\CCe\' +                                                      // Evento e CCe
          DMFD.FDQryGeral2['CCe_tpEvento'] +                                    // Tipo de evento, neste caso (110110)
          trim(vChave) +                                                        // Chave da NFe
          Format('%.2d', [nSeqEvento]) +                                        // Sequencia do Evento com duas casas decimais
          '-procEventoNFe.xml';                                                 // Final do nome + tipo (xml)

 if not FileExists(xAuxC) then
  begin
   MessageDlg('Arquivo XML CCe' + chr(13) + '[' + xAuxC + ']' + chr(13) + 'não existe ! ', mtInformation, [mbOk], 0);
   //Application.Messagebox('Arquivo XML CCe [' + char(xAuxC) + '] não existe ! ', 'Atenção!',mb_iconstop+mb_ok);
   exit;
  end;

 if not FileExists(xAuxP) then
  begin
   MessageDlg('Arquivo PDF CCe' + chr(13) + '[' + xAuxP + ']' + chr(13) + 'não existe ! ', mtInformation, [mbOk], 0);
   //Application.Messagebox('Arquivo PDF CCe [' + char(xAuxP) + '] não existe ! ', 'Atenção!',mb_iconstop+mb_ok);
   exit;
  end;

 Anexos.Add(xAuxC);
 Anexos.Add(xAuxP);

 //pega os dados do destinatario
 DMFD.FDQuery2.Close;
 DMFD.FDQuery2.SQL.Clear;
 DMFD.FDQuery2.SQL.Add( 'Select                                                       ' );
 DMFD.FDQuery2.SQL.Add( 't1.*                                                         ' );
 DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                         ' );
 DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo      ' );
 DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                ' );
 DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe     = :parm2                                ' );
 DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
 DMFD.FDQuery2.Params[1].AsString  := (vChave);
 DMFD.FDQuery2.Open;
 if DMFD.FDQuery2.IsEmpty then
  begin
   MessageDlg('Destinatário não encontrado! ',mtInformation,[mbOK],0);
   exit;
  end;

 para := vartostr(DMFD.FDQuery2['email']);

 if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

  begin

   repeat

    begin

     if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
      Exit;

     para := LowerCase(para);

     if ( not fValidaEmail(para, 'N') ) then
      Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

    end;

   until ( fValidaEmail(para, 'N') );

  end;

 if (Para <> '') then
  begin
   if FrPar.edtEnvCC.Text = '' then

    IdMessage.Recipients.Add.Text := 'nfe@gbinformatica.com.br'                 //especifique um email válido

   else

    for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
     begin

      if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
       begin

        CC.Add(trim(vI));                                                       //especifique um email válido
        vI := '';

       end

      else

       vI := (vI + FrPar.edtEnvCC.Text[I]);

     end;

    vI := '';                                                                   // Limpa variável
    vC := 0;                                                                    // zera contador

    for I := 1 to (Length(Para)+1) do
     begin

      if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
       begin

        if vC > 0 then
         CC.Add(trim(vI))                                                       //especifique um email válido
        else
         vP := trim(vI);                                                        // Atribui apenas o primeiro email

        vI := '';
        inc(vC);                                                                // Incrementa 1

       end

      else

       vI := (vI + Trim(Para[I]));

     end;

    Para := vP;

    // Envia email do xml CCe

    try
     try

      ACBrNFe1.EnviarEmail
       (
          Para
        , 'Carta de Correção ref a NFe:[ ' + vNnf + ' ]' + ' - ' +
          'Protocolo: ' + DMFD.FDQryGeral2['CCe_nProt']
        , sMensagem
        , CC
        , anexos
        , nil
       );

      MessageDlg('Carta de Correção ref a NFe:[ ' + vNnf + ' ]' + Chr(13) +
                 'Status: ' + DMFD.FDQryGeral2['CCe_cStat'] + ' - ' + DMFD.FDQryGeral2['CCe_xMotivo'] + Chr(13) +
                 'Protocolo: ' + DMFD.FDQryGeral2['CCe_nProt'] + Chr(13) +
                 'EMAIL ENVIADO COM SUCESSO !', mtInformation, [mbOK], 0);

     except on e:exception do

      Application.Messagebox( pWideChar( 'Inconsistência no envio do email!' + chr(13) +
                             e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

     end;

    finally

     CC.Free;
     sMensagem.Free;
     Anexos.Free;

    end;

  end;

end;

procedure TFrGBNFe.EsconderRespostas1Click(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
// Funcao     : OnlyNumbers
// Parametros : Texto
// Objetivo   : Retorna somente os números de 'sTexto'
//------------------------------------------------------------------------------
function TFrGBNFe.OnlyNumbers (var sTexto : String; sRetorno : String = 'N' ) : String;
var
   i: integer;
begin
 Result := '';

 for i := 1 to Length( sTexto ) do
  if sRetorno = 'N' then
   begin
    if sTexto[i] in ['0'..'9'] then
     Result := Result + sTexto[i];
   end
  else if sRetorno = 'C' then
   begin
    if( sTexto[i] in ['0'..'9'] ) or ( sTexto[i] in ['a'..'z'] ) or ( sTexto[i] in ['A'..'Z'] ) then
     Result := Result + sTexto[i];
   end;
end;

//------------------------------------------------------------------------------
// Funcao     : f_Consiste
// Parametros : nnf1 e nnf2, retorna true ou false
// Objetivo   : Retorna verdadeiro se a nnf1 for igual a nnf2
// Author     : by Edson Lima ; 2013/03/04 ; 10:28
//------------------------------------------------------------------------------
function TFrGBNFe.fConsiste(locErr, cdloj1, cdloj2, demi1,  demi2, nnf1,
                                    nnf2,   ser1,   ser2,   chv1,  chv2,
                                    mod1,   mod2 :String) : Boolean;

begin
 if ((trim(cdloj1) = trim(cdloj2)) and (trim(demi1) = trim(demi2)) and
     (trim(nnf1)   = trim(nnf2))   and (trim(ser1)  = trim(ser2))  and
     (trim(chv1)   = trim(chv2))   and (trim(mod1)  = trim(mod2))) then
  begin
   gDeuErrConsiste := false;
   Result := true;
  end
 else
  begin

   ShowMessage('Atenção!  Houve uma insconsistência nesse ponto do processo.' + chr(13) +
               'Faça um PRINT desta tela e envie para o suporte da GB p/a de-' + chr(13) +
               'vida correção:Empresa-> ' + cdloj1 + ' = ' + cdloj2 + ' Dt.Emis. -> ' + demi1 + ' = ' + demi2 + '' + chr(13) +
               'Número da Nota -> ' + nnf1 + ' = ' + nnf2 + ' Série -> ' + ser1 + ' = ' + ser2 + '' + ' LocErr -> ' + locerr  + chr(13) +
               'Número da Chave-> ' + chv1 + ' = ' + chv2 + chr(13) +
               'Modelo da Nota -> ' + mod1 + ' = ' + mod2 + chr(13) +
               'O processo será abortado! - e-mail: <sac@gbinformatica.com.br>');
   gDeuErrConsiste := true;
   Result := false;

  end;
end;

//******************************************************************************

procedure TFrGBNFe.MovepPendentes1Click(Sender: TObject);
var
 X : integer;

begin

 // Define se é contingência ou transmitidas
 if ( (RadioGroup1.itemindex < 1) or (RadioGroup1.itemindex > 2) ) then exit;

 // No caso de suporte deve entrar com a senha
 FrGBNFe.pSuporteSenha();

 if ( gSenhaBD <> '' ) then
  begin

   // by Edson Lima ; 2013-7-17T1024 ; Chama a procedure de atribuição de seleção da TreeList
   if gAtuFSD then
    pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery10)
   else
    pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery5);

   //---------------------------------------------------------------------------

   if not fTemSel( cxTL, cxTLbSel ) then exit;                                  // verifica se tem item selecionado na treelist

   for X := 0 to cxTL.Count -1 do                                               // Percorre a treelist

    begin

     if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then               // Verifica se o item está selecionado

      begin

       // Filtra a nfe selecionada com select
       pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                  StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                  StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                  cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                  cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

       gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
       gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

       if ( gCpt = 1 ) then
        pDefineRel()                                                            // Define o tipo de Relatório FortesReport
       else
        pDefineRelFR();                                                         // Define o tipo de Relatório FastReport

       gCdloja_Consiste := edt_CodEmp.Text;
       gdEmi_Consiste   := FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']);
       gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
       gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
       gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
       gSerie           := StrToIntDef(gSerie_Consiste, 0);
       gChave_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']);
       gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

       if gAtuFSD then
        begin

         pGravaNFe('016', 'situacao',
                          'motivo',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          'codigo_loja',
                          'demi',
                          'nnf',
                          'serie',
                          'chave_nfe',
                          'modelo',                                             // Nome dos campos
                          '',
                          'Movida de Contingências',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          '',
                          edt_CodEmp.Text, FormatDateTime('yyyy/mm/dd',
                          DMFD.FDQryGeral2['nfe_demi']),
                          DMFD.FDQryGeral2['nfe_nnf'],
                          DMFD.FDQryGeral2['nfe_serie'],
                          DMFD.FDQryGeral2['nfe_chave_nfe'],
                          DMFD.FDQryGeral2['nfe_modelo'],                       // Conteúdo dos campos
                          true);                                                // Consiste [true/false]

         gAtuFSD := False;

        end

       else

        begin

         if ( (copy(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']), 35, 1) = '4') and
              (RadioGroup1.itemindex <> 1) ) then
          pGravaNFe('016', 'situacao', 'motivo', '', '', '', '', '', '', '', '', '', '', '', 'codigo_loja', 'demi', 'nnf', 'serie', 'chave_nfe', 'modelo',
                    AnsiUpperCase('EPEC'), 'Movida das Transmitidas', '', '', '', '', '', '', '', '', '', '', '', edt_CodEmp.Text,
                    FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']), DMFD.FDQryGeral2['nfe_nnf'],
                    DMFD.FDQryGeral2['nfe_serie'], DMFD.FDQryGeral2['nfe_chave_nfe'], DMFD.FDQryGeral2['nfe_modelo'], true)
         else if ( (copy(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']), 35, 1) = '5') and
              (RadioGroup1.itemindex <> 1) ) then
          pGravaNFe('016', 'situacao', 'motivo', '', '', '', '', '', '', '', '', '', '', '', 'codigo_loja', 'demi', 'nnf', 'serie', 'chave_nfe', 'modelo',
                    AnsiUpperCase('FSDA'), 'Movida das Transmitidas', '', '', '', '', '', '', '', '', '', '', '', edt_CodEmp.Text,
                    FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']), DMFD.FDQryGeral2['nfe_nnf'],
                    DMFD.FDQryGeral2['nfe_serie'], DMFD.FDQryGeral2['nfe_chave_nfe'], DMFD.FDQryGeral2['nfe_modelo'], true)
         else if (copy(vartostr(DMFD.FDQryGeral2['nfe_chave_nfe']), 35, 1) = '9') then
          pGravaNFe('016', 'situacao', 'motivo', '', '', '', '', '', '', '', '', '', '', '', 'codigo_loja', 'demi', 'nnf', 'serie', 'chave_nfe', 'modelo',
                    AnsiUpperCase('OFFL'), 'Movida das Transmitidas', '', '', '', '', '', '', '', '', '', '', '', edt_CodEmp.Text,
                    FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']), DMFD.FDQryGeral2['nfe_nnf'],
                    DMFD.FDQryGeral2['nfe_serie'], DMFD.FDQryGeral2['nfe_chave_nfe'], DMFD.FDQryGeral2['nfe_modelo'], true)
         else
          pGravaNFe('016', 'situacao', 'motivo', '', '', '', '', '', '', '', '', '', '', '', 'codigo_loja', 'demi', 'nnf', 'serie', 'chave_nfe', 'modelo',
                    '',                           'Movida das Transmitidas', '', '', '', '', '', '', '', '', '', '', '', edt_CodEmp.Text,
                    FormatDateTime('yyyy/mm/dd', DMFD.FDQryGeral2['nfe_demi']), DMFD.FDQryGeral2['nfe_nnf'],
                    DMFD.FDQryGeral2['nfe_serie'], DMFD.FDQryGeral2['nfe_chave_nfe'], DMFD.FDQryGeral2['nfe_modelo'], true);

        end;

      end;

    end;

   pAtuNFe();

  end;

end;

//------------------------------------------------------------------------------
// Procedure  : pGravaNFe
// Parametros : c01 - c10 nome dos campos - p01 - p10 são parametros
// Objetivo   : Centralizar os updates em um só lugar
// Author     : by Edson Lima ; 2013/03/11 ; 16:30
//------------------------------------------------------------------------------
procedure TFrGBNFe.pGravaNFe(locErr, c01, c02, c03, c04, c05, c06, c07, c08, c09,
                                     c10, c11, c12, c13, c14, c15, c16, c17, c18,
                                     c19: String;
                                     p01, p02, p03, p04, p05, p06, p07, p08, p09,
                                     p10, p11, p12, p13, p14, p15, p16, p17, p18,
                                     p19: Variant;
                                     Consiste                         : Boolean);
begin
 // by Edson Lima ; 2013/03/13 ; 09:26 ; Função de consistência para evitar duplicidade de chave nnf
 if Consiste then
  if not fConsiste(locErr, VarToStr(p14), gCdloja_Consiste,
                           vartostr(p15), gdEmi_Consiste,
                           vartostr(p16), gNNF_Consiste,
                           vartostr(p17), gSerie_Consiste,
                           vartostr(p18), gChave_Consiste,
                           vartostr(p19), gModelo_Consiste) then Exit;

 try
  DMFD.FDQuery2.DisableControls;
  DMFD.FDQuery2.Close;
  DMFD.FDQuery2.SQL.Clear;

  // Deve haver pelo menos um campo a ser gravado na tabela nfe
  DMFD.FDQuery2.SQL.Add(  'Update nfe set                                    ' );
  if trim(c01) <> '' then
   DMFD.FDQuery2.SQL.Add( '               ' + c01 + ' = :' + c01 + '         ' );
  if trim(c02) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c02 + ' = :' + c02 + '         ' );
  if trim(c03) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c03 + ' = :' + c03 + '         ' );
  if trim(c04) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c04 + ' = :' + c04 + '         ' );
  if trim(c05) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c05 + ' = :' + c05 + '         ' );
  if trim(c06) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c06 + ' = :' + c06 + '         ' );
  if trim(c07) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c07 + ' = :' + c07 + '         ' );
  if trim(c08) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c08 + ' = :' + c08 + '         ' );
  if trim(c09) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c09 + ' = :' + c09 + '         ' );
  if trim(c10) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c10 + ' = :' + c10 + '         ' );
  if trim(c11) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c11 + ' = :' + c11 + '         ' );
  if trim(c12) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c12 + ' = :' + c12 + '         ' );
  if trim(c13) <> '' then
   DMFD.FDQuery2.SQL.Add( ',              ' + c13 + ' = :' + c13 + '         ' );

  DMFD.FDQuery2.SQL.Add( '  where ' + c14 + ' = :' + c14 + '                 ' );
  DMFD.FDQuery2.SQL.Add( '    and ' + c15 + ' = :' + c15 + '                 ' );
  DMFD.FDQuery2.SQL.Add( '    and ' + c16 + ' = :' + c16 + '                 ' );
  DMFD.FDQuery2.SQL.Add( '    and ' + c17 + ' = :' + c17 + '                 ' );
  DMFD.FDQuery2.SQL.Add( '    and ' + c19 + ' = :' + c19 + '                 ' );

  if trim(c01) <> '' then
   DMFD.FDQuery2.ParamByName(c01).Value    := p01;
  if trim(c02) <> '' then
   DMFD.FDQuery2.ParamByName(c02).Value    := p02;
  if trim(c03) <> '' then
   DMFD.FDQuery2.ParamByName(c03).Value    := p03;
  if trim(c04) <> '' then
   DMFD.FDQuery2.ParamByName(c04).Value    := p04;
  if trim(c05) <> '' then
   DMFD.FDQuery2.ParamByName(c05).Value    := p05;
  if trim(c06) <> '' then
   DMFD.FDQuery2.ParamByName(c06).Value    := p06;
  if trim(c07) <> '' then
   DMFD.FDQuery2.ParamByName(c07).Value    := p07;
  if trim(c08) <> '' then
   DMFD.FDQuery2.ParamByName(c08).Value    := p08;
  if trim(c09) <> '' then
   DMFD.FDQuery2.ParamByName(c09).Value    := p09;
  if trim(c10) <> '' then
   DMFD.FDQuery2.ParamByName(c10).Value    := p10;
  if trim(c11) <> '' then
   DMFD.FDQuery2.ParamByName(c11).Value    := p11;
  if trim(c12) <> '' then
   DMFD.FDQuery2.ParamByName(c12).Value    := p12;
  if trim(c13) <> '' then
   DMFD.FDQuery2.ParamByName(c13).Value    := p13;

  DMFD.FDQuery2.ParamByName(c14).Value     := p14;
  DMFD.FDQuery2.ParamByName(c15).Value     := p15;
  DMFD.FDQuery2.ParamByName(c16).Value     := p16;
  DMFD.FDQuery2.ParamByName(c17).Value     := p17;
  DMFD.FDQuery2.ParamByName(c19).Value     := p19;
  try

   DMFD.FDQuery2.ExecSQL;

  except on e:Exception do

   Application.Messagebox(PWideChar('ERRO: O Registro não foi atualizado!' + Char(13) +
                          e.Message),'Atenção!',mb_iconstop+mb_ok);

  end;

  DMFD.FDQuery2.Close;

 finally

  DMFD.FDQuery2.EnableControls;

 end;

end;

//------------------------------------------------------------------------------
// Procedure  : pEnviaEmailCan
// Parametros : c01 - c10 nome dos campos - p01 - p10 são parametros
// Objetivo   : Centralizar os updates em um só lugar
// Author     : by Edson Lima ; 2013/03/11 ; 16:30
//------------------------------------------------------------------------------
procedure TFrGBNFe.pEnviaEmailCan();
var
 I, vC, X                : Integer;
 vNnf, vP, idLote        : String;
 xAuxO, xAuxD            : String;
 Para, xAuxC, vChave, vI : String;
 CC, xAuxA, sReplyTo     : Tstrings;
 vEmailCancAssunto       : TCaption;

begin

 vAux := '';

 if not fTemSel( cxTL, cxTLbSel ) then exit;                                    // verifica se tem item selecionado na treelist

 try

  for X := 0 to cxTL.Count -1 do                                                // Percorre a treelist

   begin

    if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                // Verifica se o item está selecionado

     begin

      // Filtra a nfe selecionada com select
      pSelNfe( DMFD.FDQryGeral2, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                                 StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                                 StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                                 cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                                 cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

      //*******************************************************************************
      // by Edson ; 2013-03-04 ;08:41 ; Atribuição para consistir nnf na hora do update

      gModelo := DMFD.FDQryGeral2['nfe_Modelo'];
      gSerie  := DMFD.FDQryGeral2['nfe_Serie'];

      if ( gCpt = 1 ) then
       pDefineRel()                                                             // Define o tipo de Relatório FortesReport
      else
       pDefineRelFR();                                                          // Define o tipo de Relatório FastReport

      gCdloja_Consiste := edt_CodEmp.Text;
      gdEmi_Consiste   := vartostr(DMFD.FDQryGeral2['nfe_demi']);
      gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
      gNNF_Consiste    := vartostr(DMFD.FDQryGeral2['nfe_nnf']);
      gSerie_Consiste  := vartostr(DMFD.FDQryGeral2['nfe_serie']);
      gSerie           := StrToIntDef(gSerie_Consiste, 0);
      gChave_Consiste  := '';                                                   // está sendo atribuida depois da sp_calcula_digito_chave
      gModelo_Consiste := vartostr(DMFD.FDQryGeral2['nfe_modelo']);

      xAux   := DMFD.FDQryGeral2['nfe_chave_nfe'];
      vChave := xAux;

      if MessageDlg('Confirma o envio do email de cancelamento da nota [ ' + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) + ' ]?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
       begin
        xAux  := trim(gCamLog) + trim(xAux) + '-nfe.xml';

        ACBrNFe1.NotasFiscais.Clear;
        ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
        ACBrNFe1.Consultar;

        idLote := ( VarToStr(DMFD.FDQryGeral2['nfe_Serie']) + VarToStr(DMFD.FDQryGeral2['nfe_codigo_loja']) + VarToStr(DMFD.FDQryGeral2['nfe_nnf']) );

        memoLog.Clear;
        ACBrNFe1.EventoNFe.Evento.Clear;
        ACBrNFe1.EventoNFe.idLote := StrToIntDef(idLote, 0) ;

        with ACBrNFe1.EventoNFe.Evento.Add do
        begin
         infevento.tpAmb           := ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb;
         infEvento.dhEvento        := ACBrNFe1.WebServices.Consulta.DhRecbto;
         infEvento.tpEvento        := teCancelamento;
         infEvento.detEvento.xJust := vAux;
        end;

        xAuxA := TstringList.Create;

        with ACBrNFe1.EventoNFe do
        begin

         //---------------------------------------------------------------------
         xAuxO :=   trim(gCamPdf) +                                             // Caminho do arquivo Pdf
                    trim(vChave) +                                              // Chave da NFe
                    '-cancelado-nfe.pdf';                                       // Final do nome + tipo (Pdf)

         xAuxD :=   trim(gCamPdf) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.Pdf';                                       // Final do nome + tipo (Pdf)
         //---------------------------------------------------------------------

         xAuxC :=   trim(gCamXml) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    FormatDateTime('yyyymm', Evento.Items[0].InfEvento.dhEvento) + // Ano, mês
                    '\Evento\Cancelamento\' +                                   // Evento e Cancelamento
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.xml';                                       // Final do nome + tipo (xml)

         xAuxA.Add( trim(gCamXml) +                                             // Caminho do arquivo log (gCamlog contém o caminho padrão) ex: c:\Sistemas\GBNFe\Arq\Emp001\log\
                    FormatDateTime('yyyymm', Evento.Items[0].InfEvento.dhEvento) + // Ano, mês
                    '\Evento\Cancelamento\' +                                   // Evento e Cancelamento
                    Evento.Items[0].InfEvento.TipoEvento +                      // Tipo de evento, neste caso (110111)
                    trim(vChave) +                                              // Chave da NFe
                    '01' +                                                      // Sequencia do Evento com duas casas decimais
                    '-procEventoNFe.xml' );                                     // Final do nome + tipo (xml)

        end;

        // by Edson ; 2013/03/27T15:02 ; Verifica a existência dos arquivos de cancelamento
        if not FileExists(xAuxC) then
         begin
          //xAuxC := trim(gCamLog) + Trim(vChave) + '-can.xml';
          if not FileExists(xAuxC) then
           begin
            MessageDlg('Arquivo XML de Cancelamento não Encontrado !',mtInformation,[mbOK],0);
            exit;
           end;
         end;

        vNnf := DMFD.FDQryGeral2['nfe_nnf'];

        //pega os dados do destinatario
        DMFD.FDQuery2.Close;
        DMFD.FDQuery2.SQL.Clear;
        DMFD.FDQuery2.SQL.Add( 'Select                                                 ' );
        DMFD.FDQuery2.SQL.Add( 't1.*                                                 ' );
        DMFD.FDQuery2.SQL.Add( 'from destinatario t1                                                 ' );
        DMFD.FDQuery2.SQL.Add( 'inner join nfe t2 on t2.codigo_destinatario = t1.codigo                                               ' );
        DMFD.FDQuery2.SQL.Add( 'where t2.codigo_loja = :parm1                                  ' );
        DMFD.FDQuery2.SQL.Add( 'and t2.chave_nfe = :parm2                                  ' );
        DMFD.FDQuery2.Params[0].AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
        DMFD.FDQuery2.Params[1].AsString  := (vChave);
        DMFD.FDQuery2.Open;
        if DMFD.FDQuery2.IsEmpty then
         begin
          MessageDlg('Nfe cancelada não existe',mtInformation,[mbOK],0);
          exit;
         end;

        para := vartostr(DMFD.FDQuery2['email']);

        if ( (trim(para) = '') or (FrPar.CheckBox10.Checked) ) then

         begin

          repeat

           begin

            if not InputQuery(vartostr(DMFD.FDQuery2['razao_social']), 'Email de destino:', Para) then
             begin
              pAtuNFeT();
              Exit;
             end;

            para := LowerCase(para);

            if ( not fValidaEmail(para, 'N') ) then
             Application.Messagebox('Campo de email do destinatário inválido! ','Atenção!',mb_iconstop+mb_ok);

           end;

          until ( fValidaEmail(para, 'N') );

         end;

        if vartostr(DMFD.FDQuery2['email']) <> '' then
         begin
          if FrPar.edtEnvCC.Text = '' then
           IdMessage.CCList.EMailAddresses := 'nfe@gbinformatica.com.br'        //especifique um email válido
          else
           begin

            CC := TstringList.Create;

            if ( FrPar.edtEnvCC.Text <> '') then
             for I := 1 to (Length(FrPar.edtEnvCC.Text)+1) do
              begin
               if (FrPar.edtEnvCC.Text[I] = ',') or (FrPar.edtEnvCC.Text[I] = ';') or (I = Length(FrPar.edtEnvCC.Text)+1)then
                begin
                 CC.Add(trim(vI));                                              //especifique um email válido
                 vI := '';
                end
               else
                vI := (vI + FrPar.edtEnvCC.Text[I]);
              end;

            vI := '';                                                           // Limpa variável
            vC := 0;                                                            // zera contador

            for I := 1 to (Length(Para)+1) do
             begin
              if (Para[I] = ',') or (Para[I] = ';') or (I = Length(Para)+1)then
               begin
                if vC > 0 then
                 CC.Add(trim(vI))                                               //especifique um email válido
                else
                 vP := trim(vI);                                                // Atribui apenas o primeiro email

                vI := '';
                inc(vC);                                                        // Incrementa 1
               end
              else
               vI := (vI + Para[I]);
             end;

            Para := vP;

           end;

           sReplyTo := TStringList.Create;
           sReplyTo.Add('gbinfo.notafiscal@gmail.com');
           vEmailCancAssunto := FrPar.edtEmailCancAssunto.Text + ' - Nº:' + vNnf + ' Cancelada!';

           try
            try

             ACBrNFe1.EventoNFe.Evento.Clear;
             ACBrNFe1.EventoNFe.LerXML(xAuxC);

             if ( gModelo = 65 ) then
              begin

               if not FileExists(xAuxO) then
                ACBrNFe1.ImprimirEventoPDF;                                     // Gera Pdf da NFCe

               CopyFile(PWideChar(xAuxO), PWideChar(xAuxD), False);

              end;

             ACBrNFe1.EnviarEmailEvento(
                        Para                                                    // email do destinatário
                      , vEmailCancAssunto                                       // Asunto
                      , FrPar.mmEmailMsg.Lines                                  // Mensagem
                      , CC                                                      // Lista com emails que serÃ£o enviado cÃ³pias - TStrings
                      , xAuxA                                                   // Anexos
                      , nil            );            //sReplyTo       );        // ReplyTo - "Responder a"

              Application.MessageBox(PWideChar('Email da nota:[ ' + vNnf + ' ]' + ' enviado com sucesso!'), 'Atenção', MB_ICONINFORMATION );

             except on e:exception do

              Application.Messagebox( pWideChar( 'Inconsistência no envio do email da nota:[ ' + vNnf + ' ]' + ' cancelada!' + chr(13) +
                                      e.Message ), 'Atenção!', MB_ICONERROR+mb_ok);

            end;
           finally

            CC.Free;
            xAuxA.Free;
            sReplyTo.Free;

           end;

         end
        else
         MessageDlg('eMail não definido para o destinatário!', mtInformation, [mbOK], 0);

       end;

     end;

   end;

 except on e:Exception do
  begin

   MessageDlg(PWideChar('Inconsistência no envio do email!' + Chr(13) +
                         e.Message),mtInformation,[mbOK],0);
   pAtuNFeT();

  end;

 end;

 pAtuNFeT(); // By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade

end;

//------------------------------------------------------------------------------
// Função....: MarcaBloco
// Objetivo..: Marca um bloco de Nodes selecionados
// Parametros: Recebe a TreeList a marcar
// Criação...: 2013/7/17T1017
// Autor.....: Edson Lima (Modificador)
//------------------------------------------------------------------------------
procedure TFrGBNFe.MarcaBloco( cxTL : TcxTreeList; blMarca : Boolean; blTodos : Boolean = False );
Var
 I : Integer;

begin
 cxTL.BeginUpdate;

 Try
  if blTodos then
   for I := 0 to cxTL.Count - 1 do
    begin
     if blMarca then
      cxTL.Items[I].Texts[00] := 'True'
     else
      cxTL.Items[I].Texts[00] := 'False';
    end
  else
   for I := 0 to cxTL.Count -1 do
    begin
     if blMarca then
      cxTL.Selections[I].Texts[00] := 'True'
     else
      cxTL.Selections[I].Texts[00] := 'False';
    end;
 Finally
  cxTL.EndUpdate;
  cxTL.Refresh;
 end;
end;

//------------------------------------------------------------------------------
// Função....: pAtribSel
// Objetivo..: Atribui seleção da TreeList e Monta a Query referenciada
// Parametros: Recebe a TreeList e o nome do campo
// Criação...: 2013/7/17T1017
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrGBNFe.pAtribSel( dxTL : TcxTreeList; cxTLdDem : TcxTreeListColumn;
                                                  cxTLINot : TcxTreeListColumn;
                                                  cxTLsMod : TcxTreeListColumn;
                                                  cxTLsSer : TcxTreeListColumn;
                                                  FD       : TFDQuery );        // Procedure de atribuição de seleção nas querys
Var
 I : Integer;
begin
 // by Edson ; 2013-7-16T0922 ; Atribui seleção da TreeList e Monta a query das pendentes

 for I := 0 to cxTL.Count - 1 do
  begin

   FD.First;

   while (not FD.Eof) do
    begin


     FD.FieldByName('Checado').ReadOnly := False;

     if ((FD['nfe_demi']   = cxTL.Items[I].Texts[cxTLdDem.ItemIndex])  and
         (FD['nfe_nnf']    = cxTL.Items[I].Texts[cxTLlNot.ItemIndex])  and
         (FD['nfe_Modelo'] = cxTL.Items[I].Texts[cxTLsMod.ItemIndex])  and
         (FD['nfe_Serie']  = cxTL.Items[I].Texts[cxTLsSer.ItemIndex])) then
      begin
       if ( cxTL.Items[I].Selected ) then
        begin

         FD.Edit;
         FD['Checado'] := 'Y';

        end
       else
        begin

         FD.Edit;
         FD['Checado'] := 'N';

        end;
      end;

     FD.Next;

    end;
  end;

end;

//------------------------------------------------------------------------------
// Procedure.: pAtuTL
// Objetivo..: Atualiza dados das TreeLest
// Parametros: Recebe a TreeList e a Query - Monta a grade
// Criação...: 2013/7/26T1508
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrGBNFe.pAtuTL( cxTL : TcxTreeList; cxTLbSel  :  Tcxtreelistcolumn ;
                                               cxTLsDes  :  Tcxtreelistcolumn ;
                                               cxTLsCpf  :  Tcxtreelistcolumn ;
                                               cxTLsCod  :  Tcxtreelistcolumn ;
                                               cxTLsMod  :  Tcxtreelistcolumn ;
                                               cxTLsSer  :  Tcxtreelistcolumn ;
                                               cxTLdDem  :  Tcxtreelistcolumn ;
                                               cxTLlNot  :  Tcxtreelistcolumn ;
                                               cxTLcVal  :  Tcxtreelistcolumn ;
                                               cxTLsTrs  :  Tcxtreelistcolumn ;
                                               cxTLsCnc  :  Tcxtreelistcolumn ;
                                               cxTLsSit  :  Tcxtreelistcolumn ;
                                               cxTLsPro  :  Tcxtreelistcolumn ;
                                               cxTLsRec  :  Tcxtreelistcolumn ;
                                               cxTLsCha  :  Tcxtreelistcolumn ;
                                               FD        :  TFDQuery );         // Atualiza dados das TreeLest
var
 nodPed : TcxTreeListNode;
begin

 cxTL.Clear;

 if FD.RecordCount > 0 Then
  Begin

   cxTL.BeginUpdate;

   Try

    FD.First;

    // Laço para montar grade

    While Not ( FD.Eof ) Do
     begin
      nodPed := cxTL.Add;

      nodPed.Values[cxTLbSel.ItemIndex] := 'False';

      nodPed.Values[cxTLsDes.ItemIndex] := FD.fieldByName('des_razao_social').AsString;
      nodPed.Values[cxTLsCpf.ItemIndex] := FD.fieldByName('des_cnpj').AsString;
      nodPed.Values[cxTLsCod.ItemIndex] := FD.fieldByName('nfe_codigo_destinatario').AsString;
      nodPed.Values[cxTLsMod.ItemIndex] := FD.fieldByName('nfe_modelo').AsString;
      nodPed.Values[cxTLsSer.ItemIndex] := FD.fieldByName('nfe_serie').AsString;
      nodPed.Values[cxTLdDem.ItemIndex] := FD.fieldByName('nfe_demi').AsDateTime;
      nodPed.Values[cxTLlNot.ItemIndex] := FD.fieldByName('nfe_nnf').AsString;
      nodPed.Values[cxTLcVal.ItemIndex] := FD.fieldByName('nfe_total_nf').AsCurrency;
      nodPed.Values[cxTLsTrs.ItemIndex] := FD.fieldByName('nfe_UsuTrs').AsString;
      nodPed.Values[cxTLsCnc.ItemIndex] := FD.fieldByName('nfe_UsuCnc').AsString;
      nodPed.Values[cxTLsSit.ItemIndex] := FD.fieldByName('nfe_situacao').AsString + ' ' + FD.fieldByName('nfe_motivo').AsString;
      nodPed.Values[cxTLsPro.ItemIndex] := FD.fieldByName('nfe_protocolo').AsString;
      nodPed.Values[cxTLsRec.ItemIndex] := FD.fieldByName('nfe_recibo').AsString;
      nodPed.Values[cxTLsCha.ItemIndex] := FD.fieldByName('nfe_chave_nfe').AsString;

      if ( FD.fieldByName('nfe_modelo').AsString = '65' ) then
       begin

        nodPed.Values[cxTLbImM.ItemIndex]      := 2;

       end

      else

       begin

        nodPed.Values[cxTLbImM.ItemIndex]      := 1;

       end;

     FD.Next;

    end;

  Finally

   cxTL.EndUpdate;

  end;

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2013-9-6T1507 ; Deletando arquivos xml's tempo da empresa,
//                                 utilizando caracter curinga '*'
//------------------------------------------------------------------------------
procedure TFrGBNFe.ConsultaWeb5inuClick(Sender: TObject);
var
 SearchRec     : TSearchRec;
 Result        : Integer;
 vAuxT         : String;
 vAnoIni       : String;
 vMesIni       : String;
 vDt1, vDt2    : TDateTime;
begin

 vDt1    := FrPar.cxdtp1.Date;
 vDt2    := now();

 vAnoIni := FormatDateTime('yyyy', vDt1);
 vMesIni := FormatDateTime('mm',   vDt1);

 while ( vDt1 <= vDt2 ) do
  begin

   vAuxT := ( vAnoIni + vMesIni );

   if ( FrPar.CheckBox.Checked ) then
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Aguade! Sistema excluindo arquivos temporários...';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     sleep(1000);
    end
   else
    begin
     if not gExcTmp then
      begin
       if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
       frmStatus.lblStatus.Caption := 'Desculpe! Parâmetros configurado para não permitir a exclusão de arquivos temporários...';
       frmStatus.BringToFront;
       frmStatus.Show;
       Application.ProcessMessages;
       sleep(4000);
       frmStatus.Close;
      end;
     Exit;
    end;

   Result:=FindFirst(gCamLog + '*temp.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*temp.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-sit.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-sit.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-lot.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-lot.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-rec.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-rec.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-eve.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-eve.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-evento.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-evento.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-sta.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-sta.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-cons-dpec.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-cons-dpec.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-sit-dpec.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-sit-dpec.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*nfe-dest.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*nfe-dest.Xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-dist-dfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-dist-dfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-con-dist-dfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-con-dist-dfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-ped-down-nfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-ped-down-nfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + '*-down-nfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + '*-down-nfe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml+SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + vAuxT + '\Down\*-procEventoNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + vAuxT + '\Down\*-procEventoNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + vAuxT + '\Down\*-resNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + vAuxT + '\Down\*-resNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamLog + vAuxT + '\Down\*-resEventoNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamLog + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + vAuxT + '\Down\*-resEventoNFe.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml + vAuxT + '\Down\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + vAuxT + '\Evento\Cancelamento\*-eve.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml + vAuxT + '\Evento\Cancelamento\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

   Result:=FindFirst(gCamXml + vAuxT + '\Inu\*-inu.xml', faAnyFile, SearchRec);
   while result=0 do
    begin
     if ( frmStatus = nil ) then
       frmStatus := TfrmStatus.Create(Application);
     frmStatus.lblStatus.Caption := 'Excluindo arquivo! [' + SearchRec.Name + '] Tam: [' + IntToStr(SearchRec.Size) + ']';
     frmStatus.BringToFront;
     frmStatus.Show;
     Application.ProcessMessages;
     DeleteFile(gCamXml + vAuxT + '\Inu\' + SearchRec.Name);
     Result:=FindNext(SearchRec);
    end;

    vDt1 := IncMonth(vDt1, 1);

    vAnoIni := FormatDateTime('yyyy', vDt1);
    vMesIni := FormatDateTime('mm',   vDt1);

  end;

 //-----------------------------------------------------------------------------

 if ( frmStatus <> nil ) then
  frmStatus.Hide;

 frmStatus.Close;

 FindClose(SearchRec);

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2016-01-11T1704 ; Exclui xml das notas -
//                                 utilizando caracter curinga '*'
//------------------------------------------------------------------------------
procedure TFrGBNFe.pExcluiXmlErro(M, S, N : String);                            // M = Modelo, S = Série, N = Nota
var
 SearchRec          : TSearchRec;
 Result             : Integer;
 caminho, mascara   : string;
 vDate              : TDateTime;
begin

 if ( frmStatus = nil ) then
   frmStatus := TfrmStatus.Create(Application);
 frmStatus.lblStatus.Caption := 'Aguade! Sistema excluindo arquivos xml da nota...';
 frmStatus.BringToFront;
 frmStatus.Show;
 Application.ProcessMessages;
 sleep(1000);

 vDate   := gDataEmi;

 caminho := (gCamXml + FormatDateTime('yyyymm', vDate) + gTN);
 mascara := ('*' + M + Format('%.3d', [StrToIntDef(S, 0)]) + Format('%.9d', [StrToIntDef(N, 0)]) + '*.xml');

 Result:=FindFirst(caminho + mascara , faAnyFile, SearchRec);

 while result=0 do
  begin
   if ( frmStatus = nil ) then
     frmStatus := TfrmStatus.Create(Application);
   frmStatus.lblStatus.Caption := 'Excluindo arquivos xml da pasta xml!';
   frmStatus.BringToFront;
   frmStatus.Show;
   Application.ProcessMessages;
   DeleteFile(caminho+SearchRec.Name);
   Result:=FindNext(SearchRec);
  end;

 caminho := (gCamLog);
 mascara := ('*' + M + Format('%.3d', [StrToIntDef(S, 0)]) + Format('%.9d', [StrToIntDef(N, 0)]) + '*.xml');

 Result:=FindFirst(caminho + mascara , faAnyFile, SearchRec);

 while result=0 do
  begin
   if ( frmStatus = nil ) then
     frmStatus := TfrmStatus.Create(Application);
   frmStatus.lblStatus.Caption := 'Excluindo arquivos xml da pasta log!';
   frmStatus.BringToFront;
   frmStatus.Show;
   Application.ProcessMessages;
   DeleteFile(gCamLog+SearchRec.Name);
   Result:=FindNext(SearchRec);
  end;

 //-----------------------------------------------------------------------------

 if ( frmStatus <> nil ) then
  frmStatus.Hide;

 FindClose(SearchRec);

end;

procedure TFrGBNFe.trvwNFeExit(Sender: TObject);
begin
 if gMostraXML then
  begin
   trvwNFe.Items.Clear;
   gMostraXML := False;
  end;
end;

procedure TFrGBNFe.BitBtn15Click(Sender: TObject);
begin

 // By Edson Lima 11.10.2013 ; 10:17 - Efetua varios dados com o xml gravado na Base de Dados
 if ( FrXML = nil ) then
   FrXML := TFrXML.Create(Application);
 FrXML.BringToFront;
 FrXML.ShowModal;

 // By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFe();

end;

//------------------------------------------------------------------------------
// Verifica existência da CCe em uma nota fiscal, Grava e retorna status
//------------------------------------------------------------------------------
function TFrGBNFe.fGravaCCe( nNF : Variant; cStat, xMotivo : String ) : Boolean;
begin
 try
  DMFD.FDQryGeral1.DisableControls;
  DMFD.FDQryGeral1.Close;
  DMFD.FDQryGeral1.SQL.Clear;
  DMFD.FDQryGeral1.SQL.Add( 'Select * from NFe_CCe                               ' );
  DMFD.FDQryGeral1.SQL.Add( ' where nNF         = :nNF                           ' );
  DMFD.FDQryGeral1.ParamByName('nNF').Value     := nNF;
  try
   DMFD.FDQryGeral1.Open;
  except
   Result := False;
  end;

  if not DMFD.FDQryGeral1.IsEmpty then
   begin
    DMFD.FDQryGeral1.SQL.Add( 'Update NFe_CCe Set                                ' );
    DMFD.FDQryGeral1.SQL.Add( '   ,cStat          = :cStat                       ' );
    DMFD.FDQryGeral1.SQL.Add( '   ,xMotivo        = :xMotiv                      ' );
    DMFD.FDQryGeral1.SQL.Add( ' where nNF         = :nNF                         ' );
    DMFD.FDQryGeral1.ParamByName('cStat').Value   := cStat;
    DMFD.FDQryGeral1.ParamByName('xMotivo').Value := xMotivo;
    DMFD.FDQryGeral1.ParamByName('nNF').Value     := nNF;
    try
     DMFD.FDQryGeral1.ExecSQL;
     result := True;
    except
     Result := False;
    end;
    DMFD.FDQryGeral1.Close;
   end;
 finally
  DMFD.FDQryGeral1.EnableControls;
 end;
end;

//------------------------------------------------------------------------------
// Function: p_CancelaCCe - Consiste em mudar o Status para
//           580 - Rejeição: O evento exige uma NF-e autorizada
//           (nfe cancelada)
// by Edson Lima ; 7/1/2014T1026 ; Cancela CCe caso tenha alt. na NFe
//------------------------------------------------------------------------------
function TFrGBNFe.fCancelaCCe(Codigo_loja, nNF, dEmi: String) : Boolean;
begin

 //DMFD.FDQryGeral2.Close;
 // DMFD.FDQryGeral2.ParamByName('Nota').Value := StrToIntDef(nNF, 0);
 //DMFD.FDQryGeral2.Open;

 if DMFD.FDQryGeral2.IsEmpty then
  begin
   result := False;
   exit;
  end;

 try
  DMFD.FDQuery2.DisableControls;
  DMFD.FDQuery2.Close;
  DMFD.FDQuery2.SQL.Clear;
  DMFD.FDQuery2.SQL.Add( 'Update NFe_CCe Set                                   ' );
  DMFD.FDQuery2.SQL.Add( '    cStat          = :cStat                          ' );
  DMFD.FDQuery2.SQL.Add( '   ,xMotivo        = :xMotivo                        ' );
  DMFD.FDQuery2.SQL.Add( 'where                                                ' );
  DMFD.FDQuery2.SQL.Add( '    Codigo_Loja    = :Codigo_Loja  and               ' );
  DMFD.FDQuery2.SQL.Add( '    nNF            = :nNF                            ' );
  DMFD.FDQuery2.ParamByName('cStat'      ).Value  := '580';
  DMFD.FDQuery2.ParamByName('xMotivo'    ).Value  := 'Rejeição: O evento exige uma NF-e autorizada (NF-e Cancelada)';
  DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToIntDef(Codigo_loja, 0);
  DMFD.FDQuery2.ParamByName('nNF'        ).Value  := StrToIntDef(nNF, 0);

  DMFD.FDQuery2.ExecSQL;
 except
  Application.Messagebox('ERRO: CCe não alterada !','Atenção!',mb_iconstop+mb_ok);
  result := False;
  exit;
 end;

 // Salva dados na NFe que foi excluido da CCe (atualiza o stat e motivo)
 try
  DMFD.FDQuery2.DisableControls;
  DMFD.FDQuery2.Close;
  DMFD.FDQuery2.SQL.Clear;
  DMFD.FDQuery2.SQL.Add( 'Update nfe set                                         ' );
  DMFD.FDQuery2.SQL.Add( '  cStat_CCe                = :cStat_CCe,               ' );
  DMFD.FDQuery2.SQL.Add( '  xMotivo_CCe              = :xMotivo_CCe              ' );
  DMFD.FDQuery2.SQL.Add( 'where codigo_loja          = :codigo_loja              ' );
  DMFD.FDQuery2.SQL.Add( '  and demi                 = :demi                     ' );
  DMFD.FDQuery2.SQL.Add( '  and nnf                  = :nnf                      ' );
  DMFD.FDQuery2.ParamByName('cStat_CCe'  ).Value    := '580';
  DMFD.FDQuery2.ParamByName('xMotivo_CCe').Value    := 'Rejeição: O evento exige uma NF-e autorizada (NF-e Cancelada)';
  DMFD.FDQuery2.ParamByName('codigo_loja').Value    := StrToIntDef(Codigo_loja, 0);
  DMFD.FDQuery2.ParamByName('demi'       ).Value    := gdEmi_Consiste;
  DMFD.FDQuery2.ParamByName('nnf'        ).Value    := StrToIntDef(nNF, 0);

  try

   DMFD.FDQuery2.ExecSQL;

  except on e:Exception do
   begin

    Application.Messagebox(PWideChar('ERRO: NFe não foi atualizado os dados da Nota!' + chr(13) +
                                      e.Message),'Atenção!',mb_iconstop+mb_ok);
    result := False;
    exit;

   end;

  end;

  DMFD.FDQuery2.Close;

 finally

  DMFD.FDQuery2.EnableControls;

 end;

 result := True;

end;

procedure TFrGBNFe.SpeedButton2Click(Sender: TObject);
var
 Aplic: string;
begin
 Aplic := gCamExe + 'Help\' + 'Manual Sistema GBNFe.chm';
 ShellExecute(0, nil, PWideChar(Aplic), nil, nil, Sw_Maximize);
end;

procedure TFrGBNFe.BitBtn16Click(Sender: TObject);
Begin

 //----------------------------------------------------------------------
 ACBrNFe1.Configuracoes.WebServices.AjustaAguardaConsultaRet := True;
 ACBrNFe1.Configuracoes.WebServices.IntervaloTentativas      := 2000;
 ACBrNFe1.Configuracoes.WebServices.Tentativas               := 10;
 ACBrNFe1.Configuracoes.WebServices.TimeOut                  := 6000;
 //----------------------------------------------------------------------

 if ( FrBuscaChave = nil ) then
  FrBuscaChave := TFrBuscaChave.Create(Application)
 else
  FrBuscaChave := TFrBuscaChave.Create(Application);
 FrBuscaChave.BringToFront;
 FrBuscaChave.ShowModal;

 // By Edson Lima 14.9.2012 ; 10:10 - Atualiza grade
 pAtuNFe();

end;

//------------------------------------------------------------------------------
// procedure : Verifica o vencimento do certificado digital
// by Edson Lima ; 2014-11-11T1632
//------------------------------------------------------------------------------
procedure TFrGBNFe.VerifCert();                                                 // Verifica o vencimento do certificado digital
var
 vQtdDias : Integer;
begin

 if not ACBrNFe1.Configuracoes.Certificados.VerificarValidade then              // trunk2 - Antes => if not ACBrNFe1.Configuracoes.Certificados.GetCertificado.IsValid.Result then
  exit;

 if (trim( ACBrNFe1.Configuracoes.Certificados.NumeroSerie ) <> '' ) then
  begin
   if ACBrNFe1.Configuracoes.Certificados.VerificarValidade then                // trunk2 - Antes => if ACBrNFe1.Configuracoes.Certificados.GetCertificado.IsValid.Result then
    begin
     vQtdDias := DaysBetween( now(), ACBrNFe1.SSL.CertDataVenc ) - 1;
     if ( vQtdDias <= 10 ) then
      if gVerifCert then
       if vQtdDias > 1 then

        Application.Messagebox( PWideChar(
         'Faltam ' + IntToStr(vQtdDias) + ' dias para CERTIFICADO DIGITAL VENCER!' + chr(13) +
         'Providencie um novo para substuir o existente!' + chr(13) +
         'GB INFORMÁTICA!'), 'Atenção!', MB_ICONASTERISK + mb_ok )

       else if (vQtdDias = 1) then

        Application.Messagebox( 'HOJE É O ÚLTIMO DIA DO SEU CERTIFICADO!' + chr(13) +
                                'INSTALE O NOVO CERTIFICADO DIGIAL! ' + chr(13) +
                                'GB INFORMÁTICA!', 'Atenção!', MB_ICONASTERISK + mb_ok )

       else if (vQtdDias = 0) then

        Application.Messagebox( 'O SEU CERTIFICADO ESTÁ VENCIDO !' + chr(13) +
                                'INSTALE O NOVO CERTIFICADO DIGIAL! ' + chr(13) +
                                'GB INFORMÁTICA!', 'Atenção!', MB_ICONASTERISK + mb_ok );

    end;
  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2014-11-19T1554
// procedure que grava o arquivo GBNFe.ini na pasta da empresa em referência
//------------------------------------------------------------------------------
procedure TFrGBNFe.GravarIni();
Var
 IniFile       : String ;
 Ini           : TIniFile ;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try

  Ini.WriteInteger( 'Certificado' + '-Emp' + gCodEmp, 'CodEmp_Ini', gCEIni) ;
  Ini.WriteInteger( 'Certificado' + '-Emp' + gCodEmp, '1º-2º_Cert', gPSCert) ;

 finally

  Ini.Free ;

 end;

 LerIni();

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2014-11-19T1554
// procedure que ler o arquivo GBNFe.ini na pasta da empresa em referência
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerIni();
Var
 IniFile     : String ;
 Ini         : TIniFile ;
 Ok          : Boolean;
 vPS         : Integer;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try

  if (trim(FrPar.edtNumSerie.Text) <> '') then
   vPS := 1
  else if (trim(FrPar.edtNumSerie2.Text) <> '') then
   vPS := 2
  else
   vPS := 0;

  gCEIni  := Ini.ReadInteger( 'Certificado' + '-Emp' + gCodEmp,'CodEmp_Ini', StrToIntDef(gCodEmp, 0)) ;
  gPSCert := Ini.ReadInteger( 'Certificado' + '-Emp' + gCodEmp,'1º-2º_Cert', vPS) ;

 finally

  Ini.Free ;

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2014-11-24T1725
// procedure que grava o arquivo GBNFe.ini o NSU da manifestação
//------------------------------------------------------------------------------
procedure TFrGBNFe.GravarNSU();
Var
 IniFile       : String ;
 Ini           : TIniFile ;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try
  Ini.WriteString( 'Manifesto', 'NSU', FrConsManif.Edit_NSU_nfe.Text) ;
  Ini.WriteBool( 'Manifesto', 'ULT', FrConsManif.CheckBox1.Checked);
  Ini.WriteInteger( 'Manifesto','EMI', FrConsManif.ComboBox2.ItemIndex ) ;
  Ini.WriteBool( 'Manifesto','PAD', FrConsManif.CheckBox2.Checked) ;
 finally
  Ini.Free ;
 end;

 LerNSU()

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2014-11-24T1725
// procedure que ler o arquivo GBNFe.ini o NSU da manifestação
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerNSU();
Var
 IniFile     : String ;
 Ini         : TIniFile ;
 Ok          : Boolean;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try
  FrConsManif.Edit_NSU_nfe.Text := Ini.ReadString( 'Manifesto','NSU', '0') ;
  FrConsManif.CheckBox1.Checked   := Ini.ReadBool( 'Manifesto','ULT', false) ;
  FrConsManif.ComboBox2.ItemIndex := Ini.ReadInteger( 'Manifesto','EMI', 0 ) ;
  FrConsManif.CheckBox2.Checked   := Ini.ReadBool( 'Manifesto','PAD', false) ;
 finally
  Ini.Free ;
 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2015-01-14T1041
// procedure que grava no arquivo GBNFe.ini o EMI da manifestação
//------------------------------------------------------------------------------
procedure TFrGBNFe.GravarEMI();
Var
 IniFile       : String ;
 Ini           : TIniFile ;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try
  Ini.WriteInteger( 'Manifesto','EMI', FrConsManif.ComboBox2.ItemIndex ) ;
  Ini.WriteBool( 'Manifesto','PAD', FrConsManif.CheckBox2.Checked) ;
 finally
  Ini.Free ;
 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2014-01-14T1046
// procedure que ler o arquivo GBNFe.ini o EMI da manifestação
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerEMI();
Var
 IniFile     : String ;
 Ini         : TIniFile ;
 Ok          : Boolean;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try
  FrConsManif.ComboBox2.ItemIndex := Ini.ReadInteger( 'Manifesto','EMI', 0 ) ;
  FrConsManif.CheckBox2.Checked   := Ini.ReadBool( 'Manifesto','PAD', false) ;
 finally
  Ini.Free ;
 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2015-04-30T0913 - UCPX
// procedure que grava o arquivo GBNFe.ini o Ultimo Caminho da Pesquisa dos XMLs
//------------------------------------------------------------------------------
procedure TFrGBNFe.GravarPesXML();
Var
 IniFile       : String ;
 Ini           : TIniFile ;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );
 gCamPesXML := FrImportXML.DirectoryListBox1.Directory;

 try
  Ini.WriteString( 'ImportXML', 'CamPesXML', gCamPesXML);
 finally
  Ini.Free ;
 end;

 LerPesXML();

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2015-04-30T0913 - UCPX
// procedure que ler o arquivo GBNFe.ini o Ultimo Caminho da Pesquisa dos XMLs
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerPesXML();
Var
 IniFile     : String ;
 Ini         : TIniFile ;
 Ok          : Boolean;
begin

 IniFile := gCamCert + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try
  gCamPesXML := Ini.ReadString( 'ImportXML', 'CamPesXML', '') ;
 finally
  Ini.Free ;
 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-6-30T1121
// procedure que grava o arquivo GBNFe.ini o Acesso Banco de Dados FareDac
//------------------------------------------------------------------------------
procedure TFrGBNFe.GravarBDFD();
Var
 IniFile           : String ;
 Ini               : TIniFile ;
 vLoginPrompt_NFe,
 vOSAuthent_NFe,
 vDriverID_NFe,
 vDatabase_NFe,
 vServer_NFe,
 vUserName_NFe,
 vPassword_NFe,
 vConnected_NFe,
 vCamBD_NFe        : String;
 vTpERP_Ger,
 vLoginPrompt_Ger,
 vOSAuthent_Ger,
 vDriverID_Ger,
 vDatabase_Ger,
 vServer_Ger,
 vUserName_Ger,
 vPassword_Ger,
 vConnected_Ger,
 vCamBD_Ger        : String;

begin

 IniFile := gCamExe + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );

 try

  // NFe
  vLoginPrompt_NFe  := BoolToStr(FrPar.chk_LoginPrompt_NFe.Checked);
  vOSAuthent_NFe    := BoolToStr(FrPar.OSAuthent_NFe.Checked);
  if ( FrPar.cbb_DriverID_NFe.Text <> '' )  then
   vDriverID_NFe    := FrPar.cbb_DriverID_NFe.Text;
  if ( FrPar.edt_Database_NFe.Text <> '' )  then
   begin
    vDatabase_NFe   := FrPar.edt_Database_NFe.Text;
    gNFe            := trim(vDatabase_NFe);
   end;
  if ( FrPar.edt_Server_NFe.Text <> '' )  then
   vServer_NFe      := FrPar.edt_Server_NFe.Text;
  if ( FrPar.edt_UserName_NFe.Text <> '' )  then
   vUserName_NFe    := FrPar.edt_UserName_NFe.Text;
  if ( trim(FrPar.edt_Password_NFe.Text) <> '' )  then
   vPassword_NFe    := Crypt( 'E',(trim(FrPar.edt_Password_NFe.Text)) )
  else
   vPassword_NFe    := trim(FrPar.edt_Password_NFe.Text);
  vConnected_NFe    := BoolToStr(FrPar.chk_Connected_NFe.Checked);
  vCamBD_NFe        := Trim(FrPar.edt_CamBD_NFe.Text);

  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_NFe', vLoginPrompt_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_NFe',   vOSAuthent_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_NFe',    vDriverID_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_NFe',    vDatabase_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_NFe',      vServer_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_NFe',    vUserName_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_NFe',    vPassword_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_NFe',   vConnected_NFe) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_NFe',       vCamBD_NFe) ;

  // ERP
  vTpERP_Ger        := FrPar.edt_TpERP_Ger.Text;
  vLoginPrompt_Ger  := BoolToStr(FrPar.chk_LoginPrompt_Ger.Checked);
  vOSAuthent_Ger    := BoolToStr(FrPar.OSAuthent_Ger.Checked);
  if ( FrPar.cbb_DriverID_Ger.Text <> '' )  then
   vDriverID_Ger    := FrPar.cbb_DriverID_Ger.Text;
  if ( FrPar.edt_Database_Ger.Text <> '' )  then
   vDatabase_Ger    := FrPar.edt_Database_Ger.Text;
  if ( FrPar.edt_Server_Ger.Text <> '' )  then
   vServer_Ger      := FrPar.edt_Server_Ger.Text;
  if ( FrPar.edt_UserName_Ger.Text <> '' )  then
   vUserName_Ger    := FrPar.edt_UserName_Ger.Text;
  if ( trim(FrPar.edt_Password_Ger.Text) <> '' )  then
   vPassword_Ger    := Crypt( 'E',(trim(FrPar.edt_Password_Ger.Text)) )
  else
   vPassword_Ger    := trim(FrPar.edt_Password_Ger.Text);
  vConnected_Ger    := BoolToStr(FrPar.chk_Connected_Ger.Checked);
  vCamBD_Ger        := Trim(FrPar.edt_CamBD_Ger.Text);

  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'TpERP_Ger', vTpERP_Ger);
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_Ger', vLoginPrompt_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_Ger',   vOSAuthent_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_Ger',    vDriverID_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_Ger',    vDatabase_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_Ger',      vServer_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_Ger',    vUserName_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_Ger',    vPassword_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_Ger',   vConnected_Ger) ;
  Ini.WriteString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_Ger',       vCamBD_Ger) ;

 finally

  Ini.Free ;

 end;

 LerBDFD();

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-6-30T1121
// procedure que ler o arquivo GBNFe.ini o Acesso Banco de Dados FareDac
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerBDFD();
Var
 IniFile, Secao    : String ;
 Ini               : TIniFile ;
 Ok                : Boolean;
 vLoginPrompt_NFe,
 vOSAuthent_NFe,
 vDriverID_NFe,
 vDatabase_NFe,
 vServer_NFe,
 vUserName_NFe,
 vPassword_NFe,
 vConnected_NFe,
 vCamBD_NFe        : String;
 vTpERP_Ger,
 vLoginPrompt_Ger,
 vOSAuthent_Ger,
 vDriverID_Ger,
 vDatabase_Ger,
 vServer_Ger,
 vUserName_Ger,
 vPassword_Ger,
 vConnected_Ger,
 vCamBD_Ger        : String;

begin

 IniFile := gCamExe + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );
 Secao   := 'BD_FireDAC-EMP' + gCodEmp;

 try

  try

   if ( Ini.SectionExists( Secao ) ) then
    begin

     // NFe
     vLoginPrompt_NFe                   := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_NFe', 'false') ;
     vOSAuthent_NFe                     := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_NFe',   'false') ;
     vDriverID_NFe                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_NFe',    '') ;
     vDatabase_NFe                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_NFe',    '') ;
     vServer_NFe                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_NFe',      '') ;
     vUserName_NFe                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_NFe',    '') ;
     vPassword_NFe                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_NFe',    '') ;
     vConnected_NFe                     := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_NFe',   'false') ;
     vCamBD_NFe                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_NFe',       '') ;

     if ( (vDriverID_NFe <> '') and (vDatabase_NFe <> '')   and
          (vServer_NFe <> '')   and (vUserName_NFe <> '') ) then
      begin

       FrPar.chk_LoginPrompt_NFe.Checked  := StrToBool(vLoginPrompt_NFe);
       FrPar.OSAuthent_NFe.Checked        := StrToBool(vOSAuthent_NFe);
       if ( vDriverID_NFe <> '' )  then
        FrPar.cbb_DriverID_NFe.Text       := vDriverID_NFe;
       if ( vDatabase_NFe <> '' )  then
        begin
         FrPar.edt_Database_NFe.Text      := vDatabase_NFe;
         gNFe                             := trim(vDatabase_NFe);
        end;
       if ( vServer_NFe <> '' )  then
        FrPar.edt_Server_NFe.Text         := vServer_NFe;
       if ( vUserName_NFe <> '' )  then
        FrPar.edt_UserName_NFe.Text       := vUserName_NFe;
       if ( vPassword_NFe <> '' )  then
        FrPar.edt_Password_NFe.Text       := Crypt( 'D',(vPassword_NFe) );
       FrPar.chk_Connected_NFe.Checked    := StrToBool(vConnected_NFe);
       FrPar.edt_CamBD_NFe.Text           := vCamBD_NFe;

      end;

     // ERP
     vTpERP_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'TpERP_Ger', '');
     vLoginPrompt_Ger                   := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_Ger', 'false') ;
     vOSAuthent_Ger                     := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_Ger',   'false') ;
     vDriverID_Ger                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_Ger',    '') ;
     vDatabase_Ger                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_Ger',    '') ;
     vServer_Ger                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_Ger',      '') ;
     vUserName_Ger                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_Ger',    '') ;
     vPassword_Ger                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_Ger',    '') ;
     vConnected_Ger                     := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_Ger',   'false') ;
     vCamBD_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_Ger',       '') ;

     if ( (vDriverID_Ger <> '') and (vDatabase_Ger <> '')   and
          (vServer_Ger <> '')   and (vUserName_Ger <> '') ) then
      begin

       FrPar.edt_TpERP_Ger.Text           := vTpERP_Ger;
       FrPar.chk_LoginPrompt_Ger.Checked  := StrToBool(vLoginPrompt_Ger);
       FrPar.OSAuthent_Ger.Checked        := StrToBool(vOSAuthent_Ger);
       if ( vDriverID_Ger <> '' )  then
        FrPar.cbb_DriverID_Ger.Text       := vDriverID_Ger;
       if ( vDatabase_Ger <> '' )  then
        FrPar.edt_Database_Ger.Text       := vDatabase_Ger;
       if ( vServer_Ger <> '' )  then
        FrPar.edt_Server_Ger.Text         := vServer_Ger;
       if ( vUserName_Ger <> '' )  then
        FrPar.edt_UserName_Ger.Text       := vUserName_Ger;
       if ( vPassword_Ger <> '' )  then
        FrPar.edt_Password_Ger.Text       := Crypt( 'D',(vPassword_Ger) );
       FrPar.chk_Connected_Ger.Checked    := StrToBool(vConnected_Ger);
       FrPar.edt_CamBD_Ger.Text           := vCamBD_Ger;

      end;

     gTemSqlEmp := true

    end
   else

    gTemSqlEmp := false;

  Except on e:Exception do

   Application.Messagebox( PWideChar( 'Inconsistência na leitura do arquivo ini' + chr(13) +
                           e.Message ), PWideChar( 'Leitura do Aquivo Ini' ),
                           MB_ICONINFORMATION + mb_ok );

  end;

 finally

  Ini.Free ;

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-6-30T1121
// procedure que ler o arquivo GBNFe.ini EMP o Acesso Banco de Dados FareDac
//------------------------------------------------------------------------------
procedure TFrGBNFe.LerBDFD_E();
Var
 IniFile, Secao    : String ;
 Ini               : TIniFile ;
 Ok                : Boolean;

begin

 IniFile := gCamExe + 'GBNFe.Ini';
 Ini     := TIniFile.Create( IniFile );
 Secao   := 'BD_FireDAC-EMP' + gCodEmp;

 try

  try

   if ( Ini.SectionExists( Secao ) ) then
    begin

     // NFe
     gLoginPrompt_NFe                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_NFe', 'false') ;
     gOSAuthent_NFe                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_NFe',   'false') ;
     gDriverID_NFe                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_NFe',    '') ;
     gDatabase_NFe                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_NFe',    '') ;
     gServer_NFe                           := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_NFe',      '') ;
     gUserName_NFe                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_NFe',    '') ;
     gPassword_NFe                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_NFe',    '') ;
     gConnected_NFe                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_NFe',   'false') ;
     gCamBD_NFe                            := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_NFe',       '') ;

     // ERP
     gTpERP_Ger                            := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'TpERP_Ger', '');
     gLoginPrompt_Ger                      := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'LoginPrompt_Ger', 'false') ;
     gOSAuthent_Ger                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'OSAuthent_Ger',   'false') ;
     gDriverID_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'DriverID_Ger',    '') ;
     gDatabase_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Database_Ger',    '') ;
     gServer_Ger                           := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Server_Ger',      '') ;
     gUserName_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'UserName_Ger',    '') ;
     gPassword_Ger                         := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Password_Ger',    '') ;
     gConnected_Ger                        := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'Connected_Ger',   'false') ;
     gCamBD_Ger                            := Ini.ReadString( 'BD_FireDAC' + '-Emp' + gCodEmp, 'CamBD_Ger',       '') ;

     gTemSqlEmp := true

    end
   else
    gTemSqlEmp := false;

  Except on e:Exception do

   Application.Messagebox( PWideChar( 'Inconsistência na leitura do arquivo ini' + chr(13) +
                           e.Message ), PWideChar( 'Leitura do Aquivo Ini' ),
                           MB_ICONINFORMATION + mb_ok );

  end;

 finally

  Ini.Free ;

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2019-8-23T1121
// function que verifica o acesso da EMP no Banco de Dados FareDac
//------------------------------------------------------------------------------
function TFrGBNFe.fAcessar() : boolean;
Var
 IniFile, Secao    : String ;
 Ini               : TIniFile ;

begin

 IniFile := gCamExe + 'GBNFe.Ini';
 Ini := TIniFile.Create( IniFile );
 Secao   := 'BD_FireDAC-EMP' + gCodEmp;

 result := false;

 if ( Ini.SectionExists( Secao ) ) then
  begin

   // NFe
   DMFD.FDConNFe.LoginPrompt                := StrToBool(gLoginPrompt_NFe);
   if ( StrToBool(gOSAuthent_NFe) ) then
    DMFD.FDConNFe.Params.Values['OSAuthent']:= 'Yes'
   else
    DMFD.FDConNFe.Params.Values['OSAuthent']:= 'No';
   DMFD.FDConNFe.Params.Values['MARS']      := 'Yes';
   DMFD.FDConNFe.Params.Values['DriverID']  := gDriverID_NFe;
   DMFD.FDConNFe.Params.Values['Database']  := gDatabase_NFe;
   DMFD.FDConNFe.Params.Values['Server'  ]  := gServer_NFe;
   if not ( StrToBool(gOSAuthent_NFe) ) then
    begin
     DMFD.FDConNFe.Params.Values['UserName']:= gUserName_NFe;
     DMFD.FDConNFe.Params.Values['Password']:= gPassword_NFe;
    end;

   try

    DMFD.FDConNFe.Connected                 := StrToBool(gConnected_NFe);

    Result := true;

   except

   end;

   // Ger
   DMFD.FDConGer.LoginPrompt                := StrToBool(gLoginPrompt_Ger);
   if ( StrToBool(gOSAuthent_Ger) ) then
    DMFD.FDConGer.Params.Values['OSAuthent']:= 'Yes'
   else
    DMFD.FDConGer.Params.Values['OSAuthent']:= 'No';
   DMFD.FDConGer.Params.Values['MARS']      := 'Yes';
   DMFD.FDConGer.Params.Values['DriverID']  := gDriverID_Ger;
   DMFD.FDConGer.Params.Values['Database']  := gDatabase_Ger;
   DMFD.FDConGer.Params.Values['Server'  ]  := gServer_Ger;
   if not ( StrToBool(gOSAuthent_Ger) ) then
    begin
     DMFD.FDConGer.Params.Values['UserName']:= gUserName_Ger;
     DMFD.FDConGer.Params.Values['Password']:= gPassword_Ger;
    end;

   try

    DMFD.FDConGer.Connected                  := StrToBool(gConnected_Ger);

    Result := true;

   except

   end;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2015-10-9T1042 - Copia o arquivo xml pra pasta Log
// by Edson Lima 2015-10-14T1107 - trunk2 novo
//------------------------------------------------------------------------------
procedure TFrGBNFe.Copia_Xml_PathLog(var Aux, TpNot : String);
var
 NewFile, OldFile : String;
 vDate            : TDateTime;
 DtArq1, DtArq2   : TDateTime;
 vTA1, vTA2       : Longint;
begin

 vDate   := gDataEmi;
 NewFile := gCamLog + Aux + '-nfe.xml';
 OldFile := gCamXml + FormatDateTime('yyyymm', vDate) + TpNot + Aux + '-nfe.xml';

 if FileExists(NewFile) then
  DtArq1 := FileDateToDateTime(FileAge(PWideChar(NewFile)));
 if FileExists(OldFile) then
  DtArq2 := FileDateToDateTime(FileAge(PWideChar(OldFile)));

 vTA1 := (TamArq(NewFile));
 vTA2 := (TamArq(OldFile));

 if FileExists(OldFile) then
  begin
    if FileExists(NewFile) then
     DeleteFile(NewFile);
    CopyFile(PWideChar(OldFile), PWideChar(NewFile), True);
  end
 else if FileExists(NewFile) then
  CopyFile(PWideChar(NewFile), PWideChar(OldFile), True);

end;

procedure TFrGBNFe.cxTLCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin

 if AViewInfo.Node.Values[cxTLsMod.ItemIndex] = '65' Then
  ACanvas.Font.Color := clRed
 Else
  ACanvas.Font.Color := $00804000;

end;

procedure TFrGBNFe.cxTLExit(Sender: TObject);
begin

 case RadioGroup1.ItemIndex of

  0 : pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery3);
  1 : pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery10);
  2 : pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery5);
  3 : pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQryGeral1);
  4 : pAtribSel(cxTL, cxTLdDem, cxTLlNot, cxTLsMod, cxTLsSer, DMFD.FDQuery6);

 end;

end;

procedure TFrGBNFe.cxTLInutCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin

 ACanvas.Font.Color := $00804000;

end;

procedure TFrGBNFe.cxTLKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 FrGBNFe.BringToFront;
 Panel1.SetFocus;

end;

procedure TFrGBNFe.cxTLMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2015-10-9T1042 - Copia o arquivo xml pra pasta Log
// by Edson Lima 2015-10-14T1107 - trunk2 novo
//------------------------------------------------------------------------------
procedure TFrGBNFe.pDefineRel();
Var
 Ok         : Boolean;
begin

 ACBrNFeDANFERL1.CleanupInstance;
 ACBrNFeDANFCeFortes1.CleanupInstance;
 ACBrNFeDANFCeFortesA41.CleanupInstance;
 acbrmdfdmdfrl1.CleanupInstance;

 if ( gModelo = 55 ) then
  begin

   ACBrNFeDANFERL1.MargemDireita                   := 0.2;
   ACBrNFeDANFERL1.MargemEsquerda                  := 7.0;
   ACBrNFeDANFERL1.MargemInferior                  := 0.2;
   ACBrNFeDANFERL1.MargemSuperior                  := 4.0;
   ACBrNFeDANFEFR1.MargemDireita                   := 0.2;
   ACBrNFeDANFEFR1.MargemEsquerda                  := 7.0;
   ACBrNFeDANFEFR1.MargemInferior                  := 0.2;
   ACBrNFeDANFEFR1.MargemSuperior                  := 4.0;
   ACBrNFeDANFCeFortes1.MargemDireita              := 0.2;
   ACBrNFeDANFCeFortes1.MargemEsquerda             := 7.0;
   ACBrNFeDANFCeFortes1.MargemInferior             := 0.2;
   ACBrNFeDANFCeFortes1.MargemSuperior             := 4.0;
   ACBrNFeDANFeESCPOS1.MargemDireita               := 0.2;
   ACBrNFeDANFeESCPOS1.MargemEsquerda              := 7.0;
   ACBrNFeDANFeESCPOS1.MargemInferior              := 0.2;
   ACBrNFeDANFeESCPOS1.MargemSuperior              := 4.0;
   ACBrNFeDANFCeFortesA41.MargemDireita            := 0.2;
   ACBrNFeDANFCeFortesA41.MargemEsquerda           := 7.0;
   ACBrNFeDANFCeFortesA41.MargemInferior           := 0.2;
   ACBrNFeDANFCeFortesA41.MargemSuperior           := 4.0;
   acbrmdfdmdfrl1.MargemDireita                    := 0.2;
   acbrmdfdmdfrl1.MargemEsquerda                   := 7.0;
   acbrmdfdmdfrl1.MargemInferior                   := 0.2;
   acbrmdfdmdfrl1.MargemSuperior                   := 4.0;

   if ( Trim(FrPar.edtImpNFe.Text) <> '' ) then
    begin

     ACBrNFeDANFERL1.Impressora                    := FrPar.edtImpNFe.Text;
     ACBrNFeDANFEFR1.Impressora                    := FrPar.edtImpNFe.Text;
     ACBrNFeDANFCeFortes1.Impressora               := FrPar.edtImpNFe.Text;
     ACBrNFeDANFeESCPOS1.Impressora                := FrPar.edtImpNFe.Text;
     ACBrNFeDANFCeFortesA41.Impressora             := FrPar.edtImpNFe.Text;
     acbrmdfdmdfrl1.Impressora                     := FrPar.edtImpNFe.Text;
     ACBrNFeDANFERL1.MostraPreview                 := False;
     ACBrNFeDANFERL1.MostraSetup                   := False;
     ACBrNFeDANFERL1.MostraStatus                  := False;

    end;

  end
 else
  begin

   ACBrNFeDANFERL1.MargemDireita                   := 0.2;
   ACBrNFeDANFERL1.MargemEsquerda                  := 0.5;
   ACBrNFeDANFERL1.MargemInferior                  := 0.2;
   ACBrNFeDANFERL1.MargemSuperior                  := 0.5;
   ACBrNFeDANFEFR1.MargemDireita                   := 0.2;
   ACBrNFeDANFEFR1.MargemEsquerda                  := 0.5;
   ACBrNFeDANFEFR1.MargemInferior                  := 0.2;
   ACBrNFeDANFEFR1.MargemSuperior                  := 0.5;
   ACBrNFeDANFCeFortes1.MargemDireita              := 0.2;
   ACBrNFeDANFCeFortes1.MargemEsquerda             := 0.5;
   ACBrNFeDANFCeFortes1.MargemInferior             := 0.2;
   ACBrNFeDANFCeFortes1.MargemSuperior             := 0.5;
   ACBrNFeDANFeESCPOS1.MargemDireita               := 0.2;
   ACBrNFeDANFeESCPOS1.MargemEsquerda              := 0.5;
   ACBrNFeDANFeESCPOS1.MargemInferior              := 0.2;
   ACBrNFeDANFeESCPOS1.MargemSuperior              := 0.5;
   ACBrNFeDANFCeFortesA41.MargemDireita            := 0.2;
   ACBrNFeDANFCeFortesA41.MargemEsquerda           := 0.5;
   ACBrNFeDANFCeFortesA41.MargemInferior           := 0.2;
   ACBrNFeDANFCeFortesA41.MargemSuperior           := 0.5;
   acbrmdfdmdfrl1.MargemDireita                    := 0.2;
   acbrmdfdmdfrl1.MargemEsquerda                   := 0.5;
   acbrmdfdmdfrl1.MargemInferior                   := 0.2;
   acbrmdfdmdfrl1.MargemSuperior                   := 0.5;

   if ( Trim(FrPar.edtImpNFCe.Text) <> '' ) then
    begin

     ACBrNFeDANFERL1.Impressora                    := FrPar.edtImpNFCe.Text;
     ACBrNFeDANFEFR1.Impressora                    := FrPar.edtImpNFCe.Text;
     ACBrNFeDANFCeFortes1.Impressora               := FrPar.edtImpNFCe.Text;
     ACBrNFeDANFeESCPOS1.Impressora                := FrPar.edtImpNFCe.Text;
     ACBrNFeDANFCeFortesA41.Impressora             := FrPar.edtImpNFCe.Text;
     acbrmdfdmdfrl1.Impressora                     := FrPar.edtImpNFCe.Text;
     ACBrNFeDANFERL1.MostraPreview                 := True;
     ACBrNFeDANFERL1.MostraSetup                   := False;
     ACBrNFeDANFERL1.MostraStatus                  := True;

    end;

  end;

 ACBrNFe1.Configuracoes.Arquivos.AdicionarLiteral  := True;
 ACBrNFe1.DANFE.PathPDF                            := gCamPdf;
 ACBrNFeDANFeRL1.CasasDecimais.qCom                := 3;
 ACBrNFeDANFeRL1.CasasDecimais.vUnCom              := 4;
 ACBrNFeDANFEFR1.CasasDecimais.qCom                := 3;
 ACBrNFeDANFEFR1.CasasDecimais.vUnCom              := 4;

 case FrPar.cbb1.ItemIndex of
  0 : begin
       if ( FrPar.cbbTipoDANF.ItemIndex = 1 ) then
        ACBrNFeDANFERL1.Fonte.TamanhoFonteEndereco := 6
       else
        ACBrNFeDANFERL1.Fonte.TamanhoFonteEndereco := 8;
       ACBrNFeDANFERL1.LogoemCima                  := True;
       ACBrNFeDANFERL1.ExpandeLogoMarca            := False;
      end;
  1 : begin
       ACBrNFeDANFERL1.Fonte.TamanhoFonteEndereco  := 8;
       ACBrNFeDANFERL1.LogoemCima                  := False;
       ACBrNFeDANFERL1.ExpandeLogoMarca            := True;
      end;
  2 : begin
       ACBrNFeDANFERL1.Fonte.TamanhoFonteEndereco  := 8;
       ACBrNFeDANFERL1.LogoemCima                  := False;
       ACBrNFeDANFERL1.ExpandeLogoMarca            := False;
      end;
 end;

 ACBrNFe1.DANFE.Logo                               := FrPar.edtLogoMarca.Text;
 ACBrNFeDANFeRL1.Logo                              := FrPar.edtLogoMarca.Text;
 ACBrNFeDANFCeFortes1.Logo                         := FrPar.edtLogoMarca.Text;

 if gModelo = 65 then
  begin

   ACBrNFe1.DANFE                                  := ACBrNFeDANFCeFortes1;
   ACBrNFeDANFCeFortes1.PathPDF                    := gCamPdf;
   ACBrNFeDANFCeFortes1.Sistema                    := gSistema;
   ACBrNFeDANFCeFortes1.Usuario                    := gUsu;
   ACBrNFeDANFCeFortes1.NumCopias                  := StrToIntDef(FrPar.ed_QtdCopNFCe.Text, 0);

   if not FrPar.CheckBox2.Checked then
    ACBrNFeDANFCeFortes1.MostraPreview             := false
   else
    ACBrNFeDANFCeFortes1.MostraPreview             := true;

   if FrPar.CheckBox8.Checked then
    ACBrNFeDANFERL1.ExibeCampoFatura               := True
   else
    ACBrNFeDANFERL1.ExibeCampoFatura               := False;

   case FrPar.cbbTipoDANFCE.ItemIndex of
    0: ACBrNFeDANFCeFortes1.TipoDANFE              := tiSemGeracao;
    1: ACBrNFeDANFCeFortes1.TipoDANFE              := tiSimplificado;
    2: ACBrNFeDANFCeFortes1.TipoDANFE              := tiNFCe;
    3: ACBrNFeDANFCeFortes1.TipoDANFE              := tiMsgEletronica;
   end;

   case FrPar.cbbTipoDANFCE.ItemIndex of
    0: ACBrNFe1.DANFE.TipoDANFE                    := StrToTpImp(OK, '0');
    1: ACBrNFe1.DANFE.TipoDANFE                    := StrToTpImp(OK, '3');
    2: ACBrNFe1.DANFE.TipoDANFE                    := StrToTpImp(OK, '4');
    3: ACBrNFe1.DANFE.TipoDANFE                    := StrToTpImp(OK, '5');
   end;

  end
 else
  begin

   ACBrNFe1.DANFE                                  := ACBrNFeDANFeRL1;
   ACBrNFeDANFeRL1.PathPDF                         := gCamPdf;
   ACBrNFeDANFeRL1.Sistema                         := gSistema;
   ACBrNFeDANFeRL1.Usuario                         := gUsu;
   ACBrNFeDANFeRL1.NumCopias                       := StrToIntDef(FrPar.ed_QtdCopNFe.Text, 0);

   if not FrPar.CheckBox2.Checked then
    ACBrNFeDANFERL1.MostraPreview                  := false
   else
    ACBrNFeDANFERL1.MostraPreview                  := true;

   if FrPar.CheckBox8.Checked then
    ACBrNFeDANFERL1.ExibeCampoFatura          := True
   else
    ACBrNFeDANFERL1.ExibeCampoFatura          := False;

//   Bloco inibido aguardando alteração no componente fastreport 15/02/2019
//   case FrPar.cbb1.ItemIndex of
//    0 : begin
//         if ( FrPar.cbbTipoDANF.ItemIndex = 1 ) then
//          ACBrNFe1.DANFE.TamanhoFonteEndereco        := 6
//         else
//          ACBrNFe1.DANFE.TamanhoFonteEndereco        := 8;
//         ACBrNFe1.DANFE.LogoemCima                   := True;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := False;
//        end;
//    1 : begin
//         ACBrNFe1.DANFE.TamanhoFonteEndereco         := 8;
//         ACBrNFe1.DANFE.LogoemCima                   := False;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := True;
//        end;
//    2 : begin
//         ACBrNFe1.DANFE.TamanhoFonteEndereco         := 8;
//         ACBrNFe1.DANFE.LogoemCima                   := False;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := False;
//        end;
//   end;

   case FrPar.cbbTipoDANF.ItemIndex of
    0: ACBrNFeDANFeRL1.TipoDANFE              := tiSemGeracao;
    1: ACBrNFeDANFeRL1.TipoDANFE              := tiRetrato;
    2: ACBrNFeDANFeRL1.TipoDANFE              := tiPaisagem;
    3: ACBrNFeDANFeRL1.TipoDANFE              := tiSimplificado;
    4: ACBrNFeDANFeRL1.TipoDANFE              := tiMsgEletronica;
   end;

   case FrPar.cbbTipoDANF.ItemIndex of
    0: ACBrNFe1.DANFE.TipoDANFE               := StrToTpImp(OK, '0');
    1: ACBrNFe1.DANFE.TipoDANFE               := StrToTpImp(OK, '1');
    2: ACBrNFe1.DANFE.TipoDANFE               := StrToTpImp(OK, '2');
    3: ACBrNFe1.DANFE.TipoDANFE               := StrToTpImp(OK, '3');
    4: ACBrNFe1.DANFE.TipoDANFE               := StrToTpImp(OK, '5');
   end;

   //ACBrNFe1.DANFE.TipoDANFE                   := StrToTpImp(OK, '1');                             // StrToEnumerado(ok, s, ['0', '1', '2', '3', '4', '5', '6'], [tiSemGeracao, tiRetrato, tiPaisagem, tiSimplificado, tiNFCe, tiMsgEletronica, tiNFCeA4]);
   //ACBrNFeDANFeRL1.TipoDANFE                  := tiPaisagem;//ACBrNFe1.DANFE.TipoDANFE;           // EnumeradoToStr(t, ['0', '1', '2', '3', '4', '5', '4'],     [tiSemGeracao, tiRetrato, tiPaisagem, tiSimplificado, tiNFCe, tiMsgEletronica, tiNFCeA4]);

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2016-10-19T1126 - Copia o arquivo xml pra pasta Log
//------------------------------------------------------------------------------
procedure TFrGBNFe.pDefineRelFR();
Var
 Ok         : Boolean;
begin

 ACBrNFeDANFEFR1.CleanupInstance;
 ACBrNFeDANFeESCPOS1.CleanupInstance;
 acbrmdfdmdfrl1.CleanupInstance;
 acbrpsprntr1.CleanupInstance;

 if ( (Trim(FrPar.edtImpNFe.Text) <> '') and (gModelo = 55) ) then
   ACBrNFeDANFEFR1.Impressora                        := FrPar.edtImpNFe.Text
 else if ( (Trim(FrPar.edtImpNFe.Text) <> '') and (gModelo = 65) ) then
  begin
   ACBrNFeDANFEFR1.Impressora                        := FrPar.edtImpNFCe.Text;
   ACBrNFeDANFeESCPOS1.Impressora                    := FrPar.edtImpNFCe.Text;
  end;

 ACBrNFeDANFEFR1.CasasDecimais.qCom                  := 3;
 ACBrNFeDANFEFR1.CasasDecimais.vUnCom                := 4;

 case FrPar.cbb1.ItemIndex of
  0 : begin
       if ( FrPar.cbbTipoDANF.ItemIndex = 1 ) then
        ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco   := 6
       else
        ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco   := 8;
       ACBrNFeDANFeRL1.LogoemCima                    := True;
       ACBrNFeDANFeRL1.ExpandeLogoMarca              := False;
      end;
  1 : begin
       ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco    := 8;
       ACBrNFeDANFeRL1.LogoemCima                    := False;
       ACBrNFeDANFeRL1.ExpandeLogoMarca              := True;
      end;
  2 : begin
       ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco    := 8;
       ACBrNFeDANFeRL1.LogoemCima                    := False;
       ACBrNFeDANFeRL1.ExpandeLogoMarca              := False;
      end;
 end;

 ACBrNFe1.DANFE.Logo                                 := FrPar.edtLogoMarca.Text;
 ACBrNFeDANFeFR1.Logo                                := FrPar.edtLogoMarca.Text;
 if ( gModelo = 55 ) then
  begin

   ACBrNFeDANFEFR1.FastFileEvento                    := gCamRep + 'Eventos.fr3';
   ACBrNFeDANFEFR1.FastFileInutilizacao              := gCamRep + 'INUTILIZACAO.fr3';

  end
 else
  begin

   ACBrNFeDANFEFR1.FastFileEvento                    := gCamRep + 'EventosNFCe.fr3';
   ACBrNFeDANFEFR1.FastFileInutilizacao              := gCamRep + 'INUTILIZACAONFCe.fr3';

  end;

 ACBrNFeDANFeESCPOS1.Logo                            := FrPar.edtLogoMarca.Text;

 if gModelo = 65 then
  begin

   ACBrNFe1.DANFE                                    := ACBrNFeDANFCeFortes1;
   ACBrNFeDANFCeFortes1.PathPDF                      := gCamPdf;
   ACBrNFeDANFCeFortes1.Sistema                      := gSistema;
   ACBrNFeDANFCeFortes1.Usuario                      := gUsu;
   ACBrNFeDANFCeFortes1.NumCopias                    := StrToIntDef(FrPar.ed_QtdCopNFCe.Text, 0);

   if not FrPar.CheckBox2.Checked then
    ACBrNFeDANFCeFortes1.MostraPreview               := false
   else
    ACBrNFeDANFCeFortes1.MostraPreview               := true;

   if FrPar.CheckBox8.Checked then
    ACBrNFeDANFERL1.ExibeCampoFatura                 := True
   else
    ACBrNFeDANFERL1.ExibeCampoFatura                 := False;

   case FrPar.cbb1.ItemIndex of
    0 : begin
         if ( FrPar.cbbTipoDANF.ItemIndex = 1 ) then
          ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco := 6
         else
          ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco := 8;
         ACBrNFeDANFeRL1.LogoemCima                  := True;
         ACBrNFeDANFeRL1.ExpandeLogoMarca            := False;
        end;
    1 : begin
         ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco  := 8;
         ACBrNFeDANFeRL1.LogoemCima                  := False;
         ACBrNFeDANFeRL1.ExpandeLogoMarca            := True;
        end;
    2 : begin
         ACBrNFeDANFeRL1.Fonte.TamanhoFonteEndereco  := 8;
         ACBrNFeDANFeRL1.LogoemCima                  := False;
         ACBrNFeDANFeRL1.ExpandeLogoMarca            := False;
        end;
   end;

   case FrPar.cbbTipoDANFCE.ItemIndex of
    0: ACBrNFeDANFCeFortes1.TipoDANFE                := tiSemGeracao;
    1: ACBrNFeDANFCeFortes1.TipoDANFE                := tiSimplificado;
    2: ACBrNFeDANFCeFortes1.TipoDANFE                := tiNFCe;
    3: ACBrNFeDANFCeFortes1.TipoDANFE                := tiMsgEletronica;
   end;

   case FrPar.cbbTipoDANFCE.ItemIndex of
    0: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '0');
    1: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '3');
    2: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '4');
    3: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '5');
   end;

   // ACBrNFe1.DANFE.TipoDANFE                  := StrToTpImp(OK, '4');         // StrToEnumerado(ok, s, ['0', '1', '2', '3', '4', '5', '6'], [tiSemGeracao, tiRetrato, tiPaisagem, tiSimplificado, tiNFCe, tiMsgEletronica, tiNFCeA4]);
   // TpcnTipoImpressao = (tiSemGeracao, tiRetrato, tiPais  result := StrToEnumerado(ok, s,
   //                               ['0',          '1',       '2',        '3',            '4',    '5'],
   //                               [tiSemGeracao, tiRetrato, tiPaisagem, tiSimplificado, tiNFCe, tiMsgEletronica]);

  end
 else
  begin

   ACBrNFe1.DANFE                                    := ACBrNFeDANFEFR1;
   ACBrNFeDANFeFR1.PathPDF                           := gCamPdf;
   ACBrNFeDANFeFR1.Sistema                           := gSistema;
   ACBrNFeDANFeFR1.Usuario                           := gUsu;
   ACBrNFeDANFeFR1.NumCopias                         := StrToIntDef(FrPar.ed_QtdCopNFe.Text, 0);

   if not FrPar.CheckBox2.Checked then
    ACBrNFeDANFEFR1.MostraPreview                    := false
   else
    ACBrNFeDANFEFR1.MostraPreview                    := true;

   if FrPar.CheckBox8.Checked then
    ACBrNFeDANFEFR1.ExibeCampoFatura                 := True
   else
    ACBrNFeDANFEFR1.ExibeCampoFatura                 := False;

//   Bloco inibido a espera de atualização no componente fastreport 15/02/2019
//   case FrPar.cbb1.ItemIndex of
//    0 : begin
//         if ( FrPar.cbbTipoDANF.ItemIndex = 1 ) then
//          ACBrNFeDANFEFR1.TamanhoFonteEndereco        := 6
//         else
//          ACBrNFe1.DANFE.TamanhoFonteEndereco        := 8;
//         ACBrNFeDANFEFR1.LogoemCima                   := True;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := False;
//        end;
//    1 : begin
//         ACBrNFe1.DANFE.TamanhoFonteEndereco         := 8;
//         ACBrNFe1.DANFE.LogoemCima                   := False;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := True;
//        end;
//    2 : begin
//         ACBrNFe1.DANFE.TamanhoFonteEndereco         := 8;
//         ACBrNFe1.DANFE.LogoemCima                   := False;
//         ACBrNFe1.DANFE.ExpandirLogoMarca            := False;
//        end;
//   end;

   case FrPar.cbbTipoDANF.ItemIndex of
    0: ACBrNFeDANFeFR1.TipoDANFE                     := tiSemGeracao;
    1: ACBrNFeDANFeFR1.TipoDANFE                     := tiRetrato;
    2: ACBrNFeDANFeFR1.TipoDANFE                     := tiPaisagem;
    3: ACBrNFeDANFeFR1.TipoDANFE                     := tiSimplificado;
    4: ACBrNFeDANFeFR1.TipoDANFE                     := tiMsgEletronica;
   end;

   case FrPar.cbbTipoDANF.ItemIndex of
    0: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '0');
    1: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '1');
    2: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '2');
    3: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '3');
    4: ACBrNFe1.DANFE.TipoDANFE                      := StrToTpImp(OK, '5');
   end;

   case FrPar.cbbTipoDANF.ItemIndex of
    0: ACBrNFeDANFeFR1.FastFile                      := gCamRep + 'DANFE.fr3';                // tiSemGeracao;
    1: ACBrNFeDANFeFR1.FastFile                      := gCamRep + 'DANFeRetratoNovo.fr3';     // tiRetrato;
    2: ACBrNFeDANFeFR1.FastFile                      := gCamRep + 'DANFePaisagem.fr3';        // tiPaisagem;
    3: ACBrNFeDANFeFR1.FastFile                      := gCamRep + 'DANFeRetratoFS.fr3';       // tiSimplificado;
    4: ACBrNFeDANFeFR1.FastFile                      := gCamRep + 'DANFeRetrato_Basic.fr3';   // tiMsgEletronica;
   end;

  end;

end;

procedure TFrGBNFe.RadioGroup2Click(Sender: TObject);
begin
 pAtuNFe();
end;

procedure TFrGBNFe.rlprvwstp1AfterPrint(Sender: TObject);
begin

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2015-12-18T1604 - Deleta os xml das pastas log e xml quando
//                                   a situacao for null
//------------------------------------------------------------------------------
procedure TFrGBNFe.pEliminaXml(var Cha, TpNot : String);
var
 vFile1, vFile2   : String;
 vDate            : TDateTime;
begin

 vDate   := gDataEmi;
 vFile1  := gCamLog + Cha + '-nfe.xml';
 vFile2  := gCamXml + FormatDateTime('yyyymm', vDate) + TpNot + Cha + '-nfe.xml';

 if FileExists(vFile1) then
  if not DeleteFile(vFile1)then
   Application.Messagebox('Algo impediu a exclusão do xml da  pasta log!' + Chr(13) +
                          'Verifique se o xml está aberto? se sim, feche' + Chr(13) +
                          'e tente enviar novamente!', 'Atenção!', mb_iconstop+mb_ok);
 if FileExists(vFile2) then
  if not DeleteFile(vFile2)then
   Application.Messagebox('Algo impediu a exclusão do xml da  pasta xml!' + Chr(13) +
                          'Verifique se o xml está aberto? se sim, feche' + Chr(13) +
                          'e tente enviar novamente!', 'Atenção!', mb_iconstop+mb_ok);

end;

procedure TFrGBNFe.ConsultaWeb2Click(Sender: TObject);
var
 vUFCW : string;
begin

 vUFCW :=  VarToStr(DMFD.FDQuery4['uf']);

 Case RadioGroup1.ItemIndex of

 2: // Transmitidas

  begin

   cxTLExit(Sender);
   pPegaChaveCW(DMFD.FDQuery5, vUFCW);

  end;


 3: // Denegadas

  begin

   cxTLExit(Sender);
   pPegaChaveCW(DMFD.FDQryGeral1, vUFCW);

  end;


 4: // Canceladas

  begin

   cxTLExit(Sender);
   pPegaChaveCW(DMFD.FDQuery6, vUFCW);

  end;


 end;

 pAtuNFe();

end;

procedure TFrGBNFe.ConsultaWeb1Click(Sender: TObject);
begin

 ConsultaWeb2Click(Sender);

 //if ( FrConWeb = nil ) then
 //  FrConWeb := TFrConWeb.Create(Application);
 //FrConWeb.BringToFront;
 //FrConWeb.ShowModal;

end;

procedure TFrGBNFe.CopiaNChaveClipBoard1Click(Sender: TObject);
begin

 Case RadioGroup1.ItemIndex of

 0: // Pendentes

  begin
   // poderá ser usado para copiar outros dados para a área de trabalh
  end;

 1: // Contingências

  begin
   // poderá ser usado para copiar outros dados para a área de trabalho
  end;

 2: // Transmitidas

  begin

   cxTLExit(Sender);
   pCopiaNChave(DMFD.FDQuery5);

  end;


 3: // Denegadas

  begin

   cxTLExit(Sender);
   pCopiaNChave(DMFD.FDQryGeral1);

  end;


 4: // Canceladas

  begin

   cxTLExit(Sender);
   pCopiaNChave(DMFD.FDQuery6);

  end;


 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2016-01-5T0800 ; Copia a chave da nota selecionada para a
// área de transferência do windows
//------------------------------------------------------------------------------
procedure TFrGBNFe.pCopiaNChave(var FD: TFDQuery);
var
 vAux : String;
 X    : integer;

begin

 vAux := '';

 try

  if not fTemSel( cxTL, cxTLbSel ) then exit;                                   // verifica se tem item selecionado na treelist

  for X := 0 to cxTL.Count -1 do                                                // Percorre a treelist
   begin

    if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                // Verifica se o item está selecionado
     begin

      // Filtra a nfe selecionada com select
      pSelNfe( FD, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                   StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                   StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                   cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                   cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

      vAux := vAux + VarToStr(FD['nfe_chave_nfe']) + chr(13) + chr(10);

     end;

   end;

 finally

  if ( vAux <> '' ) then
   begin

    Application.Messagebox('Pronto, chaves selecionadas NFe já se encontram na área' + chr(13) + 'de transferência do windows!','Copia Nº Chave (Área de Transferência) NFe e NFCe:',MB_ICONINFORMATION+mb_ok);

    Clipboard.Clear;
    Clipboard.AsText := vAux;

    //pAtuNFe();

   end;

 end;


end;


//------------------------------------------------------------------------------
// by Edson Lima ; 2016-01-5T0800 ; Pega a chave e efetua a consulta no web
// service da sefaz
//------------------------------------------------------------------------------
procedure TFrGBNFe.pPegaChaveCW(var FD: TFDQuery ; var UFCW : String);
var
 vAux : String;
 X    : integer;

begin

 vAux := '';

 try

  if not fTemSel( cxTL, cxTLbSel ) then exit;                                   // verifica se tem item selecionado na treelist

  for X := 0 to cxTL.Count -1 do                                                // Percorre a treelist
   begin

    if ( cxTL.Items[X].Texts[cxTLbSel.ItemIndex] = 'True' ) then                // Verifica se o item está selecionado
     begin

      // Filtra a nfe selecionada com select
      pSelNfe( FD, StrToIntDef(FrGBNFe.edt_CodEmp.Text, 0),
                   StrToIntDef(cxTL.Items[X].Texts[cxTLlNot.ItemIndex], 0),
                   StrToDateTime(cxTL.Items[X].Texts[cxTLdDem.ItemIndex]),
                   cxTL.Items[X].Texts[cxTLsMod.ItemIndex],
                   cxTL.Items[X].Texts[cxTLsSer.ItemIndex] );

      case Application.MessageBox( PWideChar(
       'Deseja consultar a nota: ' + vartostr(FD['nfe_nnf']) + ',' + chr(13) +
       'no seu navegador web padrão? '), 'Consulta Web: NFe e NFCe', MB_ICONQUESTION + MB_YESNOCANCEL ) of

       IdYes:

        begin

         vAux := VarToStr(FD['nfe_chave_nfe']);

         if (StrToIntDef(FD['nfe_Modelo'], 0) = 55) then
          begin

           if FrPar.rgTipoAmb.ItemIndex = 0 then

            ShellExecute(Handle, nil, PWideChar('https://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + vAux + ''), nil, nil, SW_SHOWNORMAL)

           else

            ShellExecute(Handle, nil, PWideChar('https://hom.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + vAux + ''), nil, nil, SW_SHOWNORMAL)

          end
         else

          if FrPar.rgTipoAmb.ItemIndex = 0 then
           begin

            if UFCW = 'AC' then
             ShellExecute(Handle, nil, PWideChar('http://hml.sefaznet.ac.gov.br/nfce/consulta.xhtml' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AL' then
             ShellExecute(Handle, nil, PWideChar('http://nfce.sefaz.al.gov.br/consultaNFCe.htm' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AP' then
             ShellExecute(Handle, nil, PWideChar('https://www.sefaz.ap.gov.br/sate1/seg/SEGf_AcessarFuncao.jsp?cdFuncao=FIS_1261' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AM' then
             ShellExecute(Handle, nil, PWideChar('http://sistemas.sefaz.am.gov.br/nfceweb/formConsulta.do' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'BA' then
             ShellExecute(Handle, nil, PWideChar('http://nfe.sefaz.ba.gov.br/servicos/nfce/default.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'CE' then
             ShellExecute(Handle, nil, PWideChar('http://nfceh.sefaz.ce.gov.br/pages/consultaNota.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'DF' then
             ShellExecute(Handle, nil, PWideChar('http://dec.fazenda.df.gov.br/NFCE/' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'ES' then
             ShellExecute(Handle, nil, PWideChar('http://app.sefaz.es.gov.br/ConsultaNFCe' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MA' then
             ShellExecute(Handle, nil, PWideChar('http://www.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MT' then
             ShellExecute(Handle, nil, PWideChar('http://www.sefaz.mt.gov.br/nfce/consultanfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MS' then
             ShellExecute(Handle, nil, PWideChar('http://www.dfe.ms.gov.br/nfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PA' then
             ShellExecute(Handle, nil, PWideChar('https://appnfc.sefa.pa.gov.br/portal/view/consultas/nfce/consultanfce.seam' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PB' then
             ShellExecute(Handle, nil, PWideChar('http://www.receita.pb.gov.br/nfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PR' then
             ShellExecute(Handle, nil, PWideChar('http://www.sped.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=100' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PI' then
             ShellExecute(Handle, nil, PWideChar('http://webas.sefaz.pi.gov.br/nfceweb/consultarNFCe.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RN' then
             ShellExecute(Handle, nil, PWideChar('http://nfce.set.rn.gov.br/consultarNFCe.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RO' then
             ShellExecute(Handle, nil, PWideChar('http://www.nfce.sefin.ro.gov.br' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RR' then
             ShellExecute(Handle, nil, PWideChar('https://www.sefaz.rr.gov.br/nfce/servlet/wp_consulta_nfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RS' then
             ShellExecute(Handle, nil, PWideChar('https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'SP' then
             ShellExecute(Handle, nil, PWideChar('https://www.nfce.fazenda.sp.gov.br/NFCeConsultaPublica/Paginas/ConsultaPublica.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'SE' then
             ShellExecute(Handle, nil, PWideChar('http://www.nfce.se.gov.br/portal/portalNoticias.jsp' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RJ' then
             ShellExecute(Handle, nil, PWideChar('http://www4.fazenda.rj.gov.br/consultaDFe/paginas/consultaChaveAcesso.faces' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'TO' then
             ShellExecute(Handle, nil, PWideChar('http://apps.sefaz.to.gov.br/portal-nfce/consultarNFCe.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)

           end
          else
           begin

            if UFCW = 'AC' then
             ShellExecute(Handle, nil, PWideChar('http://hml.sefaznet.ac.gov.br/nfce/consulta.xhtml' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AL' then
             ShellExecute(Handle, nil, PWideChar('http://nfce.sefaz.al.gov.br/consultaNFCe.htm' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AP' then
             ShellExecute(Handle, nil, PWideChar('https://www.sefaz.ap.gov.br/sate1/seg/SEGf_AcessarFuncao.jsp?cdFuncao=FIS_1261' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'AM' then
             ShellExecute(Handle, nil, PWideChar('http://sistemas.sefaz.am.gov.br/nfceweb/formConsulta.do' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'BA' then
             ShellExecute(Handle, nil, PWideChar('http://hnfe.sefaz.ba.gov.br/servicos/nfce/default.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'CE' then
             ShellExecute(Handle, nil, PWideChar('http://nfceh.sefaz.ce.gov.br/pages/consultaNota.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'DF' then
             ShellExecute(Handle, nil, PWideChar('http://dec.fazenda.df.gov.br/NFCE/' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'ES' then
             ShellExecute(Handle, nil, PWideChar('http://homologacao.sefaz.es.gov.br/ConsultaNFCe' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MA' then
             ShellExecute(Handle, nil, PWideChar('http://www.hom.nfce.sefaz.ma.gov.br/portal/consultarNFCe.jsp' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MT' then
             ShellExecute(Handle, nil, PWideChar('http://homologacao.sefaz.mt.gov.br/nfce/consultanfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'MS' then
             ShellExecute(Handle, nil, PWideChar('http://www.dfe.ms.gov.br/nfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PA' then
             ShellExecute(Handle, nil, PWideChar('https://appnfc.sefa.pa.gov.br/portal/view/consultas/nfce/consultanfce.seam' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PB' then
             ShellExecute(Handle, nil, PWideChar('http://www.receita.pb.gov.br/nfcehom' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PR' then
             ShellExecute(Handle, nil, PWideChar('http://www.sped.fazenda.pr.gov.br/modules/conteudo/conteudo.php?conteudo=100' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'PI' then
             ShellExecute(Handle, nil, PWideChar('http://webas.sefaz.pi.gov.br/nfceweb-homologacao/consultarNFCe.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RN' then
             ShellExecute(Handle, nil, PWideChar('http://nfce.set.rn.gov.br/consultarNFCe.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RO' then
             ShellExecute(Handle, nil, PWideChar('http://www.nfce.sefin.ro.gov.br/consultaAmbHomologacao.jsp' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RR' then
             ShellExecute(Handle, nil, PWideChar('http://200.174.88.103:8080/nfce/servlet/wp_consulta_nfce' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RS' then
             ShellExecute(Handle, nil, PWideChar('https://www.sefaz.rs.gov.br/NFCE/NFCE-COM.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'SP' then
             ShellExecute(Handle, nil, PWideChar('https://www.homologacao.nfce.fazenda.sp.gov.br/NFCeConsultaPublica/Paginas/ConsultaQRCode.aspx' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'SE' then
             ShellExecute(Handle, nil, PWideChar('http://www.hom.nfe.se.gov.br/portal/consultarNFCe.jsp' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'RJ' then
             ShellExecute(Handle, nil, PWideChar('http://www4.fazenda.rj.gov.br/consultaDFe/paginas/consultaChaveAcesso.faces' + vAux + ''), nil, nil, SW_SHOWNORMAL)
            else if UFCW = 'TO' then
             ShellExecute(Handle, nil, PWideChar('http://apps.sefaz.to.gov.br/portal-nfce-homologacao/consultarNFCe.jsf' + vAux + ''), nil, nil, SW_SHOWNORMAL)

           end;

        end;

       IdCancel:

        Exit;

      end;

     end;

   end;

 finally


 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2016-01-5T0800 ; Copia a chave da nota selecionada para a
// área de transferência do windows
//------------------------------------------------------------------------------
procedure TFrGBNFe.pCopiaNChaveMDFe(var FD: TFDQuery);
var
 vAux : String;
 X    : Integer;

begin

 vAux := '';

 try

  if not FrBuscaChave.fTemSel( FrBuscaChave.cxTLM,
                               FrBuscaChave.cxTLMbSel ) then exit;              // verifica se tem item selecionado na treelist

  for X := 0 to FrBuscaChave.cxTLM.Count -1 do                                  // Percorre a treelist

   begin

    if ( FrBuscaChave.cxTLM.Items[X].Texts[FrBuscaChave.cxTLMbSel.ItemIndex] =
         'True' ) then                                                          // Verifica se o item está selecionado

     begin

      vAux := ( vAux +
                FrBuscaChave.cxTLM.Items[X].Texts[FrBuscaChave.cxTLMsChv.ItemIndex] +
                chr(13) + chr(10) );

     end;

   end;

 finally

  if ( vAux <> '' ) then
   begin

    Clipboard.Clear;
    Clipboard.AsText := vAux;

    if Clipboard.HasFormat(CF_TEXT) then
     begin
      Application.Messagebox('Pronto, chaves selecionadas MDe já se encontram na área' + chr(13) + 'de transferência do windows!','Copia Nº Chave (Área de Transferência) NFe e NFCe:',MB_ICONINFORMATION+mb_ok);
      pAtuNFe();
     end;

   end;

 end;

end;

//******************************************************************************
// by Edson Lima ; 2016-01-5T0800 ; Pega a chave do manifesto e efetua a
//                                  consulta no web service da sefaz
//******************************************************************************
procedure TFrGBNFe.pPegaChaveCWM(var FD: TFDQuery);
var
 vAux : String;
 X    : Integer;

begin

 vAux := '';

 try

  if not FrBuscaChave.fTemSel( FrBuscaChave.cxTLM,
                               FrBuscaChave.cxTLMbSel ) then exit;              // verifica se tem item selecionado na treelist

  for X := 0 to FrBuscaChave.cxTLM.Count -1 do                                  // Percorre a treelist

   begin

    if ( FrBuscaChave.cxTLM.Items[X].Texts[FrBuscaChave.cxTLMbSel.ItemIndex] =
         'True' ) then                                                          // Verifica se o item está selecionado

     begin

      case Application.MessageBox( PWideChar(
       'Deseja consultar a nota : ' +
       copy(FrBuscaChave.cxTLM.Items[X].Texts[FrBuscaChave.cxTLMsChv.ItemIndex], 26, 9)
       + ',' + chr(13) +
       'de manifesto, no seu navegador web padrão? '), 'Consulta Web: NFe e NFCe',
       MB_ICONQUESTION + MB_YESNOCANCEL ) of

       IdYes:

        begin

         vAux := FrBuscaChave.cxTLM.Items[X].Texts[FrBuscaChave.cxTLMsChv.ItemIndex];
         If FrPar.rgTipoAmb.ItemIndex = 0 then
          ShellExecute(Handle, nil, PWideChar('https://www.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + vAux + ''), nil, nil, SW_SHOWNORMAL)
         else
          ShellExecute(Handle, nil, PWideChar('https://hom.nfe.fazenda.gov.br/portal/consultaRecaptcha.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=' + vAux + ''), nil, nil, SW_SHOWNORMAL)
        end;

       IdCancel:

        Exit;

      end;

     end;

   end;

 finally


 end;

end;

procedure TFrGBNFe.MarcaDesmarcaTodos3Click(Sender: TObject);
begin
 MarcaBloco( cxTL, True, True );
end;

procedure TFrGBNFe.DesmarcarTodas3Click(Sender: TObject);
begin
 MarcaBloco( cxTL, False, True );
end;

procedure TFrGBNFe.MenuItem5Click(Sender: TObject);
begin
 MarcaBloco( cxTL, True, True );
end;

procedure TFrGBNFe.MenuItem6Click(Sender: TObject);
begin
 MarcaBloco( cxTL, False, True );
end;

function TFrGBNFe.TamArq(const Arquivo: string): Integer;
var
  SR: TSearchRec;
begin
  if System.SysUtils.FindFirst(Arquivo, faAnyFile, SR) = 0 then
  try
    Result := SR.Size;
  finally
    System.SysUtils.FindClose(SR);
  end;
end;

procedure TFrGBNFe.dxSpinEdit1Exit(Sender: TObject);
begin

 if StrToIntDef(edt_CodEmp.Text, 0) < 1 then
  begin
   edt_CodEmp.Text := '001';
  end;

 DMFD.FDQuery4.Close;
 DMFD.FDQuery4.SQL.Clear;
 DMFD.FDQuery4.SQL.Add( 'select * from emitente            ' );
 DMFD.FDQuery4.SQL.Add( ' where codigo_loja =:codigo_loja  ' );
 DMFD.FDQuery4.ParamByName('codigo_loja').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
 DMFD.FDQuery4.Open;

 if DMFD.FDQuery4.IsEmpty then
  begin
   edt_CodEmp.Text   := '0';
   Label1.Font.Color := clRed;
   Label1.Caption    := ' NÃO EXISTE EMPRESA CADASTRADA !';
  end
 else
  begin
   gCodEmp                                 := StrZero(edt_CodEmp.Text, 03);
   Label1.Font.Color                       := clBlue;
   Label1.Caption                          := ' ' + vartostr(DMFD.FDQuery4['razao_social']) + ' - ' + vartostr(DMFD.FDQuery4['nome_fantasia']);
   ACBrNFe1.Configuracoes.WebServices.UF   := DMFD.FDQuery4['uf'];

   // Verifica e atualiza os caminhos
   LerConf1();                                                                  // Ler o arquivo ini e pega os parâmetros
   pAtrCam();                                                                   // Atribui caminhos do ini nas variáveis padrão e executavel
   LerConf2();                                                                  // Atribui dados nos parâmetros acbr
   pAtuNFe();                                                                   // Procedure de atualização

   pVerPas();

   // By Edson Lima ; 18/06/2012 ; 09:00
   ACBrNFe1.Configuracoes.Arquivos.Salvar                        := true;
   ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe                := true;
   ACBrNFe1.Configuracoes.Arquivos.PathNFe                       := gCamXml;
   ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload      := gCamXml;                // Edson Lima ; 2019-07-29
   //ACBrNFe1.Configuracoes.Arquivos.PathCan                       := gCamXml;              // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathInu                       := gCamXml;
   //ACBrNFe1.Configuracoes.Arquivos.PathDPEC                      := gCamXml;              // trunk2
   //ACBrNFe1.Configuracoes.Arquivos.PathCCe                       := gCamXml;              // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathEvento                    := gCamXml;
   ACBrNFe1.Configuracoes.Geral.Salvar                           := true;                   //ckSalvar.Checked;
   ACBrNFe1.Configuracoes.Arquivos.PathSalvar                    := gCamLog;                // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathSchemas                   := gCamSch;                // trunk2
  end;

end;

procedure TFrGBNFe.btn1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 if FrGBNFe.RadioButton1.Checked then
  gGeraXML := True;
end;

procedure TFrGBNFe.BitBtn2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin

 gGeraXML := False;

end;

procedure TFrGBNFe.btn2Click(Sender: TObject);
var
 vIndRG1 : integer;
begin

 // Faz a contestação da data inicial antiga
 if ( cxdtp1.Date < (Date - 73000) ) then                                       // 73000 dias aproximadamente 200 anos
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

 vIndRG1 := RadioGroup1.ItemIndex;

 pAtuNFeT();                                                                    // Atualiza a treelist

 RadioGroup1.ItemIndex  := 0;
 RadioGroup1.ItemIndex  := vIndRG1;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2016-11-30T1711
// manda comandos de imprimir o danfe
//------------------------------------------------------------------------------
procedure TFrGBNFe.pImpr();
var
 c:Integer;

begin

 if ( gCpt = 1 ) then
  begin
   for c := 1 to ( StrToIntDef(FrPar.ed_QtdCopNFe.Text, 0) ) do
    begin
     if ( gModelo = 55 ) then
      begin
       if ( ((FrPar.edtImpNFe.Text = 'doPDF v7')  or
             (FrPar.edtImpNFe.Text = 'Adobe PDF') or
             (FrPar.CheckBox2.Checked))           and
             (c = 1) ) then
        ACBrNFe1.NotasFiscais.Imprimir                                          // Imprime o DANFE normalmente
       else if ( ((FrPar.edtImpNFe.Text <> 'Adobe PDF') and
                  (FrPar.edtImpNFe.Text <> 'doPDF v7')) and
                  (not (FrPar.CheckBox2.Checked)) ) then
        ACBrNFe1.NotasFiscais.Imprimir;                                         // Imprime o DANFE normalmente
      end
     else
      begin
       if ( ((FrPar.edtImpNFe.Text = 'doPDF v7')  or
             (FrPar.edtImpNFe.Text = 'Adobe PDF') or
             (FrPar.CheckBox2.Checked))           and
             (c = 1) ) then
        ACBrNFe1.NotasFiscais.Imprimir                                          // Imprime o DANFE normalmente
       else if ( ((FrPar.edtImpNFe.Text <> 'Adobe PDF') and
                  (FrPar.edtImpNFe.Text <> 'doPDF v7')) and
                  (not (FrPar.CheckBox2.Checked)) ) then
        ACBrNFe1.NotasFiscais.Imprimir;                                         // Imprime o DANFE normalmente
      end;
    end;
  end
 else
  ACBrNFe1.NotasFiscais.Imprimir;                                               // Imprime o DANFE normalmente

end;

// -----------------------------------------------------------------------------
// By Edson Lima - 2016-6-30T0958 - modificada em 05/09/2018
// Função global que valida um campo de email
//   Categorias .br
//   Categorias de domínios .br (DPNs)
//   Abaixo estão listadas todas as categorias de domínio .br oferecidas
//    pelo Registro.br. Os domínios de pessoa física e profissionais
//    liberais só podem ser registrados por um titular com CPF. Os
//    domínios de pessoa jurídica devem ser associados a um CNPJ. Já os
//    domínios genéricos e de cidades podem ser registrados por CPF ou CNPJ.
//
//   Algumas categorias possuem ainda restrições adicionais por serem
//    direcionadas a empresas de setores específicos, sendo necessária
//    comprovação por meio de envio de documentos, ou ainda exigirem o
//    uso de DNSSEC.
//
//   Genéricos
//   Para pessoas físicas ou jurídicas
//------------------------------------------------------------------------------

function fValidaEmail( e_mail, EmBrancoSN: String ): Boolean;
var
 vpassou1 : boolean;
 vpassou2 : boolean;
 vpassou3 : boolean;
 i        : Integer;
begin

 vpassou1 := False;
 vpassou2 := False;
 vpassou3 := False;

 if ( trim(e_mail) <> '' ) then
  begin
   for i := 1 to length(e_mail) - 1 do
    begin

     if ( e_mail[i] = '@' ) then
      vpassou1 := True;

     if vpassou1 then
       if ( e_mail[i] = '.' ) then
         vpassou2 := True;

     if ( vpassou2 and (e_mail[i] = '.') and (not vpassou3) ) then
      begin

       if ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'art') or                 // ART.BR	Artes: música, pintura, folclore
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'com') or                 // COM.BR	Atividades comerciais
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'eco') or                 // ECO.BR	Atividades com foco eco-ambiental
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'amp') or                 // EMP.BR	Pequenas e micro-empresas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'net') or                 // NET.BR	Atividades comerciais
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ong') or                 // ONG.BR	Atividades não governamentais individuais ou associativas (a partir de 27/08/2018 15h)
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'edu') or                 // EDU.BR	Instituições de ensino superior
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'blo') or                 //*BLOG.BR	Web logs
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'flo') or                 //*FLOG.BR	Foto logs
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'nom') or                 // NOM.BR	Pessoas Físicas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'vlo') or                 //*VLOG.BR	Vídeo logs
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'wik') or                 //*WIKI.BR	Páginas do tipo 'wiki'
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'adm') or                 // ADM.BR	Administradores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'adv') or                 // ADV.BR	Advogados
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'arq') or                 // ARQ.BR	Arquitetos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ato') or                 // ATO.BR	Atores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bio') or                 // BIO.BR	Biólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bmd') or                 // BMD.BR	Biomédicos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cim') or                 // CIM.BR	Corretores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cng') or                 // CNG.BR	Cenógrafos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cnt') or                 // CNT.BR	Contadores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ecn') or                 // ECN.BR	Economistas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'eng') or                 // ENG.BR	Engenheiros
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'eti') or                 // ETI.BR	Especialista em Tecnologia da Informação
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'fnd') or                 // FND.BR	Fonoaudiólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'fot') or                 // FOT.BR	Fotógrafos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'fst') or                 // FST.BR	Fisioterapeutas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ggf') or                 // GGF.BR	Geógrafos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'jor') or                 // JOR.BR	Jornalistas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'lel') or                 // LEL.BR	Leiloeiros
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mat') or                 // MAT.BR	Matemáticos e Estatísticos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'med') or                 // MED.BR	Médicos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mus') or                 // MUS.BR	Músicos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'not') or                 // NOT.BR	Notários
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ntr') or                 // NTR.BR	Nutricionistas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'odo') or                 // ODO.BR	Dentistas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ppg') or                 // PPG.BR	Publicitários e profissionais da área de propaganda e marketing
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'pro') or                 // PRO.BR	Professores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'psc') or                 // PSC.BR	Psicólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'qsl') or                 // QSL.BR	Rádio amadores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'slg') or                 // SLG.BR	Sociólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'tax') or                 //*TAXI.BR	Taxistas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'teo') or                 // TEO.BR	Teólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'trd') or                 // TRD.BR	Tradutores
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'vet') or                 // VET.BR	Veterinários
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'zlg') or                 // ZLG.BR	Zoólogos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = '9gu') or                 //*9GUACU.BR	Nova Iguaçu
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'abc') or                 // ABC.BR	Região ABC Paulista
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'aju') or                 // AJU.BR	Aracaju
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ana') or                 //*ANANI.BR	Ananindeua
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'apa') or                 //*APARECIDA.BR	Aparecida
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bar') or                 //*BARUERI.BR	Barueri
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bel') or                 //*BELEM.BR	Belém
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bhz') or                 // BHZ.BR	Belo Horizonte
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'boa') or                 //*BOAVISTA.BR	Boa Vista
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'bsb') or                 // BSB.BR	Brasília
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cam') or                 //*CAMPINAGRANDE.BR	Campina Grande
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cam') or                 //*CAMPINAS.BR	Campinas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cax') or                 //*CAXIAS.BR	Caxias
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'can') or                 //*CONTAGEM.BR	Contagem
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cui') or                 //*CUIABA.BR	Cuiabá
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'cur') or                 //*CURITIBA.BR	Curitiba
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'fei') or                 //*FEIRA.BR	Feira de Santana
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'flo') or                 //*FLORIPA.BR	Florianópolis
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'for') or                 //*FORTAL.BR	Fortaleza
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'foz') or                 // FOZ.BR	Foz do Iguaçu
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'goi') or                 //*GOIANIA.BR	Goiânia
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'gru') or                 // GRU.BR	Guarulhos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'jab') or                 // JAB.BR	Jaboatão dos Guararapes
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'jam') or                 //*JAMPA.BR	João Pessoa
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'jdf') or                 // JDF.BR	Juiz de Fora
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'joi') or                 //*JOINVILLE.BR	Joinville
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'lon') or                 //*LONDRINA.BR	Londrina
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mac') or                 //*MACAPA.BR	Macapá
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mac') or                 //*MACEIO.BR	Maceió
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'man') or                 //*MANAUS.BR	Manaus
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mar') or                 //*MARINGA.BR	Maringá
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mor') or                 //*MORENA.BR	Campo Grande
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'nat') or                 // NATAL.BR	Natal
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'nit') or                 //*NITEROI.BR	Niterói
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'osa') or                 //*OSASCO.BR	Osasco
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'pal') or                 //*PALMAS.BR	Palmas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'poa') or                 // POA.BR	Porto Alegre
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'pvh') or                 // PVH.BR	Porto Velho
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rec') or                 //*RECIFE.BR	Recife
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rib') or                 //*RIBEIRAO.BR	Ribeirão
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rio') or                 // RIO.BR	Rio de Janeiro
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rio') or                 //*RIOBRANCO.BR	Rio Branco
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rio') or                 //*RIOPRETO.BR	São José do Rio Preto
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sal') or                 //*SALVADOR.BR	Salvador
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sam') or                 //*SAMPA.BR	São Paulo
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'san') or                 //*SANTAMARIA.BR	Santa Maria
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'san') or                 //*SANTOANDRE.BR	Santo André
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sao') or                 //*SAOBERNARDO.BR	São Bernardo do Campo
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sao') or                 //*SAOGONCA.BR	São Gonçalo
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sjc') or                 // SJC.BR	São José dos Campos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'slz') or                 // SLZ.BR	São Luis
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'sor') or                 //*SOROCABA.BR	Sorocaba
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'the') or                 // THE.BR	Teresina
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'udi') or                 // UDI.BR	Uberlândia
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'vix') or                 // VIX.BR	Vitória
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'agr') or                 // AGR.BR	Empresas agrícolas, fazendas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'esp') or                 // ESP.BR	Esporte em geral
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'etc') or                 // ETC.BR	Empresas que não se enquadram nas outras categorias
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'far') or                 // FAR.BR	Farmácias e drogarias
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'imb') or                 // IMB.BR	Imobiliárias
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'ind') or                 // IND.BR	Indústrias
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'inf') or                 // INF.BR	Meios de informação (rádios, jornais, bibliotecas, etc..)
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rad') or                 //*RADIO.BR	Empresas que queiram enviar áudio pela rede
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'rec') or                 // REC.BR	Atividades de entretenimento, diversão, jogos, etc...
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'srv') or                 // SRV.BR	Empresas prestadoras de serviços
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'tmp') or                 // TMP.BR	Eventos temporários, como feiras e exposições
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'tur') or                 // TUR.BR	Empresas da área de turismo
          ( e_mail[i+1] + e_mail[i+2] = 'tv') or                                // TV.BR	Empresas de radiodifusão ou transmissão via Internet de sons e imagens
          ( e_mail[i+1] + e_mail[i+2] = 'am') or                                // AM.BR	Empresas de radiodifusão sonora
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'coo') or                 // COOP.BR	Cooperativas
          ( e_mail[i+1] + e_mail[i+2] = 'fm') or                                // FM.BR	Empresas de radiodifusão sonora
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'g12') or                 // G12.BR	Instituições de ensino de primeiro e segundo grau
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'gov') or                 // GOV.BR	Instituições do governo federal
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'mil') or                 // MIL.BR	Forças Armadas Brasileiras
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'org') or                 // ORG.BR	Instituições não governamentais sem fins lucrativos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'psi') or                 // PSI.BR	Provedores de serviço Internet
          ( e_mail[i+1] = 'b') or                                               // B.BR	Bancos
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'def') or                 // DEF.BR	Defensorias Públicas
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'jus') or                 // JUS.BR	Instituições do Poder Judiciário
          ( e_mail[i+1] + e_mail[i+2] + e_mail[i+3] = 'leg') or                 // LEG.BR	Instituições do Poder Legislativo
          ( e_mail[i+1] + e_mail[i+2] = 'mp') then                              // MP.BR	Instituições do Ministério Público
         vpassou3 := True;

      end;

    end;

  end

 else if ( UpperCase(EmBrancoSN) = 'S' )  then

  begin

   vpassou1 := True;
   vpassou2 := True;
   vpassou3 := True;

  end

 else

  begin

   vpassou1 := False;
   vpassou2 := False;
   vpassou3 := False;

  end;

 if ( vpassou1 and vpassou2 and vpassou3 ) then
  Result := True
 else
  Result := False;

end;

procedure TFrGBNFe.GroupBox7MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox7.Hint;

end;

procedure TFrGBNFe.Panel7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel7.Hint;

end;

// Calcula se o ano é bi-sexto
function TFrGBNFe.AnoBi(Ano: Integer): Boolean;
begin
 Result := (Ano mod 4 = 0) and ((Ano mod 100 <> 0) or (Ano mod 400 = 0));
end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-4T1029
// Efetua a leitura do ERP
//------------------------------------------------------------------------------
function TFrGBNFe.fLerGer(): Boolean;
begin

 Result := True;

 if not ( fVerBDG ) then
  begin
   Result := False;
   Exit;
  end;

 // Ler o banco de dados ERP
 DMFD.FDQryGer.Close;
 DMFD.FDQryGer.SQL.Clear;
 DMFD.FDQryGer.SQL.Add( 'Select *                                       ' );
 DMFD.FDQryGer.SQL.Add( 'from TabMot                                    ' );
 DMFD.FDQryGer.SQL.Add( 'where TipMot = ''C''                           ' );

 try

  DMFD.FDQryGer.Open;

 except on e:Exception do
  begin

   Application.Messagebox(PWideChar('Inconsistência na leitua da tabela TabMot do ERP:' + gERP + '!' + Chr(13) +
                                     e.Message),'Atenção!',MB_ICONERROR+mb_ok);
   Result := False;

  end;

 end;

 DMFD.FDQryGer.First;

 while not DMFD.FDQryGer.Eof do
  begin

   if ( DMFD.FDQryGer['CodMot'] = gCodMtC ) then
    if ( (DMFD.FDQryGer['SitDcF'] = 'C') or (DMFD.FDQryGer['SitDcF'] = 'E') ) then
     gNomMtC := DMFD.FDQryGer['NomMot']
    else
     Application.Messagebox('Código do motivo do cancelamento não corresponde a um tipo válido!','Atenção!',MB_ICONINFORMATION+mb_ok);

   if ( DMFD.FDQryGer['CodMot'] = gCodMtD ) then
    if ( DMFD.FDQryGer['SitDcF'] = 'D' ) then
     gNomMtD := DMFD.FDQryGer['NomMot']
    else
     Application.Messagebox('Código do motivo de denegação não corresponde a um tipo válido!','Atenção!',MB_ICONINFORMATION+mb_ok);

   if ( DMFD.FDQryGer['CodMot'] = gCodMtI ) then
    if ( DMFD.FDQryGer['SitDcF'] = 'I' ) then
     gNomMtI := DMFD.FDQryGer['NomMot']
    else
     Application.Messagebox('Código do motivo de inutilização não corresponde a um tipo válido!','Atenção!',MB_ICONINFORMATION+mb_ok);

    DMFD.FDQryGer.Next;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-5T0834
// Efetua a gravação da chave no ERP
//------------------------------------------------------------------------------
function TFrGBNFe.fGraGer(ChvNFe: string ; Cd_Emp, CodPed: Integer): Boolean;
begin

 Result := True;

 if not ( fVerBDG ) then
  begin

   Result := False;
   Exit;

  end;

 if ( CodPed = 0 ) then
  begin

   Application.Messagebox(PWideChar('Chave: ' + ChvNfe + Chr(13) +
                                    'não gravada! Nº Pedido:' +
                                     IntToStr(CodPed) + ' zerado - ' +
                                     gERP + ' !'), 'Atenção!',MB_ICONERROR+mb_ok);
   Result := False;
   Exit;

  end;

 // Ler o banco de dados ERP
 DMFD.FDQryGer.Close;
 DMFD.FDQryGer.SQL.Clear;
 DMFD.FDQryGer.SQL.Add( 'Update   MovPed                                ' );
 DMFD.FDQryGer.SQL.Add( ' set     ChvNFe    = :sChvNFe                  ' );
 DMFD.FDQryGer.SQL.Add( ' where   CodEmp    = :iCodEmp  and             ' );
 DMFD.FDQryGer.SQL.Add( '         CodPed    = :iCodPed                  ' );
 DMFD.FDQryGer.ParamByName('sChvNFe').AsString   := ChvNFe;
 DMFD.FDQryGer.ParamByName('iCodEmp').AsInteger  := Cd_Emp;
 DMFD.FDQryGer.ParamByName('iCodPed').AsInteger  := CodPed;

 try

  DMFD.FDQryGer.ExecSQL;

 except on e:exception do

  begin

   Application.Messagebox(PWideChar('Chave: ' + ChvNfe + Chr(13) +
                                    'não gravada! Nº Pedido:' +
                                     IntToStr(CodPed) + ' - ' + gERP + ' !'
                                      + chr(13) + e.Message ),
                                     'Atenção!',MB_ICONERROR+mb_ok);
   Result := False;

  end;

 end;

 DMFD.FDQryGer.Close;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-9T1134
// Verifica a precisão adm do ERP para cancelamento
//------------------------------------------------------------------------------
function TFrGBNFe.fVerPAG(iCodNot, iCodEmp, iCodPed: Integer): Boolean;
begin

 Result := True;

 if not ( fVerBDG ) then
  begin
   Result := False;
   Exit;
  end;


 try

  DMFD.spVrfCanNot.Close;
   DMFD.spVrfCanNot.ParamByName('@CodEmp').AsInteger := iCodEmp;
   DMFD.spVrfCanNot.ParamByName('@CodPed').AsInteger := iCodPed;
  DMFD.spVrfCanNot.ExecProc;

  if ( (DMFD.spVrfCanNot.Params[00].AsInteger <> 0)   and
       (DMFD.spVrfCanNot.Params[00].AsInteger <> 6) ) then
   Result := False;

 except on e:Exception do
  begin

   Application.Messagebox(PWideChar('Inconsistência na procedure de verificação' + Chr(13) +
                                    'da política de cancelamento do EPR:' + gERP + '!' + Chr(13) +
                                     e.Message),'Atenção!',MB_ICONERROR+mb_ok);
   Result := False;

  end;

 end;

 if ( trim(gERP) = 'GERPA' ) then
  begin

   Case DMFD.spVrfCanNot.Params[00].AsInteger of

    1:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Receber Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    2:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada em Depósito Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Exite(m) Pedido(s) de Saída em Depósito Pendente(s) ou Faturado(s) Vinculado(s)!'), 'Atenção', MB_ICONINFORMATION );
    3:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Transferência Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', a Entrada foi Confirmada e/ou Atualizada !'), 'Atenção', MB_ICONINFORMATION );
    4:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada via Fat. Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    5:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Complementar de Preço Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', o Caixa está fechado!'), 'Atenção', MB_ICONINFORMATION );
//    6:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Posição Diferente de Faturado !'), 'Atenção', MB_ICONINFORMATION );
    7:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Prazo para Cancelamento Excedido, Conforme Regras da Empresa!'), 'Atenção', MB_ICONINFORMATION );
    8:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Pedido foi Devolvido!'), 'Atenção', MB_ICONINFORMATION );
    9:  Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Comissão Normal Referente a este Faturamento já Fechada, deve-se Cancelar o Fechamento!'), 'Atenção', MB_ICONINFORMATION );
    10: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    11: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Ordem de Carregamento com Contas a Pagar Baixado !'), 'Atenção', MB_ICONINFORMATION );
    12: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois ele foi Agrupado, Originando Outro Pedido !'), 'Atenção', MB_ICONINFORMATION );
    13: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada via Caixa, e o Caixa está Fechado !'), 'Atenção', MB_ICONINFORMATION );
    14: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end
 else if ( trim(gERP) = 'SISA' ) then
  begin

   Case DMFD.spCanNot.Params[00].AsInteger of

    1 : Application.MessageBox(PWideChar('Pedido ' + IntToStr(iCodPed) + ' possue Titulo(s) Baixado(s)!'),'Atenção', MB_ICONINFORMATION );
    2 : Application.MessageBox(PWideChar('Pedido ' + IntToStr(iCodPed) + ' não Faturado, não será Possível Cancelar !'), 'Atenção', MB_ICONINFORMATION );
    3 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada via Fat. Nº ' + IntToStr(iCodPed) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    4 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Pedido foi Devolvido!'), 'Atenção', MB_ICONINFORMATION );
    5 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Comissão Normal Referente a este Faturamento já Fechada, deve-se Cancelar o Fechamento !'), 'Atenção', MB_ICONINFORMATION );
    10: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada via Caixa, e o Caixa está Fechado !'), 'Atenção', MB_ICONINFORMATION );
    11: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end
 else if ( trim(gERP) = 'SISAG' ) then
  begin

   Case DMFD.spCanNot.Params[00].AsInteger of

    1: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Recebimento já Baixado!'), 'Atenção', MB_ICONINFORMATION );
    2: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Cheque com posição diferente de Pendente!'), 'Atenção', MB_ICONINFORMATION );
    3: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Caixa Fechado!'), 'Atenção', MB_ICONINFORMATION );
    4: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Comissão Fechada!'), 'Atenção', MB_ICONINFORMATION );
    5: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido nota fiscal de entrada estar Atualizada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-11T0811
// Efetua o Cancelamento Administrativo do PEDIDO
//------------------------------------------------------------------------------
function TFrGBNFe.fCanCAP(iCodNot, iCodEmp, iCodPed, iCodMot: Integer): Boolean;
begin

 Result := True;

 if not ( fVerBDG ) then
  begin
   Result := False;
   Exit;
  end;

 try

  DMFD.spCanNot.Close;
   DMFD.spCanNot.ParamByName('@CodEmp').AsInteger := iCodEmp;
   DMFD.spCanNot.ParamByName('@CodPed').AsInteger := iCodPed;
   DMFD.spCanNot.ParamByName('@CodMot').AsInteger := iCodMot;
  DMFD.spCanNot.ExecProc;

  if ( (DMFD.spCanNot.Params[00].AsInteger <> 0)   and
       (DMFD.spCanNot.Params[00].AsInteger <> 6) ) then
   Result := False;
 except
  Application.Messagebox(PWideChar('Inconsistência na procedure de cancelamento do ERP:' + gERP + ' !'),'Atenção!',MB_ICONERROR+mb_ok);
  Result := False;

 end;

 if ( trim(gERP) = 'GERPA' ) then
  begin

   Case DMFD.spCanNot.Params[00].AsInteger of

     1: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Receber Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
     2: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada em Depósito Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Exite(m) Pedido(s) de Saída em Depósito Pendente(s) ou Faturado(s) Vinculado(s)!'), 'Atenção', MB_ICONINFORMATION );
     3: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Transferência Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', a Entrada foi Confirmada e/ou Atualizada !'), 'Atenção', MB_ICONINFORMATION );
     4: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada via Fat. Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
     5: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Complementar de Preço Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', o Caixa está fechado!'), 'Atenção', MB_ICONINFORMATION );
//     6: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Posição Diferente de Faturado !'), 'Atenção', MB_ICONINFORMATION );
     7: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Prazo para Cancelamento Excedido, Conforme Regras da Empresa!'), 'Atenção', MB_ICONINFORMATION );
     8: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Pedido foi Devolvido!'), 'Atenção', MB_ICONINFORMATION );
     9: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', Comissão Normal Referente a este Faturamento já Fechada, deve-se Cancelar o Fechamento!'), 'Atenção', MB_ICONINFORMATION );
    10: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    11: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Ordem de Carregamento com Contas a Pagar Baixado !'), 'Atenção', MB_ICONINFORMATION );
    12: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois ele foi Agrupado, Originando Outro Pedido !'), 'Atenção', MB_ICONINFORMATION );
    13: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada via Caixa, e o Caixa está Fechado !'), 'Atenção', MB_ICONINFORMATION );
    14: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Nota nº ' + IntToStr(iCodNot) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end
 else if ( trim(gERP) = 'SISA' ) then
  begin

   Case DMFD.spCanNot.Params[00].AsInteger of

    1 : Application.MessageBox(PWideChar('Pedido ' + IntToStr(iCodPed) + ' possue Titulo(s) Baixado(s)!'),'Atenção', MB_ICONINFORMATION );
    2 : Application.MessageBox(PWideChar('Pedido ' + IntToStr(iCodPed) + ' não Faturado, não será Possível Cancelar !'), 'Atenção', MB_ICONINFORMATION );
    3 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido de Entrada via Fat. Nº ' + IntToStr(iCodPed) + ', possui Título(s) a Pagar Baixado(s)!'), 'Atenção', MB_ICONINFORMATION );
    4 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Pedido foi Devolvido!'), 'Atenção', MB_ICONINFORMATION );
    5 : Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', Comissão Normal Referente a este Faturamento já Fechada, deve-se Cancelar o Fechamento !'), 'Atenção', MB_ICONINFORMATION );
    10: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada via Caixa, e o Caixa está Fechado !'), 'Atenção', MB_ICONINFORMATION );
    11: Application.MessageBox(PWideChar('Não será possível efetuar o cancelamento do Pedido Nº ' + IntToStr(iCodPed) + ', pois se Refere a uma Devolução de Compra/Venda com Ordem de Pagamento Baixada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end
 else if ( trim(gERP) = 'SISAG' ) then
  begin

   Case DMFD.spCanNot.Params[00].AsInteger of

    1: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Recebimento já Baixado!'), 'Atenção', MB_ICONINFORMATION );
    2: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Cheque com posição diferente de Pendente!'), 'Atenção', MB_ICONINFORMATION );
    3: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Caixa Fechado!'), 'Atenção', MB_ICONINFORMATION );
    4: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido integração com Comissão Fechada!'), 'Atenção', MB_ICONINFORMATION );
    5: Application.MessageBox(PChar('Nota Fiscal de Nº ' + IntToStr(iCodNot) + ' não pode ser Cancelada devido nota fiscal de entrada estar Atualizada !'), 'Atenção', MB_ICONINFORMATION );

   End;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-16T1106
// Veririca a existencia do pedido para o cancelamento na inutilização
//------------------------------------------------------------------------------
function TFrGBNFe.fVrfInuNot(iCodEmp, iCodNot, iModNot, iSerNot: Integer): Boolean;
begin

 Result := True;

 if not ( fVerBDG ) then
  begin
   Result := False;
   Exit;
  end;

 try

  DMFD.spVrfInuNot.Close;
   DMFD.spVrfInuNot.ParamByName('@CodEmp').AsInteger := iCodEmp;
   DMFD.spVrfInuNot.ParamByName('@CodNot').AsInteger := iCodNot;
   DMFD.spVrfInuNot.ParamByName('@ModNot').AsInteger := iModNot;
   DMFD.spVrfInuNot.ParamByName('@SerNot').AsInteger := iSerNot;
  DMFD.spVrfInuNot.ExecProc;

  if ( DMFD.spVrfInuNot.Params[00].AsInteger = -1 ) then
   Result := False
  else if ( DMFD.spVrfInuNot.Params[00].AsInteger >= 0 ) then
   gCodPed := DMFD.spVrfInuNot.Params[00].AsInteger;

 except

  Application.Messagebox(PWideChar('Inconsistência na procedure de verificação de pedidos no ERP:' + gERP + ' !'),'Atenção!',MB_ICONERROR+mb_ok);
  Result := False;

 end;

 Case DMFD.spVrfInuNot.Params[00].AsInteger of
  -1: Application.MessageBox(PWideChar('Não será possível efetuar a inutilização, nota nº ' + IntToStr(iCodNot) + ', fora da faixa'), 'Atenção', MB_ICONINFORMATION );
 End;

end;

//------------------------------------------------------------------------------
// by Edson Lima ; 2017-1-12T0811
// Abre o banco de dados gerente relativo e verifica a conecção
//------------------------------------------------------------------------------
function TFrGBNFe.fVerBDG(): Boolean;
begin

 Result := True;

 if ( Length(Trim(gDBERP)) > 0 ) then
  begin

   //---------------------------------------------------------------------------
   // Conectar o banco de dados DBERP
   LerBDFD();
   try

    DMFD.FDConGer.LoginPrompt                := FrPar.chk_LoginPrompt_Ger.Checked;
    if ( FrPar.OSAuthent_Ger.Checked ) then
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'Yes'
    else
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'No';
    DMFD.FDConGer.Params.Values['MARS']      := 'Yes';
    DMFD.FDConGer.Params.Values['DriverID']  := FrPar.cbb_DriverID_Ger.Text;
    DMFD.FDConGer.Params.Values['Database']  := FrPar.edt_Database_Ger.Text;
    DMFD.FDConGer.Params.Values['Server'  ]  := FrPar.edt_Server_Ger.Text;
    if not ( FrPar.OSAuthent_Ger.Checked ) then
     begin
      DMFD.FDConGer.Params.Values['UserName']:= FrPar.edt_UserName_Ger.Text;
      DMFD.FDConGer.Params.Values['Password']:= FrPar.edt_Password_Ger.Text;
     end;
    DMFD.FDConGer.Connected                  := FrPar.chk_Connected_Ger.Checked;
    if not DMFD.FDConGer.Connected then
     begin
      Application.MessageBox(PWideChar('Banco de dados ERP:' + gERP + ' não conectado!'), 'Atenção', MB_ICONINFORMATION );
      Result := False;
     end;

   Except
    Application.MessageBox(PWideChar('Erro de conecção ERP:' + gERP + '!'), 'Atenção', MB_ICONINFORMATION );
    Result := False;
   end;

   //---------------------------------------------------------------------------

  end
 else
  begin

   Application.MessageBox(PWideChar('Variável do banco de dados ERP:' + gERP + ' vazia!'), 'Atenção', MB_ICONINFORMATION );
   Result := False;

  end;

 if not ( DMFD.FDConGer.Connected ) then
  begin

   Application.MessageBox(PWideChar('Banco de dados ERP:' + gERP + '  não conectado!'), 'Atenção', MB_ICONINFORMATION );
   Result := False;

  end;

end;

procedure TFrGBNFe.BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn1.Hint;

end;

procedure TFrGBNFe.BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn2.Hint;

end;

procedure TFrGBNFe.BitBtn5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn5.Hint;

end;

procedure TFrGBNFe.BitBtn6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn6.Hint;

end;

procedure TFrGBNFe.BitBtn7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn7.Hint;

end;

procedure TFrGBNFe.BitBtn8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn8.Hint;

end;

procedure TFrGBNFe.BitBtn9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn9.Hint;

end;

procedure TFrGBNFe.BitBtn11MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn11.Hint;

end;

procedure TFrGBNFe.BitBtn13MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn13.Hint;

end;

procedure TFrGBNFe.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn4.Hint;

end;

procedure TFrGBNFe.BitBtn15MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn15.Hint;

end;

procedure TFrGBNFe.BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn3.Hint;

end;

procedure TFrGBNFe.BitBtn16MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn16.Hint;

end;

procedure TFrGBNFe.btn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := Btn3.Hint;

end;

procedure TFrGBNFe.BitBtn10MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn10.Hint;

end;

procedure TFrGBNFe.BitBtn14MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn14.Hint;

end;

procedure TFrGBNFe.BitBtn12MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := BitBtn12.Hint;

end;

procedure TFrGBNFe.GroupBox2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox2.Hint;

end;

procedure TFrGBNFe.GroupBox3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox3.Hint;

end;

procedure TFrGBNFe.GroupBox9MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox9.Hint;

end;

procedure TFrGBNFe.grp1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[1].Text := grp1.Hint;

end;

procedure TFrGBNFe.GroupBox4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox4.Hint;

end;

procedure TFrGBNFe.GroupBox1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := GroupBox1.Hint;

end;

procedure TFrGBNFe.dxTLCancMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

procedure TFrGBNFe.dxTLContMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

procedure TFrGBNFe.dxTLDenegMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

procedure TFrGBNFe.dxTLInutMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

procedure TFrGBNFe.dxTLTransMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin

 StatusBar1.Panels[1].Text := Panel6.Hint;

end;

procedure TFrGBNFe.edt_CodEmpExit(Sender: TObject);
begin

 if StrToIntDef(edt_CodEmp.    Text, 0) < 1 then
  begin
   edt_CodEmp.Text := '001';
  end;

 DMFD.FDQuery4.Close;
 DMFD.FDQuery4.SQL.Clear;
 DMFD.FDQuery4.SQL.Add( 'select * from emitente            ' );
 DMFD.FDQuery4.SQL.Add( ' where codigo_loja =:codigo_loja  ' );
 DMFD.FDQuery4.ParamByName('codigo_loja').AsInteger := StrToIntDef(edt_CodEmp.Text, 0);
 DMFD.FDQuery4.Open;

 if DMFD.FDQuery4.IsEmpty then
  begin
   edt_CodEmp.Text   := '0';
   Label1.Font.Color := clRed;
   Label1.Caption    := ' NÃO EXISTE EMPRESA CADASTRADA !';
  end
 else
  begin
   gCodEmp                                 := StrZero(edt_CodEmp.Text, 03);
   Label1.Font.Color                       := clBlue;
   Label1.Caption                          := ' ' + vartostr(DMFD.FDQuery4['razao_social']) + ' - ' + vartostr(DMFD.FDQuery4['nome_fantasia']);
   ACBrNFe1.Configuracoes.WebServices.UF   := DMFD.FDQuery4['uf'];

   // Verifica e atualiza os caminhos
   LerConf1();                                                                  // Ler o arquivo ini e pega os parâmetros
   pAtrCam();                                                                   // Atribui caminhos do ini nas variáveis padrão e executavel
   LerConf2();                                                                  // Atribui dados nos parâmetros acbr
   pAtuNFe();                                                                   // Procedure de atualização

   pVerPas();

   // By Edson Lima ; 18/06/2012 ; 09:00
   ACBrNFe1.Configuracoes.Arquivos.Salvar                        := true;
   ACBrNFe1.Configuracoes.Arquivos.EmissaoPathNFe                := true;
   ACBrNFe1.Configuracoes.Arquivos.PathNFe                       := gCamXml;
   ACBrNFe1.Configuracoes.Arquivos.DownloadDFe.PathDownload      := gCamXml;                // Edson Lima ; 2019-07-29
   //ACBrNFe1.Configuracoes.Arquivos.PathCan                       := gCamXml;              // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathInu                       := gCamXml;
   //ACBrNFe1.Configuracoes.Arquivos.PathDPEC                      := gCamXml;              // trunk2
   //ACBrNFe1.Configuracoes.Arquivos.PathCCe                       := gCamXml;              // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathEvento                    := gCamXml;
   ACBrNFe1.Configuracoes.Geral.Salvar                           := true;                   //ckSalvar.Checked;
   ACBrNFe1.Configuracoes.Arquivos.PathSalvar                    := gCamLog;                // trunk2
   ACBrNFe1.Configuracoes.Arquivos.PathSchemas                   := gCamSch;                // trunk2
  end;

end;

procedure TFrGBNFe.edt_CodEmpKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8)]) then Abort;

end;

procedure TFrGBNFe.edt_NumNNFKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8)]) then Abort;

end;

procedure TFrGBNFe.ConsultaWeb5EnviaEmailParaDestinatrios1Click(
  Sender: TObject);
begin
 if ( FrEmail = nil ) then
   FrEmail := TFrEmail.Create(Application);
 FrEmail.ShowModal;
 FrEmail.BringToFront;
end;

procedure TFrGBNFe.ConsultaWeb5EnviaEmailParaDestinatrios6Click(
  Sender: TObject);
begin

 // No caso de suporte deve entrar com a senha
 FrGBNFe.pSuporteSenha();

 if ( gSenhaBD <> '' ) then
  begin

   if ( FrEmail = nil ) then
     FrEmail := TFrEmail.Create(Application);
   FrEmail.BringToFront;
   FrEmail.ShowModal;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-6-23T0854
// Objetivo: function que Define dados para mostrar a mensagem fora do onshow
//------------------------------------------------------------------------------
function TFrGBNFe.fMensOnShow(iTipMens : Integer ; sVarMens : String): Integer;
begin

 case iTipMens of

  0 : // MB_ICONINFORMATION + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação importante' ),
                            MB_ICONINFORMATION + MB_OK );
    Result := ID_OK;
   end;

  1 : // MB_MB_ICONHAND + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação de auxílio' ),
                            MB_ICONHAND + MB_OK );
    Result := ID_OK;
   end;

  2 : // MB_ICONQUESTION + MB_YESNO
   begin
    if Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                              pWideChar( 'Qustionamento importante' ),
                              MB_ICONQUESTION + MB_YESNO ) = IDNO then
     Result := ID_NO;
   end;

  3 : // MB_ICONQUESTION + MB_YESNOCANCEL
   begin
    if Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                              pWideChar( 'Qustionamento importante' ),
                              MB_ICONQUESTION + MB_YESNOCANCEL ) = ID_NO then
     Result := ID_NO;
   end;

  4 : // MB_ICONEXCLAMATION + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONEXCLAMATION + MB_OK );
    Result := ID_OK;
   end;

  5 : // MB_ICONASTERISK + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONASTERISK + MB_OK );
    Result := ID_OK;
   end;

  6 : // MB_ICONWARNING + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONWARNING + MB_OK );
    Result := ID_OK;
   end;

  7 : // MB_ICONERROR + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONERROR + MB_OK );
    Result := ID_OK;
   end;

  8 : // MB_ICONSTOP + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONSTOP + MB_OK );
    Result := ID_OK;
   end;

  9 : // MB_ICONMASK + MB_OK
   begin
    Application.MessageBox( pWideChar(pAnsiString( sVarMens )),
                            pWideChar( 'Informação Importante' ),
                            MB_ICONMASK + MB_OK );
    Result := ID_OK;
   end;

 end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-8-17T0910
// Objetivo: Verifica se foi selecionado algum item na treelist (novo berlin)
//------------------------------------------------------------------------------
function TFrGBNFe.fTemSel(cxTL : TcxTreeList; cxTLbSel : Tcxtreelistcolumn): Boolean;
var
 I : integer;
begin

 result := false;

 for I := 0 to cxTL.Count -1 do
  begin

   if ( cxTL.Items[I].Texts[cxTLbSel.ItemIndex] = 'True' ) then
    result := true;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-8-17T0910
// Objetivo: Filtra a nota  (novo berlin)
//------------------------------------------------------------------------------
procedure TFrGBNFe.pSelNfe(FD : TFDQuery ; CN1, CN2: Integer ; CN3: TDateTime ; CN4, CN5: string);
begin

 // CN1 = Codigo_Loja
 // CN2 = NNf
 // CN3 = dEmi
 // CN4 = Modelo
 // CN5 = Serie

 try

  FD.Close;
  FD.SQL.Clear;
  FD.SQL.Add( 'Select distinct                                               ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( '  ''''                          as checado                    ' );
  FD.SQL.Add( ' ,t1.codigo_loja                as nfe_codigo_loja            ' );
  FD.SQL.Add( ' ,t1.natOp                      as nfe_natOp                  ' );
  FD.SQL.Add( ' ,t1.Serie                      as nfe_Serie                  ' );
  FD.SQL.Add( ' ,t1.nNF                        as nfe_nnf                    ' );
  FD.SQL.Add( ' ,t1.Modelo                     as nfe_Modelo                 ' );
  FD.SQL.Add( ' ,t1.dEmi                       as nfe_demi                   ' );
  FD.SQL.Add( ' ,t1.total_nf                   as nfe_total_nf               ' );
  FD.SQL.Add( ' ,t1.protocolo                  as nfe_protocolo              ' );
  FD.SQL.Add( ' ,t1.recibo                     as nfe_recibo                 ' );
  FD.SQL.Add( ' ,t1.chave_nfe                  as nfe_chave_nfe              ' );
  FD.SQL.Add( ' ,t1.codigo_destinatario        as nfe_codigo_destinatario    ' );
  FD.SQL.Add( ' ,t1.situacao                   as nfe_situacao               ' );
  FD.SQL.Add( ' ,t1.motivo                     as nfe_motivo                 ' );
  FD.SQL.Add( ' ,t1.data_hora_recebimento      as nfe_data_hora_recebimento  ' );
  FD.SQL.Add( ' ,t1.nr_dpec                    as nfe_nr_dpec                ' );
  FD.SQL.Add( ' ,t1.DatNFCe                    as nfe_DatNFCe                ' );
  FD.SQL.Add( ' ,t1.CalcHoraNFCe               as nfe_CalcHoraNFCe           ' );
  FD.SQL.Add( ' ,t1.indFinal                   as nfe_indFinal               ' );
  FD.SQL.Add( ' ,t1.indPres                    as nfe_indPres                ' );
  FD.SQL.Add( ' ,t1.CodPed                     as nfe_CodPed                 ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,t2.razao_social               as des_razao_social           ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,t2.cnpj                     	 as des_cnpj                   ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' from nfe t1                                                  ' );
  FD.SQL.Add( ' inner join destinatario   t2 on t1.codigo_destinatario =     ' );
  FD.SQL.Add( '                           t2.codigo                          ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' where                                                        ' );
  FD.SQL.Add( '       (t1.codigo_loja          = :codigo_loja)               ' );
  FD.SQL.Add( ' and   (t1.nNF                  = :nNF)                       ' );
  FD.SQL.Add( ' and   (t1.dEmi                 = :dEmi)                      ' );
  FD.SQL.Add( ' and   (t1.Modelo               = :Modelo)                    ' );
  FD.SQL.Add( ' and   (t1.Serie                = :Serie)                     ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' order by t1.Modelo, t1.Serie, t1.dEmi, t1.nNF                ' );
  FD.SQL.Add( '                                                              ' );
  FD.ParamByName('codigo_loja').AsInteger  := CN1;
  FD.ParamByName('nNF').AsInteger          := CN2;
  FD.ParamByName('dEmi').AsString          := FormatDateTime('yyyy/mm/dd', CN3);
  FD.ParamByName('Modelo').AsString        := CN4;
  FD.ParamByName('Serie').AsString         := CN5;
  FD.Open;

 except on e:exception do

  Application.Messagebox( pWideChar(pAnsiString( 'Tabela NFe inconsistente!' + chr(13) +
                         e.Message )), 'Atenção!', MB_ICONERROR+mb_ok);

 end;

end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: 30.08.2017T10:15
// Ultima Alt.:
// Descrição..: Proc. que encrypta
//
//------------------------------------------------------------ok-
function TFrGBNFe.EncryptStr(const S: String; Key: Word): String;
var I: Integer;
const C1 = 53761;
      C2 = 32618;
begin

  Result := S;

  for I := 1 to Length(S) do begin

    Result[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(Result[I]) + Key) * C1 + C2;

  end;

end;

//el------------------GB Informática Ltda------------------------
//
// Data.......: 30.08.2017T10:15
// Ultima Alt.:
// Descrição..: Proc. que decrypta
//
//------------------------------------------------------------ok-
function TFrGBNFe.DecryptStr(const S: String; Key: Word): String;
var
 I       : Integer;
const
      C1 = 53761;
      C2 = 32618;
begin

  Result := S;

  for I := 1 to Length(S) do begin

   Result[I] := char(byte(S[I]) xor (Key shr 8));
   Key := (byte(S[I]) + Key) * C1 + C2;

  end;

end;

function TFrGBNFe.GetBuildInfo(Prog: string): string;
var
 VerInfoSize: DWORD;
 VerInfo: Pointer;
 VerValueSize: DWORD;
 VerValue: PVSFixedFileInfo;
 Dummy: DWORD;
 V1, V2, V3, V4: Word;
begin
 try
   VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
   GetMem(VerInfo, VerInfoSize);
   GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
   VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
   with (VerValue^) do
   begin
     V1 := dwFileVersionMS shr 16;
     V2 := dwFileVersionMS and $FFFF;
     V3 := dwFileVersionLS shr 16;
     V4 := dwFileVersionLS and $FFFF;
   end;
   FreeMem(VerInfo, VerInfoSize);
   Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
 except
   Result := '6.0.0.0';
 end;
end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: 01.11.2017T15:41
// Descrição..: Mostra se o sistema está em produção ou em homologação
//
//------------------------------------------------------------ok-
procedure TFrGBNFe.pMostraTipoAmb();
begin

 if ( FrPar.rgTipoAmb.ItemIndex = 0 ) then
  begin

   FrGBNFe.SBProd.Enabled := True;
   FrGBNFe.SBProd.BringToFront;
   FrGBNFe.SBHomol.Enabled := False;
   FrGBNFe.SBHomol.SendToBack;

  end

 else

  begin

   FrGBNFe.SBProd.Enabled := False;
   FrGBNFe.SBProd.SendToBack;
   FrGBNFe.SBHomol.Enabled := True;
   FrGBNFe.SBHomol.BringToFront;

  end;

 //-----------------------------------------------------------------------------
 // Mostra a versão em processo
 if ( FrGBNFe.SBProd.Enabled ) then
  FrGBNFe.lbl1.Font.Color := $0054A800
 else
  FrGBNFe.lbl1.Font.Color := $000000FD;

 case ( FrPar.cbb2.ItemIndex ) of

  0 : FrGBNFe.lbl1.Caption := 'Ve3131';

  1 : FrGBNFe.lbl1.Caption := 'Ve4040';

  2 : FrGBNFe.lbl1.Caption := 'Ve4031';

  3 : FrGBNFe.lbl1.Caption := 'Ve3140';

 end;

 FrGBNFe.lbl1.Hint    := FrPar.cbb2.Text;

 LerConf2;

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: 10.11.2017T14:35
// Descrição..: Entra com a senha no caso de rotina restrita ao suporte
//
//------------------------------------------------------------ok-
procedure TFrGBNFe.pSuporteSenha();
var
 vPassword, vP : string;
begin

 vP := Chr(103) + Chr(98) + Chr(64) + Chr(49);
 vPassword := gSenhaBD;

 while ( (vPassword) <> (vP) ) do
  begin

   if not(InputQuery('Password!', #1'Senha:', vPassword )) then
    exit;

    if ( (vPassword) <> (vP) ) then
     MessageDlg('Senha inválida, tente novamente!', mtConfirmation,[mbOK],0)
    else
     gSenhaBD := vPassword;

  end;

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: 31.01.2018T15:59
// Descrição..: Gera, Assina e Valida as notas NFe e NFCe
//
//------------------------------------------------------------ok-
procedure TFrGBNFe.pGAV();
begin

 // Este processo segue exatamente essa sequancia 1º Gera, 2º Assina e 3º Valida
 ACBrNFe1.NotasFiscais.GerarNFe;
 ACBrNFe1.NotasFiscais.Assinar;
 ACBrNFe1.NotasFiscais.Validar;

end;

//el------------------GB Informática Ltda------------------------
//
// By.........: Edson Lima
// Data.......: 10.11.2017T14:35
// Descrição..: Encrypta e Decrypta
//
//------------------------------------------------------------ok-
function TFrGBNFe.Crypt(Action, Src: String): String;

Label Fim;

var
 KeyLen : Integer;
	KeyPos : Integer;
	OffSet : Integer;
	Dest, Key : String;
	SrcPos : Integer;
	SrcAsc : Integer;
	TmpSrcAsc : Integer;
	Range : Integer;

begin

	if (Src = '') Then
  begin
   Result:= '';
   Goto Fim;
  end;

	Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
	Dest := '';
	KeyLen := Length(Key);
	KeyPos := 0;
	SrcPos := 0;
	SrcAsc := 0;
	Range := 256;

	if (Action = UpperCase('E')) then
  begin

   Randomize;
   OffSet := Random(Range);
   Dest := Format('%1.2x',[OffSet]);

   for SrcPos := 1 to Length(Src) do
    begin

     Application.ProcessMessages;
     SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;

     if KeyPos < KeyLen then
      KeyPos := KeyPos + 1 else KeyPos := 1;

     SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
     Dest := Dest + Format('%1.2x',[SrcAsc]);
     OffSet := SrcAsc;

    end;

	end

	else if (Action = UpperCase('D')) then
  begin

  try

   OffSet := StrToIntDef('$' + copy(Src,1,2), 0);
   SrcPos := 3;

  except                                                                        // Caso não seja um digito hexadecimal

   Result := Src;
   exit;

  end;

   repeat

    try

     SrcAsc := StrToIntDef('$' + copy(Src,SrcPos,2), 0);

     if (KeyPos < KeyLen) Then
      KeyPos := KeyPos + 1
     else
      KeyPos := 1;

     TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);

     if TmpSrcAsc <= OffSet then
      TmpSrcAsc := 255 + TmpSrcAsc - OffSet
     else
      TmpSrcAsc := TmpSrcAsc - OffSet;

     Dest := Dest + Chr(TmpSrcAsc);

     OffSet := SrcAsc;

     SrcPos := SrcPos + 2;

    except                                                                      // Caso não seja um digito hexadecimal

     Result := Src;
     exit;

    end;


   until (SrcPos >= Length(Src));

  end;

 try
 	Result := Dest;
 except
  Result := Src;
 end;

 Fim:

end;

//------------------------------------------------------------------------------
// Precedure de mudança de versão
// by Edson Lima - 2018-6-4
//------------------------------------------------------------------------------
function TFrGBNFe.fMudaVersao( op, md: integer ): boolean;
begin

 ACBrNFe1.SSL.SSLType := LT_all;

 if (  (op = 1)                or
      ((op = 2) and (md=55))   or
      ((op = 3) and (md=65)) ) then
  begin

   ACBrNFe1.SSL.SSLType                      := LT_TLSv1_2;                     // Seta TLSv1_2
   ACBrNFe1.Configuracoes.Geral.VersaoDF     := ve400;                          // seta Versão ve400
   if ( md = 65 ) then
    ACBrNFe1.Configuracoes.Geral.VersaoQRCode := veqr200                        // Seta o qrcode ve400

  end

 else

  begin

   ACBrNFe1.Configuracoes.Geral.VersaoQRCode  := veqr000;                       // Seta o qrcode ve310
   ACBrNFe1.Configuracoes.Geral.VersaoDF      := ve310;

  end;

 result := true;

end;

//------------------------------------------------------------------------------
// By Edson Lima ; 2018-07-12
// Function que Renderiza o fuso horário
//------------------------------------------------------------------------------
function TFrGBNFe.fFusHor(HorVer, Hor_DF, FusHor :Boolean ; CdUf  :Integer ;
                          CdMun, vdhEve  :String ; dhEve :TDateTime ): TDateTime;
var
 vUTC : string;

begin

 // Define o valor da UTC
 case Cduf of

  11, 12, 13, 14:         vUTC := '-04:00';           //Região Norte            // 11-Rondônia/RO - 12-Acre/AC - 13-Amazonas/AM - 14-Roraima/RR

  15, 16, 17:             vUTC := '-03:00';                                     // 15-Pará/PA - 16-Amapá/AP - 17-Tocantins/TO

  21, 22, 23, 24, 25:     vUTC := '-03:00';           //Região Nordeste         // 21-Maranhão/MA - 22-Piauí/PI - 23-Ceará/CE - 24-Rio Grande do Norte/RN - 25-Paraíba/PBPB

  26:

   begin

    if ( CdMun = '2605459') then
                          vUTC := '-02:00'                                      // 26-Pernambuco/PE - 2605459 - Fernando de Noronha
      else
                          vUTC := '-03:00';                                     // 26-Pernambuco/PE
   end;

  27, 28, 29:             vUTC := '-03:00';                                     // 27-Alagoas/AL - 28-Sergipe/SE - 29-Bahia/BA

  31, 32, 33, 35:         vUTC := '-03:00';           //Região Sudeste          // 31-Minas Gerais/MG - 32-Espírito Santo/ES - 33-Rio de Janeiro/RJ - 35-São Paulo/SP

  41, 42, 43:             vUTC := '-03:00';           // Região Sul             // 41-Paraná/PR - 42-Santa Catarina/SC - 43-Rio Grande do Sul/RS

  50, 51:                 vUTC := '-04:00';           // Região Centro-Oeste    // 50-Mato Grosso do Sul/MS - 51-Mato Grosso/MT

  52, 53:                 vUTC := '-03:00';                                     // 52-Goiás/GO - 53-Distrito Federal/DF

 end;

 // Rotina para o período do Horário de Verão
 if HorVer then
  dhEve := (IncHour(dhEve, -1));                                                // se for horário de verão, reduz uma hora no horário do evento

 // Rotina para o período do Horário do DF
 if Hor_DF then
  dhEve := (IncHour(dhEve, 1));                                                 // se utilizar o horário de Brasília, adiciona uma hora no horário do evento

 dhEve := (IncSecond(dhEve, 1));

 vdhEve := DateTimeToStr(dhEve);

 // vdhEve := FormatDateTime('yyyy/mm/dd"T"hh:nn:ss', dhEve);

 // atruibui o utc no horário do evento
 if FusHor then
  result := StrToDatetime(vdhEve + vUTC);

end;

//------------------------------------------------------------------------------
//
//
//------------------------------------------------------------------------------
// by Edson Lima - 2017-5-25T1430
// nomeclatura da letra identificadora conforme tipo - Delphi Berlin
//
// B - BLOB    /  b - Boolean  /  c - Currency    /  d - DateTime
// f - Float   /  F - FMTBcd   /  i - Integer     /  l - LargeInt
// o - Object  /  S - Single   /  m - Smallint    /  Q - SQLTimeStamp
// s - String  /  v - Variant  /  W - WideString  /  w - Word
//
//------------------------------------------------------------------------------

// Faz uma lista dos arquivos .fr3
//  for fsFiles in TDirectory.GetFiles('..\Delphi\Report\') do
//    if Pos('.fr3', LowerCase(fsFiles)) > 0 then
//      lstbxFR3.AddItem(fsFiles, nil);
//
//
//------------------------------------------------------------------------------

end.

