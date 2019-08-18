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
    function GetCoefficients(AnIndex: Integer): Integer;
    function GetDegree: Integer;
    function GetDerivations(ANumber: Integer): Extended;
    function GetValue: Extended;
    procedure SetCoefficients(AnIndex: Integer; AValue: Integer);
    procedure SetDegree(AValue: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    property Argumet: Extended read FArgument write FArgument;
    property Coefficients[AnIndex: Integer]: Integer read GetCoefficients write SetCoefficients;
    property Degree: Integer read GetDegree write SetDegree;
    property Derivations[ANumber: Integer]: Extended read GetDerivations;
    property Value: Extended read GetValue;
  end;

implementation

{ TPolynomial }

function TPolynomial.GetCoefficients(AnIndex: Integer): Integer;
begin
  Result := FCoefficients[AnIndex]
end;

function TPolynomial.GetDegree: Integer;
begin
  Result := Length(FCoefficients) - 1
end;

function TPolynomial.GetDerivations(ANumber: Integer): Extended;
begin
  Result := 0;
end;

function TPolynomial.GetValue: Extended;
begin
 Result := 0;
end;

procedure TPolynomial.SetCoefficients(AnIndex: Integer; AValue: Integer);
begin
  FCoefficients[AnIndex] := AValue
end;

procedure TPolynomial.SetDegree(AValue: Integer);
begin
  SetLength(FCoefficients, AValue + 1)
end;

constructor TPolynomial.Create;
begin
  inherited Create;
  SetLength(FCoefficients, 1)
end;

destructor TPolynomial.Destroy;
begin
  SetLength(FCoefficients, 0);
  inherited Destroy;
end;

end.

