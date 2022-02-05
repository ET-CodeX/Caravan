//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "HmiAsciiBuffer"
	Revision           = "0.0"
	GUID               = "{ECA6FA96-5F14-4EFA-9874-CCBA360DA682}"
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
		<Server Name="ClassSvr" GUID="{F71D3F92-7D00-4AAC-9D7C-9115428AEB5C}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
		<Client Name="File" Required="true" Internal="false"/>
		<Client Name="StringLib" Required="true" Internal="false"/>
	</Channels>
</Class>
*)
HmiAsciiBuffer : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
  //Clients:
	File 	: CltChCmd_HmiFile;
	StringLib 	: CltChCmd_HmiStrLib;
  //Variables:
		Default 	: CHAR;
		No 	: UDINT;
		Ptr 	: ^CHAR;
		Change 	: BOOL;
		Size 	: UDINT;
		GuidePost 	: ^UDINT;
  //Functions:
	
	FUNCTION HmiAsciiBuffer
		VAR_OUTPUT
			ret_code 	: ConfStates;
		END_VAR;
	
	FUNCTION GLOBAL GetText
		VAR_INPUT
			txtno 	: UDINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: ^CHAR;
		END_VAR;
	
	FUNCTION GLOBAL AddText
		VAR_INPUT
			src 	: ^CHAR;
		END_VAR
		VAR_OUTPUT
			retcode 	: BOOL;
		END_VAR;
	
	FUNCTION GLOBAL Free;
	
	FUNCTION GLOBAL Load
		VAR_OUTPUT
			retcode 	: BOOL;
		END_VAR;
	
	FUNCTION GLOBAL GetNo
		VAR_OUTPUT
			retcode 	: UDINT;
		END_VAR;
	
	FUNCTION GLOBAL MakeGuidePost;
	
	FUNCTION GLOBAL KillGuidePost;
	
	FUNCTION GLOBAL GetNoByName
		VAR_INPUT
			name 	: ^CHAR;
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;
		END_VAR;
	
	FUNCTION GLOBAL OverloadLight
		VAR_INPUT
			xxno 	: DINT;
		END_VAR;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

#pragma usingLtd HmiFile
#pragma usingLtd HmiStrLib


//}}LSL_DECLARATION


FUNCTION GLOBAL TAB HmiAsciiBuffer::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_HMIASCIIBUFFER
0$UINT, 0$UINT, (SIZEOF(::HmiAsciiBuffer))$UINT, 
1$UINT, 2$UINT, 0$UINT, 
TO_UDINT(3253426089), "HmiAsciiBuffer", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::HmiAsciiBuffer.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
//Clients:
(::HmiAsciiBuffer.File.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3121273764), "File", TO_UDINT(2548286290), "HmiFile", 0$UINT, 4$UINT, 
(::HmiAsciiBuffer.StringLib.pCh)$UINT, _CH_CLT_OBJ$UINT, 2#0000000000000010$UINT, TO_UDINT(3243119075), "StringLib", TO_UDINT(103556616), "HmiStrLib", 0$UINT, 2$UINT, 
END_FUNCTION


#define USER_CNT_HmiAsciiBuffer 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_HmiAsciiBuffer] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION HmiAsciiBuffer::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_HmiAsciiBuffer, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	ret_code	:= HmiAsciiBuffer();

END_FUNCTION

//{{LSL_IMPLEMENTATION

FUNCTION HmiAsciiBuffer::HmiAsciiBuffer
	VAR_OUTPUT
		ret_code 	: ConfStates;
	END_VAR

	ret_code := C_OK;
  
  Ptr := NIL; 
  No := 0; 
  Default := 0; 
  Change := false;
  Size := 0; 
  GuidePost := NIL;

END_FUNCTION

FUNCTION GLOBAL HmiAsciiBuffer::GetText
	VAR_INPUT
		txtno 	: UDINT;
	END_VAR
	VAR_OUTPUT
		retcode 	: ^char;
	END_VAR
  var
    ph : ^udint;
  end_var

  retcode := #Default; 

  if(Ptr <> NIL) then
    if(txtno < No) then
      if(GuidePost = NIL) then
        retcode := Ptr;
        while(txtno) do
          txtno   -= 1;
          retcode += (StringLib.StrLen(retcode, sizeof(char)) + sizeof(char));
        end_while; 
      else  
        ph      := GuidePost + (4 * txtno);
        retcode := Ptr + ph^;
      end_if; 
    end_if;
  end_if; 

END_FUNCTION


