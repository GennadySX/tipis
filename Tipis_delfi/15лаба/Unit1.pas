unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MainMenu1.Merge(Form2.MainMenu1);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  MainMenu1.UnMerge(Form2.MainMenu1);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
  0: MainMenu1.Merge(Form2.MainMenu1);
  1: MainMenu1.Unmerge(Form2.MainMenu1);
end;
end;
procedure TForm1.N2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  MainMenu1.Merge(Form2.MainMenu1);
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  MainMenu1.UnMerge(Form2.MainMenu1);
end;



end.
