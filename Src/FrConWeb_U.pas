unit FrConWeb_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ComCtrls, IdIOHandler,
  IdIOHandlerSocket, IdSSLOpenSSL, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP, IdCookieManager, Vcl.OleCtrls,
  SHDocVw;

type
  TFrConWeb = class(TForm)
    stat1: TStatusBar;
    pnl1: TPanel;
    pnlBottom: TPanel;
    btn1: TBitBtn;
    btnGo: TBitBtn;
    pnl3: TPanel;
    imgCaptcha: TImage;
    grp1: TGroupBox;
    edtKey: TEdit;
    grp2: TGroupBox;
    edtCode: TEdit;
    IdHttp: TIdHTTP;
    lblInit: TLabel;
    idckmngr1: TIdCookieManager;
    wb1: TWebBrowser;
    procedure FormShow(Sender: TObject);
    procedure lblInitClick(Sender: TObject);
    procedure btnGoClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure lblInitMouseLeave(Sender: TObject);
    procedure lblInitMouseEnter(Sender: TObject);
  private
    { Private declarations }
    viewState, eventValidate: string;
    procedure GetHiddenFieldValues(html: string);
    procedure p_Execute;
  public
    { Public declarations }
  end;

var
  FrConWeb: TFrConWeb;

const
  HOST         =        'http://www.nfe.fazenda.gov.br';
  URLIMG       = HOST + '/scripts/srf/intercepta/captcha.aspx?opt=image';
  URLGET       = HOST + '/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=';
  URLPOST      = HOST + '/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8%3d';
  URLGETRESULT = HOST + '/portal/consultaCompleta.aspx?tipoConteudo=XbSeqxE8pl8=';
  CONTENT_TYPE =        'application/x-www-form-urlencoded';
  // http://www.nfe.fazenda.gov.br/portal/consulta.aspx?tipoConsulta=completa&tipoConteudo=XbSeqxE8pl8=&nfe=
  
implementation

{$R *.dfm}

procedure TFrConWeb.FormShow(Sender: TObject);
begin
 lblInitClick(Sender);
end;

procedure TFrConWeb.lblInitClick(Sender: TObject);
var
 response: TMemoryStream;
 //gif     : TGIFImage;
 html    : string;
begin

 FrConWeb.Cursor   := crHourGlass;
 Application.ProcessMessages;

 //IdSSLHandlerSocket.SSLOptions.CertFile     := 'D:\Backups\Certificados\CR AGROPECUARIA CERTIFICADO A1 MDE V07-01-2016.pfx';
 
 FrConWeb.WindowState := wsMaximized;

 html       := IdHttp.Get(URLGET);

 //mem.Text   := html;

 GetHiddenFieldValues(html);

 response   := TMemoryStream.Create;
 //gif        := TGIFImage.Create;

 try
  IdHttp.Get(URLIMG, response);
  response.Position := 0;
  //gif.LoadFromStream(response);
  //imgCaptcha.Picture.Assign(gif);

  FrConWeb.Cursor := crDefault;
  Application.ProcessMessages;
 finally
  //gif.Free;
  response.Free;
  //mem.Free;

  FrConWeb.Cursor := crDefault;
  Application.ProcessMessages;
 end;

end;

procedure TFrConWeb.btnGoClick(Sender: TObject);
begin
 p_execute;
end;

procedure TFrConWeb.GetHiddenFieldValues(html: string);
//var
// nIni, nLen: integer;
// cVal      : string;
begin

 //...

end;

procedure TFrConWeb.p_Execute;
var
 params: TStringList;
begin

 params := TStringList.Create;

 try
  params.Add('__VIEWSTATE=' + viewState);
  params.Add('__EVENTVALIDATION=' + eventValidate);

  params.Add('__EVENTTARGET=');
  params.Add('__EVENTARGUMENT=');

  params.Add('ctl00$txtPalavraChave=');

  params.Add('ctl00$ContentPlaceHolder1$txtChaveAcessoCompleta=' + Trim(edtKey.Text));

  params.Add('ctl00$ContentPlaceHolder1$txtCaptcha=' + Trim(edtCode.Text));

  params.Add('ctl00$ContentPlaceHolder1$btnConsultar=Continuar');
  params.Add('hiddenInputToUpdateATBuffer_CommonToolkitScripts=1');

  //mem.Text := IdHttp.Post(URLPOST, params);

  //mem.Text := IdHttp.Get(URLGETRESULT);
 finally
  params.Free;
 end;

end;

procedure TFrConWeb.btn1Click(Sender: TObject);
begin
 Close;
end;

procedure TFrConWeb.lblInitMouseLeave(Sender: TObject);
begin
 lblInit.Font.Style := [];
end;

procedure TFrConWeb.lblInitMouseEnter(Sender: TObject);
begin
 lblInit.Font.Style := [fsUnderline];
end;

end.
