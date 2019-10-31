unit Img1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TImgForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgForm1: TImgForm1;

implementation

uses Img2, Main;

{$R *.dfm}

procedure TImgForm1.Button1Click(Sender: TObject);
begin
 ImgForm1.Visible:=false;
 ImgForm2.Show;
end;

end.
