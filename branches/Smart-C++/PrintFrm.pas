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

unit PrintFrm;

interface

uses
    {$IFDEF WIN32}
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Buttons, Spin;
{$ENDIF}
{$IFDEF LINUX}
SysUtils, Classes, QGraphics, QControls, QForms, QDialogs,
QStdCtrls, QButtons, QComCtrls;
{$ENDIF}

type
    TPrintForm = class(TForm)
        btnCancel: TBitBtn;
        btnOk: TBitBtn;
        grpParams: TGroupBox;
        cbColors: TCheckBox;
        cbHighlight: TCheckBox;
        rbLN: TRadioButton;
        rbLNMargin: TRadioButton;
        cbWordWrap: TCheckBox;
        grpPages: TGroupBox;
        lblCopies: TLabel;
        seCopies: TSpinEdit;
        cbSelection: TCheckBox;
        rbNoLN: TRadioButton;
        procedure FormCreate(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
    public
        procedure LoadText;
    end;

implementation

uses
    devcfg;

{$R *.dfm}

procedure TPrintForm.LoadText;
begin
    // Set interface font
    Font.Name := devData.InterfaceFont;
    Font.Size := devData.InterfaceFontSize;
end;

procedure TPrintForm.FormCreate(Sender: TObject);
begin
    LoadText;
    cbColors.Checked := devData.PrintColors;
    cbHighlight.Checked := devData.PrintHighlight;
    cbWordWrap.Checked := devData.PrintWordWrap;
    rbLN.Checked := devData.PrintLineNumbers;
    rbNoLN.Checked := not devData.PrintLineNumbers;
    rbLNMargin.Checked := devData.PrintLineNumbersMargins;
end;

procedure TPrintForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
end;

end.
