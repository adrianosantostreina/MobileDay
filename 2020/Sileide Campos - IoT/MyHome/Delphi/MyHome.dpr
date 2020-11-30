program MyHome;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {FMyHome};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMyHome, FMyHome);
  Application.Run;
end.
