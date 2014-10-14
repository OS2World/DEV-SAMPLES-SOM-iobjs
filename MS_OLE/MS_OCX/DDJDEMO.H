// ddjdemo.h : main header file for DDJDEMO.DLL

#if !defined( __AFXCTL_H__ )
	#error include 'afxctl.h' before including this file
#endif

#include "resource.h"		// main symbols

/////////////////////////////////////////////////////////////////////////////
// CDdjdemoApp : See ddjdemo.cpp for implementation.

class CDdjdemoApp : public COleControlModule
{
public:
	BOOL InitInstance();
	int ExitInstance();
};

extern const GUID CDECL _tlid;
extern const WORD _wVerMajor;
extern const WORD _wVerMinor;
