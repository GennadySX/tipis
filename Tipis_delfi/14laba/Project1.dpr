program Project1;

uses
  Forms,
  MDI in '..\..\KS\14\MDI.pas' {MDIForm1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMDIForm1, MDIForm1);
  Application.Run;
end.
