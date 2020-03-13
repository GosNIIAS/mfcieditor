unit unitMFCIeditor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ActnList, Menus,
  ExtCtrls, ComCtrls, StdCtrls, Buttons, MaskEdit, TreeFilterEdit;

type

  { TFMain }

  TFMain = class(TForm)
    AFileCreate: TAction;
    AReportCreate: TAction;
    AHierarchyUp: TAction;
    AHierarchyDown: TAction;
    AHierarchyDelete: TAction;
    AHierarchyAdd: TAction;
    AProgPaste: TAction;
    AProgCut: TAction;
    AProgCopy: TAction;
    AProgOverride: TAction;
    AProgReturn: TAction;
    AFileSave: TAction;
    AFileSaveAs: TAction;
    AFileClose: TAction;
    AFileOpen: TAction;
    ActionList1: TActionList;
    ImageList1: TImageList;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    TreeFilterEdit1: TTreeFilterEdit;
    TreeHumInt: TTreeView;
    TreeSignals: TTreeView;
    procedure AFileCloseExecute(Sender: TObject);
    procedure AFileOpenExecute(Sender: TObject);
    procedure AFileSaveAsExecute(Sender: TObject);
    procedure AFileSaveExecute(Sender: TObject);
    procedure AHierarchyAddExecute(Sender: TObject);
    procedure AHierarchyDeleteExecute(Sender: TObject);
    procedure AHierarchyDownExecute(Sender: TObject);
    procedure AHierarchyUpExecute(Sender: TObject);
    procedure AProgCopyExecute(Sender: TObject);
    procedure AProgCutExecute(Sender: TObject);
    procedure AProgOverrideExecute(Sender: TObject);
    procedure AProgPasteExecute(Sender: TObject);
    procedure AProgReturnExecute(Sender: TObject);
    procedure AReportAddExecute(Sender: TObject);
    procedure AReportCreateExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);

  private

  public

  end;

var
  FMain: TFMain;

implementation

{$R *.lfm}

{ TFMain }

procedure TFMain.AFileOpenExecute(Sender: TObject);
begin
  //if OpenDialog1.Execute then File.File.LoadFromFile(OpenDialog1.FileName);
end;

procedure TFMain.AFileCloseExecute(Sender: TObject);
begin
   close;
end;

procedure TFMain.AFileSaveAsExecute(Sender: TObject);
begin

end;

procedure TFMain.AFileSaveExecute(Sender: TObject);
begin

end;

procedure TFMain.AHierarchyAddExecute(Sender: TObject);
begin

end;

procedure TFMain.AHierarchyDeleteExecute(Sender: TObject);
begin

end;

procedure TFMain.AHierarchyDownExecute(Sender: TObject);
begin

end;

procedure TFMain.AHierarchyUpExecute(Sender: TObject);
begin

end;

procedure TFMain.AProgCopyExecute(Sender: TObject);
begin

end;

procedure TFMain.AProgCutExecute(Sender: TObject);
begin

end;

procedure TFMain.AProgOverrideExecute(Sender: TObject);
begin

end;

procedure TFMain.AProgPasteExecute(Sender: TObject);
begin

end;

procedure TFMain.AProgReturnExecute(Sender: TObject);
begin

end;

procedure TFMain.AReportAddExecute(Sender: TObject);
begin

end;

procedure TFMain.AReportCreateExecute(Sender: TObject);
begin

end;

procedure TFMain.FormCreate(Sender: TObject);
begin

end;

procedure TFMain.ToolButton1Click(Sender: TObject);
begin

end;

end.

