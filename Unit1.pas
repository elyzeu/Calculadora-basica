unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Value1: TEdit;
    Value2: TEdit;
    Resultado: TEdit;
    Somar: TButton;
    Dividir: TButton;
    Substrair: TButton;
    Multiplicar: TButton;
    procedure SomarClick(Sender: TObject);
    procedure DividirClick(Sender: TObject);
    procedure SubstrairClick(Sender: TObject);
    procedure MultiplicarClick(Sender: TObject);
  private
    { Private declarations }
    function Soma(value1, value2: Integer): Integer;
    function Multiplica(value1, value2: Integer): Integer;
    function Divide(value1, value2: Double): Double;
    function Subtrair(value1, value2: integer): Integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation




{$R *.dfm}

function TForm1.Soma(value1, value2: Integer): Integer;
begin
  Result := value1 + value2;
end;

procedure TForm1.SubstrairClick(Sender: TObject);
var
  valor1, valor2, resul: Integer;
begin
  valor1 := StrToInt(Value1.Text);
  valor2 := StrToInt(Value2.Text);

  resul := Subtrair(valor1, valor2);

  Resultado.Text := IntToStr(resul);
end;

function TForm1.Subtrair(value1, value2: Integer): Integer;
begin
            result := value1 - value2;
end;

function TForm1.Multiplica(value1, value2: Integer): Integer;
begin
  Result := value1 * value2;
end;

procedure TForm1.MultiplicarClick(Sender: TObject);
var
  valor1, valor2, resul: Integer;
begin
  valor1 := StrToInt(Value1.Text);
  valor2 := StrToInt(Value2.Text);

  resul := Multiplica(valor1, valor2);

  Resultado.Text := IntToStr(resul);
end;

function TForm1.Divide(value1, value2: Double): Double;
begin
  if (value2 = 0) then
  begin
    ShowMessage('Impossível dividir por zero.');
    Result := 0;
  end
  else
  begin
    Result := value1 / value2;
  end;
end;



procedure TForm1.SomarClick(Sender: TObject);
var
  valor1, valor2, resul: Integer;
begin
  valor1 := StrToInt(Value1.Text);
  valor2 := StrToInt(Value2.Text);

  resul := Soma(valor1, valor2);

  Resultado.Text := IntToStr(resul);
end;

procedure TForm1.DividirClick(Sender: TObject);
var
  valor1, valor2: Double;
  resul: Double;
begin
  valor1 := StrToFloat(Value1.Text);
  valor2 := StrToFloat(Value2.Text);

  resul := Divide(valor1, valor2);

  Resultado.Text := FloatToStr(resul);
end;

end.

