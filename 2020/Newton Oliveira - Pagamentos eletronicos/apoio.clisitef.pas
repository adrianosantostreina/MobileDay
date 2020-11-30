unit apoio.clisitef;

interface

uses
  System.SysUtils,
  Androidapi.JNI.App,
  Androidapi.JNI.Os,
  FMX.Platform.Android,
  clisitef;

type

  TCliSiTefIEx = class
    FCliSiTefIEx: JJCliSiTefI;
  protected
    destructor Destroy; override;
  public
    constructor Create;
    procedure GeraTrace(P1: String; P2: String; P3: String); overload;
    procedure GeraTrace(P1: String; P2: String; P3: TBytes); overload;
    procedure GeraTrace(P1: String; P2: String; P3: Integer); overload;
    function LeTrilhaChipInterativo(P1: Integer): Integer; overload;
    function abrePinPad: Integer;
    function carregaArquivosTraducao: Integer; overload;
    function carregaArquivosTraducao(P1: String; P2: String): Integer; overload;
    function configuraIntSiTefInterativo: Integer; overload;
    function configuraIntSiTefInterativo(P1: String; P2: String; P3: String)
      : Integer; overload;
    function configuraIntSiTefInterativoEx: Integer; overload;
    function configuraIntSiTefInterativoEx(P1: String; P2: String; P3: String;
      P4: String): Integer; overload;
    function consultaDescontoSocioTorcedor: Integer; overload;
    function consultaDescontoSocioTorcedor(P1: String): Integer; overload;
    function consultaParametrosSiTef: Integer; overload;
    function consultaParametrosSiTef(P1: Integer): Integer; overload;
    function consultaQtdeDescontoSocioTorcedor: Integer; overload;
    function consultaQtdeDescontoSocioTorcedor(P1: String; P2: Integer;
      P3: String; P4: String): Integer; overload;
    function continuaFuncaoSiTefInterativo: Integer;
    function correspondenteBancarioSiTefInterativo: Integer; overload;
    function correspondenteBancarioSiTefInterativo(P1: String; P2: String;
      P3: String; P4: String; P5: String): Integer; overload;
    function descarregaMensagens: Integer;
    function desfazTransacaoSiTefInterativo: Integer; overload;
    function desfazTransacaoSiTefInterativo(P1: String): Integer; overload;
    function efetuaPagamentoSiTefInterativo: Integer; overload;
    function efetuaPagamentoSiTefInterativo(P1: Integer; P2: String; P3: String;
      P4: String; P5: String; P6: String; P7: String): Integer; overload;
    function enviaRecebeSiTefDireto: Integer; overload;
    function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt;
      P4: TBytes; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: String;
      P9: String; P10: String; P11: String; P12: SmallInt): Integer; overload;
    function enviaRecebeSitServicos: Integer; overload;
    function enviaRecebeSitServicos(P1: SmallInt; P2: TBytes; P3: SmallInt;
      P4: SmallInt; P5: SmallInt; P6: String; P7: String; P8: String;
      P9: String): Integer; overload;
    function escreveMensagemPermanentePinPad: Integer; overload;
    function escreveMensagemPermanentePinPad(P1: String): Integer; overload;
    function escreveMensagemPinPad: Integer; overload;
    function escreveMensagemPinPad(P1: String): Integer; overload;
    function executaEnviaRecebeSiTefDireto: Integer; overload;
    function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt;
      P3: SmallInt; P4: String; P5: String; P6: String; P7: String;
      P8: SmallInt): Integer; overload;
    function fechaPinPad: Integer;
    function finalizaFuncaoSiTefInterativo: Integer; overload;
    function finalizaFuncaoSiTefInterativo(P1: SmallInt; P2: String; P3: String;
      P4: String; P5: String): Integer; overload;
    function finalizaTransacaoIdentificadaSiTef: Integer; overload;
    function finalizaTransacaoIdentificadaSiTef(P1: SmallInt; P2: SmallInt;
      P3: String; P4: String; P5: String; P6: String): Integer; overload;
    function finalizaTransacaoIdentificadaSiTefBonus: Integer; overload;
    function finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt; P2: String;
      P3: String; P4: String; P5: String; P6: String; P7: String)
      : Integer; overload;
    function finalizaTransacaoSiTefInterativo: Integer; overload;
    function finalizaTransacaoSiTefInterativo(P1: SmallInt; P2: String;
      P3: String; P4: String): Integer; overload;
    function finalizaTransacaoSiTefInterativoBonus: Integer; overload;
    function finalizaTransacaoSiTefInterativoBonus(P1: SmallInt; P2: String;
      P3: String; P4: String; P5: String; P6: String): Integer; overload;
    function finalizaTransacaoSiTefInterativoEx: Integer; overload;
    function finalizaTransacaoSiTefInterativoEx(P1: SmallInt; P2: String;
      P3: String; P4: String; P5: String): Integer; overload;
    function flashVendasSitef: Integer; overload;
    function flashVendasSitef(P1: String; P2: String; P3: String; P4: String;
      P5: String): Integer; overload;
    function forneceParametroEnviaRecebeSiTefDireto: Integer; overload;
    function forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt; P2: String;
      P3: SmallInt; P4: SmallInt): Integer; overload;
    function funcoesGerenciaisSiTefInterativo: Integer; overload;
    function funcoesGerenciaisSiTefInterativo(P1: String; P2: String;
      P3: String; P4: String): Integer; overload;
    function getBuffer: String;
    function getCampo: String;
    function getChaveSeguranca: String;
    function getCodigoResposta: SmallInt;
    function getCodigoServico: String;
    function getDadosContas: String;
    function getDadosDesfazimento: String;
    function getDadosRx: TBytes;
    function getDadosSaida: String;
    function getDadosServico: String;
    function getProximoComando: Integer;
    function getSenha: String;
    function getTamanhoMaximo: SmallInt;
    function getTamanhoMinimo: SmallInt;
    function getTipoCampo: Integer;
    function getTipoCodigoEmBarras: SmallInt;
    function getTipoTrilha1: String;
    function getTipoTrilha2: String;
    function getTrilha1: String;
    function getTrilha2: String;
    function getTrilha3: String;
    function getVersaoCliSiTef: String;
    function getVersaoCliSiTefI: String;
    function getVersion: String;
    function gravaDadosCriptografados: Integer; overload;
    function gravaDadosCriptografados(P1: String; P2: Integer; P3: TBytes;
      P4: Integer; P5: String): Integer; overload;
    function informaProdutoCancelamentoVidalink: Integer; overload;
    function informaProdutoCancelamentoVidalink(P1: SmallInt; P2: String;
      P3: SmallInt): Integer; overload;
    function informaProdutoVendaVidalink: Integer; overload;
    function informaProdutoVendaVidalink(P1: SmallInt; P2: String; P3: SmallInt;
      P4: String): Integer; overload;
    function informaTotalizadorVenda: Integer; overload;
    function informaTotalizadorVenda(P1: String): Integer; overload;
    function iniciaCancelamentoIdentificadoSiTefInterativo: Integer; overload;
    function iniciaCancelamentoIdentificadoSiTefInterativo(P1: String;
      P2: String; P3: String; P4: String; P5: String): Integer; overload;
    function iniciaCancelamentoPagamentoContasSiTefInterativo: Integer;
      overload;
    function iniciaCancelamentoPagamentoContasSiTefInterativo(P1: String;
      P2: String; P3: String; P4: String; P5: String): Integer; overload;
    function iniciaConfiguracaoSiTefInterativo: Integer; overload;
    function iniciaConfiguracaoSiTefInterativo(P1: String; P2: String;
      P3: String): Integer; overload;
    function iniciaFuncaoAASiTefInterativo: Integer; overload;
    function iniciaFuncaoAASiTefInterativo(P1: Integer; P2: String; P3: String;
      P4: String; P5: String; P6: String; P7: String; P8: String)
      : Integer; overload;
    function iniciaFuncaoSiTefInterativo: Integer; overload;
    function iniciaFuncaoSiTefInterativo(P1: Integer; P2: String; P3: String;
      P4: String; P5: String; P6: String; P7: String): Integer; overload;
    function iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer; overload;
    function iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1: SmallInt;
      P2: SmallInt; P3: String; P4: String; P5: String; P6: String; P7: String;
      P8: String; P9: String; P10: String): Integer; overload;
    function iniciaFuncaoSiTefInterativoConsultaPBM: Integer; overload;
    function iniciaFuncaoSiTefInterativoConsultaPBM(P1: String; P2: String;
      P3: String; P4: String; P5: String; P6: String; P7: String)
      : Integer; overload;
    function iniciaFuncaoSiTefInterativoConsultaVidalink: Integer; overload;
    function iniciaFuncaoSiTefInterativoConsultaVidalink(P1: String; P2: String;
      P3: String; P4: String; P5: String; P6: String): Integer; overload;
    function iniciaFuncaoSiTefInterativoVendaVidalink: Integer; overload;
    function iniciaFuncaoSiTefInterativoVendaVidalink(P1: String; P2: SmallInt;
      P3: String; P4: String; P5: String; P6: String): Integer; overload;
    function interrompeLeCartaoDireto: Integer;
    function leCampoCriptografadoPinPad: Integer; overload;
    function leCampoCriptografadoPinPad(P1: String; P2: String; P3: SmallInt;
      P4: SmallInt): Integer; overload;
    function leCampoPinPad: Integer; overload;
    function leCampoPinPad(P1: String; P2: SmallInt; P3: SmallInt)
      : Integer; overload;
    function leCartaoDireto: Integer; overload;
    function leCartaoDireto(P1: String): Integer; overload;
    function leCartaoDiretoEx: Integer; overload;
    function leCartaoDiretoEx(P1: String; P2: SmallInt): Integer; overload;
    function leCartaoDiretoSeguro: Integer; overload;
    function leCartaoDiretoSeguro(P1: String; P2: SmallInt): Integer; overload;
    function leCartaoInterativo: Integer; overload;
    function leCartaoInterativo(P1: String): Integer; overload;
    function leCartaoSeguro: Integer; overload;
    function leCartaoSeguro(P1: String): Integer; overload;
    function leDigitoPinPad: Integer; overload;
    function leDigitoPinPad(P1: String): Integer; overload;
    function leDoisDigitosPinPad: Integer; overload;
    function leDoisDigitosPinPad(P1: String): Integer; overload;
    function leSenhaDireto: Integer; overload;
    function leSenhaDireto(P1: String; P2: String): Integer; overload;
    function leSenhaDiretoEx: Integer; overload;
    function leSenhaDiretoEx(P1: String; P2: String; P3: SmallInt)
      : Integer; overload;
    function leSenhaInterativo: Integer; overload;
    function leSenhaInterativo(P1: String): Integer; overload;
    function leSimNaoPinPad: Integer; overload;
    function leSimNaoPinPad(P1: String): Integer; overload;
    function leTeclaPinPad: Integer;
    function leTrilha3: Integer; overload;
    function leTrilha3(P1: String): Integer; overload;
    function LeTrilhaChipInterativo: Integer; overload;
    function obtemChaveSeguranca: Integer; overload;
    function obtemChaveSeguranca(P1: String; P2: String): Integer; overload;
    function obtemDadoPinPad: Integer; overload;
    function obtemDadoPinPad(P1: String; P2: String): Integer; overload;
    function obtemDadoPinPadDireto: Integer; overload;
    function obtemDadoPinPadDireto(P1: String; P2: String): Integer; overload;
    function obtemDadoPinPadDiretoEx: Integer; overload;
    function obtemDadoPinPadDiretoEx(P1: String; P2: String; P3: String)
      : Integer; overload;
    function obtemDadoPinPadEx: Integer; overload;
    function obtemDadoPinPadEx(P1: String; P2: String; P3: String)
      : Integer; overload;
    function obtemDadosCriptografados: Integer; overload;
    function obtemDadosCriptografados(P1: String; P2: Integer; P3: String)
      : Integer; overload;
    function obtemInformacoesPinPad: Integer;
    function obtemParametrosSiTef: Integer; overload;
    function obtemParametrosSiTef(P1: Integer; P2: String): Integer; overload;
    function obtemQuantidadeTransacoesPendentes: Integer; overload;
    function obtemQuantidadeTransacoesPendentes(P1: String; P2: String)
      : Integer; overload;
    function obtemRetornoEnviaRecebeSiTefDireto: Integer; overload;
    function obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
      overload;
    function obtemSenha: Integer; overload;
    function obtemSenha(P1: String; P2: String; P3: String): Integer; overload;
    function obtemStatusLeitoraSPTrans: Integer;
    function obtemVersao: Integer;
    function pinPadBTExecuta(P1: Integer; P2: String): Integer;
    function pinPadInterativo(P1: Integer; P2: String): Integer;
    function registraBonusOffLineSiTef: Integer; overload;
    function registraBonusOffLineSiTef(P1: String; P2: String; P3: String;
      P4: String; P5: String; P6: String; P7: String): Integer; overload;
    function registraDescontoSocioTorcedor: Integer; overload;
    function registraDescontoSocioTorcedor(P1: String; P2: String; P3: String;
      P4: String; P5: String; P6: String): Integer; overload;
    function registraDescontoSocioTorcedorSequencial: Integer; overload;
    function registraDescontoSocioTorcedorSequencial(P1: String; P2: String;
      P3: String; P4: String; P5: String; P6: String; P7: Integer)
      : Integer; overload;
    function registraTefPromocaoSiTef: Integer; overload;
    function registraTefPromocaoSiTef(P1: String; P2: String; P3: String;
      P4: String; P5: String; P6: String; P7: String): Integer; overload;
    procedure setArqTraducao(P1: String);
    procedure setArqTraducaoCielo(P1: String);
    procedure setBuffer(P1: String);
    procedure setChaveAcesso(P1: String);
    procedure setChaveSecreta(P1: String);
    procedure setChaveSeguranca(P1: String);
    procedure setChaveTrnCancelamento(P1: String);
    procedure setCodigoAutorizacao(P1: String);
    procedure setCodigoEmBarras(P1: String);
    procedure setCodigoLoja(P1: String);
    procedure setCodigoProduto(P1: String);
    procedure setConfiguraResultado(P1: Integer); overload;
    procedure setConfiguraResultado(P1: SmallInt); overload;
    procedure setConfirma(P1: Integer); overload;
    procedure setConfirma(P1: SmallInt); overload;
    procedure setContinuaNavegacao(P1: Integer);
    procedure setDadosCaptura(P1: String);
    procedure setDadosContas(P1: String);
    procedure setDadosDesfazimento(P1: String);
    procedure setDadosEntrada(P1: TBytes);
    procedure setDadosTransacao(P1: String);
    procedure setDadosTx(P1: TBytes);
    procedure setDataFiscal(P1: String);
    procedure setDataFiscalOriginal(P1: String);
    procedure setDelimitador(P1: SmallInt); overload;
    procedure setDelimitador(P1: Integer); overload;
    procedure setEnderecoSiTef(P1: String);
    procedure setFuncaoSiTef(P1: SmallInt); overload;
    procedure setFuncaoSiTef(P1: Integer); overload;
    procedure setHorario(P1: String);
    procedure setIdentificacaoPdvOriginal(P1: String);
    procedure setIndiceParametro(P1: Integer); overload;
    procedure setIndiceParametro(P1: SmallInt); overload;
    procedure setIndiceProduto(P1: SmallInt); overload;
    procedure setIndiceProduto(P1: Integer); overload;
    procedure setModalidade(P1: Integer);
    procedure setMsgDisplay(P1: String);
    procedure setNSUSiTef(P1: String);
    procedure setNomeArquivo(P1: String);
    procedure setNumeroCuponFiscal(P1: String);
    procedure setNumeroCuponFiscalOriginal(P1: String);
    procedure setNumeroDocumentoOriginal(P1: String);
    procedure setNumeroProdutos(P1: SmallInt); overload;
    procedure setNumeroProdutos(P1: Integer); overload;
    procedure setNumeroTerminal(P1: String);
    procedure setOffsetCartao(P1: SmallInt); overload;
    procedure setOffsetCartao(P1: Integer); overload;
    procedure setOperador(P1: String);
    procedure setParametro(P1: String);
    procedure setParametroCartao(P1: Integer); overload;
    procedure setParametroCartao(P1: SmallInt); overload;
    procedure setParametrosAdicionais(P1: String);
    procedure setProdutos(P1: String);
    procedure setQuantidade(P1: Integer); overload;
    procedure setQuantidade(P1: SmallInt); overload;
    procedure setQuantidadeProduto(P1: Integer);
    procedure setRedeDestino(P1: Integer); overload;
    procedure setRedeDestino(P1: SmallInt); overload;
    procedure setRestricoes(P1: String);
    procedure setSenhaPinPad(P1: String);
    procedure setSequencial(P1: Integer);
    procedure setSupervisor(P1: String);
    procedure setTamDadosEntrada(P1: Integer);
    procedure setTamDadosTx(P1: SmallInt); overload;
    procedure setTamDadosTx(P1: Integer); overload;
    procedure setTamMaxDadosRx(P1: Integer); overload;
    procedure setTamMaxDadosRx(P1: SmallInt); overload;
    procedure setTamMaxDadosServico(P1: SmallInt); overload;
    procedure setTamMaxDadosServico(P1: Integer); overload;
    procedure setTamanhoMaximo(P1: Integer); overload;
    procedure setTamanhoMaximo(P1: SmallInt); overload;
    procedure setTamanhoMinimo(P1: Integer); overload;
    procedure setTamanhoMinimo(P1: SmallInt); overload;
    procedure setTempoEsperaRx(P1: SmallInt); overload;
    procedure setTempoEsperaRx(P1: Integer); overload;
    procedure setTimeout(P1: SmallInt); overload;
    procedure setTimeout(P1: Integer); overload;
    procedure setTipoCancelamento(P1: SmallInt); overload;
    procedure setTipoCancelamento(P1: Integer); overload;
    procedure setTipoCodigoEmBarras(P1: SmallInt); overload;
    procedure setTipoCodigoEmBarras(P1: Integer); overload;
    procedure setTipoConsulta(P1: Integer);
    procedure setTipoOperacao(P1: Integer);
    procedure setTipoTransacao(P1: Integer); overload;
    procedure setTipoTransacao(P1: SmallInt); overload;
    procedure setTipoTrilha1(P1: String);
    procedure setTipoTrilha2(P1: String);
    procedure setTotalGeral(P1: String);
    procedure setTotalizador(P1: String);
    procedure setTrilha1(P1: String);
    procedure setTrilha2(P1: String);
    procedure setTrilha3(P1: String);
    procedure setValor(P1: String);
    procedure setValorTotalBonus(P1: String);
    procedure setValorTotalCupon(P1: String);
    procedure setValorUnitario(P1: String);
    procedure seteSenha(P1: Integer); overload;
    procedure seteSenha(P1: SmallInt); overload;
    function validaCampoCodigoEmBarras: Integer; overload;
    function validaCampoCodigoEmBarras(P1: String; P2: SmallInt)
      : Integer; overload;
    function verificaPresencaPinPad: Integer;
  end;

