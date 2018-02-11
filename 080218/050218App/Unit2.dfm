object DM: TDM
  OldCreateOrder = False
  Left = 316
  Top = 221
  Height = 362
  Width = 804
  object IBDB_phonebook: TIBDatabase
    Connected = True
    DatabaseName = 'localhost:D:\gdb\PHONEBOOK.GDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 48
    Top = 24
  end
  object IBTransaction1: TIBTransaction
    Active = True
    DefaultDatabase = IBDB_phonebook
    AutoStopAction = saNone
    Left = 32
    Top = 80
  end
  object DS_ORG: TDataSource
    DataSet = IBDS_ORG
    Left = 152
    Top = 80
  end
  object IBDS_ORG: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM ORGANIZATION')
    GeneratorField.Field = 'ID_ORGANIZATION'
    GeneratorField.Generator = 'ORG_GEN'
    Left = 152
    Top = 24
    object IBDS_ORGID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Origin = 'ORGANIZATION.ID_ORGANIZATION'
      Required = True
    end
    object IBDS_ORGNAME_OF_ORGANIZATION: TIBStringField
      FieldName = 'NAME_OF_ORGANIZATION'
      Origin = 'ORGANIZATION.NAME_OF_ORGANIZATION'
    end
    object IBDS_ORGSTREET: TIBStringField
      FieldName = 'STREET'
      Origin = 'ORGANIZATION.STREET'
      Size = 30
    end
    object IBDS_ORGHOUSE: TIBStringField
      FieldName = 'HOUSE'
      Origin = 'ORGANIZATION.HOUSE'
      Size = 10
    end
    object IBDS_ORGINN: TIntegerField
      FieldName = 'INN'
      Origin = 'ORGANIZATION.INN'
      Required = True
    end
    object IBDS_ORG_town: TStringField
      FieldKind = fkLookup
      FieldName = 'town'
      LookupDataSet = IBDS_TOWN
      LookupKeyFields = 'ID_TOWN'
      LookupResultField = 'TOWN_NAME'
      KeyFields = 'ID_TOWN'
      Size = 30
      Lookup = True
    end
    object IBDS_ORGrubric: TStringField
      FieldKind = fkLookup
      FieldName = 'rubric'
      LookupDataSet = IBDS_RUBRICS
      LookupKeyFields = 'ID_RUBRIC'
      LookupResultField = 'NAME_OF_RUBRIC'
      KeyFields = 'ID_RUBRIC'
      Size = 30
      Lookup = True
    end
    object IBDS_ORGID_RUBRIC: TIntegerField
      FieldName = 'ID_RUBRIC'
      Origin = 'ORGANIZATION.ID_RUBRIC'
      Required = True
    end
    object IBDS_ORGID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'ORGANIZATION.ID_TOWN'
      Required = True
    end
    object IBDS_ORGcountry: TStringField
      FieldKind = fkLookup
      FieldName = 'country'
      LookupDataSet = IBDS_TOWN
      LookupKeyFields = 'ID_TOWN'
      LookupResultField = 'COUNTRY'
      KeyFields = 'ID_TOWN'
      Lookup = True
    end
  end
  object IBDS_ORG_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM ORGANIZATION_PHONES')
    GeneratorField.Field = 'ID_NUMBER_OF_ORG'
    GeneratorField.Generator = 'ORG_PNONES_GEN'
    Left = 224
    Top = 24
    object IBDS_ORG_PHONESID_NUMBER_OF_ORG: TIntegerField
      FieldName = 'ID_NUMBER_OF_ORG'
      Origin = 'ORGANIZATION_PHONES.ID_NUMBER_OF_ORG'
      Required = True
    end
    object IBDS_ORG_PHONESID_ORGANIZATION: TIntegerField
      FieldName = 'ID_ORGANIZATION'
      Origin = 'ORGANIZATION_PHONES.ID_ORGANIZATION'
      Required = True
    end
    object IBDS_ORG_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'ORGANIZATION_PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_ORG_PHONESDEPARTMENT_NAME: TIBStringField
      FieldName = 'DEPARTMENT_NAME'
      Origin = 'ORGANIZATION_PHONES.DEPARTMENT_NAME'
    end
  end
  object IBDS_PERSON: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM PERSON')
    GeneratorField.Field = 'ID_PERSON'
    GeneratorField.Generator = 'PERSON_GEN'
    Left = 320
    Top = 24
    object IBDS_PERSONID_PERSON: TIntegerField
      FieldName = 'ID_PERSON'
      Origin = 'PERSON.ID_PERSON'
      Required = True
    end
    object IBDS_PERSONSERIAS_AND_NUMBER_PASSPORT: TIBStringField
      FieldName = 'SERIAS_AND_NUMBER_PASSPORT'
      Origin = 'PERSON.SERIAS_AND_NUMBER_PASSPORT'
      Required = True
    end
    object IBDS_PERSONSURNAME: TIBStringField
      FieldName = 'SURNAME'
      Origin = 'PERSON.SURNAME'
    end
    object IBDS_PERSONNAME: TIBStringField
      FieldName = 'NAME'
      Origin = 'PERSON.NAME'
    end
    object IBDS_PERSONPATRONYMIC: TIBStringField
      FieldName = 'PATRONYMIC'
      Origin = 'PERSON.PATRONYMIC'
    end
    object IBDS_PERSONSTREET: TIBStringField
      FieldName = 'STREET'
      Origin = 'PERSON.STREET'
      Size = 30
    end
    object IBDS_PERSONHOUSE: TIBStringField
      FieldName = 'HOUSE'
      Origin = 'PERSON.HOUSE'
      Size = 10
    end
    object IBDS_PERSONID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'PERSON.ID_TOWN'
      Required = True
    end
  end
  object IBDS_PERSON_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM PERSON_PHONES')
    GeneratorField.Field = 'ID_NUMBER_OF_PERSON'
    GeneratorField.Generator = 'PERSON_PHONES_GEN'
    Left = 416
    Top = 24
    object IBDS_PERSON_PHONESID_NUMBER_OF_PERSON: TIntegerField
      FieldName = 'ID_NUMBER_OF_PERSON'
      Origin = 'PERSON_PHONES.ID_NUMBER_OF_PERSON'
      Required = True
    end
    object IBDS_PERSON_PHONESID_PERSON: TIntegerField
      FieldName = 'ID_PERSON'
      Origin = 'PERSON_PHONES.ID_PERSON'
      Required = True
    end
    object IBDS_PERSON_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'PERSON_PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_PERSON_PHONESPHONE_ASSIGNMENT: TIBStringField
      FieldName = 'PHONE_ASSIGNMENT'
      Origin = 'PERSON_PHONES.PHONE_ASSIGNMENT'
    end
  end
  object IBDS_RUBRICS: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM RUBRICS')
    GeneratorField.Field = 'ID_RUBRIC'
    GeneratorField.Generator = 'RUBRICS_GEN'
    Left = 520
    Top = 24
    object IBDS_RUBRICSID_RUBRIC: TIntegerField
      FieldName = 'ID_RUBRIC'
      Origin = 'RUBRICS.ID_RUBRIC'
      Required = True
    end
    object IBDS_RUBRICSNAME_OF_RUBRIC: TIBStringField
      FieldName = 'NAME_OF_RUBRIC'
      Origin = 'RUBRICS.NAME_OF_RUBRIC'
      Size = 30
    end
  end
  object IBDS_TOWN: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM TOWN')
    GeneratorField.Field = 'ID_TOWN'
    GeneratorField.Generator = 'TOWN_GEN'
    Active = True
    Left = 616
    Top = 24
    object IBDS_TOWNID_TOWN: TIntegerField
      FieldName = 'ID_TOWN'
      Origin = 'TOWN.ID_TOWN'
      Required = True
    end
    object IBDS_TOWNTOWN_NAME: TIBStringField
      FieldName = 'TOWN_NAME'
      Origin = 'TOWN.TOWN_NAME'
      Size = 30
    end
    object IBDS_TOWNID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'TOWN.ID_NUMBER'
      Required = True
    end
    object IBDS_TOWNCOUNTRY: TIBStringField
      FieldName = 'COUNTRY'
      Origin = 'TOWN.COUNTRY'
    end
  end
  object IBDS_PHONES: TIBDataSet
    Database = IBDB_phonebook
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    SelectSQL.Strings = (
      'SELECT * FROM PHONES')
    GeneratorField.Field = 'ID_NUMBER'
    GeneratorField.Generator = 'PHONES_GEN'
    Left = 696
    Top = 24
    object IBDS_PHONESID_NUMBER: TIntegerField
      FieldName = 'ID_NUMBER'
      Origin = 'PHONES.ID_NUMBER'
      Required = True
    end
    object IBDS_PHONESPHONE_NUMBER: TLargeintField
      FieldName = 'PHONE_NUMBER'
      Origin = 'PHONES.PHONE_NUMBER'
      Required = True
    end
    object IBDS_PHONESMINUTES: TIntegerField
      FieldName = 'MINUTES'
      Origin = 'PHONES.MINUTES'
    end
    object IBDS_PHONESTARIV: TIntegerField
      FieldName = 'TARIV'
      Origin = 'PHONES.TARIV'
    end
    object IBDS_PHONESPAY: TLargeintField
      FieldKind = fkInternalCalc
      FieldName = 'PAY'
      Origin = 'PHONES.PAY'
      ReadOnly = True
    end
  end
  object DS_ORG_PHONES: TDataSource
    DataSet = IBDS_ORG_PHONES
    Left = 224
    Top = 80
  end
  object DS_PERSON: TDataSource
    DataSet = IBDS_PERSON
    Left = 320
    Top = 80
  end
  object DS_PERSON_PHONES: TDataSource
    DataSet = IBDS_PERSON_PHONES
    Left = 416
    Top = 80
  end
  object DS_RUBRICS: TDataSource
    DataSet = IBDS_RUBRICS
    Left = 520
    Top = 80
  end
  object DS_TOWN: TDataSource
    DataSet = IBDS_TOWN
    Left = 616
    Top = 80
  end
  object DS_PHONES: TDataSource
    DataSet = IBDS_PHONES
    Left = 696
    Top = 80
  end
end
