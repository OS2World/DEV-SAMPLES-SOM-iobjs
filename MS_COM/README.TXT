DDJCOM2.ZIP contains a slightly-revised draft of DDJCOM.doc.

COM.zip contains the source and executables for our non-ui phone
directory server and client applications (based entirely on COM).
Installation directions and general notes about the source and 
applications are below.

Follow these steps to install and run the phone directory 
server and client applications:

1.  Create a directory on c: called "lookup".  CD to that directory.
2.  Copy com.zip from this disk to c:\lookup.
3.  Use "pkunzip /d" to decompress the file and preserve the directory
    structure.
4.  In File Manager, double click on "all.reg" to register the server
    application and the custom interface in the registration database.
5.  In File Manager, go to the c:\lookup\client\windebug directory and
    double click on "client.exe".
6.  In the client app, select "Connect to Phone Book" from the file menu.  
    After you've connected, you can choose "Look up by Name" or "Look up 
    by Number".  Selecting "exit" will (not surprisingly) disconnect you
    from the server and exit the client app.

Some random notes about the applications:
1. client.mak and pdserver.mak are VC2.0 makefiles.
2. I've sent debug builds so you can check 'em out in the debugger - you
   can easily make retail builds if you prefer.
3. pd.dll is the proxy/stub code for the ILookup custom interface - if 
   you want to recompile either the client or the server, you'll need to
   build the DLL too, becuase the MIDL compiler generates the header files
   used by the client and the server.
4. If you install into a different directory, or move the server or 
   proxy/stub dll, you'll need to be sure to update the registry.  I've 
   found it easiest to just modify the .reg file and then re-register.



