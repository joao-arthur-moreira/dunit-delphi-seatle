unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function isPrimo(valor: integer): boolean;
    function isMultiplo(x,y: integer): boolean;
    function media(a,b,c: double):double;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin
  if isPrimo(StrToInt(Edit1.Text)) then
    ShowMessage('Primo')
  else
    ShowMessage('Não primo');
end;

function TForm2.isMultiplo(x, y: integer): boolean;
begin
  Result := (x mod y) = 0;
end;

function TForm2.isPrimo(valor: integer): boolean;
var
  i, p: integer;
begin
  Result := False;
  p:= 0;
  for i := 1 to valor do
    if (valor mod i) = 0 then
      inc(p);
  if (p=2) then
    Result := True;
end;

function TForm2.media(a, b, c: double): double;
begin
  result := (a+b+c)/3;
end;

end.
