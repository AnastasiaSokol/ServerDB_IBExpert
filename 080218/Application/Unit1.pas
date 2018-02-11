unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    able1: TMenuItem;
    PRODUCT1: TMenuItem;
    STORE1: TMenuItem;
    STOREHOUSE1: TMenuItem;
    PRODUCTSTORE1: TMenuItem;
    PRODUCTSTOREHOUSE1: TMenuItem;
    REPORT1: TMenuItem;
    OTALCOUTOFPRODUCTFORCHOOSENSTORE1: TMenuItem;
    REPORTFORSTOREHOUSES1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PRODUCT1Click(Sender: TObject);
    procedure STORE1Click(Sender: TObject);
    procedure STOREHOUSE1Click(Sender: TObject);
    procedure PRODUCTSTORE1Click(Sender: TObject);
    procedure PRODUCTSTOREHOUSE1Click(Sender: TObject);
    procedure OTALCOUTOFPRODUCTFORCHOOSENSTORE1Click(Sender: TObject);
    procedure REPORTFORSTOREHOUSES1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Unit2,Unit3,Unit4,Unit5,Unit6,Unit7,Unit8,Unit9,Unit10;

{$R *.dfm}

procedure TForm1.FormShow(Sender: TObject);
begin
 DM.IBDBStore.Open;//Открыть БД
 DM.IBTransaction1.Active:=true;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.IBDBStore.Close;//Закоываем БД
end;

procedure TForm1.PRODUCT1Click(Sender: TObject);
begin
   FORMPRODUCT.ShowModal;//открываем форму
end;

procedure TForm1.STORE1Click(Sender: TObject);
begin
  FORMSTORE.ShowModal;//открываем форму
end;

procedure TForm1.STOREHOUSE1Click(Sender: TObject);
begin
  FORMSTOREHOUSE.ShowModal;
end;

procedure TForm1.PRODUCTSTORE1Click(Sender: TObject);
begin
  FORMPRODUCTSTORE.ShowModal;
end;


procedure TForm1.PRODUCTSTOREHOUSE1Click(Sender: TObject);
begin
  FORMPRODUCTSTOREHOUSE.ShowModal;
end;

procedure TForm1.OTALCOUTOFPRODUCTFORCHOOSENSTORE1Click(Sender: TObject);
begin
  choose_store.ShowModal;//открываем форму выбора магазина
end;

procedure TForm1.REPORTFORSTOREHOUSES1Click(Sender: TObject);
begin
  DM.IBQ_PSH_STOIM_FOR_SH.Open;  //открыть запрос
  F_PSH_STOIM_FOR_SH.QuickRep1.Preview;//отобразить отчет
end;

end.
