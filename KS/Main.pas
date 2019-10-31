unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Vcl.Menus, About, Photos, Editor,MDI ,SDI1,SDI2;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    Edit1: TEdit;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    Shape1: TShape;
    Button3: TButton;
    GroupBox1: TGroupBox;
    RadioButton4: TRadioButton;
    RadioButton1: TRadioButton;
    RadioButton5: TRadioButton;
    Button4: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    SDI1: TMenuItem;
    MDI1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure RadioGroup3Click(Sender: TObject);
    procedure RadioGroup4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure MDI1Click(Sender: TObject);
    procedure SDI1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    k:integer;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  inc(k);
  Label1.Caption:='������ "'+Button1.Caption+'"  ������ '+IntToStr(k)+' ���';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if RadioButton4.Checked=True then Form1.Color:=$FF33CC;
  if RadioButton1.Checked=True then Form1.Caption:='������������ ������ �6,7,8';
  if RadioButton5.Checked=True then Application.Terminate;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0: Shape1.Shape:=stCircle;
    1: Shape1.Shape:=stRectangle;
    2: Shape1.Shape:=stEllipse;
    3: Shape1.Shape:=stSquare;
    4: Shape1.Shape:=stRoundSquare;
    5: Shape1.Shape:=stRoundRect;
  end;
end;

procedure TForm1.RadioGroup3Click(Sender: TObject);
begin
  case RadioGroup3.ItemIndex of
    0: Shape1.Brush.Color:=$FF9999;
    1: Shape1.Brush.Color:=$66FFFF;
    2: Shape1.Brush.Color:=$99FF66;
    3: Shape1.Brush.Color:=$C0C0C0;
  end;

end;

procedure TForm1.RadioGroup4Click(Sender: TObject);
begin
  case RadioGroup4.ItemIndex of
    0: Shape1.Brush.Style:=bsSolid;
    1: Shape1.Brush.Style:=bsCross;
    2: Shape1.Brush.Style:=bsVertical;
    3: Shape1.Brush.Style:=bsHorizontal;

  end;
end;


procedure TForm1.SDI1Click(Sender: TObject);
begin
    SDIForm1.Visible := True;
    SDIForm2.Visible := True;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form1.Color:=$000000;
  Form1.Width:= Width div 2;
  Button3.Enabled:=False;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  RColor: integer;
begin
  Randomize;
     RColor := Random(999999);
     Shape1.Brush.Color := RColor;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  Form1.Caption:=Edit1.Text;
end;


procedure TForm1.MDI1Click(Sender: TObject);
begin
  MDIForm.Visible := True;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  Form4.Visible := True;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  Form3.Visible := True;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
   Form5.Visible := True;
end;

end.
