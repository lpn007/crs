unit Umain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus,
  System.ImageList, Vcl.ImgList, cxImageList, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxTextEdit, cxMaskEdit, cxButtonEdit, cxLabel, cxMemo,
  cxButtons, Vcl.ComCtrls,System.NetEncoding, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Colorful, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TfrmMain = class(TForm)
    pm_op: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    cxImageList1: TcxImageList;
    be1: TcxButtonEdit;
    cxLabel1: TcxLabel;
    PopupMenu1: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    be2: TcxButtonEdit;
    cxLabel2: TcxLabel;
    men: TcxMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    tv: TTreeView;
    Splitter1: TSplitter;
    sdlg: TSaveDialog;
    cxButton5: TcxButton;
    odlg: TOpenDialog;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tvMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormDestroy(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    function loadprolst(filename:string):Integer;
    procedure Clrprolst();
    Procedure loadstp(pros:string);
  private
    { Private declarations }
  public
    { Public declarations }
    hzFile,zbFile:string;
  end;

const
  TVS_CHECKBOXES = $00000100;

var
  frmMain: TfrmMain;

implementation
uses uSetup,ufuns;
{$R *.dfm}

procedure SetComCtrlStyle(WinCtrl: TWinControl; Value: Integer; UseStyle: Boolean);
var
Style: Integer;
begin
   if WinCtrl.HandleAllocated then
   begin
     Style := GetWindowLong(WinCtrl.Handle, GWL_STYLE);
     if not UseStyle then
     Style := Style and not Value
     else Style := Style or Value;
     SetWindowLong(WinCtrl.Handle, GWL_STYLE, Style);
   end;
end;

procedure TfrmMain.Clrprolst;
var
  i:integer;
  node:TTreeNode;
  pData:PTNodeData;
begin
  for I := tv.Items.Count-1 downto 0 do
  begin
    pData:=tv.Items[0].Data;
    dispose(pData);
    tv.Items[0].Data:=nil;
    tv.Items.Delete(tv.Items[0]);
  end;
end;

procedure TfrmMain.cxButton1Click(Sender: TObject);
var
  frmSetup:TfrmSetup;
  s,s1,s2:string;
  pData:PTNodeData;
begin
  frmSetup:=TfrmSetup.Create(self);
  try
    if frmSetup.ShowModal=mrok then
    begin
      s:= frmsetup.stptxt;
      getrc(s,s1,s2,xp);
      //getRc(s1,s1,s2,xp);
      new(pData);
      pData.id:=s2;
      Pdata.data:=s;
      tv.Items.AddObject(nil,s2,pData);
      showmessage('Ok');
    end
    else
      showmessage('cancle');
  finally
    freeandnil(frmsetup);
  end;
end;

procedure TfrmMain.cxButton3Click(Sender: TObject);
var
  lst:TStringlist;
  I:integer;
  node:TTreeNode;
  pData:PTNodeData;
  s:string;
  base64: TBase64Encoding;
begin
  base64 := TBase64Encoding.Create(0);
  lst:=Tstringlist.Create;
  try
    for I := 0 to tv.Items.Count-1 do
    begin
      pData:=tv.Items[i].Data;
      s:= base64.encode(pdata.data);
      lst.Add(s);
    end;
    if sdlg.Execute then
    begin
      if sdlg.FileName<>'' then
      begin
        lst.SaveToFile(sdlg.FileName);
      end;

    end;
  finally
    freeandnil(lst);
    freeandnil(base64);
  end;
end;

procedure TfrmMain.cxButton5Click(Sender: TObject);
begin
  if odlg.Execute then
  begin
    if odlg.FileName<>'' then
      loadprolst(odlg.FileName);
  end;
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //SetComCtrlStyle(tv, TVS_CHECKBOXES, True);
end;

procedure TfrmMain.FormDestroy(Sender: TObject);
begin
  Clrprolst;
end;

function TfrmMain.loadprolst(filename: string): Integer;
var
  lst:TStringlist;
  I:integer;
  node:TTreeNode;
  pData:PTNodeData;
  s,s1,s2:string;
  base64: TBase64Encoding;
begin
  Clrprolst;
  result:=0;
  base64 := TBase64Encoding.Create(0);
  lst:=Tstringlist.Create;
  try
    if filename<>'' then
    begin
      lst.LoadFromFile(filename);
      for I := 0 to lst.Count-1 do
      begin
        s:= base64.Decode(lst[i]);
        getrc(s,s1,s2,xp);
        //getRc(s1,s1,s2,xp);
        new(pData);
        pData.id:=s2;
        Pdata.data:=s;
        tv.Items.AddObject(nil,s2,pData);
      end;
      result:=tv.Items.Count;
    end;
  finally
    freeandnil(lst);
    freeandnil(base64);
  end;
end;

procedure TfrmMain.loadstp(pros: string);
var
  I,cnt:Integer;
  s,RCs,Rs,Cs,Rt:string;
  frmSetup:TfrmSetup;
begin
  if pros='' then exit;
  frmSetup:=TfrmSetup.Create(self);
  frmsetup.creatmds(pros);
//  getrc(pros,rs,cs,xp);
//  frmsetup.te_nm.Text:=cs;
//  getrc(rs,rs,cs,xp);
//  cnt:=strtoint(cs);
//  for I := 1 to cnt do
//  begin
//    getrc(rs,rs,cs,tsp);
//    frmsetup.creatmds(cs);
//  end;
  frmsetup.ShowModal;
  freeandnil(frmsetup);
end;

procedure TfrmMain.tvMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  s,RCs,Rs,Cs,Rt:string;
  node:TTreeNode;
  pt:Tpoint;
  pData:PTNodeData;
begin
  GetCursorPos(pt);
  node := tv.GetNodeAt(x,y);
  if not assigned(node) then exit;
  pData:= node.Data;
  s:=pdata.data;
  getrc(s,rs,cs,xp);
  getrc(rs,rs,cs,xp);
  men.Text:=rs;
  if (ssDouble in Shift)  then
  begin
    loadstp(s);
  end
  else //if (button=mbRight) then
  begin
    be1.Text:=getval(rs,'file1');
    be2.Text:=getval(rs,'path2');
  end;
end;

end.
