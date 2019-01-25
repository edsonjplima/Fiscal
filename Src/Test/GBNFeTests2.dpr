program GBNFeTests2;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

  uses
   DUnitTestRunner,

   GBNFe_U in '..\GBNFe_U.pas' {FrGBNFe},
   FrPar_U in '..\FrPar_U.pas' {FrPar},
   FrInut_U in '..\FrInut_U.pas' {FrInut},
   ufrmStatus in '..\ufrmStatus.pas' {frmStatus},
   DMNFe_U in '..\DMNFe_U.pas' {DMNFe},
   Funcoes_U in '..\Funcoes_U.pas' {Funcoes},
   FrSeleciona_U in '..\FrSeleciona_U.pas' {FrSeleciona},
   FrCCe_U in '..\FrCCe_U.pas' {FrCCe},
   FrBackup_U in '..\FrBackup_U.pas' {FrBackup},
   FrBuscaNota_U in '..\FrBuscaNota_U.pas' {FrBuscaNota},
   FrXML_U in '..\FrXML_U.pas' {FrXML},
   FrPw_U in '..\FrPw_U.pas' {FrPw},
   FrConsManif_U in '..\FrConsManif_U.pas' {FrConsManif},
   FrImportXML_U in '..\FrImportXML_U.pas' {FrImportXML},
   FrSenMst_U in '..\FrSenMst_U.pas' {FrSenMst},
   FrMens_U in '..\FrMens_U.pas' {FrMens},
   FrConWeb_U in '..\FrConWeb_U.pas' {FrConWeb},
   FrContab_U in '..\FrContab_U.pas' {FrContab},
   FrEmail_U in '..\FrEmail_U.pas' {FrEmail},
   DMFD_U in '..\DMFD_U.pas' {DMFD: TDataModule},
   FrBuscaChave_U in '..\FrBuscaChave_U.pas' {FrBuscaChave},
   FrBDFD_U in '..\FrBDFD_U.pas' {FrBDFD};

{$R *.res}

begin
  DUnitTestRunner.RunRegisteredTests;
end.

