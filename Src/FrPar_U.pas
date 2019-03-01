unit FrPar_U;

interface

uses
 Winapi.Windows, Data.Db, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Controls,
 Vcl.ExtCtrls, Vcl.Buttons, System.Classes, Vcl.Menus, Winapi.ShellAPi, Vcl.Grids,
 Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask, Vcl.Printers, System.IniFiles, Vcl.FileCtrl,
 Winapi.Messages, System.SysUtils, System.Variants, Vcl.Graphics, Vcl.Forms,
 ACBrNFe, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack,
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
  dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  RxToolEdit, RxSpin, Vcl.CheckLst;

const
  SELDIRHELP = 1000;

type
  TFrPar = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    Panel4: TPanel;
    BitBtn1: TBitBtn;
    btnSalvarConfig: TBitBtn;
    Panel5: TPanel;
    sbtnGetCert: TSpeedButton;
    Panel6: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    sbtnLogoMarca: TSpeedButton;
    GroupBox1: TGroupBox;
    edtLogoMarca: TEdit;
    GroupBox4: TGroupBox;
    ed_QtdCopNFe: TEdit;
    GroupBox8: TGroupBox;
    edtNumSerie: TEdit;
    gbProxy: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    GroupBox9: TGroupBox;
    ckVisualizar: TCheckBox;
    rgTipoAmb: TRadioGroup;
    GroupBox10: TGroupBox;
    Label28: TLabel;
    cbEmailSSL: TCheckBox;
    mmEmailMsg: TMemo;
    GroupBox11: TGroupBox;
    CheckBox2: TCheckBox;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    GroupBox2: TGroupBox;
    edtNEeMail: TEdit;
    GroupBox5: TGroupBox;
    edtSmtpHost: TEdit;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox12: TGroupBox;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    GroupBox13: TGroupBox;
    edtSmtpPass: TEdit;
    GroupBox14: TGroupBox;
    edtEmailAssunto: TEdit;
    edtEmailCancAssunto: TEdit;
    GroupBox15: TGroupBox;
    edtEnvCC: TEdit;
    GroupBox3: TGroupBox;
    edtCamSrv: TEdit;
    GroupBox16: TGroupBox;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    GroupBox17: TGroupBox;
    edtEmailCCeAssunto: TEdit;
    GroupBox18: TGroupBox;
    CheckBox1: TCheckBox;
    GroupBox19: TGroupBox;
    CheckBox3: TCheckBox;
    GroupBox20: TGroupBox;
    CheckBox4: TCheckBox;
    GroupBox21: TGroupBox;
    CheckBox5: TCheckBox;
    GroupBox22: TGroupBox;
    ragLocSrv: TRadioGroup;
    GroupBox24: TGroupBox;
    edtNumSerie2: TEdit;
    SpeedButton1: TSpeedButton;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    GroupBox23: TGroupBox;
    edtCSC: TEdit;
    GroupBox25: TGroupBox;
    edtIdCSC: TEdit;
    btn2: TSpeedButton;
    btn1: TSpeedButton;
    grp1: TGroupBox;
    edtImpNFe: TEdit;
    grp2: TGroupBox;
    edtImpNFCe: TEdit;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    lst1: TListBox;
    lst2: TListBox;
    grp3: TGroupBox;
    CheckBox8: TCheckBox;
    grp4: TGroupBox;
    grp6: TGroupBox;
    grp7: TGroupBox;
    cbbTipoDANFCE: TComboBox;
    cbbTipoDANF: TComboBox;
    grp5: TGroupBox;
    ed_QtdCopNFCe: TEdit;
    grp8: TGroupBox;
    CheckBox10: TCheckBox;
    ts1: TTabSheet;
    pnl1: TPanel;
    grp10: TGroupBox;
    grp11: TGroupBox;
    CheckBox: TCheckBox;
    grp9: TGroupBox;
    tsBancoDados: TTabSheet;
    grp12: TGroupBox;
    grp13: TGroupBox;
    grp14: TGroupBox;
    grp18: TGroupBox;
    grp19: TGroupBox;
    grp20: TGroupBox;
    chk_LoginPrompt_NFe: TCheckBox;
    cbb_DriverID_NFe: TComboBox;
    grp15: TGroupBox;
    edt_Database_NFe: TEdit;
    edt_Server_NFe: TEdit;
    grp16: TGroupBox;
    edt_UserName_NFe: TEdit;
    edt_Password_NFe: TEdit;
    chk_Connected_NFe: TCheckBox;
    grp17: TGroupBox;
    grp21: TGroupBox;
    chk_LoginPrompt_Ger: TCheckBox;
    grp22: TGroupBox;
    cbb_DriverID_Ger: TComboBox;
    grp23: TGroupBox;
    edt_Server_Ger: TEdit;
    grp24: TGroupBox;
    edt_UserName_Ger: TEdit;
    grp25: TGroupBox;
    edt_Password_Ger: TEdit;
    grp26: TGroupBox;
    edt_Database_Ger: TEdit;
    grp27: TGroupBox;
    chk_Connected_Ger: TCheckBox;
    cbEmailTLS: TCheckBox;
    grp28: TGroupBox;
    OSAuthent_NFe: TCheckBox;
    grp29: TGroupBox;
    OSAuthent_Ger: TCheckBox;
    cxdtp1: TcxDateEdit;
    cbb1: TComboBox;
    grp30: TGroupBox;
    cbb2: TComboBox;
    grp31: TGroupBox;
    CkB_ForSai: TCheckBox;
    grp32: TGroupBox;
    grp33: TGroupBox;
    grp34: TGroupBox;
    grp35: TGroupBox;
    grp36: TGroupBox;
    rxtmdt1: TRxTimeEdit;
    grp37: TGroupBox;
    edt_CamBak1: TDirectoryEdit;
    grp38: TGroupBox;
    rxtmdt2: TRxTimeEdit;
    grp39: TGroupBox;
    chklst1: TCheckListBox;
    btn5: TBitBtn;
    chk_BakAuto_NFe: TCheckBox;
    chk_BakAuto: TCheckBox;
    chk_BakAuto_ERP: TCheckBox;
    grp40: TGroupBox;
    edt1: TEdit;
    lbl1: TLabel;
    grp41: TGroupBox;
    grp42: TGroupBox;
    chk_RespTec: TCheckBox;
    grp43: TGroupBox;
    grp45: TGroupBox;
    edt_NomeResTec: TEdit;
    grp46: TGroupBox;
    edt_emaildResTec: TEdit;
    edt_IdResTec: TEdit;
    grp47: TGroupBox;
    edt_FoneResTec: TEdit;
    grp48: TGroupBox;
    edt_CSRTResTec: TEdit;
    grp49: TGroupBox;
    edt_CNPJResTec: TEdit;
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtLetMapKeyPress(Sender: TObject; var Key: Char);
    procedure ragLocSrvClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure mmEmailMsgEnter(Sender: TObject);
    procedure mmEmailMsgExit(Sender: TObject);
    procedure ed_QtdCopNFeKeyPress(Sender: TObject; var Key: Char);
    procedure edtCamSrvExit(Sender: TObject);
    procedure edtProxyPortaExit(Sender: TObject);
    procedure edtSmtpPortExit(Sender: TObject);
    procedure ed_QtdCopNFeExit(Sender: TObject);
    procedure ragLocSrvExit(Sender: TObject);
    procedure GroupBox20MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox19MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox18MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox21MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btnSalvarConfigMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure lst1Exit(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure lst2DblClick(Sender: TObject);
    procedure lst2Exit(Sender: TObject);
    procedure edtIdCSCKeyPress(Sender: TObject; var Key: Char);
    procedure edtCSCKeyPress(Sender: TObject; var Key: Char);
    procedure ed_QtdCopNFCeExit(Sender: TObject);
    procedure ed_QtdCopNFCeKeyPress(Sender: TObject; var Key: Char);
    procedure tmtpUserExit(Sender: TObject);
    procedure edtEnvCCExit(Sender: TObject);
    procedure grp8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox22MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp1Click(Sender: TObject);
    procedure lst2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lst1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp11MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PageControl1Change(Sender: TObject);
    procedure rgTipoAmbClick(Sender: TObject);
    procedure cxdtp1Exit(Sender: TObject);
    procedure cbb2Click(Sender: TObject);
    procedure btn5MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure btn5Click(Sender: TObject);
    procedure edt1KeyPress(Sender: TObject; var Key: Char);
    procedure edt1Exit(Sender: TObject);
    procedure grp42MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp43MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp48MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp49MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp45MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp46MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure grp47MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPar: TFrPar;

implementation

uses GBNFe_U, ACBrDFeSSL, DMNFe_U, DMFD_U, FrBackup_U;
{$R *.dfm}

procedure TFrPar.sbtnCaminhoCertClick(Sender: TObject);
begin

  //
  // by Edson Lima ; 3-4-2012 ; 16:32 ; foi retida apartir dessa data
  //
  // OpenDialog1.Title := 'Selecione o Certificado';
  // OpenDialog1.DefaultExt := '*.pfx';
  // OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  // OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  // if  OpenDialog1.Execute then
  // begin
  //   edtCaminho.Text :=  OpenDialog1.FileName;
  // end;
  //

end;

procedure TFrPar.sbtnGetCertClick(Sender: TObject);
var
 vCnpjEmit, vCnpjCert : string;
begin

 {$IFNDEF ACBrNFeOpenSSL}

  edtNumSerie.Text :=  FrGBNFe.ACBrNFe1.SSL.SelecionarCertificado;

  vCnpjEmit := ( Copy(Trim(DMFD.FDQuery4['cnpj']), 1, 8) );
  vCnpjCert := ( Copy(Trim(FrGBNFe.ACBrNFe1.SSL.CertCNPJ), 1, 8) );
  if ( vCnpjEmit <> vCnpjCert ) then
   Application.Messagebox('Obs: O CNPJ do emitente est� diferente do' + chr(13) +
                          'CNPJ do certificado digital que foi setado' + chr(13) +
                          'no parametros do emissor!','Aten��o!',mb_iconstop+mb_ok);

 {$ENDIF}

end;

procedure TFrPar.btnSalvarConfigClick(Sender: TObject);
var
 vDBERP : String;
begin

 vDBERP := DMFD.FDQuery4['DBERP'];

 if MessageDlg('Confirma atualiza��o dos par�metros', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

   //-----------------------------------------------------------------------------
   // Conectar o banco de dados NFe
   if DMFD.FDConNFe.Connected then
    begin

     FrPar.edt_Database_Ger.Text := vDBERP;
     FrGBNFe.GravarBDFD();

    end;

   try

    DMFD.FDConNFe.Connected                  := false;
    DMFD.FDConNFe.LoginPrompt                := FrPar.chk_LoginPrompt_NFe.Checked;
    if ( FrPar.OSAuthent_NFe.Checked ) then
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'Yes'
    else
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'No';
    DMFD.FDConNFe.Params.Values['DriverID']  := FrPar.cbb_DriverID_NFe.Text;
    DMFD.FDConNFe.Params.Values['Database']  := FrPar.edt_Database_NFe.Text;
    DMFD.FDConNFe.Params.Values['Server'  ]  := FrPar.edt_Server_NFe.Text;
    if not ( FrPar.OSAuthent_NFe.Checked ) then
     begin
      DMFD.FDConNFe.Params.Values['UserName']:= FrPar.edt_UserName_NFe.Text;
      DMFD.FDConNFe.Params.Values['Password']:= FrPar.edt_Password_NFe.Text;
     end;
    DMFD.FDConNFe.Connected                  := FrPar.chk_Connected_NFe.Checked;
    if not DMFD.FDConNFe.Connected then
     Application.MessageBox(PWideChar('Banco de dados NFe, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION )
    else
     begin
      FrPar.edt_Database_Ger.Text := vDBERP;
      FrGBNFe.GravarBDFD();
     end;

   Except

    Application.MessageBox(PWideChar('Erro de conec��o no NFe, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   end;

   try

    DMFD.FDConGEr.Connected                  := false;
    DMFD.FDConGer.LoginPrompt                := FrPar.chk_LoginPrompt_Ger.Checked;
    if ( FrPar.OSAuthent_Ger.Checked ) then
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'Yes'
    else
     DMFD.FDConGer.Params.Values['OSAuthent']:= 'No';
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
     Application.MessageBox(PWideChar('Banco de dados DBERP, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   Except

    Application.MessageBox(PWideChar('Erro de conec��o no DBERP, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   end;

   //-----------------------------------------------------------------------------

   FrGBNFe.GravarConfiguracao;
   FrGBNFe.LerConf1;
   FrGBNFe.LerConf2;
   FrGBNFe.pAtrCam();
   if ( gCpt = 1 ) then
    FrGBNFe.pDefineRel()                                                        // Define o tipo de Relat�rio FortesReport
   else
    FrGBNFe.pDefineRelFR();                                                     // Define o tipo de Relat�rio FastReport
  end;

end;

procedure TFrPar.FormCreate(Sender: TObject);
begin

 // Estabelece tamanho do formulario principal
 FrPar.Height := 479;
 FrPar.Width  := 685;

end;

procedure TFrPar.sbtnLogoMarcaClick(Sender: TObject);
begin

  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := gCamExe;    /// By EL 17.2.2012 -> ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;

end;

procedure TFrPar.FormShow(Sender: TObject);
begin

 // Define os captions iniciais
 grp17.Caption := ' Banco de Dados - Gert�o: ERP - ' + gERP + ' (' + gDBERP + ')' + ' ';
 grp12.Caption := ' Banco de Dados - Fiscal: NFe - ' + '(' + gNFe + ')' + ' ';

 FrPar.PageControl1.TabIndex := 0;
 FrPar.ed_QtdCopNFe.SetFocus;
 FrGBNFe.LerBDFD;
 FrGBNFe.LerConf1;
end;

procedure TFrPar.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TFrPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FrGBNFe.pAtuNFe;
 FrGBNFe.LerConf1;
end;

procedure TFrPar.edtLetMapKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['A'..'Z', ':', chr(8), Chr(3), chr(22)]) then Abort;
end;

procedure TFrPar.ragLocSrvClick(Sender: TObject);
begin
 if ragLocSrv.ItemIndex = 0 then
  begin
   edtCamSrv.Enabled := True;
  end
 else
  begin
   edtCamSrv.Enabled := False;
  end;
end;

procedure TFrPar.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeypPeview do Form pra true
 if not (ActiveControl is  TDbGrid) then
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

procedure TFrPar.mmEmailMsgEnter(Sender: TObject);
begin
 FrPar.KeyPreview := False;
end;

procedure TFrPar.mmEmailMsgExit(Sender: TObject);
begin
 FrPar.KeyPreview := True;
end;

procedure TFrPar.ed_QtdCopNFeKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9', chr(8)]) then Abort;
end;

procedure TFrPar.edt1Exit(Sender: TObject);
begin

 if ( StrToInt(FrPar.edt1.text) >= 1440 ) then
  begin
   ShowMessage('Valor acima do permitido! (valor m�ximo 1440)');
   FrPar.edt1.SetFocus;
  end;


end;

procedure TFrPar.edt1KeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8), Chr(3), chr(22)]) then Abort;

end;

procedure TFrPar.edtCamSrvExit(Sender: TObject);
begin
 if ((trim(FrPar.edtCamSrv.Text) <> '') and (ragLocSrv.ItemIndex = 0)) then
  if not DirectoryExists(FrPar.edtCamSrv.Text) then
   begin
    ShowMessage('Caminho N�o Existe ou a pasta n�o est� compartilhada !');
    FrPar.edtCamSrv.SetFocus;
   end;

 if ((trim(FrPar.edtCamSrv.Text) = '') and (ragLocSrv.ItemIndex = 0)) then
  begin
   RagLocSrv.ItemIndex := 1;
   ragLocSrvClick(sender);
  end;

 if ((trim(FrPar.edtCamSrv.Text) <> '') and (ragLocSrv.ItemIndex = 1)) then
  FrPar.edtCamSrv.Text := '';
end;

procedure TFrPar.edtProxyPortaExit(Sender: TObject);
begin
 if (trim(edtProxyPorta.Text) = '') then
  edtProxyPorta.Text := '0';
end;

procedure TFrPar.edtSmtpPortExit(Sender: TObject);
begin
 if (trim(edtSmtpPort.Text) = '') then
  edtSmtpPort.Text := '0';
end;

procedure TFrPar.ed_QtdCopNFeExit(Sender: TObject);
begin
 if (trim(ed_QtdCopNFe.Text) = '') then
  ed_QtdCopNFe.Text := '0';
end;

procedure TFrPar.ragLocSrvExit(Sender: TObject);
begin
 if ragLocSrv.ItemIndex = 0 then
  edtCamSrv.SetFocus;
end;

procedure TFrPar.rgTipoAmbClick(Sender: TObject);
begin

 // Mostra se o sistema est� em produ��o ou em homologa��o e a vers�o do sistema
 FrGBNFe.pMostraTipoAmb();

end;

procedure TFrPar.GroupBox20MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox20.Hint;
end;

procedure TFrPar.GroupBox19MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox19.Hint;
end;

procedure TFrPar.GroupBox18MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox18.Hint;
end;

procedure TFrPar.GroupBox11MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox11.Hint;
end;

procedure TFrPar.GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox4.Hint;
end;

procedure TFrPar.GroupBox21MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox21.Hint;
end;

procedure TFrPar.GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox1.Hint;
end;

procedure TFrPar.GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox3.Hint;
end;

procedure TFrPar.Panel6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel6.Hint;
end;

procedure TFrPar.btnSalvarConfigMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := btnSalvarConfig.Hint;
end;

procedure TFrPar.cbb2Click(Sender: TObject);
begin

 // Mostra se o sistema est� em produ��o ou em homologa��o e a vers�o do sistema
 FrGBNFe.pMostraTipoAmb();

end;

procedure TFrPar.BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn1.Hint;
end;

procedure TFrPar.PageControl1Change(Sender: TObject);
var
 vPassword, vP : string;
begin

 vP := Chr(103) + Chr(98) + Chr(64) + Chr(49);
 vPassword := gSenhaBD;

 while ( ((vPassword) <> (vP)) and (PageControl1.TabIndex = 4) ) do
  begin
   if not(InputQuery('Password!', #1'Senha:', vPassword )) then
    begin
     PageControl1.TabIndex := gTabIndPar;
     exit;
    end;
    if ( (vPassword) <> (vP) ) then
     MessageDlg('Senha inv�lida, tente novamente!', mtConfirmation,[mbOK],0)
    else
     gSenhaBD := vPassword;
  end;

end;

procedure TFrPar.PageControl1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
 gTabIndPar := PageControl1.TabIndex;
end;

procedure TFrPar.Panel2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel2.Hint;
end;

procedure TFrPar.SpeedButton1Click(Sender: TObject);
var
 vCnpjEmit, vCnpjCert : string;
begin

 {$IFNDEF ACBrNFeOpenSSL}

  edtNumSerie2.Text :=  FrGBNFe.ACBrNFe1.SSL.SelecionarCertificado;

  vCnpjEmit := ( Copy(Trim(DMFD.FDQuery4['cnpj']), 1, 8) );
  vCnpjCert := ( Copy(Trim(FrGBNFe.ACBrNFe1.SSL.CertCNPJ), 1, 8) );
  if ( vCnpjEmit <> vCnpjCert ) then
   Application.Messagebox('Obs: O CNPJ do emitente est� diferente do' + chr(13) +
                          'CNPJ do certificado digital que foi setado' + chr(13) +
                          'no parametros do emissor!','Aten��o!',mb_iconstop+mb_ok);

 {$ENDIF}

end;

procedure TFrPar.CheckBox7Click(Sender: TObject);
begin
 //Grava e Ler o arquivo ini  - by EL - 2014-11-19T1552
 //Grava e Ler o arquivo BDFD - by EL - 2017-07-03T1537
 gPSCert := 2;
 FrGBNFe.GravarIni();
 FrPar.CheckBox6.Checked := false;
end;

procedure TFrPar.cxdtp1Exit(Sender: TObject);
begin

 if ( cxdtp1.Date > now()) then
  begin
   Application.Messagebox('Data inicial est� maior que a data atual!','Aten��o!',MB_ICONINFORMATION+mb_ok);
   cxdtp1.SetFocus;
  end;

end;

procedure TFrPar.CheckBox6Click(Sender: TObject);
begin
 //Grava e Ler o arquivo ini - by EL - 2014-11-19T1552
 //Grava e Ler o arquivo BDFD - by EL - 2017-07-03T1537
 gPSCert := 1;
 FrGBNFe.GravarIni();
 FrPar.CheckBox7.Checked := false;
end;

procedure TFrPar.btn4Click(Sender: TObject);
begin

 if not lst1.Visible then
  lst1.Visible := true
 else
  begin
   lst1.Visible := false;
   Exit;
  end;

 lst1.Items.Assign(Printer.Printers);                                           // pegas as impressoras
 lst1.Items.Add(' ');                                                           // Adiciona uma linha vazia para limpar caixa
 lst1.ItemIndex := Printer.PrinterIndex;                                        // posiciona na impressora atual

end;

procedure TFrPar.btn5Click(Sender: TObject);
begin

 if ( FrBackup = nil ) then
   FrBackup := TFrBackup.Create(Application);
 FrBackup.BringToFront;
 FrBackup.ShowModal;

end;

procedure TFrPar.btn5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[0].Text := btn5.Hint;

end;

procedure TFrPar.lst1DblClick(Sender: TObject);
var
 x : Integer;
begin

 for x := 0 to lst1.Count -1 do
  if lst1.ItemIndex = x then
   begin
    edtImpNFe.Text := lst1.Items[x];
    lst1Exit(Sender);
   end;

end;

procedure TFrPar.lst1Exit(Sender: TObject);
begin
 lst1.Visible := False;
end;

procedure TFrPar.btn3Click(Sender: TObject);
begin

 if not lst2.Visible then
  lst2.Visible := True
 else
  begin
   lst2.Visible := false;
   Exit;
  end;

 lst2.Items.Assign(Printer.Printers);                                           // pegas as impressoras
 lst2.Items.Add(' ');                                                           // Adiciona uma linha vazia para limpar caixa
 lst2.ItemIndex := Printer.PrinterIndex;                                        // posiciona na impressora atual

end;

procedure TFrPar.lst2DblClick(Sender: TObject);
var
 x : Integer;
begin

 for x := 0 to lst2.Count -1 do
  if lst2.ItemIndex = x then
   begin
    edtImpNFCe.Text := lst2.Items[x];
    lst2Exit(Sender);
   end;

end;

procedure TFrPar.lst2Exit(Sender: TObject);
begin
 lst2.Visible := False;
end;

procedure TFrPar.edtIdCSCKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8), Chr(3), chr(22)]) then Abort;

end;

procedure TFrPar.edtCSCKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', 'A'..'Z', 'a'..'z', chr(8), Chr(3), chr(22)]) then Abort;

end;

procedure TFrPar.ed_QtdCopNFCeExit(Sender: TObject);
begin

 if (trim(ed_QtdCopNFCe.Text) = '') then
  ed_QtdCopNFCe.Text := '0';

end;

procedure TFrPar.ed_QtdCopNFCeKeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9', chr(8), Chr(3), chr(22)]) then Abort;

end;


procedure TFrPar.tmtpUserExit(Sender: TObject);
begin

 if not fValidaEmail(edtSmtpUser.Text, 'S') then
  begin

   Application.Messagebox('Campo de email inv�lido! ','Aten��o!',mb_iconstop+mb_ok);
   edtSmtpUser.SetFocus;

  end;

end;

procedure TFrPar.edtEnvCCExit(Sender: TObject);
begin

 if not fValidaEmail(edtEnvCC.Text, 'S') then
  begin

   Application.Messagebox('Campo de email inv�lido! ','Aten��o!',mb_iconstop+mb_ok);
   edtSmtpUser.SetFocus;

  end;

end;

procedure TFrPar.grp8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp8.Hint;
end;

procedure TFrPar.grp7MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp7.Hint;
end;

procedure TFrPar.grp6MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp6.Hint;
end;

procedure TFrPar.grp42MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp42.Hint;
end;

procedure TFrPar.grp43MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp43.Hint;
end;

procedure TFrPar.grp45MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp45.Hint;
end;

procedure TFrPar.grp46MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp46.Hint;
end;

procedure TFrPar.grp47MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp47.Hint;
end;

procedure TFrPar.grp48MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp48.Hint;
end;

procedure TFrPar.grp49MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp49.Hint;
end;

procedure TFrPar.grp4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp4.Hint;
end;

procedure TFrPar.grp3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp3.Hint;
end;

procedure TFrPar.grp5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp5.Hint;
end;

procedure TFrPar.GroupBox22MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox22.Hint;
end;

procedure TFrPar.grp1Click(Sender: TObject);
begin
 StatusBar1.Panels[0].Text := Grp1.Hint;
end;

procedure TFrPar.lst2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := lst2.Hint;
end;

procedure TFrPar.lst1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := lst1.Hint;
end;

procedure TFrPar.grp2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := grp2.Hint;
end;

procedure TFrPar.grp1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := grp1.Hint;
end;

procedure TFrPar.grp11MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp11.Hint;
end;

procedure TFrPar.grp9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Grp9.Hint;
end;

end.
