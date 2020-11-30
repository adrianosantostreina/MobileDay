unit wbt.CliSiTefI;

interface

uses
  Androidapi.JNI.App,
  Androidapi.JNI.Os,
  FMX.Platform.Android,
  Androidapi.JNI.Util,
  // Androidapi.Helpers,
  // Androidapi.JNI.JavaTypes,
  // Androidapi.JNI.Telephony,
  clisitef;

type

  Tdados = array of byte;

  TCliSiTefI = class
    CliSiTefI: JCliSiTefI;
    constructor Create;
    procedure GeraTrace(P1: String; P2: String; P3: String); overload;//Deprecated
    procedure GeraTrace(P1: String; P2: String; P3: Integer); overload;//Deprecated
    // procedure GeraTrace(P1: String; P2: String; P3: Tdados); overload;//Deprecated
    function carregaArquivosTraducao(P1: String): Integer; overload;//Deprecated
    function carregaArquivosTraducao(P1: String; P2: String): Integer; overload;//Deprecated
    function configuraIntSiTefInterativoEx(P1: String; P2: String; P3: String; P4: String): Integer; //Deprecated
    function continuaFuncaoSiTefInterativo: Integer;  overload;//Deprecated
    function continuaFuncaoSiTefInterativo(P1: String; P2: Integer): Integer; overload;//Deprecated
    function correspondenteBancarioSiTefInterativo(P1: String; P2: String; P3: String; P4: String; P5: String): Integer; //Deprecated
    function descarregaMensagens: Integer;  //Deprecated
    function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: Tdados; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: String; P9: String; P10: String; P11: String; P12: SmallInt): Integer; //Deprecated
    function escreveMensagemPermanentePinPad(P1: String): Integer; //Deprecated
    function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt; P4: String; P5: String; P6: String; P7: String; P8: SmallInt): Integer; //Deprecated
    function fechaPinPad: Integer; //Deprecated
    function finalizaTransacaoSiTefInterativoEx(P1: Integer; P2: String; P3: String; P4: String; P5: String): Integer; //Deprecated
    function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: String; P3: SmallInt; P4: SmallInt): Integer; //Deprecated
    function getBuffer: String; //Deprecated
    function getCodigoResposta: SmallInt; //Deprecated
    function getCodigoServico: String; //Deprecated
    function getDadosRx: Tdados; //Deprecated
    function getDadosServico: String; //Deprecated
    // function getInstance: JCliSiTefI; //Deprecated
    function getProximoComando: Integer; //Deprecated
    function getTamanhoMaximo: SmallInt; //Deprecated
    function getTamanhoMinimo: SmallInt; //Deprecated
    function getTipoCampo: Integer; //Deprecated
    function getTipoCodigoEmBarras: Integer; //Deprecated
    function getTrilha1: String; //Deprecated
    function getTrilha2: String; //Deprecated
    function getVersaoCliSiTef: String; //Deprecated
    function getVersaoCliSiTefI: String; //Deprecated
    function getVersion: String; //Deprecated
    function iniciaFuncaoSiTefInterativo(P1: Integer; P2: String; P3: String; P4: String; P5: String; P6: String; P7: String): Integer; //Deprecated
    // function init(P1: JContext): JCliSiTefI;  overload;//Deprecated
    // function init(P1: JActivity): JCliSiTefI;  overload;//Deprecated
    function interrompeLeCartaoDireto: Integer; //Deprecated
    function isDebugOn: Boolean; //Deprecated
    function leCartaoDireto(P1: String): Integer; //Deprecated
    function leCartaoDiretoSeguro(P1: String): Integer; //Deprecated
    function leSenhaDireto(P1: String): Integer; //Deprecated
    function leSimNaoPinPad(P1: String): Integer; //Deprecated
    // procedure log(P1: String);  overload;//Deprecated
    // procedure log(P1: String; P2: String);  overload;//Deprecated
    // procedure logE(P1: String);  overload;//Deprecated
    // procedure logE(P1: String; P2: String);  overload;//Deprecated
    // procedure logStackTrace;  overload;//Deprecated
    // procedure logStackTrace(P1: JThrowable);  overload;//Deprecated
    function obtemInformacoesPinPad: Integer; //Deprecated
    function obtemQuantidadeTransacoesPendentes(P1: String; P2: String): Integer; //Deprecated
    function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer; //Deprecated
    function obtemVersao: Integer; //Deprecated
    function pinpadConecta: Integer; //Deprecated
    function pinpadDesconecta: Integer; //Deprecated
    procedure setActivity(P1: JActivity); //Deprecated
    procedure setBuffer(P1: String); //Deprecated
    procedure setContinuaNavegacao(P1: Integer); //Deprecated
    procedure setDebug(P1: Boolean); //Deprecated
    // procedure setDebugStatic(P1: Boolean); //Deprecated
    procedure setMessageHandler(P1: JHandler); //Deprecated
    // function stackTrace: String;  overload;//Deprecated
    // function stackTrace(P1: JThrowable): String;  overload;//Deprecated
    function validaCampoCodigoEmBarras(P1: String): Integer; //Deprecated
    function verificaPresencaPinPad: Integer; //Deprecated
  protected
    destructor Destroy;
  end;

  { exports }
