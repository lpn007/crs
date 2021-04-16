unit Usetup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinsDefaultPainters,
  cxControls, cxContainer, cxEdit, cxLabel, Vcl.StdCtrls, cxButtons, Vcl.Grids,
  Vcl.ExtCtrls, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxButtonEdit,
  XBookComponent2, XLSBook2, Vcl.Tabs, XLSGrid5, XLSSheetData5, XLSReadWriteII5,
  dxCore, dxCoreClasses, dxHashUtils, dxBarBuiltInMenu, Vcl.ValEdit,
  cxRadioGroup, cxCheckBox, Vcl.ComCtrls, cxPC,uss;

type
  TfrmSetup = class(TForm)
    pn1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    xgrid2: TStringGrid;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    be_hz: TcxButtonEdit;
    cxLabel1: TcxLabel;
    be_zb: TcxButtonEdit;
    cxLabel2: TcxLabel;
    opdlg: TOpenDialog;
    xls1: TXLSReadWriteII5;
    xls2: TXLSReadWriteII5;
    xgrid1: TStringGrid;
    Splitter2: TSplitter;
    pp1: TPanel;
    vgrid: TStringGrid;
    ck11: TcxCheckBox;
    rb2: TcxRadioButton;
    rb1: TcxRadioButton;
    ck21: TcxCheckBox;
    te21: TcxTextEdit;
    tab1: TcxTabControl;
    tab2: TcxTabControl;
    Panel5: TPanel;
    tab3: TcxTabControl;
    Panel8: TPanel;
    rbr: TcxRadioButton;
    rbc: TcxRadioButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Label1: TLabel;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    Label2: TLabel;
    Panel11: TPanel;
    te11: TEdit;
    Panel12: TPanel;
    ck2: TCheckBox;
    ck1: TCheckBox;
    te1: TEdit;
    te2: TEdit;
    Panel13: TPanel;
    procedure be_hzPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure FormCreate(Sender: TObject);
    procedure xgrid2DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure xgrid1DrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure cbe_hzmsPropertiesChange(Sender: TObject);
    procedure Panel3Resize(Sender: TObject);
    procedure vgridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect;
      State: TGridDrawState);
    procedure xgrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure xgrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure vgridMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure vgridExit(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure ck11Click(Sender: TObject);
    procedure ck21Click(Sender: TObject);
    procedure xgrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure te11KeyPress(Sender: TObject; var Key: Char);
    procedure te21KeyPress(Sender: TObject; var Key: Char);
    procedure tab1Change(Sender: TObject);
    procedure be_zbPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure tab2Change(Sender: TObject);
    procedure rbrClick(Sender: TObject);
    procedure rbcClick(Sender: TObject);
    procedure tab1DblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
  public
    //vgrid:TStringgrid;
    minwidth,maxwidth:Integer;
    ssList:TList;
    file1,file2:string;
    idx1,idx2:Integer;
    strow,stcol:Integer;
    RoC,sel,rL,cL,Loading:Boolean;
    Function vgFindRow(grid:TStringGrid;key,value:string):Integer;
    Function vgInsertRow(grid:TStringGrid;key,value:string):integer;
    Procedure LoadSheet(grid:TStringGrid;SheetIndex:integer;xls: TXLSReadWriteII5);
  end;

var
  frmSetup: TfrmSetup;

implementation
uses umain,Ufuns,Math;
{$R *.dfm}

var
  CS: TRTLCriticalSection;


procedure TfrmSetup.FormCreate(Sender: TObject);
var
  i,j:integer;
begin
  sel:=false;
  for i := 1 to xgrid1.RowCount-1 do
  begin
    xgrid1.Cols[0][i]:=inttostr(i);
    xgrid2.Cols[0][i]:=inttostr(i);
  end;
  for j := 1 to xgrid1.colCount-1 do
  begin
    xgrid1.Rows[0][j]:=numtostr(j);
    xgrid2.Rows[0][j]:=numtostr(j);
  end;
  ssList:=TList.create;
  vgrid:=nil;


//  vgrid.Cells[0,0]:='汇总单元';
//  vgrid.Cells[1,0]:='子单元';

  file1:='';
  file2:='';
  idx1:=-1;
  idx2:=-1;
  minwidth:=40;
  maxwidth:=200;
  cL:=false;
  rL:=false;
  Loading:=false;
  strow:=1;
  stcol:=1;
end;

procedure TfrmSetup.FormDestroy(Sender: TObject);
begin
  ssList.Clear;
  freeandnil(ssList);
end;

procedure TfrmSetup.be_hzPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i,j,w:integer;
begin
  with opdlg do
  begin
    if Execute then
    begin
      if Files.Count>0 then
      begin
        if file1= Files[0] then exit;
        be_hz.Text:=Files[0];
        file1:= Files[0];
        if (XLS1.Filename<>file1) and (trim(file1)<>'') then
        begin
          xls1.Filename:=file1;
          xls1.read;
          xgrid1.RowCount:=0;
          xgrid1.ColCount:=0;
          Loading:=true;
          tab1.Tabs.Clear;
          for i := 0 to xls1.Count-1 do
          begin
            tab1.Tabs.Add(xls1.Items[i].Name);
          end;
          Loading:=false;
          if idx1>=0 then
          begin
            tab1.TabIndex:=idx1;
            self.LoadSheet(xgrid1,idx1,xls1);
          end
          else
          begin
            idx1:=0;
            self.LoadSheet(xgrid1,idx1,xls1);
          end;
        end;
      end;
    end;
  end;

end;

procedure TfrmSetup.be_zbPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
var
  i,j,w:integer;
begin
  with opdlg do
  begin
    if Execute then
    begin
      if Files.Count>0 then
      begin
        if file2= Files[0] then exit;
        be_zb.Text:=Files[0];
        file2:= Files[0];
        if (XLS2.Filename<>file2) and (trim(file2)<>'') then
        begin
          xls2.Filename:=file2;
          xls2.read;
          xgrid2.RowCount:=0;
          xgrid2.ColCount:=0;
          Loading:=true;
          tab2.Tabs.Clear;
          for i := 0 to xls2.Count-1 do
          begin
            tab2.Tabs.Add(xls2.Items[i].Name);
          end;
          Loading:=false;
          if idx2>=0 then
          begin
            tab2.TabIndex:=idx2;
            self.LoadSheet(xgrid2,idx2,xls2);
          end
          else
          begin
            idx2:=0;
            self.LoadSheet(xgrid2,idx2,xls2);
          end;
        end;
      end;
    end;
  end;
end;

procedure TfrmSetup.cbe_hzmsPropertiesChange(Sender: TObject);
begin
  xgrid1.Invalidate;
end;

procedure TfrmSetup.ck11Click(Sender: TObject);
var
  r:integer;
begin
  rl:=ck1.Checked;
  if rl and (trim(te1.text)<>'') then
  begin
    r:= strtoint(te1.text);
    if (r<=xgrid1.rowCount-1) and (r>0)  then
    begin
      strow:=r;
      xgrid1.row:=r;
      te1.font.Color:= clWindowText;
      xgrid1.Invalidate;
    end
    else
    begin
      te1.font.Color:=clred;
      ck1.Checked:=false;
      rl:=false;
      showmessage('超出总行数！');
    end;
  end;
end;

procedure TfrmSetup.ck21Click(Sender: TObject);
var
  c:integer;
begin
  cl:=ck2.Checked;
  if cl and (trim(te2.text)<>'') then
  begin
    c:= strtonum(te2.text);
    if (c<=xgrid1.colCount-1) and (c>0)then
    begin
      stcol:=c;
      xgrid1.Col:=c;
      te2.font.Color:= clWindowText;
      xgrid1.Invalidate;
    end
    else
    begin
      te2.font.Color:=clred;
      ck2.Checked:=false;
      cl:=false;
      showmessage('超出总列数！');
    end;
  end;
end;

function TfrmSetup.vgFindRow(grid: TStringGrid; key, value: string): Integer;
var
  i:integer;
begin
  result:=-1;
  if (not assigned(grid)) or (grid = nil) then
  begin
    exit;
  end;

  key:=trim(key);
  value:=trim(value);
  if (key='') and (value='')  then
    exit;
  for I := 1 to grid.RowCount-1 do
  begin
    if (key='') then
    begin
      if (grid.Cells[1,i]=value) then
        result:=i;
    end
    else if (value='') then
    begin
      if (grid.Cells[0,i] = key) then
        result:=i;
    end
    else
    begin
      if (grid.Cells[0,i] = key) and (grid.Cells[1,i]=value) then
        result:=i;
    end;
  end;
end;

function TfrmSetup.vgInsertRow(grid: TStringGrid; key, value: string): integer;
var
  i:integer;
begin
  result:=-1;
  if (key='') or (value='') then exit;
  for I := 1 to grid.RowCount-1 do
  begin
    if grid.Cells[0,i]='' then
    begin
      grid.Cells[0,i]:=key;
      grid.Cells[1,i]:=value;
      result:=i;
      exit;
    end;
  end;
  grid.RowCount:=grid.RowCount+1;
  //grid.cols[1].Add(value);
  grid.Cells[0,grid.RowCount-1]:=key;
  grid.Cells[1,grid.RowCount-1]:=value;
  result:=grid.RowCount-1;
end;


procedure TfrmSetup.Panel3Resize(Sender: TObject);
begin
  if assigned(vgrid) then
    vgrid.DefaultColWidth:=(vgrid.Width-4) div 2;
end;

procedure TfrmSetup.rb1Click(Sender: TObject);
var
  R,C:Integer;
  Rs,Cs:String;
begin
  with sender as TcxRadioButton do
  begin
    if checked then
      if name='rb1' then
      begin
        Rs:=trim(te1.Text);
        R:=strtoint(Rs);
        if ck1.Checked then
        begin
          strow:=r;
          rL:=true;
        end
        else
        begin
          strow:=xgrid1.Row;
          rL:=false;
        end;
      end
      else
      begin

      end;
  end;
  xgrid1.Invalidate;
end;

procedure TfrmSetup.rbcClick(Sender: TObject);
var
  flg:Boolean;
begin
  roc:=rbr.Checked;
  if vgrid.RowCount>2 then
  begin
    if messagebox(self.Handle,'将清除已有数据！','警告',MB_OKCANCEL)=idok then
    begin
      showmessage('OK');
    end;
  end
  else
    //showmessage('false');
end;

procedure TfrmSetup.rbrClick(Sender: TObject);
begin
  roc:=rbr.Checked;
  if vgrid.RowCount>2 then
  begin
    if messagebox(self.Handle,'将清除已有数据！','警告',MB_OKCANCEL)=idok then
    begin
      showmessage('OK');
    end;
  end
end;

procedure TfrmSetup.tab1Change(Sender: TObject);
begin
  //showmessage(inttostr(tab1.TabIndex));
  if (not loading) and (file1<>'') then
    LoadSheet(xgrid1,tab1.TabIndex,xls1);
end;

procedure TfrmSetup.tab1DblClick(Sender: TObject);
var
  mds:TMdss;
begin
//  //with sender as Tcx
//  mds:=Tmdss.Create(self);
//  mds.Parent:=pp1;
//  mds.vgrid.OnDrawCell:=self.vgridDrawCell;
//  mds.vgrid.OnMouseDown:=self.vgridMouseDown;
//  mds.vgrid.OnExit:=self.vgridExit;
//  mds.Align:=alclient;
//  vgrid:=mds.vgrid;
//  tab3.Tabs.AddObject('表'+inttostr(tab1.TabIndex+1),mds);
end;

procedure TfrmSetup.tab2Change(Sender: TObject);
begin
  //showmessage(inttostr(tab1.TabIndex));
  if (not loading) and (file2<>'') then
    LoadSheet(xgrid2,tab2.TabIndex,xls2);
end;

procedure TfrmSetup.te11KeyPress(Sender: TObject; var Key: Char);
var
  i:integer;
begin
  if ord(key)>33 then
  begin
    if not (key in ['0'..'9']) then
    begin
      key:=#0;
      exit;
    end
  end;
  if (ord(key)=vk_return) then
  begin
    i:=strtoint(te1.Text);
    if i>(xgrid1.RowCount-1) then
    begin
      te1.font.Color:=clred;
      showmessage('超出总行数！');
      exit;
    end
    else
    begin
      te1.font.Color:= clWindowText;
      strow:=i;
      xgrid1.row:=strow;
      xgrid1.Invalidate;
    end;
  end;
end;

procedure TfrmSetup.te21KeyPress(Sender: TObject; var Key: Char);
var
  i:Integer;
begin
    if ord(key)>33 then
    begin
      if (key in ['a'..'z']) then
        key:=char(ord(key)-32)
      else if not (key in ['A'..'Z']) then
      begin
        key:=#0;
        exit;
      end
    end;
    if (ord(Key) = VK_RETURN) then
      begin
        i:=strtonum(te2.Text);
        if i>(xgrid1.ColCount-1) then
        begin
          te2.font.Color:=clred;
          showmessage('超出总列数！');
          exit;
        end
        else
        begin
          te2.font.Color:= clWindowText;
          stcol:=i;
          xgrid1.col:=stcol;
          xgrid1.Invalidate;
        end;
      end;
end;

procedure TfrmSetup.xgrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  S:string;
  r: TRect;
  grid: Tstringgrid;
begin
    grid:=xgrid2;
    grid.Canvas.Lock;
    try
      if (gdfixed in state) then
      begin
        if acol>=1 then
          s:=numtostr(acol)
        else if arow>=1 then
          s:=inttostr(arow);

        grid.Canvas.Brush.Color :=$00eefeda;
        rect.Left:=rect.Left-3;
        grid.Canvas.FillRect(Rect);
        r := Rect;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), r, DT_center or DT_SINGLELINE or DT_VCENTER);
      end;
      //if (grid.Row=arow) and (grid.Col=aCol) then
      if (gdselected in state) then
      begin
        grid.Canvas.Brush.Color :=clyellow ;
        rect.Left:=rect.Left-3;
        grid.Canvas.FillRect(Rect);
        s := grid.Cells[ACol, ARow];
        r := Rect;

        r.Left:=r.Left+5;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), r, DT_LEFT or DT_SINGLELINE or DT_VCENTER);
  //      grid.Canvas.Brush.Color :=clskyblue ;
  //
  //      r.Left:=r.Left-6;
  //      grid.Canvas.FrameRect(r);
      end;
    finally
      grid.Canvas.Unlock;
    end;
