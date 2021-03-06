{
    This file is part of Dev-C++
    Copyright (c) 2004 Bloodshed Software

    Dev-C++ is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Dev-C++ is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Dev-C++; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

unit FunctionSearchFrm;

interface

uses
    {$IFDEF WIN32}
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, StdCtrls, ExtCtrls, CppParser, ComCtrls;
{$ENDIF}
{$IFDEF LINUX}
SysUtils, Variants, Classes, QGraphics, QControls, QForms,
QDialogs, QStdCtrls, QExtCtrls, CppParser, QComCtrls;
{$ENDIF}

type
    TFunctionSearchForm = class(TForm)
        lblSearch: TLabel;
        txtSearch: TEdit;
        lvEntries: TListView;
        procedure txtSearchChange(Sender: TObject);
        procedure lvEntriesDblClick(Sender: TObject);
        procedure lvEntriesCompare(Sender: TObject; Item1, Item2: TListItem;
            Data: Integer; var Compare: Integer);
        procedure FormCreate(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure txtSearchKeyPress(Sender: TObject; var Key: Char);
        procedure txtSearchKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
    private
        { Private declarations }
        procedure LoadText;
    public
        { Public declarations }
        fParser: TCppParser;
        fFileName: AnsiString;
    end;

implementation

uses
    {$IFDEF WIN32}
    devcfg, utils;
{$ENDIF}
{$IFDEF LINUX}
Xlib, devcfg;
{$ENDIF}

{$R *.dfm}

procedure TFunctionSearchForm.txtSearchChange(Sender: TObject);
var
    I: integer;
    st: PStatement;
begin
    if not Assigned(fParser) then
        Exit;

    lvEntries.Items.BeginUpdate;
    lvEntries.Items.Clear;

    for I := 0 to fParser.Statements.Count - 1 do begin

        st := PStatement(fParser.Statements[I]);

        if st^._Kind in [skFunction, skConstructor, skDestructor] then
            if (st^._IsDeclaration and SameFileName(st^._DeclImplFileName, fFilename)) or
                (not st^._IsDeclaration and SameFileName(st^._FileName, fFilename)) then

                if (txtSearch.Text = '') or ContainsText(st^._ScopelessCmd, txtSearch.Text) then begin
                    with lvEntries.Items.Add do begin
                        ImageIndex := -1;
                        case st^._ClassScope of
                            scsPrivate: StateIndex := 5;
                            scsProtected: StateIndex := 6;
                            scsPublic: StateIndex := 7;
                        end;
                        SubItems.Add(st^._Type);
                        SubItems.Add(st^._ScopeCmd);
                        if st^._IsDeclaration then
                            SubItems.Add(IntToStr(st^._DeclImplLine))
                        else
                            SubItems.Add(IntToStr(st^._Line));
                        Data := fParser.Statements[I];
                    end;
                end;

    end;

    lvEntries.AlphaSort;
    if lvEntries.ItemIndex = -1 then
        if lvEntries.Items.Count > 0 then
            lvEntries.ItemIndex := 0;

    lvEntries.Items.EndUpdate;

    // without this, the user has to press the down arrow twice to
    // move down the listview entries (only the first time!)...
    {$IFDEF WIN32}
    lvEntries.Perform(WM_KEYDOWN, VK_DOWN, 0);
    {$ENDIF}
    {$IFDEF LINUX}
    lvEntries.Perform(WM_KEYDOWN, XK_DOWN, 0);
    {$ENDIF}
end;

procedure TFunctionSearchForm.txtSearchKeyPress(Sender: TObject; var Key: Char);
begin
    case Key of
        Chr(VK_ESCAPE): begin
                ModalResult := mrCancel;
                Key := #0;
            end;
        Chr(VK_RETURN): begin
                if Assigned(lvEntries.Selected) then begin
                    ModalResult := mrOK;
                    Key := #0;
                end;
            end;
    end;
end;

procedure TFunctionSearchForm.txtSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
    case Key of
        VK_DOWN, VK_UP: begin
                lvEntries.Perform(WM_KEYDOWN, Key, 0); // send the key to lventries
            end;
    end;
end;

procedure TFunctionSearchForm.lvEntriesDblClick(Sender: TObject);
begin
    if Assigned(lvEntries.Selected) then
        ModalResult := mrOK;
end;

procedure TFunctionSearchForm.lvEntriesCompare(Sender: TObject; Item1, Item2: TListItem; Data: Integer; var Compare: Integer);
begin
    Compare := CompareText(Item1.SubItems[1], Item2.SubItems[1]);
end;

procedure TFunctionSearchForm.LoadText;
var
    len: integer;
begin
    // Set interface font
    Font.Name := devData.InterfaceFont;
    Font.Size := devData.InterfaceFontSize;

    // Make sure the translation fits
    len := Canvas.TextWidth(lblSearch.Caption);
    txtSearch.Left := len + 10;
    txtSearch.Width := ClientWidth - len - 14;
end;

procedure TFunctionSearchForm.FormCreate(Sender: TObject);
begin
    LoadText;
end;

procedure TFunctionSearchForm.FormShow(Sender: TObject);
begin
    txtSearchChange(self);
end;

end.
