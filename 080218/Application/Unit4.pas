unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids;

type
  TFORMSTORE = class(TForm)
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
  FORMSTORE: TFORMSTORE;

implementation

uses
  Unit2;

{$R *.dfm}

procedure TFORMSTORE.FormShow(Sender: TObject);
begin
  DM.IBDSStore.Open;//открываем НД
end;

procedure TFORMSTORE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.IBDSStore.Close;//закрываем НД
end;

end.
