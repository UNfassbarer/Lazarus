unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    B_Exit: TButton;
    B_Berechnen: TButton;
    E_Ausgabe: TEdit;
    E_Eingabe: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    L_Scroll: TLabel;
    ScrollBar1: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure B_BerechnenClick(Sender: TObject);
    procedure B_ExitClick(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Durschschnitt : real;
  Counter: real;
  Notes: real;

implementation

{$R *.lfm}

{ TForm1 }
procedure TForm1.B_BerechnenClick(Sender: TObject);
begin
   E_Eingabe.SetFocus;
   Counter:= Counter +1;
   Notes:= Notes + StrToFloat(E_Eingabe.Caption);
   Durschschnitt:= Notes/Counter;
   E_Ausgabe.Caption:= FloatToStrF(Durschschnitt, ffFixed, 7,ScrollBar1.Position);
end;

procedure TForm1.B_ExitClick(Sender: TObject);
begin
  ShowMessage('Das Programm wurde am ' + DateToStr(Date) + ' um ' + TimeToStr(Time) + ' Uhr beendet');
  Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
E_Eingabe.Clear;
E_Ausgabe.Clear;
Counter:=0;
Notes:=0;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
L_Scroll.Caption:=IntToStr(ScrollBar1.Position);
end;

end.

