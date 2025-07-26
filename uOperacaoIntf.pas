unit uOperacaoIntf;

interface

type
  IOperacao = interface
    function SetNumeroA(const AValor: Double): IOperacao;
    function SetNumeroB(const AValor: Double): IOperacao;
    function GetResultado(): Double;
    function GetOperador(): string;
  end;

implementation

end.
