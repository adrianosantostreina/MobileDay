unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,

  Winapi.ShellAPI,
  System.Threading,

  Redis.Commons,
  Redis.Client,
  Redis.NetLib.INDY,
  Redis.Values

  ;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Memo1: TMemo;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FTask: ITask;
    procedure AtivarConsumo;
    procedure RotinaDemorada;
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

{ TForm3 }

procedure TForm3.AtivarConsumo;
begin
  Self.Button2.Enabled := False;
  Application.ProcessMessages;

  Self.FTask := TTask.Run(

    procedure
    var
    oRedis: IRedisClient;
    oValue: TRedisArray;
    iCount: Integer;
    begin
      oRedis := NewRedisClient();
      iCount := 0;

      while TTask.CurrentTask.Status <> TTaskStatus.Canceled do
      begin
        oValue := oRedis.BLPOP(['FILA:MOBILEDAYS:2020:VENDAS'], 10);

        if oValue.HasValue then
        begin
          Self.RotinaDemorada;
          Inc(iCount);

          TThread.Synchronize(nil,

            procedure
            var
            sLog: string;
            begin
              sLog := Format('%s - %s', [oValue.Value[0].Value, oValue.Value[1].Value]);
              Self.Memo1.Lines.Insert(0, sLog);
              Self.Label1.Caption := Format('%d eventos processados!', [iCount]);
            end

          );
        end;
      end;

      oRedis.Disconnect;
    end

  );
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  ShellExecute(0, PChar('open'), PChar(Application.ExeName), nil, nil, SW_SHOW);
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Self.AtivarConsumo;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(Self.FTask) then
    Self.FTask.Cancel;
end;

procedure TForm3.RotinaDemorada;
begin
  Sleep(250);
end;

end.