function verificaPresencaPinPad: Integer;
function validaCampoCodigoEmBarras(P1: String): Integer;
procedure setMessageHandler(P1: JHandler);
procedure setDebug(P1: Boolean);
procedure setContinuaNavegacao(P1: Integer);
procedure setBuffer(P1: String);
procedure setActivity(P1: JActivity);
function pinpadDesconecta: Integer;
function pinpadConecta: Integer;
function obtemVersao: Integer;
function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
function obtemQuantidadeTransacoesPendentes(P1, P2: String): Integer;
function obtemInformacoesPinPad: Integer;
function leSimNaoPinPad(P1: String): Integer;
function leSenhaDireto(P1: String): Integer;
function leCartaoDiretoSeguro(P1: String): Integer;
function leCartaoDireto(P1: String): Integer;
function isDebugOn: Boolean;
function interrompeLeCartaoDireto: Integer;
function iniciaFuncaoSiTefInterativo(P1: Integer;
  P2, P3, P4, P5, P6, P7: String): Integer;
function getVersion: String;
function getVersaoCliSiTefI: String;
function getVersaoCliSiTef: String;
function getTrilha2: String;
function getTrilha1: String;
function getTipoCodigoEmBarras: Integer;
function getTipoCampo: Integer;
function getTamanhoMinimo: SmallInt;
function getTamanhoMaximo: SmallInt;
function getProximoComando: Integer;
function getDadosServico: String;
function getDadosRx: Tdados;
function getCodigoServico: String;
function getCodigoResposta: SmallInt;
function getBuffer: String;
procedure GeraTrace(P1, P2: String; P3: Integer);overload;
procedure GeraTrace(P1, P2, P3: String);  overload;
// procedure GeraTrace(P1, P2: String; P3: Tdados);overload;
function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: String;
  P3, P4: SmallInt): Integer;
function finalizaTransacaoSiTefInterativoEx(P1: Integer;
  P2, P3, P4, P5: String): Integer;
function fechaPinPad: Integer;
function executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt;
  P4, P5, P6, P7: String; P8: SmallInt): Integer;
function escreveMensagemPermanentePinPad(P1: String): Integer;
function enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados;
  P5, P6, P7: SmallInt; P8, P9, P10, P11: String; P12: SmallInt): Integer;
function descarregaMensagens: Integer;
function correspondenteBancarioSiTefInterativo(P1, P2, P3, P4,
  P5: String): Integer;
function continuaFuncaoSiTefInterativo(P1: String; P2: Integer): Integer;overload;
function continuaFuncaoSiTefInterativo: Integer;overload;
function configuraIntSiTefInterativoEx(P1, P2, P3, P4: String): Integer;
function carregaArquivosTraducao(P1, P2: String): Integer; overload;
function carregaArquivosTraducao(P1: String): Integer;overload;

