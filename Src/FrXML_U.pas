unit FrXML_U;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, vcl.Graphics, vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus, Vcl.Buttons, Vcl.ExtCtrls,
  IWControl, IWCompMemo, IWDBStdCtrls, Vcl.OleCtrls, SHDocVw,
  FireDAC.Comp.Client,
  DBCtrls, xmldom, XMLIntf, msxmldom, XMLDoc, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL,
  cxMaskEdit, cxTextEdit, cxCalendar, dxDateTimeWheelPicker, cxRichEdit,
  cxCheckBox, cxCurrencyEdit, cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxInplaceContainer, cxDBTL, cxTLData, cxMemo, cxBlobEdit,
  cxImageComboBox, cxContainer, cxEdit, dxCore, cxDateUtils, Vcl.Samples.Gauges,
  cxDropDownEdit;

type
 TWebControl = class(TWebBrowser)
end;

type
  TFrXML = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    Panel9: TPanel;
    BitBtn12: TBitBtn;
    BitBtn4: TBitBtn;
    PopupMenu1: TPopupMenu;
    LimparCorreo1: TMenuItem;
    DesfazeraUltimaIncluso1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    GroupBox11: TGroupBox;
    Edit8: TEdit;
    GroupBox15: TGroupBox;
    GroupBox1: TGroupBox;
    WB_XML_Nota: TWebBrowser;
    XMLDocument1: TXMLDocument;
    btn1: TBitBtn;
    cxTLX: TcxTreeList;
    cxTLXbSel: TcxTreeListColumn;
    cxTLXi_ID: TcxTreeListColumn;
    cxTLXdInc: TcxTreeListColumn;
    cxTLXbXML: TcxTreeListColumn;
    cxTLXdDem: TcxTreeListColumn;
    cxTLXlNot: TcxTreeListColumn;
    cxTLXsMod: TcxTreeListColumn;
    cxTLXsSer: TcxTreeListColumn;
    N1: TMenuItem;
    MarcaTodas1: TMenuItem;
    DesmarcaTodas1: TMenuItem;
    TabSheet1: TTabSheet;
    pnl1: TPanel;
    grp1: TGroupBox;
    cxdtp1: TcxDateEdit;
    cxdtp2: TcxDateEdit;
    lbl1: TLabel;
    grp2: TGroupBox;
    g1: TGauge;
    grp3: TGroupBox;
    edt1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure Edit8Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn12MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure GroupBox15MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Edit8MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Visualiza();
    procedure BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dxDBGrid1ChangeNodeEx(Sender: TObject);
    procedure dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure btn1Click(Sender: TObject);
    procedure cxDBTLXNodeChanged(Sender: TcxCustomTreeList;
      ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
    procedure cxDBTLXKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxDBTLXMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MarcaTodas1Click(Sender: TObject);
    procedure DesmarcaTodas1Click(Sender: TObject);
    procedure cxTLXCustomDrawDataCell(Sender: TcxCustomTreeList;
      ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
      var ADone: Boolean);
    procedure PageControl1Change(Sender: TObject);
    procedure cxdtp1Exit(Sender: TObject);
    procedure cxdtp2Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MarcaBloco( cxTLX : TcxTreeList; blMarca : Boolean; blTodos : Boolean = False ); // Marca bloco de sele��o TreeList
    Procedure pAtribSel( dxTLX : TcxTreeList; cxTLXdDem : TcxTreeListColumn;
                                              cxTLXINot : TcxTreeListColumn;
                                              cxTLXsMod : TcxTreeListColumn;
                                              cxTLXsSer : TcxTreeListColumn;
                                              FD        : TFDQuery );           // Procedure de atribui��o de sele��o nas querys
    Procedure pAtuTL( cxTLX : TcxTreeList; cxTLXbSel  :  Tcxtreelistcolumn ;
                                           cxTLXi_ID  :  Tcxtreelistcolumn ;
                                           cxTLXlNot  :  Tcxtreelistcolumn ;
                                           cxTLXdDem  :  Tcxtreelistcolumn ;
                                           cxTLXdInc  :  Tcxtreelistcolumn ;
                                           cxTLXsMod  :  Tcxtreelistcolumn ;
                                           cxTLXsSer  :  Tcxtreelistcolumn ;
                                           cxTLXbXML  :  Tcxtreelistcolumn ;
                                           FD         :  TFDQuery );            // Atualiza dados das TreeLest

  end;

var
  FrXML: TFrXML;

implementation

uses DMFD_U, GBNFe_U, ufrmStatus, DMNFe_U;

{$R *.dfm}

procedure TFrXML.Edit8Exit(Sender: TObject);
begin

 if Edit8.Text <> '' then
  if StrToInt(Edit8.Text) < 1 then
   Edit8.Text := '';

 WB_XML_Nota.Navigate('about:blank') ;

end;

procedure TFrXML.FormShow(Sender: TObject);
begin

 PageControl1.TabIndex := 0;
 BitBtn3.Enabled       := False;
 cxdtp1.Date           := Date();
 cxdtp2.Date           := Date();

 FrXML.Height := 629;
 FrXML.Width := 952;

 TWebControl(WB_XML_Nota).ParentColor := False;
 TWebControl(WB_XML_Nota).Color := clInfoBk;

 if not ( DMFD.FDQuery13.Active ) then
  DMFD.FDQuery13.Active := True;

 FrXML.Edit8.Text := '';
 FrXML.Edit8.SetFocus;

 if not DMFD.FDQuery13.IsEmpty then
  begin
   Bitbtn1.Enabled := True;
   Bitbtn4.Enabled := True;
  end
 else
  begin
   Bitbtn1.Enabled := False;
   Bitbtn4.Enabled := False;
  end;

end;

procedure TFrXML.BitBtn12Click(Sender: TObject);
begin
 frmStatus.Close;
 Close;
end;

procedure TFrXML.BitBtn4Click(Sender: TObject);
var
 vNomXML, vDataEmi           : string;
 vNomTag, vDmiTag            : string;
 i, x, y                     : Integer;
 vGraNom, vGraBom            : Boolean;
 vGNoDhE, vGBoDhE            : Boolean;
 vDentro                     : Boolean;
begin

 case PageControl1.TabIndex of

  0 :

   begin

    pAtribSel(cxTLX, cxTLXdDem, cxTLXlNot, cxTLXsMod, cxTLXsSer, DMFD.FDQuery13);

    DMFD.FDQuery13.First;
    while ( not DMFD.FDQuery13.Eof )  do
     begin

      if ( DMFD.FDQuery13['Checado'] = 'Y' ) then
       begin

        gNomXML := '';
        vDataEmi:= '';                                                             // limpa a vari�vel global para atribuir novo nome
        vNomTag := '';
        vDmiTag := '';
        vGraNom := False;
        vGraBom := False;
        vGNoDhE := False;
        vGBoDhE := False;
        vDentro := True;
        gAnoMes := '';
        x       := 0;
        y       := 0;
        i       := 0;

        vNomXML := DMFD.FDQuery13['xml_nota']   + DMFD.FDQuery13['xml_nota1']  +       // pega os dados do campo memo
                   DMFD.FDQuery13['xml_nota2']  + DMFD.FDQuery13['xml_nota3']  +
                   DMFD.FDQuery13['xml_nota4']  + DMFD.FDQuery13['xml_nota5']  +
                   DMFD.FDQuery13['xml_nota6']  + DMFD.FDQuery13['xml_nota7']  +
                   DMFD.FDQuery13['xml_nota8']  + DMFD.FDQuery13['xml_nota9']  +
                   DMFD.FDQuery13['xml_nota10'] + DMFD.FDQuery13['xml_nota11'] +
                   DMFD.FDQuery13['xml_nota12'] + DMFD.FDQuery13['xml_nota13'] +
                   DMFD.FDQuery13['xml_nota14'] + DMFD.FDQuery13['xml_nota15'] +
                   DMFD.FDQuery13['xml_nota16'] + DMFD.FDQuery13['xml_nota17'] +
                   DMFD.FDQuery13['xml_nota18'] + DMFD.FDQuery13['xml_nota19'] +
                   DMFD.FDQuery13['xml_nota20'] + DMFD.FDQuery13['xml_nota21'] +
                   DMFD.FDQuery13['xml_nota22'] + DMFD.FDQuery13['xml_nota23'] +
                   DMFD.FDQuery13['xml_nota24'] + DMFD.FDQuery13['xml_nota25'] +
                   DMFD.FDQuery13['xml_nota26'] + DMFD.FDQuery13['xml_nota27'] +
                   DMFD.FDQuery13['xml_nota28'] + DMFD.FDQuery13['xml_nota29'] +
                   DMFD.FDQuery13['xml_nota30'] + DMFD.FDQuery13['xml_nota31'] +
                   DMFD.FDQuery13['xml_nota32'] + DMFD.FDQuery13['xml_nota33'] +
                   DMFD.FDQuery13['xml_nota34'] + DMFD.FDQuery13['xml_nota35'] +
                   DMFD.FDQuery13['xml_nota36'] + DMFD.FDQuery13['xml_nota37'] +
                   DMFD.FDQuery13['xml_nota38'] + DMFD.FDQuery13['xml_nota39'] +
                   DMFD.FDQuery13['xml_nota40'];

        for i := 1 to length(vNomXML) do                                           // inicia loop em busca do nome 'id'
         begin

          if vDentro then
           begin

            if not vGraNom then
             vNomTag := vNomTag + vNomXML[i];

            if vNomTag <> 'I' then
             vNomTag := '';

            if vDmiTag <> 'd' then
             vDmiTag := '';

            // 1� fase - Acha o nome 'id'
            //
            if ((vNomXML[i] = 'I') and (not vGraNom)) then
             begin
              vNomTag := vNomXML[i] + vNomXML[i+1] + vNomXML[i+2] + vNomXML[i+3] + vNomXML[i+4] + vNomXML[i+5] + vNomXML[i+6];
              if (vNomTag = 'Id="NFe') then
               begin
                vGraNom := True;
                vNomTag := '';
                x := i + 7;
               end
              else
               vNomTag := '';
             end;

            // Acha a data de emiss�o 'dhEmi'
            //
            if ((vNomXML[i] = 'd') and (not vGNoDhE)) then
             begin
              vDmiTag := vNomXML[i] + vNomXML[i+1] + vNomXML[i+2] + vNomXML[i+3] + vNomXML[i+4] + vNomXML[i+5];
              if ( (vDmiTag = 'dhEmi>') or (vDmiTag = 'dEmi>2') ) then
               begin
                if (vDmiTag = 'dhEmi>') then
                 y := i + 6
                else
                 y := i + 5;
                vGNoDhE := True;
                vDmiTag := '';
               end
              else
               vDmiTag := '';
             end;

            // 2� fase - pega o nome do arquivo xml dentro do campo memo xml
            //
            if (i = x) then
             vGraBom := True;

            if (vGraNom and vGraBom) then
             begin
              if (vNomXML[i] = '"') then
               begin
                gNomXML := gNomXML + '-nfe.xml';                                         // adiciona o final do nome mais a extens�o e sai
                FrGBNFe.MemoResp.Lines.Text := UTF8Encode(DMFD.FDQuery13['xml_nota']    +// by Edson ; 2013-12-13T1555 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota1']   +
                                                          DMFD.FDQuery13['xml_nota2']   +
                                                          DMFD.FDQuery13['xml_nota3']   +
                                                          DMFD.FDQuery13['xml_nota4']   +
                                                          DMFD.FDQuery13['xml_nota5']   +// by Edson ; 2014-04-29T1629 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota6']   +
                                                          DMFD.FDQuery13['xml_nota7']   +
                                                          DMFD.FDQuery13['xml_nota8']   +
                                                          DMFD.FDQuery13['xml_nota9']   +
                                                          DMFD.FDQuery13['xml_nota10']  +
                                                          DMFD.FDQuery13['xml_nota11']  +
                                                          DMFD.FDQuery13['xml_nota12']  +
                                                          DMFD.FDQuery13['xml_nota13']  +
                                                          DMFD.FDQuery13['xml_nota14']  +
                                                          DMFD.FDQuery13['xml_nota15']  +
                                                          DMFD.FDQuery13['xml_nota16']  +
                                                          DMFD.FDQuery13['xml_nota17']  +
                                                          DMFD.FDQuery13['xml_nota18']  +// by Edson ; 2016-06-23T1549 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota19']  +
                                                          DMFD.FDQuery13['xml_nota20']  +
                                                          DMFD.FDQuery13['xml_nota21']  +
                                                          DMFD.FDQuery13['xml_nota22']  +
                                                          DMFD.FDQuery13['xml_nota23']  +
                                                          DMFD.FDQuery13['xml_nota24']  +
                                                          DMFD.FDQuery13['xml_nota25']  +
                                                          DMFD.FDQuery13['xml_nota26']  +
                                                          DMFD.FDQuery13['xml_nota27']  +
                                                          DMFD.FDQuery13['xml_nota28']  +
                                                          DMFD.FDQuery13['xml_nota29']  +
                                                          DMFD.FDQuery13['xml_nota30']  +
                                                          DMFD.FDQuery13['xml_nota31']  +
                                                          DMFD.FDQuery13['xml_nota32']  +
                                                          DMFD.FDQuery13['xml_nota33']  +
                                                          DMFD.FDQuery13['xml_nota34']  +
                                                          DMFD.FDQuery13['xml_nota35']  +
                                                          DMFD.FDQuery13['xml_nota36']  +
                                                          DMFD.FDQuery13['xml_nota37']  +
                                                          DMFD.FDQuery13['xml_nota38']  +
                                                          DMFD.FDQuery13['xml_nota39']  +
                                                          DMFD.FDQuery13['xml_nota40']);
                FrGBNFe.LoadXML1(FrGBNFe.MemoResp, WB_XML_Nota);

                vGraBom := False;
               end;

              if (vNomXML[i] <> '"') then
               gNomXML := gNomXML + vNomXML[i];                                    // gera o nome do arquivo XML que ser� gravado

             end;

            // 2� fase - pega o nome do arquivo xml dentro do campo memo xml
            //
            if (i = y) then
             vGBoDhE := True;

            if (vGNoDhE and vGBoDhE) then
             begin
              if ( (vNomXML[i] = 'T') or (vNomXML[i] = '<') )  then
               begin
                gAnoMes := Copy(vDataEmi, 1, 6);                                         // copia o ano e o mes para vari�vel global.
                vDataEmi := '';
                FrGBNFe.MemoResp.Lines.Text := UTF8Encode(DMFD.FDQuery13['xml_nota']    +// by Edson ; 2013-12-13T1555 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota1']   +
                                                          DMFD.FDQuery13['xml_nota2']   +
                                                          DMFD.FDQuery13['xml_nota3']   +
                                                          DMFD.FDQuery13['xml_nota4']   +
                                                          DMFD.FDQuery13['xml_nota5']   +// by Edson ; 2014-04-29T1629 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota6']   +
                                                          DMFD.FDQuery13['xml_nota7']   +
                                                          DMFD.FDQuery13['xml_nota8']   +
                                                          DMFD.FDQuery13['xml_nota9']   +
                                                          DMFD.FDQuery13['xml_nota10']  +
                                                          DMFD.FDQuery13['xml_nota11']  +
                                                          DMFD.FDQuery13['xml_nota12']  +
                                                          DMFD.FDQuery13['xml_nota13']  +
                                                          DMFD.FDQuery13['xml_nota14']  +
                                                          DMFD.FDQuery13['xml_nota15']  +
                                                          DMFD.FDQuery13['xml_nota16']  +
                                                          DMFD.FDQuery13['xml_nota17']  +
                                                          DMFD.FDQuery13['xml_nota18']  +// by Edson ; 2016-06-23T1549 ; acrescido as outras notas
                                                          DMFD.FDQuery13['xml_nota19']  +
                                                          DMFD.FDQuery13['xml_nota20']  +
                                                          DMFD.FDQuery13['xml_nota21']  +
                                                          DMFD.FDQuery13['xml_nota22']  +
                                                          DMFD.FDQuery13['xml_nota23']  +
                                                          DMFD.FDQuery13['xml_nota24']  +
                                                          DMFD.FDQuery13['xml_nota25']  +
                                                          DMFD.FDQuery13['xml_nota26']  +
                                                          DMFD.FDQuery13['xml_nota27']  +
                                                          DMFD.FDQuery13['xml_nota28']  +
                                                          DMFD.FDQuery13['xml_nota29']  +
                                                          DMFD.FDQuery13['xml_nota30']  +
                                                          DMFD.FDQuery13['xml_nota31']  +
                                                          DMFD.FDQuery13['xml_nota32']  +
                                                          DMFD.FDQuery13['xml_nota33']  +
                                                          DMFD.FDQuery13['xml_nota34']  +
                                                          DMFD.FDQuery13['xml_nota35']  +
                                                          DMFD.FDQuery13['xml_nota36']  +
                                                          DMFD.FDQuery13['xml_nota37']  +
                                                          DMFD.FDQuery13['xml_nota38']  +
                                                          DMFD.FDQuery13['xml_nota39']  +
                                                          DMFD.FDQuery13['xml_nota40']);
                FrGBNFe.LoadXML1(FrGBNFe.MemoResp, WB_XML_Nota);

                vDentro := False;
               end;

              if (vNomXML[i] <> '-') then                                       // gera a data que para definir o ano e mes da pasta que ser� gravado o xml
               vDataEmi := vDataEmi + vNomXML[i];

             end;

           end;

         end;


       end;

      DMFD.FDQuery13.Next;

     end;

    Application.MessageBox( 'Processo terminado!', ' Grava Xml!', MB_OK )


   end;

  1 :                                                                           // Salva um per�odo confome data ini e data fim

   begin

    // No caso, o suporte deve entrar com a senha
    FrGBNFe.pSuporteSenha();

    if ( gSenhaBD <> '' ) then
     begin

      DMFD.FDQuery20.First;

      g1.MinValue := 0;
      g1.Progress := 0;
      g1.MaxValue := DMFD.FDQuery20.RecordCount;

      while ( not DMFD.FDQuery20.Eof )  do
       begin

        Application.ProcessMessages;

        if gAbortarXML then
         begin

          gAbortarXML     := False ;
          Bitbtn4.Enabled := False ;
          Bitbtn3.Enabled := False ;
          BitBtn4.Cursor  := crHandPoint ;
          WB_XML_Nota.Navigate('about:blank') ;
          Exit ;

         end;

        gNomXML         := '';
        vDataEmi        := '';
        vNomTag         := '';
        vDmiTag         := '';
        vGraNom         := False;
        vGraBom         := False;
        vGNoDhE         := False;
        vGBoDhE         := False;
        vDentro         := True;
        gAnoMes         := '';
        x               := 0;
        y               := 0;
        i               := 0;
        g1.Progress     := g1.Progress + 1;
        BitBtn4.Cursor  := crSQLWait;
        Bitbtn3.Enabled := True;
        Application.ProcessMessages;

        vNomXML := DMFD.FDQuery20['xml_nota']   + DMFD.FDQuery20['xml_nota1']  +  // pega os dados do campo memo
                   DMFD.FDQuery20['xml_nota2']  + DMFD.FDQuery20['xml_nota3']  +
                   DMFD.FDQuery20['xml_nota4']  + DMFD.FDQuery20['xml_nota5']  +
                   DMFD.FDQuery20['xml_nota6']  + DMFD.FDQuery20['xml_nota7']  +
                   DMFD.FDQuery20['xml_nota8']  + DMFD.FDQuery20['xml_nota9']  +
                   DMFD.FDQuery20['xml_nota10'] + DMFD.FDQuery20['xml_nota11'] +
                   DMFD.FDQuery20['xml_nota12'] + DMFD.FDQuery20['xml_nota13'] +
                   DMFD.FDQuery20['xml_nota14'] + DMFD.FDQuery20['xml_nota15'] +
                   DMFD.FDQuery20['xml_nota16'] + DMFD.FDQuery20['xml_nota17'] +
                   DMFD.FDQuery20['xml_nota18'] + DMFD.FDQuery20['xml_nota19'] +
                   DMFD.FDQuery20['xml_nota20'] + DMFD.FDQuery20['xml_nota21'] +
                   DMFD.FDQuery20['xml_nota22'] + DMFD.FDQuery20['xml_nota23'] +
                   DMFD.FDQuery20['xml_nota24'] + DMFD.FDQuery20['xml_nota25'] +
                   DMFD.FDQuery20['xml_nota26'] + DMFD.FDQuery20['xml_nota27'] +
                   DMFD.FDQuery20['xml_nota28'] + DMFD.FDQuery20['xml_nota29'] +
                   DMFD.FDQuery20['xml_nota30'] + DMFD.FDQuery20['xml_nota31'] +
                   DMFD.FDQuery20['xml_nota32'] + DMFD.FDQuery20['xml_nota33'] +
                   DMFD.FDQuery20['xml_nota34'] + DMFD.FDQuery20['xml_nota35'] +
                   DMFD.FDQuery20['xml_nota36'] + DMFD.FDQuery20['xml_nota37'] +
                   DMFD.FDQuery20['xml_nota38'] + DMFD.FDQuery20['xml_nota39'] +
                   DMFD.FDQuery20['xml_nota40'];

        for i := 1 to length(vNomXML) do                                          // inicia loop em busca do nome 'id'
         begin

          if vDentro then
           begin

            if not vGraNom then
             vNomTag := vNomTag + vNomXML[i];

            if vNomTag <> 'I' then
             vNomTag := '';

            if vDmiTag <> 'd' then
             vDmiTag := '';

            // 1� fase - Acha o nome 'id'
            //
            if ((vNomXML[i] = 'I') and (not vGraNom)) then
             begin
              vNomTag := vNomXML[i] + vNomXML[i+1] + vNomXML[i+2] + vNomXML[i+3] + vNomXML[i+4] + vNomXML[i+5] + vNomXML[i+6];
              if (vNomTag = 'Id="NFe') then
               begin
                vGraNom := True;
                vNomTag := '';
                x := i + 7;
               end
              else
               vNomTag := '';
             end;

            // Acha a data de emiss�o 'dhEmi'
            //
            if ((vNomXML[i] = 'd') and (not vGNoDhE)) then
             begin
              vDmiTag := vNomXML[i] + vNomXML[i+1] + vNomXML[i+2] + vNomXML[i+3] + vNomXML[i+4] + vNomXML[i+5];
              if ( (vDmiTag = 'dhEmi>') or (vDmiTag = 'dEmi>2') ) then
               begin
                if (vDmiTag = 'dhEmi>') then
                 y := i + 6
                else
                 y := i + 5;
                vGNoDhE := True;
                vDmiTag := '';
               end
              else
               vDmiTag := '';
             end;

            // 2� fase - pega o nome do arquivo xml dentro do campo memo xml
            //
            if (i = x) then
             vGraBom := True;

            if (vGraNom and vGraBom) then
             begin
              if (vNomXML[i] = '"') then
               begin
                gNomXML := gNomXML + '-nfe.xml';                                         // adiciona o final do nome mais a extens�o e sai
                FrGBNFe.MemoResp.Lines.Text := UTF8Encode(DMFD.FDQuery20['xml_nota']    +// by Edson ; 2013-12-13T1555 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota1']   +
                                                          DMFD.FDQuery20['xml_nota2']   +
                                                          DMFD.FDQuery20['xml_nota3']   +
                                                          DMFD.FDQuery20['xml_nota4']   +
                                                          DMFD.FDQuery20['xml_nota5']   +// by Edson ; 2014-04-29T1629 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota6']   +
                                                          DMFD.FDQuery20['xml_nota7']   +
                                                          DMFD.FDQuery20['xml_nota8']   +
                                                          DMFD.FDQuery20['xml_nota9']   +
                                                          DMFD.FDQuery20['xml_nota10']  +
                                                          DMFD.FDQuery20['xml_nota11']  +
                                                          DMFD.FDQuery20['xml_nota12']  +
                                                          DMFD.FDQuery20['xml_nota13']  +
                                                          DMFD.FDQuery20['xml_nota14']  +
                                                          DMFD.FDQuery20['xml_nota15']  +
                                                          DMFD.FDQuery20['xml_nota16']  +
                                                          DMFD.FDQuery20['xml_nota17']  +
                                                          DMFD.FDQuery20['xml_nota18']  +// by Edson ; 2016-06-23T1549 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota19']  +
                                                          DMFD.FDQuery20['xml_nota20']  +
                                                          DMFD.FDQuery20['xml_nota21']  +
                                                          DMFD.FDQuery20['xml_nota22']  +
                                                          DMFD.FDQuery20['xml_nota23']  +
                                                          DMFD.FDQuery20['xml_nota24']  +
                                                          DMFD.FDQuery20['xml_nota25']  +
                                                          DMFD.FDQuery20['xml_nota26']  +
                                                          DMFD.FDQuery20['xml_nota27']  +
                                                          DMFD.FDQuery20['xml_nota28']  +
                                                          DMFD.FDQuery20['xml_nota29']  +
                                                          DMFD.FDQuery20['xml_nota30']  +
                                                          DMFD.FDQuery20['xml_nota31']  +
                                                          DMFD.FDQuery20['xml_nota32']  +
                                                          DMFD.FDQuery20['xml_nota33']  +
                                                          DMFD.FDQuery20['xml_nota34']  +
                                                          DMFD.FDQuery20['xml_nota35']  +
                                                          DMFD.FDQuery20['xml_nota36']  +
                                                          DMFD.FDQuery20['xml_nota37']  +
                                                          DMFD.FDQuery20['xml_nota38']  +
                                                          DMFD.FDQuery20['xml_nota39']  +
                                                          DMFD.FDQuery20['xml_nota40']);
                FrGBNFe.LoadXML1(FrGBNFe.MemoResp, WB_XML_Nota);

                vGraBom := False;
               end;

              if (vNomXML[i] <> '"') then
               gNomXML := gNomXML + vNomXML[i];                                 // gera o nome do arquivo XML que ser� gravado

             end;

            // 2� fase - pega o nome do arquivo xml dentro do campo memo xml
            //
            if (i = y) then
             vGBoDhE := True;

            if (vGNoDhE and vGBoDhE) then
             begin
              if ( (vNomXML[i] = 'T') or (vNomXML[i] = '<') )  then
               begin
                gAnoMes := Copy(vDataEmi, 1, 6);                                         // copia o ano e o mes para vari�vel global.
                vDataEmi := '';
                FrGBNFe.MemoResp.Lines.Text := UTF8Encode(DMFD.FDQuery20['xml_nota']    +// by Edson ; 2013-12-13T1555 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota1']   +
                                                          DMFD.FDQuery20['xml_nota2']   +
                                                          DMFD.FDQuery20['xml_nota3']   +
                                                          DMFD.FDQuery20['xml_nota4']   +
                                                          DMFD.FDQuery20['xml_nota5']   +// by Edson ; 2014-04-29T1629 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota6']   +
                                                          DMFD.FDQuery20['xml_nota7']   +
                                                          DMFD.FDQuery20['xml_nota8']   +
                                                          DMFD.FDQuery20['xml_nota9']   +
                                                          DMFD.FDQuery20['xml_nota10']  +
                                                          DMFD.FDQuery20['xml_nota11']  +
                                                          DMFD.FDQuery20['xml_nota12']  +
                                                          DMFD.FDQuery20['xml_nota13']  +
                                                          DMFD.FDQuery20['xml_nota14']  +
                                                          DMFD.FDQuery20['xml_nota15']  +
                                                          DMFD.FDQuery20['xml_nota16']  +
                                                          DMFD.FDQuery20['xml_nota17']  +
                                                          DMFD.FDQuery20['xml_nota18']  +// by Edson ; 2016-06-23T1549 ; acrescido as outras notas
                                                          DMFD.FDQuery20['xml_nota19']  +
                                                          DMFD.FDQuery20['xml_nota20']  +
                                                          DMFD.FDQuery20['xml_nota21']  +
                                                          DMFD.FDQuery20['xml_nota22']  +
                                                          DMFD.FDQuery20['xml_nota23']  +
                                                          DMFD.FDQuery20['xml_nota24']  +
                                                          DMFD.FDQuery20['xml_nota25']  +
                                                          DMFD.FDQuery20['xml_nota26']  +
                                                          DMFD.FDQuery20['xml_nota27']  +
                                                          DMFD.FDQuery20['xml_nota28']  +
                                                          DMFD.FDQuery20['xml_nota29']  +
                                                          DMFD.FDQuery20['xml_nota30']  +
                                                          DMFD.FDQuery20['xml_nota31']  +
                                                          DMFD.FDQuery20['xml_nota32']  +
                                                          DMFD.FDQuery20['xml_nota33']  +
                                                          DMFD.FDQuery20['xml_nota34']  +
                                                          DMFD.FDQuery20['xml_nota35']  +
                                                          DMFD.FDQuery20['xml_nota36']  +
                                                          DMFD.FDQuery20['xml_nota37']  +
                                                          DMFD.FDQuery20['xml_nota38']  +
                                                          DMFD.FDQuery20['xml_nota39']  +
                                                          DMFD.FDQuery20['xml_nota40']);
                FrGBNFe.LoadXML1(FrGBNFe.MemoResp, WB_XML_Nota);

                vDentro := False;
               end;

              if (vNomXML[i] <> '-') then                                       // gera a data que para definir o ano e mes da pasta que ser� gravado o xml
               vDataEmi := vDataEmi + vNomXML[i];

             end;

           end;

         end;

        DMFD.FDQuery20.Next;
        Application.ProcessMessages;

       end;

      Application.MessageBox( 'Processo terminado!', ' Grava Xml!', MB_OK );

      Bitbtn4.Enabled := False;
      Bitbtn3.Enabled := False;
      BitBtn4.Cursor  := crHandPoint;
      WB_XML_Nota.Navigate('about:blank') ;

     end;

   end;

 end;

end;

procedure TFrXML.BitBtn1Click(Sender: TObject);
begin
 Bitbtn1.Enabled := False;
 Visualiza();
 Bitbtn1.Enabled := True;
end;

procedure TFrXML.Visualiza();
var
 I : integer;
begin

 for I := 0 to cxTLX.Count -1 do
  begin

   if cxTLX.Items[I].Selected then
    begin

     DMFD.FDQuery13.First;

     while not DMFD.FDQuery13.Eof do
      begin

       if ( cxTLX.items[I].Texts[02] = VarToStr(DMFD.FDQuery13['nnf']) ) then
        begin

         FrGBNFe.MemoResp.Lines.Text := UTF8Encode(DMFD.FDQuery13['xml_nota']    +      // by Edson ; 2013-12-13T1555 ; acrescido as outras notas
                                                   DMFD.FDQuery13['xml_nota1']   +
                                                   DMFD.FDQuery13['xml_nota2']   +
                                                   DMFD.FDQuery13['xml_nota3']   +
                                                   DMFD.FDQuery13['xml_nota4']   +
                                                   DMFD.FDQuery13['xml_nota5']   +      // by Edson ; 2014-04-29T1629 ; acrescido as outras notas
                                                   DMFD.FDQuery13['xml_nota6']   +
                                                   DMFD.FDQuery13['xml_nota7']   +
                                                   DMFD.FDQuery13['xml_nota8']   +
                                                   DMFD.FDQuery13['xml_nota9']   +
                                                   DMFD.FDQuery13['xml_nota10']  +
                                                   DMFD.FDQuery13['xml_nota11']  +
                                                   DMFD.FDQuery13['xml_nota12']  +
                                                   DMFD.FDQuery13['xml_nota13']  +
                                                   DMFD.FDQuery13['xml_nota14']  +
                                                   DMFD.FDQuery13['xml_nota15']  +
                                                   DMFD.FDQuery13['xml_nota16']  +
                                                   DMFD.FDQuery13['xml_nota17']  +
                                                   DMFD.FDQuery13['xml_nota18']  +      // by Edson ; 2016-06-23T1549 ; acrescido as outras notas
                                                   DMFD.FDQuery13['xml_nota19']  +
                                                   DMFD.FDQuery13['xml_nota20']  +
                                                   DMFD.FDQuery13['xml_nota21']  +
                                                   DMFD.FDQuery13['xml_nota22']  +
                                                   DMFD.FDQuery13['xml_nota23']  +
                                                   DMFD.FDQuery13['xml_nota24']  +
                                                   DMFD.FDQuery13['xml_nota25']  +
                                                   DMFD.FDQuery13['xml_nota26']  +
                                                   DMFD.FDQuery13['xml_nota27']  +
                                                   DMFD.FDQuery13['xml_nota28']  +
                                                   DMFD.FDQuery13['xml_nota29']  +
                                                   DMFD.FDQuery13['xml_nota30']  +
                                                   DMFD.FDQuery13['xml_nota31']  +
                                                   DMFD.FDQuery13['xml_nota32']  +
                                                   DMFD.FDQuery13['xml_nota33']  +
                                                   DMFD.FDQuery13['xml_nota34']  +
                                                   DMFD.FDQuery13['xml_nota35']  +
                                                   DMFD.FDQuery13['xml_nota36']  +
                                                   DMFD.FDQuery13['xml_nota37']  +
                                                   DMFD.FDQuery13['xml_nota38']  +
                                                   DMFD.FDQuery13['xml_nota39']  +
                                                   DMFD.FDQuery13['xml_nota40']);
         FrGBNFe.LoadXML2(FrGBNFe.MemoResp, WB_XML_Nota);

         exit;
        end
       else
        DMFD.FDQuery13.Next;

      end;
    end;

  end;

end;

procedure TFrXML.BitBtn4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn4.Hint;
end;

procedure TFrXML.BitBtn12MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn12.Hint;
end;

procedure TFrXML.Panel9MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel9.Hint;
end;

procedure TFrXML.GroupBox15MouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
 StatusBar1.Panels[0].Text := GroupBox15.Hint;
end;

procedure TFrXML.PageControl1Change(Sender: TObject);
begin

 BitBtn1.Visible := ( not BitBtn1.Visible );

end;

procedure TFrXML.Panel5MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Panel5.Hint;
end;

procedure TFrXML.Edit8MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Edit8.Hint;
end;

procedure TFrXML.BitBtn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn1.Hint;
end;

procedure TFrXML.BitBtn2Click(Sender: TObject);
begin


 try

  DMFD.FDQuery20.Close;
   DMFD.FDQuery20.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.Text);
   DMFD.FDQuery20.ParamByName('dEmi_I').AsDate := cxdtp1.Date;
   DMFD.FDQuery20.ParamByName('dEmi_F').AsDate := cxdtp2.Date;
  DMFD.FDQuery20.Open;

 except on e:Exception do

  ShowMessage(e.Message);

 end;

 if not DMFD.FDQuery20.IsEmpty then
  begin

   edt1.Text := VarToStr(DMFD.FDQuery20.RecordCount);
   Bitbtn4.Enabled := True;

  end

 else

  begin

   edt1.Text := '0';
   Bitbtn4.Enabled := False;

  end;

