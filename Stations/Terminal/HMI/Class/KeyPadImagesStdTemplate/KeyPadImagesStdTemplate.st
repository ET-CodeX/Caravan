//This file was generated by the LASAL2 CodeGenerator  -- 
//Please, do not edit this file (it might be overwritten by the next generator run)
//{{LSL_DECLARATION

(*!
<Class
	Name               = "KeyPadImagesStdTemplate"
	Revision           = "2.0"
	GUID               = "{FA8EA22E-EE00-4817-81BD-EF78A5CA7676}"
	RealtimeTask       = "false"
	CyclicTask         = "false"
	BackgroundTask     = "false"
	Sigmatek           = "true"
	OSInterface        = "false"
	HighPriority       = "false"
	Automatic          = "false"
	UpdateMode         = "Prescan"
	IconPath           = ".\Class\KeyPadImages\KeyPad.ico"
	SharedCommandTable = "true"
	Objectsize         = "(284,120)"
	Comment            = "class is used to get several images used to display keyboard">
	<Channels>
		<Server Name="ClassSvr" GUID="{CE9C1DB1-D254-4CAA-8BC9-D761C82F280C}" Visualized="false" Initialize="false" WriteProtected="true" Retentive="false"/>
	</Channels>
	<Dependencies>
		<Files>
			<File Path=".\Class\KeyPadImages\KeyPadImages.pdf"/>
			<File Path=".\Class\KeyPadImages\KeyPadImages_eng.pdf"/>
		</Files>
	</Dependencies>
	<RevDoku>
		<Owner Company="Sigmatek" Author="Matthias Schuiki"/>
		<Dokumentation Revision="2.0" Date="2017-07-12" Author="BalKar&#13;&#10;KaiAnd" Company="Sigmatek" Description="implemented &quot;arrow left&quot; and &quot;arrow right&quot; buttons for positioning the cursor within the input string&#13;&#10;(also the tables with BMO-Codes for the arrow bitmaps)"/>
		<Dokumentation Revision="1.0" Date="2016-04-20" Author="Matthias Schuiki" Company="Sigmatek" Description="release"/>
	</RevDoku>
	<Network Name="KeyPadImagesStdTemplate">
		<!-- List of Components in this network -->
		<Components>
		</Components>
		<Comments>
		</Comments>
		<!-- List of Connections in this network -->
		<Connections>
		</Connections>
		<!-- Headerfiles -->
		<Options>
		</Options>
	</Network>
</Class>
*)
KeyPadImagesStdTemplate : CLASS
  //Servers:
	ClassSvr 	: SvrChCmd_DINT;
  //Clients:
  //Variables:
  //Functions:
	
	FUNCTION KeyPadImagesStdTemplate
		VAR_OUTPUT
			ret_code 	: ConfStates;
		END_VAR;
	
	FUNCTION GLOBAL GetImage
		VAR_INPUT
			imgid 	: UDINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: UDINT;
		END_VAR;
	
	FUNCTION GLOBAL GetTitleLineHeight
		VAR_INPUT
			frame 	: DINT;
		END_VAR
		VAR_OUTPUT
			retcode 	: INT;
		END_VAR;
	
	FUNCTION TAB ImgTab_INC_released;
	
	FUNCTION TAB ImgTab_INC_pressed;
	
	FUNCTION TAB ImgTab_DEC_released;
	
	FUNCTION TAB ImgTab_DEC_pressed;
	
	FUNCTION TAB ImgTab_SHIFT;
	
	FUNCTION TAB ImgTab_ENTER_released;
	
	FUNCTION TAB ImgTab_ENTER_pressed;
	
	FUNCTION TAB ImgTab_BKSPC_released;
	
	FUNCTION TAB ImgTab_BKSPC_pressed;
	
	FUNCTION TAB ImgTab_SPACE_released;
	
	FUNCTION TAB ImgTab_SPACE_pressed;
	
	FUNCTION TAB ImgTab_ARROW_left_released;
	
	FUNCTION TAB ImgTab_ARROW_left_pressed;
	
	FUNCTION TAB ImgTab_ARROW_right_released;
	
	FUNCTION TAB ImgTab_ARROW_right_pressed;
  //Tables:
	FUNCTION @STD
		VAR_OUTPUT
			ret_code	: CONFSTATES;
		END_VAR;
	FUNCTION GLOBAL TAB @CT_;
END_CLASS;

//}}LSL_DECLARATION


