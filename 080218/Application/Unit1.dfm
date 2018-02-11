object Form1: TForm1
  Left = 158
  Top = 114
  Width = 542
  Height = 183
  Caption = 'FMain'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 56
    Top = 16
    object able1: TMenuItem
      Caption = 'Table'
      object PRODUCT1: TMenuItem
        Caption = 'PRODUCT'
        OnClick = PRODUCT1Click
      end
      object STORE1: TMenuItem
        Caption = 'STORE'
        OnClick = STORE1Click
      end
      object STOREHOUSE1: TMenuItem
        Caption = 'STOREHOUSE'
        OnClick = STOREHOUSE1Click
      end
      object PRODUCTSTORE1: TMenuItem
        Caption = 'PRODUCTSTORE'
        OnClick = PRODUCTSTORE1Click
      end
      object PRODUCTSTOREHOUSE1: TMenuItem
        Caption = 'PRODUCTSTOREHOUSE'
        OnClick = PRODUCTSTOREHOUSE1Click
      end
    end
    object REPORT1: TMenuItem
      Caption = 'REPORT'
      object OTALCOUTOFPRODUCTFORCHOOSENSTORE1: TMenuItem
        Caption = 'TOTALCOUNT_OF_PRODUCT_FOR_CHOOSEN_STORE'
        OnClick = OTALCOUTOFPRODUCTFORCHOOSENSTORE1Click
      end
      object REPORTFORSTOREHOUSES1: TMenuItem
        Caption = 'REPORT_FOR_STOREHOUSES'
        OnClick = REPORTFORSTOREHOUSES1Click
      end
    end
  end
end
