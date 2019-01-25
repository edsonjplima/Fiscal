unit DMADO_U;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmADO = class(TDataModule)
    ADODataSet1: TADODataSet;
    ADOQuery1: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQuery3: TADOQuery;
    ADOQuery4: TADOQuery;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOQuery8: TADOQuery;
    ADOQuery9: TADOQuery;
    ADOQuery10: TADOQuery;
    ADOQuery11: TADOQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmADO: TdmADO;

implementation

{$R *.dfm}

end.