end;

procedure TfrmSetup.xgrid1DrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  S:string;
  rct: TRect;
  grid: Tstringgrid;
  R,C:Integer;
begin

    grid:=xgrid1;
    //if (arow=0) or (acol=0) then
    grid.Canvas.Lock;
    try
      if (gdfixed in state) then
      begin
        if acol>=1 then
          s:=numtostr(acol)
        else if arow>=1 then
          s:=inttostr(arow);


        grid.Canvas.Brush.Color :=$00feeeda;
        rect.Left:=rect.Left-3;
        grid.Canvas.FillRect(Rect);
        //s := grid.Cells[ACol, ARow];
        rct := Rect;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), rct, DT_center or DT_SINGLELINE or DT_VCENTER);
      end;
      if (xgrid1.Row=arow) and (acol>0) then
      begin
        grid.Canvas.Brush.Color :=$00ffeeff;
        rect.Left:=rect.Left-3;
        grid.Canvas.FillRect(Rect);
        s := grid.Cells[ACol, ARow];
        rct := Rect;
        rct.Left:=rct.Left+5;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), rct, DT_Left or DT_SINGLELINE or DT_VCENTER);
      end;
      if (xgrid1.col=acol) and (arow>0) then
      begin
        grid.Canvas.Brush.Color :=$00e0fffe;
        rect.Left:=rect.Left-3;
        grid.Canvas.FillRect(Rect);
        s := grid.Cells[ACol, ARow];
        rct := Rect;
        rct.Left:=rct.Left+5;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), rct, DT_Left or DT_SINGLELINE or DT_VCENTER);
      end;

      if (gdselected in state) then
      begin
        grid.Canvas.Brush.Color :=$fff077;//clyellow ;
        //rct:=rect;
        //rct.Left:=rect.Left+1;
        rect.Left:=rect.Left+1;
        rect.right:=rect.right+3;
        grid.Canvas.FillRect(Rect);
        s := grid.Cells[ACol, ARow];
        //rct := Rect;

        rect.Left:=rect.Left+7;
        DrawText(grid.Canvas.Handle, PChar(s), Length(s), rect, DT_LEFT or DT_SINGLELINE or DT_VCENTER);

        //grid.Canvas.Brush.Color :=clskyblue ;
        //rct.Left:=rct.Left-2;
        //r.Top:=r.Top-1;
        //r.Right:=r.Right+1;
        //r.Bottom:=r.Bottom+1;
        //grid.Canvas.FrameRect(rct);
      end;
    finally
      grid.Canvas.Unlock;
    end;
