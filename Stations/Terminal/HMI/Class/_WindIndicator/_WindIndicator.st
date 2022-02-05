//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "_WindIndicator"
	Revision           = "1.0"
	GUID               = "{508CA429-C164-4B5E-9887-AB29EA75A262}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	DefCyclictime      = "100 ms"
	BackgroundTask     = "false"
	DefBackground      = "100 ms"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(428,120)"
	Comment            = "class for the windindicator &#13;&#10;draws an arrow depending on the winddirection">
	<Channels>
		<Client Name="WindDirection" Required="true" Internal="false" Comment="connect to the wind direction"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\_WindIndicator\_WindIndicator_de.pdf"/>
			<File Path=".\Class\_WindIndicator\_WindIndicator_en.pdf"/>
		</Files>
	</Dependencies>
	<RevDoku>
		<Owner Company="Sigmatek GmbH &amp; Co KG"/>
		<Dokumentation Revision="1.0" Date="2017-10-16" Author="KaiAnd" Company="Sigmatek GmbH &amp; Co KG" Description="class created (taken from the class SCL_WeatherIndicator V.0.1)"/>
	</RevDoku>
	<Network Name="_WindIndicator">
		<!-- List of Components in this network -->
		<Components>
			<Object
				Name       = "_base"
				GUID       = "{A455B4D4-13EE-4A27-B075-F019A9A95FEC}"
				Class      = "_MyIO"
				Position   = "(218,120)"
				Visualized = "true">
				<Channels>
					<Server Name="Refresh"/>
					<Server Name="Server0"/>
					<Client Name="Graphic"/>
					<Client Name="Lse"/>
				</Channels>
			</Object>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
			<Connection Source="this.Server0" Destination="_base.Server0" Vertices="(690,210),(518,210),"/>
			<Connection Source="this.Refresh" Destination="_base.Refresh" Vertices="(690,270),(518,270),"/>
			<Connection Source="_base.Lse" Destination="this.Lse" Vertices="(218,210),(38,210),"/>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
#pragma using _MyIO

_WindIndicator : CLASS
: _MyIO
  //Servers:
  //Clients:
	WindDirection 	: CltCh_DINT;
  //Variables:
  //Functions:
				//! <Function Comment="this method is called everytime when system want&apos;s to redraw the io&#13;&#10;&#13;&#10;pio ....... pointer to io information&#13;&#10;pr ........ pointer to result information&#13;&#10;pv ........ pointer to io variableinformation&#13;&#10;input ..... TRUE it&apos;s an input / FALSE it&apos;s an output&#13;&#10;&#13;&#10;for the returnstatement there are 3 different possibilities&#13;&#10;_IDLE ..... the system should goon like it is (system goes on)&#13;&#10;_IDIDIT ... i did it (system is ready)&#13;&#10;_IFAILED .. i tried to do my best, but i failed (system is ready)&#13;&#10;&#13;&#10;if you want to draw the io let&apos;s return _IDIDIT&#13;&#10;" Name="Draw"/>
	FUNCTION __CDECL VIRTUAL GLOBAL Draw
		VAR_INPUT
			pio 	: ^_IO;
			pr 	: ^_RESULT;
			pv 	: ^_VARIABLE;
			input 	: BOOL;
		END_VAR
		VAR_OUTPUT
			retcode (EAX) 	: _DOIT;
		END_VAR;
				//! <Function Comment="method is called cyclic during object is on screen&#13;&#10;&#13;&#10;pio ....... pointer to io information&#13;&#10;input .... TRUE it&apos;s an input / FALSE it&apos;s an output&#13;&#10;" Name="IF_Run"/>
	FUNCTION __CDECL VIRTUAL GLOBAL IF_Run
		VAR_INPUT
			pio 	: ^_IO;
			input 	: BOOL;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB _WindIndicator::@CT_
0$UINT,
2#0100000000000000$UINT, //TY__WINDINDICATOR
1$UINT, 0$UINT, (SIZEOF(::_WindIndicator))$UINT, 
0$UINT, 1$UINT, 0$UINT, 
TO_UDINT(428324901), "_WindIndicator", //Class
TO_UDINT(2980745877), "_MyIO", 0$UINT, 3$UINT, //Baseclass
//Servers:
//Clients:
(::_WindIndicator.WindDirection.pCh)$UINT, _CH_CLT_DATA$UINT, 2#0000000000000010$UINT, TO_UDINT(1504293899), "WindDirection", 
END_FUNCTION


#define USER_CNT__WindIndicator 17

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT__WindIndicator] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION _WindIndicator::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
		nCmdSize	: UINT;
	END_VAR

	ret_code	:= _MyIO::@STD();
	IF ret_code <> C_OK THEN
		RETURN;
	END_IF;
	nCmdSize		:= _MyIO::Server0.pMeth^.nCmds$UINT*SIZEOF(pVoid) + CMDMETH.Init;

	_memcpy((#vmt.CmdTable)$^USINT, _MyIO::Server0.pMeth, nCmdSize);
	vmt.CmdTable.nCmds		:= nSTDCMD + USER_CNT__WindIndicator;
#pragma warning (disable : 74)
	vmt.UserFcts[3]		:= #Draw();

#pragma warning (default : 74)
#pragma warning (disable : 74)
	vmt.UserFcts[7]		:= #IF_Run();

#pragma warning (default : 74)
	_MyIO::Server0.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF _MyIO::Server0.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;

END_FUNCTION

//{{LSL_IMPLEMENTATION


FUNCTION __CDECL VIRTUAL GLOBAL _WindIndicator::IF_Run
	VAR_INPUT
		pio 	: ^_IO;
		input 	: BOOL;
	END_VAR
  
  WindDirection:=WindDirection.Read();
  if (Server0 <> (WindDirection - 90)) then
    Server0 := WindDirection - 90 ;
  end_if;

END_FUNCTION


FUNCTION __CDECL VIRTUAL GLOBAL _WindIndicator::Draw
#pragma warning (disable : 73)
	VAR_INPUT
		pio 	: ^_IO;
		pr 	: ^_RESULT;
		pv 	: ^_VARIABLE;
		input 	: BOOL;
	END_VAR
	VAR_OUTPUT
		retcode (EAX) 	: _DOIT;
	END_VAR
#pragma warning (default : 73)
  VAR
  	act : _NEWSCREEN;
    IndiPos : ARRAY[0..4] of _DOT;
  END_VAR

  WindDirection:=WindDirection.Read();
  Server0 := WindDirection - 90 ;
  
  // coordinates of the arrow-points
  IndiPos[0].x := -55; 
  IndiPos[0].y :=   0;
  IndiPos[1].x :=  55; 
  IndiPos[1].y :=  35;
  IndiPos[2].x :=  20; 
  IndiPos[2].y :=   0; 
  IndiPos[3].x :=  55; 
  IndiPos[3].y := -35;
  IndiPos[4] := IndiPos[0]; 

  push_screen(#act);
  
  // first clear the _myIO area
  Graphic.PutImage(#pio^.image, DEFKOORD , DEFKOORD);   
  
  // draw the new arrow
  selfmade_indicator(#pio^.space, 0 - Server0, Graphic.MakeColor(WHITE,GREEN), #IndiPos[0] , 5);
  
  pop_screen(#act);
  copy_screen(#act, #pio^.space);
  
  retcode := _IDIDIT;

END_FUNCTION
