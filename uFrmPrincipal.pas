unit uFrmPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, uVendedor, uGestor,
  uPessoa;

type
  TForm1 = class(TForm)
    BtnCadastrar: TButton;
    EdtNome: TEdit;
    EdtCargo: TEdit;
    EdtCPF: TEdit;
    EdtHoraExtra: TEdit;
    BtnVisualizar: TButton;
    EdtCodigo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure BtnCadastrarClick(Sender: TObject);
    procedure BtnVisualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Vendedor: TVendedor;
  Gestor: TGestor;
  Pessoa: TPessoa;
  Cadastros: array [1 .. 100] of string;

implementation

{$R *.dfm}

procedure TForm1.BtnCadastrarClick(Sender: TObject);
begin
  Pessoa := TPessoa.Create;
  Vendedor := TVendedor.Create;
  Gestor := TGestor.Create;

  if EdtCargo.Text = 'Vendedor' then

  begin
    Pessoa.atual := StrToInt(EdtCodigo.Text);
    Vendedor.nome := EdtNome.Text;
    Vendedor.CPF := EdtCPF.Text;
    Vendedor.salario := '2000';
    Vendedor.comissao := 15 / 100 * StrToFloat(Vendedor.salario);
    ShowMessage('Nome: ' + Vendedor.nome + #13 + 'CPF: ' + Vendedor.CPF + #13 +
      'Salário: ' + FloatToStr(Vendedor.CalculaSal));
    Cadastros[Pessoa.atual] := ('Nome: ' + Vendedor.nome + #13 + 'CPF: ' +
      Vendedor.CPF + #13 + 'Salário: ' + FloatToStr(Vendedor.CalculaSal));
  end;

  if EdtCargo.Text = 'Gestor' then

  begin
    Pessoa.atual := StrToInt(EdtCodigo.Text);
    Gestor.nome := EdtNome.Text;
    Gestor.CPF := EdtCPF.Text;
    Gestor.salario := '3000';
    Gestor.hora := EdtHoraExtra.Text;
    ShowMessage('Nome: ' + Gestor.nome + #13 + 'CPF: ' + Gestor.CPF + #13 +
      'Salário: ' + FloatToStr(Gestor.CalculaSala));
    Cadastros[Pessoa.atual] := ('Nome: ' + Gestor.nome + #13 + 'CPF: ' +
      Gestor.CPF + #13 + 'Salário: ' + FloatToStr(Gestor.CalculaSala));
  end;

end;

procedure TForm1.BtnVisualizarClick(Sender: TObject);
var
  I: Integer;
begin
  Pessoa.atual := StrToInt(EdtCodigo.Text);
  ShowMessage(Cadastros[Pessoa.atual]);
end;

end.
