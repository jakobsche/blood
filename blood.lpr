program blood;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, tachartlazaruspkg, Unit1, BloDat, FctItem, lclpatch, Polynomials
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Blood';
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.

