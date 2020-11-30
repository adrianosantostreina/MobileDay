program Mobile;

uses
  System.StartUpCopy,
  System.SysUtils,
  FMX.Forms,
  MobileDays.ListVertFrame.Mobile.View.FormMain in 'View\MobileDays.ListVertFrame.Mobile.View.FormMain.pas' {FormMain},
  MobileDays.ListVertFrame.Mobile.Controller.SMPessoa in 'Controller\MobileDays.ListVertFrame.Mobile.Controller.SMPessoa.pas',
  MobileDays.ListVertFrame.Mobile.View.ItemList.Model in 'View\MobileDays.ListVertFrame.Mobile.View.ItemList.Model.pas' {FrmItemListModel: TFrame},
  MobileDays.ListVertFrame.Mobile.View.Person.ItemList in 'View\Person\MobileDays.ListVertFrame.Mobile.View.Person.ItemList.pas' {FilPerson: TFrame},
  MobileDays.ListVertFrame.Mobile.Controller.SMImage in 'Controller\MobileDays.ListVertFrame.Mobile.Controller.SMImage.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.FormFactor.Orientations := [TFormOrientation.Portrait];
  FormatSettings.DecimalSeparator := ',';
  FormatSettings.CurrencyString := '0.,00';
  FormatSettings.DateSeparator := '/';
  FormatSettings.TimeSeparator := ':';
  FormatSettings.ShortDateFormat := 'dd/mm/yyyy';
  FormatSettings.LongDateFormat := 'dd/mm/yyyy';
  FormatSettings.ShortTimeFormat := 'hh:nn:ss';
  FormatSettings.LongTimeFormat := 'hh:nn:ss.zzz';
  Application.CreateForm(TFormMain, FormMain);
  Application.Run;
end.
