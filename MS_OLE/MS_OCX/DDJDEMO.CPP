// ddjdemo.cpp : Implementation of CDdjdemoApp and DLL registration.

#include "stdafx.h"
#include "ddjdemo.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif


CDdjdemoApp NEAR theApp;

const GUID CDECL BASED_CODE _tlid =
		{ 0xaf3b752c, 0x89d0, 0x101b, { 0xa6, 0xe4, 0x0, 0xdd, 0x1, 0x11, 0xa6, 0x58 } };
const WORD _wVerMajor = 1;
const WORD _wVerMinor = 0;


////////////////////////////////////////////////////////////////////////////
// CDdjdemoApp::InitInstance - DLL initialization

BOOL CDdjdemoApp::InitInstance()
{
	BOOL bInit = COleControlModule::InitInstance();
	
	if (bInit)
	{
		// TODO: Add your own module initialization code here.
	}

	return bInit;
}


////////////////////////////////////////////////////////////////////////////
// CDdjdemoApp::ExitInstance - DLL termination

int CDdjdemoApp::ExitInstance()
{
	// TODO: Add your own module termination code here.
	
	return COleControlModule::ExitInstance();
}


/////////////////////////////////////////////////////////////////////////////
// DllRegisterServer - Adds entries to the system registry

STDAPI DllRegisterServer(void)
{
	AFX_MANAGE_STATE(_afxModuleAddrThis);

	if (!AfxOleRegisterTypeLib(AfxGetInstanceHandle(), _tlid))
		return ResultFromScode(SELFREG_E_TYPELIB);

	if (!COleObjectFactoryEx::UpdateRegistryAll(TRUE))
		return ResultFromScode(SELFREG_E_CLASS);

	return NOERROR;
}


/////////////////////////////////////////////////////////////////////////////
// DllUnregisterServer - Removes entries from the system registry

STDAPI DllUnregisterServer(void)
{
	AFX_MANAGE_STATE(_afxModuleAddrThis);

	if (!AfxOleUnregisterTypeLib(_tlid))
		return ResultFromScode(SELFREG_E_TYPELIB);

	if (!COleObjectFactoryEx::UpdateRegistryAll(FALSE))
		return ResultFromScode(SELFREG_E_CLASS);

	return NOERROR;
}
