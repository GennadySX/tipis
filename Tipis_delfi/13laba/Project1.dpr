program Project1;

uses
  Forms,
  Img1 in '..\..\KS\Img1.pas' {ImgForm1},
  Img2 in '..\..\KS\Img2.pas' {ImgForm2},
  Img3 in '..\..\KS\Img3.pas' {ImgForm3},
  Unit5 in 'Unit5.pas' {Form5},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TImgForm1, ImgForm1);
  Application.CreateForm(TImgForm2, ImgForm2);
  Application.CreateForm(TImgForm3, ImgForm3);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
