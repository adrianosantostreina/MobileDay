unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  Redis.Commons,
  Redis.Client,
  Redis.NetLib.INDY,
  Redis.Values

  ;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
    procedure AlimentarPainel;
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.AlimentarPainel;
var
iQuant: Integer;
begin
  iQuant := Self.FRedis.LLEN('FILA:MOBILEDAYS:2020:VENDAS');
  Self.Label2.Caption := iQuant.ToString;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  Self.FRedis := TRedisClient.Create('localhost', 6379);
  Self.FRedis.Connect;

  Self.Timer1.Enabled := True;
end;

procedure TForm4.Timer1Timer(Sender: TObject);
begin
  Self.AlimentarPainel;
end;

end.
