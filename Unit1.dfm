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
  OnCreate = FormCreate
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
      object lbl4: TsLabel
        Left = 40
        Top = 88
        Width = 117
        Height = 23
        Caption = #1053#1045#1058' '#1040#1042#1040#1058#1040#1056#1040
        ParentFont = False
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
      end
      object lbl5: TsLabel
        Left = 3
        Top = 199
        Width = 3
        Height = 13
      end
      object btn1: TsButton
        Left = 724
        Top = 3
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 0
        OnClick = btn1Click
      end
      object lv1: TsListView
        Left = 3
        Top = 224
        Width = 799
        Height = 217
        Columns = <
          item
            Caption = #1055#1072#1088#1072#1084#1077#1090#1088
            Width = 169
          end
          item
            Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103
            Width = 626
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.ItemData = {
          05820100000800000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000
          00031F043E043B0400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000
          12210435043C04350439043D043E04350420003F043E043B043E04360435043D
          043804350400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF00000000071F04
          3004400442043D043504400400000000FFFFFFFFFFFFFFFF00000000FFFFFFFF
          000000000D1404300442043004200040043E043604340435043D0438044F0400
          000000FFFFFFFFFFFFFFFF00000000FFFFFFFF000000000C20043E0434043D04
          3E043904200033043E0440043E04340400000000FFFFFFFFFFFFFFFF00000000
          FFFFFFFF000000000621044204400430043D04300400000000FFFFFFFFFFFFFF
          FF00000000FFFFFFFF000000001013043E0440043E04340420003F0440043E04
          36043804320430043D0438044F0400000000FFFFFFFFFFFFFFFF00000000FFFF
          FFFF000000000E1D043E043C04350440042000420435043B04350444043E043D
          043004}
        ParentFont = False
        TabOrder = 1
        ViewStyle = vsReport
      end
      object btn5: TsButton
        Left = 0
        Top = 577
        Width = 75
        Height = 25
        Caption = #1060#1086#1090#1086
        TabOrder = 2
        OnClick = btn5Click
      end
    end
    object stbsht2: TsTabSheet
      Caption = #1053#1086#1074#1086#1089#1090#1080
      object btn2: TsButton
        Left = 724
        Top = 3
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 0
      end
      object btn3: TsButton
        Left = 696
        Top = 577
        Width = 49
        Height = 25
        Caption = '<---'
        TabOrder = 1
      end
      object btn4: TsButton
        Left = 750
        Top = 577
        Width = 49
        Height = 25
        Caption = '--->'
        TabOrder = 2
      end
      object mmo1: TsMemo
        Left = 0
        Top = 0
        Width = 802
        Height = 605
        Align = alClient
        Lines.Strings = (
          #1053#1040' '#1044#1040#1053#1053#1067#1049' '#1052#1054#1052#1045#1053#1058' '#1042#1067' '#1053#1045' '#1052#1054#1046#1045#1058#1045' '#1042#1054#1057#1055#1054#1051#1068#1047#1054#1042#1040#1058#1068#1057#1071' '#1069#1058#1048#1052','
          #1042#1054#1047#1052#1054#1046#1053#1054' '#1040#1042#1058#1054#1056' '#1055#1056#1054#1043#1056#1040#1052#1052#1067' '#1045#1065#1045' '#1053#1045' '#1056#1045#1040#1051#1048#1047#1054#1042#1040#1051' '#1069#1058#1059' '#1060#1059#1053#1050#1062#1048#1070
          #1051#1048#1041#1054' '#1042#1067' '#1055#1054#1051#1068#1047#1059#1045#1058#1045#1057#1068' '#1057#1058#1040#1056#1054#1049' '#1042#1045#1056#1057#1048#1045#1049' '#1055#1056#1054#1043#1056#1040#1052#1052#1067'.'
          '    - '#1042#1048#1050#1058#1054#1056' '#1058#1048#1058#1054#1042' (NUKDOKPLEX)')
        TabOrder = 3
        Text = 
          #1053#1040' '#1044#1040#1053#1053#1067#1049' '#1052#1054#1052#1045#1053#1058' '#1042#1067' '#1053#1045' '#1052#1054#1046#1045#1058#1045' '#1042#1054#1057#1055#1054#1051#1068#1047#1054#1042#1040#1058#1068#1057#1071' '#1069#1058#1048#1052','#13#10#1042#1054#1047#1052#1054#1046#1053#1054' '#1040#1042 +
          #1058#1054#1056' '#1055#1056#1054#1043#1056#1040#1052#1052#1067' '#1045#1065#1045' '#1053#1045' '#1056#1045#1040#1051#1048#1047#1054#1042#1040#1051' '#1069#1058#1059' '#1060#1059#1053#1050#1062#1048#1070#13#10#1051#1048#1041#1054' '#1042#1067' '#1055#1054#1051#1068#1047#1059#1045#1058#1045#1057#1068 +
          ' '#1057#1058#1040#1056#1054#1049' '#1042#1045#1056#1057#1048#1045#1049' '#1055#1056#1054#1043#1056#1040#1052#1052#1067'.'#13#10'    - '#1042#1048#1050#1058#1054#1056' '#1058#1048#1058#1054#1042' (NUKDOKPLEX)'#13#10
        ExplicitLeft = 280
        ExplicitTop = 256
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
    object stbsht3: TsTabSheet
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103
      object mmo2: TsMemo
        Left = 0
        Top = 0
        Width = 802
        Height = 605
        Align = alClient
        Lines.Strings = (
          #1053#1040' '#1044#1040#1053#1053#1067#1049' '#1052#1054#1052#1045#1053#1058' '#1042#1067' '#1053#1045' '#1052#1054#1046#1045#1058#1045' '#1042#1054#1057#1055#1054#1051#1068#1047#1054#1042#1040#1058#1068#1057#1071' '#1069#1058#1048#1052','
          #1042#1054#1047#1052#1054#1046#1053#1054' '#1040#1042#1058#1054#1056' '#1055#1056#1054#1043#1056#1040#1052#1052#1067' '#1045#1065#1045' '#1053#1045' '#1056#1045#1040#1051#1048#1047#1054#1042#1040#1051' '#1069#1058#1059' '#1060#1059#1053#1050#1062#1048#1070
          #1051#1048#1041#1054' '#1042#1067' '#1055#1054#1051#1068#1047#1059#1045#1058#1045#1057#1068' '#1057#1058#1040#1056#1054#1049' '#1042#1045#1056#1057#1048#1045#1049' '#1055#1056#1054#1043#1056#1040#1052#1052#1067'.'
          '    - '#1042#1048#1050#1058#1054#1056' '#1058#1048#1058#1054#1042' (NUKDOKPLEX)')
        TabOrder = 0
        Text = 
          #1053#1040' '#1044#1040#1053#1053#1067#1049' '#1052#1054#1052#1045#1053#1058' '#1042#1067' '#1053#1045' '#1052#1054#1046#1045#1058#1045' '#1042#1054#1057#1055#1054#1051#1068#1047#1054#1042#1040#1058#1068#1057#1071' '#1069#1058#1048#1052','#13#10#1042#1054#1047#1052#1054#1046#1053#1054' '#1040#1042 +
          #1058#1054#1056' '#1055#1056#1054#1043#1056#1040#1052#1052#1067' '#1045#1065#1045' '#1053#1045' '#1056#1045#1040#1051#1048#1047#1054#1042#1040#1051' '#1069#1058#1059' '#1060#1059#1053#1050#1062#1048#1070#13#10#1051#1048#1041#1054' '#1042#1067' '#1055#1054#1051#1068#1047#1059#1045#1058#1045#1057#1068 +
          ' '#1057#1058#1040#1056#1054#1049' '#1042#1045#1056#1057#1048#1045#1049' '#1055#1056#1054#1043#1056#1040#1052#1052#1067'.'#13#10'    - '#1042#1048#1050#1058#1054#1056' '#1058#1048#1058#1054#1042' (NUKDOKPLEX)'#13#10
        ExplicitLeft = 280
        ExplicitTop = 256
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
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
    Left = 568
    Top = 128
  end
  object mm1: TMainMenu
    Left = 620
    Top = 72
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
        OnClick = N6Click
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
  object idhtp1: TIdHTTP
    IOHandler = idslhndlrscktpnsl1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 572
    Top = 72
  end
  object idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 620
    Top = 128
  end
  object tmr1: TTimer
    Interval = 1
    OnTimer = tmr1Timer
    Left = 620
    Top = 488
  end
end
