unit MD.View.Client.DataSet;

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
  System.JSON, REST.Json, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.Bind.DBScope,
  GBClient.Interfaces;

type
  TfrmMobileDayDataSet = class(TForm)
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
    dsClient: TFDMemTable;
    dsClientid: TIntegerField;
    dsClientname: TStringField;
    dsClientlastName: TStringField;
    dsClientphone: TStringField;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
    procedure tbcClientChange(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure lvClientsButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure btnClearClick(Sender: TObject);
    procedure lvClientsItemClick(const Sender: TObject; const AItem: TListViewItem);
    procedure btnSaveClick(Sender: TObject);
  private
    function PrepareRequest : IGBClientRequest;

    procedure listAll;
    procedure Insert;
    procedure Update;
    procedure Delete;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMobileDayDataSet: TfrmMobileDayDataSet;

implementation

{$R *.fmx}

procedure TfrmMobileDayDataSet.btnAddClick(Sender: TObject);
begin
  tbcClient.ActiveTab := tiCrud;
  dsClient.Insert;
end;

procedure TfrmMobileDayDataSet.btnClearClick(Sender: TObject);
begin
  dsClient.Cancel;
  tbcClient.ActiveTab := tiList;
end;

procedure TfrmMobileDayDataSet.btnSaveClick(Sender: TObject);
begin
  if dsClient.State = dsInsert then
    Insert
  else
    Update;

  tbcClient.ActiveTab := tiList;
end;

procedure TfrmMobileDayDataSet.Delete;
var
  request: IGBClientRequest;
begin
  request := PrepareRequest;
  request
    .DELETE
    .BaseURL(edtBaseUrl.Text + '/' + dsClient.FieldByName('id').AsString)
    .Send;
end;

procedure TfrmMobileDayDataSet.FormCreate(Sender: TObject);
begin
  btnClear.Visible      := False;
  tbcClient.ActiveTab   := tiList;
  tbcClient.TabPosition := TTabPosition.None;

  listAll;
end;

procedure TfrmMobileDayDataSet.Insert;
var
  request: IGBClientRequest;
begin
  dsClient.Post;
  request := PrepareRequest;
  request
    .POST
    .BaseURL(edtBaseUrl.Text)
    .Body
      .AddOrSet(dsClient)
    .&End
    .Send;

  dsClient.Edit;
  dsClient.FieldByName('id').AsFloat :=
    request.Response.HeaderAsFloat('location');
  dsClient.Post;
end;

procedure TfrmMobileDayDataSet.listAll;
var
  request: IGBClientRequest;
begin
  request := PrepareRequest;
  request
    .GET
    .BaseURL(edtBaseUrl.Text)
    .Send
    .DataSet(dsClient)
end;

procedure TfrmMobileDayDataSet.lvClientsButtonClick(const Sender: TObject; const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  tbcClient.ActiveTab := tiList;
  Delete;
  dsClient.Delete;
end;

procedure TfrmMobileDayDataSet.lvClientsItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  tbcClient.ActiveTab := tiCrud;
end;

function TfrmMobileDayDataSet.PrepareRequest: IGBClientRequest;
begin
  result := newClientRequest;
  result
    .Authorization
      .Basic
        .Username('mobileDay')
        .Password('2020');
end;

procedure TfrmMobileDayDataSet.tbcClientChange(Sender: TObject);
begin
  btnClear.Visible := tbcClient.ActiveTab = tiCrud;
end;

procedure TfrmMobileDayDataSet.Update;
var
  request: IGBClientRequest;
begin
  dsClient.Post;
  request := PrepareRequest;
  request
    .PUT
    .BaseURL(edtBaseUrl.Text + '/' + dsClient.FieldByName('id').AsString)
    .Body
      .AddOrSet(dsClient)
    .&End
    .Send;
end;

initialization
  ReportMemoryLeaksOnShutdown := True;

end.