end;

procedure TFrXML.BitBtn2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn2.Hint;
end;

procedure TFrXML.BitBtn3Click(Sender: TObject);
begin

 gAbortarXML := True;

end;

procedure TFrXML.BitBtn3MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := BitBtn3.Hint;
end;

procedure TFrXML.dxDBGrid1ChangeNodeEx(Sender: TObject);
begin
 WB_XML_Nota.Navigate('about:blank') ;
end;

procedure TFrXML.dxDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 WB_XML_Nota.Navigate('about:blank') ;
end;

procedure TFrXML.Edit8KeyPress(Sender: TObject; var Key: Char);
begin

 if not (key in['0'..'9',chr(8),chr(13)]) then
  gTcDgXml := False
 else
  begin
   gTcDgXml := True;
   if (Key = Chr(13)) then
    begin

     Edit8Exit(Sender);

     if ( Edit8.Text <> '' ) then
      begin
       if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
       frmStatus.lblStatus.Caption := 'Aguarde! Buscando notas!';
       frmStatus.BringToFront;
       frmStatus.Show;
       Application.ProcessMessages;

       btn1Click(Sender);

      end;

    end;
  end;

end;

procedure TFrXML.btn1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
 StatusBar1.Panels[0].Text := Btn1.Hint;
end;

