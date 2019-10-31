program Project4;
{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type
  TFigure=class(TObject)
  constructor Create;
  destructor Destroy; override;
  function Area: real;  virtual;abstract;
  function Perimeter: real; virtual;abstract;
  function Verify:string; virtual; abstract;
  Function Diagonal:real; virtual;abstract;
  procedure show; virtual;abstract;
  procedure Report;
  end;

  TRectangle=class(TFigure)
  x1,x2,y1,y2: integer;
  constructor Create;
  destructor  Destroy; override;
  function Area: real; override;
  function Perimeter: real; override;
  function Verify:string; override;
  function diagonal:Real; override;
  procedure show; override;
  end;

  TTriangle=class(TFigure)
  x1,x2,x3,y1,y2,y3:Integer;
  constructor Create;
  destructor  Destroy; override;
  function Area: real; override;
  function Perimeter: real; override;
  function Verify:string; override;
  end;

  TCircle=class(TFigure)
  r,x1,y1:integer;
  constructor Create;
  destructor  Destroy; override;
  function Area: real; override;
  function Perimeter: real; override;
  function Verify:string; override;
  end;

  TRing=class(TCircle)
  x1,y1,r1,r2,x2,y2: real;
  constructor Create;
  destructor  Destroy; override;
  function Area: real; override;
  function Perimeter:real; override;
  function Verify:String; override;
  end;

  constructor TFigure.Create; 
  begin inherited Create; end;

  destructor TFigure.Destroy;
  begin inherited Destroy; end;

  procedure TFigure.Report;
  begin
    Writeln;
    Writeln ClassName;
    Writeln('Периметр=',Perimeter:3:1);
    Writeln('Площадь=',Area:3:1);
    Writeln;
    Writeln('Проверка попадания точки в фигуру: ', Verify);
  end;


  constructor TRectangle.Create;
    begin
      inherited Create;
      Writeln('Введите координаты вершин прямоугольника:');
      Write('x1='); Readln(x1); Write('y1='); Readln(y1);
      Write('x2='); Readln(x2); Write('y2='); Readln(y2);
    end;

  destructor TRectangle.Destroy;
  begin inherited Destroy; end;

  function TRectangle.Perimeter;
    begin
      Perimeter:=abs(x2-x1)*2+ abs(y2-y1)*2;
    end;

    function TRectangle.Diagonal;
    begin
   Diagonal:=sqrt(sqr(x2-x1)+sqr(y2-y1));
    end;

  function TRectangle.Area;
    begin
      Area:= (abs(x2-x1)* abs(y2-y1));
    end;

    procedure TRectangle.show;
    begin
  writeln('Диагональ прямоугольника =',Diagonal:3:1);
    end;

  function TRectangle.Verify;
  var x3, y3: integer;
  begin
    writeln('Введите координаты точки, чтобы проверить на попадание в данную фигуру');
    write('x=');Readln(x3);write('y='); Readln(y3);
    if (x1<=x3) and (x3<=x2) and (y1<=y3) and (y3<=y2) then Verify:= 'Данная точка попадает в прямоугольник'
                                                       else Verify:= 'Данная точка не попадает в прямоугольник'
  end;


  constructor TTriangle.Create;
    begin
      inherited Create;
      Writeln('Введите координаты вершин треугольника:');
      writeln('(x1;y1)');
      writeln('|  ');
      writeln('|  ');
      writeln('|  ');
      writeln('(x1;y2)---------(x2;y2)');
      Write('x1='); Readln(x1);
      Write('y1='); Readln(y1);
      Write('x2='); Readln(x2);
      Write('y2='); Readln(y2);
      writeln;
      writeln('(',x1,';',y1,')');
      writeln('|  ');
      writeln('|  ');
      writeln('|  ');
      writeln('(',x1,';',y2,')---------(',x2,';',y2,')');
    end;

  destructor TTriangle.Destroy;
  begin inherited Destroy; end;

  function TTriangle.Area;
    begin
      Area:=((abs(y2-y1)*abs(x2-x1))/2);
    end;

  function TTriangle.Perimeter;
    begin
      Perimeter:=abs(y2-y1)+abs(x2-x1)+sqrt(sqr(y2-y1)+sqr(x2-x1));
    end;

  function TTriangle.Verify;
  var x,y:integer; A1,A2,A3:real;
    begin
      writeln('Введите координаты точки, чтобы проверить на попадание в данную фигуру');
      write('x=');readln(x);write('y='); readln(y);
      A1:=(y*(x2-x1))/2;
      A2:=(x*(y2-y1))/2;
      A3:=((abs(y2-y1)*abs(x2-x1))/2);
      if ((A1+A2)> A3) then Verify :='Данная точка не попадает в треугольник'
                       else Verify := 'Данная точка попадает в треугольник';
    end;


  constructor TCircle.Create;
    begin
      inherited Create;
      Writeln('Введите координаты центра круга:');
      Write('x=');Readln(x1);
      Write('y=');Readln(y1);
      Writeln('Введите радиус круга');
      Write('r='); Readln(r);
   end;

  destructor TCircle.Destroy;
   begin inherited Destroy;end;

  function TCircle.Area;
    begin
      Area:=Pi*r*r;
    end;

  function TCircle.Perimeter;
    begin
      Perimeter:=2*Pi*r;
    end; 

  function TCircle.Verify;
  var x2,y2:integer;
    begin
      Writeln('Введите координаты точки, чтобы проверить на попадание в данную фигуру:');
      Write('x='); Readln(x1);
      Write('y='); Readln(y1);
      if (x2<(x1+r)) and (y2<(y1+r)) then Verify:= 'Точка не находится внутри круга'
                                     else Verify:= 'Точка находится внутри круга';
    end;

  constructor TRing.Create;
    begin
      inherited Create;
      Writeln('Введите радиус внутреннего круга кольца');
      Write('r1=');Readln(r1);
    end;

  destructor TRing.Destroy;
    begin
      inherited Destroy;
    end;

	function TRing.Perimeter;
    begin
      Perimeter:=inherited perimeter + 2*Pi*r1;
    end;

  function TRing.Area;
    begin
      Area:= inherited Area - Pi*sqr(r1);
    end;

   function TRing.Verify;
   var x2,y2,r2: real;
     begin
       Writeln('Введите координаты точки, чтобы проверить на попадание в данную фигуру');
       Write('x=');Readln(x1);
       Write('y=');Readln(y1);
       r2:=sqrt(sqr(abs(x1-x2))+sqr(abs(y1-y2)));
       if(r2<=r) and (r2>=r1) then Verify:='Точка не находится внутри кольца'
                              else Verify:='Точка находится внутри кольца';
     end;


  var
  Rc:TRectangle;
  Tr:TTriangle;
  Cr:TCircle;
  Rn:TRing;

  begin
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);

  Rc:=TRectangle.Create;
  Rc.Report;
  Rc.show;
  Writeln;

  Tr:=TTriangle.Create;
  Tr.Report;
  Writeln;

  Cr:=TCircle.Create;
  Cr.Report;
  Writeln;

  Rn:=TRing.Create;
  Rn.Report;

  Cr.Destroy;
  Rn.Destroy;
  Tr.Destroy;
  Rc.Destroy;
  Readln;

end.
