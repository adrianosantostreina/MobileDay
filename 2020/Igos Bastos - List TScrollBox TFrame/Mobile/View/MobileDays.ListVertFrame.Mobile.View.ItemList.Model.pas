unit MobileDays.ListVertFrame.Mobile.View.ItemList.Model;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Layouts, FMX.Objects;

type
  TFrmItemListModel = class(TFrame)
    lytBackground: TLayout;
    rctBackground: TRectangle;
    rctClient: TRectangle;
  private
    FIdentify: Variant;
    procedure SetIdentify(const Value: Variant);
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    property Identify: Variant read FIdentify write SetIdentify;
    { Public declarations }
  end;

implementation

{$R *.fmx}

{ TFrmItemListModel }

constructor TFrmItemListModel.Create(AOwner: TComponent);
begin
  inherited;
  FIdentify := 0;
end;

destructor TFrmItemListModel.Destroy;
begin

  inherited;
end;

procedure TFrmItemListModel.SetIdentify(const Value: Variant);
begin
  FIdentify := Value;
end;

end.
