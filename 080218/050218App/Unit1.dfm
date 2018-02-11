object FMain: TFMain
  Left = 257
  Top = 120
  Width = 928
  Height = 480
  Caption = 'Phone book'
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
    Left = 120
    Top = 24
    object ables1: TMenuItem
      Caption = 'Tables'
      object Organization1: TMenuItem
        Caption = 'Organization'
        OnClick = Organization1Click
      end
      object Phonesoforganizations1: TMenuItem
        Caption = 'Phones of organizations'
      end
      object Persons1: TMenuItem
        Caption = 'Persons'
      end
      object Phonesofpersons1: TMenuItem
        Caption = 'Phones of persons'
      end
      object Phonenumbers1: TMenuItem
        Caption = 'Phone numbers'
      end
      object owns1: TMenuItem
        Caption = 'Towns'
      end
      object Rubrics1: TMenuItem
        Caption = 'Rubrics'
      end
    end
    object Documents1: TMenuItem
      Caption = 'Documents'
      object Phonenumbersoftowsorderbynameoftown1: TMenuItem
        Caption = 'Phone numbers of towns order by name of town'
      end
      object Phonenumbersofpersonsforselectedtownorderbysurname1: TMenuItem
        Caption = 'Phone numbers of persons for selected town order by surname'
      end
      object Phonenumbersoforganizationgroupbytownsandrubrics1: TMenuItem
        Caption = 'Phone numbers of organization group by towns and rubrics'
      end
      object Phonenumberoforganizationsforselectedtownandrubric1: TMenuItem
        Caption = 'Phone numbers of organizations for selected town and rubric'
      end
    end
  end
end
