# Microsoft Visual C++ Generated NMAKE File, Format Version 20054
# MSVCPRJ: version 2.00.4215
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

!IF "$(CFG)" == ""
CFG=Win32 Unicode Debug
!MESSAGE No configuration specified.  Defaulting to Win32 Unicode Debug.
!ENDIF 

!IF "$(CFG)" != "Win32 ANSI Release" && "$(CFG)" != "Win32 ANSI Debug" &&\
 "$(CFG)" != "Win32 Unicode Release" && "$(CFG)" != "Win32 Unicode Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "ddjdem32.mak" CFG="Win32 Unicode Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Win32 ANSI Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Win32 ANSI Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Win32 Unicode Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "Win32 Unicode Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

################################################################################
# Begin Project
# PROP Target_Last_Scanned "Win32 ANSI Debug"
MTL=MkTypLib.exe
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Win32 ANSI Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Classwizard_Name "ddjdemo.clw"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obj32"
# PROP Intermediate_Dir "obj32"
# PROP Classwizard_Name "ddjdemo.clw"
OUTDIR=.\obj32
INTDIR=.\obj32

ALL : MTL_TLBS .\obj32\ddjdemo.ocx .\obj32\ddjdemo.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "NDEBUG" /D "_WIN32" /win32
# ADD MTL /nologo /D "NDEBUG" /D "_WIN32" /win32
MTL_PROJ=/nologo /D "NDEBUG" /D "_WIN32" /win32 

MTL_TLBS : .\obj32\ddjdemo.tlb
# ADD BASE CPP /nologo /MD /W3 /GX /YX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /c
# ADD CPP /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"stdafx.h" /Fo$(INTDIR)/ /c 
CPP_OBJS=.\obj32/
# ADD BASE RSC /l 0x409 /i "obj32" /d "NDEBUG" /d "_WIN32"
# ADD RSC /l 0x409 /i "obj32" /d "NDEBUG" /d "_WIN32"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "obj32" /d "NDEBUG" /d "_WIN32"\
 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"obj32/ddjdemo.bsc"
# SUBTRACT BASE BSC32 /Iu
# ADD BSC32 /nologo /o"obj32/ddjdemo.bsc"
# SUBTRACT BSC32 /Iu
BSC32_FLAGS=/nologo /o"obj32/ddjdemo.bsc" 
BSC32_SBRS= \
	.\obj32\stdafx.sbr \
	.\obj32\ddjdemo.sbr \
	.\obj32\ddjdectl.sbr \
	.\obj32\ddjdeppg.sbr \
	.\obj32\phonedir.sbr

.\obj32\ddjdemo.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 ocs30.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"obj32/ddjdemo.pdb" /MACHINE:IX86 /OUT:"obj32/ddjdemo.ocx"
# SUBTRACT BASE LINK32 /PDB:none /NODEFAULTLIB
# ADD LINK32 ocs30.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"obj32/ddjdemo.pdb" /MACHINE:IX86 /OUT:"obj32/ddjdemo.ocx"
# SUBTRACT LINK32 /PDB:none /NODEFAULTLIB
LINK32_FLAGS=ocs30.lib /NOLOGO /SUBSYSTEM:windows /DLL /INCREMENTAL:no\
 /PDB:"obj32/ddjdemo.pdb" /MACHINE:IX86 /DEF:".\ddjdem32.def"\
 /OUT:"obj32/ddjdemo.ocx" /IMPLIB:$(OUTDIR)/"ddjdem32.lib" 
DEF_FILE=.\ddjdem32.def
LINK32_OBJS= \
	.\obj32\stdafx.obj \
	.\obj32\ddjdemo.obj \
	.\obj32\ddjdectl.obj \
	.\obj32\ddjdeppg.obj \
	.\obj32\ddjdemo.res \
	.\obj32\phonedir.obj

.\obj32\ddjdemo.ocx : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Classwizard_Name "ddjdemo.clw"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "objd32"
# PROP Intermediate_Dir "objd32"
# PROP Classwizard_Name "ddjdemo.clw"
OUTDIR=.\objd32
INTDIR=.\objd32

ALL : MTL_TLBS .\objd32\ddjdemo.ocx .\objd32\ddjdemo.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "_DEBUG" /D "_WIN32" /win32
# ADD MTL /nologo /D "_DEBUG" /D "_WIN32" /win32
MTL_PROJ=/nologo /D "_DEBUG" /D "_WIN32" /win32 

