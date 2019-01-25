unit FrTelMen_U;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, ComCtrls, Math, Buttons, DB, DBTables, DBCtrls,
  RxLookup, Grids, DBGrids, Mask, AcbrPaf, AcbrPaf_D, AcbrPaf_E, AcbrPaf_P,
  AcbrPaf_R, AcbrPaf_T, AcbrPafRegistros, LbUtils;

type
  TFrTelMen = class(TForm)
    GroupBox1: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    GroupBox4: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edtUF: TEdit;
    edtCNPJ: TEdit;
    edtIE: TEdit;
    edtIM: TEdit;
    edtRAZAO: TEdit;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    qryTabPro: TQuery;
    qryMovCNF: TQuery;
    qryMovRDZ: TQuery;
    qryIteCNF: TQuery;
    qryPagCNF: TQuery;
    btnP: TButton;
    btnR: TButton;
    Button5: TButton;
    Button6: TButton;
    Button4: TButton;
    Button3: TButton;
    Button1: TButton;
    Button7: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    qryRDZAliquotas: TQuery;
    Button2: TButton;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    qryTabEcf: TQuery;
    dsTabEcf: TDataSource;
    qryTabEcfIdTabEcf: TStringField;
    qryMovNot: TQuery;
    qryMovNotTipNot: TStringField;
    qryMovNotCnpj: TStringField;
    qryMovNotInsEst: TStringField;
    qryMovNotDatNot: TDateTimeField;
    qryMovNotCodEst: TStringField;
    qryMovNotModelo: TStringField;
    qryMovNotSerie: TStringField;
    qryMovNotSubSerie: TStringField;
    qryMovNotCodNot: TIntegerField;
    qryMovNotCodCfo: TStringField;
    qryMovNotValNot: TFloatField;
    qryMovNotBasIcm: TFloatField;
    qryMovNotValIcm: TFloatField;
    qryMovNotValIpi: TFloatField;
    qryMovNotValOut: TFloatField;
    qryMovNotICMS: TFloatField;
    qryMovNotSituac: TStringField;
    qryMovNotTipFre: TStringField;
    qryIteNot: TQuery;
    qryIteNotTipNot: TStringField;
    qryIteNotCnpj: TStringField;
    qryIteNotModelo: TStringField;
    qryIteNotSerie: TStringField;
    qryIteNotSubSerie: TStringField;
    qryIteNotCodNot: TIntegerField;
    qryIteNotCodCfo: TStringField;
    qryIteNotCodPro: TStringField;
    qryIteNotValPro: TFloatField;
    qryIteNotQtdPro: TFloatField;
    qryIteNotValDes: TFloatField;
    qryIteNotBasIcm: TFloatField;
    qryIteNotBasSbt: TStringField;
    qryIteNotValIpi: TFloatField;
    qryIteNotICMS: TFloatField;
    qryIteNotValFre: TFloatField;
    qryIteNotSitTri: TStringField;
    qryResECF: TQuery;
    qryResECFOrd: TIntegerField;
    qryResECFTipReg: TStringField;
    qryResECFDatEmi: TDateTimeField;
    qryResECFCodECFp: TIntegerField;
    qryResECFCodECFf: TStringField;
    qryResECFModelo: TStringField;
    qryResECFDocIni: TIntegerField;
    qryResECFDocFin: TIntegerField;
    qryResECFReducaoZ: TIntegerField;
    qryResECFGTRnc: TIntegerField;
    qryResECFGTIni: TFloatField;
    qryResECFGTFin: TFloatField;
    qryResECFSitTri: TStringField;
    qryResECFGTPrc: TFloatField;
    qryTp60I: TQuery;
    qryTp60ITipReg: TStringField;
    qryTp60IDatEmi: TDateTimeField;
    qryTp60ICodECFf: TStringField;
    qryTp60IModelo: TStringField;
    qryTp60ICodCup: TIntegerField;
    qryTp60ICodPro: TStringField;
    qryTp60IValPro: TFloatField;
    qryTp60IQtdPro: TFloatField;
    qryTp60IBasICM: TFloatField;
    qryTp60IICMS: TFloatField;
    qryTp60IValICM: TFloatField;
    qryTp60R: TQuery;
    qryTp60RTipReg: TStringField;
    qryTp60RAnoEmi: TIntegerField;
    qryTp60RMesEmi: TIntegerField;
    qryTp60RCodPro: TStringField;
    qryTp60RICMS: TFloatField;
    qryTp60RValPro: TFloatField;
    qryTp60RQtdPro: TFloatField;
    qryTp60RBasICM: TFloatField;
    qryProIvt: TQuery;
    qryTabPro75: TQuery;
    qryTabPro75CodPro: TStringField;
    qryTabPro75NomPro: TStringField;
    qryTabPro75CodNCM: TStringField;
    qryTabPro75Unidade: TStringField;
    qryTabPro75IPI: TStringField;
    qryTabPro75ICMS: TStringField;
    qryTabPro75ReducaoICMS: TStringField;
    qryTabPro75BasIcmSbt: TStringField;
    Panel2: TPanel;
    Panel3: TPanel;
    GroupBox5: TGroupBox;
    Label10: TLabel;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    GroupBox6: TGroupBox;
    Label11: TLabel;
    ComboBox2: TComboBox;
    qryTabEmp: TQuery;
    qryTabEmpCodEmp: TIntegerField;
    qryTabEmpNomEmp: TStringField;
    qryTabEmpNomFan: TStringField;
    qryTabEmpEndereco: TStringField;
    qryTabEmpComplemento: TStringField;
    qryTabEmpNumero: TIntegerField;
    qryTabEmpSetor: TStringField;
    qryTabEmpNomCid: TStringField;
    qryTabEmpCodIBGE: TIntegerField;
    qryTabEmpEstado: TStringField;
    qryTabEmpCep: TStringField;
    qryTabEmpFone: TStringField;
    qryTabEmpFax: TStringField;
    qryTabEmpEmail: TStringField;
    qryTabEmpCnpj: TStringField;
    qryTabEmpInsEst: TStringField;
    qryTabEmpInsMun: TStringField;
    qryTabEmpInsEstSbt: TStringField;
    qryTabEmpNomCtd: TStringField;
    qryTabEmpCPFCtd: TStringField;
    qryTabEmpCRCCtd: TStringField;
    qryTabEmpFoneCtd: TStringField;
    qryTabEmpEmailCtd: TStringField;
    qryTabPrt: TQuery;
    qryTabPrtCodPrt: TIntegerField;
    qryTabPrtNomPrt: TStringField;
    qryTabPrtCdPais: TStringField;
    qryTabPrtCnpj: TStringField;
    qryTabPrtCpf: TStringField;
    qryTabPrtInsEst: TStringField;
    qryTabPrtCodIBGE: TIntegerField;
    qryTabPrtSuframa: TStringField;
    qryTabPrtEndPrt: TStringField;
    qryTabPrtCep: TStringField;
    qryTabPrtNumero: TStringField;
    qryTabPrtComplemento: TStringField;
    qryTabPrtSetor: TStringField;
    qryTabProSped: TQuery;
    qryTabProSpedCodPro: TIntegerField;
    qryTabProSpedNomPro: TStringField;
    qryTabProSpedCodEan13: TStringField;
    qryTabProSpedCodEmb: TIntegerField;
    qryTabProSpedTipPro: TStringField;
    qryTabProSpedCodNCM: TStringField;
    qryTabEmb: TQuery;
    qryMovNotSped: TQuery;
    qryMovNotSpedTipNot: TStringField;
    qryMovNotSpedTipEmt: TStringField;
    qryMovNotSpedCodPrt: TIntegerField;
    qryMovNotSpedModelo: TStringField;
    qryMovNotSpedSitNot: TStringField;
    qryMovNotSpedSerie: TStringField;
    qryMovNotSpedCodNot: TIntegerField;
    qryMovNotSpedChvNFe: TStringField;
    qryMovNotSpedDatNot: TDateTimeField;
    qryMovNotSpedDatOpe: TDateTimeField;
    qryMovNotSpedValNot: TFloatField;
    qryMovNotSpedValPro: TFloatField;
    qryMovNotSpedForPag: TStringField;
    qryMovNotSpedValDes: TFloatField;
    qryMovNotSpedTipFre: TStringField;
    qryMovNotSpedValFre: TFloatField;
    qryMovNotSpedBasIcm: TFloatField;
    qryMovNotSpedValIcm: TFloatField;
    qryMovNotSpedCodFor: TIntegerField;
    qryMovNotSpedCodPed: TIntegerField;
    qryIteNotSped: TQuery;
    qryIteNotSpedCodPro: TIntegerField;
    qryIteNotSpedCmpPro: TStringField;
    qryIteNotSpedQtdPro: TFloatField;
    qryIteNotSpedCodEmb: TIntegerField;
    qryIteNotSpedValPro: TFloatField;
    qryIteNotSpedValDes: TFloatField;
    qryIteNotSpedMvmEst: TStringField;
    qryIteNotSpedSitTri: TStringField;
    qryIteNotSpedCodCfo: TStringField;
    qryIteNotSpedBasIcm: TFloatField;
    qryIteNotSpedAlqIcm: TFloatField;
    qryIteNotSpedValIcm: TFloatField;
    qryResEst: TQuery;
    qryResEstSitTri: TStringField;
    qryResEstCodCfo: TStringField;
    qryResEstAlqIcm: TFloatField;
    qryResEstValPro: TFloatField;
    qryResEstBasIcm: TFloatField;
    qryResEstValIcm: TFloatField;
    qryResEstValRed: TFloatField;
    qryFatNotSped: TQuery;
    qryFatNotSpedDatFat: TDateTimeField;
    qryFatNotSpedValFat: TFloatField;
    RadioGroup5: TRadioGroup;
    qryTabEmpCNPJCtd: TStringField;
    qryTabEmpCEPCtd: TStringField;
    qryTabEmpENDCtd: TStringField;
    qryTabEmpCOMPLEMENTOCtd: TStringField;
    qryTabEmpNUMEROCtd: TStringField;
    qryTabEmpBAIRROCtd: TStringField;
    qryTabEmpDDDFoneCtd: TStringField;
    qryTabEmpDDDFaxCtd: TStringField;
    qryTabEmpFaxCtd: TStringField;
    qryTabEmpCodIBGECtd: TIntegerField;
    qryInvTot: TQuery;
    qryInvTotVlrTotIvt: TFloatField;
    qryInventario: TQuery;
    qryInventarioCodPro: TStringField;
    qryInventarioUnidade: TIntegerField;
    qryInventarioQtdIvt: TFloatField;
    qryInventarioVlrUnit: TFloatField;
    qryInventarioVlrItem: TFloatField;
    qryTabEmpPerfilEFD: TStringField;
    qryTabEmpCodVerEFD: TStringField;
    Edit3: TEdit;
    Edit4: TEdit;
    Label12: TLabel;
    qryTabEmpCodCtaInvEFD: TStringField;
    qryEcfSped: TQuery;
    qryEcfSpedIdTabEcf: TStringField;
    qryEcfSpedCodECFp: TStringField;
    qryEcfSpedCodECFf: TStringField;
    qryEcfSpedModelo: TStringField;
    qryTotParRedZSped: TQuery;
    qryIteMovDiaSped: TQuery;
    qryDocFisSped: TQuery;
    qryDocFisSpedCodMod: TStringField;
    qryDocFisSpedCodSit: TStringField;
    qryDocFisSpedNumDoc: TIntegerField;
    qryDocFisSpedDatDoc: TDateTimeField;
    qryDocFisSpedVlrDoc: TFloatField;
    qryDocFisSpedCpfCnpj: TStringField;
    qryDocFisSpedNomeAdq: TStringField;
    qryIteDocFisSped: TQuery;
    qryIteDocFisSpedCodItem: TIntegerField;
    qryIteDocFisSpedQtdItem: TFloatField;
    qryIteDocFisSpedQtdCanItem: TFloatField;
    qryIteDocFisSpedVlrItem: TFloatField;
    qryIteDocFisSpedCodStb: TStringField;
    qryIteDocFisSpedCodCfo: TStringField;
    qryIteDocFisSpedAliqIcms: TFloatField;
    QryResDocFisSped: TQuery;
    QryResDocFisSpedSitTri: TStringField;
    QryResDocFisSpedCodCfo: TStringField;
    QryResDocFisSpedAlqIcm: TFloatField;
    QryResDocFisSpedValPro: TFloatField;
    QryResDocFisSpedBasIcm: TFloatField;
    QryResDocFisSpedValIcm: TFloatField;
    qryReducaoZSped: TQuery;
    qryReducaoZSpedDatEmi: TDateTimeField;
    qryReducaoZSpedCodECFp: TStringField;
    qryReducaoZSpedCodECFf: TStringField;
    qryReducaoZSpedModelo: TStringField;
    qryReducaoZSpedDocIni: TIntegerField;
    qryReducaoZSpedDocFin: TIntegerField;
    qryReducaoZSpedReducaoZ: TIntegerField;
    qryReducaoZSpedGTRnc: TIntegerField;
    qryReducaoZSpedGTIni: TFloatField;
    qryReducaoZSpedGTFin: TFloatField;
    qryIteMovDiaSpedCodPro: TStringField;
    qryIteMovDiaSpedQtdIvt: TFloatField;
    qryIteMovDiaSpedVlrUnit: TFloatField;
    qryIteMovDiaSpedVlrItem: TFloatField;
    qrySped: TQuery;
    qrySpedQtde_Nota: TIntegerField;
    qrySpedQtde_CNF: TIntegerField;
    qryTotParRedZSpedNrTot: TIntegerField;
    qryTotParRedZSpedSitTri: TStringField;
    qryTotParRedZSpedGTPrc: TFloatField;
    qryProIvtCodPro: TStringField;
    qryProIvtNomPro: TStringField;
    qryProIvtCodNCM: TStringField;
    qryProIvtUnidade: TStringField;
    qryProIvtIPI: TStringField;
    qryProIvtICMS: TStringField;
    qryProIvtReducaoICMS: TStringField;
    qryProIvtBasIcmSbt: TStringField;
    qryProIvtQtdIvt: TFloatField;
    qryProIvtCstIvt: TFloatField;
    qryProIvtCodigoPosse: TStringField;
    qryProIvtCNPJ: TStringField;
    qryProIvtInsEst: TStringField;
    qryProIvtUF: TStringField;
    qryTabEmbCodEmb: TStringField;
    qryTabEmbNomEmb: TStringField;
    qryIteMovDiaSpedUnidade: TStringField;
    qryIteDocFisSpedUnidade: TStringField;
    PopupMenu1: TPopupMenu;
    EstoqueTOTAL1: TMenuItem;
    EstoquePARCIAL1: TMenuItem;
    Query1: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure PreencherHeader(Header: TRegistroX1);
    procedure btnPClick(Sender: TObject);
    procedure btnRClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EstoqueTOTAL1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure EstoquePARCIAL1Click(Sender: TObject);

  private
    { Private declarations }
    function ValidaCampos : Boolean;

    // joao batista 15-03-2011
    procedure ExecutaSintegra;
    procedure ExecutaSped;

    procedure ExecutaEstoque;

  public
    { Public declarations }

    ProdutoEstoqueParcial : String;

  end;


var
 FrTelMen  : TFrTelMen;
 Linhas    : TStringList ;
 cRedIni,
 cRedFim   : String ;
 I,
 nRedIni,
 nRedFim   : Integer ;
 cDatIni,
 cDatFim   : String ;
 dDatIni,
 dDatFim   : TDateTime ;
 slArquivo : String ;
 cCOOIni, cCOOFim : String ;
 nCOOIni, nCOOFim : Integer ;

 Dir:String;

implementation

 uses FrTelIni_U, Classes_U, Funcoes_U, FrSelEst_U;

{$R *.dfm}

