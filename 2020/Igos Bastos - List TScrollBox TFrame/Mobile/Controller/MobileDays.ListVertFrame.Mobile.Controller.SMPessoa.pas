unit MobileDays.ListVertFrame.Mobile.Controller.SMPessoa;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,
  System.IOUtils,

  {Uses necessarias para uso do FDMemTable}
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FMX.Controls.Presentation, FMX.StdCtrls
  {Uses necessarias para uso do FDMemTable}

  {Uses necessarias para uso do dataset-serialize}
  // GitHub: https://github.com/viniciussanchez/dataset-serialize
    , DataSet.Serialize
  {Uses necessarias para uso do dataset-serialize}
    ;

type

  TSMPessoa = class
  private
    { private declarations }
  protected
    { protected declarations }
  public
    class function GetJson(ADs: TDataSet): string;
    class function GetPessoa(const AFirst, AShow: Integer): TFDMemTable;
    { public declarations }
  published
    { published declarations }
  end;

implementation

{ TSMPessoa }

class function TSMPessoa.GetJson(ADs: TDataSet): string;
begin
  Result := ADs.ToJSONArrayString;
end;

class function TSMPessoa.GetPessoa(const AFirst, AShow: Integer): TFDMemTable;
var
  LStrLst: TStringList;
  LFdMem: TFDMemTable;
  LPathFile: string;
begin
  Result := TFDMemTable.Create(nil);

  try
    LFdMem := TFDMemTable.Create(nil);
{$REGION 'Abstrair'}
    {
      Processo de Get do Servidor ou Select local
    }
    LStrLst := TStringList.Create;
    try
{$IFDEF MSWINDOWS}
      LPathFile := 'C:\Fontes Sistemas\Mobile Days\List-VertScrollBox-Frame\Lib\Files\MOCK_DATA.json';
{$ELSE}
      LPathFile := System.IOUtils.TPath.GetDocumentsPath;
      LPathFile := System.IOUtils.TPath.Combine(LPathFile, 'MOCK_DATA.json');
{$ENDIF}

      if not(FileExists(LPathFile)) then
        StrToInt('1');

      LStrLst.LoadFromFile(LPathFile);
      try
        {$ZEROBASEDSTRINGS ON}
        LFdMem.LoadFromJSON(LStrLst.Text);
      finally
        {$ZEROBASEDSTRINGS OFF}
      end;

      LFdMem.First;
      // Remove registros maiores do que o limite de apresentacao desejado
      while LFdMem.RecordCount > (AShow + AFirst) do
      begin
        LFdMem.RecNo := AShow + AFirst + 1;
        LFdMem.Delete;
      end;

      // Remove registros maiores do que o limite de apresentacao desejado
      while LFdMem.RecordCount > AShow do
      begin
        LFdMem.RecNo := 0;
        LFdMem.Delete;
      end;

    finally
      FreeAndNil(LStrLst);
    end;
    // **************
{$ENDREGION}

{$REGION 'Abstrair'}
    {
      Desencapsular o retorno e traduzir para algum formato conhecido
    }
    Result.CopyDataSet(LFdMem, [coStructure, coRestart, coAppend]);
    // **************
{$ENDREGION}

  finally
    FreeAndNil(LFdMem);
  end;
end;

end.
