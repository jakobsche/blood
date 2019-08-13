unit BloDat;

{$mode objfpc}{$H+}

interface

uses
  SysUtils;

procedure FillChart;
{ This works only with Form1 of the current project but is not a method of
  TForm1 to have a separate backup of the data contained in this unit file }

function ShortCutToDescription(AShortCut: string): string;

implementation

uses Unit1;

procedure FillChart;

  function AddTime(DateTimeStr: string): Integer;
  var
    DT: TDateTime;
  begin
    DT := StrToDateTime(DateTimeStr);
    with Form1 do begin
      Result := WBCSeries.AddX(DT);
      RBCSeries.AddX(DT);
      PCTSeries.AddX(DT);
      P_LCRSeries.AddX(DT);
      MPVSeries.AddX(DT);
      PDWSeries.AddX(DT);
      RDW_CVSeries.AddX(DT);
      RDW_SDSeries.AddX(DT);
      NEUTSeries.AddX(DT);
      MXDSeries.AddX(DT);
      LYMSeries.AddX(DT);
      NEUTpctSeries.AddX(DT);
      MXDpctSeries.AddX(DT);
      LYMpctSeries.AddX(DT);
      PLTSeries.AddX(DT);
      MCHCSeries.AddX(DT);
      MCHSeries.AddX(DT);
      MCVSeries.AddX(DT);
      HCTSeries.AddX(DT);
      HGBSeries.AddX(DT);
    end
  end;

var
  i: Integer;
