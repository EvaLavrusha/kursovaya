object DataModule2: TDataModule2
  OldCreateOrder = False
  Left = 364
  Top = 169
  Height = 533
  Width = 335
  object DataSourceTovari: TDataSource
    DataSet = ADOQTovari
    Left = 240
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source='#1050#1091#1088#1089#1086 +
      #1074#1072#1103'.mdb;Mode=Share Deny None;Persist Security Info=False;Jet OLE' +
      'DB:System database="";Jet OLEDB:Registry Path="";Jet OLEDB:Datab' +
      'ase Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Database Locki' +
      'ng Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:Global B' +
      'ulk Transactions=1;Jet OLEDB:New Database Password="";Jet OLEDB:' +
      'Create System Database=False;Jet OLEDB:Encrypt Database=False;Je' +
      't OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Compact Wit' +
      'hout Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 32
  end
  object ADOQTovari: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1058#1086#1074#1072#1088#1099'.[id '#1090#1086#1074#1072#1088#1072'], '#1058#1086#1074#1072#1088#1099'.'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1058#1086#1074#1072#1088#1099'.'#1094#1077#1085#1072', '#1058#1086#1074 +
        #1072#1088#1099'.['#1082#1086#1083'-'#1074#1086'], '#1050#1072#1090#1077#1075#1086#1088#1080#1103'.['#1085#1072#1079#1074#1072#1085#1080#1077' '#1082#1072#1090#1077#1075#1086#1088#1080#1080']'
      
        'FROM '#1050#1072#1090#1077#1075#1086#1088#1080#1103' INNER JOIN '#1058#1086#1074#1072#1088#1099' ON '#1050#1072#1090#1077#1075#1086#1088#1080#1103'.[id '#1082#1072#1090#1077#1075#1086#1088#1080#1080'] = '#1058 +
        #1086#1074#1072#1088#1099'.[id '#1082#1072#1090#1077#1075#1086#1088#1080#1103'];')
    Left = 136
  end
  object DataSourceCat: TDataSource
    DataSet = ADOTCat
    Left = 240
    Top = 56
  end
  object ADOTCat: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1072#1090#1077#1075#1086#1088#1080#1103
    Left = 136
    Top = 56
  end
  object ADOQWork: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 120
  end
  object DataSourceWork: TDataSource
    DataSet = ADOQWork
    Left = 240
    Top = 120
  end
  object ADOTPoc: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1055#1086#1082#1091#1087#1072#1090#1077#1083#1100
    Left = 136
    Top = 184
  end
  object DataSourcePoc: TDataSource
    DataSet = ADOTPoc
    Left = 240
    Top = 184
  end
  object ADOQProdaz: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 248
  end
  object DataSourceProdaz: TDataSource
    DataSet = ADOQProdaz
    Left = 232
    Top = 248
  end
  object ADOQCheck: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 136
    Top = 304
  end
  object DataSourceCheck: TDataSource
    DataSet = ADOQCheck
    Left = 232
    Top = 304
  end
  object DataSourceProdaz2: TDataSource
    DataSet = ADOQProdaz2
    Left = 232
    Top = 368
  end
  object ADOQProdaz2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1080'.[id '#1087#1088#1086#1076#1072#1078#1080'], '#1055#1088#1086#1076#1072#1078#1080'.'#1044#1072#1090#1072'_'#1087#1088#1086#1076#1072#1078#1080', '#1055#1088#1086#1076#1072#1078#1080'.[id '#1090 +
        #1086#1074#1072#1088#1072'], '#1055#1088#1086#1076#1072#1078#1080'.[id '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103'], '#1055#1088#1086#1076#1072#1078#1080'.['#1082#1086#1083'-'#1074#1086'], '#1055#1088#1086#1076#1072#1078#1080'.'#1089#1090#1086#1080#1084 +
        #1086#1089#1090#1100', '#1055#1088#1086#1076#1072#1078#1080'.[id '#1095#1077#1082#1072']'
      'FROM '#1055#1088#1086#1076#1072#1078#1080';')
    Left = 136
    Top = 368
  end
  object DataSourceCheckREP: TDataSource
    DataSet = ADOQCheckREP
    Left = 232
    Top = 432
  end
  object ADOQCheckREP: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1080'.[id '#1087#1088#1086#1076#1072#1078#1080'], '#1055#1088#1086#1076#1072#1078#1080'.'#1044#1072#1090#1072'_'#1087#1088#1086#1076#1072#1078#1080', '#1058#1086#1074#1072#1088#1099'.'#1094#1077#1085#1072', ' +
        #1063#1077#1082'.[id '#1095#1077#1082#1072'], '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100'.'#1060#1048#1054', '#1055#1088#1086#1076#1072#1078#1080'.['#1082#1086#1083'-'#1074#1086'], '#1055#1088#1086#1076#1072#1078#1080'.'#1089#1090#1086#1080#1084#1086#1089 +
        #1090#1100', '#1055#1088#1086#1076#1072#1078#1080'.[id '#1095#1077#1082#1072'], '#1058#1086#1074#1072#1088#1099'.'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '
      
        ' FROM '#1063#1077#1082' INNER JOIN ('#1058#1086#1074#1072#1088#1099' INNER JOIN ('#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100' INNER JOIN '#1055 +
        #1088#1086#1076#1072#1078#1080' ON '#1055#1086#1082#1091#1087#1072#1090#1077#1083#1100'.[id '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103'] = '#1055#1088#1086#1076#1072#1078#1080'.[id '#1087#1086#1082#1091#1087#1072#1090#1077#1083#1103']) ' +
        'ON '#1058#1086#1074#1072#1088#1099'.[id '#1090#1086#1074#1072#1088#1072'] = '#1055#1088#1086#1076#1072#1078#1080'.[id '#1090#1086#1074#1072#1088#1072']) ON '#1063#1077#1082'.[id '#1095#1077#1082#1072'] = ' +
        #1055#1088#1086#1076#1072#1078#1080'.[id '#1095#1077#1082#1072']')
    Left = 136
    Top = 432
  end
end
