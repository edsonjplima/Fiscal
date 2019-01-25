unit FrMens_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrMens = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrMens: TFrMens;

implementation

uses FrBuscaChave_U, GBNFe_U;

{$R *.dfm}

procedure TFrMens.BitBtn1Click(Sender: TObject);
begin
 gmr := FrMens.BitBtn1.ModalResult;
end;

procedure TFrMens.BitBtn2Click(Sender: TObject);
begin
 gmr := FrMens.BitBtn2.ModalResult;
end;

procedure TFrMens.BitBtn3Click(Sender: TObject);
begin
 gmr := FrMens.BitBtn3.ModalResult;
end;

procedure TFrMens.BitBtn4Click(Sender: TObject);
begin
 gmr := FrMens.BitBtn4.ModalResult;
end;

procedure TFrMens.BitBtn5Click(Sender: TObject);
begin
 gmr := FrMens.BitBtn5.ModalResult;
end;

end.
