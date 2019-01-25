unit Funcoes_U;

interface

Uses Classes,  DBCtrls, FireDAC.Comp.Client,
     //DBTables,                                                                // xe 10.1 Berlin
     DB,       Forms,    SysUtils, Controls, Dialogs,
     Messages, Windows,  ShellApi, Math,      buttons,  StdCtrls, Spin,
     comctrls, Graphics, ComObj,   Printers, TypInfo, Grids, DBGrids, Mask;


 Type
  TVersaoDoWindows = (vwWin32,vwWin95,vwWin98,vwWinNT,vwWin2k);
  TgbMatrizSe      = array of array of Variant;

 function  nData          ( dData : TDateTime; cOp : String ) : Integer;
 function  GeraMes        ( dData : TDateTime ) : String;
 function  nDiasMes       ( dData : TDateTime ) : Integer;
 function  lCriCpf        ( spCPF : String ) : Boolean;
 function  lCriCgc        ( spCGC : String ) : Boolean;
 function  StrZero        ( cString: String; iInteger: Integer ): String;
 function  Replicate      ( cString: String; iInteger: Integer ): String;
 function  Right          ( cString: String; iInteger: Integer ): String;
 function  cClcDigBar     ( cBarInf : String ): String;
 function  cClcSubDig     ( cCod : String; nTam : Integer ) : String;
 function  OnlyNumbers    ( sTexto : String; sRetorno : String = 'N' ) : String;
 function  Se             (Condicao: boolean; SeVerdadeiro, SeFalso: Variant): Variant; overload;
 function  iif            ( Condicao : Boolean; v, f: Variant ): Variant;
 function  StrCenter      ( sTexto : String; iEspaco : Integer ) : String;
 function  FormatSpace    ( sTexto : String; iEspaco : Integer; sCaracter: String = ' '; Left : Boolean = False ) : String;
 function  StrFloat       ( eValor : Extended ) : String;
 function  StrRigth       ( sTexto : String; iEspaco : Integer ) : String;
 function  Soma           ( const Tab : TDataSet; const Campo: String ): Double;
 function  NomeMes        ( dData: TDateTime ) : String;
 function  UpperFirst     ( sData: String ) : String;
 function  StrToBool( slStr : String ) : Boolean;
 function  GetValue( Tabela: string; Campo: array of string; Parametro: array of Variant; Retorno: array of string; qryAux : TFDQuery; OrderBy : String = ''; GroupBy : String = '' ): Boolean;
 function  Seleciona( Tabela, Capt : String; slCampos, slDspCmp: Array of String; slCond : String; ilTamCmp: Array of Integer; QtdCmpPsq : Integer; Ordem : String = ''; Empresa: Boolean = False; Focu : Integer = 1 ): Boolean;
 function  UpperCase( slPalavra : String ) : String;
 function  LowerCase( slPalavra : String ) : String;
 procedure Erro ( sMsg: String; Critico : Boolean = False );
 function  ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
 function  ExecSQL( Query: TFDQuery; Str: String; Prms : array of Variant ) : Boolean;
 function  OpenSQL( Query: TFDQuery; Str: String; Prms : array of Variant ) : Boolean;
 function  CalcJurDes( flValNom, flValPag, flTaxJur, flValCot: Double; dlDatVen, dlDatPag, dlDatRef: TDateTime;
                       slTipJur: String; var flValAbe, flValClc, flAtr_Ant: Double; slTipCal : String = 'J' ): Boolean;
 function  DataDoExecutavel : TDateTime;
 function  VersionInfo( slOpcoes : String = 'v'; slChave : String = 'FileVersion'; blCompl : Boolean = False ) : String;
 function  ValorEm        ( vlValor : Variant; alItens : array of Variant; blCasIns : Boolean = False ) : Boolean;
 function  UltDiaMes      ( Mes  : String ): String; overload;
 function  UltDiaMes: TDateTime; overload;
 function  MensagemSalvar( slMensagem : string; ilBotoes : Integer; slCapIte : string; blLimpa : Boolean = False ) : TModalResult;
 procedure SetaFoco( Objeto : TWinControl );
 function  NetSend(dest, source, msg: string): longint;
 function  Ancestral( Objeto : TControl; Tipo : TComponentClass ) : TControl;
 function  DiretorioTemp: String;
 function  VersaoDoWindows : TVersaoDoWindows;
 function  BufferParaLista( clBuf : Array of Char; var strlLista : TStringList ) : Boolean;
 function  cClcDv1BRB( cNosNum : String ) : String;
 function  cClcDv2BRB( cNosNum, cDv1 : String ) : String;
 function  cClcNosNumCEF ( slNosNum : String ): String;
 function  cClcNosNumHSBC ( cDoc, cCede : String; dVenc : TDateTime ): String;
 function  cCalNosNumBrad ( cDoc, cCart : String): String;
 function  cClcNosNumItau( sCodAge, sCodCnt, sCarteira, sSequencia : String ): String;
 function  Mensagem( sMsg: String; Icone: Integer; Default: Boolean ) : Boolean;
 function  MudaCor( clCorOld : TColor; ilGrau : Byte; clSinal : Char ) : TColor;
 function  FormataDataSQL( slData : String ) : String;
 function  ComparaQueries( qryComp1, qryComp2 : TFDQuery ) : Boolean;
 procedure MsgErro( Msg: String; Foco: TWinControl = Nil );
 procedure MsgErroField( Msg: String; Foco: TField = Nil );
 procedure AbreInternetExplorer(URL : string);
 procedure MudaImpressoraPadrao(PrinterName: String);
 //function  ZeraNulo( vlValor : Variant ) : Double;
 function  MaiorDaLista( ilLista : Array of Integer ) : Integer;
 function  CopyStr( slString, slSubStr: String; NumOco : Integer; Left : Boolean ): String;
 function  DataValida( slData : String ) : Boolean;
 function  TruncaDec( flVal : Double; ilDec : Integer = 2 ) : Double;
 function  Desacentua ( Texto : String ) : String;
 function  NetSendCmd(dest, source, msg: string): Boolean;
 function  SomaMes( dData: TDate; iQtde: integer ): TDate;
 function  MensagemTroco( slMensagem : string ) : TModalResult;
 function  ObterNumeroSerieHD ( VolumeouNumeroSerie : String) : String;
 //function Func_Class_Ger( Tabela : String; myTClasse : TClass; Chave : Array of String; Params, ParmKey : Array of Variant;  Opcao : Integer; blLogUsr : Boolean = True ): Boolean;
 function  Encripta( slPalavra : string; clWord : Char ): string;
 function  NovaSenha( slPalavra : string ): string;
 function  TestaSenha( slDe, slPara : string ): Boolean;
 function  ValidaSenha( slLogin, slSenha : string ) : Boolean;

 function EncDescripta(StrValue : String; Chave: Word) : String;

 // joao batista 24/11/2011
 function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
 function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
 //function EPSON_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'InterfaceEpson.dll';
 // ----------------------------------------------------------------------------

 // joao batista 25/11/2011
 function BlockInput(ABLockInput: Boolean):Boolean; stdCall; external 'user32.dll';

const
 slMes : array[1..12] of string = ('Janeiro', 'Fereiro', 'Mar�o', 'Abril', 'Maio', 'Junho', 'Julho',
                                   'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro');

 spMesCrt  : array[01..12] of string  = ( 'Jan', 'Fev', 'Mar', 'Abr',
                                          'Mai', 'Jun', 'Jul', 'Ago',
                                          'Set', 'Out', 'Nov', 'Dez' );

 alChrEspMin : array[1..24] of string = ('�','�','�','�','�',
                                         '�','�','�','�',
                                         '�','�','�','�',
                                         '�','�','�','�','�',
                                         '�','�','�','�','�','�');

 alChrEspMai : array[1..24] of string = ('�','�','�','�','�',
                                         '�','�','�','�',
                                         '�','�','�','�',
                                         '�','�','�','�','�',
                                         '�','�','�','�','�','�');

implementation

Uses FrSeleciona_U, GBNFe_U;

Var
 qryAux  : TFDQuery;

//---
// Funcao     : nData
// Parametros : Data, Opcao de Retorno (D=Dia, M=Mes, A=Ano)
// Objetivo   : Retonar o Dia ou Mes ou Ano (Inteiros)
//---

function nData( dData : TDateTime; cOp : String ) : Integer;
Var
 Present          : TDateTime;
 Year, Month, Day : Word;

begin
 Present := dData;

 DecodeDate( Present, Year, Month, Day );

 if      cOp = 'D' then
  nData := Day
 else if cOp = 'M' then
  nData := Month
 else if cOp = 'Y' then
  nData := Year
 else
  nData := 0;
end;


//---
// Funcao     : GeraMes
// Parametros : Data
// Objetivo   : Retornar o Nome do Mes em Portugues
//---

function GeraMes( dData : TDateTime ) : String;
Var
 Mes     : Integer;
 Extenso : String;
begin
 Mes     := nData( dData, 'M' );
 Extenso := 'Janeiro  ' + 'Fevereiro' + 'Mar�o    ' + 'Abril    ' +
            'Maio     ' + 'Junho    ' + 'Julho    ' + 'Agosto   ' +
            'Setembro ' + 'Outubro  ' + 'Novembro ' + 'Dezembro ';

 if mes > 1 then
  mes := ( ( ( mes - 1 ) * 9 ) + 1 );

 GeraMes:=Copy( Extenso, Mes, 9 );
end;


//---
// Funcao     : DiasMes
// Parametros : Data
// Objetivo   : Retornar o Numero de Dias do Mes
//---

function nDiasMes( dData : TDateTime ) : Integer;
Const
 Meses : Array[1..12] Of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);