end;

procedure TfrmSetup.vgridDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
  S:string;

begin
  vgrid:=Tstringgrid(Sender);
  if (gdfixed in state) then
  begin
    vgrid.Canvas.Lock;
    vgrid.Canvas.Brush.Color :=$00feeeda;
    rect.Left:=rect.Left-4;
    vgrid.Canvas.FillRect(Rect);
    if acol=0 then
      s := '汇总单元'
    else if acol=1 then
      s:='子单元';
    //r := Rect;
    DrawText(vgrid.Canvas.Handle, PChar(s), Length(s), rect, DT_center or DT_SINGLELINE or DT_VCENTER);
    vgrid.Canvas.Unlock;
    end;

end;

procedure TfrmSetup.vgridExit(Sender: TObject);
begin
  vgrid.Options := vgrid.Options +[goRowSelect];
end;

procedure TfrmSetup.vgridMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i,c,r:Integer;
  s1,s2,Rs,Cs:string;
begin
  //vgrid.Invalidate;
  vgrid.MouseToCell(x,y,c,r);
  if (c<0) or (r<=0) then
  begin
    vgrid.Options := vgrid.Options +[goRowSelect];
    exit;
  end;
  if (ssDouble in Shift) then
  begin
    vgrid.Options := vgrid.Options -[goRowSelect];
  end;
  //vgrid.Row:=r;
  //vgrid.Col:=c;
  s1:=vgrid.Cells[0,r];
  s2:=vgrid.Cells[1,r];
  if (trim(s1)<>'') then
  begin
    getrc(s1,Rs,Cs,'--');
    delete(Cs,1,5);
    tab1.TabIndex:=strtoint(Cs)-1;
    if rl then
      xgrid1.Row:=strow;
    if cl then
      xgrid1.Col:=stcol
    else
      xgrid1.Col:=StrToNum(Rs);
    vgrid.Invalidate;
    xgrid1.Invalidate;

  end;
  if (trim(s2)<>'')  then
  begin
    getrc(s2,Rs,Cs,'--');
    delete(Cs,1,5);
    tab2.tabIndex:=strtoint(Cs)-1;
    cstorc(Rs,r,c);
    xgrid2.Row:=r;
    xgrid2.Col:=c;
    vgrid.Invalidate;
    xgrid2.Invalidate;
  end;

