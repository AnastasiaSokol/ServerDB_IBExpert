object FORMPRODUCTSTOREHOUSE: TFORMPRODUCTSTOREHOUSE
  Left = 163
  Top = 302
  Width = 751
  Height = 296
  Caption = 'FORMPRODUCTSTOREHOUSE'
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
    Top = 48
    Width = 537
    Height = 113
    DataSource = DM.DSPRODUCTSTOREHOUSE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUCTSTOREHOUSE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_STOREHOUSE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_PRODUCT'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'productname'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'storehouseadress'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'KOLVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRICE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STOIM'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 208
    Width = 240
    Height = 25
    DataSource = DM.DSPRODUCTSTOREHOUSE
    TabOrder = 1
  end
end
