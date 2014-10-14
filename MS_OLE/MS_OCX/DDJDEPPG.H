// ddjdeppg.h : Declaration of the CDdjdemoPropPage property page class.

////////////////////////////////////////////////////////////////////////////
// CDdjdemoPropPage : See ddjdeppg.cpp for implementation.

class CDdjdemoPropPage : public COlePropertyPage
{
	DECLARE_DYNCREATE(CDdjdemoPropPage)
	DECLARE_OLECREATE_EX(CDdjdemoPropPage)

// Constructor
public:
	CDdjdemoPropPage();

// Dialog Data
	//{{AFX_DATA(CDdjdemoPropPage)
	enum { IDD = IDD_PROPPAGE_DDJDEMO };
	CString	m_currentNumber;
	CString	m_currentName;
	//}}AFX_DATA
	
// Implementation
protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV support

// Message maps
protected:
	//{{AFX_MSG(CDdjdemoPropPage)
		// NOTE - ClassWizard will add and remove member functions here.
		//    DO NOT EDIT what you see in these blocks of generated code !
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

};

