unit MD.View.Client.Objects;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.TabControl, FMX.Edit,
  System.Generics.Collections, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  System.Rtti, System.Bindings.Outputs, Fmx.Bind.Editors,
  Data.Bind.Components, Data.Bind.ObjectScope, FMX.Layouts,
  System.JSON, REST.Json,
  MD.Model.Client,
  GBClient.Interfaces;

type
  TfrmMobileDayObject = class(TForm)
    Rectangle1: TRectangle;
    Label5: TLabel;
    tbcClient: TTabControl;
    tiList: TTabItem;
    tiCrud: TTabItem;
    tiSettings: TTabItem;
    lvClients: TListView;
    btnAdd: TCircle;
    Rectangle3: TRectangle;
    Label2: TLabel;
    edtName: TEdit;
    Label3: TLabel;
    edtLastName: TEdit;
    Label4: TLabel;
    edtPhone: TEdit;
    btnSave: TCircle;
    Path1: TPath;
    Path2: TPath;
    Path3: TPath;
    Rectangle2: TRectangle;
    Label1: TLabel;
    edtBaseUrl: TEdit;
    btnClear: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    adpClient: TDataGeneratorAdapter;
    absClients: TAdapterBindSource;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkListControlToField1: TLinkListControlToField;
    procedure FormCreate(Sender: TObject);
    procedure tbcClientChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure lvClientsButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure btnClearClick(Sender: TObject);
    procedure lvClientsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnSaveClick(Sender: TObject);
    procedure absClientsCreateAdapter(Sender: TObject;
      var ABindSourceAdapter: TBindSourceAdapter);
  private
    FClients: TObjectList<TClient>;

    function PrepareRequest: IGBClientRequest;

    procedure listAll;
    procedure Insert(AClient: TClient);
    procedure Update(AClient: TClient);
    procedure Delete;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMobileDayObject: TfrmMobileDayObject;

implementation

{$R *.fmx}

procedure TfrmMobileDayObject.absClientsCreateAdapter(Sender: TObject; var ABindSourceAdapter: TBindSourceAdapter);
begin
  FClients := TObjectList<TClient>.Create;
  ABindSourceAdapter := TListBindSourceAdapter<TClient>
                            .Create(Self, FClients);

  ABindSourceAdapter.AutoEdit := True;
  ABindSourceAdapter.Active := True;
end;

procedure TfrmMobileDayObject.btnAddClick(Sender: TObject);
begin
  absClients.Insert;
  tbcClient.ActiveTab := tiCrud;
end;

procedure TfrmMobileDayObject.btnClearClick(Sender: TObject);
begin
  tbcClient.ActiveTab := tiList;
end;

procedure TfrmMobileDayObject.btnSaveClick(Sender: TObject);
var
  client : TClient;
begin
  absClients.Post;

  client := FClients[lvClients.ItemIndex];
  if client.id = 0 then
    Insert(client)
  else
    Update(client);

  tbcClient.ActiveTab := tiList;
end;

procedure TfrmMobileDayObject.Delete;
var
  request : IGBClientRequest;
  client : TClient;
begin
  client  := FClients[lvClients.ItemIndex];
  request := PrepareRequest;
  request
    .DELETE
    .BaseURL(edtBaseUrl.Text + '/' + client.id.ToString)
    .Send;
end;

procedure TfrmMobileDayObject.FormCreate(Sender: TObject);
begin
  tbcClient.ActiveTab   := tiList;
  tbcClient.TabPosition := TTabPosition.None;

  listAll;
end;

procedure TfrmMobileDayObject.Insert(AClient: TClient);
var
  request : IGBClientRequest;
begin
  request := PrepareRequest;
  request
    .POST
    .BaseURL(edtBaseUrl.Text)
    .Body
      .AddOrSet(AClient)
    .&End
    .Send;

  AClient.id := request.Response.HeaderAsInteger('location');
end;

procedure TfrmMobileDayObject.listAll;
var
  request : IGBClientRequest;
begin
  FClients.Clear;
  request := PrepareRequest;
  request
    .GET
    .BaseURL(edtBaseUrl.Text)
    .Send
    .GetList(TList<TObject>(FClients), TClient);

  TListBindSourceAdapter<TClient>(AbsClients).Refresh;
end;

procedure TfrmMobileDayObject.lvClientsButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  tbcClient.ActiveTab := tiList;
  Delete;
  absClients.Delete;
end;

procedure TfrmMobileDayObject.lvClientsItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  tbcClient.ActiveTab := tiCrud;
end;

function TfrmMobileDayObject.PrepareRequest: IGBClientRequest;
begin
  Result := NewClientRequest;
  Result
    .Authorization
      .Basic
        .Username('mobileDay')
        .Password('2020');
end;

procedure TfrmMobileDayObject.tbcClientChange(Sender: TObject);
begin
  btnClear.Visible := tbcClient.ActiveTab = tiCrud;
end;

procedure TfrmMobileDayObject.Update(AClient: TClient);
var
  request : IGBClientRequest;
begin
  request := PrepareRequest;
  request
    .PUT
    .BaseURL(edtBaseUrl.Text + '/' + AClient.id.ToString)
    .Body
      .AddOrSet(AClient)
    .&End
    .Send;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
