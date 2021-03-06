unit UFuns;


interface
Uses
  Types, system.SysUtils, Variants, Classes, Math,Vcl.Grids,Uss;

const
  hsp = '{[$_';
  tsp = '_$]}';
  bsp = '<@#_';
  esp = '_#@>';
  xp  = '@_@_';
  sp  = ']#@}';
  ITsp= '<#$>';
  tjsp= '<;!>';

type
  PTNodeData=^TNodeData;
  TNodeData=record
    id,preId,data:string;
  end;

  Function HexToInt(hex: string): integer;
  Function StrToHexChar(str: string): string;
  Function NumToStr(num:Integer):string;
  Function StrToNum(S:string):Integer;
  Function HexChartoStr(str: string): string;
  Procedure getRC(S:String;var R, C: string;sp:string=':');
  Procedure cstorc(S:string;var R,C:Integer);
  Function IsNumberic(Vaule:String):Boolean;Overload;    //判断Vaule是不是数字
  Function IsNumberic(c:char):Boolean;Overload;
  Function IsUpperCase(Vaule:String):Boolean;            //判断Vaule 是不是大写字母
  Function IsLowerCase(Vaule:String):Boolean;            //判断Vaule 是不是小写字母
  Function IsEnCase(Vaule:String):boolean;               //判断Vaule 是不是字母
  Function MakePro(mds:TMdss):string;
  Procedure AddPros(var pack:string;pros:string);overload;
  procedure AddPros(pack: TStringList; pros: string);overload;
  Procedure Addval(var pros:string;name,pro:string);
  function getval(pros,name:string):string;
  procedure delval(var pros:string;name:string);
  procedure mdval(var pros:string;name,pro:string);
  function vgFindRow(grid: TStringGrid; key, value: string): Integer;
  function vgInsertRow(grid: TStringGrid; key, value: string): integer;


implementation

//十进制数转成26进制数并输出为字符串
Function NumToStr(num:Integer):string;
var
  //str:string;
  tmp:Integer;
begin
  result := '';
  if num<0 then
  begin
    raise Exception.Create('给出数字小于零！');
    exit;
  end;
  while (num > 0) do
  begin
      tmp := num mod 26;
      if (tmp = 0) then
      begin
        tmp := 26;
      end;
      result := char(tmp+64)+ result;
      num := (num - tmp) div 26;
  end;

end;

Function StrToNum(S:string):Integer;     //字符串编号转化成整数编号
var
  I,J,tmp:Integer;
begin
  Result:=0;
  Trim(s);
  for I := length(S) downto 1 do
  begin
    tmp:=(ord(S[I])-64);
    for J := 1 to length(S)-I do
      tmp:=tmp*26;
    Result:=Result+tmp;
  end;
end;


