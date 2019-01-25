unit DMNFe_U;

interface

uses
  SysUtils, Classes, DB;

type
  TdmNFe = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmNFe: TdmNFe;

implementation

uses GBNFe_U, ufrmStatus;

{$R *.dfm}

end.
