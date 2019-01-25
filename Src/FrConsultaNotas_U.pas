unit FrConsultaNotas_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, ComCtrls, OleCtrls, SHDocVw, DB,
  Mask, DBTables, Grids,pcnConversao;

type
  TFrConsultaNotas = class(TForm)
    BitBtn2: TBitBtn;
    Label4: TLabel;
    Edit1: TEdit;
    Query1: TQuery;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    StrGrid2: TStringGrid;
    BitBtn4: TBitBtn;

    procedure Refresh;

    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure StrGrid2DblClick(Sender: TObject);
    procedure StrGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure StrGrid2SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrConsultaNotas: TFrConsultaNotas;

implementation

uses nfe, GBNFe_U;

{$R *.DFM}

procedure  TFrConsultaNotas.Refresh;
var
 i : integer;

begin
// colunas
        StrGrid2.ColCount  := 6;
        StrGrid2.FixedCols := 0;

//linhas
        StrGrid2.RowCount := 2;
        StrGrid2.FixedRows := 1;

        StrGrid2.ColWidths[0] := 300;
        StrGrid2.ColWidths[1] := 300;
        StrGrid2.ColWidths[2] := 110;
        StrGrid2.ColWidths[3] := 110;
        StrGrid2.ColWidths[4] := 70;
        StrGrid2.ColWidths[5] := 300;

//Celulas
        StrGrid2.Cells[0,0] := 'RAZ�O SOCIAL';
        StrGrid2.Cells[1,0] := 'CHAVE NFE';
        StrGrid2.Cells[2,0] := 'PROTOCOLO';
        StrGrid2.Cells[3,0] := 'RECIBO';
        StrGrid2.Cells[4,0] := 'SITUA��O';
        StrGrid2.Cells[5,0] := 'DESCRI��O DA SITUA��O';

    StrGrid2.Cells[0,1] := '';
    StrGrid2.Cells[1,1] := '';
    StrGrid2.Cells[2,1] := '';
    StrGrid2.Cells[3,1] := '';
    StrGrid2.Cells[4,1] := '';
    StrGrid2.Cells[5,1] := '';

    if not Query1.IsEmpty then begin
      Query1.First;
      i := 0;
      //StrGrid1.RowCount := 0;
      While not Query1.Eof do begin
        inc(i);
        StrGrid2.RowCount   := StrGrid2.RowCount + 1;
        StrGrid2.Cells[0,i] := vartostr(Query1['RAZAO_SOCIAL']);
        StrGrid2.Cells[1,i] := vartostr(Query1['CHAVE_NFE']);
        StrGrid2.Cells[2,i] := vartostr(Query1['PROTOCOLO']);
        StrGrid2.Cells[3,i] := vartostr(Query1['RECIBO']);
        StrGrid2.Cells[4,i] := vartostr(Query1['SITUACAO']);
        StrGrid2.Cells[5,i] := vartostr(Query1['MOTIVO']);
        Query1.Next;
      end;

      if StrGrid2.RowCount > 2 then StrGrid2.RowCount := StrGrid2.RowCount - 1;
    end;

end;

procedure TFrConsultaNotas.BitBtn2Click(Sender: TObject);
begin
  xAux         := '';
  Close;
end;

procedure TFrConsultaNotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action            := CaFree;
  FrConsultaNotas   := nil;

end;

procedure TFrConsultaNotas.BitBtn4Click(Sender: TObject);
begin
    try
      Query1.DisableControls;
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add( 'exec sp_consulta_nfe ''' + Edit1.text + ''', null                           ' );
      try
        Query1.Open;
        except
          Application.HandleMessage;
        end;
    finally
      Query1.EnableControls;
    end;

  Refresh;

end;

procedure TFrConsultaNotas.StrGrid2DblClick(Sender: TObject);
begin
  Close;
end;

procedure TFrConsultaNotas.StrGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then  StrGrid2DblClick(FrConsultaNotas);

end;

procedure TFrConsultaNotas.StrGrid2SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
    if ARow > 0 then begin
      xAux         := StrGrid2.Cells[1,Arow];
    end;

end;

procedure TFrConsultaNotas.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = 13 then
    perform( Wm_NextDlgCtl, 0 , 0 );
  if key = VK_UP then
    perform( Wm_NextDlgCtl, 1 , 0 );

end;

end.
