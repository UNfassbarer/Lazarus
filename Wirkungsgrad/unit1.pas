unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_Calculate: TButton;
    E_E_zu: TEdit;
    E_E_ab: TEdit;
    E_output: TEdit;
    L_Head: TLabel;
    L_show_dez: TLabel;
    L_energy_1: TLabel;
    L_energy_2: TLabel;
    L_Simis: TLabel;
    L_Bilanz: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    Scroll: TScrollBar;
    procedure B_CalculateClick(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure ScrollChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.B_CalculateClick(Sender: TObject);
begin
  E_output.Caption:= FloatToStrF(StrTOFloat(E_E_ab.Caption)/StrTOFloat(E_E_zu.Caption),ffFixed,7,Scroll.Position);
  E_E_zu.SetFocus;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
ShowMessage('Das Programm wurde am ' + DateToStr(Date) + ' um ' + TimeToStr(Time) + ' Uhr beendet');
Application.Terminate;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
E_E_zu.Clear;
E_E_ab.Clear;
E_output.Clear;
{
Scroll.Position := 0;
ScrollChange(Scroll);
}
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
ShowMessage('Programm_version: 2.0');
end;

procedure TForm1.ScrollChange(Sender: TObject);
begin
L_show_dez.Caption:= IntTOStr(Scroll.Position);
B_CalculateClick(Scroll);
end;

end.

