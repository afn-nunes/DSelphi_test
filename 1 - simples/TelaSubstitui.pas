unit TelaSubstitui;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtStringInicial: TEdit;
    edtStringResultado: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    function EncontrarPosicao(textoVelho, texto: string): integer;
    function Substituir(Str, Velho, Novo: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 edtStringResultado.Text := Substituir(edtStringInicial.Text, 'ro', 'teste');
end;

function TForm1.Substituir(
  Str,
  Velho,
  Novo : string) : string;
var
   Retorno: String;
   Posicao: Integer;
   lAchou: Boolean;
begin
   Retorno := Str;

   repeat
     lAchou := False;
     Posicao := pos(Velho, Retorno);

     if Posicao <> 0 then
     begin
        Delete(Retorno, Posicao, Length(Velho));
        Insert(Novo, Retorno , Posicao);
        lAchou := True;
     end;
   until not lAchou;

   Result := Retorno;
end;

function TForm1.EncontrarPosicao(textoVelho, texto: string): integer;
var
  lPosicao,
  lPosicaoAtual,
  lTamanho,
  I: integer;
begin
  Result := 0;
  lTamanho := 0;
  lPosicaoAtual := 1;
  if textoVelho.Length > texto.Length then
  Exit;

  for I := 0 to texto.Length do
  begin
    if texto[i] = textoVelho[lPosicaoAtual] then
      begin
        if lTamanho = 0 then
         lPosicao := i;
        lTamanho := lTamanho + 1;
        lPosicaoAtual := lPosicaoAtual + 1;
      end
  end;

  if lTamanho <> textoVelho.Length then
    Result := 0;
end;

end.

