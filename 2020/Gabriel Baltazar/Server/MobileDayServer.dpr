program MobileDayServer;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  Horse,
  Horse.BasicAuthentication,
  System.SysUtils,
  MD.DAO.Client in 'MD.DAO.Client.pas',
  MD.Controller.Client in 'MD.Controller.Client.pas';

begin
  THorse.Use(HorseBasicAuthentication(
    function(const AUsername, APassword: string): Boolean
    begin
      Result := AUsername.Equals('mobileDay') and APassword.Equals('2020');
    end));


  MD.Controller.Client.Registry;

  THorse.Listen(9000);
end.
