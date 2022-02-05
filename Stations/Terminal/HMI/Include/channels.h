//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
TYPE
  SvrCh_BDINT : STRUCT
    pMeth : ^CHMETH;
    dData : BDINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltCh_BDINT : STRUCT
    pCh : ^SvrCh_BDINT;
    dData : BDINT;
    pCmd : ^SVRCHCMD;
  END_STRUCT;
  SvrCh_DINT : STRUCT
    pMeth : ^CHMETH;
    dData : DINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltCh_DINT : STRUCT
    pCh : ^SvrCh_DINT;
    dData : DINT;
    pCmd : ^SVRCHCMD;
  END_STRUCT;
  SvrCh_HDINT : STRUCT
    pMeth : ^CHMETH;
    dData : HDINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltCh_HDINT : STRUCT
    pCh : ^SvrCh_HDINT;
    dData : HDINT;
    pCmd : ^SVRCHCMD;
  END_STRUCT;
  SvrCh_UDINT : STRUCT
    pMeth : ^CHMETH;
    dData : UDINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltCh_UDINT : STRUCT
    pCh : ^SvrCh_UDINT;
    dData : UDINT;
    pCmd : ^SVRCHCMD;
  END_STRUCT;
  SvrChCmd_BDINT : STRUCT
    pMeth : ^CMDMETH;
    dData : BDINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltChCmd__Bit32 : STRUCT
    pCh : ^SvrChCmd_BDINT;
    dData : BDINT;
    pCmd : ^_Bit32;
  END_STRUCT;
  SvrChCmd_DINT : STRUCT
    pMeth : ^CMDMETH;
    dData : DINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltChCmd__Can : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_Can;
  END_STRUCT;
  CltChCmd__CheckSum : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_CheckSum;
  END_STRUCT;
  CltChCmd__FileSys : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_FileSys;
  END_STRUCT;
  CltChCmd__Grafix : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_Grafix;
  END_STRUCT;
  CltChCmd__IP : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_IP;
  END_STRUCT;
  CltChCmd__IPConfigMain : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_IPConfigMain;
  END_STRUCT;
  CltChCmd__Lse : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_Lse;
  END_STRUCT;
  CltChCmd__MultiTask : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_MultiTask;
  END_STRUCT;
  CltChCmd__OSKernel : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_OSKernel;
  END_STRUCT;
  CltChCmd__OsziLSEBackground : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_OsziLSEBackground;
  END_STRUCT;
  CltChCmd__StdLib : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_StdLib;
  END_STRUCT;
  CltChCmd__SysMsg : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_SysMsg;
  END_STRUCT;
  CltChCmd__TaskObjectControl : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_TaskObjectControl;
  END_STRUCT;
  CltChCmd__XMLReader : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_XMLReader;
  END_STRUCT;
  CltChCmd__XMLStructCreator : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^_XMLStructCreator;
  END_STRUCT;
  CltChCmd_AlarmTitleLine : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^AlarmTitleLine;
  END_STRUCT;
  SvrChCmd_UDINT : STRUCT
    pMeth : ^CMDMETH;
    dData : UDINT;
    pDsc : ^SVRDSC;
  END_STRUCT;
  CltChCmd_CriticalSection : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^CriticalSection;
  END_STRUCT;
  CltChCmd_DataManager : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^DataManager;
  END_STRUCT;
  CltChCmd_DataManagerFIFO : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^DataManagerFIFO;
  END_STRUCT;
  CltChCmd_DataManagerPriority : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^DataManagerPriority;
  END_STRUCT;
  CltChCmd_DINT : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^SVRCHCMD;
  END_STRUCT;
  CltChCmd_DisplaySettings : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^DisplaySettings;
  END_STRUCT;
  CltChCmd_GetBroadCastData : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^GetBroadCastData;
  END_STRUCT;
  CltChCmd_GetTaskHandle : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^GetTaskHandle;
  END_STRUCT;
  CltChCmd_Graphic : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^Graphic;
  END_STRUCT;
  CltChCmd_KeyPadImagesStdTemplate : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^KeyPadImagesStdTemplate;
  END_STRUCT;
  CltChCmd_MerkerEx : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^MerkerEx;
  END_STRUCT;
  CltChCmd_Ram : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^Ram;
  END_STRUCT;
  CltChCmd_RAMex : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^RAMex;
  END_STRUCT;
  CltChCmd_RamRingBuffer : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^RamRingBuffer;
  END_STRUCT;
  CltChCmd_SigCLib : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^SigCLib;
  END_STRUCT;
  CltChCmd_String : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^String;
  END_STRUCT;
  CltChCmd_StringInternal : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^StringInternal;
  END_STRUCT;
  CltChCmd_StringRAM : STRUCT
    pCh : ^SvrChCmd_UDINT;
    dData : UDINT;
    pCmd : ^StringRAM;
  END_STRUCT;
  CltChCmd_System : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^System;
  END_STRUCT;
  CltChCmd_SystemLogging : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^SystemLogging;
  END_STRUCT;
  CltChCmd_TCPCommunication : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^TCPCommunication;
  END_STRUCT;
  CltChCmd_TCPCommunicationLogFilter : STRUCT
    pCh : ^SvrChCmd_DINT;
    dData : DINT;
    pCmd : ^TCPCommunicationLogFilter;
  END_STRUCT;
  SvrCh__IMA : STRUCT
    pMeth : ^CHMETH;
    dData : _IMA;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh__XML_PARSE_ERROR_PTofCls__XMLReader : STRUCT
    pMeth : ^CHMETH;
    dData : _XMLReader::_XML_PARSE_ERROR;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_DirtyFlags_PTofCls__IPConfigStation : STRUCT
    pMeth : ^CHMETH;
    dData : _IPConfigStation::DirtyFlags;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_e_GetOptions_PTofCls_NetworkConfig : STRUCT
    pMeth : ^CHMETH;
    dData : NetworkConfig::e_GetOptions;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_e_SetOptions_PTofCls_NetworkConfig : STRUCT
    pMeth : ^CHMETH;
    dData : NetworkConfig::e_SetOptions;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_t_e_ConnectionType_PTofCls_TCPCommunication : STRUCT
    pMeth : ^CHMETH;
    dData : TCPCommunication::t_e_ConnectionType;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_t_e_ExportState_PTofCls_TCPCommunicationLogViewer : STRUCT
    pMeth : ^CHMETH;
    dData : TCPCommunicationLogViewer::t_e_ExportState;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_t_e_IF_NET_MODE_PTofCls__IPConfigIF : STRUCT
    pMeth : ^CHMETH;
    dData : _IPConfigIF::t_e_IF_NET_MODE;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_t_e_NET_MODE_PTofCls__IPConfigStation : STRUCT
    pMeth : ^CHMETH;
    dData : _IPConfigStation::t_e_NET_MODE;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_TIME_LSL : STRUCT
    pMeth : ^CHMETH;
    dData : TIME_LSL;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrCh_XML_READ_STATE_PTofCls__XMLReader : STRUCT
    pMeth : ^CHMETH;
    dData : _XMLReader::XML_READ_STATE;
    pDsc : ^SVRDSC;
  END_STRUCT;
  SvrChCmd_DATE_LSL : STRUCT
    pMeth : ^CMDMETH;
    dData : DATE_LSL;
    pDsc : ^SVRDSC;
  END_STRUCT;
END_TYPE