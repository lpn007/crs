program crs;

uses
  Vcl.Forms,
  Umain in 'Umain.pas' {frmMain},
  Usetup in 'Usetup.pas' {frmSetup},
  UFuns in 'UFuns.pas',
  Uss in 'Uss.pas' {mdss: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '���ݱ����';
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.
