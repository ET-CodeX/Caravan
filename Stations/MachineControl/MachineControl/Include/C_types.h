//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
typedef UDINT DM_CPU_Types; 
    #define CPUNotIdentified 0
    #define IPC_Text_CPU 1
    #define IPC_800_CPU 2
    #define IPC_1024_CPU 3
    #define PCD_CPU 4
    #define DSE_CPU 5
    #define DCP_CPU 6
    #define DCC080_CPU 7
    #define DCP645_CPU 8
    #define AK500_CPU 9
    #define TSTROM_CPU 10
    #define NoCPU_11 11
    #define NoCPU_12 12
    #define NoCPU_13 13
    #define NoCPU_14 14
    #define NoCPU_15 15
    #define ELAN_CPU 16
    #define ELAN800_CPU 17
    #define WINPC_CPU 18
    #define TERMINAL_CPU 19
    #define DTC281_CPU 20
    #define ELAN_TEXT_CPU 21
    #define ELAN_800_CPU 22
    #define ETT321_CPU 23
    #define HERZ_CPU 24
    #define ETT261_CPU 25
    #define ETT431_CPU 26
    #define WIN_PC98_CPU 27
    #define WINPC_NT_CPU 28
    #define WINIPC_98_CPU 29
    #define WINIPC_NT_CPU 30
    #define IPC_320_CPU 31
    #define C_IPC_CPU 32
    #define NoCPU_33 33
    #define RK500_CPU 34
    #define CCL721_CPU 35
    #define CCL911_CPU 36
    #define BDF2000_CPU 37
    #define StandardPC_CPU 38
    #define CCL081CET_CPU 39
    #define CCL081_CPU 40
    #define CCL722_CPU 41
    #define DCL642_CPU 42
    #define Teachbox_CPU 43
    #define DTC081_CPU 44
    #define DTC081_IP_CPU 45
    #define ETV_CPU 46
    #define HZS511_CPU 47
    #define AUW11X_CPU 48
    #define BDF2000_USB_CPU 49
    #define DTC101_CPU 50
    #define HZS515_CPU 51
    #define CCP511_CPU 52
    #define ETVEDGE_CPU 53
    #define ARM_IMX6_CPU 65537

typedef struct 
  {
    long Valid : 1;  //! <Type Comment="must be 1 to Start FileEx work" Name="FeSetup.Valid"/>
    long FileorRam : 1;  //! <Type Comment="0= work in File 1= Work File" Name="FeSetup.FileorRam"/>
    long EnableChecksum : 1;  //! <Type Comment="0=no Checksum; 1=Calculate Checksum, increased write access on the CF card" Name="FeSetup.EnableChecksum"/>
    long Encrypt : 1;  //! <Type Comment="0=no encryption; 1=encrypt file, increased write access on the CF card" Name="FeSetup.Encrypt"/>
  }FeSetup;

typedef struct   //! <Type Comment="Status Flag f�r IO Daten" Name="IO_FLAG"/>
  {
    short WrongHW : 1;  //! <Type Comment="Falsche Hardware verbunden" Name="IO_FLAG.WrongHW"/>
    short NoHW : 1;  //! <Type Comment="Keine Hardware verbunden" Name="IO_FLAG.NoHW"/>
    short NoCalibration : 1;  //! <Type Comment="Keine Kalibrierungsdaten im Modul-EEPROM" Name="IO_FLAG.NoCalibration"/>
    short ParaChkWrong : 1;  //! <Type Comment="Die Parameter-Checksumme ist falsch" Name="IO_FLAG.ParaChkWrong"/>
    short PhysicHiLimit : 1;  //! <Type Comment="IO ist am oberen physikalischen Limit" Name="IO_FLAG.PhysicHiLimit"/>
    short PhysicLoLimit : 1;  //! <Type Comment="IO ist am unteren physikalischen Limit" Name="IO_FLAG.PhysicLoLimit"/>
    short Invert : 1;  //! <Type Comment="Daten sind invertiert" Name="IO_FLAG.Invert"/>
    short dummy0 : 6;
    short OnDummyMode : 1;  //! <Type Comment="1 = Objekt ist im Dummymodus (nicht refreshed)" Name="IO_FLAG.OnDummyMode"/>
    short NotConnected : 1;  //! <Type Comment="1 = Objekt ist nicht verbunden" Name="IO_FLAG.NotConnected"/>
    short PhysicAccessOff : 1;  //! <Type Comment="1 = kein physikalischer Zugriff erlaubt" Name="IO_FLAG.PhysicAccessOff"/>
  }IO_FLAG;

