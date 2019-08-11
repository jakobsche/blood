unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, TAGraph, TASeries, Forms, Controls, Graphics,
  Dialogs, TADrawUtils, TACustomSeries, BloDat;

type

  { TForm1 }

  TForm1 = class(TForm)
    Chart1: TChart;
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
    SinSeries: TLineSeries;
    CosSeries: TLineSeries;
    SinCosSeries: TLineSeries;
    procedure FormCreate(Sender: TObject);
    procedure HCTSeriesCustomDrawPointer(ASender: TChartSeries;
      ADrawer: IChartDrawer; AIndex: Integer; ACenter: TPoint);
  private

  public

  end;

var
  Form1: TForm1;

implementation

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
  {for i := 0 to N - 1 do begin
    x := Min + (Max - Min) * i / (N - 1);
    SinSeries.AddXY(x, sin(x));
    CosSeries.AddXY(x, cos(x));
    SinCosSeries.AddXY(x, sin(x) * cos(x))
  end;}
  FillChart;
  {DateSeparator := '.';
  ShowMessage(ShortDateFormat)}
end;

procedure TForm1.HCTSeriesCustomDrawPointer(ASender: TChartSeries;
  ADrawer: IChartDrawer; AIndex: Integer; ACenter: TPoint);
begin

end;

end.

