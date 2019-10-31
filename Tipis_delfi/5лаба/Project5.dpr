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
    write('������� ���������� ������� �� ������: ');
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
                      writeln('����������! �� ������ �����: ', S.Tovar+T);
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
    if(Tovar-T<0) then writeln('����������! �� ������ �����: ', Tovar)
                  else
                    begin
                      Tovar:=Tovar-T;
                      Money:=Money+T*C;
                    end
  end;

procedure TShop.Show;
  begin
    writeln('� �������� ��������: ',Tovar);
    writeln('������� � �������: ', Money,' ���.');
  end;

var
  Sklad1, Sklad2:TSklad;
  Shop1, Shop2:TShop;
  q,c:integer;


begin
   SetConsoleCP(1251);
   SetConsoleOutPutCP(1251);

   writeln('C���� �1');
   Sklad1:=TSklad.Create;
   Shop1:=TShop.Create;
   writeln('����� �2');
   Sklad2:=TSklad.Create;
   Shop2:=TShop.Create;

   writeln;
   writeln('   ');
   writeln('   ');
   writeln('   ');

   writeln('��������� �� ����� �1 � ����� �2');
   write('������� ���������� ������ ��� ���������: ');
   readln(q);
   Sklad2.Move(Sklad1, q);
   writeln;
   write('���������� ������ �� ������ �1: ');
   Sklad1.Show;
   write('���������� ������ �� ������ �2: ');
   Sklad2.Show;
   writeln('');
   writeln;

   writeln('��������� �� ����� �2 � ����� �1');
   write('���������� ������ ��� ���������: ');
   readln(q);
   Sklad1.Move(Sklad2, q);
   writeln;
   write('������ ������ �� ������ �1 : ');
   Sklad1.Show;
   write('������ ������ �� ������ �2: ');
   Sklad2.Show;
   writeln('');

   writeln;
   writeln('   ');
   writeln('   ');
   writeln('   ');
   writeln('��������� �� ����� �1 � ������� �1');
   write('���������� ������ ��� ���������: ');
   readln(q);
   Shop1.Move(Sklad1, q);
   writeln;
   writeln('');
   write('�� ������ ������ (������ ������): ');
   Sklad1.Show;
   writeln('');
   writeln;

   writeln('��������� �� ����� �1 � ������� �2');
   write('���������� ������ ��� ���������: ');
   readln(q);
   Shop2.Move(Sklad1, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('�� ������ ������ ������ ������: ');
   Sklad1.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;
   write('�� ������ ������ ������ ������: ');
   Sklad2.Show;

   writeln('��������� �� ����� �2 � ������� �1');
   write('���������� ������ ��� ���������: ');
   readln(q);
   Shop1.Move(Sklad2, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('�� ������ ������ ������ ������: ');
   Sklad2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;

   writeln('��������� �� ����� �2 � ������� �2');
   write('���������� ������ ��� ���������: ');
   readln(q);
   Shop2.Move(Sklad2, q);
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('�� ������ ������ ������ ������: ');
   Sklad2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   write('� ������ �������� ������ ������: ');
   writeln(Shop1.Tovar);
   write('�� ������ �������� ������ ������: ');
   writeln(Shop2.Tovar);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   readln;

   writeln;
   writeln('   ');
   writeln('    ');
   writeln('    ');
   writeln('������  �������');
   writeln('                           ',Shop1.Tovar,'��. ������             ');
   write('������� ���������� ������ ��� �������: ');
   readln(q);
   write('������� ���� ����� ������� ������(���.): ');
   readln(c);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   Shop1.Sale(q,c);
   Shop1.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

   writeln('������  �������');
   writeln('                            ',Shop2.Tovar,' ��. ������             ');
   write('������� ���������� ������ ��� �������: ');
   readln(q);
   write('������� ���� ����� ������� ������(���.): ');
   read(c);
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   Shop2.Sale(q,c);
   Shop2.Show;
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');
   writeln('��������� ���������');
   writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~');

   Sklad1.Destroy;
   Sklad2.Destroy;
   Shop1.Destroy;
   Shop2.Destroy;
   readln;
   readln;
end.
