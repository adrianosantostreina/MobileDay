unit DAO.Base;

interface

uses
  Data.DB,

  Server.Connection,
  Server.DataSets,

  System.SysUtils;

type
  TDAOBase = class
    protected
      FFormatSettings : TFormatSettings;
      FConnection : TConnectionData;
      procedure SetFormatSetgings;
      property FormatSettings : TFormatSettings read FFormatSettings write FFormatSettings;

      function NewQuery : TMyQuery;
      function SetSQL(SQL: String): TMyQuery;
    public
      constructor Create(Connection: TConnectionData);
  end;

implementation

{ TDAOBase }

constructor TDAOBase.Create(Connection: TConnectionData);
begin
  FConnection := Connection;
  SetFormatSetgings;
end;

function TDAOBase.NewQuery: TMyQuery;
begin
  Result                  := TMyQuery.Create;
  Result.Query.Connection := FConnection.Connection;
  Result.Query.Active     := False;
  Result.Query.SQL.Clear;
end;

procedure TDAOBase.SetFormatSetgings;
begin
  FFormatSettings                 := TFormatSettings.Create;
  FFormatSettings.DateSeparator   := '-';
  FFormatSettings.ShortDateFormat := 'yyyy-MM-dd';
  FFormatSettings.TimeSeparator   := ':';
  FFormatSettings.ShortTimeFormat := 'hh:mm';
  FFormatSettings.LongTimeFormat  := 'hh:mm:ss';
end;

function TDAOBase.SetSQL(SQL: String): TMyQuery;
begin
  Result := NewQuery;
  try
    Result.Query.SQL.Text := SQL;
  except
    Result.Free;
    raise;
  end;
end;

end.