#pragma pack(push, 1)
typedef struct IO_State 
  {
    IO_FLAG uiIO_Flags;
    UINT uiChNo;
  } IO_State;
#pragma pack(pop)

typedef CHAR LASCII;

typedef UINT LCHAR;

typedef HwBase *pHwBase;

typedef HwBaseCDIAS *pHwBaseCDIAS;

typedef UDINT SafetyConfigStateType; 
    #define _ModuleNotFound 0
    #define _SafetyClassOK 1
    #define _ReinitConfig 2
    #define _UnsafeVarNotFound 3
    #define _ModFromCfgNotFound 4
    #define _MemAllocFailed 5
    #define _ReadFWVerFailed 6
    #define _UnknownCfgError 7
    #define _WaitForSynchronicity 8
    #define _AsyncComError 9
    #define _DOsIncreasedRestartApp 10
    #define _LostPowerSupply 11
    #define _WrongSafetyHW 12

#pragma pack(push, 1)
typedef struct SafetyDiagInfo 
  {
    USINT uControllerID;  //! <Type Comment="ID of �Controller (0 = �C1, else �C2)" Name="SafetyDiagInfo.uControllerID"/>
    USINT ActErrorCode;  //! <Type Comment="actual error code" Name="SafetyDiagInfo.ActErrorCode"/>
    USINT FirstErrorCode;  //! <Type Comment="code of first error that lead to an error state" Name="SafetyDiagInfo.FirstErrorCode"/>
    UDINT ReasonCode0;  //! <Type Comment="reason for error (meaning depends on actual error code)" Name="SafetyDiagInfo.ReasonCode0"/>
    UDINT ReasonCode1;  //! <Type Comment="reason for error (meaning depends on actual error code)" Name="SafetyDiagInfo.ReasonCode1"/>
  } SafetyDiagInfo;
#pragma pack(pop)

#pragma pack(push, 1)
typedef struct SafetyDiagState 
  {
    USINT RunState;  //! <Type Comment=" 1..POST&#13;&#10; 2..SERVICE&#13;&#10; 4..ERROR&#13;&#10; 8..IDLE&#13;&#10;16..CHK_CFG&#13;&#10;32..OP_TEMP&#13;&#10;64..OP" Name="SafetyDiagState.RunState"/>
    USINT ConfigState;  //! <Type Comment=" 1..INVALID&#13;&#10; 2..NOT_CONFIGURED&#13;&#10; 4..CONFIGURED_NOT_DEPLOYED_NOT_VERIFIED&#13;&#10; 8..CONFIGURED_AND_VERIFIED&#13;&#10;16..CONFIGURED_DEPLOYED_NOT_VERIFIED&#13;&#10;36..CONFIGURED_NOT_DEPLOYED_NOT_VERIFIED_DEV&#13;&#10;48..CONFIGURED_DEPLOYED_NOT_VERIFIED_DEV" Name="SafetyDiagState.ConfigState"/>
    USINT LoginLevel;  //! <Type Comment="0..not logged in&#13;&#10;1..debug&#13;&#10;2..configuration&#13;&#10;3..general" Name="SafetyDiagState.LoginLevel"/>
    UINT ErrorCounterIOState;  //! <Type Comment="Is increased on change of the error state of any input or output" Name="SafetyDiagState.ErrorCounterIOState"/>
  } SafetyDiagState;
