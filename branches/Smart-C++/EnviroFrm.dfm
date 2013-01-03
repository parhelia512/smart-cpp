object EnviroForm: TEnviroForm
  Left = 562
  Top = 122
  BorderStyle = bsDialog
  Caption = #29615#22659#36873#39033
  ClientHeight = 462
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  DesignSize = (
    484
    462)
  PixelsPerInch = 96
  TextHeight = 15
  object btnOk: TBitBtn
    Left = 210
    Top = 430
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #30830#23450'(&O)'
    Default = True
    ModalResult = 1
    TabOrder = 1
    OnClick = btnOkClick
    NumGlyphs = 2
  end
  object btnCancel: TBitBtn
    Left = 300
    Top = 430
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Cancel = True
    Caption = #21462#28040'(&C)'
    ModalResult = 2
    TabOrder = 2
    NumGlyphs = 2
  end
  object btnHelp: TBitBtn
    Left = 390
    Top = 430
    Width = 85
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #24110#21161'(&H)'
    Enabled = False
    TabOrder = 0
    OnClick = btnHelpClick
    NumGlyphs = 2
  end
  object PagesMain: TPageControl
    Left = 0
    Top = 0
    Width = 484
    Height = 425
    ActivePage = tabGeneral
    HotTrack = True
    TabOrder = 3
    object tabGeneral: TTabSheet
      Caption = #22522#26412
      ParentShowHint = False
      ShowHint = False
      DesignSize = (
        476
        395)
      object lblMRU: TLabel
        Left = 256
        Top = 24
        Width = 126
        Height = 15
        AutoSize = False
        Caption = #21382#21490#35760#24405#26368#22823#25991#20214#25968':'
      end
      object lblMsgTabs: TLabel
        Left = 256
        Top = 79
        Width = 160
        Height = 15
        AutoSize = False
        Caption = #32534#36753#22120' Tab '#20301#32622':'
      end
      object UIfontlabel: TLabel
        Left = 256
        Top = 133
        Width = 51
        Height = 15
        Caption = #30028#38754#23383#20307':'
      end
      object cbBackups: TCheckBox
        Left = 16
        Top = 37
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #25171#24320#25991#20214#26102#21019#24314#22791#20221
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object cbMinOnRun: TCheckBox
        Left = 16
        Top = 58
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #36816#34892#21518#26368#23567#21270
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object cbDefCpp: TCheckBox
        Left = 16
        Top = 16
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #26032#24037#31243#32570#30465#20351#29992' C++'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object cbShowBars: TCheckBox
        Left = 16
        Top = 80
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #20840#23631#27169#24335#26102#26174#31034#24037#20855#26639
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object cbMultiLineTab: TCheckBox
        Left = 16
        Top = 101
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #21551#29992#32534#36753#22120#22810#34892' Tabs'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object rgbAutoOpen: TRadioGroup
        Left = 246
        Top = 248
        Width = 215
        Height = 133
        Caption = #33258#21160#25171#24320
        Items.Strings = (
          #25152#26377#24037#31243#25991#20214
          #20165#31532#19968#20010#24037#31243#25991#20214
          #19978#19968#27425#20851#38381#26102#25171#24320#30340#25991#20214
          #26080)
        TabOrder = 5
      end
      object cbdblFiles: TCheckBox
        Left = 16
        Top = 122
        Width = 230
        Height = 17
        Anchors = [akLeft, akTop, akRight]
        Caption = #21452#20987#25171#24320#24037#31243#25991#20214
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object gbDebugger: TGroupBox
        Left = 15
        Top = 248
        Width = 215
        Height = 53
        Caption = #35843#35797#26597#30475#22120
        TabOrder = 7
        object cbWatchHint: TCheckBox
          Left = 14
          Top = 22
          Width = 170
          Height = 17
          Caption = #40736#26631#31227#36807#26597#30475#21464#37327'(&M)'
          TabOrder = 0
        end
      end
      object cbNoSplashScreen: TCheckBox
        Left = 16
        Top = 144
        Width = 230
        Height = 17
        Caption = #20851#38381#21551#21160#30011#38754
        TabOrder = 8
      end
      object gbProgress: TGroupBox
        Left = 15
        Top = 311
        Width = 215
        Height = 70
        Caption = #32534#35793#36827#31243#31383#21475
        TabOrder = 9
        object cbShowProgress: TCheckBox
          Left = 14
          Top = 22
          Width = 163
          Height = 17
          Caption = #32534#35793#36807#31243#20013#26174#31034'(&S)'
          TabOrder = 0
        end
        object cbAutoCloseProgress: TCheckBox
          Left = 14
          Top = 43
          Width = 163
          Height = 17
          Caption = #32534#35793#23436#25104#21518#33258#21160#20851#38381'(&A)'
          TabOrder = 1
        end
      end
      object seMRUMax: TSpinEdit
        Left = 256
        Top = 47
        Width = 51
        Height = 24
        MaxLength = 2
        MaxValue = 12
        MinValue = 0
        TabOrder = 10
        Value = 0
      end
      object cboTabsTop: TComboBox
        Left = 256
        Top = 102
        Width = 160
        Height = 23
        Style = csDropDownList
        ItemHeight = 15
        TabOrder = 11
        Items.Strings = (
          #39030#37096
          #24213#37096
          #24038#20391
          #21491#20391)
      end
      object cbUIfont: TComboBox
        Left = 256
        Top = 158
        Width = 153
        Height = 26
        AutoComplete = False
        Style = csOwnerDrawVariable
        DropDownCount = 10
        ItemHeight = 20
        Sorted = True
        TabOrder = 12
        OnDrawItem = cbUIfontDrawItem
      end
      object cbUIfontsize: TComboBox
        Left = 416
        Top = 158
        Width = 47
        Height = 26
        AutoComplete = False
        Style = csOwnerDrawVariable
        DropDownCount = 10
        ItemHeight = 20
        TabOrder = 13
        OnChange = cbUIfontsizeChange
        OnDrawItem = cbUIfontsizeDrawItem
        Items.Strings = (
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16')
      end
      object cbPauseConsole: TCheckBox
        Left = 16
        Top = 166
        Width = 230
        Height = 17
        Caption = #31243#24207#36816#34892#26102#33258#21160#26242#20572#25511#21046#21488#31243#24207
        TabOrder = 14
      end
    end
    object tabPaths: TTabSheet
      Caption = #25991#20214#22841
      ParentShowHint = False
      ShowHint = False
      object lblUserDir: TLabel
        Left = 8
        Top = 85
        Width = 400
        Height = 15
        AutoSize = False
        Caption = #29992#25143#32570#30465#25991#20214#22841':'
      end
      object lblTemplatesDir: TLabel
        Left = 8
        Top = 148
        Width = 400
        Height = 15
        AutoSize = False
        Caption = #27169#26495#25991#20214#22841':'
      end
      object lblSplash: TLabel
        Left = 8
        Top = 337
        Width = 400
        Height = 15
        AutoSize = False
        Caption = #21551#21160#23631#24149#22270#20687':'
      end
      object lblIcoLib: TLabel
        Left = 8
        Top = 211
        Width = 400
        Height = 15
        AutoSize = False
        Caption = #22270#26631#24211#36335#24452':'
      end
      object lblLangPath: TLabel
        Left = 8
        Top = 274
        Width = 400
        Height = 15
        AutoSize = False
        Caption = #35821#35328#25991#20214#36335#24452':'
      end
      object btnDefBrws: TSpeedButton
        Tag = 1
        Left = 438
        Top = 105
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object btnOutputbrws: TSpeedButton
        Tag = 2
        Left = 437
        Top = 168
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object btnBrwIcon: TSpeedButton
        Tag = 3
        Left = 437
        Top = 231
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object btnBrwLang: TSpeedButton
        Tag = 5
        Left = 437
        Top = 294
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object btnBrwSplash: TSpeedButton
        Tag = 4
        Left = 437
        Top = 357
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object edUserDir: TEdit
        Left = 16
        Top = 105
        Width = 409
        Height = 23
        ReadOnly = True
        TabOrder = 1
        Text = 'edUserDir'
      end
      object edTemplatesDir: TEdit
        Left = 16
        Top = 168
        Width = 409
        Height = 23
        ReadOnly = True
        TabOrder = 2
        Text = 'edTemplatesDir'
      end
      object edSplash: TEdit
        Left = 16
        Top = 357
        Width = 409
        Height = 23
        ReadOnly = True
        TabOrder = 3
        Text = 'edSplash'
      end
      object edIcoLib: TEdit
        Left = 16
        Top = 231
        Width = 409
        Height = 23
        ReadOnly = True
        TabOrder = 4
        Text = 'edIcoLib'
      end
      object edLang: TEdit
        Left = 16
        Top = 294
        Width = 409
        Height = 23
        ReadOnly = True
        TabOrder = 5
        Text = 'edLang'
      end
      object gbAltConfig: TGroupBox
        Left = 16
        Top = 12
        Width = 433
        Height = 61
        Caption = #22791#29992#37197#32622#25991#20214
        TabOrder = 0
        object btnAltConfig: TSpeedButton
          Tag = 7
          Left = 398
          Top = 26
          Width = 23
          Height = 22
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
            00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
            BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
            00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
            00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
            BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
            00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
            000000000000000000000000000000000000000000000000000000BFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
            96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
            00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
            AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
            00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
            CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
            5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
          OnClick = BrowseClick
        end
        object chkAltConfig: TCheckBox
          Left = 12
          Top = 28
          Width = 13
          Height = 17
          TabOrder = 0
          OnClick = chkAltConfigClick
        end
        object edAltConfig: TEdit
          Left = 32
          Top = 26
          Width = 361
          Height = 23
          TabOrder = 1
          Text = 'edAltConfig'
        end
      end
    end
    object tabExternal: TTabSheet
      Caption = #22806#37096#31243#24207
      DesignSize = (
        476
        395)
      object lblExternal: TLabel
        Left = 8
        Top = 8
        Width = 75
        Height = 15
        Caption = #22806#37096#31243#24207#20851#32852':'
      end
      object btnExtAdd: TSpeedButton
        Left = 128
        Top = 364
        Width = 99
        Height = 25
        Anchors = [akBottom]
        Caption = #28155#21152'(&A)'
        OnClick = btnExtAddClick
      end
      object btnExtDel: TSpeedButton
        Left = 261
        Top = 364
        Width = 99
        Height = 25
        Anchors = [akBottom]
        Caption = #21024#38500'(&D)'
        OnClick = btnExtDelClick
      end
      object vleExternal: TValueListEditor
        Left = 28
        Top = 30
        Width = 417
        Height = 330
        Anchors = [akLeft, akTop, akRight, akBottom]
        KeyOptions = [keyEdit, keyAdd, keyDelete]
        Options = [goVertLine, goHorzLine, goEditing, goAlwaysShowEditor, goThumbTracking]
        TabOrder = 0
        TitleCaptions.Strings = (
          #25193#23637#21517
          #22806#37096#31243#24207)
        OnEditButtonClick = vleExternalEditButtonClick
        OnValidate = vleExternalValidate
        ColWidths = (
          84
          327)
      end
    end
    object tabAssocs: TTabSheet
      Caption = #25991#20214#20851#32852
      ParentShowHint = False
      ShowHint = False
      DesignSize = (
        476
        395)
      object lblAssocFileTypes: TLabel
        Left = 8
        Top = 8
        Width = 51
        Height = 15
        Caption = #25991#20214#31867#22411':'
      end
      object lblAssocDesc: TLabel
        Left = 0
        Top = 352
        Width = 476
        Height = 43
        Alignment = taCenter
        AutoSize = False
        Caption = #20165#36873#20013#25110#21462#28040#36873#20013#30340#25991#20214#31867#22411', Smart-C++'#23558#34987#27880#20876#20026#40664#35748#30340#24212#29992#31243#24207#25171#24320#8230#8230
        WordWrap = True
      end
      object lstAssocFileTypes: TCheckListBox
        Left = 28
        Top = 30
        Width = 417
        Height = 320
        Anchors = [akLeft, akTop, akRight, akBottom]
        ItemHeight = 15
        TabOrder = 0
      end
    end
    object tabCVS: TTabSheet
      Caption = 'CVS '#25903#25345
      ParentShowHint = False
      ShowHint = False
      object lblCVSExec: TLabel
        Left = 8
        Top = 9
        Width = 75
        Height = 15
        Caption = 'CVS '#31243#24207#25991#20214':'
      end
      object lblCVSCompression: TLabel
        Left = 8
        Top = 93
        Width = 48
        Height = 15
        Caption = #21387#32553#32423#21035
      end
      object btnCVSExecBrws: TSpeedButton
        Tag = 6
        Left = 413
        Top = 33
        Width = 23
        Height = 22
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF0000000000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BF
          BFBF000000BFBFBF0000005DCCFF5DCCFF5DCCFF000000BFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF6868680000000000
          00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000
          000000000000000000000000000000000000000000000000000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF00000000AEFF0096DB0096DB0096DB0096DB0096DB00
          96DB0096DB0082BE000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF00AEFF00AEFF00AEFF00
          AEFF00AEFF0096DB000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000005DCCFF
          00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF00AEFF0096DB000000BFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF0000005DCCFF00AEFF00AEFF5DCCFF5DCCFF5DCCFF5D
          CCFF5DCCFF00AEFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF686868BDEBFF
          5DCCFF5DCCFF000000000000000000000000000000000000BFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
        OnClick = BrowseClick
      end
      object cvsdownloadlabel: TLabel
        Left = 16
        Top = 64
        Width = 348
        Height = 13
        Cursor = crHandPoint
        Caption = 
          'http://download.savannah.gnu.org/releases/cvs/binary/stable/x86-' +
          'woe/'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsUnderline]
        ParentFont = False
        OnClick = cvsdownloadlabelClick
      end
      object edCVSExec: TEdit
        Left = 16
        Top = 33
        Width = 385
        Height = 23
        TabOrder = 0
        Text = 'edCVSExec'
      end
      object spnCVSCompression: TSpinEdit
        Left = 16
        Top = 116
        Width = 53
        Height = 24
        MaxLength = 1
        MaxValue = 9
        MinValue = 0
        TabOrder = 1
        Value = 0
      end
      object chkCVSUseSSH: TCheckBox
        Left = 16
        Top = 148
        Width = 373
        Height = 17
        Caption = #20351#29992' SSH '#26367#25442' RSH(&U)'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
  end
  object dlgPic: TOpenPictureDialog
    Left = 14
    Top = 426
  end
end
