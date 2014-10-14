// ddjdectl.cpp : Implementation of the CDdjdemoCtrl OLE control class.

#include "stdafx.h"
#include "ddjdemo.h"
#include "ddjdectl.h"
#include "ddjdeppg.h"

// Include API to "one-minute phone directory by Ray Valdes
#include "phonedir.h"


#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif


IMPLEMENT_DYNCREATE(CDdjdemoCtrl, COleControl)


/////////////////////////////////////////////////////////////////////////////
// Message map

BEGIN_MESSAGE_MAP(CDdjdemoCtrl, COleControl)
	//{{AFX_MSG_MAP(CDdjdemoCtrl)
	ON_OLEVERB(IDS_PROPERTIESVERB, OnProperties)
	ON_MESSAGE(OCM_COMMAND, OnOcmCommand)
	ON_WM_CREATE()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// Dispatch map

BEGIN_DISPATCH_MAP(CDdjdemoCtrl, COleControl)
	//{{AFX_DISPATCH_MAP(CDdjdemoCtrl)
	DISP_PROPERTY_EX(CDdjdemoCtrl, "CurrentName", GetCurrentName, SetNotSupported, VT_BSTR)
	DISP_PROPERTY_EX(CDdjdemoCtrl, "CurrentNumber", GetCurrentNumber, SetNotSupported, VT_BSTR)
	DISP_FUNCTION(CDdjdemoCtrl, "GetNameFromNumber", GetNameFromNumber, VT_BSTR, VTS_BSTR)
	DISP_FUNCTION(CDdjdemoCtrl, "GetNumberFromName", GetNumberFromName, VT_BSTR, VTS_BSTR)
	//}}AFX_DISPATCH_MAP
	DISP_FUNCTION_ID(CDdjdemoCtrl, "AboutBox", DISPID_ABOUTBOX, AboutBox, VT_EMPTY, VTS_NONE)
END_DISPATCH_MAP()


/////////////////////////////////////////////////////////////////////////////
// Event map

BEGIN_EVENT_MAP(CDdjdemoCtrl, COleControl)
	//{{AFX_EVENT_MAP(CDdjdemoCtrl)
	EVENT_CUSTOM("NameNumberChanged", FireNameNumberChanged, VTS_BSTR  VTS_BSTR)
	//}}AFX_EVENT_MAP
END_EVENT_MAP()


/////////////////////////////////////////////////////////////////////////////
// Property pages

// TODO: Add more property pages as needed.  Remember to increase the count!
BEGIN_PROPPAGEIDS(CDdjdemoCtrl, 1)
	PROPPAGEID(CDdjdemoPropPage::guid)
END_PROPPAGEIDS(CDdjdemoCtrl)


/////////////////////////////////////////////////////////////////////////////
// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CDdjdemoCtrl, "DDJDEMO.DdjdemoCtrl.1",
	0xaf3b7529, 0x89d0, 0x101b, 0xa6, 0xe4, 0x0, 0xdd, 0x1, 0x11, 0xa6, 0x58)


/////////////////////////////////////////////////////////////////////////////
// Type library ID and version

IMPLEMENT_OLETYPELIB(CDdjdemoCtrl, _tlid, _wVerMajor, _wVerMinor)


/////////////////////////////////////////////////////////////////////////////
// Interface IDs

const IID BASED_CODE IID_DDdjdemo =
		{ 0xaf3b752a, 0x89d0, 0x101b, { 0xa6, 0xe4, 0x0, 0xdd, 0x1, 0x11, 0xa6, 0x58 } };
const IID BASED_CODE IID_DDdjdemoEvents =
		{ 0xaf3b752b, 0x89d0, 0x101b, { 0xa6, 0xe4, 0x0, 0xdd, 0x1, 0x11, 0xa6, 0x58 } };


/////////////////////////////////////////////////////////////////////////////
// Control type information

static const DWORD BASED_CODE _dwDdjdemoOleMisc =
	OLEMISC_ACTIVATEWHENVISIBLE |
	OLEMISC_SETCLIENTSITEFIRST |
	OLEMISC_INSIDEOUT |
	OLEMISC_CANTLINKINSIDE |
	OLEMISC_RECOMPOSEONRESIZE;

IMPLEMENT_OLECTLTYPE(CDdjdemoCtrl, IDS_DDJDEMO, _dwDdjdemoOleMisc)

/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::CDdjdemoCtrlFactory::UpdateRegistry -
// Adds or removes system registry entries for CDdjdemoCtrl

