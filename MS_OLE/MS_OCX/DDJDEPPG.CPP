// ddjdeppg.cpp : Implementation of the CDdjdemoPropPage property page class.

#include "stdafx.h"
#include "ddjdemo.h"
#include "ddjdeppg.h"

#ifdef _DEBUG
#undef THIS_FILE
static char BASED_CODE THIS_FILE[] = __FILE__;
#endif


IMPLEMENT_DYNCREATE(CDdjdemoPropPage, COlePropertyPage)


/////////////////////////////////////////////////////////////////////////////
// Message map

BEGIN_MESSAGE_MAP(CDdjdemoPropPage, COlePropertyPage)
	//{{AFX_MSG_MAP(CDdjdemoPropPage)
	// NOTE - ClassWizard will add and remove message map entries
	//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()


/////////////////////////////////////////////////////////////////////////////
// Initialize class factory and guid

IMPLEMENT_OLECREATE_EX(CDdjdemoPropPage, "DDJDEMO.DdjdemoPropPage.1",
	0xaf3b752d, 0x89d0, 0x101b, 0xa6, 0xe4, 0x0, 0xdd, 0x1, 0x11, 0xa6, 0x58)


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoPropPage::CDdjdemoPropPageFactory::UpdateRegistry -
// Adds or removes system registry entries for CDdjdemoPropPage

BOOL CDdjdemoPropPage::CDdjdemoPropPageFactory::UpdateRegistry(BOOL bRegister)
{
	if (bRegister)
		return AfxOleRegisterPropertyPageClass(AfxGetInstanceHandle(),
			m_clsid, IDS_DDJDEMO_PPG);
	else
		return AfxOleUnregisterClass(m_clsid, NULL);
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoPropPage::CDdjdemoPropPage - Constructor

CDdjdemoPropPage::CDdjdemoPropPage() :
	COlePropertyPage(IDD, IDS_DDJDEMO_PPG_CAPTION)
{
	//{{AFX_DATA_INIT(CDdjdemoPropPage)
	m_currentNumber = _T("");
	m_currentName = _T("");
	//}}AFX_DATA_INIT
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoPropPage::DoDataExchange - Moves data between page and properties

void CDdjdemoPropPage::DoDataExchange(CDataExchange* pDX)
{
	//{{AFX_DATA_MAP(CDdjdemoPropPage)
	DDP_Text(pDX, IDC_EDIT2, m_currentNumber, _T("CurrentNumber") );
	DDX_Text(pDX, IDC_EDIT2, m_currentNumber);
	DDP_Text(pDX, IDC_EDIT1, m_currentName, _T("CurrentName") );
	DDX_Text(pDX, IDC_EDIT1, m_currentName);
	//}}AFX_DATA_MAP
	DDP_PostProcessing(pDX);
}


/////////////////////////////////////////////////////////////////////////////
// CDdjdemoPropPage message handlers