begin
 if( nData( dData, 'M' ) = 2 ) and ( nData( dData, 'Y' ) mod 4 = 0 ) then
  nDiasMes:=Meses[nData( dData, 'M' )] + 1
 else
  nDiasMes:=Meses[nData( dData, 'M' )];
end;

//---
// Funcao     : lCriCpf
// Parametros : Numero do Cpf (Formatado)
// Objetivo   : Validar Numero do Cpf
//---

function lCriCpf( spCPF : String ) : Boolean;
Var
 slCPFCalc                    : String;
 ilSomaCPF, ilCPFDigt, ilShor : Integer;

begin
 if( spCPF <> '   .   .   -  ' ) and ( spCPF <> '' ) then
  try
   spCPF     := OnlyNumbers( spCPF );
   slCPFCalc := Copy( spCPF, 1, 9 );
   ilSomaCPF := 0;

   for ilShor := 1 to 9 do
    ilSomaCPF := ilSomaCPF + StrToInt( Copy( slCPFCalc, ilShor, 1 ) ) * ( 11 - ilShor );

   ilCPFDigt := 11 - ilSomaCPF mod 11;

   if ilCPFDigt in [10,11] then
    slCPFCalc := slCPFCalc + '0'
   else
    slCPFCalc := slCPFCalc +  IntToStr( ilCPFDigt );

   ilSomaCPF := 0;

   for ilShor := 1 to 10 do
    ilSomaCPF := ilSomaCPF + StrToInt( Copy( slCPFCalc, ilShor, 1 ) ) * ( 12 - ilShor );

   ilCPFDigt := 11 - ilSomaCPF mod 11;

   if ilCPFDigt  in [10,11] then
    slCPFCalc := slCPFCalc + '0'
   else
    slCPFCalc := slCPFCalc + IntToStr( ilCPFDigt );

   if  spCPF <> slCPFCalc then
    lCriCpf := False
   else
    lCriCpf := true;
  except on eConvertError do
   lCriCpf := False;
  end;
end;

//---
// Funcao     : lCriCgc
// Parametros : Numero do Cgc (Formatado)
// Objetivo   : Valida Numero do Cgc
//---

function lCriCgc( spCGC : String ) : Boolean ;
Var
 slCGCCalc                    : String;
 ilSomaCGC, ilCGCDigt, ilShor : Integer;

begin
 if( spCGC <> '  .   .   /    -' ) and ( spCGC <> '' ) then
  try
   spCGC     := Copy( spCGC, 1, 02 ) + Copy( spCGC, 4, 3 ) + Copy( spCGC, 8, 3 ) + Copy(spCGC,12,4) + Copy( spCGC, 17, 2 );
   slCGCCalc := Copy( spCGC, 1, 12 );
   ilSomaCGC := 0;

   for ilShor := 1 to 4 do
    ilSomaCGC:=ilSomaCGC + StrToInt( Copy( slCGCCalc, ilShor, 1 ) ) * ( 6 - ilShor );

   for ilShor:= 1 to 8 do
    ilSomaCGC:=ilSomaCGC + StrToInt( Copy( slCGCCalc, ilShor + 4, 1 ) ) * ( 10 - ilShor );

   ilCGCDigt := 11 - ilSomaCGC mod 11;

   if ilCGCDigt in [10,11] then
    slCGCCalc := slCGCCalc + '0'
   else
    slCGCCalc := slCGCCalc +  IntToStr( ilCGCDigt );

   ilSomaCGC := 0;
   
   for ilShor := 1 to 5 do
    ilSomaCGC := ilSomaCGC + StrToInt( Copy( slCGCCalc, ilShor, 1 ) ) * ( 7 - ilShor );

   for ilShor := 1 to 8 do
    ilSomaCGC := ilSomaCGC + StrToInt( Copy( slCGCCalc, ilShor + 5, 1 ) ) * ( 10 - ilShor );

   ilCGCDigt := 11 - ilSomaCGC mod 11;

   if ilCGCDigt in [10,11] then
    slCGCCalc := slCGCCalc + '0'
   else
    slCGCCalc := slCGCCalc + IntToStr( ilCGCDigt );

   if spCGC <> slCGCCalc then
    lCriCgc := False
   else
    lCriCgc := True;
  except on eConvertError do
   lCriCgc := False;
  end;
end;


//---
// Funcao     : StrZero
// Parametros : String Numerica, Quantidade
// Objetivo   : Preencher zeros a esquerda de uma string numerica
//---

Function StrZero ( cString: String; iInteger: Integer ): String;
Var
  iInt, i : Integer;
  cStr    : String;

begin

  iInt := 0;
  cStr := '';

  if iInteger > Length( Trim( cString ) ) then    {Testa se o tamanho informado � maior que a string passada}
    iInt := ( IInteger - Length( Trim( cString ) ) );

  for i:= 1 to iInt do
    cStr := cStr + '0';

  StrZero := cStr + Trim( cString );

end;


//---
// Funcao     : Replicate
// Parametros : String, Quantidade
// Objetivo   : Repetir uma String n Vezes
//---

Function Replicate ( cString: String; iInteger: Integer ): String;
Var
  i   : Integer;
  cStr: String;

begin
  cStr := '';
  for i := 1 to iInteger do
    cStr := cStr + cString;

  Replicate := cStr;
end;


//---
// Funcao     : Right
// Parametros : String, Tamanho
// Objetivo   : Extrair n posicoes a direta de uma string
//---

Function Right ( cString: String; iInteger: Integer ): String;
var
  iInt : Integer;
  cStr : String;

begin
  cStr := Trim( cString );
  iInt := Length( cStr );

  if iInteger < iInt then
    iInt := iInteger;

  Right := Copy( cStr, Length( cStr ) - iInt + 1, iInt);
end;


//---
// Funcao     : cClcDigBar
// Parametros : String
// Objetivo   : Gerar digito verificar da barra do boleto bancario (ITF2de5)
//---

Function cClcDigBar ( cBarInf : String ): String;
Var
 cDv,  aVet     : String;
 nNum, nRst, i  : Integer;

begin

 nNum := 0;

 // Preechendo Vetor com Pesos de 2 a 9

 aVet:='4329876543298765432987654329876543298765432';

 // Calculando Dv (Modulo 11, peso 2 a 9, Dir. p./ Esq.)

 for i := 1 to 43 do
  begin
   nNum := nNum + StrToInt( aVet[i] ) * StrToInt( cBarInf[i] );
  end;

 nRst := Abs( 11 - ( nNum Mod 11 ) );

 if ( nRst in [0,1] ) or ( nRst > 9 ) then
  cDv := '1'
 else
  cDv := IntToStr( nRst );

 Result := cDv;
end;


//---
// Funcao     : cClcSubDig
// Parametros : String
// Objetivo   : Gerar SubDigito Verificado da Linha Livre
//---

function cClcSubDig ( cCod : String; nTam : Integer ) : String;
Var
 nNum, nTmp, i    : Integer;
 cDv              : String;
 aVet             : String;

begin

 nNum:= 0;

 // Preechendo Vetor com Pesos de 2 a 1

 if nTam = 0 then
  aVet:='1212121212'
 else
  aVet:='212121212';

 // Calculando Dv (Modulo 10, peso 2 a 1, Dir. p./ Esq.)

 for i := ( 10 - nTam ) DownTo 1 do
  begin
   nTmp := StrToInt( aVet[i] ) * StrToInt( cCod[i] );

   if nTmp >= 10 then
    nNum := nNum + StrToInt( Copy( IntToStr( nTmp ), 1, 1 ) ) + StrToInt( Right( IntToStr( nTmp ), 1 ) )
   else
    nNum := nNum + nTmp;
  end;

 if nNum >= 10 then
  if nNum Mod 10 <> 0 then
   cDv:=Trim( IntToStr( Abs( ( nNum Mod 10 ) - 10 ) ) )
  else
   cDv:='0'
 else
  cDv:=IntToStr( 10 - nNum );

 Result := cDv;
end;

//---
// Funcao     : OnlyNumbers
// Parametros : Texto
// Objetivo   : Retorna somente os n�meros de 'sTexto'
//---
function OnlyNumbers ( sTexto : String; sRetorno : String = 'N' ) : String;
var
   i: integer;
begin
 Result := '';

 for i := 1 to Length( sTexto ) do
  if sRetorno = 'N' then
   begin
    if sTexto[i] in ['0'..'9'] then
     Result := Result + sTexto[i];
   end
  else if sRetorno = 'C' then
   begin
    if( sTexto[i] in ['0'..'9'] ) or ( sTexto[i] in ['a'..'z'] ) or ( sTexto[i] in ['A'..'Z'] ) then
     Result := Result + sTexto[i];
   end;
end;

//---
// Funcao     : Se
// Parametros : Condicao, SeVerdadeiro, SeFalso
// Objetivo   : Retorna valor de acordo com a Condicao
//---
function Se( Condicao: Boolean; SeVerdadeiro, SeFalso: Variant ): Variant; overload
begin
  if Condicao then
   Result := SeVerdadeiro
  else
   Result := SeFalso;
end;

function iif( Condicao: Boolean; v, f: Variant ): Variant;
begin
  if Condicao then
   Result := v
  else
   Result := f;
end;

//******************************************************************************
// Fun��o.....: Se
// Data.......: 10/05/2004
// Autor......: Jos� M�rio
// Descri��o..: Equivale ao Case do SQL: informe o Valor para compara��o, na
// ............ matriz, informe as Op��es em vlOpc e os Resultados equivalentes
// ............ em vlRes. No ultimo parametro, informe o valor default, para
// ............ caso de nenhuma op��o atender.
//******************************************************************************
{
function Se(vlValor : Variant; vlOpc, vlRes: array of Variant; vlDef: Variant; blCaseSens : Boolean = False ): Variant; overload;
Var
 I : Integer;

begin
 Result := vlDef;

 if blCaseSens then
  begin
   for I := Low( vlOpc ) to High( vlOpc ) do
    if vlValor = vlOpc[I] then
     Result := vlRes[I];
  end
 else
  for I := Low( vlOpc ) to High( vlOpc ) do
   if UpperCase( vlValor ) = UpperCase( vlOpc[I] ) then
    Result := vlRes[I];
end;
}

