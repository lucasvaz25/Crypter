program Crypter;

uses
  Vcl.Forms,
  uAplicacao in 'uAplicacao.pas' {Aplicacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAplicacao, Aplicacao);
  Application.Run;
end.
