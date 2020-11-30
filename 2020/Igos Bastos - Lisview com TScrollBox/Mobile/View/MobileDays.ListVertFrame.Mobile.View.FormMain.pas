unit MobileDays.ListVertFrame.Mobile.View.FormMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls,
  System.Generics.Collections,
  Data.DB, FMX.ScrollBox, FMX.Memo, FMX.Layouts;

type
  TFormMain = class(TForm)
    btlList: TButton;
    btnClearList: TButton;
    Layout1: TLayout;
    btnClearImage: TButton;
    Label1: TLabel;
    vtsList: TVertScrollBox;
    procedure btlListClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnClearListClick(Sender: TObject);
    procedure btnClearImageClick(Sender: TObject);
  private
    var
      FFrmLastView: TFrame;
      FObjList: TObjectList<TObject>;

    procedure FillList;
    procedure ClearList;
    procedure ItemListClick(Sender: TObject);
    procedure ItemListTap(Sender: TObject; const Point: TPointF);
    procedure ItemListDemand(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

uses
  MobileDays.ListVertFrame.Mobile.Controller.SMPessoa,
  MobileDays.ListVertFrame.Mobile.View.Person.ItemList,
  MobileDays.ListVertFrame.Mobile.Controller.SMImage;

{$R *.fmx}


procedure TFormMain.btlListClick(Sender: TObject);
begin
  FillList;
end;

procedure TFormMain.btnClearImageClick(Sender: TObject);
begin
  TSMImage.ClearImage;
end;

procedure TFormMain.btnClearListClick(Sender: TObject);
begin
  ClearList;
end;

procedure TFormMain.ClearList;
begin
  if Assigned(vtsList) then
  begin
    vtsList.BeginUpdate;
    FObjList.Clear;
    vtsList.EndUpdate;
    // Go to top
    vtsList.ViewportPosition := PointF(vtsList.ViewportPosition.X, 0);
  end;
end;

procedure TFormMain.FillList;
var
  LDs: TDataSet;
  LFil: TFilPerson;
begin
  try
    LFil := nil;
    vtsList.BeginUpdate;
    LDs := TSMPessoa.GetPessoa(vtsList.Content.ChildrenCount, 50);

    LDs.First;
    while not(LDs.Eof) do
    begin
      LFil := TFilPerson.Create(nil);
      FObjList.Add(LFil);
      LFil.Name := LFil.ClassName + vtsList.Content.ChildrenCount.ToString;
      LFil.Align := TAlignLayout.Top;

      LFil.Id := LDs.FieldByName('id').AsInteger;
      LFil.FirstName := LDs.FieldByName('firstname').AsString;
      LFil.LastName := LDs.FieldByName('lastname').AsString;
      LFil.Email := LDs.FieldByName('email').AsString;
      LFil.Birthday := LDs.FieldByName('birthday').AsDateTime;
      LFil.Gender := LDs.FieldByName('gender').AsString;
      LFil.ImageUrl := LDs.FieldByName('image').AsString;

{$IFDEF MSWINDOWS}
      LFil.rctBackground.OnClick := ItemListClick;
{$ELSE}
      LFil.rctBackground.OnTap := ItemListTap;
{$ENDIF}

      vtsList.AddObject(LFil);

      LFil.Position.Y := LFil.Height * vtsList.Content.ChildrenCount;

      LDs.Next;
    end;

    if Assigned(LFil) then
    begin
      FFrmLastView := LFil;
      FFrmLastView.OnPainting := ItemListDemand;
    end;
  finally
    FreeAndNil(LDs);
    vtsList.EndUpdate;
    Label1.Text := vtsList.Content.ChildrenCount.ToString;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
begin
  FFrmLastView := nil;
  FObjList := TObjectList<TObject>.Create;
end;

procedure TFormMain.FormDestroy(Sender: TObject);
begin
  ClearList;
  FreeAndNil(FObjList);
end;

procedure TFormMain.ItemListClick(Sender: TObject);
var
  LFil: TFilPerson;
begin
  LFil := (Sender as TControl).Owner as TFilPerson;

  // Faz oq vc quiser fazer
  ShowMessage(LFil.Id.ToString + ' ' + LFil.FirstName);
end;

procedure TFormMain.ItemListDemand(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  FFrmLastView.OnPainting := nil;

  FillList;
end;

procedure TFormMain.ItemListTap(Sender: TObject; const Point: TPointF);
begin
  ItemListClick(Sender);
end;

end.