procedure GeraTrace(P1: String; P2: String; P3: String); overload;
procedure GeraTrace(P1: String; P2: String; P3: TBytes); overload;
procedure GeraTrace(P1: String; P2: String; P3: Integer); overload;
function LeTrilhaChipInterativo(P1: Integer): Integer; overload;
function abrePinPad: Integer;
function carregaArquivosTraducao: Integer; overload;
function carregaArquivosTraducao(P1: String; P2: String): Integer; overload;
function configuraIntSiTefInterativo: Integer; overload;
function configuraIntSiTefInterativo(P1: String; P2: String; P3: String)
  : Integer; overload;
function configuraIntSiTefInterativoEx: Integer; overload;
function configuraIntSiTefInterativoEx(P1: String; P2: String; P3: String;
  P4: String): Integer; overload;
function consultaDescontoSocioTorcedor: Integer; overload;
function consultaDescontoSocioTorcedor(P1: String): Integer; overload;
function consultaParametrosSiTef: Integer; overload;
function consultaParametrosSiTef(P1: Integer): Integer; overload;
function consultaQtdeDescontoSocioTorcedor: Integer; overload;
function consultaQtdeDescontoSocioTorcedor(P1: String; P2: Integer; P3: String;
  P4: String): Integer; overload;
function continuaFuncaoSiTefInterativo: Integer;
function correspondenteBancarioSiTefInterativo: Integer; overload;
function correspondenteBancarioSiTefInterativo(P1: String; P2: String;
  P3: String; P4: String; P5: String): Integer; overload;
function descarregaMensagens: Integer;
function desfazTransacaoSiTefInterativo: Integer; overload;
function desfazTransacaoSiTefInterativo(P1: String): Integer; overload;
function efetuaPagamentoSiTefInterativo: Integer; overload;
function efetuaPagamentoSiTefInterativo(P1: Integer; P2: String; P3: String;
  P4: String; P5: String; P6: String; P7: String): Integer; overload;
function enviaRecebeSiTefDireto: Integer; overload;
function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt;
  P4: TBytes; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: String; P9: String;
  P10: String; P11: String; P12: SmallInt): Integer; overload;
function enviaRecebeSitServicos: Integer; overload;
function enviaRecebeSitServicos(P1: SmallInt; P2: TBytes; P3: SmallInt;
  P4: SmallInt; P5: SmallInt; P6: String; P7: String; P8: String; P9: String)
  : Integer; overload;
function escreveMensagemPermanentePinPad: Integer; overload;
function escreveMensagemPermanentePinPad(P1: String): Integer; overload;
function escreveMensagemPinPad: Integer; overload;
function escreveMensagemPinPad(P1: String): Integer; overload;
function executaEnviaRecebeSiTefDireto: Integer; overload;
function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt;
  P4: String; P5: String; P6: String; P7: String; P8: SmallInt)
  : Integer; overload;
function fechaPinPad: Integer;
function finalizaFuncaoSiTefInterativo: Integer; overload;
function finalizaFuncaoSiTefInterativo(P1: SmallInt; P2: String; P3: String;
  P4: String; P5: String): Integer; overload;
function finalizaTransacaoIdentificadaSiTef: Integer; overload;
function finalizaTransacaoIdentificadaSiTef(P1: SmallInt; P2: SmallInt;
  P3: String; P4: String; P5: String; P6: String): Integer; overload;
function finalizaTransacaoIdentificadaSiTefBonus: Integer; overload;
function finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt; P2: String;
  P3: String; P4: String; P5: String; P6: String; P7: String): Integer;
  overload;
function finalizaTransacaoSiTefInterativo: Integer; overload;
function finalizaTransacaoSiTefInterativo(P1: SmallInt; P2: String; P3: String;
  P4: String): Integer; overload;
function finalizaTransacaoSiTefInterativoBonus: Integer; overload;
function finalizaTransacaoSiTefInterativoBonus(P1: SmallInt; P2: String;
  P3: String; P4: String; P5: String; P6: String): Integer; overload;
function finalizaTransacaoSiTefInterativoEx: Integer; overload;
function finalizaTransacaoSiTefInterativoEx(P1: SmallInt; P2: String;
  P3: String; P4: String; P5: String): Integer; overload;
function flashVendasSitef: Integer; overload;
function flashVendasSitef(P1: String; P2: String; P3: String; P4: String;
  P5: String): Integer; overload;
function forneceParametroEnviaRecebeSiTefDireto: Integer; overload;
function forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt; P2: String;
  P3: SmallInt; P4: SmallInt): Integer; overload;
function funcoesGerenciaisSiTefInterativo: Integer; overload;
function funcoesGerenciaisSiTefInterativo(P1: String; P2: String; P3: String;
  P4: String): Integer; overload;
function getBuffer: String;
function getCampo: String;
function getChaveSeguranca: String;
function getCodigoResposta: SmallInt;
function getCodigoServico: String;
function getDadosContas: String;
function getDadosDesfazimento: String;
function getDadosRx: TBytes;
function getDadosSaida: String;
function getDadosServico: String;
function getProximoComando: Integer;
function getSenha: String;
function getTamanhoMaximo: SmallInt;
function getTamanhoMinimo: SmallInt;
function getTipoCampo: Integer;
function getTipoCodigoEmBarras: SmallInt;
function getTipoTrilha1: String;
function getTipoTrilha2: String;
function getTrilha1: String;
function getTrilha2: String;
function getTrilha3: String;
function getVersaoCliSiTef: String;
function getVersaoCliSiTefI: String;
function getVersion: String;
function gravaDadosCriptografados: Integer; overload;
function gravaDadosCriptografados(P1: String; P2: Integer; P3: TBytes;
  P4: Integer; P5: String): Integer; overload;
function informaProdutoCancelamentoVidalink: Integer; overload;
function informaProdutoCancelamentoVidalink(P1: SmallInt; P2: String;
  P3: SmallInt): Integer; overload;
function informaProdutoVendaVidalink: Integer; overload;
function informaProdutoVendaVidalink(P1: SmallInt; P2: String; P3: SmallInt;
  P4: String): Integer; overload;
function informaTotalizadorVenda: Integer; overload;
function informaTotalizadorVenda(P1: String): Integer; overload;
function iniciaCancelamentoIdentificadoSiTefInterativo: Integer; overload;
function iniciaCancelamentoIdentificadoSiTefInterativo(P1: String; P2: String;
  P3: String; P4: String; P5: String): Integer; overload;
function iniciaCancelamentoPagamentoContasSiTefInterativo: Integer; overload;
function iniciaCancelamentoPagamentoContasSiTefInterativo(P1: String;
  P2: String; P3: String; P4: String; P5: String): Integer; overload;
function iniciaConfiguracaoSiTefInterativo: Integer; overload;
function iniciaConfiguracaoSiTefInterativo(P1: String; P2: String; P3: String)
  : Integer; overload;
function iniciaFuncaoAASiTefInterativo: Integer; overload;
function iniciaFuncaoAASiTefInterativo(P1: Integer; P2: String; P3: String;
  P4: String; P5: String; P6: String; P7: String; P8: String): Integer;
  overload;
function iniciaFuncaoSiTefInterativo: Integer; overload;
function iniciaFuncaoSiTefInterativo(P1: Integer; P2: String; P3: String;
  P4: String; P5: String; P6: String; P7: String): Integer; overload;
function iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer; overload;
function iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1: SmallInt;
  P2: SmallInt; P3: String; P4: String; P5: String; P6: String; P7: String;
  P8: String; P9: String; P10: String): Integer; overload;
function iniciaFuncaoSiTefInterativoConsultaPBM: Integer; overload;
function iniciaFuncaoSiTefInterativoConsultaPBM(P1: String; P2: String;
  P3: String; P4: String; P5: String; P6: String; P7: String): Integer;
  overload;
function iniciaFuncaoSiTefInterativoConsultaVidalink: Integer; overload;
function iniciaFuncaoSiTefInterativoConsultaVidalink(P1: String; P2: String;
  P3: String; P4: String; P5: String; P6: String): Integer; overload;
function iniciaFuncaoSiTefInterativoVendaVidalink: Integer; overload;
function iniciaFuncaoSiTefInterativoVendaVidalink(P1: String; P2: SmallInt;
  P3: String; P4: String; P5: String; P6: String): Integer; overload;
function interrompeLeCartaoDireto: Integer;
function leCampoCriptografadoPinPad: Integer; overload;
function leCampoCriptografadoPinPad(P1: String; P2: String; P3: SmallInt;
  P4: SmallInt): Integer; overload;
function leCampoPinPad: Integer; overload;
function leCampoPinPad(P1: String; P2: SmallInt; P3: SmallInt)
  : Integer; overload;
function leCartaoDireto: Integer; overload;
function leCartaoDireto(P1: String): Integer; overload;
function leCartaoDiretoEx: Integer; overload;
function leCartaoDiretoEx(P1: String; P2: SmallInt): Integer; overload;
function leCartaoDiretoSeguro: Integer; overload;
function leCartaoDiretoSeguro(P1: String; P2: SmallInt): Integer; overload;
function leCartaoInterativo: Integer; overload;
function leCartaoInterativo(P1: String): Integer; overload;
function leCartaoSeguro: Integer; overload;
function leCartaoSeguro(P1: String): Integer; overload;
function leDigitoPinPad: Integer; overload;
function leDigitoPinPad(P1: String): Integer; overload;
function leDoisDigitosPinPad: Integer; overload;
function leDoisDigitosPinPad(P1: String): Integer; overload;
function leSenhaDireto: Integer; overload;
function leSenhaDireto(P1: String; P2: String): Integer; overload;
function leSenhaDiretoEx: Integer; overload;
function leSenhaDiretoEx(P1: String; P2: String; P3: SmallInt)
  : Integer; overload;
function leSenhaInterativo: Integer; overload;
function leSenhaInterativo(P1: String): Integer; overload;
function leSimNaoPinPad: Integer; overload;
function leSimNaoPinPad(P1: String): Integer; overload;
function leTeclaPinPad: Integer;
function leTrilha3: Integer; overload;
function leTrilha3(P1: String): Integer; overload;
function LeTrilhaChipInterativo: Integer; overload;
function obtemChaveSeguranca: Integer; overload;
function obtemChaveSeguranca(P1: String; P2: String): Integer; overload;
function obtemDadoPinPad: Integer; overload;
function obtemDadoPinPad(P1: String; P2: String): Integer; overload;
function obtemDadoPinPadDireto: Integer; overload;
function obtemDadoPinPadDireto(P1: String; P2: String): Integer; overload;
function obtemDadoPinPadDiretoEx: Integer; overload;
function obtemDadoPinPadDiretoEx(P1: String; P2: String; P3: String)
  : Integer; overload;