procedure TFrXML.cxDBTLXKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

 WB_XML_Nota.Navigate('about:blank') ;

end;

procedure TFrXML.cxDBTLXMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin

 StatusBar1.Panels[0].Text := cxTLX.Hint;

end;

procedure TFrXML.cxDBTLXNodeChanged(Sender: TcxCustomTreeList;
  ANode: TcxTreeListNode; AColumn: TcxTreeListColumn);
begin

 WB_XML_Nota.Navigate('about:blank') ;

end;

procedure TFrXML.cxdtp1Exit(Sender: TObject);
begin

 if ( cxdtp1.Date > cxdtp2.Date ) then
  begin

   Application.Messagebox('A data inicial est� maior que a data final!','Aten��o!',mb_iconstop+mb_ok);
   cxdtp1.SetFocus;

  end;

end;

procedure TFrXML.cxdtp2Exit(Sender: TObject);
begin

 if ( cxdtp2.Date < cxdtp1.Date ) then
  begin

   Application.Messagebox('A data final est� menor que a data inicial!','Aten��o!',mb_iconstop+mb_ok);
   cxdtp2.SetFocus;

  end;


end;

procedure TFrXML.cxTLXCustomDrawDataCell(Sender: TcxCustomTreeList;
  ACanvas: TcxCanvas; AViewInfo: TcxTreeListEditCellViewInfo;
  var ADone: Boolean);
