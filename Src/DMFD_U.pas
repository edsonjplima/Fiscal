unit DMFD_U;

interface

uses
  System.SysUtils, System.Classes, Vcl.Forms, Winapi.Windows,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.Phys.ODBCBase, FireDAC.Phys.MSAcc;

type
  TDMFD = class(TDataModule)
    FDConNFe: TFDConnection;
    FDConGer: TFDConnection;
    FDQryGeral1: TFDQuery;
    FDQryGeral2: TFDQuery;
    DataSource17: TDataSource;
    DataSource3: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    FDQuery4: TFDQuery;
    FDQuery5: TFDQuery;
    FDQuery6: TFDQuery;
    FDQuery7: TFDQuery;
    FDQuery8: TFDQuery;
    FDQuery9: TFDQuery;
    FDQuery10: TFDQuery;
    FDQuery11: TFDQuery;
    FDQuery12: TFDQuery;
    FDQuery13: TFDQuery;
    FDQuery14: TFDQuery;
    FDQuery15: TFDQuery;
    FDQuery16: TFDQuery;
    DataSource10: TDataSource;
    DataSource11: TDataSource;
    DataSource12: TDataSource;
    DataSource14: TDataSource;
    DataSource15: TDataSource;
    DataSource16: TDataSource;
    DataSource13: TDataSource;
    FDQryGer: TFDQuery;
    spVrfCanNot: TFDStoredProc;
    spCanNot: TFDStoredProc;
    spVrfInuNot: TFDStoredProc;
    DataSource18: TDataSource;
    FDQuery18: TFDQuery;
    FDQryGeral3: TFDQuery;
    FDQryGeral4: TFDQuery;
    DataSource1: TDataSource;
    FDQuery19: TFDQuery;
    FDQryGeral5: TFDQuery;
    FDQuery20: TFDQuery;
    procedure FDConGerError(ASender, AInitiator: TObject;
      var AException: Exception);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFD: TDMFD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDMFD.FDConGerError(ASender, AInitiator: TObject;
  var AException: Exception);
begin

 Application.Messagebox(PWideChar('Base de dados ERP n?o foi conectado, o aplicativo ser? fechado!'), PWideChar('Erro de conec??o!'), MB_ICONERROR+mb_ok);
 Halt;

end;

end.
