unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Spin;

type

  { TForm1 }

  TForm1 = class(TForm)
    RESET: TButton;
    Convertir2: TButton;
    Convert1: TButton;
    CONVERTISSEUR: TLabel;
    Euro: TFloatSpinEdit;
    Rouble: TFloatSpinEdit;
    Rep2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Rep1: TLabel;
    procedure Convert1Click(Sender: TObject);
    procedure Convertir2Click(Sender: TObject);
    procedure RESETClick(Sender: TObject);


  private

  public

  end;

var
  Form1: TForm1;
  Nb1, Nb2 : Double;


{$R *.lfm}

{ TForm1 }

implementation

procedure TForm1.Convert1Click(Sender: TObject);
var
  res:double;
begin
  Nb1:=Euro.Value;
  res:=Nb1*75.84;
  Rep1.caption:=FloatToStr(res);
end;

procedure TForm1.Convertir2Click(Sender: TObject);
  var
    res:double;
begin
  Nb2:=Rouble.Value;
  res:=Nb2/75.84;
  Rep2.caption:=FloatToStr(res);
end;

procedure TForm1.RESETClick(Sender: TObject);
begin
  Nb1:=0;
  Nb2:=0;
  Rep1.caption:=FloatToStr(0);
  Rep2.caption:=FloatToStr(0);
  Euro.Value:=0;
  Rouble.Value:=0;
end;

BEGIN


end.

