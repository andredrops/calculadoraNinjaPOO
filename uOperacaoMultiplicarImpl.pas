unit uOperacaoMultiplicarImpl;

interface

uses
  uOperacaoIntf;

type
  TOperacaoMultiplicar = class(TInterfacedObject, IOperacao)
  private
    FNumeroA: Double;
    FNumeroB: Double;

    function SetNumeroA(const AValor: Double): IOperacao;
    function SetNumeroB(const AValor: Double): IOperacao;
    function GetResultado(): Double;
    function GetOperador(): string;
  public

  end;


implementation

{ TOperacaoMultiplicar }

function TOperacaoMultiplicar.GetOperador: string;
begin
  Result := '*';
end;

function TOperacaoMultiplicar.GetResultado: Double;
begin
  Result := FNumeroA * FNumeroB;
end;

function TOperacaoMultiplicar.SetNumeroA(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroA := AValor;
end;

function TOperacaoMultiplicar.SetNumeroB(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroB := AValor;
end;

end.

