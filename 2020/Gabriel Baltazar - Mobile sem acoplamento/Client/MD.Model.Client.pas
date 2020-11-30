unit MD.Model.Client;

interface

type TClient = class
  private
    Fid: Integer;
    Fname: String;
    FlastName: string;
    Fphone: String;

  public
    property id: Integer read Fid write Fid;
    property name: String read Fname write Fname;
    property lastName: string read FlastName write FlastName;
    property phone: String read Fphone write Fphone;
end;

implementation

end.