var
  CliSiTefI: TCliSiTefI;

implementation

uses
  System.Classes,
  System.SysUtils,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers;

{ TCliSiTefI }
function STJ(value: string): JString;
begin
  result := StringToJString(value);
end;

function JTS(value: JString): String;
begin
  result := JStringToString(value);
end;

function TCliSiTefI.carregaArquivosTraducao(P1: String): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(STJ(P1));
end;

function TCliSiTefI.carregaArquivosTraducao(P1, P2: String): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(STJ(P1), STJ(P2));
end;

function TCliSiTefI.configuraIntSiTefInterativoEx(P1, P2, P3,
  P4: String): Integer;
begin
  result := CliSiTefI.configuraIntSiTefInterativoEx(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4));
end;

function TCliSiTefI.continuaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo;
end;

function TCliSiTefI.continuaFuncaoSiTefInterativo(P1: String;
  P2: Integer): Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo(STJ(P1), P2);
end;

function TCliSiTefI.correspondenteBancarioSiTefInterativo(P1, P2, P3, P4,
  P5: String): Integer;
begin
  result := CliSiTefI.correspondenteBancarioSiTefInterativo(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4), STJ(P5));
end;

constructor TCliSiTefI.Create;
begin
  tthread.CreateAnonymousThread(
    procedure
    begin
      CliSiTefI := TJCliSiTefI.JavaClass.init(MainActivity);
    end).Start;
end;

function TCliSiTefI.descarregaMensagens: Integer;
begin
  result := CliSiTefI.descarregaMensagens;
end;

destructor TCliSiTefI.Destroy;
begin
  TCliSiTefI(CliSiTefI).DisposeOf;
  // FreeAndNil(JCliSiTefI);
end;

function TCliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados;
P5, P6, P7: SmallInt; P8, P9, P10, P11: String; P12: SmallInt): Integer;
var
  P4tmp: TJavaArray<byte>;
  i: Integer;
begin
  P4tmp := TJavaArray<byte>.Create(length(P4));
  for i := Low(P4) to High(P4) do
    P4tmp.Items[i];
  result := CliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3, P4tmp, P5, P6, P7,
    STJ(P8), STJ(P9), STJ(P10), STJ(P11), P12);
end;

function TCliSiTefI.escreveMensagemPermanentePinPad(P1: String): Integer;
begin
  result := CliSiTefI.escreveMensagemPermanentePinPad(STJ(P1));
end;

function TCliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt;
P4, P5, P6, P7: String; P8: SmallInt): Integer;
begin
  result := CliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3, STJ(P4),
    STJ(P5), STJ(P6), STJ(P7), P8);
end;

function TCliSiTefI.fechaPinPad: Integer;
begin
  result := CliSiTefI.fechaPinPad;
end;

function TCliSiTefI.finalizaTransacaoSiTefInterativoEx(P1: Integer;
P2, P3, P4, P5: String): Integer;
begin
  result := CliSiTefI.finalizaTransacaoSiTefInterativoEx(P1, STJ(P2), STJ(P3),
    STJ(P4), STJ(P5));
end;

function TCliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt;
P2: String; P3, P4: SmallInt): Integer;
begin
  result := CliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1,
    STJ(P2), P3, P4);
end;

{
procedure TCliSiTefI.GeraTrace(P1, P2: String; P3: Tdados);
var
  P3tmp: TJavaArray<byte>;
  i: Integer;
begin
  P3tmp := TJavaArray<byte>.Create(length(P3));
  for i := Low(P3) to High(P3) do
    P3tmp.Items[i];
  CliSiTefI.GeraTrace(STJ(P1), STJ(P2), P3tmp);
end;
}
procedure TCliSiTefI.GeraTrace(P1, P2, P3: String);
begin
  CliSiTefI.GeraTrace(STJ(P1), STJ(P2), STJ(P3));
end;

procedure TCliSiTefI.GeraTrace(P1, P2: String; P3: Integer);
begin
  CliSiTefI.GeraTrace(STJ(P1), STJ(P2), P3);
end;

