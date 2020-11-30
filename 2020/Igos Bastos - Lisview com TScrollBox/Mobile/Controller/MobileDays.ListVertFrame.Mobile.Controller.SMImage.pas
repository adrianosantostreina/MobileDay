unit MobileDays.ListVertFrame.Mobile.Controller.SMImage;

interface

uses
  System.Classes,
  System.Net.HttpClient,
  System.IOUtils,
  System.Net.HttpClientComponent, System.SysUtils;

type
  TSMImage = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    class procedure ClearImage();
    class function ShowImage(const AName, AImageUrl: string): string;
    class function GetImage(const AImageUrl: string): TMemoryStream;
    { public declarations }

  published
    { published declarations }
  end;

implementation

{ TSMImage }

class procedure TSMImage.ClearImage;
var
  LPath: string;
  MySearch: TSearchRec;
begin
  LPath := System.IOUtils.TPath.GetDocumentsPath;
  LPath := System.IOUtils.TPath.Combine(LPath, 'Image');

  FindFirst(System.IOUtils.TPath.Combine(LPath, '*.*'), faAnyFile+faReadOnly, MySearch);
  DeleteFile(LPath+'\'+MySearch.Name);
  while FindNext(MySearch)=0 do
  begin
    DeleteFile(System.IOUtils.TPath.Combine(LPath, MySearch.Name));
  end;
  FindClose(MySearch);
end;

class function TSMImage.GetImage(const AImageUrl: string): TMemoryStream;
var
  LResponse: IHttpResponse;
  HttpClient: TNetHTTPClient;
  HTTPRequest: TNetHTTPRequest;
begin
  try
    Result := TMemoryStream.Create;
    HttpClient := TNetHTTPClient.Create(nil);
    HTTPRequest := TNetHTTPRequest.Create(nil);
    HTTPRequest.Client := HttpClient;

    try
      LResponse :=
        HTTPRequest.Get(
        AImageUrl,
        Result
        );
      Result.Position := 0;
      // LMemStream.SaveToFile(APathToSave);
    except
      // Nao precisa fazer nada, so nao deu p baixar
    end;
  finally
    // FreeAndNil(LMemStream);
    FreeAndNil(HTTPRequest);
    FreeAndNil(HttpClient);
  end;
end;

class function TSMImage.ShowImage(const AName, AImageUrl: string): string;
var
  LPath: string;
  LMemStream: TMemoryStream;
begin
  Result := EmptyStr;
  LPath := System.IOUtils.TPath.GetDocumentsPath;
  LPath := System.IOUtils.TPath.Combine(LPath, 'Image');

  if not (DirectoryExists(LPath)) then
    ForceDirectories(LPath);

  LPath := System.IOUtils.TPath.Combine(LPath, AName);

  if not (FileExists(LPath)) then
  begin
    try
      LMemStream := GetImage(AImageUrl);
      LMemStream.SaveToFile(LPath);
    finally
      FreeAndNil(LMemStream);
    end;
  end;

  Result := LPath;
end;

end.