MTL_TLBS : .\objd32\ddjdemo.tlb
# ADD BASE CPP /nologo /MD /W3 /GX /Zi /YX /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /c
# ADD CPP /nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"stdafx.h" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c 
CPP_OBJS=.\objd32/
# ADD BASE RSC /l 0x409 /i "objd32" /d "_DEBUG" /d "_WIN32"
# ADD RSC /l 0x409 /i "objd32" /d "_DEBUG" /d "_WIN32"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "objd32" /d "_DEBUG" /d\
 "_WIN32" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"objd32/ddjdemo.bsc"
# SUBTRACT BASE BSC32 /Iu
# ADD BSC32 /nologo /o"objd32/ddjdemo.bsc"
# SUBTRACT BSC32 /Iu
BSC32_FLAGS=/nologo /o"objd32/ddjdemo.bsc" 
BSC32_SBRS= \
	.\objd32\stdafx.sbr \
	.\objd32\ddjdemo.sbr \
	.\objd32\ddjdectl.sbr \
	.\objd32\ddjdeppg.sbr \
	.\objd32\phonedir.sbr

.\objd32\ddjdemo.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 ocs30d.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"objd32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /OUT:"objd32/ddjdemo.ocx"
# SUBTRACT BASE LINK32 /PDB:none /NODEFAULTLIB
# ADD LINK32 ocs30d.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"objd32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /OUT:"objd32/ddjdemo.ocx"
# SUBTRACT LINK32 /PDB:none /NODEFAULTLIB
LINK32_FLAGS=ocs30d.lib /NOLOGO /SUBSYSTEM:windows /DLL /INCREMENTAL:yes\
 /PDB:"objd32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /DEF:".\ddjdem32.def"\
 /OUT:"objd32/ddjdemo.ocx" /IMPLIB:$(OUTDIR)/"ddjdem32.lib" 
DEF_FILE=.\ddjdem32.def
LINK32_OBJS= \
	.\objd32\stdafx.obj \
	.\objd32\ddjdemo.obj \
	.\objd32\ddjdectl.obj \
	.\objd32\ddjdeppg.obj \
	.\objd32\ddjdemo.res \
	.\objd32\phonedir.obj

.\objd32\ddjdemo.ocx : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Classwizard_Name "ddjdemo.clw"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "obju32"
# PROP Intermediate_Dir "obju32"
# PROP Classwizard_Name "ddjdemo.clw"
OUTDIR=.\obju32
INTDIR=.\obju32

ALL : MTL_TLBS .\obju32\ddjdemo.ocx .\obju32\ddjdemo.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "NDEBUG" /D "_UNICODE" /D "_WIN32" /win32
# ADD MTL /nologo /D "NDEBUG" /D "_UNICODE" /D "_WIN32" /win32
MTL_PROJ=/nologo /D "NDEBUG" /D "_UNICODE" /D "_WIN32" /win32 

MTL_TLBS : .\obju32\ddjdemo.tlb
# ADD BASE CPP /nologo /MD /W3 /GX /YX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /c
# ADD CPP /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"stdafx.h" /Fo$(INTDIR)/ /c 
CPP_OBJS=.\obju32/
# ADD BASE RSC /l 0x409 /i "obju32" /d "NDEBUG" /d "_WIN32" /d "_UNICODE"
# ADD RSC /l 0x409 /i "obju32" /d "NDEBUG" /d "_WIN32" /d "_UNICODE"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "obju32" /d "NDEBUG" /d\
 "_WIN32" /d "_UNICODE" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"obju32/ddjdemo.bsc"
# SUBTRACT BASE BSC32 /Iu
# ADD BSC32 /nologo /o"obju32/ddjdemo.bsc"
# SUBTRACT BSC32 /Iu
BSC32_FLAGS=/nologo /o"obju32/ddjdemo.bsc" 
BSC32_SBRS= \
	.\obju32\stdafx.sbr \
	.\obju32\ddjdemo.sbr \
	.\obju32\ddjdectl.sbr \
	.\obju32\ddjdeppg.sbr \
	.\obju32\phonedir.sbr