end;

procedure TfrmSetup.xgrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i,c,r:Integer;
  s1,s2:string;
begin

  xgrid1.Invalidate;
  //if (file1='') then

  //else
  begin
    xgrid1.MouseToCell(x,y,c,r);
    i:=-1;
    if rl then
    begin
      xgrid1.Row:=strow;
    end
    else
    begin
      strow := xgrid1.Row;
      te1.Text:=inttostr(strow);
    end;
    if cl then
    begin
      xgrid1.Col:=stcol;
    end
    else
    begin
      stcol:= xgrid1.col;
      te2.Text:=numtostr(stcol);
    end;
    if (not assigned(vgrid)) or (vgrid=nil) then exit;

    if (strow=-1) or (stcol=-1) then exit;
    if (c<=0) or (r<=0) then exit;
    s1:= 'Sheet'+inttostr(tab1.TabIndex+1)+'--'+ numtostr(c);
    s2:= 'Sheet'+inttostr(tab2.TabIndex+1)+'--'+numtostr(xgrid2.col)+inttostr(xgrid2.row);
    i:= vgfindrow(vgrid,s1,s2);
    if (i>=0) then
    begin
      vgrid.Row:=i;
      vgrid.Col:=0;
      sel:=true;
      vgrid.Invalidate;
      exit;
    end;
    i:= vgfindrow(vgrid,s1,'');
    if (i>=0) then
    begin
      vgrid.Row:=i;
      vgrid.Col:=0;
      sel:=true;
      vgrid.Invalidate;
      exit;
    end;
    if (ssDouble in Shift) and (file1<>'') and (file2<>'') then
    begin
      i:=vgInsertRow(vgrid,s1,s2);
      vgrid.Row:=i;
      vgrid.col:=0;
      sel:=true;
      vgrid.Invalidate;
      exit;
    end;
    sel:=false;
    vgrid.Invalidate;
  end;
