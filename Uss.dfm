object mdss: Tmdss
  Left = 0
  Top = 0
  Width = 301
  Height = 475
  TabOrder = 0
  object Panel1: TPanel
    Left = 0
    Top = 422
    Width = 301
    Height = 53
    Margins.Left = 1
    Margins.Right = 8
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
  end
  object vgrid: TStringGrid
    Left = 0
    Top = 73
    Width = 301
    Height = 349
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
    TabOrder = 1
  end
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 301
    Height = 73
    Margins.Left = 1
    Margins.Right = 8
    Align = alTop
    BevelEdges = [beBottom]
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 2
    object Panel9: TPanel
      Left = 0
      Top = 36
      Width = 301
      Height = 35
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Label2: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 36
        Height = 29
        Margins.Left = 5
        Margins.Right = 1
        Align = alLeft
        Caption = #23376#34920#65306
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object rbc: TcxRadioButton
        AlignWithMargins = True
        Left = 243
        Top = 3
        Width = 52
        Height = 29
        Margins.Right = 6
        Align = alRight
        Caption = #25353#21015
        TabOrder = 0
      end
      object rbr: TcxRadioButton
        AlignWithMargins = True
        Left = 190
        Top = 3
        Width = 47
        Height = 29
        Align = alRight
        Caption = #25353#34892
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object tes1: TcxTextEdit
        AlignWithMargins = True
        Left = 43
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
      Width = 301
      Height = 36
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Label1: TLabel
        AlignWithMargins = True
        Left = 5
        Top = 3
        Width = 36
        Height = 30
        Margins.Left = 5
        Margins.Right = 1
        Align = alLeft
        Caption = #25991#20214#65306
        Layout = tlCenter
        ExplicitHeight = 13
      end
      object tew: TcxTextEdit
        AlignWithMargins = True
        Left = 43
        Top = 5
        Margins.Left = 1
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alClient
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        TabOrder = 0
        Width = 255
      end
    end
  end
end
