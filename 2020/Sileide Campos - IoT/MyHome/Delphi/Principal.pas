unit Principal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl, FMX.StdCtrls, FMX.Controls.Presentation,
  FMX.Gestures, System.Actions, FMX.ActnList, FMX.Objects, FMX.Layouts,
  IdBaseComponent, IdComponent, IdUDPBase, IdUDPClient, FMX.Ani, FMX.Colors,
  FMX.Edit, System.JSON, IdTCPConnection, IdTCPClient,
  FMX.Memo.Types, FMX.ScrollBox, FMX.Memo, System.Threading,
  System.Notification,
  System.PushNotification,
  FMX.PushNotification.Android;

type
  TFMyHome = class(TForm)
    tbcMidias: TTabControl;
    tabMidia: TTabItem;
    tbcControles: TTabControl;
    tabTV: TTabItem;
    ToolBar1: TToolBar;
    btnNext: TSpeedButton;
    tabIluminacao: TTabItem;
    GestureManager1: TGestureManager;
    ActionList1: TActionList;
    NextTabAction1: TNextTabAction;
    PreviousTabAction1: TPreviousTabAction;
    lblTitle1: TLabel;
    Rectangle17: TRectangle;
    lblVolume: TLabel;
    Rectangle19: TRectangle;
    lblCanal: TLabel;
    Layout7: TLayout;
    tabNT: TTabItem;
    FramedScrollBox1: TFramedScrollBox;
    FramedScrollBox2: TFramedScrollBox;
    Rectangle60: TRectangle;
    lblVolumeNET: TLabel;
    Rectangle61: TRectangle;
    lblCanalNET: TLabel;
    Layout25: TLayout;
    PreviousTabAction2: TPreviousTabAction;
    NextTabAction2: TNextTabAction;
    pColor: TColorPanel;
    ColorAnimation1: TColorAnimation;
    btnLuminaria: TSwitch;
    layEscritorio: TLayout;
    lblLuminaria: TLabel;
    layLuminaria: TLayout;
    btnLampEscritorio: TSwitch;
    lblLampEscritorio: TLabel;
    ToolBar3: TToolBar;
    SpeedButton19: TSpeedButton;
    Label59: TLabel;
    Rectangle95: TRectangle;
    btnNet: TButton;
    StyleBook1: TStyleBook;
    btnPortal: TButton;
    btnInfo: TButton;
    btnMosaico: TButton;
    btnNETTV: TButton;
    btnSair: TButton;
    btnCima: TButton;
    btnEmail: TButton;
    btnITV: TButton;
    btnBaixo: TButton;
    btnEnter: TButton;
    btnEsquerda: TButton;
    btnDireita: TButton;
    btnLegenda: TButton;
    btnAudio: TButton;
    btnAgora: TButton;
    btn2: TButton;
    btn1: TButton;
    btn3: TButton;
    btn5: TButton;
    btn4: TButton;
    btn6: TButton;
    btn8: TButton;
    btn7: TButton;
    btn9: TButton;
    btnMenu: TButton;
    btnFav: TButton;
    btn0: TButton;
    btnMute: TButton;
    btnVoltar: TButton;
    btnTV5: TButton;
    btnTV4: TButton;
    btnTV6: TButton;
    btnTV2: TButton;
    btnTV1: TButton;
    btnTV3: TButton;
    btnTV8: TButton;
    btnTV7: TButton;
    btnTV9: TButton;
    btnTVSair: TButton;
    btnTVVoltar: TButton;
    btnTV0: TButton;
    udpLulu: TIdUDPClient;
    btnTVMenu: TButton;
    btnGuide: TButton;
    btnTVCima: TButton;
    btnOK: TButton;
    btnTVEsquerda: TButton;
    btnTVDireita: TButton;
    btnAmazon: TButton;
    btnNetflix: TButton;
    btnTVBaixo: TButton;
    udpLamps: TIdUDPClient;
    ToolBar5: TToolBar;
    btnReconectar: TSpeedButton;
    btnCaption: TButton;
    btnTV: TButton;
    btnLigar: TButton;
    btnConfig: TButton;
    btnConexoes: TButton;
    Layout100: TLayout;
    Layout102: TLayout;
    Layout101: TLayout;
    Layout103: TLayout;
    Layout104: TLayout;
    Layout105: TLayout;
    Layout106: TLayout;
    Layout107: TLayout;
    Layout108: TLayout;
    Layout109: TLayout;
    Layout110: TLayout;
    Layout200: TLayout;
    Layout201: TLayout;
    Layout202: TLayout;
    Layout203: TLayout;
    Layout204: TLayout;
    Layout205: TLayout;
    Layout209: TLayout;
    Layout206: TLayout;
    Layout207: TLayout;
    Layout208: TLayout;
    btnTVInfo: TButton;
    btnMudo: TButton;
    btnTVFav: TButton;
    btnReduzVolume: TButton;
    btnAumentaVolume: TButton;
    btnAumentaCanal: TButton;
    btnReduzCanal: TButton;
    btnAumentaVolumeNET: TButton;
    btnReduzVolumeNET: TButton;
    btnAumentaCanalNET: TButton;
    btnReduzCanalNET: TButton;
    udpEscritorio: TIdUDPClient;
    udpTV: TIdUDPClient;
    layLulu: TLayout;
    lblLulu: TLabel;
    btnLulu: TSwitch;
    Memo1: TMemo;
    procedure GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure GestureDone2(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
    procedure pColorChange(Sender: TObject);
    procedure btnLuminariaSwitch(Sender: TObject);
    procedure btnReconectarClick(Sender: TObject);
    procedure acionarBtnNET(Sender: TObject);
    procedure acionarBtnTV(Sender: TObject);
    procedure btnLampEscritorioSwitch(Sender: TObject);
    procedure btnLuluSwitch(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function BuscarCor: string;
    procedure conectar;
    procedure ativarNotificacoes;
    procedure DoServiceConnectionChange(Sender: TObject;
      PushChanges: TPushService.TChanges);
    procedure DoReceiveNotificationEvent(Sender: TObject;
      const ServiceNotification: TPushServiceNotification);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMyHome: TFMyHome;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TFMyHome.conectar;
begin
  udpTV.Connect;
  udpLulu.Connect;
  udpLamps.Connect;
  udpEscritorio.Connect;
end;

procedure TFMyHome.btnLampEscritorioSwitch(Sender: TObject);
begin
  if btnLampEscritorio.IsChecked then
    udpEscritorio.Send('OON')
  else
    udpEscritorio.Send('OFF');
end;

procedure TFMyHome.FormCreate(Sender: TObject);
begin
  tbcMidias.ActiveTab := tabMidia;
  tbcControles.ActiveTab := TabTV;
  conectar;
end;

procedure TFMyHome.btnReconectarClick(Sender: TObject);
begin
  conectar;
end;

procedure TFMyHome.acionarBtnNET(Sender: TObject);
begin
  udpTV.Send('nt'+FormatFloat('00', (Sender as TButton).Tag));
end;

procedure TFMyHome.acionarBtnTV(Sender: TObject);
begin
  udpTV.Send('tv'+FormatFloat('00', (Sender as TButton).Tag));
end;

procedure TFMyHome.btnLuluSwitch(Sender: TObject);
begin
  if btnLuLu.IsChecked then
    udpLulu.Send( BuscarCor )
  else
    udpLulu.Send('000000000');
end;

procedure TFMyHome.btnLuminariaSwitch(Sender: TObject);
begin
  if btnLuminaria.IsChecked then
    udpLamps.Send( BuscarCor )
  else
    udpLamps.Send('000000000');
end;

procedure TFMyHome.pColorChange(Sender: TObject);
begin
  udpLamps.Send( BuscarCor );
end;

function TFMyHome.BuscarCor: string;
begin
  result :=
      FormatCurr('000', (Byte(pColor.Color shr 16)).ToDouble) +
      FormatCurr('000', (Byte(pColor.Color shr 8)).ToDouble) +
      FormatCurr('000', (Byte(pColor.Color)).ToDouble);
end;

procedure TFMyHome.ativarNotificacoes;
var
   lPushService: TPushService;
   lServiceConnection: TPushServiceConnection;
begin
  lPushService := TPushServiceManager.Instance.GetServiceByName(TPushService.TServiceNames.FCM);

  lServiceConnection := TPushServiceConnection.Create(lPushService);
  lServiceConnection.OnChange := DoServiceConnectionChange;
  lServiceConnection.OnReceiveNotification := DoReceiveNotificationEvent;
  lServiceConnection.Active := True;

  Memo1.Lines.Add('Device ID: ' + lPushService.DeviceIDValue[TPushService.TDeviceIDNames.DeviceId]);
end;

procedure TFMyHome.DoServiceConnectionChange(Sender: TObject; PushChanges: TPushService.TChanges);
var
  lPushService: TPushService;
  lDeviceToken: string;
begin
  lPushService := TPushServiceManager.Instance.GetServiceByName(TPushService.TServiceNames.FCM);
  if TPushService.TChange.DeviceToken in PushChanges then
  begin
    lDeviceToken := lPushService.DeviceTokenValue[TPushService.TDeviceTokenNames.DeviceToken];
    Memo1.Lines.Add('Firebase Token: ' + lDeviceToken);
  end;
  if (TPushService.TChange.Status in PushChanges) and
     (lPushService.Status = TPushService.TStatus.StartupError) then
    Memo1.Lines.Add('Error: ' + lPushService.StartupError);
end;

procedure TFMyHome.DoReceiveNotificationEvent(Sender: TObject;
  const ServiceNotification: TPushServiceNotification);
var
  lMessageText: string;
  lNotificationCenter: TNotificationCenter;
  lNotification: TNotification;
begin
  lMessageText := ServiceNotification.DataObject.GetValue('message').Value;
  lNotificationCenter := TNotificationCenter.Create(nil);
  try
    lNotification := lNotificationCenter.CreateNotification;
    try
      lNotification.Name := lMessageText;
      lNotification.AlertBody := lMessageText;
      lNotification.Title := lMessageText;
      lNotification.EnableSound := False;
      lNotificationCenter.PresentNotification(lNotification);
    finally
      lNotification.DisposeOf;
    end;
  finally
    lNotificationCenter.DisposeOf;
  end;
end;

procedure TFMyHome.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char; Shift: TShiftState);
begin
  if Key = vkHardwareBack then
  begin
    if (tbcMidias.ActiveTab = tabMidia) and (tbcControles.ActiveTab = tabTV) then
    begin
      tbcControles.Previous;
      Key := 0;
    end;
  end;
end;

procedure TFMyHome.FormShow(Sender: TObject);
begin
  ativarNotificacoes;
end;

procedure TFMyHome.GestureDone(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if tbcMidias.ActiveTab <> tbcMidias.Tabs[tbcMidias.TabCount - 1] then
          tbcMidias.ActiveTab := tbcMidias.Tabs[tbcMidias.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if tbcMidias.ActiveTab <> tbcMidias.Tabs[0] then
          tbcMidias.ActiveTab := tbcMidias.Tabs[tbcMidias.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

procedure TFMyHome.GestureDone2(Sender: TObject; const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  case EventInfo.GestureID of
    sgiLeft:
      begin
        if tbcControles.ActiveTab <> tbcControles.Tabs[tbcControles.TabCount - 1] then
          tbcControles.ActiveTab := tbcControles.Tabs[tbcControles.TabIndex + 1]
        else if tbcControles.ActiveTab = tbcControles.Tabs[tbcControles.TabCount - 1] then
          tbcMidias.ActiveTab := tbcMidias.Tabs[tbcMidias.TabIndex + 1];
        Handled := True;
      end;

    sgiRight:
      begin
        if tbcControles.ActiveTab <> tbcControles.Tabs[0] then
          tbcControles.ActiveTab := tbcControles.Tabs[tbcControles.TabIndex - 1];
        Handled := True;
      end;
  end;
end;

end.