begin
  with Form1 do begin

    i := AddTime('29.10.2018 10:20');
    WBCSeries.YValue[i] := 4.9;
    RBCSeries.YValue[i] := 4.39;
    HGBSeries.YValue[i] := 14.3;
    HCTSeries.YValue[i] := 42.2; {37..50}
    MCVSeries.YValue[i] := 96.1; {80..98}
    MCHSeries.YValue[i] := 32.6;
    MCHCSeries.YValue[i] := 33.9; {33..36}
    PLTSeries.YValue[i] := 121; {150..380}
    LYMpctSeries.YValue[i] := 23.2; {25..40}
    MXDpctSeries.YValue[i] := 15.2;
    NEUTpctSeries.YValue[i] := 61.6; {50..65}
    LYMSeries.YValue[i] := 1.1;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 3.1;
    RDW_SDSeries.YValue[i] := 55.1;
    RDW_CVSeries.YValue[i] := 15.9; {11.5..14.5}
    PDWSeries.YValue[i] := 10.3;
    MPVSeries.YValue[i] := 9.4; {7..12}
    P_LCRSeries.YValue[i] := 21.1;
    PCTSeries.YValue[i] := {-}0.11;

    i := AddTime('5.11.2018 10:19');
    WBCSeries.YValue[i] := 5.3;
    RBCSeries.YValue[i] := 4.67;
    HGBSeries.YValue[i] := 15.3;
    HCTSeries.YValue[i] := 44.6;
    MCVSeries.YValue[i] := 95.5;
    MCHSeries.YValue[i] := 32.8;
    MCHCSeries.YValue[i] := 34.3;
    PLTSeries.YValue[i] := 146;
    LYMpctSeries.YValue[i] := 22.4;
    MXDpctSeries.YValue[i] := 16.3;
    NEUTpctSeries.YValue[i] := 61.3;
    LYMSeries.YValue[i] := 1.2;
    MXDSeries.YValue[i] := 0.9;
    NEUTSeries.YValue[i] := 3.2;
    RDW_SDSeries.YValue[i] := 55;
    RDW_CVSeries.YValue[i] := 15.9;
    PDWSeries.YValue[i] := 9.8;
    MPVSeries.YValue[i] := 9;
    P_LCRSeries.YValue[i] := 18.7;
    PCTSeries.YValue[i] := {-}0.13;

    i := AddTime('12.11.2018 10:01');
    WBCSeries.YValue[i] := 5.7;
    RBCSeries.YValue[i] := 4.26;
    HGBSeries.YValue[i] := 14;
    HCTSeries.YValue[i] := 41;
    MCVSeries.YValue[i] := 96.2;
    MCHSeries.YValue[i] := 32.9;
    MCHCSeries.YValue[i] := 34.1;
    PLTSeries.YValue[i] := 163;
    LYMpctSeries.YValue[i] := 19.3;
    MXDpctSeries.YValue[i] := 12.6;
    NEUTpctSeries.YValue[i] := 68.1;
    LYMSeries.YValue[i] := 1.1;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 3.9;
    RDW_SDSeries.YValue[i] := 54.7;
    RDW_CVSeries.YValue[i] := 15.2;
    PDWSeries.YValue[i] := 10.3;
    MPVSeries.YValue[i] := {-}8.7;
    P_LCRSeries.YValue[i] := 17.3;
    PCTSeries.YValue[i] := {-}0.14;

    i := AddTime('19.12.2018 15:46');
    WBCSeries.YValue[i] := 5.6;
    RBCSeries.YValue[i] := 4.25;
    HGBSeries.YValue[i] := 13.8;
    HCTSeries.YValue[i] := 41.3;
    MCVSeries.YValue[i] := 97.2;
    MCHSeries.YValue[i] := 32.5;
    MCHCSeries.YValue[i] := 33.4;
    PLTSeries.YValue[i] := 146;
    LYMpctSeries.YValue[i] := 17.3;
    MXDpctSeries.YValue[i] := 13.6;
    NEUTpctSeries.YValue[i] := 69.1;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.8;
    NEUTSeries.YValue[i] := 3.8;
    RDW_SDSeries.YValue[i] := 55.3;
    RDW_CVSeries.YValue[i] := 15.3;
    PDWSeries.YValue[i] := 9.6;
    MPVSeries.YValue[i] := {-}8.3; {Vorzeichen unsicher}
    P_LCRSeries.YValue[i] := 14.9;
    PCTSeries.YValue[i] := {-}0.12;

    i := AddTime('9.1.2019 11:24');
    WBCSeries.YValue[i] := 3.9;
    RBCSeries.YValue[i] := 4.11;
    HGBSeries.YValue[i] := 13.1;
    HCTSeries.YValue[i] := 39.3;
    MCVSeries.YValue[i] := 95.6;
    MCHSeries.YValue[i] := 31.9;
    MCHCSeries.YValue[i] := 33.3;
    PLTSeries.YValue[i] := 147;
    LYMpctSeries.YValue[i] := 25.4;
    MXDpctSeries.YValue[i] := 12.7;
    NEUTpctSeries.YValue[i] := 61.9;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.5;
    NEUTSeries.YValue[i] := 2.4;
    RDW_SDSeries.YValue[i] := 49.4;
    RDW_CVSeries.YValue[i] := 13.8;
    PDWSeries.YValue[i] := 9.7;
    MPVSeries.YValue[i] := {-}8.4;
    P_LCRSeries.YValue[i] := 15.1;
    PCTSeries.YValue[i] := {-}0.12;

    i := AddTime('23.1.2019 11:15');
    WBCSeries.YValue[i] := 3.1;
    RBCSeries.YValue[i] := 4.05;
    HGBSeries.YValue[i] := 13.1;
    HCTSeries.YValue[i] := 38.5;
    MCVSeries.YValue[i] := 95.1;
    MCHSeries.YValue[i] := 32.3;
    MCHCSeries.YValue[i] := 34;
    PLTSeries.YValue[i] := 145;
    LYMpctSeries.YValue[i] := 31.6;
    MXDpctSeries.YValue[i] := 14.2;
    NEUTpctSeries.YValue[i] := 54.2;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.4;
    NEUTSeries.YValue[i] := 1.7;
    RDW_SDSeries.YValue[i] := 49.6;
    RDW_CVSeries.YValue[i] := 14.2;
    PDWSeries.YValue[i] := 9.7;
    MPVSeries.YValue[i] := {-}8.7;
    P_LCRSeries.YValue[i] := 17.2;
    PCTSeries.YValue[i] := 0.13;

    i := AddTime('6.2.2019 10:32');
    WBCSeries.YValue[i] := 3.1;
    RBCSeries.YValue[i] := 4.06;
    HGBSeries.YValue[i] := 12.5;
    HCTSeries.YValue[i] := 38.0;
    MCVSeries.YValue[i] := 93.6;
    MCHSeries.YValue[i] := 30.8;
    MCHCSeries.YValue[i] := 32.9;
    PLTSeries.YValue[i] := 153;
    LYMpctSeries.YValue[i] := 37.8;
    MXDpctSeries.YValue[i] := 15.8;
    NEUTpctSeries.YValue[i] := 46.4;
    LYMSeries.YValue[i] := 1.2;
    MXDSeries.YValue[i] := 0.5;
    NEUTSeries.YValue[i] := 1.4;
    RDW_SDSeries.YValue[i] := 50.2;
    RDW_CVSeries.YValue[i] := 14.5;
    PDWSeries.YValue[i] := 10.4;
    MPVSeries.YValue[i] := -8.9;
    P_LCRSeries.YValue[i] := 18.2;
    PCTSeries.YValue[i] := {-}0.14;

    i := AddTime('20.2.2019 9:46');
    WBCSeries.YValue[i] := 4.6;
    RBCSeries.YValue[i] := 4.25;
    HGBSeries.YValue[i] := 13.3;
    HCTSeries.YValue[i] := 40.4;
    MCVSeries.YValue[i] := 95.1;
    MCHSeries.YValue[i] := 31.3;
    MCHCSeries.YValue[i] := 32.9;
    PLTSeries.YValue[i] := 158;
    LYMpctSeries.YValue[i] := 20.6;
    MXDpctSeries.YValue[i] := 14.2;
    NEUTpctSeries.YValue[i] := 65.2;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 3;
    RDW_SDSeries.YValue[i] := 55;
    RDW_CVSeries.YValue[i] := 15.3;
    PDWSeries.YValue[i] := 10.4;
    MPVSeries.YValue[i] := 9.3;
    P_LCRSeries.YValue[i] := 20.6;
    PCTSeries.YValue[i] := {-}0.15;

    i := AddTime('28.2.2019 12:47');
    WBCSeries.YValue[i] := 4.7;
    RBCSeries.YValue[i] := 4.25;
    HGBSeries.YValue[i] := 13.2;
    HCTSeries.YValue[i] := 40.6;
    MCVSeries.YValue[i] := 95.5;
    MCHSeries.YValue[i] := 31.1;
    MCHCSeries.YValue[i] := 32.5;
    PLTSeries.YValue[i] := 145;
    LYMpctSeries.YValue[i] := 20.5;
    MXDpctSeries.YValue[i] := 10.4;
    NEUTpctSeries.YValue[i] := 69.1;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.5;
    NEUTSeries.YValue[i] := 3.2;
    RDW_SDSeries.YValue[i] := 52.2;
    RDW_CVSeries.YValue[i] := 15;
    PDWSeries.YValue[i] := 10.6;
    MPVSeries.YValue[i] := 9;
    P_LCRSeries.YValue[i] := 19.7;
    PCTSeries.YValue[i] := {-}0.13;

    i := AddTime('6.3.2019 9:30');
    WBCSeries.YValue[i] := 3.7;
    RBCSeries.YValue[i] := 4.05;
    HGBSeries.YValue[i] := 12.8;
    HCTSeries.YValue[i] := 38.4;
    MCVSeries.YValue[i] := 94.8;
    MCHSeries.YValue[i] := 31.6;
    MCHCSeries.YValue[i] := 33.3;
    PLTSeries.YValue[i] := 139;
    LYMpctSeries.YValue[i] := 23;
    MXDpctSeries.YValue[i] := 11.1;
    NEUTpctSeries.YValue[i] := 65.9;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.4;
    NEUTSeries.YValue[i] := 2.4;
    RDW_SDSeries.YValue[i] := 54.2;
    RDW_CVSeries.YValue[i] := 15.1;
    PDWSeries.YValue[i] := 11.2;
    MPVSeries.YValue[i] := 9.3;
    P_LCRSeries.YValue[i] := 22;
    PCTSeries.YValue[i] := {-}0.13;

    i := AddTime('14.3.2019 12:29');
    WBCSeries.YValue[i] := 3.3;
    RBCSeries.YValue[i] := 4.43;
    HGBSeries.YValue[i] := 13.8;
    HCTSeries.YValue[i] := 41.5;
    MCVSeries.YValue[i] := 93.7;
    MCHSeries.YValue[i] := 31.2;
    MCHCSeries.YValue[i] := 33.3;
    PLTSeries.YValue[i] := 157;
    LYMpctSeries.YValue[i] := 22.7;
    MXDpctSeries.YValue[i] := 21.5;
    NEUTpctSeries.YValue[i] := 55.8;
    LYMSeries.YValue[i] := 0.7;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 1.9;
    RDW_SDSeries.YValue[i] := 53;
    RDW_CVSeries.YValue[i] := 14.7;
    PDWSeries.YValue[i] := 9.8;
    MPVSeries.YValue[i] := {-}8.7;
    P_LCRSeries.YValue[i] := 17.7;
    PCTSeries.YValue[i] := {-}0.14;

    i := AddTime('20.3.2019 8:59');
    WBCSeries.YValue[i] := 4.3;
    RBCSeries.YValue[i] := 4.31;
    HGBSeries.YValue[i] := 13.5;
    HCTSeries.YValue[i] := 40.2;
    MCVSeries.YValue[i] := 93.3;
    MCHSeries.YValue[i] := 31.3;
    MCHCSeries.YValue[i] := 33.6;
    PLTSeries.YValue[i] := 150;
    LYMpctSeries.YValue[i] := 23.3;
    MXDpctSeries.YValue[i] := 15.2;
    NEUTpctSeries.YValue[i] := 61.5;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 2.6;
    RDW_SDSeries.YValue[i] := 51;
    RDW_CVSeries.YValue[i] := 14.6;
    PDWSeries.YValue[i] := 9.9;
    MPVSeries.YValue[i] := {-}8.6;
    P_LCRSeries.YValue[i] := 17.3;
    PCTSeries.YValue[i] := {-}0.13;

    i := AddTime('28.3.2019 15:26');
    WBCSeries.YValue[i] := 5.5;
    RBCSeries.YValue[i] := 4.07;
    HGBSeries.YValue[i] := 12.7;
    HCTSeries.YValue[i] := 38.1;
    MCVSeries.YValue[i] := 93.6;
    MCHSeries.YValue[i] := 31.2;
    MCHCSeries.YValue[i] := 33.3;
    PLTSeries.YValue[i] := 171;
    LYMpctSeries.YValue[i] := 13.6;
    MXDpctSeries.YValue[i] := 14.5;
    NEUTpctSeries.YValue[i] := 71.9;
    LYMSeries.YValue[i] := 0.7;
    MXDSeries.YValue[i] := 0.8;
    NEUTSeries.YValue[i] := 4;
    RDW_SDSeries.YValue[i] := 48.9;
    RDW_CVSeries.YValue[i] := 13.8;
    PDWSeries.YValue[i] := 10.1;
    MPVSeries.YValue[i] := 9.2;
    P_LCRSeries.YValue[i] := 19.4;
    PCTSeries.YValue[i] := {-}0.16;

    i := AddTime('3.4.2019 7:52');
    WBCSeries.YValue[i] := 3.7;
    RBCSeries.YValue[i] := 3.86;
    HGBSeries.YValue[i] := 11.8;
    HCTSeries.YValue[i] := 35.8;
    MCVSeries.YValue[i] := 92.7;
    MCHSeries.YValue[i] := 30.6;
    MCHCSeries.YValue[i] := 33;
    PLTSeries.YValue[i] := 240;
    LYMpctSeries.YValue[i] := 25.4;
    MXDpctSeries.YValue[i] := 14.8;
    NEUTpctSeries.YValue[i] := 59.8;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.5;
    NEUTSeries.YValue[i] := 2.3;
    RDW_SDSeries.YValue[i] := 50.1;
    RDW_CVSeries.YValue[i] := 13.9;
    PDWSeries.YValue[i] := 10.1;
    MPVSeries.YValue[i] := {-}8.6;
    P_LCRSeries.YValue[i] := 16.6;
    PCTSeries.YValue[i] := 0.21;

    i := AddTime('11.4.2019 13:48');
    WBCSeries.YValue[i] := 4.8;
    RBCSeries.YValue[i] := 4.26;
    HGBSeries.YValue[i] := 13.2;
    HCTSeries.YValue[i] := 40.4;
    MCVSeries.YValue[i] := 94.8;
    MCHSeries.YValue[i] := 31;
    MCHCSeries.YValue[i] := 32.7;
    PLTSeries.YValue[i] := 190;
    LYMpctSeries.YValue[i] := 17.8;
    MXDpctSeries.YValue[i] := 7.4;
    NEUTpctSeries.YValue[i] := 74.8;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.4;
    NEUTSeries.YValue[i] := 3.5;
    RDW_SDSeries.YValue[i] := 51.3;
    RDW_CVSeries.YValue[i] := 14.9;
    PDWSeries.YValue[i] := 10.1;
    MPVSeries.YValue[i] := 9.0;
    P_LCRSeries.YValue[i] := 17.8;
    PCTSeries.YValue[i] := 0.17;

    i := AddTime('16.4.2019 8:45');
    WBCSeries.YValue[i] := 5.4;
    RBCSeries.YValue[i] := 4.14;
    HGBSeries.YValue[i] := 12.7;
    HCTSeries.YValue[i] := 38.8;
    MCVSeries.YValue[i] := 93.7;
    MCHSeries.YValue[i] := 30.7;
    MCHCSeries.YValue[i] := 32.7;
    PLTSeries.YValue[i] := 153;
    LYMpctSeries.YValue[i] := 22;
    MXDpctSeries.YValue[i] := 14;
    NEUTpctSeries.YValue[i] := 64;
    LYMSeries.YValue[i] := 1.2;
    MXDSeries.YValue[i] := 0.8;
    NEUTSeries.YValue[i] := 3.4;
    RDW_SDSeries.YValue[i] := 53.2;
    RDW_CVSeries.YValue[i] := 15.2;
    PDWSeries.YValue[i] := 10;
    MPVSeries.YValue[i] := 9.4;
    P_LCRSeries.YValue[i] := 22.1;
    PCTSeries.YValue[i] := {-}0.14;

    i := AddTime('25.4.2019 11:58');
    WBCSeries.YValue[i] := 3.6;
    RBCSeries.YValue[i] := 4.15;
    HGBSeries.YValue[i] := 12.8;
    HCTSeries.YValue[i] := 38.7;
    MCVSeries.YValue[i] := 93.3;
    MCHSeries.YValue[i] := 30.8;
    MCHCSeries.YValue[i] := 33.1;
    PLTSeries.YValue[i] := 172;
    LYMpctSeries.YValue[i] := 23.9;
    MXDpctSeries.YValue[i] := 17.5;
    NEUTpctSeries.YValue[i] := 58.6;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.6;
    NEUTSeries.YValue[i] := 2.1;
    RDW_SDSeries.YValue[i] := 53.5;
    RDW_CVSeries.YValue[i] := 15.3;
    PDWSeries.YValue[i] := 10.4;
    MPVSeries.YValue[i] := 9.4;
    P_LCRSeries.YValue[i] := 21.3;
    PCTSeries.YValue[i] := {-}0.16;

    i := AddTime('30.4.2019 8:43');
    WBCSeries.YValue[i] := 4.7;
    RBCSeries.YValue[i] := 4.16;
    HGBSeries.YValue[i] := 12.8;
    HCTSeries.YValue[i] := 39.2;
    MCVSeries.YValue[i] := 94.2;
    MCHSeries.YValue[i] := 30.8;
    MCHCSeries.YValue[i] := 32.7;
    PLTSeries.YValue[i] := 189;
    LYMpctSeries.YValue[i] := 20.8;
    MXDpctSeries.YValue[i] := 12.4;
    NEUTpctSeries.YValue[i] := 66.8;
    LYMSeries.YValue[i] := 1;
    MXDSeries.YValue[i] := 0.6;
    NEUTSeries.YValue[i] := 3.1;
    RDW_SDSeries.YValue[i] := 54.6;
    RDW_CVSeries.YValue[i] := 16.0;
    PDWSeries.YValue[i] := 9.5;
    MPVSeries.YValue[i] := {-}8.5;
    P_LCRSeries.YValue[i] := 16.5;
    PCTSeries.YValue[i] := {-}0.16;

    i := AddTime('7.6.2019 10:53');
    WBCSeries.YValue[i] := 5;
    RBCSeries.YValue[i] := 4.42;
    HGBSeries.YValue[i] := 13.6;
    HCTSeries.YValue[i] := 41.7;
    MCVSeries.YValue[i] := 94.3;
    MCHSeries.YValue[i] := 30.8;
    MCHCSeries.YValue[i] := 32.6;
    PLTSeries.YValue[i] := 137;
    LYMpctSeries.YValue[i] := 25.4;
    MXDpctSeries.YValue[i] := 10;
    NEUTpctSeries.YValue[i] := 64.6;
    LYMSeries.YValue[i] := 1.3;
    MXDSeries.YValue[i] := 0.5;
    NEUTSeries.YValue[i] := 3.2;
    RDW_SDSeries.YValue[i] := 54.4;
    RDW_CVSeries.YValue[i] := 15.1;
    PDWSeries.YValue[i] := 10.8;
    MPVSeries.YValue[i] := {-}8.8;
    P_LCRSeries.YValue[i] := 18.7;
    PCTSeries.YValue[i] := {-}0.12;

    i := AddTime('27.6.2019 15:07');
    WBCSeries.YValue[i] := 4.9;
    RBCSeries.YValue[i] := 4.25;
    HGBSeries.YValue[i] := 13.2;
    HCTSeries.YValue[i] := 41.5;
    MCVSeries.YValue[i] := 97.6;
    MCHSeries.YValue[i] := 31.1;
    MCHCSeries.YValue[i] := 31.8;
    PLTSeries.YValue[i] := 155;
    LYMpctSeries.YValue[i] := 23.7;
    MXDpctSeries.YValue[i] := 14.4;
    NEUTpctSeries.YValue[i] := 61.9;
    LYMSeries.YValue[i] := 1.2;
    MXDSeries.YValue[i] := 0.7;
    NEUTSeries.YValue[i] := 3;
    RDW_SDSeries.YValue[i] := 57.9;
    RDW_CVSeries.YValue[i] := 16.1;
    PDWSeries.YValue[i] := 11.6;
    MPVSeries.YValue[i] := 9.7;
    P_LCRSeries.YValue[i] := 23.9;
    PCTSeries.YValue[i] := {-}0.15;

    i := AddTime('11.7.2019 13:54');
    WBCSeries.YValue[i] := 4.3;
    RBCSeries.YValue[i] := 3.9;
    HGBSeries.YValue[i] := 12.2;
    HCTSeries.YValue[i] := 36.6;
    MCVSeries.YValue[i] := 93.8;
    MCHSeries.YValue[i] := 31.3;
    MCHCSeries.YValue[i] := 33.3;
    PLTSeries.YValue[i] := 106;
    LYMpctSeries.YValue[i] := 20.9;
    MXDpctSeries.YValue[i] := 5.6;
    NEUTpctSeries.YValue[i] := 73.5;
    LYMSeries.YValue[i] := 0.9;
    MXDSeries.YValue[i] := 0.2;
    NEUTSeries.YValue[i] := 3.2;
    RDW_SDSeries.YValue[i] := 53.5;
    RDW_CVSeries.YValue[i] := 15.4;
    PDWSeries.YValue[i] := 10.3;
    MPVSeries.YValue[i] := 9.2;
    P_LCRSeries.YValue[i] := 21.4;
    PCTSeries.YValue[i] := {-}0.1;

    i := AddTime('31.7.2019 14:22');
    WBCSeries.YValue[i] := 3.3;
    RBCSeries.YValue[i] := 3.85;
    HGBSeries.YValue[i] := 12.4;
    HCTSeries.YValue[i] := 37;
    MCVSeries.YValue[i] := 96.1;
    MCHSeries.YValue[i] := 32.2;
    MCHCSeries.YValue[i] := 33.5;
    PLTSeries.YValue[i] := 96;
    LYMpctSeries.YValue[i] := 20.1;
    MXDpctSeries.YValue[i] := 8.3;
    NEUTpctSeries.YValue[i] := 71.6;
    LYMSeries.YValue[i] := 0.7;
    MXDSeries.YValue[i] := 0.3;
    NEUTSeries.YValue[i] := 2.3;
    RDW_SDSeries.YValue[i] := 56.5;
    RDW_CVSeries.YValue[i] := 16;
    PDWSeries.YValue[i] := 10.1;
    MPVSeries.YValue[i] := 10.1;
    P_LCRSeries.YValue[i] := 25.2;
    PCTSeries.YValue[i] := {-}0.1;

  end;
