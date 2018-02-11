unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TFMain = class(TForm)
    MainMenu1: TMainMenu;
    ables1: TMenuItem;
    Organization1: TMenuItem;
    Phonesoforganizations1: TMenuItem;
    Persons1: TMenuItem;
    Phonesofpersons1: TMenuItem;
    Phonenumbers1: TMenuItem;
    owns1: TMenuItem;
    Rubrics1: TMenuItem;
    Documents1: TMenuItem;
    Phonenumbersoftowsorderbynameoftown1: TMenuItem;
    Phonenumbersofpersonsforselectedtownorderbysurname1: TMenuItem;
    Phonenumbersoforganizationgroupbytownsandrubrics1: TMenuItem;
    Phonenumberoforganizationsforselectedtownandrubric1: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Organization1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

uses
  Unit2, Unit3;

{$R *.dfm}

procedure TFMain.FormShow(Sender: TObject);
begin
  //Открытие БД
  DM.IBDB_phonebook.Open;
  DM.IBTransaction1.Active:=true;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Закрытие БД
  DM.IBDB_phonebook.Close;
end;

procedure TFMain.Organization1Click(Sender: TObject);
begin
  //Открытие формы просмотра списка организаций
  FORG.ShowModal;
end;

end.
 