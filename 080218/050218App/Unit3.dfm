object FORG: TFORG
  Left = 250
  Top = 188
  BorderStyle = bsDialog
  Caption = 'Organizations'
  ClientHeight = 384
  ClientWidth = 912
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
  object GroupBox1: TGroupBox
    Left = 24
    Top = 32
    Width = 825
    Height = 57
    Caption = 'Filters'
    TabOrder = 3
    object Label1: TLabel
      Left = 328
      Top = 8
      Width = 18
      Height = 13
      Caption = 'INN'
    end
    object town: TLabel
      Left = 432
      Top = 8
      Width = 24
      Height = 13
      Caption = 'town'
    end
    object rubric: TLabel
      Left = 552
      Top = 8
      Width = 27
      Height = 13
      Caption = 'rubric'
    end
    object country: TLabel
      Left = 672
      Top = 8
      Width = 37
      Height = 13
      Caption = 'country'
    end
    object Label2: TLabel
      Left = 272
      Top = 8
      Width = 29
      Height = 13
      Caption = 'house'
    end
    object Label3: TLabel
      Left = 184
      Top = 8
      Width = 29
      Height = 13
      Caption = 'street'
    end
    object Label4: TLabel
      Left = 56
      Top = 8
      Width = 26
      Height = 13
      Caption = 'name'
    end
    object Edit1: TEdit
      Left = 328
      Top = 24
      Width = 105
      Height = 21
      TabOrder = 0
      OnChange = Edit1Change
    end
    object Edit2: TEdit
      Left = 432
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 552
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object Edit4: TEdit
      Left = 672
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 272
      Top = 24
      Width = 57
      Height = 21
      TabOrder = 4
    end
    object Edit6: TEdit
      Left = 176
      Top = 24
      Width = 97
      Height = 21
      TabOrder = 5
    end
    object Edit7: TEdit
      Left = 56
      Top = 24
      Width = 121
      Height = 21
      TabOrder = 6
    end
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 88
    Width = 833
    Height = 233
    DataSource = DM.DS_ORG
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_ORGANIZATION'
        Title.Caption = 'ID'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NAME_OF_ORGANIZATION'
        Title.Caption = 'name'
        Width = 72
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'STREET'
        Title.Caption = 'street'
        Width = 83
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'HOUSE'
        Title.Caption = 'house'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'INN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'town'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rubric'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'country'
        Visible = True
      end>
  end
  object Close: TButton
    Left = 16
    Top = 344
    Width = 97
    Height = 17
    Caption = 'Close'
    TabOrder = 1
    OnClick = CloseClick
  end
  object DBNavigator1: TDBNavigator
    Left = 296
    Top = 328
    Width = 240
    Height = 25
    DataSource = DM.DS_ORG
    TabOrder = 2
  end
end