begin

 ACanvas.Font.Color := $00804000;

end;

procedure TFrXML.DesmarcaTodas1Click(Sender: TObject);
begin

 MarcaBloco( cxTLX, False, True );

end;

procedure TFrXML.btn1Click(Sender: TObject);
begin

 if gTcDgXml then
  begin

   try
    DMFD.FDQuery13.Close;
     DMFD.FDQuery13.ParamByName('nNF').AsString          := Trim(Edit8.Text);
     DMFD.FDQuery13.ParamByName('Codigo_Loja').AsInteger := StrToInt(FrGBNFe.edt_CodEmp.Text);
    DMFD.FDQuery13.Open;
   except
   end;

   if not DMFD.FDQuery13.IsEmpty then
    begin
     Bitbtn1.Enabled := True;
     Bitbtn4.Enabled := True;
    end
   else
    begin
     Bitbtn1.Enabled := False;
     Bitbtn4.Enabled := False;
    end;

   gTcDgXml := False;
   Edit8.SetFocus;

   // by Edson Lima ; 2017-7-17T1459 ; Atualiza dados das TreeLest - XML
   pAtuTL(cxTLX, cxTLXbSel, cxTLXi_ID, cxTLXlNot, cxTLXdDem, cxTLXdInc,
                 cxTLXsMod, cxTLXsSer, cxTLXbXML, DMFD.FDQuery13);

  end;

