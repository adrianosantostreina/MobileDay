unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  Winapi.ShellAPI,

  Redis.Commons,
  Redis.Client,
  Redis.NetLib.INDY,
  Redis.Values

  ;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Button1: TButton;
    Panel3: TPanel;
    Button2: TButton;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
    procedure ProduzirEvento;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  ShellExecute(0, PChar('open'), PChar(Application.ExeName), nil, nil, SW_SHOW);
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Self.ProduzirEvento();
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Self.Panel1.Caption := Format('Produtor de Eventos - PID: %d', [GetCurrentProcessID]);

  Self.FRedis := TRedisClient.Create('localhost', 6379);
  Self.FRedis.Connect;

  Self.Timer1.Enabled := True;
end;

procedure TForm2.ProduzirEvento;
var
sConteudo : string;
begin
  sConteudo := Format('%d - AQUI PODERIA SER UM CONTEÚDO JSON', [GetCurrentProcessID]);
  Self.FRedis.RPUSH('FILA:MOBILEDAYS:2020:VENDAS', [sConteudo]);
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
  Self.Timer1.Enabled := False;
  try
    if Self.CheckBox1.Checked then
      Self.ProduzirEvento();
  finally
    Self.Timer1.Enabled := True;
  end;
end;

end.
