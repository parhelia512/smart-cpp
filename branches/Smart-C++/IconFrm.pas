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

unit IconFrm;

interface

uses
    {$IFDEF WIN32}
    Windows, Messages, SysUtils, Classes, Graphics, Forms,
    ImgList, ComCtrls, Buttons, StdCtrls, Controls, Dialogs, ExtDlgs;
{$ENDIF}
{$IFDEF LINUX}
SysUtils, Classes, QGraphics, QForms,
QImgList, QComCtrls, QButtons, QStdCtrls, QControls, QDialogs;
{$ENDIF}

type
    TIconForm = class(TForm)
        btnOk: TBitBtn;
        btnCancel: TBitBtn;
        ImageList: TImageList;
        dlgPic: TOpenPictureDialog;
        IconView: TListView;
        procedure btnOkClick(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure FormDestroy(Sender: TObject);
        procedure IconViewInfoTip(Sender: TObject; Item: TListItem;
            var InfoTip: AnsiString);
        procedure IconViewDblClick(Sender: TObject);
    private
        procedure LoadText;
        function AddItem(const FileName: AnsiString): TListItem;
        function GetSelected: AnsiString;
    public
        property Selected: AnsiString read GetSelected;
    end;

    { ** modify with browse ablity - include options to copy ico to directory}

implementation

uses Version, devcfg, utils;

{$R *.dfm}

procedure TIconForm.LoadText;
begin
    // Set interface font
    Font.Name := devData.InterfaceFont;
    Font.Size := devData.InterfaceFontSize;
end;

procedure TIconForm.btnOkClick(Sender: TObject);
begin
    if IconView.Selected = nil then
    begin
        ModalResult := mrNone;
        exit;
    end;
end;

procedure TIconForm.FormActivate(Sender: TObject);
begin
end;

// modifed to work with multiple directories.

procedure TIconForm.FormCreate(Sender: TObject);
var
    SRec: TSearchRec;
    SFile: AnsiString;
    tmp: TStrings;
    idx: integer;
begin
    LoadText;
    with IconView do
    try
        ImageList.Clear;
        Items.BeginUpdate;
        Items.Clear;
        tmp := TStringList.Create;
        try
            StrtoList(devDirs.Icons, tmp);
            if tmp.Count > 0 then
                for idx := 0 to pred(tmp.Count) do
                begin
                    sFile := ExpandFileto(tmp[idx], devDirs.Exec) + '*.ico';
                    if FindFirst(sFile, faAnyFile, SRec) = 0 then
                        repeat
                            // pase filename with full path
                            Self.AddItem(IncludeTrailingPathDelimiter(tmp[idx]) + srec.Name);
                        until FindNext(SRec) <> 0;
                end;
        finally
            tmp.Free;
        end;
    finally
        Items.EndUpdate;
    end;
end;

procedure TIconForm.FormDestroy(Sender: TObject);
begin
    ImageList.Clear;
end;

function TIconForm.GetSelected: AnsiString;
begin
    if assigned(IconView.Selected) then
        result := IconView.Selected.SubItems[0]
    else
        result := '';
end;

function TIconForm.AddItem(const FileName: AnsiString): TListItem;
var
    icon: TIcon;
    Item: TListItem;
    fFile: AnsiString;
begin
    Item := IconView.Items.Add;
    //full path is passed from FormCreate
    fFile := FileName;
    Item.SubItems.Add(fFile);
    Icon := TIcon.Create;
    Icon.LoadFromFile(fFile);
    Item.ImageIndex := ImageList.AddIcon(Icon);
    result := Item;

    fFile := ExtractFileName(fFile);
    Item.Caption := copy(fFile, 1, length(FFile) - length(ExtractFileExt(FFile)));
    // need to add for including more directories
end;

procedure TIconForm.IconViewInfoTip(Sender: TObject; Item: TListItem;
    var InfoTip: AnsiString);
begin
    InfoTip := Item.SubItems[0];
end;

procedure TIconForm.IconViewDblClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

end.
