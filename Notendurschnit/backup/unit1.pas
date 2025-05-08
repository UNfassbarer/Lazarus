unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_Exit: TButton;
    E_Ausgabe: TEdit;
    E_Eingabe: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    L_Scroll: TLabel;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ScrollBar1: TScrollBar;
    procedure E_EingabeKeyPress(Sender: TObject; var Key: char);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
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


procedure TForm1.E_EingabeKeyPress(Sender: TObject; var Key: char);
begin
  IF Key = Chr(13) Then
  begin
  Counter:= Counter +1;
  Notes:= Notes + StrToFloat(E_Eingabe.Caption);
  Durschschnitt:= Notes/Counter;
  E_Ausgabe.Caption:= FloatToStrF(Durschschnitt, ffFixed, 7, ScrollBar1.Position);
  E_Eingabe.clear;
  end;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
begin
E_Eingabe.Clear;
E_Ausgabe.Clear;
Counter:=0;
Notes:=0;
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
ShowMessage('Das Programm wurde am ' + DateToStr(Date) + ' um ' + TimeToStr(Time) + ' Uhr beendet');
Application.Terminate;
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
L_Scroll.Caption:=IntToStr(ScrollBar1.Position);
end;

end.

