unit uPessoa;

interface

uses System.SysUtils;

type

  TPessoa = class

Private

  FNome: string;
  FCPF: string;
  FSalario: string;
  FAtual: integer;
  FProximo: integer;

  function getNome: string;
  procedure setNome(Value: string);

  function getCPF: string;
  procedure setCPF(Value: string);

  function getSalario: string;
  procedure setSalario(Value: string);

  function getAtual: integer;
  procedure setAtual(Value: integer);

Public

  property nome: string read getNome write setNome;
  property CPF: string read getCPF write setCPF;
  property salario: string read getSalario write setSalario;
  property atual: integer read getAtual write setAtual;

end;

implementation

function TPessoa.getNome: string;
begin
  Result := FNome;
end;

procedure TPessoa.setNome(Value: string);
begin
  FNome := Value;
end;

function TPessoa.getCPF: string;
begin
  Result := FCPF;
end;

procedure TPessoa.setCPF(Value: string);
begin
  FCPF := Value;
end;

function TPessoa.getSalario: string;
begin
  Result := FSalario;
end;

procedure TPessoa.setSalario(Value: string);
begin
  FSalario := Value;
end;

function TPessoa.getAtual: integer;
begin
  Result := FAtual;
end;

procedure TPessoa.setAtual(Value: integer);
begin
  FAtual := Value;
end;

end.
