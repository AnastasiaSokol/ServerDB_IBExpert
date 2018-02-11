unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  TF_PSH_STOIM_FOR_SH = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRBand1: TQRBand;
    QRGroup1: TQRGroup;
    QRLabel6: TQRLabel;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PSH_STOIM_FOR_SH: TF_PSH_STOIM_FOR_SH;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TF_PSH_STOIM_FOR_SH.QuickRep1AfterPreview(Sender: TObject);
begin
  DM.IBQ_PSH_STOIM_FOR_SH.Close;//закрыли запрос
end;

procedure TF_PSH_STOIM_FOR_SH.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var p:integer;
  s:string;
begin
  DM.IBStoredProc1.UnPrepare;//
  DM.IBStoredProc1.ParamByName('PID_STOREHOUSE').Value:=DM.IBQ_PSH_STOIM_FOR_SH.FieldValues['ID_STOREHOUSE'];
  DM.IBStoredProc1.Prepare;
  DM.IBStoredProc1.ExecProc;

  p:=DM.IBStoredProc1.ParamByName('STOIMOST').Value;
  STR(p:6,s);
  QRLabel8.Caption:=s;//помещаем текст в метку

end;

end.
