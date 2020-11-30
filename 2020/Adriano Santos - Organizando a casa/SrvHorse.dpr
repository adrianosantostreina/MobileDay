program SrvHorse;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.Compression,
  Horse.Jhonson,
  System.SysUtils,
  UntDM in 'UntDM.pas' {DM: TDataModule},
  Controller.Visita in 'Controllers\Controller.Visita.pas',
  DAO.Base in 'DAO\DAO.Base.pas',
  Server.Config in 'DAO\Server.Config.pas',
  Server.Connection in 'DAO\Server.Connection.pas',
  Server.DataSets in 'DAO\Server.DataSets.pas',
  Server.Horse.Config in 'infra\Server.Horse.Config.pas',
  DAO.Visita in 'DAO\DAO.Visita.pas',
  Utils.DataSet.JSON.Helper in 'classes comuns\Utils.DataSet.JSON.Helper.pas',
  SmartPoint in 'classes comuns\SmartPoint.pas';

begin
  THorse
    .Use(Compression())
    .Use(Jhonson);

  RegisterVisita;

  THorse.Listen(9000);
end.
