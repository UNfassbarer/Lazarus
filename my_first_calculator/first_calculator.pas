unit first_calculator;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.Edit2Change(Sender: TObject);
begin

end;

procedure TForm1.Edit3Change(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  oper: Char;
  first_num, second_num, output: Integer;
begin
  first_num := StrToInt(Edit1.Text);
  second_num := StrToInt(Edit2.Text);
  oper := Label1.Caption[1];  // Erstes Zeichen aus Label1.Caption extrahieren

  case oper of
    '+': output := first_num + second_num;
    '-': output := first_num - second_num;
  else
    raise Exception.Create('Ungültiges Rechenzeichen!');
  end;

  Edit3.Text := IntToStr(output); // Ausgabe NACH dem case-Block
end;

procedure TForm1.Button2Click(Sender: TObject);

begin
  Label1.Caption:='+';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    Label1.Caption:='-';
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

