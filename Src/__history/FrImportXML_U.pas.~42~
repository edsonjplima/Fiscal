unit FrImportXML_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.Samples.Gauges, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.FileCtrl, Vcl.CheckLst, Vcl.Grids, Vcl.Outline, Vcl.Mask, RxToolEdit;

type
  TFrImportXML = class(TForm)
    Panel3: TPanel;
    Panel1: TPanel;
    GroupBox16: TGroupBox;
    Gauge1: TGauge;
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    StatusBar1: TStatusBar;
    GroupBox9: TGroupBox;
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    SpeedButton3: TSpeedButton;
    CheckListBox1: TCheckListBox;
    SpeedButton5: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure FilterComboBox1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrImportXML: TFrImportXML;

implementation

uses FrBuscaChave_U, GBNFe_U, FrPar_U;

{$R *.dfm}

procedure TFrImportXML.FormShow(Sender: TObject);
begin

 FrImportXML.Height := 469;
 FrImportXML.Width  := 560;

 try
  //Ler o arquivo ini - by EL - 2014-11-19T1552
  //
  FrGBNFe.LerPesXML();
  if (gCamPesXML <> '') then
   begin

    if ( gCamPesXML[1] <> '\' ) then
     DriveComboBox1.Drive        := gCamPesXML[1];

    if ( Trim(gCamPesXML) <> '' )  then
     DirectoryListBox1.Directory := gCamPesXML;

   end;
  //
  //-------------------------------------------

  FrImportXML.SpeedButton2.Enabled := False;

 except
  //Grava e Ler o arquivo ini - by EL - 2014-11-19T1552
  FrImportXML.DirectoryListBox1.Directory := gCamXml;
  FrGBNFe.GravarPesXML();
 end;
end;

procedure TFrImportXML.SpeedButton4Click(Sender: TObject);
begin

 //Grava e Ler o arquivo ini - by EL - 2014-11-19T1552
 FrGBNFe.GravarPesXML();

 Close;
end;

procedure TFrImportXML.SpeedButton4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton4.Hint;
end;

procedure TFrImportXML.SpeedButton5Click(Sender: TObject);
begin

 if ( FrPar.ragLocSrv.ItemIndex = 0 )  then
  begin
   DriveComboBox1.Text := '';
   DirectoryListBox1.Directory := FrPar.edtCamSrv.Text;
  end;

end;

procedure TFrImportXML.SpeedButton5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

 StatusBar1.Panels[0].Text := SpeedButton5.Hint;

end;

procedure TFrImportXML.SpeedButton2Click(Sender: TObject);
begin
 gAbortar := True;
end;

procedure TFrImportXML.SpeedButton2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton2.Hint;
end;

procedure TFrImportXML.SpeedButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin

 StatusBar1.Panels[0].Text := SpeedButton1.Hint;

 end;

procedure TFrImportXML.SpeedButton1Click(Sender: TObject);
var
 vRep : boolean;
begin

 if  (CheckListBox1.Count < 1) then
  Application.MessageBox( 'Caixa de arquivos [Xml a Importar] vazia!', ' Atenção!', MB_OK )
 else
  begin
   gImportXML := True;
    FrImportXML.SpeedButton2.Enabled := True;
    FrBuscaChave.SpeedButton1Click(Sender);
   gImportXML := False;
  end;

end;

procedure TFrImportXML.SpeedButton3Click(Sender: TObject);
var
 x, i: integer;
begin

 CheckListBox1.Clear;
 i := 0;

 for x := 0 to Pred(FileListBox1.Items.Count) do
  begin
   if FileListBox1.Selected[x] then
    begin
     try
      CheckListBox1.Items.Add(Copy(FileListBox1.Items[x], 1, Length(FileListBox1.Items[x])));
      CheckListBox1.Checked[i] := True;
      i := i + 1;
     except
      Application.MessageBox( 'Ocorreu uma inconsistência!', ' Atenção!', MB_OK );
     end
    end;
  end;

end;

procedure TFrImportXML.DirectoryListBox1Change(Sender: TObject);
var
 x : integer;
begin

 for x := 0 to Pred(FileListBox1.Items.Count) do
  begin

   FileListBox1.Selected[x] := True;

  end;

end;

procedure TFrImportXML.FilterComboBox1Change(Sender: TObject);
var
 x : integer;
begin

 for x := 0 to Pred(FilterComboBox1.Items.Count) do
  begin

   if FilterComboBox1.ItemIndex = x then
    begin

     if x = 0 then
      FileListBox1.Mask := '????????????????????????????????????????????-nfe.xml'
     else
      FileListBox1.Mask := '*.*';

    end;

  end;

end;

end.
