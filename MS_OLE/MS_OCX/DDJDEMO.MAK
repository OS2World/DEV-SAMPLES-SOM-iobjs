# Microsoft Visual C++ generated build script - Do not modify

PROJ = DDJDEMO
DEBUG = 1
PROGTYPE = 1
CALLER = 
ARGS = 
DLLS = 
D_RCDEFINES = -d_DEBUG
R_RCDEFINES = -dNDEBUG
ORIGIN = MSVC
ORIGIN_VER = 1.00
PROJPATH = C:\RAY\DDJ\
USEMFC = 0
CC = cl
CPP = cl
CXX = cl
CCREATEPCHFLAG = 
CPPCREATEPCHFLAG = /YcSTDAFX.H
CUSEPCHFLAG = 
CPPUSEPCHFLAG = /YuSTDAFX.H
FIRSTC =             
FIRSTCPP = STDAFX.CPP  
RC = rc
CFLAGS_D_WDLL = /nologo /G2 /Zp1 /W3 /WX /Zi /AL /Od /D "_DEBUG" /D "_AFXDLL" /D "_WINDLL" /D "_AFXCTL" /FR /GD /Fd"DDJDEMO.PDB" /GEf
CFLAGS_R_WDLL = /nologo /Gs /G2 /Zp1 /W3 /AL /Ox /D "NDEBUG" /D "_AFXDLL" /D "_WINDLL" /D "_AFXCTL" /FR /GD /GEf
LFLAGS_D_WDLL = /NOLOGO /ONERROR:NOEXE /NOD /NOE /PACKC:61440 /CO /ALIGN:16
LFLAGS_R_WDLL = /NOLOGO /ONERROR:NOEXE /NOD /NOE /PACKC:61440 /ALIGN:16
LIBS_D_WDLL = ocs25d oc25d libw ldllcew compobj storage ole2 ole2disp typelib oldnames commdlg.lib shell.lib 
LIBS_R_WDLL = ocs25 oc25 libw ldllcew compobj storage ole2 ole2disp typelib oldnames commdlg.lib shell.lib 
RCFLAGS = /nologo /i tlb16
RESFLAGS = /nologo
RUNFLAGS = 
DEFFILE = DDJDEMO.DEF
OBJS_EXT = 
LIBS_EXT = 
!if "$(DEBUG)" == "1"
CFLAGS = $(CFLAGS_D_WDLL)
LFLAGS = $(LFLAGS_D_WDLL)
LIBS = $(LIBS_D_WDLL)
MAPFILE = nul
RCDEFINES = $(D_RCDEFINES)
!else
CFLAGS = $(CFLAGS_R_WDLL)
LFLAGS = $(LFLAGS_R_WDLL)
LIBS = $(LIBS_R_WDLL)
MAPFILE = nul
RCDEFINES = $(R_RCDEFINES)
!endif
!if [if exist MSVC.BND del MSVC.BND]
!endif
SBRS = STDAFX.SBR \
		DDJDEMO.SBR \
		DDJDECTL.SBR \
		DDJDEPPG.SBR \
		PHONEDIR.SBR


DDJDEMO_RCDEP = c:\ray\ddj\aboutdll.ico \
	c:\ray\ddj\ddjdemo1.bmp \
	c:\ray\ddj\ddjdemo.rc2 \
	.\tlb16\ddjdemo.tlb


STDAFX_DEP = c:\ray\ddj\stdafx.h \
	c:\msvc\cdk16\include\afxctl.h \
	c:\msvc\cdk16\include\olectl.h \
	c:\msvc\cdk16\include\olectlid.h \
	c:\msvc\cdk16\include\afxctl.inl


DDJDEMO_DEP = c:\ray\ddj\stdafx.h \
	c:\msvc\cdk16\include\afxctl.h \
	c:\msvc\cdk16\include\olectl.h \
	c:\msvc\cdk16\include\olectlid.h \
	c:\msvc\cdk16\include\afxctl.inl \
	c:\ray\ddj\ddjdemo.h


DDJDECTL_DEP = c:\ray\ddj\stdafx.h \
	c:\msvc\cdk16\include\afxctl.h \
	c:\msvc\cdk16\include\olectl.h \
	c:\msvc\cdk16\include\olectlid.h \
	c:\msvc\cdk16\include\afxctl.inl \
	c:\ray\ddj\ddjdemo.h \
	c:\ray\ddj\ddjdectl.h \
	c:\ray\ddj\ddjdeppg.h \
	c:\ray\ddj\phonedir.h


DDJDEPPG_DEP = c:\ray\ddj\stdafx.h \
	c:\msvc\cdk16\include\afxctl.h \
	c:\msvc\cdk16\include\olectl.h \
	c:\msvc\cdk16\include\olectlid.h \
	c:\msvc\cdk16\include\afxctl.inl \
	c:\ray\ddj\ddjdemo.h \
	c:\ray\ddj\ddjdeppg.h


PHONEDIR_DEP = c:\ray\ddj\stdafx.h \
	c:\msvc\cdk16\include\afxctl.h \
	c:\msvc\cdk16\include\olectl.h \
	c:\msvc\cdk16\include\olectlid.h \
	c:\msvc\cdk16\include\afxctl.inl \
	c:\ray\ddj\phonedir.h


all:	$(PROJ).DLL $(PROJ).BSC

DDJDEMO.RES:	DDJDEMO.RC $(DDJDEMO_RCDEP)
	$(RC) $(RCFLAGS) $(RCDEFINES) -r DDJDEMO.RC

STDAFX.OBJ:	STDAFX.CPP $(STDAFX_DEP)
	$(CPP) $(CFLAGS) $(CPPCREATEPCHFLAG) /c STDAFX.CPP

DDJDEMO.OBJ:	DDJDEMO.CPP $(DDJDEMO_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c DDJDEMO.CPP

DDJDECTL.OBJ:	DDJDECTL.CPP $(DDJDECTL_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c DDJDECTL.CPP

DDJDEPPG.OBJ:	DDJDEPPG.CPP $(DDJDEPPG_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c DDJDEPPG.CPP

PHONEDIR.OBJ:	PHONEDIR.CPP $(PHONEDIR_DEP)
	$(CPP) $(CFLAGS) $(CPPUSEPCHFLAG) /c PHONEDIR.CPP


$(PROJ).DLL::	DDJDEMO.RES

$(PROJ).DLL::	STDAFX.OBJ DDJDEMO.OBJ DDJDECTL.OBJ DDJDEPPG.OBJ PHONEDIR.OBJ $(OBJS_EXT) $(DEFFILE)
	echo >NUL @<<$(PROJ).CRF
STDAFX.OBJ +
DDJDEMO.OBJ +
DDJDECTL.OBJ +
DDJDEPPG.OBJ +
PHONEDIR.OBJ +
$(OBJS_EXT)
$(PROJ).DLL
$(MAPFILE)
C:\MSVC\CDK16\LIB\+
c:\msvc\lib\+
c:\msvc\mfc\lib\+
$(LIBS)
$(DEFFILE);
<<
	link $(LFLAGS) @$(PROJ).CRF
	$(RC) $(RESFLAGS) DDJDEMO.RES $@
	@copy $(PROJ).CRF MSVC.BND
	implib /nowep $(PROJ).LIB $(PROJ).DLL

$(PROJ).DLL::	DDJDEMO.RES
	if not exist MSVC.BND 	$(RC) $(RESFLAGS) DDJDEMO.RES $@

run: $(PROJ).DLL
	$(PROJ) $(RUNFLAGS)


$(PROJ).BSC: $(SBRS)
	bscmake @<<
/o$@ $(SBRS)
<<
