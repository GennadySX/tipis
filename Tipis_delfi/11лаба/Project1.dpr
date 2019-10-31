program Project1;

uses
  Forms,
  Editor in '..\..\KS\Editor.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
