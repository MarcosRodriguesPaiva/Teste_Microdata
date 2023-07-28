program Teste_Microdata;

uses
  Forms,
  u_principal in 'u_principal.pas' {frmMicroData},
  u_dm in 'u_dm.pas' {dm: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMicroData, frmMicroData);
  Application.CreateForm(Tdm, dm);
  Application.Run;
end.
