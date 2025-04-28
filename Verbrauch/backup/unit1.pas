unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ScrollBar1: TScrollBar;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    procedure FormCreate(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
  private
    procedure fuel_consumption(l,km:string);

  public

  end;

var
  Form1: TForm1;
  consumption: string;

implementation

{$R *.lfm}

{ TForm1 }
procedure Tform1.fuel_consumption(l,km:string);
begin
consumption:= FloatToStrF(((StrToFloat(l))*100/(StrToFloat(km))), ffFixed, 7, ScrollBar1.Position);
end;

procedure TForm1.ScrollBar1Change(Sender: TObject);
begin
Label5.Caption:=IntToStr(ScrollBar1.Position);
fuel_consumption(Edit1.Text,Edit2.Text);
Edit3.Text:= consumption;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
UpDown1.Min := -10000;
UpDown2.Min := -10000;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
Edit1.Text:= IntToStr(UpDown1.Position);
end;

procedure TForm1.UpDown2Click(Sender: TObject; Button: TUDBtnType);
begin
Edit2.Text:= IntToStr(UpDown2.Position);
end;


end.