FUNCTION GLOBAL HmiAsciiBuffer::AddText
	VAR_INPUT
		src 	: ^char;
	END_VAR
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR
  var
    len : udint;
    tmp : udint; 
  end_var;   

  retcode := false; 
  len     := StringLib.StrLen(src, sizeof(char)) + 1;
  tmp     := Size + len;

  if(StringLib.XMemory(#Ptr, tmp) = true) then
 	  StringLib.StrCpy(Ptr + Size, sizeof(char), src, sizeof(char));
	  No      += 1;
	  Size    := tmp;
	  Change  := true; 
    retcode := true;
    KillGuidePost();
  end_if; 
  
END_FUNCTION


FUNCTION GLOBAL HmiAsciiBuffer::Free

  KillGuidePost();
  StringLib.XMemory(#Ptr, 0); 
  Ptr := NIL; 
  No := 0; 
  Default := 0; 
  Change := false;
  Size := 0;
  ClassSvr := 0;
  
END_FUNCTION


FUNCTION GLOBAL HmiAsciiBuffer::Load
	VAR_OUTPUT
		retcode 	: BOOL;
	END_VAR
  var
    chrsize : usint; 
    txtno : udint; 
    txtsize : udint; 
  end_var

	// [] .......... sizeof character
	// [][][][] .... no of text (ab compiler version 32 4byte, vorher 2byte)
	// [][][][] .... no of characters
	// [ ........... text

  retcode := false; 
  Free(); 

  File.FRead(#chrsize, 1); 
  File.FRead(#txtno, 4);
  File.FRead(#txtsize, 4);

  if(File.FChkFile() = true) then 
    if(chrsize = sizeof(char)) then
      File.FMemory(#Ptr, txtsize); 
      File.FRead(Ptr, txtsize);     
        
      if(File.FChkFile() = true) then
        Size    := txtsize; 
        No      := txtno;
        retcode := true;
      else
        Free(); 
      end_if; 
    end_if; 
  end_if; 
  
  ClassSvr := to_dint(No); 
    
END_FUNCTION

FUNCTION GLOBAL HmiAsciiBuffer::GetNo
	VAR_OUTPUT
		retcode 	: UDINT;
	END_VAR

  retcode := No;

END_FUNCTION

FUNCTION GLOBAL HmiAsciiBuffer::MakeGuidePost

  StringLib.MakeGuidePost(#GuidePost, Ptr, No, sizeof(char));
  
END_FUNCTION


FUNCTION GLOBAL HmiAsciiBuffer::KillGuidePost

  StringLib.XMemory(#GuidePost, 0);

END_FUNCTION

FUNCTION GLOBAL HmiAsciiBuffer::GetNoByName
	VAR_INPUT
		name 	: ^char;
	END_VAR
	VAR_OUTPUT
		retcode 	: UDINT;
	END_VAR
  var
    chr : char;
    ph : ^char;
    poff : ^udint;
    txtno : udint;
  end_var

  if(Ptr <> NIL)&(No > 0) then
    txtno := No; 
    chr   := name^;
     
    if(GuidePost = NIL) then
      ph := Ptr;
      while(txtno) do
        if(ph^ = chr) then
          if(StringLib.StrCmp(ph, sizeof(char), name, sizeof(char)) = 0) then
            retcode := No - txtno;
            return;
          end_if;
        end_if;
        ph += (StringLib.StrLen(ph, sizeof(char)) + sizeof(char));
        txtno -= 1;
      end_while; 
    else
      retcode := 0;
      poff    := GuidePost;
      while(txtno) do
        ph := Ptr + poff^;
        if(ph^ = chr) then
          if(StringLib.StrCmp(ph, sizeof(char), name, sizeof(char)) = 0) then
            return;
          end_if;
        end_if;
        retcode += 1;
        txtno   -= 1;
        poff    += 4;
      end_while;
    end_if; 
  end_if; 

  retcode := 16#FFFFFFFF; 

END_FUNCTION

FUNCTION GLOBAL HmiAsciiBuffer::OverloadLight
	VAR_INPUT
		xxno 	: DINT;
	END_VAR
  var 
    ph : ^usint;
    anz : udint;
  end_var
 
  if(Size > 1) then 
 
    ph  := Ptr;
    anz := Size - 1;

    while(anz) do
      if(ph$^uint^ = 0x5858) then
        ph^ := '0' + (xxno$usint / 10);   
        ph  += 1;
        ph^ := '0' + (xxno$usint mod 10); 
      end_if;
      ph  += 1;
      anz -= 1;
    end_while;
  end_if;  

END_FUNCTION