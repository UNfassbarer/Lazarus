unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    B_date: TButton;
    B_time: TButton;
    E_in_out: TEdit;
    procedure B_dateClick(Sender: TObject);
    procedure B_timeClick(Sender: TObject);
  private
  public
    procedure Show_Time;
    procedure Show_Date;
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Show_Time;
begin
  E_in_out.Caption:=TimeToStr(Time);
end;

procedure TForm1.Show_Date;
begin
  E_in_out.Caption:=DateToStr(Date);
end;

procedure TForm1.B_dateClick(Sender: TObject);
begin
Show_Date;
end;

procedure TForm1.B_timeClick(Sender: TObject);
begin
Show_Time;
end;
end.