function obtemDadoPinPadEx: Integer; overload;
function obtemDadoPinPadEx(P1: String; P2: String; P3: String)
  : Integer; overload;
function obtemDadosCriptografados: Integer; overload;
function obtemDadosCriptografados(P1: String; P2: Integer; P3: String)
  : Integer; overload;
function obtemInformacoesPinPad: Integer;
function obtemParametrosSiTef: Integer; overload;
function obtemParametrosSiTef(P1: Integer; P2: String): Integer; overload;
function obtemQuantidadeTransacoesPendentes: Integer; overload;
function obtemQuantidadeTransacoesPendentes(P1: String; P2: String)
  : Integer; overload;
function obtemRetornoEnviaRecebeSiTefDireto: Integer; overload;
function obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer; overload;
function obtemSenha: Integer; overload;
function obtemSenha(P1: String; P2: String; P3: String): Integer; overload;
function obtemStatusLeitoraSPTrans: Integer;
function obtemVersao: Integer;
function pinPadBTExecuta(P1: Integer; P2: String): Integer;
function pinPadInterativo(P1: Integer; P2: String): Integer;
function registraBonusOffLineSiTef: Integer; overload;
function registraBonusOffLineSiTef(P1: String; P2: String; P3: String;
  P4: String; P5: String; P6: String; P7: String): Integer; overload;
function registraDescontoSocioTorcedor: Integer; overload;
function registraDescontoSocioTorcedor(P1: String; P2: String; P3: String;
  P4: String; P5: String; P6: String): Integer; overload;
function registraDescontoSocioTorcedorSequencial: Integer; overload;
function registraDescontoSocioTorcedorSequencial(P1: String; P2: String;
  P3: String; P4: String; P5: String; P6: String; P7: Integer)
  : Integer; overload;
function registraTefPromocaoSiTef: Integer; overload;
function registraTefPromocaoSiTef(P1: String; P2: String; P3: String;
  P4: String; P5: String; P6: String; P7: String): Integer; overload;
procedure setArqTraducao(P1: String);
procedure setArqTraducaoCielo(P1: String);
procedure setBuffer(P1: String);
procedure setChaveAcesso(P1: String);
procedure setChaveSecreta(P1: String);
procedure setChaveSeguranca(P1: String);
procedure setChaveTrnCancelamento(P1: String);
procedure setCodigoAutorizacao(P1: String);
procedure setCodigoEmBarras(P1: String);
procedure setCodigoLoja(P1: String);
procedure setCodigoProduto(P1: String);
procedure setConfiguraResultado(P1: Integer); overload;
procedure setConfiguraResultado(P1: SmallInt); overload;
procedure setConfirma(P1: Integer); overload;
procedure setConfirma(P1: SmallInt); overload;
procedure setContinuaNavegacao(P1: Integer);
procedure setDadosCaptura(P1: String);
procedure setDadosContas(P1: String);
procedure setDadosDesfazimento(P1: String);
procedure setDadosEntrada(P1: TBytes);
procedure setDadosTransacao(P1: String);
procedure setDadosTx(P1: TBytes);
procedure setDataFiscal(P1: String);
procedure setDataFiscalOriginal(P1: String);
procedure setDelimitador(P1: SmallInt); overload;
procedure setDelimitador(P1: Integer); overload;
procedure setEnderecoSiTef(P1: String);
procedure setFuncaoSiTef(P1: SmallInt); overload;
procedure setFuncaoSiTef(P1: Integer); overload;
procedure setHorario(P1: String);
procedure setIdentificacaoPdvOriginal(P1: String);
procedure setIndiceParametro(P1: Integer); overload;
procedure setIndiceParametro(P1: SmallInt); overload;
procedure setIndiceProduto(P1: SmallInt); overload;
procedure setIndiceProduto(P1: Integer); overload;
procedure setModalidade(P1: Integer);
procedure setMsgDisplay(P1: String);
procedure setNSUSiTef(P1: String);
procedure setNomeArquivo(P1: String);
procedure setNumeroCuponFiscal(P1: String);
procedure setNumeroCuponFiscalOriginal(P1: String);
procedure setNumeroDocumentoOriginal(P1: String);
procedure setNumeroProdutos(P1: SmallInt); overload;
procedure setNumeroProdutos(P1: Integer); overload;
procedure setNumeroTerminal(P1: String);
procedure setOffsetCartao(P1: SmallInt); overload;
procedure setOffsetCartao(P1: Integer); overload;
procedure setOperador(P1: String);
procedure setParametro(P1: String);
procedure setParametroCartao(P1: Integer); overload;
procedure setParametroCartao(P1: SmallInt); overload;
procedure setParametrosAdicionais(P1: String);
procedure setProdutos(P1: String);
procedure setQuantidade(P1: Integer); overload;
procedure setQuantidade(P1: SmallInt); overload;
procedure setQuantidadeProduto(P1: Integer);
procedure setRedeDestino(P1: Integer); overload;
procedure setRedeDestino(P1: SmallInt); overload;
procedure setRestricoes(P1: String);
procedure setSenhaPinPad(P1: String);
procedure setSequencial(P1: Integer);
procedure setSupervisor(P1: String);
procedure setTamDadosEntrada(P1: Integer);
procedure setTamDadosTx(P1: SmallInt); overload;
procedure setTamDadosTx(P1: Integer); overload;
procedure setTamMaxDadosRx(P1: Integer); overload;
procedure setTamMaxDadosRx(P1: SmallInt); overload;
procedure setTamMaxDadosServico(P1: SmallInt); overload;
procedure setTamMaxDadosServico(P1: Integer); overload;
procedure setTamanhoMaximo(P1: Integer); overload;
procedure setTamanhoMaximo(P1: SmallInt); overload;
procedure setTamanhoMinimo(P1: Integer); overload;
procedure setTamanhoMinimo(P1: SmallInt); overload;
procedure setTempoEsperaRx(P1: SmallInt); overload;
procedure setTempoEsperaRx(P1: Integer); overload;
procedure setTimeout(P1: SmallInt); overload;
procedure setTimeout(P1: Integer); overload;
procedure setTipoCancelamento(P1: SmallInt); overload;
procedure setTipoCancelamento(P1: Integer); overload;
procedure setTipoCodigoEmBarras(P1: SmallInt); overload;
procedure setTipoCodigoEmBarras(P1: Integer); overload;
procedure setTipoConsulta(P1: Integer);
procedure setTipoOperacao(P1: Integer);
procedure setTipoTransacao(P1: Integer); overload;
procedure setTipoTransacao(P1: SmallInt); overload;
procedure setTipoTrilha1(P1: String);
procedure setTipoTrilha2(P1: String);
procedure setTotalGeral(P1: String);
procedure setTotalizador(P1: String);
procedure setTrilha1(P1: String);
procedure setTrilha2(P1: String);
procedure setTrilha3(P1: String);
procedure setValor(P1: String);
procedure setValorTotalBonus(P1: String);
procedure setValorTotalCupon(P1: String);
procedure setValorUnitario(P1: String);
procedure seteSenha(P1: Integer); overload;
procedure seteSenha(P1: SmallInt); overload;
function validaCampoCodigoEmBarras: Integer; overload;
function validaCampoCodigoEmBarras(P1: String; P2: SmallInt): Integer; overload;
function verificaPresencaPinPad: Integer;

var
  CliSiTefIEx: TCliSiTefIEx;

implementation

uses
  System.Classes,
  Androidapi.JNIBridge,
  Androidapi.JNI.JavaTypes,
  Androidapi.Helpers;

function JArrayToByte(const AJArray: TJavaArray<Byte>): TBytes;
begin
  result := TJavaArrayToTBytes(AJArray);
end;

function ByteToJArray(const ABytes: TBytes): TJavaArray<Byte>;
begin
  result := TBytesToTjavaArray(ABytes);
end;

function STJ(text: string): Jstring;
begin
  result := stringToJString(text);
end;

function JTS(text: Jstring): string;
begin
  result := JStringToString(text);
end;

{ TJJCliSiTefI }

function TCliSiTefIEx.abrePinPad: Integer;
begin
  result := FCliSiTefIEx.abrePinPad;
end;

function TCliSiTefIEx.carregaArquivosTraducao(P1, P2: String): Integer;
begin
  result := FCliSiTefIEx.carregaArquivosTraducao(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.carregaArquivosTraducao: Integer;
begin
  result := FCliSiTefIEx.carregaArquivosTraducao;
end;

function TCliSiTefIEx.configuraIntSiTefInterativo(P1, P2, P3: String): Integer;
begin
  result := FCliSiTefIEx.configuraIntSiTefInterativo(STJ(P1), STJ(P2), STJ(P3));
end;

function TCliSiTefIEx.configuraIntSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.configuraIntSiTefInterativo;
end;

function TCliSiTefIEx.configuraIntSiTefInterativoEx(P1, P2, P3,
  P4: String): Integer;
begin
  result := FCliSiTefIEx.configuraIntSiTefInterativoEx(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4));
end;

function TCliSiTefIEx.configuraIntSiTefInterativoEx: Integer;
begin
  result := FCliSiTefIEx.configuraIntSiTefInterativoEx;
end;

function TCliSiTefIEx.consultaDescontoSocioTorcedor: Integer;
begin
  result := FCliSiTefIEx.consultaDescontoSocioTorcedor;
end;

function TCliSiTefIEx.consultaDescontoSocioTorcedor(P1: String): Integer;
begin
  result := FCliSiTefIEx.consultaDescontoSocioTorcedor(STJ(P1));
end;

function TCliSiTefIEx.consultaParametrosSiTef(P1: Integer): Integer;
begin
  result := FCliSiTefIEx.consultaParametrosSiTef(P1);
end;

function TCliSiTefIEx.consultaParametrosSiTef: Integer;
begin
  result := FCliSiTefIEx.consultaParametrosSiTef;
end;

function TCliSiTefIEx.consultaQtdeDescontoSocioTorcedor: Integer;
begin
  result := FCliSiTefIEx.consultaQtdeDescontoSocioTorcedor;
end;

function TCliSiTefIEx.consultaQtdeDescontoSocioTorcedor(P1: String; P2: Integer;
  P3, P4: String): Integer;
begin
  result := FCliSiTefIEx.consultaQtdeDescontoSocioTorcedor(STJ(P1), P2,
    STJ(P3), STJ(P4));
end;

function TCliSiTefIEx.continuaFuncaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.continuaFuncaoSiTefInterativo;
end;

function TCliSiTefIEx.correspondenteBancarioSiTefInterativo(P1, P2, P3, P4,
  P5: String): Integer;
