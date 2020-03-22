unit MachineInterface;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type

  { TSystem }

  TSystem = class
  private
    FSysName: string;
    procedure SetSysName(AValue: string);
    published
    property SysName: string read FSysName write SetSysName;//Наименование системы, которая генерирует параметр
  end;

  { TGroupParameter }

  TGroupParameter = class
  private
    FGroupName: string;
    procedure SetGroupName(AValue: string);
       published
         property GroupName: string read FGroupName write SetGroupName;//Наименование группы параметров, раскрывающее её физич.смысk
  end;

  { TParameter }

  TParameter = class
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
      property ParamName: string read FParamName write SetParamName;//Наименование параметра, раскрывающее её физич.смысл
      property Identifier_RUS: string read FIdentifier_RUS write SetIdentifier_RUS;//Оригинальный идентификатор(код параметра) русскими буквами
      property Identifier_ENG: string read FIdentifier_ENG write SetIdentifier_ENG;//Оригинальный идентификатор(код параметра)транслитерацией
      property Units: string read FUnits write SetUnits; //Единицы измерения
      property Range: string read FRange write SetRange;//Диапазон в котором параметр передаётся от системы
      property Precision: extended read FPrecision write SetPrecision;//Точность, с которой параметр передаётся от системы
      property ElementDecoding: string read FElementDecoding write SetElementDecoding;//Расшифровка значений элементов массива
      property ParamDecoding: string read FParamDecoding write SetParamDecoding;//Расшифровка значений для параметров
  end;


implementation

{ TParameter }

procedure TParameter.SetParamName(AValue: string);
begin
  if FParamName=AValue then Exit;
  FParamName:=AValue;
end;

procedure TParameter.SetPrecision(AValue: extended);
begin
  if FPrecision=AValue then Exit;
  FPrecision:=AValue;
end;

procedure TParameter.SetRange(AValue: string);
begin
  if FRange=AValue then Exit;
  FRange:=AValue;
end;

procedure TParameter.SetUnits(AValue: string);
begin
  if FUnits=AValue then Exit;
  FUnits:=AValue;
end;

procedure TParameter.SetIdentifier_RUS(AValue: string);
begin
  if FIdentifier_RUS=AValue then Exit;
  FIdentifier_RUS:=AValue;
end;

procedure TParameter.SetParamDecoding(AValue: string);
begin
  if FParamDecoding=AValue then Exit;
  FParamDecoding:=AValue;
end;

procedure TParameter.SetIdentifier_ENG(AValue: string);
begin
  if FIdentifier_ENG=AValue then Exit;
  FIdentifier_ENG:=AValue;
end;

procedure TParameter.SetElementDecoding(AValue: string);
begin
  if FElementDecoding=AValue then Exit;
  FElementDecoding:=AValue;
end;

{ TGroupParameter }

procedure TGroupParameter.SetGroupName(AValue: string);
begin
  if FGroupName=AValue then Exit;
  FGroupName:=AValue;
end;

{ TSystem }

procedure TSystem.SetSysName(AValue: string);
begin
  if FSysName=AValue then Exit;
  FSysName:=AValue;
end;

end.

