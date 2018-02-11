unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, dbcgrids, DB;

type
  TFORMPRODUCT = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMPRODUCT: TFORMPRODUCT;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFORMPRODUCT.FormShow(Sender: TObject);
begin
  DM.IBDSPRODUCT.Open;//Открываем НБ
end;

procedure TFORMPRODUCT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.IBDSPRODUCT.Close;//Закрываем НБ
end;

procedure TFORMPRODUCT.Edit1Change(Sender: TObject);
begin
  DM.IBDSPRODUCT.Locate('productname',Edit1.Text,[loCaseInsensitive, loPartialKey]);

end;

end.
