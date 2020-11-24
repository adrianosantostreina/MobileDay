unit Server.Controller;

interface

uses MVCFramework, MVCFramework.Commons;

type
  [MVCPath('/api')]
  TMyController = class(TMVCController)
  public
    [MVCPath('/ping')]
    [MVCHTTPMethod([httpGET])]
    procedure GetPing;
  end;

implementation

{ TMyController }

procedure TMyController.GetPing;
begin
  Render('pong');
end;

end.
