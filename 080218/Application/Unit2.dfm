object DM: TDM
  OldCreateOrder = False
  Left = 107
  Top = 234
  Height = 358
  Width = 618
  object IBDBStore: TIBDatabase
    Connected = True
    DatabaseName = 
      'localhost:D:\NDATA(05.07.16)\!_SOKOLOVA_!\!_SEMESTR_5!\'#1041#1072#1079#1099' '#1076#1072#1085#1085 +
      #1099#1093'\'#1051#1072#1073#1086#1088#1072#1090#1086#1088#1085#1099#1077'\DB4\App\STORE.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 1
    TraceFlags = []
    Left = 56
    Top = 32
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDBStore
    AutoStopAction = saNone
    Left = 40
    Top = 120
  end
  object DSPRODUCT: TDataSource
    DataSet = IBDSPRODUCT
    Left = 128
    Top = 112
  end
  object DSSTORE: TDataSource
    DataSet = IBDSStore
    Left = 200
    Top = 112
  end
  object DSSTOREHOUSE: TDataSource
    DataSet = IBDSSTOREHOUSE
    Left = 272
    Top = 112
  end
  object DSPRODUCTSTORE: TDataSource
    DataSet = IBDSPRODUCTSTORE
    Left = 376
    Top = 112
  end
  object DSPRODUCTSTOREHOUSE: TDataSource
    DataSet = IBDSPRODUCTSTOREHOUSE
    Left = 496
    Top = 112
  end
  object IBDSPRODUCT: TIBDataSet
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PRODUCT :id_product')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_PRODUCT :productname')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUCTLIST'
      'ORDER BY productname')
    ModifySQL.Strings = (
      'EXECUTE  PROCEDURE UPD_PRODUCT :id_product, :productname')
    GeneratorField.Field = 'ID_PRODUCT'
    GeneratorField.Generator = 'PRODUCT_GEN'
    Left = 128
    Top = 32
    object IBDSPRODUCTID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = 'PRODUCTLIST.ID_PRODUCT'
      Required = True
    end
    object IBDSPRODUCTPRODUCTNAME: TIBStringField
      FieldName = 'PRODUCTNAME'
      Origin = 'PRODUCTLIST.PRODUCTNAME'
      Required = True
    end
  end
  object IBDSStore: TIBDataSet
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_STORE :id_store')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_STORE :adress, :storename')
    SelectSQL.Strings = (
      'SELECT * FROM STORE'
      'ORDER BY storename')
    ModifySQL.Strings = (
      'EXECUTE PROCEDURE UPD_STORE :id_store, :adress, :storename')
    GeneratorField.Field = 'ID_STORE'
    GeneratorField.Generator = 'STORE_GEN'
    Left = 200
    Top = 32
    object IBDSStoreID_STORE: TIntegerField
      FieldName = 'ID_STORE'
      Origin = 'STORE.ID_STORE'
      Required = True
    end
    object IBDSStoreADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'STORE.ADRESS'
      Required = True
    end
    object IBDSStoreSTORENAME: TIBStringField
      FieldName = 'STORENAME'
      Origin = 'STORE.STORENAME'
      Required = True
    end
  end
  object IBDSSTOREHOUSE: TIBDataSet
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_STOREHOUSE :id_storehouse')
    InsertSQL.Strings = (
      'EXECUTE PROCEDURE INS_STOREHOUSE :adress, :storekeeper_fio')
    SelectSQL.Strings = (
      'SELECT * FROM STOREHOUSE')
    ModifySQL.Strings = (
      
        'EXECUTE PROCEDURE UPD_STOREHOUSE :id_storehouse, :adress,:storek' +
        'eeper_fio')
    GeneratorField.Field = 'ID_STOREHOUSE'
    GeneratorField.Generator = 'STOREHOUSE_GEN'
    Left = 272
    Top = 32
    object IBDSSTOREHOUSEID_STOREHOUSE: TIntegerField
      FieldName = 'ID_STOREHOUSE'
      Origin = 'STOREHOUSE.ID_STOREHOUSE'
      Required = True
    end
    object IBDSSTOREHOUSEADRESS: TIBStringField
      FieldName = 'ADRESS'
      Origin = 'STOREHOUSE.ADRESS'
      Required = True
    end
    object IBDSSTOREHOUSESTOREKEEPER_FIO: TIBStringField
      FieldName = 'STOREKEEPER_FIO'
      Origin = 'STOREHOUSE.STOREKEEPER_FIO'
      Required = True
      Size = 30
    end
  end
  object IBDSPRODUCTSTORE: TIBDataSet
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PRODUCTSTORE :id_productstore')
    InsertSQL.Strings = (
      
        'EXECUTE PROCEDURE INS_PRODUCTSTORE :id_store, :id_product, :kolv' +
        'o, :price')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUCTSTORE')
    ModifySQL.Strings = (
      
        'EXECUTE PROCEDURE UPD_PRODUCTSTORE :id_productstore, :id_store, ' +
        ':id_product, :kolvo, :price')
    GeneratorField.Field = 'ID_PRODUCTSTORE'
    GeneratorField.Generator = 'PRODUCTSTORE_GEN'
    Left = 376
    Top = 32
    object IBDSPRODUCTSTOREID_PRODUCTSTORE: TIntegerField
      FieldName = 'ID_PRODUCTSTORE'
      Origin = 'PRODUCTSTORE.ID_PRODUCTSTORE'
      Required = True
    end
    object IBDSPRODUCTSTOREID_STORE: TIntegerField
      FieldName = 'ID_STORE'
      Origin = 'PRODUCTSTORE.ID_STORE'
      Required = True
    end
    object IBDSPRODUCTSTOREID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = 'PRODUCTSTORE.ID_PRODUCT'
      Required = True
    end
    object IBDSPRODUCTSTOREproductname: TStringField
      FieldKind = fkLookup
      FieldName = 'productname'
      LookupDataSet = IBDSPRODUCT
      LookupKeyFields = 'ID_PRODUCT'
      LookupResultField = 'PRODUCTNAME'
      KeyFields = 'ID_PRODUCT'
      Lookup = True
    end
    object IBDSPRODUCTSTOREKOLVO: TIntegerField
      FieldName = 'KOLVO'
      Origin = 'PRODUCTSTORE.KOLVO'
    end
    object IBDSPRODUCTSTOREPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRODUCTSTORE.PRICE'
    end
    object IBDSPRODUCTSTORESTOIM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'STOIM'
      Origin = 'PRODUCTSTORE.STOIM'
      ReadOnly = True
    end
    object IBDSPRODUCTSTOREstore_name: TStringField
      FieldKind = fkLookup
      FieldName = 'store_name'
      LookupDataSet = IBDSStore
      LookupKeyFields = 'ID_STORE'
      LookupResultField = 'STORENAME'
      KeyFields = 'ID_STORE'
      Lookup = True
    end
  end
  object IBDSPRODUCTSTOREHOUSE: TIBDataSet
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    DeleteSQL.Strings = (
      'EXECUTE PROCEDURE DEL_PRODUCTSTOREHOUSE :id_productstorehouse')
    InsertSQL.Strings = (
      
        'EXECUTE PROCEDURE INS_PRODUCTSTOREHOUSE :id_storehouse, :id_prod' +
        'uct, :kolvo, :price')
    SelectSQL.Strings = (
      'SELECT * FROM PRODUCTSTOREHOUSE')
    ModifySQL.Strings = (
      
        'EXECUTE PROCEDURE UPD_PRODUCTSTOREHOUSE :id_productstorehouse, :' +
        'id_storehouse, :id_product, :kolvo, :price')
    GeneratorField.Field = 'ID_PRODUCTSTOREHOUSE'
    GeneratorField.Generator = 'PRODUCTSTOREHOUSE_GEN'
    Left = 512
    Top = 32
    object IBDSPRODUCTSTOREHOUSEID_PRODUCTSTOREHOUSE: TIntegerField
      FieldName = 'ID_PRODUCTSTOREHOUSE'
      Origin = 'PRODUCTSTOREHOUSE.ID_PRODUCTSTOREHOUSE'
      Required = True
    end
    object IBDSPRODUCTSTOREHOUSEID_STOREHOUSE: TIntegerField
      FieldName = 'ID_STOREHOUSE'
      Origin = 'PRODUCTSTOREHOUSE.ID_STOREHOUSE'
      Required = True
    end
    object IBDSPRODUCTSTOREHOUSEID_PRODUCT: TIntegerField
      FieldName = 'ID_PRODUCT'
      Origin = 'PRODUCTSTOREHOUSE.ID_PRODUCT'
      Required = True
    end
    object IBDSPRODUCTSTOREHOUSEproductname: TStringField
      FieldKind = fkLookup
      FieldName = 'productname'
      LookupDataSet = IBDSPRODUCT
      LookupKeyFields = 'ID_PRODUCT'
      LookupResultField = 'PRODUCTNAME'
      KeyFields = 'ID_PRODUCT'
      Lookup = True
    end
    object IBDSPRODUCTSTOREHOUSEstorehouseadress: TStringField
      FieldKind = fkLookup
      FieldName = 'storehouseadress'
      LookupDataSet = IBDSSTOREHOUSE
      LookupKeyFields = 'ID_STOREHOUSE'
      LookupResultField = 'ADRESS'
      KeyFields = 'ID_STOREHOUSE'
      Lookup = True
    end
    object IBDSPRODUCTSTOREHOUSEKOLVO: TIntegerField
      FieldName = 'KOLVO'
      Origin = 'PRODUCTSTOREHOUSE.KOLVO'
    end
    object IBDSPRODUCTSTOREHOUSEPRICE: TIntegerField
      FieldName = 'PRICE'
      Origin = 'PRODUCTSTOREHOUSE.PRICE'
    end
    object IBDSPRODUCTSTOREHOUSESTOIM: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'STOIM'
      Origin = 'PRODUCTSTOREHOUSE.STOIM'
      ReadOnly = True
    end
  end
  object IBQ_PS_totalcount: TIBQuery
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT  *  FROM SHOW_PRODUCTSTORE'
      'WHERE  SHOW_PRODUCTSTORE.STORENAME=:pstorename'
      'ORDER BY productname')
    Left = 64
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'pstorename'
        ParamType = ptInput
      end>
  end
  object IBSP_PS_totalcount: TIBStoredProc
    Database = IBDBStore
    Transaction = IBTransaction1
    StoredProcName = 'PS_TOTALCOUNT'
    Left = 64
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TOTALCOUNT'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PID_STORE'
        ParamType = ptInput
      end>
  end
  object IBQ_PSH_STOIM_FOR_SH: TIBQuery
    Database = IBDBStore
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * FROM SHOW_PRODUCTSTOREHOUSE '
      'ORDER BY STOREHOUSEADRESS')
    Left = 176
    Top = 184
  end
  object IBStoredProc1: TIBStoredProc
    Database = IBDBStore
    Transaction = IBTransaction1
    StoredProcName = 'PSH_STOIM_FOR_ONE_SH'
    Left = 176
    Top = 240
    ParamData = <
      item
        DataType = ftInteger
        Name = 'STOIMOST'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'PID_STOREHOUSE'
        ParamType = ptInput
      end>
  end
end
