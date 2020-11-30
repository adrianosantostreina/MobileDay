unit Controller.Visita;

interface

uses
  Horse,

  System.JSON,
  System.StrUtils,
  System.SysUtils,
  System.Classes,

  Server.Connection,

  DAO.Visita;

  procedure RegisterVisita;

  procedure List   (Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Find   (Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Insert (Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Update (Req: THorseRequest; Res: THorseResponse; Next: TProc);
  procedure Delete (Req: THorseRequest; Res: THorseResponse; Next: TProc);

implementation

procedure RegisterVisita;
begin
  THorse.Get('/visita'       ,  List);
  THorse.Get('/visita/:id'   ,  Find);
  THorse.Post('/visita'      ,  Insert);
  THorse.Put('/visita'       ,  Update);
  THorse.Delete('/visita'    ,  Delete);
end;

procedure List   (Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  LConn      : TConnectionData;
  LDAOVisita : TDAOVisita;
begin
  try
    LConn := TConnectionData.Create;
    try
      LDAOVisita := TDAOVisita.Create(LConn);
      Res.Send<TJSONArray>(LDAOVisita.List);
    finally
      LDAOVisita.Free;
    end;
  finally
    LConn.Free;
  end;
end;
procedure Find   (Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;
procedure Insert (Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;
procedure Update (Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;
procedure Delete (Req: THorseRequest; Res: THorseResponse; Next: TProc);
begin

end;

end.
