unit U_quadrat;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Zahl_1: TEdit;
    Zahl_2: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  Zahl,Quadrat,Wurzel:real;
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    Zahl:= StrToFloat(Zahl_1.Text);
    Quadrat:= SQR(Zahl);
    Zahl_2.Text := FloatToStr(Quadrat)
end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

end.