.\obju32\ddjdemo.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 ocs30u.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"obju32/ddjdemo.pdb" /MACHINE:IX86 /OUT:"obju32/ddjdemo.ocx"
# SUBTRACT BASE LINK32 /PDB:none /NODEFAULTLIB
# ADD LINK32 ocs30u.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"obju32/ddjdemo.pdb" /MACHINE:IX86 /OUT:"obju32/ddjdemo.ocx"
# SUBTRACT LINK32 /PDB:none /NODEFAULTLIB
LINK32_FLAGS=ocs30u.lib /NOLOGO /SUBSYSTEM:windows /DLL /INCREMENTAL:no\
 /PDB:"obju32/ddjdemo.pdb" /MACHINE:IX86 /DEF:".\ddjdem32.def"\
 /OUT:"obju32/ddjdemo.ocx" /IMPLIB:$(OUTDIR)/"ddjdem32.lib" 
DEF_FILE=.\ddjdem32.def
LINK32_OBJS= \
	.\obju32\stdafx.obj \
	.\obju32\ddjdemo.obj \
	.\obju32\ddjdectl.obj \
	.\obju32\ddjdeppg.obj \
	.\obju32\ddjdemo.res \
	.\obju32\phonedir.obj

.\obju32\ddjdemo.ocx : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

# PROP BASE Use_MFC 2
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Classwizard_Name "ddjdemo.clw"
# PROP Use_MFC 2
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "objdu32"
# PROP Intermediate_Dir "objdu32"
# PROP Classwizard_Name "ddjdemo.clw"
OUTDIR=.\objdu32
INTDIR=.\objdu32

ALL : MTL_TLBS .\objdu32\ddjdemo.ocx .\objdu32\ddjdemo.bsc

$(OUTDIR) : 
    if not exist $(OUTDIR)/nul mkdir $(OUTDIR)

# ADD BASE MTL /nologo /D "_DEBUG" /D "_UNICODE" /D "_WIN32" /win32
# ADD MTL /nologo /D "_DEBUG" /D "_UNICODE" /D "_WIN32" /win32
MTL_PROJ=/nologo /D "_DEBUG" /D "_UNICODE" /D "_WIN32" /win32 

MTL_TLBS : .\objdu32\ddjdemo.tlb
# ADD BASE CPP /nologo /MD /W3 /GX /Zi /YX /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /c
# SUBTRACT BASE CPP /WX
# ADD CPP /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS" /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR /Yu"stdafx.h" /c
# SUBTRACT CPP /WX
CPP_PROJ=/nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"stdafx.h" /Fo$(INTDIR)/ /Fd$(OUTDIR)/"ddjdem32.pdb" /c 
CPP_OBJS=.\objdu32/
# ADD BASE RSC /l 0x409 /i "objdu32" /d "_DEBUG" /d "_WIN32" /d "_UNICODE"
# ADD RSC /l 0x409 /i "objdu32" /d "_DEBUG" /d "_WIN32" /d "_UNICODE"
RSC_PROJ=/l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "objdu32" /d "_DEBUG" /d\
 "_WIN32" /d "_UNICODE" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo /o"objdu32/ddjdemo.bsc"
# SUBTRACT BASE BSC32 /Iu
# ADD BSC32 /nologo /o"objdu32/ddjdemo.bsc"
# SUBTRACT BSC32 /Iu
BSC32_FLAGS=/nologo /o"objdu32/ddjdemo.bsc" 
BSC32_SBRS= \
	.\objdu32\stdafx.sbr \
	.\objdu32\ddjdemo.sbr \
	.\objdu32\ddjdectl.sbr \
	.\objdu32\ddjdeppg.sbr \
	.\objdu32\phonedir.sbr

.\objdu32\ddjdemo.bsc : $(OUTDIR)  $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 ocs30ud.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"objdu32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /OUT:"objdu32/ddjdemo.ocx"
# SUBTRACT BASE LINK32 /PDB:none /NODEFAULTLIB
# ADD LINK32 ocs30ud.lib /NOLOGO /SUBSYSTEM:windows /DLL /PDB:"objdu32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /OUT:"objdu32/ddjdemo.ocx"
# SUBTRACT LINK32 /PDB:none /NODEFAULTLIB
LINK32_FLAGS=ocs30ud.lib /NOLOGO /SUBSYSTEM:windows /DLL /INCREMENTAL:yes\
 /PDB:"objdu32/ddjdemo.pdb" /DEBUG /MACHINE:IX86 /DEF:".\ddjdem32.def"\
 /OUT:"objdu32/ddjdemo.ocx" /IMPLIB:$(OUTDIR)/"ddjdem32.lib" 
