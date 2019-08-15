unit BDFD_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TFrBDFD2 = class(TForm)
    BitBtn: TBitBtn;
    procedure BitBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBDFD2: TFrBDFD2;

implementation

{$R *.dfm}

procedure TFrBDFD2.BitBtnClick(Sender: TObject);
begin
 Close;
end;

end.
