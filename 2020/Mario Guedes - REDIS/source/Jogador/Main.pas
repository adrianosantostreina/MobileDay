unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  Winapi.ShellAPI,

  Redis.Commons,
  Redis.Client,
  Redis.NetLib.INDY,
  Redis.Values,
  Redis.Command

    ;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Edit1: TEdit;
    Button2: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
    procedure SomarPontos(const Pontos: Integer);
    procedure EntrarnoJogo;
    function GetNomeJogador: string;
    function GetNomeSala: string;
  public
    { Public declarations }
    property NomeJogador: string read GetNomeJogador;
    property NomeSala: string read GetNomeSala;
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  ShellExecute(0, PChar('open'), PChar(Application.ExeName), nil, nil, SW_SHOW);
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  Self.EntrarnoJogo;

  Self.Edit1.Enabled := False;
  Self.Edit2.Enabled := False;
  Self.Button2.Enabled := False;
  Self.Button3.Enabled := True;
  Self.Button4.Enabled := True;
  Self.Button5.Enabled := True;
  Self.Button6.Enabled := True;

  Self.Timer1.Enabled := True;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Self.SomarPontos(1);
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
  Self.SomarPontos(5);
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
  Self.SomarPontos(15);
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
  Self.SomarPontos(100);
end;

procedure TForm6.EntrarnoJogo;
begin
  if (Self.Edit1.Text = EmptyStr) or (Self.Edit2.Text = EmptyStr) then
    raise Exception.Create('Credenciais inválidas');

  Self.FRedis.ZADD(Self.NomeSala, 0, Self.NomeJogador);
end;

procedure TForm6.FormCreate(Sender: TObject);
begin
  ReportMemoryLeaksOnShutdown := True;

  Self.Edit1.Clear;
  Self.Edit2.Clear;

  Self.FRedis := TRedisClient.Create('localhost', 6379);
  Self.FRedis.Connect;
end;

function TForm6.GetNomeJogador: string;
begin
  Result := Self.Edit1.Text;
end;

function TForm6.GetNomeSala: string;
begin
  Result := Format('RANKING:JOGO:SALA:%s', [Self.Edit2.Text]);
end;

procedure TForm6.SomarPontos(const Pontos: Integer);
begin
  Self.FRedis.ZINCRBY(Self.NomeSala, Pontos, Self.NomeJogador);
end;

procedure TForm6.Timer1Timer(Sender: TObject);
var
  oComando: TRedisCommand;
  iColocacao: Int64;
  sPontos: string;
begin
  Self.Timer1.Enabled := False;

  try
    oComando := TRedisCommand.Create;
    oComando.SetCommand('ZREVRANK');
    oComando.Add(Self.NomeSala);
    oComando.Add(Self.NomeJogador);
    iColocacao := Self.FRedis.ExecuteWithIntegerResult(oComando);
    Self.Label4.Caption := Format('%d°', [Succ(iColocacao)]);

    oComando := TRedisCommand.Create;
    oComando.SetCommand('ZSCORE');
    oComando.Add(Self.NomeSala);
    oComando.Add(Self.NomeJogador);
    sPontos := Self.FRedis.ExecuteWithStringResult(oComando);
    Self.Label2.Caption := Format('%s', [sPontos]);
  finally
    Self.Timer1.Enabled := True;
  end;
end;

end.