//---
// Funcao     : StrCenter
// Parametros : sTexto, iEspaco
// Objetivo   : Centralizar sTexto em iEspaco
//---
function StrCenter( sTexto : String; iEspaco : Integer ) : String;
begin
  Result := sTexto;

  if iEspaco < Length( sTexto ) then
   Exit;

  Result := Replicate( ' ', ( iEspaco - Length( sTexto ) ) div 2 ) + sTexto +  Replicate( ' ', ( iEspaco - Length( sTexto ) ) div 2 );
end;

//---
// Funcao     : FormatSpace
// Parametros : sTexto, iEspaco
// Objetivo   : Deixa sTexto com o tamanho de iEspaco
//---
function FormatSpace ( sTexto: String; iEspaco : Integer; sCaracter: String = ' '; Left : Boolean = False ) : String;
begin
  Result := sTexto;

  if Length( sTexto ) = iEspaco then
   Exit;

  if Length( sTexto ) < iEspaco then
   begin
    if Left then
     Result := Right( Replicate( sCaracter, iEspaco - Length( sTexto ) ) + sTexto, iEspaco )
    else
     Result := sTexto + Replicate( sCaracter, iEspaco - Length( sTexto ) );
   end
  else
   Result := Copy( sTexto, 1, iEspaco );
end;

//---
// Funcao     : StrFloat
// Parametros : eValor
// Objetivo   : Formatar eValor
//---
function StrFloat( eValor : Extended ) : String;
begin
  Result := FormatFloat( '##,###,###0.00', eValor );
end;

//---
// Funcao     : StrRight
// Parametros : sTexto, iEspaco
// Objetivo   : Alinha sTexto a direita em iEspaco
//---
function StrRigth( sTexto : String; iEspaco : Integer ) : String;
begin
  Result := Replicate( ' ', iEspaco - Length( sTexto ) ) + sTexto;
end;

//---
// Funcao     : Soma
// Parametros : Tab, Campo
// Objetivo   : Retorna a soma de 'Campo' em 'Tab'
//---
function Soma( const Tab : TDataSet; const Campo: String ): Double;
begin
  Result := 0;

  if Tab.FieldList.IndexOf( Campo ) < 0 then
   Exit;

  Tab.DisableControls;
  Tab.First;

  while not Tab.EOF do
   begin
    Result := Result + Tab.FieldByName(Campo).AsFloat;
    Tab.Next;
   end;

  Tab.EnableControls;
end;

//---
// Funcao     : NomeMes
// Parametros : dData
// Objetivo   : Retornar o nome do mes sem espa�os
//---
function NomeMes( dData: TDateTime ) : String;
begin
  Result := slMes[nData( dData, 'M' )];
end;

//---
// Funcao     : UpperFirst
// Parametros : sData
// Objetivo   : Retorna sData some com a primeira letra mai�scula
//---
function UpperFirst( sData: String ) : String;
begin
 Result := UpperCase( sData[1] ) + LowerCase( Copy( sData, 2, Length( sData ) - 1 ) );
end;

//---
// Funcao     : StrToBool
// Parametros : slStr
// Objetivo   : Converter valor string para booleano
//---
function StrToBool( slStr : String ) : Boolean;
begin
 Result := Trim( UpperCase( slStr ) ) = 'TRUE';
end;


//---
// Funcao     : GeValue
// Parametros :
// Objetivo   :
//---
function GetValue( Tabela: string; Campo: array of string; Parametro: array of Variant; Retorno: array of string; qryAux : TFDQuery; OrderBy : String = ''; GroupBy : String = '' ): Boolean;
var
  slRet, slCmp: String;
  i: integer;

begin
 // Obtendo retorno

 for i := Low( Retorno ) to High( Retorno ) do
  slRet := slRet + ', ' + Retorno[i];

 Delete( slRet, 1, 2 );

 // Obtendo campos

 if ( High( Campo ) >= 0 ) and ( Campo[0] <> '' ) then
  for i := Low( Campo ) to High( Campo ) do
   if ( Pos( ' in ', Campo[i] ) > 0 ) or
      ( Pos( ' or ', Campo[i] ) > 0 ) or
      ( Pos( '>',    Campo[i] ) > 0 ) or
      ( Pos( '<',    Campo[i] ) > 0 ) or
      ( Pos( '=',    Campo[i] ) > 0 ) or
      ( Pos( ' is ',    Campo[i] ) > 0 ) then
    slCmp := slCmp + ' and ' + Campo[i]
   else
    slCmp := slCmp + ' and ' + Campo[i] + '= :' + Campo[i];

 Delete( slCmp, 1, 4 );

 qryAux.Close;
 qryAux.SQL.Clear;
 qryAux.SQL.Add( ' Select            ' );
 qryAux.SQL.Add(    slRet              );

 if Tabela <> '' then
  qryAux.SQL.Add( '   From ' + Tabela   );

 if Length( slCmp ) > 0 then
  begin
   qryAux.SQL.Add( '    Where          ' );
   qryAux.SQL.Add(       slCmp           );

   for I := 0 To High ( Parametro ) do
    qryAux.Params[I].Value :=  Parametro[i];
  end;

 // Agrupa por

 if GroupBy <> '' then
  qryAux.SQL.Add( ' Group By ' + GroupBy );

 // Ordena por

 if OrderBy <> '' then
  qryAux.SQL.Add( ' Order By ' + OrderBy );

 //qryAux.SQL.SaveToFile('c:\sql.txt');

 qryAux.Open;

 Result := Not qryAux.IsEmpty;
end;

//----------------------------------------------------------------------------
// Funcao........: Seleciona
// Objetivo......: Exibe um Di�logo para selecionar �tens
//----------------------------------------------------------------------------
function Seleciona( Tabela, Capt : String; slCampos, slDspCmp: Array of String; slCond : String; ilTamCmp: Array of Integer; QtdCmpPsq : Integer; Ordem : String = ''; Empresa: Boolean = False; Focu : Integer = 1 ): Boolean;
Var
 I : Integer;
begin

 //-- Criando Formul�rio de Pesquisa

 if ( FrSeleciona = Nil ) then
  Application.CreateForm( TFrSeleciona, FrSeleciona );

 // joao batista 04-03-2011
 if ( UpperCase(copy(Tabela, 1, 6)) = 'TABPRO' ) then
  begin
   FrSeleciona.Width  := 800;
   FrSeleciona.Height := 400;
  end
 else if UpperCase(copy(Tabela, 1, 18)) = 'NOTAS_INUTILIZADAS' then
  begin
   FrSeleciona.Width  := 454;
   FrSeleciona.Height := 352;
  end;

 //-- Zerando Conte�do

 SetLength( spResult, 0 );

 //-- Obtendo Campos de Pesquisa e Criando Colunas no GRID

 spCampos := '';

 FrSeleciona.spDspCmp := TStringList.Create;

 for I := 0 to High( slCampos ) do
  begin
   spCampos := spCampos + ', ' + slCampos[I];

   //-- Criando Campos no dxDBGrid
   FrSeleciona.dbgrd1.Columns.Add();
   FrSeleciona.dbgrd1.Columns[I].Width     := ilTamCmp[I];
   FrSeleciona.spDspCmp.Add(slDspCmp[i]);
  end;

 //-- Apagando �ltima V�rgula

 Delete( spCampos, 1, 2 );

 //-- Obtendo Condicao e Ordem de Pesquisa

 spCond  := slCond;
 spOrdem := Ordem;

 //-- Obtendo Tamanhos de Arrays Din�micos

 SetLength( spResult, High( slDspCmp ) + 1 );

 //-- Obtendo Nome da Tabela

 tpTabPsq := Tabela;

 //-- Obtendo Quantidade de Campos a serem pesquisados

 ipQtdPsq := QtdCmpPsq - Se( Empresa, 0, 1 );

 //-- Obtendo Cabe�alho do Formul�rio

 FrSeleciona.Caption := FrSeleciona.Caption + ' - ' + Capt;

 //-- Verificando se Filtra Empresa

 FrSeleciona.Empresa1 := Empresa;

 //-- Campo a setar focu

 FrSeleciona.Focu    := Focu;

 //-- Mostrando Formul�rio de Consulta

 FrSeleciona.ShowModal;

 //-- Obtendo Retorno da Fun��o

 Result := String( spResult[0] ) <> '';

end;

// Fun��o que converte string para maiusculas suportando
// caracteres especiais da lingua portuguesa
function UpperCase( slPalavra : String ) : String;
Var
 slTemp  : String;
 ilConta : Integer;

begin
 slTemp := SysUtils.UpperCase( slPalavra );

 for ilConta := 1 to Length( alChrEspMin ) do
  slTemp := StringReplace( slTemp, alChrEspMin[ilConta], alChrEspMai[ilConta], [rfReplaceAll] );

 Result := slTemp;
end;

// Fun��o que converte string para minusculas suportando
// caracteres especiais da lingua portuguesa
function LowerCase( slPalavra : String ) : String;
Var
 slTemp  : String;
 ilConta : Integer;

begin
 slTemp := SysUtils.LowerCase( slPalavra );

 for ilConta := 1 to Length( alChrEspMai ) do
  slTemp := StringReplace( slTemp, alChrEspMai[ilConta], alChrEspMin[ilConta], [rfReplaceAll] );

 Result := slTemp;
end;


