unit MDI;

interface 

uses 
Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
Dialogs, ActnList, Menus, StdActns, StdCtrls, System.Actions;

type 
TMDIForm = class(TForm)
MainMenu1: TMainMenu; 
N1: TMenuItem; 
N2: TMenuItem; 
N3: TMenuItem; 
N4: TMenuItem; 
N5: TMenuItem; 
N6: TMenuItem; 
ActionList1: TActionList; 
WindowCascade1: TWindowCascade; 
WindowTileVertical1: TWindowTileVertical; 
procedure N3Click(Sender: TObject); 
procedure N2Click(Sender: TObject); 

private 
{ Private declarations } 
procedure CreateChildForm(const childName: string); 
public 
{ Public declarations } 
end; 

var 
MDIForm: TMDIForm;

implementation 

{$R *.dfm} 
uses Unit2;
procedure TMDIForm.CreateChildForm (const childName: string);
var Child:TForm2;
begin 
Child:= TForm2.Create(Application);
Child.Caption:= childName; 
end; 

procedure TMDIForm.N2Click(Sender: TObject);
begin 
CreateChildForm('Окно №'+IntToStr(MDIChildCount+1)); 
end; 

procedure TMDIForm.N3Click(Sender: TObject);
begin 
Application.Terminate; 
end; 

end.
