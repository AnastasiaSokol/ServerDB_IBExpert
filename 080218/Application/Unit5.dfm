object FORMSTOREHOUSE: TFORMSTOREHOUSE
  Left = 396
  Top = 218
  Width = 928
  Height = 480
  Caption = 'FORMSTOREHOUSE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 64
    Top = 40
    Width = 320
    Height = 120
    DataSource = DM.DSSTOREHOUSE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_STOREHOUSE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ADRESS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOREKEEPER_FIO'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 80
    Top = 192
    Width = 240
    Height = 25
    DataSource = DM.DSSTOREHOUSE
    TabOrder = 1
  end
end
