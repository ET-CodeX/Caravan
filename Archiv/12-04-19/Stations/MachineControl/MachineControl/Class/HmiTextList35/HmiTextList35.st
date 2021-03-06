//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "HmiTextList35"
	Revision           = "0.1"
	GUID               = "{EB971045-2B53-419B-8D2F-0E4A1E8C6033}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)">
	<Channels>
		<Server Name="ByteSize" GUID="{732EB2B6-B1B0-47E9-A993-1EA96870AC4B}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Server Name="ClassSvr" GUID="{C345F8DD-B73F-4AC9-866B-009BB27F6301}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
	</Channels>
	<RevDoku>
		<Owner Company="sigmatek" Author="kolott"/>
		<Dokumentation Revision="0.1" Date="2014-03-28" Author="kolott" Company="sigmatek" Description="server ByteSize added"/>
	</RevDoku>
</Class>
*)
HmiTextList35 : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_UDINT;
	ByteSize 	: SvrCh_UDINT;
  //Clients:
  //Variables:
		Ptr 	: ^void;
		xData : ARRAY [0..20000] OF UINT;

		xOffset : ARRAY [0..5000] OF UDINT;

		xSize 	: UDINT;
  //Functions:
	
	FUNCTION GLOBAL End
		VAR_OUTPUT
			retcode 	: ^void;
		END_VAR;
	
	FUNCTION GLOBAL Free;
	
	FUNCTION GLOBAL Start;
	
	FUNCTION GLOBAL AddEntry
		VAR_INPUT
			txt 	: ^UINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;
		END_VAR;
	
	FUNCTION SeekText
		VAR_INPUT
			txt 	: ^UINT;
			length 	: UDINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB HmiTextList35::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_HMITEXTLIST35
0$UINT, 1$UINT, (SIZEOF(::HmiTextList35))$UINT, 
2$UINT, 0$UINT, 0$UINT, 
TO_UDINT(2738661249), "HmiTextList35", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::HmiTextList35.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
(::HmiTextList35.ByteSize.pMeth)$UINT, _CH_SVR$UINT, 2#0000000000000000$UINT, TO_UDINT(1607089543), "ByteSize", 
//Clients:
END_FUNCTION


#define USER_CNT_HmiTextList35 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_HmiTextList35] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION HmiTextList35::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR

	ret_code := C_OK;

END_FUNCTION

//{{LSL_IMPLEMENTATION

#includeC "..\LseEasy\Create.h"

FUNCTION GLOBAL HmiTextList35::Free

  Start();

END_FUNCTION

FUNCTION GLOBAL HmiTextList35::Start

  xSize    := 0;
  Ptr      := NIL;
  ByteSize := 0;

END_FUNCTION

FUNCTION HmiTextList35::SeekText
  var_input
    txt : ^uint;
    length : udint;
  end_var
  var_output
    retcode : udint;
  end_var
  var
    ptl : ^_BOX_TEXTLIST;
    nox : udint;
    ph : ^uint;
  end_var

  ptl$^void := Ptr;

  if(ptl <> NIL) then
    nox := ptl^.no;
    while(nox) do
      nox -= 1;
      ph := #ptl^.data[0] + xOffset[nox];
      if(ph^ = txt^) then
        if(_memcmp(ph, txt, length) = 0) then
          retcode := nox;
          return;
        end_if;  
      end_if;
    end_while;
  end_if;
  
  retcode := 16#FFFFFFFF;

END_FUNCTION

FUNCTION GLOBAL HmiTextList35::AddEntry
  var_input
    txt : ^uint;
  end_var
  var_output
    retcode : udint;
  end_var
  var
    ptl : ^_BOX_TEXTLIST;
    length : udint;
    ph : ^uint;
  end_var

  retcode := 16#FFFFFFFF;

  if(txt <> NIL) then
    if(Ptr = NIL) then
      xSize := 0;
      Ptr   := #xData[0];
      _memset(Ptr, 0, sizeof(xData));
      _memset(#xOffset[0], 16#FF, sizeof(xOffset));
      ptl$^void         := Ptr;
      ptl^.no           := 0;
      ptl^.boxhdr.size  := 0;
      ptl^.boxhdr.crc32 := 0;
    end_if;

    ptl$^void := Ptr;
    length    := StrLen3(txt) + 1;
    length    := length * 2;
    retcode   := SeekText(txt, length);
    
    if(retcode = 16#FFFFFFFF) then
      if((xSize + length) < (sizeof(xData) - sizeof(_BIGBOX_HEADER) - 4)) then
        ph               := #ptl^.data[0] + xSize;
        _memcpy(ph, txt, length);
        retcode          := ptl^.no;
        xOffset[retcode] := xSize;
        xSize            += length;
        ptl^.no          += 1;
      end_if;
    end_if;
  end_if;

END_FUNCTION

FUNCTION GLOBAL HmiTextList35::End
	VAR_OUTPUT
		retcode 	: ^void;
	END_VAR
  var
    ptl : ^_BOX_TEXTLIST;
  end_var

  if(Ptr <> NIL) then
    ptl$^void := Ptr;
    ClassSvr  := ptl^.no;
    ptl^.boxhdr.size := sizeof(ptl^.boxhdr) + sizeof(ptl^.no);
    end_BIGBOX_HEADER(#ptl^.boxhdr, xSize);
    ByteSize := ptl^.boxhdr.size;
  end_if;
  
  retcode := Ptr;

END_FUNCTION


