unit FrSenMst_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TFrSenMst = class(TForm)
    Panel3: TPanel;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    MaskEdit1: TMaskEdit;
    Label1: TLabel;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrSenMst: TFrSenMst;

implementation

uses GBNFe_U, FrBuscaChave_U;

{$R *.dfm}

procedure TFrSenMst.SpeedButton1Click(Sender: TObject);
var
 vSenMst : String;
begin

 vSenMst := chr(71) + chr(98) + chr(73) + chr(110) + chr(102) + chr(111) + chr(49) + chr(64);
 if MaskEdit1.Text = vSenMst then
  begin
   gSenMst := vSenMst;
   close;
  end
 else
  begin
   gSenMst        := '';
   MaskEdit1.Text := '';
   Application.Messagebox('Senha inválda!','Atenção!',MB_ICONASTERISK+mb_ok);
  end;

end;

procedure TFrSenMst.SpeedButton2Click(Sender: TObject);
begin
 gSenMst := '';
 FrBuscaChave.HaDe(True);                                                       // Habilita ou Desabilita componentes dutante a consulta
 close;
end;

procedure TFrSenMst.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeyPreview do Form pra true
 Direction := -1;
 Case Key of
  VK_NEXT, VK_RETURN :
   begin
    Direction := 0;
    FrSenMst.SpeedButton1Click(Sender);
   end;
  VK_PRIOR	 : Direction := 1;
  VK_ESCAPE : Close;
 end;
 if Direction <> -1 then
  begin
  Perform(WM_NEXTDLGCTL, Direction, 0);
  key := 0;
 end;
end;

end.
