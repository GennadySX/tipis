program Project1;

uses
  Forms,
  SDI in 'SDI.pas' {SDIForm1},
  SDI2 in 'SDI2.pas' {SDIForm2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TSDIForm1, SDIForm1);
  Application.Run;
end.
