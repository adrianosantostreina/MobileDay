unit DAO.Visita;

interface

uses
  DAO.Base,

  Data.Db,
  Data.SqlTimSt,

  FireDAC.Stan.Option,

  Server.DataSets,
  Server.Connection,

  System.JSON,
  System.SysUtils,

  Utils.Dataset.JSON.Helper;

type
  TDAOVisita = class(TDAOBase)
    private

    public
      function List : TJSONArray;
      function Find (AID: Integer): TJSONArray;
      function Insert: TJSONObject;
      function Update(AID: Integer; AValues: TJSONValue): TJSONObject;
      function Delete(AID: Integer): TJSONObject;
  end;

implementation

{ TDAOVisita }

function TDAOVisita.Delete(AID: Integer): TJSONObject;
begin

end;

function TDAOVisita.Find(AID: Integer): TJSONArray;
begin

end;

function TDAOVisita.Insert: TJSONObject;
begin

end;

function TDAOVisita.List: TJSONArray;
var
  MyQuery : TMyQuery;
begin
  try
    MyQuery := SetSQL('SELECT * FROM VISITAS');
    MyQuery.Query.Active := True;
    if MyQuery.Query.IsEmpty then
      Result := TJSONArray.Create
    else
      Result := MyQuery.Query.DataSetToJson;
  finally

  end;
end;

function TDAOVisita.Update(AID: Integer; AValues: TJSONValue): TJSONObject;
begin

end;

end.
