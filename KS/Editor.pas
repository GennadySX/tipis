unit Editor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, ComCtrls, ToolWin, ImgList, System.ImageList;

type
  TForm5 = class(TForm)
    RichEdit1: TRichEdit;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    N7: TMenuItem;
    N8: TMenuItem;
    N10: TMenuItem;
    FontDialog1: TFontDialog;
    N11: TMenuItem;
    N12: TMenuItem;
    N9: TMenuItem;
    N13: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    N14: TMenuItem;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ImageList1: TImageList;
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure ToolButton3Click(Sender: TObject);
    procedure ToolButton2Click(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.N10Click(Sender: TObject);
begin
ShowMessage('����������: ������� �������');
end;

procedure TForm5.N11Click(Sender: TObject);
begin
RichEdit1.PasteFromClipboard;
end;

procedure TForm5.N12Click(Sender: TObject);
begin
RichEdit1.Lines.Clear;
end;

procedure TForm5.N13Click(Sender: TObject);
begin
RichEdit1.Undo;
end;

procedure TForm5.N14Click(Sender: TObject);
  var rezult:TModalResult;
FName:string; 
  begin
  rezult:= MessageDlg('��������� ������?',mtinformation,mbOkCancel,0);
  if rezult=mrOk then
  begin
  SaveDialog1.FileName := FName;
  if SaveDialog1.Execute then
  begin
  RichEdit1.PlainText := True;
  FName := SaveDialog1.FileName;
  RichEdit1.Lines.SaveToFile(FName);
  end;
  RichEdit1.Clear;
  end;
  if rezult=mrCancel then RichEdit1.Clear;
  end;


procedure TForm5.N2Click(Sender: TObject);
begin
        if OpenDialog1.Execute then
        RichEdit1.Lines.LoadFromFile(OpenDialog1.Filename);

end;

procedure TForm5.N4Click(Sender: TObject);
begin
  if FontDialog1.Execute then
   RichEdit1.SelAttributes.Assign(FontDialog1.Font);
   RichEdit1.SetFocus;

end;

procedure TForm5.N5Click(Sender: TObject);
begin
   RichEdit1.CopyToClipboard;
end;

procedure TForm5.N6Click(Sender: TObject);
begin
   if SaveDialog1.Execute then
   RichEdit1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm5.N7Click(Sender: TObject);
var rezult:TModalResult;
FName:string;
  begin
  rezult:= MessageDlg('��������� ������?',mtinformation,mbOkCancel,0);
  if rezult=mrOk then
  begin
  SaveDialog1.FileName := FName;
  if SaveDialog1.Execute then
  begin
  RichEdit1.PlainText := True;
  FName := SaveDialog1.FileName;
  RichEdit1.Lines.SaveToFile(FName);
  end;
  Form5.Close;
  end;
  if rezult=mrCancel then Form5.Close;

end;

procedure TForm5.N9Click(Sender: TObject);
begin
 If RichEdit1.WordWrap then
 begin
 RichEdit1.WordWrap:=false;
 RichEdit1.ScrollBars:=ssBoth;
 N9.Checked:=False;
 end
 else
 begin
 RichEdit1.WordWrap:=True;
 RichEdit1.ScrollBars:=ssVertical;
 N9.Checked:=True;
 end;

end;

procedure TForm5.ToolButton1Click(Sender: TObject);
begin
RichEdit1.SelAttributes.Style:=[fsbold];
end;

procedure TForm5.ToolButton2Click(Sender: TObject);
begin
RichEdit1.SelAttributes.Style:=[fsItalic]; 
end;

procedure TForm5.ToolButton3Click(Sender: TObject);
begin
RichEdit1.SelAttributes.Style:=[fsUnderLine]; 
end;

procedure TForm5.ToolButton4Click(Sender: TObject);
begin
RichEdit1.Paragraph.Alignment:=taLeftjustify; 
end;

procedure TForm5.ToolButton5Click(Sender: TObject);
begin
RichEdit1.Paragraph.Alignment:=taCenter; 
end;

procedure TForm5.ToolButton6Click(Sender: TObject);
begin
RichEdit1.Paragraph.Alignment:=taRightjustify; 
end;

end.
