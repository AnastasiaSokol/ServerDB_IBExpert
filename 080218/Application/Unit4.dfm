object FORMSTORE: TFORMSTORE
  Left = 292
  Top = 317
  Width = 413
  Height = 243
  Caption = 'FORMSTORE'
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
    Left = 56
    Top = 24
    Width = 320
    Height = 120
    DataSource = DM.DSSTORE
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_STORE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ADRESS'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STORENAME'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 152
    Width = 240
    Height = 25
    DataSource = DM.DSSTORE
    TabOrder = 1
  end
end
