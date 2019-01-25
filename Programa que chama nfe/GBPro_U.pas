unit GBPro_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, jpeg, ShellApi;

type
  TFrGBPro = class(TForm)
    Panel1: TPanel;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Image1: TImage;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    edgNNF: TEdit;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    edgNTC: TEdit;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure edgNNFExit(Sender: TObject);
    procedure edgNTCExit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function fUniMap(PServer, PLetra, PSenha :Pchar): Boolean;
    function fDesRed(Letra:Pchar; Forcada:boolean): String;
  end;

var
 gExpress, gNNF, gNTC, gOpcao : String;

var
  FrGBPro: TFrGBPro;

implementation

{$R *.dfm}

procedure TFrGBPro.BitBtn3Click(Sender: TObject);
begin
 WinExec('C:\SISTEMAS\GBNFE\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GBInformática /0 /1 /0 /0 /0', SW_SHOW);
end;

procedure TFrGBPro.BitBtn2Click(Sender: TObject);
begin
 WinExec('C:\SISTEMAS\GBCTE\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /0 /0 /0', SW_SHOW);
end;

procedure TFrGBPro.FormShow(Sender: TObject);
begin
 BitBtn1.SetFocus;
end;

procedure TFrGBPro.BitBtn4Click(Sender: TObject);
begin
 PostMessage(FindWindow('tfrgbnfe', nil), WM_CLOSE,0,0);
end;

procedure TFrGBPro.BitBtn5Click(Sender: TObject);
begin
 PostMessage(FindWindow('tfrgbcte', nil), WM_CLOSE,0,0);
end;
//------------------------------------------------------------------------------
function TFrGBPro.fUniMap(PServer, PLetra, PSenha :Pchar): Boolean;
begin
 WNetAddConnection ( PServer , PSenha , PLetra );
end;

function TFrGBPro.fDesRed(Letra:Pchar; Forcada:boolean): String;
begin
 WNetCancelConnection2(Letra, CONNECT_UPDATE_PROFILE, Forcada);
end;

procedure TFrGBPro.FormCreate(Sender: TObject);
begin
 // Mapeia a unidade de rede
 //fUniMap('\\192.168.10.13\Sistemas', 'Z:', 'GB');
end;

procedure TFrGBPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 PostMessage(FindWindow('tfrgbnfe', nil), WM_CLOSE,0,0);
 PostMessage(FindWindow('tfrgbcte', nil), WM_CLOSE,0,0);
 //fDesRed('Z:', True);
end;

procedure TFrGBPro.BitBtn6Click(Sender: TObject);
begin
 if edgNNF.Text = '' then
  begin
   showmessage('Por favor, entre com o número da nota !');
   exit;
  end;
 gExpress := '1';
 gNNF     := edgNNF.Text;
 gOpcao   := '1';
 WinExec(PChar('C:\SISTEMAS\GBNFe\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNNF + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn7Click(Sender: TObject);
begin
 if edgNNF.Text = '' then
  begin
   showmessage('Por favor, entre com o número da nota !');
   exit;
  end;
 gExpress := '1';
 gNNF     := edgNNF.Text;
 gOpcao   := '2';
 WinExec(PChar('C:\SISTEMAS\GBNFe\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNNF + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn8Click(Sender: TObject);
begin
 gExpress := '1';
 gNNF     := edgNNF.Text;
 gOpcao   := '3';
 WinExec(PChar('C:\SISTEMAS\GBNFe\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNNF + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn9Click(Sender: TObject);
begin
 if edgNNF.Text = '' then
  begin
   showmessage('Por favor, entre com o número da nota !');
   exit;
  end;
 gExpress := '1';
 gNNF     := edgNNF.Text;
 gOpcao   := '4';
 WinExec(PChar('C:\SISTEMAS\GBNFe\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNNF + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.edgNNFExit(Sender: TObject);
begin
 if edgNNF.Text <> '' then
  begin
   BitBtn6.Enabled := True;
   BitBtn7.Enabled := True;
   BitBtn9.Enabled := True;
   BitBtn15.Enabled := True;
  end
 else
  begin
   BitBtn6.Enabled := False;
   BitBtn7.Enabled := False;
   BitBtn9.Enabled := False;
   BitBtn15.Enabled := False;
  end;
end;

procedure TFrGBPro.edgNTCExit(Sender: TObject);
begin
 if edgNTC.Text <> '' then
  begin
   BitBtn10.Enabled := True;
   BitBtn11.Enabled := True;
   BitBtn13.Enabled := True;
   BitBtn14.Enabled := True;
  end
 else
  begin
   BitBtn10.Enabled := False;
   BitBtn11.Enabled := False;
   BitBtn13.Enabled := False;
   BitBtn14.Enabled := False;
  end;
end;

procedure TFrGBPro.BitBtn10Click(Sender: TObject);
begin
 if edgNTC.Text = '' then
  begin
   showmessage('Por favor, entre com o número do conhecimento !');
   exit;
  end;
 gExpress := '1';
 gNTC     := edgNTC.Text;
 gOpcao   := '1';
 WinExec(PChar('C:\SISTEMAS\GBCTe\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNTC + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn11Click(Sender: TObject);
begin
 if edgNTC.Text = '' then
  begin
   showmessage('Por favor, entre com o número do conhecimento !');
   exit;
  end;
 gExpress := '1';
 gNTC     := edgNTC.Text;
 gOpcao   := '2';
 WinExec(PChar('C:\SISTEMAS\GBCTe\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNTC + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn12Click(Sender: TObject);
begin
 gExpress := '1';
 gNTC     := edgNTC.Text;
 gOpcao   := '3';
 WinExec(PChar('C:\SISTEMAS\GBCTe\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNTC + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn13Click(Sender: TObject);
begin
 if edgNTC.Text = '' then
  begin
   showmessage('Por favor, entre com o número do conhecimento !');
   exit;
  end;
 gExpress := '1';
 gNTC     := edgNTC.Text;
 gOpcao   := '4';
 WinExec(PChar('C:\SISTEMAS\GBCTe\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNTC + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn14Click(Sender: TObject);
begin
 if edgNTC.Text = '' then
  begin
   showmessage('Por favor, entre com o número do conhecimento !');
   exit;
  end;
 gExpress := '1';
 gNTC     := edgNTC.Text;
 gOpcao   := '5';
 WinExec(PChar('C:\SISTEMAS\GBCTe\EXE\GBCTe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNTC + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

procedure TFrGBPro.BitBtn15Click(Sender: TObject);
begin
 if edgNNF.Text = '' then
  begin
   showmessage('Por favor, entre com o número da nota !');
   exit;
  end;
 gExpress := '1';
 gNNF     := edgNNF.Text;
 gOpcao   := '5';
 WinExec(PChar('C:\SISTEMAS\GBNFe\EXE\GBNFe.exe /developed_gb_informática_ltda /001 /GbInformática /0 /1 /' + gExpress + ' /' + gNNF + ' /' + gOpcao + chr(0)), SW_SHOW);
end;

end.