function TCliSiTefI.getBuffer: String;
begin
  result := JTS(CliSiTefI.getBuffer);
end;

function TCliSiTefI.getCodigoResposta: SmallInt;
begin
  result := CliSiTefI.getCodigoResposta;
end;

function TCliSiTefI.getCodigoServico: String;
begin
  result := JTS(CliSiTefI.getCodigoServico);
end;

function TCliSiTefI.getDadosRx: Tdados;
var
  p1tmp: TJavaArray<byte>;
  i: Integer;
begin
  p1tmp := CliSiTefI.getDadosRx;
  setlength(result, p1tmp.length);
  for i := Low(result) to High(result) do
    result[i] := p1tmp.Items[i];
end;

function TCliSiTefI.getDadosServico: String;
begin
  result := JTS(CliSiTefI.getDadosServico);
end;

function TCliSiTefI.getProximoComando: Integer;
begin
  result := CliSiTefI.getProximoComando;
end;

function TCliSiTefI.getTamanhoMaximo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMaximo;
end;

function TCliSiTefI.getTamanhoMinimo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMinimo;
end;

function TCliSiTefI.getTipoCampo: Integer;
begin
  result := CliSiTefI.getTipoCampo;
end;

function TCliSiTefI.getTipoCodigoEmBarras: Integer;
begin
  result := CliSiTefI.getTipoCodigoEmBarras;
end;

function TCliSiTefI.getTrilha1: String;
begin
  result := JTS(CliSiTefI.getTrilha1);
end;

function TCliSiTefI.getTrilha2: String;
begin
  result := JTS(CliSiTefI.getTrilha2);
end;

function TCliSiTefI.getVersaoCliSiTef: String;
begin
  result := JTS(CliSiTefI.getVersaoCliSiTef);
end;

function TCliSiTefI.getVersaoCliSiTefI: String;
begin
  result := JTS(CliSiTefI.getVersaoCliSiTefI);
end;

function TCliSiTefI.getVersion: String;
begin
  result := JTS(CliSiTefI.getVersion);
end;

