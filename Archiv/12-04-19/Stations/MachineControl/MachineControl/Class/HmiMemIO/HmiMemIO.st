//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION
#include "..\..\Source\Common\hmi_nuc.h"

(*!
<Class
	Name               = "HmiMemIO"
	Revision           = "0.0"
	GUID               = "{687B2A9F-A9AC-4091-9C1C-D312C0AEBC66}"
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
		<Server Name="ClassSvr" GUID="{73A1F525-63C4-490A-A84F-EAB63FBF05CC}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="File" Required="true" Internal="false"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Source\Common\hmi_nuc.h" Include="true"/>
		</Files>
	</Dependencies>
</Class>
*)
HmiMemIO : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
  //Clients:
	File 	: CltChCmd_HmiFile;
  //Variables:
		No 	: UDINT;
		Ptr 	: ^HMI_CTRL_IO;
  //Functions:
	
	FUNCTION HmiMemIO
		VAR_OUTPUT
			ret_code 	: ConfStates;
		END_VAR;
	
	FUNCTION GLOBAL Load
		VAR_OUTPUT
			retcode 	: DINT;
		END_VAR;
	
	FUNCTION GLOBAL Free;
	
	FUNCTION HMI_CTRL_IO_Load
		VAR_INPUT
			tmp 	: ^HMI_CTRL_IO;
		END_VAR
		VAR_OUTPUT
			retcode 	: BOOL;
		END_VAR;
	
	FUNCTION GLOBAL Get
		VAR_INPUT
			index 	: UDINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: ^HMI_CTRL_IO;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd HmiFile


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB HmiMemIO::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_HMIMEMIO
0$UINT, 0$UINT, (SIZEOF(::HmiMemIO))$UINT, 
1$UINT, 1$UINT, 0$UINT, 
TO_UDINT(568511237), "HmiMemIO", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::HmiMemIO.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
//Clients:
(::HmiMemIO.File.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3121273764), "File", TO_UDINT(2548286290), "HmiFile", 0$UINT, 4$UINT, 
END_FUNCTION


#define USER_CNT_HmiMemIO 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_HmiMemIO] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION HmiMemIO::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_HmiMemIO, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	ret_code	:= HmiMemIO();

END_FUNCTION

//{{LSL_IMPLEMENTATION

FUNCTION HmiMemIO::HmiMemIO
	VAR_OUTPUT
		ret_code 	: ConfStates;
	END_VAR
  
  No  := 0;
  Ptr := NIL;
	ret_code := C_OK;

END_FUNCTION

