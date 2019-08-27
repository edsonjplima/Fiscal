unit FrInut_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBGrids,
  pcnConversao, Vcl.DBCtrls, pcnConversaoNFe;

type
  TFrInut = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel9: TPanel;
    BitBtn12: TBitBtn;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    GroupBox3: TGroupBox;
    Edit3: TEdit;
    GroupBox4: TGroupBox;
    Edit4: TEdit;
    BitBtn1: TBitBtn;
    GroupBox5: TGroupBox;
    Edit5: TEdit;
    StatusBar1: TStatusBar;
    SpeedButton1: TSpeedButton;
    rg1: TRadioGroup;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrInut: TFrInut;

  // Variáveis Globais
  vMens, xAux                                                          : String;

implementation

uses GBNFe_U, DMFD_U, Funcoes_U, FrSeleciona_U, FrPar_U;

{$R *.dfm}

procedure TFrInut.BitBtn1Click(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal,
 Justificativa, aux, CodPed                      : String;
 vCanPed                                         : Boolean;

begin

 // Define o tipo de ambiente
 If FrPar.rgTipoAmb.ItemIndex = 0 then
  FrGBNFe.ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb := taProducao
 else
  FrGBNFe.ACBrNFe1.NotasFiscais.Add.NFe.Ide.tpAmb := taHomologacao;

 if ( Trim(Edit1.Text) = '' ) then
  begin
   Application.Messagebox('Ano não definido!' + Chr(13) + 'Defina o ano da nota pra continuar!','Atenção!', mb_iconstop+mb_ok);
   Edit1.SetFocus;
   exit;
  end;

 if ( Trim(Edit3.Text) = '' ) then
  begin
   Application.Messagebox('Série não definida!' + Chr(13) + 'Defina a série da nota pra continuar!','Atenção!', mb_iconstop+mb_ok);
   Edit3.SetFocus;
   exit;
  end;

 if ( Trim(Edit4.Text) = '' ) then
  begin
   Application.Messagebox('Número da nota não definido!' + Chr(13) + 'Defina o número da nota pra continuar!','Atenção!', mb_iconstop+mb_ok);
   Edit4.SetFocus;
   exit;
  end;

 if ( Trim(Edit2.Text) = '' ) then
  begin
   Application.Messagebox('Modelo não definido!' + Chr(13) + 'Defina o modelo da nota pra continuar!','Atenção!', mb_iconstop+mb_ok);
   rg1.SetFocus;
   exit;
  end;

 if ( Length(Trim(Edit5.Text)) < 15 ) then
  begin
   Application.Messagebox('Justificativa menor que 15 caracteres!' + Chr(13) + 'Redefina a justificativa da inutilização pra continuar!','Atenção!', mb_iconstop+mb_ok);
   Edit5.SetFocus;
   exit;
  end;

 Ano           := Edit1.Text;
 Modelo        := Edit2.Text;
 Serie         := Edit3.Text;
 NumeroInicial := Edit4.Text;
 NumeroFinal   := Edit4.Text;
 Justificativa := Edit5.Text;

 if Ano         = '' then begin Edit1.SetFocus; exit; end;
 if Modelo      = '' then begin Edit2.SetFocus; exit; end;
 if Serie       = '' then begin Edit3.SetFocus; exit; end;
 if NumeroFinal = '' then begin Edit4.SetFocus; exit; end;

 FrGBNFe.fMudaVersao( FrPar.cbb2.ItemIndex, StrToInt(Modelo) );                 // Mudança de versão

 // by Edson Lima ; 4-4-2012 ; 10:30 ; - Não tem mais necessidade de mostrar os dados
 xAux := '';

 //-----------------------------------------------------------------------------
 // by Edson Lima ; 2017-1-16T1030 ; Verifica se existe pedido
 //-----------------------------------------------------------------------------
 if not ( FrGBNFe.fVrfInuNot( StrToInt(FrGBNFe.edt_CodEmp.Text), StrToInt(NumeroInicial), StrToInt(modelo), StrToInt(serie) ) ) then
  Exit;

 if ( gCodPed > 0 ) then
  vCanPed := true
 else
  vCanPed := false;

 if vCanPed then
  begin
   //---------------------------------------------------------------------------
   // by Edson Lima ; 2017-1-16T1130 ; Verifica a precisão adm do ERP para
   //                                  cancelamento
   //---------------------------------------------------------------------------
   if not ( FrGBNFe.fVerPAG(StrToInt(NumeroInicial), StrToInt(FrGBNFe.edt_CodEmp.Text), gCodPed ) ) then
    Exit;
   //---------------------------------------------------------------------------
  end;

 // by Edson Lima ; 2015-5-19T0904 ; Verifica se a nota que foi inutilizada e a que dever ser excluída
 DMFD.FDQryGeral1.Close;
 DMFD.FDQryGeral1.SQL.Clear;
 DMFD.FDQryGeral1.SQL.Add( 'Select * from nfe                              ' );
 DMFD.FDQryGeral1.SQL.Add( 'where codigo_loja = :gCodEmp                   ' );
 DMFD.FDQryGeral1.SQL.Add( 'and   nnf         = :nnf                       ' );
 DMFD.FDQryGeral1.SQL.Add( 'and   Modelo      = :Modelo                    ' );
 DMFD.FDQryGeral1.SQL.Add( 'and   serie       = :ser                       ' );
 DMFD.FDQryGeral1.ParamByName('gCodEmp'   ).Value        := StrToInt(gCodEmp);
 DMFD.FDQryGeral1.ParamByName('nNF'       ).Value        := StrToInt(NumeroFinal);
 DMFD.FDQryGeral1.ParamByName('Modelo'    ).Value        := Modelo;
 DMFD.FDQryGeral1.ParamByName('ser'       ).Value        := Serie;
 DMFD.FDQryGeral1.Open;

 if not DMFD.FDQryGeral1.IsEmpty then
  begin

   if ( (DMFD.FDQryGeral1['situacao']       = null)   or
        (trim(DMFD.FDQryGeral1['situacao']) = '')     or
        (trim(DMFD.FDQryGeral1['situacao']) = 'FSDA') or
        (trim(DMFD.FDQryGeral1['situacao']) = 'OFFL') or
        (trim(DMFD.FDQryGeral1['situacao']) = 'ENVI') ) then

    begin

     xAux := IntToStr(DMFD.FDQryGeral1['nNF']);

    end

   else
    begin

     Application.Messagebox( PWideChar('Esta nota não pode ser inutilizada,'                 + chr(13) +
                                       'Situação: ' + VarToStr(DMFD.FDQryGeral1['situacao']) + chr(13) +
                                       'Contate o suporte GB!'),
                                       'Atenção!', mb_iconstop+mb_ok );
     exit;

    end;
  end
 else
  xAux := NumeroFinal;

 if MessageDlg('Confirma a inutilização da nota nº: ' + xAux , mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

   try

    FrGBNFe.ACBrNFe1.WebServices.Inutiliza(vartostr(DMFD.FDQuery4['cnpj']), Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
    FrGBNFe.MemoResp.Lines.Text :=  UTF8Encode(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.RetWS);
    FrGBNFe.memoRespWS.Lines.Text :=  UTF8Encode(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.RetornoWS);
    FrGBNFe.LoadXML(FrGBNFe.MemoResp, FrGBNFe.WBResposta);

    FrGBNFe.memoLog.Clear;
    FrGBNFe.memoLog.Lines.Add('');
    FrGBNFe.memoLog.Lines.Add('Inutilização');
    FrGBNFe.memoLog.Lines.Add('tpAmb: '    +TpAmbToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.tpAmb));
    FrGBNFe.memoLog.Lines.Add('verAplic: ' +FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.verAplic);
    FrGBNFe.memoLog.Lines.Add('cStat: '    +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat));
    FrGBNFe.memoLog.Lines.Add('xMotivo: '  +FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo);
    FrGBNFe.memoLog.Lines.Add('cUF: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cUF));
    FrGBNFe.memoLog.Lines.Add('Ano: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Ano));
    FrGBNFe.memoLog.Lines.Add('CNPJ: '      +FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.CNPJ);
    FrGBNFe.memoLog.Lines.Add('Modelo: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Modelo));
    FrGBNFe.memoLog.Lines.Add('Serie: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Serie));
    FrGBNFe.memoLog.Lines.Add('NumeroInicial: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.NumeroInicial));
    FrGBNFe.memoLog.Lines.Add('NumeroInicial: '      +IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.NumeroFinal));
    FrGBNFe.memoLog.Lines.Add('dhRecbto: ' +DateTimeToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.dhRecbto));
    FrGBNFe.memoLog.Lines.Add('Protocolo: '      +FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Protocolo);

    if ( not(FrGBNFe.Panel7.Visible) ) then
     begin

      Application.Messagebox( PWideChar('* -- RETORNO DA INUTILIZAÇÃO - NFe & NFCe -- *'                                        + chr(13) +
                                        'Tipo de Ambiente: '     + TpAmbToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.tpAmb)  + chr(13) +
                                        'Versão do Aplicativo: ' + FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.verAplic           + chr(13) +
                                        'Código do Status: '     + IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)    + chr(13) +
                                        'Código da UF: '         + IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cUF)      + chr(13) +
                                        'Descrição: '            + FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo),
                                        'Inutilização'           , MB_ICONINFORMATION );

     end;

   except

    case FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat of

     266 : Application.Messagebox( PWideChar('Na SEFAZ ou SEFAZ VIRTUAL:'                                                       + chr(13) +
                                             ' - Série da NF-e difere da faixa de 0-889'),
                                             'Atenção Inconsistência na inutilização', MB_ICONINFORMATION );
     203 : Application.Messagebox( PWideChar('Acesso Cadastro Contribuinte:'                                                    + chr(13) +
                                             ' - Verificar Emitente não autorizado a emitir NF-e'),
                                             'Atenção Inconsistência na inutilização', MB_ICONINFORMATION );
     240 : Application.Messagebox( PWideChar('Acesso Cadastro Contribuinte:'                                                    + chr(13) +
                                             ' - Verificar Situação Fiscal irregular do Emitente'),
                                             'Atenção Inconsistência na inutilização', MB_ICONINFORMATION );
     241 : Application.Messagebox( PWideChar('Acesso BD NFE (Chave: CNPJ Emit, Modelo, Série, Número):'                         + chr(13) +
                                             ' - Verificar se existe NF-e utilizada na faixa de inutilização solicitada'),
                                             'Atenção Inconsistência na inutilização', MB_ICONINFORMATION );
     563 : Application.Messagebox( PWideChar('Acesso BD NFE-Inutilização:'                                                      + chr(13) +
                                             ' - ' + FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo                          + chr(13) +
                                             ' - O Transmissor irá atualizar o banco de dados, aguarde!'),
                                             'Atenção Inconsistência na inutilização', MB_ICONINFORMATION );

    end;

    if ( FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat <> 563 ) then
     begin
      Application.Messagebox('Número não inutilizado!','Atenção!',mb_iconstop+mb_ok);
      exit;
     end;

   end;

   if vCanPed then
    begin
     //-------------------------------------------------------------------------
     // by Edson Lima ; 2017-1-16T1549
     // Efetua o Cancelamento Administrativo do PEDIDO
     //-------------------------------------------------------------------------
     if not ( FrGBNFe.fCanCAP(StrToInt(NumeroInicial), StrToInt(FrGBNFe.edt_CodEmp.Text),
              gCodPed, gCodMtI) ) then
      Application.MessageBox(PWideChar(pAnsiString(
       'Nota nº ' + NumeroInicial + 'inutilizada, mas o pedido nº ' +
       IntToStr(gCodPed) + ' não foi inutilizado!')), 'Atenção', MB_ICONINFORMATION );
     //-------------------------------------------------------------------------
    end;

   aux := '';

   if ( FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat = 563 ) then
    begin

     aux := FrGBNFe.edt_CodEmp.Text                                           + ',' + '''' +         // @codigo_loja     int,
            NumeroInicial                                                     + '''' + ',' + '''' +  // @nota            bigint,
            ano                                                               + '''' + ',' + '''' +  // @ano             int,
            Modelo                                                            + '''' + ',' + '''' +  // @modelo          int,
            serie                                                             + '''' + ',' + '''' +  // @serie           int,
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Justificativa           + '''' + ',' + '''' +  // @justificativa   varchar(255),
            FormatDateTime('yyyy/mm/dd hh:nn:ss',
              FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)             + '''' + ',' + '''' +  // @data_inclusao   datetime,
            TpAmbToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.tpAmb)       + '''' + ',' + '''' +  // @tpAmb           char(1),
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.verAplic                + '''' + ',' + '''' +  //	@verAplic        varchar(30),
            '102'                                                             + '''' + ',' + '''' +  // @cStat           int,
            'Inutilizacao de numero homologado'                               + '''' + ',' + '''' +  // @xMotivo         varchar(255),
            IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cUF)           + '''' + ',' + '''' +  // @cUF             int,
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.CNPJ                    + '''' + ',' + '''' +  //	@CNPJ            varchar(14),
            Copy(Trim(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo), 78, 15)          + '''';   // @nProt           varchar(20)

    end
   else
    begin

     aux := FrGBNFe.edt_CodEmp.Text                                           + ',' + '''' +          // @codigo_loja     int,
            NumeroInicial                                                     + '''' + ',' + '''' +  // @nota            bigint,
            ano                                                               + '''' + ',' + '''' +  // @ano             int,
            Modelo                                                            + '''' + ',' + '''' +  // @modelo          int,
            serie                                                             + '''' + ',' + '''' +  // @serie           int,
            justificativa                                                     + '''' + ',' + '''' +  // @justificativa   varchar(255),
            FormatDateTime('yyyy/mm/dd hh:nn:ss',
              FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.dhRecbto)             + '''' + ',' + '''' +  // @data_inclusao   datetime,
            TpAmbToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.tpAmb)       + '''' + ',' + '''' +  // @tpAmb           char(1),
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.verAplic                + '''' + ',' + '''' +  //	@verAplic        varchar(30),
            IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cStat)         + '''' + ',' + '''' +  // @cStat           int,
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.xMotivo                 + '''' + ',' + '''' +  // @xMotivo         varchar(255),
            IntToStr(FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.cUF)           + '''' + ',' + '''' +  // @cUF             int,
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.CNPJ                    + '''' + ',' + '''' +  //	@CNPJ            varchar(14),
            FrGBNFe.ACBrNFe1.WebServices.Inutilizacao.Protocolo               + '''' + ',' + '''' +  //	@nProt           varchar(20),
            gUsu                                                                           + '''';   // @UsuInu          varchar(15)

    end;

   //grava notas inutilizadas
   try

    DMFD.FDQuery1.DisableControls;
    DMFD.FDQuery1.Close;
    DMFD.FDQuery1.SQL.Clear;
    DMFD.FDQuery1.SQL.Add( 'exec sp_insere_notas_inutilizadas ' + aux );

    try

     DMFD.FDQuery1.ExecSQL;

    except

     Application.Messagebox('Erro na inserção do registro!','Atenção!',mb_iconstop+mb_ok);
     exit;

    end;

   finally

    DMFD.FDQuery1.EnableControls;

   end;

   try

    // by Edson Lima ; 2015-5-19T0904 ; Verifica se a nota que foi inutilizada e a que dever ser excluída
    DMFD.FDQryGeral1.Close;
    DMFD.FDQryGeral1.SQL.Clear;
    DMFD.FDQryGeral1.SQL.Add( 'Select * from nfe                              ' );
    DMFD.FDQryGeral1.SQL.Add( 'where codigo_loja = :gCodEmp                   ' );
    DMFD.FDQryGeral1.SQL.Add( 'and   nnf         = :nnf                       ' );
    DMFD.FDQryGeral1.SQL.Add( 'and   Modelo      = :Modelo                    ' );
    DMFD.FDQryGeral1.SQL.Add( 'and   serie       = :ser                       ' );
    DMFD.FDQryGeral1.ParamByName('gCodEmp'   ).Value        := StrToInt(gCodEmp);
    DMFD.FDQryGeral1.ParamByName('nNF'       ).Value        := StrToInt(NumeroFinal);
    DMFD.FDQryGeral1.ParamByName('Modelo'    ).Value        := Modelo;
    DMFD.FDQryGeral1.ParamByName('ser'       ).Value        := Serie;
    DMFD.FDQryGeral1.Open;

    // by Edson Lima ; 2015-5-19T0904 ; Verifica se a nota que foi inutilizada e a exclui
    if not ( DMFD.FDQryGeral1.IsEmpty ) then
     begin
      DMFD.FDQryGeral1.SQL.Add( 'Delete from nfe                                 ' );
      DMFD.FDQryGeral1.SQL.Add( 'where codigo_loja   = :gCodEmp                  ' );
      DMFD.FDQryGeral1.SQL.Add( '  and   nnf         = :nNF                      ' );
      DMFD.FDQryGeral1.SQL.Add( '  and   Modelo      = :Modelo                   ' );
      DMFD.FDQryGeral1.SQL.Add( '  and   serie       = :ser                      ' );
      DMFD.FDQryGeral1.ParamByName('gCodEmp'   ).Value        := StrToInt(gCodEmp);
      DMFD.FDQryGeral1.ParamByName('nNF'       ).Value        := StrToInt(NumeroFinal);
      DMFD.FDQryGeral1.ParamByName('Modelo'    ).Value        := Modelo;
      DMFD.FDQryGeral1.ParamByName('ser'       ).Value        := StrToInt(Serie);
      DMFD.FDQryGeral1.Open;

      Application.Messagebox(pChar('A NFe nº ' + NumeroFinal + ', foi excluida da base NFe!'),'Atenção!',mb_iconstop+mb_ok);

     end;

   except

    Application.Messagebox('Ocorreu um erro na exclusão da nota!','Atenção!',mb_iconstop+mb_ok);

   end;

   MessageDlg('A inutilização foi efetuado com sucesso!',mtInformation,[mbOK],0);

  end;

end;

procedure TFrInut.FormCreate(Sender: TObject);
begin
 { By EL 9.2.2012 - Iniciação dos edit padrão de inicializaçao }
 Edit1.Text := FormatDateTime('yyyy', Date);
end;

procedure TFrInut.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',chr(8)]) then Abort;
end;

procedure TFrInut.Edit3Exit(Sender: TObject);
begin

 if ( (StrToInt(Edit3.Text) > 909) and (StrToInt(Edit3.Text) < 970) ) then
  begin

   Application.Messagebox('Série fora da faixa de inutilização!', 'Atenção!', mb_iconstop+mb_ok);
   Edit3.SetFocus;

  end;

end;

procedure TFrInut.Edit4Exit(Sender: TObject);
begin

 rg1.SetFocus;

end;

procedure TFrInut.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Altere a propriedade do KeypPeview do Form pra true
 if not (ActiveControl is  TDbGrid) then
  begin
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
end;

procedure TFrInut.FormShow(Sender: TObject);
begin
 Edit2.Text    := '';
 Edit3.Text    := '';
 Edit4.Text    := '';
 Edit5.Text    := gNomMtI;
 rg1.ItemIndex := -1;
 FrInut.Edit1.SetFocus;
end;

procedure TFrInut.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 FrGBNFe.pAtuNFe;
end;

procedure TFrInut.Edit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = VK_F8 then
  if Seleciona( 'notas_inutilizadas', 'Justificativas', ['Distinct justificativa'], ['JUSTIFICATIVAS '], '(justificativa like :spjustificativa)', [400], 1, 'justificativa' ) then
   Edit5.Text := spResult[0];
end;

procedure TFrInut.SpeedButton1Click(Sender: TObject);
begin
 if Seleciona( 'notas_inutilizadas', 'Justificativas', ['Distinct justificativa'], ['JUSTIFICATIVAS '], '(justificativa like :spjustificativa)', [400], 1, 'justificativa' ) then
  Edit5.Text := spResult[0];
end;

procedure TFrInut.BitBtn12Click(Sender: TObject);
begin
 Close;
end;

procedure TFrInut.rg1Click(Sender: TObject);
begin

 if ( rg1.ItemIndex = 0 ) then
  Edit2.Text := '55'
 else if ( rg1.ItemIndex = 1 ) then
  Edit2.Text := '65'
 else
  Edit2.Text := '';

end;

procedure TFrInut.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in['0'..'9',chr(8)]) then Abort;
end;

end.