//---
// Procedure  : Erro
// Parametros : sMsg
// Objetivo   : Mostrar mensagem de erro
//---
procedure Erro ( sMsg: String; Critico : Boolean = False );
begin
 Application.MessageBox( PChar( sMsg ), PChar( Application.Title + ' - Erro' ), mb_OK + mb_IconError );

 if Critico then
  Abort;
end;

// Fun��o que executa aplica��es

function ExecuteFile(const FileName, Params, DefaultDir: string; ShowCmd: Integer): THandle;
var
  zFileName, zParams, zDir: array[0..79] of Char;
begin
  Result := ShellExecute(Application.MainForm.Handle, nil,
    StrPCopy(zFileName, FileName), StrPCopy(zParams, Params),
    StrPCopy(zDir, DefaultDir), ShowCmd);
end;

function  ExecSQL( Query: TFDQuery; Str: String; Prms : array of Variant ) : Boolean;
Var
 I : Integer;

begin
 //-- Iniciando vari�vel de resultado

 Result := True;

 //-- Iniciando processo monitorado

 Try
  //-- Fechando Query

  TFDQuery( Query ).Close;
  TFDQuery( Query ).SQL.Clear;
  TFDQuery( Query ).SQL.Add( Str );

  //-- Passando Par�metros

  For I := 0 to TFDQuery( Query ).ParamCount - 1 do
   TFDQuery( Query ).Params[I].Value := Prms[I];

  //-- Executando

  TFDQuery( Query ).ExecSQL;
 Except
  Result := False;
 End;
end;

function  OpenSQL( Query: TFDQuery; Str: String; Prms : array of Variant ) : Boolean;
Var
 I : Integer;

begin
 //-- Iniciando processo monitorado

 Try
  //-- Fechando Query

  TFDQuery( Query ).Close;
  TFDQuery( Query ).SQL.Clear;
  TFDQuery( Query ).SQL.Add( Str );

  //-- Passando Par�metros

  For I := 0 to TFDQuery( Query ).ParamCount - 1 do
   TFDQuery( Query ).Params[I].Value := Prms[I];

  //-- Executando

  TFDQuery( Query ).Open;
 Except
  Result := False;
 End;

 Result := Not TFDQuery( Query ).IsEmpty;
end;

//------------------------------------------------------------------------------
// Rotina....: CalcJurDes
// Objetivo..: Calcula Valor Em Aberto, Atraso e Juros ou Descontos a partir dos
// ........... parametros especificados
// ........... 'S' - Juro Simples, 'C' - Juro Composto
// Parametros:
// Cria��o...: 01/10/2002 15:10
// Autor.....:
//------------------------------------------------------------------------------
function  CalcJurDes( flValNom, flValPag, flTaxJur, flValCot: Double; dlDatVen, dlDatPag, dlDatRef: TDateTime;
                      slTipJur: String; var flValAbe, flValClc, flAtr_Ant: Double; slTipCal : String = 'J' ): Boolean;
Var
 i : Double;

begin
 // Obtendo Valor em Aberto

 if  flValPag > 0 then
  if ( flValNom - flValPag ) > 0 then
   flValAbe := ( flValNom - flValPag ) * flValCot
  else
   flValAbe := 0
 else
  flValAbe := flValNom * flValCot;

 // Obtendo Atraso ou Antecipa��o

 if slTipCal = 'D' then  // Desconto por Antecipa��o
  begin
   if flValAbe <= 0 then
    if dlDatVen > dlDatPag then
     flAtr_Ant := dlDatVen - dlDatPag
    else
     flAtr_Ant := 0
   else
    if dlDatVen > dlDatRef then
     flAtr_Ant := dlDatVen - dlDatRef
    else
     flAtr_Ant := 0;
  end
 else                    // Juros por Atraso
  begin
   if flValAbe <= 0 then
    if dlDatPag > dlDatVen then
     flAtr_Ant := dlDatPag - dlDatVen
    else
     flAtr_Ant := 0
   else
    if dlDatVen < dlDatRef then
     flAtr_Ant := dlDatRef - dlDatVen
    else
     flAtr_Ant := 0;
  end;

 // Obtendo Tipo

 if ( slTipJur = 'S' ) or ( slTipCal = 'D' ) then  // Simples ou Calculo de Desconto
  i := ( flTaxJur / 3000 )
 else if slTipJur = 'C' then                       // Composto
  i := ( flTaxJur / 0100 );

 // Obtendo valor dos juros/Descontos

 if( flValAbe > 0 ) and ( flAtr_Ant > 0 ) then
  if ( slTipJur = 'S' ) or ( slTipCal = 'D' ) then  // Simples ou Calculo de Desconto
   flValClc := ( flValAbe * i * flAtr_Ant )
  else if slTipJur = 'C' then                       // Composto
   flValClc := ( flValAbe * ( Power( 1 + i, ( flAtr_Ant / 30 ) ) - 1 ) );

 // Trunca resultados

 flValAbe  := StrToFloat( Trim( Format( '%*.*f', [12, 2, flValAbe] ) ) );
 flValClc  := StrToFloat( Trim( Format( '%*.*f', [12, 2, flValClc] ) ) );
 flAtr_Ant := Trunc( flAtr_Ant );
end;

//*********************************************************
// Fun��o.....: VersionInfo
// Data.......: 14/04/2003
// Autor......: Jos� M�rio
// Descri��o..: Obtem a data de compila��o do Executavel
//*********************************************************
function DataDoExecutavel : TDateTime;
Var
 sr : TSearchRec;

begin
 FindFirst( ParamStr(0), 0, sr );

 Result := FileDateToDateTime( sr.Time );
end;

//*********************************************************
// Fun��o.....: VersionInfo
// Data.......: 14/04/2003
// Autor......: Jos� M�rio
// Descri��o..: Obtem a vers�o do Sistema a partir das
// ............ informa��es de vers�o do execut�vel
//*********************************************************
function VersionInfo( slOpcoes : String = 'v'; slChave : String = 'FileVersion'; blCompl : Boolean = False ) : String;
// Parametros possiveis para slChave
//   CompanyName,    FileDescription, FileVersion,      InternalName,
//   LegalCopyright, LegalTradeMarks, OriginalFileName, ProductName,
//   ProductVersion, Comments,        Author

Var
 TamVer      : Integer;
 Dummy       : DWord;
 Tam         : UINT;
 VerInfo     : PChar;
 Valor       : Pointer;
 Translation : Pointer;
 VerBegin,
 slResTmp    : String;

begin
 slResTmp := '';

 TamVer := GetFileVersionInfoSize( PChar( ParamStr(0) ), Dummy );

 if TamVer > 0 then
  begin
   GetMem( VerInfo, TamVer );
   GetFileVersionInfo( PChar( ParamStr(0) ), 0, TamVer, VerInfo );
   VerQueryValue( VerInfo, '\\VarFileInfo\\Translation', Translation, Tam );
   VerBegin := '\\StringFileInfo\\' + IntToHex( LoWord( LongInt( Translation^ ) ), 4 ) + IntToHex( HiWord( LongInt( Translation^ ) ), 4 ) + '\\';

   if VerQueryValue( VerInfo, PChar( VerBegin + slChave ), Valor, Tam ) then
    if Tam > 0 then
     slResTmp := String( PChar( Valor ) );

   FreeMem( VerInfo, TamVer );

   // Formata vers�o para evitar zeros e pontos sobrando

   if not blCompl then
    begin
     repeat
      Delete( slResTmp, Length( slResTmp ), 1 );
     until Copy( slResTmp, Length( slResTmp ), 1 ) = '.';

     while ValorEm( Copy( slResTmp, Length( slResTmp ), 1 ), ['0','.'] ) do
      Delete( slResTmp, Length( slResTmp ), 1 );
    end;

   // Formata Retorno

   Result := Se( Pos( 'v', slOpcoes ) > 0, slResTmp, '' ) + Se( ( Pos( 'v', slOpcoes ) > 0 ) and ( Pos( 'd', slOpcoes ) > 0 ), ' - ', '' ) +
             Se( Pos( 'd', slOpcoes ) > 0, FormatDateTime( 'dd/', DataDoExecutavel ) + UpperFirst( FormatDateTime( 'mmmm/', DataDoExecutavel ) ) + FormatDateTime( 'yyyy', DataDoExecutavel ), '' ) +
             Se( Pos( 'h', slOpcoes ) > 0, FormatDateTime( 'hh:nn', DataDoExecutavel ), '' );
  end
 else
  Result := 'desconhecida';
end;

//---
// Funcao     : ObtemCod
// Parametros : Tabela, Campo, CodEmp
// Objetivo   : Retorna o c�digo onde dever� ser inserido o proximo item da tabela.
//---cri��o.: Agora suporta Case Insensitive (blCasSen = True)
//------------------------------------------------------------------------------
function ValorEm( vlValor : Variant; alItens : array of Variant; blCasIns : Boolean = False ) : Boolean;
Var
 I : Integer;

begin
 Result := False;

 for I := Low( alItens ) to High( alItens ) do
  if blCasIns then
   Result := Result or ( UpperCase( vlValor ) = UpperCase( alItens[I] ) )
  else
   Result := Result or ( vlValor = alItens[I] );
end;

function UltDiaMes ( Mes  : String ): String;
Var
 Aux : TDateTime;

begin
 Aux    := StrToDate( '01/' + IntToStr( StrToInt( Mes ) + 1 ) + FormatDateTime( '/YY', Date ) );
 Aux    := Aux - 1;
 Result := FormatDateTime( 'DD', Aux );
end;

function  UltDiaMes : TDateTime; overload;
begin
 Result := StrToDate( UltDiaMes( FormatDateTime( 'MM', Date ) ) + FormatDateTime( '/MM/YYYY', Date ) );  
