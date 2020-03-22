unit HumanIntClasses;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics, Controls, BaseInterface, fgl;

type
  TFormat=class;
  TFormatList = specialize TFPGObjectList<TFormat>;

  { TIntefaceElements }

  TIntefaceElements = class(TmfciInterface)
  private
    FFormats: TFormatList;
    procedure SetFormats(AValue: TFormatList);
   public
    property Formats: TFormatList read FFormats write SetFormats;
  end;


  { TFormat }

  TFormat = class(TmfciInterface)   //Класс форматов

  private
    FDescript: string;
    FMode: string;
    FPurpose: string;
    FScrStuct: TImageList;
    function GetMode: string;
    function GetPurpose: string;
    function GetScrStuct: TImageList;
    procedure SetDescript(AValue: string);
    procedure SetMode(AValue: string);
    procedure SetPurpose(AValue: string);
    procedure SetScrStuct(AValue: TImageList);
   published
    //Определение микрозадачи для кадров
    property Descript: string read FDescript write SetDescript;
    //Описание макрозадачи формата
    property Purpose: string read FPurpose write SetPurpose;
    //Режим полета или работы
    property Mode: string read FMode write SetMode;
    //Кадровая структура формата (рисунок - png!)
    property ScrStuct: TImageList read FScrStuct write SetScrStuct;

  end;



  { TScreen }

  TScreen = class(TmfciInterface)  //Класс кадров
   private
     FAppearance: TImageList;
     FDescript: string;
     FPurpose: string;
     FScZone: TPicture;
     function GetAppearance: TImageList;
     function GetDescript: string;
     function GetPurpose: string;
     procedure SetAppearance(AValue: TImageList);
     procedure SetDescript(AValue: string);
     procedure SetPurpose(AValue: string);
     procedure SetScZone(AValue: TPicture);

   published
    //Обозначение, соответствующее задаче кадра
    property Descript: string read FDescript write SetDescript;
    //Задачи, для которых предназначен кадр
    property Purpose: string read FPurpose write SetPurpose;
    //Изображение кадра с номерами эл-тов
    property Appearance: TImageList read FAppearance write SetAppearance;
    //Зонирование кадра(деление на зоны и их обозначение)
    property ScZone: TPicture read FScZone write SetScZone;

  end;

  { TZone }

  TZone = class(TmfciInterface)   //Класс зон в кадре
   private
     FDescript: string;
     FPurpose: string;
     procedure SetDescript(AValue: string);
     procedure SetPurpose(AValue: string);
   published
    //Состав зоны и её номер в кадре
    property Descript: string read FDescript write SetDescript;
    //Назначение отображаемой в зоне информации
    property Purpose: string read FPurpose write SetPurpose;
   end;

  { TGraphElem }

  TGraphElem = class(TmfciInterface)  //Класс графических элементов

  private
    FGraghAmout: Integer;
    FGraghType: Integer;
    FName: string;
    FPosNumber: Integer;
    procedure SetGraghAmout(AValue: Integer);
    procedure SetGraghType(AValue: Integer);
    procedure SetName(AValue: string);
    procedure SetPosNumber(AValue: Integer);
   published
    //Номер граф.элемента в кадре
    property PosNumber: Integer read FPosNumber write SetPosNumber;
    //Название графического элемента
    property Name: string read FName write SetName;
    //Тип графического элемента
    property GraghType:Integer read FGraghType write SetGraghType;
    //Количество возможных вариантов отображения граф.элемента
    property GraghAmout: Integer read FGraghAmout write SetGraghAmout;

  end;

  { TDispView }

  TDispView = class(TmfciInterface)
  private
    FAppearance: TPicture;
    FColor: string;
    FDispConditions: string;
    FFormationAlg: string;
    FKeyWords: string;
    FMetrRage: string;
    FMode: string;
    FName: string;
    FNotation: string;
    FPhysRage: string;
    FPurpose: string;
    procedure SetAppearance(AValue: TPicture);
    procedure SetColor(AValue: string);
    procedure SetDispConditions(AValue: string);
    procedure SetFormationAlg(AValue: string);
    procedure SetKeyWords(AValue: string);
    procedure SetMetrRage(AValue: string);
    procedure SetMode(AValue: string);
    procedure SetName(AValue: string);
    procedure SetNotation(AValue: string);
    procedure SetPhysRage(AValue: string);
    procedure SetPurpose(AValue: string);
   published
    //Наименование вида отображения
    property Name: string read FName write SetName;
    //Описание физ.смысла данного вида отображения граф.элемента
    property Purpose: string read FPurpose write SetPurpose;
    //Внешний вид индицируемого символа в данном варианте
    property Appearance: TPicture read FAppearance write SetAppearance;
    //Алгоритм формирования внешнего вида граф.элем.в данном варианте
    property FormationAlg:string read FFormationAlg write SetFormationAlg;
    //Условия индикации граф.эл. в данном варианте отображения
    property DispConditions:string read FDispConditions write SetDispConditions;
    //Режимы, в которых данный символ может отображаться всегда или про доп.условиях
    property Mode:  string read FMode write SetMode; //1 или несколько режимов
    //Цвета, которыми отображается граф.элемент
    property Color: string read FColor write SetColor;
    //Диапазон изменения(физический)
    property PhysRage: string read FPhysRage write SetPhysRage;
    //Диапазон изменения(метрический)
    property MetrRage: string read FMetrRage write SetMetrRage;
    //Примечание к алгоритму
    property Notation: string read FNotation write SetNotation;
    //Ключевые слова
    property KeyWords: string read FKeyWords write SetKeyWords;
   published

  end;



