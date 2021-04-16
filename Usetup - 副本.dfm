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
    Top = 75
    Width = 6
    Height = 417
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
    Height = 75
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object ck11: TcxCheckBox
      Left = 232
      Top = 12
      Caption = #38145#23450#34892
      TabOrder = 0
      OnClick = ck11Click
    end
    object rb2: TcxRadioButton
      Left = 24
      Top = 44
      Width = 162
      Height = 19
      Caption = #25353#21015#27719#24635#8212#8212#36215#22987#21015#65306
      TabOrder = 1
      AutoSize = True
    end
    object ck21: TcxCheckBox
      Left = 232
      Top = 42
      Caption = #38145#23450#21015
      TabOrder = 2
      OnClick = ck21Click
    end
    object te21: TcxTextEdit
      Left = 161
      Top = 42
      TabOrder = 3
      Text = 'A'
      OnKeyPress = te21KeyPress
      Width = 65
    end
    object rb1: TcxRadioButton
      Left = 24
      Top = 14
      Width = 162
      Height = 19
      Caption = #25353#34892#27719#24635#8212#8212#36215#22987#34892#65306
      Checked = True
      TabOrder = 4
      TabStop = True
      OnClick = rb1Click
      AutoSize = True
    end
    object te11: TEdit
      Left = 184
      Top = 17
      Width = 42
      Height = 19
      AutoSize = False
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      TabOrder = 5
      OnKeyPress = te11KeyPress
    end
  end
  object Panel3: TPanel
    AlignWithMargins = True
    Left = 549
    Top = 75
    Width = 262
    Height = 417
    Margins.Left = 0
    Margins.Top = 0
    Margins.Bottom = 0
    Align = alRight
    BevelEdges = [beLeft, beRight]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 1
    OnResize = Panel3Resize
    object pp1: TPanel
      Left = 0
      Top = 384
      Width = 258
      Height = 33
      Margins.Left = 1
      Margins.Right = 8
      Align = alBottom
      BevelEdges = [beTop]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 0
    end
    object tab3: TcxTabControl
      Left = 0
      Top = 100
      Width = 258
      Height = 284
      Align = alClient
      TabOrder = 1
      Properties.CustomButtons.Buttons = <>
      Properties.Style = 9
      Properties.TabIndex = 0
      Properties.Tabs.Strings = (
        #34920'1'
        #34920'2')
      OnResize = Panel3Resize
      ExplicitTop = 0
      ExplicitHeight = 131
      ClientRectBottom = 284
      ClientRectRight = 258
      ClientRectTop = 23
    end
    object Panel8: TPanel
      Left = 0
      Top = 27
      Width = 258
      Height = 73
      Margins.Left = 1
      Margins.Right = 8
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkTile
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 23
      object Panel9: TPanel
        Left = 0
        Top = 36
        Width = 258
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 0
        object Label2: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 45
          Height = 29
          Margins.Left = 5
          Margins.Right = 1
          Align = alLeft
          Caption = #23376#34920#65306
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object rbc: TcxRadioButton
          AlignWithMargins = True
          Left = 200
          Top = 3
          Width = 52
          Height = 29
          Margins.Right = 6
          Align = alRight
          Caption = #25353#21015
          TabOrder = 0
          OnClick = rbcClick
        end
        object rbr: TcxRadioButton
          AlignWithMargins = True
          Left = 147
          Top = 3
          Width = 47
          Height = 29
          Align = alRight
          Caption = #25353#34892
          Checked = True
          TabOrder = 1
          TabStop = True
          OnClick = rbrClick
        end
        object cxTextEdit2: TcxTextEdit
          AlignWithMargins = True
          Left = 52
          Top = 5
          Margins.Left = 1
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alLeft
          TabOrder = 2
          Width = 85
        end
      end
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 258
        Height = 36
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object Label1: TLabel
          AlignWithMargins = True
          Left = 5
          Top = 3
          Width = 45
          Height = 30
          Margins.Left = 5
          Margins.Right = 1
          Align = alLeft
          Caption = #25991#20214#65306
          Layout = tlCenter
          ExplicitHeight = 16
        end
        object cxTextEdit1: TcxTextEdit
          AlignWithMargins = True
          Left = 52
          Top = 5
          Margins.Left = 1
          Margins.Top = 5
          Margins.Bottom = 5
          Align = alClient
          Style.Edges = [bLeft, bTop, bRight, bBottom]
          TabOrder = 0
          Width = 203
        end
      end
    end
    object vgrid: TStringGrid
      Left = 0
      Top = 100
      Width = 258
      Height = 284
      Margins.Left = 1
      Margins.Top = 5
      Margins.Right = 8
      Margins.Bottom = 5
      Align = alClient
      BevelEdges = []
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      ColCount = 2
      DefaultColWidth = 80
      DoubleBuffered = False
      FixedColor = 16707290
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goEditing, goRowSelect]
      ParentDoubleBuffered = False
      TabOrder = 3
      OnDrawCell = vgridDrawCell
      OnMouseDown = vgridMouseDown
      ExplicitLeft = -1
      ExplicitTop = 103
    end
    object Panel13: TPanel
      Left = 0
      Top = 0
      Width = 258
      Height = 27
      Margins.Left = 1
      Margins.Right = 8
      Align = alTop
      BevelEdges = [beBottom]
      BevelKind = bkTile
      BevelOuter = bvNone
      Caption = #35814#24773
      TabOrder = 4
    end
  end
  object pn1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 75
    Width = 540
    Height = 417
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
      Height = 146
      Margins.Right = 5
      Align = alClient
      BevelEdges = [beLeft]
      BevelOuter = bvNone
      TabOrder = 0
      object tab2: TcxTabControl
        Left = 0
        Top = 42
        Width = 536
        Height = 104
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
        ClientRectBottom = 81
        ClientRectRight = 536
        ClientRectTop = 0
        object xgrid2: TStringGrid
          Left = 0
          Top = 0
          Width = 536
          Height = 81
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