end;

procedure TfrmSetup.xgrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if rl then xgrid1.Row:=strow;
  if cl then xgrid1.Col:=stcol;
  xgrid1.Invalidate;

end;

procedure TfrmSetup.xgrid2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  i,c,r:Integer;
  s1,s2:string;
begin
  xgrid2.Invalidate;
  if (file1='') or (file2='') then

  else
  begin

    xgrid2.MouseToCell(x,y,c,r);
    if (c<=0) or (r<=0) then exit;
    s1:= 'Sheet'+inttostr(tab1.TabIndex+1)+'--'+ numtostr(xgrid1.Col);
    s2:= 'Sheet'+inttostr(tab2.TabIndex+1)+'--'+numtostr(c)+inttostr(r);
    i:= vgfindrow(vgrid,s1,s2);
    if (i>=0) then
    begin
      vgrid.Row:=i;
      vgrid.Col:=0;
      sel:=true;
      vgrid.Invalidate;
      exit;
    end;

    i:= vgfindrow(vgrid,'',s2);
    if (i>=0) then
    begin
      vgrid.Row:=i;
      vgrid.Col:=0;
      sel:=true;
      vgrid.Invalidate;
      //exit;
    end;
    if (ssDouble in Shift) then
    begin
      i:= vgfindrow(vgrid,s1,'');
      if (i>=0) then
      begin
        sel:=false;
        showmessage('汇总单元不能重复匹配！');
        exit;
      end;
      i:=vgInsertRow(vgrid,s1,s2);
      vgrid.Row:=i;
      vgrid.col:=0;
      sel:=true;
      vgrid.Invalidate;
      exit;
    end;
    sel:=false;
    vgrid.Invalidate;
  end;