implementation

{ TDispView }

procedure TDispView.SetAppearance(AValue: TPicture);
begin
  if FAppearance=AValue then Exit;
  FAppearance:=AValue;
end;

procedure TDispView.SetColor(AValue: string);
begin
  if FColor=AValue then Exit;
  FColor:=AValue;
end;

procedure TDispView.SetDispConditions(AValue: string);
begin
  if FDispConditions=AValue then Exit;
  FDispConditions:=AValue;
end;

procedure TDispView.SetFormationAlg(AValue: string);
begin
  if FFormationAlg=AValue then Exit;
  FFormationAlg:=AValue;
end;

procedure TDispView.SetKeyWords(AValue: string);
begin
  if FKeyWords=AValue then Exit;
  FKeyWords:=AValue;
end;

procedure TDispView.SetMetrRage(AValue: string);
begin
  if FMetrRage=AValue then Exit;
  FMetrRage:=AValue;
end;

procedure TDispView.SetMode(AValue: string);
begin
  if FMode=AValue then Exit;
  FMode:=AValue;
end;

procedure TDispView.SetName(AValue: string);
begin
  if FName=AValue then Exit;
  FName:=AValue;
end;

procedure TDispView.SetNotation(AValue: string);
begin
  if FNotation=AValue then Exit;
  FNotation:=AValue;
end;

procedure TDispView.SetPhysRage(AValue: string);
begin
  if FPhysRage=AValue then Exit;
  FPhysRage:=AValue;
end;

procedure TDispView.SetPurpose(AValue: string);
begin
  if FPurpose=AValue then Exit;
  FPurpose:=AValue;
end;

{ TIntefaceElements }

procedure TIntefaceElements.SetFormats(AValue: TFormatList);
begin
 if FFormats=AValue then Exit;
  FFormats:=AValue;
end;

{ TGraphElem }

procedure TGraphElem.SetGraghAmout(AValue: Integer);
begin
  if FGraghAmout=AValue then Exit;
  FGraghAmout:=AValue;
end;

procedure TGraphElem.SetGraghType(AValue: Integer);
begin
  if FGraghType=AValue then Exit;
  FGraghType:=AValue;
end;

procedure TGraphElem.SetName(AValue: string);
begin
  if FName=AValue then Exit;
  FName:=AValue;
end;

procedure TGraphElem.SetPosNumber(AValue: Integer);
begin
  if FPosNumber=AValue then Exit;
  FPosNumber:=AValue;
end;

{ TZone }

procedure TZone.SetDescript(AValue: string);
begin
  if FDescript=AValue then Exit;
  FDescript:=AValue;
end;

procedure TZone.SetPurpose(AValue: string);
begin
  if FPurpose=AValue then Exit;
  FPurpose:=AValue;
end;

{ TFormat }

function TFormat.GetMode: string;
begin

end;

function TFormat.GetPurpose: string;
begin

end;

function TFormat.GetScrStuct: TImageList;
begin

end;

procedure TFormat.SetDescript(AValue: string);
begin
  if FDescript=AValue then Exit;
  FDescript:=AValue;
end;

procedure TFormat.SetMode(AValue: string);
begin
  if FMode=AValue then Exit;
  FMode:=AValue;
end;

procedure TFormat.SetPurpose(AValue: string);
begin
  if FPurpose=AValue then Exit;
  FPurpose:=AValue;
end;

procedure TFormat.SetScrStuct(AValue: TImageList);
begin
  if FScrStuct=AValue then Exit;
  FScrStuct:=AValue;
end;

{ TScreen }

function TScreen.GetAppearance: TImageList;
begin

end;

function TScreen.GetDescript: string;
begin

end;

function TScreen.GetPurpose: string;
begin

end;

procedure TScreen.SetAppearance(AValue: TImageList);
begin
  if FAppearance=AValue then Exit;
  FAppearance:=AValue;
end;

procedure TScreen.SetDescript(AValue: string);
begin
  if FDescript=AValue then Exit;
  FDescript:=AValue;
end;

procedure TScreen.SetPurpose(AValue: string);
begin
  if FPurpose=AValue then Exit;
  FPurpose:=AValue;
end;

procedure TScreen.SetScZone(AValue: TPicture);
begin
  if FScZone=AValue then Exit;
  FScZone:=AValue;
end;

end.

