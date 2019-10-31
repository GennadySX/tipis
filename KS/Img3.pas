unit Img3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TImgForm3 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ImgForm3: TImgForm3;

implementation

uses Img1;

{$R *.dfm}

procedure TImgForm3.Button1Click(Sender: TObject);
begin
 ImgForm3.Visible:=false;
 ImgForm1.Show;
end;

end.
