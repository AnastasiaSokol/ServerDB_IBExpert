unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TF_PS_totalcount = class(TForm)
    QuickRep1: TQuickRep;
    ColumnHeaderBand1: TQRBand;
    DetailBand1: TQRBand;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    PageFooterBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    procedure QuickRep1AfterPreview(Sender: TObject);
    procedure PageFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_PS_totalcount: TF_PS_totalcount;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TF_PS_totalcount.QuickRep1AfterPreview(Sender: TObject);
begin
  DM.IBQ_PS_totalcount.Close;//закрыли запрос
end;

procedure TF_PS_totalcount.PageFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var p:integer;
  s:string;
begin
  DM.IBSP_PS_totalcount.UnPrepare;//
  DM.IBSP_PS_totalcount.ParamByName('PID_STORE').Value:=DM.IBQ_PS_totalcount.FieldValues['ID_STORE'];
  DM.IBSP_PS_totalcount.Prepare;
  DM.IBSP_PS_totalcount.ExecProc;

  p:=DM.IBSP_PS_totalcount.ParamByName('TOTALCOUNT').Value;
  STR(p:6,s);
  QRLabel5.Caption:=s;//помещаем текст в метку
end;

end.
