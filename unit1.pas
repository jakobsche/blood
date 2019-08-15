unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, Menus, TADrawUtils, TACustomSeries, BloDat, FctItem,
  TAChartAxisUtils, TATools, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Chart: TChart;
    ChartToolset: TChartToolset;
    ChartToolsetDataPointCrosshairTool1: TDataPointCrosshairTool;
    ChartToolsetDataPointHintTool1: TDataPointHintTool;
    ChartToolsetPanDragTool1: TPanDragTool;
    ChartToolsetZoomDragTool1: TZoomDragTool;
    ChartToolsetZoomMouseWheelTool1: TZoomMouseWheelTool;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    Functionitems: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    PCTSeries: TLineSeries;
    P_LCRSeries: TLineSeries;
    MPVSeries: TLineSeries;
    PDWSeries: TLineSeries;
    RDW_CVSeries: TLineSeries;
    RDW_SDSeries: TLineSeries;
    NEUTSeries: TLineSeries;
    MXDSeries: TLineSeries;
    LYMSeries: TLineSeries;
    NEUTpctSeries: TLineSeries;
    MXDpctSeries: TLineSeries;
    LYMpctSeries: TLineSeries;
    PLTSeries: TLineSeries;
    MCHCSeries: TLineSeries;
    MCHSeries: TLineSeries;
    MCVSeries: TLineSeries;
    HCTSeries: TLineSeries;
    HGBSeries: TLineSeries;
    RBCSeries: TLineSeries;
    WBCSeries: TLineSeries;
    procedure ChartAxisList1MarkToText(var AText: String; AMark: Double);
    procedure ChartToolsetDataPointHintTool1Hint(ATool: TDataPointHintTool;
      const APoint: TPoint; var AHint: String);
    procedure FormCreate(Sender: TObject);
    procedure FunctionItemClick(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
  private
    function InitFunctionsMenu: TMenuItem; {creates a chart content sensitive
      submenu}
    function NewFunctionItem(ASeries: TBasicChartSeries): TFunctionMenuItem;
      {creates a chart series determined submenu item}
  protected
  public

  end;

var
  Form1: TForm1;

implementation

uses FormEx;

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
const
  N = 200;
  Min = -10;
  Max = 10;
var
  i: Integer;
  x: Double;
begin
  Caption := Application.Title;
  FormAdjust(Self); {adapt the form size and position to the screen, should
    always be used in an app's main form}
  FillChart; {insert data and draw the series}
  InitFunctionsMenu; {add chart content sensitive menu items}
end;

procedure TForm1.ChartAxisList1MarkToText(var AText: String; AMark: Double);
begin
  AText := DateTimeToStr(AMark)
end;

procedure TForm1.ChartToolsetDataPointHintTool1Hint(ATool: TDataPointHintTool;
  const APoint: TPoint; var AHint: String);
begin
  AHint := Format('%s: (%s, %f %s)', [(ATool.Series as TLineSeries).Title, DateTimeToStr(ATool.NearestGraphPoint.X), ATool.NearestGraphPoint.Y, ShortCutUnit((ATool.Series as TLineSeries).Title)])
end;

procedure TForm1.FunctionItemClick(Sender: TObject);
begin
  with Sender as TFunctionMenuItem do begin
    Series.Active := not Series.Active;
    Checked := Series.Active
  end;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  Close
end;

function TForm1.InitFunctionsMenu: TMenuItem;
var
  i: Integer;
begin
  for i := 0 to Chart.SeriesCount - 1 do
    FunctionItems.Add(NewFunctionItem(Chart.Series[i]));
end;

function TForm1.NewFunctionItem(ASeries: TBasicChartSeries): TFunctionMenuItem;
begin
  Result := TFunctionMenuItem.Create(Self);
  Result.Series := ASeries;
  Result.Caption := (ASeries as TCustomChartSeries).Title + #9 + ShortCutToDescription((ASeries as TCustomChartSeries).Title);
  Result.Checked := ASeries.Active;
  Result.OnClick := @FunctionItemClick;
end;

end.

