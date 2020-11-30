program MobileDayApp;

uses
  System.StartUpCopy,
  FMX.Forms,
  MD.View.Client.Objects in 'MD.View.Client.Objects.pas' {frmMobileDayObject},
  MD.View.Client.DataSet in 'MD.View.Client.DataSet.pas' {frmMobileDayDataSet},
  MD.Model.Client in 'MD.Model.Client.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
//  Application.CreateForm(TfrmMobileDayObject, frmMobileDayObject);
      Application.CreateForm(TfrmMobileDayDataSet, frmMobileDayDataSet);
  Application.Run;
end.