begin
  result := FCliSiTefIEx.correspondenteBancarioSiTefInterativo(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.correspondenteBancarioSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.correspondenteBancarioSiTefInterativo;
end;

constructor TCliSiTefIEx.Create;
begin
  tthread.CreateAnonymousThread(
    procedure
    begin
      FCliSiTefIEx := TJJCliSiTefI.JavaClass.init; // (MainActivity);
    end).Start;
end;

function TCliSiTefIEx.descarregaMensagens: Integer;
begin
  result := FCliSiTefIEx.descarregaMensagens;
end;

function TCliSiTefIEx.desfazTransacaoSiTefInterativo(P1: String): Integer;
begin
  result := FCliSiTefIEx.desfazTransacaoSiTefInterativo(STJ(P1));
end;

function TCliSiTefIEx.desfazTransacaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.desfazTransacaoSiTefInterativo;
end;

destructor TCliSiTefIEx.Destroy;
begin
  FCliSiTefIEx := nil;
  inherited;
end;

function TCliSiTefIEx.efetuaPagamentoSiTefInterativo(P1: Integer;
P2, P3, P4, P5, P6, P7: String): Integer;
begin
  result := FCliSiTefIEx.efetuaPagamentoSiTefInterativo(P1, STJ(P2), STJ(P3),
    STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.efetuaPagamentoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.efetuaPagamentoSiTefInterativo;
end;

function TCliSiTefIEx.enviaRecebeSiTefDireto: Integer;
begin
  result := FCliSiTefIEx.enviaRecebeSiTefDireto;
end;

function TCliSiTefIEx.enviaRecebeSiTefDireto(P1, P2, P3: SmallInt; P4: TBytes;
P5, P6, P7: SmallInt; P8, P9, P10, P11: String; P12: SmallInt): Integer;
begin
  result := FCliSiTefIEx.enviaRecebeSiTefDireto(P1, P2, P3, ByteToJArray(P4),
    P5, P6, P7, STJ(P8), STJ(P9), STJ(P10), STJ(P11), P12);
end;

function TCliSiTefIEx.enviaRecebeSitServicos: Integer;
begin
  result := FCliSiTefIEx.enviaRecebeSitServicos;
end;

function TCliSiTefIEx.enviaRecebeSitServicos(P1: SmallInt; P2: TBytes;
P3, P4, P5: SmallInt; P6, P7, P8, P9: String): Integer;
begin
  result := FCliSiTefIEx.enviaRecebeSitServicos(P1, ByteToJArray(P2), P3, P4,
    P5, STJ(P6), STJ(P7), STJ(P8), STJ(P9));
end;

function TCliSiTefIEx.escreveMensagemPermanentePinPad(P1: String): Integer;
begin
  result := FCliSiTefIEx.escreveMensagemPermanentePinPad(STJ(P1));
end;

function TCliSiTefIEx.escreveMensagemPermanentePinPad: Integer;
begin
  result := FCliSiTefIEx.escreveMensagemPermanentePinPad;
end;

function TCliSiTefIEx.escreveMensagemPinPad(P1: String): Integer;
begin
  result := FCliSiTefIEx.escreveMensagemPinPad(STJ(P1));
end;

function TCliSiTefIEx.escreveMensagemPinPad: Integer;
begin
  result := FCliSiTefIEx.escreveMensagemPinPad;
end;

function TCliSiTefIEx.executaEnviaRecebeSiTefDireto: Integer;
begin
  result := FCliSiTefIEx.executaEnviaRecebeSiTefDireto;
end;

function TCliSiTefIEx.executaEnviaRecebeSiTefDireto(P1, P2, P3: SmallInt;
P4, P5, P6, P7: String; P8: SmallInt): Integer;
begin
  result := FCliSiTefIEx.executaEnviaRecebeSiTefDireto(P1, P2, P3, STJ(P4),
    STJ(P5), STJ(P6), STJ(P7), P8);
end;

function TCliSiTefIEx.fechaPinPad: Integer;
begin
  result := FCliSiTefIEx.fechaPinPad;
end;

function TCliSiTefIEx.finalizaFuncaoSiTefInterativo(P1: SmallInt;
P2, P3, P4, P5: String): Integer;
begin
  result := FCliSiTefIEx.finalizaFuncaoSiTefInterativo(P1, STJ(P2), STJ(P3),
    STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.finalizaFuncaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.finalizaFuncaoSiTefInterativo;
end;

function TCliSiTefIEx.finalizaTransacaoIdentificadaSiTef(P1, P2: SmallInt;
P3, P4, P5, P6: String): Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoIdentificadaSiTef(P1, P2, STJ(P3),
    STJ(P4), STJ(P5), STJ(P6));
end;

function TCliSiTefIEx.finalizaTransacaoIdentificadaSiTef: Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoIdentificadaSiTef;
end;

function TCliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus: Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus;
end;

function TCliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt;
P2, P3, P4, P5, P6, P7: String): Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus(P1, STJ(P2),
    STJ(P3), STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativo(P1: SmallInt;
P2, P3, P4: String): Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativo(P1, STJ(P2),
    STJ(P3), STJ(P4));
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativo;
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativoBonus(P1: SmallInt;
P2, P3, P4, P5, P6: String): Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativoBonus(P1, STJ(P2),
    STJ(P3), STJ(P4), STJ(P5), STJ(P6));
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativoBonus: Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativoBonus;
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativoEx(P1: SmallInt;
P2, P3, P4, P5: String): Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativoEx(P1, STJ(P2),
    STJ(P3), STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.finalizaTransacaoSiTefInterativoEx: Integer;
begin
  result := FCliSiTefIEx.finalizaTransacaoSiTefInterativoEx;
end;

function TCliSiTefIEx.flashVendasSitef: Integer;
begin
  result := FCliSiTefIEx.flashVendasSitef;
end;

function TCliSiTefIEx.flashVendasSitef(P1, P2, P3, P4, P5: String): Integer;
begin
  result := FCliSiTefIEx.flashVendasSitef(STJ(P1), STJ(P2), STJ(P3),
    STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto: Integer;
begin
  result := FCliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto;
end;

function TCliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt;
P2: String; P3, P4: SmallInt): Integer;
begin
  result := FCliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto(P1,
    STJ(P2), P3, P4);
end;

function TCliSiTefIEx.funcoesGerenciaisSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.funcoesGerenciaisSiTefInterativo;
end;

function TCliSiTefIEx.funcoesGerenciaisSiTefInterativo(P1, P2, P3,
  P4: String): Integer;
begin
  result := FCliSiTefIEx.funcoesGerenciaisSiTefInterativo(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4));
end;

procedure TCliSiTefIEx.GeraTrace(P1, P2, P3: String);
begin
  FCliSiTefIEx.GeraTrace(STJ(P1), STJ(P2), STJ(P3));
end;

procedure TCliSiTefIEx.GeraTrace(P1, P2: String; P3: TBytes);
begin
  FCliSiTefIEx.GeraTrace(STJ(P1), STJ(P2), ByteToJArray(P3));
end;

procedure TCliSiTefIEx.GeraTrace(P1, P2: String; P3: Integer);
begin
  FCliSiTefIEx.GeraTrace(STJ(P1), STJ(P2), P3);
end;

function TCliSiTefIEx.getBuffer: String;
begin
  result := JTS(FCliSiTefIEx.getBuffer);
end;

function TCliSiTefIEx.getCampo: String;
begin
  result := JTS(FCliSiTefIEx.getCampo);
end;

function TCliSiTefIEx.getChaveSeguranca: String;
begin
  result := JTS(FCliSiTefIEx.getChaveSeguranca);
end;

function TCliSiTefIEx.getCodigoResposta: SmallInt;
begin
  result := FCliSiTefIEx.getCodigoResposta;
end;

function TCliSiTefIEx.getCodigoServico: String;
begin
  result := JTS(FCliSiTefIEx.getCodigoServico);
end;

function TCliSiTefIEx.getDadosContas: String;
begin
  result := JTS(FCliSiTefIEx.getDadosContas);
end;

function TCliSiTefIEx.getDadosDesfazimento: String;
begin
  result := JTS(FCliSiTefIEx.getDadosDesfazimento);
end;

function TCliSiTefIEx.getDadosRx: TBytes;
begin
  result := JArrayToByte(FCliSiTefIEx.getDadosRx);
end;

function TCliSiTefIEx.getDadosSaida: String;
begin
  result := JTS(FCliSiTefIEx.getDadosSaida);
end;

function TCliSiTefIEx.getDadosServico: String;
begin
  result := JTS(FCliSiTefIEx.getDadosServico);
end;

function TCliSiTefIEx.getProximoComando: Integer;
begin
  result := FCliSiTefIEx.getProximoComando;
end;

function TCliSiTefIEx.getSenha: String;
begin
  result := JTS(FCliSiTefIEx.getSenha);
end;

function TCliSiTefIEx.getTamanhoMaximo: SmallInt;
begin
  result := FCliSiTefIEx.getTamanhoMaximo;
end;

function TCliSiTefIEx.getTamanhoMinimo: SmallInt;
begin
  result := FCliSiTefIEx.getTamanhoMinimo;
end;

function TCliSiTefIEx.getTipoCampo: Integer;
begin
  result := FCliSiTefIEx.getTipoCampo;
end;

function TCliSiTefIEx.getTipoCodigoEmBarras: SmallInt;
begin
  result := FCliSiTefIEx.getTipoCodigoEmBarras;
end;

function TCliSiTefIEx.getTipoTrilha1: String;
begin
  result := JTS(FCliSiTefIEx.getTipoTrilha1);
end;

function TCliSiTefIEx.getTipoTrilha2: String;
begin
  result := JTS(FCliSiTefIEx.getTipoTrilha2);
end;

function TCliSiTefIEx.getTrilha1: String;
begin
  result := JTS(FCliSiTefIEx.getTrilha1);
end;

function TCliSiTefIEx.getTrilha2: String;
begin
  result := JTS(FCliSiTefIEx.getTrilha2);
end;

function TCliSiTefIEx.getTrilha3: String;
begin
  result := JTS(FCliSiTefIEx.getTrilha3);
end;

function TCliSiTefIEx.getVersaoCliSiTef: String;
begin
  result := JTS(FCliSiTefIEx.getVersaoCliSiTef);
end;

function TCliSiTefIEx.getVersaoCliSiTefI: String;
begin
  result := JTS(FCliSiTefIEx.getVersaoCliSiTefI);
end;

function TCliSiTefIEx.getVersion: String;
begin
  result := JTS(FCliSiTefIEx.getVersion);
end;

function TCliSiTefIEx.gravaDadosCriptografados: Integer;
begin
  result := FCliSiTefIEx.gravaDadosCriptografados;
end;

function TCliSiTefIEx.gravaDadosCriptografados(P1: String; P2: Integer;
P3: TBytes; P4: Integer; P5: String): Integer;
begin
  result := FCliSiTefIEx.gravaDadosCriptografados(STJ(P1), P2, ByteToJArray(P3),
    P4, STJ(P5));
end;

function TCliSiTefIEx.informaProdutoCancelamentoVidalink: Integer;
begin
  result := FCliSiTefIEx.informaProdutoCancelamentoVidalink;
end;

function TCliSiTefIEx.informaProdutoCancelamentoVidalink(P1: SmallInt;
P2: String; P3: SmallInt): Integer;
begin
  result := FCliSiTefIEx.informaProdutoCancelamentoVidalink(P1, STJ(P2), P3);
end;

function TCliSiTefIEx.informaProdutoVendaVidalink(P1: SmallInt; P2: String;
P3: SmallInt; P4: String): Integer;
begin
  result := FCliSiTefIEx.informaProdutoVendaVidalink(P1, STJ(P2), P3, STJ(P4));
end;

function TCliSiTefIEx.informaProdutoVendaVidalink: Integer;
begin
  result := FCliSiTefIEx.informaProdutoVendaVidalink;
end;

function TCliSiTefIEx.informaTotalizadorVenda: Integer;
begin
  result := FCliSiTefIEx.informaTotalizadorVenda;
end;

function TCliSiTefIEx.informaTotalizadorVenda(P1: String): Integer;
begin
  result := FCliSiTefIEx.informaTotalizadorVenda(STJ(P1));
end;

function TCliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo;
end;

function TCliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo(P1, P2, P3,
  P4, P5: String): Integer;
begin
  result := FCliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo(STJ(P1),
    STJ(P2), STJ(P3), STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo(P1, P2,
  P3, P4, P5: String): Integer;
begin
  result := FCliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo
    (STJ(P1), STJ(P2), STJ(P3), STJ(P4), STJ(P5));
end;

function TCliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo;
end;

function TCliSiTefIEx.iniciaConfiguracaoSiTefInterativo(P1, P2,
  P3: String): Integer;
begin
  result := FCliSiTefIEx.iniciaConfiguracaoSiTefInterativo(STJ(P1),
    STJ(P2), STJ(P3));
end;

function TCliSiTefIEx.iniciaConfiguracaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.iniciaConfiguracaoSiTefInterativo;
end;

function TCliSiTefIEx.iniciaFuncaoAASiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoAASiTefInterativo;
end;

function TCliSiTefIEx.iniciaFuncaoAASiTefInterativo(P1: Integer;
P2, P3, P4, P5, P6, P7, P8: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoAASiTefInterativo(P1, STJ(P2), STJ(P3),
    STJ(P4), STJ(P5), STJ(P6), STJ(P7), STJ(P8));
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativo: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativo;
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativo(P1: Integer;
P2, P3, P4, P5, P6, P7: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativo(P1, STJ(P2), STJ(P3),
    STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1,
  P2: SmallInt; P3, P4, P5, P6, P7, P8, P9, P10: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1, P2,
    STJ(P3), STJ(P4), STJ(P5), STJ(P6), STJ(P7), STJ(P8), STJ(P9), STJ(P10));
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink;
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM(P1, P2, P3, P4, P5,
  P6, P7: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM(STJ(P1),
    STJ(P2), STJ(P3), STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM;
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink(P1, P2, P3,
  P4, P5, P6: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink(STJ(P1),
    STJ(P2), STJ(P3), STJ(P4), STJ(P5), STJ(P6));
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink;
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink: Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink;
end;

function TCliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink(P1: String;
P2: SmallInt; P3, P4, P5, P6: String): Integer;
begin
  result := FCliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink(STJ(P1), P2,
    STJ(P3), STJ(P4), STJ(P5), STJ(P6));
end;

function TCliSiTefIEx.interrompeLeCartaoDireto: Integer;
begin
  result := FCliSiTefIEx.interrompeLeCartaoDireto;
end;

function TCliSiTefIEx.leCampoCriptografadoPinPad: Integer;
begin
  result := FCliSiTefIEx.leCampoCriptografadoPinPad;
end;

function TCliSiTefIEx.leCampoCriptografadoPinPad(P1, P2: String;
P3, P4: SmallInt): Integer;
begin
  result := FCliSiTefIEx.leCampoCriptografadoPinPad(STJ(P1), STJ(P2), P3, P4);
end;

function TCliSiTefIEx.leCampoPinPad(P1: String; P2, P3: SmallInt): Integer;
begin
  result := FCliSiTefIEx.leCampoPinPad(STJ(P1), P2, P3);
end;

function TCliSiTefIEx.leCampoPinPad: Integer;
begin
  result := FCliSiTefIEx.leCampoPinPad;
end;

function TCliSiTefIEx.leCartaoDireto: Integer;
begin
  result := FCliSiTefIEx.leCartaoDireto;
end;

function TCliSiTefIEx.leCartaoDireto(P1: String): Integer;
begin
  result := FCliSiTefIEx.leCartaoDireto(STJ(P1));
end;

function TCliSiTefIEx.leCartaoDiretoEx(P1: String; P2: SmallInt): Integer;
begin
  result := FCliSiTefIEx.leCartaoDiretoEx(STJ(P1), P2);
end;

function TCliSiTefIEx.leCartaoDiretoEx: Integer;
begin
  result := FCliSiTefIEx.leCartaoDiretoEx;
end;

function TCliSiTefIEx.leCartaoDiretoSeguro(P1: String; P2: SmallInt): Integer;
begin
  result := FCliSiTefIEx.leCartaoDiretoSeguro(STJ(P1), P2);
end;

function TCliSiTefIEx.leCartaoDiretoSeguro: Integer;
begin
  result := FCliSiTefIEx.leCartaoDiretoSeguro;
end;

function TCliSiTefIEx.leCartaoInterativo(P1: String): Integer;
begin
  result := FCliSiTefIEx.leCartaoInterativo(STJ(P1));
end;

function TCliSiTefIEx.leCartaoInterativo: Integer;
begin
  result := FCliSiTefIEx.leCartaoInterativo;
end;

function TCliSiTefIEx.leCartaoSeguro(P1: String): Integer;
begin
  result := FCliSiTefIEx.leCartaoSeguro(STJ(P1));
end;

function TCliSiTefIEx.leCartaoSeguro: Integer;
begin
  result := FCliSiTefIEx.leCartaoSeguro;
end;

function TCliSiTefIEx.leDigitoPinPad(P1: String): Integer;
begin
  result := FCliSiTefIEx.leDigitoPinPad(STJ(P1));
end;

function TCliSiTefIEx.leDigitoPinPad: Integer;
begin
  result := FCliSiTefIEx.leDigitoPinPad;
end;

function TCliSiTefIEx.leDoisDigitosPinPad: Integer;
begin
  result := FCliSiTefIEx.leDoisDigitosPinPad;
end;

function TCliSiTefIEx.leDoisDigitosPinPad(P1: String): Integer;
begin
  result := FCliSiTefIEx.leDoisDigitosPinPad(STJ(P1));
end;

function TCliSiTefIEx.leSenhaDireto(P1, P2: String): Integer;
begin
  result := FCliSiTefIEx.leSenhaDireto(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.leSenhaDireto: Integer;
begin
  result := FCliSiTefIEx.leSenhaDireto;
end;

function TCliSiTefIEx.leSenhaDiretoEx(P1, P2: String; P3: SmallInt): Integer;
begin
  result := FCliSiTefIEx.leSenhaDiretoEx(STJ(P1), STJ(P2), P3);
end;

function TCliSiTefIEx.leSenhaDiretoEx: Integer;
begin
  result := FCliSiTefIEx.leSenhaDiretoEx;
end;

function TCliSiTefIEx.leSenhaInterativo(P1: String): Integer;
begin
  result := FCliSiTefIEx.leSenhaInterativo(STJ(P1));
end;

function TCliSiTefIEx.leSenhaInterativo: Integer;
begin
  result := FCliSiTefIEx.leSenhaInterativo;
end;

function TCliSiTefIEx.leSimNaoPinPad: Integer;
begin
  result := FCliSiTefIEx.leSimNaoPinPad;
end;

function TCliSiTefIEx.leSimNaoPinPad(P1: String): Integer;
begin
  result := FCliSiTefIEx.leSimNaoPinPad(STJ(P1));
end;

function TCliSiTefIEx.leTeclaPinPad: Integer;
begin
  result := FCliSiTefIEx.leTeclaPinPad;
end;

function TCliSiTefIEx.leTrilha3(P1: String): Integer;
begin
  result := FCliSiTefIEx.leTrilha3(STJ(P1));
end;

function TCliSiTefIEx.leTrilha3: Integer;
begin
  result := FCliSiTefIEx.leTrilha3;
end;

function TCliSiTefIEx.LeTrilhaChipInterativo: Integer;
begin
  result := FCliSiTefIEx.LeTrilhaChipInterativo;
end;

function TCliSiTefIEx.LeTrilhaChipInterativo(P1: Integer): Integer;
begin
  result := FCliSiTefIEx.LeTrilhaChipInterativo(P1);
end;

function TCliSiTefIEx.obtemChaveSeguranca: Integer;
begin
  result := FCliSiTefIEx.obtemChaveSeguranca;
end;

function TCliSiTefIEx.obtemChaveSeguranca(P1, P2: String): Integer;
begin
  result := FCliSiTefIEx.obtemChaveSeguranca(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.obtemDadoPinPad(P1, P2: String): Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPad(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.obtemDadoPinPad: Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPad;
end;

function TCliSiTefIEx.obtemDadoPinPadDireto(P1, P2: String): Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadDireto(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.obtemDadoPinPadDireto: Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadDireto;
end;

function TCliSiTefIEx.obtemDadoPinPadDiretoEx: Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadDiretoEx;
end;

function TCliSiTefIEx.obtemDadoPinPadDiretoEx(P1, P2, P3: String): Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadDiretoEx(STJ(P1), STJ(P2), STJ(P3));
end;

function TCliSiTefIEx.obtemDadoPinPadEx: Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadEx;
end;

function TCliSiTefIEx.obtemDadoPinPadEx(P1, P2, P3: String): Integer;
begin
  result := FCliSiTefIEx.obtemDadoPinPadEx(STJ(P1), STJ(P2), STJ(P3));
end;

function TCliSiTefIEx.obtemDadosCriptografados: Integer;
begin
  result := FCliSiTefIEx.obtemDadosCriptografados;
end;

function TCliSiTefIEx.obtemDadosCriptografados(P1: String; P2: Integer;
P3: String): Integer;
begin
  result := FCliSiTefIEx.obtemDadosCriptografados(STJ(P1), P2, STJ(P3));
end;

function TCliSiTefIEx.obtemInformacoesPinPad: Integer;
begin
  result := FCliSiTefIEx.obtemInformacoesPinPad;
end;

function TCliSiTefIEx.obtemParametrosSiTef: Integer;
begin
  result := FCliSiTefIEx.obtemParametrosSiTef;
end;

function TCliSiTefIEx.obtemParametrosSiTef(P1: Integer; P2: String): Integer;
begin
  result := FCliSiTefIEx.obtemParametrosSiTef(P1, STJ(P2));
end;

function TCliSiTefIEx.obtemQuantidadeTransacoesPendentes(P1,
  P2: String): Integer;
begin
  result := FCliSiTefIEx.obtemQuantidadeTransacoesPendentes(STJ(P1), STJ(P2));
end;

function TCliSiTefIEx.obtemQuantidadeTransacoesPendentes: Integer;
begin
  result := FCliSiTefIEx.obtemQuantidadeTransacoesPendentes;
end;

function TCliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
begin
  result := FCliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto(P1);
end;

function TCliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto: Integer;
begin
  result := FCliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto;
end;

function TCliSiTefIEx.obtemSenha: Integer;
begin
  result := FCliSiTefIEx.obtemSenha;
end;

function TCliSiTefIEx.obtemSenha(P1, P2, P3: String): Integer;
begin
  result := FCliSiTefIEx.obtemSenha(STJ(P1), STJ(P2), STJ(P3));
end;

function TCliSiTefIEx.obtemStatusLeitoraSPTrans: Integer;
begin
  result := FCliSiTefIEx.obtemStatusLeitoraSPTrans;
end;

function TCliSiTefIEx.obtemVersao: Integer;
begin
  result := FCliSiTefIEx.obtemVersao;
end;

function TCliSiTefIEx.pinPadBTExecuta(P1: Integer; P2: String): Integer;
begin
  result := FCliSiTefIEx.pinPadBTExecuta(P1, STJ(P2));
end;

function TCliSiTefIEx.pinPadInterativo(P1: Integer; P2: String): Integer;
begin
  result := FCliSiTefIEx.pinPadInterativo(P1, STJ(P2));
end;

function TCliSiTefIEx.registraBonusOffLineSiTef: Integer;
begin
  result := FCliSiTefIEx.registraBonusOffLineSiTef;
end;

function TCliSiTefIEx.registraBonusOffLineSiTef(P1, P2, P3, P4, P5, P6,
  P7: String): Integer;
begin
  result := FCliSiTefIEx.registraBonusOffLineSiTef(STJ(P1), STJ(P2), STJ(P3),
    STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.registraDescontoSocioTorcedor(P1, P2, P3, P4, P5,
  P6: String): Integer;
begin
  result := FCliSiTefIEx.registraDescontoSocioTorcedor(STJ(P1), STJ(P2),
    STJ(P3), STJ(P4), STJ(P5), STJ(P6));
end;

function TCliSiTefIEx.registraDescontoSocioTorcedor: Integer;
begin
  result := FCliSiTefIEx.registraDescontoSocioTorcedor;
end;

function TCliSiTefIEx.registraDescontoSocioTorcedorSequencial(P1, P2, P3, P4,
  P5, P6: String; P7: Integer): Integer;
begin
  result := FCliSiTefIEx.registraDescontoSocioTorcedorSequencial(STJ(P1),
    STJ(P2), STJ(P3), STJ(P4), STJ(P5), STJ(P6), P7);
end;

function TCliSiTefIEx.registraDescontoSocioTorcedorSequencial: Integer;
begin
  result := FCliSiTefIEx.registraDescontoSocioTorcedorSequencial;
end;

function TCliSiTefIEx.registraTefPromocaoSiTef(P1, P2, P3, P4, P5, P6,
  P7: String): Integer;
begin
  result := FCliSiTefIEx.registraTefPromocaoSiTef(STJ(P1), STJ(P2), STJ(P3),
    STJ(P4), STJ(P5), STJ(P6), STJ(P7));
end;

function TCliSiTefIEx.registraTefPromocaoSiTef: Integer;
begin
  result := FCliSiTefIEx.registraTefPromocaoSiTef;
end;

procedure TCliSiTefIEx.setArqTraducao(P1: String);
begin
  FCliSiTefIEx.setArqTraducao(STJ(P1));
end;

procedure TCliSiTefIEx.setArqTraducaoCielo(P1: String);
begin
  FCliSiTefIEx.setArqTraducaoCielo(STJ(P1));
end;

procedure TCliSiTefIEx.setBuffer(P1: String);
begin
  FCliSiTefIEx.setBuffer(STJ(P1));
end;

procedure TCliSiTefIEx.setChaveAcesso(P1: String);
begin
  FCliSiTefIEx.setChaveAcesso(STJ(P1));
end;

procedure TCliSiTefIEx.setChaveSecreta(P1: String);
begin
  FCliSiTefIEx.setChaveSecreta(STJ(P1));
end;

procedure TCliSiTefIEx.setChaveSeguranca(P1: String);
begin
  FCliSiTefIEx.setChaveSeguranca(STJ(P1));
end;

procedure TCliSiTefIEx.setChaveTrnCancelamento(P1: String);
begin
  FCliSiTefIEx.setChaveTrnCancelamento(STJ(P1));
end;

procedure TCliSiTefIEx.setCodigoAutorizacao(P1: String);
begin
  FCliSiTefIEx.setCodigoAutorizacao(STJ(P1));
end;

procedure TCliSiTefIEx.setCodigoEmBarras(P1: String);
begin
  FCliSiTefIEx.setCodigoEmBarras(STJ(P1));
end;

procedure TCliSiTefIEx.setCodigoLoja(P1: String);
begin
  FCliSiTefIEx.setCodigoLoja(STJ(P1));
end;

procedure TCliSiTefIEx.setCodigoProduto(P1: String);
begin
  FCliSiTefIEx.setCodigoProduto(STJ(P1));
end;

procedure TCliSiTefIEx.setConfiguraResultado(P1: Integer);
begin
  FCliSiTefIEx.setConfiguraResultado(P1);
end;

procedure TCliSiTefIEx.setConfiguraResultado(P1: SmallInt);
begin
  FCliSiTefIEx.setConfiguraResultado(P1);
end;

procedure TCliSiTefIEx.setConfirma(P1: Integer);
begin
  FCliSiTefIEx.setConfirma(P1);
end;

procedure TCliSiTefIEx.setConfirma(P1: SmallInt);
begin
  FCliSiTefIEx.setConfirma(P1);
end;

procedure TCliSiTefIEx.setContinuaNavegacao(P1: Integer);
begin
  FCliSiTefIEx.setContinuaNavegacao(P1);
end;

procedure TCliSiTefIEx.setDadosCaptura(P1: String);
begin
  FCliSiTefIEx.setDadosCaptura(STJ(P1));
end;

procedure TCliSiTefIEx.setDadosContas(P1: String);
begin
  FCliSiTefIEx.setDadosContas(STJ(P1));
end;

procedure TCliSiTefIEx.setDadosDesfazimento(P1: String);
begin
  FCliSiTefIEx.setDadosDesfazimento(STJ(P1));
end;

procedure TCliSiTefIEx.setDadosEntrada(P1: TBytes);
begin
  FCliSiTefIEx.setDadosEntrada(ByteToJArray(P1));
end;

procedure TCliSiTefIEx.setDadosTransacao(P1: String);
begin
  FCliSiTefIEx.setDadosTransacao(STJ(P1));
end;

procedure TCliSiTefIEx.setDadosTx(P1: TBytes);
begin
  FCliSiTefIEx.setDadosTx(ByteToJArray(P1));
end;

procedure TCliSiTefIEx.setDataFiscal(P1: String);
begin
  FCliSiTefIEx.setDataFiscal(STJ(P1));
end;

procedure TCliSiTefIEx.setDataFiscalOriginal(P1: String);
begin
  FCliSiTefIEx.setDataFiscalOriginal(STJ(P1));
end;

procedure TCliSiTefIEx.setDelimitador(P1: Integer);
begin
  FCliSiTefIEx.setDelimitador(P1);
end;

procedure TCliSiTefIEx.setDelimitador(P1: SmallInt);
begin
  FCliSiTefIEx.setDelimitador(P1);
end;

procedure TCliSiTefIEx.setEnderecoSiTef(P1: String);
begin
  FCliSiTefIEx.setEnderecoSiTef(STJ(P1));
end;

procedure TCliSiTefIEx.seteSenha(P1: SmallInt);
begin
  FCliSiTefIEx.seteSenha(P1);
end;

procedure TCliSiTefIEx.seteSenha(P1: Integer);
begin
  FCliSiTefIEx.seteSenha(P1);
end;

procedure TCliSiTefIEx.setFuncaoSiTef(P1: Integer);
begin
  FCliSiTefIEx.setFuncaoSiTef(P1);
end;

procedure TCliSiTefIEx.setFuncaoSiTef(P1: SmallInt);
begin
  FCliSiTefIEx.setFuncaoSiTef(P1);
end;

procedure TCliSiTefIEx.setHorario(P1: String);
begin
  FCliSiTefIEx.setHorario(STJ(P1));
end;

procedure TCliSiTefIEx.setIdentificacaoPdvOriginal(P1: String);
begin
  FCliSiTefIEx.setIdentificacaoPdvOriginal(STJ(P1));
end;

procedure TCliSiTefIEx.setIndiceParametro(P1: SmallInt);
begin
  FCliSiTefIEx.setIndiceParametro(P1);
end;

procedure TCliSiTefIEx.setIndiceParametro(P1: Integer);
begin
  FCliSiTefIEx.setIndiceParametro(P1);
end;

procedure TCliSiTefIEx.setIndiceProduto(P1: Integer);
begin
  FCliSiTefIEx.setIndiceProduto(P1);
end;

procedure TCliSiTefIEx.setIndiceProduto(P1: SmallInt);
begin
  FCliSiTefIEx.setIndiceProduto(P1);
end;

procedure TCliSiTefIEx.setModalidade(P1: Integer);
begin
  FCliSiTefIEx.setModalidade(P1);
end;

procedure TCliSiTefIEx.setMsgDisplay(P1: String);
begin
  FCliSiTefIEx.setMsgDisplay(STJ(P1));
end;

procedure TCliSiTefIEx.setNomeArquivo(P1: String);
begin
  FCliSiTefIEx.setNomeArquivo(STJ(P1));
end;

procedure TCliSiTefIEx.setNSUSiTef(P1: String);
begin
  FCliSiTefIEx.setNSUSiTef(STJ(P1));
end;

procedure TCliSiTefIEx.setNumeroCuponFiscal(P1: String);
begin
  FCliSiTefIEx.setNumeroCuponFiscal(STJ(P1));
end;

procedure TCliSiTefIEx.setNumeroCuponFiscalOriginal(P1: String);
begin
  FCliSiTefIEx.setNumeroCuponFiscalOriginal(STJ(P1));
end;

procedure TCliSiTefIEx.setNumeroDocumentoOriginal(P1: String);
begin
  FCliSiTefIEx.setNumeroDocumentoOriginal(STJ(P1));
end;

procedure TCliSiTefIEx.setNumeroProdutos(P1: Integer);
begin
  FCliSiTefIEx.setNumeroProdutos(P1);
end;

procedure TCliSiTefIEx.setNumeroProdutos(P1: SmallInt);
begin
  FCliSiTefIEx.setNumeroProdutos(P1);
end;

procedure TCliSiTefIEx.setNumeroTerminal(P1: String);
begin
  FCliSiTefIEx.setNumeroTerminal(STJ(P1));
end;

procedure TCliSiTefIEx.setOffsetCartao(P1: SmallInt);
begin
  FCliSiTefIEx.setOffsetCartao(P1);
end;

procedure TCliSiTefIEx.setOffsetCartao(P1: Integer);
begin
  FCliSiTefIEx.setOffsetCartao(P1);
end;

procedure TCliSiTefIEx.setOperador(P1: String);
begin
  FCliSiTefIEx.setOperador(STJ(P1));
end;

procedure TCliSiTefIEx.setParametro(P1: String);
begin
  FCliSiTefIEx.setParametro(STJ(P1));
end;

procedure TCliSiTefIEx.setParametroCartao(P1: SmallInt);
begin
  FCliSiTefIEx.setParametroCartao(P1);
end;

procedure TCliSiTefIEx.setParametroCartao(P1: Integer);
begin
  FCliSiTefIEx.setParametroCartao(P1);
end;

procedure TCliSiTefIEx.setParametrosAdicionais(P1: String);
begin
  FCliSiTefIEx.setParametrosAdicionais(STJ(P1));
end;

procedure TCliSiTefIEx.setProdutos(P1: String);
begin
  FCliSiTefIEx.setProdutos(STJ(P1));
end;

procedure TCliSiTefIEx.setQuantidade(P1: SmallInt);
begin
  FCliSiTefIEx.setQuantidade(P1);
end;

procedure TCliSiTefIEx.setQuantidade(P1: Integer);
begin
  FCliSiTefIEx.setQuantidade(P1);
end;

procedure TCliSiTefIEx.setQuantidadeProduto(P1: Integer);
begin
  FCliSiTefIEx.setQuantidadeProduto(P1);
end;

procedure TCliSiTefIEx.setRedeDestino(P1: SmallInt);
begin
  FCliSiTefIEx.setRedeDestino(P1);
end;

procedure TCliSiTefIEx.setRedeDestino(P1: Integer);
begin
  FCliSiTefIEx.setRedeDestino(P1);
end;

procedure TCliSiTefIEx.setRestricoes(P1: String);
begin
  FCliSiTefIEx.setRestricoes(STJ(P1));
end;

procedure TCliSiTefIEx.setSenhaPinPad(P1: String);
begin
  FCliSiTefIEx.setSenhaPinPad(STJ(P1));
end;

procedure TCliSiTefIEx.setSequencial(P1: Integer);
begin
  FCliSiTefIEx.setSequencial(P1);
end;

procedure TCliSiTefIEx.setSupervisor(P1: String);
begin
  FCliSiTefIEx.setSupervisor(STJ(P1));
end;

procedure TCliSiTefIEx.setTamanhoMaximo(P1: SmallInt);
begin
  FCliSiTefIEx.setTamanhoMaximo(P1);
end;

procedure TCliSiTefIEx.setTamanhoMaximo(P1: Integer);
begin
  FCliSiTefIEx.setTamanhoMaximo(P1);
end;

procedure TCliSiTefIEx.setTamanhoMinimo(P1: Integer);
begin
  FCliSiTefIEx.setTamanhoMinimo(P1);
end;

procedure TCliSiTefIEx.setTamanhoMinimo(P1: SmallInt);
begin
  FCliSiTefIEx.setTamanhoMinimo(P1);
end;

procedure TCliSiTefIEx.setTamDadosEntrada(P1: Integer);
begin
  FCliSiTefIEx.setTamDadosEntrada(P1);
end;

procedure TCliSiTefIEx.setTamDadosTx(P1: Integer);
begin
  FCliSiTefIEx.setTamDadosTx(P1);
end;

procedure TCliSiTefIEx.setTamDadosTx(P1: SmallInt);
begin
  FCliSiTefIEx.setTamDadosTx(P1);
end;

procedure TCliSiTefIEx.setTamMaxDadosRx(P1: SmallInt);
begin
  FCliSiTefIEx.setTamMaxDadosRx(P1);
end;

procedure TCliSiTefIEx.setTamMaxDadosRx(P1: Integer);
begin
  FCliSiTefIEx.setTamMaxDadosRx(P1);
end;

procedure TCliSiTefIEx.setTamMaxDadosServico(P1: Integer);
begin
  FCliSiTefIEx.setTamMaxDadosServico(P1);
end;

procedure TCliSiTefIEx.setTamMaxDadosServico(P1: SmallInt);
begin
  FCliSiTefIEx.setTamMaxDadosServico(P1);
end;

procedure TCliSiTefIEx.setTempoEsperaRx(P1: SmallInt);
begin
  FCliSiTefIEx.setTempoEsperaRx(P1);
end;

procedure TCliSiTefIEx.setTempoEsperaRx(P1: Integer);
begin
  FCliSiTefIEx.setTempoEsperaRx(P1);
end;

procedure TCliSiTefIEx.setTimeout(P1: SmallInt);
begin
  FCliSiTefIEx.setTimeout(P1);
end;

procedure TCliSiTefIEx.setTimeout(P1: Integer);
begin
  FCliSiTefIEx.setTimeout(P1);
end;

procedure TCliSiTefIEx.setTipoCancelamento(P1: Integer);
begin
  FCliSiTefIEx.setTipoCancelamento(P1);
end;

procedure TCliSiTefIEx.setTipoCancelamento(P1: SmallInt);
begin
  FCliSiTefIEx.setTipoCancelamento(P1);
end;

procedure TCliSiTefIEx.setTipoCodigoEmBarras(P1: SmallInt);
begin
  FCliSiTefIEx.setTipoCodigoEmBarras(P1);
end;

procedure TCliSiTefIEx.setTipoCodigoEmBarras(P1: Integer);
begin
  FCliSiTefIEx.setTipoCodigoEmBarras(P1);
end;

procedure TCliSiTefIEx.setTipoConsulta(P1: Integer);
begin
  FCliSiTefIEx.setTipoConsulta(P1);
end;

procedure TCliSiTefIEx.setTipoOperacao(P1: Integer);
begin
  FCliSiTefIEx.setTipoOperacao(P1);
end;

procedure TCliSiTefIEx.setTipoTransacao(P1: Integer);
begin
  FCliSiTefIEx.setTipoTransacao(P1);
end;

procedure TCliSiTefIEx.setTipoTransacao(P1: SmallInt);
begin
  FCliSiTefIEx.setTipoTransacao(P1);
end;

procedure TCliSiTefIEx.setTipoTrilha1(P1: String);
begin
  FCliSiTefIEx.setTipoTrilha1(STJ(P1));
end;

procedure TCliSiTefIEx.setTipoTrilha2(P1: String);
begin
  FCliSiTefIEx.setTipoTrilha2(STJ(P1));
end;

procedure TCliSiTefIEx.setTotalGeral(P1: String);
begin
  FCliSiTefIEx.setTotalGeral(STJ(P1));
end;

procedure TCliSiTefIEx.setTotalizador(P1: String);
begin
  FCliSiTefIEx.setTotalizador(STJ(P1));
end;

procedure TCliSiTefIEx.setTrilha1(P1: String);
begin
  FCliSiTefIEx.setTrilha1(STJ(P1));
end;

procedure TCliSiTefIEx.setTrilha2(P1: String);
begin
  FCliSiTefIEx.setTrilha2(STJ(P1));
end;

procedure TCliSiTefIEx.setTrilha3(P1: String);
begin
  FCliSiTefIEx.setTrilha3(STJ(P1));
end;

procedure TCliSiTefIEx.setValor(P1: String);
begin
  FCliSiTefIEx.setValor(STJ(P1));
end;

procedure TCliSiTefIEx.setValorTotalBonus(P1: String);
begin
  FCliSiTefIEx.setValorTotalBonus(STJ(P1));
end;

procedure TCliSiTefIEx.setValorTotalCupon(P1: String);
begin
  FCliSiTefIEx.setValorTotalCupon(STJ(P1));
end;

procedure TCliSiTefIEx.setValorUnitario(P1: String);
begin
  FCliSiTefIEx.setValorUnitario(STJ(P1));
end;

function TCliSiTefIEx.validaCampoCodigoEmBarras: Integer;
begin
  result := FCliSiTefIEx.validaCampoCodigoEmBarras;
end;

function TCliSiTefIEx.validaCampoCodigoEmBarras(P1: String;
P2: SmallInt): Integer;
begin
  result := FCliSiTefIEx.validaCampoCodigoEmBarras(STJ(P1), P2);
end;

function TCliSiTefIEx.verificaPresencaPinPad: Integer;
begin
  result := FCliSiTefIEx.verificaPresencaPinPad;
end;

{ exports }
procedure GeraTrace(P1: String; P2: String; P3: String);
begin
  CliSiTefIEx.GeraTrace(P1, P2, P3);
end;

procedure GeraTrace(P1: String; P2: String; P3: TBytes);
begin
  CliSiTefIEx.GeraTrace(P1, P2, P3);
end;

procedure GeraTrace(P1: String; P2: String; P3: Integer);
begin
  CliSiTefIEx.GeraTrace(P1, P2, P3);
end;

function LeTrilhaChipInterativo(P1: Integer): Integer;
begin
  result := CliSiTefIEx.LeTrilhaChipInterativo(P1);
end;

function abrePinPad: Integer;
begin
  result := CliSiTefIEx.abrePinPad;
end;

function carregaArquivosTraducao: Integer;
begin
  result := CliSiTefIEx.carregaArquivosTraducao;
end;

function carregaArquivosTraducao(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.carregaArquivosTraducao(P1, P2);
end;

function configuraIntSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.configuraIntSiTefInterativo;
end;

function configuraIntSiTefInterativo(P1: String; P2: String;
P3: String): Integer;
begin
  result := CliSiTefIEx.configuraIntSiTefInterativo(P1, P2, P3);
end;

function configuraIntSiTefInterativoEx: Integer;
begin
  result := CliSiTefIEx.configuraIntSiTefInterativoEx;
end;

function configuraIntSiTefInterativoEx(P1: String; P2: String; P3: String;
P4: String): Integer;
begin
  result := CliSiTefIEx.configuraIntSiTefInterativoEx(P1, P2, P3, P4);
end;

function consultaDescontoSocioTorcedor: Integer;
begin
  result := CliSiTefIEx.consultaDescontoSocioTorcedor;
end;

function consultaDescontoSocioTorcedor(P1: String): Integer;
begin
  result := CliSiTefIEx.consultaDescontoSocioTorcedor(P1);
end;

function consultaParametrosSiTef: Integer;
begin
  result := CliSiTefIEx.consultaParametrosSiTef;
end;

function consultaParametrosSiTef(P1: Integer): Integer;
begin
  result := CliSiTefIEx.consultaParametrosSiTef(P1);
end;

function consultaQtdeDescontoSocioTorcedor: Integer;
begin
  result := CliSiTefIEx.consultaQtdeDescontoSocioTorcedor;
end;

function consultaQtdeDescontoSocioTorcedor(P1: String; P2: Integer; P3: String;
P4: String): Integer;
begin
  result := CliSiTefIEx.consultaQtdeDescontoSocioTorcedor(P1, P2, P3, P4);
end;

function continuaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.continuaFuncaoSiTefInterativo;
end;

function correspondenteBancarioSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.correspondenteBancarioSiTefInterativo;
end;

function correspondenteBancarioSiTefInterativo(P1: String; P2: String;
P3: String; P4: String; P5: String): Integer;
begin
  result := CliSiTefIEx.correspondenteBancarioSiTefInterativo(P1, P2,
    P3, P4, P5);
end;

function descarregaMensagens: Integer;
begin
  result := CliSiTefIEx.descarregaMensagens;
end;

function desfazTransacaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.desfazTransacaoSiTefInterativo;
end;

function desfazTransacaoSiTefInterativo(P1: String): Integer;
begin
  result := CliSiTefIEx.desfazTransacaoSiTefInterativo(P1);
end;

function efetuaPagamentoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.efetuaPagamentoSiTefInterativo;
end;

function efetuaPagamentoSiTefInterativo(P1: Integer; P2: String; P3: String;
P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.efetuaPagamentoSiTefInterativo(P1, P2, P3, P4,
    P5, P6, P7);
end;

function enviaRecebeSiTefDireto: Integer;
begin
  result := CliSiTefIEx.enviaRecebeSiTefDireto;
end;

function enviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt;
P4: TBytes; P5: SmallInt; P6: SmallInt; P7: SmallInt; P8: String; P9: String;
P10: String; P11: String; P12: SmallInt): Integer;
begin
  result := CliSiTefIEx.enviaRecebeSiTefDireto(P1, P2, P3, P4, P5, P6, P7, P8,
    P9, P10, P11, P12);
end;

function enviaRecebeSitServicos: Integer;
begin
  result := CliSiTefIEx.enviaRecebeSitServicos;
end;

function enviaRecebeSitServicos(P1: SmallInt; P2: TBytes; P3: SmallInt;
P4: SmallInt; P5: SmallInt; P6: String; P7: String; P8: String;
P9: String): Integer;
begin
  result := CliSiTefIEx.enviaRecebeSitServicos(P1, P2, P3, P4, P5, P6,
    P7, P8, P9);
end;

function escreveMensagemPermanentePinPad: Integer;
begin
  result := CliSiTefIEx.escreveMensagemPermanentePinPad;
end;

function escreveMensagemPermanentePinPad(P1: String): Integer;
begin
  result := CliSiTefIEx.escreveMensagemPermanentePinPad(P1);
end;

function escreveMensagemPinPad: Integer;
begin
  result := CliSiTefIEx.escreveMensagemPinPad;
end;

function escreveMensagemPinPad(P1: String): Integer;
begin
  result := CliSiTefIEx.escreveMensagemPinPad(P1);
end;

function executaEnviaRecebeSiTefDireto: Integer;
begin
  result := CliSiTefIEx.executaEnviaRecebeSiTefDireto;
end;

function executaEnviaRecebeSiTefDireto(P1: SmallInt; P2: SmallInt; P3: SmallInt;
P4: String; P5: String; P6: String; P7: String; P8: SmallInt): Integer;
begin
  result := CliSiTefIEx.executaEnviaRecebeSiTefDireto(P1, P2, P3, P4, P5,
    P6, P7, P8);
end;

function fechaPinPad: Integer;
begin
  result := CliSiTefIEx.fechaPinPad;
end;

function finalizaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.finalizaFuncaoSiTefInterativo;
end;

function finalizaFuncaoSiTefInterativo(P1: SmallInt; P2: String; P3: String;
P4: String; P5: String): Integer;
begin
  result := CliSiTefIEx.finalizaFuncaoSiTefInterativo(P1, P2, P3, P4, P5);
end;

function finalizaTransacaoIdentificadaSiTef: Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoIdentificadaSiTef;
end;

function finalizaTransacaoIdentificadaSiTef(P1: SmallInt; P2: SmallInt;
P3: String; P4: String; P5: String; P6: String): Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoIdentificadaSiTef(P1, P2, P3,
    P4, P5, P6);
end;

function finalizaTransacaoIdentificadaSiTefBonus: Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus;
end;

function finalizaTransacaoIdentificadaSiTefBonus(P1: SmallInt; P2: String;
P3: String; P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoIdentificadaSiTefBonus(P1, P2, P3, P4,
    P5, P6, P7);
end;

function finalizaTransacaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativo;
end;

function finalizaTransacaoSiTefInterativo(P1: SmallInt; P2: String; P3: String;
P4: String): Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativo(P1, P2, P3, P4);
end;

function finalizaTransacaoSiTefInterativoBonus: Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativoBonus;
end;

function finalizaTransacaoSiTefInterativoBonus(P1: SmallInt; P2: String;
P3: String; P4: String; P5: String; P6: String): Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativoBonus(P1, P2, P3,
    P4, P5, P6);
end;

function finalizaTransacaoSiTefInterativoEx: Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativoEx;
end;

function finalizaTransacaoSiTefInterativoEx(P1: SmallInt; P2: String;
P3: String; P4: String; P5: String): Integer;
begin
  result := CliSiTefIEx.finalizaTransacaoSiTefInterativoEx(P1, P2, P3, P4, P5);
end;

function flashVendasSitef: Integer;
begin
  result := CliSiTefIEx.flashVendasSitef;
end;

function flashVendasSitef(P1: String; P2: String; P3: String; P4: String;
P5: String): Integer;
begin
  result := CliSiTefIEx.flashVendasSitef(P1, P2, P3, P4, P5);
end;

function forneceParametroEnviaRecebeSiTefDireto: Integer;
begin
  result := CliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto;
end;

function forneceParametroEnviaRecebeSiTefDireto(P1: SmallInt; P2: String;
P3: SmallInt; P4: SmallInt): Integer;
begin
  result := CliSiTefIEx.forneceParametroEnviaRecebeSiTefDireto(P1, P2, P3, P4);
end;

function funcoesGerenciaisSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.funcoesGerenciaisSiTefInterativo;
end;

function funcoesGerenciaisSiTefInterativo(P1: String; P2: String; P3: String;
P4: String): Integer;
begin
  result := CliSiTefIEx.funcoesGerenciaisSiTefInterativo(P1, P2, P3, P4);
end;

function getBuffer: String;
begin
  result := CliSiTefIEx.getBuffer;
end;

function getCampo: String;
begin
  result := CliSiTefIEx.getCampo;
end;

function getChaveSeguranca: String;
begin
  result := CliSiTefIEx.getChaveSeguranca;
end;

function getCodigoResposta: SmallInt;
begin
  result := CliSiTefIEx.getCodigoResposta;
end;

function getCodigoServico: String;
begin
  result := CliSiTefIEx.getCodigoServico;
end;

function getDadosContas: String;
begin
  result := CliSiTefIEx.getDadosContas;
end;

function getDadosDesfazimento: String;
begin
  result := CliSiTefIEx.getDadosDesfazimento;
end;

function getDadosRx: TBytes;
begin
  result := CliSiTefIEx.getDadosRx;
end;

function getDadosSaida: String;
begin
  result := CliSiTefIEx.getDadosSaida;
end;

function getDadosServico: String;
begin
  result := CliSiTefIEx.getDadosServico;
end;

function getProximoComando: Integer;
begin
  result := CliSiTefIEx.getProximoComando;
end;

function getSenha: String;
begin
  result := CliSiTefIEx.getSenha;
end;

function getTamanhoMaximo: SmallInt;
begin
  result := CliSiTefIEx.getTamanhoMaximo;
end;

function getTamanhoMinimo: SmallInt;
begin
  result := CliSiTefIEx.getTamanhoMinimo;
end;

function getTipoCampo: Integer;
begin
  result := CliSiTefIEx.getTipoCampo;
end;

function getTipoCodigoEmBarras: SmallInt;
begin
  result := CliSiTefIEx.getTipoCodigoEmBarras;
end;

function getTipoTrilha1: String;
begin
  result := CliSiTefIEx.getTipoTrilha1;
end;

function getTipoTrilha2: String;
begin
  result := CliSiTefIEx.getTipoTrilha2;
end;

function getTrilha1: String;
begin
  result := CliSiTefIEx.getTrilha1;
end;

function getTrilha2: String;
begin
  result := CliSiTefIEx.getTrilha2;
end;

function getTrilha3: String;
begin
  result := CliSiTefIEx.getTrilha3;
end;

function getVersaoCliSiTef: String;
begin
  result := CliSiTefIEx.getVersaoCliSiTef;
end;

function getVersaoCliSiTefI: String;
begin
  result := CliSiTefIEx.getVersaoCliSiTefI;
end;

function getVersion: String;
begin
  result := CliSiTefIEx.getVersion;
end;

function gravaDadosCriptografados: Integer;
begin
  result := CliSiTefIEx.gravaDadosCriptografados;
end;

function gravaDadosCriptografados(P1: String; P2: Integer; P3: TBytes;
P4: Integer; P5: String): Integer;
begin
  result := CliSiTefIEx.gravaDadosCriptografados(P1, P2, P3, P4, P5);
end;

function informaProdutoCancelamentoVidalink: Integer;
begin
  result := CliSiTefIEx.informaProdutoCancelamentoVidalink;
end;

function informaProdutoCancelamentoVidalink(P1: SmallInt; P2: String;
P3: SmallInt): Integer;
begin
  result := CliSiTefIEx.informaProdutoCancelamentoVidalink(P1, P2, P3);
end;

function informaProdutoVendaVidalink: Integer;
begin
  result := CliSiTefIEx.informaProdutoVendaVidalink;
end;

function informaProdutoVendaVidalink(P1: SmallInt; P2: String; P3: SmallInt;
P4: String): Integer;
begin
  result := CliSiTefIEx.informaProdutoVendaVidalink(P1, P2, P3, P4);
end;

function informaTotalizadorVenda: Integer;
begin
  result := CliSiTefIEx.informaTotalizadorVenda;
end;

function informaTotalizadorVenda(P1: String): Integer;
begin
  result := CliSiTefIEx.informaTotalizadorVenda(P1);
end;

function iniciaCancelamentoIdentificadoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo;
end;

function iniciaCancelamentoIdentificadoSiTefInterativo(P1: String; P2: String;
P3: String; P4: String; P5: String): Integer;
begin
  result := CliSiTefIEx.iniciaCancelamentoIdentificadoSiTefInterativo(P1, P2,
    P3, P4, P5);
end;

function iniciaCancelamentoPagamentoContasSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo;
end;

function iniciaCancelamentoPagamentoContasSiTefInterativo(P1: String;
P2: String; P3: String; P4: String; P5: String): Integer;
begin
  result := CliSiTefIEx.iniciaCancelamentoPagamentoContasSiTefInterativo(P1, P2,
    P3, P4, P5);
end;

function iniciaConfiguracaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.iniciaConfiguracaoSiTefInterativo;
end;

function iniciaConfiguracaoSiTefInterativo(P1: String; P2: String;
P3: String): Integer;
begin
  result := CliSiTefIEx.iniciaConfiguracaoSiTefInterativo(P1, P2, P3);
end;

function iniciaFuncaoAASiTefInterativo: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoAASiTefInterativo;
end;

function iniciaFuncaoAASiTefInterativo(P1: Integer; P2: String; P3: String;
P4: String; P5: String; P6: String; P7: String; P8: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoAASiTefInterativo(P1, P2, P3, P4, P5,
    P6, P7, P8);
end;

function iniciaFuncaoSiTefInterativo: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativo;
end;

function iniciaFuncaoSiTefInterativo(P1: Integer; P2: String; P3: String;
P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativo(P1, P2, P3, P4, P5, P6, P7);
end;

function iniciaFuncaoSiTefInterativoCancelamentoVidalink: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink;
end;

function iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1: SmallInt;
P2: SmallInt; P3: String; P4: String; P5: String; P6: String; P7: String;
P8: String; P9: String; P10: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoCancelamentoVidalink(P1, P2,
    P3, P4, P5, P6, P7, P8, P9, P10);
end;

function iniciaFuncaoSiTefInterativoConsultaPBM: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM;
end;

function iniciaFuncaoSiTefInterativoConsultaPBM(P1: String; P2: String;
P3: String; P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaPBM(P1, P2, P3, P4,
    P5, P6, P7);
end;

function iniciaFuncaoSiTefInterativoConsultaVidalink: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink;
end;

function iniciaFuncaoSiTefInterativoConsultaVidalink(P1: String; P2: String;
P3: String; P4: String; P5: String; P6: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoConsultaVidalink(P1, P2, P3,
    P4, P5, P6);
end;

function iniciaFuncaoSiTefInterativoVendaVidalink: Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink;
end;

function iniciaFuncaoSiTefInterativoVendaVidalink(P1: String; P2: SmallInt;
P3: String; P4: String; P5: String; P6: String): Integer;
begin
  result := CliSiTefIEx.iniciaFuncaoSiTefInterativoVendaVidalink(P1, P2, P3,
    P4, P5, P6);
end;

function interrompeLeCartaoDireto: Integer;
begin
  result := CliSiTefIEx.interrompeLeCartaoDireto;
end;

function leCampoCriptografadoPinPad: Integer;
begin
  result := CliSiTefIEx.leCampoCriptografadoPinPad;
end;

function leCampoCriptografadoPinPad(P1: String; P2: String; P3: SmallInt;
P4: SmallInt): Integer;
begin
  result := CliSiTefIEx.leCampoCriptografadoPinPad(P1, P2, P3, P4);
end;

function leCampoPinPad: Integer;
begin
  result := CliSiTefIEx.leCampoPinPad;
end;

function leCampoPinPad(P1: String; P2: SmallInt; P3: SmallInt): Integer;
begin
  result := CliSiTefIEx.leCampoPinPad(P1, P2, P3);
end;

function leCartaoDireto: Integer;
begin
  result := CliSiTefIEx.leCartaoDireto;
end;

function leCartaoDireto(P1: String): Integer;
begin
  result := CliSiTefIEx.leCartaoDireto(P1);
end;

function leCartaoDiretoEx: Integer;
begin
  result := CliSiTefIEx.leCartaoDiretoEx;
end;

function leCartaoDiretoEx(P1: String; P2: SmallInt): Integer;
begin
  result := CliSiTefIEx.leCartaoDiretoEx(P1, P2);
end;

function leCartaoDiretoSeguro: Integer;
begin
  result := CliSiTefIEx.leCartaoDiretoSeguro;
end;

function leCartaoDiretoSeguro(P1: String; P2: SmallInt): Integer;
begin
  result := CliSiTefIEx.leCartaoDiretoSeguro(P1, P2);
end;

function leCartaoInterativo: Integer;
begin
  result := CliSiTefIEx.leCartaoInterativo;
end;

function leCartaoInterativo(P1: String): Integer;
begin
  result := CliSiTefIEx.leCartaoInterativo(P1);
end;

function leCartaoSeguro: Integer;
begin
  result := CliSiTefIEx.leCartaoSeguro;
end;

function leCartaoSeguro(P1: String): Integer;
begin
  result := CliSiTefIEx.leCartaoSeguro(P1);
end;

function leDigitoPinPad: Integer;
begin
  result := CliSiTefIEx.leDigitoPinPad;
end;

function leDigitoPinPad(P1: String): Integer;
begin
  result := CliSiTefIEx.leDigitoPinPad(P1);
end;

function leDoisDigitosPinPad: Integer;
begin
  result := CliSiTefIEx.leDoisDigitosPinPad;
end;

function leDoisDigitosPinPad(P1: String): Integer;
begin
  result := CliSiTefIEx.leDoisDigitosPinPad(P1);
end;

function leSenhaDireto: Integer;
begin
  result := CliSiTefIEx.leSenhaDireto;
end;

function leSenhaDireto(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.leSenhaDireto(P1, P2);
end;

function leSenhaDiretoEx: Integer;
begin
  result := CliSiTefIEx.leSenhaDiretoEx;
end;

function leSenhaDiretoEx(P1: String; P2: String; P3: SmallInt): Integer;
begin
  result := CliSiTefIEx.leSenhaDiretoEx(P1, P2, P3);
end;

function leSenhaInterativo: Integer;
begin
  result := CliSiTefIEx.leSenhaInterativo;
end;

function leSenhaInterativo(P1: String): Integer;
begin
  result := CliSiTefIEx.leSenhaInterativo(P1);
end;

function leSimNaoPinPad: Integer;
begin
  result := CliSiTefIEx.leSimNaoPinPad;
end;

function leSimNaoPinPad(P1: String): Integer;
begin
  result := CliSiTefIEx.leSimNaoPinPad(P1);
end;

function leTeclaPinPad: Integer;
begin
  result := CliSiTefIEx.leTeclaPinPad;
end;

function leTrilha3: Integer;
begin
  result := CliSiTefIEx.leTrilha3;
end;

function leTrilha3(P1: String): Integer;
begin
  result := CliSiTefIEx.leTrilha3(P1);
end;

function LeTrilhaChipInterativo: Integer;
begin
  result := CliSiTefIEx.LeTrilhaChipInterativo;
end;

function obtemChaveSeguranca: Integer;
begin
  result := CliSiTefIEx.obtemChaveSeguranca;
end;

function obtemChaveSeguranca(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.obtemChaveSeguranca(P1, P2);
end;

function obtemDadoPinPad: Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPad;
end;

function obtemDadoPinPad(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPad(P1, P2);
end;

function obtemDadoPinPadDireto: Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadDireto;
end;

function obtemDadoPinPadDireto(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadDireto(P1, P2);
end;

function obtemDadoPinPadDiretoEx: Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadDiretoEx;
end;

function obtemDadoPinPadDiretoEx(P1: String; P2: String; P3: String): Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadDiretoEx(P1, P2, P3);
end;

function obtemDadoPinPadEx: Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadEx;
end;

function obtemDadoPinPadEx(P1: String; P2: String; P3: String): Integer;
begin
  result := CliSiTefIEx.obtemDadoPinPadEx(P1, P2, P3);
end;

function obtemDadosCriptografados: Integer;
begin
  result := CliSiTefIEx.obtemDadosCriptografados;
end;

function obtemDadosCriptografados(P1: String; P2: Integer; P3: String): Integer;
begin
  result := CliSiTefIEx.obtemDadosCriptografados(P1, P2, P3);
end;

function obtemInformacoesPinPad: Integer;
begin
  result := CliSiTefIEx.obtemInformacoesPinPad;
end;

function obtemParametrosSiTef: Integer;
begin
  result := CliSiTefIEx.obtemParametrosSiTef;
end;

function obtemParametrosSiTef(P1: Integer; P2: String): Integer;
begin
  result := CliSiTefIEx.obtemParametrosSiTef(P1, P2);
end;

function obtemQuantidadeTransacoesPendentes: Integer;
begin
  result := CliSiTefIEx.obtemQuantidadeTransacoesPendentes;
end;

function obtemQuantidadeTransacoesPendentes(P1: String; P2: String): Integer;
begin
  result := CliSiTefIEx.obtemQuantidadeTransacoesPendentes(P1, P2);
end;

function obtemRetornoEnviaRecebeSiTefDireto: Integer;
begin
  result := CliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto;
end;

function obtemRetornoEnviaRecebeSiTefDireto(P1: SmallInt): Integer;
begin
  result := CliSiTefIEx.obtemRetornoEnviaRecebeSiTefDireto(P1);
end;

function obtemSenha: Integer;
begin
  result := CliSiTefIEx.obtemSenha;
end;

function obtemSenha(P1: String; P2: String; P3: String): Integer;
begin
  result := CliSiTefIEx.obtemSenha(P1, P2, P3);
end;

function obtemStatusLeitoraSPTrans: Integer;
begin
  result := CliSiTefIEx.obtemStatusLeitoraSPTrans;
end;

function obtemVersao: Integer;
begin
  result := CliSiTefIEx.obtemVersao;
end;

function pinPadBTExecuta(P1: Integer; P2: String): Integer;
begin
  result := CliSiTefIEx.pinPadBTExecuta(P1, P2);
end;

function pinPadInterativo(P1: Integer; P2: String): Integer;
begin
  result := CliSiTefIEx.pinPadInterativo(P1, P2);
end;

function registraBonusOffLineSiTef: Integer;
begin
  result := CliSiTefIEx.registraBonusOffLineSiTef;
end;

function registraBonusOffLineSiTef(P1: String; P2: String; P3: String;
P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.registraBonusOffLineSiTef(P1, P2, P3, P4, P5, P6, P7);
end;

function registraDescontoSocioTorcedor: Integer;
begin
  result := CliSiTefIEx.registraDescontoSocioTorcedor;
end;

function registraDescontoSocioTorcedor(P1: String; P2: String; P3: String;
P4: String; P5: String; P6: String): Integer;
begin
  result := CliSiTefIEx.registraDescontoSocioTorcedor(P1, P2, P3, P4, P5, P6);
end;

function registraDescontoSocioTorcedorSequencial: Integer;
begin
  result := CliSiTefIEx.registraDescontoSocioTorcedorSequencial;
end;

function registraDescontoSocioTorcedorSequencial(P1: String; P2: String;
P3: String; P4: String; P5: String; P6: String; P7: Integer): Integer;
begin
  result := CliSiTefIEx.registraDescontoSocioTorcedorSequencial(P1, P2, P3, P4,
    P5, P6, P7);
end;

function registraTefPromocaoSiTef: Integer;
begin
  result := CliSiTefIEx.registraTefPromocaoSiTef;
end;

function registraTefPromocaoSiTef(P1: String; P2: String; P3: String;
P4: String; P5: String; P6: String; P7: String): Integer;
begin
  result := CliSiTefIEx.registraTefPromocaoSiTef(P1, P2, P3, P4, P5, P6, P7);
end;

procedure setArqTraducao(P1: String);
begin
  CliSiTefIEx.setArqTraducao(P1);
end;

procedure setArqTraducaoCielo(P1: String);
begin
  CliSiTefIEx.setArqTraducaoCielo(P1);
end;

procedure setBuffer(P1: String);
begin
  CliSiTefIEx.setBuffer(P1);
end;

procedure setChaveAcesso(P1: String);
begin
  CliSiTefIEx.setChaveAcesso(P1);
end;

procedure setChaveSecreta(P1: String);
begin
  CliSiTefIEx.setChaveSecreta(P1);
end;

procedure setChaveSeguranca(P1: String);
begin
  CliSiTefIEx.setChaveSeguranca(P1);
end;

procedure setChaveTrnCancelamento(P1: String);
begin
  CliSiTefIEx.setChaveTrnCancelamento(P1);
end;

procedure setCodigoAutorizacao(P1: String);
begin
  CliSiTefIEx.setCodigoAutorizacao(P1);
end;

procedure setCodigoEmBarras(P1: String);
begin
  CliSiTefIEx.setCodigoEmBarras(P1);
end;

procedure setCodigoLoja(P1: String);
begin
  CliSiTefIEx.setCodigoLoja(P1);
end;

procedure setCodigoProduto(P1: String);
begin
  CliSiTefIEx.setCodigoProduto(P1);
end;

procedure setConfiguraResultado(P1: Integer);
begin
  CliSiTefIEx.setConfiguraResultado(P1);
end;

procedure setConfiguraResultado(P1: SmallInt);
begin
  CliSiTefIEx.setConfiguraResultado(P1);
end;

procedure setConfirma(P1: Integer);
begin
  CliSiTefIEx.setConfirma(P1);
end;

procedure setConfirma(P1: SmallInt);
begin
  CliSiTefIEx.setConfirma(P1);
end;

procedure setContinuaNavegacao(P1: Integer);
begin
  CliSiTefIEx.setContinuaNavegacao(P1);
end;

procedure setDadosCaptura(P1: String);
begin
  CliSiTefIEx.setDadosCaptura(P1);
end;

procedure setDadosContas(P1: String);
begin
  CliSiTefIEx.setDadosContas(P1);
end;

procedure setDadosDesfazimento(P1: String);
begin
  CliSiTefIEx.setDadosDesfazimento(P1);
end;

procedure setDadosEntrada(P1: TBytes);
begin
  CliSiTefIEx.setDadosEntrada(P1);
end;

procedure setDadosTransacao(P1: String);
begin
  CliSiTefIEx.setDadosTransacao(P1);
end;

procedure setDadosTx(P1: TBytes);
begin
  CliSiTefIEx.setDadosTx(P1);
end;

procedure setDataFiscal(P1: String);
begin
  CliSiTefIEx.setDataFiscal(P1);
end;

procedure setDataFiscalOriginal(P1: String);
begin
  CliSiTefIEx.setDataFiscalOriginal(P1);
end;

procedure setDelimitador(P1: SmallInt);
begin
  CliSiTefIEx.setDelimitador(P1);
end;

procedure setDelimitador(P1: Integer);
begin
  CliSiTefIEx.setDelimitador(P1);
end;

procedure setEnderecoSiTef(P1: String);
begin
  CliSiTefIEx.setEnderecoSiTef(P1);
end;

procedure setFuncaoSiTef(P1: SmallInt);
begin
  CliSiTefIEx.setFuncaoSiTef(P1);
end;

procedure setFuncaoSiTef(P1: Integer);
begin
  CliSiTefIEx.setFuncaoSiTef(P1);
end;

procedure setHorario(P1: String);
begin
  CliSiTefIEx.setHorario(P1);
end;

procedure setIdentificacaoPdvOriginal(P1: String);
begin
  CliSiTefIEx.setIdentificacaoPdvOriginal(P1);
end;

procedure setIndiceParametro(P1: Integer);
begin
  CliSiTefIEx.setIndiceParametro(P1);
end;

procedure setIndiceParametro(P1: SmallInt);
begin
  CliSiTefIEx.setIndiceParametro(P1);
end;

procedure setIndiceProduto(P1: SmallInt);
begin
  CliSiTefIEx.setIndiceProduto(P1);
end;

procedure setIndiceProduto(P1: Integer);
begin
  CliSiTefIEx.setIndiceProduto(P1);
end;

procedure setModalidade(P1: Integer);
begin
  CliSiTefIEx.setModalidade(P1);
end;

procedure setMsgDisplay(P1: String);
begin
  CliSiTefIEx.setMsgDisplay(P1);
end;

procedure setNSUSiTef(P1: String);
begin
  CliSiTefIEx.setNSUSiTef(P1);
end;

procedure setNomeArquivo(P1: String);
begin
  CliSiTefIEx.setNomeArquivo(P1);
end;

procedure setNumeroCuponFiscal(P1: String);
begin
  CliSiTefIEx.setNumeroCuponFiscal(P1);
end;

procedure setNumeroCuponFiscalOriginal(P1: String);
begin
  CliSiTefIEx.setNumeroCuponFiscalOriginal(P1);
end;

procedure setNumeroDocumentoOriginal(P1: String);
begin
  CliSiTefIEx.setNumeroDocumentoOriginal(P1);
end;

procedure setNumeroProdutos(P1: SmallInt);
begin
  CliSiTefIEx.setNumeroProdutos(P1);
end;

procedure setNumeroProdutos(P1: Integer);
begin
  CliSiTefIEx.setNumeroProdutos(P1);
end;

procedure setNumeroTerminal(P1: String);
begin
  CliSiTefIEx.setNumeroTerminal(P1);
end;

procedure setOffsetCartao(P1: SmallInt);
begin
  CliSiTefIEx.setOffsetCartao(P1);
end;

procedure setOffsetCartao(P1: Integer);
begin
  CliSiTefIEx.setOffsetCartao(P1);
end;

procedure setOperador(P1: String);
begin
  CliSiTefIEx.setOperador(P1);
end;

procedure setParametro(P1: String);
begin
  CliSiTefIEx.setParametro(P1);
end;

procedure setParametroCartao(P1: Integer);
begin
  CliSiTefIEx.setParametroCartao(P1);
end;

procedure setParametroCartao(P1: SmallInt);
begin
  CliSiTefIEx.setParametroCartao(P1);
end;

procedure setParametrosAdicionais(P1: String);
begin
  CliSiTefIEx.setParametrosAdicionais(P1);
end;

procedure setProdutos(P1: String);
begin
  CliSiTefIEx.setProdutos(P1);
end;

procedure setQuantidade(P1: Integer);
begin
  CliSiTefIEx.setQuantidade(P1);
end;

procedure setQuantidade(P1: SmallInt);
begin
  CliSiTefIEx.setQuantidade(P1);
end;

procedure setQuantidadeProduto(P1: Integer);
begin
  CliSiTefIEx.setQuantidadeProduto(P1);
end;

procedure setRedeDestino(P1: Integer);
begin
  CliSiTefIEx.setRedeDestino(P1);
end;

procedure setRedeDestino(P1: SmallInt);
begin
  CliSiTefIEx.setRedeDestino(P1);
end;

procedure setRestricoes(P1: String);
begin
  CliSiTefIEx.setRestricoes(P1);
end;

procedure setSenhaPinPad(P1: String);
begin
  CliSiTefIEx.setSenhaPinPad(P1);
end;

procedure setSequencial(P1: Integer);
begin
  CliSiTefIEx.setSequencial(P1);
end;

procedure setSupervisor(P1: String);
begin
  CliSiTefIEx.setSupervisor(P1);
end;

procedure setTamDadosEntrada(P1: Integer);
begin
  CliSiTefIEx.setTamDadosEntrada(P1);
end;

procedure setTamDadosTx(P1: SmallInt);
begin
  CliSiTefIEx.setTamDadosTx(P1);
end;

procedure setTamDadosTx(P1: Integer);
begin
  CliSiTefIEx.setTamDadosTx(P1);
end;

procedure setTamMaxDadosRx(P1: Integer);
begin
  CliSiTefIEx.setTamMaxDadosRx(P1);
end;

procedure setTamMaxDadosRx(P1: SmallInt);
begin
  CliSiTefIEx.setTamMaxDadosRx(P1);
end;

procedure setTamMaxDadosServico(P1: SmallInt);
begin
  CliSiTefIEx.setTamMaxDadosServico(P1);
end;

procedure setTamMaxDadosServico(P1: Integer);
begin
  CliSiTefIEx.setTamMaxDadosServico(P1);
end;

procedure setTamanhoMaximo(P1: Integer);
begin
  CliSiTefIEx.setTamanhoMaximo(P1);
end;

procedure setTamanhoMaximo(P1: SmallInt);
begin
  CliSiTefIEx.setTamanhoMaximo(P1);
end;

procedure setTamanhoMinimo(P1: Integer);
begin
  CliSiTefIEx.setTamanhoMinimo(P1);
end;

procedure setTamanhoMinimo(P1: SmallInt);
begin
  CliSiTefIEx.setTamanhoMinimo(P1);
end;

procedure setTempoEsperaRx(P1: SmallInt);
begin
  CliSiTefIEx.setTempoEsperaRx(P1);
end;

procedure setTempoEsperaRx(P1: Integer);
begin
  CliSiTefIEx.setTempoEsperaRx(P1);
end;

procedure setTimeout(P1: SmallInt);
begin
  CliSiTefIEx.setTimeout(P1);
end;

procedure setTimeout(P1: Integer);
begin
  CliSiTefIEx.setTimeout(P1);
end;

procedure setTipoCancelamento(P1: SmallInt);
begin
  CliSiTefIEx.setTipoCancelamento(P1);
end;

procedure setTipoCancelamento(P1: Integer);
begin
  CliSiTefIEx.setTipoCancelamento(P1);
end;

procedure setTipoCodigoEmBarras(P1: SmallInt);
begin
  CliSiTefIEx.setTipoCodigoEmBarras(P1);
end;

procedure setTipoCodigoEmBarras(P1: Integer);
begin
  CliSiTefIEx.setTipoCodigoEmBarras(P1);
end;

procedure setTipoConsulta(P1: Integer);
begin
  CliSiTefIEx.setTipoConsulta(P1);
end;

procedure setTipoOperacao(P1: Integer);
begin
  CliSiTefIEx.setTipoOperacao(P1);
end;

procedure setTipoTransacao(P1: Integer);
begin
  CliSiTefIEx.setTipoTransacao(P1);
end;

procedure setTipoTransacao(P1: SmallInt);
begin
  CliSiTefIEx.setTipoTransacao(P1);
end;

procedure setTipoTrilha1(P1: String);
begin
  CliSiTefIEx.setTipoTrilha1(P1);
end;

procedure setTipoTrilha2(P1: String);
begin
  CliSiTefIEx.setTipoTrilha2(P1);
end;

procedure setTotalGeral(P1: String);
begin
  CliSiTefIEx.setTotalGeral(P1);
end;

procedure setTotalizador(P1: String);
begin
  CliSiTefIEx.setTotalizador(P1);
end;

procedure setTrilha1(P1: String);
begin
  CliSiTefIEx.setTrilha1(P1);
end;

procedure setTrilha2(P1: String);
begin
  CliSiTefIEx.setTrilha2(P1);
end;

procedure setTrilha3(P1: String);
begin
  CliSiTefIEx.setTrilha3(P1);
end;

procedure setValor(P1: String);
begin
  CliSiTefIEx.setValor(P1);
end;

procedure setValorTotalBonus(P1: String);
begin
  CliSiTefIEx.setValorTotalBonus(P1);
end;

procedure setValorTotalCupon(P1: String);
begin
  CliSiTefIEx.setValorTotalCupon(P1);
end;

procedure setValorUnitario(P1: String);
begin
  CliSiTefIEx.setValorUnitario(P1);
end;

procedure seteSenha(P1: Integer);
begin
  CliSiTefIEx.seteSenha(P1);
end;

procedure seteSenha(P1: SmallInt);
begin
  CliSiTefIEx.seteSenha(P1);
end;

function validaCampoCodigoEmBarras: Integer;
begin
  result := CliSiTefIEx.validaCampoCodigoEmBarras;
end;

function validaCampoCodigoEmBarras(P1: String; P2: SmallInt): Integer;
begin
  result := CliSiTefIEx.validaCampoCodigoEmBarras(P1, P2);
end;

function verificaPresencaPinPad: Integer;
begin
  result := CliSiTefIEx.verificaPresencaPinPad;
end;

initialization

CliSiTefIEx := TCliSiTefIEx.Create;

finalization

CliSiTefIEx.Free;

end.
