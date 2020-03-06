unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ActnList, Menus,
  ExtCtrls, ComCtrls, TreeFilterEdit;

type

  { TForm1 }

  TForm1 = class(TForm)
    AReportAdd: TAction;
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
    ControlBar1: TControlBar;
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
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    TreeFilterEdit1: TTreeFilterEdit;
    TreeView1: TTreeView;
    procedure AHierarchyAddExecute(Sender: TObject);
    procedure AHierarchyDownExecute(Sender: TObject);
    procedure AProgOverrideExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.AHierarchyAddExecute(Sender: TObject);
begin

end;

procedure TForm1.AHierarchyDownExecute(Sender: TObject);
begin

end;

procedure TForm1.AProgOverrideExecute(Sender: TObject);
begin

end;

end.

