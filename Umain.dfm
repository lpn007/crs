object frmMain: TfrmMain
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #25968#25454#34920#27719#24635
  ClientHeight = 477
  ClientWidth = 777
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 16
  object Splitter1: TSplitter
    Left = 215
    Top = 43
    Width = 6
    Height = 390
    ExplicitLeft = 209
    ExplicitTop = 41
    ExplicitHeight = 392
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 777
    Height = 44
    Margins.Left = 6
    Margins.Right = 6
    Align = alBottom
    BevelEdges = [beTop]
    BevelKind = bkTile
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    TabOrder = 0
    object cxButton2: TcxButton
      Left = 104
      Top = 9
      Width = 66
      Height = 25
      Caption = #36864#20986
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = cxImageList1
      TabOrder = 0
    end
    object cxButton3: TcxButton
      Left = 445
      Top = 9
      Width = 66
      Height = 25
      Caption = #20445#23384
      OptionsImage.ImageIndex = 11
      OptionsImage.Images = cxImageList1
      TabOrder = 1
      OnClick = cxButton3Click
    end
    object cxButton4: TcxButton
      Left = 616
      Top = 9
      Width = 66
      Height = 25
      Caption = #25191#34892
      OptionsImage.ImageIndex = 9
      OptionsImage.Images = cxImageList1
      TabOrder = 2
    end
    object cxButton5: TcxButton
      Left = 274
      Top = 9
      Width = 66
      Height = 25
      Caption = #36733#20837
      OptionsImage.ImageIndex = 5
      OptionsImage.Images = cxImageList1
      TabOrder = 3
      OnClick = cxButton5Click
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 221
    Top = 43
    Width = 550
    Height = 388
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 6
    Margins.Bottom = 2
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel4'
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 550
      Height = 81
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object be1: TcxButtonEdit
        Left = 99
        Top = 17
        PopupMenu = pm_op
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 1
            Kind = bkGlyph
          end>
        Properties.Images = cxImageList1
        TabOrder = 0
        Width = 384
      end
      object be2: TcxButtonEdit
        Left = 99
        Top = 47
        PopupMenu = PopupMenu1
        Properties.Buttons = <
          item
            Default = True
            ImageIndex = 10
            Kind = bkGlyph
          end>
        Properties.Images = cxImageList1
        TabOrder = 1
        Width = 384
      end
      object cxLabel1: TcxLabel
        Left = 6
        Top = 21
        Caption = #24635#34920#25991#20214#21517#65306
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 31
      end
      object cxLabel2: TcxLabel
        Left = 6
        Top = 47
        Caption = #23376#34920#25991#20214#22841#65306
        Properties.Alignment.Vert = taVCenter
        Transparent = True
        AnchorY = 57
      end
      object cxButton1: TcxButton
        Left = 493
        Top = 20
        Width = 41
        Height = 55
        Caption = #35774#32622
        OptionsImage.ImageIndex = 12
        OptionsImage.Images = cxImageList1
        OptionsImage.Layout = blGlyphTop
        TabOrder = 4
        OnClick = cxButton1Click
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 81
      Width = 550
      Height = 307
      Align = alClient
      BevelEdges = [beTop]
      BevelKind = bkTile
      BevelOuter = bvNone
      BorderWidth = 1
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      object men: TcxMemo
        Left = 1
        Top = 1
        Margins.Left = 10
        Margins.Top = 5
        Margins.Right = 10
        Margins.Bottom = 5
        Align = alClient
        Lines.Strings = (
          #38463#21345#22362#23454#30340#31119#21033#21345#26102#38388
          #38463#26031#39039#21457#20811#25289#26031#34678#24651#34562)
        Style.BorderStyle = ebsUltraFlat
        Style.Edges = [bLeft, bTop, bRight, bBottom]
        Style.Shadow = True
        TabOrder = 0
        Height = 303
        Width = 548
      end
    end
  end
  object Panel5: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 46
    Width = 209
    Height = 385
    Margins.Left = 6
    Margins.Right = 0
    Margins.Bottom = 2
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 2
    object tv: TTreeView
      Left = 0
      Top = 0
      Width = 209
      Height = 385
      Align = alClient
      BevelInner = bvNone
      Images = cxImageList1
      Indent = 19
      MultiSelect = True
      ReadOnly = True
      TabOrder = 0
      OnMouseDown = tvMouseDown
    end
  end
  object Panel6: TPanel
    AlignWithMargins = True
    Left = 6
    Top = 0
    Width = 765
    Height = 41
    Margins.Left = 6
    Margins.Top = 0
    Margins.Right = 6
    Margins.Bottom = 2
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
  end
  object pm_op: TPopupMenu
    Left = 400
    Top = 53
    object N1: TMenuItem
      Caption = #36873#25321#25991#20214
    end
    object N2: TMenuItem
      Caption = #28165#38500#25991#20214
    end
  end
  object cxImageList1: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 12059208
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000023744558745469746C65004164643B46696C653B41646446696C653B
          426172733B526962626F6E3B15DCAA0A000002E049444154785E65927F689555
          18C73FE7BDEFBDCDFD52BBCAC6AC3FC67E68615830DB168DB491DBAC086566B8
          612B35D655D141121B42E48FFE501B28669BD860FB4316CE864284DA2854C28A
          A9685413993437595DC7D6DDDAEEDEF73DE7E9EECD3B821D78CEF71C9E733E7C
          9F874701EAD0A99F7A14AC061004115080117F4766540C82C218F7FBBD91B272
          11310036A0C4C8EA0FB63D0F0002B387B9570E9EF86115A00066019E18109876
          34028800BE26210A0152420AED19E600B4A301D02290FC0C042C0502CA02E3E7
          66201680DADF550180E5033C0D08227E801226E27F71E9D6715A7BDEE6F0F9B5
          B47E5BC737D78FF1F4B22040A0697D37C6083EC0D506010C0AA5147F446FD0F6
          5D84901DA0BAE4431AD79D65434283B6CDCDE801229F9656D98134CB73CDFF1D
          8018884DFE49F7B583BCF94223E52B6A387FB593C6935B3877A583179757B0B1
          AC81F9E194F6773E2ECA3B50DBA32CC0725C8D08584AB8FA6B27CFE5AE21279C
          C368FC37EEDEEF636BE58984DE233A758B507A8CA2C2F28CB405A13D40C0F64B
          987560B8DD7F859AAA77F9BCFB10030F1E20C092AC4C3C2D34B79D263B2B8392
          E26C8C31AF033BFF2B41FB0E40C1586C84096ED27F7F906DAFB5B06FEB693C23
          EC4FE8F186AF181A1C6378FA471C47870165270188F85DB55506A3B128E90B27
          3976760B087C12F992A6CF3622C0FCC57146C727884FE991E41C589E0101DF66
          414E31BFDFF985C295634C7B717ABF7E824599F3F05CCDCA37061081A1BE2013
          31E722602C00ED6904782C6853595C4B6FEF20EEDFA96871487B7C92CD1F5591
          16FE07573B8C465DFAAE3B93C3F7C69B010D90FAD6FB1D976B779F914DBBCEC8
          919397E5687B8754EF79561ABE7846F65DCC97E69FF3129A27DB5B0A645DC372
          5DB2FEC95A20F4EA8EC2D9694C0516000B813090BDB464D14B2FD7E57655D6E7
          3FAC8C14C89AFAFC91559B73BB9E2A5B5C0ACC0354457D3E4A4448AEC44310B8
          D072573D0207937D0204701F8579E5BD3C01F817E1E75F4F0B44B2A300000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000024744558745469746C6500496E736572743B506167653B4164643B49
          74656D3B4C6973743B506C7573581275E40000022849444154785EA5934D4815
          5118869FF18E974CA3859BDA05453F4416210479B14522288109120556AE0CB5
          685308D5AE459A2D14CA366A2004B5100B12DC8445E946FB11825AB8887EA002
          BB667A9D7B67CEF715E70C8DB871D10B73BEC3C0FBF09CE18CAFAAFC4F7CEF6F
          001F48011E6B93BC5340805055E51F0028EE1D7AF6D4F78B3300AA8A937253B1
          8BDD170AC164675BED5120BF1A90F28AFC4CC7E9C3AC974F5FB3559D6DA4FF4A
          87B191FA80678C01A010BA190B80A7A01EA0F8298F27339D5C1B3AB41885F2BC
          EBDC74CDE5FECAC80122754581FB63B3A0897E7DF54EA2C81086219F7FCC72F1
          CC756E0D5C390294F4B4CF040E20912D08CAA9FA0A5CD5B36BCA5306C73AF8F8
          FD2D6284370B7DE4F386F69BFB17F32B663236104011512E8CA4510361042684
          4B35E3CC7D794D6B4B2BEF7F3D6429CC51DDB4095565FC5EB6CA07888C380385
          DEC63C360A6ABF70C4D6CD15F4F5F76322257332CDC470808810E4CC0B671003
          8C5186475F593A60A18DB57B385E7D83856C963BA34DE40A4BE40B1E0FBA3F6C
          03E6E3231844D53ECD0D0771F50452BAB1842DE5A59497EE6662F01D412E9C02
          7E369CDFB1E4002256DF080C8F4C5B90C60CE2FD89BABD9C3DD6C3817DDB7701
          DF80DCE3DB732447104554686EAC04624022425949317D031300F3AABAB8FA26
          AA11C1A852B6C1F25C47138C2ACE4A942409205C59FEFDF26AD7A30CEA6E5E52
          B4D34155085696A780C25A4070B7BBA50E480345EBFC8D79204712FE002E7C42
          4C1A85BD580000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001B744558745469746C65004164643B506C75733B426172733B526962
          626F6E3B9506332F0000036349444154785E35927D6C535518C69F73EE6DEB64
          63A3AEFB60A3A36E33B8C56581E0D8707E21CC1A43A2A22304FE3001512A86C4
          E900132451FF503367420043B244364C483031465C248B4441C0980C45B4D065
          CDBA4ECAE82AAC5DBBDE8FF3E1BD27F1397973DE9C3CBFF7233964226FC2D543
          A53E0280443E3FD752525AB14323FA06685A3381E492F329C6ADF39954E2F8C9
          C3DBA6018858DE940A9C2C5870C1D51BB6FAF61DBB327860F81A1BFE25297FB8
          3127C7EFE4E5D5745E9EBB9991239766E481937FE4DE1818DB0DC0EB322EABBA
          B63FD5EB7D6CCBBE6F1B83FE9E67BA82E084C0E4123697CAE0D109BC94805B0C
          E7AFCC606A66EEECF75FBCBB753AFAEB2201A0BD3E7861B02914D8DBF34408A9
          AC0D2181D3672E23319D81AB950D016CEBED824E809A722FC62E4CE17A343130
          D4DF73507FB9FFAB551E9F6FCF93EB82B879BB088D52504A14FCC9CE4E95F79D
          B80CD396284A8179C7D3DD1144F29FEC5BE1D73E1BA6BEB2C09BEDCD955A7CCE
          44D1744C1687C9045C05EBFC686F0DAADCB08413D2098E89B4E1BC5779965687
          5ED585D03ACBFDA548E7197EFA711C776EDFC5FF12200A7075F4E85975D7D4FA
          F1F4A635A82C5F02A2956CD46D2EEB1D160B455BC19FEE5E0F4A885A45828071
          81137D1B61DB0C1E5D43E4C8CF5858E4D0A1810BBA5CB76DEEBDB768C1E604AE
          EA6B1F40D9121F0A265385BC0E5457530109404A8010E27805EEE60598CDA15B
          8699C8E7CD4784EEC3F2BA00767C340A4AA9327E79300CE1505BDEFF0E9AA681
          5082150DD5604CA26858282E1693D428E42F6666B3909068EF68C5E6171FC7E6
          17BA611A260C93A9029C713CF7FC3A3C1BEE404B5B2398E0989FCBA190FD774C
          CFA46243B11B4B77ADADF67BB236478E10500AA5D2121D5C48354D3A674108A1
          56114C201E4BB1D9F86FA70880FB1EDD3E34B0A229B4E7E1350FC2E22E2011BF
          16C3FCBD050557562DC3CA964608B8B4C4E49F4924A27F1F193F1DD9AF03B0FE
          1AFDE03D113EDC6431B1A96575089212B4AD6D555F581280D902398343308EC9
          EB49DC9A981A75E043000CA46D09005A49457059DB4BC78E77EDFCDAEAFDF892
          DC3B1295EF7C13977D4E444E45E52BCE5BE7AE338555E10FDF0650EE32B30E4B
          D24C0212A8F210EAAED3D01969BB3FD0BCDDE32BEB06D56AD5D09CCDDA66EE62
          EED6EF43A9AB2331008603ABCEFF019D3AAD15CCD8D2E00000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000C744558745469746C650054726173683B649A356D0000
          024249444154785E75924F6BD44018C69FD9CC36E976975D28A52DDA562DB1C5
          2FE021C52FE04128C52A28BD7810912E5814113D78F0E4A907BD0852C4434FF5
          50B4071145DB83081E2C45BBBBAD8AF51F8B6CDBD5CD6EE69F99A181B0A40F09
          79923CEFF07BDF19AA94429BC8D9A96B6FFA7ABB3DC7B10128B45A0C3F7E5657
          E61FDD1D439B28122484F06AB5DDD9B907776E025053176EDC9652CE2041D475
          5D63CAE532C6CF14970921DED0E14184CFE2E973578A1A7060E8204252FD5FE3
          AE2CCCCF8EE9BA38013935397DFFD8E8B037E21E427F5F0F0AF91CD21D142CE0
          A8FFFD87ED9D3A46DD419437BE7961F61E80CB9A8EEA62002925E5C542EF01EC
          0629A4EB01489AC39104CD264775BB893FB526FC264177FF004AA5CD4B00A601
          C888C0924262F9C54B8D0E4A2DA42905491128A9C03807E7C2B4111BBA151118
          ADAF3ECF1F3F31BE3331711241AB85ADEFBF313A321C12F82855BEE2A87B04BE
          DFC0D2D22BBC7DBD5068DF05012050522293C982520A100BD95C0E969582440A
          99AE2C0801A410D0598D1F23302F4C2A820EDB41486E2663DBB62E306D394E67
          E83974265A2022507BDB2826CFCF98FE95A4900A86C40A6F2194FEAE7D442012
          0F92101C003197E01ACA583D40E3A24C5C541FA04882F3A8084CA3EF2DC6431F
          CF542A15E3955271021D94918D500D03E73C2193D402E7D50FAB6B3D9D8E6D82
          1B9B9FC1183733F8F8691D8D860FC1D9D6BE0B1025E79E3E59BCDA95CDA090CF
          E3D7970A1817085A0C6BEFDF210818A8957EBC2FC1B3C587D701DC8A9D0D2BC1
          33C4F41F3E8F1596C01C0CF00000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
          72733B526962626F6E3B6463C8680000037D49444154785E4D8E7F4C94051CC6
          3FEF7B77E02073EA92742577579B684891E62AB6C4526B6013696BC9DC5A0B33
          D0322DA716D3CA94A21A8E96E976AEB654688E409B46B859CC249500E3F81588
          234EE0F875DC1DF7A3BB7BDFF7DBC16AEBD9F3D9BEFF3CCFF7C13555CB58A801
          40014CC5E5696BF638D24FBEF7EDF2D683550F7B0E5666B4969C5A5EBBEBCB65
          2F0209803A116E6438F82377A66A60385007A0E4EFB2A5BC51B1B4AEF4EC5AB9
          D476583A87AA642C7055BA47CE4A43F72752713157F67D93DE54B0DFBE04308D
          867E9E290050725F4BBDB7F8E8B29EAA86B7C4E5BF203DDEE3D23E71585AC6F6
          48E7E4C7D2E777C870A05E7E68DE277B4F668C6EDE6BCF00D4017F350A607EF5
          48DAB99CECBC9CF4343BC3E1264CAA60C282AAA8288A028A30313E852DE509EE
          0C4D72EEF26967CD17FD4F0EDE0A064DF9BBEDEB6CD6C51F3C9DF5382EFF1540
          104014216E500C2ED6DDA4F67C3BEDB79BC9C95EC3E8F8784AD28288BBADC1D3
          6C4E98652A7C2C7D2543816674430304C4885B0755E1CC99EBCC51D750F14E35
          DBCB32E91DF98DCCA5ABE8FCB36733E0500D3132EF9EAB108C7AE9ED1BA6B4AC
          969F2E39896A11CE5F68212529975D5B4A395A59C40B79CF6049D0489AAD81AA
          3C0A9854436741140FE148809AEA16CA8AAEA34C65F1E9E7F524EBEBD99A7F80
          53751FB2707118EB836642311F31C63174497C286BEE6C55D3F48971DF2088C1
          A60D6BF9BAB6849D0547D8FD520D2F3F5F822FD8C7AFCEEF58B16A11FEC82831
          3DC6A87F8868C488745C9D0C9AF5A8D2E51EF15BE72FD248B127E2F5FE8DE3FB
          FDEC28280755E1FDCFB691BF310B6FC48566C4C030F08D458984B40E4057837E
          ADAAA7CB87A0E2090EB2E491594C1A4DD45C2EC779AB0E53B287C4399384A353
          718288A8F4767B09F8F4F380069094BBDD7AB3E474869CB8B1428E5DCB90AAB6
          0DB2E59055B2B621C72EAF93134D99723C8EE3F79572A83A5336EEB439EF9A67
          990FA82A1071F7855EF9E35AC0D3EB0C010A9EF000799B56F1EEDBAFC7BF87D0
          0D411185BEEE30AD8DFE88AB2B501CF0C4FC5706DE34CC0D7F15E9AB53BF6A17
          784ED78C4AB72BF6803DDD82B6B013D5A420064CB875FABB628CB8A21DEEDBA1
          A2D6FAB11B8066480C7EE92F045000737CD6BCA736DFB77F7D616A63EE769BCC
          B0C326CF6E4D6D5B5D70FF47C9732CF700164099CE4D3373FCA76CAB43052CFF
          62065440001D884E130F19FC4FFF00FE20CB5D5DF1FFF30000000049454E44AE
          426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001D744558745469746C6500436C6F73653B457869743B426172733B52
          6962626F6E3B4603B9E8000002AD49444154785E85934B4C546714C77FF73232
          0C041DC2237644C368F109868D98A0290BDA60E2DE9526921856C3C2A08C2E1A
          A336A64DB48D81A8892D6E241A7CA20B1530261849DA4D47596818082F015118
          0698B973DFB7773EB1333BEE97FFCD3927DFF97DE77B1CE9E3AF17293FF3B30C
          48426B7D9939765A1290337AE1DC4B8F2CD73B0E802306C24CEB9BE7ACFA6206
          86650FECFCE55283079025DBAE2F3D5CB79A94B58E206692C5CF1606933DAF7F
          006451BA69986099A8C3C38C3C7846D791D3BCB97413351A151AFCADD38D8589
          DE7F412A3A426A388AC801D92300A689E36A2A1225129923D8D1C9FC9387FCDD
          D587244BC4037BDC581B91AB97716C93F2AA6D989A004802A0AF28382EF19F3B
          FD34F4F7515852C4E2AE20FFFED10140CDC9101B0ABD54B4FFCEAB1F7F62D3F9
          0AB4643203589E9C469F9926B8BF8AF947DD94B5849072246A5A43E040913F9F
          BC75394C3DEE2658BB9BD4F07BE2E3B35915A83AFAA719766CCDE7C3403F43C8
          6C6D6EC65FE8C391C0B660E8FA359203BD546EF7A34E4C60A49C2C8066602514
          B4D94F98F12596150DDB721043DC84CC4A3A168FA14FA75CA085A17D05885B30
          D280548AE8FB39947D8D048E3661D936DE5C99BC5C8FB0BF3BD684527B88D1D1
          18B6AAE22E9A5D8186954C105B50680C87503D3EF2BDEE9E6FFD0940F9F11380
          8FFA700BBD4FEEB2A94842D73D990A74DDC45C49B2A37A336FDB4E5122AB8C5F
          6FE7CBBDDB7C763571A39D328FCEBB702BDF6F2FC352750C4DCFBC0343750189
          243E3381131BE369DD018A4BD71328CE136730D7D3CDD3CEBFD8B2A518AF99C0
          4C030CFEDF82EBE802602C2CE22DC8676F7500633981E2DE0C1694FAFD6C2C29
          419D8FA12515B06C4C43461080822B6595CF7D927410475A3DF9ACA6B0859FDD
          50C2566C7BF0ECD258A3E846200FF066B5AAB4462B3B800628FF0122CC6063F4
          5F96130000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000005A744558745469746C650044656C6574653B44656C6574654974656D
          3B52656D6F76653B52656D6F76654974656D3B44656C6574654C6973743B4C69
          73743B52656D6F76654C6973743B4974656D3B4C6973743B436C6561723B4572
          61736558E2170B0000025A49444154785E75514D68135110FEDE26246DB45A25
          956890A6554B4CD14320280A9A6A405B7F5A512A4A5BF1E045AC41AB3978E925
          15A445945E04ED45F1A7880729A4C550C1A306AA3DB40715C5D2B4B056441375
          93ECBEE7CE23592236B3CC0E3BF3ED3733DF3021041863CADDD1B7934C616190
          0980F20220B75E020CBCA0BF3ADF1DDA6FD60DCADA210DECE7AF42F8F2D910CA
          F0CBDAD0C89BBD84A74439010C43400840CBE9B22E2C16062A0806B8AAEC268E
          633902661806C89E25DFCB6139ADC1CD683A3DD98C86DEEE100C5E81205F30E4
          DEC7224DB231B7F6A6202791B97C4EAF4090D7256074625676169244AA29F399
          AC86E8991D205C050DB89CE078C40FABB760148B9A48D29206F86F024E04009E
          2466A8A32562F366371ABCABF0FD8706FFA63A9C68F563F01AEC747A005CF9E7
          0A1CE86C0DE024795B003DEDDBB0DDF60D467F0C6B934F51D07EC335F608EF0E
          B47D4886F7450028D6043AE7A0191E8ECD94DAE370B8117F6E0FC377AE03D9D9
          8FF87CA117753B035879A9CB938DDF1B01D06069205710C0A943CDE045826AA7
          822FF5F5584ABE803BE887AFB3054A46C562621C69F5EB64B906746FF9A3D369
          A384A581371AC5D4E91E93CCACAD7621935E422A3195BEB930D757AE012FE4B4
          97B1F804AE163D161F476A7A0ED3FDD7E1DB1580DD6143E6D33C1C5536048FEE
          F15E746F1C0260A3F394EEEA00E002B0A2CCD73C6F0AAAEA4054A43A5AC41D4F
          E3C2EB83BBC5FC952E71ABD6BB08C04904159D3A0CAFDF72E4B177AB3A58BBE1
          BEDFEE5C3750E37970A3C6A3F655BBDB490246C04AC64C03A014B522A041A4C5
          9C4EDF7F01B0BA3D657982DCCC0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C00000013744558745469746C65005461626C653B466F726D6174
          3BEEACCAE30000021549444154785EA5934D48545118869F736712A79F51C4A9
          46987E409344374D928BB25DA5549B70E132A8085A18D5A2458C302E5AB45128
          DAD9AE45C2400691D09F1658368C2D9A40936482A162A4182D679C7BEFF9C273
          C7C52CA2605E780F9CC3FB1D9EEFE31C252254233FFFA9F4CD28221203E222C4
          10890BA0CAB68CFF2E93490DB617B430A590EE683C6D256FB48902FC17865F3C
          5396AF1B013116CF5AD817A9A73D3746289BE0C0A52156B29FD91ADE45F2F63A
          04713FE0D35A75F7F576200800739F96686D6904140D011F6EE10A81A719F273
          536C092A7ECECE522CD8939625837E40D925D714E77ED90661F1DB320DE12008
          58D4A09F8F50F83049CBE173E41752D43504714B6B471D882920D03F34B11AED
          D8CD97EF2B881228B7814073539096A66DECAC159646A2D4371FE2C7FC343DA3
          4BF58FCF36E60D41A9E4D0B67F3BA1481D88E2CDDB45BABAF6A04419B287D38B
          0C9FEF24D37395BD27AFF1F2EE75E096DB339AF3A6BFDE0266701839AE47A14D
          39685753B235E16397715C4DBAF638800230048E6DF3EE7D96CCD7653634F96A
          8172172881FB8919B3DF110AF2713E5B7941C45760A0B715DBD10830369EA4EF
          F4C18D0C0FC6673873AA13801ABFC5A389540501B6E37AA8E5532D1E3A1BAB00
          659A92A3715CB7E2856DEEBF78E7897F53E0881712442A8B45C404C56B88B5E2
          EAEBC4BD811322F25B013EA016A80114FF9601018A22E256FD1B2DAAD41F8DD3
          05892EB1B9590000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000019744558745469746C650044656C6574653B52656D6F76653B4D696E
          7573EBA98F410000031A49444154785E7D925F4854591CC7BFE7DE3BA3B9EEBA
          0D3BDBE85A3AA5C16A85586DB4B49459490FBD444B62C63EB450ADECD243D4DA
          4345F4982804D58B0F1541FBB02C0B1995AD44160A8B59499A8330E3486AEA4E
          EBCC9D3F77EE3DE7F43BF78A8F9D3F1CB8E77EBE7C7E3F0E8B9816D4585F5CC0
          00B0B6AE87352B8ABF3CAA33A311BA5ECD20B9E43CEAF07CDFC274ECFACD8B2D
          9300C4B86949179C48E7A1C0FAC6E68253D7063ADB6FBD726E3D8BCB0763F372
          E8BD295FCC99F2E1DB0579FBF9946CBFF93279B2A3F73800BF6214CB145CD770
          D8BFE3D0A9BFD7AD0934EDF97E0D3863B0B8844D5B69F90C06BFC6C0F30EFA06
          A6109D9ABFD773E34CF3E4E86046DDEB273A9F76568583BF36ED0C637AD18690
          804680DAF04421A404E52054E247EFD3284646631DDD679BCEB11FCFDEA90D55
          54BDFAE9E0063D9AC843D73417D469330DCB43081522C0395019F0E3CE9F23F6
          D8F0B32DACF5F2A3EB0DDBD69D280EAD84E500BA0E18068530461BCB830BCF82
          73E19AD98945F4F40E771942E8DB4B02C598331D3CF96708EF6712F8D4089506
          B07BDF667C55F21998BE62AF418D2A2716A9ACEDC2577F6BF04AD0DD52BC2E33
          AF177E9F8E63571E2395E130A093955666D836F77FC8E46173CF7755B0044585
          3EA2D4F202A49AEA945E98CD0512A6806353503E67C54CD3DA288C02947D1344
          CBA57B64A0B93F1A7E03B66543231B5DD7C1C86875C52A388E4436974736938D
          1BB9B4D9BF30BBB87165791075DB6A51E8F31A48CBB3905063D9C07238523907
          FFCF27915EFCAF976D3A70A1BEAC7AEBE0D65DB53EEED54B06DEA9A65A588285
          106E9070045E3F7FEB4406FFDAA2AE0BBF6BEDEE585D15FEE5DBCD6B91E79260
          E95A80B632904B0E028A9698781D476CF4CDD5A1BB6DBFAB00AD2850F945CDFE
          8B7F9486CBF7D5D4872135A6743DCC2D4312CE20487F62248E7791E8FDA1BB3F
          1F0190D4E66C29328958EA4DCFF9E6C9B1C88DFEFBC3F6E4F80C72664EE1AE7B
          266D211E99C1C0A39799C8BF03A7096E01909A2596CD399EE3D73EA6A9722AB6
          B76D2A0A56B7FA0A3EFF019A5EEA4A7367D6B692FDC977C3DDD32F6E8F03C811
          EC3A7E0415947A6BBEDAC8770000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000C744558745469746C65004D657267653B7EAEA03C0000
          01E249444154785E85913D6B154114869FB33B3711AE8851345E3F3A41894144
          ED35828D22825C51531AD268A169D442C1221262218428A6B3110B8D68AC420A
          4D7A15117F805F1724218504215EEF9E57D861976DA24FF3CE9C0333CF9CB13B
          13B3F349921EA14042180660200188185410EEBE60639373BA323C40B5FFE153
          8B03FD3BA8F2FEE3770EEEDF49957B53AF09120868B71D4C80F1F9EB327D7B1A
          8888015FBE2DD3BF777B59E84A13E48E5D7A785885A60B64446F3762C3110908
          84C71AE079889075C48513C7F8372A438592E0D1CC1C215306C0D2AF1F086122
          4796EF40C2CA23621A624BBD816790B80B49B83224C71119C2E528D6C8F03C27
          EE3FA5D55A8CBDF80B84CC153712930FA6F91FCF5FCCD33C33C0D6DD0D5C22B8
          531A5C1F19667DD76622A2400233B8353ECED0E020BDDB3660969265D1001092
          B3F27B8995D54528670FC2CAD95CBB7A91D46AFC5C5DA23BED450E767E6C9F86
          9AC7AB57C52C06B646024C3D99C5CE8DF6955FAF8A7614132A0E94205F5AF99F
          02C22E1FE5E6C849DA1DA760FAD53B9AA70E9163319ECDBCE5ECE95813462D4D
          B87DF725C1DD7141080938399B7AEA8434018A5BA167639D3449CB3720701776
          F9C6E337A1D67DB4AA25A27E44519BE249C494F1A7BDBA60C03A2000C61AACD1
          13D0F90B6C2B1F4EDD4AB9020000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000002B744558745469746C65004F70656E3B466F6C6465723B426172733B
          526962626F6E3B5374616E646172643B4C6F6164F1C3C4630000022249444154
          785EA593BD6B545110C57F6FF3242AA9B412144B3FB1500CA20663FC032C6C44
          B0B010041194147616366295805A88A058898D8D106C444D6C44123426120959
          36B8316FD9F8F2B15F6FDFBD7746B9EFAD82019B1CB81C6698397366E006AACA
          461000859CC959F327FC079DC1E1C4C381D785807EB21815A827E642DF8DB1E7
          E30F4E8BA2A0CA1F12A5F7FA281D8488F61FBAFC940C8A6DD5987A76F3DE9D4B
          FB468F5C7D53653D0470B94B426704DC2AA4DF517184380E9EBBB6DD99E1F2A9
          03DB4072BB0AA2608C1B1BB8F5E10C6032012BA00E5C422016D4D2250D0E5F1C
          24E8DE0104A00208AA8ED1BB57FA80AEBF02A9CB046C82DA26625BE00CD4CBA8
          CF1B54F21A1556AB75809E20080A800BDEDD3EA67D8343C8CA272AD3E3C40B15
          54404510C92EA7A28888E7A5F92AEAD38A38AD862675B4E28864A1C872D460FF
          F961BC786E1B71A85A108B3A8B8A0149894BDF78FB6868DEAFB05A2E11CFCCD2
          B3AB174D221AB32F51DF90DD47457C8C737E1D114769B2CCCA9A19094DDBB154
          9A632D5A66E7F1BDB42BD3D85ADC29CC9A54C04F17C40B0951B1C29772FD4598
          B62D4B73737477F7B0796B487D6602DB58F6D63B2E347391E71CB59536F1CFC6
          D7FBEFA362D86AA4B018B1E7C44992C529926AD14F50BF7BA749BD082A5EA8BA
          9010D7CD0860C24633FD88AB1D9D1C79C5647E5D72560001505401554421B55A
          FEFCA3F9184803600BB00928B01EC13FB10206489E9CDDED0036FC9D7F01FAB6
          A14B22EE620A0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000B744558745469746C6500536176653BF9E8F909000000
          5249444154785EEDD1310AC0200C86D19CD7EB7810C74C39DBAF2D4A86188215
          3B397C82441E0109C056EF915391169EFA1D263B1305DC478ACEF03F006D0970
          8B81B87380AE1F7701D0915FE00F000F60AB0ABEAED30B0888EDC10000000049
          454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000036744558745469746C6500506167652053657475703B53657475703B
          437573746F6D697A3B44657369676E3B53657474696E673B50726F70657274EE
          3B616D000002D949444154785E5D926F68D55518C73FCFD9D5BBBBCAB1ED6612
          B817DA16D606A2D48B819B8631ADC1DD2632962C31442C29885E0C5FCC17D11B
          85486C6D8C18283A169984C3406A5B39596CB3EC8F7B61AE568381BAD9FEE96A
          F7FECE394FDCDFEF0AD28B2FCF730E87CFF3FD3E1C014CFBB91F078D3135008A
          820280AA003EAAEA51A2739009AEBE77B06AA7AA66628011A4E670F36688083C
          D2FCEF18955367AE6D03F200628058F5A090CE38145005EF7D2800C420C6A028
          F9AB0CCE7A0011110C202EF0003855BC579C73749CEEE3D889D3B47F7A81C1A1
          1F58496742A02A58EB00A4E9401B06C087178A6A240F14AC56F2DCBF54569471
          E7DE029DDD1748AF04E180C02A805867A30881F37855B2551010A1796F1D3DBD
          17F96E68944307F7F175FF1097FB8769A8DB8E7591036F5D2E82F3A1ED0F3FEE
          E1CAF075026B43C8ABAFBCC4C4C424730FD2943FB381D16B37B0D662BD05C0B9
          1C20081C59C8CCEC3C77671618F87694E5E57F181EFD85977756E39C52589C64
          6171299CEE5C2E420E40105922CF1892C922161797397EF20C4B4BCB54566EC2
          3A65FAF62CB1BC58B8C092C244142102448D88E1B9674BB9317E931D3BAA686B
          3DC4AE5DDB49AC29C27B47F2C922366E2CE5FB919FD8B4A118C0645D3FDC4138
          7D776D35537F4DD1D1D5C357FD63FC393DC7AD5B9304D6B39276A4EA77F3F3F8
          1F8C8FFF0A10FFA6EF130901D60322240A1EE368EB5B3CBDB6902F3F3FCFBB47
          DEA6F3D449BEE8ED21C838A6EEDCA7A131C5C2D23C5BAB524D403C06908DA0C0
          9A82D53C9E88F1C6FE3DBCBE2F85B5D1720706AFF0D9D96EEA9BF6F3FBF41CF5
          7B52D9257FE455E604C83FDC7AFE722C9E5FE3158C107D260511E5A99227A828
          2F616CE42A37277EA3B1E54DC0B3AE28CEFBC73EF85B0003C4815580E4C42395
          876F926B4B5FDBFC62CD89869623220867BBDA674455011011D69755E3BD0D23
          791F69EB0BDBB83E728999DB9302240A8BD7353FBFA5F6B87AE5FEFCDD77FE03
          B7507F361277596D0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000000A744558745469746C65004261723B5E569F8C000001B4
          49444154785E8593316B14511485BFD9C9AEFE1A2DB4D2DD35EE22D8A4B310AC
          146C042158A44B13442B1BB1B01044528B104C1536D1B81A54047F819B22B82A
          1225099BECCEBBF708790F8B61875C3873CF3070E07E9CC980DAD74773BD2CCB
          6611801060E66FCF2DAC7601A37A98016A93D1C1ECF95BF36834043992B1F57C
          F91290019C14A0E1E0FBDAEAE2C215C970095C04F335409C3059523D8591DE95
          64653F2D205F5AEEACE7396D0148947708DA5CBAB9D905C254067B7B7FDB37E6
          EEF267B483CB9087B865981B2F5FBF6A03B54A0683ED5FBDFB4F16BB161CB970
          77DC854BC89D50A857C5234BC9A752585641DE81500A31201C03BCF7E273AF56
          AFB72488521288B83D3E10F17B3119F79FDD69758F19EC1E14ADEB57CFF263DF
          3081993017C1C1BCE493FAEFB69A403E03F8E0DBCEFA83A73F3B32C7FEDF1E15
          BD23252F22239B6C00960139701A684C6350BE39F120FAC8A0F1E95AA7D7C8B3
          262AF5408A1B18077B7F61A5DF05C6E51EE4C5EFDDE699F9DBD8701BB700C150
          28F010C00AB0C097958F17817C5A0F7CFFF068E3C3C3C797F1449F481C8188DD
          38727F0358450FD2BF507DBF128349629006FE01FB124139D1D3B92E00000000
          49454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          6100000015744558745469746C6500436865636B3B4D61726B3B5469636B0B00
          C7240000026B49444154785E95924D48156B18C77F338D7A94B436816090828B
          8B94919BBE886304C5599CEA9A14145177211246AB3641F6B16861044610B408
          23C842FB2410B4ACB06BDDD55510823072532267A19E93E76BE6FDCAF3323910
          44F4303CFF7786797EFFE77978BD9B2FF6BE715DA7955F8589040CC63818345A
          99B13389D13D5EA9B87DDB05FE341EFC7B310EB89E5286824A912ABC8FDCA2F4
          F3BB9575952D48A9019C6580466B89D63FAAED4F51B11558585CA27A75259EE7
          A2748092060B2891941168AD4213EB132930323AC1FF935FA85B5FC3F12371A4
          F6114202E009A12C512AB5E2684AC931F67C7F708CB565BBB8717690AEAB5B48
          67965853E12382B003DF170855442AC9CC4C8AFEC7236C6DD9C4EE783323AF26
          A8ADDEC7A9F66EAEF49DA03D99205659812F0A148A3E165022E5FD1CD97C9EFE
          872FE9E9FA8F47AF6ED1737D809D1B4FD2D176817BC397A9AD536C68A822574C
          53EE6411225C621048842C10C880B644923BCFBA39DF7997C9E9C3FC55BF994C
          EE33E3538374FC93643E9BB2E355951510221C41488D6F013E750D352C6632DC
          7E728ED3477BC175B874AD93FD895616B2B380C618F0450E1128003C19683B93
          54826F6A9EA6E675BC1B9FE2E9EB5E1AEB9B70631962D5057C195877005FE6A3
          7B2084A628F30825D00616E51CDB7734F27CA88FBEE14F1C3BF437393F83C158
          773025C368075228029127500227BC44F3B9AF1C4CB652597E80B9F4478A4202
          7A05501405A20EA4B11DC4BC1AB02E1A6D0CE9FC1C0BB95930066F5585FD8E01
          6DECCE501680F18A3931363CF4210E267C88344CB6D605B4E5E1601081790B48
          6FA0673A017880CBEFC309D50002F0BF03C5148A5699E7E19C0000000049454E
          44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000001974455874536F6674776172650041646F626520496D616765526561
          647971C9653C0000001D744558745469746C6500436F6E646974696F6E3B4571
          75616C546F3B52756C653BEF5F753B0000016249444154785EA593C14A5B6114
          84BFF3ABD9481FA910956EF5097C0577A5AEDA6EB24817AE051FC185AB964289
          C6F7110A114B9BDEFF4C6138046EB3511C0873CFFCDCEF4CF8B981452B0F9E2F
          010AA07DBC582EA2B5A910084BF204761B3E461E3273393F7F77B40B8482E9E7
          B3B72F582DCEE78B29D00CC894C3C7A7A1B63825D420404A225A354BDEEC4FC8
          2E00A7F42E241FE298DC805209E559E792E8E99C6A902885B3969010057237D7
          A02494D0BB01B10B1E48414AD0E1F8F4135000857DF5F381FBAF9706F5FF1B18
          202161FDB89E6189919E7EFF759629FFED71832C40C0C1C97B220249284424AC
          560F2CBF5D01B0DD20C590C2106071F3052BAA453DFB96BCD02DB61B24A6F2F8
          6B8DABD2F07A4103123BDDCB46B720860E2946F2FD0B14141ABA01396E90D9FD
          9BEC351C0B7BB0193CC9A1A86BDF34C8F57A7DFB61F6FD50F59A644C79310A59
          0C86E1CF1DD0036805DA79E1D738004348E235FA07373A1F50BD61F745000000
          0049454E44AE426082}
      end>
  end
  object PopupMenu1: TPopupMenu
    Left = 432
    Top = 95
    object MenuItem1: TMenuItem
      Caption = #36873#25321#25991#20214
    end
    object MenuItem2: TMenuItem
      Caption = #28165#38500#25991#20214
    end
  end
  object sdlg: TSaveDialog
    Left = 622
    Top = 24
  end
  object odlg: TOpenDialog
    Left = 670
    Top = 24
  end
end
