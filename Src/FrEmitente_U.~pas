unit FrEmitente_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, StdCtrls, Buttons, ExtCtrls;

type
  TFrEmitente = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    BitBtn14: TBitBtn;
    BitBtn2: TBitBtn;
    Edit2: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn14Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrEmitente: TFrEmitente;

implementation

uses GBNFe_U, DMNFe_U;

{$R *.dfm}

procedure TFrEmitente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action      := Cafree;
  FrEmitente  := nil;
end;

procedure TFrEmitente.FormCreate(Sender: TObject);
begin

  /// By Edson Lima 2.2.2012 - Criado para iniciar com o codigo da empresa ini

  Edit1.Text := FrGBNFe.dxSpinEdit1.Text;       /// By Edson 2.2.2012 - Codigo da loja

  if edit1.text = '' then exit;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add( 'select * from emitente where codigo_loja = ' + edit1.text );
    Query1.Open;
    if Query1.IsEmpty then begin
      /// By Edson 2.2.2012 - MessageDlg('Emitente não existe',mtInformation,[mbOK],0);
      exit;
    end;

    Edit3.Text   := vartostr(query1['razao_social']);
    Edit4.Text   := vartostr(query1['cnpj']);
    Edit5.Text   := vartostr(query1['endereco']);
    Edit6.Text   := vartostr(query1['complemento']);
    Edit7.Text   := vartostr(query1['numero']);
    Edit8.Text   := vartostr(query1['bairro']);
    Edit9.Text   := vartostr(query1['cep']);
    Edit10.Text  := vartostr(query1['codigo_municipio']);
    Edit11.Text  := vartostr(query1['municipio']);
    Edit12.Text  := vartostr(query1['codigo_uf']);
    Edit13.Text  := vartostr(query1['uf']);
    Edit14.Text  := vartostr(query1['fone']);
    Edit15.Text  := vartostr(query1['insc_estadual']);
    Edit2.Text   := vartostr(query1['insc_estadual_subs']);
    Edit16.Text  := vartostr(query1['SUFRAMA']);
    Edit17.Text  := vartostr(query1['codigo_pais']);
    Edit18.Text  := vartostr(query1['nome_pais']);
    Edit19.Text  := vartostr(query1['regime_tributario']);
    
end;

procedure TFrEmitente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeypPeview do Form pra true
 Direction := -1;
 Case Key of
  VK_NEXT, VK_RETURN : Direction := 0;
  VK_PRIOR	 : Direction := 1;
 end;
 if Direction <> -1 then
  begin
  Perform(WM_NEXTDLGCTL, Direction, 0);
  key := 0;
  end;
end;