#pragma pack(pop)

typedef DINT SystemStateType; 
    #define Charge 0
    #define Discharge 1
    #define FullyCarged 2

typedef UDINT t_e_VaranErrors; 
    #define _ClassOk 0
    #define _NotInitialized 1
    #define _CallBackError 2
    #define _RequiredError 3
    #define _RootError 4
    #define _NoHardware 5
    #define _WrongHardware 6
    #define _CreateDOFailed 7
    #define _DirectAccessFailed 8
    #define _PllError 9
    #define _TimeoutInInit 10
    #define _HardwareRequiredIRQ 11
    #define _HardwareNotRequiredIRQ 12
    #define _HardwareFatalErrorIRQ 13
    #define _ManagerError 14
    #define _DisableError 15
    #define _EnableError 16
    #define _MultipleError 17
    #define _SPIError 18
    #define _ErrorBootImageFPGA 19
    #define _NoCDIASInterface 20
    #define _EEPromError 21
    #define _NoVaranInterface 22
    #define _MemoryFault 23
    #define _TimesliceError 24
    #define _TimesliceErrorIRQ 25
    #define _WatchdogError 26
    #define _VaranTimeError 27
    #define _DiasTimeError 28
    #define _DORamFull 29
    #define _PortNoLink 30
    #define _VaranDriverNotExists 31
    #define _WrongDOLType 32
    #define _WrongRunStatus 33
    #define _DOHandleInvalid 34
    #define _DOCmdInvalid 35
    #define _ManagerNotExists 36
    #define _DOLAddressInvalid 37
    #define _UnknownCommand 38
    #define _ComponentNotExists 39
    #define _ClientNotExists 40
    #define _CdiasEEPromNotExists 41
    #define _CdiasEEPromNoGrant 42
    #define _CdiasEEPromNack 43
    #define _PortNotExists 44
    #define _PortIsUplink 45
    #define _NoMutex 46
    #define _NoTask 47
    #define _IDNotFound 48
    #define _IDNotInitialized 49
    #define _InvalidDeviceAddress 50
    #define _CallbackNotHandled 51
    #define _NoMem 52
    #define _NoLegacyWd 53
    #define _AdminDOLExecutionError 54
    #define _DADOLExecutionError 55
    #define _SPIFlashNoAccess 56
    #define _ClientNotready 57
    #define _TimeoutVaran 58
    #define _UnknownFault 59
    #define _DiasError 60
    #define _DeviceError 61
    #define _VaranTimeWarning 62
    #define _OnlyASYSupported 63
    #define _InvalidSerialNo 64
    #define _CDIASRequiredError 65
    #define _DIASRequiredError 66
    #define _NoCalibDataFound 67
    #define _ModuleFoundButManagerIsOff 68
    #define _InvalidConfguration 69
    #define _ClientDisabled 70
    #define _ClientCantEnable 71
    #define _CdiasAddressInvalid 72
    #define _SPIFlashInvalid 73
    #define _SPIDOLIDInvalid 74
    #define _SPIDOLInvalid 75
    #define _SPIRequiredListError 76
    #define _SPIChksumError 77
    #define _ParameterInvalid 78
    #define _DOTypeNotSupported 79
    #define _DMAError 80
    #define _PropertyIDInvalid 81
    #define _PropertyValueInvalid 82
    #define _DONumberOverflow 83
    #define _APIUsageNotAllowed 84
    #define _NodeTypeWrong 85
    #define _DataLengthInvalid 86
    #define _DOTypeInvalid 87
    #define _OperationNotAllowed 88
    #define _NodeNumberOverflow 89
    #define _NoHandleFound 90
    #define _TopologyNotAllowed 91

#pragma pack(push, 1)
typedef struct t_s_ModulInfo 
  {
    HINT Kennung;
    void *p_This;
  } t_s_ModulInfo;
#pragma pack(pop)

