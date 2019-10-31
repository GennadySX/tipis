program Project3;

{$APPTYPE CONSOLE} 

uses
  Windows,
  SysUtils;

type 

  TEquation= class(TObject)
  a, b, c: real;
  x1, x2: real;
  constructor Create;
  Destructor Destroy; override;
  procedure Roots;
  end;

  constructor TEquation.Create;
  begin

    Writeln('введите коэффициент a, коэффициент b, коэффициент c, чтобы создать уравнение');
    Write('a = '); Readln(a);
    Write('b = '); Readln(b);
    Write('c = '); Readln(c);
    writeln(a:3:0,'x^2+(',b:3:0,')x+(',c:3:0,')=0');
  end;

  destructor TEquation.Destroy;
  begin
  inherited Destroy;
  end;

  procedure TEquation.Roots;
  var d:real;
  begin
  if a=0 then  Writeln ('уравнение является линейным и существует единственный корень х= ', -c/b:5:3)
         else
         begin
           d:= b*b-4*a*c;     // нахождение дискриминанта
           if (d>0) then
                    begin
                      x1:=(-b+sqrt(d))/(2*a);
                      x2:=(-b-sqrt(d))/(2*a);
                      Writeln('x1 = ', x1:5:3);
                      Writeln('x2 = ', x2:5:3);
                    end;
           if (d=0)then
                   begin
                     x1:=-b/(2*a);
                     Writeln('x1 = x2 =', x1:5:3);
                   end;
           if (d<0) then Writeln('данное уравнение не имеет решений, так как дискриминант меньше нуля');

          end;
  end;


  Var Te1, Te2, Te3, Te4: TEquation;
  begin
  SetConsoleCP(1251);
  SetConsoleOutputCP(1251);

  Te1:=TEquation.Create;
  Te1.Roots;
  Readln;

  Te2:=TEquation.Create;
  Te2.Roots;
  Readln;

  Te3:=TEquation.Create;
  Te3.Roots;
  Readln;

  Te4:=TEquation.Create;
  Te4.Roots;
  Readln;

  Te1.Destroy; Te2.Destroy; Te3.Destroy; Te4.Destroy;

  readln;
end.