end;

//------------------------------------------------------------------------------
// Fun��o....: MarcaBloco
// Objetivo..: Marca um bloco de Nodes selecionados
// Parametros: Recebe a TreeList a marcar
// Cria��o...: 2017/7/7T1154
// Autor.....: Edson Lima (Modificador)
//------------------------------------------------------------------------------
procedure TFrXML.MarcaBloco( cxTLX : TcxTreeList; blMarca : Boolean; blTodos : Boolean = False );
Var
 I : Integer;

begin
 cxTLX.BeginUpdate;

 Try
  if blTodos then
   for I := 0 to cxTLX.Count - 1 do
    begin
     if blMarca then
      cxTLX.Items[I].Texts[00] := 'True'
     else
      cxTLX.Items[I].Texts[00] := 'False';
    end
  else
   for I := 0 to cxTLX.Count -1 do
    begin
     if blMarca then
      cxTLX.Selections[I].Texts[00] := 'True'
     else
      cxTLX.Selections[I].Texts[00] := 'False';
    end;
 Finally
  cxTLX.EndUpdate;
  cxTLX.Refresh;
 end;
end;

procedure TFrXML.MarcaTodas1Click(Sender: TObject);
begin
 MarcaBloco( cxTLX, True, True );
end;

//------------------------------------------------------------------------------
// Fun��o....: pAtribSel
// Objetivo..: Atribui sele��o da TreeList e Monta a Query            referenciada
// Parametros: Recebe a TreeList e o nome do campo
// Cria��o...: 2017/7/7T1154
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrXML.pAtribSel( dxTLX : TcxTreeList; cxTLXdDem : TcxTreeListColumn;
                                                 cxTLXINot : TcxTreeListColumn;
                                                 cxTLXsMod : TcxTreeListColumn;
                                                 cxTLXsSer : TcxTreeListColumn;
                                                 FD        : TFDQuery );        // Procedure de atribui��o de sele��o nas querys
