//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)


FUNCTION GLOBAL TAB TASK_CONF
_K_TASK, _K_REAL, 
_K_END_VAR, 

_K_TASK, _K_CYCLIC, 
_K_END_VAR, 

_K_TASK, _K_BACKGROUND, 
_K_END_VAR, 

_K_END_CONF
END_FUNCTION


FUNCTION GLOBAL TAB IPR_CONF
_K_IPR
	0$UINT, 
_K_END_VAR, 
_K_END_CONF
END_FUNCTION


FUNCTION GLOBAL TAB CONFIG_TABLES
00147$UINT, 
0$UINT, 0, 10, "_ALARMDISPLAY", 
0$UINT, 0, 11, "_ALARMX0PARA", 
0$UINT, 0, 19, "_ALARMXBUFFER", 
0$UINT, 0, 1, "_BIT32", 
0$UINT, 0, 1, "_BIT32RAM", 
0$UINT, 0, 4, "_CAN", 
0$UINT, 1, 10, "_CANLIB", 
0$UINT, 1, 3, "_CHECKONLINESTATUS", 
0$UINT, 1, 0, "_CHECKSUM", 
0$UINT, 1, 19, "_FILESYS", 
0$UINT, 0, 14, "_GLOBAL", 
0$UINT, 1, 2, "_GRAFIX", 
0$UINT, 0, 1, "_HOTALARM", 
0$UINT, 1, 8, "_IP", 
0$UINT, 1, 1, "_IPCONFIGIF", 
0$UINT, 0, 5, "_LANGUAGESELECTION", 
0$UINT, 0, 1, "_LIMITMAX", 
0$UINT, 0, 1, "_LIMITMIN", 
0$UINT, 0, 114, "_LSE", 
0$UINT, 1, 1, "_MULTITASK", 
0$UINT, 0, 3, "_MYIO", 
0$UINT, 0, 4, "_OSKERNEL", 
0$UINT, 0, 6, "_OSZILSE", 
0$UINT, 0, 0, "_OSZILSEBACKGROUND", 
0$UINT, 0, 1, "_RADIO32", 
0$UINT, 0, 1, "_RADIO32RAM", 
0$UINT, 0, 3, "_SCREEN", 
0$UINT, 0, 15, "_SCROLLAREA", 
0$UINT, 0, 8, "_SCROLLAREA2", 
0$UINT, 1, 0, "_SEARCHUSBFILETORESET", 
0$UINT, 1, 34, "_SERLIB", 
0$UINT, 1, 0, "_SIG_LSL_CMULTIMASTERSTATE", 
0$UINT, 0, 0, "_STDLIB", 
0$UINT, 2, 0, "_SYNCTIMEPLC", 
0$UINT, 0, 7, "_SYSDATETIME", 
0$UINT, 0, 0, "_SYSDATETIME2", 
0$UINT, 1, 1, "_TASKOBJECTCONTROL", 
0$UINT, 1, 0, "_TOOLCAT", 
0$UINT, 0, 1, "_XACCESS", 
0$UINT, 1, 36, "AI075", 
0$UINT, 1, 34, "AI088", 
0$UINT, 1, 20, "ASCII_BIN", 
0$UINT, 0, 0, "BATTERY_CLASS", 
0$UINT, 2, 0, "BUSINTERFACESDIASINTERNAL", 
0$UINT, 1, 0, "CP102_IOS", 
0$UINT, 0, 4, "CRITICALSECTION", 
0$UINT, 1, 0, "DATAMANAGER", 
0$UINT, 1, 0, "DATAMANAGERFIFO", 
0$UINT, 1, 0, "DATAMANAGERPRIORITY", 
0$UINT, 0, 0, "DAYNIGHTSPLITTER_CLASS", 
0$UINT, 1, 30, "DI203", 
0$UINT, 2, 33, "DIASMASTER", 
0$UINT, 1, 81, "DIASMASTERC", 
0$UINT, 2, 23, "DIASMASTERMAIN", 
0$UINT, 1, 0, "DIASMASTERPOSTSCAN", 
0$UINT, 1, 11, "EEPROM", 
0$UINT, 0, 0, "FRESHWATERTANK_CLASS", 
0$UINT, 0, 10, "GETBROADCASTDATA", 
0$UINT, 1, 2, "GETOSVERSION", 
0$UINT, 0, 2, "GETTASKHANDLE", 
0$UINT, 0, 1, "GRAPHIC", 
0$UINT, 0, 0, "GRID_CLASS", 
0$UINT, 0, 0, "HMIASCIIBUFFER", 
0$UINT, 0, 0, "HMIBASELIST", 
0$UINT, 0, 2, "HMICANSENDRECEIVE", 
0$UINT, 0, 2, "HMICHKBITLIST", 
0$UINT, 0, 0, "HMICOLORMAP", 
0$UINT, 0, 15, "HMICOMPORT", 
0$UINT, 0, 14, "HMICOMPORTCAN", 
0$UINT, 0, 4, "HMIFILE", 
0$UINT, 0, 1, "HMIFONT35", 
0$UINT, 0, 3, "HMIFONTLIST", 
0$UINT, 0, 2, "HMIFUNCTIONLIST", 
0$UINT, 0, 3, "HMIFUNCTIONLIST35", 
0$UINT, 0, 3, "HMIIMAGE35", 
0$UINT, 0, 3, "HMIIMAGELIST", 
0$UINT, 0, 0, "HMIMAPFILE", 
0$UINT, 0, 0, "HMIMEMCIRCLE", 
0$UINT, 0, 0, "HMIMEMIMAGE", 
0$UINT, 0, 0, "HMIMEMIO", 
0$UINT, 0, 0, "HMIMEMLINE", 
0$UINT, 0, 0, "HMIMEMRECTANGLE", 
0$UINT, 0, 0, "HMIMEMTEXT", 
0$UINT, 0, 0, "HMIMEMZORDER", 
0$UINT, 0, 4, "HMIPROJECT35", 
0$UINT, 0, 1, "HMIPROJECTLIST", 
0$UINT, 0, 1, "HMISCREEN", 
0$UINT, 0, 2, "HMISETUPLIST", 
0$UINT, 0, 2, "HMISETUPLIST35", 
0$UINT, 0, 3, "HMISHEMELIST", 
0$UINT, 0, 3, "HMISHEMELIST35", 
0$UINT, 0, 4, "HMISTATEBIT35", 
0$UINT, 0, 2, "HMISTRLIB", 
0$UINT, 0, 3, "HMITEXTLIST", 
0$UINT, 0, 1, "HMITEXTLIST35", 
0$UINT, 0, 0, "HMIUNIBUFFER", 
0$UINT, 0, 2, "HMIUNITLIST", 
0$UINT, 0, 2, "HMIUTILS", 
0$UINT, 0, 1, "HMIVARINFOLIST", 
0$UINT, 0, 15, "HMIVARLIST", 
0$UINT, 0, 4, "HMIVARLIST35", 
0$UINT, 1, 21, "HUB_BASE", 
0$UINT, 2, 11, "HUB_BASE_ROOT", 
0$UINT, 2, 35, "HWBASE", 
0$UINT, 2, 55, "HWBASECDIAS", 
0$UINT, 5, 2, "HWCONTROL", 
0$UINT, 1, 10, "HWCONTROLBASE", 
0$UINT, 1, 0, "HWRTPOSTSCAN", 
0$UINT, 1, 6, "I2CCDIAS", 
0$UINT, 0, 0, "INPUTCHANGE", 
0$UINT, 0, 0, "LEVEL_CLASS", 
0$UINT, 0, 0, "LEVELFILTER_CLASS", 
0$UINT, 1, 26, "LSEEASY", 
0$UINT, 1, 22, "MERKEREX", 
0$UINT, 1, 31, "NETWORKCONFIG", 
0$UINT, 0, 0, "NIGHTLIGHT_CLASS", 
0$UINT, 1, 68, "PLC_INFO", 
0$UINT, 1, 3, "RAM", 
0$UINT, 1, 17, "RAMEX", 
0$UINT, 1, 9, "RAMFILE", 
0$UINT, 1, 1, "RAMRINGBUFFER", 
0$UINT, 3, 16, "SAFETYCDIAS_BASE", 
0$UINT, 2, 11, "SAFETYMANAGER", 
0$UINT, 1, 2, "SAFETYUDP", 
0$UINT, 1, 58, "SDIASBASE", 
0$UINT, 1, 10, "SDIASHUBBASE", 
0$UINT, 1, 92, "SDIASMANAGER", 
0$UINT, 2, 0, "SDIASPLC", 
0$UINT, 0, 23, "SIGCLIB", 
0$UINT, 1, 34, "SR020", 
0$UINT, 1, 10, "STRING", 
0$UINT, 1, 82, "STRINGINTERNAL", 
0$UINT, 1, 10, "STRINGRAM", 
0$UINT, 1, 21, "SYNCCALL", 
0$UINT, 0, 1, "SYSTEM", 
0$UINT, 1, 14, "TCPCOMMUNICATION", 
0$UINT, 1, 0, "TCPCOMMUNICATIONLOGFILTER", 
0$UINT, 0, 0, "TEMPCONTROL_CLASS", 
0$UINT, 0, 0, "TIMER_CLASS", 
0$UINT, 1, 32, "TO161", 
0$UINT, 1, 1, "USERALARMGENERATOR", 
0$UINT, 2, 15, "VARAN_BASE", 
0$UINT, 3, 1, "VARANMANAGER", 
0$UINT, 1, 24, "VARANMANAGER_BASE", 
0$UINT, 1, 3, "VIRTUALBASEINIT", 
0$UINT, 2, 11, "WATCHDOGDIAS", 
0$UINT, 1, 0, "XXXBASE_IOS", 
ONE_CFG$UINT, 0, 0, "ONE_Heizung_NET", 
ONE_CFG$UINT, 0, 0, "ONE_HW_Network", 
ONE_CFG$UINT, 0, 0, "ONE_IPCONF_IPConfigMC1", 
ONE_CFG$UINT, 0, 0, "ONE_Level_Net", 
ONE_CFG$UINT, 0, 0, "ONE_Licht_Net", 
ONE_CFG$UINT, 0, 0, "ONE_LseEasyMain", 
ONE_CFG$UINT, 0, 0, "ONE_Manage_Net", 
ONE_CFG$UINT, 0, 0, "ONE_Power_Net", 
ONE_CFG$UINT, 1, 0, "ONE_STDAlarm", 
ONE_CFG$UINT, 1, 0, "ONE_STDCommunicationToHMI", 
ONE_CFG$UINT, 1, 0, "ONE_STDPLCInfoPLC", 
ONE_CFG$UINT, 2, 0, "ONE_STDTimeSync", 
ONE_CFG$UINT, 0, 0, "ONE_Water_Net", 
TASK_CFG$UINT, 0, 0, "TASK_CONF", 
IPR_CFG$UINT, 0, 0, "IPR_CONF", 
PRJ_CFG$UINT, 0, 0, "MachineControl", 
END_FUNCTION

