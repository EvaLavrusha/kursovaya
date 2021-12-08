object Form3: TForm3
  Left = 517
  Top = 333
  Width = 939
  Height = 666
  Caption = 'Form3'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 361
    Width = 906
    Height = 40
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 16
      Width = 48
      Height = 20
      Caption = #1063#1077#1082' '#8470
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 128
      Top = 16
      Width = 35
      Height = 16
      Caption = #1044#1072#1090#1072':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 568
      Top = 16
      Width = 100
      Height = 13
      Caption = #1057#1091#1084#1084#1072' '#1087#1086' '#1095#1077#1082#1091'('#1075#1088#1085'):'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 168
      Top = 16
      Width = 186
      Height = 21
      CalAlignment = dtaLeft
      Date = 44523.8266209491
      Time = 44523.8266209491
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 0
    end
    object Button1: TButton
      Left = 448
      Top = 8
      Width = 75
      Height = 25
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1095#1077#1082
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 401
    Width = 906
    Height = 207
    Align = alBottom
    Enabled = False
    TabOrder = 1
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 34
      Height = 13
      Caption = #1058#1086#1074#1072#1088':'
    end
    object Label5: TLabel
      Left = 16
      Top = 40
      Width = 69
      Height = 13
      Caption = #1062#1077#1085#1072' '#1079#1072' 1 '#1096#1090':'
    end
    object Label6: TLabel
      Left = 16
      Top = 64
      Width = 59
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
    end
    object Label7: TLabel
      Left = 16
      Top = 96
      Width = 60
      Height = 13
      Caption = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
    end
    object Label8: TLabel
      Left = 16
      Top = 128
      Width = 76
      Height = 13
      Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080':'
    end
    object DBGrid2: TDBGrid
      Left = 384
      Top = 8
      Width = 433
      Height = 145
      DataSource = DataModule2.DataSourceProdaz
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
    object Button2: TButton
      Left = 16
      Top = 152
      Width = 75
      Height = 25
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 112
      Top = 152
      Width = 75
      Height = 25
      Caption = #1059#1076#1072#1083#1080#1090#1100
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 208
      Top = 152
      Width = 75
      Height = 25
      Caption = #1055#1077#1095#1072#1090#1100
      TabOrder = 3
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 112
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 4
      Text = '0'
      OnChange = Edit1Change
    end
    object UpDown1: TUpDown
      Left = 233
      Top = 64
      Width = 16
      Height = 21
      Associate = Edit1
      Min = 0
      Position = 0
      TabOrder = 5
      Wrap = False
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 96
      Top = 8
      Width = 145
      Height = 21
      KeyField = 'id '#1090#1086#1074#1072#1088#1072
      ListField = #1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      ListSource = DataModule2.DataSourceTovari
      TabOrder = 6
      OnClick = DBLookupComboBox1Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 136
      Top = 96
      Width = 145
      Height = 21
      KeyField = 'id '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103
      ListField = #1060#1048#1054
      ListSource = DataModule2.DataSourcePoc
      TabOrder = 7
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 906
    Height = 361
    Align = alBottom
    DataSource = DataModule2.DataSourceCheck
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object MainMenu1: TMainMenu
    Left = 856
    Top = 368
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N3Click
    end
  end
end
