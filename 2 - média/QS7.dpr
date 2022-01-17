program QS7;

uses
  Vcl.Forms,
  uTroco in 'uTroco.pas',
  uIMaquina in 'uIMaquina.pas',
  uMaquina in 'uMaquina.pas',
  FormPrincipal in 'FormPrincipal.pas' {formPrincipal};

{$R *.RES}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, frmPrincipal);
  Application.Run;
end.

