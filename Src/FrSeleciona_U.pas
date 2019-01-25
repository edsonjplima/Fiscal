unit FrSeleciona_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.Db,
  Grids, DBGrids, ActnList, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxCheckBox, cxMaskEdit,
  cxTextEdit, cxCalendar, cxCurrencyEdit, cxRichEdit, cxTLdxBarBuiltInMenu,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, cxImageComboBox;

type
  TFrSeleciona = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    pnl1: TPanel;
    dbgrd1: TDBGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox1Exit(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
  private
  public
   Empresa1: Boolean;
   Focu    : Integer;
   spDspCmp: TStrings;
  end;

var
  FrSeleciona : TFrSeleciona;
  slCampoPesquisa : String;

implementation

uses GBNFe_U, DMNFe_U, DMFD_U;

{$R *.DFM}

procedure TFrSeleciona.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = Vk_Return then
  perform( Wm_NextDlgCtl, 0 , 0 );
 if Key = Vk_Escape then
  SpeedButton2.Click;
end;

procedure TFrSeleciona.SpeedButton1Click(Sender: TObject);
Var
 I : Integer;
begin

 if DMFD.FDQuery1.Active then
  if Not DMFD.FDQuery1.IsEmpty then
   begin

    for i := 1 to dbgrd1.SelectedRows.Count do
     DMFD.FDQuery1.GotoBookmark(Pointer(dbgrd1.SelectedRows.Items[i-1]));
     spResult[0] := dbgrd1.SelectedField.Value;

    Close;

   end;

 Close;

end;

procedure TFrSeleciona.SpeedButton2Click(Sender: TObject);
begin
 gSelField := False;
 Close
end;

procedure TFrSeleciona.FormActivate(Sender: TObject);
begin

 // Redesenhando DBGrid
 dbgrd1.Visible := False;
 dbgrd1.Visible := True;
 // dbgrd1.SetFocus;

end;

procedure TFrSeleciona.CheckBox1Click(Sender: TObject);
begin

 edit1.SetFocus;

end;

procedure TFrSeleciona.DBGrid1DblClick(Sender: TObject);
begin
 gSelField := true;
end;

procedure TFrSeleciona.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if ( Key = Vk_Return ) or ( ( Key = Vk_Left ) and ( dbgrd1.SelectedField.Index = 0 ) ) then
  SpeedButton1.Click
 else if ( key = Vk_Home ) and ( dbgrd1.SelectedField.Index = 0 ) then
  Edit1.SetFocus;
end;

procedure TFrSeleciona.Edit1Change(Sender: TObject);
begin

 if CheckBox1.Checked then
  Edit1Exit(Sender);
  //DMFD.FDQuery1.Locate(slCampoPesquisa, Edit1.Text, [loPartialKey]);

end;

procedure TFrSeleciona.Edit1Exit(Sender: TObject);
Var
 I, Aux : Integer;

begin

 gSelField := false;

 //-- Limpando Query de Pesquisa
 DMFD.FDQuery1.Close;
 DMFD.FDQuery1.SQL.Clear;
 DMFD.FDQuery1.SQL.Add( ' Select '+spCampos+' ' );
 DMFD.FDQuery1.SQL.Add( '  From  '+tpTabPsq+' ' );

 //-- Atribuindo Condi��o de Sele��o
 if Trim( spCond ) <> '' then
  if Empresa1 then
   DMFD.FDQuery1.SQL.Add( ' Where '+spCond+' and CodEmp = :ilCodEmp ' )
  else
   DMFD.FDQuery1.SQL.Add( ' Where ' + spCond );

 //-- Consistindo Ordena��o
 if spOrdem <> '' then
  DMFD.FDQuery1.SQL.Add( 'ORDER BY ' + spOrdem + ' ' );

 //-- Atribuindo Parametros de Sele��o
 if Empresa1 then begin
   for I := 0 to ipQtdPsq do Begin
     DMFD.FDQuery1.Params[I].Value := '%' + Edit1.Text + '%';
   End;
   DMFD.FDQuery1.Params[ipQtdPsq].AsInteger := ilCodEmp;
 end else begin
   for I := 0 to ipQtdPsq do begin
    DMFD.FDQuery1.Params[I].Value := '%' + Edit1.Text + '%';
   end;
 end;

 DMFD.FDQuery1.Open;

 //-- Adicionando Nome dos Campos
 for I := 0 to DMFD.FDQuery1.FieldCount - 1 do begin
  DMFD.FDQuery1.Fields[I].DisplayLabel := spDspCmp[I];
  dbgrd1.Columns[I].FieldName          := DMFD.FDQuery1.Fields[I].FieldName;
  dbgrd1.Columns[I].Title.Caption      := DMFD.FDQuery1.Fields[I].DisplayLabel;

  if (spOrdem = DMFD.FDQuery1.Fields[I].FieldName) or ('Descricao' = DMFD.FDQuery1.Fields[I].FieldName) then begin
   slCampoPesquisa   := DMFD.FDQuery1.Fields[I].FieldName;
   GroupBox1.Caption := ' Pesquisar por: ' + DMFD.FDQuery1.Fields[I].DisplayLabel;
  end;

 end;

 DMFD.DataSource1.DataSet.Close;
 DMFD.DataSource1.DataSet.Open;

end;

procedure TFrSeleciona.Panel1Resize(Sender: TObject);
begin
 // Redimensionando os Bot�es do Panel

 SpeedButton1.Left := ( ClientWidth  - 90 ) div 2 - 50;
 SpeedButton2.Left := ( ClientWidth  - 90 ) div 2 + 50;
end;

procedure TFrSeleciona.FormShow(Sender: TObject);
begin

 // Redimensionando os Bot�es do Panel
 SpeedButton1.Left := ( ClientWidth  - 90 ) div 2 - 50;
 SpeedButton2.Left := ( ClientWidth  - 90 ) div 2 + 50;

 Edit1Exit(self);

 Edit1.SetFocus;

 gSelField := false;

end;

procedure TFrSeleciona.CheckBox1Exit(Sender: TObject);
begin
 gSelField := false;
end;

procedure TFrSeleciona.DBGrid1Enter(Sender: TObject);
begin
 DBGrid1DblClick(Sender);
end;

procedure TFrSeleciona.DBGrid1Exit(Sender: TObject);
begin
 DBGrid1DblClick(Sender);
end;

end.
