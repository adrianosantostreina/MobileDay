unit MD.Controller.Client;

interface

uses
  Horse,
  MD.Model.Classes,
  MD.DAO.Client,
  REST.Json,
  System.JSON,
  System.SysUtils;

procedure Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure List(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure Find(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure Update(Req: THorseRequest; Res: THorseResponse; Next: TProc);

procedure Registry;

implementation

procedure Registry;
begin
  THorse.Get('client', List);
  THorse.Get('client/:id', Find);
  THorse.Delete('client/:id', Delete);
  THorse.PUT('client/:id', Update);
  THorse.Post('client', Insert);
end;

procedure Delete(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  id : Integer;
  dao: TDAOClient;
begin
  id := Req.Params.Items['id'].ToInteger;
  dao:= TDAOClient.create;
  try
    dao.delete(id);
    Res.Status(204);
  finally
    dao.Free;
  end;
end;

procedure Find(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  id : Integer;
  dao: TDAOClient;
  client: TClient;
begin
  id := Req.Params.Items['id'].ToInteger;
  dao:= TDAOClient.create;
  try
    client := dao.find(id);
    try
      if not Assigned(client) then
      begin
        Res.Status(404);
        raise Exception.CreateFmt('Client %s not found.', [id.ToString]);
      end;

      Res.Send(TJson.ObjectToJsonString(client))
        .ContentType('application/json');
    finally
      client.Free;
    end;
  finally
    dao.Free;
  end;
end;

procedure List(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  jsonArray: TJSONArray;
  i: Integer;
  query: string;
begin
  jsonArray := TJSONArray.Create;
  try
    for i := 0 to Pred(Clients.Count) do
      jsonArray.AddElement(TJson.ObjectToJsonObject(Clients[i]));

    Res.Send(query).Send(jsonArray.ToString)
        .ContentType('application/json');
  finally
    jsonArray.Free;
  end;
end;

procedure Insert(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  client : TClient;
  dao : TDAOClient;
begin
  client := TJson.JsonToObject<TClient>(Req.Body);
  try
    dao := TDAOClient.create;
    try
      dao.insert(client);
      Res.Send(TJson.ObjectToJsonString(client))
        .ContentType('application/json')
        .Status(201);

      THorseHackResponse(Res).GetWebResponse.SetCustomHeader(
        'location', client.id.ToString
      );
    finally
      dao.Free;
    end;
  finally
    client.Free;
  end;
end;

procedure Update(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  client : TClient;
  dao : TDAOClient;
  id : Integer;
begin
  client := TJson.JsonToObject<TClient>(Req.Body);
  try
    id  := Req.Params['id'].ToInteger;
    client.id := id;
    dao := TDAOClient.create;
    try
      dao.update(client);
      Res.Send(TJson.ObjectToJsonString(client))
        .ContentType('application/json')
        .Status(202);
    finally
      dao.Free;
    end;
  finally
    client.Free;
  end;
end;

end.