function TCliSiTefI.iniciaFuncaoSiTefInterativo(P1: Integer;
P2, P3, P4, P5, P6, P7: String): Integer;
begin
  result := CliSiTefI.iniciaFuncaoSiTefInterativo(P1, STJ(P2), STJ(P3), STJ(P4),
    STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefI.interrompeLeCartaoDireto: Integer;
begin
  result := CliSiTefI.interrompeLeCartaoDireto;
end;

function TCliSiTefI.isDebugOn: Boolean;
begin
  result := CliSiTefI.isDebugOn;
end;

function TCliSiTefI.leCartaoDireto(P1: String): Integer;
begin
  result := CliSiTefI.leCartaoDireto(STJ(P1));
end;

function TCliSiTefI.leCartaoDiretoSeguro(P1: String): Integer;
begin
  result := CliSiTefI.leCartaoDiretoSeguro(STJ(P1));
end;

function TCliSiTefI.leSenhaDireto(P1: String): Integer;
begin
  result := CliSiTefI.leSenhaDireto(STJ(P1));
end;

function TCliSiTefI.leSimNaoPinPad(P1: String): Integer;
begin
  result := CliSiTefI.leSimNaoPinPad(STJ(P1));
end;

function TCliSiTefI.obtemInformacoesPinPad: Integer;
begin
  result := CliSiTefI.obtemInformacoesPinPad;
end;

function TCliSiTefI.obtemQuantidadeTransacoesPendentes(P1, P2: String): Integer;
begin
  result := CliSiTefI.obtemQuantidadeTransacoesPendentes(STJ(P1), STJ(P2));
end;

function TCliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto
  (P1: SmallInt): Integer;
begin
  result := CliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto(P1);
end;

function TCliSiTefI.obtemVersao: Integer;
begin
  result := CliSiTefI.obtemVersao;
end;

function TCliSiTefI.pinpadConecta: Integer;
begin
  result := CliSiTefI.pinpadConecta;
end;

function TCliSiTefI.pinpadDesconecta: Integer;
begin
  result := CliSiTefI.pinpadDesconecta;
end;

procedure TCliSiTefI.setActivity(P1: JActivity);
begin
  CliSiTefI.setActivity(P1);
end;

procedure TCliSiTefI.setBuffer(P1: String);
begin
  CliSiTefI.setBuffer(STJ(P1));
end;

procedure TCliSiTefI.setContinuaNavegacao(P1: Integer);
begin
  CliSiTefI.setContinuaNavegacao(P1);
end;

procedure TCliSiTefI.setDebug(P1: Boolean);
begin
  CliSiTefI.setDebug(P1);
end;

procedure TCliSiTefI.setMessageHandler(P1: JHandler);
begin
  CliSiTefI.setMessageHandler(P1);
end;

function TCliSiTefI.validaCampoCodigoEmBarras(P1: String): Integer;
begin
  result := CliSiTefI.validaCampoCodigoEmBarras(STJ(P1));
end;

function TCliSiTefI.verificaPresencaPinPad: Integer;
begin
  result := CliSiTefI.verificaPresencaPinPad;
end;

{ exports }
function verificaPresencaPinPad: Integer;
begin
  result := CliSiTefI.verificaPresencaPinPad;
end;

function validaCampoCodigoEmBarras(P1: String): Integer;
begin
  result := CliSiTefI.validaCampoCodigoEmBarras(P1);
end;

procedure setMessageHandler(P1: JHandler);
begin
  CliSiTefI.setMessageHandler(P1);
end;

procedure setDebug(P1: Boolean);
begin
  CliSiTefI.setDebug(P1);
end;

procedure setContinuaNavegacao(P1: Integer);
begin
  CliSiTefI.setContinuaNavegacao(P1);
end;

procedure setBuffer(P1: String);
begin
  CliSiTefI.setBuffer(P1);
end;

procedure setActivity(P1: JActivity);
begin
  CliSiTefI.setActivity(P1);
end;

function pinpadDesconecta: Integer;
begin
  result := CliSiTefI.pinpadDesconecta;
end;

function pinpadConecta: Integer;
begin
  result := CliSiTefI.pinpadConecta;
end;

function obtemVersao: Integer;
begin
  result := CliSiTefI.obtemVersao;
end;

function obtemRetornoExecutaEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
begin
  result := CliSiTefI.obtemRetornoExecutaEnviaRecebeSiTefDireto(P1);
end;

function obtemQuantidadeTransacoesPendentes(P1, P2: String): Integer;
begin
  result := CliSiTefI.obtemQuantidadeTransacoesPendentes(P1, P2);
end;

function obtemInformacoesPinPad: Integer;
begin
  result := CliSiTefI.obtemInformacoesPinPad;
end;

function leSimNaoPinPad(P1: String): Integer;
begin
  result := CliSiTefI.leSimNaoPinPad(P1);
end;

function leSenhaDireto(P1: String): Integer;
begin
  result := CliSiTefI.leSenhaDireto(P1);
end;

function leCartaoDiretoSeguro(P1: String): Integer;
begin
  result := CliSiTefI.leCartaoDiretoSeguro(P1);
end;

function leCartaoDireto(P1: String): Integer;
begin
  result := CliSiTefI.leCartaoDireto(P1);
end;

function isDebugOn: Boolean;
begin
  result := CliSiTefI.isDebugOn;
end;

function interrompeLeCartaoDireto: Integer;
begin
  result := CliSiTefI.interrompeLeCartaoDireto;
end;

function iniciaFuncaoSiTefInterativo(P1: Integer;
P2, P3, P4, P5, P6, P7: String): Integer;
begin
  result := CliSiTefI.iniciaFuncaoSiTefInterativo(P1, P2, P3, P4, P5, P6, P7);
end;

function getVersion: String;
begin
  result := CliSiTefI.getVersion;
end;

function getVersaoCliSiTefI: String;
begin
  result := CliSiTefI.getVersaoCliSiTefI;
end;

function getVersaoCliSiTef: String;
begin
  result := CliSiTefI.getVersaoCliSiTef;
end;

function getTrilha2: String;
begin
  result := CliSiTefI.getTrilha2;
end;

function getTrilha1: String;
begin
end;

function getTipoCodigoEmBarras: Integer;
begin
  result := CliSiTefI.getTipoCodigoEmBarras;
end;

function getTipoCampo: Integer;
begin
  result := CliSiTefI.getTipoCampo;
end;

function getTamanhoMinimo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMinimo;
end;

function getTamanhoMaximo: SmallInt;
begin
  result := CliSiTefI.getTamanhoMaximo;
end;

function getProximoComando: Integer;
begin
  result := CliSiTefI.getProximoComando;
end;

function getDadosServico: String;
begin
  result := CliSiTefI.getDadosServico;
end;

function getDadosRx: Tdados;
begin
  result := CliSiTefI.getDadosRx;
end;

function getCodigoServico: String;
begin
  result := CliSiTefI.getCodigoServico;
end;

function getCodigoResposta: SmallInt;
begin
  result := CliSiTefI.getCodigoResposta;
end;

function getBuffer: String;
begin
  result := CliSiTefI.getBuffer;
end;

procedure GeraTrace(P1, P2: String; P3: Integer);
begin
  CliSiTefI.GeraTrace(P1, P2, P3);
end;

procedure GeraTrace(P1, P2, P3: String);
begin
  CliSiTefI.GeraTrace(P1, P2, P3);
end;

{
procedure GeraTrace(P1, P2: String; P3: Tdados);
begin
  CliSiTefI.GeraTrace(P1, P2, P3);
end;
}

function forneceParametroExecutaEnviaRecebeSiTefDireto(P1: SmallInt; P2: String;
P3, P4: SmallInt): Integer;
begin
  result := CliSiTefI.forneceParametroExecutaEnviaRecebeSiTefDireto(P1,
    P2, P3, P4);
end;

function finalizaTransacaoSiTefInterativoEx(P1: Integer;
P2, P3, P4, P5: String): Integer;
begin
  result := CliSiTefI.finalizaTransacaoSiTefInterativoEx(P1, P2, P3, P4, P5);
end;

function fechaPinPad: Integer;
begin
  result := CliSiTefI.fechaPinPad;
end;

function executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt;
P4, P5, P6, P7: String; P8: SmallInt): Integer;
begin
  result := CliSiTefI.executaEnviaRecebeSiTefDireto(P1, P2, P3, P4, P5,
    P6, P7, P8);