FUNCTION GLOBAL HmiMemIO::Free
  var 
    tmp : ^HMI_CTRL_IO; 
  end_var

  tmp := Ptr$^HMI_CTRL_IO; 
  while(No) do
    No -= 1; 
    free_HMI_CTRL_IO(tmp); 
    tmp += sizeof(HMI_CTRL_IO); 
  end_while; 
  
  File.FMemory(#Ptr, 0);   
  No  := 0;
  Ptr := NIL; 

END_FUNCTION

FUNCTION HmiMemIO::HMI_CTRL_IO_Load
	VAR_INPUT
		tmp 	: ^HMI_CTRL_IO;
	END_VAR
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR
  var
    cv : udint;
    tmp32 : dint;
    tmp8 : usint;
  end_var

  cv := File.GetCompilerVersion(); 

  File.Read_HMI_ROOM(#tmp^.room);
  File.FRead(#tmp^.color_back, 1);
  File.FRead(#tmp^.color_text, 1);
  if(cv >= 41) then
    File.FRead(#tmp8, 1);
    File.FRead(#tmp8, 1);
  end_if;
  
  File.FRead(#tmp^.frame, 1);
 
  File.FRead(#tmp^.attrib, 4);
  File.FRead(#tmp^.font, 1);
  File.Read_HMI_CHKBIT(#tmp^.chkbit);
  File.Read_HMI_ANYTHING(#tmp^.server);
  File.Read_HMI_ANYTHING(#tmp^.anything1);
  File.Read_HMI_ANYTHING(#tmp^.anything2);
  File.Read_HMI_ANYTHING(#tmp^.anything3);
  File.FRead(#tmp^.iotype, 1);
  
  if(tmp^.iotype = HMI_IOT_BUTTON) then
    free_HMI_ANYTHING(#tmp^.anything3);
    File.Read_HMI_ANYTHING(#tmp^.anything3);
    File.Read_HMI_ANYTHING(#tmp^.anything4);
  end_if;
  
  File.Read_BOOL(#tmp^.writeprotect);
  File.FRead(#tmp^.access, 1);
  File.FRead(#tmp^.enterplus, 1);
  File.FRead(#tmp^.hotkey, sizeof(udint));
  File.Read_HMI_GFUNCT(#tmp^.gfunct);
  File.FRead(#tmp^.no_myio, sizeof(udint));

  if(cv >= 45) then
    File.FRead(#tmp^.h_next, 1);
    File.FRead(#tmp^.v_next, 1);
  else
    tmp^.h_next := to_usint(No);
    tmp^.v_next := to_usint(No);
  end_if;

  if(tmp^.iotype = HMI_IOT_BUTTON) then
    if(cv >= 45) then
      File.FRead(#tmp^.imagealign, 1); // ausrichtung von image im button
    end_if;
    if(cv >= 55) then
      File.FRead(#tmp8, 1);
      tmp^.act_momntry := false;
      if(tmp8 and 1) then
        tmp^.act_momntry := true;
      end_if;
      if(tmp8 and 16#80) then
        File.FRead(#tmp32, 4);
        tmp^.setval := tmp32;
        File.FRead(#tmp32, 4);
        tmp^.resetval := tmp32;
      end_if;
    end_if;  
    
    if(tmp^.server.ima = HMI_IMA_GARNIX) then
      // kennung f�r momentary button eintragen
      tmp^.server.ima   := HMI_IMA_DINT_CONSTANT;
      tmp^.server.value := 0;
    end_if;
//    pt^.color_back := LMEDEFCOLOR; // set button transparent
  elsif(tmp^.iotype = HMI_IOT_SCHEMA) then
    if(tmp^.anything1.ima = HMI_IMA_V_IMAGESCHEMA) then
      tmp^.color_back := 1;
      tmp^.color_text := 0;
    end_if;
  end_if;
  
  if(cv >= 48) then
    File.FRead(#tmp^.selector, 1);
  end_if;
  
  if(cv >= 58) then
    if((tmp^.iotype = HMI_IOT_ENUMERATION) & (tmp^.writeprotect = false)) then
      // attention: IOT_ENUMERATION is not implemented, will be treated as numeric
      File.FRead(#tmp32, 1); // dump information about lineheight, lines per page and frametype
      File.FRead(#tmp32, 4); // dump information about lineheight, lines per page and frametype
    end_if;
  end_if;
    
  retcode := File.FChkFile();

END_FUNCTION

FUNCTION GLOBAL HmiMemIO::Load
	VAR_OUTPUT
		retcode 	: DINT;
	END_VAR
  var 
    anz : udint;
    tmp : ^HMI_CTRL_IO;
  end_var;
  
  if(File.FRead(#anz, 4) = true) then
    if(File.FMemory(#Ptr$^void, anz * sizeof(HMI_CTRL_IO)) = true) then
      tmp := Ptr;
      No  := 0;
      while(anz) do
        init_HMI_CTRL_IO(tmp);
        HMI_CTRL_IO_Load(tmp);
        tmp += sizeof(HMI_CTRL_IO);
        anz -= 1;
        No  += 1;
      end_while;
    end_if;
  end_if;
    
  retcode  := File.FChkFile();
  ClassSvr := to_dint(No);

END_FUNCTION

FUNCTION GLOBAL HmiMemIO::Get
	VAR_INPUT
		index 	: UDINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: ^HMI_CTRL_IO;
	END_VAR

  retcode := NIL;
  if(index < No) then
    retcode := Ptr + (index * sizeof(HMI_CTRL_IO));
  end_if;
  
END_FUNCTION