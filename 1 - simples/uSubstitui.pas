unit uSubstitui;


interface

uses
  uISubstitui, Classes, Vcl.Dialogs, System.SysUtils;

type
  TSubstitui = class(TInterfacedObject, ISubstitui)
      private
        function Substituir(Str, Velho, Novo: String): String;
       end;
  { TSubstitui }

implementation

function TSubstitui.Substituir(
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
     Posicao := pos(AnsiUpperCase(Velho), AnsiUpperCase(Retorno));

     if Posicao <> 0 then
     begin
        Delete(Retorno, Posicao, Length(Velho));
        Insert(Novo, Retorno , Posicao);
        lAchou := True;
     end;
   until not lAchou;

   Result := Retorno;
end;

end.