function TFrTelMen.ValidaCampos : Boolean;
begin

  Result := True;

  // per�odo
  if (RadioGroup1.ItemIndex = 0) then begin

   Try

    if DateTimePicker1.Date > DateTimePicker2.Date then begin
     ShowMessage('A data inicial n�o pode ser maior que a data final');
     Result := False;
    end;

   Except
    ShowMessage('..: ATEN��O :.. ' + #13 + #10 + 'Per�odo informado n�o est� correto');
    Result := False;
   End;

  // coo e crz
  end else begin

   Try

    if strtoint(Edit1.text) > strtoint(Edit2.Text) then begin
     ShowMessage('O n�mero inicial n�o pode ser maior que o n�mero final');
     Result := False;
    end;

   Except
    ShowMessage('..: ATEN��O :.. ' + #13 + #10 + 'N�mero informado n�o est� correto');
    Result := False;
   End;

  end;
end;

procedure TFrTelMen.BitBtn1Click(Sender: TObject);
begin
 close;
end;

procedure TFrTelMen.btnPClick(Sender: TObject);
var
 P2 : TRegistroP2;
 // joao batista 08-07-2011
 slTabProMD5 : String;
 slTabStbMD5 : String;
 slTabTrbMD5 : String;

begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // registro P1
 PreencherHeader(FrTelIni.ACBrPAF.PAF_P.RegistroP1); // preencher header do arquivo

 // joao batista 07-07-2011
 // para atender o BLOCO VII, identificar se o BD foi alterado.

 qryTabpro.Close;
 qryTabpro.SQL.Clear;
 qryTabpro.SQL.Add('Select                                                      ');
 qryTabpro.SQL.Add('   P.*,                                                     ');
 qryTabpro.SQL.Add('   U.IdTabUnd,                                              ');
 qryTabpro.SQL.Add('   T.IdTabTrb  as Codigo_Trb,                               ');
 qryTabpro.SQL.Add('   T.Descricao as Descricao_Trb,                            ');
 qryTabpro.SQL.Add('   T.TipTrb,                                                ');
 qryTabpro.SQL.Add('   T.IdTabStb,                                              ');
 qryTabpro.SQL.Add('   T.IcmsFisCI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsFisSI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsJurCI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsJurSI,                                             ');
 qryTabpro.SQL.Add('   T.TabTrbMD5,                                             ');
 qryTabpro.SQL.Add('   S.IdTabStb  as Codigo_STb,                               ');
 qryTabpro.SQL.Add('   S.Descricao as Descricao_Stb,                            ');
 qryTabpro.SQL.Add('   S.TabStbMD5                                              ');
 qryTabpro.SQL.Add('From                                                        ');
 qryTabpro.SQL.Add('   TabPro P                                                 ');
 qryTabpro.SQL.Add('   inner join TabGru G on (G.IdTabGru = P.IdTabGru)         ');

 // joao batista 07/11/2011
 qryTabpro.SQL.Add('   inner join TabTrb T on (T.IdTabTrb = G.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

 qryTabpro.SQL.Add('   inner join TabStb S on (S.IdTabStb = T.IdTabStb)         ');
 qryTabpro.SQL.Add('   inner join TabEmb E on (E.IdTabEmb = P.IdTabEmb)         ');
 qryTabpro.SQL.Add('   inner join TabUnd U on (U.IdTabUnd = E.IdTabUnd)         ');

 qryTabpro.SQL.Add('Order by P.CodGTIN                                          ');

 qryTabpro.Active := True;

 if qryTabpro.IsEmpty then begin
  Application.MessageBox( 'N�o existe registro!','GBPAF');
  exit;
 end;

 // registro P2
 FrTelIni.ACBrPAF.PAF_P.RegistroP2.Clear;

 while not qryTabpro.Eof do begin

  P2:=FrTelIni.ACBrPAF.PAF_P.RegistroP2.New;

  P2.COD_MERC_SERV  := StrZero(qryTabPro.FieldByName('CODGTIN').AsString, 14);
  P2.DESC_MERC_SERV := qryTabPro.FieldByName('Descricao').AsString;

  // joao batista 07-07-2011
  // para atender o BLOCO VII, identificar se o BD foi alterado.

  // md5 produto
  // OBS: deve ser concatenado na mesma ordem da grava��o do registro.
  slTabProMD5 :=
                          inttostr(qryTabpro.FieldByName('Idtabpro').AsInteger)            +
                          inttostr(qryTabpro.FieldByName('IdTabGru').AsInteger)            +
                          inttostr(qryTabpro.FieldByName('IdTabPes').AsInteger)            +
                          inttostr(qryTabpro.FieldByName('IdTabEmb').AsInteger)            +
                          inttostr(qryTabpro.FieldByName('TipPro').AsInteger)              +
                          qryTabpro.FieldByName('TipoQtde').AsString                       +
                          inttostr(qryTabpro.FieldByName('IdTabPcsCadastro').AsInteger)    +
                          inttostr(qryTabpro.FieldByName('IdTabUsuCadastro').AsInteger)    +
                          inttostr(qryTabpro.FieldByName('IdTabMot').AsInteger)            +
                          inttostr(qryTabpro.FieldByName('IdTabPcsAlteracao').AsInteger)   +
                          inttostr(qryTabpro.FieldByName('IdTabUsuAlteracao').AsInteger)   +
                          qryTabpro.FieldByName('Descricao').AsString                      +
                          qryTabpro.FieldByName('DscAbv').AsString                         +
                          qryTabpro.FieldByName('Modelo').AsString                         +
                          qryTabpro.FieldByName('Localizacao').AsString                    +
                          qryTabpro.FieldByName('Aplicacao').AsString                      +
                          qryTabpro.FieldByName('Foto').AsString                           +
                          qryTabpro.FieldByName('ClasFiscal').AsString                     +
                          qryTabpro.FieldByName('CodNCM').AsString                         +
                          qryTabpro.FieldByName('CodGTIN').AsString                        +
                          qryTabpro.FieldByName('IAT').AsString                            +
                          qryTabpro.FieldByName('ProdPropria').AsString                    +
                          qryTabpro.FieldByName('HoraCadastro').AsString                   +
                          qryTabpro.FieldByName('Posicao').AsString                        +
                          qryTabpro.FieldByName('HoraPos').AsString                        +
                          qryTabpro.FieldByName('HoraAlteracao').AsString                  +
                          floattostr(qryTabpro.FieldByName('ValorCusto').AsFloat)          +
                          floattostr(qryTabpro.FieldByName('ValorVenda').AsFloat)          +
                          floattostr(qryTabpro.FieldByName('EstoqueMinimo').AsFloat)       +
                          datetostr(qryTabpro.FieldByName('DataCadastro').AsDateTime)      +
                          datetostr(qryTabpro.FieldByName('DataPos').AsDateTime)           +
                          datetostr(qryTabpro.FieldByName('DataAlteracao').AsDateTime);

  FrTelIni.LbMD51.HashString(AnsiString(slTabProMD5));
  FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
  slTabProMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

  // md5 Tributa��es
  // OBS: deve ser concatenado na mesma ordem da grava��o do registro
  slTabTrbMD5 :=
                          inttostr(qryTabpro.FieldByName('Codigo_Trb').AsInteger) +
                          qryTabpro.FieldByName('Descricao_Trb').AsString         +
                          qryTabpro.FieldByName('TipTrb').AsString                +
                          qryTabpro.FieldByName('IdTabStb').AsString              +
                          floattostr(qryTabpro.FieldByName('IcmsFisCI').AsFloat)  +
                          floattostr(qryTabpro.FieldByName('IcmsFisSI').AsFloat)  +
                          floattostr(qryTabpro.FieldByName('IcmsJurCI').AsFloat)  +
                          floattostr(qryTabpro.FieldByName('IcmsJurSI').AsFloat);

  FrTelIni.LbMD51.HashString(AnsiString(slTabTrbMD5));
  FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
  slTabTrbMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

  // md5 Situa��o tribut�ria
  // OBS: deve ser concatenado na mesma ordem da grava��o do registro
  slTabStbMD5 :=
                          qryTabpro.FieldByName('Codigo_STb').AsString            +
                          qryTabpro.FieldByName('Descricao_Stb').AsString;

  FrTelIni.LbMD51.HashString(AnsiString(slTabStbMD5));
  FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
  slTabStbMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

  if (slTabProMD5 <> qryTabPro.FieldByName('TabProMD5').AsString) or
     (slTabTrbMD5 <> qryTabPro.FieldByName('TabTrbMD5').AsString) or
     (slTabStbMD5 <> qryTabPro.FieldByName('TabStbMD5').AsString) then
    P2.RegistroValido := False
  else
    P2.RegistroValido := True;

  P2.UN_MED         := qryTabPro.FieldByName('IdTabUnd').AsString;
  // ----------------------------------------------------------

  P2.IAT            := qryTabPro.FieldByName('IAT').AsString;                   // Arredondamento ou Truncamento
  P2.IPPT           := qryTabPro.FieldByName('ProdPropria').AsString;           // Produ��o Pr�pria ou de Terceiro relativo � mercadoria

  {
  TB = TRIBUTADO
  FF = SUBSTITUI��O TRIBUT�RIA
  II = ISENTO
  NN = N�O INCID�NCIA
  DF = DIFERIDO
  }

  //-- Obtendo Situacao Tributaria
  if qryTabPro.FieldByName('TipTrb').AsString = 'TB' Then begin          // Tributado
   P2.ST    := 'TB';
   P2.ALIQ  := qryTabPro.FieldByName('IcmsFisSI').AsFloat;
  end else if qryTabPro.FieldByName('TipTrb').AsString = 'DF' Then begin // Diferido
   P2.ST    := 'II';
   P2.ALIQ  := 0;
  end else begin    // Subst.Trib ; Isento ; N�o Incid�ncia
   P2.ST    := qryTabPro.FieldByName('TipTrb').AsString;
   P2.ALIQ  := 0;
  end;

  P2.VL_UNIT       := qryTabPro.FieldByName('ValorVenda').AsFloat;

  qryTabpro.Next;

 end;

 // joao batista 12-04-2011
 Try
   FrTelIni.ACBrPAF.SaveFileTXT_P('Fisco\TabProduto.txt');
   Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                 'Local: ' + Dir + '\Fisco\' + 'TabProduto.txt'),'GBPAF');

 Except
   Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                 'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
 End;

end;

procedure TFrTelMen.btnRClick(Sender: TObject);
var
 i,j: integer;
 slNomeArquivo : String;

 // joao batista 20-07-2011
 slMovRdzMD5   : String;
 slIteRdzMD5   : String;
 slMovCnfMD5   : String;
 slIteCnfMD5   : String;
 slPagCnfMD5   : String;

begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // per�odo
 if (RadioGroup1.ItemIndex = 0) then begin
  Try
   if DateTimePicker1.Date > DateTimePicker2.Date then begin
    ShowMessage('A data inicial n�o pode ser maior que a data final');
    exit;
   end;
  Except
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + 'Per�odo informado n�o est� correto');
   exit;
  End;

 // coo e crz
 end else begin
  ShowMessage('Op��o v�lida apenas para: Filtrar por = DATA');
  exit;
 end;

 if ValidaCampos = False then
  Exit;

 GroupBox2.Visible := True;
 GroupBox3.Visible := False;

 // Registro R1
 with FrTelIni.ACBrPAF.PAF_R.RegistroR01 do begin

  VERSAO_SB   := PcsEcf.spVersaosb;
  DT_INST_SB  := PcsEcf.dpDataInstalacaoSB;
  HR_INST_SB  := StrToTime(PcsEcf.spHoraInstalacaoSB);
  NUM_SEQ_ECF := StrToint(PcsEcf.spNumeroECF);
  CNPJ        := edtCNPJ.Text;
  IE          := iif(edtIE.Text <> 'ISENTO', edtIE.Text, 'ISENTO        ');
  CNPJ_SH     := edtCNPJ.Text;
  IE_SH       := iif(edtIE.Text <> 'ISENTO', edtIE.Text, 'ISENTO        ');
  IM_SH       := edtIM.Text;
  NOME_SH     := edtRAZAO.Text;
  NOME_PAF    := ConfigGeral.spNomePAF;
  VER_PAF     := ConfigGeral.spVersaoPAF;
  COD_MD5     := ConfigGeral.spMD5LisArqAut;
  DT_INI      := DateTimePicker1.Date;
  DT_FIN      := DateTimePicker2.Date;
  ER_PAF_ECF  := ConfigGeral.spERPAFECF;

 end;

 //-- MovRDZ
 Try
  qryMovRDZ.Close;
  qryMovRDZ.SQL.Clear;
  qryMovRDZ.SQL.Add('Select                                                      ');
  qryMovRDZ.SQL.Add('  IdTabEmp,                                                 ');
  qryMovRDZ.SQL.Add('  IdTabEcf,                                                 ');
  qryMovRDZ.SQL.Add('  DatMov,                                                   ');
  qryMovRDZ.SQL.Add('  MarcaECF,                                                 ');
  qryMovRDZ.SQL.Add('  ModeloECF,                                                ');
  qryMovRDZ.SQL.Add('  IdTabPcs,                                                 ');
  qryMovRDZ.SQL.Add('  IdTabUsu,                                                 ');
  qryMovRDZ.SQL.Add('  DatImp,                                                   ');
  qryMovRDZ.SQL.Add('  HorImp,                                                   ');
  qryMovRDZ.SQL.Add('  CooIni,                                                   ');
  qryMovRDZ.SQL.Add('  CooFin,                                                   ');
  qryMovRDZ.SQL.Add('  Gnf,                                                      ');
  qryMovRDZ.SQL.Add('  Cro,                                                      ');
  qryMovRDZ.SQL.Add('  Crz,                                                      ');
  qryMovRDZ.SQL.Add('  Ccf,                                                      ');
  qryMovRDZ.SQL.Add('  Cfd,                                                      ');
  qryMovRDZ.SQL.Add('  Cdc,                                                      ');
  qryMovRDZ.SQL.Add('  Grg,                                                      ');
  qryMovRDZ.SQL.Add('  Gnfc,                                                     ');
  qryMovRDZ.SQL.Add('  Cfc,                                                      ');
  qryMovRDZ.SQL.Add('  ValGtot,                                                  ');
  qryMovRDZ.SQL.Add('  ValBru,                                                   ');
  qryMovRDZ.SQL.Add('  ValCanIcms,                                               ');
  qryMovRDZ.SQL.Add('  ValDesIcms,                                               ');
  qryMovRDZ.SQL.Add('  ValTotIssqn,                                              ');
  qryMovRDZ.SQL.Add('  ValCanIssqn,                                              ');
  qryMovRDZ.SQL.Add('  ValDesIssqn,                                              ');
  qryMovRDZ.SQL.Add('  ValVenLiq,                                                ');
  qryMovRDZ.SQL.Add('  ValAcrIcms,                                               ');
  qryMovRDZ.SQL.Add('  ValAcrIssqn,                                              ');
  qryMovRDZ.SQL.Add('  ValF1_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValF2_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValI1_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValI2_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValN1_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValN2_ICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValF1_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValF2_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValI1_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValI2_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValN1_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValN2_ISS,                                                ');
  qryMovRDZ.SQL.Add('  ValTotICMS,                                               ');
  qryMovRDZ.SQL.Add('  ValTotISS,                                                ');
  qryMovRDZ.SQL.Add('  ValTotOpeNfis,                                            ');
  qryMovRDZ.SQL.Add('  ValTotTroco,                                              ');
  qryMovRDZ.SQL.Add('  MovRdzMD5                                                 ');
  qryMovRDZ.SQL.Add('From                                                        ');
  qryMovRDZ.SQL.Add('   MovRDZ                                                   ');
  qryMovRDZ.SQL.Add('Where                                                       ');
  qryMovRDZ.SQL.Add('  IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)     + '  and  ');
  qryMovRDZ.SQL.Add('  IdTabEcf = ' + '''' + ComboBox2.Text + ''''     + '  and  ');
  qryMovRDZ.SQL.Add('  DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
  qryMovRDZ.SQL.Add('            and  ' + '''' + DateToStr(DateTimePicker2.Date + 1) + '''');

  qryMovRDZ.Active := True;

  if qryMovRDZ.IsEmpty then begin
   Application.MessageBox( 'N�o existe registro para o per�odo selecionado!','GBPAF');
   exit;
  end;

  // joao batista
  with FrTelIni.ACBrPAF.PAF_R.RegistroR01 do begin
   NUM_FAB     := qryMovRDZ.FieldByName('IdTabEcf').AsString;
   MF_ADICIONAL:= Copy(qryMovRDZ.FieldByName('IdTabEcf').AsString,21,1);
   TIPO_ECF    := 'ECF-IF';
   MARCA_ECF   := qryMovRDZ.FieldByName('MarcaEcf').AsString;
   MODELO_ECF  := qryMovRDZ.FieldByName('ModeloEcf').AsString;
  end;

 Except

  On E: Exception do begin
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);
   exit;
  end;

 End;

 // Registro R02 e R03
 while not qryMovRDZ.Eof do begin

  // joao batista 20-07-2011
  // para atender o BLOCO VII, identificar se o BD foi alterado.

  // md5 PagCnf
  // OBS: deve ser concatenado na mesma ordem da grava��o do registro
  slMovRdzMD5 :=
                inttostr(qryMovRDZ.FieldByName('IdTabEmp').AsInteger)            +
                qryMovRDZ.FieldByName('IdTabEcf').AsString                       +
                datetostr(qryMovRDZ.FieldByName('DatMov').AsDateTime)            +
                qryMovRDZ.FieldByName('MarcaECF').AsString                       +
                qryMovRDZ.FieldByName('ModeloECF').AsString                      +
                inttostr(qryMovRDZ.FieldByName('IdTabPcs').AsInteger)            +
                inttostr(qryMovRDZ.FieldByName('IdTabUsu').AsInteger)            +
                datetostr(qryMovRDZ.FieldByName('DatImp').AsDateTime)            +
                qryMovRDZ.FieldByName('HorImp').AsString                         +
                inttostr(qryMovRDZ.FieldByName('CooIni').AsInteger)              +
                inttostr(qryMovRDZ.FieldByName('CooFin').AsInteger)              +
                inttostr(qryMovRDZ.FieldByName('Gnf').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Cro').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Crz').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Ccf').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Cfd').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Cdc').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Grg').AsInteger)                 +
                inttostr(qryMovRDZ.FieldByName('Gnfc').AsInteger)                +
                inttostr(qryMovRDZ.FieldByName('Cfc').AsInteger)                 +
                floattostr(qryMovRDZ.FieldByName('ValGtot').AsFloat)             +
                floattostr(qryMovRDZ.FieldByName('ValBru').AsFloat)              +
                floattostr(qryMovRDZ.FieldByName('ValCanIcms').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValDesIcms').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValTotIssqn').AsFloat)         +
                floattostr(qryMovRDZ.FieldByName('ValCanIssqn').AsFloat)         +
                floattostr(qryMovRDZ.FieldByName('ValDesIssqn').AsFloat)         +
                floattostr(qryMovRDZ.FieldByName('ValVenLiq').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValAcrIcms').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValAcrIssqn').AsFloat)         +
                floattostr(qryMovRDZ.FieldByName('ValF1_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValF2_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValI1_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValI2_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValN1_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValN2_ICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValF1_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValF2_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValI1_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValI2_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValN1_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValN2_ISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValTotICMS').AsFloat)          +
                floattostr(qryMovRDZ.FieldByName('ValTotISS').AsFloat)           +
                floattostr(qryMovRDZ.FieldByName('ValTotOpeNfis').AsFloat)       +
                floattostr(qryMovRDZ.FieldByName('ValTotTroco').AsFloat);

  FrTelIni.LbMD51.HashString(AnsiString(slMovRdzMD5));
  FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
  slMovRdzMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

  with FrTelIni.ACBrPAF.PAF_R.RegistroR02.New do begin

   if (slMovRdzMD5 <> qryMovRDZ.FieldByName('MovRdzMD5').AsString) then
     RegistroValido := False
   else
     RegistroValido := True;

   NUM_USU     := qryMovRDZ.FieldByName('IdTabUsu').AsInteger;
   CRZ         := qryMovRDZ.FieldByName('CRZ').AsInteger;
   COO         := qryMovRDZ.FieldByName('CooIni').AsInteger;
   CRO         := qryMovRDZ.FieldByName('CRO').AsInteger;
   DT_MOV      := qryMovRDZ.FieldByName('DatMov').AsDateTime;
   DT_EMI      := qryMovRDZ.FieldByName('DatImp').AsDateTime;
   HR_EMI      := qryMovRDZ.FieldByName('HorImp').AsDateTime;
   VL_VBD      := qryMovRDZ.FieldByName('ValBru').AsFloat;

   // joao batista 15-08-2011
   PAR_ECF     := 'N';                 // Par�metro do ECF para incid�ncia de desconto sobre itens sujeitos
                                       // ao ISSQN conforme item 7.2.1.4 => S habilitado ou N desabilitado

   // Registro R03 - FILHO

   {TOTALIZADORES PARCIAIS}
   // 01 - xxTnnnn TRIBUTADO ICMS,
   //      xxSnnnn TRIBUTADO ISSQN

   //-- sql com as aliquotas da RZ - tabelas : IteRdzIcms e IteRdzIss
   Try
    qryRDZAliquotas.Close;
    qryRDZAliquotas.SQL.Clear;
    qryRDZAliquotas.SQL.Add('Select                                              ');
    qryRDZAliquotas.SQL.Add('  IdTabEmp,                                         ');
    qryRDZAliquotas.SQL.Add('  IdTabEcf,                                         ');
    qryRDZAliquotas.SQL.Add('  DatMov,                                           ');
    qryRDZAliquotas.SQL.Add('  Indice,                                           ');
    qryRDZAliquotas.SQL.Add('  Tipo,                                             ');
    qryRDZAliquotas.SQL.Add('  Aliquota,                                         ');
    qryRDZAliquotas.SQL.Add('  ValBaseCalculo,                                   ');
    qryRDZAliquotas.SQL.Add('  ValImposto,                                       ');
    qryRDZAliquotas.SQL.Add('  IteRdzIcmsMD5 as IteRdzMD5                        ');
    qryRDZAliquotas.SQL.Add('From                                                ');
    qryRDZAliquotas.SQL.Add('  IteRDZIcms                                        ');
    qryRDZAliquotas.SQL.Add('Where                                               ');
    qryRDZAliquotas.SQL.Add('  IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)     + '  and  ');
    qryRDZAliquotas.SQL.Add('  IdTabEcf = ' + '''' + ComboBox2.Text + ''''     + '  and  ');
    qryRDZAliquotas.SQL.Add('  DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
    qryRDZAliquotas.SQL.Add('            and  ' + '''' + DateToStr(DateTimePicker2.Date + 1) + '''');

    qryRDZAliquotas.SQL.Add('UNION all                                           ');

    qryRDZAliquotas.SQL.Add('Select                                              ');
    qryRDZAliquotas.SQL.Add('  IdTabEmp,                                         ');
    qryRDZAliquotas.SQL.Add('  IdTabEcf,                                         ');
    qryRDZAliquotas.SQL.Add('  DatMov,                                           ');
    qryRDZAliquotas.SQL.Add('  Indice,                                           ');
    qryRDZAliquotas.SQL.Add('  Tipo,                                             ');
    qryRDZAliquotas.SQL.Add('  Aliquota,                                         ');
    qryRDZAliquotas.SQL.Add('  ValBaseCalculo,                                   ');
    qryRDZAliquotas.SQL.Add('  ValImposto,                                       ');
    qryRDZAliquotas.SQL.Add('  IteRdzIssqnMD5 as IteRdzMD5                       ');
    qryRDZAliquotas.SQL.Add('From                                                ');
    qryRDZAliquotas.SQL.Add('  IteRDZIssqn                                       ');
    qryRDZAliquotas.SQL.Add('Where                                               ');
    qryRDZAliquotas.SQL.Add('  IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)     + '  and  ');
    qryRDZAliquotas.SQL.Add('  IdTabEcf = ' + '''' + ComboBox2.Text + ''''     + '  and  ');
    qryRDZAliquotas.SQL.Add('  DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
    qryRDZAliquotas.SQL.Add('            and  ' + '''' + DateToStr(DateTimePicker2.Date + 1 ) + '''');

    qryRDZAliquotas.SQL.Add('  Order by 1,2                                      ');

    qryRDZAliquotas.Active := True;

    while not qryRDZAliquotas.Eof do begin

     // joao batista 20-07-2011
     // para atender o BLOCO VII, identificar se o BD foi alterado.

     // md5 PagCnf
     // OBS: deve ser concatenado na mesma ordem da grava��o do registro
     slIteRdzMD5 :=
                   inttostr(qryRDZAliquotas.FieldByName('IdTabEmp').AsInteger)         +
                   qryRDZAliquotas.FieldByName('IdTabEcf').AsString                    +
                   datetostr(qryRDZAliquotas.FieldByName('DatMov').AsDateTime)         +
                   qryRDZAliquotas.FieldByName('Indice').AsString                      +
                   qryRDZAliquotas.FieldByName('Tipo').AsString                        +
                   qryRDZAliquotas.FieldByName('Aliquota').AsString                    +
                   floattostr(qryRDZAliquotas.FieldByName('ValBaseCalculo').AsFloat)   +
                   floattostr(qryRDZAliquotas.FieldByName('ValImposto').AsFloat);

     FrTelIni.LbMD51.HashString(AnsiString(slIteRdzMD5));
     FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
     slIteRdzMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

     if qryRDZAliquotas.FieldByName('ValBaseCalculo').AsFloat > 0 then begin

      with RegistroR03.New do begin

       if (slIteRdzMD5 <> qryRDZAliquotas.FieldByName('IteRdzMD5').AsString) then
         RegistroValido := False
       else
         RegistroValido := True;

       // joao batista 27-06-2011
       {TOTALIZADORES PARCIAIS}
       // 01 - xxTnnnn TRIBUTADO ICMS,
       //      xxSnnnn TRIBUTADO ISSQN

       TOT_PARCIAL := qryRDZAliquotas.FieldByName('Indice').AsString + qryRDZAliquotas.FieldByName('Tipo').AsString + StringReplace( FormatCurr('00.00', qryRDZAliquotas.FieldByName('Aliquota').AsFloat), ',' , '', [rfReplaceAll]);
       VL_ACUM     := qryRDZAliquotas.FieldByName('ValBaseCalculo').AsFloat;

      end;
     end;
    qryRDZAliquotas.Next;
    end;

   Except

    On E: Exception do begin
     ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);
     exit;
    end;
   End;

   // 02 - Substitui��o Tribut�ria-ICMS Fn / Isento-ICMS In / N�o-incid�ncia-ICMS Nn
   //      Substitui��o Tribut�ria-ISSQN FSn / Isento-ISSQN Isn / N�o-incid�ncia-ISSQN NSn

   //-- ATEN��O: O �ndice ser� fixado como padr�o o valor = 1

   with RegistroR03.New do begin

     // joao batista 20-07-2011
     if (slMovRdzMD5 <> qryMovRDZ.FieldByName('MovRdzMD5').AsString) then
       RegistroValido := False
     else
       RegistroValido := True;

     if (qryMovRDZ.FieldByName('ValF1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValF2_ICMS').AsFloat) > 0 then begin
       TOT_PARCIAL := 'F1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValF1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValF2_ICMS').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValI1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValI2_ICMS').AsFloat > 0 then begin
       TOT_PARCIAL := 'I1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValI1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValI2_ICMS').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValN1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValN2_ICMS').AsFloat > 0 then begin
       TOT_PARCIAL := 'N1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValN1_ICMS').AsFloat + qryMovRDZ.FieldByName('ValN2_ICMS').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValF1_ISS').AsFloat + qryMovRDZ.FieldByName('ValF2_ISS').AsFloat > 0 then begin
       TOT_PARCIAL := 'FS1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValF1_ISS').AsFloat + qryMovRDZ.FieldByName('ValF2_ISS').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValI1_ISS').AsFloat + qryMovRDZ.FieldByName('ValI2_ISS').AsFloat > 0 then begin
       TOT_PARCIAL := 'IS1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValI1_ISS').AsFloat + qryMovRDZ.FieldByName('ValI2_ISS').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValN1_ISS').AsFloat + qryMovRDZ.FieldByName('ValN2_ISS').AsFloat > 0 then begin
       TOT_PARCIAL := 'NS1';
       VL_ACUM     := qryMovRDZ.FieldByName('ValN1_ISS').AsFloat + qryMovRDZ.FieldByName('ValN2_ISS').AsFloat;
     end;

     // 03 - OPNF Opera��es n�o fiscais
     //      DT Desconto  - ICMS
     //      DS Desconto  - ISSQN
     //      AT Acr�scimo - ICMS
     //      AS Acr�scimo - ISSQN
     //      Can-T Cancelamento - ICMS
     //      Can-S Cancelamento - ISSQN

     if qryMovRDZ.FieldByName('ValTotOpeNfis').AsFloat > 0 then begin
       TOT_PARCIAL := 'OPNF';
       VL_ACUM     := qryMovRDZ.FieldByName('ValTotOpeNfis').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValDesIcms').AsFloat > 0 then begin
       TOT_PARCIAL := 'DT';
       VL_ACUM     := qryMovRDZ.FieldByName('ValDesIcms').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValDesIssqn').AsFloat > 0 then begin
       TOT_PARCIAL := 'DS';
       VL_ACUM     := qryMovRDZ.FieldByName('ValDesIssqn').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValAcrIcms').AsFloat > 0 then begin
       TOT_PARCIAL := 'AT';
       VL_ACUM     := qryMovRDZ.FieldByName('ValAcrIcms').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValAcrIssqn').AsFloat > 0 then begin
       TOT_PARCIAL := 'AS';
       VL_ACUM     := qryMovRDZ.FieldByName('ValAcrIssqn').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValCanIcms').AsFloat > 0 then begin
       TOT_PARCIAL := 'Can-T';
       VL_ACUM     := qryMovRDZ.FieldByName('ValCanIcms').AsFloat;
     end;

     if qryMovRDZ.FieldByName('ValCanIssqn').AsFloat > 0 then begin
       TOT_PARCIAL := 'Can-S';
       VL_ACUM     := qryMovRDZ.FieldByName('ValCanIssqn').AsFloat;
     end;

   end;

  end;
  qryMovRDZ.Next;
 end;

 //-- MovCNF
 Try
  qryMovCNF.Close;
  qryMovCNF.SQL.Clear;
  qryMovCNF.SQL.Add('Select                                                      ');
  qryMovCNF.SQL.Add('  M.IdTabEmp,                                               ');
  qryMovCNF.SQL.Add('  M.IdTabEcf,                                               ');
  qryMovCNF.SQL.Add('  M.DatMov,                                                 ');
  qryMovCNF.SQL.Add('  M.CCF,                                                    ');
  qryMovCNF.SQL.Add('  M.IdTabPcx,                                               ');
  qryMovCNF.SQL.Add('  M.IdTabPcs,                                               ');
  qryMovCNF.SQL.Add('  M.IdTabPdv,                                               ');
  qryMovCNF.SQL.Add('  M.IdTabUsu,                                               ');
  qryMovCNF.SQL.Add('  M.IdTabPes,                                               ');
  qryMovCNF.SQL.Add('  M.COO,                                                    ');
  qryMovCNF.SQL.Add('  M.DataInicialEmissao,                                     ');
  qryMovCNF.SQL.Add('  M.HoraInicialEmissao,                                     ');
  qryMovCNF.SQL.Add('  M.ValTotal,                                               ');
  qryMovCNF.SQL.Add('  M.ValDsc,                                                 ');
  qryMovCNF.SQL.Add('  M.ValPago,                                                ');
  qryMovCNF.SQL.Add('  M.ValTroco,                                               ');
  qryMovCNF.SQL.Add('  M.IndicadorTipDesc,                                       ');
  qryMovCNF.SQL.Add('  M.ValAcr,                                                 ');
  qryMovCNF.SQL.Add('  M.IndicadorTipAcr,                                        ');
  qryMovCNF.SQL.Add('  M.ValTotalLiquido,                                        ');
  qryMovCNF.SQL.Add('  M.IndicadorCancelamento,                                  ');
  qryMovCNF.SQL.Add('  M.ValCanAcr,                                              ');
  qryMovCNF.SQL.Add('  M.OrdDesAcr,                                              ');
  qryMovCNF.SQL.Add('  M.DataCancelamento,                                       ');
  qryMovCNF.SQL.Add('  M.HoraCancelamento,                                       ');
  qryMovCNF.SQL.Add('  P.RazaoSocial,                                            ');
  qryMovCNF.SQL.Add('  P.CpfCnpj,                                                ');
  qryMovCNF.SQL.Add('  M.MovCnfMD5                                               ');
  qryMovCNF.SQL.Add('From                                                        ');
  qryMovCNF.SQL.Add('   MovCNF M                                                 ');
  qryMovCNF.SQL.Add('   left join TabPes P on (P.IdTabPes = M.IdTabPes)          ');
  qryMovCNF.SQL.Add('Where                                                       ');
  qryMovCNF.SQL.Add('  M.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)           + '  and  ');
  qryMovCNF.SQL.Add('  M.IdTabEcf = ' + '''' + ComboBox2.Text + ''''           + '  and  ');
  qryMovCNF.SQL.Add('  M.DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
  qryMovCNF.SQL.Add('              and  ' + '''' + DateToStr(DateTimePicker2.Date + 1 ) + '''');

  qryMovCNF.Active := True;

 Except

  On E: Exception do begin
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);
   exit;
  end;

 End;

 // Registro R04 e R05
 while not qryMovCNF.Eof do begin

  // joao batista 20-07-2011
  // para atender o BLOCO VII, identificar se o BD foi alterado.

  // movcnf
  // OBS: deve ser concatenado na mesma ordem da grava��o do registro
  slMovCnfMD5 :=
                inttostr(qryMovCNF.FieldByName('IdTabEmp').AsInteger)                +
                qryMovCNF.FieldByName('IdTabEcf').AsString                           +
                inttostr(qryMovCNF.FieldByName('CCF').AsInteger)                     +
                datetostr(qryMovCNF.FieldByName('DatMov').AsDateTime)                +
                qryMovCNF.FieldByName('IdTabPcx').AsString                           +
                inttostr(qryMovCNF.FieldByName('IdTabPcs').AsInteger)                +
                inttostr(qryMovCNF.FieldByName('IdTabPdv').AsInteger)                +
                inttostr(qryMovCNF.FieldByName('IdTabUsu').AsInteger)                +

                // joao batista 12-08-2011
                iif(inttostr(qryMovCNF.FieldByName('IdTabPes').AsInteger) = '0', '', inttostr(qryMovCNF.FieldByName('IdTabPes').AsInteger)) +

                inttostr(qryMovCNF.FieldByName('COO').AsInteger)                     +
                datetostr(qryMovCNF.FieldByName('DataInicialEmissao').AsDateTime)    +
                qryMovCNF.FieldByName('HoraInicialEmissao').AsString                 +
                floattostr(qryMovCNF.FieldByName('ValDsc').AsFloat)                  +
                floattostr(qryMovCNF.FieldByName('ValAcr').AsFloat)                  +
                floattostr(qryMovCNF.FieldByName('ValTotal').AsFloat)                +
                floattostr(qryMovCNF.FieldByName('ValTotalLiquido').AsFloat)         +
                floattostr(qryMovCNF.FieldByName('ValPago').AsFloat)                 +
                floattostr(qryMovCNF.FieldByName('ValTroco').AsFloat)                +
                qryMovCNF.FieldByName('IndicadorTipDesc').AsString                   +
                qryMovCNF.FieldByName('IndicadorTipAcr').AsString                    +
                qryMovCNF.FieldByName('IndicadorCancelamento').AsString              +
                //floattostr(qryMovCNF.FieldByName('ValCanAcr').AsFloat)             +
                //qryMovCNF.FieldByName('OrdDesAcr').AsString                        +
                datetostr(qryMovCNF.FieldByName('DataCancelamento').AsDateTime)      +
                qryMovCNF.FieldByName('HoraCancelamento').AsString;

  FrTelIni.LbMD51.HashString(AnsiString(slMovCnfMD5));
  FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
  slMovCnfMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

  with FrTelIni.ACBrPAF.PAF_R.RegistroR04.New do begin

   if (slMovCnfMD5 <> qryMovCNF.FieldByName('MovCnfMD5').AsString) then
     RegistroValido := False
   else
     RegistroValido := True;

   NUM_USU     := qryMovCNF.FieldByName('IdTabUsu').AsInteger;
   NUM_CONT    := qryMovCNF.FieldByName('CCF').AsInteger;
   COO         := qryMovCNF.FieldByName('COO').AsInteger;
   DT_INI      := qryMovCNF.FieldByName('DataInicialEmissao').AsDateTime;
   SUB_DOCTO   := qryMovCNF.FieldByName('ValTotal').AsFloat;
   SUB_DESCTO  := qryMovCNF.FieldByName('ValDsc').AsFloat;
   TP_DESCTO   := qryMovCNF.FieldByName('IndicadorTipDesc').AsString;
   SUB_ACRES   := qryMovCNF.FieldByName('ValAcr').AsFloat;
   TP_ACRES    := qryMovCNF.FieldByName('IndicadorTipAcr').AsString;
   VL_TOT      := qryMovCNF.FieldByName('ValTotalLiquido').AsFloat;
   CANC        := qryMovCNF.FieldByName('IndicadorCancelamento').AsString;
   VL_CA       := qryMovCNF.FieldByName('ValCanAcr').AsFloat;
   ORDEM_DA    := qryMovCNF.FieldByName('OrdDesAcr').AsString;
   NOME_CLI    := qryMovCNF.FieldByName('RazaoSocial').AsString;
   CNPJ_CPF    := qryMovCNF.FieldByName('CPFCNPJ').AsString;

   //-- IteCNF
   Try
    qryIteCNF.Close;
    qryIteCNF.SQL.Clear;
    qryIteCNF.SQL.Add('Select                                                    ');
    qryIteCNF.SQL.Add('  I.IdTabEmp,                                             ');
    qryIteCNF.SQL.Add('  I.IdTabEcf,                                             ');
    qryIteCNF.SQL.Add('  I.DatMov,                                               ');
    qryIteCNF.SQL.Add('  I.CCF,                                                  ');
    qryIteCNF.SQL.Add('  I.NumeroIte,                                            ');
    qryIteCNF.SQL.Add('  I.COO,                                                  ');
    qryIteCNF.SQL.Add('  I.IdTabPro,                                             ');
    qryIteCNF.SQL.Add('  P.Descricao,                                            ');
    qryIteCNF.SQL.Add('  U.IdTabUnd,                                             ');
    qryIteCNF.SQL.Add('  I.QtdePro,                                              ');
    qryIteCNF.SQL.Add('  I.ValPro,                                               ');
    qryIteCNF.SQL.Add('  I.Unidade,                                              ');
    qryIteCNF.SQL.Add('  I.TipDes,                                               ');
    qryIteCNF.SQL.Add('  I.ValDes,                                               ');
    qryIteCNF.SQL.Add('  I.TipAcr,                                               ');
    qryIteCNF.SQL.Add('  I.ValAcr,                                               ');
    qryIteCNF.SQL.Add('  I.IdTabTrb,                                             ');
    qryIteCNF.SQL.Add('  I.IdTabCFO,                                             ');
    qryIteCNF.SQL.Add('  I.Cancelado,                                            ');
    qryIteCNF.SQL.Add('  I.Qtdecancelada,                                        ');
    qryIteCNF.SQL.Add('  I.Valcancelado,                                         ');
    qryIteCNF.SQL.Add('  I.ValCanAcr,                                            ');
    qryIteCNF.SQL.Add('  I.ArredTrunca,                                          ');
    qryIteCNF.SQL.Add('  I.ProdPropria,                                          ');
    qryIteCNF.SQL.Add('  I.DecimalQtd,                                           ');
    qryIteCNF.SQL.Add('  I.DecimalVal,                                           ');
    qryIteCNF.SQL.Add('  I.Aliquota,                                             ');
    qryIteCNF.SQL.Add('  I.DataVendaItem,                                        ');
    qryIteCNF.SQL.Add('  I.HoraVendaItem,                                        ');
    qryIteCNF.SQL.Add('  I.DataCancItem,                                         ');
    qryIteCNF.SQL.Add('  I.HoraCancItem,                                         ');
    qryIteCNF.SQL.Add('  T.TipTrb,                                               ');

    // joao batista 15-08-2011
    // ICMS
    qryIteCNF.SQL.Add('  Icms.Tipo     as ICMSTipo,                              ');
    qryIteCNF.SQL.Add('  Icms.Indice   as ICMSIndice,                            ');

    // joao batista 15-08-2011
    // ISSQN
    qryIteCNF.SQL.Add('  Issqn.Tipo    as ISSQNTipo,                             ');
    qryIteCNF.SQL.Add('  Issqn.Indice  as ISSQNIndice,                           ');

    // joao batista 15-08-2011
    qryIteCNF.SQL.Add('  P.TipPro,                                               ');

    qryIteCNF.SQL.Add('  I.IteCnfMD5                                             ');
    qryIteCNF.SQL.Add('From                                                      ');
    qryIteCNF.SQL.Add('   IteCNF I                                               ');
    qryIteCNF.SQL.Add('   inner join TabPro P on (P.IdTabPro = I.IdTabPro)       ');
    qryIteCNF.SQL.Add( '  inner join TabEmb E on (E.IdTabEmb = P.IdTabEmb)       ');
    qryIteCNF.SQL.Add( '  inner join TabUnd U on (U.IdTabUnd = E.IdTabUnd)       ');
    qryIteCNF.SQL.Add( '  inner join TabGru G on (G.IdTabGru = P.IdTabGru)       ');

    // joao batista 07/11/2011
    qryIteCNF.SQL.Add( '  inner join TabTrb T on (T.IdTabTrb = G.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

    // joao batista 15-08-2011
    // ICMS
    qryIteCNF.SQL.Add( '  left  join IteRDZIcms Icms on (Icms.Aliquota = I.Aliquota)       ');

    // joao batista 15-08-2011
    // ISSQN
    qryIteCNF.SQL.Add( '  left  join IteRDZIssqn Issqn on (Issqn.Aliquota = I.Aliquota)       ');

    qryIteCNF.SQL.Add('Where                                                     ');
    qryIteCNF.SQL.Add('  I.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)         + '  and  ');
    qryIteCNF.SQL.Add('  I.IdTabEcf = ' + '''' + ComboBox2.Text + ''''         + '  and  ');
    qryIteCNF.SQL.Add('  I.CCF      = ' + inttostr(qryMovCNF.FieldByName('CCF').AsInteger)  + '  and  ');
    qryIteCNF.SQL.Add('  I.DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
    qryIteCNF.SQL.Add('              and  ' + '''' + DateToStr(DateTimePicker2.Date + 1) + '''');

    qryIteCNF.Active := True;

   Except

    On E: Exception do begin
     ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);
     exit;
    end;

   End;

   // Registro R05 - FILHO
   while not qryIteCNF.Eof do begin

    // joao batista 20-07-2011
    // para atender o BLOCO VII, identificar se o BD foi alterado.

    // itecnf
    // OBS: deve ser concatenado na mesma ordem da grava��o do registro
    slIteCnfMD5 :=
                  inttostr(qryIteCNF.FieldByName('IdTabEmp').AsInteger)          +
                  qryIteCNF.FieldByName('IdTabEcf').AsString                     +
                  inttostr(qryIteCNF.FieldByName('CCF').AsInteger)               +
                  inttostr(qryIteCNF.FieldByName('NumeroIte').AsInteger)         +
                  inttostr(qryIteCNF.FieldByName('COO').AsInteger)               +
                  datetostr(qryIteCNF.FieldByName('DatMov').AsDateTime)          +
                  inttostr(qryIteCNF.FieldByName('IdTabPro').AsInteger)          +
                  floattostr(qryIteCNF.FieldByName('QtdePro').AsFloat)           +
                  floattostr(qryIteCNF.FieldByName('ValPro').AsFloat)            +
                  qryIteCNF.FieldByName('Unidade').AsString                      +
                  qryIteCNF.FieldByName('TipDes').AsString                       +
                  floattostr(qryIteCNF.FieldByName('ValDes').AsFloat)            +
                  floattostr(qryIteCNF.FieldByName('ValAcr').AsFloat)            +
                  qryIteCNF.FieldByName('TipAcr').AsString                       +
                  inttostr(qryIteCNF.FieldByName('IdTabTrb').AsInteger)          +
                  inttostr(qryIteCNF.FieldByName('IdTabCFO').AsInteger)          +
                  qryIteCNF.FieldByName('Cancelado').AsString                    +
                  floattostr(qryIteCNF.FieldByName('Qtdecancelada').AsFloat)     +
                  floattostr(qryIteCNF.FieldByName('Valcancelado').AsFloat)      +
                  //floattostr(qryIteCNF.FieldByName('ValCanAcr').AsFloat)       +
                  qryIteCNF.FieldByName('ArredTrunca').AsString                  +
                  qryIteCNF.FieldByName('ProdPropria').AsString                  +
                  inttostr(qryIteCNF.FieldByName('DecimalQtd').AsInteger)        +
                  inttostr(qryIteCNF.FieldByName('DecimalVal').AsInteger)        +
                  floattostr(qryIteCNF.FieldByName('Aliquota').AsFloat)          +
                  datetostr(qryIteCNF.FieldByName('DataVendaItem').AsDateTime)   +
                  qryIteCNF.FieldByName('HoraVendaItem').AsString                +
                  datetostr(qryIteCNF.FieldByName('DataCancItem').AsDateTime)    +
                  qryIteCNF.FieldByName('HoraCancItem').AsString;

    FrTelIni.LbMD51.HashString(AnsiString(slIteCnfMD5));
    FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
    slIteCnfMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

    with RegistroR05.New do begin

     if (slIteCnfMD5 <> qryIteCNF.FieldByName('IteCnfMD5').AsString) then
       RegistroValido := False
     else
       RegistroValido := True;

     NUM_ITEM     := qryIteCNF.FieldByName('NumeroIte').AsInteger;
     COD_ITEM     := StrZero(qryIteCNF.FieldByName('CODGTIN').AsString,14);
     DESC_ITEM    := qryIteCNF.FieldByName('Descricao').AsString;

     QTDE_ITEM    := qryIteCNF.FieldByName('QtdePro').AsFloat; //  sem a separa��o das casas decimais.

     UN_MED       := qryIteCNF.FieldByName('IdTabUnd').AsString;

     VL_UNIT      := qryIteCNF.FieldByName('ValPro').AsFloat;  //  sem a separa��o das casas decimais.

     DESCTO_ITEM  := 0;
     ACRES_ITEM   := 0;
     VL_TOT_ITEM  := qryIteCNF.FieldByName('QtdePro').AsFloat * qryIteCNF.FieldByName('ValPro').AsFloat;


     {TOTALIZADORES PARCIAIS}
     // 01 - xxTnnnn TRIBUTADO ICMS,
     //      xxSnnnn TRIBUTADO ISSQN
     // 02 - Substitui��o Tribut�ria-ICMS Fn / Isento-ICMS In / N�o-incid�ncia-ICMS Nn
     //      Substitui��o Tribut�ria-ISSQN FSn / Isento-ISSQN Isn / N�o-incid�ncia-ISSQN NSn
     // 03 - OPNF Opera��es n�o fiscais
     //      DT Desconto  - ICMS
     //      DS Desconto  - ISSQN
     //      AT Acr�scimo - ICMS
     //      AS Acr�scimo - ISSQN
     //      Can-T Cancelamento - ICMS
     //      Can-S Cancelamento - ISSQN

     {
     TB = TRIBUTADO
     FF = SUBSTITUI��O TRIBUT�RIA
     II = ISENTO
     NN = N�O INCID�NCIA
     DF = DIFERIDO
     }

     // joao batista 27-06-2011
     //-- Obtendo Situacao Tributaria
     if qryIteCNF.FieldByName('TipTrb').AsString = 'TB' Then begin

      // joao batista 15-08-2011
      if qryIteCNF.FieldByName('TipPro').AsString = '9' then
        COD_TOT_PARC := qryIteCNF.FieldByName('ISSQNIndice').AsString + qryIteCNF.FieldByName('ISSQNTipo').AsString + StringReplace( FormatCurr('00.00', qryIteCNF.FieldByName('Aliquota').AsFloat), ',' , '', [rfReplaceAll])
      else
        COD_TOT_PARC := qryIteCNF.FieldByName('ICMSIndice').AsString + qryIteCNF.FieldByName('ICMSTipo').AsString + StringReplace( FormatCurr('00.00', qryIteCNF.FieldByName('Aliquota').AsFloat), ',' , '', [rfReplaceAll]);

     end else if qryIteCNF.FieldByName('TipTrb').AsString = 'DF' Then begin // Diferido
      COD_TOT_PARC := 'I1';
     end else if qryIteCNF.FieldByName('TipTrb').AsString = 'II' Then begin // Isento
      COD_TOT_PARC := 'I1';
     end else if qryIteCNF.FieldByName('TipTrb').AsString = 'FF' Then begin // Substitui��o Tribut�ria
      COD_TOT_PARC := 'F1';
     end else begin   // NN - N�o Incid�ncia
      COD_TOT_PARC := 'N1';
     end;

     // ------------------------------------------------------------------------

     IND_CANC     := qryIteCNF.FieldByName('Cancelado').AsString;

     QTDE_CANC    := qryIteCNF.FieldByName('Qtdecancelada').AsFloat;            //  sem a separa��o das casas decimais.
     VL_CANC      := qryIteCNF.FieldByName('Valcancelado').AsFloat;             // Valor cancelado, no caso de cancelamento parcial do item

     VL_CANC_ACRES:= 0;                                                         // valor do cancelamento de acr�scimo no item
     IAT          := qryIteCNF.FieldByName('ArredTrunca').AsString;             // Arredondamento ou Truncamento

     if qryIteCNF.FieldByName('ProdPropria').AsString = 'S' then                // Produ��o Pr�pria ou de Terceiro relativo � mercadoria
      IPPT        := 'P'
     else
      IPPT        := 'T';

     QTDE_DECIMAL := ConfigGeral.ipNrCasasQtde;
     VL_DECIMAL   := ConfigGeral.ipNrCasasVal;

    end;
   qryIteCNF.Next;
   end;
  end;
  qryMovCNF.Next;
 end;

 // Registro R06 e R07
 qryMovCNF.First;
 while not qryMovCNF.Eof do begin
  with FrTelIni.ACBrPAF.PAF_R.RegistroR06.New do begin
   NUM_USU     := 1;                                                            // N�mero de ordem do usu�rio do ECF              // VERIFICAR
   COO         := qryMovCNF.FieldByName('COO').AsInteger;                       // COO
   GNF         := 0;                                                            // Contador Geral de Opera��o N�o Fiscal - QDO HOUVER
   GRG         := 0;                                                            // Informar apenas no caso de Relat�rio Gerencial
   CDC         := 0;                                                            // Informar apenas no caso de Comprovante Cr�dito ou D�bito
   DENOM       := 'RV';                                                         // Registro de Venda
   DT_FIN      := qryMovCNF.FieldByName('DataInicialEmissao').AsDateTime;       // Data final de emiss�o (impressa no rodap� do documento)
   HR_FIN      := qryMovCNF.FieldByName('HoraInicialEmissao').AsDateTime;       // Hora final de emiss�o (impressa no rodap� do documento)

   //-- PagCNF
   Try
    qryPagCNF.Close;
    qryPagCNF.SQL.Clear;
    qryPagCNF.SQL.Add('Select                                                    ');
    qryPagCNF.SQL.Add('  P.IdTabEmp,                                             ');
    qryPagCNF.SQL.Add('  P.IdTabEcf,                                             ');
    qryPagCNF.SQL.Add('  P.CCF,                                                  ');
    qryPagCNF.SQL.Add('  P.NumeroPag,                                            ');
    qryPagCNF.SQL.Add('  P.COO,                                                  ');
    qryPagCNF.SQL.Add('  P.DatMov,                                               ');
    qryPagCNF.SQL.Add('  P.idTabFpg,                                             ');
    qryPagCNF.SQL.Add('  F.Descricao,                                            ');
    qryPagCNF.SQL.Add('  P.ValPagFpg,                                            ');
    qryPagCNF.SQL.Add('  P.IndicadorEstorno,                                     ');
    qryPagCNF.SQL.Add('  P.ValEstornado,                                         ');
    qryPagCNF.SQL.Add('  P.DataPagamento,                                        ');
    qryPagCNF.SQL.Add('  P.HoraPagamento,                                        ');
    qryPagCNF.SQL.Add('  P.DataEstorno,                                          ');
    qryPagCNF.SQL.Add('  P.HoraEstorno,                                          ');
    qryPagCNF.SQL.Add('  P.PagCnfMD5                                             ');
    qryPagCNF.SQL.Add('From                                                      ');
    qryPagCNF.SQL.Add('   PagCNF P                                               ');
    qryPagCNF.SQL.Add('   inner join TabFpg F on (F.IdTabFpg = P.IdTabFpg)       ');
    qryPagCNF.SQL.Add('Where                                                     ');
    qryPagCNF.SQL.Add('  P.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)         + '  and  ');
    qryPagCNF.SQL.Add('  P.IdTabEcf = ' + '''' + ComboBox2.Text + ''''         + '  and  ');
    qryPagCNF.SQL.Add('  P.CCF      = ' + inttostr(qryMovCNF.FieldByName('CCF').AsInteger)  + '  and  ');
    qryPagCNF.SQL.Add('  P.DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
    qryPagCNF.SQL.Add('              and  ' + '''' + DateToStr(DateTimePicker2.Date + 1) + '''');

    qryPagCNF.Active := True;

   Except

    On E: Exception do begin
     ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);
     exit;
    end;

   End;

   // Registro R07 - FILHO
   while not qryPagCNF.Eof do begin

    // joao batista 20-07-2011
    // para atender o BLOCO VII, identificar se o BD foi alterado.

    // md5 PagCnf
    // OBS: deve ser concatenado na mesma ordem da grava��o do registro
    slPagCnfMD5 :=
                  inttostr(qryPagCNF.FieldByName('IdTabEmp').AsInteger)          +
                  qryPagCNF.FieldByName('IdTabEcf').AsString                     +
                  inttostr(qryPagCNF.FieldByName('CCF').AsInteger)               +
                  inttostr(qryPagCNF.FieldByName('NumeroPag').AsInteger)         +
                  inttostr(qryPagCNF.FieldByName('COO').AsInteger)               +
                  datetostr(qryPagCNF.FieldByName('DatMov').AsDateTime)          +
                  inttostr(qryPagCNF.FieldByName('idTabFpg').AsInteger)          +
                  floattostr(qryPagCNF.FieldByName('ValPagFpg').AsFloat)         +
                  qryPagCNF.FieldByName('IndicadorEstorno').AsString             +
                  floattostr(qryPagCNF.FieldByName('ValEstornado').AsFloat)      +
                  datetostr(qryPagCNF.FieldByName('DataPagamento').AsDateTime)   +
                  qryPagCNF.FieldByName('HoraPagamento').AsString;
                  //datetostr(qryPagCNF.FieldByName('DataEstorno'))              +
                  //qryPagCNF.FieldByName('HoraEstorno');

    FrTelIni.LbMD51.HashString(AnsiString(slPagCnfMD5));
    FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
    slPagCnfMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

    with RegistroR07.New do begin

     if (slPagCnfMD5 <> qryPagCNF.FieldByName('PagCnfMD5').AsString) then
       RegistroValido := False
     else
       RegistroValido := True;

     CCF         := qryPagCNF.FieldByName('CCF').AsInteger;
     MP          := qryPagCNF.FieldByName('Descricao').AsString;
     VL_PAGTO    := qryPagCNF.FieldByName('ValPagFpg').AsFloat;
     IND_EST     := 'N';   // O SISTEMAS FOI PROGRAMADO PARA N�O FAZER ESTORNO
     VL_EST      := 0;     // O SISTEMAS FOI PROGRAMADO PARA N�O FAZER ESTORNO

    end;
    qryPagCNF.Next;
   end;
  end;
  qryMovCNF.Next;
 end;

 slNomeArquivo := PcsEcf.spEcfIdTabEcf + FormatDateTime('ddmmyyyy',DateTimePicker1.Date) +  '.txt';

 // joao batista 12-04-2011
 Try
   FrTelIni.ACBrPAF.SaveFileTXT_R('Fisco\' + slNomeArquivo);
   Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                 'Local: ' + Dir + '\Fisco\' + slNomeArquivo),'GBPAF');
 Except
  Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
 End;

end;

procedure TFrTelMen.Button10Click(Sender: TObject);
begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // per�odo
 if (RadioGroup1.ItemIndex = 0) then begin

   if DateTimePicker1.Date > DateTimePicker2.Date then begin
    ShowMessage('A data inicial n�o pode ser maior que a data final');
    exit;
   end;

   // Sintegra
   if (RadioGroup3.ItemIndex = 0) then begin

     ExecutaSintegra;

   // Sped
   end else begin

     ExecutaSped;

   end;

 // coo e crz
 end else begin
  ShowMessage('Op��o v�lida apenas para: Filtrar por = DATA');
  exit;
 end;

end;

procedure TFrTelMen.Button11Click(Sender: TObject);
begin

 // VERS�O 01.06
 // Req. VII - Item 20

 ShowMessage('Este PAF-ECF n�o executa fun��es de baixa de estoque com base em �ndices t�cnicos de produ��o,' + #13 + #10 +
             'n�o podendo ser utilizado por estabelecimento que necessite deste recurso.');

end;

procedure TFrTelMen.Button1Click(Sender: TObject);
begin

 if (RadioGroup2.ItemIndex = 1) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = IMPRESSO');
  exit;
 end;

 FrTelIni.CompECF.LeituraX ;

end;

procedure TFrTelMen.Button2Click(Sender: TObject);
Var
  IndiceStr : String;
  Linha     : AnsiString;

begin
 if (RadioGroup2.ItemIndex = 1) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = IMPRESSO');
  exit;
 end;

 // per�odo
 if (RadioGroup1.ItemIndex = 0) then begin
  Try
   if DateTimePicker1.Date > DateTimePicker2.Date then begin
    ShowMessage('A data inicial n�o pode ser maior que a data final');
    exit;
   end;
  Except
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + 'Per�odo informado n�o est� correto');
   exit;
  End;

 // coo e crz
 end else begin
  ShowMessage('Op��o v�lida apenas para: Filtrar por = DATA');
  exit;
 end;

 // REQ. XXX - Relat�rio Gerencia denominado "MEIOS DE PAGAMENTO"

 // falta identificar/parametrizar no sistema o indice abaixo
 // pde ser que em alguns casos o �ndice "Gerencial X" seja diferente de 1

 IndiceStr := '1'; // Gerencial X
 Linha     := 'MEIOS DE PAGAMENTO';

 FrTelIni.CompECF.AbreRelatorioGerencial(StrToIntDef(IndiceStr, 0)) ;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := AnsiString(('Periodo: ' + DateToStr(DateTimePicker1.Date) + ' at� ' + DateToStr(DateTimePicker2.Date)));
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := '';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 //-- PagCNF
 Try
  qryPagCNF.Close;
  qryPagCNF.SQL.Clear;
  qryPagCNF.SQL.Add('Select                                                     ');
  qryPagCNF.SQL.Add('  P.CCF              as CCF,                               ');
  qryPagCNF.SQL.Add('  P.DatMov           as DatMov,                            ');
  qryPagCNF.SQL.Add('  F.Descricao        as Descricao,                         ');
  qryPagCNF.SQL.Add('  TIPO = ''CF'',                                           ');
  qryPagCNF.SQL.Add('  sum(P.ValPagFpg)   as ValPagFpg                          ');
  qryPagCNF.SQL.Add('From                                                       ');
  qryPagCNF.SQL.Add('   PagCNF P                                                ');
  qryPagCNF.SQL.Add('   inner join TabFpg F on (F.IdTabFpg = P.IdTabFpg)        ');
  qryPagCNF.SQL.Add('Where                                                      ');
  qryPagCNF.SQL.Add('  P.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)    + ' and ');
  qryPagCNF.SQL.Add('  P.IdTabEcf = ' + '''' + PcsEcf.spEcfIdTabEcf     + ''''    + ' and ');
  qryPagCNF.SQL.Add('  P.IndicadorEstorno = ' + '''' + 'N' + ''''       + ' and ');
  qryPagCNF.SQL.Add('  P.DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
  qryPagCNF.SQL.Add('              and  ' + '''' + DateToStr(DateTimePicker2.Date + 1 ) + '''');
  qryPagCNF.SQL.Add('Group by                                                   ');
  qryPagCNF.SQL.Add('  P.CCF,                                                   ');
  qryPagCNF.SQL.Add('  P.DatMov,                                                ');
  qryPagCNF.SQL.Add('  F.Descricao,                                             ');
  qryPagCNF.SQL.Add('  P.IndicadorEstorno                                       ');
  qryPagCNF.SQL.Add('order by                                                   ');
  qryPagCNF.SQL.Add('  P.DatMov,                                                ');
  qryPagCNF.SQL.Add('  F.Descricao                                              ');

  qryPagCNF.Active := True;

 Except

  On E: Exception do begin
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);

   // fecha o relat�rio gerencial
   FrTelIni.CompECF.FechaRelatorio;

   exit;
  end;

 End;

 Linha     := 'Emissao de cupons fiscais';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Meio de pagto   Valor     Tipo          Data';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 if qryPagCNF.IsEmpty then begin
  Linha     := 'Nenhum movimento.';
  FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end else begin
  while not qryPagCNF.Eof do begin
    Linha     := AnsiString(FormatSpace(copy(qryPagCNF.FieldByName('Descricao').AsString,1,16),16,' ') +
                 FormatSpace(copy(FormatFloat('###,##0.00', qryPagCNF.FieldByName('ValPagFpg').AsFloat),1,10),10,' ') +
                 FormatSpace(copy(qryPagCNF.FieldByName('Tipo').AsString,1,11),11,' ') +
                 FormatDateTime('dd/mm/yyyy',qryPagCNF.FieldByName('DatMov').AsDateTime));

    FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
    qryPagCNF.Next;
  end;
 end;

 //-- PagCNF
 Try
  qryPagCNF.Close;
  qryPagCNF.SQL.Clear;
  qryPagCNF.SQL.Add('Select                                                     ');
  qryPagCNF.SQL.Add('  F.Descricao,                                             ');
  qryPagCNF.SQL.Add('  sum(P.ValPagFpg) as ValPagFpg                            ');
  qryPagCNF.SQL.Add('From                                                       ');
  qryPagCNF.SQL.Add('   PagCNF P                                                ');
  qryPagCNF.SQL.Add('   inner join TabFpg F on (F.IdTabFpg = P.IdTabFpg)        ');
  qryPagCNF.SQL.Add('Where                                                      ');
  qryPagCNF.SQL.Add('  P.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp)    + ' and ');
  qryPagCNF.SQL.Add('  P.IdTabEcf = ' + '''' + PcsEcf.spEcfIdTabEcf     + ''''    + ' and ');
  qryPagCNF.SQL.Add('  P.IndicadorEstorno = ' + '''' + 'N' + ''''       + ' and ');
  qryPagCNF.SQL.Add('  P.DatMov between ' + '''' + DateToStr(DateTimePicker1.Date) + '''');
  qryPagCNF.SQL.Add('              and  ' + '''' + DateToStr(DateTimePicker2.Date + 1) + '''');
  qryPagCNF.SQL.Add('Group by                                                   ');
  qryPagCNF.SQL.Add('  F.Descricao                                              ');
  qryPagCNF.SQL.Add('order by                                                   ');
  qryPagCNF.SQL.Add('  F.Descricao                                              ');

  qryPagCNF.Active := True;

 Except

  On E: Exception do begin
   ShowMessage('..: ATEN��O :.. ' + #13 + #10 + '' + #13 + #10 + E.Message);

   // fecha o relat�rio gerencial
   FrTelIni.CompECF.FechaRelatorio;

   exit;
  end;

 End;

 if qryPagCNF.IsEmpty then begin

 end else begin

  Linha     := '';
  FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

  Linha     := 'SOMA POR MEIO DE PAGAMENTO';
  FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

  Linha     := 'Meio de pagto   Total                       ';
  FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

  while not qryPagCNF.Eof do begin
    Linha     := AnsiString(FormatSpace(copy(qryPagCNF.FieldByName('Descricao').AsString,1,16),16,' ') +
                 copy(FormatFloat('###,##0.00', qryPagCNF.FieldByName('ValPagFpg').AsFloat),1,10));

    FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
    qryPagCNF.Next;
  end;
 end;

 // VERIFICAR ------------------------------------------------------------------
 Linha     := '';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 Linha     := 'Recebimentos nao fiscais';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 Linha     := 'Nenhum movimento.';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 // ----------------------------------------------------------------------------

 // fecha o relat�rio gerencial
 FrTelIni.CompECF.FechaRelatorio;

end;

procedure TFrTelMen.Button3Click(Sender: TObject);
Var
 txtFile : TextFile;
 I       : Integer;
begin

 if ValidaCampos = False then
  Exit;

 //-- Data
 if (RadioGroup1.ItemIndex = 0) then begin
  cDatIni := datetostr(DateTimePicker1.Date) ;
  cDatFim := datetostr(DateTimePicker2.Date) ;
  try
   dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit ;
  end ;
  try
   dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit
  end ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   FrTelIni.CompECF.LeituraMemoriaFiscal(dDatIni, dDatFim );

  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try
    FrTelIni.CompECF.LeituraMemoriaFiscalSerial(dDatIni, dDatFim, Linhas);

    AssignFile(txtFile, Dir + '\Fisco\LMFC.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
     Linhas.Free ;
   end;
  end;

 //-- CRZ
 end else begin

  cRedIni := Edit1.Text;
  cRedFim := Edit2.Text;

  nRedIni := StrToIntDef(cRedIni,-1) ;
  if nRedIni < 0 then exit ;

  nRedFim := StrToIntDef(cRedFim,-1) ;
  if nRedFim < 0 then exit ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   FrTelIni.CompECF.LeituraMemoriaFiscal(nRedIni, nRedFim);

  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try
    FrTelIni.CompECF.LeituraMemoriaFiscalSerial(nRedIni, nRedFim, Linhas);

    AssignFile(txtFile, Dir + '\Fisco\LMFC.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
     Linhas.Free ;
   end ;
  end;
 end;

 if (RadioGroup2.ItemIndex = 0) then begin
  Application.MessageBox('Opera��o realizada com sucesso','GBPAF');
 end else begin

   // joao batista 12-04-2011
   Try
     FrTelIni.ACBrPAF.SaveFileTXT('Fisco\LMFC.txt');
     Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                   'Local: ' + Dir + '\Fisco\LMFC.txt'),'GBPAF');
   Except
     Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                   'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
   End;

 end;

end;

procedure TFrTelMen.Button4Click(Sender: TObject);
Var
 txtFile : TextFile;
 I       : Integer;
begin

 if ValidaCampos = False then
  Exit;

 //-- Data
 if (RadioGroup1.ItemIndex = 0) then begin
  cDatIni := datetostr(DateTimePicker1.Date) ;
  cDatFim := datetostr(DateTimePicker2.Date) ;
  try
   dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit ;
  end ;
  try
   dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit
  end ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   FrTelIni.CompECF.LeituraMemoriaFiscal(dDatIni, dDatFim, True );

  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try
    FrTelIni.CompECF.LeituraMemoriaFiscalSerial(dDatIni, dDatFim, Linhas, True);

    AssignFile(txtFile, Dir + '\Fisco\LMFS.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
    Linhas.Free ;
   end;
  end;

 //-- CRZ
 end else begin

  cRedIni := Edit1.Text;
  cRedFim := Edit2.Text;

  nRedIni := StrToIntDef(cRedIni,-1) ;
  if nRedIni < 0 then exit ;

  nRedFim := StrToIntDef(cRedFim,-1) ;
  if nRedFim < 0 then exit ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   FrTelIni.CompECF.LeituraMemoriaFiscal(nRedIni, nRedFim, True);

  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try
    FrTelIni.CompECF.LeituraMemoriaFiscalSerial(nRedIni, nRedFim, Linhas, True);

    AssignFile(txtFile, Dir + '\Fisco\LMFS.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
    Linhas.Free ;
   end ;
  end;
 end;

 if (RadioGroup2.ItemIndex = 0) then begin
  Application.MessageBox('Opera��o realizada com sucesso','GBPAF');
 end else begin

    // joao batista 12-04-2011
    Try
      FrTelIni.ACBrPAF.SaveFileTXT('Fisco\LMFS.txt');
      Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                    'Local: ' + Dir + '\Fisco\LMFS.txt'),'GBPAF');
    Except
      Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                    'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
    End;

 end;
end;

procedure TFrTelMen.Button5Click(Sender: TObject);
Var
 txtFile : TextFile;
 I       : Integer;
begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO.'   + #13 + #10 +
              'Para gerar arq. eletr�nico da Mem�ria de Fita Detalhe,' + #13 + #10 +
              'no formato de espelho dos documentos nela contidos');
  exit;
 end;

 if ValidaCampos = False then
  Exit;

 //-- Data
 if (RadioGroup1.ItemIndex = 0) then begin
  cDatIni := datetostr(DateTimePicker1.Date) ;
  cDatFim := datetostr(DateTimePicker2.Date) ;
  try
   dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit ;
  end ;
  try
   dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit
  end ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   Showmessage('FUN��O N�O SUPORTADA PELO MODELO DE ECF UTILIZADO');
   exit;
  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try

    FrTelIni.TelaMSG('Espelho MFD...  Aguarde...'  + #13 + #10 +
                     'Esse processo pode demorar alguns minutos... ');

    FrTelIni.CompECF.LeituraMFDSerial(dDatIni, dDatFim, Linhas);

    FrTelIni.FechaTelaMSG;

    AssignFile(txtFile, Dir + '\Fisco\Espelho_MFD.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
     Linhas.Free ;
     FrTelIni.FechaTelaMSG;
   end;
  end;

 // COO
 end else begin
  cCOOIni := Edit1.Text;
  cCOOFim := Edit2.Text;

  nCOOIni := StrToIntDef(cCOOIni,-1) ;
  if nCOOIni < 0 then exit ;

  nCOOFim := StrToIntDef(cCOOFim,-1) ;
  if nCOOFim < 0 then exit ;

  //-- Impresso
  if (RadioGroup2.ItemIndex = 0) then begin
   Showmessage('FUN��O N�O SUPORTADA PELO MODELO DE ECF UTILIZADO');
   exit;
  //-- Arquivo
  end else begin
   Linhas := TStringList.Create ;
   try

    FrTelIni.TelaMSG('Espelho MFD...  Aguarde...'  + #13 + #10 +
                     'Esse processo pode demorar alguns minutos... ');

    FrTelIni.CompECF.LeituraMFDSerial(nCOOIni, nCOOFim, Linhas);

    FrTelIni.FechaTelaMSG;

    AssignFile(txtFile, Dir + '\Fisco\Espelho_MFD.txt');
    Rewrite(txtFile);

    For I := 0 to Linhas.Count - 1 do
     Writeln(txtFile, Linhas[I]);

    CloseFile(txtFile);

   finally
     Linhas.Free ;
     FrTelIni.FechaTelaMSG;
   end ;
  end;

 end;

 if (RadioGroup2.ItemIndex = 0) then begin
  Application.MessageBox('Opera��o realizada com sucesso','GBPAF');
 end else begin

    // joao batista 12-04-2011
    Try
      FrTelIni.ACBrPAF.SaveFileTXT('Fisco\Espelho_MFD.txt');
      Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                   'Local: ' + Dir + '\Fisco\Espelho_MFD.txt'),'GBPAF');
    Except
     Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                   'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
    End;

 end;


end;

procedure TFrTelMen.Button6Click(Sender: TObject);
begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // joao batista 12-01-2011
 //-- caso o modelo da impressora seja DARUMA, exibir a msg abaixo:
 //-- "FUN��O N�O SUPORTADA PELO MODELO DE ECF UTILIZADO"

 if PcsEcf.ipEcfModelo = 4 then begin // DARUMA
   Showmessage('FUN��O N�O SUPORTADA PELO MODELO DE ECF UTILIZADO');
   exit;
 end;

 if ValidaCampos = False then
  Exit;

 //-- Data
 slArquivo := ExtractFilePath( Application.ExeName )  + 'ArquivoMFD.txt';

 if (RadioGroup1.ItemIndex = 0) then begin
  cDatIni := datetostr(DateTimePicker1.Date) ;
  cDatFim := datetostr(DateTimePicker2.Date) ;
  try
   dDatIni := StrToDateTime( StringReplace(cDatIni,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit ;
  end ;

  try
   dDatFim := StrToDateTime( StringReplace(cDatFim,'/', DateSeparator, [rfReplaceAll] ) ) ;
  except
   exit
  end ;
  FrTelIni.CompECF.ArquivoMFD_DLL(dDatIni, dDatFim, AnsiString(slArquivo));

 //-- COO
 end else begin
  cCOOIni := Edit1.Text ;
  cCOOFim := Edit2.Text ;

  nCOOIni := StrToIntDef(cCOOIni,-1) ;
  if nCOOIni < 0 then exit ;

  nCOOFim := StrToIntDef(cCOOFim,-1) ;
  if nCOOFim < 0 then exit ;

  FrTelIni.CompECF.ArquivoMFD_DLL(nCOOIni, nCOOFim, AnsiString(slArquivo));
 end;

end;

procedure TFrTelMen.Button7Click(Sender: TObject);
begin
  PopupMenu1.Popup(mouse.CursorPos.X, mouse.CursorPos.y);
end;

procedure TFrTelMen.Button9Click(Sender: TObject);
Var
  IndiceStr : String;
  Linha     :String;
  F         : TextFile;
  slLinha   : string;

begin

 if (RadioGroup2.ItemIndex = 1) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = IMPRESSO');
  exit;
 end;

 // REQ. XLIII - Relat�rio Gerencia denominado "IDENTIFICA��O DO PAF-ECF"

 // falta identificar/parametrizar no sistema o indice abaixo
 // pde ser que em alguns casos o �ndice "Gerencial X" seja diferente de 1

 IndiceStr := '1'; // Gerencial X
 Linha     := 'IDENTIFICACAO DO PAF-ECF';

 FrTelIni.CompECF.AbreRelatorioGerencial(StrToIntDef(IndiceStr, 0)) ;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := '';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'N do Laudo: ' + ConfigGeral.spNumeroLaudo;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Identificacao da empresa desenvolvedora:';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'CNPJ: ' + ConfigGeral.spCNPJ;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Razao Social: ' + ConfigGeral.spRazaoSocial;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Endereco: ' +  ConfigGeral.spEndereco + '-' + ConfigGeral.spBairro +  ',' + ConfigGeral.spNumero;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := ConfigGeral.spCidade + '-' +  ConfigGeral.spUF + ' - ' + ConfigGeral.spCEP;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Telefone: ' +  '(' + ConfigGeral.spDDDTel + ')' + ConfigGeral.spTelefone;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Contato: ' + ConfigGeral.spContato;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Identificacao do PAF-ECF:';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Nome Comercial: ' + ConfigGeral.spNomePAF;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 //  ConfigGeral.spVersaoPAF
 Linha     := 'Versao: ' + ConfigGeral.spVersaoPAF;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Principal arquivo executavel(MD-5):';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := FormatSpace(ConfigGeral.spPrincipalArqExec,15) + ' ' + ConfigGeral.spMD5Exec;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Outros(MD-5):';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 if ConfigGeral.spOpenssl <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spOpenssl, 15) + ' ' + ConfigGeral.spMD5Openssl;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.splibeay32 <> '' then begin
   Linha     := FormatSpace(ConfigGeral.splibeay32, 15) + ' ' + ConfigGeral.spMD5libeay32;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.spssleay32 <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spssleay32, 15) + ' ' + ConfigGeral.spMD5ssleay32;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 // joao batista 02-05-2011
 if ConfigGeral.spBemaFI32 <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spBemaFI32, 15) + ' ' + ConfigGeral.spMD5BemaFI32;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.spBemaMFD2 <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spBemaMFD2, 15) + ' ' + ConfigGeral.spMD5BemaMFD2;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.spBemaMFD <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spBemaMFD, 15) + ' ' + ConfigGeral.spMD5BemaMFD;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.spDaruma32 <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spDaruma32, 15) + ' ' + ConfigGeral.spMD5Daruma32;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 if ConfigGeral.spInterfaceEpson <> '' then begin
   Linha     := FormatSpace(ConfigGeral.spInterfaceEpson, 15) + ' ' + ConfigGeral.spMD5InterfaceEpson;
   FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
 end;

 Linha     := 'Arq. com lista arquivo(s) autenticado(s)(MD-5):';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := FormatSpace('LisArqAut.txt', 15) + ' ' + ConfigGeral.spMD5LisArqAut;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'Versao ER PAF-ECF:' + ConfigGeral.spERPAFECF;
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 Linha     := 'ECFs autorizados:';
 FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );

 if FileExists(FrTelIni.spDir + '\Cfg\ArqAuxEcf.cfg') then begin

   FrTelIni.OpensslDescriptografar(FrTelIni.spDir + '\Cfg\ArqAuxEcf.cfg', FrTelIni.spDir + '\Cfg\Temp.txt');

   // Carregar informa��es do arquivo auxiliar
   AssignFile( F, FrTelIni.spDir + '\Cfg\Temp.txt');
   Reset( F );

   // Enquanto n�o for final do arquivo.
   While not Eof(F) do Begin
    Readln(F,slLinha);
    slLinha := slLinha;

    // Se a 21� posicao da linha for "|" ent�o nessa linha existe informa��es do numero da ECF
    if copy(slLinha,21,1) = '|' then begin
      Linha     := copy(slLinha,1,20);
      FrTelIni.CompECF.LinhaRelatorioGerencial( AnsiString(Linha), 1 );
    end;
   end;
   CloseFile(F);

   FrTelIni.OpensslCriptografar(FrTelIni.spDir + '\Cfg\Temp.txt', FrTelIni.spDir + '\Cfg\ArqAuxEcf.cfg');

 end;

 // fecha o relat�rio gerencial
 FrTelIni.CompECF.FechaRelatorio;

end;

procedure TFrTelMen.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
 // Validando Digita��o
 if ( not ( Char( Key ) in [ '0'..'9']  ) ) and ( Key <> #13 ) and ( Key <> #8 ) then
   Abort;
end;

procedure TFrTelMen.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
 // Validando Digita��o
 if ( not ( Char( Key )  in [ '0'..'9']  ) ) and ( Key <> #13 ) and ( Key <> #8 ) then
   Abort;
end;

procedure TFrTelMen.EstoquePARCIAL1Click(Sender: TObject);
begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // indentifica estoque total do parcial
 ProdutoEstoqueParcial := '';

 if FrSelEst = Nil then
   Application.CreateForm( TFrSelEst, FrSelEst );

 FrSelEst.showmodal;

 if ProdutoEstoqueParcial <> '' then
   ExecutaEstoque;

end;

procedure TFrTelMen.EstoqueTOTAL1Click(Sender: TObject);
begin

 if (RadioGroup2.ItemIndex = 0) then begin
  ShowMessage('Op��o v�lida apenas para: Tipo de Emiss�o = ARQUIVO');
  exit;
 end;

 // indentifica estoque total do parcial
 ProdutoEstoqueParcial := '';

 ExecutaEstoque;

end;

procedure TFrTelMen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action   := caFree;
  FrTelMen := NIL;
end;

procedure TFrTelMen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if KEY = 27 then
    close;

end;

procedure TFrTelMen.FormShow(Sender: TObject);
var
 ilIndice,
 ilIndiceEcf : Integer;

begin

 RadioGroup1.ItemIndex := 0;
 RadioGroup2.ItemIndex := 0;

 GroupBox3.Visible     := False;
 GroupBox2.Visible     := True;

 DateTimePicker1.Date  := strtodate(datetostr(DataDoServidor));
 DateTimePicker2.Date  := strtodate(datetostr(DataDoServidor));

 //-- Dados da Empresa
 edtUF.Text     := Empresa.spUf;
 edtCNPJ.Text   := Empresa.spCPFCNPJ;
 edtIE.Text     := Empresa.spInscEstadual;
 edtIM.Text     := Empresa.spInscMunicipal;
 edtRAZAO.Text  := Empresa.spRazaoSocial;

 Dir := GetCurrentDir ;

 qryTabEcf.Close;
  qryTabEcf.ParamByName( 'ilCodEmp' ).AsInteger  := Empresa.ipIdTabEmp;
 qryTabEcf.Open;

 ComboBox2.Items.Clear;
 ilIndice    := 0;
 ilIndiceEcf := 0;

 if not QryTabEcf.IsEmpty then begin
  while not QryTabEcf.Eof do begin
   ComboBox2.Items.Add(QryTabEcf.FieldByName('IdTabEcf').AsString);

   if PcsEcf.spEcfIdTabEcf = QryTabEcf.FieldByName('IdTabEcf').AsString then
     ilIndiceEcf := ilIndice;

   ilIndice := ilIndice + 1;
   QryTabEcf.Next;
  end;
 end else begin
   ComboBox2.Items.Add(PcsEcf.spEcfIdTabEcf);
   ilIndiceEcf := 0;
 end;

 ComboBox2.ItemIndex := ilIndiceEcf;

 // joao batista 24-03-2011
 Edit3.Text := Empresa.spPerfilEFD;
 Edit4.Text := Empresa.spCodVerEFD;

end;

procedure TFrTelMen.RadioGroup1Click(Sender: TObject);
begin
 if RadioGroup1.ItemIndex = 0 then begin
  GroupBox2.Visible     := True;
  GroupBox3.Visible     := False;
 end else begin
  GroupBox2.Visible     := False;
  GroupBox3.Visible     := True;
 end;

end;

procedure TFrTelMen.PreencherHeader(Header: TRegistroX1);
begin
 // o header dos relat�rios PAF a maioria s�o todos iguais
 Header.UF         :=edtUF.Text;
 Header.CNPJ       :=edtCNPJ.Text;
 Header.IE         :=iif(edtIE.Text <> 'ISENTO', edtIE.Text, 'ISENTO        ');
 Header.IM         :=edtIM.Text;
 Header.RAZAOSOCIAL:=edtRAZAO.Text;
end;


procedure TFrTelMen.ExecutaSintegra;
Var
 OutFile                                                                                   : TextFile;
 dlDatIni, dlDatFin                                                                        : TDateTime;
 flInt,    flDec, flTotIvt                                                                 : Double;
 ilCodNot, ilNumIte, i                                                                     : Integer;
 OutText                                                                                   : AnsiString;
 s1, s2, s3, s4, s5, s6, sTmp, Space, slNumero, slCompl, slTipFre, slCodCup                : String;
 slVpr, slQpr, slNot, slDes, slBas, slIcm, slTax, slOut, slIpi, slFre, slGtI, slGtF, slGtp : String;
 ilTotTp50, ilTotTp54, ilTotTp60, ilTotTp70, ilTotTp74, ilTotTp75, ilTotGer                : Integer;

 // joao batista 15-03-2011
 ipCodEmp    : Integer;
 spCnpj,
 spInsEst,
 spFax,
 spNomEmp,
 spNomCid,
 spCodEst,
 spEndereco,
 spSetor,
 spCep,
 spContato,
 spFone      : String;
 ipEmpEst    : Integer;

 dlDatEmi    : TDateTime;

begin

 // Inicializando Variaveis

 Space    := Replicate( ' ', 75 ); // Variavel para Ajuste dos Tamanhos de Campos
 slNumero := Empresa.spNumero;
 slCompl  := Empresa.spComplemento;
 ipCodEmp := Empresa.ipIdTabEmp;
 spCnpj   := Empresa.spCPFCNPJ;
 spInsEst := Empresa.spInscEstadual;
 spFax    := Empresa.spDDD_Fax +  Empresa.spFax;
 spNomEmp := Empresa.spRazaoSocial;
 spNomCid := Empresa.spCidade;
 spCodEst := Empresa.spUf;
 spEndereco := Empresa.spEndereco;
 spSetor  := Empresa.spBairro;
 spCep    := Empresa.spCEP;
 spContato:= Empresa.spContato;
 spFone   := Empresa.spDDD_Telefone +  Empresa.spTelefone;
 ipEmpEst := 0; // verificar

 // Obtendo Periodo

 dlDatIni := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePicker1.Date));
 dlDatFin := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePicker2.Date));

 // Consistindo Datas
 if dlDatFin < DlDatIni then
  begin
   DateTimePicker2.SetFocus;
   Application.MessageBox( 'Data Final n�o pode ser Menor que Data Inicial.', 'Sisa', MB_ICONERROR );
   Exit;
  end;

 // 3. Meses devem ser iguais
 if nData( dlDatIni, 'M' ) <> nData( dlDatFin, 'M' ) Then
  MsgErro( 'Os Meses do Per�odo devem ser Iguais  !', DateTimePicker2 );

 // 4. Anos devem ser iguais
 if nData( dlDatIni, 'Y' ) <> nData( dlDatFin, 'Y' ) Then
  MsgErro( 'Os Anos do Per�odo devem ser Iguais  !', DateTimePicker2 );

 {
 REQUISITO XXVIII
 ITEM 3: O arquivo gerado dever� ser denominado pelo n� laudo emitido pelo �rg�o t�cnico que
 promoveu a an�lise funcional do aplicativo, acrescido da data, hora, minuto e segundo correspondentes �
 gera��o do arquivo, resultando assim no formato XXXnnnAAAADDMMAAAAhhmmss.txt, onde:
 I - XXXnnnAAAA representa a numera��o do laudo de que trata o � 3� da cl�usula nona do Conv�nio
 ICMS 15/08;
 II � DDMMAAAA representa o dia, m�s e ano da gera��o do arquivo; e
 III � hhmmss representa a hora, minuto e segundo da gera��o do arquivo.
 }

 slArquivo            := ConfigGeral.spNumeroLaudo +
                         FormatDateTime('ddmmyyyy', DataDoServidor) +
                         FormatDateTime('hhmmss', DataDoServidor) + '.txt';

 AssignFile( OutFile, Dir + '\Fisco\' + slArquivo );

 ReWrite( OutFile );

 // Inicializando Variaveis
 ilTotTp50:=0;
 ilTotTp54:=0;
 ilTotTp60:=0;
 ilTotTp70:=0;
 ilTotTp74:=0;
 ilTotTp75:=0;
 ilTotGer :=0;

 // Gerando Registro Tipo 10 (Meste do Estabelecimento)
 // Cnpj
 s1 := Right( Replicate( '0', 14 ) + OnlyNumbers( spCnpj ), 14 );
 // Inscri��o Estadual
 if UpperCase( spInsEst ) = 'ISENTO' then
  s2 := Copy( spInsEst + Space, 1, 14 )
 else
  s2 := Copy( OnlyNumbers( spInsEst, 'C' ) + Replicate( ' ', 14 ), 1, 14 );

 // Fax
 s3 := StrZero( OnlyNumbers( spFax ), 10 );

 // Periodo
 s4 := StrZero( IntToStr( nData( dlDatIni, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( dlDatIni, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( dlDatIni, 'D' ) ), 02 );

 s5 := StrZero( IntToStr( nData( dlDatFin, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( dlDatFin, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( dlDatFin, 'D' ) ), 02 );

 // Finalidade do Arquivo Magnetico
 s6 := IntToStr( RadioGroup1.ItemIndex + 1 );

 OutText:=AnsiString('10' + s1 + s2
               + Copy( spNomEmp + Space, 1, 35 )
               + Copy( spNomCid + Space, 1, 30 )
               + Copy( spCodEst + Space, 1, 02 )
               + s3 + s4 + s5 + '33' + s6);  // + s3 + s4 + s5 + '23' + s6;

 WriteLn( OutFile, OutText );

 // Gerando Registro Tipo 11 (Dados Complementares do Informante)
 // Cep
 s1 := StrZero( OnlyNumbers( spCep ), 08 );
 // Fone
 s2 := StrZero( OnlyNumbers( spFone ), 12 );

 // Compondo Linha
 OutText:=AnsiString('11' +    Copy( spEndereco    + Space, 1, 34 )
               + StrZero( slNumero             , 05 )
               +    Copy( slCompl       + Space, 1, 22 )
               +    Copy( spSetor       + Space, 1, 15 )
               +    s1
               +    Copy( spContato     + Space, 1, 28 )
               +    s2);


 WriteLn( OutFile, OutText );

 // Gerando Registros Tipo 50 (Nota Fiscal e Nota Fiscal de Entrada, Quanto ao ICMS/Energia/Telecomunicacoes)
 //qryMovNot.Close;
 // qryMovNot.Params[0].AsInteger  := ipCodEmp;
 // qryMovNot.Params[1].AsDateTime := dlDatIni;
 // qryMovNot.Params[2].AsDateTime := dlDatFin;
 //qryMovNot.Open;
 //qryMovNot.First;

 qryMovNot.Close;
 qryMovNot.SQL.Clear;
 qryMovNot.SQL.Add(' Select                                                      ' );
 qryMovNot.SQL.Add('  TipNot = M.TipOpe,                                         ' );
 qryMovNot.SQL.Add('  Cnpj   = F.CPFCNPJ,                                        ' );
 qryMovNot.SQL.Add('  InsEst = F.InscEstadual,                                   ' );
 qryMovNot.SQL.Add('  DatNot = M.DataOpe,                                        ' );
 qryMovNot.SQL.Add('  CodEst = D.UF,                                             ' );
 qryMovNot.SQL.Add('  Modelo = M.ModeloNota,                                     ' );
 qryMovNot.SQL.Add('  Serie  = M.SerieNota,                                      ' );
 qryMovNot.SQL.Add('  SubSerie = M.SubSerieNota,                                 ' );
 qryMovNot.SQL.Add('  CodNot   = Cast( SubString( Cast( M.NumeroNota As Varchar(15) ), 1, 6 ) As Integer ),' );
 qryMovNot.SQL.Add('  CodCfo   = cast(M.IdTabCfo as Varchar),                    ' );
 qryMovNot.SQL.Add('  ValNot   = M.VlrNota,                                      ' );
 qryMovNot.SQL.Add('  BasIcm   = M.VlrBcIcms,                                    ' );
 qryMovNot.SQL.Add('  ValIcm   = M.VlrIcms,                                      ' );
 qryMovNot.SQL.Add('  ValIpi   = Convert( Float, M.VlrIpi ),                     ' );
 qryMovNot.SQL.Add('  ValOut   = Convert( Float, M.VlrOutras ),                  ' );
 qryMovNot.SQL.Add('  ICMS     = M.AlqIcms,                                      ' );
 qryMovNot.SQL.Add('  Situac   = ''N'',                                          ' );
 qryMovNot.SQL.Add('  TipFre   = M.TipFre                                        ' );
 qryMovNot.SQL.Add('                                                             ' );
 qryMovNot.SQL.Add(' From MovNot M                                               ' );
 qryMovNot.SQL.Add('  Join TabPes F On M.IdTabPes = F.IdTabPes                   ' );
 qryMovNot.SQL.Add('  Join TabCid D On F.IdTabCid = D.IdTabCid                   ' );
 qryMovNot.SQL.Add('                                                             ' );
 qryMovNot.SQL.Add(' Where                                                       ' );
 qryMovNot.SQL.Add('  M.IdTabEmp = ' + inttostr(ipCodEmp)                + ' and ' );
 qryMovNot.SQL.Add('  M.DataOpe >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DataOpe <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
 qryMovNot.SQL.Add('  M.PosNot = ''A''                                           ' );
 qryMovNot.SQL.Add('                                                             ' );
 qryMovNot.SQL.Add(' Order By                                                    ' );
 qryMovNot.SQL.Add('  TipNot,                                                    ' );
 qryMovNot.SQL.Add('  CodNot                                                     ' );
// qryMovNot.SQL.SaveToFile('c:\sql.txt');
 qryMovNot.Open;
 qryMovNot.First;

 While not qryMovNot.Eof Do
  begin
   // Consistindo Tipo de Documento Fiscal (01, 06 e 22)
   if( qryMovNotModelo.Value <> '01' ) And ( qryMovNotModelo.Value <> '55' ) And
     ( qryMovNotModelo.Value <> '06' ) And ( qryMovNotModelo.Value <> '22' ) then
    begin
     qryMovNot.Next;
     Continue;
    end;

   // Formatando Valores
   //-- Valor da Nota Fiscal
   flInt :=                                       Int( qryMovNotValNot.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValNot.Value )] ) );
   slNot := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );
   //-- Valor da Base de Calculo
   flInt :=                                       Int( qryMovNotBasIcm.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotBasIcm.Value )] ) );
   slBas := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );
   //-- Valor do ICMS
   flInt :=                                       Int( qryMovNotValIcm.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValIcm.Value )] ) );
   slIcm := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );
   //-- Taxa do ICMS
   flInt :=                                       Int( qryMovNotIcms.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotIcms.Value )] ) );
   slTax := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );
   //-- Valor Outros
   flInt :=                                       Int( qryMovNotValOut.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValOut.Value )] ) );
   slOut := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );
   // Cnpj
   s1 := Right( Replicate( '0', 14 ) + OnlyNumbers( qryMovNotCnpj.AsString ), 14 );
   // Inscri��o Estadual
   if UpperCase( qryMovNotInsEst.AsString ) = 'ISENTO' then
    s2 := Copy( qryMovNotInsEst.AsString + Space, 1, 14 )
   else
    s2 := Copy( OnlyNumbers( qryMovNotInsEst.AsString, 'C' ) + Replicate( ' ', 14 ), 1, 14 );
   // Data da Nota Fiscal
   s3:=StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'D' ) ), 02 );
   // Cfo
   s4 := StrZero( OnlyNumbers( qryMovNotCodCfo.AsString ), 04 );
   // Emitente da Nota Fiscal (P-pr�prio/T-terceiros)
   s5 := Se( qryMovNotTipNot.AsString = 'S', 'P', Se( OnlyNumbers( spCnpj ) = OnlyNumbers( qryMovNotCnpj.AsString ), 'P', 'T' ) );
   // Valor Isento
   if qryMovNotValIcm.Value > 0 then
    s6 := '0000000000000'
   else
    s6 := StrZero( slNot, 13 );

   // Compondo Linha
   OutText :=AnsiString('50' + s1 + s2 + s3 + String(qryMovNotCodEst.Value)   +
                        Copy( String(qryMovNotModelo.Value)   + Space, 1, 2 ) +
                        Copy( String(qryMovNotSerie.Value)    + Space, 1, 3 ) +
                        StrZero( String(IntToStr( qryMovNotCodNot.Value )), 06 ) + s4 + s5);

   // Verificando se Nota Cancelada
   if qryMovNotSituac.Value = 'N' then  // Nao
    begin
     OutText:=OutText + AnsiString( StrZero( slNot, 13 )                  +
                         StrZero( slBas, 13 )                             +
                         StrZero( slIcm, 13 )                             + s6 +
                         StrZero( slOut, 13 )                             +
                         StrZero( slTax, 04 )                             +
                                  String(qryMovNotSituac.Value)           );
    end
   else                                 // Sim
    begin
     OutText:=OutText +  AnsiString(Replicate( '0', 13 )                  +
                         Replicate( '0', 13 )                             +
                         Replicate( '0', 13 )                             + s6 +
                         Replicate( '0', 13 )                             +
                         Replicate( '0', 04 )                             +
                                  String(qryMovNotSituac.Value));
    end;

   WriteLn( OutFile, OutText );

   Inc( ilTotTp50 );

   qryMovNot.Next;
  end;

 // Gerando Registros Tipo 54 (Produtos - Item(ns) da(s) Nota(s))
 //qryIteNot.Close;
 // qryIteNot.Params[0].AsInteger  := ipCodEmp;
 // qryIteNot.Params[1].AsDateTime := dlDatIni;
 // qryIteNot.Params[2].AsDateTime := dlDatFin;
 //qryIteNot.Open;
 //qryIteNot.First;

 qryIteNot.Close;
 qryIteNot.SQL.Clear;
 qryIteNot.SQL.Add(' Select                                                      ' );
 qryIteNot.SQL.Add('   TipNot         = M.TipOpe,                                ' );
 qryIteNot.SQL.Add('   Cnpj           = F.CPFCNPJ,                               ' );
 qryIteNot.SQL.Add('   Modelo         = M.ModeloNota,                            ' );
 qryIteNot.SQL.Add('   Serie          = M.SerieNota,                             ' );
 qryIteNot.SQL.Add('   SubSerie       = M.SubSerieNota,                          ' );
 qryIteNot.SQL.Add('   CodNot         = Cast( SubString( Cast( M.NumeroNota As Varchar(15) ), 1, 6 ) As Integer ),' );
 qryIteNot.SQL.Add('   CodCfo         = cast(I.IdTabCfo as Varchar),             ' );
 //qryIteNot.SQL.Add('   CodPro         = cast(I.IdTabPro as varchar),             ' );
 qryIteNot.SQL.Add('   CodPro         = P.CodGtin,                               ' );
 qryIteNot.SQL.Add('   QtdPro         = I.QtdPro,                                ' );
 qryIteNot.SQL.Add('   ValPro         = ( I.QtdPro * I.VlrPro ),                 ' );
 qryIteNot.SQL.Add('   ValDes         = 0.0,                                     ' );
 qryIteNot.SQL.Add('   BasIcm         = ( I.QtdPro * I.VlrPro ),                 ' );
 qryIteNot.SQL.Add('   BasSbt         = ''000000000000'',                        ' );
 qryIteNot.SQL.Add('   ValIpi         = Convert( Float, I.VlrIpi ),              ' );
 qryIteNot.SQL.Add('   ICMS           = M.AlqIcms,                               ' );
 qryIteNot.SQL.Add('   ValFre         = Convert( Float, M.VlrFrete ),            ' );
 qryIteNot.SQL.Add('   SitTri         = I.IdTabStb                               ' );
 qryIteNot.SQL.Add('                                                             ' );
 qryIteNot.SQL.Add(' From IteNot I                                               ' );
 qryIteNot.SQL.Add('   Join MovNot M On I.IdTabEmp = M.IdTabEmp and I.IdTabPes = M.IdTabPes and I.NumeroNota = M.NumeroNota' );
 qryIteNot.SQL.Add('   Join TabPes F On M.IdTabPes = F.IdTabPes                  ' );
 qryIteNot.SQL.Add('   Join TabPro P On I.IdTabPro = P.IdTabPro                  ' );
 qryIteNot.SQL.Add('                                                             ' );
 qryIteNot.SQL.Add(' Where                                                       ' );
 qryIteNot.SQL.Add('   M.IdTabEmp  = ' + inttostr(ipCodEmp)                  + ' and ' );
 qryIteNot.SQL.Add('   M.DataOpe  >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DataOpe <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
 qryIteNot.SQL.Add('   M.PosNot = ''A''                                          ' );
 qryIteNot.SQL.Add('                                                             ' );
 qryIteNot.SQL.Add(' Order By                                                    ' );
 qryIteNot.SQL.Add('   TipNot,                                                   ' );
 qryIteNot.SQL.Add('   CodNot,                                                   ' );
 qryIteNot.SQL.Add('   CodPro                                                    ' );
 qryIteNot.Open;
 qryIteNot.First;

 ilNumIte:=1;
 ilCodNot:=qryIteNotCodNot.Value;

 While not qryIteNot.Eof Do
  begin
   // Consistindo Tipo de Documento Fiscal (01)
   if( qryIteNotModelo.Value <> '01' ) And ( qryIteNotModelo.Value <> '55' ) Then
    begin
     qryIteNot.Next;
     Continue;
    end;

   // Cnpj
   s1 := Right( Replicate( '0', 14 ) + OnlyNumbers( qryIteNotCnpj.AsString ), 14 );

   // Cfo
   s2 := StrZero( OnlyNumbers( qryIteNotCodCfo.AsString ), 04 );

   // Situacao Tribuitaria
   s3 := StrZero( OnlyNumbers( qryIteNotSitTri.AsString ), 03 );

   // Compondo Linha
   OutText:=AnsiString('54' + s1 + Copy( qryIteNotModelo.AsString              + Space, 1,  2 )     +
                        Copy( qryIteNotSerie.AsString               + Space, 1,  3 )     +
           StrZero( IntToStr( qryIteNotCodNot.AsInteger ), 06 )     + s2 + s3            +
           StrZero( IntToStr( ilNumIte ), 03 )                                           +
                        Copy( qryIteNotCodPro.AsString + Space, 1, 14 )                  +
           StrZero( OnlyNumbers( FormatFloat( '0.000', qryIteNotQtdPro.AsFloat ) ), 11 ) +
           StrZero( OnlyNumbers( FormatFloat( '0.00',  qryIteNotValPro.AsFloat ) ), 12 ) +
           StrZero( OnlyNumbers( FormatFloat( '0.00',  qryIteNotValDes.AsFloat ) ), 12 ) +
           StrZero( OnlyNumbers( FormatFloat( '0.00',  qryIteNotBasIcm.AsFloat ) ), 12 ) +
                              qryIteNotBasSbt.AsString                                   +
           StrZero( OnlyNumbers( FormatFloat( '0.00',  qryIteNotValIpi.AsFloat ) ), 12 ) +
           StrZero( OnlyNumbers( FormatFloat( '0.00',  qryIteNotIcms.AsFloat   ) ), 04 ));

   WriteLn( OutFile, OutText );

   Inc( ilNumIte );
   Inc( ilTotTp54 );

   qryIteNot.Next;

   // Obtendo Posicao do Produto na Nota (Item) e se Ultimo Item Lanca Frete se Existir
   if qryIteNotCodNot.Value <> ilCodNot then
    begin
     ilNumIte:=1;
     ilCodNot:=qryIteNotCodNot.Value;
    end;
  end;

 // joao batista 01-04-2011

 qryTabEcf.Close;
  qryTabEcf.ParamByName( 'ilCodEmp' ).AsInteger  := Empresa.ipIdTabEmp;
 qryTabEcf.Open;
 qryTabEcf.First;

 while not qryTabEcf.Eof do begin

     // Gerando Registros Tipo 60 (Cupom Fiscal - ECF)
     //-- 1. SubTipo "M e A"
     //qryResECF.Close;
     // qryResECF.ParamByName( 'iCodEmp' ).AsInteger   := ipCodEmp;
     // qryResECF.ParamByName( 'iCodEcf' ).AsString    := qryTabEcf.FieldByName('IdTabEcf').AsString;
     // qryResECF.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
     // qryResECF.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
     //qryResECF.Open;
     //qryResECF.First;

     qryResECF.Close;
     qryResECF.SQL.Clear;
     qryResECF.SQL.Add('  Select                                                                              ' );
     qryResECF.SQL.Add('   Ord      = 1,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''M'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = M.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( M.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( M.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = M.CooIni,                                                               ' );
     qryResECF.SQL.Add('   DocFin   = M.CooFin,                                                               ' );
     qryResECF.SQL.Add('   ReducaoZ = M.Crz,                                                                  ' );
     qryResECF.SQL.Add('   GTRnc    = M.Cro,                                                                  ' );
     qryResECF.SQL.Add('   GTIni    = M.ValBru,                                                               ' );
     qryResECF.SQL.Add('   GTFin    = M.ValGtot,                                                              ' );
     qryResECF.SQL.Add('   SitTri   = ''    '',                                                               ' );
     qryResECF.SQL.Add('   GTPrc    = 0.0                                                                     ' );
     qryResECF.SQL.Add(' From MovRDZ M                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   M.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   M.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   M.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = A.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( A.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( A.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = ''CANC'',                                                               ' );
     qryResECF.SQL.Add('   GTPrc    = A.ValCanIcms                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From MovRDZ A                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   A.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   A.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   A.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and A.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = B.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( B.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( B.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = ''DESC'',                                                               ' );
     qryResECF.SQL.Add('   GTPrc    = B.ValDesIcms                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From MovRDZ B                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   B.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   B.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   B.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and B.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = C.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( C.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( C.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = ''F'',                                                                  ' );
     qryResECF.SQL.Add('   GTPrc    = C.ValF1_ICMS + C.ValF2_ICMS                                             ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From MovRDZ C                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   C.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   C.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   C.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and C.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = D.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( D.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( D.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = ''I'',                                                                  ' );
     qryResECF.SQL.Add('   GTPrc    = D.ValI1_ICMS + D.ValI2_ICMS                                             ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From MovRDZ D                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   D.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   D.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   D.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and D.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = E.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = substring ( E.IdTabEcf, 18, 3), -- numero seq. os ultimos 3 numeros     ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( E.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = ''N'',                                                                  ' );
     qryResECF.SQL.Add('   GTPrc    = E.ValN1_ICMS + E.ValN2_ICMS                                             ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From MovRDZ E                                                                        ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   E.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   E.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   E.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and E.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Union All                                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Select                                                                               ' );
     qryResECF.SQL.Add('   Ord      = 2,                                                                      ' );
     qryResECF.SQL.Add('   TipReg   = ''A'',                                                                  ' );
     qryResECF.SQL.Add('   DatEmi   = F.DatMov,                                                               ' );
     qryResECF.SQL.Add('   CodECFp  = cast(substring ( F.IdTabEcf, 18, 3) as Integer),                        ' );
     qryResECF.SQL.Add('   CodECFf  = substring ( F.IdTabEcf, 1, 20), -- numero serie                         ' );
     qryResECF.SQL.Add('   Modelo   = ''2D'',                                                                 ' );
     qryResECF.SQL.Add('   DocIni   = 0,                                                                      ' );
     qryResECF.SQL.Add('   DocFin   = 0,                                                                      ' );
     qryResECF.SQL.Add('   ReducaoZ = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTRnc    = 0,                                                                      ' );
     qryResECF.SQL.Add('   GTIni    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   GTFin    = 0.0,                                                                    ' );
     qryResECF.SQL.Add('   SitTri   = F.Aliquota,                                                             ' );
     qryResECF.SQL.Add('   GTPrc    = F.ValImposto                                                            ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' From IteRdzIcms F                                                                    ' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Where                                                                                ' );
     qryResECF.SQL.Add('   F.IdTabEmp  = ' + inttostr(ipCodEmp)                                       + ' and ' );
     qryResECF.SQL.Add('   F.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryResECF.SQL.Add('   F.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and F.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
     qryResECF.SQL.Add('                                                                                      ' );
     qryResECF.SQL.Add(' Order By                                                                             ' );
     qryResECF.SQL.Add('   CodEcff,                                                                           ' );
     qryResECF.SQL.Add('   DatEmi,                                                                            ' );
     qryResECF.SQL.Add('  Ord                                                                                 ' );
     qryResECF.Open;
     qryResECF.First;

     // joao batista 18-03-2011
     // sintegra 2011
     dlDatEmi := qryResECFDatEmi.Value;

     While not qryResECF.Eof Do
      begin
       // Formatando Valores

       //-- GT Inicial
       flInt :=                                       Int( qryResECFGTIni.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryResECFGTIni.Value )] ) );
       slGtI := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

       //-- GT Final
       flInt :=                                       Int( qryResECFGTFin.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryResECFGTFin.Value )] ) );
       slGtF := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

       //-- GT Parcial
       flInt :=                                       Int( qryResECFGTPrc.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryResECFGTPrc.Value )] ) );
       slGtP := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

       // Data de Emissao

       s1:=StrZero( IntToStr( nData( qryResECFDatEmi.Value, 'Y' ) ), 04 ) +
           StrZero( IntToStr( nData( qryResECFDatEmi.Value, 'M' ) ), 02 ) +
           StrZero( IntToStr( nData( qryResECFDatEmi.Value, 'D' ) ), 02 );

       // Compondo Linha
       if qryResECFTipReg.Value = 'M' then  // Mestre
        begin
         OutText:=AnsiString('60' + String( qryResECFTipReg.Value)        + s1 +
                    Copy( String(qryResECFCodECFf.Value) + Space, 1, 20 )      +
                    StrZero( String(IntToStr( qryResECFCodECFp.Value  )), 03 ) +
                    String(qryResECFModelo.Value)                              +
                    StrZero( String(IntToStr( qryResECFDocIni.Value   )), 06 ) +
                    StrZero( String(IntToStr( qryResECFDocFin.Value   )), 06 ) +
                    StrZero( String(IntToStr( qryResECFReducaoZ.Value )), 06 ) +
                    StrZero( String(IntToStr( qryResECFGTRnc.Value    )), 03 ) +
                    StrZero( slGtI, 16 )                                       +
                    StrZero( slGtF, 16 )                                       +
                    Replicate( ' ',   37 ));

         WriteLn( OutFile, OutText );
        end
       else                                 // Analitico
        begin
         OutText:=AnsiString('60' + String(qryResECFTipReg.Value)         + s1 +
                       Copy( String(qryResECFCodECFf.Value) + Space, 1, 20 )   +
                       Copy( String(qryResECFSitTri.Value)  + Space, 1, 04 )   +
                       StrZero( slGtP, 12 )                                    +
                       Replicate( ' ',   79 ));


         WriteLn( OutFile, OutText );
        end;

       Inc( ilTotTp60 );

       qryResECF.Next;


       if( dlDatEmi <> qryResECFDatEmi.Value ) Or ( qryResECF.Eof ) Then
        Begin

         //qryTp60I.Close;
         // qryTp60I.Params[0].AsInteger  := ipCodEmp;
         // qryTp60I.Params[1].AsString   := qryTabEcf.FieldByName('IdTabEcf').AsString;
         // qryTp60I.Params[2].AsDateTime := dlDatEmi;
         // qryTp60I.Params[3].AsDateTime := dlDatEmi;
         //qryTp60I.Open;
         //qryTp60I.First;

         qryTp60I.Close;
         qryTp60I.SQL.Clear;
         qryTp60I.SQL.Add('  Select                                                     ' );
         qryTp60I.SQL.Add('   TipReg  = ''I'',                                          ' );
         qryTp60I.SQL.Add('   DatEmi  = M.DatMov,                                       ' );
         qryTp60I.SQL.Add('   CodECFf = I.IdTabEcf,                                     ' );
         qryTp60I.SQL.Add('   Modelo  = ''2D'',                                         ' );
         qryTp60I.SQL.Add('   CodCup  = M.CCF,                                          ' );
         //qryTp60I.SQL.Add('   CodPro  = cast(I.IdTabPro as Varchar),                    ' );
         qryTp60I.SQL.Add('   CodPro  = P.CodGtin,                                      ' );
         qryTp60I.SQL.Add('   QtdPro  = I.QtdePro,                                      ' );
         qryTp60I.SQL.Add('   ValPro  = I.ValPro,                                       ' );
         qryTp60I.SQL.Add('   BasICM  = ( I.QtdePro * I.ValPro ),                       ' );
         qryTp60I.SQL.Add('   ICMS    = I.Aliquota,                                     ' );
         qryTp60I.SQL.Add('   ValICM = ( ( I.QtdePro * I.ValPro ) * I.Aliquota / 100 )  ' );
         qryTp60I.SQL.Add('                                                             ' );
         qryTp60I.SQL.Add(' From IteCNF I                                               ' );
         qryTp60I.SQL.Add('   Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.IdTabEcf and I.CCF = M.CCF' );
         qryTp60I.SQL.Add('   Join TabPro P On I.IdTabPro = P.IdTabPro                  ' );
         qryTp60I.SQL.Add('                                                             ' );
         qryTp60I.SQL.Add(' Where                                                       ' );
         qryTp60I.SQL.Add('   M.IdTabEmp = ' + inttostr(ipCodEmp)                                  + ' and ' );
         qryTp60I.SQL.Add('   M.IdTabEcf = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTp60I.SQL.Add('   M.DatMov  >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
         qryTp60I.SQL.Add('   M.CCF      > 0 and                                        ' );
         qryTp60I.SQL.Add('   M.IndicadorCancelamento = ''N''                           ' );
         qryTp60I.SQL.Add('                                                             ' );
         qryTp60I.SQL.Add(' Order by                                                    ' );
         qryTp60I.SQL.Add('   DatEmi,                                                   ' );
         qryTp60I.SQL.Add('   CodCup,                                                   ' );
         qryTp60I.SQL.Add('   CodPro                                                    ' );
         qryTp60I.Open;
         qryTp60I.First;

                i := 1;
         slCodCup := qryTp60ICodCup.AsString;

         While not qryTp60I.Eof Do
          begin
           // Formatando Valores

           //-- Data de Emissao
           s1:=StrZero( IntToStr( nData( qryTp60IDatEmi.Value, 'Y' ) ), 04 ) +
               StrZero( IntToStr( nData( qryTp60IDatEmi.Value, 'M' ) ), 02 ) +
               StrZero( IntToStr( nData( qryTp60IDatEmi.Value, 'D' ) ), 02 );

           //-- Quantidade do Produto
           flInt :=                                       Int( qryTp60IQtdPro.Value );
           flDec := StrToFloat( Format( '%*.*n', [10, 3, Frac( qryTp60IQtdPro.Value )] ) );
           slQpr := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '00', Pos( ',', FloatToStr( flDec ) ) + 1, 3 );

           //-- Valor do Produto
           flInt :=                                       Int( qryTp60IValPro.Value );
           flDec := StrToFloat( Format( '%*.*n', [10, 3, Frac( qryTp60IValPro.Value )] ) );
           slVpr := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '00', Pos( ',', FloatToStr( flDec ) ) + 1, 3 );

           //-- Valor da Base de Calculo ICMS
           flInt :=                                       Int( qryTp60IBasIcm.Value );
           flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryTp60IBasIcm.Value )] ) );
           slBas := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

           //-- Taxa do ICMS
           flInt :=                                       Int( qryTp60IIcms.Value );
           flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryTp60IIcms.Value )] ) );
           slTax := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

           //-- Valor do ICMS
           flInt :=                                       Int( qryTp60IValIcm.Value );
           flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryTp60IValIcm.Value )] ) );
           slIcm := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

           // Compondo Linha
           OutText:=AnsiString('60' + qryTp60ITipReg.AsString             + s1 +
                    Copy( qryTp60ICodECFf.AsString + Space, 1, 20 )            +
                    qryTp60IModelo.AsString                                    +
                    StrZero( qryTp60ICodCup.AsString, 06 )                     +
                    StrZero( IntToStr( i ), 03 )                               +
                    Copy( qryTp60ICodPro.AsString + Space, 1, 14 )             +
                    StrZero( slQpr, 13 )                                       +
                    StrZero( slVpr, 13 )                                       +
                    StrZero( slBas, 12 )                                       +
                    StrZero( slTax, 04 )                                       +
                    StrZero( slIcm, 12 )                                       +
                    Replicate( ' ',   16 ));

           WriteLn( OutFile, OutText );

           // Totalizando Contadores
           Inc( i );
           Inc( ilTotTp60 );

           qryTp60I.Next;

           // Verificando se Inicaliza Cupom
           if slCodCup <> qryTp60ICodCup.AsString Then
            Begin
                    i := 1;
             slCodCup := qryTp60ICodCup.AsString;
            End;
          end;

         dlDatEmi := qryResECFDatEmi.Value;
        End;

      end;

     //-- 3. SubTipo "R"

     //qryTp60R.Close;
     // qryTp60R.Params[0].AsInteger  := ipCodEmp;
     // qryTp60R.Params[1].AsString   := qryTabEcf.FieldByName('IdTabEcf').AsString;
     // qryTp60R.Params[2].AsDateTime := dlDatIni;
     // qryTp60R.Params[3].AsDateTime := dlDatFin;
     //qryTp60R.Open;
     //qryTp60R.First;

     qryTp60R.Close;
     qryTp60R.SQL.Clear;
     qryTp60R.SQL.Add('  Select                                                   ' );
     qryTp60R.SQL.Add('   AnoEmi = Year( M.DatMov ),                              ' );
     qryTp60R.SQL.Add('   MesEmi = Month( M.DatMov ),                             ' );
     //qryTp60R.SQL.Add('   CodPro = cast(I.IdTabPro as Varchar),                   ' );
     qryTp60R.SQL.Add('   CodPro = P.CodGtin,                                     ' );
     qryTp60R.SQL.Add('   ICMS   = I.Aliquota,                                    ' );
     qryTp60R.SQL.Add('   QtdPro = Sum( I.QtdePro ),                              ' );
     qryTp60R.SQL.Add('   ValPro = Sum( I.QtdePro * I.ValPro ),                   ' );
     qryTp60R.SQL.Add('   BasICM = Sum( I.QtdePro * I.ValPro )                    ' );
     qryTp60R.SQL.Add('                                                           ' );
     qryTp60R.SQL.Add(' From IteCNF I                                             ' );
     qryTp60R.SQL.Add('   Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.IdTabEcf and I.CCF = M.CCF' );
     qryTp60R.SQL.Add('   Join TabPro P On I.IdTabPro = P.IdTabPro                ' );
     qryTp60R.SQL.Add('                                                           ' );
     qryTp60R.SQL.Add(' Where                                                     ' );
     qryTp60R.SQL.Add('   M.IdTabEmp = ' + inttostr(ipCodEmp)                                  + ' and ' );
     qryTp60R.SQL.Add('   M.IdTabEcf = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryTp60R.SQL.Add('   M.DatMov  >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
     qryTp60R.SQL.Add('   M.CCF     > 0 and                                       ' );
     qryTp60R.SQL.Add('   M.IndicadorCancelamento = ''N''                         ' );
     qryTp60R.SQL.Add('                                                           ' );
     qryTp60R.SQL.Add(' Group by                                                  ' );
     qryTp60R.SQL.Add('   Year( M.DatMov ),                                       ' );
     qryTp60R.SQL.Add('   Month( M.DatMov ),                                      ' );
     qryTp60R.SQL.Add('   P.CodGTIN,                                              ' );
     qryTp60R.SQL.Add('   I.Aliquota                                              ' );
     qryTp60R.SQL.Add('                                                           ' );
     qryTp60R.SQL.Add(' Order by                                                  ' );
     qryTp60R.SQL.Add('   Year( M.DatMov ),                                       ' );
     qryTp60R.SQL.Add('   Month( M.DatMov ),                                      ' );
     qryTp60R.SQL.Add('   P.CodGTIN,                                              ' );
     qryTp60R.SQL.Add('   I.Aliquota                                              ' );
     qryTp60R.Open;
     qryTp60R.First;

     While not qryTp60R.Eof Do
      begin
       // Formatando Valores

       //-- Mes de Emissao
       s1:=StrZero( qryTp60RMesEmi.AsString, 02 ) +
           StrZero( qryTp60RAnoEmi.AsString, 04 );

       //-- Quantidade do Produto
       flInt :=                                       Int( qryTp60RQtdPro.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 3, Frac( qryTp60RQtdPro.Value )] ) );
       slQpr := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '00', Pos( ',', FloatToStr( flDec ) ) + 1, 3 );

       //-- Valor do Produto
       flInt :=                                       Int( qryTp60RValPro.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 3, Frac( qryTp60RValPro.Value )] ) );
       slVpr := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '00', Pos( ',', FloatToStr( flDec ) ) + 1, 3 );

       //-- Valor da Base de Calculo ICMS
       flInt :=                                       Int( qryTp60RBasIcm.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryTp60RBasIcm.Value )] ) );
       slBas := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

       //-- Taxa do ICMS
       flInt :=                                       Int( qryTp60RIcms.Value );
       flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryTp60RIcms.Value )] ) );
       slTax := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

       // Compondo Linha
       OutText:= AnsiString('60' + qryTp60RTipReg.AsString                + s1 +
                 Copy( qryTp60RCodPro.AsString + Space, 1, 14 )                +
                 StrZero( slQpr, 13 )                                          +
                 StrZero( slVpr, 16 )                                          +
                 StrZero( slBas, 16 )                                          +
                 StrZero( slTax, 04 )                                          +
                 Replicate( ' ',   54 ));

       WriteLn( OutFile, OutText );

       // Totalizando Contadores
       Inc( ilTotTp60 );

       qryTp60R.Next;
      end;

   qryTabEcf.Next;
 end;


 // Gerando Registros Tipo 70 (Conhecimento de Transporte Rodoviario de Cargas, Modelo 8 e 10)
 qryMovNot.First;

 While not qryMovNot.Eof Do
  begin
   // Consistindo Tipo de Documento Fiscal (08 e 10)
   if( qryMovNotModelo.Value <> '08' ) and ( qryMovNotModelo.Value <> '10' ) then
    begin
     qryMovNot.Next;
     Continue;
    end;

   // Formatando Valores

   //-- Valor da Nota Fiscal
   flInt :=                                       Int( qryMovNotValNot.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValNot.Value )] ) );
   slNot := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

   //-- Valor da Base de Calculo
   flInt :=                                       Int( qryMovNotBasIcm.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotBasIcm.Value )] ) );
   slBas := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

   //-- Valor do ICMS
   flInt :=                                       Int( qryMovNotValIcm.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValIcm.Value )] ) );
   slIcm := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

   //-- Valor Outros
   flInt :=                                       Int( qryMovNotValOut.Value );
   flDec := StrToFloat( Format( '%*.*n', [10, 2, Frac( qryMovNotValOut.Value )] ) );
   slOut := FloatToStr( flInt ) + Copy( FloatToStr( flDec ) + '0', Pos( ',', FloatToStr( flDec ) ) + 1, 2 );

   // Cnpj
   s1 := Right( Replicate( '0', 14 ) + OnlyNumbers( qryMovNotCnpj.AsString ), 14 );

   // Inscri��o Estadual
   if UpperCase( qryMovNotInsEst.AsString ) = 'ISENTO' then
    s2 := Copy( qryMovNotInsEst.AsString + Space, 1, 14 )
   else
    s2 := Copy( OnlyNumbers( qryMovNotInsEst.AsString, 'C' ) + Replicate( ' ', 14 ), 1, 14 );

   // Data da Nota Fiscal
   s3:=StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( qryMovNotDatNot.Value, 'D' ) ), 02 );

   // Cfo
   s4 := StrZero( OnlyNumbers( qryMovNotCodCfo.AsString ), 04 );

   // Valor Isento
   if qryMovNotValIcm.Value > 0 then
    s5:='00000000000000'
   else
    s5:=StrZero( slNot, 14 );

   // Compondo Linha
   OutText:= AnsisTRing('70' + s1 + s2 + s3 + String(qryMovNotCodEst.Value)    +
             Copy( String(qryMovNotModelo.Value)   + Space, 1, 2 )             +
             Copy( String(qryMovNotSerie.Value)    + Space, 1, 1 )             +
             Copy( String(qryMovNotSubSerie.Value) + Space, 1, 2 )             +
             StrZero( String( IntToStr( qryMovNotCodNot.Value )), 06 ) + s4    +
             StrZero( slNot, 13 )                                              +
             StrZero( slBas, 14 )                                              +
             StrZero( slIcm, 14 )                                      + s5    +
             StrZero( slOut, 14 )                                              +
             String( qryMovNotTipFre.Value)                                    +
             String( qryMovNotSituac.Value));

   WriteLn( OutFile, OutText );

   Inc( ilTotTp70 );

   qryMovNot.Next;
  end;

  // Gerando Registros Tipo 74 (Invent�rio)

  //qryProIvt.Close;
  // qryProIvt.Params[00].AsInteger  := ipCodEmp;
  // qryProIvt.Params[01].AsDateTime := DateTimePicker2.Date;
  //qryProIvt.Open;
  //qryProIvt.First;

  qryProIvt.Close;
  qryProIvt.sql.Clear;
  qryProIvt.sql.Add('Select                                                                                   ' );
  //qryProIvt.sql.Add(' CodPro      = cast(P.IdTabPro as Varchar),                                              ' );
  qryProIvt.sql.Add(' CodPro      = P.CodGtin,                                                                ' );
  qryProIvt.sql.Add(' NomPro      = Case When P.Descricao Is Not Null Then P.Descricao Else '''' End + '', '' + ' );
  qryProIvt.sql.Add('               Case When P.Modelo Is Not Null Then P.Modelo Else '''' End,               ' );
  qryProIvt.sql.Add(' CodNCM      = ''        '',                                                             ' );
  qryProIvt.sql.Add(' Unidade     = E.IdTabUnd,                                                               ' );
  qryProIvt.sql.Add(' IPI         = ''00000'',                                                                ' );
  qryProIvt.sql.Add(' CASE when T.IcmsFisSI < 10 then cast(''0'' + Replace(T.IcmsFisSI,''.'','''') as varchar) else cast(Replace(T.IcmsFisSI,''.'','''') as varchar) end as ICMS,' );
  qryProIvt.sql.Add(' ReducaoICMS = ''00000'',                                                                ' );
  qryProIvt.sql.Add(' BasIcmSbt   = ''0000000000000'',                                                        ' );
  qryProIvt.sql.Add(' QtdIvt      = dbo.fn_Estoque( :IdTabEmp, P.IdTabPro, :DataIni, :DataFim, ''D'' ), ');
  qryProIvt.sql.Add(' CstIvt      = P.ValorCusto,                                                             ' );
  qryProIvt.sql.Add(' CodigoPosse = ''1'',                                                                    ' );
  qryProIvt.sql.Add(' CNPJ        = ''00000000000000'',                                                       ' );
  qryProIvt.sql.Add(' InsEst      = ''              '',                                                       ' );
  qryProIvt.sql.Add(' UF          = ''  ''                                                                    ' );
  qryProIvt.sql.Add('                                                                                         ' );
  qryProIvt.sql.Add('from                                                                                     ' );
  qryProIvt.sql.Add(' TabPro P                                                                                ' );
  qryProIvt.sql.Add(' join TabEmb E On P.IdTabEmb = E.IdTabEmb                                                ' );
  qryProIvt.sql.Add(' join TabGru G On P.IdTabGru = G.IdTabGru                                                ' );

  // joao batista 07/11/2011
  qryProIvt.sql.Add(' join TabTrb T On (G.IdTabTrb = T.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

  qryProIvt.sql.Add('                                                                                         ' );
  qryProIvt.sql.Add('Order By                                                                                 ' );
  qryProIvt.sql.Add(' P.CodGTIN                                                                               ' );

  qryProIvt.ParamByName( 'IdTabEmp' ).AsInteger := Empresa.ipIdTabEmp;
  qryProIvt.ParamByName( 'DataIni' ).AsDateTime := dlDatIni;
  qryProIvt.ParamByName( 'DataFim' ).AsDateTime := dlDatFin;

  qryProIvt.Open;
  qryProIvt.First;

  // Inicializando Variavel
  flTotIvt := 0;

  While Not qryProIvt.Eof Do
    Begin
     // Consistindo Produto
     if( qryProIvtQtdIvt.AsFloat <= 0 ) or ( qryProIvtCstIvt.AsFloat <= 0 ) then
      begin
       qryProIvt.Next;
       Continue;
      end;

     // Obtendo Total do Inventario
     flTotIvt := flTotIvt + ( qryProIvtQtdIvt.AsFloat * qryProIvtCstIvt.AsFloat );

     // Data do Invent�rio

     // joao batista 18-03-2011
     // s1:=StrZero( IntToStr( nData( dlDatFin, 'Y' ) ), 04 ) + '12' + '31';

     s1:=StrZero( IntToStr( nData( dlDatFin, 'Y' ) ), 04 ) +
         StrZero( IntToStr( nData( dlDatFin, 'M' ) ), 02 ) +
         StrZero( IntToStr( nData( dlDatFin, 'D' ) ), 02 );

     // Compondo Linha
     OutText:= AnsisTring('74' + s1 + Copy( UpperCase( String(qryProIvtCodPro.Value) ) + Space, 1, 14 ) +
               StrZero( OnlyNumbers( FormatFloat( '0.000', qryProIvtQtdIvt.AsFloat                           ) ), 13 ) +
               StrZero( OnlyNumbers( FormatFloat( '0.00',  qryProIvtQtdIvt.AsFloat * qryProIvtCstIvt.AsFloat ) ), 13 ) +
               qryProIvtCodigoPosse.AsString                                   +
               qryProIvtCNPJ.AsString                                          +
               qryProIvtInsEst.AsString                                        +
               qryProIvtUF.AsString                                            +
               Replicate( ' ', 45 ));


     WriteLn( OutFile, OutText );

     Inc( ilTotTp74 );

     qryProIvt.Next;
    End;

 // Gerando Registros Tipo 75 (Codigo de Produtos ou Servico)
 //-- Itens de entradas e saidas

 //qryTabPro75.Close;
 // qryTabPro75.Params[00].AsInteger  := ipCodEmp;
 // qryTabPro75.Params[01].AsString   := PcsEcf.spEcfIdTabEcf;
 // qryTabPro75.Params[02].AsDateTime := dlDatIni;
 // qryTabPro75.Params[03].AsDateTime := dlDatFin;
 // qryTabPro75.Params[04].AsInteger  := ipCodEmp;
 // qryTabPro75.Params[05].AsDateTime := dlDatIni;
 // qryTabPro75.Params[06].AsDateTime := dlDatFin;
 //qryTabPro75.Open;
 //qryTabPro75.First;

 qryTabPro75.Close;
 qryTabPro75.SQL.Clear;
 qryTabPro75.SQL.Add('  Select                                                                               ' );
 //qryTabPro75.SQL.Add('   CodPro = cast(P.IdTabpro as Varchar),                                               ' );
 qryTabPro75.SQL.Add('   CodPro = P.CodGtin,                                                                 ' );
 qryTabPro75.SQL.Add('   NomPro = Case When P.descricao Is Not Null Then P.Descricao Else '''' End + '', '' +' );
 qryTabPro75.SQL.Add('            Case When P.Modelo Is Not Null Then P.Modelo Else '''' End,                ' );
 qryTabPro75.SQL.Add('   CodNCM = P.CodNCM,                                                                  ' );
 qryTabPro75.SQL.Add('   Unidade = E.IdTabUnd,                                                               ' );
 qryTabPro75.SQL.Add('   IPI    = ''00000'',                                                                 ' );
 qryTabPro75.SQL.Add('   CASE when T.IcmsFisSI < 10 then cast(''0'' + Replace(T.IcmsFisSI,''.'','''') as varchar) else cast(Replace(T.IcmsFisSI,''.'','''') as varchar) end as ICMS,' );
 qryTabPro75.SQL.Add('   ReducaoICMS = ''00000'',                                                            ' );
 qryTabPro75.SQL.Add('   BasIcmSbt = ''0000000000000''                                                       ' );
 qryTabPro75.SQL.Add('                                                                                       ' );
 qryTabPro75.SQL.Add(' From TabPro P                                                                         ' );
 qryTabPro75.SQL.Add('   join TabEmb E On E.IdTabEmb = P.IdTabEmb                                            ' );
 qryTabPro75.SQL.Add('   join TabGru G On P.IdTabGru = G.IdTabGru                                            ' );

 // joao batista 07/11/2011
 qryTabPro75.SQL.Add('   join TabTrb T On (G.IdTabTrb = T.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

 qryTabPro75.SQL.Add('                                                                                       ' );
 qryTabPro75.SQL.Add(' Where                                                                                 ' );
 qryTabPro75.SQL.Add('   P.IdTabPro In (                                                                     ' );
 qryTabPro75.SQL.Add('                   Select Distinct(I.IdTabPro)                                         ' );
 qryTabPro75.SQL.Add('                   From IteCNF I                                                       ' );
 qryTabPro75.SQL.Add('                     Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.IdTabEcf and I.CCF = M.CCF' );
 qryTabPro75.SQL.Add('                   Where                                                               ' );
 qryTabPro75.SQL.Add('                     M.IdTabEmp  = ' + inttostr(ipCodEmp)                           + ' and ' );
 qryTabPro75.SQL.Add('                     M.IdTabEcf  = ' + '''' + qryTabEcf.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
 qryTabPro75.SQL.Add('                     M.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
 qryTabPro75.SQL.Add('                     M.CCF       >  0                                                  ' );
 qryTabPro75.SQL.Add('                 )                                                                     ' );
 qryTabPro75.SQL.Add(' Union                                                                                 ' );
 qryTabPro75.SQL.Add('                                                                                       ' );
 qryTabPro75.SQL.Add(' Select                                                                                ' );
 //qryTabPro75.SQL.Add('   CodPro = cast(P.IdTabPro as Varchar),                                               ' );
 qryTabPro75.SQL.Add('   CodPro = P.CodGtin,                                                                 ' );
 qryTabPro75.SQL.Add('   NomPro = Case When P.Descricao Is Not Null Then P.Descricao Else '''' End + '', '' +' );
 qryTabPro75.SQL.Add('            Case When P.Modelo Is Not Null Then P.Modelo Else '''' End,                ' );
 qryTabPro75.SQL.Add('   CodNCM = ''        '',                                                              ' );
 qryTabPro75.SQL.Add('   Unidade = E.IdTabUnd,                                                               ' );
 qryTabPro75.SQL.Add('   IPI    = ''00000'',                                                                 ' );
 qryTabPro75.SQL.Add('   CASE when T.IcmsFisSI < 10 then cast(''0'' + Replace(T.IcmsFisSI,''.'','''') as varchar) else cast(Replace(T.IcmsFisSI,''.'','''') as varchar) end as ICMS,' );
 qryTabPro75.SQL.Add('   ReducaoICMS = ''00000'',                                                            ' );
 qryTabPro75.SQL.Add('   BasIcmSbt = ''0000000000000''                                                       ' );
 qryTabPro75.SQL.Add('                                                                                       ' );
 qryTabPro75.SQL.Add(' From TabPro P                                                                         ' );
 qryTabPro75.SQL.Add('   join TabEmb E On E.IdTabEmb = P.IdTabEmb                                            ' );
 qryTabPro75.SQL.Add('   join TabGru G On P.IdTabGru = G.IdTabGru                                            ' );

 // joao batista 07/11/2011
 qryTabPro75.SQL.Add('   join TabTrb T On (G.IdTabTrb = T.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

 qryTabPro75.SQL.Add('                                                                                       ' );
 qryTabPro75.SQL.Add(' Where                                                                                 ' );
 qryTabPro75.SQL.Add('   P.IdTabPro In (                                                                     ' );
 qryTabPro75.SQL.Add('                   Select Distinct(I.IdTabPro)                                         ' );
 qryTabPro75.SQL.Add('                   From IteNot I                                                       ' );
 qryTabPro75.SQL.Add('                     Join MovNot M On I.IdTabEmp = M.IdTabEmp and I.IdTabPes = M.IdTabPes and I.NumeroNota = M.NumeroNota' );
 qryTabPro75.SQL.Add('                     Join TabPes F On M.IdTabPes = F.IdTabPes                          ' );
 qryTabPro75.SQL.Add('                   Where                                                               ' );
 qryTabPro75.SQL.Add('                     M.IdTabEmp  = ' + inttostr(ipCodEmp)                      + ' and ' );
 qryTabPro75.SQL.Add('                     M.DataOpe  >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DataOpe <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
 qryTabPro75.SQL.Add('                     M.PosNot = ''A''                                                  ' );
 qryTabPro75.SQL.Add('                  )                                                                    ' );
 qryTabPro75.SQL.Add(' Order By                                                                              ' );
 qryTabPro75.SQL.Add('   CodPro                                                                              ' );
 qryTabPro75.Open;
 qryTabPro75.First;


 While not qryTabPro75.Eof Do
  begin
   // Periodo
   s1:=StrZero( IntToStr( nData( dlDatIni, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( dlDatIni, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( dlDatIni, 'D' ) ), 02 );

   s2:=StrZero( IntToStr( nData( dlDatFin, 'Y' ) ), 04 ) +
       StrZero( IntToStr( nData( dlDatFin, 'M' ) ), 02 ) +
       StrZero( IntToStr( nData( dlDatFin, 'D' ) ), 02 );

   // Compondo Linha
   OutText := AnsiString('75' + s1 + s2 + Copy( String(qryTabPro75CodPro.Value) + Space, 1, 14 ) +
              Copy( String(qryTabPro75CodNCM.Value)  + Space, 1, 08 )          +
              Copy( String(qryTabPro75NomPro.Value)  + Space, 1, 53 )          +
              Copy( String(qryTabPro75Unidade.Value) + Space, 1, 06 )          +
              String(qryTabPro75IPI.Value)                                     +
              String(qryTabPro75ICMS.Value)                                    +
              String(qryTabPro75ReducaoICMS.Value)                             +
              String(qryTabPro75BasIcmSbt.Value));

   WriteLn( OutFile, OutText );

   Inc( ilTotTp75 );

   qryTabPro75.Next;
  end;

 //-- Itens do Inventario
 // joao batista 18-11-2011
 qryProIvt.First;

 While Not qryProIvt.Eof Do
    Begin
     // Consistindo Produto

     if( qryProIvtQtdIvt.AsFloat <= 0 ) or ( qryProIvtCstIvt.AsFloat <= 0 ) then
      Begin
       qryProIvt.Next;
       Continue;
      End
     else
      Begin
       qryTabPro75.First;

       if qryTabPro75.Locate( 'CodPro', qryProIvtCodPro.AsString, [] ) then // [loPartialKey] ; By Renildo ; 20/03/2008 ; 15:25
        Begin
         qryProIvt.Next;
         Continue;
        End;
      End;

     // Periodo
     s1:=StrZero( IntToStr( nData( dlDatIni, 'Y' ) ), 04 ) +
         StrZero( IntToStr( nData( dlDatIni, 'M' ) ), 02 ) +
         StrZero( IntToStr( nData( dlDatIni, 'D' ) ), 02 );

     s2:=StrZero( IntToStr( nData( dlDatFin, 'Y' ) ), 04 ) +
         StrZero( IntToStr( nData( dlDatFin, 'M' ) ), 02 ) +
         StrZero( IntToStr( nData( dlDatFin, 'D' ) ), 02 );

     // Compondo Linha
     OutText:= AnsiString('75' + s1 + s2 + Copy( String(qryProIvtCodPro.Value) + Space, 1, 14 ) +
               Copy( String(qryProIvtCodNCM.Value)  + Space, 1, 08 )           +
               Copy( String(qryProIvtNomPro.Value)  + Space, 1, 53 )           +
               Copy( String(qryProIvtUnidade.Value) + Space, 1, 06 )           +
                     String(qryProIvtIPI.Value)                                +
                     String(qryProIvtICMS.Value)                               +
                     String(qryProIvtReducaoICMS.Value)                        +
                     String(qryProIvtBasIcmSbt.Value));

     WriteLn( OutFile, OutText );

     Inc( ilTotTp75 );

     qryProIvt.Next;
    End;


 // Gerando Registro Tipo 90 (Totalizacao do Arquivo)

 // Total Geral de Registros

 // Cnpj
 s1 := Right( Replicate( '0', 14 ) + OnlyNumbers( spCnpj ), 14 );

 // Inscri��o Estadual
 if UpperCase( spInsEst ) = 'ISENTO' then
  s2 := Copy( spInsEst + Space, 1, 14 )
 else
  s2 := Copy( OnlyNumbers( spInsEst, 'C' ) + Replicate( ' ', 14 ), 1, 14 );

 // Compondo Linha
 ilTotGer:=( ilTotTp50 + ilTotTp54 + ilTotTp60 + ilTotTp70 + ilTotTp74 + ilTotTp75 + 3 );

 OutText:=AnsiString('90' + s1 + s2                                            +
          '50' + StrZero( IntToStr( ilTotTp50 ), 08 )                          +
          Se( ilTotTp74 > 0,  '74' + StrZero( IntToStr( ilTotTp74 ), 08 ), '' )+  // Registro de Inventario, mes 12
          '75' + StrZero( IntToStr( ilTotTp75 ), 08 )                          +
          '99' + StrZero( IntToStr( ilTotGer ),  08 )                          +
          Replicate( ' ', 35 - Se( ilTotTp74 > 0, 10, 0 ) ) + '1');

 WriteLn( OutFile, OutText );

 // Fim Processo
 CloseFile( OutFile );

 // joao batista 12-04-2011
 Try
   FrTelIni.ACBrPAF.SaveFileTXT('Fisco\' + slArquivo);
   Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                 'Local: ' + Dir + '\Fisco\' + slArquivo),'GBPAF');

 Except
   Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                 'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
 End;

end;

procedure TFrTelMen.ExecutaSped;
Var
 sAux                                               : String;
 iLin, iLnG, iTRg, iTRg_0150, iTRg_0190, iTRg_0200,
                   iTRg_C100, iTRg_C140, iTRg_C141,
                   iTRg_C170, iTRg_C190,

                   // joao batista 30-03-2011
                   iTRg_C400, iTRg_C405,
                   iTRg_C420, iTRg_C425, iTRg_C460,
                   iTRg_C470, iTRg_C490,

                   iTRg_H010                        : Integer;

 // joao batista 21-03-2011
 dlDatIni, dlDatFin                                 : TDateTime;
 F                                                  : TextFile;
 ipCodEmp                                           : Integer;

begin

 ipCodEmp := Empresa.ipIdTabEmp;

 // Obtendo Periodo
 dlDatIni := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePicker1.Date));
 dlDatFin := StrToDate(FormatDateTime('dd/mm/yyyy', DateTimePicker2.Date));

 // Consistindo Datas
 if dlDatFin < DlDatIni then
  begin
   DateTimePicker2.SetFocus;
   Application.MessageBox( 'Data Final n�o pode ser Menor que Data Inicial.', 'Sisa', MB_ICONERROR );
   Exit;
  end;

 // 3. Meses devem ser iguais
 if nData( dlDatIni, 'M' ) <> nData( dlDatFin, 'M' ) Then
  MsgErro( 'Os Meses do Per�odo devem ser Iguais  !', DateTimePicker2 );

 // 4. Anos devem ser iguais
 if nData( dlDatIni, 'Y' ) <> nData( dlDatFin, 'Y' ) Then
  MsgErro( 'Os Anos do Per�odo devem ser Iguais  !', DateTimePicker2 );

 slArquivo            := ConfigGeral.spNumeroLaudo +
                         FormatDateTime('ddmmyyyy', DataDoServidor) +
                         FormatDateTime('hhmmss', DataDoServidor) + '.txt';

 // Obtendo Dados da Empresa {Entidade}
 qryTabEmp.Close;
  qryTabEmp.Params[0].AsInteger := ipCodEmp;
 qryTabEmp.Open;

 // Criando Arquivo TXT
 AssignFile( F, Dir + '\Fisco\' + slArquivo );

 Rewrite( F );

 // Exportando Dados

 // 1. BLOCO 0 - Abertura, Identifica��o e Referencias

 // 1.1. Registro 0000 - Abertura do Arquivo e Identifica��o da Entidade

 iLin := 1;
 iLnG := 1;

 sAux := '|'  + '0000'  + '|';                                                            // Tipo de Registro
 sAux := sAux + StrZero(qryTabEmpCodVerEFD.AsString,3)                     + '|';         // Vers�o do Arquivo {Parametrizar};
 sAux := sAux + IntToStr( RadioGroup5.ItemIndex )                          + '|';         // Finalidade do Arquivo
 sAux := sAux + FormatDateTime( 'ddmmyyyy', dlDatIni )                     + '|';         // Inicio das Informa��es
 sAux := sAux + FormatDateTime( 'ddmmyyyy', dlDatFin )                     + '|';         // Final  das Informa��es
 sAux := sAux + Trim( qryTabEmpNomEmp.AsString )                           + '|';         // Raz�o Social da Entidade {100}
 sAux := sAux + StrZero( OnlyNumbers( qryTabEmpCnpj.AsString ), 14 )       + '|';       // OC  // CNPJ da Entidade
 sAux := sAux + ''                                                         + '|';       // OC  // CPF
 sAux := sAux + FormatSpace( qryTabEmpEstado.AsString, 02 )                + '|';         // UF
 sAux := sAux + Trim( OnlyNumbers( qryTabEmpInsEst.AsString ) )            + '|';         // Inscri��o Estadual {14}
 sAux := sAux + StrZero( qryTabEmpCodIBGE.AsString, 07 )                   + '|';         // Codigo Municipio Conf. Tabela IBGE {CostaRica='5003256'}
 sAux := sAux + Trim( qryTabEmpInsMun.AsString )                           + '|';       // OC  // Inscri��o Municipal 'Tamanho Indefinido' {15}
 sAux := sAux + ''                                                         + '|';       // OC  // Inscri��o Suframa

 // joao batista 21-03-2011
 sAux := sAux + qryTabEmpPerfilEFD.AsString + '|';                                        // Perfil da Empresa 'A, B ou C' {Parametrizar}
 sAux := sAux + '1'     + '|';                                                            // Tipo de Atividade '0=Industrial ou equiparado ; 1=Outros' {Parametrizar}

 WriteLn( F, sAux );

 // 1.2. Registro 0001 - Abertura do BLOCO 0

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '0001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 1.3. Registro 0005 - Dados Complementares da Entidade

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '0005'  + '|';                                                            // Tipo de Registro
 sAux := sAux +    Trim( qryTabEmpNomFan.AsString )                 + '|';                // Nome Fantasia {60}
 sAux := sAux + StrZero( OnlyNumbers( qryTabEmpCep.AsString ), 08 ) + '|';                // CEP
 sAux := sAux +    Trim( qryTabEmpEndereco.AsString )               + '|';                // Endere�o {60}
 sAux := sAux + Se( qryTabEmpNumero.AsInteger > 0, qryTabEmpNumero.AsString, '' ) + '|';  // OC // Numero
 sAux := sAux +    Trim( qryTabEmpComplemento.AsString )            + '|';                // OC // Complemento {60}
 sAux := sAux +    Trim( qryTabEmpSetor.AsString )                  + '|';                // Bairro {60}
 sAux := sAux +    Trim( OnlyNumbers( qryTabEmpFone.AsString ) )    + '|';                // OC // Fone + DDD {10}
 sAux := sAux +    Trim( OnlyNumbers( qryTabEmpFax.AsString  ) )    + '|';                // OC // Fax  + DDD {10}
 sAux := sAux +    Trim( qryTabEmpEmail.AsString )                  + '|';                // Email 'Tamanho Indefinido' {50}

 WriteLn( F, sAux );

 // 1.4. Registro 0015 - Dados do Contribuinte Substituto 'Somente Qdo possuir InsEstSbt'

 if qryTabEmpInsEstSbt.AsString <> '' Then
  Begin
   iLin := iLin + 1;
   iLnG := iLnG + 1;

   sAux := '|'  + '0015'  + '|';                                                          // Tipo de Registro
   sAux := sAux + FormatSpace( qryTabEmpEstado.AsString, 02 )    + '|';                   // UF da ST
   sAux := sAux +        Trim( qryTabEmpInsEstSbt.AsString )     + '|';                   // Inscri��o ST {14}

   WriteLn( F, sAux );
  End;

 // 1.5. Registro 0100 - Dados do Contabilista

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '0100'  + '|';                                                            // Tipo de Registro
 sAux := sAux + Trim( qryTabEmpNomCtd.AsString )                         + '|';           // O GUIA INFORMA TAM 100 E ESTA COM ERRO O TAM = 60. Nome do Contabilista {60}
 sAux := sAux + OnlyNumbers( qryTabEmpCPFCtd.AsString )                  + '|';           // CPF
 sAux := sAux + Trim( qryTabEmpCRCCtd.AsString )                         + '|';           // CRC {15}
 sAux := sAux + OnlyNumbers( qryTabEmpCNPJCtd.AsString )                 + '|';           // OC // CNPJ {14} {Parametrizar}
 sAux := sAux + StrZero( OnlyNumbers( qryTabEmpCEPCtd.AsString ), 8 )    + '|';           // OC // CEP  {08} {Parametrizar}
 sAux := sAux + Trim( qryTabEmpENDCtd.AsString )                         + '|';           // OC // Endereco {60} {Parametrizar}
 sAux := sAux + Trim( qryTabEmpNUMEROCtd.AsString )                      + '|';           // OC // Numero 'Tamanho Indefinido' {Parametrizar}
 sAux := sAux + Trim( qryTabEmpCOMPLEMENTOCtd.AsString )                 + '|';           // OC // Complemento {60} {Parametrizar}
 sAux := sAux + Trim( qryTabEmpBAIRROCtd.AsString )                      + '|';           // OC // Bairro {60} {Parametrizar}
 sAux := sAux + Trim( OnlyNumbers( qryTabEmpDDDFoneCtd.AsString + qryTabEmpFoneCtd.AsString ) )   + '|';         // OC  // Fone + DDD {10}
 sAux := sAux + Trim( OnlyNumbers( qryTabEmpDDDFaxCtd.AsString + qryTabEmpFaxCtd.AsString ) )     + '|';         // OC  // Fax + DDD {10} {Parametrizar}
 sAux := sAux + Trim( qryTabEmpEmailCtd.AsString )                       + '|';           // OC // Email 'Tamanho Indefinido'
 sAux := sAux + StrZero( qryTabEmpCodIBGE.AsString, 07 )                 + '|';           // OC // Codigo Municipio Conf. Tabela IBGE {CostaRica='5003256'} {50}

 WriteLn( F, sAux );

 // 1.6. Registro 0150 - Tabela de Cadastro do Participante

 iTRg_0150 := 0;

 // Obtendo Dados do Participante {TabFor e TabCli}

 qryTabPrt.Close;
  qryTabPrt.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryTabPrt.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
  qryTabPrt.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryTabPrt.Open;

 While Not qryTabPrt.Eof Do
  Begin
   iLin      := iLin      + 1;
   iLnG      := iLnG      + 1;

   iTRg_0150 := iTRg_0150 + 1;

   sAux := '|'  + '0150'  + '|';                                                                            // Tipo de Registro
   sAux := sAux +        Trim( qryTabPrtCodPrt.AsString )                + '|';                             // Codigo do Participante {100}
   sAux := sAux +        Trim( qryTabPrtNomPrt.AsString )                + '|';                             // Nome do Participante {60}
   sAux := sAux +     StrZero( qryTabPrtCdPais.AsString, 05 )            + '|';                             // Codigo do Pais {Brasil = 01058}
   sAux := sAux + Se( qryTabPrtCnpj.AsString <> '', StrZero( qryTabPrtCnpj.AsString, 14 ), '' ) + '|';      // OC // CNPJ
   sAux := sAux + Se( qryTabPrtCpf.AsString  <> '', StrZero( qryTabPrtCpf.AsString,  11 ), '' ) + '|';      // OC // CPF
   sAux := sAux +        Trim( qryTabPrtInsEst.AsString )                + '|';                             // OC // Inscri��o Estadual {14}
   sAux := sAux + Se( qryTabPrtCodIBGE.AsInteger > 0, StrZero( qryTabPrtCodIBGE.AsString, 07 ), '' ) + '|'; // OC // Codigo Municipio Conf. Tabela IBGE
   sAux := sAux +        Trim( qryTabPrtSuframa.AsString )               + '|';                             // OC // Inscri��o Suframa {09}
   sAux := sAux +        Trim( qryTabPrtEndPrt.AsString )                + '|';                             // Endere�o {60}
   sAux := sAux + qryTabPrtNumero.AsString                               + '|';                             // OC // Numero {Tamanho Indefinido}
   sAux := sAux +        Trim( qryTabPrtComplemento.AsString )           + '|';                             // OC // Complemento {60}
   sAux := sAux +        Trim( qryTabPrtSetor.AsString )                 + '|';                             // OC // Bairro {60}

   WriteLn( F, sAux );

   qryTabPrt.Next;
  End;

 // 1.7. Registro 0190 - Identifica��o das Unidades de Medida

 iTRg_0190 := 0;

 // Obtendo Dados da Embalagem {TabEmb}

 qryTabEmb.Close;
  qryTabEmb.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryTabEmb.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
  qryTabEmb.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryTabEmb.Open;

 While Not qryTabEmb.Eof Do
  Begin
   iLin      := iLin      + 1;
   iLnG      := iLnG      + 1;

   iTRg_0190 := iTRg_0190 + 1;

   sAux := '|'  + '0190'  + '|';                                                                            // Tipo de Registro
   sAux := sAux + Trim( qryTabEmbCodEmb.AsString )                       + '|';                             // Codigo da Embalagen {Unidade de Medida} {06}
   sAux := sAux + Trim( qryTabEmbNomEmb.AsString )                       + '|';                             // Descri��o da Embalagem {Tamanho Indefinido}

   WriteLn( F, sAux );

   qryTabEmb.Next;
  End;

 // 1.8. Registro 0200 - Tabela de Identifica��o do Item (Produtos e Servi�os)

 iTRg_0200 := 0;

 // Obtendo Dados do Item {TabPro}

 qryTabProSped.Close;
  qryTabProSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryTabProSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
  qryTabProSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryTabProSped.Open;

 While Not qryTabProSped.Eof Do
  Begin
   iLin      := iLin      + 1;
   iLnG      := iLnG      + 1;

   iTRg_0200 := iTRg_0200 + 1;

   sAux := '|'  + '0200'  + '|';                                                                            // Tipo de Registro
   sAux := sAux +    Trim( qryTabProSpedCodPro.AsString )                    + '|';                         // Codigo do Produto {60}
   sAux := sAux +    Trim( qryTabProSpedNomPro.AsString )                    + '|';                         // Descri��o do Produto 'NomPro + Modelo' {Tamanho Indefinido}
   sAux := sAux +    Trim( qryTabProSpedCodEan13.AsString )                  + '|';                         // Codigo de Barra {Tamanho Indefinido}
   sAux := sAux + ''      + '|';                                                                            // Codigo Anterior do Item
   sAux := sAux +    Trim( qryTabProSpedCodEmb.AsString )                    + '|';                         // Codigo da Embalagen {Unidade de Medida} {06}
   sAux := sAux + StrZero( qryTabProSpedTipPro.AsString, 02 )                + '|';                         // Tipo de Produto {00-Revenda ; 07-Uso/Consumo}
   sAux := sAux +    Trim( qryTabProSpedCodNCM.AsString )                    + '|';                         // Codigo NCM - C�digo da Nomenclatura Comum do Mercosul {08}
   sAux := sAux + ''      + '|';                                                                            // C�digo EX, conforme a TIPI
   sAux := sAux + ''      + '|';                                                                            // C�digo do genero, conforme a Tabela 4.2.1
   sAux := sAux + ''      + '|';                                                                            // C�digo do Servi�o conforme lista do anexo I
   sAux := sAux + ''      + '|';                                                                            // Aliquota do ICMS, opera��es Internas

   WriteLn( F, sAux );

   qryTabProSped.Next;
  End;

 // 1.9. Registro 0990 - Encerramento do BLOCO 0

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '0990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco 0

 WriteLn( F, sAux );

 // 2. BLOCO C - Documentos Fiscais I - Mercadorias (ICMS/IPI) {NF_01 ; NF_AVULSA_1B ; NF_PRODUTOR_RURAL_04 ; NFE_55}
 // 2.1. Registro C001 - Abertura do BLOCO C

 qrySped.Close;
 qrySped.SQL.Clear;
 qrySped.SQL.Add('Select                                                         ' );
 qrySped.SQL.Add('  Count(*) as Qtde_Nota,                                       ' );
 qrySped.SQL.Add('  Qtde_CNF = 0                                                 ' );
 qrySped.SQL.Add('                                                               ' );
 qrySped.SQL.Add('From MovNot M                                                  ' );
 qrySped.SQL.Add('                                                               ' );
 qrySped.SQL.Add('Where                                                          ' );
 qrySped.SQL.Add('  M.IdTabEmp = ' + inttostr(ipCodEmp)                                        + ' and ' );
 qrySped.SQL.Add('  M.DataOpe >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DataOpe <= ' + '''' + DateToStr(dlDatFin) + '''' + ' and ' );
 qrySped.SQL.Add('  M.PosNot = ''A''                                             ' );
 qrySped.SQL.Add('Group by M.IdTabEmp                                            ' );
 qrySped.SQL.Add('union all                                                      ' );
 qrySped.SQL.Add('                                                               ' );
 qrySped.SQL.Add('Select                                                         ' );
 qrySped.SQL.Add('  Qtde_Nota = 0,                                               ' );
 qrySped.SQL.Add('  Count(*) as Qtde_CNF                                         ' );
 qrySped.SQL.Add('                                                               ' );
 qrySped.SQL.Add('From MovCNF M                                                  ' );
 qrySped.SQL.Add('                                                               ' );
 qrySped.SQL.Add('Where                                                          ' );
 qrySped.SQL.Add('  M.IdTabEmp = ' + inttostr(ipCodEmp)                  + ' and ' );
 qrySped.SQL.Add('  M.DatMov  >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
 qrySped.SQL.Add('Group by M.IdTabEmp                                            ' );

 qrySped.Open;

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'C001'                                        + '|';                      // Tipo de Registro

 if (qrySpedQtde_Nota.AsInteger + qrySpedQtde_CNF.AsInteger) > 0 then                     // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'
   sAux := sAux + '0'                                         + '|'
 else
   sAux := sAux + '1'                                         + '|';

 WriteLn( F, sAux );

 // 2.2. Registro C100 - Nota Fiscal {01} ; Nota Fiscal Avulsa {1B} ; Produtor {04} ; NFe {55}

 iTRg_C100 := 0;  // Nota
 iTRg_C140 := 0;  // Fatura
 iTRg_C141 := 0;  // Vencimentos das Faturas
 iTRg_C170 := 0;  // Itens
 iTRg_C190 := 0;  // Analitico do Documento

 // joao batista 30-03-2011
 iTRg_C400 := 0;  // EQUIPAMENTO ECF (C�DIGO 02 e 2D).
 iTRg_C405 := 0;  // REDU��O Z (C�DIGO 02 e 2D).
 iTRg_C420 := 0;  // REGISTRO DOS TOTALIZADORES PARCIAIS DA REDU��O Z (COD 02 e 2D).
 iTRg_C425 := 0;  // RESUMO DE ITENS DO MOVIMENTO DI�RIO (C�DIGO 02 e 2D).
 iTRg_C460 := 0;  // DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D).
 iTRg_C470 := 0;  // ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D).
 iTRg_C490 := 0;  // REGISTRO ANAL�TICO DO MOVIMENTO DI�RIO (C�DIGO 02 e 2D).

 // joao batista 23-03-2011
 iTRg_H010 := 0;  // Invent�rio

 // 2. BLOCO C - Documentos Fiscais I - Mercadorias (ICMS/IPI) {NF_01 ; NF_AVULSA_1B ; NF_PRODUTOR_RURAL_04 ; NFE_55}

 // Obtendo Dados das Notas Fiscais {MovEst e MovPed}

 qryMovNotSped.Close;
  qryMovNotSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryMovNotSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
  qryMovNotSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryMovNotSped.Open;
 qryMovNotSped.First;

 While Not qryMovNotSped.Eof Do
  Begin
   iLin      := iLin      + 1;
   iLnG      := iLnG      + 1;

   iTRg_C100 := iTRg_C100 + 1;

   sAux := '|'  + 'C100'  + '|';                                                                                // Tipo de Registro
   sAux := sAux + FormatSpace( qryMovNotSpedTipNot.AsString, 01 )              + '|';                           // Tipo de Opera��o {0=Entrada ; 1=Saida}
   sAux := sAux + FormatSpace( qryMovNotSpedTipEmt.AsString, 01 )              + '|';                           // Emitente do Doc  {0=Proprio ; 1=Terceiro}

   if qryMovNotSpedSitNot.AsString = '00' Then  // Situa��o Normal
    sAux := sAux + Trim( qryMovNotSpedCodPrt.AsString )                        + '|'                            // C�digo do Participante {Existente no Registro 0150} {60}
   Else                                        // Situa��o Cancelada
    sAux := sAux + ''     + '|';

   sAux := sAux + FormatSpace( qryMovNotSpedModelo.AsString, 02 )              + '|';                           // Codigo do Modelo do Documento Fiscal
   sAux := sAux + FormatSpace( qryMovNotSpedSitNot.AsString, 02 )              + '|';                           // C�digo da Situa��o do Documento Fiscal {00=Normal ; 02 = Cancelada}
   sAux := sAux +        Trim( qryMovNotSpedSerie.AsString )                   + '|';                           // S�rie do Documento {03}
   sAux := sAux +     StrZero( qryMovNotSpedCodNot.AsString, 09 )              + '|';                           // N�mero do Documento Fiscal

   if qryMovNotSpedSitNot.AsString = '00' Then  // Situa��o Normal
    Begin
     sAux := sAux + Se( qryMovNotSpedChvNFe.AsString <> '', StrZero( qryMovNotSpedChvNFe.AsString, 44 ), '' )     + '|';  // Chave da Nota Fiscal Eletronica
     sAux := sAux + FormatDateTime( 'ddmmyyyy', qryMovNotSpedDatNot.AsDateTime ) + '|';                         // Inicio das Informa��es
     sAux := sAux + FormatDateTime( 'ddmmyyyy', qryMovNotSpedDatOpe.AsDateTime ) + '|';                         // Final  das Informa��es
     sAux := sAux +    FormatFloat( '0.00', qryMovNotSpedValNot.AsFloat )        + '|';                         // Vlr Total do Doc
     sAux := sAux +    FormatSpace( qryMovNotSpedForPag.AsString, 01 )           + '|';                         // Tipo de Pgto {0=Vista ; 1=Prazo ; 9=Sem Pagamento}
     sAux := sAux +    FormatFloat( '0.00', qryMovNotSpedValDes.AsFloat )        + '|';                         // Vlr Total Desconto
     sAux := sAux + ''      + '|';                                                                              // Abatimento n�o Tributado
     sAux := sAux +    FormatFloat( '0.00', qryMovNotSpedValPro.AsFloat )        + '|';                         // Vlr Total dos Produtos
     sAux := sAux +    FormatSpace( qryMovNotSpedTipFre.AsString, 01 )           + '|';                         // Tipo de Frete {0=Conta de Tercerio ; 1=Emitente ; 2=Destinatario ; 9=Sem Frete}
     sAux := sAux + Se( qryMovNotSpedValFre.AsFloat > 0, FormatFloat( '0.00', qryMovNotSpedValFre.AsFloat ), '' ) + '|';  // Vlr do Frete
     sAux := sAux + ''      + '|';                                                                                // Vlr Seguro
     sAux := sAux + ''      + '|';                                                                                // Vlr Outras Despesas Acessorias

     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110

     //sAux := sAux + Se( qryMovNotSpedBasIcm.AsFloat > 0, FormatFloat( '0.00', qryMovNotSpedBasIcm.AsFloat ), '' ) + '|';  // Vlr Base ICMS
     //sAux := sAux + Se( qryMovNotSpedValIcm.AsFloat > 0, FormatFloat( '0.00', qryMovNotSpedValIcm.AsFloat ), '' ) + '|';  // Vlr ICMS

     sAux := sAux + ''  + '|';  // Vlr Base ICMS
     sAux := sAux + ''  + '|';  // Vlr ICMS

    End
   Else                                     // Situa��o Cancelada
    Begin
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
     sAux := sAux + ''      + '|';
    End;

   sAux   := sAux + ''      + '|';                                                        // Vlr Base Icms ST
   sAux   := sAux + ''      + '|';                                                        // Vlr Icms ST
   sAux   := sAux + ''      + '|';                                                        // Vlr IPI
   sAux   := sAux + ''      + '|';                                                        // Vlr PIS
   sAux   := sAux + ''      + '|';                                                        // Vlr COFINS
   sAux   := sAux + ''      + '|';                                                        // Vlr PIS ST
   sAux   := sAux + ''      + '|';                                                        // Vlr COFINS ST

   WriteLn( F, sAux );

   // 2.3. Registro C140 - Fatura da Nota Fiscal {ForPag = Prazo '1'}

   if( qryMovNotSpedForPag.AsString = '1' ) and ( qryMovNotSpedSitNot.AsString = '00' ) Then  // Situa��o Normal
    Begin

     qryFatNotSped.Close;
      qryFatNotSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
      qryFatNotSped.ParamByName( 'ilCodFor' ).AsInteger  := qryMovNotSpedCodFor.AsInteger;
      qryFatNotSped.ParamByName( 'ilCodNot' ).AsInteger  := qryMovNotSpedCodNot.AsInteger;
     qryFatNotSped.Open;

     iLin      := iLin      + 1;
     iLnG      := iLnG      + 1;

     iTRg_C140 := iTRg_C140 + 1;

     sAux := '|'  + 'C140'                                                 + '|';         // Tipo de Registro
     sAux := sAux + FormatSpace( qryMovNotSpedTipEmt.AsString, 01 )        + '|';         // Emitente do T�tulo  {0=Proprio ; 1=Terceiro}
     sAux := sAux + '00'                                                   + '|';         // Tipo de Titulo {00=Duplicata , 01=Cheque, 02=Promissoria, 03=Recibo, 9=Outros}
     sAux := sAux + ''                                                     + '|';         // Descri��o Complementar do Titulo de Credito {Tamanho Indefinido}

     sAux := sAux + qryMovNotSpedCodNot.AsString                           + '|';         // Numero ou Codigo Identificador do Titulo de Credito
     sAux := sAux + StrZero( IntToStr( qryFatNotSped.RecordCount ), 02 )   + '|';         // Qtdade de Parcelas

     sAux := sAux +    FormatFloat( '0.00', qryMovNotSpedValNot.AsFloat )  + '|';         // Vlr Total dos Titulos

     WriteLn( F, sAux );

     // 2.4. Registro C141 - Vencimento das Faturas da Nota Fiscal {ForPag = Prazo '1'}, Somente para Entradas {Esta Sendo Obrigatorio}

     iTRg := 0;

     While Not qryFatNotSped.Eof Do
      Begin

         iLin      := iLin      + 1;
         iLnG      := iLnG      + 1;
         iTRg      := iTRg      + 1;

         iTRg_C141 := iTRg_C141 + 1;

         sAux := '|'  + 'C141'  + '|';                                                        // Tipo de Registro
         sAux := sAux + StrZero( IntToStr( iTRg ), 02 )                              + '|';   // No. da Parcela a Receber/Pagar
         sAux := sAux + FormatDateTime( 'ddmmyyyy', qryFatNotSpedDatFat.AsDateTime ) + '|';   // Data de Vencimento
         sAux := sAux + FormatFloat( '0.00', qryFatNotSpedValFat.AsFloat )           + '|';   // Valor da Fatura

         WriteLn( F, sAux );

         qryFatNotSped.Next;

      End;

    End;

   // 2.5. Registro C170 - Itens da Nota Fiscal

   iTRg := 0;

   // Obtendo Dados dos Itens da Nota Fiscal

   qryIteNotSped.Close;
    qryIteNotSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
    qryIteNotSped.ParamByName( 'ilCodFor' ).AsInteger  := qryMovNotSpedCodFor.AsInteger;
    qryIteNotSped.ParamByName( 'ilCodNot' ).AsInteger  := qryMovNotSpedCodNot.AsInteger;
   qryIteNotSped.Open;

   While Not qryIteNotSped.Eof Do
    Begin
     iLin      := iLin      + 1;
     iLnG      := iLnG      + 1;
     iTRg      := iTRg      + 1;

     iTRg_C170 := iTRg_C170 + 1;

     sAux := '|'  + 'C170'  + '|';                                                        // 01. Tipo de Registro
     sAux := sAux +     StrZero( IntToStr( iTRg ), 03 )                      + '|';       // 02. No. Sequencial do Item
     sAux := sAux +        Trim( qryIteNotSpedCodPro.AsString )                  + '|';       // 03. Codigo do Item {Existente no Registro 0200} {60}
     sAux := sAux +        Trim( qryIteNotSpedCmpPro.AsString )                  + '|';       // 04. Descri��o Complemente {Tamanho Indefinido}
     sAux := sAux + FormatFloat( '0.00000', qryIteNotSpedQtdPro.AsFloat )        + '|';       // 05. Qtdade
     sAux := sAux +        Trim( qryIteNotSpedCodEmb.AsString )                  + '|';       // 06. Codigo da Embalagen {Existente no Registro 0190} {06}
     sAux := sAux + FormatFloat( '0.00', qryIteNotSpedValPro.AsFloat )           + '|';       // 07. Valor Total do Item
     sAux := sAux + FormatFloat( '0.00', qryIteNotSpedValDes.AsFloat )           + '|';       // 08. Valor do Desconto
     sAux := sAux + FormatSpace( qryIteNotSpedMvmEst.AsString, 01 )              + '|';       // 09. Movimenta Estoque {0=Sim ou 1=Nao}

     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110
     //sAux := sAux +     StrZero( qryIteNotSpedSitTri.AsString, 03 )              + '|';       // 10. Situa��o Tribut�ria
     //sAux := sAux +     StrZero( qryIteNotSpedCodCfo.AsString, 04 )              + '|';       // 11. CFOP
     if qryIteNotSpedValIcm.AsFloat > 0 then begin
       sAux := sAux +     '040'                                                + '|';       // 02. Situa��o Tribut�ria
       if qryMovNotSpedTipNot.AsString = '0' then // entrada
         sAux := sAux +     '1102'                                             + '|'        // 03. CFOP
       else
         sAux := sAux +     '5102'                                             + '|';       // 03. CFOP
     end else begin
       sAux := sAux +     StrZero( qryIteNotSpedSitTri.AsString, 03 )              + '|';       // 10. Situa��o Tribut�ria
       sAux := sAux +     StrZero( qryIteNotSpedCodCfo.AsString, 04 )              + '|';       // 11. CFOP
     end;

     sAux := sAux + ''      + '|';                                                        // 12. Natureza de Opera��o {Existente no Registro 0400}

     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110

     //sAux := sAux + FormatFloat( '0.00', qryIteNotSpedBasIcm.AsFloat )           + '|';       // 13. Vlr da Base ICMS
     //sAux := sAux + FormatFloat( '0.00', qryIteNotSpedAlqIcm.AsFloat )           + '|';       // 14. Aliquota do ICMS
     //sAux := sAux + FormatFloat( '0.00', qryIteNotSpedValIcm.AsFloat )           + '|';       // 15. Vlr do ICMS

     sAux := sAux + ''      + '|';                                                        // 13. Vlr da Base ICMS
     sAux := sAux + ''      + '|';                                                        // 14. Aliquota do ICMS
     sAux := sAux + ''      + '|';                                                        // 15. Vlr do ICMS

     sAux := sAux + ''      + '|';                                                        // 16. VLR_BC_ICMS_ST
     sAux := sAux + ''      + '|';                                                        // 17. ALIQ_ST
     sAux := sAux + ''      + '|';                                                        // 18. VLR_ICMS_ST
     sAux := sAux + ''      + '|';                                                        // 19. Periodo de Apuracao do IPI {0=Mensal e 1=Decendial}
     sAux := sAux + ''      + '|';                                                        // 20. CST_IPI
     sAux := sAux + ''      + '|';                                                        // 21. Codigo Enquadramento do IPI
     sAux := sAux + ''      + '|';                                                        // 22. VLR_BC_IPI
     sAux := sAux + ''      + '|';                                                        // 23. ALIQ_IPI
     sAux := sAux + ''      + '|';                                                        // 24. VLR_IPI
     sAux := sAux + ''      + '|';                                                        // 25. CST_PIS
     sAux := sAux + ''      + '|';                                                        // 26. VLR_BC_PIS
     sAux := sAux + ''      + '|';                                                        // 27. ALIQ_PIS %
     sAux := sAux + ''      + '|';                                                        // 28. QUANT_BC_PIS
     sAux := sAux + ''      + '|';                                                        // 29. ALIQ_PIS $
     sAux := sAux + ''      + '|';                                                        // 30. VLR_PIS
     sAux := sAux + ''      + '|';                                                        // 31. CST_COFINS
     sAux := sAux + ''      + '|';                                                        // 32. VLR_BC_COFINS
     sAux := sAux + ''      + '|';                                                        // 33. ALIQ_COFINS %
     sAux := sAux + ''      + '|';                                                        // 34. QUANT_BC_COFINS
     sAux := sAux + ''      + '|';                                                        // 35. ALIQ_COFINS $
     sAux := sAux + ''      + '|';                                                        // 36. VLR_COFINS
     sAux := sAux + ''      + '|';                                                        // 37. Codigo da Conta Analitica Contabil {Debitada/Creditada}

     WriteLn( F, sAux );

     qryIteNotSped.Next;
    End;

   // 2.6. Registro C190 - Analitico do Documento

   // Obtendo Dados Analitico do Documento

   qryResEst.Close;
    qryResEst.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
    qryResEst.ParamByName( 'ilCodFor' ).AsInteger  := qryMovNotSpedCodFor.AsInteger;
    qryResEst.ParamByName( 'ilCodNot' ).AsInteger  := qryMovNotSpedCodNot.AsInteger;
   qryResEst.Open;

   While Not qryResEst.Eof Do
    Begin
     iLin      := iLin      + 1;
     iLnG      := iLnG      + 1;

     iTRg_C190 := iTRg_C190 + 1;

     sAux := '|'  + 'C190'  + '|';                                                        // 01. Tipo de Registro


     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110
     //sAux := sAux +     StrZero( qryResEstSitTri.AsString, 03 )              + '|';       // 02. Situa��o Tribut�ria
     //sAux := sAux +     StrZero( qryResEstCodCfo.AsString, 04 )              + '|';       // 03. CFOP
     if qryResEstValIcm.AsFloat > 0 then begin
       sAux := sAux +     '040'                                                + '|';       // 02. Situa��o Tribut�ria
       if qryMovNotSpedTipNot.AsString = '0' then // entrada
         sAux := sAux +     '1102'                                             + '|'        // 03. CFOP
       else
         sAux := sAux +     '5102'                                             + '|';       // 03. CFOP
     end else begin
       sAux := sAux +     StrZero( qryResEstSitTri.AsString, 03 )              + '|';       // 02. Situa��o Tribut�ria
       sAux := sAux +     StrZero( qryResEstCodCfo.AsString, 04 )              + '|';       // 03. CFOP
     end;

     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110
     //sAux := sAux + FormatFloat( '0.00', qryResEstAlqIcm.AsFloat )           + '|';       // 04. Aliquota do ICMS
     sAux := sAux + '0'                                                      + '|';       // 04. Aliquota do ICMS

     sAux := sAux + FormatFloat( '0.00', qryResEstValPro.AsFloat )           + '|';       // 05. Valor Total do Item

     // joao batista 28-03-2011
     // campos ser�o apresentados com valor zerado, pq se n�o dever� ser informado na totaliza��o
     // da apura��o do imcs no bloco E110
     //sAux := sAux + FormatFloat( '0.00', qryResEstBasIcm.AsFloat )           + '|';       // 06. Vlr da Base ICMS
     //sAux := sAux + FormatFloat( '0.00', qryResEstValIcm.AsFloat )           + '|';       // 07. Vlr do ICMS
     sAux := sAux + '0'     + '|';                                                        // 06. Vlr da Base ICMS
     sAux := sAux + '0'     + '|';                                                        // 07. Vlr do ICMS

     sAux := sAux + '0'     + '|';                                                        // 08. VLR_BC_ICMS_ST
     sAux := sAux + '0'     + '|';                                                        // 09. VL_ICMS_ST
     sAux := sAux + FormatFloat( '0.00', qryResEstValRed.AsFloat )           + '|';       // 10. Valor n�o Trib. em fun��o da Redu��o
     sAux := sAux + '0'     + '|';                                                        // 11. VLR_IPI
     sAux := sAux + ''      + '|';                                                        // 12. C�digo da Observa��o do Lan�amento fiscal (Campo 02 do Registro 0460) ; By Renildo ; 09.03.2010 ; 11:09

     WriteLn( F, sAux );

     qryResEst.Next;
    End;

   qryMovNotSped.Next;
  End;

 // joao batista 30-03-2011
 // Registro C400 - EQUIPAMENTO ECF (C�DIGO 02 e 2D).
 {  Este registro tem por objetivo identificar os equipamentos de ECF e deve ser informado por todos os contribuintes
    que utilizem tais equipamentos na emiss�o de documentos fiscais. }

 //qryEcfSped.close;
 // qryEcfSped.ParamByName( 'ilCodEmp' ).AsInteger   := ipCodEmp;
 //qryEcfSped.Open;
 //qryEcfSped.First;

 qryEcfSped.close;
 qryEcfSped.SQL.Clear;
 qryEcfSped.SQL.Add('Select                                                      ' );
 qryEcfSped.SQL.Add('  Distinct IdTabEcf,                                        ' );
 qryEcfSped.SQL.Add('  CodECFp  = substring ( M.IdTabEcf, 18, 3),                ' );
 qryEcfSped.SQL.Add('  CodECFf  = substring ( M.IdTabEcf, 1, 20),                ' );
 qryEcfSped.SQL.Add('  Modelo   = ''2D''                                         ' );
 qryEcfSped.SQL.Add('                                                            ' );
 qryEcfSped.SQL.Add('From MovRdz M                                               ' );
 qryEcfSped.SQL.Add('                                                            ' );
 qryEcfSped.SQL.Add('Where                                                       ' );
 qryEcfSped.SQL.Add('  M.IdTabEmp  = ' + inttostr(ipCodEmp)              + ' and ' );
 qryEcfSped.SQL.Add('  M.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );
 qryEcfSped.SQL.Add('                                                            ' );
 qryEcfSped.SQL.Add('Order By                                                    ' );
 qryEcfSped.SQL.Add(' CodEcff                                                    ' );
 qryEcfSped.Open;
 qryEcfSped.First;

 While Not qryEcfSped.Eof Do
    Begin

     iLin      := iLin      + 1;
     iLnG      := iLnG      + 1;

     iTRg_C400 := iTRg_C400 + 1;

     sAux := '|'  + 'C400'                                            + '|';                 // 01. Texto fixo contendo "C400"
     sAux := sAux + qryEcfSpedModelo.AsString                         + '|';                 // 02. C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
     sAux := sAux + FrTelIni.CompECF.ModeloStr                       + '|';                 // 03. Modelo do equipamento
     sAux := sAux + qryEcfSpedCodECFf.AsString                        + '|';                 // 04. N�mero de s�rie de fabrica��o do ECF
     sAux := sAux + qryEcfSpedCodECFp.AsString                        + '|';                 // 05. N�mero do caixa atribu�do ao ECF

     WriteLn( F, sAux );

     // Registro C405 - REDU��O Z (C�DIGO 02 e 2D).
     {
     Este registro deve ser apresentado com as informa��es da Redu��o Z de cada equipamento em funcionamento na
     data das opera��es de venda � qual se refere a redu��o. Inclui todos os documentos fiscais totalizados na Redu��o Z,
     inclusive as opera��es de venda realizadas durante o per�odo de toler�ncia do Equipamento ECF.
     }

     // joao batista 01-04-2011 - desativado, pq n�o traz nenhum registro. bug n�o identificado.
     {
     qryReducaoZSped.close;
      qryReducaoZSped.ParamByName( 'ilIdTabEmp' ).AsInteger := ipCodEmp;
      qryReducaoZSped.ParamByName( 'slIdTabEcf' ).AsString  := qryEcfSped.FieldByName('IdTabEcf').AsString;
      qryReducaoZSped.ParamByName( 'dlDatIni' ).AsDateTime  := dlDatIni;
      qryReducaoZSped.ParamByName( 'dlDatFin' ).AsDateTime  := dlDatFin;
     qryReducaoZSped.Open;
     qryReducaoZSped.First;
     }

     qryReducaoZSped.close;
     qryReducaoZSped.SQL.Clear;
     qryReducaoZSped.SQL.Add('Select                                             ' );
     qryReducaoZSped.SQL.Add('  DatEmi   = M.DatMov,                             ' );
     qryReducaoZSped.SQL.Add('  CodECFp  = substring ( M.IdTabEcf, 18, 3),       ' );
     qryReducaoZSped.SQL.Add('  CodECFf  = substring ( M.IdTabEcf, 1, 20),       ' );
     qryReducaoZSped.SQL.Add('  Modelo   = ''2D'',                               ' );
     qryReducaoZSped.SQL.Add('  DocIni   = M.CooIni,                             ' );
     qryReducaoZSped.SQL.Add('  DocFin   = M.CooFin,                             ' );
     qryReducaoZSped.SQL.Add('  ReducaoZ = M.Crz,                                ' );
     qryReducaoZSped.SQL.Add('  GTRnc    = M.Cro,                                ' );
     qryReducaoZSped.SQL.Add('  GTIni    = M.ValBru,                             ' );
     qryReducaoZSped.SQL.Add('  GTFin    = M.ValGtot                             ' );
     qryReducaoZSped.SQL.Add('From MovRDZ M                                      ' );
     qryReducaoZSped.SQL.Add('Where                                              ' );
     qryReducaoZSped.SQL.Add('      M.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
     qryReducaoZSped.SQL.Add('      M.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
     qryReducaoZSped.SQL.Add('      M.DatMov   >= ' + '''' + DateToStr(dlDatIni) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(dlDatFin) + '''' );

     qryReducaoZSped.Open;
     qryReducaoZSped.First;

      While Not qryReducaoZSped.Eof Do
        Begin

         iLin      := iLin      + 1;
         iLnG      := iLnG      + 1;

         iTRg_C405 := iTRg_C405 + 1;

         sAux := '|'  + 'C405'                                                            + '|';  // 01. Texto fixo contendo "C405"
         sAux := sAux + FormatDateTime( 'ddmmyyyy', qryReducaoZSpedDatEmi.AsDateTime )    + '|';  // 02. Data do movimento a que se refere a Redu��o Z
         sAux := sAux + qryReducaoZSpedGTRnc.AsString                                     + '|';  // 03. Posi��o do Contador de Rein�cio de Opera��o
         sAux := sAux + qryReducaoZSpedReducaoZ.AsString                                  + '|';  // 04. Posi��o do Contador de Redu��o Z
         sAux := sAux + qryReducaoZSpedDocIni.AsString                                    + '|';  // 05. N�mero do Contador de Ordem de Opera��o do �ltimo documento emitido no dia. (N�mero do COO na Redu��o Z)
         sAux := sAux + FormatFloat( '0.00', qryReducaoZSpedGTFin.AsFloat )               + '|';  // 06. Valor do Grande Total final
         sAux := sAux + FormatFloat( '0.00', qryReducaoZSpedGTIni.AsFloat )               + '|';  // 07. Valor da venda bruta

         WriteLn( F, sAux );

         // Registro C420: REGISTRO DOS TOTALIZADORES PARCIAIS DA REDU��O Z (COD 02 e 2D).
         {
         Este registro tem por objetivo discriminar os valores por c�digo de totalizador da Redu��o Z.
         }

         {
         qryTotParRedZSped.Close;
          qryTotParRedZSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
          qryTotParRedZSped.ParamByName( 'slCodEcf' ).AsString   := qryEcfSped.FieldByName('IdTabEcf').AsString;
          qryTotParRedZSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
          qryTotParRedZSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
         qryTotParRedZSped.Open;
         qryTotParRedZSped.First;
         }

         qryTotParRedZSped.Close;
         qryTotParRedZSped.SQL.Clear;
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''Can-T'',                       ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(A.ValCanIcms)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ A                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' A.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' A.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' A.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and A.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By A.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''DT'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(B.ValDesIcms)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ B                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' B.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' B.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' B.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and B.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By B.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''F1'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(C.ValF1_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ C                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' C.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' C.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' C.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and C.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By C.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''F2'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(D.ValF2_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ D                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' D.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' D.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' D.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and D.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By D.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''I1'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(E.ValI1_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ E                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' E.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' E.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' E.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and E.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By E.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''I2'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(F.ValI2_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ F                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' F.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' F.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' F.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and F.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By F.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''N1'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(G.ValN1_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ G                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' G.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' G.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' G.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and G.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By G.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = 0,                               ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = ''N2'',                          ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(H.ValN2_ICMS)                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From MovRDZ H                                ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' H.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' H.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' H.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and H.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By H.IdTabEmp                          ' );
         qryTotParRedZSped.SQL.Add('                                             ' );

         // joao batista 15-08-2011
         // ICMS
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = I.Indice,                        ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = I.Tipo + I.Aliquota,             ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(I.ValBaseCalculo)            ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From IteRdzIcms I                            ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' I.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' I.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' I.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and I.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By I.IdTabEmp, I.Indice, I.Tipo, I.Aliquota  ' );
         qryTotParRedZSped.SQL.Add('                                             ' );

         // joao batista 15-08-2011
         // ISSQN
         qryTotParRedZSped.SQL.Add('Union All                                    ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Select                                       ' );
         qryTotParRedZSped.SQL.Add(' NrTot    = Iss.Indice,                        ' );
         qryTotParRedZSped.SQL.Add(' SitTri   = Iss.Tipo + Iss.Aliquota,             ' );
         qryTotParRedZSped.SQL.Add(' GTPrc    = Sum(Iss.ValBaseCalculo)            ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('From IteRdzIssqn Iss                            ' );
         qryTotParRedZSped.SQL.Add('                                             ' );
         qryTotParRedZSped.SQL.Add('Where                                        ' );
         qryTotParRedZSped.SQL.Add(' Iss.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryTotParRedZSped.SQL.Add(' Iss.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryTotParRedZSped.SQL.Add(' Iss.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and Iss.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryTotParRedZSped.SQL.Add('Group By Iss.IdTabEmp, Iss.Indice, Iss.Tipo, Iss.Aliquota  ' );
         qryTotParRedZSped.SQL.Add('                                             ' );

         qryTotParRedZSped.SQL.Add('Order by                                     ' );
         qryTotParRedZSped.SQL.Add(' Sittri                                      ' );

         qryTotParRedZSped.Open;
         qryTotParRedZSped.First;

          While Not qryTotParRedZSped.Eof Do
            Begin

             if qryTotParRedZSpedGTPrc.AsFloat > 0 then begin

               iLin      := iLin      + 1;
               iLnG      := iLnG      + 1;

               iTRg_C420 := iTRg_C420 + 1;

               sAux := '|'  + 'C420'                                                 + '|';  // 01. Texto fixo contendo "C420"

               if qryTotParRedZSpedNrTot.AsInteger <> 0 then                                 // 02. C�digo do totalizador, conforme Tabela 4.4.6
                 sAux := sAux + StrZero(qryTotParRedZSpedNrTot.AsString, 2) + Trim( qryTotParRedZSpedSitTri.AsString ) + '|'
               else
                 sAux := sAux + Trim( qryTotParRedZSpedSitTri.AsString )             + '|';

               sAux := sAux + FormatFloat( '0.00', qryTotParRedZSpedGTPrc.AsFloat )  + '|';  // 03. Valor acumulado no totalizador, relativo � respectiva Redu��o Z.

               if qryTotParRedZSpedNrTot.AsInteger <> 0 then                                 // OC // 04. N�mero do totalizador quando ocorrer mais de uma situa��o com a mesma carga tribut�ria efetiva
                 sAux := sAux + StrZero(qryTotParRedZSpedNrTot.AsString, 2)          + '|'
               else
                 sAux := sAux + ''                                                   + '|';

               sAux := sAux + ''                                                     + '|';  // OC // 05. Descri��o da situa��o tribut�ria relativa ao totalizador parcial, quando houver mais de um com a mesma carga tribut�ria efetiva.

               WriteLn( F, sAux );

             end;

             qryTotParRedZSped.Next;

            End;


         // Registro C425 - RESUMO DE ITENS DO MOVIMENTO DI�RIO (C�DIGO 02 e 2D).
         {
         Este registro tem por objetivo identificar os produtos comercializados na data da movimenta��o relativa � Redu��o Z
         informada, sendo obrigat�rio, quando os totalizadores forem iguais a xxTnnnn, Tnnnn, Fn, In, Nn.
         }

         {
         qryIteMovDiaSped.Close;
          qryIteMovDiaSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
          qryIteMovDiaSped.ParamByName( 'slCodEcf' ).AsString   := qryEcfSped.FieldByName('IdTabEcf').AsString;
          qryIteMovDiaSped.ParamByName( 'dlDatLim' ).AsDateTime := dlDatFin;
          qryIteMovDiaSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
          qryIteMovDiaSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
         qryIteMovDiaSped.Open;
         qryIteMovDiaSped.First;
         }

         qryIteMovDiaSped.Close;
         qryIteMovDiaSped.SQL.Clear;
         qryIteMovDiaSped.SQL.Add('Select                                        ' );
         //qryIteMovDiaSped.SQL.Add(' CodPro      = cast(P.IdTabPro as Varchar),   ' );
         qryIteMovDiaSped.SQL.Add(' CodPro      = P.CodGtin,                     ' );
         qryIteMovDiaSped.SQL.Add(' Unidade     = E.IdTabUnd,                    ' );
         qryIteMovDiaSped.SQL.Add(' QtdIvt      = cast( dbo.fn_Estoque( :IdTabEmp, P.IdTabPro, :DataIni, :DataFim, ''D'' ) as decimal(13,3)), ' );
         qryIteMovDiaSped.SQL.Add(' VlrUnit     = P.ValorCusto,                  ' );
         qryIteMovDiaSped.SQL.Add(' VlrItem     = P.ValorCusto * cast( dbo.fn_Estoque( :IdTabEmp, P.IdTabPro, :DataIni, :DataFim, ''D'' ) as decimal(13,3))  ' );
         qryIteMovDiaSped.SQL.Add('                                              ' );
         qryIteMovDiaSped.SQL.Add('From                                          ' );
         qryIteMovDiaSped.SQL.Add(' TabPro P                                     ' );
         qryIteMovDiaSped.SQL.Add(' join TabEmb E On E.IdTabEmb = P.IdTabEmb     ' );
         qryIteMovDiaSped.SQL.Add('                                              ' );
         qryIteMovDiaSped.SQL.Add('Where                                         ' );
         qryIteMovDiaSped.SQL.Add('                                              ' );
         qryIteMovDiaSped.SQL.Add(' dbo.fn_Estoque( :IdTabEmp, P.IdTabPro, :DataIni, :DataFim, ''D'' ) > 0 and                      ' );
         qryIteMovDiaSped.SQL.Add(' P.IdTabPro In                                ' );
         qryIteMovDiaSped.SQL.Add('                  ( Select                    ' );
         qryIteMovDiaSped.SQL.Add('                       I.IdTabPro             ' );
         qryIteMovDiaSped.SQL.Add('                     From MovCNF M            ' );
         qryIteMovDiaSped.SQL.Add('                       Join TabEmp E On M.IdTabEmp = E.IdTabEmp                      ' );
         qryIteMovDiaSped.SQL.Add('                       Join IteCNF I On M.IdTabEmp = I.IdTabEmp And M.CCF = I.CCF    ' );
         qryIteMovDiaSped.SQL.Add('                     Where                                                           ' );
         qryIteMovDiaSped.SQL.Add('                       M.IdTabEmp = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryIteMovDiaSped.SQL.Add('                       M.IdTabEcf = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryIteMovDiaSped.SQL.Add('                       M.DatMov  >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryIteMovDiaSped.SQL.Add('                   )                          ' );
         qryIteMovDiaSped.SQL.Add('Order By                                      ' );
         qryIteMovDiaSped.SQL.Add(' P.IdTabPro                                   ' );

         qryIteMovDiaSped.ParamByName( 'IdTabEmp' ).AsInteger := Empresa.ipIdTabEmp;
         qryIteMovDiaSped.ParamByName( 'DataIni' ).AsDateTime := qryReducaoZSpedDatEmi.AsDateTime;
         qryIteMovDiaSped.ParamByName( 'DataFim' ).AsDateTime := qryReducaoZSpedDatEmi.AsDateTime;

         qryIteMovDiaSped.Open;
         qryIteMovDiaSped.First;

          While Not qryIteMovDiaSped.Eof Do
            Begin

             iLin      := iLin      + 1;
             iLnG      := iLnG      + 1;

             iTRg_C425 := iTRg_C425 + 1;

             sAux := '|'  + 'C425'                                                 + '|';  // 01. Texto fixo contendo "C425"
             sAux := sAux + Trim( qryIteMovDiaSpedCodPro.AsString )                + '|';  // 02. C�digo do item (campo 02 do Registro 0200)
             sAux := sAux + FormatFloat( '0.000', qryIteMovDiaSpedQtdIvt.AsFloat ) + '|';  // 03. Quantidade acumulada do item
             sAux := sAux + Trim( qryIteMovDiaSpedUnidade.AsString )               + '|';  // 04. Unidade do item (Campo 02 do registro 0190)
             sAux := sAux + FormatFloat( '0.00', qryIteMovDiaSpedVlrItem.AsFloat ) + '|';  // 05. Valor acumulado do item
             sAux := sAux + ''                                                     + '|';  // OC // 06. Valor do PIS
             sAux := sAux + ''                                                     + '|';  // OC // 07. Valor da COFINS

             WriteLn( F, sAux );

             qryIteMovDiaSped.Next;

            End;

         {
         Regra geral, o perfil �A� determina a apresenta��o dos registros mais detalhados e o perfil �B�
         trata as informa��es de forma sint�tica (totaliza��es por per�odo:
         por exemplo, di�rio e mensal). O perfil �C�, embora existente no leiaute, ser� implementado futuramente.
         }
         if Empresa.spPerfilEFD = 'A' then begin

           // Registro C460: DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D).
           {
           Este registro deve ser apresentado para a identifica��o dos documentos fiscais emitidos pelos usu�rios de
           equipamentos ECF, que foram totalizados na Redu��o Z.
           Para cupom fiscal cancelado, informar somente os campos COD_MOD, COD_SIT e NUM_DOC, sem os
           registros filhos.
           }
           // COD_SIT = '00' - Documento regular; COD_SIT = '02' - Documento cancelado.

           {
           qryDocFisSped.Close;
            qryDocFisSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
            qryDocFisSped.ParamByName( 'slCodEcf' ).AsString   := qryEcfSped.FieldByName('IdTabEcf').AsString;
            qryDocFisSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
            qryDocFisSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
           qryDocFisSped.Open;
           qryDocFisSped.First;
           }
           qryDocFisSped.Close;
           qryDocFisSped.SQL.Clear;
           qryDocFisSped.SQL.Add('Select                                           ' );
           qryDocFisSped.SQL.Add('  CodMod  = ''2D'',                              ' );
           qryDocFisSped.SQL.Add('  CodSit  = Case When M.IndicadorCancelamento = ''N'' Then ''00'' Else ''02'' End, ' );
           qryDocFisSped.SQL.Add('  NumDoc  = M.CCF,                               ' );
           qryDocFisSped.SQL.Add('  DatDoc  = M.DatMov,                            ' );
           qryDocFisSped.SQL.Add('  VlrDoc  = M.ValTotal,                          ' );
           qryDocFisSped.SQL.Add('  CpfCnpj = P.CpfCnpj,                           ' );
           qryDocFisSped.SQL.Add('  NomeAdq = P.RazaoSocial                        ' );
           qryDocFisSped.SQL.Add('from MovCnf M                                    ' );
           qryDocFisSped.SQL.Add('  left join TabPes P on M.IdTabPes = P.IdTabPes  ' );
           qryDocFisSped.SQL.Add('where                                            ' );
           //qryDocFisSped.SQL.Add('  M.ValTotal > 0 and                             ' );
           qryDocFisSped.SQL.Add('  M.IdTabEmp = ' + inttostr(ipCodEmp)                                        + ' and ' );
           qryDocFisSped.SQL.Add('  M.IdTabEcf = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
           qryDocFisSped.SQL.Add('  M.DatMov  >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
           qryDocFisSped.SQL.Add('                                                 ' );
           qryDocFisSped.SQL.Add('order by                                         ' );
           qryDocFisSped.SQL.Add('  NumDoc                                         ' );

           qryDocFisSped.Open;
           qryDocFisSped.First;

            While Not qryDocFisSped.Eof Do
              Begin

               iLin      := iLin      + 1;
               iLnG      := iLnG      + 1;

               iTRg_C460 := iTRg_C460 + 1;

               sAux := '|'  + 'C460'                                                      + '|';  // 01. Texto fixo contendo "C460"

               sAux := sAux + qryDocFisSpedCodMod.AsString + '|'; // 02. C�digo do modelo do documento fiscal, conforme a Tabela 4.1.1
               sAux := sAux + qryDocFisSpedCodSit.AsString + '|'; // 03. C�digo da situa��o do documento fiscal, conforme a Tabela 4.1.2
               sAux := sAux + qryDocFisSpedNumDoc.AsString + '|'; // 04. N�mero do documento fiscal (COO)

               if (qryDocFisSpedCodSit.AsString = '00') and (qryDocFisSpedVlrDoc.AsFloat > 0) then begin  // SitDoc = Regular
                 sAux := sAux + FormatDateTime( 'ddmmyyyy', qryDocFisSpedDatDoc.AsDateTime) + '|'; // 05. Data da emiss�o do documento fiscal
                 sAux := sAux + FormatFloat( '0.00', qryDocFisSpedVlrDoc.AsFloat)           + '|'; // 06. Valor total do documento fiscal
                 sAux := sAux + ''                                                          + '|'; // OC // 07. Valor do PIS
                 sAux := sAux + ''                                                          + '|'; // OC // 08. Valor da COFINS
                 sAux := sAux + OnlyNumbers( qryDocFisSpedCpfCnpj.AsString )                + '|'; // OC // 09. CPF ou CNPJ do adquirente
                 sAux := sAux + Trim( qryDocFisSpedNomeAdq.AsString )                       + '|'; // OC // 10. Nome do adquirente
               end else begin
                 sAux := sAux + ''                                                          + '|'; // 05. Data da emiss�o do documento fiscal
                 sAux := sAux + ''                                                          + '|'; // 06. Valor total do documento fiscal
                 sAux := sAux + ''                                                          + '|'; // 07. Valor do PIS
                 sAux := sAux + ''                                                          + '|'; // 08. Valor da COFINS
                 sAux := sAux + ''                                                          + '|'; // 09. CPF ou CNPJ do adquirente
                 sAux := sAux + ''                                                          + '|'; // 10. Nome do adquirente
               end;

               WriteLn( F, sAux );

               // Registro C470: ITENS DO DOCUMENTO FISCAL EMITIDO POR ECF (C�DIGO 02 e 2D).
               {
               Este registro deve ser apresentado para informar os itens dos documentos fiscais emitidos pelos usu�rios de
               equipamentos ECF, que foram totalizados na Redu��o Z.
               }

               {
               qryIteDocFisSped.Close;
                qryIteDocFisSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
                qryIteDocFisSped.ParamByName( 'slCodEcf' ).AsString   := qryEcfSped.FieldByName('IdTabEcf').AsString;
                qryIteDocFisSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
                qryIteDocFisSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
                qryIteDocFisSped.ParamByName( 'ilCCF' ).AsInteger     := qryDocFisSped.FieldByName('NumDoc').AsInteger;
               qryIteDocFisSped.Open;
               qryIteDocFisSped.First;
               }

               qryIteDocFisSped.Close;
               qryIteDocFisSped.SQL.Clear;
               qryIteDocFisSped.SQL.Add('Select                                     ' );
               qryIteDocFisSped.SQL.Add('  CodItem    = I.IdTabPro,                 ' );
               qryIteDocFisSped.SQL.Add('  QtdItem    = I.QtdePro,                  ' );
               qryIteDocFisSped.SQL.Add('  QtdCanItem = I.QtdeCancelada,            ' );
               qryIteDocFisSped.SQL.Add('  Unidade    = E.IdTabUnd,                 ' );
               qryIteDocFisSped.SQL.Add('  VlrItem    = ((I.QtdePro * I.ValPro) - I.ValDes) + I.ValAcr, ' );
               qryIteDocFisSped.SQL.Add('  CodStb     = S.IdTabStb,                                     ' );
               qryIteDocFisSped.SQL.Add('  CodCfo     = dbo.fn_OnlyNumbers( I.IdTabCfo ),               ' );
               qryIteDocFisSped.SQL.Add('  AliqIcms   = I.Aliquota                                      ' );
               qryIteDocFisSped.SQL.Add('                                                               ' );
               qryIteDocFisSped.SQL.Add('From IteCNF I                                                  ' );
               qryIteDocFisSped.SQL.Add('  Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.IdTabEcf = M.IdTabEcf and I.CCF = M.CCF ' );
               qryIteDocFisSped.SQL.Add('  Join TabPro P On I.IdTabPro = P.IdTabPro                     ' );
               qryIteDocFisSped.SQL.Add('  join TabEmb E On P.IdTabEmb = E.IdTabEmb                     ' );

               // joao batista 07/11/2011
               qryIteDocFisSped.SQL.Add('  Join TabTrb T On (I.IdTabTrb = T.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

               qryIteDocFisSped.SQL.Add('  Join TabStb S On T.IdTabStb = S.IdTabStb                     ' );
               qryIteDocFisSped.SQL.Add('                                                               ' );
               qryIteDocFisSped.SQL.Add('Where                                                          ' );
               qryIteDocFisSped.SQL.Add('  M.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
               qryIteDocFisSped.SQL.Add('  M.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
               qryIteDocFisSped.SQL.Add('  M.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and' );
               qryIteDocFisSped.SQL.Add('  M.CCF       = ' + inttostr(qryDocFisSped.FieldByName('NumDoc').AsInteger) );
               qryIteDocFisSped.SQL.Add('                                                               ' );
               qryIteDocFisSped.SQL.Add('Order by                                                       ' );
               qryIteDocFisSped.SQL.Add('  I.IdTabPro                                                   ' );

               qryIteDocFisSped.Open;
               qryIteDocFisSped.First;

                While Not qryIteDocFisSped.Eof Do
                  Begin

                   iLin      := iLin      + 1;
                   iLnG      := iLnG      + 1;

                   iTRg_C470 := iTRg_C470 + 1;

                   sAux := '|'  + 'C470'                                                      + '|';  // 01. Texto fixo contendo "C470"

                   sAux := sAux + qryIteDocFisSpedCodItem.AsString                            + '|'; // 02. C�digo do item (campo 02 do Registro 0200)
                   sAux := sAux + FormatFloat( '0.000', qryIteDocFisSpedQtdItem.AsFloat)      + '|'; // 03. Quantidade do item
                   sAux := sAux + iif(qryIteDocFisSpedQtdCanItem.AsFloat > 0, FormatFloat( '0.000', qryIteDocFisSpedQtdCanItem.AsFloat), '') + '|'; // OC // 04. Quantidade cancelada, no caso de cancelamento parcial de item
                   sAux := sAux + qryIteDocFisSpedUnidade.AsString                            + '|'; // 05. Unidade do item (Campo 02 do registro 0190)
                   sAux := sAux + FormatFloat( '0.00', qryIteDocFisSpedVlrItem.AsFloat)       + '|'; // 06. Valor total do item
                   sAux := sAux + qryIteDocFisSpedCodStb.AsString                             + '|'; // 07. C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1.
                   sAux := sAux + qryIteDocFisSpedCodCfo.AsString                             + '|'; // 08. C�digo Fiscal de Opera��o e Presta��o
                   sAux := sAux + iif( qryIteDocFisSpedAliqIcms.AsFloat > 0, FormatFloat( '0.00', qryIteDocFisSpedAliqIcms.AsFloat), '')      + '|'; // OC // 09. Al�quota do ICMS � Carga tribut�ria efetiva em percentual
                   sAux := sAux + ''                                                          + '|'; // OC // 10. Valor do PIS
                   sAux := sAux + ''                                                          + '|'; // OC // 11. Valor da COFINS

                   WriteLn( F, sAux );

                   qryIteDocFisSped.Next;

                  End;

               qryDocFisSped.Next;

              End;

         end;

        // Registro C490: REGISTRO ANAL�TICO DO MOVIMENTO DI�RIO (C�DIGO 02 e 2D).
        {
        Este registro tem por objetivo representar a escritura��o dos documentos fiscais emitidos por ECF e totalizados
        pela combina��o de CST, CFOP e Al�quota.
        }

         {
         qryResDocFisSped.Close;
          qryResDocFisSped.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
          qryResDocFisSped.ParamByName( 'slCodEcf' ).AsString   := qryEcfSped.FieldByName('IdTabEcf').AsString;
          qryResDocFisSped.ParamByName( 'dlDatIni' ).AsDateTime := dlDatIni;
          qryResDocFisSped.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
         qryResDocFisSped.Open;
         qryResDocFisSped.First;
         }

         qryResDocFisSped.Close;
         qryResDocFisSped.SQL.Clear;
         qryResDocFisSped.SQL.Add('Select                                        ' );
         qryResDocFisSped.SQL.Add('  SitTri = T.IdTabStb,                        ' );
         qryResDocFisSped.SQL.Add('  CodCfo = dbo.fn_OnlyNumbers( I.IdTabCfo ),  ' );
         qryResDocFisSped.SQL.Add('  AlqIcm = I.Aliquota,                        ' );
         qryResDocFisSped.SQL.Add('  ValPro = Sum( ( I.ValPro * I.QtdePro ) - I.ValDes ),               ' );
         qryResDocFisSped.SQL.Add('  BasIcm = Sum( ( I.QtdePro * I.ValPro ) ),                          ' );
         qryResDocFisSped.SQL.Add('  ValIcm = Sum(  ( ( I.QtdePro * I.ValPro ) * I.Aliquota / 100 ) )   ' );
         qryResDocFisSped.SQL.Add('                                                                     ' );
         qryResDocFisSped.SQL.Add('From IteCNF I                                                        ' );
         qryResDocFisSped.SQL.Add('  Join MovCNF M On I.IdTabEmp = M.IdTabEmp and I.CCF = M.CCF         ' );
         qryResDocFisSped.SQL.Add('  Join TabPro P On I.IdTabPro = P.IdTabPro                           ' );

         // joao batista 07/11/2011
         qryResDocFisSped.SQL.Add('  Join TabTrb T On (I.IdTabTrb = T.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

         qryResDocFisSped.SQL.Add('                                                                     ' );
         qryResDocFisSped.SQL.Add('Where                                                                ' );
         qryResDocFisSped.SQL.Add('  M.IdTabEmp  = ' + inttostr(ipCodEmp)                                        + ' and ' );
         qryResDocFisSped.SQL.Add('  M.IdTabEcf  = ' + '''' + qryEcfSped.FieldByName('IdTabEcf').AsString + '''' + ' and ' );
         qryResDocFisSped.SQL.Add('  M.DatMov   >= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' + ' and M.DatMov <= ' + '''' + DateToStr(qryReducaoZSpedDatEmi.AsDateTime) + '''' );
         qryResDocFisSped.SQL.Add('                                              ' );
         qryResDocFisSped.SQL.Add('Group By                                      ' );
         qryResDocFisSped.SQL.Add('  T.IdTabStb,                                 ' );
         qryResDocFisSped.SQL.Add('  I.IdTabCfo,                                 ' );
         qryResDocFisSped.SQL.Add('  I.Aliquota                                  ' );

         qryResDocFisSped.Open;
         qryResDocFisSped.First;

          While Not qryResDocFisSped.Eof Do
            Begin

             iLin      := iLin      + 1;
             iLnG      := iLnG      + 1;

             iTRg_C490 := iTRg_C490 + 1;

             sAux := '|'  + 'C490'                                                      + '|';  // 01. Texto fixo contendo "C490"

             sAux := sAux + qryResDocFisSpedSitTri.AsString                             + '|'; // 02. C�digo da Situa��o Tribut�ria, conforme a Tabela indicada no item 4.3.1
             sAux := sAux + qryResDocFisSpedCodCfo.AsString                             + '|'; // 03. C�digo Fiscal de Opera��o e Presta��o
             sAux := sAux + iif( qryResDocFisSpedAlqIcm.AsFloat > 0, FormatFloat( '0.00', qryResDocFisSpedAlqIcm.AsFloat), '')   + '|'; // OC // 04. Al�quota do ICMS
             sAux := sAux + FormatFloat( '0.00', qryResDocFisSpedValPro.AsFloat)        + '|'; // 05. Valor da opera��o correspondente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS, inclu�das as despesas acess�rias e acr�scimos
             sAux := sAux + FormatFloat( '0.00', qryResDocFisSpedBasIcm.AsFloat)        + '|'; // 06. Valor acumulado da base de c�lculo do ICMS, referente � combina��o de CST_ICMS, CFOP, e al�quota do ICMS.
             sAux := sAux + FormatFloat( '0.00', qryResDocFisSpedValIcm.AsFloat)        + '|'; // 07. Valor acumulado do ICMS, referente � combina��o de CST_ICMS, CFOP e al�quota do ICMS.
             sAux := sAux + ''                                                          + '|'; // OC // 08. C�digo da observa��o do lan�amento fiscal (campo 02 do Registro 0460)

             WriteLn( F, sAux );

             qryResDocFisSped.Next;

            End;

         qryReducaoZSped.Next;

        End;

      qryEcfSped.Next;

    End;

 // 2.7. Registro C990 - Encerramento do BLOCO C

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'C990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco 0

 WriteLn( F, sAux );

 // 3. BLOCO D - Documentos Fiscais II - Servi�os (ICMS) {NF_SRV_TRANSP_07 ; CNH_FRETE_ROD_08 ; AVULSO_8B ; AQUAVIARIO_09 ; AEREO_10 ; FERROV_11 ; _26 ; _27 ; CT-e_57}

 // 3.1. Registro D001 - Abertura do BLOCO D

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'D001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '1'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 3.2. Registro D990 - Encerramento do BLOCO D

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'D990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // 4. BLOCO E - Apura��o do ICMS e do IPI

 // 4.1. Registro E001 - Abertura do BLOCO E

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'E001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 4.2. Registro E100 - Periodo da apura��o do ICMS

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'E100'  + '|';                                                            // Tipo de Registro
 sAux := sAux + FormatDateTime( 'ddmmyyyy', dlDatIni ) + '|';                             // Inicio da Apura��o
 sAux := sAux + FormatDateTime( 'ddmmyyyy', dlDatFin ) + '|';                             // Final  da Apura��o

 WriteLn( F, sAux );

 // 4.3. Registro E110 - Apura��o do ICMS - Opera��es Pr�prias

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'E110' + '|';                                                            // Tipo de Registro
 sAux := sAux + '0'    + '|';                                                            // VL_TOT_DEBITOS
 sAux := sAux + '0'    + '|';                                                            // VL_AJ_DEBITOS
 sAux := sAux + '0'    + '|';                                                            // VL_TOT_AJ_DEBITOS
 sAux := sAux + '0'    + '|';                                                            // VL_ESTORNOS_CRED
 sAux := sAux + '0'    + '|';                                                            // VL_TOT_CREDITOS
 sAux := sAux + '0'    + '|';                                                            // VL_AJ_CREDITOS
 sAux := sAux + '0'    + '|';                                                            // VL_TOT_AJ_CREDITOS
 sAux := sAux + '0'    + '|';                                                            // VL_ESTORNOS_DEB
 sAux := sAux + '0'    + '|';                                                            // VL_SLD_CREDOR_ANT
 sAux := sAux + '0'    + '|';                                                            // VL_SLD_APURADO
 sAux := sAux + '0'    + '|';                                                            // VL_TOT_DEB
 sAux := sAux + '0'    + '|';                                                            // VL_ICMS_RECOLHER
 sAux := sAux + '0'    + '|';                                                            // VL_SLD_CREDOR_TRANSPORTAR
 sAux := sAux + '0'    + '|';                                                            // DEB_ESP

 WriteLn( F, sAux );

 // 4.n. Registro E990 - Encerramento do BLOCO E

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'E990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // joao batista 24-03-2011
 // BLOCO G - CONTROLE DO CR�DITO DE ICMS DO ATIVO PERMANENTE - CIAP
 // Registro G001 - Abertura do BLOCO G

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'G001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '1'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

  // 3.2. Registro G990 - Encerramento do BLOCO G

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'G990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // 5. BLOCO H - Invent�rio F�sico

 // 5.1. Registro H001 - Abertura do BLOCO H

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'H001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 5.2. Registro H005 - Totais do Invent�rio ; By Renildo ; 09.03.2010 ; 15:36

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 qryInvTot.Close;
  qryInvTot.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryInvTot.ParamByName( 'dlDatLim' ).AsDateTime := dlDatFin;
  qryInvTot.ParamByName( 'dlDatIni' ).AsDateTime := dlDatFin;
  qryInvTot.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryInvTot.Open;

 sAux := '|'  + 'H005'  + '|';                                                            // Tipo de Registro
 sAux := sAux + FormatDateTime( 'ddmmyyyy', dlDatFin )             + '|';                 // Data do Invent�rio
 sAux := sAux + FormatFloat( '0.00', qryInvTotVlrTotIvt.AsFloat )  + '|';                 // Valor Total do Estoque

 WriteLn( F, sAux );

 // 5.3 Registro H010 - Invent�rio {Por Produto} ; By Renildo ; 09.03.2010 ; 15:42
 // joao batista 23-03-2011

 qryInventario.Close;
  qryInventario.ParamByName( 'ilCodEmp' ).AsInteger  := ipCodEmp;
  qryInventario.ParamByName( 'dlDatLim' ).AsDateTime := dlDatFin;
  qryInventario.ParamByName( 'dlDatIni' ).AsDateTime := dlDatFin;
  qryInventario.ParamByName( 'dlDatFin' ).AsDateTime := dlDatFin;
 qryInventario.Open;

 While Not qryInventario.Eof Do
  Begin
   iLin      := iLin      + 1;
   iLnG      := iLnG      + 1;

   iTRg_H010 := iTRg_H010 + 1;

   sAux := '|'  + 'H010'  + '|';                                                        // 01. Tipo de Registro
   sAux := sAux + Trim( qryInventarioCodPro.AsString )                     + '|';       // 02. C�digo Item
   sAux := sAux + Trim( qryInventarioUnidade.AsString )                    + '|';       // 03. Unidade
   sAux := sAux + FormatFloat( '0.000', qryInventarioQtdIvt.AsFloat )      + '|';       // 04. Qtde Item
   sAux := sAux + FormatFloat( '0.000000', qryInventarioVlrUnit.AsFloat )  + '|';       // 05. Vlr Unit�rio Item
   sAux := sAux + FormatFloat( '0.00', qryInventarioVlrItem.AsFloat )      + '|';       // 06. Vlr Item
   sAux := sAux + '0'                                                      + '|';       // 07. Indicador propriedade/posse do item / 0,1,2
   sAux := sAux + ''                                                       + '|';       // 08. C�digo do participante
   sAux := sAux + ''                                                       + '|';       // 09. Descri��o complementar
   sAux := sAux + Trim( qryTabEmpCodCtaInvEFD.AsString )                   + '|';       // 10. C�digo da conta anal�tica cont�bil debitada/creditada

   WriteLn( F, sAux );

   qryInventario.Next;
  End;

 // 5.n. Registro H990 - Encerramento do BLOCO H

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + 'H990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // 6. BLOCO 1 - Outras Informa��es

 // 6.1. Registro 1001 - Abertura do BLOCO 1

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '1001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '1'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 6.2. Registro 1990 - Encerramento do BLOCO 1

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '1990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // 7. BLOCO 9 - Controle e Encerramento do Arquivo Digital

 // 7.1. Registro 9001 - Abertura do BLOCO 9

 iLin := 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9001'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0'     + '|';                                                            // Indicador de Movimento '0=Com Dados ; 1=Sem Dados'

 WriteLn( F, sAux );

 // 7.2. Registro 9900 - Registros do Arquivo {Total de Registros por Tipo}

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 // a. Bloco 0

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0000'  + '|';                                                            // Registro 0000 - Abertura do Arquivo e Identifica��o da Entidade
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0001'  + '|';                                                            // Registro 0001 - Abertura do BLOCO 0
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0005'  + '|';                                                            // Registro 0005 - Dados Complementares da Entidade
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 if qryTabEmpInsEstSbt.AsString <> '' Then
  Begin
   iLin := iLin + 1;
   iLnG := iLnG + 1;

   sAux := '|'  + '9900'  + '|';                                                          // Tipo de Registro
   sAux := sAux + '0015'  + '|';                                                          // Registro 0015 - Dados do Contribuinte Substituto 'Somente Qdo possuir InsEstSbt'
   sAux := sAux + '1'     + '|';                                                          // Total de Registros do Tipo

   WriteLn( F, sAux );
  End;

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0100'  + '|';                                                            // Registro 0100 - Dados do Contabilista
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + '0150'                + '|';                                              // Registro 0150 - Tabela de Cadastro de Participante
 sAux := sAux + IntToStr( iTRg_0150 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + '0190'                + '|';                                              // Registro 0190 - Tabela de Embalagens
 sAux := sAux + IntToStr( iTRg_0190 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + '0200'                + '|';                                              // Registro 0200 - Tabela de Identifica��o do Item
 sAux := sAux + IntToStr( iTRg_0200 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '0990'  + '|';                                                            // Registro 0990 - Encerramento do BLOCO 0
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // b. Bloco C

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'C001'  + '|';                                                            // Registro C001 - Abertura do BLOCO C
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C100'                + '|';                                              // Registro C100 - Notas Fiscais de ICMS/IPI
 sAux := sAux + IntToStr( iTRg_C100 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C140'                + '|';                                              // Registro C140 - Fatura das Notas Fiscais de ICMS/IPI
 sAux := sAux + IntToStr( iTRg_C140 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C141'                + '|';                                              // Registro C141 - Vencimento das Fatura das Notas Fiscais de ICMS/IPI
 sAux := sAux + IntToStr( iTRg_C141 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C170'                + '|';                                              // Registro C170 - Itens da Notas Fiscais de ICMS/IPI
 sAux := sAux + IntToStr( iTRg_C170 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C190'                + '|';                                              // Registro C190 - Resumo Analitico das Notas Fiscais de ICMS/IPI
 sAux := sAux + IntToStr( iTRg_C190 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 // joao batista 30-03-2011
 // inclus�o dos blocos C400 a C490
 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C400'                + '|';                                              // Registro C400 - Resumo Analitico EQUIPAMENTO ECF (C�DIGO 02 e 2D).
 sAux := sAux + IntToStr( iTRg_C400 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );


 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C405'                + '|';                                              // Registro C405
 sAux := sAux + IntToStr( iTRg_C405 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );


 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C420'                + '|';                                              // Registro C420
 sAux := sAux + IntToStr( iTRg_C420 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );


 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C425'                + '|';                                              // Registro C425
 sAux := sAux + IntToStr( iTRg_C425 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 {
 Regra geral, o perfil �A� determina a apresenta��o dos registros mais detalhados e o perfil �B�
 trata as informa��es de forma sint�tica (totaliza��es por per�odo:
 por exemplo, di�rio e mensal). O perfil �C�, embora existente no leiaute, ser� implementado futuramente.
 }
 if Empresa.spPerfilEFD = 'A' then begin

   iLin := iLin + 1;
   iLnG := iLnG + 1;

   sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
   sAux := sAux + 'C460'                + '|';                                              // Registro C460
   sAux := sAux + IntToStr( iTRg_C460 ) + '|';                                              // Total de Registros do Tipo

   WriteLn( F, sAux );


   iLin := iLin + 1;
   iLnG := iLnG + 1;

   sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
   sAux := sAux + 'C470'                + '|';                                              // Registro C470
   sAux := sAux + IntToStr( iTRg_C470 ) + '|';                                              // Total de Registros do Tipo

   WriteLn( F, sAux );

 end;

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'                + '|';                                              // Tipo de Registro
 sAux := sAux + 'C490'                + '|';                                              // Registro C490
 sAux := sAux + IntToStr( iTRg_C490 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );
 //--

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'C990'  + '|';                                                            // Registro C990 - Encerramento do BLOCO C
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // c. Bloco D

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'D001'  + '|';                                                            // Registro D001 - Abertura do BLOCO D
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'D990'  + '|';                                                            // Registro D990 - Encerramento do BLOCO D
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // d. Bloco E

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'E001'  + '|';                                                            // Registro E001 - Abertura do BLOCO E
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'E100'  + '|';                                                            // Registro E100 - Periodo de Apura��o do ICMS
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'E110'  + '|';                                                            // Registro E110 - Apura��o do ICMS - Opera��es Pr�prias
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'E990'  + '|';                                                            // Registro E990 - Encerramento do BLOCO E
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // joao batista 24-03-2011
 // Bloco G

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'G001'  + '|';                                                            // Registro D00G - Abertura do BLOCO G
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'G990'  + '|';                                                            // Registro G990 - Encerramento do BLOCO G
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // e. Bloco H

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'H001'  + '|';                                                            // Registro H001 - Abertura do BLOCO H
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'H005'  + '|';                                                            // Registro H005 - Totais do Invent�rio
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );


 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'H010'  + '|';                                                            // Registro H010 - Totais do Invent�rio
 sAux := sAux + IntToStr( iTRg_H010 ) + '|';                                              // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + 'H990'  + '|';                                                            // Registro H990 - Encerramento do BLOCO H
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // f. Bloco 1

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '1001'  + '|';                                                            // Registro 1001 - Abertura do BLOCO 1
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '1990'  + '|';                                                            // Registro 1990 - Encerramento do BLOCO 1
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 // g. Bloco 9

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '9001'  + '|';                                                            // Registro 9001 - Abertura do BLOCO 9
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '9990'  + '|';                                                            // Registro 9990 - Encerramento do BLOCO 9
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLin := iLin + 1;
 iLnG := iLnG + 1;

 sAux := '|'  + '9900'  + '|';                                                            // Tipo de Registro
 sAux := sAux + '9999'  + '|';                                                            // Registro 9999 - Encerramento do Arquivo Digital
 sAux := sAux + '1'     + '|';                                                            // Total de Registros do Tipo

 WriteLn( F, sAux );

 iLnG := iLnG + 1;

 sAux := '|'  + '9900'           + '|';                                                   // Tipo de Registro
 sAux := sAux + '9900'           + '|';                                                   // Registro 9900 - Totalizador de Registros por Tipo
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Total de Registros do Tipo {Parametrizar ; Adequar Soma}

 WriteLn( F, sAux );

 // 7.3. Registro 9990 - Encerramento do BLOCO 9

 iLin := iLin + 3;  // Era +1, mas devido ao reposicionamento dos registro somou-se 3
 iLnG := iLnG + 1;

 sAux := '|'  + '9990'           + '|';                                                   // Tipo de Registro
 sAux := sAux + IntToStr( iLin ) + '|';                                                   // Qtdade de Linhas do Bloco

 WriteLn( F, sAux );

 // 8. BLOCO 9999 - Encerramento do Arquivo Digital

 // 8.1. Registro 99999 - Encerramento do Arquivo Digital

 iLnG := iLnG + 1;

 sAux := '|'  + '9999'  + '|';                                                            // Tipo de Registro
 sAux := sAux + IntToStr( iLnG ) + '|';                                                   // Qtdade de Linhas do Arquivo

 WriteLn( F, sAux );

 // Fechando Arquivo TXT
 CloseFile( F );

 // Final do Processamento

 // joao batista 12-04-2011
 Try
   FrTelIni.ACBrPAF.SaveFileTXT('Fisco\' + slArquivo);
   Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                 'Local: ' + Dir + '\Fisco\' + slArquivo),'GBPAF');
 Except
   Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                 'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
 End;

end;

procedure TFrTelMen.ExecutaEstoque;

var
  E2: TRegistroE2;
  i: integer;

  // joao batista 08-07-2011
  slTabProMD5 : String;
  slTabStbMD5 : String;
  slTabTrbMD5 : String;

  // joao batista 11-07-2011
  slMovNotMD5 : String;
  slIteNotMD5 : String;

  slMovCnfMD5 : String;
  slIteCnfMD5 : String;

  // joao batista 18-07-2011
  slNotaAlterada : String;

  slCupomAlterado : String;

begin

 // registro E1
 PreencherHeader(FrTelIni.ACBrPAF.PAF_E.RegistroE1); // preencher header do arquivo

 qryTabpro.Close;
 qryTabpro.SQL.Clear;
 qryTabpro.SQL.Add('Select                                                      ');
 qryTabpro.SQL.Add('   P.*,                                                     ');
 qryTabpro.SQL.Add('   U.IdTabUnd,                                              ');
 qryTabpro.SQL.Add('   T.IdTabTrb  as Codigo_Trb,                               ');
 qryTabpro.SQL.Add('   T.Descricao as Descricao_Trb,                            ');
 qryTabpro.SQL.Add('   T.TipTrb,                                                ');
 qryTabpro.SQL.Add('   T.IdTabStb,                                              ');
 qryTabpro.SQL.Add('   T.IcmsFisCI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsFisSI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsJurCI,                                             ');
 qryTabpro.SQL.Add('   T.IcmsJurSI,                                             ');
 qryTabpro.SQL.Add('   T.TabTrbMD5,                                             ');
 qryTabpro.SQL.Add('   S.IdTabStb  as Codigo_STb,                               ');
 qryTabpro.SQL.Add('   S.Descricao as Descricao_Stb,                            ');
 qryTabpro.SQL.Add('   S.TabStbMD5,                                             ');
 qryTabpro.SQL.Add('   Qtde_Est = dbo.fn_Estoque( :IdTabEmp, P.IdTabPro, :DataIni, :DataFim, ''A'' ) ');
 qryTabpro.SQL.Add('From                                                        ');
 qryTabpro.SQL.Add('   TabPro P                                                 ');
 qryTabpro.SQL.Add('   inner join TabGru G on (G.IdTabGru = P.IdTabGru)         ');

 // joao batista 07/11/2011
 qryTabpro.SQL.Add('   inner join TabTrb T on (T.IdTabTrb = G.IdTabTrb) and (T.EstOrg = ' + '''' +  Empresa.spUf + '''' + ') and (T.EstDst = ' + '''' +  Empresa.spUf + '''' + ') ');

 qryTabpro.SQL.Add('   inner join TabStb S on (S.IdTabStb = T.IdTabStb)         ');
 qryTabpro.SQL.Add('   inner join TabEmb E on (E.IdTabEmb = P.IdTabEmb)         ');
 qryTabpro.SQL.Add('   inner join TabUnd U on (U.IdTabUnd = E.IdTabUnd)         ');

 if ProdutoEstoqueParcial <> '' then begin
   qryTabpro.SQL.Add(' Where  P.CodGTIN in ( ' + ProdutoEstoqueParcial + ' ''0'' )   ');
 end;

 qryTabpro.SQL.Add('Order by P.CodGTIN                                           ');

 qryTabpro.ParamByName( 'IdTabEmp' ).AsInteger := Empresa.ipIdTabEmp;

 qryTabpro.ParamByName( 'DataIni' ).AsDateTime := strtodate(datetostr(DataDoServidor));
 qryTabpro.ParamByName( 'DataFim' ).AsDateTime := strtodate(datetostr(DataDoServidor));

 qryTabpro.Active := True;

 if qryTabpro.IsEmpty then begin
  Application.MessageBox( 'N�o existe registro!','GBPAF');
  exit;
 end;

 // registro E2
 FrTelIni.ACBrPAF.PAF_E.RegistroE2.Clear;
 while not qryTabpro.Eof do begin
   E2:=FrTelIni.ACBrPAF.PAF_E.RegistroE2.New;
   E2.COD_MERC := StrZero(qryTabPro.FieldByName('CODGTIN').AsString, 14);
   E2.DESC_MERC:= qryTabPro.FieldByName('Descricao').AsString;

   // joao batista 07-07-2011
   // para atender o BLOCO VII, identificar se o BD foi alterado.

   // md5 produto
   // OBS: deve ser concatenado na mesma ordem da grava��o do registro
   slTabProMD5 :=
                           inttostr(qryTabpro.FieldByName('Idtabpro').AsInteger)            +
                           inttostr(qryTabpro.FieldByName('IdTabGru').AsInteger)            +
                           inttostr(qryTabpro.FieldByName('IdTabPes').AsInteger)            +
                           inttostr(qryTabpro.FieldByName('IdTabEmb').AsInteger)            +
                           inttostr(qryTabpro.FieldByName('TipPro').AsInteger)              +
                           qryTabpro.FieldByName('TipoQtde').AsString                       +
                           inttostr(qryTabpro.FieldByName('IdTabPcsCadastro').AsInteger)    +
                           inttostr(qryTabpro.FieldByName('IdTabUsuCadastro').AsInteger)    +
                           inttostr(qryTabpro.FieldByName('IdTabMot').AsInteger)            +
                           inttostr(qryTabpro.FieldByName('IdTabPcsAlteracao').AsInteger)   +
                           inttostr(qryTabpro.FieldByName('IdTabUsuAlteracao').AsInteger)   +
                           qryTabpro.FieldByName('Descricao').AsString                      +
                           qryTabpro.FieldByName('DscAbv').AsString                         +
                           qryTabpro.FieldByName('Modelo').AsString                         +
                           qryTabpro.FieldByName('Localizacao').AsString                    +
                           qryTabpro.FieldByName('Aplicacao').AsString                      +
                           qryTabpro.FieldByName('Foto').AsString                           +
                           qryTabpro.FieldByName('ClasFiscal').AsString                     +
                           qryTabpro.FieldByName('CodNCM').AsString                         +
                           qryTabpro.FieldByName('CodGTIN').AsString                        +
                           qryTabpro.FieldByName('IAT').AsString                            +
                           qryTabpro.FieldByName('ProdPropria').AsString                    +
                           qryTabpro.FieldByName('HoraCadastro').AsString                   +
                           qryTabpro.FieldByName('Posicao').AsString                        +
                           qryTabpro.FieldByName('HoraPos').AsString                        +
                           qryTabpro.FieldByName('HoraAlteracao').AsString                  +
                           floattostr(qryTabpro.FieldByName('ValorCusto').AsFloat)          +
                           floattostr(qryTabpro.FieldByName('ValorVenda').AsFloat)          +
                           floattostr(qryTabpro.FieldByName('EstoqueMinimo').AsFloat)       +
                           datetostr(qryTabpro.FieldByName('DataCadastro').AsDateTime)      +
                           datetostr(qryTabpro.FieldByName('DataPos').AsDateTime)           +
                           datetostr(qryTabpro.FieldByName('DataAlteracao').AsDateTime);

   FrTelIni.LbMD51.HashString(AnsiString(slTabProMD5));
   FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
   slTabProMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

   // md5 Tributa��es
   // OBS: deve ser concatenado na mesma ordem da grava��o do registro
   slTabTrbMD5 :=
                           inttostr(qryTabpro.FieldByName('Codigo_Trb').AsInteger) +
                           qryTabpro.FieldByName('Descricao_Trb').AsString         +
                           qryTabpro.FieldByName('TipTrb').AsString                +
                           qryTabpro.FieldByName('IdTabStb').AsString              +
                           floattostr(qryTabpro.FieldByName('IcmsFisCI').AsFloat)  +
                           floattostr(qryTabpro.FieldByName('IcmsFisSI').AsFloat)  +
                           floattostr(qryTabpro.FieldByName('IcmsJurCI').AsFloat)  +
                           floattostr(qryTabpro.FieldByName('IcmsJurSI').AsFloat);

   FrTelIni.LbMD51.HashString(AnsiString(slTabTrbMD5));
   FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
   slTabTrbMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

   // md5 Situa��o tribut�ria
   // OBS: deve ser concatenado na mesma ordem da grava��o do registro
   slTabStbMD5 :=
                           qryTabpro.FieldByName('Codigo_STb').AsString            +
                           qryTabpro.FieldByName('Descricao_Stb').AsString;

   FrTelIni.LbMD51.HashString(AnsiString(slTabStbMD5));
   FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
   slTabStbMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

   // joao batista 18-07-2011
   // forma de identifica��o do produto que teve a qtde e a data de estoque alterada

   // ***** nota manual

   slNotaAlterada := 'N';

   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Select                                                        ');
   Query1.SQL.Add(' M.IdTabEmp,                                                  ');
   Query1.SQL.Add(' M.IdTabPes,                                                  ');
   Query1.SQL.Add(' M.NumeroNota,                                                ');
   Query1.SQL.Add(' M.SerieNota,                                                 ');
   Query1.SQL.Add(' M.SubSerieNota,                                              ');
   Query1.SQL.Add(' M.ModeloNota,                                                ');
   Query1.SQL.Add(' M.PosNot,                                                    ');
   Query1.SQL.Add(' M.TipOpe,                                                    ');
   Query1.SQL.Add(' M.IdTabCFO,                                                  ');
   Query1.SQL.Add(' M.DataNota,                                                  ');
   Query1.SQL.Add(' M.DataOpe,                                                   ');
   Query1.SQL.Add(' M.TipEmt,                                                    ');
   Query1.SQL.Add(' M.SitDoc,                                                    ');
   Query1.SQL.Add(' M.TipPag,                                                    ');
   Query1.SQL.Add(' M.ChvNFe,                                                    ');
   Query1.SQL.Add(' M.VlrNota,                                                   ');
   Query1.SQL.Add(' M.VlrDesc,                                                   ');
   Query1.SQL.Add(' M.VlrAbatNt,                                                 ');
   Query1.SQL.Add(' M.VlrMerc,                                                   ');
   Query1.SQL.Add(' M.TipFre,                                                    ');
   Query1.SQL.Add(' M.VlrFrete,                                                  ');
   Query1.SQL.Add(' M.VlrSeguro,                                                 ');
   Query1.SQL.Add(' M.VlrOutras,                                                 ');
   Query1.SQL.Add(' M.VlrBcIcms,                                                 ');
   Query1.SQL.Add(' M.AlqIcms,                                                   ');
   Query1.SQL.Add(' M.VlrIcms,                                                   ');
   Query1.SQL.Add(' M.VlrBcIcmsSt,                                               ');
   Query1.SQL.Add(' M.VlrIcmsSt,                                                 ');
   Query1.SQL.Add(' M.VlrIpi,                                                    ');
   Query1.SQL.Add(' M.VlrPis,                                                    ');
   Query1.SQL.Add(' M.VlrCofins,                                                 ');
   Query1.SQL.Add(' M.VlrPisSt,                                                  ');
   Query1.SQL.Add(' M.VlrCofinsSt,                                               ');
   Query1.SQL.Add(' M.MovNotMD5,                                                 ');
   Query1.SQL.Add(' I.IdTabEmp      as IteNotIdTabEmp,                           ');
   Query1.SQL.Add(' I.IdTabPes      as IteNotIdTabPes,                           ');
   Query1.SQL.Add(' I.NumeroNota    as IteNotNumeroNota,                         ');
   Query1.SQL.Add(' I.IdTabPro      as IteNotIdTabPro,                           ');
   Query1.SQL.Add(' I.SerieNota     as IteNotSerieNota,                          ');
   Query1.SQL.Add(' I.SubSerieNota  as IteNotSubSerieNota,                       ');
   Query1.SQL.Add(' I.ModeloNota    as IteNotModeloNota,                         ');
   Query1.SQL.Add(' I.QtdPro        as IteNotQtdPro,                             ');
   Query1.SQL.Add(' I.VlrPro        as IteNotVlrPro,                             ');
   Query1.SQL.Add(' I.VlrDsc        as IteNotVlrDsc,                             ');
   Query1.SQL.Add(' I.MvmEst        as IteNotMvmEst,                             ');
   Query1.SQL.Add(' I.IdTabStb      as IteNotIdTabStb,                           ');
   Query1.SQL.Add(' I.IdTabCFO      as IteNotIdTabCFO,                           ');
   Query1.SQL.Add(' I.VlrBcIcms     as IteNotVlrBcIcms,                          ');
   Query1.SQL.Add(' I.AlqIcms       as IteNotAlqIcms,                            ');
   Query1.SQL.Add(' I.VlrIcms       as IteNotVlrIcms,                            ');
   Query1.SQL.Add(' I.VlrBcIcmsSt   as IteNotVlrBcIcmsSt,                        ');
   Query1.SQL.Add(' I.AlqIcmsSt     as IteNotAlqIcmsSt,                          ');
   Query1.SQL.Add(' I.VlrIcmsSt     as IteNotVlrIcmsSt,                          ');
   Query1.SQL.Add(' I.VlrBcIpi      as IteNotVlrBcIpi,                           ');
   Query1.SQL.Add(' I.AlqIpi        as IteNotAlqIpi,                             ');
   Query1.SQL.Add(' I.VlrIpi        as IteNotVlrIpi,                             ');
   Query1.SQL.Add(' I.IteNotMD5                                                  ');
   Query1.SQL.Add('                                                              ');
   Query1.SQL.Add('from IteNot I                                                 ');
   Query1.SQL.Add(' Inner Join MovNot M On I.IdTabEmp = M.IdTabEmp and           ');
   Query1.SQL.Add('                        I.IdTabPes = M.IdTabPes and           ');
   Query1.SQL.Add('                        I.NumeroNota = M.NumeroNota           ');
   Query1.SQL.Add('                                                              ');
   Query1.SQL.Add('where                                                         ');
   Query1.SQL.Add(' M.DataOpe  < ' + '''' + DateToStr(DataDoServidor) + '''' +  ' and ');
   Query1.SQL.Add(' M.PosNot   = ''A''                                  and      ');
   Query1.SQL.Add(' M.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp) +  '  and      ');
   Query1.SQL.Add(' I.MvmEst   = ''S''                                  and      ');
   Query1.SQL.Add(' I.IdTabPro = ' + qryTabPro.FieldByName('IdTabPro').AsString   );
   Query1.Open;

   if not Query1.IsEmpty then begin
     while not Query1.Eof do begin

       // movnot
       // OBS: deve ser concatenado na mesma ordem da grava��o do registro
       slMovNotMD5 :=
                      inttostr(Query1.FieldByName('IdTabEmp').AsInteger)           +
                      inttostr(Query1.FieldByName('IdTabPes').AsInteger)           +
                      inttostr(Query1.FieldByName('NumeroNota').AsInteger)         +
                      Query1.FieldByName('SerieNota').AsString                     +
                      Query1.FieldByName('SubSerieNota').AsString                  +
                      Query1.FieldByName('ModeloNota').AsString                    +
                      Query1.FieldByName('PosNot').AsString                        +
                      Query1.FieldByName('ChvNFe').AsString                        +
                      datetostr(Query1.FieldByName('DataNota').AsDateTime)         +
                      datetostr(Query1.FieldByName('DataOpe').AsDateTime)          +
                      Query1.FieldByName('TipOpe').AsString                        +
                      inttostr(Query1.FieldByName('IdTabCFO').AsInteger)           +
                      Query1.FieldByName('TipEmt').AsString                        +
                      Query1.FieldByName('SitDoc').AsString                        +
                      Query1.FieldByName('TipPag').AsString                        +
                      floattostr(Query1.FieldByName('VlrNota').AsFloat)            +
                      floattostr(Query1.FieldByName('VlrDesc').AsFloat)            +
                      floattostr(Query1.FieldByName('VlrAbatNt').AsFloat)          +
                      floattostr(Query1.FieldByName('VlrMerc').AsFloat)            +
                      Query1.FieldByName('TipFre').AsString                        +
                      floattostr(Query1.FieldByName('VlrFrete').AsFloat)           +
                      floattostr(Query1.FieldByName('VlrSeguro').AsFloat)          +
                      floattostr(Query1.FieldByName('VlrOutras').AsFloat)          +
                      floattostr(Query1.FieldByName('VlrBcIcms').AsFloat)          +
                      floattostr(Query1.FieldByName('AlqIcms').AsFloat)            +
                      floattostr(Query1.FieldByName('VlrIcms').AsFloat)            +
                      floattostr(Query1.FieldByName('VlrBcIcmsSt').AsFloat)        +
                      floattostr(Query1.FieldByName('VlrIcmsSt').AsFloat)          +
                      floattostr(Query1.FieldByName('VlrIpi').AsFloat)             +
                      floattostr(Query1.FieldByName('VlrPis').AsFloat)             +
                      floattostr(Query1.FieldByName('VlrCofins').AsFloat)          +
                      floattostr(Query1.FieldByName('VlrPisSt').AsFloat)           +
                      floattostr(Query1.FieldByName('VlrCofinsSt').AsFloat);

       FrTelIni.LbMD51.HashString(AnsiString(slMovNotMD5));
       FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
       slMovNotMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

       // itenot
       // OBS: deve ser concatenado na mesma ordem da grava��o do registro
       slIteNotMD5 :=
                     inttostr(Query1.FieldByName('IteNotIdTabEmp').AsInteger)      +
                     inttostr(Query1.FieldByName('IteNotIdTabPes').AsInteger)      +
                     inttostr(Query1.FieldByName('IteNotNumeroNota').AsInteger)    +
                     inttostr(Query1.FieldByName('IteNotIdTabPro').AsInteger)      +
                     Query1.FieldByName('IteNotSerieNota').AsString                +
                     Query1.FieldByName('IteNotSubSerieNota').AsString             +
                     Query1.FieldByName('IteNotModeloNota').AsString               +
                     floattostr(Query1.FieldByName('IteNotQtdPro').AsFloat)        +
                     floattostr(Query1.FieldByName('IteNotVlrPro').AsFloat)        +
                     floattostr(Query1.FieldByName('IteNotVlrDsc').AsFloat)        +
                     Query1.FieldByName('IteNotMvmEst').AsString                   +
                     Query1.FieldByName('IteNotIdTabStb').AsString                 +
                     inttostr(Query1.FieldByName('IteNotIdTabCFO').AsInteger)      +
                     floattostr(Query1.FieldByName('IteNotVlrBcIcms').AsFloat)     +
                     floattostr(Query1.FieldByName('IteNotAlqIcms').AsFloat)       +
                     floattostr(Query1.FieldByName('IteNotVlrIcms').AsFloat)       +
                     floattostr(Query1.FieldByName('IteNotVlrBcIcmsSt').AsFloat)   +
                     floattostr(Query1.FieldByName('IteNotAlqIcmsSt').AsFloat)     +
                     floattostr(Query1.FieldByName('IteNotVlrIcmsSt').AsFloat)     +
                     floattostr(Query1.FieldByName('IteNotVlrBcIpi').AsFloat)      +
                     floattostr(Query1.FieldByName('IteNotAlqIpi').AsFloat)        +
                     floattostr(Query1.FieldByName('IteNotVlrIpi').AsFloat);

       FrTelIni.LbMD51.HashString(AnsiString(slIteNotMD5));
       FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
       slIteNotMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

       if (slMovNotMD5 <> Query1.FieldByName('MovNotMD5').AsString) or
          (slIteNotMD5 <> Query1.FieldByName('IteNotMD5').AsString) then
         slNotaAlterada := 'S';

       Query1.Next;

     end;
   end;

   // ***** cupom fiscal

   slCupomAlterado := 'N';

   Query1.Close;
   Query1.SQL.Clear;
   Query1.SQL.Add('Select                                                        ');
   Query1.SQL.Add(' M.IdTabEmp,                                                  ');
   Query1.SQL.Add(' M.IdTabEcf,                                                  ');
   Query1.SQL.Add(' M.CCF,                                                       ');
   Query1.SQL.Add(' M.DatMov,                                                    ');
   Query1.SQL.Add(' M.IdTabPcx,                                                  ');
   Query1.SQL.Add(' M.IdTabPcs,                                                  ');
   Query1.SQL.Add(' M.IdTabPdv,                                                  ');
   Query1.SQL.Add(' M.IdTabUsu,                                                  ');
   Query1.SQL.Add(' M.IdTabPes,                                                  ');
   Query1.SQL.Add(' M.COO,                                                       ');
   Query1.SQL.Add(' M.DataInicialEmissao,                                        ');
   Query1.SQL.Add(' M.HoraInicialEmissao,                                        ');
   Query1.SQL.Add(' M.ValDsc,                                                    ');
   Query1.SQL.Add(' M.ValAcr,                                                    ');
   Query1.SQL.Add(' M.ValTotal,                                                  ');
   Query1.SQL.Add(' M.ValTotalLiquido,                                           ');
   Query1.SQL.Add(' M.ValPago,                                                   ');
   Query1.SQL.Add(' M.ValTroco,                                                  ');
   Query1.SQL.Add(' M.IndicadorTipDesc,                                          ');
   Query1.SQL.Add(' M.IndicadorTipAcr,                                           ');
   Query1.SQL.Add(' M.IndicadorCancelamento,                                     ');
   Query1.SQL.Add(' M.ValCanAcr,                                                 ');
   Query1.SQL.Add(' M.OrdDesAcr,                                                 ');
   Query1.SQL.Add(' M.DataCancelamento,                                          ');
   Query1.SQL.Add(' M.HoraCancelamento,                                          ');
   Query1.SQL.Add(' M.MovCnfMD5,                                                 ');
   Query1.SQL.Add(' I.IdTabEmp      as IteCnfIdTabEmp,                           ');
   Query1.SQL.Add(' I.IdTabEcf      as IteCnfIdTabEcf,                           ');
   Query1.SQL.Add(' I.CCF           as IteCnfCCF,                                ');
   Query1.SQL.Add(' I.NumeroIte     as IteCnfNumeroIte,                          ');
   Query1.SQL.Add(' I.COO           as IteCnfCOO,                                ');
   Query1.SQL.Add(' I.DatMov        as IteCnfDatMov,                             ');
   Query1.SQL.Add(' I.IdTabPro      as IteCnfIdTabPro,                           ');
   Query1.SQL.Add(' I.QtdePro       as IteCnfQtdePro,                            ');
   Query1.SQL.Add(' I.ValPro        as IteCnfValPro,                             ');
   Query1.SQL.Add(' I.Unidade       as IteCnfUnidade,                            ');
   Query1.SQL.Add(' I.TipDes        as IteCnfTipDes,                             ');
   Query1.SQL.Add(' I.ValDes        as IteCnfValDes,                             ');
   Query1.SQL.Add(' I.ValAcr        as IteCnfValAcr,                             ');
   Query1.SQL.Add(' I.TipAcr        as IteCnfTipAcr,                             ');
   Query1.SQL.Add(' I.IdTabTrb      as IteCnfIdTabTrb,                           ');
   Query1.SQL.Add(' I.IdTabCFO      as IteCnfIdTabCFO,                           ');
   Query1.SQL.Add(' I.Cancelado     as IteCnfCancelado,                          ');
   Query1.SQL.Add(' I.Qtdecancelada as IteCnfQtdecancelada,                      ');
   Query1.SQL.Add(' I.Valcancelado  as IteCnfValcancelado,                       ');
   Query1.SQL.Add(' I.ValCanAcr     as IteCnfValCanAcr,                          ');
   Query1.SQL.Add(' I.ArredTrunca   as IteCnfArredTrunca,                        ');
   Query1.SQL.Add(' I.ProdPropria   as IteCnfProdPropria,                        ');
   Query1.SQL.Add(' I.DecimalQtd    as IteCnfDecimalQtd,                         ');
   Query1.SQL.Add(' I.DecimalVal    as IteCnfDecimalVal,                         ');
   Query1.SQL.Add(' I.Aliquota      as IteCnfAliquota,                           ');
   Query1.SQL.Add(' I.DataVendaItem as IteCnfDataVendaItem,                      ');
   Query1.SQL.Add(' I.HoraVendaItem as IteCnfHoraVendaItem,                      ');
   Query1.SQL.Add(' I.DataCancItem  as IteCnfDataCancItem,                       ');
   Query1.SQL.Add(' I.HoraCancItem  as IteCnfHoraCancItem,                       ');
   Query1.SQL.Add(' I.IteCnfMD5                                                  ');
   Query1.SQL.Add('From IteCNF I                                                 ');
   Query1.SQL.Add(' Inner Join MovCNF M On I.IdTabEmp = M.IdTabEmp and           ');
   Query1.SQL.Add('                                     I.CCF = M.CCF            ');
   Query1.SQL.Add('Where                                                         ');
   Query1.SQL.Add(' M.DatMov   < ' + '''' + DateToStr(DataDoServidor) + '''' +  ' and ');
   Query1.SQL.Add(' M.IndicadorCancelamento <> ''S''                    and      ');
   Query1.SQL.Add(' M.IdTabEmp = ' + inttostr(Empresa.ipIdTabEmp) +  '  and      ');
   Query1.SQL.Add(' I.IdTabPro = ' + qryTabPro.FieldByName('IdTabPro').AsString   );

   Query1.Open;

   if not Query1.IsEmpty then begin
     while not Query1.Eof do begin

       // movcnf
       // OBS: deve ser concatenado na mesma ordem da grava��o do registro
       slMovCnfMD5 :=
                     inttostr(Query1.FieldByName('IdTabEmp').AsInteger)                +
                     Query1.FieldByName('IdTabEcf').AsString                           +
                     inttostr(Query1.FieldByName('CCF').AsInteger)                     +
                     datetostr(Query1.FieldByName('DatMov').AsDateTime)                +
                     Query1.FieldByName('IdTabPcx').AsString                           +
                     inttostr(Query1.FieldByName('IdTabPcs').AsInteger)                +
                     inttostr(Query1.FieldByName('IdTabPdv').AsInteger)                +
                     inttostr(Query1.FieldByName('IdTabUsu').AsInteger)                +

                     // joao batista 12-08-2011
                     iif(inttostr(Query1.FieldByName('IdTabPes').AsInteger) = '0', '', inttostr(Query1.FieldByName('IdTabPes').AsInteger)) +

                     inttostr(Query1.FieldByName('COO').AsInteger)                     +
                     datetostr(Query1.FieldByName('DataInicialEmissao').AsDateTime)    +
                     Query1.FieldByName('HoraInicialEmissao').AsString                 +
                     floattostr(Query1.FieldByName('ValDsc').AsFloat)                  +
                     floattostr(Query1.FieldByName('ValAcr').AsFloat)                  +
                     floattostr(Query1.FieldByName('ValTotal').AsFloat)                +
                     floattostr(Query1.FieldByName('ValTotalLiquido').AsFloat)         +
                     floattostr(Query1.FieldByName('ValPago').AsFloat)                 +
                     floattostr(Query1.FieldByName('ValTroco').AsFloat)                +
                     Query1.FieldByName('IndicadorTipDesc').AsString                   +
                     Query1.FieldByName('IndicadorTipAcr').AsString                    +
                     Query1.FieldByName('IndicadorCancelamento').AsString              +
                     //floattostr(Query1.FieldByName('ValCanAcr').AsFloat)             +
                     //Query1.FieldByName('OrdDesAcr').AsString                        +
                     datetostr(Query1.FieldByName('DataCancelamento').AsDateTime)      +
                     Query1.FieldByName('HoraCancelamento').AsString;

       FrTelIni.LbMD51.HashString(AnsiString(slMovCnfMD5));
       FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
       slMovCnfMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

       // itecnf
       // OBS: deve ser concatenado na mesma ordem da grava��o do registro
       slIteCnfMD5 :=
                     inttostr(Query1.FieldByName('IteCnfIdTabEmp').AsInteger)          +
                     Query1.FieldByName('IteCnfIdTabEcf').AsString                     +
                     inttostr(Query1.FieldByName('IteCnfCCF').AsInteger)               +
                     inttostr(Query1.FieldByName('IteCnfNumeroIte').AsInteger)         +
                     inttostr(Query1.FieldByName('IteCnfCOO').AsInteger)               +
                     datetostr(Query1.FieldByName('IteCnfDatMov').AsDateTime)          +
                     inttostr(Query1.FieldByName('IteCnfIdTabPro').AsInteger)          +
                     floattostr(Query1.FieldByName('IteCnfQtdePro').AsFloat)           +
                     floattostr(Query1.FieldByName('IteCnfValPro').AsFloat)            +
                     Query1.FieldByName('IteCnfUnidade').AsString                      +
                     Query1.FieldByName('IteCnfTipDes').AsString                       +
                     floattostr(Query1.FieldByName('IteCnfValDes').AsFloat)            +
                     floattostr(Query1.FieldByName('IteCnfValAcr').AsFloat)            +
                     Query1.FieldByName('IteCnfTipAcr').AsString                       +
                     inttostr(Query1.FieldByName('IteCnfIdTabTrb').AsInteger)          +
                     inttostr(Query1.FieldByName('IteCnfIdTabCFO').AsInteger)          +
                     Query1.FieldByName('IteCnfCancelado').AsString                    +
                     floattostr(Query1.FieldByName('IteCnfQtdecancelada').AsFloat)     +
                     floattostr(Query1.FieldByName('IteCnfValcancelado').AsFloat)      +
                     //floattostr(Query1.FieldByName('IteCnfValCanAcr').AsFloat)       +
                     Query1.FieldByName('IteCnfArredTrunca').AsString                  +
                     Query1.FieldByName('IteCnfProdPropria').AsString                  +
                     inttostr(Query1.FieldByName('IteCnfDecimalQtd').AsInteger)        +
                     inttostr(Query1.FieldByName('IteCnfDecimalVal').AsInteger)        +
                     floattostr(Query1.FieldByName('IteCnfAliquota').AsFloat)          +
                     datetostr(Query1.FieldByName('IteCnfDataVendaItem').AsDateTime)   +
                     Query1.FieldByName('IteCnfHoraVendaItem').AsString                +
                     datetostr(Query1.FieldByName('IteCnfDataCancItem').AsDateTime)    +
                     Query1.FieldByName('IteCnfHoraCancItem').AsString;

       FrTelIni.LbMD51.HashString(AnsiString(slIteCnfMD5));
       FrTelIni.LbMD51.GetDigest(FrTelIni.MD5Digest);
       slIteCnfMD5 := BufferToHex(FrTelIni.MD5Digest, SizeOf(FrTelIni.MD5Digest));

       if (slMovCnfMD5 <> Query1.FieldByName('MovCnfMD5').AsString) or
          (slIteCnfMD5 <> Query1.FieldByName('IteCnfMD5').AsString) then
         slCupomAlterado := 'S';

       Query1.Next;

     end;
   end;

   if (slNotaAlterada  = 'S') or
      (slCupomAlterado = 'S') or
      (slTabProMD5 <> qryTabPro.FieldByName('TabProMD5').AsString) or
      (slTabTrbMD5 <> qryTabPro.FieldByName('TabTrbMD5').AsString) or
      (slTabStbMD5 <> qryTabPro.FieldByName('TabStbMD5').AsString) then
     E2.RegistroValido := False
   else
     E2.RegistroValido := True;

   E2.UN_MED         := qryTabPro.FieldByName('IdTabUnd').AsString;
   // ----------------------------------------------------------

   E2.QTDE_EST := qryTabPro.FieldByName('Qtde_Est').AsFloat;                // Quantidade em estoque referente a sua �ltima atualiza��o.
   E2.DT_EST   := strtodate(datetostr(DataDoServidor));
   qryTabpro.Next;
 end;

   // joao batista 12-04-2011
   Try

     if ProdutoEstoqueParcial = '' then begin
       FrTelIni.ACBrPAF.SaveFileTXT_E('Fisco\EstoqueTotal.txt');
       Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                     'Local: ' + Dir + '\Fisco\EstoqueTotal.txt'),'GBPAF');

     end else begin
       FrTelIni.ACBrPAF.SaveFileTXT_E('Fisco\EstoqueParcial.txt');
       Application.MessageBox( pchar('Arquivo gerado e assinado com sucesso!' + #13 + #10 +
                                     'Local: ' + Dir + '\Fisco\EstoqueParcial.txt'),'GBPAF');
     end;

   Except
     Application.MessageBox( pchar('O Arquivo n�o foi assinado!' + #13 + #10 +
                                   'Favor entrar em contato com o administrador do sistema.'),'GBPAF');
   End;

end;

end.
