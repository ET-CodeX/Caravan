//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
#define OBJECTS_CONFIG

#include <.\lsl_st_mt.h>


FUNCTION GLOBAL TAB ONE_IPCONF_IPConfigMC1
-1$UINT, 0$UINT, 
0$UINT, 0$UINT,

8$UDINT,
TO_UDINT(1245802338), "_IPConfigIF", 1$UINT, 1$UINT, 1$UINT,
TO_UDINT(4101473903), "_SearchUsbFiletoReset", 1$UINT, 0$UINT, 1$UINT,
TO_UDINT(2225119864), "MerkerEx", 1$UINT, 22$UINT, 0$UINT,
TO_UDINT(3068426329), "NetworkConfig", 1$UINT, 31$UINT, 0$UINT,
TO_UDINT(933570811), "RAMex", 1$UINT, 17$UINT, 1$UINT,
TO_UDINT(2898603620), "StringInternal", 1$UINT, 82$UINT, 0$UINT,
TO_UDINT(2408581120), "StringRAM", 1$UINT, 10$UINT, 1$UINT,
TO_UDINT(3232495061), "VirtualBaseInit", 1$UINT, 3$UINT, 0$UINT,

_NO_ATTR, TO_UDINT(919873512), "_IPCONFIGIF1MC1", 

_NO_ATTR, TO_UDINT(3343391716), "_SEARCHUSBFILETORESET1MC1", 



1$UINT, TO_UDINT(885580357), "USBSEARCHFILENAME1MC1\DATABUFFER", 


_NO_ATTR, TO_UDINT(3190751995), "USBSEARCHFILENAME1MC1", 


//Internal connections
0$UDINT,
1$UDINT,
TO_UDINT(3), "DataBuffer", TO_UDINT(2),
0$UDINT,
3$UDINT,
TO_UDINT(1), "FilePathName", TO_UDINT(3), "Data",
TO_UDINT(1), "OutResetCmd", TO_UDINT(0), "ExtResetCmd",
TO_UDINT(3), "DataBuffer", TO_UDINT(2), "m_udLength",

//Initialization values
0$UDINT,
3$UDINT,
TO_UDINT(0), "Interface", TO_UDINT(1),//|IPCONF_IPConfigMC1._IPConfigIF1mc1.Interface;
TO_UDINT(2), "ThreadSafe", TO_UDINT(0),//|IPCONF_IPConfigMC1.UsbSearchFileName1mc1\DataBuffer.ThreadSafe;
TO_UDINT(3), "SingleRealloc", TO_UDINT(1),//|IPCONF_IPConfigMC1.UsbSearchFileName1mc1.SingleRealloc;

//Symbolic initialization values
0$UDINT,
0$UDINT,

//Initialization of string values
0$UDINT,
0$UDINT,

//Configuration of tasks (RealTime, Cyclic, Background)
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

0$UDINT,
2$UDINT,
TO_UDINT(0), (100)$UDINT, 4194303$DINT, 	//_IPCONFIGIF1MC1
TO_UDINT(1), (1000)$UDINT, 4194303$DINT, 	//_SEARCHUSBFILETORESET1MC1

//External connections
0$UDINT,
0$UDINT,

//Magic internal connections
0$UDINT,
1$UDINT,
TO_UDINT(2), "UseFile", TO_UDINT(3), "UseFile",

//Configuration of timeslots of tasks (RealTime, Cyclic)
#ifdef __LSLLDR_TIMESLOTS__
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

#endif //__LSLLDR_TIMESLOTS__

//MultiMaster connections
#ifdef __LSLLDR_MULTIMASTER__
0$UDINT,
0$UDINT,
#endif //__LSLLDR_MULTIMASTER__

//Configuration for task ID (RealTime, CyclicTime)
#ifdef __LSLLDR_TASKID__
"\\\\TASKS2  "
0$UDINT,
0$UDINT,

0$UDINT,
0$UDINT,

0$UDINT,
2$UDINT,
(0)$UDINT, 	//_IPCONFIGIF1MC1
(0)$UDINT, 	//_SEARCHUSBFILETORESET1MC1

#endif //__LSLLDR_TASKID__

END_FUNCTION