unit Server.Methods;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth;

type
{$METHODINFO ON}
  TServerMethods1 = class(TComponent)
  public
    function Ping: string;
  end;
{$METHODINFO OFF}

implementation

{ TServerMethods1 }

function TServerMethods1.Ping: string;
begin
  Result := 'Pong';
end;

end.
