unit Unit2;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBDatabase;

type
  TDM = class(TDataModule)
    IBDB_phonebook: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DS_ORG: TDataSource;
    IBDS_ORG: TIBDataSet;
    IBDS_ORGID_ORGANIZATION: TIntegerField;
    IBDS_ORGNAME_OF_ORGANIZATION: TIBStringField;
    IBDS_ORGSTREET: TIBStringField;
    IBDS_ORGHOUSE: TIBStringField;
    IBDS_ORGINN: TIntegerField;
    IBDS_ORG_PHONES: TIBDataSet;
    IBDS_PERSON: TIBDataSet;
    IBDS_PERSON_PHONES: TIBDataSet;
    IBDS_RUBRICS: TIBDataSet;
    IBDS_TOWN: TIBDataSet;
    IBDS_PHONES: TIBDataSet;
    DS_ORG_PHONES: TDataSource;
    DS_PERSON: TDataSource;
    DS_PERSON_PHONES: TDataSource;
    IBDS_ORG_PHONESID_NUMBER_OF_ORG: TIntegerField;
    IBDS_ORG_PHONESID_ORGANIZATION: TIntegerField;
    IBDS_ORG_PHONESID_NUMBER: TIntegerField;
    IBDS_ORG_PHONESDEPARTMENT_NAME: TIBStringField;
    IBDS_PERSONID_PERSON: TIntegerField;
    IBDS_PERSONSERIAS_AND_NUMBER_PASSPORT: TIBStringField;
    IBDS_PERSONSURNAME: TIBStringField;
    IBDS_PERSONNAME: TIBStringField;
    IBDS_PERSONPATRONYMIC: TIBStringField;
    IBDS_PERSONSTREET: TIBStringField;
    IBDS_PERSONHOUSE: TIBStringField;
    IBDS_PERSONID_TOWN: TIntegerField;
    IBDS_PERSON_PHONESID_NUMBER_OF_PERSON: TIntegerField;
    IBDS_PERSON_PHONESID_PERSON: TIntegerField;
    IBDS_PERSON_PHONESID_NUMBER: TIntegerField;
    IBDS_PERSON_PHONESPHONE_ASSIGNMENT: TIBStringField;
    DS_RUBRICS: TDataSource;
    IBDS_RUBRICSID_RUBRIC: TIntegerField;
    IBDS_RUBRICSNAME_OF_RUBRIC: TIBStringField;
    DS_TOWN: TDataSource;
    IBDS_TOWNID_TOWN: TIntegerField;
    IBDS_TOWNTOWN_NAME: TIBStringField;
    IBDS_TOWNID_NUMBER: TIntegerField;
    IBDS_TOWNCOUNTRY: TIBStringField;
    DS_PHONES: TDataSource;
    IBDS_PHONESID_NUMBER: TIntegerField;
    IBDS_PHONESPHONE_NUMBER: TLargeintField;
    IBDS_PHONESMINUTES: TIntegerField;
    IBDS_PHONESTARIV: TIntegerField;
    IBDS_PHONESPAY: TLargeintField;
    IBDS_ORG_town: TStringField;
    IBDS_ORGrubric: TStringField;
    IBDS_ORGID_RUBRIC: TIntegerField;
    IBDS_ORGID_TOWN: TIntegerField;
    IBDS_ORGcountry: TStringField;
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
