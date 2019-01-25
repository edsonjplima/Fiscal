unit FrContab_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Samples.Gauges,
  Vcl.Grids, Vcl.DBGrids;

type
  TFrContab = class(TForm)
    panel: TPanel;
    stat1: TStatusBar;
    panel113: TPanel;
    grp1: TGroupBox;
    grp2: TGroupBox;
    grp3: TGroupBox;
    SpeedButton: TSpeedButton;
    SpeedButton51: TSpeedButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    grp4: TGroupBox;
    CheckBox91: TCheckBox;
    CheckBox92: TCheckBox;
    Sb: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton51Click(Sender: TObject);
    procedure dtp1Exit(Sender: TObject);
    procedure dtp2Exit(Sender: TObject);
    procedure SpeedButtonClick(Sender: TObject);
    procedure SbClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

// Vari�veis globais
var
 gCh1                                                        : Boolean = False; // CheckBox de escolhas de notas Manifestadas
 gCh2                                                        : Boolean = False; // CheckBox de escolhas de notas Entradas
 gCh3                                                        : Boolean = False; // CheckBox de escolhas de notas NFe

var
  FrContab: TFrContab;

implementation

uses GBNFe_U, DMFD_U;

{$R *.dfm}

procedure TFrContab.FormShow(Sender: TObject);
begin

 dtp1.DateTime  := ( Now - 30 );
 dtp2.DateTime  := Now;

end;

procedure TFrContab.SpeedButton51Click(Sender: TObject);
begin

 Close;
 
end;

procedure TFrContab.dtp1Exit(Sender: TObject);
begin

 if ( dtp1.Date > Now ) then
  begin
   Application.MessageBox(PWideChar('Data inicial n�o pode ser maior que a data atual!'), 'Aten��o', MB_ICONINFORMATION );
   dtp1.SetFocus;
  end
 else if ( dtp1.Date > dtp2.Date ) then
  begin
   Application.MessageBox(PWideChar('Data inicial n�o pode ser maior que a data final!'), 'Aten��o', MB_ICONINFORMATION );
   dtp1.SetFocus;
  end;

end;

procedure TFrContab.dtp2Exit(Sender: TObject);
begin

 if ( dtp2.Date > Now ) then
  begin
   Application.MessageBox(PWideChar('Data final n�o pode ser maior que a data de hoje!'), 'Aten��o', MB_ICONINFORMATION );
   dtp2.SetFocus;
  end
 else if ( dtp2.Date < dtp1.Date ) then
  begin
   Application.MessageBox(PWideChar('Data final n�o pode ser menor que a data inicial!'), 'Aten��o', MB_ICONINFORMATION );
   dtp2.SetFocus;
  end;

end;

procedure TFrContab.SpeedButtonClick(Sender: TObject);
var
 vArq1, vArq2, vM, vA, vDtp1, vDtp2 : string;
 vAux                               : string;
begin

 // Pega o m�s, ano e data inicial e final do per�odo para analise de pastas
 vM    := ( FormatDateTime('mm', dtp2.Date) );
 vA    := ( FormatDateTime('yyyy', dtp2.Date) );
 vDtp1 := ( FormatDateTime('dd-mm-yyyy', dtp1.Date) );
 vDtp2 := ( FormatDateTime('dd-mm-yyyy', dtp2.Date) );

 // Define o nome da pasta
 vArq1 := ( gCamXml + vA + vM + '\' );
 vArq2 := ( vArq1 + 'Contab_' + vDtp1 + '_a_' + vDtp2 + '\' );

 // Se a pasta do m�s da data final n�o existir o sistema gbnfe cria
 if not DirectoryExists(vArq1) then
  begin
   CreateDir(vArq1);
  end;

 // Se a pasta contab do per�odo n�o existir o sistema gbnfe cria
 if not DirectoryExists(vArq2) then
  begin
   CreateDir(vArq2);
  end;

 if ( CheckBox91.Checked ) then
  begin

  end;

 if ( CheckBox92.Checked ) then
  begin

   vAux := '';
   vAux := FrGBNFe.edt_CodEmp.text + ',' + '''' + FormatDateTime('yyyy/mm/dd', dtp1.Date) + ''''+ ',';
   vAux := vAux + '''' + FormatDateTime('yyyy/mm/dd', dtp1.Date) + '''' + ',';
   vAux := vAux + '''' + '0' + '''' + ',';                                      // Todas Nota
   vAux := vAux + '''' + '0' + '''' + ',';                                      // Todos Destinatario
   vAux := vAux + '''' + '' + '''' + ',';                                       // Todos Modelo
   vAux := vAux + '''' + '' + '''';                                             // Todas Serie

   DMFD.FDQryGeral1.Close;
   DMFD.FDQryGeral1.SQL.Clear;
   DMFD.FDQryGeral1.SQL.Add( 'exec sp_nfe_transmitidas ' + vAux );
   DMFD.FDQryGeral1.Open;

  end;

end;

procedure TFrContab.SbClick(Sender: TObject);
begin
 close;
end;

end.