//-----------------------------------------------
//16进制字符转整数,16进制字符与字符串转换中间函数
//-----------------------------------------------
function HexToInt(hex: string): integer;
var
  i: integer;
  function Ncf(num, f: integer): integer;
  var
    i: integer;
  begin
    Result := 1;
    if f = 0 then exit;
    for i := 1 to f do
      result := result * num;
  end;
  function HexCharToInt(HexToken: char): integer;
  begin
    if HexToken > #97 then
      HexToken := Chr(Ord(HexToken) - 32);
      Result := 0;
    if (HexToken > #47) and (HexToken < #58) then { chars 0....9 }
      Result := Ord(HexToken) - 48
    else if (HexToken > #64) and (HexToken < #71) then { chars A....F }
      Result := Ord(HexToken) - 65 + 10;
  end;
begin
  result := 0;
    hex := ansiuppercase(trim(hex));
  if hex = '' then
    exit;
  for i := 1 to length(hex) do
  result := result + HexCharToInt(hex[i]) * ncf(16, length(hex) - i);
end;



//-----------------------------------------------
//字符串转16进制字符
//-----------------------------------------------
function StrToHexChar(str: string): string;
var
   i : integer;
   s : string;
begin
   for i:=1 to length(str) do begin
       s := s + InttoHex(Integer(str[i]),2);
   end;
   Result:=s;
end;



//-----------------------------------------------
//16进制字符转字符串
//-----------------------------------------------
function HexChartostr(str: string): string;
var
  s,t:string;
  i,j:integer;
  p:pchar;
begin
   s:='';
   i:=1;
   while i< length(str) do begin
      t:=str[i]+str[i+1];
      s:=s+chr(hextoint(t));
      i:=i+2;
   end;
   result:=s;
end;

function HextoStr(S: string): string;           //16进制字符串转原字符串
var hexS,tmpstr:string;
    i:integer;
    a:byte;
begin
    hexS  :=s;//应该是该字符串
    if length(hexS) mod 2=1 then
    begin
        hexS:=hexS+'0';
    end;
    tmpstr:='';
    for i:=1 to (length(hexS) div 2) do
    begin
        a:=strtoint('$'+hexS[2*i-1]+hexS[2*i]);
        tmpstr := tmpstr+chr(a);
    end;
    result :=tmpstr;
end;

Procedure getRC(S:String;var R, C: string;sp:string=':');
var
  b:Integer;
begin
  b:=-1;
  b:=pos(sp,S);
  if b<0 then exit;
  C:=copy(S,1,b-1);
  R:=copy(S,b+length(sp),length(S));
end;

Procedure cstorc(S:string;var R,C:Integer);
var
  i,j,k,tmp:integer;
  Rs,Cs:String;
begin
  c:=-1;
  r:=-1;
  s:=trim(s);
  if (length(s)=0) then exit;
  for I := 1 to length(s) do
  begin
    if IsNumberic(s[i]) then
    begin
      c:=0;
      r:=0;
      Cs:=copy(s,1,i-1);
      Rs:=copy(s,i,length(s));
      C:=StrToNum(Cs);
      R:=strtoint(Rs);
      exit;
    end;
  end;

end;

function IsNumberic(Vaule:String):Boolean;OverLoad;   //判断Vaule是不是数字
var
i:integer;
begin
  result:=true;   //设置返回值为 是（真）
  Vaule:=trim(Vaule);  //去空格
  for i:=1 to length(Vaule) do  //准备循环
  begin
    if not IsNumberic(Vaule[i]) then  //如果Vaule的第i个字不是0-9中的任一个
      begin
        result:=false;  //返回值 不是（假）
        exit;  //退出函数
      end;
  end;
end;

function IsNumberic(c:char):Boolean;OverLoad;
begin
  result:=true;
  if not (c in ['0'..'9']) then
    result:=false;
end;

function IsUpperCase(Vaule:String):Boolean;   //判断Vaule 是不是大写字母
var
i:integer;
begin
result:=true;  //设置返回值为 是
Vaule:=trim(Vaule);   //去空格
  for i:=1 to length(Vaule) do   //准备循环
    begin
      if not (Vaule[i] in ['A'..'Z']) then  //如果Vaule的第i个字不是A-Z中的任一个
        begin
          result:=false;  //返回值 不是
          exit;  //退出函数
        end;
    end;
end;

function IsLowerCase(Vaule:String):Boolean;  //判断Vaule 是不是小写字母
var
i:integer;
begin
result:=true;   //设置返回值为 是
Vaule:=trim(Vaule);   //去空格
  for i:=1 to length(Vaule) do   //准备循环
    begin
      if not (Vaule[i] in ['a'..'z']) then   //如果Vaule的第i个字不是a-z中的任一个
        begin
          result:=false;   //返回值 不是
          exit;   //退出函数
        end;
    end;
end;

function IsEnCase(Vaule:String):boolean;    //判断Vaule 是不是字母
var
i:integer;
begin
result:=true;   //设置返回值为 是
Vaule:=trim(Vaule);   //去空格
  for i:=1 to length(Vaule) do   //准备循环
    begin
      if (not (Vaule[i] in ['A'..'Z'])) or
         (not (Vaule[i] in ['a'..'z'])) then   //如果Vaule的第i个字不是A-Z或者a-z中的任一个
        begin
          result:=false;   //返回值 不是
          exit;   //退出函数
        end;
    end;
end;

function MakePro(mds: TMdss): string;
var
  I,J:integer;
  S:String;
begin
  with mds do
  begin
    s:='';
    for I := 1 to vgrid.rowcount-1 do
    begin
      s:=s+ vgrid.cells[0,i]+tjsp+ vgrid.cells[1,i]+itsp;
    end;
    result:=hsp+'file1~'+file1+ sp+ 'midx~'+inttostr(idx1)+ sp //file1:汇总文件，midx:汇总sheet
        + 'rnc~'+booltostr(rbr.checked, false)+ sp             //rnc:按行按列
        + 'file2~'+file2+ sp                                   //子文件
        + 'path2~'+ExtractFilePath(file2)+sp                   //子文件路径
        + 'cells~'+s+sp+tsp;                                   //单元格对应列表
  end;
end;

procedure AddPros(pack: TStringList; pros: string);overload;
begin
  pack.Add(pros);
end;

Procedure AddPros(var pack:string;pros:string);overload;
begin
  pack:=pack+pros;
end;

Procedure Addval(var pros:string;name,pro:string);
begin
  delete(pros,pos(tsp,pros),4);
  pros:=pros+name+'~'+pro+sp+tsp;
end;

function getval(pros,name:string):string;
var
  s:string;
begin
  result:='';
  name:=name+'~';
  s:=pros;
  delete(s,1,pos(name,s)+length(name)-1);
  result:=copy(s,1,pos(sp,s)-1);
end;
procedure delval(var pros:string;name:string);
begin

end;
procedure mdval(var pros:string;name,pro:string);
begin

end;

function vgFindRow(grid: TStringGrid; key, value: string): Integer;
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

function vgInsertRow(grid: TStringGrid; key, value: string): integer;
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

end.
