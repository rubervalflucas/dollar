program dollar;

uses
  System.StartUpCopy,
  FMX.Forms,
  untprincipal in 'untprincipal.pas' {frmPrincipal},
  FachadaWSSGS1 in 'FachadaWSSGS1.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