FUNCTION GLOBAL TAB KeyPadImagesStdTemplate::@CT_
0$UINT,
2#0100000000000000$UINT, //TY_KEYPADIMAGESSTDTEMPLATE
2$UINT, 0$UINT, (SIZEOF(::KeyPadImagesStdTemplate))$UINT, 
1$UINT, 0$UINT, 0$UINT, 
TO_UDINT(980817768), "KeyPadImagesStdTemplate", //Class
TO_UDINT(0), 0, 0$UINT, 0$UINT, //Baseclass
//Servers:
(::KeyPadImagesStdTemplate.ClassSvr.pMeth)$UINT, _CH_CMD$UINT, 2#0000000000000000$UINT, TO_UDINT(619352855), "ClassSvr", 
//Clients:
END_FUNCTION


#define USER_CNT_KeyPadImagesStdTemplate 0

TYPE
	_LSL_STD_VMETH	: STRUCT
			CmdTable	: CMDMETH;
			UserFcts	: ARRAY[0..USER_CNT_KeyPadImagesStdTemplate] OF ^Void;
	END_STRUCT;
END_TYPE

FUNCTION KeyPadImagesStdTemplate::@STD
	VAR_OUTPUT
		ret_code	: CONFSTATES;
	END_VAR
	VAR
		vmt	: _LSL_STD_VMETH;
	END_VAR

	//Command Methods
	InitCmdTable (nCmd := nSTDCMD + USER_CNT_KeyPadImagesStdTemplate, pCmd := #vmt.CmdTable);
	ClassSvr.pMeth		:= StoreCmd (pCmd := #vmt.CmdTable, SHARED);

	IF ClassSvr.pMeth THEN
		ret_code	:= C_OK;
	ELSE
		ret_code	:= C_OUTOF_NEAR;
		RETURN;
	END_IF;
	ret_code	:= KeyPadImagesStdTemplate();

END_FUNCTION

//{{LSL_IMPLEMENTATION

VAR_PRIVATE
  kpImgNo : array[0..15] of udint;
END_VAR

FUNCTION KeyPadImagesStdTemplate::KeyPadImagesStdTemplate
VAR_OUTPUT
  ret_code 	: ConfStates;
END_VAR
VAR
  no : udint;
END_VAR

  no := sizeof(kpImgNo) / sizeof(kpImgNo[0]);
  while(no) do
    no -= 1;
    kpImgNo[no] := DEFSCOPE;
  end_while;
  
	ret_code := C_OK;

END_FUNCTION

FUNCTION GLOBAL KeyPadImagesStdTemplate::GetImage
VAR_INPUT
  imgid 	: UDINT;
END_VAR
VAR_OUTPUT
  retcode 	: UDINT;
END_VAR

  retcode := DEFSCOPE;
  if(imgid < (sizeof(kpImgNo) / sizeof(kpImgNo[0]))) then
    case (imgid) of
      0 : kpImgNo[0]  := ImageList_Add_BMO("_@INC_released",          #ImgTab_INC_released() + 4);
      1 : kpImgNo[1]  := ImageList_Add_BMO("_@INC_pressed",           #ImgTab_INC_pressed() + 4);
      2 : kpImgNo[2]  := ImageList_Add_BMO("_@DEC_released",          #ImgTab_DEC_released() + 4);
      3 : kpImgNo[3]  := ImageList_Add_BMO("_@DEC_pressed",           #ImgTab_DEC_pressed() + 4);
      4 : kpImgNo[4]  := ImageList_Add_BMO("_@SHIFT",                 #ImgTab_SHIFT() + 4);
      5 : kpImgNo[5]  := ImageList_Add_BMO("_@ENTER_released",        #ImgTab_ENTER_released() + 4);
      6 : kpImgNo[6]  := ImageList_Add_BMO("_@ENTER_pressed",         #ImgTab_ENTER_pressed() + 4);
      7 : kpImgNo[7]  := ImageList_Add_BMO("_@BKSPC_released",        #ImgTab_BKSPC_released() + 4);
      8 : kpImgNo[8]  := ImageList_Add_BMO("_@BKSPC_pressed",         #ImgTab_BKSPC_pressed() + 4);
      9 : kpImgNo[9]  := ImageList_Add_BMO("_@SPACE_released",        #ImgTab_SPACE_released() + 4);
      10: kpImgNo[10] := ImageList_Add_BMO("_@SPACE_pressed",         #ImgTab_SPACE_pressed() + 4);
      11: kpImgNo[11] := ImageList_Add_BMO("_@ARROW_left_released",   #ImgTab_ARROW_left_released() + 4);   // v2.0
      12: kpImgNo[12] := ImageList_Add_BMO("_@ARROW_left_pressed",    #ImgTab_ARROW_left_pressed() + 4);    // v2.0
      13: kpImgNo[13] := ImageList_Add_BMO("_@ARROW_right_released",  #ImgTab_ARROW_right_released() + 4);  // v2.0
      14: kpImgNo[14] := ImageList_Add_BMO("_@ARROW_right_pressed",   #ImgTab_ARROW_right_pressed() + 4);   // v2.0
      15: 
      16: 
      17: 
      18: 
      19: 
      20: 
    end_case;
    retcode := kpImgNo[imgid];
  end_if;

END_FUNCTION

FUNCTION GLOBAL KeyPadImagesStdTemplate::GetTitleLineHeight
VAR_INPUT
  frame 	: DINT;
END_VAR
VAR_OUTPUT
  retcode 	: INT;
END_VAR
  
  retcode := 30;
  case frame of
    111, 101, 112, 105,
    FRAME_CORAL_CANCEL : retcode := 36;
  end_case;

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_INC_released

  0x4D,0x50,0x64,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,
  0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,
  0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,
  0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,
  0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,
  0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x12,0x96,0xB5,0x0B,0x1F,0xF8,0x0B,0x1F,0xF8,0x12,0x96,0xB5,
  0x0B,0x1F,0xF8,0x0C,0x1F,0xF8,0x10,0x96,0xB5,0x0C,0x1F,0xF8,0x0D,0x1F,0xF8,0x0E,
  0x96,0xB5,0x0D,0x1F,0xF8,0x0E,0x1F,0xF8,0x0C,0x96,0xB5,0x0E,0x1F,0xF8,0x0F,0x1F,
  0xF8,0x0A,0x96,0xB5,0x0F,0x1F,0xF8,0x10,0x1F,0xF8,0x08,0x96,0xB5,0x10,0x1F,0xF8,
  0x11,0x1F,0xF8,0x06,0x96,0xB5,0x11,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,
  0x1F,0xF8,0x13,0x1F,0xF8,0x02,0x96,0xB5,0x13,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_INC_pressed

  0x4D,0x50,0x64,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,
  0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,
  0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,
  0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,
  0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,
  0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x12,0xE7,0x39,0x0B,0x1F,0xF8,0x0B,0x1F,0xF8,0x12,0xE7,0x39,
  0x0B,0x1F,0xF8,0x0C,0x1F,0xF8,0x10,0xE7,0x39,0x0C,0x1F,0xF8,0x0D,0x1F,0xF8,0x0E,
  0xE7,0x39,0x0D,0x1F,0xF8,0x0E,0x1F,0xF8,0x0C,0xE7,0x39,0x0E,0x1F,0xF8,0x0F,0x1F,
  0xF8,0x0A,0xE7,0x39,0x0F,0x1F,0xF8,0x10,0x1F,0xF8,0x08,0xE7,0x39,0x10,0x1F,0xF8,
  0x11,0x1F,0xF8,0x06,0xE7,0x39,0x11,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,
  0x1F,0xF8,0x13,0x1F,0xF8,0x02,0xE7,0x39,0x13,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ARROW_left_released   // v.2.0

  0x4D,0x50,0x4C,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x0D,
  0x1F,0xF8,0x02,0x96,0xB5,0x19,0x1F,0xF8,0x0C,0x1F,0xF8,0x03,0x96,0xB5,0x19,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x04,0x96,0xB5,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,0x05,0x96,0xB5,
  0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0x96,0xB5,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,
  0x96,0xB5,0x19,0x1F,0xF8,0x07,0x1F,0xF8,0x08,0x96,0xB5,0x19,0x1F,0xF8,0x06,0x1F,
  0xF8,0x1D,0x96,0xB5,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,0x06,0x1F,0xF8,0x1D,0x96,0xB5,0x05,
  0x1F,0xF8,0x07,0x1F,0xF8,0x08,0x96,0xB5,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,0x96,
  0xB5,0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0x96,0xB5,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,
  0x05,0x96,0xB5,0x19,0x1F,0xF8,0x0B,0x1F,0xF8,0x04,0x96,0xB5,0x19,0x1F,0xF8,0x0C,
  0x1F,0xF8,0x03,0x96,0xB5,0x19,0x1F,0xF8,0x0D,0x1F,0xF8,0x02,0x96,0xB5,0x19,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ARROW_left_pressed   // v.2.0

  0x4D,0x50,0x4C,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x0D,
  0x1F,0xF8,0x02,0xE7,0x39,0x19,0x1F,0xF8,0x0C,0x1F,0xF8,0x03,0xE7,0x39,0x19,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x04,0xE7,0x39,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,0x05,0xE7,0x39,
  0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0xE7,0x39,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,
  0xE7,0x39,0x19,0x1F,0xF8,0x07,0x1F,0xF8,0x08,0xE7,0x39,0x19,0x1F,0xF8,0x06,0x1F,
  0xF8,0x1D,0xE7,0x39,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,0x06,0x1F,0xF8,0x1D,0xE7,0x39,0x05,
  0x1F,0xF8,0x07,0x1F,0xF8,0x08,0xE7,0x39,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,0xE7,
  0x39,0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0xE7,0x39,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,
  0x05,0xE7,0x39,0x19,0x1F,0xF8,0x0B,0x1F,0xF8,0x04,0xE7,0x39,0x19,0x1F,0xF8,0x0C,
  0x1F,0xF8,0x03,0xE7,0x39,0x19,0x1F,0xF8,0x0D,0x1F,0xF8,0x02,0xE7,0x39,0x19,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ARROW_right_released   // v.2.0

  0x4D,0x50,0x4C,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x19,
  0x1F,0xF8,0x02,0x96,0xB5,0x0D,0x1F,0xF8,0x19,0x1F,0xF8,0x03,0x96,0xB5,0x0C,0x1F,
  0xF8,0x19,0x1F,0xF8,0x04,0x96,0xB5,0x0B,0x1F,0xF8,0x19,0x1F,0xF8,0x05,0x96,0xB5,
  0x0A,0x1F,0xF8,0x19,0x1F,0xF8,0x06,0x96,0xB5,0x09,0x1F,0xF8,0x19,0x1F,0xF8,0x07,
  0x96,0xB5,0x08,0x1F,0xF8,0x19,0x1F,0xF8,0x08,0x96,0xB5,0x07,0x1F,0xF8,0x05,0x1F,
  0xF8,0x1D,0x96,0xB5,0x06,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1D,0x96,0xB5,0x06,
  0x1F,0xF8,0x19,0x1F,0xF8,0x08,0x96,0xB5,0x07,0x1F,0xF8,0x19,0x1F,0xF8,0x07,0x96,
  0xB5,0x08,0x1F,0xF8,0x19,0x1F,0xF8,0x06,0x96,0xB5,0x09,0x1F,0xF8,0x19,0x1F,0xF8,
  0x05,0x96,0xB5,0x0A,0x1F,0xF8,0x19,0x1F,0xF8,0x04,0x96,0xB5,0x0B,0x1F,0xF8,0x19,
  0x1F,0xF8,0x03,0x96,0xB5,0x0C,0x1F,0xF8,0x19,0x1F,0xF8,0x02,0x96,0xB5,0x0D,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ARROW_right_pressed    // v.2.0

  0x4D,0x50,0x4C,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x19,
  0x1F,0xF8,0x02,0xE7,0x39,0x0D,0x1F,0xF8,0x19,0x1F,0xF8,0x03,0xE7,0x39,0x0C,0x1F,
  0xF8,0x19,0x1F,0xF8,0x04,0xE7,0x39,0x0B,0x1F,0xF8,0x19,0x1F,0xF8,0x05,0xE7,0x39,
  0x0A,0x1F,0xF8,0x19,0x1F,0xF8,0x06,0xE7,0x39,0x09,0x1F,0xF8,0x19,0x1F,0xF8,0x07,
  0xE7,0x39,0x08,0x1F,0xF8,0x19,0x1F,0xF8,0x08,0xE7,0x39,0x07,0x1F,0xF8,0x05,0x1F,
  0xF8,0x1D,0xE7,0x39,0x06,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1D,0xE7,0x39,0x06,
  0x1F,0xF8,0x19,0x1F,0xF8,0x08,0xE7,0x39,0x07,0x1F,0xF8,0x19,0x1F,0xF8,0x07,0xE7,
  0x39,0x08,0x1F,0xF8,0x19,0x1F,0xF8,0x06,0xE7,0x39,0x09,0x1F,0xF8,0x19,0x1F,0xF8,
  0x05,0xE7,0x39,0x0A,0x1F,0xF8,0x19,0x1F,0xF8,0x04,0xE7,0x39,0x0B,0x1F,0xF8,0x19,
  0x1F,0xF8,0x03,0xE7,0x39,0x0C,0x1F,0xF8,0x19,0x1F,0xF8,0x02,0xE7,0x39,0x0D,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_DEC_released

  0x4D,0x50,0x64,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x13,0x1F,0xF8,
  0x02,0x96,0xB5,0x13,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x11,
  0x1F,0xF8,0x06,0x96,0xB5,0x11,0x1F,0xF8,0x10,0x1F,0xF8,0x08,0x96,0xB5,0x10,0x1F,
  0xF8,0x0F,0x1F,0xF8,0x0A,0x96,0xB5,0x0F,0x1F,0xF8,0x0E,0x1F,0xF8,0x0C,0x96,0xB5,
  0x0E,0x1F,0xF8,0x0D,0x1F,0xF8,0x0E,0x96,0xB5,0x0D,0x1F,0xF8,0x0C,0x1F,0xF8,0x10,
  0x96,0xB5,0x0C,0x1F,0xF8,0x0B,0x1F,0xF8,0x12,0x96,0xB5,0x0B,0x1F,0xF8,0x0B,0x1F,
  0xF8,0x12,0x96,0xB5,0x0B,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,
  0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,
  0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,
  0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,
  0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,
  0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x96,0xB5,0x12,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_DEC_pressed

  0x4D,0x50,0x64,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x13,0x1F,0xF8,
  0x02,0xE7,0x39,0x13,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x11,
  0x1F,0xF8,0x06,0xE7,0x39,0x11,0x1F,0xF8,0x10,0x1F,0xF8,0x08,0xE7,0x39,0x10,0x1F,
  0xF8,0x0F,0x1F,0xF8,0x0A,0xE7,0x39,0x0F,0x1F,0xF8,0x0E,0x1F,0xF8,0x0C,0xE7,0x39,
  0x0E,0x1F,0xF8,0x0D,0x1F,0xF8,0x0E,0xE7,0x39,0x0D,0x1F,0xF8,0x0C,0x1F,0xF8,0x10,
  0xE7,0x39,0x0C,0x1F,0xF8,0x0B,0x1F,0xF8,0x12,0xE7,0x39,0x0B,0x1F,0xF8,0x0B,0x1F,
  0xF8,0x12,0xE7,0x39,0x0B,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,
  0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,
  0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,
  0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,
  0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,
  0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0xE7,0x39,0x12,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_SHIFT

  0x4D,0x50,0x64,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,
  0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,
  0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,
  0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,
  0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,
  0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,
  0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,
  0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,
  0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,
  0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x12,0x43,0xAE,0x0B,0x1F,0xF8,0x0B,0x1F,0xF8,0x12,0x43,0xAE,
  0x0B,0x1F,0xF8,0x0C,0x1F,0xF8,0x10,0x43,0xAE,0x0C,0x1F,0xF8,0x0D,0x1F,0xF8,0x0E,
  0x43,0xAE,0x0D,0x1F,0xF8,0x0E,0x1F,0xF8,0x0C,0x43,0xAE,0x0E,0x1F,0xF8,0x0F,0x1F,
  0xF8,0x0A,0x43,0xAE,0x0F,0x1F,0xF8,0x10,0x1F,0xF8,0x08,0x43,0xAE,0x10,0x1F,0xF8,
  0x11,0x1F,0xF8,0x06,0x43,0xAE,0x11,0x1F,0xF8,0x12,0x1F,0xF8,0x04,0x43,0xAE,0x12,
  0x1F,0xF8,0x13,0x1F,0xF8,0x02,0x43,0xAE,0x13,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ENTER_released

  0x4D,0x50,0x60,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x0D,
  0x1F,0xF8,0x02,0x96,0xB5,0x19,0x1F,0xF8,0x0C,0x1F,0xF8,0x03,0x96,0xB5,0x19,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x04,0x96,0xB5,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,0x05,0x96,0xB5,
  0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0x96,0xB5,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,
  0x96,0xB5,0x19,0x1F,0xF8,0x07,0x1F,0xF8,0x08,0x96,0xB5,0x19,0x1F,0xF8,0x06,0x1F,
  0xF8,0x1D,0x96,0xB5,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0x96,0xB5,0x05,0x1F,0xF8,0x06,0x1F,0xF8,0x1D,0x96,0xB5,0x05,
  0x1F,0xF8,0x07,0x1F,0xF8,0x08,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,
  0xF8,0x08,0x1F,0xF8,0x07,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,
  0x09,0x1F,0xF8,0x06,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x0A,
  0x1F,0xF8,0x05,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x0B,0x1F,
  0xF8,0x04,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x0C,0x1F,0xF8,
  0x03,0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x0D,0x1F,0xF8,0x02,
  0x96,0xB5,0x10,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,0x04,0x96,
  0xB5,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,0x04,0x96,0xB5,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,
  0x04,0x96,0xB5,0x05,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_ENTER_pressed

  0x4D,0x50,0x60,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x1F,0xF8,0x01,0x00,0x28,0x1F,
  0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,
  0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x0D,
  0x1F,0xF8,0x02,0xE7,0x39,0x19,0x1F,0xF8,0x0C,0x1F,0xF8,0x03,0xE7,0x39,0x19,0x1F,
  0xF8,0x0B,0x1F,0xF8,0x04,0xE7,0x39,0x19,0x1F,0xF8,0x0A,0x1F,0xF8,0x05,0xE7,0x39,
  0x19,0x1F,0xF8,0x09,0x1F,0xF8,0x06,0xE7,0x39,0x19,0x1F,0xF8,0x08,0x1F,0xF8,0x07,
  0xE7,0x39,0x19,0x1F,0xF8,0x07,0x1F,0xF8,0x08,0xE7,0x39,0x19,0x1F,0xF8,0x06,0x1F,
  0xF8,0x1D,0xE7,0x39,0x05,0x1F,0xF8,0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,
  0x05,0x1F,0xF8,0x1E,0xE7,0x39,0x05,0x1F,0xF8,0x06,0x1F,0xF8,0x1D,0xE7,0x39,0x05,
  0x1F,0xF8,0x07,0x1F,0xF8,0x08,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,
  0xF8,0x08,0x1F,0xF8,0x07,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,
  0x09,0x1F,0xF8,0x06,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x0A,
  0x1F,0xF8,0x05,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x0B,0x1F,
  0xF8,0x04,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x0C,0x1F,0xF8,
  0x03,0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x0D,0x1F,0xF8,0x02,
  0xE7,0x39,0x10,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,0x04,0xE7,
  0x39,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,0x04,0xE7,0x39,0x05,0x1F,0xF8,0x1F,0x1F,0xF8,
  0x04,0xE7,0x39,0x05,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,
  0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8,0x28,0x1F,0xF8

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_BKSPC_released

  0x4D,0x50,0x9D,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x5B,0xF0,0x01,0x00,0x28,0x5B,
  0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,
  0x0C,0x5B,0xF0,0x1C,0x96,0xB5,0x0B,0x5B,0xF0,0x1D,0x96,0xB5,0x0A,0x5B,0xF0,0x1E,
  0x96,0xB5,0x09,0x5B,0xF0,0x05,0x96,0xB5,0x17,0x5B,0xF0,0x03,0x96,0xB5,0x08,0x5B,
  0xF0,0x05,0x96,0xB5,0x18,0x5B,0xF0,0x03,0x96,0xB5,0x07,0x5B,0xF0,0x05,0x96,0xB5,
  0x19,0x5B,0xF0,0x03,0x96,0xB5,0x06,0x5B,0xF0,0x05,0x96,0xB5,0x08,0x5B,0xF0,0x05,
  0x96,0xB5,0x05,0x5B,0xF0,0x05,0x96,0xB5,0x03,0x5B,0xF0,0x03,0x96,0xB5,0x05,0x5B,
  0xF0,0x05,0x96,0xB5,0x09,0x5B,0xF0,0x05,0x96,0xB5,0x05,0x5B,0xF0,0x05,0x96,0xB5,
  0x03,0x5B,0xF0,0x03,0x96,0xB5,0x04,0x5B,0xF0,0x05,0x96,0xB5,0x0B,0x5B,0xF0,0x05,
  0x96,0xB5,0x03,0x5B,0xF0,0x05,0x96,0xB5,0x04,0x5B,0xF0,0x03,0x96,0xB5,0x03,0x5B,
  0xF0,0x05,0x96,0xB5,0x0D,0x5B,0xF0,0x05,0x96,0xB5,0x01,0x5B,0xF0,0x05,0x96,0xB5,
  0x05,0x5B,0xF0,0x03,0x96,0xB5,0x02,0x5B,0xF0,0x05,0x96,0xB5,0x0E,0x5B,0xF0,0x05,
  0x96,0xB5,0x01,0x5B,0xF0,0x05,0x96,0xB5,0x05,0x5B,0xF0,0x03,0x96,0xB5,0x01,0x5B,
  0xF0,0x05,0x96,0xB5,0x10,0x5B,0xF0,0x09,0x96,0xB5,0x06,0x5B,0xF0,0x03,0x96,0xB5,
  0x05,0x96,0xB5,0x12,0x5B,0xF0,0x07,0x96,0xB5,0x07,0x5B,0xF0,0x03,0x96,0xB5,0x04,
  0x96,0xB5,0x14,0x5B,0xF0,0x05,0x96,0xB5,0x08,0x5B,0xF0,0x03,0x96,0xB5,0x05,0x96,
  0xB5,0x12,0x5B,0xF0,0x07,0x96,0xB5,0x07,0x5B,0xF0,0x03,0x96,0xB5,0x01,0x5B,0xF0,
  0x05,0x96,0xB5,0x10,0x5B,0xF0,0x08,0x96,0xB5,0x07,0x5B,0xF0,0x03,0x96,0xB5,0x02,
  0x5B,0xF0,0x05,0x96,0xB5,0x0F,0x5B,0xF0,0x09,0x96,0xB5,0x06,0x5B,0xF0,0x03,0x96,
  0xB5,0x03,0x5B,0xF0,0x05,0x96,0xB5,0x0D,0x5B,0xF0,0x05,0x96,0xB5,0x01,0x5B,0xF0,
  0x05,0x96,0xB5,0x05,0x5B,0xF0,0x03,0x96,0xB5,0x04,0x5B,0xF0,0x05,0x96,0xB5,0x0B,
  0x5B,0xF0,0x05,0x96,0xB5,0x03,0x5B,0xF0,0x05,0x96,0xB5,0x04,0x5B,0xF0,0x03,0x96,
  0xB5,0x05,0x5B,0xF0,0x05,0x96,0xB5,0x0A,0x5B,0xF0,0x05,0x96,0xB5,0x03,0x5B,0xF0,
  0x05,0x96,0xB5,0x04,0x5B,0xF0,0x03,0x96,0xB5,0x06,0x5B,0xF0,0x05,0x96,0xB5,0x08,
  0x5B,0xF0,0x05,0x96,0xB5,0x05,0x5B,0xF0,0x05,0x96,0xB5,0x03,0x5B,0xF0,0x03,0x96,
  0xB5,0x07,0x5B,0xF0,0x05,0x96,0xB5,0x19,0x5B,0xF0,0x03,0x96,0xB5,0x08,0x5B,0xF0,
  0x05,0x96,0xB5,0x18,0x5B,0xF0,0x03,0x96,0xB5,0x09,0x5B,0xF0,0x05,0x96,0xB5,0x17,
  0x5B,0xF0,0x03,0x96,0xB5,0x0A,0x5B,0xF0,0x05,0x96,0xB5,0x16,0x5B,0xF0,0x03,0x96,
  0xB5,0x0B,0x5B,0xF0,0x1D,0x96,0xB5,0x0C,0x5B,0xF0,0x1C,0x96,0xB5,0x0D,0x5B,0xF0,
  0x1B,0x96,0xB5,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,
  0x5B,0xF0,0x28,0x5B,0xF0

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_BKSPC_pressed

  0x4D,0x50,0x9D,0x00,0x00,0x00,0x28,0x00,0x28,0x00,0x5B,0xF0,0x01,0x00,0x28,0x5B,
  0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,
  0x0C,0x5B,0xF0,0x1C,0xE7,0x39,0x0B,0x5B,0xF0,0x1D,0xE7,0x39,0x0A,0x5B,0xF0,0x1E,
  0xE7,0x39,0x09,0x5B,0xF0,0x05,0xE7,0x39,0x17,0x5B,0xF0,0x03,0xE7,0x39,0x08,0x5B,
  0xF0,0x05,0xE7,0x39,0x18,0x5B,0xF0,0x03,0xE7,0x39,0x07,0x5B,0xF0,0x05,0xE7,0x39,
  0x19,0x5B,0xF0,0x03,0xE7,0x39,0x06,0x5B,0xF0,0x05,0xE7,0x39,0x08,0x5B,0xF0,0x05,
  0xE7,0x39,0x05,0x5B,0xF0,0x05,0xE7,0x39,0x03,0x5B,0xF0,0x03,0xE7,0x39,0x05,0x5B,
  0xF0,0x05,0xE7,0x39,0x09,0x5B,0xF0,0x05,0xE7,0x39,0x05,0x5B,0xF0,0x05,0xE7,0x39,
  0x03,0x5B,0xF0,0x03,0xE7,0x39,0x04,0x5B,0xF0,0x05,0xE7,0x39,0x0B,0x5B,0xF0,0x05,
  0xE7,0x39,0x03,0x5B,0xF0,0x05,0xE7,0x39,0x04,0x5B,0xF0,0x03,0xE7,0x39,0x03,0x5B,
  0xF0,0x05,0xE7,0x39,0x0D,0x5B,0xF0,0x05,0xE7,0x39,0x01,0x5B,0xF0,0x05,0xE7,0x39,
  0x05,0x5B,0xF0,0x03,0xE7,0x39,0x02,0x5B,0xF0,0x05,0xE7,0x39,0x0E,0x5B,0xF0,0x05,
  0xE7,0x39,0x01,0x5B,0xF0,0x05,0xE7,0x39,0x05,0x5B,0xF0,0x03,0xE7,0x39,0x01,0x5B,
  0xF0,0x05,0xE7,0x39,0x10,0x5B,0xF0,0x09,0xE7,0x39,0x06,0x5B,0xF0,0x03,0xE7,0x39,
  0x05,0xE7,0x39,0x12,0x5B,0xF0,0x07,0xE7,0x39,0x07,0x5B,0xF0,0x03,0xE7,0x39,0x04,
  0xE7,0x39,0x14,0x5B,0xF0,0x05,0xE7,0x39,0x08,0x5B,0xF0,0x03,0xE7,0x39,0x05,0xE7,
  0x39,0x12,0x5B,0xF0,0x07,0xE7,0x39,0x07,0x5B,0xF0,0x03,0xE7,0x39,0x01,0x5B,0xF0,
  0x05,0xE7,0x39,0x10,0x5B,0xF0,0x08,0xE7,0x39,0x07,0x5B,0xF0,0x03,0xE7,0x39,0x02,
  0x5B,0xF0,0x05,0xE7,0x39,0x0F,0x5B,0xF0,0x09,0xE7,0x39,0x06,0x5B,0xF0,0x03,0xE7,
  0x39,0x03,0x5B,0xF0,0x05,0xE7,0x39,0x0D,0x5B,0xF0,0x05,0xE7,0x39,0x01,0x5B,0xF0,
  0x05,0xE7,0x39,0x05,0x5B,0xF0,0x03,0xE7,0x39,0x04,0x5B,0xF0,0x05,0xE7,0x39,0x0B,
  0x5B,0xF0,0x05,0xE7,0x39,0x03,0x5B,0xF0,0x05,0xE7,0x39,0x04,0x5B,0xF0,0x03,0xE7,
  0x39,0x05,0x5B,0xF0,0x05,0xE7,0x39,0x0A,0x5B,0xF0,0x05,0xE7,0x39,0x03,0x5B,0xF0,
  0x05,0xE7,0x39,0x04,0x5B,0xF0,0x03,0xE7,0x39,0x06,0x5B,0xF0,0x05,0xE7,0x39,0x08,
  0x5B,0xF0,0x05,0xE7,0x39,0x05,0x5B,0xF0,0x05,0xE7,0x39,0x03,0x5B,0xF0,0x03,0xE7,
  0x39,0x07,0x5B,0xF0,0x05,0xE7,0x39,0x19,0x5B,0xF0,0x03,0xE7,0x39,0x08,0x5B,0xF0,
  0x05,0xE7,0x39,0x18,0x5B,0xF0,0x03,0xE7,0x39,0x09,0x5B,0xF0,0x05,0xE7,0x39,0x17,
  0x5B,0xF0,0x03,0xE7,0x39,0x0A,0x5B,0xF0,0x05,0xE7,0x39,0x16,0x5B,0xF0,0x03,0xE7,
  0x39,0x0B,0x5B,0xF0,0x1D,0xE7,0x39,0x0C,0x5B,0xF0,0x1C,0xE7,0x39,0x0D,0x5B,0xF0,
  0x1B,0xE7,0x39,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,0x5B,0xF0,0x28,
  0x5B,0xF0,0x28,0x5B,0xF0

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_SPACE_released

  0x4D,0x50,0x29,0x00,0x00,0x00,0x96,0x00,0x0F,0x00,0x1F,0xF8,0x01,0x00,0x96,0x96,
  0xB5,0x96,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,
  0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,
  0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,
  0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,
  0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,
  0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,
  0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5,
  0x02,0x96,0xB5,0x92,0x1F,0xF8,0x02,0x96,0xB5

END_FUNCTION

FUNCTION TAB KeyPadImagesStdTemplate::ImgTab_SPACE_pressed

  0x4D,0x50,0x29,0x00,0x00,0x00,0x96,0x00,0x0F,0x00,0x1F,0xF8,0x01,0x00,0x96,0xE7,
  0x39,0x96,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,
  0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,
  0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,
  0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,
  0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,
  0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,
  0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39,
  0x02,0xE7,0x39,0x92,0x1F,0xF8,0x02,0xE7,0x39

END_FUNCTION
