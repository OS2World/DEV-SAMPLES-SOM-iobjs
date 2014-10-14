/****************************************************************
 >
 > PHONEDIR.CPP --  the one-minute phone directory database.
 >                                                   6/30/94. Ray Valdes.
 >
 > This is the simplest possible implementation of a phone directory
 > database, not even a "toy" implementation. Everything is static
 > and in memory. The goal is to provide the simplest possible implementation
 > that satisfies the interface, which is as follows.
 >
 > The interface consists of four functions:
 > 1. Initialize     -- called at program startup
 > 2. LookupByName   -- given a name, returns corresponding phone number
 > 3. LookupByNumber -- given a number, returns corresponding name
 > 4. Terminate      -- called at program termination
 >
 > This interface can be satisfied by a procedural implementation
 > as shown below, which can be packaged into a .OBJ module, or a DLL
 > or other procedurally oriented components such as VBXs and OCXs.
 > Alternatively, one could use this as a basis for an object-oriented
 > implementation. The interface would remain basically the same,
 > except for adding constructor and destructor (if you're using C++)
 > and turning the API entrypoints into member functions.
 >***************************************************************/

// Modified 7/22/94, Steve Ross (Microsoft Corp.)

/*
 * There are a few minor dependencies on Microsoft C compiler,
 * such as _fstrcmp() lib function and the _far pascal keywords
 */

#include "stdafx.h"
#include <string.h>
#include "phonedir.h"

/****************************************************************
 > This sets up the database structure, a fixed size array of
 > fixed size records in memory, initialized at startup-time
 > by hard-coded program statements (can this get any simpler?)
 >***************************************************************/

typedef struct
{
    LPSTR name;
    LPSTR phone_number;
} record;

#define MAX_RECORDS 5

static record theDatabase[MAX_RECORDS];

/****************************************************************/
void phonedir_CreateRecord(int arrayindex,LPSTR name,LPSTR phone);

/****************************************************************/
BOOL phonedir_Initialize(void)
{
    phonedir_CreateRecord(0,"Daffy Duck",         "310-555-1212");
    phonedir_CreateRecord(1,"Wile E. Coyote",     "408-555-1212");
    phonedir_CreateRecord(2,"Scrooge McDuck",     "206-555-1212");
    phonedir_CreateRecord(3,"Huey Lewis",         "415-555-1212");
    phonedir_CreateRecord(4,"Thomas Dewey",       "617-555-1212");
    return TRUE; /* success */
}
/****************************************************************/
void phonedir_CreateRecord(int i,LPSTR name,LPSTR phone_number)
{
    theDatabase[i].name         = name;
    theDatabase[i].phone_number = phone_number;
}
/****************************************************************/
LPSTR phonedir_LookupByName(LPSTR name)
{
    int i;
    for(i=0; i < MAX_RECORDS; i++)
    {
	if(strcmp(theDatabase[i].name,name)==0)
	    return theDatabase[i].phone_number;
    }
    return NULL;
}
/****************************************************************/
LPSTR phonedir_LookupByNumber(LPSTR number)
{
    int i;
    for(i=0; i < MAX_RECORDS; i++)
    {
	if(strcmp(theDatabase[i].phone_number,number)==0)
	    return theDatabase[i].name;
    }
    return NULL;
}
/****************************************************************/
// Added by Steve Ross (Microsoft Corp)
// Allow iteration of the list for initial population of UI
CString phonedir_LookupByOrdinal(UINT nIndex)
{
	if(nIndex < MAX_RECORDS)
	{
		CString strTemp = theDatabase[nIndex].name;
		strTemp += "\t";
		strTemp += theDatabase[nIndex].phone_number;

		return strTemp;
	}
	else
		return "";
}

void phonedir_Terminate(void)
{
    return;
}
/*********************End of PHONEDIR.C**************************/

