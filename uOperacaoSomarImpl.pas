unit uOperacaoSomarImpl;

interface

uses
  uOperacaoIntf;

type
  TOperacaoSomar = class(TInterfacedObject, IOperacao)
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

{ TOperacaoSomar }

function TOperacaoSomar.GetOperador: string;
begin
  Result := '+';
end;

function TOperacaoSomar.GetResultado: Double;
begin
  Result := FNumeroA + FNumeroB;
end;

function TOperacaoSomar.SetNumeroA(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroA := AValor;
end;

function TOperacaoSomar.SetNumeroB(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroB := AValor;
end;

end.