end;

function ShortCutToDescription(AShortCut: string): string;
begin
  if AShortCut = 'WBC' then Result := 'Anzahl weißer Blutzellen (white blood cells) in 1E3/'#206#188'l'
  else if AShortCut = 'RBC' then Result := 'Anzahl roter Blutzellen (red blood cells) in 1E6/'#206#188'l'
  else if AShortCut = 'HGB' then Result := 'Hämoglobin in g/dl'
  else if AShortCut = 'HCT' then Result := 'Hämatokrit in Vol-%'
  else if AShortCut = 'MCV' then Result := 'Mittlere Größer der peripheren Erythrozyten (mean corpuscular volume) in fl '
  else if AShortCut = 'MCH' then Result := '(melanin concentrating hormone) in pg'
  else if AShortCut = 'MCHC' then Result := 'Mittlere korpuskuläre Hämoglobinkonzentration (mean corpuscular/cellular hemoglobin concentration) in g/dl'
  else if AShortCut = 'PLT' then Result := 'Blutplättchen = Thrombozyten (platelets) in 1E3/'#206#188'l'
  else if AShortCut = 'LYM%' then Result := 'Lymphozyten in %'
  else if AShortCut = 'MXD%' then Result := 'Monozyten, basophile und eosinophlie Granulozyten in %'
  else if AShortCut = 'NEUT%' then Result := 'Neutrophile Granulozyten in %'
  else if AShortCut = 'LYM#' then Result := 'Lymphozyten in 1E3/'#206#188'l'
  else if AShortCut = 'MXD#' then Result := 'Monozyten, basophile und eosinophlie Granulozyten in 1E3/'#206#188'l'
  else if AShortCut = 'NEUT#' then Result := 'Neutrophile Granulozyten in 1E3/ul'
  else if AShortCut = 'RDW-SD' then Result := 'Verteilung der roten Blutzellen (red blood cell distribution width) in fl'
  else if AShortCut = 'RDW-CV' then Result := 'Verteilung der roten Blutzellen (red blood cell distribution width) in %'
  else if AShortCut = 'PDW' then Result := 'Thrombozytenverteilungsbreite in fl'
  else if AShortCut = 'MPV' then Result := 'Mittleres Thrombozytenvolumen in fl'
  else if AShortCut = 'P-LCR' then Result := '(platelett large cell ratio) in %'
  else if AShortCut = 'PCT' then Result := 'Procalcitonin in %'
  else Result := AShortCut
end;

initialization

DateSeparator := '.';

end.


