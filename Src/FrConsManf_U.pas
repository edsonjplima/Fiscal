unit FrConsManif_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Gauges, StdCtrls, ComCtrls, ExtCtrls;

type
  TFrConsManif = class(TForm)
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Panel3: TPanel;
    Panel1: TPanel;
    GroupBox3: TGroupBox;
    ComboBox1: TComboBox;
    GroupBox5: TGroupBox;
    ComboBox2: TComboBox;
    GroupBox1: TGroupBox;
    Edit_Chave_nfe: TEdit;
    GroupBox16: TGroupBox;
    Gauge1: TGauge;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    GroupBox4: TGroupBox;
    Edit1: TEdit;
    GroupBox6: TGroupBox;
    Edit2: TEdit;
    GroupBox7: TGroupBox;
    Edit3: TEdit;
    GroupBox9: TGroupBox;
    Edit4: TEdit;
    procedure SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox16MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox7MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox6MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit_Chave_nfeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConsManif: TFrConsManif;

implementation

uses FrBuscaChave_U;

{$R *.dfm}

procedure TFrConsManif.SpeedButton4MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton4.Hint;
end;

procedure TFrConsManif.SpeedButton1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := SpeedButton1.Hint;
end;

procedure TFrConsManif.GroupBox16MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox16.Hint;
end;

procedure TFrConsManif.GroupBox1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox1.Hint;
end;

procedure TFrConsManif.GroupBox5MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox5.Hint;
end;

procedure TFrConsManif.GroupBox3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox3.Hint;
end;

procedure TFrConsManif.GroupBox9MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox9.Hint;
end;

procedure TFrConsManif.GroupBox7MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox7.Hint;
end;

procedure TFrConsManif.GroupBox6MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox6.Hint;
end;

procedure TFrConsManif.GroupBox4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox4.Hint;
end;

procedure TFrConsManif.SpeedButton1Click(Sender: TObject);
var
 vRep : boolean;
begin

 vRep := False;

 while true do
  begin
   if not FrBuscaChave.Atualiza(vRep) then    // Se atualiza��o n�o der problemas....
    begin
     Edit_Busca_Chave.SetFocus;
     exit;
    end
   else
    begin
     vRep := True;
     if Application.Messagebox('ATT: Erro de lentid�o na sefaz!' + Chr(13) +
                               'deseja continuar mesmo assim?','Aten��o!', mb_YesNo+mb_ICONQUESTION+mb_DefButton2) = IdNo then
      begin
       Edit_Busca_Chave.SetFocus;
       exit;
      end;
    end;
  end;

end;

procedure TFrConsManif.Edit_Chave_nfeKeyPress(Sender: TObject;
  var Key: Char);
begin
 if not (key in['0'..'9', chr(8)]) then Abort;
end;

end.
