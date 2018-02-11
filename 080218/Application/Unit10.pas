unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tchoose_store = class(TForm)
    Label1: TLabel;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  choose_store: Tchoose_store;

implementation

uses
  Unit2, Unit8;

{$R *.dfm}

procedure Tchoose_store.FormShow(Sender: TObject);
begin
  DM.IBDSSTORE.Open;//Открываем НД
  DM.IBDSSTORE.First;//указываем на первую запись
  ComboBox1.Clear;//Очистка списка
  While not DM.IBDSSTORE.Eof do
  begin
     ComboBox1.Items.Add(
      DM.IBDSSTORE.FieldByName('STORENAME').AsString);
     DM.IBDSSTORE.Next;
  end;
  DM.IBDSSTORE.Close;
  ComboBox1.ItemIndex:=0;
end;

procedure Tchoose_store.Button1Click(Sender: TObject);
begin
  DM.IBQ_PS_totalcount.ParamByName('pstorename').Value:=ComboBox1.Text;
  DM.IBQ_PS_totalcount.Prepare;
  DM.IBQ_PS_totalcount.Open;
  F_PS_totalcount.QuickRep1.Preview;//отобразить отчет

end;

end.
