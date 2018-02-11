unit Unit2;

interface

uses
  SysUtils, Classes, IBDatabase, DB, IBCustomDataSet, IBStoredProc, IBQuery;

type
  TDM = class(TDataModule)
    IBDBStore: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DSPRODUCT: TDataSource;
    DSSTORE: TDataSource;
    DSSTOREHOUSE: TDataSource;
    DSPRODUCTSTORE: TDataSource;
    DSPRODUCTSTOREHOUSE: TDataSource;
    IBDSPRODUCT: TIBDataSet;
    IBDSStore: TIBDataSet;
    IBDSSTOREHOUSE: TIBDataSet;
    IBDSPRODUCTSTORE: TIBDataSet;
    IBDSPRODUCTSTOREHOUSE: TIBDataSet;
    IBDSPRODUCTID_PRODUCT: TIntegerField;
    IBDSPRODUCTPRODUCTNAME: TIBStringField;
    IBDSStoreID_STORE: TIntegerField;
    IBDSStoreADRESS: TIBStringField;
    IBDSStoreSTORENAME: TIBStringField;
    IBDSSTOREHOUSEID_STOREHOUSE: TIntegerField;
    IBDSSTOREHOUSEADRESS: TIBStringField;
    IBDSSTOREHOUSESTOREKEEPER_FIO: TIBStringField;
    IBDSPRODUCTSTOREID_PRODUCTSTORE: TIntegerField;
    IBDSPRODUCTSTOREID_STORE: TIntegerField;
    IBDSPRODUCTSTOREID_PRODUCT: TIntegerField;
    IBDSPRODUCTSTOREKOLVO: TIntegerField;
    IBDSPRODUCTSTOREPRICE: TIntegerField;
    IBDSPRODUCTSTORESTOIM: TIntegerField;
    IBDSPRODUCTSTOREHOUSEID_PRODUCTSTOREHOUSE: TIntegerField;
    IBDSPRODUCTSTOREHOUSEID_STOREHOUSE: TIntegerField;
    IBDSPRODUCTSTOREHOUSEID_PRODUCT: TIntegerField;
    IBDSPRODUCTSTOREHOUSEKOLVO: TIntegerField;
    IBDSPRODUCTSTOREHOUSEPRICE: TIntegerField;
    IBDSPRODUCTSTOREHOUSESTOIM: TIntegerField;
    IBDSPRODUCTSTOREproductname: TStringField;
    IBDSPRODUCTSTOREHOUSEproductname: TStringField;
    IBDSPRODUCTSTOREHOUSEstorehouseadress: TStringField;
    IBDSPRODUCTSTOREstore_name: TStringField;
    IBQ_PS_totalcount: TIBQuery;
    IBSP_PS_totalcount: TIBStoredProc;
    IBQ_PSH_STOIM_FOR_SH: TIBQuery;
    IBStoredProc1: TIBStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
