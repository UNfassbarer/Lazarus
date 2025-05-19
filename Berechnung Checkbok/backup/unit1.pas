unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    CB_area: TCheckBox;
    CB_scope: TCheckBox;
    E_input_2: TEdit;
    E_input_1: TEdit;
    E_area: TEdit;
    E_scope: TEdit;
    Label1: TLabel;
    L_2: TLabel;
    L_ausgabe: TLabel;
    L_1: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    RB_quardat: TRadioButton;
    RB_Kreis: TRadioButton;
    RB_rechteck: TRadioButton;
    procedure CB_areaChange(Sender: TObject);
    procedure CB_scopeChange(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure RB_KreisChange(Sender: TObject);
    procedure RB_quardatChange(Sender: TObject);
    procedure RB_rechteckChange(Sender: TObject);
  private
    procedure Calculate(a: String);
    procedure Check_Box_Input();
    procedure Check_Number_Input();
  public
  end;

var
  Form1: TForm1;
  inputValid: Boolean;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Check_Number_Input();
var
  dummy: Double;
begin
  inputValid := True; // assume inputs are valid

  if RB_rechteck.Checked then
  begin
    if (not TryStrToFloat(E_input_1.Text, dummy)) or (not TryStrToFloat(E_input_2.Text, dummy)) then
      inputValid := False;
  end
  else
  begin
    if not TryStrToFloat(E_input_1.Text, dummy) then
      inputValid := False;
  end;
end;

procedure TForm1.Check_Box_Input();
begin
  if CB_area.Checked then Calculate('area') else E_area.Clear;
  if CB_scope.Checked then Calculate('scope') else E_scope.Clear;
end;

procedure TForm1.Calculate(a: String);
var
  val1, val2: Double;
begin
  Check_Number_Input();
  if not inputValid then
  begin
    ShowMessage('Please enter valid numeric input.');
    Exit;
  end;

  val1 := StrToFloat(E_input_1.Text);
  if RB_rechteck.Checked then val2 := StrToFloat(E_input_2.Text);

  if RB_rechteck.Checked then
  begin
    if a = 'area' then
      E_area.Text := FloatToStrF(val1 * val2, ffFixed, 3, 7)
    else
      E_scope.Text := FloatToStrF(2 * (val1 + val2), ffFixed, 3, 7);
  end
  else if RB_Kreis.Checked then
  begin
    if a = 'area' then
      E_area.Text := FloatToStrF((PI / 4) * val1 * val1, ffFixed, 3, 7)
    else
      E_scope.Text := FloatToStrF(2 * PI * val1, ffFixed, 3, 7);
  end
  else // Quadrat
  begin
    if a = 'area'

