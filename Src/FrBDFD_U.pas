unit FrBDFD_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFrBDFD = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    pnl4: TPanel;
    btn1: TBitBtn;
    btnSalvarConfig: TBitBtn;
    stat1: TStatusBar;
    grp12: TGroupBox;
    grp13: TGroupBox;
    chk_LoginPrompt_NFe: TCheckBox;
    grp14: TGroupBox;
    cbb_DriverID_NFe: TComboBox;
    grp18: TGroupBox;
    edt_Server_NFe: TEdit;
    grp19: TGroupBox;
    edt_UserName_NFe: TEdit;
    grp20: TGroupBox;
    edt_Password_NFe: TEdit;
    grp15: TGroupBox;
    edt_Database_NFe: TEdit;
    grp16: TGroupBox;
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
    grp28: TGroupBox;
    OSAuthent_NFe: TCheckBox;
    grp29: TGroupBox;
    OSAuthent_Ger: TCheckBox;
    pnl5: TPanel;
    procedure btn1Click(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBDFD: TFrBDFD;

implementation

{$R *.dfm}

uses GBNFe_U, FrPar_U, DMFD_U;

procedure TFrBDFD.btn1Click(Sender: TObject);
begin
 Close;
 FrGBNFe.Close;
end;

procedure TFrBDFD.btnSalvarConfigClick(Sender: TObject);
begin

 if MessageDlg('Confirma atualiza��o dos par�metros', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
   FrPar.chk_LoginPrompt_NFe.Checked := chk_LoginPrompt_NFe.Checked;
   FrPar.OSAuthent_NFe.Checked       := OSAuthent_NFe.Checked;
   FrPar.cbb_DriverID_NFe.Text       := cbb_DriverID_NFe.Text;
   FrPar.edt_Database_NFe.Text       := edt_Database_NFe.Text;
   FrPar.edt_Server_NFe.Text         := edt_Server_NFe.Text;
   FrPar.edt_UserName_NFe.Text       := edt_UserName_NFe.Text;
   FrPar.edt_Password_NFe.Text       := edt_Password_NFe.Text;
   FrPar.chk_Connected_NFe.Checked   := chk_Connected_NFe.Checked;

   FrPar.chk_LoginPrompt_Ger.Checked := chk_LoginPrompt_Ger.Checked;
   FrPar.OSAuthent_Ger.Checked       := OSAuthent_Ger.Checked;
   FrPar.cbb_DriverID_Ger.Text       := cbb_DriverID_Ger.Text;
   FrPar.edt_Database_Ger.Text       := edt_Database_Ger.Text;
   FrPar.edt_Server_Ger.Text         := edt_Server_Ger.Text;
   FrPar.edt_UserName_Ger.Text       := edt_UserName_Ger.Text;
   FrPar.edt_Password_Ger.Text       := edt_Password_Ger.Text;
   FrPar.chk_Connected_Ger.Checked   := chk_Connected_Ger.Checked;

   // Grava no arquivo ini
   FrGBNFe.GravarBDFD();

   try

    DMFD.FDConNFe.Connected                       := false;
    DMFD.FDConNFe.LoginPrompt                     := FrPar.chk_LoginPrompt_NFe.Checked;
    if ( FrPar.OSAuthent_NFe.Checked ) then
     DMFD.FDConGer.Params.Values['OSAuthent']     := 'Yes'
    else
     DMFD.FDConGer.Params.Values['OSAuthent']     := 'No';
    DMFD.FDConNFe.Params.Values['DriverID']       := FrPar.cbb_DriverID_NFe.Text;
    DMFD.FDConNFe.Params.Values['Database']       := FrPar.edt_Database_NFe.Text;
    DMFD.FDConNFe.Params.Values['Server'  ]       := FrPar.edt_Server_NFe.Text;
    if not ( FrPar.OSAuthent_NFe.Checked ) then
     begin
      DMFD.FDConNFe.Params.Values['UserName']     := FrPar.edt_UserName_NFe.Text;
      DMFD.FDConNFe.Params.Values['Password']     := FrPar.edt_Password_NFe.Text;
     end;
    DMFD.FDConNFe.Connected                       := FrPar.chk_Connected_NFe.Checked;

    if not DMFD.FDConNFe.Connected then
     begin
      Application.MessageBox(PWideChar('Banco de dados NFe, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );
      exit;
     end
    else
     begin

      DMFD.FDQuery4.Close;
      DMFD.FDQuery4.SQL.Clear;
      DMFD.FDQuery4.SQL.Add( 'select * from emitente            ' );
      DMFD.FDQuery4.SQL.Add( ' where codigo_loja =:codigo_loja  ' );
      DMFD.FDQuery4.ParamByName('codigo_loja').AsInteger := StrToInt(gCodEmp);
      DMFD.FDQuery4.Open;

      DMFD.FDQuery4.Active := True;

      FrPar.edt_Database_Ger.Text := DMFD.FDQuery4['DBERP'];
      FrGBNFe.GravarBDFD();

     end;

   Except

    Application.MessageBox(PWideChar('Erro de conec��o no NFe, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   end;

   try

    DMFD.FDConGEr.Connected                       := false;
    DMFD.FDConGer.LoginPrompt                     := FrPar.chk_LoginPrompt_Ger.Checked;
    if ( FrPar.OSAuthent_Ger.Checked ) then
     DMFD.FDConGer.Params.Values['OSAuthent']     := 'Yes'
    else
     DMFD.FDConGer.Params.Values['OSAuthent']     := 'No';
    DMFD.FDConGer.Params.Values['DriverID']       := FrPar.cbb_DriverID_Ger.Text;
    DMFD.FDConGer.Params.Values['Database']       := FrPar.edt_Database_Ger.Text;
    DMFD.FDConGer.Params.Values['Server'  ]       := FrPar.edt_Server_Ger.Text;
    if not ( FrPar.OSAuthent_Ger.Checked ) then
     begin
      DMFD.FDConGer.Params.Values['UserName']     := FrPar.edt_UserName_Ger.Text;
      DMFD.FDConGer.Params.Values['Password']     := FrPar.edt_Password_Ger.Text;
     end;
    DMFD.FDConGer.Connected                       := FrPar.chk_Connected_Ger.Checked;

    if not DMFD.FDConGer.Connected then
     Application.MessageBox(PWideChar('Banco de dados DBERP, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   Except

    Application.MessageBox(PWideChar('Erro de conec��o no DBERP, n�o conectado!'), 'Aten��o', MB_ICONINFORMATION );

   end;

   if ( (FrPar.chk_Connected_NFe.Checked) and (FrPar.chk_Connected_Ger.Checked) ) then
    btn1.Enabled := true;
  end;

 //-----------------------------------------------------------------------------

end;

procedure TFrBDFD.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 //FreeAndNil(FrBDFD);


end;

procedure TFrBDFD.FormShow(Sender: TObject);
begin

 // Define os captions iniciais
 //grp17.Caption := ' Banco de Dados - Gert�o: ERP - ' + gERP + ' (' + gDBERP + ')' + ' ';
 //grp12.Caption := ' Banco de Dados - Fiscal: NFe - ' + '(' + gNFe + ')' + ' ';

end;

end.
