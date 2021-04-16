unit Uss;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore,
  dxSkinsDefaultPainters, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, Vcl.StdCtrls,
  cxRadioGroup, Vcl.Grids, Vcl.ExtCtrls;

type
  Tmdss = class(TFrame)
    Panel1: TPanel;
    vgrid: TStringGrid;
    Panel8: TPanel;
    Panel9: TPanel;
    Label2: TLabel;
    rbc: TcxRadioButton;
    rbr: TcxRadioButton;
    tes1: TcxTextEdit;
    Panel10: TPanel;
    Label1: TLabel;
    tew: TcxTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    file1,file2:string;   //汇总表文件，子表文件
    ss1,ss2:string;       //汇总表名称，子表名称
    idx1,idx2:integer;    //汇总表编号，子表编号
  end;

implementation

{$R *.dfm}

end.