BOOL CDdjdemoCtrl::CDdjdemoCtrlFactory::UpdateRegistry(BOOL bRegister)
{
	if (bRegister)
		return AfxOleRegisterControlClass(
			AfxGetInstanceHandle(),
			m_clsid,
			m_lpszProgID,
			IDS_DDJDEMO,
			IDB_DDJDEMO,
			TRUE,						//  Insertable
			OLEMISC_ACTIVATEWHENVISIBLE |
			OLEMISC_SETCLIENTSITEFIRST |
			OLEMISC_INSIDEOUT |
			OLEMISC_CANTLINKINSIDE |
			OLEMISC_RECOMPOSEONRESIZE,
			_tlid,
			_wVerMajor,
			_wVerMinor);
	else
		return AfxOleUnregisterClass(m_clsid, m_lpszProgID);
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::CDdjdemoCtrl - Constructor

CDdjdemoCtrl::CDdjdemoCtrl()
{
	// Set sensible initial size for the control
	SetInitialSize(250, 100);
	InitializeIIDs(&IID_DDdjdemo, &IID_DDdjdemoEvents);

	// Call Ray's Initialize function
	phonedir_Initialize();
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::~CDdjdemoCtrl - Destructor

CDdjdemoCtrl::~CDdjdemoCtrl()
{
	// Call Ray's Terminate function
	phonedir_Terminate();
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::OnDraw - Drawing function

void CDdjdemoCtrl::OnDraw(
			CDC* pdc, const CRect& rcBounds, const CRect& rcInvalid)
{
	DoSuperclassPaint(pdc, rcBounds);
}

#ifndef _WIN32
// For Windows 3.1, subclassed controls can't be safely drawn to a metafile. As we don't
// draw to a metafile anyhow, supply a null override for the function. If we had a drawing
// representation, we'd iterate the list box, doing DrawText or TextOut calls for each
// list item.
void CDdjdemoCtrl::OnDrawMetafile(CDC* pdc, const CRect& rcBounds)
{
}
#endif



/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::DoPropExchange - Persistence support

void CDdjdemoCtrl::DoPropExchange(CPropExchange* pPX)
{
	ExchangeVersion(pPX, MAKELONG(_wVerMinor, _wVerMajor));
	COleControl::DoPropExchange(pPX);

	// TODO: Call PX_ functions for each persistent custom property.

}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::OnResetState - Reset control to default state

void CDdjdemoCtrl::OnResetState()
{
	COleControl::OnResetState();  // Resets defaults found in DoPropExchange

	// TODO: Reset any other control state here.
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::AboutBox - Display an "About" box to the user

void CDdjdemoCtrl::AboutBox()
{
	CDialog dlgAbout(IDD_ABOUTBOX_DDJDEMO);
	dlgAbout.DoModal();
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::PreCreateWindow - Modify parameters for CreateWindowEx

BOOL CDdjdemoCtrl::PreCreateWindow(CREATESTRUCT& cs)
{
	// Modify the style bits for the listbox so we 1) can make a tab-separated
	// 2-column list; 2) get notification of listbox events; and 3) can do
	// vertical scrolling.
	cs.style |= LBS_USETABSTOPS | LBS_NOTIFY | WS_VSCROLL;

	cs.lpszClass = _T("LISTBOX");
	return COleControl::PreCreateWindow(cs);
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::GetSuperWndProcAddr - Provide storage for window proc

WNDPROC* CDdjdemoCtrl::GetSuperWndProcAddr(void)
{
	static WNDPROC NEAR pfnSuper;
	return &pfnSuper;
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl::OnOcmCommand - Handle command messages

LRESULT CDdjdemoCtrl::OnOcmCommand(WPARAM wParam, LPARAM lParam)
{
#ifdef _WIN32
	WORD wNotifyCode = HIWORD(wParam);
#else
	WORD wNotifyCode = HIWORD(lParam);
#endif
	
	// This is where the listbox notifications are received. The only
	// one we're interested in is LBN_SELCHANGE. When the selection is
	// changed, we reuse the code for GetCurrentName and GetCurrentNumber
	// to retrieve the correct strings for name and phone number, then
	// call the FireNameNumberChanged event that ClassWizard created.
	switch(wNotifyCode)
	{
	case LBN_SELCHANGE:
		FireNameNumberChanged(GetCurrentName(), GetCurrentNumber());
		break;
	}

	return 0;
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl message handlers

BSTR CDdjdemoCtrl::GetNameFromNumber(LPCTSTR szNumber) 
{
	// Use one-minute phone directory API to retrieve a name
	// given a number
	CString s = phonedir_LookupByNumber((char *)szNumber);

	return s.AllocSysString();
}

BSTR CDdjdemoCtrl::GetNumberFromName(LPCTSTR szName) 
{
	// Use one-minute phone directory API to retrieve a number
	// given a name
	CString s = phonedir_LookupByName((char *)szName);

	return s.AllocSysString();
}

BSTR CDdjdemoCtrl::GetCurrentName() 
{
	UINT nIndex;
	CString s;

	// If there is a selection, then get the corresponding name,
	// otherwise return an empty string.
	if((nIndex=(UINT)SendMessage(LB_GETCURSEL)) != LB_ERR)
		s = phonedir_LookupByOrdinal(nIndex).SpanExcluding("\t");
	else
		s = "";

	return s.AllocSysString();
}

BSTR CDdjdemoCtrl::GetCurrentNumber() 
{
	UINT nIndex;
	CString s;

	// If there is a selection, then get the corresponding number,
	// otherwise return an empty string.
	if((nIndex=(UINT)SendMessage(LB_GETCURSEL)) != LB_ERR)
	{
		s = phonedir_LookupByOrdinal(nIndex);
		s = s.Mid(s.Find("\t") + 1);
	}
	else
		s = "";

	return s.AllocSysString();
}

int CDdjdemoCtrl::OnCreate(LPCREATESTRUCT lpCreateStruct) 
{
	if (COleControl::OnCreate(lpCreateStruct) == -1)
		return -1;
	
	// Access the database using an ordinal lookup to get
	// tab-separated strings. Add the strings to the listbox
	// for initial population of the list.
	CString strTemp;
	for(int i = 0; (strTemp = phonedir_LookupByOrdinal(i)).GetLength() != 0; i++)
		SendMessage(LB_ADDSTRING, 0, (long)(LPCTSTR)strTemp); 
		
	return 0;
}
