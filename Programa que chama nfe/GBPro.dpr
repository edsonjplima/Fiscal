program GBPro;

uses
  Forms,
  GBPro_U in 'GBPro_U.pas' {FrGBPro};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrGBPro, FrGBPro);
  Application.Run;
end.
