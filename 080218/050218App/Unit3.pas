//ORGANIZATIONS
unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls;

type
  TFORG = class(TForm)
    DBGrid1: TDBGrid;
    Close: TButton;
    DBNavigator1: TDBNavigator;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    town: TLabel;
    rubric: TLabel;
    country: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure CloseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORG: TFORG;

implementation

uses
  Unit2, DB;

{$R *.dfm}

procedure TFORG.CloseClick(Sender: TObject);
begin
  //Close;//Закрываем форму
end;

procedure TFORG.FormShow(Sender: TObject);
begin
  DM.IBDS_ORG.Close;//
  DM.IBDS_ORG.Prepare;//
  DM.IBDS_ORG.Open;//Открываем НД
end;

procedure TFORG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.IBDS_ORG.Close;//Закрываем НД
end;

procedure TFORG.Edit1Change(Sender: TObject);
begin
  DM.IBDS_ORG.Locate('INN',Edit1.Text,[DB.loPartialKey]);
  //loPartialKey запись является удовлетворяющей если
  //она содержит часть поискового контекста
end;

end.
