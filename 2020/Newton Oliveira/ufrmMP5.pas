unit ufrmMP5;

interface

// descomente para fazer login pelo android
// utilizei o componente Authentication for Android da WinSOFT
// https://winsoft.sk/aauth.htm
 //{$DEFINE AUTENTICA_DEVICE}

uses
  System.SysUtils,
  System.Types,
  System.UITypes,
  System.Classes,
  System.Variants,
  FMX.Types,
  FMX.Controls,
  FMX.Forms,
  FMX.Graphics,
  FMX.Dialogs,
  FMX.Ani,
  FMX.Objects,
  FMX.Controls.Presentation,
  FMX.StdCtrls,
  FMX.Layouts,
  FMX.Edit,
  clisitef,
  wbt.CliSiTefI,
  FMX.Platform.Android,
{$IFDEF AUTENTICA_DEVICE}
  aAuthentication,
{$ENDIF}
  constants;

type
  TfromTransacao = class(TForm)
    StyleBook1: TStyleBook;
    layout_campos: TLayout;
    Layout1: TLayout;
    rrtCredito: TRoundRect;
    lblCredito: TLabel;
    ArcCredito: TArc;
    fanCreditoLarg: TFloatAnimation;
    fanCredito: TFloatAnimation;
    Layout2: TLayout;
    rctDebito: TRoundRect;
    lblDebito: TLabel;
    arcDebito: TArc;
    fanDebito: TFloatAnimation;
    fanDebitoLarg: TFloatAnimation;
    lblMensagem: TLabel;
    lytTitulo: TLayout;
    lblTituloBranco: TLabel;
    lblTituloAzul: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure TransacacaodebitoTAP(Sender: TObject; const Point: TPointF);
    procedure TransacaoCreditoTAP(Sender: TObject; const Point: TPointF);
    procedure fanCreditoFinish(Sender: TObject);
    procedure fanDebitoFinish(Sender: TObject);
  private
    FEspera: boolean;
    FRodando: boolean;
    FProximoComando: integer;
{$IFDEF AUTENTICA_DEVICE}
    FAuthentication: TAuthentication;
{$ENDIF}
    procedure addStrRes(texto: string);
    procedure handleMessage(value: integer);
    procedure RotinaColeta(comando: integer);
    procedure RotinaResultado(campo: integer);
    procedure ExecutaTransacao(AFuncao: integer; AValor, ARestricoes, ATerminal, ANumeroDocumento: string);
    procedure StatusSitef(AStatus: string);

    procedure OnAuthSuccess(Sender: TObject);
    procedure OnAuthError(Sender: TObject);

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fromTransacao: TfromTransacao;

implementation

{$R *.fmx}

// Esta rotina é responsavel pela chamada do sitef
procedure TfromTransacao.ExecutaTransacao(AFuncao: integer; AValor, ARestricoes, ATerminal, ANumeroDocumento: string);
var
  lHora: string;
  lData: string;
  lSts: integer;
begin
  lHora := FormatDateTime('hhmmss', now);
  lData := FormatDateTime('yyyyMMdd', now);

  lSts := iniciaFuncaoSiTefInterativo(AFuncao, AValor, ANumeroDocumento, lData, lHora, ATerminal, ARestricoes);

  if lSts = 10000 then
  begin
    tthread.CreateAnonymousThread(
      procedure
      begin
        tthread.Current.FreeOnTerminate := true;
        FRodando := true;
        repeat
          lSts := continuaFuncaoSiTefInterativo;
          if (lSts = 10000) then
          begin
            FProximoComando := getProximoComando;
            FEspera := true;
            handleMessage(FProximoComando);
          end
          else if lSts < 1 then
            FRodando := false;
        until not(FRodando or (lSts = 10000));

        if lSts = 0 then
        begin
          FRodando := true;

          lSts := finalizaTransacaoSiTefInterativoEx(1, ANumeroDocumento, lData, lHora, '');
          if lSts = 10000 then
            repeat
              lSts := continuaFuncaoSiTefInterativo;
              if lSts = 10000 then
              begin
                FProximoComando := getProximoComando;
                FEspera := true;
                handleMessage(FProximoComando);
              end
              else
                FRodando := false;
            until not(FRodando or (lSts = 10000));
        end;
        // tthread.Current.Terminate;
        StatusSitef('Selecione a forma de pagamento');
      end).Start;
  end;

end;

procedure TfromTransacao.fanCreditoFinish(Sender: TObject);
begin
  if NOT fanCreditoLarg.Inverse then
  begin
    ArcCredito.Visible := true;
    fanCredito.Start;
  end;
end;

