unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_area: TButton;
    B_radius: TButton;
    Button3: TButton;
    B_clear: TButton;
    E_diameter: TEdit;
    E_ausgabe: TEdit;
    L_diameter: TLabel;
    L_ausgabe: TLabel;
    procedure B_areaClick(Sender: TObject);
    procedure B_clearClick(Sender: TObject);
    procedure B_radiusClick(Sender: TObject);
  private

  public

  end;
var
  Form1: TForm1;

implementation
uses Math;
{$R *.lfm}

{ TForm1 }
procedure TForm1.B_areaClick(Sender: TObject);
begin
  E_ausgabe.Caption:= FloatToStr(pi/4*StrToFloat(E_diameter.Caption)*StrToFloat(E_diameter.Caption));
end;

procedure TForm1.B_clearClick(Sender: TObject);
begin
  E_ausgabe.Clear;
  E_diameter.Clear;
end;

procedure TForm1.B_radiusClick(Sender: TObject);
begin
  E_ausgabe.Caption:= FloatToStr(2*pi*(StrToFloat(E_diameter.Caption)/2));
end;

end.

