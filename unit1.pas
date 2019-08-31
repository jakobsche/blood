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
    BilirubinGesSeries: TLineSeries;
    BilirubinDirSeries: TLineSeries;
    BilirubinIndSeries: TLineSeries;
    APSeries: TLineSeries;
    AlbuminSeries: TLineSeries;
    CEASeries: TLineSeries;
    CA19_9Series: TLineSeries;
    CaSeries: TLineSeries;
    CaKorrSeries: TLineSeries;
    CRPSeries: TLineSeries;
    GEwSeries: TLineSeries;
    LDHSeries: TLineSeries;
    GFRSeries: TLineSeries;
    MDRDSeries: TLineSeries;
    KreatininSeries: TLineSeries;
    HarnsaeureSeries: TLineSeries;
    KSeries: TLineSeries;
    NaSeries: TLineSeries;
    GLDHSeries: TLineSeries;
    Y_GTSeries: TLineSeries;
    GPTSeries: TLineSeries;
    GOTSeries: TLineSeries;
    GlucoseSeries: TLineSeries;
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
    LicenseItem: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    AboutItem: TMenuItem;
    Functionitems: TMenuItem;
    ReadmeItem: TMenuItem;
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
    procedure LicenseItemClick(Sender: TObject);
    procedure AboutItemClick(Sender: TObject);
    procedure ReadmeItemClick(Sender: TObject);
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

uses FormEx, LCLIntf, About;

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
var
  i: Integer;
  x: Double;
begin
  Caption := Application.Title;
  FormAdjust(Self); {adapt the form size and position to the screen, should
    always be used in an app's main form. It only does adjustments on systems that
    don't support Position = poDefault correct, should therefore be called during
    the first appearance of a form on a computer}
  FillChart; {insert sample data and draw the series}
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

procedure TForm1.LicenseItemClick(Sender: TObject);
begin
  OpenDocument('LICENSE.md')
end;

procedure TForm1.AboutItemClick(Sender: TObject);
begin
  AboutBox.ShowModal
end;

procedure TForm1.ReadmeItemClick(Sender: TObject);
begin
  OpenDocument('README.md')
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

