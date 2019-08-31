unit about;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TAboutBox }

  TAboutBox = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private

  public

  end;

var
  AboutBox: TAboutBox;

implementation

uses lclintf;

{$R *.lfm}

{ TAboutBox }

procedure TAboutBox.BitBtn2Click(Sender: TObject);
begin
  OpenDocument('https://github.com/jakobsche/blood')
end;

procedure TAboutBox.BitBtn1Click(Sender: TObject);
begin
  Close
end;

end.