DEF_FILE=.\ddjdem32.def
LINK32_OBJS= \
	.\objdu32\stdafx.obj \
	.\objdu32\ddjdemo.obj \
	.\objdu32\ddjdectl.obj \
	.\objdu32\ddjdeppg.obj \
	.\objdu32\ddjdemo.res \
	.\objdu32\phonedir.obj

.\objdu32\ddjdemo.ocx : $(OUTDIR)  $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Group "Source Files"

################################################################################
# Begin Source File

SOURCE=.\stdafx.cpp
DEP_STDAF=\
	.\stdafx.h

!IF  "$(CFG)" == "Win32 ANSI Release"

# ADD BASE CPP /Yc"STDAFX.H"
# ADD CPP /Yc"STDAFX.H"

.\obj32\stdafx.obj :  $(SOURCE)  $(DEP_STDAF) $(INTDIR)
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yc"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

# ADD BASE CPP /Yc"STDAFX.H"
# ADD CPP /Yc"STDAFX.H"

.\objd32\stdafx.obj :  $(SOURCE)  $(DEP_STDAF) $(INTDIR)
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yc"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

# ADD BASE CPP /Yc"STDAFX.H"
# ADD CPP /Yc"STDAFX.H"

.\obju32\stdafx.obj :  $(SOURCE)  $(DEP_STDAF) $(INTDIR)
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yc"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

# ADD BASE CPP /Yc"STDAFX.H"
# ADD CPP /Yc"STDAFX.H"

.\objdu32\stdafx.obj :  $(SOURCE)  $(DEP_STDAF) $(INTDIR)
   $(CPP) /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yc"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdemo.cpp
DEP_DDJDE=\
	.\stdafx.h\
	.\ddjdemo.h

!IF  "$(CFG)" == "Win32 ANSI Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obj32\ddjdemo.obj :  $(SOURCE)  $(DEP_DDJDE) $(INTDIR) .\obj32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objd32\ddjdemo.obj :  $(SOURCE)  $(DEP_DDJDE) $(INTDIR) .\objd32\stdafx.obj
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obju32\ddjdemo.obj :  $(SOURCE)  $(DEP_DDJDE) $(INTDIR) .\obju32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objdu32\ddjdemo.obj :  $(SOURCE)  $(DEP_DDJDE) $(INTDIR) .\objdu32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdectl.cpp
DEP_DDJDEC=\
	.\stdafx.h\
	.\ddjdemo.h\
	.\ddjdectl.h\
	.\ddjdeppg.h\
	.\phonedir.h

!IF  "$(CFG)" == "Win32 ANSI Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obj32\ddjdectl.obj :  $(SOURCE)  $(DEP_DDJDEC) $(INTDIR) .\obj32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objd32\ddjdectl.obj :  $(SOURCE)  $(DEP_DDJDEC) $(INTDIR) .\objd32\stdafx.obj
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obju32\ddjdectl.obj :  $(SOURCE)  $(DEP_DDJDEC) $(INTDIR) .\obju32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objdu32\ddjdectl.obj :  $(SOURCE)  $(DEP_DDJDEC) $(INTDIR)\
 .\objdu32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdeppg.cpp
DEP_DDJDEP=\
	.\stdafx.h\
	.\ddjdemo.h\
	.\ddjdeppg.h

!IF  "$(CFG)" == "Win32 ANSI Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obj32\ddjdeppg.obj :  $(SOURCE)  $(DEP_DDJDEP) $(INTDIR) .\obj32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_MBCS" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objd32\ddjdeppg.obj :  $(SOURCE)  $(DEP_DDJDEP) $(INTDIR) .\objd32\stdafx.obj
   $(CPP) /nologo /MD /W3 /WX /GX /Zi /Od /D "_DEBUG" /D "_MBCS" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\obju32\ddjdeppg.obj :  $(SOURCE)  $(DEP_DDJDEP) $(INTDIR) .\obju32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Ox /D "NDEBUG" /D "_UNICODE" /D "_WINDOWS" /D\
 "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/ /Fp$(OUTDIR)/"ddjdem32.pch"\
 /Yu"STDAFX.H" /Fo$(INTDIR)/ /c  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

# ADD BASE CPP /Yu"STDAFX.H"
# ADD CPP /Yu"STDAFX.H"

