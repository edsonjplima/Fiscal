unit FrPw_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFrPw = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrPw: TFrPw;

implementation

uses GBNFe_U;

{$R *.dfm}

procedure TFrPw.Button1Click(Sender: TObject);
var
 pw : string;
begin

 pw := (Chr(71) + Chr(98) + Chr(73) +  Chr(110) +  Chr(102) +  Chr(111) +  Chr(51) +  Chr(51) +  Chr(64));

 if Edit1.Text <> pw then
  begin
   close;
   exit;
  end;

 gAutorizado := True;
 close;

end;

procedure TFrPw.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeyPreview do Form pra true
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

end.
