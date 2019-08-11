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
    PCTSeries.YValue[i] := -0.15;

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
    PCTSeries.YValue[i] := -0.16;

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
  else if AShortCut = 'PLT' then Result := 'Blutplättchen (platelets) in 1E3/'#206#188'l'
  else if AShortCut = 'LYM%' then Result := 'Lymphozyten in %'
  else if AShortCut = 'MXD%' then Result := 'Monozyten, basophile und eosinophlie Granulozyten in %'
  else if AShortCut = 'NEUT%' then Result := 'Neutrophilen Granulozyten in %'
  else if AShortCut = 'LYM#' then Result := 'Lymphozyten in 1E3/'#206#188'l'
  else if AShortCut = 'MXD#' then Result := 'Monozyten, basophile und eosinophlie Granulozyten in 1E3/'#206#188'l'
  else if AShortCut = 'NEUT#' then Result := 'Neutrophilen Granulozyten in 1E3/ul'
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


