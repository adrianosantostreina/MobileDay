unit MD.Model.Classes;

interface

type
  TClient = class
  private
    Fid: Integer;
    Fname: string;
    FlastName: String;
    Fphone: String;
  public
    property id: Integer read Fid write Fid;
    property name: string read Fname write Fname;
    property lastName: String read FlastName write FlastName;
    property phone: String read Fphone write Fphone;
  end;

implementation

end.
