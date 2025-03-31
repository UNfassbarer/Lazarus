unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_area: TButton;
    B_radius: TButton;
    B_exit: TButton;
    B_clear: TButton;
    E_diameter: TEdit;
    E_ausgabe: TEdit;
    Label1: TLabel;
    L_diameter: TLabel;
    L_ausgabe: TLabel;
    procedure B_exitClick(Sender: TObject);
    procedure B_areaClick(Sender: TObject);
    procedure B_clearClick(Sender: TObject);
    procedure B_radiusClick(Sender: TObject);
    procedure E_diameterExit(Sender: TObject);
  private
 procedure Round_to_Float(num: Double);
  public
  end;
var
  Form1: TForm1;
  d :real;

implementation
{$R *.lfm}

{ TForm1 }

procedure TForm1.Round_to_Float(num: Double);
begin
 E_ausgabe.Caption := FloatToStrF(num, ffFixed, 8, 3);
end;


procedure TForm1.B_areaClick(Sender: TObject);
begin
 Round_to_Float(PI/4*sqr(d));
end;

procedure TForm1.B_exitClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.B_clearClick(Sender: TObject);
begin
  E_ausgabe.Clear;
  E_diameter.Clear;
end;

procedure TForm1.B_radiusClick(Sender: TObject);
begin
  Round_to_Float(2*PI*(d/2));
end;

procedure TForm1.E_diameterExit(Sender: TObject);
begin
  d := StrToFloat(E_diameter.Caption);
end;

end.

