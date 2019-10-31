unit Unitx;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, ExtDlgs, Menus;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    OpenPictureDialog1: TOpenPictureDialog;
    Button3: TButton;
    Image3: TImage;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure N2Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
Image1.visible:=true;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Image1.visible:=false;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then  Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
case ComboBox1.ItemIndex of
 0: begin
 Image2.Picture.LoadFromFile('C:\Users\User\Desktop\��������\������.jpg');
 end;
 1: begin
 Image2.Picture.LoadFromFile('C:\Users\User\Desktop\��������\�������.jpg');
 end;
 2: begin
 Image2.Picture.LoadFromFile('C:\Users\User\Desktop\��������\�����.jpg');
 end;
 3: begin
 Image2.Picture.LoadFromFile('C:\Users\User\Desktop\��������\�������.jpg');
 end;
 4: begin
 Image2.Picture.LoadFromFile('C:\Users\User\Desktop\��������\��������.jpg');

end;
  
end;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Image2.Visible:=true;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  Image2.Visible:=false;
end;

end.