Var
 I : Integer;
begin
 // by Edson ; 2017-7-7T1153 ; Atribui sele��o da TreeList e Monta a query das pendentes

 for I := 0 to cxTLX.Count - 1 do
  begin

   FD.First;

   while (not FD.Eof) do
    begin


     FD.FieldByName('Checado').ReadOnly := False;

     if ((FD['dEmi']   = cxTLX.Items[I].Texts[cxTLXdDem.ItemIndex])  and
         (FD['nNF']    = cxTLX.Items[I].Texts[cxTLXlNot.ItemIndex])  and
         (FD['Modelo'] = cxTLX.Items[I].Texts[cxTLXsMod.ItemIndex])  and
         (FD['Serie']  = cxTLX.Items[I].Texts[cxTLXsSer.ItemIndex])) then
      begin
       if ( cxTLX.Items[I].Texts[00] = 'True' ) then
        begin

         FD.Edit;
         FD['Checado'] := 'Y';

        end
       else
        begin

         FD.Edit;
         FD['Checado'] := 'N';

        end;
      end;

     FD.Next;

    end;
  end;

end;

//------------------------------------------------------------------------------
// Procedure.: pAtuTLX
// Objetivo..: Atualiza dados das TreeLest
// Parametros: Recebe a TreeList e a Query - Monta a grade
// Cria��o...: 2017/7/17T1433
// Autor.....: Edson Lima
//------------------------------------------------------------------------------
Procedure TFrXML.pAtuTL( cxTLX : TcxTreeList; cxTLXbSel  :  Tcxtreelistcolumn ;
                                              cxTLXi_ID  :  Tcxtreelistcolumn ;
                                              cxTLXlNot  :  Tcxtreelistcolumn ;
                                              cxTLXdDem  :  Tcxtreelistcolumn ;
                                              cxTLXdInc  :  Tcxtreelistcolumn ;
                                              cxTLXsMod  :  Tcxtreelistcolumn ;
                                              cxTLXsSer  :  Tcxtreelistcolumn ;
                                              cxTLXbXML  :  Tcxtreelistcolumn ;
                                              FD         :  TFDQuery );         // Atualiza dados das TreeLest
