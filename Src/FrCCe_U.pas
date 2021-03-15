unit FrCCe_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.Menus, System.StrUtils, Vcl.Imaging.jpeg, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxCustomData,
  cxStyles, cxTL, cxCheckBox, cxMaskEdit, cxTextEdit, cxCalendar,
  cxCurrencyEdit, cxRichEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
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
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, cxTLData, cxDBTL, RxCtrls,
  System.Actions, Vcl.ActnList, cxImageComboBox;

type
  TFrCCe = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Panel9: TPanel;
    BitBtn12: TBitBtn;
    Panel4: TPanel;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    GroupBox11: TGroupBox;
    Edit8: TEdit;
    GroupBox15: TGroupBox;
    Panel3: TPanel;
    GroupBox1: TGroupBox;
    Edit_Nota: TEdit;
    GroupBox2: TGroupBox;
    GroupBox5: TGroupBox;
    Memo1: TMemo;
    GroupBox6: TGroupBox;
    Memo2: TMemo;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Edit_Evento: TEdit;
    Edit_Sit: TEdit;
    Edit_SitDesc: TEdit;
    GroupBox3: TGroupBox;
    Edit_idLote: TEdit;
    GroupBox10: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    Edit_Leiase: TEdit;
    SpeedButton3: TSpeedButton;
    PopupMenu1: TPopupMenu;
    LimparCorreo1: TMenuItem;
    DesfazeraUltimaIncluso1: TMenuItem;
    Edit_DataEvento: TEdit;
    Edit_dtRegEvento: TEdit;
    GroupBox4: TGroupBox;
    Edit_id: TEdit;
    GroupBox7: TGroupBox;
    Edit_nProt: TEdit;
    GroupBox14: TGroupBox;
    Edit_emailDest: TEdit;
    Label1: TLabel;
    GroupBox16: TGroupBox;
    Edit_Ondesele: TEdit;
    Edit_Campo: TEdit;
    grp1: TGroupBox;
    edit_Serie: TEdit;
    pnl1: TPanel;
    cxTLC: TcxTreeList;
    cxTLClLot: TcxTreeListColumn;
    cxTLClnNF: TcxTreeListColumn;
    cxTLCiEve: TcxTreeListColumn;
    cxTLCsSit: TcxTreeListColumn;
    cxTLCsMot: TcxTreeListColumn;
    cxTLCdDtE: TcxTreeListColumn;
    cxTLCs_ID: TcxTreeListColumn;
    cxTLCsOrg: TcxTreeListColumn;
    cxTLCsTpE: TcxTreeListColumn;
    cxTLCseMD: TcxTreeListColumn;
    cxTLCdDRE: TcxTreeListColumn;
    cxTLCsCor: TcxTreeListColumn;
    cxTLCsnPr: TcxTreeListColumn;
    cxTLCsEvN: TcxTreeListColumn;
    cxTLCsCoN: TcxTreeListColumn;
    cxTLCsSiN: TcxTreeListColumn;
    cxTLCsMoN: TcxTreeListColumn;
    cxTLCdDRN: TcxTreeListColumn;
    cxTLCsNPN: TcxTreeListColumn;
    cxTLCdDRS: TcxTreeListColumn;
    cxTLClSiS: TcxTreeListColumn;
    cxTLCsMoS: TcxTreeListColumn;
    cxTLCsMod: TcxTreeListColumn;
    cxTLCsSer: TcxTreeListColumn;
    btn1: TRxSpeedButton;
    cxTLCdDEm: TcxTreeListColumn;
    procedure SpeedButton4Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8Change(Sender: TObject);
    procedure LimparCorreo1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Memo2Enter(Sender: TObject);
    procedure Memo2Exit(Sender: TObject);
    procedure DesfazeraUltimaIncluso1Click(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Edit_NotaKeyPress(Sender: TObject; var Key: Char);
    procedure Edit_NotaExit(Sender: TObject);
    procedure GroupBox6Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Edit_NotaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure GroupBox11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox10MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox14MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox13MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
    procedure cxTLCClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxTLCCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure p_Atualiza();                                                     // Atualiza dados da CCe
    Procedure p_ImprimeCCe();                                                   // Imprime CCe
    Procedure pAtuTL( cxTLC : TcxTreeList; cxTLClLot  :  Tcxtreelistcolumn ;
                                           cxTLClnNF  :  Tcxtreelistcolumn ;
                                           cxTLCsMod  :  Tcxtreelistcolumn ;
                                           cxTLCsSer  :  Tcxtreelistcolumn ;
                                           cxTLCiEve  :  Tcxtreelistcolumn ;
                                           cxTLCdDtE  :  Tcxtreelistcolumn ;
                                           cxTLCsSit  :  Tcxtreelistcolumn ;
                                           cxTLCsMot  :  Tcxtreelistcolumn ;
                                           cxTLCs_ID  :  Tcxtreelistcolumn ;
                                           cxTLCsOrg  :  Tcxtreelistcolumn ;
                                           cxTLCsTpE  :  Tcxtreelistcolumn ;
                                           cxTLCseMD  :  Tcxtreelistcolumn ;
                                           cxTLCdDRE  :  Tcxtreelistcolumn ;
                                           cxTLCsCor  :  Tcxtreelistcolumn ;
                                           cxTLCsnPr  :  Tcxtreelistcolumn ;
                                           cxTLCsEvN  :  Tcxtreelistcolumn ;
                                           cxTLCsCoN  :  Tcxtreelistcolumn ;
                                           cxTLCsSiN  :  Tcxtreelistcolumn ;
                                           cxTLCsMoN  :  Tcxtreelistcolumn ;
                                           cxTLCdDRN  :  Tcxtreelistcolumn ;
                                           cxTLCsNPN  :  Tcxtreelistcolumn ;
                                           cxTLCdDRS  :  Tcxtreelistcolumn ;
                                           cxTLClSiS  :  Tcxtreelistcolumn ;
                                           cxTLCsMoS  :  Tcxtreelistcolumn ;
                                           cxTLCdDEm  :  Tcxtreelistcolumn ;
                                           FD         :  TFDQuery );            // Atualiza dados das TreeLest

    procedure pSelCCe(FD : TFDQuery ; CN1, CN2: Integer ;
                      CN3: TDateTime ; CN4, CN5, CN6: string);                  // Filtra a nota manifestada (novo berlin)

  end;

var
 FrCCe: TFrCCe;

 // vari�veis local
 v_Aux, Ver_Laiaute, cOrgao, v_tpAmb, v_CNPJ_CPF, v_chNFe,
 tpEvento, v_tpEvento, v_nSeqEvento, Ver_CCe,  xCondUso,
 xEvento                                   : string;

 v_cStat, v_xMotivo, v_dhRegEvento, v_nProt: String;

 v_dias: Extended;                                                              // contador de dias
 v_novo: boolean;                                                               // define se estiver criando uma nova carta
 v_alte: boolean;                                                               // define se estiver alterando nova carta existente


implementation

uses GBNFe_U, DMFD_U, FrPar_U, FrBuscaNota_U;

{$R *.dfm}

procedure TFrCCe.SpeedButton4Click(Sender: TObject);
begin

 if Application.MessageBox( PChar('Confirme a transmiss�o da CCe ?'), 'GBNFe - Transmitir CC-e', mb_IconInformation + mb_YesNo ) = IdYes then
  begin
   FrCCe.Edit_NotaExit(Sender);
   FrGBNFe.TransmiteCCe();
   FrGBNFe.pAtuNFe();
  end;

 // atualiza tabela CCe --------------------------------------------------------
 DMFD.FDQuery11.Close;
 DMFD.FDQuery11.Open;
 //*****************************************************************************

 PageControl1Change(Sender);

end;

procedure TFrCCe.BitBtn12Click(Sender: TObject);
begin
 close;
end;

procedure TFrCCe.FormShow(Sender: TObject);
begin

 //-----------------------------------------------------------------------------
 // Inicializa o status
 FrGBNFe.fMudaVersao( FrPar.cbb2.ItemIndex, gModelo );                                  // Mudan�a de vers�o

 try

  FrGBNFe.ACBrNFe1.WebServices.StatusServico.Executar;

 except on e:Exception do

  ShowMessage(e.Message);

 end;
 //-----------------------------------------------------------------------------

 // Define os parametros de relat�rios
 FrGBNFe.pDefineRel();

 // Ativa tabela CCe
 DMFD.FDQuery11.Active := True;

 FrCCe.Height := 590;
 FrCCe.Width  := 1100;
 FrCCe.Position := poScreenCenter;

 FrCCe.PageControl1.TabIndex := 1;
 v_novo := False;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 DMFD.FDQuery11.Close;
  DMFD.FDQuery11.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
  DMFD.FDQuery11.ParamByName('Evento').Value          := '';
  DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
 DMFD.FDQuery11.Open;

 // Limpa tela de edi��o
 FrCCe.PageControl1Change(Sender);

 // Atualiza treelist
 pAtuTL(cxTLC, cxTLClLot, cxTLClnNF, cxTLCsMod, cxTLCsSer, cxTLCiEve, cxTLCdDtE,
               cxTLCsSit, cxTLCsMot, cxTLCs_ID, cxTLCsOrg, cxTLCsTpE, cxTLCseMD,
               cxTLCdDRE, cxTLCsCor, cxTLCsnPr, cxTLCsEvN, cxTLCsCoN, cxTLCsSiN,
               cxTLCsMoN, cxTLCdDRN, cxTLCsNPN, cxTLCdDRS, cxTLClSiS, cxTLCsMoS,
               cxTLCdDEm, DMFD.FDQuery11);

end;

procedure TFrCCe.PageControl1Change(Sender: TObject);
begin
 if FrCCe.PageControl1.TabIndex = 0 then
  begin
   if FrCCe.Edit_Sit.Text = '128' then
    begin
     FrCCe.BitBtn1.Enabled := True;
     FrCCe.BitBtn2.Enabled := True;
     FrCCe.BitBtn3.Enabled := False;
     FrCCe.BitBtn4.Enabled := False;
    end
   else if FrCCe.Edit_Sit.Text = '135' then
    begin
     FrCCe.BitBtn1.Enabled := True;
     FrCCe.BitBtn2.Enabled := True;
     FrCCe.BitBtn3.Enabled := True;
     FrCCe.BitBtn4.Enabled := True;
    end
   else if Trim(FrCCe.Edit_Sit.Text) <> '' then
    begin
     FrCCe.BitBtn1.Enabled := True;
     FrCCe.BitBtn2.Enabled := True;
     FrCCe.BitBtn3.Enabled := False;
     FrCCe.BitBtn4.Enabled := False;
    end
   else
    begin
     // Limpa os campos da carta de corre��o
     FrCCe.Edit_idLote.Text            := '';
     FrCCe.Edit_Nota.Text              := '';
     FrCCe.Edit_Serie.Text             := '';
     FrCCe.Edit_Sit.Text               := '';
     FrCCe.Edit_SitDesc.Text           := '';
     FrCCe.Edit_DataEvento.Text        := '';
     FrCCe.Edit_id.Text                := '';
     FrCCe.Edit_Evento.Text            := '';
     FrCCe.Edit_dtRegEvento.Text       := '';
     FrCCe.Edit_nProt.Text             := '';
     FrCCe.Edit_emailDest.Text         := '';
     FrCCe.Memo1.Text                  := '';
     FrCCe.Memo2.Text                  := '';
     FrCCe.Edit_Nota.Enabled           := False;
     FrCCe.Edit_Nota.Color             := $00DDDDDD;

     v_alte := False;
     v_novo := False;
     FrCCe.BitBtn1.Enabled := True;
     FrCCe.BitBtn2.Enabled := False;
     FrCCe.BitBtn3.Enabled := False;
     FrCCe.BitBtn4.Enabled := False;
    end;
   if not v_novo then
    begin
     FrCCe.SpeedButton2.Enabled := False;
     FrCCe.SpeedButton1.Enabled := False;
     FrCCe.SpeedButton4.Enabled := False;
    end;
   if v_novo then
    begin
     FrCCe.SpeedButton2.Enabled := True;
     FrCCe.SpeedButton1.Enabled := False;
     FrCCe.SpeedButton4.Enabled := False;
    end
   else
    begin
     if v_alte then
      begin
       FrCCe.SpeedButton2.Enabled := True;
       FrCCe.SpeedButton1.Enabled := True;
       FrCCe.SpeedButton4.Enabled := True;
      end;
     if not v_alte then
      begin
       FrCCe.SpeedButton2.Enabled := False;
       FrCCe.SpeedButton1.Enabled := False;
       FrCCe.SpeedButton4.Enabled := False;
      end;
    end;
  end
 else
  begin
   FrCCe.btn1.Enabled         := False;
   FrCCe.BitBtn1.Enabled      := False;
   FrCCe.BitBtn2.Enabled      := False;
   FrCCe.BitBtn3.Enabled      := False;
   FrCCe.BitBtn4.Enabled      := False;
   FrCCe.SpeedButton2.Enabled := False;
   FrCCe.SpeedButton1.Enabled := False;
   FrCCe.SpeedButton4.Enabled := False;
  end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 if FrCCe.PageControl1.TabIndex = 0 then
  begin
   DMFD.FDQuery11.Close;
    DMFD.FDQuery11.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery11.ParamByName('Evento').Value          := FrCCe.Edit_Evento.Text;
    DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
   DMFD.FDQuery11.Open;
  end
 else
  begin
   DMFD.FDQuery11.Close;
    DMFD.FDQuery11.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery11.ParamByName('Evento').Value          := '';
    DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
   DMFD.FDQuery11.Open;
  end;

 // Atualiza treelist
 pAtuTL(cxTLC, cxTLClLot, cxTLClnNF, cxTLCsMod, cxTLCsSer, cxTLCiEve, cxTLCdDtE,
               cxTLCsSit, cxTLCsMot, cxTLCs_ID, cxTLCsOrg, cxTLCsTpE, cxTLCseMD,
               cxTLCdDRE, cxTLCsCor, cxTLCsnPr, cxTLCsEvN, cxTLCsCoN, cxTLCsSiN,
               cxTLCsMoN, cxTLCdDRN, cxTLCsNPN, cxTLCdDRS, cxTLClSiS, cxTLCsMoS,
               cxTLCdDEm, DMFD.FDQuery11);

 if DMFD.FDQuery11.IsEmpty then
  p_Atualiza();

end;

procedure TFrCCe.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin

 // Altere a propriedade do KeypPeview do Form pra true
 if not (ActiveControl is TcxTreeList) then
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

procedure TFrCCe.Edit8Change(Sender: TObject);
begin
 // Filtra a tabela CCe
 DMFD.FDQuery11.Close;
  DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
 DMFD.FDQuery11.Open;

 // Atualiza treelist
 pAtuTL(cxTLC, cxTLClLot, cxTLClnNF, cxTLCsMod, cxTLCsSer, cxTLCiEve, cxTLCdDtE,
               cxTLCsSit, cxTLCsMot, cxTLCs_ID, cxTLCsOrg, cxTLCsTpE, cxTLCseMD,
               cxTLCdDRE, cxTLCsCor, cxTLCsnPr, cxTLCsEvN, cxTLCsCoN, cxTLCsSiN,
               cxTLCsMoN, cxTLCdDRN, cxTLCsNPN, cxTLCdDRS, cxTLClSiS, cxTLCsMoS,
               cxTLCdDEm, DMFD.FDQuery11);

end;

procedure TFrCCe.LimparCorreo1Click(Sender: TObject);
begin
 FrCCe.Memo2.Clear;
end;

procedure TFrCCe.SpeedButton3Click(Sender: TObject);
var
 Linha: String;
begin

 // Desativa o <enter>
 FrCCe.KeyPreview := False;

 // Faz a cr�tica nos campos de entradas
 if (trim(FrCCe.Edit_Campo.Text) = '') then
  begin
   ShowMessage('N�o existe dados no campo "Campo"!');
   exit;
  end;

 if (trim(FrCCe.Edit_Ondesele.Text) = '')then
  begin
   ShowMessage('N�o existe dados no campo "Onde se l�"!');
   exit;
  end;

 if (trim(FrCCe.Edit_Leiase.Text) = '')then
  begin
   ShowMessage('N�o existe dados no campo "Leia-se"!');
   exit;
  end;

 // Define a linha do memo ; by Edson Lima ; 27-12-2012 ; 09:07
 Linha := ('No campo:[ ' + trim(FrCCe.Edit_Campo.Text) + ' ], onde se l�: [ ' + trim(FrCCe.Edit_Ondesele.Text) + ' ], leia-se: [ ' + trim(FrCCe.Edit_Leiase.Text) + ' ]');

 // Campo memo (pula linha) quando se inclui novas altera��es
 if v_novo then
  if (Length(FrCCe.Memo2.Text) > 0) then
   FrCCe.Memo2.Perform(EM_REPLACESEL, 1, LongInt(PAnsiChar(#13#10 + Linha)))
  else
   FrCCe.Memo2.Perform(EM_REPLACESEL, 1, LongInt(PAnsiChar(Linha)))
 else
  if (Length(FrCCe.Memo2.Text) > 0) then
   FrCCe.Memo2.Perform(EM_REPLACESEL, 1, LongInt(PAnsiChar(Linha + #13#10)))
  else
   FrCCe.Memo2.Perform(EM_REPLACESEL, 1, LongInt(PAnsiChar(Linha)));

 // Limpa os campos de corre��o
 FrCCe.Edit_Campo.Text       := '';
 FrCCe.Edit_Ondesele.Text    := '';
 FrCCe.Edit_Leiase.Text      := '';

 // Ativa novamente o <enter>
 FrCCe.KeyPreview := True;
end;

procedure TFrCCe.Memo2Enter(Sender: TObject);
begin
 FrCCe.KeyPreview := False;
end;

procedure TFrCCe.Memo2Exit(Sender: TObject);
begin
 FrCCe.KeyPreview := True;
end;

procedure TFrCCe.DesfazeraUltimaIncluso1Click(Sender: TObject);
begin
 FrCCe.Memo2.Perform(EM_UNDO,0,0);
end;

procedure TFrCCe.PopupMenu1Popup(Sender: TObject);
begin
 if (FrCCe.Memo2.Perform(EM_CANUNDO,0 , 0) <> 0) then
  FrCCe.PopupMenu1.Items[1].Visible := True
 else
  FrCCe.PopupMenu1.Items[1].Visible := False;
end;

procedure TFrCCe.BitBtn1Click(Sender: TObject);
var
 v_idLote: Integer;
begin
 // Permite editar nota
 FrCCe.PageControl1.TabIndex := 0;

 v_novo                            := True;
 v_alte                            := False;
 FrCCe.Edit_Nota.Enabled           := True;
 FrCCe.btn1.Enabled                := True;
 //FrCCe.Edit_Nota.ReadOnly          := False;                                  // by Edson Lima ; Inibido para dar entrada somente pelo F8
 FrCCe.Edit_Nota.Color             := $00C4F0FF;

 FrCCe.BitBtn1.Enabled             := True;
 FrCCe.BitBtn2.Enabled             := False;
 FrCCe.BitBtn3.Enabled             := False;
 FrCCe.BitBtn4.Enabled             := False;

 FrCCe.SpeedButton2.Enabled        := True;
 FrCCe.SpeedButton1.Enabled        := False;
 FrCCe.SpeedButton4.Enabled        := False;

 FrCCe.Edit_Campo.Enabled          := True;
 FrCCe.Edit_Ondesele.Enabled       := True;
 FrCCe.Edit_Leiase.Enabled         := True;
 FrCCe.SpeedButton3.Enabled        := True;
 FrCCe.Memo2.Enabled               := False;

 // Carrega as corre��es anteriores
 if DMFD.FDQuery11['CCe_xCorrecao'] <> null then
  FrCCe.Memo2.Text                 := DMFD.FDQuery11['CCe_xCorrecao']
 else
  FrCCe.Memo2.Text                 := '';

 // Limpa os campos
 DMFD.FDQuery11.First;
 v_idLote := 0;
 While not DMFD.FDQuery11.Eof do
  begin
   if  (DMFD.FDQuery11['CCe_idLote'] > v_idLote) then
    v_idLote := DMFD.FDQuery11['CCe_idLote'];
   DMFD.FDQuery11.Next;
  end;
 FrCCe.Edit_idLote.Text := IntToStr(v_idLote + 1);
 FrCCe.Edit_Nota.Text              := '';
 FrCCe.Edit_Serie.Text             := '';
 FrCCe.Edit_Sit.Text               := '';
 FrCCe.Edit_SitDesc.Text           := '';
 FrCCe.Edit_DataEvento.Text        := '';
 FrCCe.Edit_id.Text                := '';
 FrCCe.Edit_Evento.Text            := '';
 FrCCe.Edit_dtRegEvento.Text       := '';
 FrCCe.Edit_nProt.Text             := '';
 FrCCe.Edit_emailDest.Text         := '';
 FrCCe.Memo1.Text                  := '';
 FrCCe.Memo2.Text                  := '';
 FrCCe.Edit_Nota.SetFocus;
end;

procedure TFrCCe.SpeedButton2Click(Sender: TObject);
begin

 if v_alte then
  begin

   // Altera CCe
   if (StrToInt(FrCCe.Edit_Nota.Text) > 0) then
    begin

     try

      DMFD.FDQuery2.DisableControls;
      DMFD.FDQuery2.Close;
      DMFD.FDQuery2.SQL.Clear;
      DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                                   ' );
      DMFD.FDQuery2.SQL.Add( 'Update NFe_CCe Set                                   ' );
      DMFD.FDQuery2.SQL.Add( '    idLote         = :idLote                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,Codigo_Loja    = :Codigo_Loja                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,nNF            = :nNF                            ' );
      DMFD.FDQuery2.SQL.Add( '   ,Evento	        = :Evento	                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,Ver_Laiaute    = :Ver_Laiaute                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,id   	         = :id   	                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,cOrgao         = :cOrgao                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,chave_nfe	     = :chave_nfe	                     ' );
      DMFD.FDQuery2.SQL.Add( '   ,tpEvento       = :tpEvento                       ' );
      DMFD.FDQuery2.SQL.Add( '   ,nSeqEvento   	 = :nSeqEvento	                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,Ver_CCe	       = :Ver_CCe	                       ' );
      DMFD.FDQuery2.SQL.Add( '   ,desc_Evento    = :desc_Evento                    ' );
      DMFD.FDQuery2.SQL.Add( '   ,xCorrecao	     = :xCorrecao	                     ' );
      DMFD.FDQuery2.SQL.Add( '   ,xCondUso	      = :xCondUso	                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,cStat          = :cStat                          ' );
      DMFD.FDQuery2.SQL.Add( '   ,xMotivo        = :xMotivo                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,emailDest      = :emailDest                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,nProt          = :nProt                          ' );
      DMFD.FDQuery2.SQL.Add( 'where                                                ' );
      DMFD.FDQuery2.SQL.Add( '    Codigo_Loja    = :Codigo_Loja  and               ' );
      DMFD.FDQuery2.SQL.Add( '    nNF            = :nNF          and               ' );
      DMFD.FDQuery2.SQL.Add( '    Evento         = :Evento       and               ' );
      DMFD.FDQuery2.SQL.Add( '    dEmi           = :dEmi         and               ' );
      DMFD.FDQuery2.SQL.Add( '    Modelo         = :Modelo       and               ' );
      DMFD.FDQuery2.SQL.Add( '    Serie          = :Serie                          ' );
      DMFD.FDQuery2.ParamByName('idLote'     ).Value  := StrToInt(FrCCe.Edit_idLote.Text);
      DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToInt(FrGBNFe.edt_CodEmp.text);
      DMFD.FDQuery2.ParamByName('nNF'        ).Value  := StrToInt(FrCCe.Edit_Nota.Text);
      DMFD.FDQuery2.ParamByName('Evento'     ).Value  := FrCCe.Edit_Evento.Text;
      DMFD.FDQuery2.ParamByName('dEmi'       ).Value  := StrToDateTime( FormatDateTime('dd/mm/yyyy', DMFD.FDQuery5['nfe_dEmi']) );
      DMFD.FDQuery2.ParamByName('Modelo'     ).Value  := DMFD.FDQuery5['nfe_Modelo'];
      DMFD.FDQuery2.ParamByName('Serie'      ).Value  := DMFD.FDQuery5['nfe_Serie'];
      DMFD.FDQuery2.ParamByName('Ver_Laiaute').Value  := '';
      DMFD.FDQuery2.ParamByName('id'   	     ).Value  := FrCCe.Edit_id.Text;
      DMFD.FDQuery2.ParamByName('cOrgao'     ).Value  := '';
      DMFD.FDQuery2.ParamByName('chave_nfe'  ).Value  := v_chNFe;
      DMFD.FDQuery2.ParamByName('tpEvento'   ).Value  := c_tpEvento;
      DMFD.FDQuery2.ParamByName('nSeqEvento' ).Value  := StrToInt(FrCCe.Edit_Evento.Text);
      DMFD.FDQuery2.ParamByName('Ver_CCe'    ).Value  := '';
      DMFD.FDQuery2.ParamByName('desc_Evento').Value  := c_desc_Evento;
      DMFD.FDQuery2.ParamByName('xCorrecao'  ).Value  := FrCCe.Memo2.Text;
      DMFD.FDQuery2.ParamByName('xCondUso'   ).Value  := c_xCondUso;
      DMFD.FDQuery2.ParamByName('cStat'      ).Value  := '';
      DMFD.FDQuery2.ParamByName('xMotivo'    ).Value  := '';
      DMFD.FDQuery2.ParamByName('emailDest'  ).Value  := FrCCe.Edit_emailDest.Text;
      DMFD.FDQuery2.ParamByName('nProt'      ).Value  := '';
      DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToInt(FrGBNFe.edt_CodEmp.text);
      DMFD.FDQuery2.ParamByName('nNF'        ).Value  := StrToInt(FrCCe.Edit_Nota.Text);
      DMFD.FDQuery2.ParamByName('Evento'     ).Value  := FrCCe.Edit_Evento.Text;

      DMFD.FDQuery2.ExecSQL;

     except
      Application.Messagebox('ERRO: CCe n�o alterada !','Aten��o!',mb_iconstop+mb_ok);
      v_alte := False;

     end;

    end;

  end;

 if v_novo then
  begin

   // Grava novo CCe
   if (StrToInt(FrCCe.Edit_Nota.Text) > 0) then
    begin

     try

      DMFD.FDQuery2.DisableControls;
      DMFD.FDQuery2.Close;
      DMFD.FDQuery2.SQL.Clear;
      DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                                   ' );
      DMFD.FDQuery2.SQL.Add( 'Insert into NFe_CCe (                                ' );
      DMFD.FDQuery2.SQL.Add( '    idLote                                           ' );
      DMFD.FDQuery2.SQL.Add( '   ,Codigo_Loja                                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,nNF                                              ' );
      DMFD.FDQuery2.SQL.Add( '   ,Evento	                                          ' );
      DMFD.FDQuery2.SQL.Add( '   ,dEmi	          	                                 ' );
      DMFD.FDQuery2.SQL.Add( '   ,Modelo	       	                                  ' );
      DMFD.FDQuery2.SQL.Add( '   ,Serie	         	                                 ' );
      DMFD.FDQuery2.SQL.Add( '   ,Ver_Laiaute                                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,id   	                                           ' );
      DMFD.FDQuery2.SQL.Add( '   ,cOrgao                                           ' );
      DMFD.FDQuery2.SQL.Add( '   ,chave_nfe	                                       ' );
      DMFD.FDQuery2.SQL.Add( '   ,tpEvento                                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,nSeqEvento	                                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,Ver_CCe	                                         ' );
      DMFD.FDQuery2.SQL.Add( '   ,desc_Evento                                      ' );
      DMFD.FDQuery2.SQL.Add( '   ,xCorrecao	                                       ' );
      DMFD.FDQuery2.SQL.Add( '   ,xCondUso	                                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,cStat                                            ' );
      DMFD.FDQuery2.SQL.Add( '   ,xMotivo                                          ' );
      DMFD.FDQuery2.SQL.Add( '   ,emailDest                                        ' );
      DMFD.FDQuery2.SQL.Add( '   ,nProt)                                           ' );
      DMFD.FDQuery2.SQL.Add( '  Values (                                           ' );
      DMFD.FDQuery2.SQL.Add( '     :idLote                                         ' );
      DMFD.FDQuery2.SQL.Add( '   , :Codigo_Loja                                    ' );
      DMFD.FDQuery2.SQL.Add( '   , :nNF                                            ' );
      DMFD.FDQuery2.SQL.Add( '   , :Evento	                                        ' );
      DMFD.FDQuery2.SQL.Add( '   , :dEmi  	                                        ' );
      DMFD.FDQuery2.SQL.Add( '   , :Modelo	                                        ' );
      DMFD.FDQuery2.SQL.Add( '   , :Serie 	                                        ' );
      DMFD.FDQuery2.SQL.Add( '   , :Ver_Laiaute                                    ' );
      DMFD.FDQuery2.SQL.Add( '   , :id   	                                         ' );
      DMFD.FDQuery2.SQL.Add( '   , :cOrgao                                         ' );
      DMFD.FDQuery2.SQL.Add( '   , :chave_nfe	                                     ' );
      DMFD.FDQuery2.SQL.Add( '   , :tpEvento                                       ' );
      DMFD.FDQuery2.SQL.Add( '   , :nSeqEvento	                                    ' );
      DMFD.FDQuery2.SQL.Add( '   , :Ver_CCe	                                       ' );
      DMFD.FDQuery2.SQL.Add( '   , :desc_Evento                                    ' );
      DMFD.FDQuery2.SQL.Add( '   , :xCorrecao	                                     ' );
      DMFD.FDQuery2.SQL.Add( '   , :xCondUso	                                      ' );
      DMFD.FDQuery2.SQL.Add( '   , :cStat                                          ' );
      DMFD.FDQuery2.SQL.Add( '   , :xMotivo                                        ' );
      DMFD.FDQuery2.SQL.Add( '   , :emailDest                                      ' );
      DMFD.FDQuery2.SQL.Add( '   , :nProt)                                         ' );
      DMFD.FDQuery2.ParamByName('idLote'     ).Value  := StrToInt(FrCCe.Edit_idLote.Text);
      DMFD.FDQuery2.ParamByName('Codigo_Loja').Value  := StrToInt(FrGBNFe.edt_CodEmp.text);
      DMFD.FDQuery2.ParamByName('nNF'        ).Value  := StrToInt(FrCCe.Edit_Nota.Text);
      DMFD.FDQuery2.ParamByName('Evento'     ).Value  := FrCCe.Edit_Evento.Text;
      DMFD.FDQuery2.ParamByName('dEmi'       ).Value  := StrToDateTime( FormatDateTime('dd/mm/yyyy', DMFD.FDQuery5['nfe_dEmi']) );
      DMFD.FDQuery2.ParamByName('Modelo'     ).Value  := DMFD.FDQuery5['nfe_Modelo'];
      DMFD.FDQuery2.ParamByName('Serie'      ).Value  := DMFD.FDQuery5['nfe_Serie'];
      DMFD.FDQuery2.ParamByName('Ver_Laiaute').Value  := '';
      DMFD.FDQuery2.ParamByName('id'   	     ).Value  := FrCCe.Edit_id.Text;
      DMFD.FDQuery2.ParamByName('cOrgao'     ).Value  := '';
      DMFD.FDQuery2.ParamByName('chave_nfe'  ).Value  := v_chNFe;
      DMFD.FDQuery2.ParamByName('tpEvento'   ).Value  := c_tpEvento;
      DMFD.FDQuery2.ParamByName('nSeqEvento' ).Value  := StrToInt(FrCCe.Edit_Evento.Text);
      DMFD.FDQuery2.ParamByName('Ver_CCe'    ).Value  := '';
      DMFD.FDQuery2.ParamByName('desc_Evento').Value  := c_desc_Evento;

      if (StrToInt(FrCCe.Edit_Evento.Text) > 1) then
       DMFD.FDQuery2.ParamByName('xCorrecao' ).Value  := (trim(FrCCe.Memo1.Lines.Text) + #13#10 + trim(FrCCe.Memo2.Lines.Text))
      else
       DMFD.FDQuery2.ParamByName('xCorrecao' ).Value  := FrCCe.Memo2.Text;

      DMFD.FDQuery2.ParamByName('xCondUso'   ).Value  := c_xCondUso;
      DMFD.FDQuery2.ParamByName('cStat'      ).Value  := '';
      DMFD.FDQuery2.ParamByName('xMotivo'    ).Value  := '';
      DMFD.FDQuery2.ParamByName('emailDest'  ).Value  := FrCCe.Edit_emailDest.Text;
      DMFD.FDQuery2.ParamByName('nProt'      ).Value  := '';

      DMFD.FDQuery2.ExecSQL;

     except

      Application.Messagebox('ERRO: CCe n�o criada !','Aten��o!',mb_iconstop+mb_ok);
      v_novo := False;

     end;

    end;

  end;

 // Salva dados na NFe que foi excluido da CCe (atualiza o numero do evento)
 if ((StrToInt(FrCCe.Edit_Nota.Text) > 0) and (v_alte or v_novo)) then
  begin

   try

    DMFD.FDQuery2.DisableControls;
    DMFD.FDQuery2.Close;
    DMFD.FDQuery2.SQL.Clear;
    DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                                     ' );
    DMFD.FDQuery2.SQL.Add( 'Update nfe set                                         ' );
    DMFD.FDQuery2.SQL.Add( '  evento_CCe               = :evento_CCe               ' );
    DMFD.FDQuery2.SQL.Add( 'where codigo_loja          = :codigo_loja              ' );
    DMFD.FDQuery2.SQL.Add( '  and demi                 = :demi                     ' );
    DMFD.FDQuery2.SQL.Add( '  and nnf                  = :nnf                      ' );
    DMFD.FDQuery2.SQL.Add( '  and Modelo               = :Modelo                   ' );
    DMFD.FDQuery2.SQL.Add( '  and Serie                = :Serie                    ' );
    DMFD.FDQuery2.Params[0].AsString  := Edit_Evento.Text;
    DMFD.FDQuery2.Params[1].AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery2.Params[2].Value     := StrToDateTime( FormatDateTime('dd/mm/yyyy', DMFD.FDQuery5['nfe_demi']) );
    DMFD.FDQuery2.Params[3].AsInteger := DMFD.FDQuery5['nfe_nnf'];
    DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery5['nfe_Modelo'];
    DMFD.FDQuery2.Params[5].AsString  := DMFD.FDQuery5['nfe_Serie'];

    try

     DMFD.FDQuery2.ExecSQL;

    except

     Application.Messagebox('ERRO: NFe n�o foi atualizado os dados da Nota!','Aten��o!',mb_iconstop+mb_ok);

    end;

    DMFD.FDQuery2.Close;

   finally

    DMFD.FDQuery2.EnableControls;

   end;

   // atualiza tabela CCe
   DMFD.FDQuery11.Close;
   DMFD.FDQuery11.Open;

   v_novo := False;
   v_alte := True;

   FrCCe.PageControl1Change(Sender);
   FrCCe.Edit_Nota.Enabled           := False;
   PageControl1.TabIndex             := 1;

  end;

 FrCCe.btn1.Enabled                := False;

 // Atualiza treelist
 pAtuTL(cxTLC, cxTLClLot, cxTLClnNF, cxTLCsMod, cxTLCsSer, cxTLCiEve, cxTLCdDtE,
               cxTLCsSit, cxTLCsMot, cxTLCs_ID, cxTLCsOrg, cxTLCsTpE, cxTLCseMD,
               cxTLCdDRE, cxTLCsCor, cxTLCsnPr, cxTLCsEvN, cxTLCsCoN, cxTLCsSiN,
               cxTLCsMoN, cxTLCdDRN, cxTLCsNPN, cxTLCdDRS, cxTLClSiS, cxTLCsMoS,
               cxTLCdDEm, DMFD.FDQuery11);

end;

procedure TFrCCe.Edit_NotaKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8)]) then Abort
 else Edit_NotaExit(Sender);

end;

procedure TFrCCe.Edit_NotaExit(Sender: TObject);
var
 v_evento, xAux              : string;
begin
 // Verifica se o campo da nota est� em branco, se sim aborta
 if FrCCe.Edit_Nota.Text = '' then exit;

 gBuscaChave  := Copy(Edit_id.Text, 3, 44);

 if (v_novo or v_alte) or (FrCCe.Edit_Nota.Text <> '') then
  begin

   v_aux := '';
   v_aux := FrGBNFe.edt_CodEmp.text + ',' + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp1.Date) + ''''+ ',';
   v_aux := v_aux + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp2.Date) + '''' + ',';
   v_Aux := v_Aux + '''' + trim(FrCCe.Edit_Nota.Text) + '''' + ',';
   v_aux := v_aux + '''' + FrGBNFe.edt_CodDes.Text + '''' + ',';
   v_aux := v_aux + '''' + '55' + '''' + ',';
   v_aux := v_aux + '''' + FrCCe.Edit_Serie.Text + '''' + ',';
   v_aux := v_aux + '''' + gBuscaChave + '''';

   DMFD.FDQuery5.Close;
   DMFD.FDQuery5.SQL.Clear;
   DMFD.FDQuery5.SQL.Add( 'exec sp_nfe_transmitidas ' + v_Aux );
   DMFD.FDQuery5.Open;

   if not DMFD.FDQuery5.IsEmpty then
    begin

     // Calcula a quantidade de dias desde que a NFe foi altorizada
     v_Dias := Int(( now() - VarToDateTime(DMFD.FDQuery5['nfe_data_hora_recebimento']) ));

     // Cinco anos mais 1 dia bisexto = 1826 dias
     //if ( ( now() - vDHR ) <= 1826) then
     if ( v_Dias <= 1826) then
      begin

       if (DMFD.FDQuery5['nfe_evento_CCe'] <> null) then
        v_evento := DMFD.FDQuery5['nfe_evento_CCe']
       else
        v_evento := '0';

       if (DMFD.FDQuery5['nfe_chave_nfe'] <> null) then
        v_chNFe := DMFD.FDQuery5['nfe_chave_nfe']
       else
        v_chNFe := '';

       if (trim(v_evento) = '') then v_evento := '0';

       if (StrToInt(v_evento) < 21) then
        begin
         if v_novo then
          begin
           if (StrToInt(v_evento) < 20) then
            begin
             if v_evento = '0' then
              FrCCe.Edit_Evento.Text        := '1'
             else
              begin
               DMFD.FDQuery2.Close;
               DMFD.FDQuery2.SQL.Clear;
               DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                         ' );
               DMFD.FDQuery2.SQL.Add( 'Select *                                   ' );
               DMFD.FDQuery2.SQL.Add( ' from nfe_CCe t1                           ' );
               DMFD.FDQuery2.SQL.Add( ' where t1.Codigo_Loja = :Codigo_Loja and   ' );
               DMFD.FDQuery2.SQL.Add( '       t1.nNF         = :Nota        and   ' );
               DMFD.FDQuery2.SQL.Add( '       t1.Evento      = :Evento      and   ' );
               DMFD.FDQuery2.SQL.Add( '       t1.dEmi        = :dEmi        and   ' );
               DMFD.FDQuery2.SQL.Add( '       t1.Modelo      = :Modelo      and   ' );
               DMFD.FDQuery2.SQL.Add( '       t1.Serie       = :Serie             ' );
               DMFD.FDQuery2.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
               DMFD.FDQuery2.ParamByName('Nota').AsString         := FrCCe.Edit_Nota.Text;
               DMFD.FDQuery2.ParamByName('Evento').AsString       := v_evento;
               DMFD.FDQuery2.ParamByName('dEmi').Value            := StrToDateTime( FormatDateTime('dd/mm/yyyy', VarToDateTime(DMFD.FDQuery5['nfe_demi'])) );
               DMFD.FDQuery2.ParamByName('Modelo').AsString       := DMFD.FDQuery5['nfe_Modelo'];
               DMFD.FDQuery2.ParamByName('Serie').AsString        := DMFD.FDQuery5['nfe_Serie'];
               DMFD.FDQuery2.Open;

               if ( not DMFD.FDQuery2.IsEmpty )  then
                begin
                 if ( Trim(DMFD.FDQuery2['cStat']) = '' )  then
                  begin
                   ShowMessage('Existe uma CCe criada anteriormente com o evento de n�. [' + v_evento + ']' + chr(13) +
                               'que ainda est� em aberto e n�o foi enviada, vc s� pode gerar' + chr(13) +
                               'uma nova CCe para essa nota depois de enviar est� CCe!');
                   FrCCe.Edit_Nota.Text := '';
                   FrCCe.Edit_Nota.SetFocus;
                   exit;
                  end;
                end;

                FrCCe.Edit_Evento.Text        := IntToStr(StrToInt(v_evento) + 1);

              end;
            end
           else
            begin
             ShowMessage('O n�mero de seq�encia do evento para essa nota j� atingiu' + chr(13) +
                         'o limite de permitido, de vinte eventos !');
             FrCCe.Edit_Nota.Text := '';
             FrCCe.Edit_Nota.SetFocus;
             exit;
            end;
          end;

         if v_alte then
          begin
           if (DMFD.FDQuery5['NFe_evento_CCe'] = Null) then
            FrCCe.Edit_Evento.Text        := '1'
           else
            FrCCe.Edit_Evento.Text        := IntToStr(StrToInt(DMFD.FDQuery5['NFe_evento_CCe']));
          end;

         v_nSeqEvento                   := FrCCe.Edit_Evento.Text;

         if (DMFD.FDQuery5['NFe_xCorrecao_CCe'] = Null) then
          FrCCe.Memo1.Text              := ''
         else
          FrCCe.Memo1.Text              := DMFD.FDQuery5['NFe_xCorrecao_CCe'];

         // FrCCe.Memo2.Text               := FrCCe.Memo1.Text;

         if (DMFD.FDQuery5['NFe_chave_nfe'] = Null) then
          v_chNFe                       := ''
         else
          v_chNFe                       := DMFD.FDQuery5['NFe_chave_nfe'];

         FrCCe.Edit_id.Text             := 'ID' + v_tpEvento + v_chNFe + v_nSeqEvento;

         // by Edson ; 2013/08/12T09:36 ; Contulta a nota na base sefaz para obter dados, ex: a data do evento..
         xAux                          := DMFD.FDQuery5['nfe_chave_nfe'];
         xAux                          := trim(gCamLog) + trim(xAux) + '-nfe.xml';
         FrGBNFe.ACBrNFe1.NotasFiscais.Clear;
         try
          FrGBNFe.ACBrNFe1.NotasFiscais.LoadFromFile(xAux);
         except
          ShowMessage('O arquivo XML referente esta nota n�o foi encontrado! ' + chr(13) +
                      'Selecione outra nota!');
          FrCCe.Edit_Nota.Text := '';
          FrCCe.Edit_Nota.SetFocus;
          exit;
         end;
        end
       else
        begin
         ShowMessage('O n�mero de seq�encia do evento para essa nota j� atingiu' + chr(13) +
                     'o limite de permitido, de vinte eventos !');
         FrCCe.Edit_Nota.Text := '';
         FrCCe.Edit_Nota.SetFocus;
        end;
      end
     else
      begin
       ShowMessage('NF-e autorizada h� mais de 1826 dias (43824) horas !' + chr(13) +
                   'Data da Autoriza��o ' + FormatDateTime('dd/mm/yyyy" "hh:mm:ss',
                    DMFD.FDQuery5['nfe_data_hora_recebimento']) + ' - ' + FloatToStr(v_Dias) + ' dias');
       FrCCe.Edit_Nota.Text := '';
       FrCCe.Edit_Nota.SetFocus;
      end;
    end
   else
    begin
     ShowMessage('Nota Fiscal eLetr�nica n�o encontrada ou n�o autorizada!');
     BitBtn2.Enabled := False;
     BitBtn3.Enabled := False;
     BitBtn4.Enabled := False;
     //PageControl1Change(Sender);
     //FrCCe.PageControl1.TabIndex := 1;
    end;
  end;

end;

procedure TFrCCe.GroupBox6Exit(Sender: TObject);
begin
 FrCCe.Edit_Nota.SetFocus;
end;

//******************************************************************************
// procedure p_Atualiza()
// by Edson ; 17/12/2013 ; 11:23 ; Atualiza os dados da CCe
procedure TFrCCe.p_Atualiza();
begin

 v_novo := False;

 // Limpa os campos
 FrCCe.Edit_idLote.Text            := '';
 FrCCe.Edit_Nota.Text              := '';
 FrCCe.Edit_Serie.Text             := '';
 FrCCe.Edit_Sit.Text               := '';
 FrCCe.Edit_SitDesc.Text           := '';
 FrCCe.Edit_DataEvento.Text        := '';
 FrCCe.Edit_id.Text                := '';
 FrCCe.Edit_Evento.Text            := '';
 FrCCe.Edit_dtRegEvento.Text       := '';
 FrCCe.Edit_nProt.Text             := '';
 FrCCe.Edit_emailDest.Text         := '';
 FrCCe.Memo1.Text                  := '';
 FrCCe.Memo2.Text                  := '';

end;

procedure TFrCCe.SpeedButton1Click(Sender: TObject);
begin
 // Verifica se o campo da nota est� em branco, se sim aborta
 if FrCCe.Edit_Nota.Text = '' then exit;

 // Acha a nota fiscal em transmitida se existir permite deletar
 v_aux := '';
 v_aux := FrGBNFe.edt_CodEmp.text + ',' + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp1.Date) + ''''+ ',';
 v_aux := v_aux + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp2.Date) + '''' + ',';
 v_Aux := v_Aux + '''' + trim(FrCCe.Edit_Nota.Text) + '''' + ',';
 v_aux := v_aux + '''' + FrGBNFe.edt_CodDes.Text + '''' + ',';
 v_aux := v_aux + '''' + '55' + '''' + ',';
 v_aux := v_aux + '''' + FrCCe.Edit_Serie.Text + '''';

 DMFD.FDQuery5.Close;
 DMFD.FDQuery5.SQL.Clear;
 DMFD.FDQuery5.SQL.Add( 'exec sp_nfe_transmitidas ' + v_Aux );
 DMFD.FDQuery5.Open;

 // Deleta nota na tabela CCe, existente em NFe transmitidas
 if not DMFD.FDQuery5.IsEmpty then
  begin

   if Application.MessageBox( PWideChar('Confirme a Exclus�o desta CCe?'), 'GBNFe - Exclus�o de CC-e', mb_IconInformation + mb_YesNo ) = IdNo then
    exit;

   try
    DMFD.FDQuery2.DisableControls;
    DMFD.FDQuery2.Close;
    DMFD.FDQuery2.SQL.Clear;
    DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                                     ' );
    DMFD.FDQuery2.SQL.Add( 'delete from NFe_CCe                                    ' );
    DMFD.FDQuery2.SQL.Add( 'where codigo_loja          = :codigo_loja              ' );
    DMFD.FDQuery2.SQL.Add( '  and nNf                  = :nNf                      ' );
    DMFD.FDQuery2.SQL.Add( '  and evento               = :evento                   ' );
    DMFD.FDQuery2.Params[0].AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery2.Params[1].AsInteger := StrToInt(FrCCe.Edit_Nota.Text);
    DMFD.FDQuery2.Params[2].AsString  := FrCCe.Edit_Evento.Text;
    try
     DMFD.FDQuery2.ExecSQL;
     PageControl1.TabIndex := 1;
    except
     Application.Messagebox('ERRO: CCe n�o foi deletada !','Aten��o!',mb_iconstop+mb_ok);
    end;
    DMFD.FDQuery2.Close;
   finally
    DMFD.FDQuery2.EnableControls;
    // atualiza tabela CCe
    DMFD.FDQuery11.Close;
    DMFD.FDQuery11.Open;
   end;

   // Salva dados na NFe que foi excluido da CCe (atualiza o numero do evento)
   try
    DMFD.FDQuery2.DisableControls;
    DMFD.FDQuery2.Close;
    DMFD.FDQuery2.SQL.Clear;
    DMFD.FDQuery2.SQL.Add( 'SET DATEFORMAT dmy                                     ' );
    DMFD.FDQuery2.SQL.Add( 'Update nfe set                                         ' );
    DMFD.FDQuery2.SQL.Add( '  evento_CCe               = :evento_CCe               ' );
    DMFD.FDQuery2.SQL.Add( 'where codigo_loja          = :codigo_loja              ' );
    DMFD.FDQuery2.SQL.Add( '  and demi                 = :demi                     ' );
    DMFD.FDQuery2.SQL.Add( '  and nnf                  = :nnf                      ' );
    DMFD.FDQuery2.SQL.Add( '  and Modelo               = :Modelo                   ' );
    DMFD.FDQuery2.SQL.Add( '  and Serie                = :Serie                    ' );
    if (StrToInt(VarToStr(DMFD.FDQuery5['nfe_evento_CCe'])) > 0) then
     DMFD.FDQuery2.Params[0].AsString  := IntToStr(StrToInt(DMFD.FDQuery5['nfe_evento_CCe'] - 1))
    else
     DMFD.FDQuery2.Params[0].AsString  := '0';
    DMFD.FDQuery2.Params[1].AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery2.Params[2].Value     := StrToDateTime( FormatDateTime('dd/mm/yyyy', DMFD.FDQuery5['nfe_demi']) );
    DMFD.FDQuery2.Params[3].AsInteger := DMFD.FDQuery5['nfe_nnf'];
    DMFD.FDQuery2.Params[4].AsString  := DMFD.FDQuery5['nfe_Modelo'];
    DMFD.FDQuery2.Params[5].AsString  := DMFD.FDQuery5['nfe_Serie'];
    try
     DMFD.FDQuery2.ExecSQL;
    except
     Application.Messagebox('ERRO: NFe n�o atualizou os dados da Nota!','Aten��o!',mb_iconstop+mb_ok);
    end;
    DMFD.FDQuery2.Close;
   finally
    DMFD.FDQuery2.EnableControls;
   end;

  end;

 //PageControl1Change(Sender);
 DMFD.FDConNFe.Connected := False;
 DMFD.FDConNFe.Connected := True;
 FormShow(Sender);

end;

procedure TFrCCe.BitBtn4Click(Sender: TObject);
begin

 if Application.MessageBox( PWideChar('Confirme a impress�o da CCe ?'), 'GBNFe - Impress�o CC-e', mb_IconInformation + mb_YesNo ) = IdYes then
  begin
   p_ImprimeCCe();
  end;

end;

procedure TFrCCe.p_ImprimeCCe();
var
 xAux_PDF, xAux_NFe, xAux_XML, xAux_XMLc  : String;
 Chave, idLote, CNPJ, nSeqEvento          : String;
 vEvento, vtpEvento, vn                   : String;
 vdhRegEvento                             : TDateTime;

begin

 // Verifica se o campo da nota est� em branco, se sim aborta
 if FrCCe.Edit_Nota.Text = '' then exit;

 if ( FrCCe.Edit_Nota.Text <> '' ) then
  begin

   v_aux := '';
   v_aux := FrGBNFe.edt_CodEmp.text + ',' + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp1.Date) + ''''+ ',';
   v_aux := v_aux + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp2.Date) + '''' + ',';
   v_Aux := v_Aux + '''' + trim(FrCCe.Edit_Nota.Text) + '''' + ',';
   v_aux := v_aux + '''' + FrGBNFe.edt_CodDes.Text + '''' + ',';
   v_aux := v_aux + '''' + '55' + '''' + ',';
   v_aux := v_aux + '''' + FrCCe.Edit_Serie.Text + '''' + ',';
   v_aux := v_aux + '''' + gBuscaChave + '''';

   DMFD.FDQuery5.Close;
   DMFD.FDQuery5.SQL.Clear;
   DMFD.FDQuery5.SQL.Add( 'exec sp_nfe_transmitidas ' + v_Aux );
   DMFD.FDQuery5.Open;

 end;

 //*******************************************************************************
 // by Edson ; 2013-03-04 ;08:41 ; Atribui��o para consistir nnf na hora do update
 gCdloja_Consiste := FrGBNFe.edt_CodEmp.Text;
 gdEmi_Consiste   := FormatDateTime('dd/mm/yyyy', DMFD.FDQuery5['nfe_demi']);
 gdEmiConsiste    := FormatDateTime('dd/mm/yyyy', DMFD.FDQryGeral2['nfe_demi']);
 gNNF_Consiste    := vartostr(DMFD.FDQuery5['nfe_nnf']);
 gSerie_Consiste  := vartostr(DMFD.FDQuery5['nfe_serie']);
 gSerie           := StrToInt(gSerie_Consiste);
 gModelo_Consiste := vartostr(DMFD.FDQuery5['nfe_modelo']);

 // Atribui��o de vari�veis que ser�o usadas durante a transmiss�o
 Chave         := DMFD.FDQuery11['CCe_chave_nfe'];
 idLote        := DMFD.FDQuery11['CCe_idLote'];
 CNPJ          := DMFD.FDQuery4['cnpj'];
 nSeqEvento    := DMFD.FDQuery11['CCe_nSeqEvento'];
 vEvento       := DMFD.FDQuery11['CCe_Evento'];
 vtpEvento     := DMFD.FDQuery11['CCe_tpEvento'];
 xAux          := DMFD.FDQuery5['nfe_chave_nfe'];
 if ( Trim(FrCCe.Edit_dtRegEvento.Text) = '' ) then
  vdhRegEvento  := Now()
 else if ( Trim(FrCCe.Edit_dtRegEvento.Text) = '30/12/1899' ) then
  begin
   if ( gdhRegEvento <> 30/12/1899 ) then
    vdhRegEvento  := gdhRegEvento
   else
    begin
     Application.Messagebox('Data de registro desatualizadas, Efetue uma consulta antes!','Aten��o!',mb_iconstop+mb_ok);
     Exit;
    end;
  end
 else
  vdhRegEvento  := StrToDateTime (FrCCe.Edit_dtRegEvento.Text);

 vn            := Format('%.2d', [StrToInt(nSeqEvento)] );                      // Formata vari�vel com dois digitos ex:[1] => [01]

 xAux_PDF      := (trim(gCamPDF) + trim(vtpEvento) + trim(xAux) + vn + '-ProcEventoNFe.pdf'); // tps_PDF, tps_preview ou tps_Print

 xAux_NFe      := (trim(gCamLog) + trim(xAux) + '-nfe.xml');                    // XML da NFe corrigida

 xAux_XML := trim(gCamXml) +                                                    // Caminho do arquivo log (gCamXml cont�m o caminho padr�o) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
             FormatDateTime('yyyymm', vdhRegEvento) +                           // Ano, m�s
             '\Evento\CCe\' +                                                   // Evento e CCe
             trim(vtpEvento) +                                                  // Tipo de evento, neste caso (110110)
             trim(xAux) +                                                       // Chave da NFe
             vn +                                                               // Sequencia do Evento com duas casas decimais
             '-procEventoNFe.xml';                                              // Final do nome + tipo (xml)

 xAux_XMLc := xAux_XML;

 if not ( FileExists(xAux_XML) ) then
  begin

   gImprimindoCCe := False;
   FrGBNFe.ConsultaCCe();
   vdhRegEvento  := gdhRegEvento;
   gImprimindoCCe := True;

   xAux_XML := trim(gCamXml) +                                                  // Caminho do arquivo log (gCamXml cont�m o caminho padr�o) ex: c:\Sistemas\GBNFe\Arq\Emp001\Xml\
               FormatDateTime('yyyymm', vdhRegEvento) +                         // Ano, m�s
               '\NFe\' +                                                        // Evento e CCe
               trim(xAux) +                                                     // Chave da NFe
               '-NFeDFe.xml';                                                   // Final do nome + tipo (xml)

   // Imprime
   FrGBNFe.ACBrNFe1.EventoNFe.Evento.Clear;
   FrGBNFe.ACBrNFe1.EventoNFe.LerXML(xAux_XML);

   if not ( FileExists(xAux_PDF) ) then
    FrGBNFe.ACBrNFe1.ImprimirEventoPDF;

   CopyFile(PWideChar(xAux_XML), PWideChar(xAux_XMLc), False);

  end
 else
  begin

   FrGBNFe.ACBrNFe1.EventoNFe.Evento.Clear;
   FrGBNFe.ACBrNFe1.EventoNFe.LerXML(xAux_XML);

   if not ( FileExists(xAux_PDF) ) then
    FrGBNFe.ACBrNFe1.ImprimirEventoPDF;

  end;

 FrGBNFe.ACBrNFe1.ImprimirEvento;

end;

procedure TFrCCe.Edit_NotaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if v_novo then
  begin
   if (key = (VK_F8)) then
    begin
     if ( FrBuscaNota = nil ) then
       FrBuscaNota := TFrBuscaNota.Create(Application);
     FrBuscaNota.BringToFront;
     FrBuscaNota.ShowModal;
     FrCCe.Edit_Nota.SetFocus;
    end;
  end;
end;

procedure TFrCCe.BitBtn2Click(Sender: TObject);
begin


 if Application.MessageBox( PWideChar('Confirme a consulta da CCe ?'), 'GBNFe - Consulta CC-e', mb_IconInformation + mb_YesNo ) = IdYes then
  begin
   FrCCe.Edit_NotaExit(Sender);
   FrGBNFe.ConsultaCCe();
   FrGBNFe.pAtuNFeT();
  end;

 FrCCe.PageControl1Change(Sender);
end;

procedure TFrCCe.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9', chr(8)]) then Abort;
end;

procedure TFrCCe.GroupBox11MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox11.Hint;
end;

procedure TFrCCe.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel5.Hint;
end;

procedure TFrCCe.PageControl1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := PageControl1.Hint;
end;

procedure TFrCCe.SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton2.Hint;
end;

procedure TFrCCe.SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton1.Hint;
end;

procedure TFrCCe.SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton4.Hint;
end;

procedure TFrCCe.Panel3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel3.Hint;
end;

procedure TFrCCe.GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox3.Hint;
end;

procedure TFrCCe.GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox1.Hint;
end;

procedure TFrCCe.GroupBox2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox2.Hint;
end;

procedure TFrCCe.GroupBox10MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox10.Hint;
end;

procedure TFrCCe.GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox4.Hint;
end;

procedure TFrCCe.GroupBox9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox9.Hint;
end;

procedure TFrCCe.GroupBox8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox8.Hint;
end;

procedure TFrCCe.GroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox7.Hint;
end;

procedure TFrCCe.GroupBox14MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox14.Hint;
end;

procedure TFrCCe.GroupBox12MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox12.Hint;
end;

procedure TFrCCe.GroupBox16MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox16.Hint;
end;

procedure TFrCCe.GroupBox13MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox13.Hint;
end;

procedure TFrCCe.GroupBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox5.Hint;
end;

procedure TFrCCe.GroupBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox6.Hint;
end;

procedure TFrCCe.SpeedButton3MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton3.Hint;
end;

procedure TFrCCe.BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn1.Hint;
end;

procedure TFrCCe.BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn2.Hint;
end;

procedure TFrCCe.BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn3.Hint;
end;

procedure TFrCCe.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn4.Hint;
end;

procedure TFrCCe.btn1Click(Sender: TObject);
begin

 if ( FrBuscaNota = nil ) then
   FrBuscaNota := TFrBuscaNota.Create(Application);
 FrBuscaNota.BringToFront;
 FrBuscaNota.ShowModal;
 FrCCe.Edit_Nota.SetFocus;

end;

procedure TFrCCe.cxTLCClick(Sender: TObject);
Var
 I, vLot : Integer;
begin

 // by Edson ; 2017-7-20T1028 ; Verifica qual linha foi selecionada do CCe
 for I := 0 to cxTLC.Count - 1 do
  begin

   if ( cxTLC.Items[I].Selected ) then
    begin

     // Filtra a cce selecionada com select
     pSelCCe( DMFD.FDQryGeral2, StrToInt(FrGBNFe.edt_CodEmp.Text),
                                StrToInt(cxTLC.Items[I].Texts[cxTLClnNF.ItemIndex]),
                                StrToDateTime(cxTLC.Items[I].Texts[cxTLCdDEm.ItemIndex]),
                                cxTLC.Items[I].Texts[cxTLCsMod.ItemIndex],
                                cxTLC.Items[I].Texts[cxTLCsSer.ItemIndex],
                                cxTLC.Items[I].Texts[cxTLCiEve.ItemIndex] );

     if not DMFD.FDQryGeral2.IsEmpty then
      begin
       FrCCe.PageControl1.TabIndex := 0;

       vLot := StrToInt(cxTLC.Items[I].Texts[cxTLClLot.ItemIndex]);

       FrCCe.Edit_idLote.Text             := FormatFloat('0000000', vLot);
       FrCCe.Edit_Nota.Text               := cxTLC.Items[I].Texts[cxTLClnNF.ItemIndex];
       FrCCe.Edit_Serie.Text              := cxTLC.Items[I].Texts[cxTLCsSer.ItemIndex];
       FrCCe.Edit_Sit.Text                := cxTLC.Items[I].Texts[cxTLCsSit.ItemIndex];
       FrCCe.Edit_SitDesc.Text            := cxTLC.Items[I].Texts[cxTLCsMot.ItemIndex];
       FrCCe.Edit_DataEvento.Text         := cxTLC.Items[I].Texts[cxTLCdDtE.ItemIndex];
       FrCCe.Edit_id.Text                 := cxTLC.Items[I].Texts[cxTLCs_ID.ItemIndex];
       FrCCe.Edit_Evento.Text             := cxTLC.Items[I].Texts[cxTLCiEve.ItemIndex];
       FrCCe.Edit_dtRegEvento.Text        := cxTLC.Items[I].Texts[cxTLCdDRE.ItemIndex];
       FrCCe.Edit_nProt.Text              := cxTLC.Items[I].Texts[cxTLCsnPr.ItemIndex];
       FrCCe.Edit_emailDest.Text          := cxTLC.Items[I].Texts[cxTLCseMD.ItemIndex];
       FrCCe.Memo1.Text                   := cxTLC.Items[I].Texts[cxTLCsCor.ItemIndex];

       //------------------------------------------------------------------

       if Trim(FrCCe.Edit_Sit.Text) <> '' then
        begin
         if Trim(FrCCe.Edit_Sit.Text) = '128' then
          begin
           FrCCe.BitBtn1.Enabled         := True;
           FrCCe.BitBtn2.Enabled         := True;
           FrCCe.BitBtn3.Enabled         := False;
           FrCCe.BitBtn4.Enabled         := False;
          end
         else if Trim(FrCCe.Edit_Sit.Text) = '135' then
          begin
           FrCCe.BitBtn1.Enabled         := True;
           FrCCe.BitBtn2.Enabled         := True;
           FrCCe.BitBtn3.Enabled         := True;
           FrCCe.BitBtn4.Enabled         := True;
          end
         else if Trim(FrCCe.Edit_Sit.Text) = '136' then
          begin
           FrCCe.BitBtn1.Enabled         := True;
           FrCCe.BitBtn2.Enabled         := True;
           FrCCe.BitBtn3.Enabled         := True;
           FrCCe.BitBtn4.Enabled         := True;
          end
         else
          begin
           FrCCe.BitBtn1.Enabled         := True;
           FrCCe.BitBtn2.Enabled         := True;
           FrCCe.BitBtn3.Enabled         := False;
           FrCCe.BitBtn4.Enabled         := False;
          end;
         // Desabilita as teclas Salvar, Excluir e Transmitir
         FrCCe.SpeedButton2.Enabled      := False;
         FrCCe.SpeedButton1.Enabled      := False;
         FrCCe.SpeedButton4.Enabled      := False;
         // Atribui outros para cor e atributos de n�o edi��o
         FrCCe.Edit_Campo.Enabled        := False;
         FrCCe.Edit_Ondesele.Enabled     := False;
         FrCCe.Edit_Leiase.Enabled       := False;
         FrCCe.SpeedButton3.Enabled      := False;
         FrCCe.Memo1.Enabled             := False;
         FrCCe.Memo2.Enabled             := False;
         // FrCCe.Edit_Nota.ReadOnly        := False;                               // by Edson Lima ; Inibido para dar entrada somente pelo F8
         v_novo                          := False;
         v_alte                          := False;
         FrCCe.BitBtn1.SetFocus;
        end
       else
        begin
         FrCCe.BitBtn1.Enabled           := True;
         FrCCe.BitBtn2.Enabled           := True;
         FrCCe.BitBtn3.Enabled           := False;
         FrCCe.BitBtn4.Enabled           := False;
         // Habilita as teclas Salvar, Excluir e Transmitir
         FrCCe.SpeedButton2.Enabled      := True;
         FrCCe.SpeedButton1.Enabled      := True;
         FrCCe.SpeedButton4.Enabled      := True;
         // Atribui outros para cor e atributos de edi��o
         FrCCe.Edit_Campo.Enabled        := True;
         FrCCe.Edit_Ondesele.Enabled     := True;
         FrCCe.Edit_Leiase.Enabled       := True;
         FrCCe.SpeedButton3.Enabled      := True;
         FrCCe.Memo2.Enabled             := True;
         FrCCe.Memo2.Text                := cxTLC.Items[I].Texts[cxTLCsCor.ItemIndex];
         FrCCe.Edit_Nota.Enabled         := True;
         v_novo                          := False;
         v_alte                          := True;
        end;
      end;

     gModelo      := StrToInt(cxTLC.Items[I].Texts[cxTLCsMod.ItemIndex]);
     gSerie       := StrToInt(cxTLC.Items[I].Texts[cxTLCsSer.ItemIndex]);
     gBuscaChave  := Copy(cxTLC.Items[I].Texts[cxTLCs_ID.ItemIndex], 3, 44);

     if not DMFD.FDQryGeral2.IsEmpty then
      begin

       v_aux := '';
       v_aux := FrGBNFe.edt_CodEmp.text + ',' + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp1.Date) + ''''+ ',';
       v_aux := v_aux + '''' + FormatDateTime('dd/mm/yyyy', FrGBNFe.cxdtp2.Date) + '''' + ',';
       v_Aux := v_Aux + '''' + trim(FrCCe.Edit_Nota.Text) + '''' + ',';
       v_aux := v_aux + '''' + FrGBNFe.edt_CodDes.Text + '''' + ',';
       v_aux := v_aux + '''' + IntToStr(gModelo) + '''' + ',';
       v_aux := v_aux + '''' + IntToStr(gSerie) + '''' + ',';
       v_aux := v_aux + '''' + gBuscaChave + '''';

       DMFD.FDQuery5.Close;
       DMFD.FDQuery5.SQL.Clear;
       DMFD.FDQuery5.SQL.Add( 'exec sp_nfe_transmitidas ' + v_Aux );
       DMFD.FDQuery5.Open;

      end;

    end

  end;

 // Define o parametro inicial do codigo da loja ; by Edson Lima ;
 if FrCCe.PageControl1.TabIndex = 0 then
  begin
   DMFD.FDQuery11.Close;
    DMFD.FDQuery11.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery11.ParamByName('Evento').Value          := FrCCe.Edit_Evento.Text;
    DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
   DMFD.FDQuery11.Open;
  end
 else
  begin
   DMFD.FDQuery11.Close;
    DMFD.FDQuery11.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.text);
    DMFD.FDQuery11.ParamByName('Evento').Value          := '';
    DMFD.FDQuery11.ParamByName('Nota').Value            := FrCCe.Edit8.Text;
   DMFD.FDQuery11.Open;
  end;

 // Atualiza treelist
 pAtuTL(cxTLC, cxTLClLot, cxTLClnNF, cxTLCsMod, cxTLCsSer, cxTLCiEve, cxTLCdDtE,
               cxTLCsSit, cxTLCsMot, cxTLCs_ID, cxTLCsOrg, cxTLCsTpE, cxTLCseMD,
               cxTLCdDRE, cxTLCsCor, cxTLCsnPr, cxTLCsEvN, cxTLCsCoN, cxTLCsSiN,
               cxTLCsMoN, cxTLCdDRN, cxTLCsNPN, cxTLCdDRS, cxTLClSiS, cxTLCsMoS,
               cxTLCdDEm, DMFD.FDQuery11);

 if DMFD.FDQuery11.IsEmpty then
  p_Atualiza();

end;

procedure TFrCCe.cxTLCCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin

 ACanvas.Font.Color := $00804000;

end;

procedure TFrCCe.BitBtn12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn12.Hint;
end;

procedure TFrCCe.Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel9.Hint;
end;

procedure TFrCCe.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Image1.Hint;
end;

procedure TFrCCe.Label1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Label1.Hint;
end;

procedure TFrCCe.GroupBox15MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox15.Hint;
end;

procedure TFrCCe.BitBtn3Click(Sender: TObject);
begin

 if Application.MessageBox( PWideChar('Confirma o envio do email da CCe ?'), 'GBNFe - Envio de eMail CC-e', mb_IconInformation + mb_YesNo ) = IdYes then
  begin
   gOpImpr := True;
   FrGBNFe.EnviaEmailCCe();
   FrGBNFe.pAtuNFe();
   gOpImpr := False;
  end;

 FrCCe.PageControl1Change(Sender);

end;

//------------------------------------------------------------------------------
// Procedure.: pAtuTLX
// Objetivo..: Atualiza dados das TreeLest
// Parametros: Recebe a TreeList e a Query - Monta a grade
// Cria��o...: 2017/7/17T1433
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrCCe.pAtuTL( cxTLC : TcxTreeList; cxTLClLot  :  Tcxtreelistcolumn ;
                                              cxTLClnNF  :  Tcxtreelistcolumn ;
                                              cxTLCsMod  :  Tcxtreelistcolumn ;
                                              cxTLCsSer  :  Tcxtreelistcolumn ;
                                              cxTLCiEve  :  Tcxtreelistcolumn ;
                                              cxTLCdDtE  :  Tcxtreelistcolumn ;
                                              cxTLCsSit  :  Tcxtreelistcolumn ;
                                              cxTLCsMot  :  Tcxtreelistcolumn ;
                                              cxTLCs_ID  :  Tcxtreelistcolumn ;
                                              cxTLCsOrg  :  Tcxtreelistcolumn ;
                                              cxTLCsTpE  :  Tcxtreelistcolumn ;
                                              cxTLCseMD  :  Tcxtreelistcolumn ;
                                              cxTLCdDRE  :  Tcxtreelistcolumn ;
                                              cxTLCsCor  :  Tcxtreelistcolumn ;
                                              cxTLCsnPr  :  Tcxtreelistcolumn ;
                                              cxTLCsEvN  :  Tcxtreelistcolumn ;
                                              cxTLCsCoN  :  Tcxtreelistcolumn ;
                                              cxTLCsSiN  :  Tcxtreelistcolumn ;
                                              cxTLCsMoN  :  Tcxtreelistcolumn ;
                                              cxTLCdDRN  :  Tcxtreelistcolumn ;
                                              cxTLCsNPN  :  Tcxtreelistcolumn ;
                                              cxTLCdDRS  :  Tcxtreelistcolumn ;
                                              cxTLClSiS  :  Tcxtreelistcolumn ;
                                              cxTLCsMoS  :  Tcxtreelistcolumn ;
                                              cxTLCdDEm  :  Tcxtreelistcolumn ;
                                              FD         :  TFDQuery );         // Atualiza dados das TreeLest
var
 nodPed : TcxTreeListNode;
begin

 cxTLC.Clear;

 if FD.RecordCount > 0 Then
  Begin

   FD.First;

   cxTLC.BeginUpdate;

    // La�o para montar grade

    While Not ( FD.Eof ) Do
     begin

      // Atribui a treelist
      nodPed := cxTLC.Add;

      nodPed.Values[cxTLClLot.ItemIndex] := FD.fieldByName('CCe_idLote'               ).AsString;
      nodPed.Values[cxTLClnNF.ItemIndex] := FD.fieldByName('CCe_nNF'                  ).AsInteger;
      nodPed.Values[cxTLCsMod.ItemIndex] := FD.fieldByName('CCe_Modelo'               ).AsString;
      nodPed.Values[cxTLCsSer.ItemIndex] := FD.fieldByName('CCe_Serie'                ).AsString;
      nodPed.Values[cxTLCiEve.ItemIndex] := FD.fieldByName('CCe_Evento'               ).AsString;
      nodPed.Values[cxTLCdDtE.ItemIndex] := FD.fieldByName('CCe_dhEvento'             ).AsDateTime;
      nodPed.Values[cxTLCsSit.ItemIndex] := FD.fieldByName('CCe_cStat'                ).AsString;
      nodPed.Values[cxTLCsMot.ItemIndex] := FD.fieldByName('CCe_xMotivo'              ).AsString;
      nodPed.Values[cxTLCs_ID.ItemIndex] := FD.fieldByName('CCe_id'                   ).AsString;
      nodPed.Values[cxTLCsOrg.ItemIndex] := FD.fieldByName('CCe_cOrgao'               ).AsString;
      nodPed.Values[cxTLCsTpE.ItemIndex] := FD.fieldByName('CCe_tpEvento'             ).AsString;
      nodPed.Values[cxTLCseMD.ItemIndex] := FD.fieldByName('CCe_emailDest'            ).AsString;
      nodPed.Values[cxTLCdDRE.ItemIndex] := FD.fieldByName('CCe_dhRegEvento'          ).AsDateTime;
      nodPed.Values[cxTLCsCor.ItemIndex] := FD.fieldByName('CCe_xCorrecao'            ).AsString;
      nodPed.Values[cxTLCsnPr.ItemIndex] := FD.fieldByName('CCe_nProt'                ).AsString;
      nodPed.Values[cxTLCsEvN.ItemIndex] := FD.fieldByName('NFe_evento_CCe'           ).AsString;
      nodPed.Values[cxTLCsCoN.ItemIndex] := FD.fieldByName('NFe_xCorrecao_CCe'        ).AsString;
      nodPed.Values[cxTLCsSiN.ItemIndex] := FD.fieldByName('NFe_cStat_CCe'            ).AsString;
      nodPed.Values[cxTLCsMoN.ItemIndex] := FD.fieldByName('NFe_xMotivo_CCe'          ).AsString;
      nodPed.Values[cxTLCdDRN.ItemIndex] := FD.fieldByName('NFe_dhRegEvento_CCe'      ).AsDateTime;
      nodPed.Values[cxTLCsNPN.ItemIndex] := FD.fieldByName('NFe_nProt_CCe'            ).AsString;
      nodPed.Values[cxTLCdDRS.ItemIndex] := FD.fieldByName('NFe_data_hora_recebimento').AsDateTime;
      nodPed.Values[cxTLClSiS.ItemIndex] := FD.fieldByName('NFe_situacao'             ).AsString;
      nodPed.Values[cxTLCsMoS.ItemIndex] := FD.fieldByName('NFe_motivo'               ).AsString;
      nodPed.Values[cxTLCdDEm.ItemIndex] := FD.fieldByName('NFe_dEmi'                 ).AsDateTime;

      FD.Next;

     end;

   cxTLC.EndUpdate;

  end;

end;

//------------------------------------------------------------------------------
// by Edson Lima - 2017-9-14T0920
// Objetivo: Filtra a nota manifestada  (novo berlin)
//------------------------------------------------------------------------------
procedure TFrCCe.pSelCCe(FD : TFDQuery  ; CN1, CN2: Integer ;
                         CN3: TDateTime ; CN4, CN5, CN6: string);

begin

 // CN1 = Codigo_Loja
 // CN2 = NNf
 // CN3 = dEmi
 // CN4 = Modelo
 // CN5 = Serie

 try

  FD.Close;
  FD.SQL.Clear;
  FD.SQL.Add( 'SET DATEFORMAT dmy                                            ' );
  FD.SQL.Add( 'Select distinct                                               ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( '  t1.idLote                  as    CCe_idLote                 ' );
  FD.SQL.Add( ' ,t1.Codigo_Loja             as    CCe_Codigo_Loja            ' );
  FD.SQL.Add( ' ,t1.nNF                     as    CCe_nNF                    ' );
  FD.SQL.Add( ' ,t1.dEmi                    as    CCe_dEmi                   ' );
  FD.SQL.Add( ' ,t1.Evento                  as    CCe_Evento                 ' );
  FD.SQL.Add( ' ,t1.Serie                   as    CCe_Serie                  ' );
  FD.SQL.Add( ' ,t1.Modelo                  as    CCe_Modelo                 ' );
  FD.SQL.Add( ' ,t1.Ver_Laiaute             as    CCe_Ver_Laiaute            ' );
  FD.SQL.Add( ' ,t1.id                      as    CCe_id                     ' );
  FD.SQL.Add( ' ,t1.cOrgao                  as    CCe_cOrgao                 ' );
  FD.SQL.Add( ' ,t1.chave_nfe               as    CCe_chave_nfe              ' );
  FD.SQL.Add( ' ,t1.dhEvento                as    CCe_dhEvento               ' );
  FD.SQL.Add( ' ,t1.tpEvento                as    CCe_tpEvento               ' );
  FD.SQL.Add( ' ,t1.nSeqEvento              as    CCe_nSeqEvento             ' );
  FD.SQL.Add( ' ,t1.Ver_CCe                 as    CCe_Ver_CCe                ' );
  FD.SQL.Add( ' ,t1.desc_Evento             as    CCe_desc_Evento            ' );
  FD.SQL.Add( ' ,t1.xCondUso                as    CCe_xCondUso               ' );
  FD.SQL.Add( ' ,t1.cStat                   as    CCe_cStat                  ' );
  FD.SQL.Add( ' ,t1.xMotivo                 as    CCe_xMotivo                ' );
  FD.SQL.Add( ' ,t1.emailDest               as    CCe_emailDest              ' );
  FD.SQL.Add( ' ,t1.dhRegEvento             as    CCe_dhRegEvento            ' );
  FD.SQL.Add( ' ,t1.nProt                   as    CCe_nProt                  ' );
  FD.SQL.Add( ' ,t1.xCorrecao               as    CCe_xCorrecao              ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,t2.evento_CCe              as    NFe_evento_CCe             ' );
  FD.SQL.Add( ' ,t2.xCorrecao_CCe           as    NFe_xCorrecao_CCe          ' );
  FD.SQL.Add( ' ,t2.cStat_CCe               as    NFe_cStat_CCe              ' );
  FD.SQL.Add( ' ,t2.xMotivo_CCe             as    NFe_xMotivo_CCe            ' );
  FD.SQL.Add( ' ,t2.dhRegEvento_CCe         as    NFe_dhRegEvento_CCe        ' );
  FD.SQL.Add( ' ,t2.nProt_CCe               as    NFe_nProt_CCe              ' );
  FD.SQL.Add( ' ,t2.data_hora_recebimento   as    NFe_data_hora_recebimento  ' );
  FD.SQL.Add( ' ,t2.situacao                as    NFe_situacao               ' );
  FD.SQL.Add( ' ,t2.motivo                  as    NFe_motivo                 ' );
  FD.SQL.Add( ' ,t2.dEmi                    as    NFe_dEmi                   ' );
  FD.SQL.Add( ' ,t2.Modelo                  as    NFe_Modelo                 ' );
  FD.SQL.Add( ' ,t2.Serie                   as    NFe_Serie                  ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' ,t3.cnpj                    as    Des_cnpj                   ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' from nfe_CCe t1                                              ' );
  FD.SQL.Add( '   join nfe   t2 on t1.nNF     = t2.nnf    and                ' );
  FD.SQL.Add( '                    t1.dEmi    = t2.dEmi   and                ' );
  FD.SQL.Add( '                    t1.Modelo  = t2.Modelo and                ' );
  FD.SQL.Add( '                    t1.Serie   = t2.Serie                     ' );
  FD.SQL.Add( '   join destinatario t3 on t2.codigo_destinatario = t3.codigo ' );
  FD.SQL.Add( '                                                              ' );
  FD.SQL.Add( ' where                                                        ' );
  FD.SQL.Add( '       (t1.Codigo_Loja          = :codigo_loja)               ' );
  FD.SQL.Add( ' and   (t2.Codigo_Loja          = :Codigo_Loja)               ' );
  FD.SQL.Add( ' and   (t1.nNF                  = :nNF)                       ' );
  FD.SQL.Add( ' and   (t1.dEmi                 = :dEmi)                      ' );
  FD.SQL.Add( ' and   (t1.Evento               = :Evento)                    ' );
  FD.SQL.Add( ' and   (t1.Modelo               = :Modelo)                    ' );
  FD.SQL.Add( ' and   (t1.Serie                = :Serie)                     ' );
  FD.SQL.Add( '                                                              ' );
  FD.ParamByName('codigo_loja').AsInteger  := CN1;
  FD.ParamByName('nNF').AsInteger          := CN2;
  FD.ParamByName('dEmi').Value             := StrToDateTime( FormatDateTime('dd/mm/yyyy', CN3) );
  FD.ParamByName('Modelo').AsString        := CN4;
  FD.ParamByName('Serie').AsString         := CN5;
  FD.ParamByName('Evento').AsString        := CN6;
  FD.Open;

 except on e:exception do

  Application.Messagebox( pWideChar(pAnsiString( 'Tabela CCe inconsistente!' + chr(13) +
                         e.Message )), 'Aten��o!', MB_ICONERROR+mb_ok);

 end;

end;

// A que se aplica a Carta de Corre��o Eletr�nica?
// Segundo o � 7� Cl�usula d�cima quarta � A do Ajuste SINIEF 7/2005, a partir de 01/07/2012 n�o mais
// poder� ser utilizada a carta de corre��o em papel, ficando obrigado a emiss�o da Carta de Corre��o
// Eletr�nica (CC-e) para sanar erros em campos espec�ficos da Nota Fiscal Eletr�nica (NF-e), cujo
// condi��o de uso foi disciplinada pelo � 1�-A do art. 7� do Conv�nio S/N, de 15 de dezembro de 1970
// que determinou a sua utiliza��o e condi��o para regulariza��o de erro ocorrido na emiss�o de documento
// fiscal, desde que o erro n�o esteja relacionado com:
// I - as vari�veis que determinam o valor do imposto tais como: base de c�lculo, al�quota, diferen�a
// de pre�o, quantidade, valor da opera��o ou da presta��o;
// II - a corre��o de dados cadastrais que implique mudan�a do remetente ou do destinat�rio;
// III - a data de emiss�o ou de sa�da
//
// E quanto ao prazo para emiss�o?
// Quanto ao prazo  de emiss�o da Carta de Corre��o Eletr�nica temos uma certa controversa. Vejam que na
// Nota T�cnica 2011.004,  item 6.2 � Regra de valida��o da CC-e,  que o prazo m�ximo  � de 720 horas
// (30 dias) da autoriza��o e uso da NF-e.  Entretando, se formos analisar a legalidade  da limita��o
// deste prazo atrav�s  da  interpreta��o do  o Art. 138 combinado com o Art 173 do C�digo Tribut�rio
// Nacional, o prazo para a emiss�o da Carta de corre��o � de cinco anos . At� mesmo por ser a carta de
// corre��o uma esp�cie de den�ncia espont�nea, permitindo ao contribuinte sanar qualquer irreguladidade
// antes de interven��o fiscal.
// Para convalidar sobre esta  interpreta��o, temos tamb�m o Manual de Orienta��o do Contribuinte � Vers�o
// 5.0, de mar�o de 2012 que n�o menciona mais o prazo para emiss�o da Carta de Corre��o Eletr�nica (CC-e),
// podendo erros em campos espec�ficos de NF-e,acima citados, serem sanados a qualquer tempo.

end.
