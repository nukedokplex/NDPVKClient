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
      object btn1: TsButton
        Left = 724
        Top = 3
        Width = 75
        Height = 25
        Caption = #1054#1073#1085#1086#1074#1080#1090#1100
        TabOrder = 0
        OnClick = btn1Click
      end
    end
    object stbsht2: TsTabSheet
      Caption = #1053#1086#1074#1086#1089#1090#1080
    end
    object stbsht3: TsTabSheet
      Caption = #1057#1086#1086#1073#1097#1077#1085#1080#1103
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
    Left = 580
    Top = 232
  end
  object idslhndlrscktpnsl1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 676
    Top = 240
  end
end
