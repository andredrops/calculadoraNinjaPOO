program Calculadora;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {fView},
  uCalculadora in 'uCalculadora.pas',
  uOperacaoIntf in 'uOperacaoIntf.pas',
  uOperacaoSomarImpl in 'uOperacaoSomarImpl.pas',
  uOperacaoSubtrairImpl in 'uOperacaoSubtrairImpl.pas',
  uOperacaoDividirImpl in 'uOperacaoDividirImpl.pas',
  uOperacaoMultiplicarImpl in 'uOperacaoMultiplicarImpl.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfView, fView);
  Application.Run;
end.
