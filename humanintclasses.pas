unit HumanIntClasses;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Graphics;

type
  TFormat = class   //Класс форматов
   private
    Descript: string;        //Определение микрозадачи для кадров
    Purpose: string;         //Описание макрозадачи формата
    Mode: string;            //Режим полета или работы
    //ScrStuct: TBitmap; //-рисунок?(Graphics)//Кадровая структура формата
   public
    constructor Create(NDescript, NPurpose, NMode: string);

  end;

  TScreen = class   //Класс кадров
   private
    Descript: string;      //Обозначение, соответствующее задаче кадра
    Purpose: string;       //Задачи, для которых предназначен кадр
    //Appearance - набор рисунков? Изображение кадра с номерами эл-тов
    //ScZone -  //Компановочный план
   public

  end;

  TZone = class    //Класс зон в кадре
   private
    Descript: string;   //Cостав зоны и ее номер в кадре
    Purpose: string;    //Назначение отображаемой в зоне информации
   public

   end;

  TGraphElem = class  //Класс графических элементов
   private
    PosNumber: Integer; //Номер граф.элемента в кадре
    Name: string;       //Название графического элемента
    //GraghType:Integer; // Тип граф.элеметна Текст,Счетчик,Граф.Символ?
    GraghAmout: Integer;     //Кол-во вариантов отображения граф.элемента

   public

  end;

  TDispView = class
   private
    Name: string;
    Purpose: string;
    //Appearance: TBitmap;
    //FormationAlg:алгоритм?
    //DispConditions:алгоритм
    //Mode:  string; 1 или несколько режимов
    Color: string;
    PhysRage: string;
    MetrRage: string;
    Notation: string;
    //KeyWords: string;
   public
  end;



implementation

end.

