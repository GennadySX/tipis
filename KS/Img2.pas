unit Img2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TImgForm2 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgForm2: TImgForm2;

implementation

uses Img3;

{$R *.dfm}

procedure TImgForm2.Button1Click(Sender: TObject);
begin
 ImgForm2.Visible:=false;
 ImgForm3.Show;
end;

end.