end;

{*******************************************************************************
 * Procedure...: SetDate
 * Data........: 15 de feverreiro de 2003
 * Objetivo....: Se componente estiver vazio, sugere data atual
 *******************************************************************************}
function MensagemSalvar( slMensagem : string; ilBotoes : Integer; slCapIte : string; blLimpa : Boolean = False ) : TModalResult;
Var
 FrTemp : TForm;

begin
 if ilBotoes = 3 then
  FrTemp := CreateMessageDialog( slMensagem, mtConfirmation, [mbOk,mbYes,mbNo] )
 else
  FrTemp := CreateMessageDialog( slMensagem, mtConfirmation, [mbYes,mbNo] );

 with FrTemp do
  begin
   Caption := 'Confirma��o';
   Width := 305;

   TBitBtn( Components[2] ).Caption := Se( blLimpa, '&Limpar', 'Incluir &Novo' );
   TBitBtn( Components[3] ).Caption := '&Manter Dados';
   if ilBotoes = 3 then
    TBitBtn( Components[4] ).Caption := slCapIte;

   TBitBtn( Components[2] ).Width := 90;
   TBitBtn( Components[3] ).Width := 90;
   if ilBotoes = 3 then
    TBitBtn( Components[4] ).Width := 90;

   TBitBtn( Components[2] ).Left  := Width - ( ilBotoes * 90 )      - 25;
   TBitBtn( Components[3] ).Left  := Width - ( ilBotoes * 90 ) + 95 - 25;
   if ilBotoes = 3 then
    TBitBtn( Components[4] ).Left  := Width - ( ilBotoes * 90 ) + 190 - 25;

   TBitBtn( Components[2] ).ModalResult := mrYes;
   TBitBtn( Components[3] ).ModalResult := mrNo;

   if ilBotoes = 3 then
    TBitBtn( Components[4] ).ModalResult := mrOk;

   // Determinando foco

   if ilBotoes = 3 then
    ActiveControl := TBitBtn( Components[4] )
   else
    ActiveControl := TBitBtn( Components[2] );

   TBitBtn( Components[ilBotoes + 1] ).TabOrder := 0;

   Result := ShowModal;
  end;
end;

procedure SetaFoco( Objeto : TWinControl );
Var
 TabSheet : TTabSheet;

begin
 // Setando focu

 if Objeto.Enabled then
  begin
   // Posicionando nos pagecontrols

   if TTabSheet( Ancestral( Objeto, TTabSheet ) ) <> Nil then
    begin
     TabSheet := TTabSheet( Ancestral( Objeto, TTabSheet ) );
     While TabSheet <> NIl do
      begin
       TPageControl( Ancestral( TabSheet, TPageControl ) ).ActivePage := TabSheet;

       if Assigned( TPageControl( Ancestral( TabSheet, TPageControl ) ).OnChange ) then
        TPageControl( Ancestral( TabSheet, TPageControl ) ).OnChange( TPageControl( Ancestral( TabSheet, TPageControl ) ) );

       TabSheet := TTabSheet( Ancestral( TabSheet, TTabSheet ) );
      end;
    end;

   TForm( Ancestral( Objeto, TForm ) ).ActiveControl := Nil;
   PostMessage( Objeto.Handle, wm_setfocus, 0, 0 );
   TForm( Ancestral( Objeto, TForm ) ).ActiveControl := Objeto;
  end;
end;

//******************************************************************************
// Fun��o.........: NetSend
// Data...........: 02/05/2003
// Implementa��o..: Jos� M�rio
// Descri��o......: Envia mensagem na rede
//******************************************************************************
function NetSend(dest, source, msg: string): longint;
Type
  TNetMessageBufferSendFunction = function(servername, msgname, fromname:
  PWideChar; buf: PWideChar; buflen: Cardinal): longint; stdcall;

Var
  NetMessageBufferSend: TNetMessageBufferSendFunction;
  SourceWideChar: PWideChar;
  DestWideChar: PWideChar;
  MessagetextWideChar: PWideChar;
  Handle: THandle;

