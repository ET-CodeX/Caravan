//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "Timer_Class"
	Revision           = "0.0"
	GUID               = "{0C6B64BE-D345-4D5B-8691-8B8BD92C5FB4}"
	RealtimeTask       = "false"
	CyclicTask         = "true"
	DefCyclictime      = "100 �s"
	BackgroundTask     = "false"
	Sigmatek           = "false"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(630,180)">
	<Channels>
		<Server Name="ClassSvr" GUID="{B8BC0B1D-52E1-4194-B920-2AEC5B5DCAF2}" Visualized="false" Remotely="true" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="Nachtmodus_S" GUID="{4450D9BA-555E-4169-B4B8-20CAEBD2519E}" Visualized="true" Remotely="true" Initialize="false" WriteProtected="false" Retentive="SRam"/>
	</Channels>
</Class>
*)
Timer_Class : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
	Nachtmodus_S 	: SvrCh_DINT;
  //Clients:
  //Variables:
  //Functions:
	
	FUNCTION VIRTUAL GLOBAL CyWork
		VAR_INPUT
			EAX 	: UDINT;
		END_VAR
		VAR_OUTPUT
			state (EAX) 	: UDINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB Timer_Class::@CT_
0$UINT,
2#0100000000000010$UINT, //TY_TIMER_CLASS
0$UINT, 0$UINT, (SIZEOF(::Timer_Class))$UINT, 
2$UINT, 0$UINT, 0$UINT, 
TO_UDINT(440431991), "Timer_Class", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::Timer_Class.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::Timer_Class.Nachtmodus_S.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000001000$UINT, TO_UDINT(1596192779), "Nachtmodus_S", 
//Clients:
END_FUNCTION


#define USER_CNT_Timer_Class 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_Timer_Class] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION Timer_Class::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_Timer_Class, pCmd := #vmt.CmdTable);
	vmt.CmdTable.CyWork		:= #CyWork();
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	Nachtmodus_S.pMeth			:= StoreMethod( #M_RD_DIRECT(), #M_WR_DIRECT() );
	IF Nachtmodus_S.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION VIRTUAL GLOBAL Timer_Class::CyWork
	VAR_INPUT
		EAX 	: UDINT;
	END_VAR
	VAR_OUTPUT
		state (EAX) 	: UDINT;
	END_VAR

	state := READY;

END_FUNCTION