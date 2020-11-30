program Alerta;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {FAlerta};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFAlerta, FAlerta);
  Application.Run;
end.
