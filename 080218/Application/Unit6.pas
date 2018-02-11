unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, dbcgrids, DB;

type
  TFORMPRODUCTSTORE = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FORMPRODUCTSTORE: TFORMPRODUCTSTORE;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFORMPRODUCTSTORE.FormShow(Sender: TObject);
begin
  DM.IBDSPRODUCTSTORE.Open;
end;

procedure TFORMPRODUCTSTORE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM.IBDSPRODUCTSTORE.Close;
end;

procedure TFORMPRODUCTSTORE.Button1Click(Sender: TObject);
begin
  DM.IBDSPRODUCTSTORE.Locate('productname; store_name',VarArrayOf([Edit1.Text,Edit2.Text]),[loCaseInsensitive, loPartialKey]);
end;

end.
