unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    bt_sum: TButton;
    bt_sub: TButton;
    bt_multi: TButton;
    bt_div: TButton;
    ed_num_1: TEdit;
    ed_num_2: TEdit;
    final: TEdit;
    Label1: TLabel;
    Taschenrechner: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_divClick(Sender: TObject);
    procedure bt_multiClick(Sender: TObject);
    procedure bt_subClick(Sender: TObject);
    procedure bt_sumClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TaschenrechnerClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bt_sumClick(Sender: TObject);
begin
  final.Caption:= FloatToStr(StrToFloat(ed_num_1.Caption) + StrToFloat(ed_num_2.Caption));
  Label1.Caption:='+';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
end;

procedure TForm1.TaschenrechnerClick(Sender: TObject);
begin
end;

procedure TForm1.bt_subClick(Sender: TObject);
begin
  final.Caption:= FloatToStr(StrToFloat(ed_num_1.Caption) - StrToFloat(ed_num_2.Caption));
   Label1.Caption:='-';
end;

procedure TForm1.bt_multiClick(Sender: TObject);
begin
  final.Caption:= FloatToStr(StrToFloat(ed_num_1.Caption) * StrToFloat(ed_num_2.Caption));
   Label1.Caption:='*';
end;

procedure TForm1.bt_divClick(Sender: TObject);
begin
  final.Caption:= FloatToStr(StrToFloat(ed_num_1.Caption) / StrToFloat(ed_num_2.Caption));
   Label1.Caption:='/';
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  ed_num_1.Clear;
  ed_num_2.Clear;
  final.Clear;

end;

end.

