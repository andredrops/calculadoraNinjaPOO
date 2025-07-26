unit uOperacaoSubtrairImpl;

interface

uses
  uOperacaoIntf;

type
  TOperacaoSubtrair = class(TInterfacedObject, IOperacao)
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

{ TOperacaoSubtrair }

function TOperacaoSubtrair.GetOperador: string;
begin
  Result := '-';
end;

function TOperacaoSubtrair.GetResultado: Double;
begin
  Result := FNumeroA - FNumeroB;
end;

function TOperacaoSubtrair.SetNumeroA(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroA := AValor;
end;

function TOperacaoSubtrair.SetNumeroB(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroB := AValor;
end;

end.

