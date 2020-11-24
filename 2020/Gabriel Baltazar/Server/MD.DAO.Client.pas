unit MD.DAO.Client;

interface

uses
  MD.Model.Classes,
  System.Generics.Collections,
  System.SysUtils;

type TDAOClient = class

  private

    function CopyClient(AClient: TClient): TClient;
  public
    procedure insert(Client: TClient);
    procedure update(Client: TClient);
    procedure delete(Id: Integer);
    function listAll: TObjectList<TClient>;
    function find(Id: Integer): TClient;

    constructor create;
end;

var
  Clients: TObjectList<TClient>;

procedure initialDb;

implementation

procedure initialDb;
var
  i: Integer;
begin
  for i := 1 to 10 do
  begin
    Clients.Add(TClient.Create);
    Clients.Last.id := i;
    Clients.Last.name     := 'Client ' + i.ToString;
    Clients.Last.lastName := 'LastName ' + i.ToString;
    Clients.Last.phone  := Format('%6.9d',[i]);;
  end;
end;

{ TDAOClient }

function TDAOClient.CopyClient(AClient: TClient): TClient;
begin
  result := TClient.Create;
  try
    Result.id       := AClient.id;
    result.name     := AClient.name;
    result.lastName := AClient.lastName;
    result.phone    := AClient.phone;
  except
    Result.Free;
    raise;
  end;
end;

constructor TDAOClient.create;
begin
  
end;

procedure TDAOClient.delete(Id: Integer);
var
  i : Integer;
begin
  for i := 0 to Pred(Clients.Count) do
  begin
    if Clients[i].id = Id then
    begin
      Clients.Delete(i);
      Exit;
    end;
  end;

  raise Exception.CreateFmt('Client %s not found.', [Id.ToString]);
end;

function TDAOClient.find(Id: Integer): TClient;
var
  i: Integer;
begin
  result := nil;
  for i := 0 to Pred(Clients.Count) do
  begin
    if Clients[i].id = id then
    begin
      result          := TClient.Create;
      Result.id       := Clients[i].id;
      result.name     := Clients[i].name;
      Result.lastName := Clients[i].lastName;
      Result.phone    := Clients[i].phone;
    end;
  end;
end;

procedure TDAOClient.insert(Client: TClient);
var
  auxClient: TClient;
begin
  auxClient := CopyClient(Client);
  try
    auxClient.id := Clients.Last.id + 1;
    Clients.Add(auxClient);
    Client.id := auxClient.id;
  except
    auxClient.Free;
  end;
end;

function TDAOClient.listAll: TObjectList<TClient>;
begin
  result := Clients;
end;

procedure TDAOClient.update(Client: TClient);
var
  i : Integer;
begin
  for i := 0 to Pred(Clients.Count) do
  begin
    if Clients[i].id = Client.id then
    begin
      Clients[i].name := Client.name;
      Clients[i].lastName := Client.lastName;
      Clients[i].phone := Client.phone;
      Exit;
    end;
  end;

  raise Exception.CreateFmt('Client %s not found.', [Client.id]);
end;

initialization
  Clients := TObjectList<TClient>.create;
  initialDb;

finalization
  Clients.Free;

end.
