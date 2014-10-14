/****************************************************************
 > PHONEDIR.H -- This is the header file for PHONEDIR,
 >               the one-minute phone directory database.
 >               6/30/94. Ray Valdes.
 >***************************************************************/

// Modified 7/22/94, Steve Ross (Microsoft Corp.)

/*****************This is the PhoneDir API***********************/

BOOL  phonedir_Initialize	   (void);
LPSTR phonedir_LookupByName      (LPSTR name);
LPSTR phonedir_LookupByNumber    (LPSTR number);
void  phonedir_Terminate         (void);

// Added 7/22/94, Steve Ross (Microsoft Corp.)
CString phonedir_LookupByOrdinal(UINT nIndex);

/*******************End of PHONEDIR.H****************************/
