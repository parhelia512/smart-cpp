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

unit version;

interface

//path delimiter
const
    {$IFDEF WIN32}
    pd = '\';
    {$ENDIF}
    {$IFDEF LINUX}
    pd = '/';
    {$ENDIF}

    // exe properties
    DEVCPP = 'Smart-C++';
    DEVCPP_VERSION = '1.1.0.38';
    DEVCPP_BUILDTIME = 'February 11 2013';

    // delimiters
    DEV_INTERNAL_OPEN = '$__DEV_INTERNAL_OPEN';

    // config file names
    DEV_COMPLETION_CACHE = 'cache.ccc';
    DEV_DEFAULTCODE_FILE = 'defaultcode.ini';
    DEV_SHORTCUTS_FILE = 'shortcuts.ini';
    DEV_CLASSFOLDERS_FILE = 'classfolders.ini';
    DEV_CODEINS_FILE = 'codeinsertion.ini';
    DEV_WEBMIRRORS_FILE = 'webmirrors.ini';
    DEV_TOOLS_FILE = 'tools.ini';

    // themes
    DEV_GNOME_THEME = 'Gnome';
    DEV_NEWLOOK_THEME = 'New Look';
    DEV_BLUE_THEME = 'Blue';
    DEV_INTERNAL_THEME = 'New Look';

    LANGUAGE_DIR = 'Lang' + pd;
    ICON_DIR = 'Icons' + pd;
    HELP_DIR = 'Help' + pd;
    TEMPLATE_DIR = 'Templates' + pd;
    THEME_DIR = 'Themes' + pd;
    PACKAGES_DIR = 'Packages' + pd;

    // file fxtensions
    LIB_EXT = '.a';
    OBJ_EXT = '.o';
    DLL_EXT = '.dll';
    EXE_EXT = '.exe';
    DEV_EXT = '.dev';
    HTML_EXT = '.html';
    RTF_EXT = '.rtf';
    TEX_EXT = '.tex';
    INI_EXT = '.ini';
    TEMPLATE_EXT = '.template';
    SYNTAX_EXT = '.syntax';
    C_EXT = '.c';
    CPP_EXT = '.cpp';
    CC_EXT = '.cc';
    CXX_EXT = '.cxx';
    CP2_EXT = '.c++';
    CP_EXT = '.cp';
    H_EXT = '.h';
    HPP_EXT = '.hpp';
    RC_EXT = '.rc';
    RES_EXT = '.res';
    RH_EXT = '.rh';

    // program defaults
    MAKE_PROGRAM = 'mingw32-make.exe';
    GCC_PROGRAM = 'gcc.exe';
    GPP_PROGRAM = 'g++.exe';
    GDB_PROGRAM = 'gdb.exe';
    GDB32_PROGRAM = 'gdb32.exe';
    WINDRES_PROGRAM = 'windres.exe';
    DLLWRAP_PROGRAM = 'dllwrap.exe';
    GPROF_PROGRAM = 'gprof.exe';
    PACKMAN_PROGRAM = 'packman.exe';

    // File dialog filters
	  FLT_TEXTS         = '文本文档 (*.txt)|*.txt';
    FLT_ALLFILES      = '所有文件 (*.*)|*.*|';
    FLT_PROJECTS      = 'Dev-C++ 工程文件 (*.dev)|*.dev';
    FLT_HEADS         = '头文件 (*.h;*.hpp;*.rh;*.hh)|*.h;*.hpp;*.rh;*.hh';
    FLT_CS            = 'C 源代码文件 (*.c)|*.c';
    FLT_CPPS          = 'C++ 源代码文件 (*.cpp;*.cc;*.cxx;*.c++;*.cp)|*.cpp;*.cc;*.cxx;*.c++;*.cp';
    FLT_RES           = '资源文件 (*.rc)|*.rc';
    FLT_HELPS         = '帮助文件 (*.hlp;*.chm;*.col)|*.hlp;*.chm;*.col|HTML 文件 (*.htm;*.html)|*.htm;*.html|Text 文件 (*.doc;*.rtf;*.txt)|*.doc;*.rtf;*.txt|所有文件 (*.*)|*.*';
    FLT_MSVCPROJECTS  = 'Microsoft Visual C++ 工程文件 (*.dsp)|*.dsp';
    FLT_CBPROJECTS    = 'Code::Blocks 工程文件 (*.cbp)|*.cbp';

    // Custom synedit style properties
    cBP = 'Breakpoints';
    cErr = 'Error line';
    cABP = 'Active breakpoints';
    cGut = 'Gutter';
    cSel = 'Selected text';
    cFld = 'Folding lines';

    // GPROF commands and displays
    GPROF_CHECKFILE = 'gmon.out';
    GPROF_CMD_GENFLAT = '-p';
    GPROF_CMD_GENMAP = '-q';

implementation

end.
