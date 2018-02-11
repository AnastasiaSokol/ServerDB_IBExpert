unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TFORMSTOREHOUSE = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMSTOREHOUSE: TFORMSTOREHOUSE;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFORMSTOREHOUSE.FormShow(Sender: TObject);
begin
  DM.IBDSSTOREHOUSE.Open;
end;

procedure TFORMSTOREHOUSE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.IBDSSTOREHOUSE.Close;
end;

end.
