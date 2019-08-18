unit Polynomials;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  TCoefficientArray = array of Integer;

  { TPolynomial }

  TPolynomial = class
  private
    FArgument: Extended;
    FCoefficients: TCoefficientArray;
    FDerivation: TPolynomial;
    function GetCoefficients(AnIndex: Integer): Integer;
    function GetDegree: Integer;
    function GetDerivation: TPolynomial;
    function GetDerivations(ANumber: Integer): Extended;
    function GetValue: Extended;
    procedure SetArgument(AValue: Extended);
    procedure SetCoefficients(AnIndex: Integer; AValue: Integer);
    procedure SetDegree(AValue: Integer);
    property Derivation: TPolynomial read GetDerivation;
  public
    constructor Create;
    destructor Destroy; override;
    property Argument: Extended read FArgument write SetArgument;
    property Coefficients[AnIndex: Integer]: Integer read GetCoefficients
      write SetCoefficients;
    property Degree: Integer read GetDegree write SetDegree;
    property Derivations[ANumber: Integer]: Extended read GetDerivations;
    property Value: Extended read GetValue;
  end;

implementation

{ TPolynomial }

function TPolynomial.GetDerivation: TPolynomial;
var
  i: Integer;
begin
  if not Assigned(FDerivation) then begin
    FDerivation := TPolynomial.Create;
    FDerivation.Degree := Degree - 1;
    for i := FDerivation.Degree downto 0 do
      FDerivation.Coefficients[i] := (i + 1) * Coefficients[i + 1];
  end;
  FDerivation.Argument := Argument;
  Result := FDerivation
end;

function TPolynomial.GetCoefficients(AnIndex: Integer): Integer;
begin
  Result := FCoefficients[AnIndex]
end;

function TPolynomial.GetDegree: Integer;
begin
  Result := Length(FCoefficients) - 1
end;

function TPolynomial.GetDerivations(ANumber: Integer): Extended;
var
  i: Integer;
  x: TPolynomial;
begin
  if ANumber > Degree then Result := 0
  else begin
    i := 0;
    x := Self;
    while i < ANumber do begin
      x := x.Derivation;
      Inc(i)
    end;
    Result := x.Value
  end;
end;

function TPolynomial.GetValue: Extended;
begin
 Result := 0;
end;

procedure TPolynomial.SetArgument(AValue: Extended);
begin
  if FArgument = AValue then Exit;
  FArgument := AValue;
end;

procedure TPolynomial.SetCoefficients(AnIndex: Integer; AValue: Integer);
begin
  FCoefficients[AnIndex] := AValue;
  if Assigned(FDerivation) then FreeAndNil(FDerivation);
end;

procedure TPolynomial.SetDegree(AValue: Integer);
begin
  if AValue <> GetDegree then begin
    SetLength(FCoefficients, AValue + 1);
    if Assigned(FDerivation) then FreeAndNil(FDerivation)
  end
end;

constructor TPolynomial.Create;
begin
  inherited Create;
  Degree := 0
end;

destructor TPolynomial.Destroy;
begin
  SetLength(FCoefficients, 0);
  FDerivation.Free;
  inherited Destroy;
end;

end.

