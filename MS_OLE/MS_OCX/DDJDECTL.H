// ddjdectl.h : Declaration of the CDdjdemoCtrl OLE control class.

/////////////////////////////////////////////////////////////////////////////
// CDdjdemoCtrl : See ddjdectl.cpp for implementation.

class CDdjdemoCtrl : public COleControl
{
	DECLARE_DYNCREATE(CDdjdemoCtrl)

// Constructor
public:
	CDdjdemoCtrl();

// Overrides

	// Drawing function
	virtual void OnDraw(
				CDC* pdc, const CRect& rcBounds, const CRect& rcInvalid);
#ifndef _WIN32
	virtual void OnDrawMetafile(CDC* pdc, const CRect& rcBounds);
#endif

	// Persistence
	virtual void DoPropExchange(CPropExchange* pPX);

	// Reset control state
	virtual void OnResetState();

// Implementation
protected:
	~CDdjdemoCtrl();

	DECLARE_OLECREATE_EX(CDdjdemoCtrl)	// Class factory and guid
	DECLARE_OLETYPELIB(CDdjdemoCtrl)		// GetTypeInfo
	DECLARE_PROPPAGEIDS(CDdjdemoCtrl)		// Property page IDs
	DECLARE_OLECTLTYPE(CDdjdemoCtrl)		// Type name and misc status

	// Subclassed control support
	BOOL PreCreateWindow(CREATESTRUCT& cs);
	WNDPROC* GetSuperWndProcAddr(void);
	LRESULT OnOcmCommand(WPARAM wParam, LPARAM lParam);

// Message maps
	//{{AFX_MSG(CDdjdemoCtrl)
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	//}}AFX_MSG
	DECLARE_MESSAGE_MAP()

// Dispatch maps
	//{{AFX_DISPATCH(CDdjdemoCtrl)
	afx_msg BSTR GetCurrentName();
	afx_msg BSTR GetCurrentNumber();
	afx_msg BSTR GetNameFromNumber(LPCTSTR szNumber);
	afx_msg BSTR GetNumberFromName(LPCTSTR szName);
	//}}AFX_DISPATCH
	DECLARE_DISPATCH_MAP()

	afx_msg void AboutBox();

// Event maps
	//{{AFX_EVENT(CDdjdemoCtrl)
	void FireNameNumberChanged(LPCTSTR szName, LPCTSTR szNumber)
		{FireEvent(eventidNameNumberChanged,EVENT_PARAM(VTS_BSTR  VTS_BSTR), szName, szNumber);}
	//}}AFX_EVENT
	DECLARE_EVENT_MAP()

// Dispatch and event IDs
public:
	enum {
	//{{AFX_DISP_ID(CDdjdemoCtrl)
	dispidCurrentName = 1L,
	dispidCurrentNumber = 2L,
	dispidGetNameFromNumber = 3L,
	dispidGetNumberFromName = 4L,
	eventidNameNumberChanged = 1L,
	//}}AFX_DISP_ID
	};
};
