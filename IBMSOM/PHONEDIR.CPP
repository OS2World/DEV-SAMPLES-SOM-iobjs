
#ifndef SOM_Module_phonedir_Source
#define SOM_Module_phonedir_Source
#endif
#define PhoneDir_Class_Source
#define VARIABLE_MACROS // Access instance data via a macro

#include "phonedir.xih"
#include <string.h>

// The following function is used by the SOM runtime to initialize
// the PhoneDir class when dynamically loaded.
SOMEXTERN void SOMLINK SOMInitModule(integer4 majorVersion, integer4 minorVersion,
                           string ignore)
{
    PhoneDirNewClass(PhoneDir_MajorVersion, PhoneDir_MinorVersion);
}

/*
 * Look up the phone number of the given name.
 */
SOM_Scope string  SOMLINK LookupByName(PhoneDir *somSelf,  Environment *ev,
                                       string name)
{
    int i;
    string rname, rnumber, number = (string)NULL;
    PhoneDirData *somThis = PhoneDirGetData(somSelf);
    PhoneDirMethodDebug("PhoneDir","LookupByName");

    for (i=0; i<MAX_RECORDS; i++) {
       rname = sequenceElement(_theDatabase,i).name;
       rnumber = sequenceElement(_theDatabase,i).phone_number;
       if (strcmp(rname, name)==0) {
          number = strcpy((string)SOMMalloc(strlen(rnumber)+1), rnumber);
          break;
       }
    }
    return (number);
}

/*
 * Look up the name given the phone number.
 */
SOM_Scope string  SOMLINK LookupByNumber(PhoneDir *somSelf,  Environment *ev,
                                         string number)
{
    int i;
    string rname, rnumber, name = (string)NULL;
    PhoneDirData *somThis = PhoneDirGetData(somSelf);
    PhoneDirMethodDebug("PhoneDir","LookupByNumber");

    for (i=0; i<MAX_RECORDS; i++) {
       rname = sequenceElement(_theDatabase,i).name;
       rnumber = sequenceElement(_theDatabase,i).phone_number;
       if (strcmp(rnumber, number)==0) {
          name = strcpy((string)SOMMalloc(strlen(rname)+1), rname);
          break;
       }
    }
    return (name);
}

/*
 * Object initializer.
 */
SOM_Scope void SOMLINK Initialize(PhoneDir *somSelf,  Environment *ev,
                                  somInitCtrl* ctrl)
{
    PhoneDirData *somThis; /* set in BeginInitializer */
    somInitCtrl globalCtrl;
    somBooleanVector myMask;
    PhoneDirMethodDebug("PhoneDir","Initialize");
    PhoneDir_BeginInitializer_Initialize;

    PhoneDir_Init_SOMObject_somDefaultInit(somSelf, ctrl);

    /*
     * local PhoneDir initialization code added by programmer
     */
    sequenceLength(_theDatabase) = MAX_RECORDS;
    sequenceMaximum(_theDatabase) = MAX_RECORDS;
    _theDatabase._buffer =
               (PhoneDir_record*)SOMMalloc(sizeof(PhoneDir_record)*MAX_RECORDS);

    sequenceElement(_theDatabase, 0) =
                   somSelf->CreateRecord(ev, "Daffy Duck",     "310-555-1212");
    sequenceElement(_theDatabase, 1) =
                   somSelf->CreateRecord(ev, "Wile E. Coyote", "408-555-1212");
    sequenceElement(_theDatabase, 2) =
                   somSelf->CreateRecord(ev, "Scrooge McDuck", "206-555-1212");
    sequenceElement(_theDatabase, 3) =
                   somSelf->CreateRecord(ev, "David Byrne",    "415-555-1212");
    sequenceElement(_theDatabase, 4) =
                   somSelf->CreateRecord(ev, "Thomas Dewey",   "617-555-1212");

    /* Note: the fact that no exception was returned in the <ev> argument
     * indicates successful initialization.
     */
}

/*
 * Return a new phone directory record given the name
 * and number.
 */
SOM_Scope PhoneDir_record  SOMLINK CreateRecord(PhoneDir *somSelf,
                                                 Environment *ev,
                                                string name,
                                                string phone_number)
{
    PhoneDir_record retVal;
    PhoneDirData *somThis = PhoneDirGetData(somSelf);
    PhoneDirMethodDebug("PhoneDir","CreateRecord");

    retVal.name = name;
    retVal.phone_number = phone_number;
    return (retVal);
}


/*
 * The default initializer.
 *
 * This initializer is called by default if no other is specified when
 * the object is created.
 */
SOM_Scope void SOMLINK somDefaultInit(PhoneDir *somSelf, somInitCtrl* ctrl)
{
    Environment *gev;
    PhoneDirData *somThis; /* set in BeginInitializer */
    somInitCtrl globalCtrl;
    somBooleanVector myMask;
    PhoneDirMethodDebug("PhoneDir","somDefaultInit");
    PhoneDir_BeginInitializer_somDefaultInit;

    PhoneDir_Init_SOMObject_somDefaultInit(somSelf, ctrl);

    /*
     * local PhoneDir initialization code added by programmer
     */
    gev = somGetGlobalEnvironment();
    Initialize(somSelf, gev, ctrl);
}

