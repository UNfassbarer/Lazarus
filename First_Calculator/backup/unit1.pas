unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, CheckLst;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    procedure Button1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
procedure TForm1.ComboBox1Change(Sender: TObject);
begin

end;

{ TForm1 }
procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.Add('+');
  ComboBox1.Items.Add('-');
  ComboBox1.Items.Add('*');
  ComboBox1.Items.Add('/');
  UpDown1.Min := -1000;
  UpDown2.Min := -1000;
end;
//procedure TForm1.ComboBox1Change(Sender: TObject);
//begin
//end;
procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
    Edit2.Text := IntToStr(UpDown1.Position);
end;
procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
    Edit3.Text := IntToStr(UpDown2.Position);
end;
procedure TForm1.Button1Click(Sender: TObject);
var
  num1, num2, output: Double;
begin
  // Überprüfung der Eingaben: Beide Felder müssen gültige Zahlen sein
  if (not TryStrToFloat(Edit2.Text, num1)) or (not TryStrToFloat(Edit3.Text, num2)) then
  begin
    ShowMessage('Fehler: Bitte geben Sie gültige Zahlen ein!');
    Exit;
  end;

  // Überprüfung des Operators
  if not (ComboBox1.Text in ['+', '-', '*', '/']) then
  begin
    ShowMessage('Fehler: Ungültiger Operator!');
    Exit;
  end;

  // Überprüfung auf Division durch 0
  if (ComboBox1.Text = '/') and (num2 = 0) then
  begin
    ShowMessage('Fehler: Division durch 0 ist nicht erlaubt!');
    Exit;
  end;

  // Berechnung durchführen
  case ComboBox1.Text of
    '+': output := num1 + num2;
    '-': output := num1 - num2;
    '*': output := num1 * num2;
    '/': output := num1 / num2;
  end;

  // Ergebnis ausgeben
  Edit1.Text := FloatToStr(output);
end;
end.
