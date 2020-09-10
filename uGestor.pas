unit uGestor;

interface

uses System.SysUtils, uPessoa;

type

  TGestor = class(TPessoa)

Private

  FHoraExtra: string;

  function getHoraExtra: string;
  procedure setHoraExtra(Value: string);

Public

  property hora: string read getHoraExtra write setHoraExtra;

  function CalculaSala: Double;

end;

implementation

function TGestor.getHoraExtra: string;
begin
  Result := FHoraExtra;
end;

procedure TGestor.setHoraExtra(Value: string);
begin
  FHoraExtra := Value;
end;


function TGestor.CalculaSala: Double;
begin
  Result := StrToFloat(salario) + StrToInt(hora);
end;

end.