procedure TFrEmitente.BitBtn14Click(Sender: TObject);
begin
  if Edit1.Text = '' then exit;

          try
            Query1.DisableControls;
            Query1.Close;
            Query1.SQL.Clear;
            Query1.SQL.Add('insert into emitente (                                                       ');
            Query1.SQL.Add('razao_social     ,                                                   ');
            Query1.SQL.Add('cnpj             ,                                                   ');
            Query1.SQL.Add('endereco         ,                                                   ');
            Query1.SQL.Add('complemento      ,                                                   ');
            Query1.SQL.Add('numero           ,                                                   ');
            Query1.SQL.Add('bairro           ,                                                   ');
            Query1.SQL.Add('cep              ,                                                   ');
            Query1.SQL.Add('codigo_municipio ,                                                   ');
            Query1.SQL.Add('municipio        ,                                                   ');
            Query1.SQL.Add('codigo_uf        ,                                                   ');
            Query1.SQL.Add('uf               ,                                                   ');
            Query1.SQL.Add('fone             ,                                                   ');
            Query1.SQL.Add('insc_estadual,                                                      ');
            Query1.SQL.Add('insc_estadual_subs,                                                      ');
            Query1.SQL.Add('suframa,                                                      ');
            Query1.SQL.Add('Codigo_loja,                                                  ');
            Query1.SQL.Add('Codigo_pais,                                                  ');
            Query1.SQL.Add('nome_pais)                                                  ');
            Query1.SQL.Add('values (                                                      ');
            Query1.SQL.Add(':p1,                                                   ');
            Query1.SQL.Add(':p2,                                                   ');
            Query1.SQL.Add(':p3,                                                   ');
            Query1.SQL.Add(':p4,                                                   ');
            Query1.SQL.Add(':p5,                                                   ');
            Query1.SQL.Add(':p6,                                                   ');
            Query1.SQL.Add(':p7,                                                   ');
            Query1.SQL.Add(':p8,                                                   ');
            Query1.SQL.Add(':p9,                                                   ');
            Query1.SQL.Add(':p11,                                                   ');
            Query1.SQL.Add(':p12,                                                   ');
            Query1.SQL.Add(':p10,                                                   ');
            Query1.SQL.Add(':p13,                                                   ');
            Query1.SQL.Add(':p15,                                                   ');
            Query1.SQL.Add(':p14,                                                   ');
            Query1.SQL.Add(':Codigo_loja,                                                  ');
            Query1.SQL.Add(':Codigo_pais,                                                  ');
            Query1.SQL.Add(':nome_pais,                                                  ');
            Query1.SQL.Add(':regime_tributario)                                                  ');
            Query1.Params[0].AsString    := Edit3.Text;
            Query1.Params[1].AsString    := Edit4.Text;
            Query1.Params[2].AsString    := Edit5.Text;
            Query1.Params[3].AsString    := Edit6.Text;
            Query1.Params[4].AsString    := Edit7.Text;
            Query1.Params[5].AsString    := Edit8.Text;
            Query1.Params[6].AsString    := Edit9.Text;
            Query1.Params[7].AsString    := Edit10.Text;
            Query1.Params[8].AsString    := Edit11.Text;
            Query1.Params[9].AsString    := Edit12.Text;
            Query1.Params[10].AsString   := Edit13.Text;
            Query1.Params[11].AsString   := Edit14.Text;
            Query1.Params[12].AsString   := Edit15.Text;
            Query1.Params[13].AsString   := Edit2.Text;
            Query1.Params[14].AsString   := Edit16.Text;
            Query1.Params[15].AsInteger  := strtoint(Edit1.Text);
            Query1.Params[16].AsString   := Edit17.Text;
            Query1.Params[17].AsString   := Edit18.Text;
            Query1.Params[18].AsString   := Edit19.Text;
            try
              DMNFe.DataBase1.StartTransaction;
              Query1.ExecSQL;
              DMNFe.DataBase1.Commit;
              except
                DMNFe.DataBase1.Rollback;
                try
                  Query1.DisableControls;
                  Query1.Close;
                  Query1.SQL.Clear;
                  Query1.SQL.Add('Update emitente set                                                       ');
                  Query1.SQL.Add('razao_social     = :p1,                                                   ');
                  Query1.SQL.Add('cnpj             = :p2,                                                   ');
                  Query1.SQL.Add('endereco         = :p3,                                                   ');
                  Query1.SQL.Add('complemento      = :p4,                                                   ');
                  Query1.SQL.Add('numero           = :p5,                                                   ');
                  Query1.SQL.Add('bairro           = :p6,                                                   ');
                  Query1.SQL.Add('cep              = :p7,                                                   ');
                  Query1.SQL.Add('codigo_municipio = :p8,                                                   ');
                  Query1.SQL.Add('municipio        = :p9,                                                   ');
                  Query1.SQL.Add('codigo_uf        = :p11,                                                   ');
                  Query1.SQL.Add('uf               = :p12,                                                   ');
                  Query1.SQL.Add('fone             = :p10,                                                   ');
                  Query1.SQL.Add('insc_estadual    = :p13,                                                   ');
                  Query1.SQL.Add('insc_estadual_subs    = :p14,                                                   ');
                  Query1.SQL.Add('suframa          = :p15,                                                   ');
                  Query1.SQL.Add('codigo_pais          = :p16,                                                   ');
                  Query1.SQL.Add('nome_pais          = :p17,                                                   ');
                  Query1.SQL.Add('regime_tributario  = :p19                                                   ');
                  Query1.SQL.Add('where codigo_loja = :codloja                                 ');
                  Query1.Params[0].AsString    := Edit3.Text;
                  Query1.Params[1].AsString    := Edit4.Text;
                  Query1.Params[2].AsString    := Edit5.Text;
                  Query1.Params[3].AsString    := Edit6.Text;
                  Query1.Params[4].AsString    := Edit7.Text;
                  Query1.Params[5].AsString    := Edit8.Text;
                  Query1.Params[6].AsString    := Edit9.Text;
                  Query1.Params[7].AsString    := Edit10.Text;
                  Query1.Params[8].AsString    := Edit11.Text;
                  Query1.Params[9].AsString    := Edit12.Text;
                  Query1.Params[10].AsString   := Edit13.Text;
                  Query1.Params[11].AsString   := Edit14.Text;
                  Query1.Params[12].AsString   := Edit15.Text;
                  Query1.Params[13].AsString   := Edit2.Text;
                  Query1.Params[14].AsString   := Edit16.Text;
                  Query1.Params[15].AsString   := Edit17.Text;
                  Query1.Params[16].AsString   := Edit18.Text;
                  Query1.Params[17].AsString   := Edit19.Text;
                  Query1.Params[18].AsInteger  := strtoint(Edit1.Text);
                  try
                    DMNFe.DataBase1.StartTransaction;
                    Query1.ExecSQL;
                    DMNFe.DataBase1.Commit;
                    except
                      DMNFe.DataBase1.Rollback;
                    end;
                finally
                  Query1.EnableControls;
                end;

              end;
            Query1.Close;
          finally
            Query1.EnableControls;
          end;

          Close;

end;

procedure TFrEmitente.Edit1Exit(Sender: TObject);
begin
  if edit1.text = '' then exit;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add( 'select * from emitente where codigo_loja = ' + edit1.text );
    Query1.Open;
    if Query1.IsEmpty then begin
      MessageDlg('Emitente não existe',mtInformation,[mbOK],0);
      exit;
    end;

    Edit3.Text   := vartostr(query1['razao_social']);
    Edit4.Text   := vartostr(query1['cnpj']);
    Edit5.Text   := vartostr(query1['endereco']);
    Edit6.Text   := vartostr(query1['complemento']);
    Edit7.Text   := vartostr(query1['numero']);
    Edit8.Text   := vartostr(query1['bairro']);
    Edit9.Text   := vartostr(query1['cep']);
    Edit10.Text  := vartostr(query1['codigo_municipio']);
    Edit11.Text  := vartostr(query1['municipio']);
    Edit12.Text  := vartostr(query1['codigo_uf']);
    Edit13.Text  := vartostr(query1['uf']);
    Edit14.Text  := vartostr(query1['fone']);
    Edit15.Text  := vartostr(query1['insc_estadual']);
    Edit2.Text   := vartostr(query1['insc_estadual_subs']);
    Edit16.Text  := vartostr(query1['SUFRAMA']);
    Edit17.Text  := vartostr(query1['codigo_pais']);
    Edit18.Text  := vartostr(query1['nome_pais']);
    Edit19.Text  := vartostr(query1['regime_tributario']);

end;

procedure TFrEmitente.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

 /// By Edson 2.2.2012 - premite somente números - Limitado duas casas decimais
 /// -----------------   para o numero de copias

 if not (key in['0'..'9',chr(8)]) then Abort;

end;

end.
