program CliSitefMp5;

uses
  System.StartUpCopy,
  FMX.Forms,
  clisitef in 'clisitef.pas',
  wbt.CliSiTefI in 'wbt.CliSiTefI.pas',
  apoio.clisitef in 'apoio.clisitef.pas',
  constants in 'constants.pas',
  ufrmMP5 in 'ufrmMP5.pas' {fromTransacao};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfromTransacao, fromTransacao);
  Application.Run;
end.
