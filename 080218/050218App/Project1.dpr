program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FMain},
  Unit2 in 'Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {FORG};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFORG, FORG);
  Application.Run;
end.
