object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NDP VK Client'
  ClientHeight = 633
  ClientWidth = 810
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object spgcntrl1: TsPageControl
    Left = 0
    Top = 0
    Width = 810
    Height = 633
    ActivePage = stbsht1
    Align = alClient
    TabOrder = 0
    object stbsht1: TsTabSheet
      Caption = #1055#1088#1086#1092#1080#1083#1100
      object img1: TsImage
        Left = 0
        Top = 0
        Width = 193
        Height = 193
        Picture.Data = {07544269746D617000000000}
        SkinData.SkinSection = 'CHECKBOX'
      end
      object lbl1: TsLabel
        Left = 199
        Top = 3
        Width = 11
        Height = 43
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -36
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object lbl2: TsLabel
        Left = 199
        Top = 52
        Width = 6
        Height = 23
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object lbl3: TsLabel
        Left = 199
        Top = 81
        Width = 3
        Height = 13
      end
    end
    object stbsht2: TsTabSheet
      Caption = #1053#1086#1074#1086#1089#1090#1080
    end
    object stbsht3: TsTabSheet
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103
      ExplicitLeft = 8
      ExplicitTop = 28
    end
  end
  object sknmngr1: TsSkinManager
    InternalSkins = <>
    SkinDirectory = 'c:\Skins'
    SkinInfo = 'N/A'
    ThirdParty.ThirdEdits = ' '
    ThirdParty.ThirdButtons = 'TButton'
    ThirdParty.ThirdBitBtns = ' '
    ThirdParty.ThirdCheckBoxes = ' '
    ThirdParty.ThirdGroupBoxes = ' '
    ThirdParty.ThirdListViews = ' '
    ThirdParty.ThirdPanels = ' '
    ThirdParty.ThirdGrids = ' '
    ThirdParty.ThirdTreeViews = ' '
    ThirdParty.ThirdComboBoxes = ' '
    ThirdParty.ThirdWWEdits = ' '
    ThirdParty.ThirdVirtualTrees = ' '
    ThirdParty.ThirdGridEh = ' '
    ThirdParty.ThirdPageControl = ' '
    ThirdParty.ThirdTabControl = ' '
    ThirdParty.ThirdToolBar = ' '
    ThirdParty.ThirdStatusBar = ' '
    ThirdParty.ThirdSpeedButton = ' '
    ThirdParty.ThirdScrollControl = ' '
    ThirdParty.ThirdUpDown = ' '
    ThirdParty.ThirdScrollBar = ' '
    ThirdParty.ThirdStaticText = ' '
    ThirdParty.ThirdNativePaint = ' '
    Left = 696
    Top = 528
  end
  object mm1: TMainMenu
    Left = 548
    Top = 304
    object F1: TMenuItem
      Caption = #1040#1082#1082#1072#1091#1085#1090
      object N3: TMenuItem
        Caption = #1042#1086#1081#1090#1080
        OnClick = N3Click
      end
      object N4: TMenuItem
        Caption = #1042#1099#1081#1090#1080
      end
    end
    object N1: TMenuItem
      Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      object N5: TMenuItem
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
      end
    end
    object N2: TMenuItem
      Caption = #1054
      object N6: TMenuItem
        Caption = #1040#1074#1090#1086#1088
      end
      object N7: TMenuItem
        Caption = #1055#1088#1086#1075#1088#1072#1084#1084#1072
      end
      object N8: TMenuItem
        Caption = #1057#1072#1081#1090
      end
      object N9: TMenuItem
        Caption = #1063#1072#1042#1054
      end
    end
  end
end
