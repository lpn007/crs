object frmSetup: TfrmSetup
  Left = 110
  Top = 62
  Caption = #35774#32622
  ClientHeight = 518
  ClientWidth = 814
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter2: TSplitter
    Left = 543
    Top = 43
    Width = 6
    Height = 449
    Align = alRight
    ResizeStyle = rsUpdate
    ExplicitLeft = 594
    ExplicitTop = 49
    ExplicitHeight = 547
  end
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 0
    Width = 808
    Height = 43
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Button1: TButton
      Left = 553
      Top = 9
      Width = 75
      Height = 26
      Caption = #20445#23384
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 634
      Top = 9
      Width = 75
      Height = 26
      Caption = #20851#38381
      TabOrder = 1
      OnClick = Button2Click
    end
    object te_nm: TcxTextEdit
      Left = 10
      Top = 11
      TabOrder = 2
      Width = 423
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 549
    Top = 43
    Width = 262
    Height = 449
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alRight
    BevelEdges = [beLeft, beRight]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = Panel3Resize
    object tab3: TcxTabControl
      Left = 0
      Top = 25
      Width = 258
      Height = 424
      Align = alClient
      TabOrder = 0
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      OnChange = tab3Change
      OnChanging = tab3Changing
      OnDblClick = tab3DblClick
      ClientRectBottom = 424
      ClientRectRight = 258
      ClientRectTop = 0
    end
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 258
      Height = 25
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkTile
      BevelOuter = bvNone
      Caption = #35814#24773
      TabOrder = 1
    end
  end
  object pn1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 43
    Width = 540
    Height = 449
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BevelEdges = [beLeft, beRight]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 2
    object Splitter1: TSplitter
      Left = 0
      Top = 266
      Width = 536
      Height = 5
      Cursor = crVSplit
      Margins.Left = 4
      Margins.Right = 4
      Align = alTop
    end
    object Panel4: TPanel
      Left = 0
      Top = 271
      Width = 536
      Height = 178
      Margins.Right = 5
      Align = alClient
      BevelEdges = [beLeft]
      BevelOuter = bvNone
      TabOrder = 0
      object tab2: TcxTabControl
        Left = 0
        Top = 42
        Width = 536
        Height = 136
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        Properties.NavigatorPosition = npRightBottom
        Properties.Style = 9
        Properties.TabIndex = 0
        Properties.TabPosition = tpBottom
        Properties.Tabs.Strings = (
          'Sheet1')
        OnChange = tab2Change
        ClientRectBottom = 113
        ClientRectRight = 536
        ClientRectTop = 0
        object xgrid2: TStringGrid
          Left = 0
          Top = 0
          Width = 536
          Height = 113
          Margins.Left = 5
          Margins.Right = 8
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          ColCount = 21
          DefaultColWidth = 40
          DoubleBuffered = False
          RowCount = 21
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing]
          ParentDoubleBuffered = False
          TabOrder = 0
          OnDrawCell = xgrid2DrawCell
          OnMouseDown = xgrid2MouseDown
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 536
        Height = 42
        Align = alTop
        BevelEdges = [beTop, beBottom]
        BevelKind = bkTile
        BevelOuter = bvNone
        TabOrder = 1
        object be_zb: TcxButtonEdit
          AlignWithMargins = True
          Left = 80
          Top = 3
          Align = alClient
          Properties.Buttons = <
            item
              Default = True
              ImageIndex = 10
              Kind = bkGlyph
              Width = 32
            end>
          Properties.Images = frmMain.cxImageList1
          Properties.OnButtonClick = be_zbPropertiesButtonClick
          TabOrder = 0
          Width = 453
        end
        object cxLabel2: TcxLabel
          AlignWithMargins = True
          Left = 10
          Top = 3
          Margins.Left = 10
          Align = alLeft
          Caption = #23376#38598#34920#65306
          Properties.Alignment.Vert = taVCenter
          AnchorY = 19
        end
      end
    end
    object Panel12: TPanel
      Left = 0
      Top = 42
      Width = 536
      Height = 224
      Align = alTop
      BevelEdges = [beBottom]
      BevelOuter = bvNone
      Caption = 'pn12'
      TabOrder = 1
      DesignSize = (
        536
        224)
      object tab1: TcxTabControl
        Left = 0
        Top = 0
        Width = 536
        Height = 224
        Margins.Left = 1
        Margins.Top = 1
        Margins.Right = 1
        Margins.Bottom = 1
        Align = alClient
        TabOrder = 0
        Properties.CustomButtons.Buttons = <>
        Properties.NavigatorPosition = npRightBottom
        Properties.Style = 9
        Properties.TabIndex = 0
        Properties.TabPosition = tpBottom
        Properties.Tabs.Strings = (
          'Sheet1')
        OnChange = tab1Change
        OnDblClick = tab1DblClick
        ClientRectBottom = 201
        ClientRectRight = 536
        ClientRectTop = 0
        object xgrid1: TStringGrid
          Left = 0
          Top = 0
          Width = 536
          Height = 201
          Margins.Left = 5
          Margins.Right = 8
          Align = alClient
          BevelEdges = []
          BevelInner = bvNone
          BevelOuter = bvNone
          BorderStyle = bsNone
          ColCount = 21
          DefaultColWidth = 40
          DoubleBuffered = False
          RowCount = 21
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goFixedHotTrack]
          ParentDoubleBuffered = False
          TabOrder = 0
          OnDrawCell = xgrid1DrawCell
          OnMouseDown = xgrid1MouseDown
          OnMouseUp = xgrid1MouseUp
        end
      end
      object Panel11: TPanel
        Left = 299
        Top = 207
        Width = 222
        Height = 19
        Anchors = [akRight, akBottom]
        BevelEdges = [beBottom]
        BevelKind = bkTile
        BevelOuter = bvNone
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        object ck2: TCheckBox
          AlignWithMargins = True
          Left = 107
          Top = 0
          Width = 62
          Height = 17
          Margins.Left = 10
          Margins.Top = 0
          Margins.Bottom = 0
          Align = alLeft
          Caption = #38145#23450'l'#21015#65306
          TabOrder = 0
          OnClick = ck21Click
        end
        object ck1: TCheckBox
          Left = 0
          Top = 0
          Width = 60
          Height = 17
          Align = alLeft
          Caption = #38145#23450#34892#65306
          TabOrder = 1
          OnClick = ck11Click
        end
        object te1: TEdit
          AlignWithMargins = True
          Left = 61
          Top = 1
          Width = 33
          Height = 16
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alLeft
          BevelEdges = []
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 2
          OnKeyPress = te11KeyPress
        end
        object te2: TEdit
          AlignWithMargins = True
          Left = 173
          Top = 1
          Width = 45
          Height = 16
          Margins.Left = 1
          Margins.Top = 1
          Margins.Bottom = 0
          Align = alLeft
          BevelEdges = []
          BevelInner = bvNone
          BevelKind = bkTile
          BevelOuter = bvNone
          BorderStyle = bsNone
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsUnderline]
          ParentFont = False
          TabOrder = 3
          OnKeyPress = te21KeyPress
        end
      end
    end
    object Panel6: TPanel
      Left = 0
      Top = 0
      Width = 536
      Height = 42
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 2
      object be_hz: TcxButtonEdit
        AlignWithMargins = True
        Left = 80
        Top = 3
        Align = alClient
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 10
            Kind = bkGlyph
            Width = 32
          end>
        Properties.Images = frmMain.cxImageList1
        Properties.OnButtonClick = be_hzPropertiesButtonClick
        TabOrder = 0
        Width = 453
      end
      object cxLabel1: TcxLabel
        AlignWithMargins = True
        Left = 10
        Top = 3
        Margins.Left = 10
        Align = alLeft
        Caption = #27719#24635#34920#65306
        Properties.Alignment.Vert = taVCenter
        AnchorY = 20
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 492
    Width = 814
    Height = 26
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 3
  end
  object opdlg: TOpenDialog
    Left = 432
    Top = 129
  end
  object xls1: TXLSReadWriteII5
    ComponentVersion = '6.00.47'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 464
    Top = 128
  end
  object xls2: TXLSReadWriteII5
    ComponentVersion = '6.00.47'
    Version = xvExcel2007
    DirectRead = False
    DirectWrite = False
    Left = 504
    Top = 128
  end
end
