object FORMPRODUCT: TFORMPRODUCT
  Left = 156
  Top = 241
  BorderStyle = bsDialog
  Caption = 'FORMPRODUCT'
  ClientHeight = 336
  ClientWidth = 813
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
  object Label1: TLabel
    Left = 48
    Top = 208
    Width = 175
    Height = 13
    Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1102' '#1087#1088#1086#1076#1091#1082#1090#1072
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 24
    Width = 320
    Height = 120
    DataSource = DM.DSPRODUCT
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUCT'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'PRODUCTNAME'
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 72
    Top = 160
    Width = 240
    Height = 25
    DataSource = DM.DSPRODUCT
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 240
    Top = 208
    Width = 121
    Height = 21
    TabOrder = 2
    OnChange = Edit1Change
  end
end
