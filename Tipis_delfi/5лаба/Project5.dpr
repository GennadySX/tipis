program Project5;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows;

type
  TSklad=class
  Tovar:integer;
  constructor Create;
  destructor Destroy; override;
  procedure Move(S:TSklad; T:integer);
  procedure Show; virtual;
  end;
  
  TShop=class(TSklad)
  Money:integer;
  constructor Create;
  destructor Destroy; override;
  procedure Sale(T, C:integer);
  procedure Show; override;
  end;

{ TSklad }

constructor TSklad.Create;
  begin
    inherited Create;
    write('Введите количество товаров на складе: ');
    readln(Tovar);
  end;

destructor TSklad.Destroy;
  begin
    inherited Destroy;
  end;

procedure TSklad.Move(S:TSklad; T:integer);
  begin
    Tovar:=Tovar+T;
    S.Tovar:=S.Tovar-T;
    if (S.Tovar<0) then
                    begin
                      writeln('Невозможно! На складе всего: ', S.Tovar+T);
                      Tovar:=Tovar-T;
                      S.Tovar:=S.Tovar+T;
                    end;
  end;

procedure TSklad.Show;
  begin
    writeln(Tovar);
  end;

{ TShop }

constructor TShop.Create;
  begin
  end;

destructor TShop.Destroy;
  begin
    inherited Destroy;
  end;

procedure TShop.Sale(T, C: integer);
  begin
    if(Tovar-T<0) then writeln('Невозможно! На складе всего: ', Tovar)
                  else
                    begin
                      Tovar:=Tovar-T;
                      Money:=Money+T*C;
                    end
  end;

procedure TShop.Show;
  begin
    writeln('В магазине осталось: ',Tovar);
    writeln('Выручка с продажи: ', Money,' Руб.');
  end;

var
  Sklad1, Sklad2:TSklad;
  Shop1, Shop2:TShop;
  q,c:integer;


begin
   SetConsoleCP(1251);
   SetConsoleOutPutCP(1251);

   writeln('Cклад №1');
   Sklad1:=TSklad.Create;
   Shop1:=TShop.Create;
   writeln('Склад №2');
   Sklad2:=TSklad.Create;
   Shop2:=TShop.Create;

   writeln;
   writeln('   ');
   writeln('   ');
   writeln('   ');

   writeln('Перевозка из Склад №1 в Склад №2');
   write('Введите количество товара для перевозки: ');
   readln(q);
   Sklad2.Move(Sklad1, q);
   writeln;
   write('Количество товара на Складе №1: ');
   Sklad1.Show;
   write('Количество товара на Складе №2: ');
   Sklad2.Show;
   writeln('');
   writeln;

   writeln('Перевозка из Склад №2 в Склад №1');
   write('Количество товара для перевозки: ');
   readln(q);
   Sklad1.Move(Sklad2, q);
   writeln;
   write('Единиц товара на Складе №1 : ');
   Sklad1.Show;
   write('Единиц товара на Складе №2: ');
   Sklad2.Show;
   writeln('');

   writeln;
   writeln('   ');
   writeln('   ');
   writeln('   ');
   writeln('Перевозка из Склад №1 в Магазин №1');
   write('Количество товара для перевозки: ');
   readln(q);
   Shop1.Move(Sklad1, q);
   writeln;
   writeln('');
   write('На ПЕРВОМ складе (единиц товара): ');
   Sklad1.Show;
   writeln('');
   writeln;

   writeln('Перевозка из Склад №1 в Магазин №2');
   write('Количество товара для перевозки: ');
   readln(q);
   Shop2.Move(Sklad1, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('На ПЕРВОМ складе единиц товара: ');
   Sklad1.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;
   write('На ВТОРОМ складе единиц товара: ');
   Sklad2.Show;

   writeln('Перевозка из Склад №2 в Магазин №1');
   write('Количество товара для перевозки: ');
   readln(q);
   Shop1.Move(Sklad2, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('На ВТОРОМ складе единиц товара: ');
   Sklad2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;

   writeln('Перевозка из Склад №2 в Магазин №2');
   write('Количество товара для перевозки: ');
   readln(q);
   Shop2.Move(Sklad2, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('На ВТОРОМ складе едениц товара: ');
   Sklad2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('В ПЕРВОМ магазине единиц товара: ');
   writeln(Shop1.Tovar);
   write('Во ВТОРОМ магазине единиц товара: ');
   writeln(Shop2.Tovar);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   readln;

   writeln;
   writeln('   ');
   writeln('    ');
   writeln('    ');
   writeln('ПЕРВЫЙ  МАГАЗИН');
   writeln('                           ',Shop1.Tovar,'ед. товара             ');
   write('Введите количество товара для продажи: ');
   readln(q);
   write('Введите цену одной единицы товара(Руб.): ');
   readln(c);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   Shop1.Sale(q,c);
   Shop1.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

   writeln('ВТОРОЙ  МАГАЗИН');
   writeln('                            ',Shop2.Tovar,' ед. товара             ');
   write('Введите количество товара для продажи: ');
   readln(q);
   write('Введите цену одной единицы товара(Руб.): ');
   read(c);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   Shop2.Sale(q,c);
   Shop2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln('Перевозки закончены');
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

   Sklad1.Destroy;
   Sklad2.Destroy;
   Shop1.Destroy;
   Shop2.Destroy;
   readln;
   readln;
end.
