unit uMaquina;

interface

uses
  uIMaquina, Classes, System.Generics.Collections;

type
  TMaquina = class(TInterfacedObject, IMaquina)
  public
    function MontarTroco(Troco: Double): TList;
  end;



implementation

uses math, uTroco;

function TMaquina.MontarTroco(Troco: Double): TList;
var
  lQuantidadeDeNotas: Integer;
  lLista: TList;
  i:TCedula;
begin
  lLista := TList.Create();
  try
    for i := Low(CValorCedula) to High(CValorCedula) do
    begin
      lQuantidadeDeNotas := trunc(Troco / CValorCedula[i]);
      if lQuantidadeDeNotas > 0 then
      begin
        lLista.Add(TTroco.Create(i, lQuantidadeDeNotas));
        Troco := Troco - (lQuantidadeDeNotas * CValorCedula[i]);
      end;
    end;

    Result :=  lLista;
  finally

  end;
end;

end.