#ifdef __LSLLDR_IOELEMENTS__
FUNCTION GLOBAL TAB _IO_ELEMENTS_TAB
0001$UINT, 0009$UINT, 
"**IOCONN_EMPTY**", "SR0201.Led350", 
"IO_Element", "AI0751.AI2", 
"IO_Element0", "AI0751.AI3", 
"IO_Element1", "TO1611.Output5", 
"IO_Element2", "DI2031.Input1", 
"IO_Element3", "DI2031.Input2", 
"IO_Element4", "DI2031.Input3", 
"IO_Element5", "DI2031.Input4", 
"IO_Element6", "DI2031.Input5", 
0021$UINT, 
"**IOCONN_EMPTY**", "NightLight_Class1.cNightlightSwitch", 
"**IOCONN_EMPTY**", "Battery_Class1.ActualAmps1_C", 
"**IOCONN_EMPTY**", "Battery_Class1.ActualVoltage_C", 
"**IOCONN_EMPTY**", "Battery_Class1.ActualAmps2_C", 
"**IOCONN_EMPTY**", "Grid_Class1.Inverter_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.ActualRoomTemp_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.ActualUltraheatTemp_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.SetFanSpeed_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.MotorRunStop_C", 
"**IOCONN_EMPTY**", "Grid_Class1.ActualAmps_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.HeaterRun_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.HeaterOn_C", 
"**IOCONN_EMPTY**", "TempControl_Class1.Heater200Watt_C", 
"IO_Element", "LevelFilter_Class1.X_IN_C", 
"IO_Element0", "LevelFilter_Class1.Y_IN_C", 
"IO_Element1", "FreshWaterTank_Class1.Start_Check", 
"IO_Element2", "InputChange1.Input1", 
"IO_Element3", "InputChange1.Input2", 
"IO_Element4", "InputChange1.Input3", 
"IO_Element5", "InputChange1.Input4", 
"IO_Element6", "FreshWaterTank_Class1.WaterPump", 
END_FUNCTION
#endif //__LSLLDR_IOELEMENTS__


FUNCTION GLOBAL TAB CH_REDIRECT_EMB_TAB
0000$UINT, 
00015$UINT, 
"AI075;SerialNo", "\SerialNoStr.Data", 
"AI088;SerialNo", "\SerialNoStr.Data", 
"DI203;SerialNo", "\SerialNoStr.Data", 
"HwBaseCDIAS;SerialNo", "\SerialNoStr.Data", 
"PLC_Info;ApplicationName", "\AppliName.Data", 
"PLC_Info;CPUBoardName", "\CPUBoard.Data", 
"PLC_Info;CPU_Name", "\String1.Data", 
"PLC_Info;SerNum", "\String0.Data", 
"PLC_Info;SysInfoString", "\SysInfo.Data", 
"SR020;SerialNo", "\SerialNoStr.Data", 
"SafetyCDIAS_Base;SerialNo", "\SerialNoStr.Data", 
"SdiasBase;SerialNo", "\SerialNoStr.Data", 
"TCPCommunication;TaskName", "\ThreadName.Data", 
"TO161;SerialNo", "\SerialNoStr.Data", 
"Varan_Base;SerialNo", "\SerialNoStr.Data", 
END_FUNCTION
