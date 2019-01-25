unit FrBackup_U;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ActnList, Menus, ImgList,
  Buttons, ComCtrls, DB, DBGrids, System.ImageList, Vcl.ExtDlgs, Vcl.Mask,
  RxToolEdit, RxAnimate, FireDAC.Stan.Def, FireDAC.VCLUI.Wait, SHDocVw,
  FireDAC.Phys.ASAWrapper, FireDAC.Stan.Intf, FireDAC.Phys, Vcl.OleCtrls,
  FireDAC.Phys.ODBCBase, FireDAC.Phys.ASA, dxGDIPlusClasses, RxCtrls, ACBrGIF;

type
  TFrBackup = class(TForm)
    ImageList1: TImageList;
    GroupBox8: TGroupBox;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    ProgressBar1: TProgressBar;
    DataSource1: TDataSource;
    Panel1: TPanel;
    Panel2: TPanel;
    StatusBar1: TStatusBar;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel3: TPanel;
    edt_CamBak1: TDirectoryEdit;
    acbrgf1: TACBrGIF;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrBackup: TFrBackup;

implementation

uses GBNFe_U, DMFD_U;

{$R *.dfm}

procedure TFrBackup.FormActivate(Sender: TObject);
begin
 edt_CamBak1.Text := gCamBak;
end;

procedure TFrBackup.BitBtn2Click(Sender: TObject);
begin
 Close;
end;

procedure TFrBackup.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 Direction : Integer;
begin
 // Alterar a propriedade do KeypPeview do Form pra true
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

procedure TFrBackup.BitBtn1Click(Sender: TObject);
begin

 if not ( DirectoryExists(edt_CamBak1.Text) ) then
  begin
   MessageDlg('Diret�rio n�o encontrado!', mtInformation, [mbOk], 0);
   Exit;
  end;

 if MessageDlg('Confirma backup dos dados', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin

   acbrgf1.Visible := True;
   acbrgf1.Active := True;
   edt_CamBak1.Enabled := False;
   BitBtn1.Enabled := False;
   BitBtn2.Enabled := False;
   Application.ProcessMessages;

   //---------------- executa procedure que le os arquivos textos
   try

    TThread.CreateAnonymousThread(procedure
     var
      i : Integer;

     begin

      Progressbar1.Position := 0;

//      DMFD_U.DMFD.FDConNFe.ResourceOptions.BackupFolder := '\\192.168.1.60\GBSuporte\backups';


      DMFD.FDQuery2.DisableControls;
      DMFD.FDQuery2.Close;
      DMFD.FDQuery2.SQL.Clear;
      DMFD.FDQuery2.SQL.Add( 'exec sp_bkp :gCamBak, :gNFe, :DT               '  );
      DMFD.FDQuery2.ParamByName('gCamBak').Value  := edt_CamBak1.Text;
      DMFD.FDQuery2.ParamByName('gNFe'   ).Value  := gNFe;
      DMFD.FDQuery2.ParamByName('DT'     ).Value  := ( (FormatDateTime('yyyymmdd', now())) + 'T' +
                                                       (FormatDateTime('hhnnss',   now())) );

      try

       DMFD.FDQuery2.ExecSQL;

      except on e:Exception do

       begin

        DMFD.FDQuery2.Close;
        acbrgf1.Visible := False;

        Application.Messagebox( pWideChar('Procedure SP_BKP com anomalia! ' + Chr(13) + Chr(13) +
                               e.Message), 'Aten��o!', mb_iconstop + mb_ok );

        edt_CamBak1.Enabled := True;
        BitBtn1.Enabled := True;
        BitBtn2.Enabled := True;

        DMFD.FDQuery2.EnableControls;
        Application.ProcessMessages;

        exit;

       end;

      end;

      // Dispara uma barra de progresso finalizando o processo
      with ProgressBar1 do
       begin
        for i := 1 to 100 do
         begin
          Application.ProcessMessages;
          Position := i;
          Label2.Caption := IntToStr(i) + '%';
          Sleep(10);
         end;
       end;

      DMFD.FDQuery2.Close;
      acbrgf1.Visible := False;

      MessageDlg('Backup realizado com sucesso',mtInformation,[mbOK],0);

      edt_CamBak1.Enabled := True;
      BitBtn1.Enabled := True;
      BitBtn2.Enabled := True;

      DMFD.FDQuery2.EnableControls;
      Application.ProcessMessages;

     end).Start;

   finally

   end;

 end;

end;

procedure TFrBackup.DataSource1DataChange(Sender: TObject; Field: TField);
//var
 // i  : Integer;
begin
{
 with ProgressBar1 do
  begin
   Application.ProcessMessages;
   Min := 0;
   Max := dmNFe.ZQuery2.RecordCount;
   Position := i;
  end;
  }
end;

procedure TFrBackup.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Progressbar1.Position := 0;
end;

end.