procedure TfromTransacao.fanDebitoFinish(Sender: TObject);
begin
  if NOT fanDebitoLarg.Inverse then
  begin
    arcDebito.Visible := true;
    fanDebito.Start;
  end;
end;

procedure TfromTransacao.FormCreate(Sender: TObject);
begin
{$IFDEF AUTENTICA_DEVICE}
  FAuthentication := TAuthentication.create;
  FAuthentication.Title := 'Identifique-se';
  FAuthentication.Description := 'Utilize suas credenciais do android para acessar o aplicativo.';
  FAuthentication.OnSuccess := OnAuthSuccess;
  FAuthentication.OnError := OnAuthError;
  if FAuthentication.devicesecured then
    FAuthentication.ConfirmCredentials
  else
    OnAuthSuccess(Sender);
{$ELSE}
  OnAuthSuccess(Sender);
{$ENDIF}
end;

procedure TfromTransacao.handleMessage(value: integer);
begin
  if (value = CMD_RETORNO_VALOR) then
    RotinaResultado(getTipoCampo)
  else
    RotinaColeta(value);
end;

procedure TfromTransacao.OnAuthError(Sender: TObject);
begin
  ShowMessage('Credenciais incorretas!!!');
{$IFDEF AUTENTICA_DEVICE}
  FAuthentication.ConfirmCredentials
{$ENDIF}
end;

procedure TfromTransacao.OnAuthSuccess(Sender: TObject);
var
  lSts: integer;
begin
  StatusSitef('Selecione a forma de pagamento');
  setDebug(true);
  setActivity(MainActivity);
  tthread.CreateAnonymousThread(
    procedure
    begin
      // Inicializa o SITEF
      // Neste Ponto, você precisa entrar em contato com a software express e
      // solicitar o envio do sitef simulador para desenvolvimento
      // o endereço ip abaixo ficara disponivel até 26/11/2020
      lSts := configuraIntSiTefInterativoEx('45.237.81.1:4096', '00000000', '00000000', '');
    end).Start;
end;

procedure TfromTransacao.TransacaoCreditoTAP(Sender: TObject; const Point: TPointF);
begin
  StatusSitef('Aguardando Sitef');

  tthread.CreateAnonymousThread(
    procedure
    begin
      ExecutaTransacao(TRANSACAO_CREDITO, '10000', '', 'EC0000001', '0000000001');
    end).Start;
end;

procedure TfromTransacao.TransacacaodebitoTAP(Sender: TObject; const Point: TPointF);
begin
  StatusSitef('Aguardando Sitef');

  tthread.CreateAnonymousThread(
    procedure
    begin
      ExecutaTransacao(TRANSACAO_DEBITO, '10000', '', 'EC0000001', '0000000001');
    end).Start;
end;

procedure TfromTransacao.RotinaColeta(comando: integer);
begin
  case comando of
    CMD_MENSAGEM_OPERADOR, CMD_MENSAGEM_CLIENTE, CMD_MENSAGEM:
      begin
        StatusSitef(getBuffer);
      end;

    CMD_TITULO_MENU, CMD_EXIBE_CABECALHO:
      begin
      end;

    CMD_REMOVE_MENSAGEM_OPERADOR, CMD_REMOVE_MENSAGEM_CLIENTE, CMD_REMOVE_MENSAGEM, CMD_REMOVE_TITULO_MENU, CMD_REMOVE_CABECALHO:
      begin
        StatusSitef(getBuffer);
      end;

    CMD_CONFIRMA_CANCELA:
      begin
        SetBuffer('0');
      end;

    CMD_OBTEM_CAMPO, CMD_OBTEM_VALOR:
      begin
      end;
    CMD_SELECIONA_MENU:
      begin
      end;
    CMD_OBTEM_QUALQUER_TECLA, CMD_PERGUNTA_SE_INTERROMPE:
      begin
      end;
  end;
  FEspera := false;
end;

procedure TfromTransacao.RotinaResultado(campo: integer);
begin
  case campo of
    CAMPO_COMPROVANTE_CLIENTE, CAMPO_COMPROVANTE_ESTAB:
      begin
        // addStrRes(getBuffer);
      end
  end;
  FEspera := false;
end;

procedure TfromTransacao.StatusSitef(AStatus: string);
begin
  tthread.Synchronize(nil,
    procedure
    begin
      if AStatus <> lblMensagem.Text then
      begin
        lblMensagem.Text := AStatus;
      end;
    end);
end;

procedure TfromTransacao.addStrRes(texto: string);
begin
  // aqui neste ponto, você recebe os comprovantes que deverão ser formatados e enviados por e-mail, sms ...
end;

end.