end;

procedure TfrmSetup.LoadSheet(grid: TStringGrid; SheetIndex: integer;xls: TXLSReadWriteII5);
var
  idx:Integer;
  i,j,w:integer;
  //s:string;
begin
  idx:=SheetIndex;
  if idx >=0  then
  begin
    strow:=1;
    stcol:=1;
    te1.Text:='1';
    te2.Text:='A';
    ck1.Checked:=false;
    ck2.Checked:=false;
    grid.RowCount:=xls[idx].LastRow+2;
    grid.ColCount:=xls[idx].LastCol+2;
    grid.FixedCols:=1;
    grid.FixedRows:=1;
    vgrid.RowCount:=2;
    vgrid.Invalidate;
    for j:=1 to XLS[idx].LastCol do
    begin
      w:=minwidth;
      for i:=1 to grid.RowCount do
      begin
        if xls[idx].Columns[J].Hidden then
        begin
          grid.ColWidths[J]:=-1;
          continue;
        end;
//        if (i=0) and (j>0) then
//        begin
//          grid.Cells[j, i]:=numtostr(j);
//        end
//        else if (i>0) and (j=0) then
//        begin
//          grid.Cells[j, i]:=inttostr(i);
//        end
        //else if (i>0) and (j>0) then
        //begin
          grid.Cells[j,i]:=XLS[idx].AsString[j-1,i-1];
        //end;
        w:=max(grid.Canvas.TextWidth(grid.Cells[j,i]),w);
        if w > maxwidth then w:=maxwidth;
        grid.ColWidths[J]:= w+10;
      end;
    end;
  end;
end;

end.