var
 nodPed : TcxTreeListNode;
begin

 cxTLX.Clear;

 if FD.RecordCount > 0 Then
  Begin
   cxTLX.BeginUpdate;

   Try
    FD.First;

    // La�o para montar grade

    While Not ( FD.Eof ) Do
     begin

      // Atribui a treelist
      nodPed := cxTLX.Add;

      nodPed.Values[cxTLXbSel.ItemIndex] := 'False';
      nodPed.Values[cxTLXi_ID.ItemIndex] := FD.fieldByName('id').AsString;
      nodPed.Values[cxTLXlNot.ItemIndex] := FD.fieldByName('nnf').AsInteger;
      nodPed.Values[cxTLXdDem.ItemIndex] := FD.fieldByName('demi').AsDateTime;
      nodPed.Values[cxTLXdInc.ItemIndex] := FD.fieldByName('dt_inclusao').AsDateTime;
      nodPed.Values[cxTLXsMod.ItemIndex] := FD.fieldByName('modelo').AsString;
      nodPed.Values[cxTLXsSer.ItemIndex] := FD.fieldByName('serie').AsString;
      nodPed.Values[cxTLXbXML.ItemIndex] := ( trim(VarToStr(FD.fieldByName('xml_nota').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota1').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota2').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota3').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota4').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota5').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota6').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota7').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota8').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota9').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota10').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota11').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota12').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota13').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota14').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota15').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota16').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota17').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota18').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota19').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota20').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota21').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota22').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota23').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota24').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota25').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota26').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota27').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota28').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota29').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota30').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota31').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota32').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota33').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota34').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota35').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota36').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota37').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota38').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota39').AsWideString)) +
                                              trim(VarToStr(FD.fieldByName('xml_nota40').AsWideString)) );
     FD.Next;
    end;
  Finally
   cxTLX.EndUpdate;
  end;
 end;
end;

end.