end;

function escreveMensagemPermanentePinPad(P1: String): Integer;
begin
  result := CliSiTefI.escreveMensagemPermanentePinPad(P1);
end;

function enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: Tdados;
P5, P6, P7: SmallInt; P8, P9, P10, P11: String; P12: SmallInt): Integer;
begin
  result := CliSiTefI.enviaRecebeSiTefDireto(P1, P2, P3, P4, P5, P6, P7, P8, P9,
    P10, P11, P12);
end;

function descarregaMensagens: Integer;
begin
  result := CliSiTefI.descarregaMensagens;
end;

function correspondenteBancarioSiTefInterativo(P1, P2, P3, P4,
  P5: String): Integer;
begin
  result := CliSiTefI.correspondenteBancarioSiTefInterativo(P1, P2, P3, P4, P5);
end;

function continuaFuncaoSiTefInterativo(P1: String; P2: Integer): Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo(P1, P2);
end;

function continuaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefI.continuaFuncaoSiTefInterativo;
end;

function configuraIntSiTefInterativoEx(P1, P2, P3, P4: String): Integer;
begin
  result := CliSiTefI.configuraIntSiTefInterativoEx(P1, P2, P3, P4);
end;

function carregaArquivosTraducao(P1, P2: String): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(P1, P2);
end;

function carregaArquivosTraducao(P1: String): Integer;
begin
  result := CliSiTefI.carregaArquivosTraducao(P1);
end;

initialization

CliSiTefI := TCliSiTefI.Create;

finalization

CliSiTefI.Free;

end.
