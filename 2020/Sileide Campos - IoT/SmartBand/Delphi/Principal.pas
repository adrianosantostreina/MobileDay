unit principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, IdBaseComponent, IdComponent, IdUDPBase,
  IdUDPClient, FMX.Layouts, System.Threading, FMX.Objects, FMX.ScrollBox,
  FMX.Memo, System.DateUtils, System.Sensors, System.Sensors.Components,
  Data.DB, System.Bluetooth, System.Bluetooth.Components, FMX.ListBox,
  System.ImageList, FMX.ImgList;

type
  TFAlerta = class(TForm)
    localizacao: TLocationSensor;
    Bluetooth1: TBluetooth;
    lblAlerta: TLabel;
    layConfig: TLayout;
    layDispositivos: TLayout;
    btnDescobrirDevices: TButton;
    cbDispositivosPareados: TComboBox;
    StyleBook1: TStyleBook;
    btnConfig: TButton;
    ImageList1: TImageList;
    rctAlerta: TRectangle;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnDescobrirDevicesClick(Sender: TObject);
    procedure cbDispositivosPareadosClosePopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConfigClick(Sender: TObject);
    procedure rctAlertaClick(Sender: TObject);
  private
    { Private declarations }
    FSocket: TBluetoothSocket;
    FThread: TThread;
    function leituraSensores: Single;
    procedure finalizarThread;
    procedure Leitura;
    procedure Conectar(pDevice: TBluetoothDevice);
    procedure enviarLocalizacao;
    procedure CarregarPairedsdevices;
  public
    { Public declarations }
  end;

var
  FAlerta: TFAlerta;

implementation

{$R *.fmx}

const
  UUID = '{00001101-0000-1000-8000-00805F9B34FB}';

procedure TFAlerta.FormCreate(Sender: TObject);
begin
  localizacao.Active := True;
  Bluetooth1.Enabled := True;
end;

procedure TFAlerta.FormShow(Sender: TObject);
var
  lIndex: Integer;
begin
  CarregarPairedsdevices;
  for lIndex := 0 to pred(cbDispositivosPareados.Items.Count) do
  begin
    if TBluetoothDevice(cbDispositivosPareados.Items.Objects[lIndex]).DeviceName = 'ESP32' then
      conectar(TBluetoothDevice(cbDispositivosPareados.Items.Objects[lIndex]));
  end;
end;

procedure TFAlerta.btnConfigClick(Sender: TObject);
begin
  layDispositivos.Visible := not layDispositivos.Visible;
end;

procedure TFAlerta.btnDescobrirDevicesClick(Sender: TObject);
begin
  CarregarPairedsdevices;
end;

procedure TFAlerta.CarregarPairedsdevices;
var
  lDevice: TBluetoothDevice;
begin
  cbDispositivosPareados.Items.Clear;
  for lDevice in Bluetooth1.PairedDevices do
    cbDispositivosPareados.Items.AddObject(lDevice.DeviceName, lDevice);
end;

procedure TFAlerta.cbDispositivosPareadosClosePopup(Sender: TObject);
begin
  if cbDispositivosPareados.ItemIndex > -1 then
    Conectar(TBluetoothDevice(cbDispositivosPareados.Items.Objects[cbDispositivosPareados.ItemIndex]));
end;

procedure TFAlerta.Conectar(pDevice: TBluetoothDevice);
begin
  if (pDevice.DeviceName = 'ESP32') then
  begin
    FSocket := pDevice.CreateClientSocket(StringToGUID(UUID), True);
    if FSocket <> nil then
    begin
      try
        FSocket.Connect;
        if FSocket.Connected then
        begin
          btnDescobrirDevices.Text := 'Conectado';
          Leitura;
        end
        else
          btnDescobrirDevices.Text := 'Desconectado';
      except
        ShowMessage('Falha ao conectar com o dispositivo.');
      end;
    end;
  end;
end;

procedure TFAlerta.Leitura;
begin
  FThread := TThread.CreateAnonymousThread(
    procedure
    var
      lAlerta: Single;
    begin
      while not TThread.CheckTerminated do
      begin
        lAlerta := LeituraSensores;
        TThread.Synchronize(nil,
        procedure
        begin
          lblAlerta.Text := '';
          if (lAlerta = 49) then
          begin
            lblAlerta.Text := 'ALERTA';
            enviarLocalizacao;
          end;
        end);
      end;
    end);
  FThread.FreeOnTerminate := false;
  FThread.Start;
end;

function TFAlerta.leituraSensores: Single;
var
  lDados: TArray<System.Byte>;
begin
  Result := 0;
  if (FSocket.Connected) then
  begin
    lDados := FSocket.ReceiveData;
    if Length(lDados) > 0 then
      Result := lDados[0].ToSingle;
  end;
end;

procedure TFAlerta.rctAlertaClick(Sender: TObject);
begin
  try
    enviarLocalizacao;
  finally
    lblAlerta.Text := 'ALERTA';
  end;
end;

procedure TFAlerta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  finalizarThread;
end;

procedure TFAlerta.finalizarThread;
begin
  if FThread <> nil then
  begin
    FThread.Terminate;
    FThread.Free;
  end;
end;

procedure TFAlerta.enviarLocalizacao;
begin
  //serviço
end;

end.
