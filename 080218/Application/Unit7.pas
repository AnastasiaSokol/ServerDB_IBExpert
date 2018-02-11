unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TFORMPRODUCTSTOREHOUSE = class(TForm)
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
  FORMPRODUCTSTOREHOUSE: TFORMPRODUCTSTOREHOUSE;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFORMPRODUCTSTOREHOUSE.FormShow(Sender: TObject);
begin
  DM.IBDSPRODUCTSTOREHOUSE.Open;
end;

procedure TFORMPRODUCTSTOREHOUSE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.IBDSPRODUCTSTORE.Close;
end;

end.
