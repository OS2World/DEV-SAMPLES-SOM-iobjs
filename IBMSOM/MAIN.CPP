/*
 *  main.cpp - a SOM/DSOM client program.
 *
 *  This program creates a simple phone directory object and then searches
 *  for names and numbers in the directory.
 *
 *  This program is a re-implementation of the simple phone dir spec'd
 *  by DDJ's Ray Valdes.
 *
 *  The phone directory used by this program is a SOM object. The object
 *  may or may not be local to the main program process. The phone directory
 *  location is determined by its registration in the Implemenation Repository.
 *  The object will exist local to this process if the PhoneDir class is
 *  not registered in the Implementation Repository. If the PhoneDir
 *  class is registered, the object will exist in the server with which
 *  the PhoneDir class has been registered. The server process may run
 *  on the same system as this client program or on a networked system.
 *
 *  9/8/94 - Charles Erickson IBM
 *
 */
#include <stdlib.h>
#include <stdio.h>
#include <somd.xh>
#include "PhoneDir.pxh" // Include the public definition of the class.

// Macros for checking for exceptions.
#define EV_OK(ev) ((ev)->_major == NO_EXCEPTION)
#define EV_NOT_OK(ev) ((ev)->_major != NO_EXCEPTION)

// Prototypes
static SOMObject * createObject(SOMClass *cls);
static void freeReturnedMem(void *mem);
static void freeObject(SOMObject *obj);
static SOMClass * PhoneDirInitialize();

// Static globals
static boolean isdsom = FALSE; // assume object local

int main (int argc, char *argv[])
{
    SOMClass *phoneDirClass;
    PhoneDir *phoneDir;;
    Environment *ev;
    string name, number;

    ev = SOM_CreateLocalEnvironment();

    // Get the phone directory class object. The class object
    // is used to create instances of the PhoneDir class.
    phoneDirClass = PhoneDirInitialize();

    // Create an instance of the PhoneDir class.
    phoneDir = (PhoneDir*)createObject(phoneDirClass);

    // Initialize the object instance.
    phoneDir->Initialize(ev, NULL);

    // Search the phone directory....
    name = "John Doe";
    number = phoneDir->LookupByName(ev, name);
    if (number) {
       printf("%s's number is %s.\n", name, number);
       freeReturnedMem(number);
    } else
       printf("%s does not have a number listed.\n", name);

    name = "Daffy Duck";
    number = phoneDir->LookupByName(ev, name);
    if (number) {
       printf("%s's number is %s.\n", name, number);
       freeReturnedMem(number);
    } else
       printf("%s does not have a number listed.\n", name);

    number = "408-555-1212";
    name = phoneDir->LookupByNumber(ev, number);
    if (name) {
       printf("%s's number is %s.\n", name, number);
       freeReturnedMem(name);
    } else
       printf("The phone number %s has not been assigned.\n", number);

    number = "408-111-1111";
    name = phoneDir->LookupByNumber(ev, number);
    if (name) {
       printf("%s's number is %s.\n", name, number);
       freeReturnedMem(name);
    } else
       printf("The phone number %s has not been assigned.\n", number);

    // Destroy the phone directory object.
    freeObject(phoneDir);
    SOM_DestroyLocalEnvironment(ev);
    return (0);
}

static SOMObject * createObject(SOMClass *cls)
{
    return(cls->somNewNoInit());
}

static SOMClass * PhoneDirInitialize()
{
    Environment *ev;
    SOMDServer *svr;
    SOMClass *cls, *dcls;

    ev = SOM_CreateLocalEnvironment();
    cls = PhoneDirNewClass(0, 0);
    SOMD_Init(ev);
    if (EV_OK(ev)) {
        svr = SOMD_ObjectMgr->somdFindAnyServerByClass(ev, "PhoneDir");
        if (svr && EV_OK(ev)) {
            dcls = svr->somdGetClassObj(ev, "PhoneDir");
            if (EV_OK(ev)) {
               cls = dcls;
               isdsom = TRUE;
            }
        }
    }
    SOM_DestroyLocalEnvironment(ev);
    return (cls);
}

static void freeReturnedMem(void *mem)
{
    if (mem) {
        if (isdsom)
            ORBfree(mem);
        else
            SOMFree(mem);
    }
}

static void freeObject(SOMObject *obj)
{
    Environment ev;
    SOM_InitEnvironment(&ev);
    if (obj) {
        if (isdsom)
            SOMD_ObjectMgr->somdDestroyObject(&ev, obj);
        else
            obj->somFree();
    }
}
