unit uOperacaoDividirImpl;

interface

uses
  uOperacaoIntf;

type
  TOperacaoDividir = class(TInterfacedObject, IOperacao)
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

uses
  System.SysUtils;

{ TOperacaoDividir }

function TOperacaoDividir.GetOperador: string;
begin
  Result := '/';
end;

function TOperacaoDividir.GetResultado: Double;
begin
  if FNumeroB = 0 then
    raise Exception.Create('Não pode ser dividido por zero!');

  Result := FNumeroA / FNumeroB;
end;

function TOperacaoDividir.SetNumeroA(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroA := AValor;
end;

function TOperacaoDividir.SetNumeroB(const AValor: Double): IOperacao;
begin
  Result := Self;

  FNumeroB := AValor;
end;

end.

