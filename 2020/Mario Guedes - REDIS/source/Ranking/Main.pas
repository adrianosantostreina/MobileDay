unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  Redis.Commons,
  Redis.Client,
  Redis.NetLib.INDY,
  Redis.Values

    ;

type
  TForm5 = class(TForm)
    Timer1: TTimer;
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    FRedis: IRedisClient;
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
  Self.FRedis := TRedisClient.Create('localhost', 6379);
  Self.FRedis.Connect;

  Self.Timer1.Enabled := True;
end;

procedure TForm5.Timer1Timer(Sender: TObject);
var
  oSalas: TRedisArray;
  oSala: TRedisString;
  oRanking: TRedisArray;
  oItem: TRedisString;
  iPos: Integer;
  sJogador: string;
  sPonto: string;
begin
  Self.Timer1.Enabled := False;
  Self.Memo1.Clear;
  try
    oSalas := Self.FRedis.KEYS('RANKING:JOGO:SALA:*');
    if oSalas.IsNull then
    begin
      Exit;
    end;

    for oSala in oSalas.Value do
    begin
      Self.Memo1.Lines.Add(Format('Sala: %s', [oSala.Value]));
      Self.Memo1.Lines.Add('');

      oRanking := Self.FRedis.ZREVRANGE(oSala.Value, 0, 2, TRedisScoreMode.WithScores);

      for iPos := 1 to Length(oRanking.Value) do
      begin
        oItem := oRanking.Value[iPos - 1];

        if Odd(iPos) then
        begin
          sPonto := oItem.Value;
        end
        else
        begin
          sJogador := oItem.Value;
          Self.Memo1.Lines.Add(Format('%s -> %s', [sPonto, sJogador]));
        end;

      end;

      Self.Memo1.Lines.Add('');
      Self.Memo1.Lines.Add('<---------------------------------------->');
      Self.Memo1.Lines.Add('');
    end;

  finally
    Self.Timer1.Enabled := True;
  end;
end;

end.