.\objdu32\ddjdeppg.obj :  $(SOURCE)  $(DEP_DDJDEP) $(INTDIR)\
 .\objdu32\stdafx.obj
   $(CPP) /nologo /MD /W3 /GX /Zi /Od /D "_DEBUG" /D "_UNICODE" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_AFXCTL" /D "_WINDLL" /FR$(INTDIR)/\
 /Fp$(OUTDIR)/"ddjdem32.pch" /Yu"STDAFX.H" /Fo$(INTDIR)/\
 /Fd$(OUTDIR)/"ddjdem32.pdb" /c  $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdem32.def
# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdemo.rc
DEP_DDJDEM=\
	.\objd32\ddjdemo.tlb\
	.\aboutdll.ico\
	.\ddjdemo1.bmp\
	.\ddjdemo.rc2

!IF  "$(CFG)" == "Win32 ANSI Release"

.\obj32\ddjdemo.res :  $(SOURCE)  $(DEP_DDJDEM) $(INTDIR)
   $(RSC) /l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "obj32" /i "$(OUTDIR)" /d\
 "NDEBUG" /d "_WIN32"  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

.\objd32\ddjdemo.res :  $(SOURCE)  $(DEP_DDJDEM) $(INTDIR)
   $(RSC) /l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "objd32" /i "$(OUTDIR)" /d\
 "_DEBUG" /d "_WIN32"  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

.\obju32\ddjdemo.res :  $(SOURCE)  $(DEP_DDJDEM) $(INTDIR)
   $(RSC) /l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "obju32" /i "$(OUTDIR)" /d\
 "NDEBUG" /d "_WIN32" /d "_UNICODE"  $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

.\objdu32\ddjdemo.res :  $(SOURCE)  $(DEP_DDJDEM) $(INTDIR)
   $(RSC) /l 0x409 /fo$(INTDIR)/"ddjdemo.res" /i "objdu32" /i "$(OUTDIR)" /d\
 "_DEBUG" /d "_WIN32" /d "_UNICODE"  $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ddjdemo.odl

!IF  "$(CFG)" == "Win32 ANSI Release"

.\obj32\ddjdemo.tlb :  $(SOURCE)  $(OUTDIR)
   $(MTL) /nologo /D "NDEBUG" /D "_WIN32" /tlb $(OUTDIR)/"ddjdemo.tlb" /win32\
   $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

.\objd32\ddjdemo.tlb :  $(SOURCE)  $(OUTDIR)
   $(MTL) /nologo /D "_DEBUG" /D "_WIN32" /tlb $(OUTDIR)/"ddjdemo.tlb" /win32\
   $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

.\obju32\ddjdemo.tlb :  $(SOURCE)  $(OUTDIR)
   $(MTL) /nologo /D "NDEBUG" /D "_UNICODE" /D "_WIN32" /tlb\
 $(OUTDIR)/"ddjdemo.tlb" /win32   $(SOURCE) 

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

.\objdu32\ddjdemo.tlb :  $(SOURCE)  $(OUTDIR)
   $(MTL) /nologo /D "_DEBUG" /D "_UNICODE" /D "_WIN32" /tlb\
 $(OUTDIR)/"ddjdemo.tlb" /win32   $(SOURCE) 

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\phonedir.cpp
DEP_PHONE=\
	.\stdafx.h\
	.\phonedir.h

!IF  "$(CFG)" == "Win32 ANSI Release"

.\obj32\phonedir.obj :  $(SOURCE)  $(DEP_PHONE) $(INTDIR) .\obj32\stdafx.obj

!ELSEIF  "$(CFG)" == "Win32 ANSI Debug"

.\objd32\phonedir.obj :  $(SOURCE)  $(DEP_PHONE) $(INTDIR) .\objd32\stdafx.obj

!ELSEIF  "$(CFG)" == "Win32 Unicode Release"

.\obju32\phonedir.obj :  $(SOURCE)  $(DEP_PHONE) $(INTDIR) .\obju32\stdafx.obj

!ELSEIF  "$(CFG)" == "Win32 Unicode Debug"

.\objdu32\phonedir.obj :  $(SOURCE)  $(DEP_PHONE) $(INTDIR)\
 .\objdu32\stdafx.obj

!ENDIF 

# End Source File
# End Group
# End Project
################################################################################
