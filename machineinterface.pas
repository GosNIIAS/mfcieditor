unit MachineInterface;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { System }

  System = class
  private
    FSysName: string;
    procedure SetSysName(AValue: string);
    published
      property SysName: string read FSysName write SetSysName;
  end;

  { GroupParameter }

  GroupParameter = class
  private
    FGroupName: string;
    procedure SetGroupName(AValue: string);
       published
         property GroupName: string read FGroupName write SetGroupName;
  end;

  { Parameter }

  Parameter = class
  private
    FElementDecoding: string;
    FIdentifier_ENG: string;
    FIdentifier_RUS: string;
    FParamDecoding: string;
    FParamName: string;
    FPrecision: extended;
    FRange: string;
    FUnits: string;
    procedure SetElementDecoding(AValue: string);
    procedure SetIdentifier_ENG(AValue: string);
    procedure SetIdentifier_RUS(AValue: string);
    procedure SetParamDecoding(AValue: string);
    procedure SetParamName(AValue: string);
    procedure SetPrecision(AValue: extended);
    procedure SetRange(AValue: string);
    procedure SetUnits(AValue: string);
    published
      property ParamName: string read FParamName write SetParamName;
      property Identifier_RUS: string read FIdentifier_RUS write SetIdentifier_RUS;
      property Identifier_ENG: string read FIdentifier_ENG write SetIdentifier_ENG;
      property Units: string read FUnits write SetUnits;
      property Range: string read FRange write SetRange;
      property Precision: extended read FPrecision write SetPrecision;
      property ElementDecoding: string read FElementDecoding write SetElementDecoding;
      property ParamDecoding: string read FParamDecoding write SetParamDecoding;
  end;


implementation

{ Parameter }

procedure Parameter.SetParamName(AValue: string);
begin
  if FParamName=AValue then Exit;
  FParamName:=AValue;
end;

procedure Parameter.SetPrecision(AValue: extended);
begin
  if FPrecision=AValue then Exit;
  FPrecision:=AValue;
end;

procedure Parameter.SetRange(AValue: string);
begin
  if FRange=AValue then Exit;
  FRange:=AValue;
end;

procedure Parameter.SetUnits(AValue: string);
begin
  if FUnits=AValue then Exit;
  FUnits:=AValue;
end;

procedure Parameter.SetIdentifier_RUS(AValue: string);
begin
  if FIdentifier_RUS=AValue then Exit;
  FIdentifier_RUS:=AValue;
end;

procedure Parameter.SetParamDecoding(AValue: string);
begin
  if FParamDecoding=AValue then Exit;
  FParamDecoding:=AValue;
end;

procedure Parameter.SetIdentifier_ENG(AValue: string);
begin
  if FIdentifier_ENG=AValue then Exit;
  FIdentifier_ENG:=AValue;
end;

procedure Parameter.SetElementDecoding(AValue: string);
begin
  if FElementDecoding=AValue then Exit;
  FElementDecoding:=AValue;
end;

{ GroupParameter }

procedure GroupParameter.SetGroupName(AValue: string);
begin
  if FGroupName=AValue then Exit;
  FGroupName:=AValue;
end;

{ System }

procedure System.SetSysName(AValue: string);
begin
  if FSysName=AValue then Exit;
  FSysName:=AValue;
end;

end.

