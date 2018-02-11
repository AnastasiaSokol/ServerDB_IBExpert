program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in '..\App\Unit2.pas' {DM: TDataModule},
  Unit3 in 'Unit3.pas' {FORMPRODUCT},
  Unit4 in 'Unit4.pas' {FORMSTORE},
  Unit5 in 'Unit5.pas' {FORMSTOREHOUSE},
  Unit6 in 'Unit6.pas' {FORMPRODUCTSTORE},
  Unit7 in 'Unit7.pas' {FORMPRODUCTSTOREHOUSE},
  Unit8 in 'Unit8.pas' {F_PS_totalcount},
  Unit9 in 'Unit9.pas' {F_PSH_STOIM_FOR_SH},
  Unit10 in 'Unit10.pas' {choose_store};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFORMPRODUCT, FORMPRODUCT);
  Application.CreateForm(TFORMSTORE, FORMSTORE);
  Application.CreateForm(TFORMSTOREHOUSE, FORMSTOREHOUSE);
  Application.CreateForm(TFORMPRODUCTSTORE, FORMPRODUCTSTORE);
  Application.CreateForm(TFORMPRODUCTSTOREHOUSE, FORMPRODUCTSTOREHOUSE);
  Application.CreateForm(TF_PS_totalcount, F_PS_totalcount);
  Application.CreateForm(TF_PSH_STOIM_FOR_SH, F_PSH_STOIM_FOR_SH);
  Application.CreateForm(Tchoose_store, choose_store);
  Application.Run;
end.
