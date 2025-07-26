unit uCalculadora;

interface

uses
  uOperacaoIntf;

type
  TTipoOperacao = (toSomar, toSubtrair, toDividir, toMuliplicar);

  TCalculadora = class
  private
    FNumeroA: Double;   // 10,5
    FNumeroB: Double;
    FOperacao: IOperacao;


  public
    {Métodos SET}
    function SetNumeroA(const AValor: Double): TCalculadora;
    function SetNumeroB(const AValor: Double): TCalculadora;
    function SetOperacao(const ATipoOperacao: TTipoOperacao): TCalculadora;

    {Métodos GET}
    function GetResultado(): Double;
    function GetHistorico(): string;
  end;


implementation

{ TCalculadora }

uses
  uOperacaoSomarImpl,
  System.SysUtils, uOperacaoDividirImpl, uOperacaoMultiplicarImpl,
  uOperacaoSubtrairImpl;

function TCalculadora.GetHistorico: string;
begin       { 5 + 9 = 14}
  Result := FNumeroA.ToString + ' ' +
            FOperacao.GetOperador + ' ' +
            FNumeroB.ToString + ' = ' +
            FOperacao.GetResultado.ToString;
end;

function TCalculadora.GetResultado: Double;
begin
  FOperacao.SetNumeroA(FNumeroA);
  FOperacao.SetNumeroB(FNumeroB);
  Result := FOperacao.GetResultado;
end;

function TCalculadora.SetNumeroA(const AValor: Double): TCalculadora;
begin
  Result := Self;

  FNumeroA := AValor;
end;

function TCalculadora.SetNumeroB(const AValor: Double): TCalculadora;
begin
  Result := Self;

  FNumeroB := AValor;
end;

function TCalculadora.SetOperacao(const ATipoOperacao: TTipoOperacao): TCalculadora;
begin
  case ATipoOperacao of
    toSomar: FOperacao := TOperacaoSomar.Create;
    toSubtrair: FOperacao := TOperacaoSubtrair.Create;
    toDividir: FOperacao := TOperacaoDividir.Create;
    toMuliplicar: FOperacao := TOperacaoMultiplicar.Create;
  end;

end;

end.
