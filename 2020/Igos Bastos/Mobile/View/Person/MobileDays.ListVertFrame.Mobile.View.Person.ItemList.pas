unit MobileDays.ListVertFrame.Mobile.View.Person.ItemList;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  MobileDays.ListVertFrame.Mobile.View.ItemList.Model, FMX.Objects, FMX.Layouts,
  FMX.Controls.Presentation,

  System.UIConsts;

type
  TFilPerson = class(TFrmItemListModel)
    lblId: TLabel;
    lytInfo1: TLayout;
    lblName: TLabel;
    lblEmail: TLabel;
    lblBirthday: TLabel;
    rctGender: TRectangle;
    lytImgPerfil: TLayout;
    imgPerfil: TImage;
    procedure lytBackgroundPainting(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
  private
    FLastName: string;
    FEmail: string;
    FImageUrl: string;
    FBirthday: TDate;
    FGender: string;
    FId: Integer;
    FFirstName: string;
    procedure SetBirthday(const Value: TDate);
    procedure SetEmail(const Value: string);
    procedure SetFirstName(const Value: string);
    procedure SetGender(const Value: string);
    procedure SetId(const Value: Integer);
    procedure SetImageUrl(const Value: string);
    procedure SetLastName(const Value: string);

    procedure ShowImage;
    { Private declarations }
  public
    property Id: Integer read FId write SetId;
    property FirstName: string read FFirstName write SetFirstName;
    property LastName: string read FLastName write SetLastName;
    property Birthday: TDate read FBirthday write SetBirthday;
    property Email: string read FEmail write SetEmail;
    property Gender: string read FGender write SetGender;
    property ImageUrl: string read FImageUrl write SetImageUrl;

    procedure ShowValues;
    { Public declarations }
  end;

var
  FilPerson: TFilPerson;

implementation

uses
  MobileDays.ListVertFrame.Mobile.Controller.SMImage;

{$R *.fmx}

{ TFilPerson }

procedure TFilPerson.lytBackgroundPainting(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  inherited;
  if lytBackground.Tag <> 0 then
    Exit;
  lytBackground.Tag := 1;
  ShowValues;
end;

procedure TFilPerson.SetBirthday(const Value: TDate);
begin
  FBirthday := Value;
end;

procedure TFilPerson.SetEmail(const Value: string);
begin
  FEmail := Value;
end;

procedure TFilPerson.SetFirstName(const Value: string);
begin
  FFirstName := Value;
end;

procedure TFilPerson.SetGender(const Value: string);
begin
  FGender := Value;
end;

procedure TFilPerson.SetId(const Value: Integer);
begin
  FId := Value;
end;

procedure TFilPerson.SetImageUrl(const Value: string);
begin
  FImageUrl := Value;
end;

procedure TFilPerson.SetLastName(const Value: string);
begin
  FLastName := Value;
end;

procedure TFilPerson.ShowImage;
begin
  TThread.CreateAnonymousThread(
    procedure
    var
      LPath: string;
    begin
      try
        LPath := TSMImage.ShowImage('Person_' + FId.ToString + '.jpg', FImageUrl);
        if FileExists(LPath) then
        begin
          TThread.Synchronize(TThread.CurrentThread,
            procedure
            begin
              imgPerfil.Bitmap.LoadFromFile(LPath);
            end);
        end;
      finally
          TThread.Synchronize(TThread.CurrentThread,
          procedure
          begin
            lytImgPerfil.Visible := imgPerfil.Bitmap.Width > 0;
          end);
      end;
    end).Start;
end;

procedure TFilPerson.ShowValues;
begin
  lblId.Text := FId.ToString;
  lblName.Text := FFirstName + ' ' + FLastName;
  lblEmail.Text := FEmail;
  lblBirthday.Text := FormatDateTime('yyyy-mm-dd', FBirthday);

  if FGender.Equals('M') then
    rctGender.Fill.Color := StringToAlphaColor('Indigo')
  else if FGender.Equals('F') then
    rctGender.Fill.Color := StringToAlphaColor('Firebrick')
  else
    rctGender.Fill.Color := StringToAlphaColor('Gray');

  ShowImage;
end;

end.
