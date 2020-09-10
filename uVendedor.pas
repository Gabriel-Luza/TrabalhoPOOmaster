unit uVendedor;

interface

uses System.SysUtils, uPessoa;

type

  TVendedor = class(TPessoa)

  Private

    FComissao: Double;

    function getComissao: Double;
    procedure setComissao(Value: Double);

  Public

    property comissao: Double read getComissao write setComissao;

    function CalculaSalario: Double;

  end;

implementation

function TVendedor.getComissao: Double;
begin
  Result := FComissao;
end;

procedure TVendedor.setComissao(Value: Double);
begin
  FComissao := Value;
end;

function TVendedor.CalculaSalario: Double;
begin
  Result := StrToFloat(salario) + comissao;
end;

end.
