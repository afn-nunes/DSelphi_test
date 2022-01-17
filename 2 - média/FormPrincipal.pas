unit FormPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Generics.Collections, uMaquina;

type
  TCedula = (ceNota100, ceNota50, ceNota20, ceNota10, ceNota5, ceNota2,
    ceMoeda100, ceMoeda50, ceMoeda25, ceMoeda10, ceMoeda5, ceMoeda1);
  TformPrincipal = class(TForm)
    btnCalcularTroco: TButton;
    Edit1: TEdit;
    mmoResultado: TMemo;
    procedure btnCalcularTrocoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TformPrincipal;

implementation

{$R *.dfm}
uses
  uiMaquina, uTroco, TypInfo, strUtils;
procedure TformPrincipal.btnCalcularTrocoClick(Sender: TObject);
var
  lMaquina: TMaquina;
  lList: TList;
  lTroco: TTroco;
  lTipo: string;
  lValorCedula: Double;
begin
  lList := TList.Create;
  lMaquina := TMaquina.Create();
  try
    mmoResultado.Lines.Clear();
    lList := lMaquina.MontarTroco(StrToFloat(Edit1.Text));
    for lTroco in lList do
    begin
      if (Trunc(CValorCedula[lTroco.GetTipo]) - CValorCedula[lTroco.GetTipo]) <> 0 then
      begin
        lTipo := ifThen(lTroco.GetQuantidade > 1, ' moedas ', ' moeda ');
        lValorCedula := CValorCedula[lTroco.GetTipo] * 100;
      end
      else
      begin
        lTipo := ifThen(lTroco.GetQuantidade >1, ' notas ', ' nota ');
        lValorCedula := CValorCedula[lTroco.GetTipo];
      end;
      mmoResultado.Lines.Add(IntToStr(lTroco.GetQuantidade) + lTipo + ' de ' + FloatToStr(lValorCedula));
    end;
  finally
    lMaquina.Free;
    lList.Free;
  end;
end;


end.
