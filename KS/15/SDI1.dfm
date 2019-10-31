object SDIForm1: TSDIForm1
  Left = 0
  Top = 0
  Caption = 'SDIForm1'
  ClientHeight = 299
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 48
    Top = 28
    Width = 129
    Height = 33
    Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1084#1077#1085#1102
    TabOrder = 0
  end
  object Button2: TButton
    Left = 48
    Top = 88
    Width = 129
    Height = 33
    Caption = #1056#1072#1079#1098#1077#1076#1080#1085#1080#1090#1100' '#1084#1077#1085#1102
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 296
    Top = 34
    Width = 145
    Height = 21
    TabOrder = 2
    Text = #1044#1077#1081#1089#1090#1074#1080#1077
    Items.Strings = (
      #1054#1073#1098#1077#1076#1077#1085#1080#1090#1100' '#1084#1077#1085#1102
      #1056#1072#1079#1098#1077#1076#1077#1085#1080#1090#1100' '#1084#1077#1085#1102)
  end
  object Button3: TButton
    Left = 270
    Top = 266
    Width = 241
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100' '#1076#1086#1087#1086#1083#1100#1085#1080#1090#1077#1083#1085#1086#1077' '#1086#1082#1085#1086
    TabOrder = 3
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 96
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      GroupIndex = 2
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
      end
    end
    object N3: TMenuItem
      Caption = #1044#1077#1081#1089#1090#1074#1080#1077
      GroupIndex = 2
      object N4: TMenuItem
        Caption = #1054#1073#1098#1077#1076#1080#1085#1080#1090#1100' '#1084#1077#1085#1102
      end
      object N5: TMenuItem
        Caption = #1056#1072#1079#1098#1077#1076#1080#1085#1080#1090#1100' '#1084#1077#1085#1102
      end
    end
  end
end