begin
 Handle := LoadLibrary('NETAPI32.DLL');

 if Handle = 0 then
  begin
   Result := GetLastError;
   exit;
  end;

 @NetMessageBufferSend := GetProcAddress(Handle, 'NetMessageBufferSend');

 if @NetMessageBufferSend = nil then
  begin
   Result := GetLastError;
   exit;
  end;

 MessagetextWideChar := ''; // nil;
 SourceWideChar      := ''; // nil;
 DestWideChar        := ''; // nil;

 try
  GetMem(MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  GetMem(DestWideChar, 20 * SizeOf(WideChar) + 1);
  StringToWideChar(msg, MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
  StringToWideChar(Dest, DestWideChar, 20 * SizeOf(WideChar) + 1);

  if source = '' then
   result := NetMessageBufferSend(nil, DestWideChar, nil, MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1)
  else
   begin
    GetMem(SourceWideChar, 20 * SizeOf(WideChar) + 1);
    StringToWideChar(source, SourceWideChar, 20 * SizeOf(WideChar) + 1);
    result := NetMessageBufferSend(nil, DestWideChar, SourceWideChar, MessagetextWideChar, Length(msg) * SizeOf(WideChar) + 1);
    freemem(SourceWideChar);
   end;
 finally
  FreeMem(MessagetextWideChar);
  FreeLibrary(Handle);
 end;
end;

//******************************************************************************
// Fun��o.........: Ancestral
// Descri��o......: Encontra ancestral (Parent) do objeto informado
//******************************************************************************
function  Ancestral( Objeto : TControl; Tipo : TComponentClass ) : TControl;
begin
 if ( Objeto.Parent is Tipo ) or Not Objeto.HasParent then
  Result := Objeto.Parent
 else
  Result := Ancestral( Objeto.Parent, Tipo );
end;

//-- Pega o diret�rio tempor�rio do windows
function  DiretorioTemp: String;
Var
 Buffer    : Array[0..144] of Char;

begin
 GetSystemDirectory(Buffer,144);
 Result := StrPas(Buffer) + '\Temp';
end;

//******************************************************************************
// Fun��o.........: VersaoDoWindows
// Data...........: 01/12/2003
// Implementa��o..: Jos� M�rio
// Descri��o......: Retorna a Vers�o do Windows
//******************************************************************************
function VersaoDoWindows : TVersaoDoWindows;
Var
 osvInfo : TOSVersionInfo;
 slVersao, slRelease, slBuild : String;

begin
 osvInfo.dwOSVersionInfoSize := SizeOf( TOSVersionInfo );
 GetVersionEx( osvInfo );

 with osvInfo do
  begin
   slVersao  := IntToStr( dwMajorVersion );
   slRelease := IntToStr( dwMinorVersion );
   slBuild   := IntToStr( LoWord( dwBuildNumber ) );

   case dwPlatformId of
    VER_PLATFORM_WIN32s :
     Result := vwWin32;
    VER_PLATFORM_WIN32_WINDOWS :
     if slBuild = '1998' then
      Result := vwWin98
     else
      Result := vwWin95;
    VER_PLATFORM_WIN32_NT :
     Result := vwWinNT;
   end;
  end;
end;

//******************************************************************************
// Fun��o.........: BufferParaLista
// Data...........: 01/12/2003
// Implementa��o..: Jos� M�rio
// Descri��o......: Recebe uma array de char, dividida com #0 e transforma em
// ................ uma StringList de Valores
//******************************************************************************
function BufferParaLista( clBuf : Array of Char; var strlLista : TStringList ) : Boolean;
Var
 I : Integer;
 slValor : String;

begin
 // Criar e Limpa a StringList

 strlLista.Clear;

 // Limpa vari�vel de valor

 slValor := '';

 // Efetua la�o no Buffer

 for I := 0 to Length( clBuf ) do
  if clBuf[I] = #0 then
   begin
    if slValor <> '' then
     strlLista.Add( slValor );
     
    slValor := '';
   end
  else
   slValor := slValor + clBuf[I];

 Result := strlLista.Count > 0;
end;

//---
// Funcao     : cClcDv1BRB
// Parametros : Nosso Numero = String
// Objetivo   : Gerar Primeiro Digito Verificar da Chave do BRB
//---

function  cClcDv1BRB( cNosNum : String ) : String;
Const
 aVet = '21212121212121212121212';

Var
 cDv           : String;
 nNum, nRst, i : Integer;

begin
 // Inicializando Variaveis

 nNum := 0;

 // Calculando Dv (Modulo 10, peso 2 a 1, Dir. p./ Esq.)

 for i := 1 to 23 do
  begin
   // Obtendo Produto

   nRst := StrToInt( aVet[i] ) * StrToInt( cNosNum[i] );

   // Obtendo Somatoria

   nNum := nNum + Se( nRst > 9, nRst - 9, nRst );
  end;

 if ( nNum Mod 10 ) = 0 then
  cDv := '0'
 else
  cDv := IntToStr( Abs( 10 - ( nNum Mod 10 ) ) );

 Result := cDv;
end;

//---
// Funcao     : cClcDv2BRB
// Parametros : Nosso Numero = String e Primeiro Digito Verificador = String
// Objetivo   : Gerar Segundo Digito Verificar da Chave do BRB
//---

function  cClcDv2BRB( cNosNum, cDv1 : String ) : String;
Const
 aVet = '234567234567234567234567';

Var
 nNum, nRst, i    : Integer;
 cDv,  cNum, cDvN : String;

begin
 // Inicializando Variaveis

 nNum := 0;
 cNum := cNosNum + cDv1;

 // Calculando Dv (Modulo 11, peso 7 a 2, Dir. p./ Esq.)

 for i := 1 to 24 do
  begin
   // Obtendo Somatoria

   nNum := nNum + StrToInt( aVet[i] ) * StrToInt( cNum[i] );
  end;

 // Obtendo Resto

 nRst := ( nNum Mod 11 );

 // Consistindo Resto e Obtendo DV

 if      nRst = 0 then
  cDv := '0'
 else if nRst = 1 then // Recalculando Dv2 apartir de um novo Dv1
  begin
   // Inicializando Variaveis

   nNum := 0;
   cDvN := IntToStr( Se( ( StrToInt( cDv1 ) + 1 ) = 10, 0, StrToInt( cDv1 ) + 1 ) );
   cNum := cNosNum + cDvN;

   // Calculando Dv (Modulo 11, peso 7 a 2, Dir. p./ Esq.)

   for i := 1 to 24 do
    begin
     // Obtendo Somatoria

     nNum := nNum + StrToInt( aVet[i] ) * StrToInt( cNum[i] );
    end;

   // Obtendo Resto

   nRst := ( nNum Mod 11 );

   if nRst = 0 then
    cDv := '0'
   else
    cDv := IntToStr( Abs( 11 - nRst ) );
  end
 else
  cDv := IntToStr( Abs( 11 - nRst ) );

 Result := cDv;
end;

//---
// Funcao     : cClcNosNumCEF
// Parametros : String
// Objetivo   : Calcular Nosso Numero para Caixa Economica Federal
//---

function cClcNosNumCEF ( slNosNum : String ): String;
Const
 aVet = '3298765432';

Var
 cDv           : String;
 nNum, nRst, i : Integer;

begin
 nNum := 0;

 // Calculando Dv (Modulo 11, peso 2 a 9, Dir. p./ Esq.)

 for i := 1 to 10 do
  begin
   nNum := nNum + StrToInt( aVet[i] ) * StrToInt( slNosNum[i] );
  end;

 nRst := Abs( 11 - ( nNum Mod 11 ) );

 if nRst > 9 then
  cDv := '0'
 else
  cDv := IntToStr( nRst );

 Result := cDv;
end;


//---
// Funcao     : cClcNosNumHSBC
// Parametros : Numero do Documento, Numero do Cedente, Data de Vencimento
// Objetivo   : Gerar nosso numero bancario para HSBC Bamerindus
//---

Function cClcNosNumHSBC ( cDoc, cCede : String; dVenc : TDateTime ): String;
Var
 cDv1,  cDv2                      : String;
 aVt1,  aVt2                      : array[1..13] of String;
 nNum1, nNum2, i, j               : Integer;
 cCed,  cVen, cCod1, cCod2, cCod3 : String;

begin
 // Inicializando Variaveis

 j     := 9;
 nNum1 := 0;
 nNum2 := 0;

 // Preenchedo Vetor 1, com Pesos de 9 a 2

 for i := 12 Downto 0 do
  begin
   aVt1[i] := IntToStr( j );

   Dec( j );

   if j < 2 then
    j := 9;
  end;

 cCed:=Right( Replicate( '0', 13 ) + Trim( cCede ), 13 );
 cVen:=Right( Replicate( '0', 13 ) + StrZero( IntToStr( nData( dVenc, 'D' ) ), 02 ) +
                                     StrZero( IntToStr( nData( dVenc, 'M' ) ), 02 ) +
                              Right( StrZero( IntToStr( nData( dVenc, 'Y' ) ), 04 ), 02 ), 13 );

 // Calculando Dv1 (Modulo 11, peso 9 a 2, Dir. p/ Esq. )

 cCod1:=Right( Replicate( '0', 13 ) + Trim( cDoc ), 13 );

 for i := 0 to 12 do
  nNum1:=nNum1 + ( StrToInt( aVt1[i] ) * StrToInt( Copy( cCod1, i+1, 1 ) ) );

 cDv1:=Trim( IntToStr( nNum1 Mod 11 ) );

 if cDv1 = '10' then
  cDv1:='0';

 // Calculando Dv2 (Modulo 11, peso 9 a 2, Dir. p/ Esq.)

 cCod2:=Right( Replicate( '0', 13 ) + Trim( cDoc ) + cDv1 + '4', 13 );

 cCod3:=Right( Replicate( '0', 13 ) + FloatToStr( StrToFloat( cCod2 )+ StrToFloat( cCed ) + StrToFloat( cVen ) ), 13 );

 // Preenchendo Segundo Vetor

 for i := 0 to 12 do
  aVt2[i]:=Copy( cCod3, i+1, 1 );

 for i := 0 to 12 do
  nNum2:=nNum2 + ( StrToInt( aVt1[i] ) * StrToInt( aVt2[i] ) );

 cDv2:=Trim( IntToStr( nNum2 Mod 11 ) );

 if cDv2 = '10' then
  cDv2:='0';

 // Retornando Nosso Numero

 Result := Trim( cDoc ) + cDv1 + '4' + cDv2;
end;

//---
// Procedure  : Mensagem
// Parametros : sMsg e Default
// Objetivo   : Exibir mensagem, retornando true se o usu�rio confirmar e false se n�o
//---
function Mensagem( sMsg: String; Icone: Integer; Default: Boolean ) : Boolean;
const
 Icon: array[1..4] of LongInt = (mb_IconQuestion, mb_IconWarning, mb_IconError, mb_IconInformation);
begin
 Result := Application.MessageBox( PChar( sMsg ), PChar( Application.Title + ' - Pergunta' ), mb_YesNo + Icon[Icone] + Se( Default, mb_DefButton1, mb_DefButton2 ) ) = id_Yes;
end;


//------------------------------------------------------------------------------
// Fun��o....: MudaCor
// Objetivo..: Muda a cor informada, incrementando ou decrementando o Grau informado
//------------------------------------------------------------------------------
function MudaCor( clCorOld : TColor; ilGrau : Byte; clSinal : Char ) : TColor;
Var
 ilR, ilG, ilB : Byte;
 ilCor         : Cardinal;

begin
 ilCor := ColorToRGB( clCorOld );

 ilR := GetRValue( ilCor );
 ilG := GetGValue( ilCor );
 ilB := GetBValue( ilCor );

 if clSinal = '+' then
  begin
   Inc( ilR, ilGrau );
   Inc( ilG, ilGrau );
   Inc( ilB, ilGrau );
  end
 else
  begin
   Dec( ilR, ilGrau );
   Dec( ilG, ilGrau );
   Dec( ilB, ilGrau );
  end;

 Result := RGB( ilR, ilG, ilB );
end;

//*********************************************************
// Fun��o.....: FormataDataSQL
// Data.......: 02/05/2003
// Autor......: Jos� M�rio
// Descri��o..: Retorna a data formatada na seguinte m�scara:
// ............ YYYY-MM-DD
//*********************************************************
function  FormataDataSQL( slData : String ) : String;
begin
 (*
 if      LowerCase( ConexaoIni.ReadString('Formatacao','Data','yyyy-mm-dd') ) = 'yyyy-mm-dd' Then
  Result := Copy( slData, 7, 4 ) + '-' + Copy( slData, 4, 2 ) + '-' + Copy( slData, 1, 2 )
 else if LowerCase( ConexaoIni.ReadString('Formatacao','Data','yyyy-mm-dd') ) = 'yyyy-dd-mm' Then
  Result := Copy( slData, 7, 4 ) + '-' + Copy( slData, 1, 2 ) + '-' + Copy( slData, 4, 2 )
 else if LowerCase( ConexaoIni.ReadString('Formatacao','Data','yyyy-mm-dd') ) = 'mm/dd/yyyy' Then
  Result := Copy( slData, 4, 2 ) + '/' + Copy( slData, 1, 2 ) + '/' + Copy( slData, 7, 4 )
 else if LowerCase( ConexaoIni.ReadString('Formatacao','Data','yyyy-mm-dd') ) = 'dd/mm/yyyy' Then
  Result := Copy( slData, 1, 2 ) + '/' + Copy( slData, 4, 2 ) + '/' + Copy( slData, 7, 4 );
 *)
end;

//*********************************************************
// Fun��o.....: ComparaQueries
// Data.......: 28/04/2004
// Autor......: Jos� M�rio
// Descri��o..: Compara o resultado de duas queries e
// ............ retorna True ou False
//*********************************************************
function  ComparaQueries( qryComp1, qryComp2 : TFDQuery ) : Boolean;
Var
 blDiferente : Boolean;
 I           : Integer;

begin
 Result := False;

 // Consiste queries abertas

 if not qryComp1.Active or not qryComp2.Active then
  Exit;

 // Consiste numero de campos

 if qryComp1.FieldCount <> qryComp2.FieldCount then
  Exit;

 // Consiste Querie vazia (somente uma)

 if qryComp1.IsEmpty xor qryComp2.IsEmpty then
  Exit;

 // Consiste numero de registros

 if qryComp1.RecordCount <> qryComp2.RecordCount then
  Exit;

 // Vai para o primeiro registro

 qryComp1.First;
 qryComp2.First;
 blDiferente := False;

 // La�o de compara��o

 while not qryComp1.Eof and not qryComp2.Eof and not blDiferente do
  begin
   for I := 0 to qryComp1.FieldCount - 1 do
    begin
     blDiferente := qryComp1.Fields[I].Value <> qryComp2.Fields[I].Value;

     if blDiferente then
      Break;
    end;

   qryComp1.Next;
   qryComp2.Next;
  end;

 // Resultado Final

 Result := not blDiferente;
end;

{*******************************************************************************
 * Procedure...: MsgErro
 * Objetivo....: Informa uma mensagem de consist�ncia abortando e quando informado
 *               algum componente como par�metro, setar o foco nele
 *******************************************************************************}
procedure MsgErro( Msg: String; Foco: TWinControl = Nil );
begin
 Application.MessageBox( PChar( Msg ), PChar( Application.Title + ' - Aten��o' ), MB_ICONWARNING );

 if Foco <>  Nil then
  SetaFoco(Foco);

 Abort;
end;

{*******************************************************************************
 * Procedure...: MsgErroField
 * Data........: 16 de novembro de 2005
 * Objetivo....: Informa uma mensagem de consist�ncia abortando e quando informado
 *               algum campo como par�metro, setar o foco nele
 *******************************************************************************}

procedure MsgErroField( Msg: String; Foco: TField = Nil );
begin
 Application.MessageBox( PChar( Msg ), PChar( Application.Title + ' - Aten��o' ), MB_ICONWARNING );

 if Foco <>  Nil then
  Foco.FocusControl;

 Abort;
end;

//******************************************************************************
// Procedure...: AbreInternetExplorer
// Programador.: Jos� M�rio
// Data........: 27/05/2004
// Objetivo....: Abre uma janela do Internet Explorer
//******************************************************************************
procedure AbreInternetExplorer(URL : string);
var
   IE : Variant;
begin
 IE := CreateOleObject('InternetExplorer.Application');
 IE.Visible := True;
 IE.Navigate(URL);
end;

//******************************************************************************
// Procedure.....: MudaImpressoraPadrao
// Original......: Dicas & Truques (Lloyd Dickinson)
// Implementa��o.: 27/05/2004
// T�cnico.......: Jos� M�rio
// Objetivo......: Muda impressora padr�o pelo nome
//******************************************************************************
procedure MudaImpressoraPadrao(PrinterName: String);
Var
 I: Integer;
 Device : PChar;
 Driver : Pchar;
 Port : Pchar;
 HdeviceMode: Thandle;
 aPrinter : TPrinter;

begin
 Printer.PrinterIndex := -1;
 getmem(Device, 255);
 getmem(Driver, 255);
 getmem(Port, 255);
 
 aPrinter := TPrinter.create;

 for I := 0 to Printer.printers.Count-1 do
  if Printer.printers[i] = PrinterName then
   begin
    aprinter.printerindex := i;
    aPrinter.getprinter
    (device, driver, port, HdeviceMode);
    StrCat(Device, ',');
    StrCat(Device, Driver );
    StrCat(Device, Port );
    WriteProfileString('windows', 'device', Device);
    StrCopy( Device, 'windows' );
    SendMessage(HWND_BROADCAST, WM_WININICHANGE,
    0, Longint(@Device));
   end;

 Freemem(Device, 255);
 Freemem(Driver, 255);
 Freemem(Port, 255);
 aPrinter.Free;
end;

//function ZeraNulo( vlValor : Variant ) : Double;
//begin
 (*
 if ( vlValor = Null ) or ( vlValor = '' ) then
  Result := 0
 else
  Result := vlValor;
  *)
//end;

//******************************************************************************
// Fun��o.....: MaiorDaLista
// Autor......: Jos� M�rio
// Data.......: 20/12/2004
// Descri��o..: Obt�m o maior valor da lista
//******************************************************************************
function  MaiorDaLista( ilLista : Array of Integer ) : Integer;
var
 I, ilAux : Integer;
begin
 ilAux := ilLista[Low(ilLista)];

 for I := Low(ilLista) to High(ilLista) do
  if ilLista[I] > ilAux then
   ilAux := ilLista[I];

 Result := ilAux;
end;

function CopyStr( slString, slSubStr: String; NumOco : Integer; Left : Boolean ): String;
Var
 I, ilNumOco : Integer;

begin
 Result := '';

 if ( Trim( slString ) <> '' ) and ( Trim( slSubStr ) <> '' ) then
  if ( NumOco > 0 ) and ( Pos( slSubStr, slString ) > 0 ) then
   if Left then //--> Esquerda para a Direita
    begin
     ilNumOco := 0;
     I        := 1;

     while ( I <= Length( slString ) ) and ( ilNumOco < NumOco ) do
      begin
       if slString[I] = slSubStr[1] then
         inc( ilNumOco );

       Inc( I );
      end;

     if I <= Length( slString ) then
      if I = 2 then
       Result := Copy( slString, 1, I - 1 )
      else
       Result := Copy( slString, 1, I - 2 )
    end
    else //--> Direita para a Esquerda
     begin
      ilNumOco := 0;
      I := length( slString );

      while ( I > 0 ) and ( ilNumOco < NumOco ) do
       begin
        if slString[I] = slSubStr[1] then
         inc( ilNumOco );

        dec( I );
       end;

      if ( I >= 0 ) and ( ilNumOco = NumOco ) then
       Result := Copy( slString, I + 2, Length( slString ) - I );
     end;
end;

//------------------------------------------------------------------------------
// Fun��o....: DateValida
// Objetivo..: Retorna se a Data � v�lida
// Parametros: Data em formato String
// Cria��o...: 13/02/2003 11:30
// Autor.....: Jos� Mario
// Vers�o....: 0.1
// Revis�o...:
//------------------------------------------------------------------------------
function DataValida( slData : String ) : Boolean;
Var
 dlDatTmp : TDateTime;

begin
 Result := True;

 Try
  dlDatTmp := StrToDate( slData );
 Except
  Result := False;
 End;
end;

//******************************************************************************
// Fun��o.....: TruncaDec
// Descri��o..: Retorna o numero arredondado para N casas decimais
// Cria��o....: 14/06/2004 09:00
// Autor......: Jose Mario
//******************************************************************************
function TruncaDec( flVal : Double; ilDec : Integer = 2 ) : Double;
begin
 Result := StrToFloat( Format( '%*.*f', [10, ilDec, flVal] ) );
end;


//---
// Funcao     : cCalNosNumBrad
// Parametros : Numero do Documento, Carteira
// Objetivo   : Gerar nosso numero bancario para Bradesco
//---

Function cCalNosNumBrad ( cDoc, cCart : String ): String;
Var
  cDv1, cCod1 : String;
  nNum1, i, j : Integer;
  aVt1        : array[1..13] of String;

begin
 j     := 2;
 nNum1 := 0;

 // Preenchedo Vetor 1, com Pesos de 7 a 2

 for i := 13 Downto 0 do
  begin
   aVt1[i] := IntToStr( j );

   Inc( j );

   if j > 7 then
    j := 2;
  end;

 // Calculando Dv (Modulo 11, peso 7 a 2, Dir. p/ Esq. )

 cCod1 := cCart + Right( Replicate( '0', 11 ) + Trim( cDoc ), 11 );

 for i := 0 to 12 do
  nNum1 := nNum1 + ( StrToInt( aVt1[i+1] ) * StrToInt( Copy( cCod1, i+1, 1 ) ) );

 Case nNum1 Mod 11 of
  1: cDv1 := 'P';
  0: cDv1 := '0';
 else
  cDv1 := Trim( IntToStr( 11 - ( nNum1 Mod 11 ) ) );
 end;

 // Retornando Nosso Numero

 cCalNosNumBrad := Right( Replicate( '0', 11 ) + cDoc, 11 ) + '-' + cDv1;
end;


//---
// Funcao     : cClcNosNumItau
// Parametros : Agencia (4) ; C/C (5) ; Carteira (3) ; Sequencia (8)"
// Objetivo   : Gerar nosso numero bancario para Itau
//---

function cClcNosNumItau( sCodAge, sCodCnt, sCarteira, sSequencia : String ): String;
Var
 i, nNum, nTmp       : Integer;
    sDv,  sVet, sDoc : String;

begin
 // Inicializando Variaveis

 nNum := 0;
 sVet := '12121212121212121212'; // Vetor com Pesos de 2 a 1 "20 posi��es"
 sDoc := StrZero( Trim( Copy( OnlyNumbers( sCodAge    ), 1, 4 ) ), 4 ) +
         StrZero( Trim( Copy( OnlyNumbers( sCodCnt    ), 1, 5 ) ), 5 ) +
         StrZero( Trim( Copy( OnlyNumbers( sCarteira  ), 1, 3 ) ), 3 ) +
         StrZero( Trim( Copy( OnlyNumbers( sSequencia ), 1, 8 ) ), 8 );

 // Calculando Dv (Modulo 10, peso 2 a 1, Dir. p./ Esq.)

 //-- Multiplicando e somando algarismo pelo peso

 for i := 20 DownTo 1 do
  begin
   nTmp := StrToInt( sVet[i] ) * StrToInt( sDoc[i] );

   if nTmp >= 10 then
    nNum := nNum + StrToInt( Copy( IntToStr( nTmp ), 1, 1 ) ) + StrToInt( Right( IntToStr( nTmp ), 1 ) )
   else
    nNum := nNum + nTmp;
  end;

 //-- Obtendo o DAC

 if      nNum >= 10 then
  begin
   if nNum Mod 10 <> 0 then
    Begin
     sDv:=Trim( IntToStr( Abs( ( nNum Mod 10 ) - 10 ) ) );

     if sDv = '10' then
      sDv := '0';
    End
   else
    sDv:='0';
  end
 else if( nNum > 0 ) and ( nNum < 10 ) then
  sDv:=IntToStr( 10 - nNum )
 else
  sDv:='0';

 Result := sDv;
end;


//---
// Funcao     : Desacentua
// Parametros : Texto
// Objetivo   : Retornar o texto sem acento e cedilha
//---
function Desacentua( Texto : String ) : String;
 //-- Funcao que Retorna a Letra sem Acento e sem Cedilha

 function Letra( CodAsc : Integer ): Char;
  begin
   Case CodAsc of
    186,170 : Result := '.';
    192..196: Result := 'A';
    200..203: Result := 'E';
    204..207: Result := 'I';
    210..214: Result := 'O';
    217..220: Result := 'U';
    224..228: Result := 'a';
    232..235: Result := 'e';
    236..239: Result := 'i';
    240..246: Result := 'o';
    249..252: Result := 'u';
    231     : Result := 'c';
    199     : Result := 'C';
   end;
  end;

 Var
  I, C  : Integer;
  slAux : String;

begin
 slAux := Texto;

 For I := 1 to Length( slAux ) do
  begin
   C := Ord( slAux[I] );

   if C in [ 170, 186, 192..252 ] then
    slAux[I] := Letra( C );
  end;

 Result := slAux;
end;

//******************************************************************************
// Fun��o.........: NetSendCmd
// Data...........: 10/12/2003
// Implementa��o..: Jos� M�rio
// Descri��o......: Envia mensagem na rede
//******************************************************************************
function NetSendCmd(dest, source, msg: string): Boolean;
Const
 netsend_cmd  = 'net send %destino% %msg%';

Var
 StartupInfo        : TStartupInfo;
 ProcessInformation : TProcessInformation;
 rc                 : Boolean;
 Handle             : THandle;
 slNetSend          : String;

begin
 // Obt�m informa��o de inicio atual

 GetStartupInfo( StartupInfo );

 // Inicializa campos de StartupInfo

 with StartupInfo do
  begin
   // Redireciona sa�da

   hStdOutput := Handle;

   // N�o mostra janela do DOS

   wShowWindow := SW_HIDE;
   dwFlags     := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
  end;

 // Monta comando

 slNetSend := netsend_cmd;
 slNetSend := StringReplace( slNetSend, '%destino%', dest, [rfReplaceAll] );
 slNetSend := StringReplace( slNetSend, '%msg%',     msg,  [rfReplaceAll] );

 // Dispara processo

 rc := CreateProcess( nil, PChar( slNetSend ), nil, nil, True, 0, nil, nil, StartupInfo, ProcessInformation );

 // Espera terminar (o segundo parametro espera indefinidamente)

 if rc then
  WaitForSingleObject( ProcessInformation.hProcess, INFINITE );

 Result := rc;
end;

//---
// Procedure  : SomaMes
// Parametros : dData e iQtde
// Objetivo   : Somar iQtde Meses a dData
//---
function SomaMes( dData: TDate; iQtde: integer ): TDate;
var
 ilDia, ilMes, ilAno : Integer;
 slAux : String;

begin
 ilDia := nData( dData, 'D' );
 ilMes := nData( dData, 'M' ) + iQtde;
 ilAno := nData( dData, 'Y' );

 while ilMes > 12 do
  begin
   ilMes := ilMes - 12;
   ilAno := ilAno + 1;
  end;

 slAux := FormatFloat( '00',   ilDia ) + '/' +
          FormatFloat( '00',   ilMes ) + '/' +
          FormatFloat( '0000', ilAno );

 while not DataValida( slAux ) do
  begin
   Dec( ilDia );

   slAux := FormatFloat( '00',   ilDia ) + '/' +
            FormatFloat( '00',   ilMes ) + '/' +
            FormatFloat( '0000', ilAno );
  end;

 Result := StrToDate( slAux );
end;


//---
// fun��o     : MensagemTroc
// Parametros : slMensagem = Texto a ser Mostrado
// Objetivo   : Mostrar Mensagem com Troco a ser Repassado no Recebimento em Cheque, e Verificar o que o Usu�rio Deseja Fazer
//---
function MensagemTroco( slMensagem : string ) : TModalResult;
Var
 FrFrmTmp : TForm;

begin
 FrFrmTmp := CreateMessageDialog( slMensagem, mtConfirmation, [mbOk,mbYes,mbNo,mbCancel] );

 with FrFrmTmp do
  begin
   Caption := 'Confirma��o';
   Width := 450;

   TBitBtn( Components[2] ).Caption := '&Paga Agora';
   TBitBtn( Components[3] ).Caption := 'Gera &Adiantamento';
   TBitBtn( Components[4] ).Caption := 'Gera &Op';
   TBitBtn( Components[5] ).Caption := '&Cancela';

   TBitBtn( Components[2] ).Width := 100;
   TBitBtn( Components[3] ).Width := 100;
   TBitBtn( Components[4] ).Width := 100;
   TBitBtn( Components[5] ).Width := 100;

   TBitBtn( Components[2] ).Left  := Width - ( 4 * 100 )       - 40;
   TBitBtn( Components[3] ).Left  := Width - ( 4 * 100 ) + 105 - 40;
   TBitBtn( Components[4] ).Left  := Width - ( 4 * 100 ) + 210 - 40;
   TBitBtn( Components[5] ).Left  := Width - ( 4 * 100 ) + 315 - 40;

   TBitBtn( Components[2] ).ModalResult := mrOk;
   TBitBtn( Components[3] ).ModalResult := mrYes;
   TBitBtn( Components[4] ).ModalResult := mrNo;
   TBitBtn( Components[5] ).ModalResult := mrCancel;

   // Determinando foco

   ActiveControl := TBitBtn( Components[5] );

   TBitBtn( Components[4 + 1] ).TabOrder := 0;

   Result := ShowModal;
  end;
end;

function ObterNumeroSerieHD ( VolumeouNumeroSerie : String) : String;
var
  NrSerial : pdword;
  NomeVolumeBuf : array [0..255] of char;
  a,b : dword;
  CodErro : dword;

begin

  try

    FillChar (NomeVolumeBuf, SizeOf (NomeVolumeBuf), 0);
    a:=0;
    b:=0;
    NrSerial := nil;
    new(NrSerial);
    NrSerial^ := 0;
    if (not GetVolumeInformation('c:\', NomeVolumeBuf, SizeOf(NomeVolumeBuf), NrSerial, a, b, nil, 0)) then begin
      CodErro := 0;
      CodErro := GetLastError;
      if (CodErro = ERROR_INVALID_PARAMETER) then
        Showmessage ('Aten��o ocorreu um erro ao obter os dados do volume (Parametro Inv�lido). C�digo Erro: ' + inttostr(CodErro))
      else if (CodErro = ERROR_ADAP_HDW_ERR) then
        Showmessage('Aten��o ocorreu um erro ao obter os dados do volume (HDW). C�digo Erro: ' + inttostr(CodErro))
      else
        Showmessage('Aten��o ocorreu um erro ao obter os dados do volume. C�digo Erro: ' + inttostr(CodErro));

    end;
    result := inttoHex(NrSerial^,8);
  except

  end;

end;

//------------------------------------------------------------------------------
// Fun��o....: Encripta
// Objetivo..: Retorna a senha criptografada
// Parametros: slPalavra : string
// Cria��o...: 14/07/2002 15:50
// Autor.....: Ze Mario
// Revis�o...:
//------------------------------------------------------------------------------
{$R-} {$Q-}
function Encripta( slPalavra : string; clWord : Char ): string;
Var
 I : Byte;

begin

 Result := '';

 if Length( slPalavra ) > 0 then
  for I := 1 to Length( slPalavra ) do
   Result  := Result + Char( Byte( slPalavra[I]) * Ord( clWord ) );

end;
{$R+} {$Q+}

//------------------------------------------------------------------------------
// Fun��o....: NovaSenha
// Objetivo..: Cria uma nova senha criptografada
// Parametros: slPalavra : string
// Cria��o...: 17/07/2002 14:20
// Autor.....: Ze Mario
// Revis�o...:
//------------------------------------------------------------------------------
function NovaSenha( slPalavra : string ): string;
Var
 clWord : Char;

begin
 Result := '';

 if slPalavra <> '' then begin
   clWord := #0;

   while clWord = #0 do
    clWord := Chr( 255 * Random( 255 ) div ( StrToInt( FormatDateTime( 'ss', Time ) ) + 2 ) );

   Result := clWord + Encripta( slPalavra, clWord );
  end;
end;

//------------------------------------------------------------------------------
// Fun��o....: TestaSenha
// Objetivo..: Compara slDe com slPara, usando a Word de slPara
// Parametros: slDe, slPara : string
// Cria��o...: 17/07/2002 14:20
// Autor.....: Ze Mario
// Revis�o...:
//------------------------------------------------------------------------------
function TestaSenha( slDe, slPara : string ): Boolean;
Var
 slDeC : string;

begin
 Result := False;

 if ( Length( slDe ) > 0 ) and ( Length( slPara ) > 0 ) then
  begin
   slDeC := Encripta( slDe, slPara[1] );

   Result := slPara[1] + slDeC = slPara;

  end
 else if slDe = slPara then
  Result := True
end;

//------------------------------------------------------------------------------
// Fun��o....: SenhaValida
// Objetivo..: Analisa se a senha digitada em FrManUsu � uma senha v�lida
// Parametros: slLogin e slSenha, string, recebem o Login e Senha
// Cria��o...: 03/07/2002 12:00
// Autor.....: Ze Mario
// Revis�o...:
//------------------------------------------------------------------------------
function ValidaSenha( slLogin, slSenha : string ) : Boolean;
Const
 ilMinimo = 3;

Var
 blResult : Boolean;

begin
 blResult := True;

 // Se a senha tiver menos que X caracteres...
 if ( Length( slSenha ) <= ilMinimo ) and ( slSenha <> '' ) then
  blResult := False;

 // Se a senha for igual ao Login...
 if slSenha = slLogin then
  blResult := False;

 // Se a senha for vazia
// if slSenha = '' then
//  blResult := False;

 // Se a senha for uma senha f�cil...
// if slSenha in ['1234',''] then
//  blResult := False;

 // Envia resultado
 Result := blResult;
end;

function EncDescripta(StrValue : String; Chave: Word) : String;
var
  I : Integer;
  OutValue : String;

begin
  OutValue := '';

  for I := 1 to Length(StrValue) do
    OutValue := OutValue + Char(Not(Ord(StrValue[I]) - Chave));

  Result := OutValue;

end;

end.


