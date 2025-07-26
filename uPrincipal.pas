unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.NumberBox, Vcl.Buttons, uCalculadora;

type
  TfView = class(TForm)
    pnFundoDisplay: TPanel;
    pnFundo: TPanel;
    pnFundoBotoes: TPanel;
    pnFundoOperacoes: TPanel;
    pnFundoBotoesNumericos: TPanel;
    pnLinha4: TPanel;
    btn0: TBitBtn;
    pnLinha3: TPanel;
    btn3: TBitBtn;
    btn2: TBitBtn;
    btn1: TBitBtn;
    pnLinha2: TPanel;
    btn6: TBitBtn;
    btn5: TBitBtn;
    btn4: TBitBtn;
    pnLinha1: TPanel;
    BitBtn10: TBitBtn;
    btn8: TBitBtn;
    btn7: TBitBtn;
    btnIgual: TBitBtn;
    btnDividir: TBitBtn;
    btnSubtrair: TBitBtn;
    btnSomar: TBitBtn;
    btnMultiplicar: TBitBtn;
    btnLimpar: TBitBtn;
    edDisplay: TEdit;
    edHistorico: TEdit;
    procedure btn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnSomarClick(Sender: TObject);
    procedure btnIgualClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
  private
    FCalculadara: TCalculadora;
  public
    { Public declarations }
  end;

var
  fView: TfView;

implementation

uses
  System.SysUtils;

{$R *.dfm}

procedure TfView.btn7Click(Sender: TObject);
begin

  if edDisplay.Text = '0' then
    edDisplay.Clear;


  edDisplay.Text  := edDisplay.Text + TBitBtn(Sender).Caption ;

  {
   Tipos de Dados
   String = Caracteres = simbolos  ex.: a b c d 0 1 2 ..9 ; . / # $ 7 + 7 = 77
   Numerico = 0 1 2 45 8(Inteiros = Integer)  2,85 7,5(Decimais = Double)
   Boleano = Verdadeiro ou falso (Boelano = Boolean)
  }

end;

procedure TfView.btnSomarClick(Sender: TObject);
var
  LNumero: Double;
begin
  LNumero := StrToFloat(edDisplay.Text);

  FCalculadara.SetNumeroA(LNumero);

  if TBitBtn(Sender).Caption = '+' then
    FCalculadara.SetOperacao(toSomar);

  if TBitBtn(Sender).Caption = '-' then
    FCalculadara.SetOperacao(toSubtrair);

  if TBitBtn(Sender).Caption = '/' then
    FCalculadara.SetOperacao(toDividir);

  if TBitBtn(Sender).Caption = '*' then
    FCalculadara.SetOperacao(toMuliplicar);


  edDisplay.Text := '0';

end;


procedure TfView.btnIgualClick(Sender: TObject);
var
  LNumero: Double;
begin
  LNumero := StrToFloat(edDisplay.Text);

  FCalculadara.SetNumeroB(LNumero);

  edDisplay.Text := FCalculadara.GetResultado.ToString;

  edHistorico.Text := FCalculadara.GetHistorico;

end;

procedure TfView.btnLimparClick(Sender: TObject);
begin
  edDisplay.Text := '0';
  edHistorico.Clear;
end;

procedure TfView.FormCreate(Sender: TObject);
begin
  FCalculadara := TCalculadora.Create;
end;

procedure TfView.FormDestroy(Sender: TObject);
begin
  FCalculadara.Free;
end;

end.
